uint64_t sub_1002173A0(uint64_t a1)
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
  sub_10021417C(a1, &qword_100939D80, off_1008D41B8, &qword_10093A900);
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
  v15[3] = sub_10021F7B4;
  v15[4] = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10021F7CC;
  *(v16 + 24) = v15;
  v82 = sub_1000529DC;
  v83 = v16;
  aBlock = _NSConcreteStackBlock;
  v79 = 1107296256;
  v80 = sub_10000F160;
  v81 = &unk_1008EA518;
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

  v20 = sub_10031E8DC(v75);
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
    *(v48 + 16) = sub_10021F7D8;
    *(v48 + 24) = v46;
    v82 = sub_1000529DC;
    v83 = v48;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10000F160;
    v81 = &unk_1008EA590;
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
      v54[3] = sub_10021F7E4;
      v54[4] = v51;
      v82 = sub_10021F828;
      v83 = v54;
      aBlock = _NSConcreteStackBlock;
      v79 = 1107296256;
      v80 = sub_100019200;
      v81 = &unk_1008EA5E0;
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

uint64_t sub_100217DB4(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v43 = (v3 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptySetSingleton;
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v3;
  v6[4] = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_100220A98;
  v9[4] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100220AD0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EAB30;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v29 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_26;
  }

  swift_beginAccess();
  v7 = *(v3 + 16);
  swift_beginAccess();
  v12 = *(v4 + 16);

  v47 = v7;
  v45 = _swiftEmptyArrayStorage;
  v40 = v12;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v17 = -1 << *(v7 + 32);
    v14 = ~v17;
    v13 = v7 + 64;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v7 + 64);
    v16 = v7;
  }

  v43 = v7;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v21 = (v14 + 64) >> 6;
  v22 = _swiftEmptyArrayStorage;
LABEL_9:
  v42 = v22;
  while ((v16 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_24;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v7 = v44;
    type metadata accessor for RDAccountManualSortID();
    swift_dynamicCast();
    v26 = v44;
    if (!v44)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (!*(v26 + 24))
    {
      v27 = v7;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 = &v45;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v22 = v45;
      goto LABEL_9;
    }
  }

  v23 = v20;
  v24 = v15;
  if (!v15)
  {
    while (1)
    {
      v20 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        goto LABEL_24;
      }

      v24 = *(v13 + 8 * v20);
      ++v23;
      if (v24)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_15:
  v15 = (v24 - 1) & v24;
  v25 = (v20 << 9) | (8 * __clz(__rbit64(v24)));
  v26 = *(*(v16 + 56) + v25);
  v7 = *(*(v16 + 48) + v25);

  if (v7)
  {
    goto LABEL_19;
  }

LABEL_24:
  sub_10001B860();
  v7 = sub_100215F30(v40, v42);

  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
  v30 = v43;

  if (v29)
  {
    v31 = sub_100530294(v7);
    v30 = sub_10000F8A4(v31, 0, 1u);

    if (qword_1009363E0 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v32 = [objc_allocWithZone(NSFetchRequest) init];
    v33 = [swift_getObjCClassFromMetadata() entity];
    [v32 setEntity:v33];

    [v32 setAffectedStores:0];
    [v32 setPredicate:v30];
    v45 = &_swiftEmptySetSingleton;

    sub_100010864(v34);

    sub_1002137C0(v45);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 setPropertiesToFetch:isa];

    v36 = NSManagedObjectContext.fetch<A>(_:)();
    if (v41)
    {
    }

    else
    {
      v37 = sub_1001A615C(v36);

      v38 = sub_10021551C(v37);

      sub_10021F218(v38, sub_100220A64, 0, &v47);

      return v47;
    }
  }

  else
  {
  }

  return v30;
}

unint64_t sub_1002184FC(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  v4 = swift_allocObject();
  *(v4 + 16) = &_swiftEmptySetSingleton;
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v3;
  v6[4] = v4;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = sub_100220A94;
  v9[4] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100220AD0;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000FDA90;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008EA810;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_25;
  }

  swift_beginAccess();
  v12 = *(v3 + 16);
  swift_beginAccess();
  v13 = *(v4 + 16);

  v40 = v12;
  v35 = v13;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v15 = ~v18;
    v14 = v12 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v12 + 64);
    v17 = v12;
  }

  v36 = v12;
  swift_bridgeObjectRetain_n();
  v21 = 0;
  v22 = (v15 + 64) >> 6;
  while ((v17 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_23;
    }

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v27 = v38;
    type metadata accessor for RDElementManualSortID();
    swift_dynamicCast();
    v26 = v38;
    if (!v38)
    {
      goto LABEL_23;
    }

LABEL_18:
    if (v26[3])
    {
    }

    else
    {
      v28 = v27;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v23 = v21;
  v24 = v16;
  if (!v16)
  {
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        goto LABEL_23;
      }

      v24 = *(v14 + 8 * v21);
      ++v23;
      if (v24)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_14:
  v16 = (v24 - 1) & v24;
  v25 = (v21 << 9) | (8 * __clz(__rbit64(v24)));
  v26 = *(*(v17 + 56) + v25);
  v27 = *(*(v17 + 48) + v25);

  if (v27)
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_10001B860();
  v30 = sub_100215F30(v35, _swiftEmptyArrayStorage);

  if (v30 >> 62)
  {
    goto LABEL_31;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
  v32 = v36;

  if (!v31 || (__chkstk_darwin(v33), NSManagedObjectContext.performAndWait<A>(_:)(), , v32 = v40, v37))
  {
  }

  return v32;
}

void sub_100218AC8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v226 = a6;
  v204 = _s10PredicatesOMa_1();
  v10 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v205 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = _s10PredicatesOMa_3();
  v12 = *(*(v206 - 8) + 64);
  __chkstk_darwin(v206);
  v207 = &v196 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMManualOrdering.PinnedList();
  v228 = *(v14 - 8);
  v229 = v14;
  v15 = *(v228 + 64);
  v16 = __chkstk_darwin(v14);
  v211 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v208 = &v196 - v19;
  v20 = __chkstk_darwin(v18);
  v216 = (&v196 - v21);
  v22 = __chkstk_darwin(v20);
  v213 = &v196 - v23;
  v24 = __chkstk_darwin(v22);
  v210 = &v196 - v25;
  v26 = __chkstk_darwin(v24);
  v217 = (&v196 - v27);
  v28 = __chkstk_darwin(v26);
  v218 = &v196 - v29;
  v30 = __chkstk_darwin(v28);
  v215 = &v196 - v31;
  __chkstk_darwin(v30);
  v33 = &v196 - v32;
  v34 = type metadata accessor for REMManualOrdering.ElementType();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, a1, v34);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == enum case for REMManualOrdering.ElementType.reminders(_:))
  {

    v231 = sub_100530294(v40);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v41 = BidirectionalCollection<>.slices(by:)();

    v42 = a4;

    sub_10021F834(v41, v42, a5, v226);

    return;
  }

  v43 = v220;
  v225 = a2;
  v209 = a4;
  v200 = a5;
  if (v39 == enum case for REMManualOrdering.ElementType.pinnedLists(_:))
  {
    v44 = sub_10003A1B8();
    v45 = v226;
    if (!v44)
    {
      return;
    }

    v196 = v44;
    v231 = _swiftEmptyArrayStorage;
    v46 = v225;

    v227 = sub_1001A577C(v47);

    v197 = v46 >> 62;
    if (v46 >> 62)
    {
      goto LABEL_105;
    }

    v223 = v46 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v48 = 0;
      v221 = v46 & 0xC000000000000001;
      while (1)
      {
        if (i == v48)
        {
          goto LABEL_134;
        }

        if (v221)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v223 + 16))
          {
            goto LABEL_100;
          }

          v49 = *(v46 + 8 * v48 + 32);
        }

        v46 = v49;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_99;
        }

        v50 = [v49 entityName];
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = [objc_opt_self() cdEntityName];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        if (v51 == v43 && v53 == v56)
        {
          break;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v48;
        v46 = v225;
        v45 = v226;
        if (v43)
        {
          goto LABEL_27;
        }
      }

LABEL_27:
      v65 = static REMSmartListType.manualOrderablePredefinedSmartListTypes.getter();
      v46 = v65;
      v224 = *(v65 + 16);
      if (!v224)
      {
        break;
      }

      v66 = 0;
      v219 = (v65 + 32);
      v67 = enum case for REMManualOrdering.PinnedList.predefinedSmartList(_:);
      v68 = (v228 + 104);
      v45 = v228 + 32;
      v69 = _swiftEmptyArrayStorage;
      while (v66 < *(v46 + 16))
      {
        v70 = v219[v66];
        *v33 = v70;
        (*v68)(v33, v67, v229);
        v71 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_100365A9C(0, *(v69 + 2) + 1, 1, v69);
        }

        v43 = *(v69 + 2);
        v72 = *(v69 + 3);
        if (v43 >= v72 >> 1)
        {
          v69 = sub_100365A9C(v72 > 1, v43 + 1, 1, v69);
        }

        ++v66;
        *(v69 + 2) = v43 + 1;
        (*(v228 + 32))(&v69[((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v43], v33, v229);
        if (v224 == v66)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      v223 = v46 & 0xFFFFFFFFFFFFFF8;
    }

    v69 = _swiftEmptyArrayStorage;
LABEL_37:

    v73 = *(v69 + 2);
    if (v73)
    {
      v45 = 0;
      v43 = v228 + 16;
      v214 = (v227 & 0xC000000000000001);
      v74 = v227 & 0xFFFFFFFFFFFFFF8;
      if (v227 < 0)
      {
        v74 = v227;
      }

      v199 = v74;
      v224 = v227 + 56;
      v203 = (v228 + 32);
      v212 = _swiftEmptyArrayStorage;
      v219 = (v228 + 8);
      v75 = v215;
      v202 = v73;
      v201 = v228 + 16;
      while (1)
      {
        if (v45 >= *(v69 + 2))
        {
          goto LABEL_98;
        }

        v76 = (*(v228 + 80) + 32) & ~*(v228 + 80);
        v77 = *(v228 + 72);
        (*(v228 + 16))(v75, &v69[v76 + v77 * v45], v229);
        v46 = v75;
        v78 = REMManualOrdering.PinnedList.elementObjectID.getter();
        if (v78)
        {
          v33 = v78;
          if (v214)
          {
            v46 = __CocoaSet.contains(_:)();

            if (v46)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v198 = v76;
            if (*(v227 + 16))
            {
              sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
              v83 = v227;
              v46 = v33;
              v84 = NSObject._rawHashValue(seed:)(*(v227 + 40));
              v85 = -1 << *(v83 + 32);
              v86 = v84 & ~v85;
              if ((*(v224 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
              {
                v87 = ~v85;
                while (1)
                {
                  v88 = *(*(v227 + 48) + 8 * v86);
                  v46 = static NSObject.== infix(_:_:)();

                  if (v46)
                  {
                    break;
                  }

                  v86 = (v86 + 1) & v87;
                  if (((*(v224 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
                  {
                    goto LABEL_41;
                  }
                }

                v75 = v215;
                v76 = v198;
LABEL_48:
                v79 = *v203;
                (*v203)(v218, v75, v229);
                v46 = v212;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v230 = v46;
                v33 = v76;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100253860(0, *(v46 + 16) + 1, 1);
                  v46 = v230;
                }

                v82 = *(v46 + 16);
                v81 = *(v46 + 24);
                if (v82 >= v81 >> 1)
                {
                  sub_100253860(v81 > 1, v82 + 1, 1);
                  v46 = v230;
                }

                *(v46 + 16) = v82 + 1;
                v212 = v46;
                v79((v46 + v76 + v82 * v77), v218, v229);
                v73 = v202;
                v43 = v201;
                goto LABEL_43;
              }
            }

LABEL_41:

            v75 = v215;
            v73 = v202;
            v43 = v201;
          }
        }

        (*v219)(v75, v229);
LABEL_43:
        if (++v45 == v73)
        {
          goto LABEL_61;
        }
      }
    }

    v212 = _swiftEmptyArrayStorage;
LABEL_61:

    sub_100272320(v212);
    v89 = v231[2];
    if (v197)
    {
      v46 = v225;
      v90 = _CocoaArrayWrapper.endIndex.getter();
      v45 = v226;
      if (v89 >= v90)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v46 = v225;
      v45 = v226;
      if (v89 >= *(v223 + 16))
      {
        goto LABEL_134;
      }
    }

    v91 = v207;
    swift_storeEnumTagMultiPayload();
    v92 = sub_10002DDAC();
    sub_1000252B4(v91, _s10PredicatesOMa_3);
    if (qword_100936800 != -1)
    {
      swift_once();
    }

    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v93 = [objc_allocWithZone(NSFetchRequest) init];
    v94 = [swift_getObjCClassFromMetadata() entity];
    [v93 setEntity:v94];

    [v93 setAffectedStores:0];
    [v93 setPredicate:v92];
    v230 = &_swiftEmptySetSingleton;

    sub_10003AFC0(v95);

    v96 = v220;
    sub_1002133B0(v230);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v93 setPropertiesToFetch:isa];

    v98 = NSManagedObjectContext.fetch<A>(_:)();
    if (v96)
    {

LABEL_157:

      return;
    }

    v43 = v98;
    v230 = _swiftEmptyArrayStorage;
    v220 = 0;
    v203 = v93;
    v99 = v98 & 0xFFFFFFFFFFFFFF8;
    if (v98 >> 62)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = 0;
    v45 = v43 & 0xC000000000000001;
    v224 = _swiftEmptyArrayStorage;
    v46 = &selRef_persistentStoreForIdentifier_;
    while (v100 != v33)
    {
      if (v45)
      {
        v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v99 + 16))
        {
          goto LABEL_102;
        }

        v101 = *(v43 + 8 * v33 + 32);
      }

      v102 = v101;
      v103 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_101;
      }

      v104 = [v101 remObjectID];

      ++v33;
      if (v104)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v105 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v224 = v230;
        v33 = v103;
      }
    }

    if (v224 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (v45)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v45 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_84:
        v33 = 0;
        v219 = (v224 & 0xC000000000000001);
        v218 = (v224 & 0xFFFFFFFFFFFFFF8);
        v106 = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
        v107 = (v228 + 104);
        v46 = v228 + 32;
        v108 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v219)
          {
            v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v110 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_103;
            }
          }

          else
          {
            if (v33 >= *(v218 + 2))
            {
              goto LABEL_104;
            }

            v109 = *(v224 + 8 * v33 + 32);
            v110 = (v33 + 1);
            if (__OFADD__(v33, 1))
            {
              goto LABEL_103;
            }
          }

          v111 = v217;
          *v217 = v109;
          (*v107)(v111, v106, v229);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_100365A9C(0, *(v108 + 2) + 1, 1, v108);
          }

          v43 = *(v108 + 2);
          v112 = *(v108 + 3);
          if (v43 >= v112 >> 1)
          {
            v108 = sub_100365A9C(v112 > 1, v43 + 1, 1, v108);
          }

          *(v108 + 2) = v43 + 1;
          (*(v228 + 32))(&v108[((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v43], v217, v229);
          ++v33;
          if (v110 == v45)
          {
            goto LABEL_109;
          }
        }
      }
    }

    v108 = _swiftEmptyArrayStorage;
LABEL_109:

    v113 = *(v108 + 2);
    if (!v113)
    {
      v214 = _swiftEmptyArrayStorage;
      v45 = v226;
LABEL_133:

      sub_100272320(v214);

      v46 = v225;
LABEL_134:
      v134 = v231[2];
      if (v197)
      {
        if (v134 >= _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_151:

LABEL_152:

          v148 = sub_1001A5CDC(v147);

          v149 = v196;
          v150 = sub_1002160F4(v148, v196);

          sub_10021F054(v150, sub_100220A64, 0, v45);

          return;
        }
      }

      else if (v134 >= *(v223 + 16))
      {
        goto LABEL_151;
      }

      v135 = 0;
      while (1)
      {
        if (i == v135)
        {
          goto LABEL_151;
        }

        if (v221)
        {
          v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v135 >= *(v223 + 16))
          {
            goto LABEL_187;
          }

          v136 = *(v46 + 8 * v135 + 32);
        }

        v137 = v136;
        if (__OFADD__(v135, 1))
        {
          break;
        }

        v138 = [v136 entityName];
        v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v140;

        v141 = [objc_opt_self() cdEntityName];
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        if (v139 == v142 && v43 == v144)
        {

LABEL_154:
          v151 = v205;
          swift_storeEnumTagMultiPayload();
          v43 = sub_10001F6F4();
          sub_1000252B4(v151, _s10PredicatesOMa_1);
          if (qword_1009367F8 == -1)
          {
LABEL_155:
            sub_1000060C8(0, &unk_100938880, off_1008D41A8);
            v152 = [objc_allocWithZone(NSFetchRequest) init];
            v153 = [swift_getObjCClassFromMetadata() entity];
            [v152 setEntity:v153];

            [v152 setAffectedStores:0];
            [v152 setPredicate:v43];
            v230 = &_swiftEmptySetSingleton;

            sub_100391CC4(v154);

            v155 = v220;
            sub_1003FE48C(v230);

            v156 = Array._bridgeToObjectiveC()().super.isa;

            [v152 setPropertiesToFetch:v156];

            v157 = NSManagedObjectContext.fetch<A>(_:)();
            v158 = v155;
            if (v155)
            {

              goto LABEL_157;
            }

            v43 = v157;
            v215 = v152;
            v230 = _swiftEmptyArrayStorage;
            v159 = v157 & 0xFFFFFFFFFFFFFF8;
            if (v157 >> 62)
            {
              v160 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v160 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v161 = 0;
            v225 = _swiftEmptyArrayStorage;
            while (v160 != v161)
            {
              if ((v43 & 0xC000000000000001) != 0)
              {
                v162 = v158;
                v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v161 >= *(v159 + 16))
                {
                  goto LABEL_189;
                }

                v162 = v158;
                v163 = *(v43 + 8 * v161 + 32);
              }

              v164 = v163;
              v165 = v161 + 1;
              if (__OFADD__(v161, 1))
              {
                goto LABEL_188;
              }

              v166 = [v163 remObjectID];

              ++v161;
              v158 = v162;
              if (v166)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v167 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v225 = v230;
                v161 = v165;
              }
            }

            if (v225 >> 62)
            {
              v168 = _CocoaArrayWrapper.endIndex.getter();
              if (v168)
              {
                goto LABEL_173;
              }
            }

            else
            {
              v168 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v168)
              {
LABEL_173:
                v169 = 0;
                v224 = v225 & 0xC000000000000001;
                v223 = v225 & 0xFFFFFFFFFFFFFF8;
                LODWORD(i) = enum case for REMManualOrdering.PinnedList.listOrCustomSmartList(_:);
                v170 = (v228 + 104);
                v171 = _swiftEmptyArrayStorage;
                while (1)
                {
                  if (v224)
                  {
                    v172 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v173 = v169 + 1;
                    if (__OFADD__(v169, 1))
                    {
                      goto LABEL_191;
                    }
                  }

                  else
                  {
                    if (v169 >= *(v223 + 16))
                    {
                      goto LABEL_192;
                    }

                    v172 = *(v225 + 8 * v169 + 32);
                    v173 = v169 + 1;
                    if (__OFADD__(v169, 1))
                    {
                      goto LABEL_191;
                    }
                  }

                  v174 = v216;
                  *v216 = v172;
                  (*v170)(v174, i, v229);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v171 = sub_100365A9C(0, *(v171 + 2) + 1, 1, v171);
                  }

                  v43 = *(v171 + 2);
                  v175 = *(v171 + 3);
                  if (v43 >= v175 >> 1)
                  {
                    v171 = sub_100365A9C(v175 > 1, v43 + 1, 1, v171);
                  }

                  *(v171 + 2) = v43 + 1;
                  (*(v228 + 32))(&v171[((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v43], v216, v229);
                  ++v169;
                  if (v173 == v168)
                  {
                    goto LABEL_197;
                  }
                }
              }
            }

            v171 = _swiftEmptyArrayStorage;
LABEL_197:

            v176 = *(v171 + 2);
            if (!v176)
            {
              v219 = _swiftEmptyArrayStorage;
              v45 = v226;
LABEL_221:

              sub_100272320(v219);

              goto LABEL_152;
            }

            v177 = 0;
            v223 = v228 + 16;
            v221 = v227 & 0xC000000000000001;
            v178 = v227 & 0xFFFFFFFFFFFFFF8;
            if (v227 < 0)
            {
              v178 = v227;
            }

            v216 = v178;
            v225 = v227 + 56;
            v218 = (v228 + 32);
            v219 = _swiftEmptyArrayStorage;
            i = (v228 + 8);
            v45 = v226;
            v179 = v208;
            v217 = v176;
            while (2)
            {
              if (v177 >= *(v171 + 2))
              {
                __break(1u);
LABEL_223:
                _diagnoseUnexpectedEnumCase<A>(type:)();
                __break(1u);
                return;
              }

              v224 = (*(v228 + 80) + 32) & ~*(v228 + 80);
              v180 = *(v228 + 72);
              (*(v228 + 16))(v179, &v171[v224 + v180 * v177], v229);
              v181 = REMManualOrdering.PinnedList.elementObjectID.getter();
              if (!v181)
              {
                goto LABEL_202;
              }

              v182 = v181;
              if (v221)
              {
                v183 = __CocoaSet.contains(_:)();

                if (v183)
                {
                  goto LABEL_208;
                }

LABEL_202:
                (*i)(v179, v229);
              }

              else
              {
                v220 = v158;
                v189 = v227;
                if (!*(v227 + 16) || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), v190 = NSObject._rawHashValue(seed:)(*(v189 + 40)), v191 = -1 << *(v189 + 32), v192 = v190 & ~v191, ((*(v225 + ((v192 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v192) & 1) == 0))
                {
LABEL_201:

                  v158 = v220;
                  v45 = v226;
                  v179 = v208;
                  v176 = v217;
                  goto LABEL_202;
                }

                v193 = ~v191;
                while (1)
                {
                  v194 = *(*(v227 + 48) + 8 * v192);
                  v195 = static NSObject.== infix(_:_:)();

                  if (v195)
                  {
                    break;
                  }

                  v192 = (v192 + 1) & v193;
                  if (((*(v225 + ((v192 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v192) & 1) == 0)
                  {
                    goto LABEL_201;
                  }
                }

                v158 = v220;
                v179 = v208;
LABEL_208:
                v184 = *v218;
                (*v218)(v211, v179, v229);
                v185 = v219;
                v186 = swift_isUniquelyReferenced_nonNull_native();
                v230 = v185;
                if ((v186 & 1) == 0)
                {
                  sub_100253860(0, v185[2] + 1, 1);
                  v185 = v230;
                }

                v188 = v185[2];
                v187 = v185[3];
                if (v188 >= v187 >> 1)
                {
                  sub_100253860(v187 > 1, v188 + 1, 1);
                  v185 = v230;
                }

                v185[2] = v188 + 1;
                v219 = v185;
                v184(v185 + v224 + v188 * v180, v211, v229);
                v45 = v226;
                v176 = v217;
              }

              if (++v177 == v176)
              {
                goto LABEL_221;
              }

              continue;
            }
          }

LABEL_193:
          swift_once();
          goto LABEL_155;
        }

        v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v135;
        v46 = v225;
        v45 = v226;
        if (v146)
        {
          goto LABEL_154;
        }
      }

      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v114 = 0;
    v219 = (v228 + 16);
    v215 = (v227 & 0xC000000000000001);
    v115 = v227 & 0xFFFFFFFFFFFFFF8;
    if (v227 < 0)
    {
      v115 = v227;
    }

    v206 = v115;
    v224 = v227 + 56;
    v212 = (v228 + 32);
    v214 = _swiftEmptyArrayStorage;
    v218 = (v228 + 8);
    v45 = v226;
    v116 = v210;
    v207 = v113;
    while (1)
    {
      if (v114 >= *(v108 + 2))
      {
        goto LABEL_190;
      }

      v117 = (*(v228 + 80) + 32) & ~*(v228 + 80);
      v43 = *(v228 + 72);
      (*(v228 + 16))(v116, &v108[v117 + v43 * v114], v229);
      v118 = REMManualOrdering.PinnedList.elementObjectID.getter();
      if (v118)
      {
        v119 = v118;
        if (v215)
        {
          v217 = v117;
          v120 = __CocoaSet.contains(_:)();

          if (v120)
          {
            goto LABEL_120;
          }
        }

        else
        {
          v127 = v227;
          if (*(v227 + 16))
          {
            v217 = v117;
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v128 = NSObject._rawHashValue(seed:)(*(v127 + 40));
            v129 = -1 << *(v127 + 32);
            v130 = v128 & ~v129;
            if ((*(v224 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130))
            {
              v131 = ~v129;
              while (1)
              {
                v132 = *(*(v227 + 48) + 8 * v130);
                v133 = static NSObject.== infix(_:_:)();

                if (v133)
                {
                  break;
                }

                v130 = (v130 + 1) & v131;
                if (((*(v224 + ((v130 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v130) & 1) == 0)
                {
                  goto LABEL_113;
                }
              }

              v116 = v210;
LABEL_120:
              v121 = *v212;
              (*v212)(v213, v116, v229);
              v122 = v214;
              v123 = swift_isUniquelyReferenced_nonNull_native();
              v124 = v122;
              v230 = v122;
              if ((v123 & 1) == 0)
              {
                sub_100253860(0, v122[2] + 1, 1);
                v124 = v230;
              }

              v126 = v124[2];
              v125 = v124[3];
              if (v126 >= v125 >> 1)
              {
                sub_100253860(v125 > 1, v126 + 1, 1);
                v124 = v230;
              }

              v124[2] = v126 + 1;
              v214 = v124;
              v121(v217 + v124 + v126 * v43, v213, v229);
              v45 = v226;
              v113 = v207;
              goto LABEL_115;
            }
          }

LABEL_113:

          v45 = v226;
          v116 = v210;
          v113 = v207;
        }
      }

      (*v218)(v116, v229);
LABEL_115:
      if (++v114 == v113)
      {
        goto LABEL_133;
      }
    }
  }

  v58 = v226;
  if (v39 == enum case for REMManualOrdering.ElementType.templates(_:))
  {

    v231 = sub_100530294(v59);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v60 = BidirectionalCollection<>.slices(by:)();

    v61 = v209;
    v62 = v200;

    v63 = sub_10021A72C;
  }

  else
  {
    if (v39 != enum case for REMManualOrdering.ElementType.savedReminders(_:))
    {
      goto LABEL_223;
    }

    v231 = sub_100530294(v64);
    sub_1000F5104(&qword_10093A578, &qword_1007A1E10);
    sub_100220748();
    v60 = BidirectionalCollection<>.slices(by:)();

    v61 = v209;
    v62 = v200;

    v63 = sub_10021ADDC;
  }

  sub_10021FB38(v60, v61, v62, v58, v63);
}

void sub_10021A72C(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(v8 >> 1, v7))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v11 != (v8 >> 1) - v7)
  {
LABEL_54:
    swift_unknownObjectRelease();
LABEL_2:
    sub_100278278(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

LABEL_9:
  v55 = v9;
  if (qword_100936808 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = qword_100975358;
    if (!(qword_100975358 >> 62))
    {
      v13 = *((qword_100975358 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v54 = a4;
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v25 = qword_100975358;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v25;
    v13 = v26;
    v54 = a4;
    if (!v26)
    {
      break;
    }

LABEL_12:
    v14 = 0;
    v58 = v12 & 0xFFFFFFFFFFFFFF8;
    v60 = v12 & 0xC000000000000001;
    a4 = _swiftEmptyArrayStorage;
    v15 = v12;
    while (v60)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v19)
      {
LABEL_55:
        _StringGuts.grow(_:)(46);
        v53._object = 0x80000001007EC120;
        v53._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v53);
        sub_1000F5104(&qword_100938C08, &unk_10079B270);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v20 = v18;
      v21 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a4 = sub_100365788(0, *(a4 + 2) + 1, 1, a4);
      }

      v23 = *(a4 + 2);
      v22 = *(a4 + 3);
      if (v23 >= v22 >> 1)
      {
        a4 = sub_100365788((v22 > 1), v23 + 1, 1, a4);
      }

      *(a4 + 2) = v23 + 1;
      v24 = &a4[16 * v23];
      *(v24 + 4) = v20;
      *(v24 + 5) = v21;
      ++v14;
      v12 = v15;
      if (v17 == v13)
      {
        goto LABEL_30;
      }
    }

    if (v14 >= *(v58 + 16))
    {
      goto LABEL_26;
    }

    v16 = *(v12 + 8 * v14 + 32);

    v17 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  a4 = _swiftEmptyArrayStorage;
LABEL_30:
  if (qword_100936810 != -1)
  {
    goto LABEL_48;
  }

LABEL_31:
  v27 = qword_100975360;
  if (!(qword_100975360 >> 62))
  {
    v28 = *((qword_100975360 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v40 = qword_100975360;
  v41 = _CocoaArrayWrapper.endIndex.getter();
  v27 = v40;
  v28 = v41;
  if (v41)
  {
LABEL_33:
    v29 = 0;
    v59 = v27 & 0xFFFFFFFFFFFFFF8;
    v61 = v27 & 0xC000000000000001;
    v30 = _swiftEmptyArrayStorage;
    v57 = v27;
    do
    {
      if (v61)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v29 >= *(v59 + 16))
        {
          goto LABEL_47;
        }

        v31 = *(v27 + 8 * v29 + 32);

        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          goto LABEL_31;
        }
      }

      v33 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v34)
      {
        goto LABEL_55;
      }

      v35 = v33;
      v36 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100365788(0, *(v30 + 2) + 1, 1, v30);
      }

      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
      if (v38 >= v37 >> 1)
      {
        v30 = sub_100365788((v37 > 1), v38 + 1, 1, v30);
      }

      *(v30 + 2) = v38 + 1;
      v39 = &v30[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      ++v29;
      v27 = v57;
    }

    while (v32 != v28);
  }

LABEL_50:
  v42 = sub_10034A794(v55, 1);
  type metadata accessor for REMCDTemplate();
  v43 = [objc_allocWithZone(NSFetchRequest) init];
  v44 = [swift_getObjCClassFromMetadata() entity];
  [v43 setEntity:v44];

  [v43 setAffectedStores:0];
  [v43 setPredicate:v42];

  sub_10003450C(a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setPropertiesToFetch:isa];

  v46 = Array._bridgeToObjectiveC()().super.isa;
  [v43 setRelationshipKeyPathsForPrefetching:v46];

  v47 = NSManagedObjectContext.fetch<A>(_:)();
  if (v56)
  {
  }

  else
  {
    v48 = v47;

    v49 = sub_1001A57AC(v48);

    sub_10039509C(v49);
    v51 = v50;

    v52 = sub_1002173A0(v51);

    sub_10021F054(v52, sub_100220A64, 0, v54);
  }
}

void sub_10021ADDC(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if ((v8 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(v8 >> 1, v7))
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v11 != (v8 >> 1) - v7)
  {
LABEL_54:
    swift_unknownObjectRelease();
LABEL_2:
    sub_100278278(v5, v6, v7, v8);
    goto LABEL_9;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

LABEL_9:
  v55 = v9;
  if (qword_100936818 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = qword_100975368;
    if (!(qword_100975368 >> 62))
    {
      v13 = *((qword_100975368 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v54 = a4;
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v25 = qword_100975368;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v25;
    v13 = v26;
    v54 = a4;
    if (!v26)
    {
      break;
    }

LABEL_12:
    v14 = 0;
    v58 = v12 & 0xFFFFFFFFFFFFFF8;
    v60 = v12 & 0xC000000000000001;
    a4 = _swiftEmptyArrayStorage;
    v15 = v12;
    while (v60)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v19)
      {
LABEL_55:
        _StringGuts.grow(_:)(46);
        v53._object = 0x80000001007EC120;
        v53._countAndFlagsBits = 0xD00000000000002CLL;
        String.append(_:)(v53);
        sub_1000F5104(&qword_10093D5C8, &unk_1007A76F0);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v20 = v18;
      v21 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a4 = sub_100365788(0, *(a4 + 2) + 1, 1, a4);
      }

      v23 = *(a4 + 2);
      v22 = *(a4 + 3);
      if (v23 >= v22 >> 1)
      {
        a4 = sub_100365788((v22 > 1), v23 + 1, 1, a4);
      }

      *(a4 + 2) = v23 + 1;
      v24 = &a4[16 * v23];
      *(v24 + 4) = v20;
      *(v24 + 5) = v21;
      ++v14;
      v12 = v15;
      if (v17 == v13)
      {
        goto LABEL_30;
      }
    }

    if (v14 >= *(v58 + 16))
    {
      goto LABEL_26;
    }

    v16 = *(v12 + 8 * v14 + 32);

    v17 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  a4 = _swiftEmptyArrayStorage;
LABEL_30:
  if (qword_100936820 != -1)
  {
    goto LABEL_48;
  }

LABEL_31:
  v27 = qword_100975370;
  if (!(qword_100975370 >> 62))
  {
    v28 = *((qword_100975370 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v40 = qword_100975370;
  v41 = _CocoaArrayWrapper.endIndex.getter();
  v27 = v40;
  v28 = v41;
  if (v41)
  {
LABEL_33:
    v29 = 0;
    v59 = v27 & 0xFFFFFFFFFFFFFF8;
    v61 = v27 & 0xC000000000000001;
    v30 = _swiftEmptyArrayStorage;
    v57 = v27;
    do
    {
      if (v61)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v29 >= *(v59 + 16))
        {
          goto LABEL_47;
        }

        v31 = *(v27 + 8 * v29 + 32);

        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          swift_once();
          goto LABEL_31;
        }
      }

      v33 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v34)
      {
        goto LABEL_55;
      }

      v35 = v33;
      v36 = v34;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100365788(0, *(v30 + 2) + 1, 1, v30);
      }

      v38 = *(v30 + 2);
      v37 = *(v30 + 3);
      if (v38 >= v37 >> 1)
      {
        v30 = sub_100365788((v37 > 1), v38 + 1, 1, v30);
      }

      *(v30 + 2) = v38 + 1;
      v39 = &v30[16 * v38];
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      ++v29;
      v27 = v57;
    }

    while (v32 != v28);
  }

LABEL_50:
  v42 = sub_10055BD54(v55, 1);
  type metadata accessor for REMCDSavedReminder();
  v43 = [objc_allocWithZone(NSFetchRequest) init];
  v44 = [swift_getObjCClassFromMetadata() entity];
  [v43 setEntity:v44];

  [v43 setAffectedStores:0];
  [v43 setPredicate:v42];

  sub_10003450C(a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setPropertiesToFetch:isa];

  v46 = Array._bridgeToObjectiveC()().super.isa;
  [v43 setRelationshipKeyPathsForPrefetching:v46];

  v47 = NSManagedObjectContext.fetch<A>(_:)();
  if (v56)
  {
  }

  else
  {
    v48 = v47;

    v49 = sub_1001A595C(v48);

    sub_100394B34(v49);
    v51 = v50;

    v52 = sub_1002173A0(v51);

    sub_10021F054(v52, sub_100220A64, 0, v54);
  }
}

void sub_10021B48C(void **a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *sub_10000F61C(a2, a2[3]);
  swift_beginAccess();
  v6 = sub_100353718(v4, *(v5 + 16));
  swift_endAccess();
  if (!v6)
  {
    swift_beginAccess();
    sub_100378D70(&v12, v4);
    swift_endAccess();

    return;
  }

  swift_beginAccess();
  v7 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {
    v10 = *a3;

    goto LABEL_10;
  }

  if (v7 < 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v9, 1))
  {
    *a3 = sub_10021D4DC(v8, v9 + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    sub_1002C8BB8(v6, v4, isUniquelyReferenced_nonNull_native);
    *a3 = v12;
    swift_endAccess();

    return;
  }

  __break(1u);
}

void sub_10021B624(void *a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = [*(*sub_10000F61C(a2 a2[3]) + 24)];
  if (!v5)
  {
    swift_beginAccess();
    sub_100378D70(&v12, v4);
    swift_endAccess();

    return;
  }

  v6 = v5;
  swift_beginAccess();
  v7 = *a3;
  if ((*a3 & 0xC000000000000001) == 0)
  {
    v10 = *a3;

    goto LABEL_10;
  }

  if (v7 < 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v9, 1))
  {
    *a3 = sub_10021D4DC(v8, v9 + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a3;
    sub_1002C7454(v6, v4, isUniquelyReferenced_nonNull_native);
    *a3 = v12;
    swift_endAccess();

    return;
  }

  __break(1u);
}

uint64_t sub_10021B7B4(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v64 = a4;
  v65 = a2;
  v60 = a3;
  v61 = sub_10038F910(_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    sub_10000CE28(&qword_10093A8F8, &qword_1009399F0, off_1008D4120);
    Set.Iterator.init(_cocoa:)();
    a1 = v70[1];
    v5 = v70[2];
    v6 = v70[3];
    v7 = v70[4];
    v8 = v70[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v67 = v6;
  v12 = (v6 + 64) >> 6;
  while (1)
  {
    while (1)
    {
      if (a1 < 0)
      {
        v16 = __CocoaSet.Iterator.next()();
        if (!v16 || (v69 = v16, sub_1000060C8(0, &qword_1009399F0, off_1008D4120), swift_dynamicCast(), (v15 = v70[0]) == 0))
        {
LABEL_28:
          sub_10001B860();
          v5 = sub_10038DB14(_swiftEmptyArrayStorage);
          v70[0] = v5;
          v8 = v65;
          if (!(v65 >> 62))
          {
            v26 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v27 = v61;
            if (!v26)
            {
LABEL_68:

              v57 = *v60;
              *v60 = v5;
            }

            goto LABEL_30;
          }

LABEL_75:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          v27 = v61;
          if (!v26)
          {
            goto LABEL_68;
          }

LABEL_30:
          v28 = 0;
          v29 = v8 & 0xC000000000000001;
          v30 = v8 & 0xFFFFFFFFFFFFFF8;
          v31 = v27 & 0xFFFFFFFFFFFFFF8;
          if (v27 < 0)
          {
            v31 = v27;
          }

          v66 = v31;
          v67 = v27 & 0xC000000000000001;
          v62 = v8 & 0xFFFFFFFFFFFFFF8;
          v63 = v8 & 0xC000000000000001;
          while (1)
          {
            if (v29)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v28 >= *(v30 + 16))
              {
                goto LABEL_71;
              }

              v32 = *(v8 + 8 * v28 + 32);
            }

            v33 = v32;
            v34 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_70;
            }

            if (v67)
            {
              v35 = v32;
              v5 = __CocoaDictionary.lookup(_:)();

              if (v5)
              {
                v68 = v5;
                sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
                swift_dynamicCast();
                v5 = v69;
                if (v69)
                {
                  goto LABEL_46;
                }
              }
            }

            else if (*(v27 + 16))
            {
              v36 = sub_10002B924(v32);
              if (v37)
              {
                v5 = *(*(v27 + 56) + 8 * v36);
                if (v5)
                {
LABEL_46:
                  type metadata accessor for RDAccountManualSortID();
                  v38 = *(v64 + 16);

                  v39 = v5;
                  v40 = sub_10053044C(v39, v38);
                  if (v40)
                  {
                    v5 = v40;
                    v41 = v70[0];
                    if ((v70[0] & 0xC000000000000001) != 0)
                    {
                      if (v70[0] >= 0)
                      {
                        v41 = v70[0] & 0xFFFFFFFFFFFFFF8;
                      }

                      v42 = __CocoaDictionary.count.getter();
                      if (__OFADD__(v42, 1))
                      {
                        goto LABEL_73;
                      }

                      v41 = sub_10021D4DC(v41, v42 + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
                      v70[0] = v41;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v69 = v41;
                    v8 = sub_10002B924(v33);
                    v45 = *(v41 + 16);
                    v46 = (v44 & 1) == 0;
                    v47 = v45 + v46;
                    if (__OFADD__(v45, v46))
                    {
                      goto LABEL_72;
                    }

                    v48 = v44;
                    if (*(v41 + 24) >= v47)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        v51 = v69;
                        if ((v44 & 1) == 0)
                        {
                          goto LABEL_63;
                        }
                      }

                      else
                      {
                        sub_1003751CC();
                        v51 = v69;
                        if ((v48 & 1) == 0)
                        {
                          goto LABEL_63;
                        }
                      }
                    }

                    else
                    {
                      sub_10036DB04(v47, isUniquelyReferenced_nonNull_native);
                      v49 = sub_10002B924(v33);
                      if ((v48 & 1) != (v50 & 1))
                      {
                        goto LABEL_78;
                      }

                      v8 = v49;
                      v51 = v69;
                      if ((v48 & 1) == 0)
                      {
LABEL_63:
                        v51[(v8 >> 6) + 8] |= 1 << v8;
                        *(v51[6] + 8 * v8) = v33;
                        *(v51[7] + 8 * v8) = v5;

                        v54 = v51[2];
                        v55 = __OFADD__(v54, 1);
                        v56 = v54 + 1;
                        if (v55)
                        {
                          goto LABEL_74;
                        }

                        v51[2] = v56;
LABEL_65:
                        v70[0] = v51;
                        v8 = v65;
                        v27 = v61;
LABEL_66:
                        v30 = v62;
                        v29 = v63;
                        goto LABEL_34;
                      }
                    }

                    v52 = v51[7];
                    v53 = *(v52 + 8 * v8);
                    *(v52 + 8 * v8) = v5;

                    goto LABEL_65;
                  }

                  v5 = sub_100369468(v33);

                  goto LABEL_66;
                }
              }
            }

LABEL_34:
            ++v28;
            if (v34 == v26)
            {
              v5 = v70[0];
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        v13 = v7;
        v14 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_28;
            }

            v14 = *(v5 + v7);
            ++v13;
            if (v14)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_15:
        v8 = (v14 - 1) & v14;
        v15 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      v17 = [v15 remObjectID];
      if (v17)
      {
        break;
      }

LABEL_9:
    }

    v18 = v17;
    v70[0] = v17;
    __chkstk_darwin(v17);
    v59[2] = v70;
    if ((sub_10032DE90(sub_100220660, v59, v65) & 1) == 0)
    {

      goto LABEL_9;
    }

    v19 = v61;
    if ((v61 & 0xC000000000000001) != 0)
    {
      break;
    }

    v23 = v18;
    v24 = v15;
LABEL_27:
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v19;
    sub_1002C79B0(v15, v18, v25);

    v61 = v70[0];
  }

  if (v61 >= 0)
  {
    v19 = v61 & 0xFFFFFFFFFFFFFF8;
  }

  v20 = v18;
  v21 = v15;
  v22 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v22, 1))
  {
    v19 = sub_10021C924(v19, v22 + 1);
    goto LABEL_27;
  }

  __break(1u);
LABEL_78:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10021BE34(uint64_t a1, void *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *sub_10000F61C(a2, a2[3]);
  swift_beginAccess();
  v5 = *(v4 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = __CocoaDictionary.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *(v4 + 16) = sub_10021D4DC(v6, result + 1, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
  }

  else
  {
    v8 = *(v4 + 16);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  sub_1002C8BB8(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v10;
  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10054B530(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10021BF78(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v11 = &_swiftEmptyDictionarySingleton;
  v10 = &_swiftEmptySetSingleton;

  sub_10021FBEC(a1, a2, &v11, &v10);

  v6 = sub_10038E300(_swiftEmptyArrayStorage);
  v7 = sub_100213BD0(v6, a2, &v11);
  v8 = *a3;
  *a3 = v7;

  sub_10021551C(v10);
}

uint64_t sub_10021C050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *, uint64_t))
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  v10[2] = a1;

  a4(a3, v10, v8);
}

uint64_t sub_10021C0D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_10021C150()
{
  result = qword_10093D590;
  if (!qword_10093D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D590);
  }

  return result;
}

unint64_t sub_10021C1A4@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = __CocoaDictionary.makeIterator()();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10021C23C(uint64_t result)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v6 = result;
    result = __CocoaDictionary.Iterator.next()();
    if (!result)
    {
      return result;
    }

    v8 = v7;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    swift_dynamicCast();
    v9 = v20[0];
    v19 = v8;
    v6(0);
    swift_dynamicCast();
    v10 = v20[0];
    if (v20[0])
    {
      goto LABEL_16;
    }

    return 0;
  }

  v3 = v1[3];
  v4 = v1[4];
  if (v4)
  {
    v5 = v1[3];
LABEL_15:
    v14 = (v4 - 1) & v4;
    v15 = (v5 << 9) | (8 * __clz(__rbit64(v4)));
    v9 = *(*(v2 + 48) + v15);
    v10 = *(*(v2 + 56) + v15);
    v16 = v9;

    v1[3] = v5;
    v1[4] = v14;
    if (v9)
    {
LABEL_16:
      v18 = v1[5];
      v17 = v1[6];
      v20[0] = v9;
      v20[1] = v10;
      v18(&v19, v20);

      return v19;
    }

    return 0;
  }

  v11 = (v1[2] + 64) >> 6;
  if (v11 <= v3 + 1)
  {
    v12 = v3 + 1;
  }

  else
  {
    v12 = (v1[2] + 64) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      v1[3] = v13;
      v1[4] = 0;
      return 0;
    }

    v4 = *(v1[1] + 8 * v5);
    ++v3;
    if (v4)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10021C3DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

Swift::Int sub_10021C4B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943D70, &qword_10079B2B8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for REMObjectID_Codable();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for REMList_Codable();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036AED0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021C6D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5F0, &unk_10079B2C0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100938880, off_1008D41A8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036AEE4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021C924(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943090, &unk_1007A3B10);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036BAEC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021CB70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943D20, &qword_10079B2A0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036C32C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021CDBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_10094F620, &unk_1007A3C40);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CA94(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D598, &unk_10079B210);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CABC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D254(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5D8, &qword_1007A4490);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036CE90(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    sub_1000F5104(a3, a4);
    v8 = static _DictionaryStorage.convert(_:capacity:)();
    v25 = v8;
    __CocoaDictionary.makeIterator()();
    v9 = __CocoaDictionary.Iterator.next()();
    if (v9)
    {
      v10 = v9;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = NSObject._rawHashValue(seed:)(*(v25 + 40));
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v8;
}

Swift::Int sub_10021D718(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5B8, &qword_10079B258);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036DD80(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021D964(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D600, &qword_10079B2D0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_10093D608, CNContact_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036DFFC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021DBB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100944190, &unk_10079B2E0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100939DB0, REMSharedEntitySyncActivity_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10036F11C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021DDFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943A60, &unk_10079B280);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100370B54(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E048(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5F8, &unk_1007A45A0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100370B68(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5A8, &unk_10079B230);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v18 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      type metadata accessor for RDManualSortIDPersistenceHost();
      do
      {
        swift_dynamicCast();
        type metadata accessor for RDManualSortIDCache();
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_100371EBC(v4 + 1, 1);
        }

        v2 = v18;
        v5 = *(v18 + 40);
        Hasher.init(_seed:)();
        if (*(v17 + 24))
        {
          v6 = *(v17 + 16);
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v8 = v18 + 64;
        v9 = -1 << *(v18 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v18 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v10) & ~*(v18 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v11 == v13;
            if (v11 == v13)
            {
              v11 = 0;
            }

            v12 |= v14;
            v15 = *(v8 + 8 * v11);
          }

          while (v15 == -1);
          v3 = __clz(__rbit64(~v15)) + (v11 << 6);
        }

        *(v8 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v18 + 48) + 8 * v3) = v17;
        *(*(v18 + 56) + 8 * v3) = v16;
        ++*(v18 + 16);
      }

      while (__CocoaDictionary.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E4F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_100943AE0, &unk_10079B290);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10002BD4C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E744(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100943AD0, &unk_1007A4340);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1003721AC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021E990(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_1009433B0, &unk_10079B240);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &unk_100938CD0, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1003721D4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021EBBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&unk_100944040, &qword_10079B2D8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100372788(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_10021EE08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000F5104(&qword_10093D5E0, &qword_10079B2A8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000060C8(0, &unk_10093F790, off_1008D4158);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100372B8C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10021F054(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *a4;

    v12 = __CocoaDictionary.count.getter();
    v16 = sub_10021D4DC(v10, v12, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
    sub_10022038C(a1, a2, a3, 1, &v16, type metadata accessor for RDElementManualSortID, sub_1003731C0, sub_10036A210);
    if (v4)
    {
    }
  }

  else
  {
    v14 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a4;
    sub_10022038C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v16, type metadata accessor for RDElementManualSortID, sub_1003731C0, sub_10036A210);
  }

  *a4 = v16;
  return result;
}

uint64_t sub_10021F218(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *a4;

    v12 = __CocoaDictionary.count.getter();
    v16 = sub_10021D4DC(v10, v12, &qword_100943070, &unk_10079B200, type metadata accessor for RDAccountManualSortID, sub_10036DB04);
    sub_10022038C(a1, a2, a3, 1, &v16, type metadata accessor for RDAccountManualSortID, sub_1003751CC, sub_10036DB04);
    if (v4)
    {
    }
  }

  else
  {
    v14 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a4;
    sub_10022038C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v16, type metadata accessor for RDAccountManualSortID, sub_1003751CC, sub_10036DB04);
  }

  *a4 = v16;
  return result;
}

uint64_t sub_10021F3DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

void sub_10021F440(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41 = a2;
  v38 = a4;
  v4 = a1;
  v40 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_10000CE28(&qword_100944210, &qword_100939EE0, off_1008D41D0);
    Set.Iterator.init(_cocoa:)();
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
    v8 = v48;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v37 = v6;
  v12 = (v6 + 64) >> 6;
  v39 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v18 = __CocoaSet.Iterator.next()();
  if (!v18 || (v43 = v18, sub_1000060C8(0, &qword_100939EE0, off_1008D41D0), swift_dynamicCast(), v17 = v49, v15 = v7, v16 = v8, !v49))
  {
LABEL_34:
    sub_10001B860();
    return;
  }

  while (1)
  {
    v19 = [v17 remObjectID];
    if (!v19)
    {

      goto LABEL_10;
    }

    v20 = v19;
    v49 = v19;
    __chkstk_darwin(v19);
    v36[2] = &v49;
    v21 = v42;
    v22 = sub_10032DE90(sub_100220A9C, v36, v41);
    v42 = v21;
    if ((v22 & 1) == 0)
    {

LABEL_10:
      v7 = v15;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v23 = *v40;
    if ((*v40 & 0xC000000000000001) != 0)
    {
      if (v23 < 0)
      {
        v24 = *v40;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = v20;
      v26 = v17;
      v27 = __CocoaDictionary.count.getter();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_36;
      }

      v28 = sub_10021D718(v24, v27 + 1);
      v29 = v40;
      *v40 = v28;
    }

    else
    {
      v30 = *v40;
      v31 = v20;
      v32 = v17;
      v29 = v40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v29;
    sub_1002C8A40(v17, v20, isUniquelyReferenced_nonNull_native);
    *v29 = v49;

    v34 = [v17 account];
    if (v34)
    {
      sub_10037CB0C(&v49, v34);

      v35 = v49;
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v39;
    if (v39 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_34;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_10021F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25[1] = a3;
  v27 = a2;
  v26 = _s10PredicatesOMa(0);
  v7 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 56);
    v25[0] = a4;
    while (1)
    {
      v12 = *(v11 - 3);
      v28 = *(v11 - 2);
      v14 = *(v11 - 1);
      v13 = *v11;
      if ((*v11 & 1) == 0)
      {
        break;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = _swiftEmptyArrayStorage;
      }

      v17 = v16[2];

      if (__OFSUB__(v13 >> 1, v14))
      {
        __break(1u);
        return;
      }

      if (v17 != (v13 >> 1) - v14)
      {
        swift_unknownObjectRelease();
        a4 = v25[0];
        goto LABEL_5;
      }

      v15 = swift_dynamicCastClass();
      a4 = v25[0];
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = _swiftEmptyArrayStorage;
      }

LABEL_12:
      *v9 = v15;
      v9[8] = 0;
      swift_storeEnumTagMultiPayload();
      v18 = sub_100043AA8();
      sub_1000252B4(v9, _s10PredicatesOMa);
      if (qword_1009367E8 != -1)
      {
        swift_once();
      }

      v19 = qword_100975338;
      if (qword_1009367F0 != -1)
      {
        v24 = qword_100975338;
        swift_once();
        v19 = v24;
      }

      v20 = sub_100050654(v19, qword_100975340, 0, v18);

      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v21 = NSManagedObjectContext.fetch<A>(_:)();
      if (v4)
      {
        swift_unknownObjectRelease();

        return;
      }

      v11 += 4;
      v22 = sub_1001A574C(v21);

      v23 = sub_1002143F0(v22);

      sub_10021F054(v23, sub_100220A64, 0, a4);
      swift_unknownObjectRelease();

      if (!--v10)
      {
        return;
      }
    }

    swift_unknownObjectRetain();
LABEL_5:
    sub_100278278(v12, v28, v14, v13);
    goto LABEL_12;
  }
}

uint64_t sub_10021FB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 48); ; i += 2)
    {
      v12 = *i;
      v13[0] = *(i - 1);
      v13[1] = v12;
      swift_unknownObjectRetain();
      a5(v13, a2, a3, a4);
      if (v5)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v6)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10021FBEC(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v41 = a2;
  v38 = a4;
  v4 = a1;
  v40 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    sub_10000CE28(&qword_10093A900, &qword_100939D80, off_1008D41B8);
    Set.Iterator.init(_cocoa:)();
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
    v8 = v48;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v37 = v6;
  v12 = (v6 + 64) >> 6;
  v39 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v18 = __CocoaSet.Iterator.next()();
  if (!v18 || (v43 = v18, sub_1000060C8(0, &qword_100939D80, off_1008D41B8), swift_dynamicCast(), v17 = v49, v15 = v7, v16 = v8, !v49))
  {
LABEL_34:
    sub_10001B860();
    return;
  }

  while (1)
  {
    v19 = [v17 remObjectID];
    if (!v19)
    {

      goto LABEL_10;
    }

    v20 = v19;
    v49 = v19;
    __chkstk_darwin(v19);
    v36[2] = &v49;
    v21 = v42;
    v22 = sub_10032DE90(sub_100220A9C, v36, v41);
    v42 = v21;
    if ((v22 & 1) == 0)
    {

LABEL_10:
      v7 = v15;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v23 = *v40;
    if ((*v40 & 0xC000000000000001) != 0)
    {
      if (v23 < 0)
      {
        v24 = *v40;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v25 = v20;
      v26 = v17;
      v27 = __CocoaDictionary.count.getter();
      if (__OFADD__(v27, 1))
      {
        goto LABEL_36;
      }

      v28 = sub_10021D008(v24, v27 + 1);
      v29 = v40;
      *v40 = v28;
    }

    else
    {
      v30 = *v40;
      v31 = v20;
      v32 = v17;
      v29 = v40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *v29;
    sub_1002C8510(v17, v20, isUniquelyReferenced_nonNull_native);
    *v29 = v49;

    v34 = [v17 account];
    if (v34)
    {
      sub_10037CB0C(&v49, v34);

      v35 = v49;
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v39;
    if (v39 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_34;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_34;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

id sub_10021FFC8(id result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a2;
  v39 = result;
  if (a2 >> 62)
  {
LABEL_45:
    v31 = result;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = v31;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v8 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v37 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v33 = a3;
      v34 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v35 = v6;
      while (1)
      {
        if (v8)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v37 + 16))
          {
            goto LABEL_41;
          }

          result = *(isUniquelyReferenced_nonNull_native + 8 * v7 + 32);
        }

        v9 = result;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v11 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          v12 = result;
          v13 = __CocoaDictionary.lookup(_:)();

          if (v13)
          {
            sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
            swift_dynamicCast();
            v14 = v38[0];
            if (v38[0])
            {
              goto LABEL_17;
            }
          }
        }

        else if (*(v11 + 16))
        {
          v15 = sub_10002B924(result);
          if (v16)
          {
            v14 = *(*(v11 + 56) + 8 * v15);
            if (v14)
            {
LABEL_17:
              sub_100220844(*(a4 + 16) + 40, v38);
              v17 = v14;
              v18 = sub_1007449F4(v17, v38);
              if (v18)
              {
                v19 = v18;
                v20 = v39;
                if ((v39 & 0xC000000000000001) != 0)
                {
                  if (v39 >= 0)
                  {
                    v20 = v39 & 0xFFFFFFFFFFFFFF8;
                  }

                  result = __CocoaDictionary.count.getter();
                  if (__OFADD__(result, 1))
                  {
                    goto LABEL_43;
                  }

                  v20 = sub_10021D4DC(v20, result + 1, &unk_100943080, &unk_1007A3B00, type metadata accessor for RDElementManualSortID, sub_10036A210);
                  v39 = v20;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v38[0] = v20;
                a3 = sub_10002B924(v9);
                v22 = *(v20 + 16);
                v23 = (v21 & 1) == 0;
                result = (v22 + v23);
                if (__OFADD__(v22, v23))
                {
                  goto LABEL_42;
                }

                v24 = v21;
                if (*(v20 + 24) >= result)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    isUniquelyReferenced_nonNull_native = v38[0];
                    if ((v21 & 1) == 0)
                    {
                      goto LABEL_34;
                    }
                  }

                  else
                  {
                    result = sub_1003731C0();
                    isUniquelyReferenced_nonNull_native = v38[0];
                    if ((v24 & 1) == 0)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                else
                {
                  sub_10036A210(result, isUniquelyReferenced_nonNull_native);
                  result = sub_10002B924(v9);
                  if ((v24 & 1) != (v25 & 1))
                  {
                    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
                    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                    __break(1u);
                    return result;
                  }

                  a3 = result;
                  isUniquelyReferenced_nonNull_native = v38[0];
                  if ((v24 & 1) == 0)
                  {
LABEL_34:
                    *(isUniquelyReferenced_nonNull_native + 8 * (a3 >> 6) + 64) |= 1 << a3;
                    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * a3) = v9;
                    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * a3) = v19;
                    v28 = *(isUniquelyReferenced_nonNull_native + 16);
                    v29 = __OFADD__(v28, 1);
                    v30 = v28 + 1;
                    if (v29)
                    {
                      goto LABEL_44;
                    }

                    *(isUniquelyReferenced_nonNull_native + 16) = v30;

LABEL_36:
                    v39 = isUniquelyReferenced_nonNull_native;
                    isUniquelyReferenced_nonNull_native = v32;
                    a3 = v33;
LABEL_37:
                    v8 = v34;
                    v6 = v35;
                    goto LABEL_5;
                  }
                }

                v26 = *(isUniquelyReferenced_nonNull_native + 56);
                v27 = *(v26 + 8 * a3);
                *(v26 + 8 * a3) = v19;

                goto LABEL_36;
              }

              sub_100368FC8(v9);

              goto LABEL_37;
            }
          }
        }

LABEL_5:
        ++v7;
        if (v10 == v6)
        {
          return v39;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10022038C(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  sub_10021C1A4(a1, a2, a3, &v54);

  v13 = sub_10021C23C(a6);
  if (!v13)
  {
    goto LABEL_23;
  }

  v15 = v13;
  v16 = v14;
  v53 = a7;
  v17 = *a5;
  v19 = sub_10002B924(v13);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  if (__OFADD__(v20, v21))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v18;
  if (v17[3] >= v20 + v21)
  {
    if (a4)
    {
      v26 = *a5;
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v53();
      v26 = *a5;
      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v26[(v19 >> 6) + 8] |= 1 << v19;
    *(v26[6] + 8 * v19) = v15;
    *(v26[7] + 8 * v19) = v16;
    v29 = v26[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v26[2] = v31;
LABEL_13:
    v32 = sub_10021C23C(a6);
    if (v32)
    {
      v34 = v32;
      v35 = v33;
      do
      {
        v40 = *a5;
        v41 = sub_10002B924(v34);
        v43 = v40[2];
        v44 = (v42 & 1) == 0;
        v30 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v30)
        {
          goto LABEL_24;
        }

        v46 = v42;
        if (v40[3] < v45)
        {
          (a8)(v45, 1);
          v47 = *a5;
          v41 = sub_10002B924(v34);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_26;
          }
        }

        v49 = *a5;
        if (v46)
        {
          v36 = v41;

          v37 = v49[7];
          v38 = *(v37 + 8 * v36);
          *(v37 + 8 * v36) = v35;
        }

        else
        {
          v49[(v41 >> 6) + 8] |= 1 << v41;
          *(v49[6] + 8 * v41) = v34;
          *(v49[7] + 8 * v41) = v35;
          v50 = v49[2];
          v30 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v30)
          {
            goto LABEL_25;
          }

          v49[2] = v51;
        }

        v34 = sub_10021C23C(a6);
        v35 = v39;
      }

      while (v34);
    }

LABEL_23:
    sub_10001B860();
  }

  a8();
  v23 = *a5;
  v24 = sub_10002B924(v15);
  if ((v22 & 1) == (v25 & 1))
  {
    v19 = v24;
    v26 = *a5;
    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:

    v27 = v26[7];
    v28 = *(v27 + 8 * v19);
    *(v27 + 8 * v19) = v16;

    goto LABEL_13;
  }

LABEL_26:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10022069C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_100220748()
{
  result = qword_10093D5B0;
  if (!qword_10093D5B0)
  {
    sub_1000F514C(&qword_10093A578, &qword_1007A1E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D5B0);
  }

  return result;
}

uint64_t sub_1002207AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100220844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100947E90, &qword_10079B250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002208B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3[2] = a1;
  sub_1002A13B4(sub_100220AB8, v3, v2);
}

uint64_t sub_10022095C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002209A4(uint64_t a1, void (*a2)(id *))
{
  v3 = *(v2 + 16);
  v4[2] = a1;
  v5 = vaddq_s64(*(v2 + 24), vdupq_n_s64(0x10uLL));
  sub_1002A13E0(a2, v4, v3);
}

uint64_t sub_1002209F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100220AD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D610);
  v1 = sub_100006654(v0, qword_10093D610);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100220BA0()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10093D628 = result;
  return result;
}

uint64_t sub_100220BDC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100935C38 != -1)
  {
    swift_once();
  }

  v7 = qword_10093D628;
  static OSSignpostID.exclusive.getter();
  v25 = v7;
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v24 = v9;
  v9(v6, v2);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = qword_100935C30;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_10093D610);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v8;
    v18 = v2;
    v19 = v17;
    v28 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10000668C(v11, v10, &v28);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] start execute()", v16, 0xCu);
    sub_10000607C(v19);
    v2 = v18;
  }

  v26[0] = 0xD000000000000025;
  v26[1] = 0x800000010079B480;
  v26[3] = 0;
  v27[0] = 0;
  v26[2] = 0;
  *(v27 + 6) = 0;
  v20 = *(v1 + 32);
  __chkstk_darwin(v21);
  *(&v23 - 4) = v1;
  *(&v23 - 3) = v11;
  *(&v23 - 2) = v10;
  sub_100014A64(v26, sub_100224AB8, (&v23 - 6));

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return v24(v6, v2);
}

void sub_100220F34(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  sub_100220FC4(a2, a1, a3, a4, &v9);
  objc_autoreleasePoolPop(v8);
}

void sub_100220FC4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = sub_1002222B8();
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_24:

    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_10093D610);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10000668C(a3, a4, v34);
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] there's no account supporting attachments, completing execution", v28, 0xCu);
      sub_10000607C(v29);
    }

    return;
  }

LABEL_23:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_3:
  v30 = a5;
  v11 = a4;
  v12 = 0;
  v36 = 1;
  v13 = a1[10];
  if (v13 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v35 = v13;
  a5 = v9 & 0xC000000000000001;
  a4 = v9 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (a5)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v34[0] = v14;
    sub_1002213B8(v34, &v36, a1, a2, a3, v11, &v35);
    if (v5)
    {

      *v30 = v5;
      return;
    }

    ++v12;
  }

  while (v16 != v10);

  if (v36)
  {
    v17 = v11;
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10093D610);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_10000668C(a3, v17, v34);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] no staled attachment left, container deemed clean", v21, 0xCu);
      sub_10000607C(v22);
    }

    swift_beginAccess();
    v23 = a1[8];
    v24 = a1[9];
    sub_10000C9DC((a1 + 5), v23);
    (*(v24 + 40))(1, v23, v24);
    swift_endAccess();
  }
}

void sub_1002213B8(void **a1, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7)
{
  v99 = a7;
  v100 = a6;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_1002220B4(v17);
  if (v7)
  {
    return;
  }

  v95 = a2;
  v93 = v16;
  v94 = v13;
  v96 = v12;
  v98 = a5;
  if (v18)
  {
    v97 = 0;
    if (v18[2])
    {
      v19 = v18;
      v20 = v99;
      swift_beginAccess();
      v21 = *v20;
      if (*v20 <= 0)
      {

        if (qword_100935C30 == -1)
        {
LABEL_17:
          v45 = type metadata accessor for Logger();
          sub_100006654(v45, qword_10093D610);
          v46 = v100;

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          v49 = os_log_type_enabled(v47, v48);
          v50 = v98;
          v51 = v95;
          if (v49)
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            *&v102[0] = v53;
            *v52 = 136446466;
            *(v52 + 4) = sub_10000668C(v50, v46, v102);
            *(v52 + 12) = 2048;
            *(v52 + 14) = a3[10];

            _os_log_impl(&_mh_execute_header, v47, v48, "[%{public}s] no delete limit left {perRunDeleteLimit: %lu}", v52, 0x16u);
            sub_10000607C(v53);
          }

          else
          {
          }

          *v51 = 0;
          return;
        }
      }

      else
      {

        sub_1002F2280(v21, v19, &v104);

        v101 = v106;
        v109 = *&v105[8];
        v110 = v105[24];
        v107 = v104;
        v108 = v105[0];
        v102[0] = v104;
        v102[1] = *v105;
        v102[2] = *&v105[16];
        v103 = v106;
        sub_1000F5104(&qword_10093D908, &qword_10079B678);
        sub_100224AD8();
        v90 = sub_100224A60();
        v22 = v97;
        v23 = Sequence.mapToSet<A>(_:)();
        v97 = v22;
        sub_1000050A4(&v107, &qword_10093D918, &qword_10079B680);
        sub_1000050A4(&v109, &qword_10093D918, &qword_10079B680);
        sub_1000050A4(&v101, &unk_10093D920, &qword_10079B688);
        if (qword_100935C30 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        v25 = sub_100006654(v24, qword_10093D610);
        v26 = v100;

        v27 = v17;

        v89 = v25;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        v30 = os_log_type_enabled(v28, v29);
        v92 = v23;
        v91 = v19;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&v102[0] = v32;
          *v31 = 136447234;
          *(v31 + 4) = sub_10000668C(v98, v26, v102);
          *(v31 + 12) = 2048;
          *(v31 + 14) = *(v92 + 16);

          *(v31 + 22) = 2048;
          v33 = v99;
          swift_beginAccess();
          *(v31 + 24) = *v33;
          *(v31 + 32) = 2048;
          *(v31 + 34) = *(v19 + 16);

          *(v31 + 42) = 2114;
          *(v31 + 44) = v27;
          v34 = v88;
          *v88 = v27;
          v35 = v27;
          _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] going to purge staled attachments {to-purge.count: %ld, limit-left: %ld, total-staled: %ld, accountID: %{public}@}", v31, 0x34u);
          sub_1000050A4(v34, &unk_100938E70, &unk_100797230);

          sub_10000607C(v32);
        }

        else
        {
        }

        v54 = v27;
        v55 = a3[4];
        v56 = v96;
        isa = Set._bridgeToObjectiveC()().super.isa;
        v58 = [v27 uuid];
        a3 = v93;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v94 + 8))(a3, v56);
        *&v102[0] = 0;
        v60 = [v55 purgeAttachmentFilesWithAttachmentIDs:isa accountID:v59 error:v102];

        v61 = *&v102[0];
        if (!v60)
        {
          v74 = *&v102[0];

          _convertNSErrorToError(_:)();

          swift_willThrow();
          *v95 = 0;
          return;
        }

        v62 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v61;

        v64 = *(v62 + 16);
        v65 = *(v92 + 16);

        v66 = v95;
        if (v64 == v65)
        {
          v67 = v100;

          v68 = v54;

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            *&v102[0] = v72;
            *v71 = 136446722;
            *(v71 + 4) = sub_10000668C(v98, v67, v102);
            *(v71 + 12) = 2048;
            *(v71 + 14) = *(v62 + 16);

            *(v71 + 22) = 2114;
            *(v71 + 24) = v68;
            *a3 = v68;
            v73 = v68;
            _os_log_impl(&_mh_execute_header, v69, v70, "[%{public}s] purge was successful {purged.count: %ld, accountID: %{public}@}", v71, 0x20u);
            sub_1000050A4(a3, &unk_100938E70, &unk_100797230);

            sub_10000607C(v72);
          }

          else
          {
          }

          v82 = v99;
          v83 = *(v62 + 16);
          v84 = *(v91 + 16);

          v85 = v83 == v84;
        }

        else
        {

          v75 = v100;

          v76 = v54;

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            a3 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&v102[0] = v80;
            *v79 = 136446722;
            *(v79 + 4) = sub_10000668C(v98, v75, v102);
            *(v79 + 12) = 2048;
            *(v79 + 14) = *(v62 + 16);

            *(v79 + 22) = 2114;
            *(v79 + 24) = v76;
            *a3 = v76;
            v81 = v76;
            _os_log_impl(&_mh_execute_header, v77, v78, "[%{public}s] some purge wasn't successful {purged.count: %ld, accountID: %{public}@}", v79, 0x20u);
            sub_1000050A4(a3, &unk_100938E70, &unk_100797230);

            sub_10000607C(v80);
            v66 = v95;
          }

          else
          {
          }

          v85 = 0;
          v82 = v99;
        }

        v86 = *(v62 + 16);

        swift_beginAccess();
        if (!__OFSUB__(*v82, v86))
        {
          *v82 -= v86;
          if (!v85)
          {
            *v66 = 0;
          }

          return;
        }

        __break(1u);
      }

      swift_once();
      goto LABEL_17;
    }
  }

  if (qword_100935C30 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100006654(v36, qword_10093D610);
  v37 = v100;

  v38 = v17;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v102[0] = v43;
    *v41 = 136446466;
    *(v41 + 4) = sub_10000668C(v98, v37, v102);
    *(v41 + 12) = 2114;
    *(v41 + 14) = v38;
    *v42 = v38;
    v44 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}s] no staled attachment found for {accountID: %{public}@}", v41, 0x16u);
    sub_1000050A4(v42, &unk_100938E70, &unk_100797230);

    sub_10000607C(v43);
  }
}

void *sub_1002220B4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 32);
  v11 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v9, v4);
  v20 = 0;
  v13 = [v10 attachmentIDsFromAttachmentDirectoryWithAccountID:isa error:&v20];

  v14 = v20;
  if (v13)
  {
    sub_100224A60();
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    if (v15[2])
    {
      v17 = sub_100222974(a1);
      v18 = sub_10019D7E8(v17, v15);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v18;
}

void *sub_1002222B8()
{
  v0 = sub_100222544();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v4, "type")}];
      v8 = [v7 supportsAttachments];

      if (v8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = _swiftEmptyArrayStorage[2];
  }

  v10 = 0;
  while (v1 != v10)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_30;
      }

      v11 = _swiftEmptyArrayStorage[v10 + 4];
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = [v11 remObjectID];

    ++v10;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100222544()
{
  v0 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v0];

  sub_100010864(v4);

  sub_1002137C0(_swiftEmptySetSingleton);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v7 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:v8];

  v9 = NSManagedObjectContext.fetch<A>(_:)();
  return v9;
}

uint64_t sub_100222974(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_100222A14(a1, v1, &v8);
  objc_autoreleasePoolPop(v3);
  v4 = v8;
  v5 = objc_autoreleasePoolPush();
  sub_100223188(a1, v1, &v8);
  objc_autoreleasePoolPop(v5);
  v6 = v8;
  v8 = v4;
  sub_10027234C(v6);
  return v8;
}

uint64_t sub_100222A14@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v49 = a3;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10024653C(a1);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  v48 = v14;
  [v15 setPredicate:v14];
  [v15 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v47 = v15;
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    if (qword_100935C30 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v53 = v13;
  if (v19 >> 62)
  {
    v45 = v19;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v45;
  }

  else
  {
    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = 0;
  if (!v32)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_30:

    v31 = v57;
    goto LABEL_31;
  }

  v33 = 0;
  v55 = v19 & 0xFFFFFFFFFFFFFF8;
  v56 = v19 & 0xC000000000000001;
  a2 = v50 + 56;
  v51 = (v50 + 32);
  v52 = (v50 + 48);
  v57 = _swiftEmptyArrayStorage;
  v54 = v32;
  while (1)
  {
    if (v56)
    {
      v34 = v19;
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(v55 + 16))
      {
        goto LABEL_33;
      }

      v34 = v19;
      v35 = *(v19 + 8 * v33 + 32);
    }

    v36 = v35;
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    *&v58 = 0x696669746E656469;
    *(&v58 + 1) = 0xEA00000000007265;
    v38 = [v35 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v38)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v58 = 0u;
      v59 = 0u;
    }

    v60[0] = v58;
    v60[1] = v59;
    if (*(&v59 + 1))
    {
      v39 = swift_dynamicCast();
      (*a2)(v9, v39 ^ 1u, 1, v10);
      if ((*v52)(v9, 1, v10) != 1)
      {
        v40 = *v51;
        (*v51)(v53, v9, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v57;
        }

        else
        {
          v41 = sub_100366328(0, v57[2] + 1, 1, v57);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_100366328(v42 > 1, v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v44 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v57 = v41;
        v40(v41 + v44 + *(v50 + 72) * v43);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000050A4(v60, &qword_100939ED0, &qword_100791B10);
      (*a2)(v9, 1, 1, v10);
    }

    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
LABEL_12:
    ++v33;
    v19 = v34;
    if (v37 == v54)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10093D610);

  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *&v60[0] = swift_slowAlloc();
    *v23 = 136446466;
    v25 = *(a2 + 16);
    v24 = *(a2 + 24);

    v26 = sub_10000668C(v25, v24, v60);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    swift_getErrorValue();
    v27 = Error.rem_errorDescription.getter();
    v29 = sub_10000668C(v27, v28, v60);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] failed to fetch file attachment UUIDs from database {error: %{public}s}", v23, 0x16u);
    swift_arrayDestroy();
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_31:
  *v49 = v31;
  return result;
}

uint64_t sub_100223188@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v49 = a3;
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UUID();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005BDBEC(a1, 0x60u);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDSavedAttachment();
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  v48 = v14;
  [v15 setPredicate:v14];
  [v15 setResultType:2];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v47 = v15;
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    if (qword_100935C30 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v53 = v13;
  if (v19 >> 62)
  {
    v45 = v19;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v45;
  }

  else
  {
    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = 0;
  if (!v32)
  {
    v57 = _swiftEmptyArrayStorage;
LABEL_30:

    v31 = v57;
    goto LABEL_31;
  }

  v33 = 0;
  v55 = v19 & 0xFFFFFFFFFFFFFF8;
  v56 = v19 & 0xC000000000000001;
  a2 = v50 + 56;
  v51 = (v50 + 32);
  v52 = (v50 + 48);
  v57 = _swiftEmptyArrayStorage;
  v54 = v32;
  while (1)
  {
    if (v56)
    {
      v34 = v19;
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(v55 + 16))
      {
        goto LABEL_33;
      }

      v34 = v19;
      v35 = *(v19 + 8 * v33 + 32);
    }

    v36 = v35;
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    *&v58 = 0x696669746E656469;
    *(&v58 + 1) = 0xEA00000000007265;
    v38 = [v35 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v38)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {

      v58 = 0u;
      v59 = 0u;
    }

    v60[0] = v58;
    v60[1] = v59;
    if (*(&v59 + 1))
    {
      v39 = swift_dynamicCast();
      (*a2)(v9, v39 ^ 1u, 1, v10);
      if ((*v52)(v9, 1, v10) != 1)
      {
        v40 = *v51;
        (*v51)(v53, v9, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v57;
        }

        else
        {
          v41 = sub_100366328(0, v57[2] + 1, 1, v57);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_100366328(v42 > 1, v43 + 1, 1, v41);
        }

        v41[2] = v43 + 1;
        v44 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v57 = v41;
        v40(v41 + v44 + *(v50 + 72) * v43);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1000050A4(v60, &qword_100939ED0, &qword_100791B10);
      (*a2)(v9, 1, 1, v10);
    }

    sub_1000050A4(v9, &unk_100939D90, "8\n\r");
LABEL_12:
    ++v33;
    v19 = v34;
    if (v37 == v54)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_10093D610);

  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *&v60[0] = swift_slowAlloc();
    *v23 = 136446466;
    v25 = *(a2 + 16);
    v24 = *(a2 + 24);

    v26 = sub_10000668C(v25, v24, v60);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    swift_getErrorValue();
    v27 = Error.rem_errorDescription.getter();
    v29 = sub_10000668C(v27, v28, v60);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] failed to fetch saved attachment UUIDs from database {error: %{public}s}", v23, 0x16u);
    swift_arrayDestroy();
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_31:
  *v49 = v31;
  return result;
}

uint64_t sub_1002238F0()
{
  v1 = *(v0 + 24);

  sub_10000607C((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10022395C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

BOOL sub_100223990()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations];
  v3 = *&v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 32];
  sub_10000F61C(v2, v3);
  v5 = (*(*(v4 + 8) + 8))(v3);
  if (!v5)
  {
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10093D610);
    v7 = v1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = &v7[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
      v13 = *&v7[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier];
      v14 = *(v12 + 1);

      v15 = sub_10000668C(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] configuration validation fail - cannot execute because configurations.staledFileAttachmentCleanupPerRunDeleteLimit is 0", v10, 0xCu);
      sub_10000607C(v11);
    }
  }

  return v5 != 0;
}

char *sub_100223B44@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 24];
  v4 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 32];
  sub_10000F61C(&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states], v3);
  v5 = (*(v4 + 32))(v3, v4);
  v6 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24];
  v7 = *&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 32];
  sub_10000F61C(&v14[OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations], v6);
  v8 = *(v7 + 24);
  if (v5)
  {
    (*(v8 + 16))(v6);
  }

  else
  {
    v9 = (*(v8 + 8))(v6);
  }

  v10 = v9;
  v16 = ObjectType;
  v17 = &off_1008EAC50;
  *&v15 = v14;
  v11 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v12 = swift_allocObject();
  sub_100054B6C(&v15, v12 + 16);
  *(v12 + 56) = v10;
  a1[3] = v11;
  a1[4] = &off_1008F5B28;
  *a1 = v12;

  return v14;
}

unint64_t sub_100223C98()
{
  _StringGuts.grow(_:)(31);

  v1 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x746973796261622ELL;
  v4._object = 0xEB00000000726574;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

double sub_100223DC0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100223E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDStaledFileAttachmentCleanupActivity();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v19);
    v5 = v20;
    v6 = v21;
    sub_10000F61C(v19, v20);
    (*(v6 + 8))(v5, v6);
    sub_10000607C(v19);
    return sub_10000607C(v23);
  }

  else
  {
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10093D610);
    sub_10000A87C(a1, v19);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      sub_10000A87C(v19, &v18);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v19);
      v16 = sub_10000668C(v13, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDStaledFileAttachmentCleanupExecutionDateStorage.lastExecutedDate(for:) must work with RDStaledFileAttachmentCleanupActivity only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v19);
    }

    sub_10000607C(v23);
    v17 = type metadata accessor for Date();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

uint64_t sub_1002240C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  sub_10000A87C(a1, v26);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDStaledFileAttachmentCleanupActivity();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 16))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_100935C30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10093D610);
    sub_10000A87C(a1, v25);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      sub_10000A87C(v25, v23);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v25);
      v21 = sub_10000668C(v18, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDStaledFileAttachmentCleanupExecutionDateStorage.updateLastExecutedDate(for:) must work with RDStaledFileAttachmentCleanupActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v25);
    }
  }

  return sub_10000607C(v26);
}

uint64_t sub_1002243C8()
{
  sub_10000607C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100224548@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_executable);
  a1[3] = type metadata accessor for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupActivityExecutable();
  a1[4] = &off_1008EAC00;
  a1[5] = &off_1008EAC10;
  *a1 = v3;
}

uint64_t sub_1002245AC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states + 32);
  sub_10000F61C((v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_states), v2);
  v4 = (*(v3 + 32))(v2, v3);
  v5 = (v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations);
  v6 = *(v1 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_configurations + 24);
  v7 = v5[4];
  sub_10000F61C(v5, v6);
  v8 = *(v7 + 24);
  if (v4)
  {
    return (*(v8 + 16))(v6);
  }

  else
  {
    return (*(v8 + 8))(v6);
  }
}

uint64_t sub_1002246A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

uint64_t sub_100224730()
{
  v1 = (*v0 + OBJC_IVAR____TtC7remindd37RDStaledFileAttachmentCleanupActivity_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_10022479C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 staledFileAttachmentCleanupLastExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_100224840(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setStaledFileAttachmentCleanupLastExecutionDate:?];
}

id sub_1002249A0()
{
  v1 = [*v0 staledFileAttachmentCleanupRateReduceFactor];

  return v1;
}

unint64_t sub_100224A60()
{
  result = qword_10093B410;
  if (!qword_10093B410)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B410);
  }

  return result;
}

unint64_t sub_100224AD8()
{
  result = qword_10093D910;
  if (!qword_10093D910)
  {
    sub_1000F514C(&qword_10093D908, &qword_10079B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D910);
  }

  return result;
}

uint64_t initializeWithCopy for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

__n128 initializeWithTake for RDSavedHashtag(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, uint64_t a2)
{
  sub_10000607C(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for RDStaledFileAttachmentCleanupActivity.RDStaledFileAttachmentCleanupRateReducer(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100224CC4(void *a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  v13 = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_10093D930, qword_10079B6D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v8 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  v10 = sub_10039262C(KeyPath, v5);

  *(inited + 32) = v10;
  sub_10027238C(inited);
  return sub_10000C2B0(v13);
}

uint64_t sub_100224E20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v93 = a2;
  v95 = a4;
  v85 = a3;
  v89 = a5;
  v6 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = &v72[-v8];
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  __chkstk_darwin(v9);
  v83 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v86 = &v72[-v13];
  v14 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v81 = &v72[-v16];
  v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  __chkstk_darwin(v17);
  v94 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v72[-v21];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v82 = *(Configuration - 8);
  v24 = *(v82 + 64);
  __chkstk_darwin(Configuration);
  v26 = &v72[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for REMRemindersListDataView.Diff();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v72[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v72[-v33];
  v35 = a1;
  v36 = v96;
  result = sub_10022574C(a1, v95);
  if (v36)
  {
    return result;
  }

  v74 = v26;
  v75 = Configuration;
  v76 = v31;
  v38 = v94;
  v96 = result;
  v77 = v28;
  v78 = v22;
  v79 = v27;
  v80 = v34;
  sub_1002262A8(a1);
  v73 = v39;
  v41 = v40;
  v42 = [v92 fetchResultTokenToDiffAgainst];
  v43 = v80;
  sub_100534D44(v42, v80);

  v93 = 0;
  v92 = v41;
  v44 = v74;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v45 = v78;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  (*(v82 + 8))(v44, v75);
  v46 = v90;
  v47 = v38;
  v48 = v45;
  v49 = v91;
  (*(v90 + 16))(v38, v48, v91);
  v50 = (*(v46 + 88))(v38, v49);
  if (v50 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v46 + 96))(v38, v49);
    v51 = sub_10053DB98(*v38, v96, a1, v85, 0);
LABEL_6:
    v95 = v51;
    v55 = v87;
    v56 = v88;
    v57 = v86;
    v58 = v84;
    goto LABEL_7;
  }

  v52 = v85;
  if (v50 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v53 = v91;
    (*(v46 + 96))(v38, v91);
    v54 = v52;
    v49 = v53;
    v51 = sub_10053E698(*v38, v43, v35, v54, 0);
    goto LABEL_6;
  }

  v58 = v84;
  if (v50 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v59 = v79;
    if (v50 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v95 = _swiftEmptyArrayStorage;
    v55 = v87;
    v56 = v88;
    v57 = v86;
    v60 = v77;
    v46 = v90;
    v49 = v91;
    goto LABEL_8;
  }

  v65 = v91;
  (*(v46 + 96))(v47, v91);
  v66 = *v47;
  v67 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
  v68 = v81;
  sub_100226AD8(v47 + *(v67 + 48), v81);
  v69 = v66;
  v70 = v96;
  v95 = sub_10053DB98(v69, v96, v35, v52, 0);
  v71 = v52;
  v49 = v65;
  sub_10053EBE4(v68, v70, v35, v71, 0);
  sub_100226B48(v68);
  v55 = v87;
  v56 = v88;
  v57 = v86;
LABEL_7:
  v59 = v79;
  v60 = v77;
LABEL_8:
  (*(v46 + 8))(v78, v49);
  if (v73)
  {
    v61 = 1;
  }

  else
  {
    v62 = *(v96 + 16);
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();
    v61 = 0;
  }

  v63 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  (*(*(v63 - 8) + 56))(v58, v61, 1, v63);
  REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
  (*(v55 + 16))(v83, v57, v56);
  v64 = v80;
  (*(v60 + 16))(v76, v80, v59);
  sub_100226BB0(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
  sub_100226BB0(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
  REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
  (*(v55 + 8))(v57, v56);
  return (*(v60 + 8))(v64, v79);
}

uint64_t sub_100225604(id *a1)
{
  v1 = [*a1 entityName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [objc_opt_self() cdEntityName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1002256F4(uint64_t a1)
{
  result = sub_100226BB0(&qword_10093D958, &type metadata accessor for REMRemindersListDataView.SearchFlatInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10022574C(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v4 = *(Subtasks - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(Subtasks);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v125 = *(v8 - 8);
  v126 = v8;
  v9 = *(v125 + 64);
  __chkstk_darwin(v8);
  v122 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v120 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s9UtilitiesO12SortingStyleOMa();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v105 - v19;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v118 = *(Configuration - 8);
  v119 = Configuration;
  v21 = *(v118 + 64);
  __chkstk_darwin(Configuration);
  v115 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = &v105 - v24;
  __chkstk_darwin(v25);
  v113 = &v105 - v26;
  v111 = _s10PredicatesOMa(0);
  v27 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v112 = (&v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = a2;
  v29 = REMRemindersListDataView.SearchFlatInvocation.Parameters.objectIDs.getter();
  v30 = v29;
  v124 = v7;
  v127 = v4;
  v128 = Subtasks;
  v116 = v17;
  v117 = v14;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v31 = _swiftEmptySetSingleton;
    v134 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v32 = __CocoaSet.Iterator.next()();
    if (v32)
    {
      v33 = v32;
      type metadata accessor for REMObjectID_Codable();
      v34 = v33;
      while (1)
      {
        v132 = v34;
        swift_dynamicCast();
        v41 = [v133 entityName];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = [objc_opt_self() cdEntityName];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        if (v42 == v46 && v44 == v48)
        {
          break;
        }

        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v50)
        {
          goto LABEL_15;
        }

LABEL_7:
        v34 = __CocoaSet.Iterator.next()();
        if (!v34)
        {
          goto LABEL_25;
        }
      }

LABEL_15:
      v51 = v133;
      v52 = v31[2];
      if (v31[3] <= v52)
      {
        sub_1003800CC(v52 + 1);
      }

      v31 = v134;
      v35 = NSObject._rawHashValue(seed:)(v134[5]);
      v36 = v31 + 7;
      v37 = -1 << *(v31 + 32);
      v38 = v35 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~v31[(v38 >> 6) + 7]) != 0)
      {
        v40 = __clz(__rbit64((-1 << v38) & ~v31[(v38 >> 6) + 7])) | v38 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v53 = 0;
        v54 = (63 - v37) >> 6;
        do
        {
          if (++v39 == v54 && (v53 & 1) != 0)
          {
            __break(1u);
            goto LABEL_52;
          }

          v55 = v39 == v54;
          if (v39 == v54)
          {
            v39 = 0;
          }

          v53 |= v55;
          v56 = v36[v39];
        }

        while (v56 == -1);
        v40 = __clz(__rbit64(~v56)) + (v39 << 6);
      }

      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      *(v31[6] + 8 * v40) = v51;
      ++v31[2];
      goto LABEL_7;
    }

LABEL_25:

LABEL_48:
    v83 = sub_1000436E4(v31);

    if (v83 < 0 || (v83 & 0x4000000000000000) != 0)
    {
      goto LABEL_53;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v84 = v83;
    goto LABEL_51;
  }

  v57 = *(v29 + 32);
  v58 = ((1 << v57) + 63) >> 6;
  if ((v57 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v102 = swift_slowAlloc();
      v103 = v129;
      v104 = sub_10026EC00(v102, v58, v30, sub_100226BF8, 0);
      v129 = v103;
      if (v103)
      {

        __break(1u);
        return result;
      }

      v31 = v104;

      goto LABEL_48;
    }
  }

  v106 = v58;
  v105 = &v105;
  __chkstk_darwin(v29);
  v107 = &v105 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v107, v59);
  v108 = 0;
  v60 = 0;
  v61 = v30 + 56;
  v62 = 1 << *(v30 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v30 + 56);
  v65 = (v62 + 63) >> 6;
  v110 = v30;
  while (v64)
  {
    v66 = __clz(__rbit64(v64));
    v131 = (v64 - 1) & v64;
LABEL_37:
    v69 = v66 | (v60 << 6);
    v70 = *(v30 + 48);
    v109 = v69;
    v71 = *(v70 + 8 * v69);
    v72 = [v71 entityName];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    v76 = [objc_opt_self() cdEntityName];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    if (v73 == v77 && v75 == v79)
    {

      v30 = v110;
      v64 = v131;
LABEL_44:
      *&v107[(v109 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v109;
      if (__OFADD__(v108++, 1))
      {
        __break(1u);
LABEL_47:
        v31 = sub_1001A0DF0(v107, v106, v108, v30);
        goto LABEL_48;
      }
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v30 = v110;
      v64 = v131;
      if (v81)
      {
        goto LABEL_44;
      }
    }
  }

  v67 = v60;
  while (1)
  {
    v60 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v60 >= v65)
    {
      goto LABEL_47;
    }

    v68 = *(v61 + 8 * v60);
    ++v67;
    if (v68)
    {
      v66 = __clz(__rbit64(v68));
      v131 = (v68 - 1) & v68;
      goto LABEL_37;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v84 = _bridgeCocoaArray<A>(_:)();

LABEL_51:

  v85 = *(sub_1000F5104(&qword_10093A560, &qword_100797768) + 48);
  v86 = v112;
  *v112 = v84;
  v87 = v113;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v88 = v119;
  v89 = *(v118 + 8);
  v89(v87, v119);
  swift_storeEnumTagMultiPayload();
  v90 = sub_100043AA8();
  sub_1001A4F3C(v86, _s10PredicatesOMa);
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v91 = v120;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v89(v87, v88);
  v92 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v93 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v94 = v116;
  (*(*(v93 - 8) + 104))(v116, v92, v93);
  swift_storeEnumTagMultiPayload();
  v95 = v130;
  sub_1005368D8(v91, v94, v130);
  v96 = v114;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v97 = v122;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v89(v96, v88);
  v98 = v115;
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v99 = v124;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v89(v98, v88);
  v100 = sub_100536D54(v123, v90, v95, v97, v99, _swiftEmptyArrayStorage, 0);

  (*(v127 + 8))(v99, v128);
  (*(v125 + 8))(v97, v126);
  sub_1001A4F3C(v130, _s9UtilitiesO12SortingStyleOMa);
  return v100;
}

void sub_1002262A8(uint64_t a1)
{
  v82 = a1;
  v80 = _s10PredicatesOMa(0);
  v2 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v81 = (&v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v5 = *(Configuration - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(Configuration);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.SearchFlatInvocation.Parameters.configuration.getter();
  v9 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v5 + 8))(v8, Configuration);
  if ((v9 & 1) == 0)
  {
    return;
  }

  v76 = v9;
  v10 = REMRemindersListDataView.SearchFlatInvocation.Parameters.objectIDs.getter();
  v11 = v10;
  v79 = v1;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = _swiftEmptySetSingleton;
    v86 = _swiftEmptySetSingleton;
    __CocoaSet.makeIterator()();
    v13 = __CocoaSet.Iterator.next()();
    if (v13)
    {
      v14 = v13;
      type metadata accessor for REMObjectID_Codable();
      v15 = v14;
      while (1)
      {
        v84 = v15;
        swift_dynamicCast();
        v22 = [v85 entityName];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = [objc_opt_self() cdEntityName];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (v23 == v27 && v25 == v29)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_16;
        }

LABEL_8:
        v15 = __CocoaSet.Iterator.next()();
        if (!v15)
        {
          goto LABEL_27;
        }
      }

LABEL_16:
      v32 = v85;
      v33 = v12[2];
      if (v12[3] <= v33)
      {
        sub_1003800CC(v33 + 1);
      }

      v12 = v86;
      v16 = NSObject._rawHashValue(seed:)(v86[5]);
      v17 = v12 + 7;
      v18 = -1 << *(v12 + 32);
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~v12[(v19 >> 6) + 7]) != 0)
      {
        v21 = __clz(__rbit64((-1 << v19) & ~v12[(v19 >> 6) + 7])) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = 0;
        v35 = (63 - v18) >> 6;
        do
        {
          if (++v20 == v35 && (v34 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v36 = v20 == v35;
          if (v20 == v35)
          {
            v20 = 0;
          }

          v34 |= v36;
          v37 = v17[v20];
        }

        while (v37 == -1);
        v21 = __clz(__rbit64(~v37)) + (v20 << 6);
      }

      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v12[6] + 8 * v21) = v32;
      ++v12[2];
      goto LABEL_8;
    }

LABEL_27:

LABEL_50:
    v64 = sub_1000436E4(v12);

    if (v64 < 0 || (v64 & 0x4000000000000000) != 0)
    {
      goto LABEL_55;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v65 = v64;
    goto LABEL_53;
  }

  v38 = *(v10 + 32);
  v39 = ((1 << v38) + 63) >> 6;
  if ((v38 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v70 = swift_slowAlloc();
      v71 = sub_10026EC00(v70, v39, v11, sub_100226BF8, 0);
      v79 = v1;
      if (v1)
      {

        __break(1u);
        return;
      }

      v12 = v71;

      goto LABEL_50;
    }
  }

  v72 = &v72;
  v73 = v39;
  __chkstk_darwin(v10);
  v74 = &v72 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v74, v40);
  v75 = 0;
  v41 = 0;
  v42 = v11 + 56;
  v43 = 1 << *(v11 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v11 + 56);
  v46 = (v43 + 63) >> 6;
  v78 = v11;
  while (v45)
  {
    v47 = __clz(__rbit64(v45));
    v83 = (v45 - 1) & v45;
LABEL_39:
    v50 = v47 | (v41 << 6);
    v51 = *(v11 + 48);
    v77 = v50;
    v52 = *(v51 + 8 * v50);
    v53 = [v52 entityName];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = [objc_opt_self() cdEntityName];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    if (v54 == v58 && v56 == v60)
    {

      v11 = v78;
      v45 = v83;
LABEL_46:
      *&v74[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
      if (__OFADD__(v75++, 1))
      {
        __break(1u);
LABEL_49:
        v12 = sub_1001A0DF0(v74, v73, v75, v11);
        goto LABEL_50;
      }
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v78;
      v45 = v83;
      if (v62)
      {
        goto LABEL_46;
      }
    }
  }

  v48 = v41;
  while (1)
  {
    v41 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v41 >= v46)
    {
      goto LABEL_49;
    }

    v49 = *(v42 + 8 * v41);
    ++v48;
    if (v49)
    {
      v47 = __clz(__rbit64(v49));
      v83 = (v49 - 1) & v49;
      goto LABEL_39;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

  v65 = _bridgeCocoaArray<A>(_:)();

LABEL_53:

  v66 = v81;
  *v81 = v65;
  swift_storeEnumTagMultiPayload();
  v67 = sub_100043AA8();
  sub_1001A4F3C(v66, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v68 = [objc_allocWithZone(NSFetchRequest) init];
  v69 = [swift_getObjCClassFromMetadata() entity];
  [v68 setEntity:v69];

  [v68 setAffectedStores:0];
  [v68 setPredicate:v67];
  NSManagedObjectContext.count<A>(for:)();
}

uint64_t sub_100226AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100226B48(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100226BB0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100226C14@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  result = [v3 hintData];
  if (!result)
  {
    v13 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
LABEL_6:
    *a1 = v11;
    *(a1 + 16) = v12;
    *(a1 + 32) = v13;
    return result;
  }

  v6 = result;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = [v3 serializationVersion];
  if (v10 == 1)
  {
    result = sub_10015E2E4(v7, v9, v16);
    if (v2)
    {
      return result;
    }

    v11 = v16[0];
    v12 = v16[1];
    v13 = v17;
    goto LABEL_6;
  }

  v14 = v10;
  sub_100226D24();
  sub_100226D6C();
  swift_allocError();
  *v15 = v14;
  swift_willThrow();
  return sub_10001BBA0(v7, v9);
}

void sub_100226D24()
{
  if (!qword_10093D960)
  {
    v0 = _s22DataSerializationErrorOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_10093D960);
    }
  }
}

unint64_t sub_100226D6C()
{
  result = qword_10093D968;
  if (!qword_10093D968)
  {
    sub_100226D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D968);
  }

  return result;
}

uint64_t sub_100226DC4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093D970);
  v1 = sub_100006654(v0, qword_10093D970);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100226E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v5 = sub_1000F5104(&qword_10093DB08, &qword_1007A1720);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v11 = *(*(sub_1000F5104(&qword_10093DB10, &qword_10079B870) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = type metadata accessor for PromptTemplate();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = type metadata accessor for Prompt();
  v4[26] = v15;
  v16 = *(v15 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002270DC, 0, 0);
}

uint64_t sub_1002270DC()
{
  v57 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[11];
  v5 = v0[12];
  p_class_meths = v0[10];
  static String._fromUTF8Repairing(_:)();
  Prompt.init(_:)();
  v7 = Prompt.overestimatedTokenCount()();
  v8 = *(v2 + 8);
  v8(v1, v3);

  Prompt.init(_:)();
  v9 = Prompt.overestimatedTokenCount()();
  v8(v1, v3);
  v10 = *(v5 + 16);
  v11 = (v10 * 126) >> 64;
  v12 = 126 * v10;
  if (v11 != v12 >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13 + v12;
  if (__OFADD__(v13, v12))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (v14 > 0x4000)
  {
    if (qword_100935C40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093D970);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 0x4000;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDAutoCategorizerSession: {warning: prompt overestimated token count {%ld} is too large {> %ld}}. Response may be truncated.", v18, 0x16u);
    }
  }

  v19 = v0[22];
  v21 = v0[10];
  v20 = v0[11];
  _StringGuts.grow(_:)(42);

  v56[0] = 0xD000000000000027;
  v56[1] = 0x80000001007F12F0;
  v22._countAndFlagsBits = v21;
  v22._object = v20;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 125;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  sub_100445784(0xD000000000000027, 0x80000001007F12F0);

  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeListID.getter();
  if (qword_100935C48 != -1)
  {
    goto LABEL_22;
  }

LABEL_11:
  v24 = v0[25];
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[14];

  PromptTemplate.init(modelBundleID:templateID:fallbackPromptTemplateCatalog:)();
  sub_100227CA8(v26);
  if (p_class_meths[392] != -1)
  {
    swift_once();
  }

  v28 = v0[20];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[19];
  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_10093D970);
  (*(v31 + 16))(v28, v29, v30);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[18];
  if (v35)
  {
    v39 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56[0] = v55;
    *v39 = 136315138;
    sub_10022A514(&qword_10093DB30, &type metadata accessor for Locale);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v43 = *(v37 + 8);
    v43(v36, v38);
    v44 = sub_10000668C(v40, v42, v56);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "RDAutoCategorizerSession: {promptLocale: %s}", v39, 0xCu);
    sub_10000607C(v55);
  }

  else
  {

    v43 = *(v37 + 8);
    v43(v36, v38);
  }

  v0[29] = v43;
  v46 = v0[10];
  v45 = v0[11];
  sub_1000F5104(&qword_10093DB18, &qword_10079B878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = v46;
  *(inited + 56) = v45;

  v48 = sub_10038E004(inited);
  v0[30] = v48;
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &qword_10093DB20, &qword_10079B880);
  v49 = swift_task_alloc();
  v0[31] = v49;
  *v49 = v0;
  v49[1] = sub_100227678;
  v50 = v0[25];
  v51 = v0[21];
  v52 = v0[17];
  v53 = v0[13];

  return sub_100227F94(v52, v50, v51, v48, v53);
}

uint64_t sub_100227678()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *v1;
  v4[32] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002279DC, 0, 0);
  }

  else
  {
    v5 = async function pointer to GenerativeConfigurationRunnable<>.run(returning:)[1];
    v6 = swift_task_alloc();
    v4[33] = v6;
    v7 = sub_10022A514(&qword_10093DB28, &type metadata accessor for TokenGenerator);
    *v6 = v4;
    v6[1] = sub_100227850;
    v8 = v4[17];
    v9 = v4[15];

    return GenerativeConfigurationRunnable<>.run(returning:)(v9, v7);
  }
}

uint64_t sub_100227850(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  v6[34] = v2;

  v9 = v6[17];
  v10 = v6[16];
  v11 = v6[15];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_100227BB8;
  }

  else
  {
    v6[35] = a2;
    v6[36] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_100227ACC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1002279DC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 152) + 8;
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100227ACC()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 152) + 8;
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);

  return v9(v10, v11);
}

uint64_t sub_100227BB8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 152) + 8;
  (*(v0 + 232))(*(v0 + 168), *(v0 + 144));
  (*(v4 + 8))(v3, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100227CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.Components();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v3 + 8))(v6, v2);
  Locale.Components.init(identifier:)();
  v30 = Locale.Components.rem_languageAndScriptWithRegion()();
  v27 = &v30;
  if (sub_100040A74(sub_100040B20, v26, &off_1008DEB80))
  {
    Locale.init(identifier:)();
  }

  else
  {
    v23 = v8;
    v24 = v7;
    v25 = a1;

    v22 = v11;
    rawValue = Locale.Components.rem_language()()._rawValue;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = &unk_1008DEBA8;
    v17 = 23;
    do
    {
      v18 = *v16;
      v30._countAndFlagsBits = *(v16 - 1);
      v30._object = v18;
      v28 = v13;
      v29 = v15;

      v19._countAndFlagsBits = 95;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      sub_10022A55C();
      sub_10022A5B0();
      v20 = BidirectionalCollection<>.starts<A>(with:)();

      if (v20)
      {
        break;
      }

      v16 += 2;
      --v17;
    }

    while (v17);

    Locale.init(identifier:)();
    v8 = v23;
    v7 = v24;
    v11 = v22;
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100227F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v6 = *(*(sub_1000F5104(&qword_10093DB38, &qword_10079B890) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v7 = sub_1000F5104(&qword_10093DB40, &qword_10079B898);
  v5[45] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v9 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[47] = v9;
  v10 = *(v9 - 8);
  v5[48] = v10;
  v11 = *(v10 + 64) + 15;
  v5[49] = swift_task_alloc();
  v12 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[50] = v12;
  v13 = *(v12 - 8);
  v5[51] = v13;
  v14 = *(v13 + 64) + 15;
  v5[52] = swift_task_alloc();
  v15 = *(*(sub_1000F5104(&qword_10093DB48, &unk_10079B8A0) - 8) + 64) + 15;
  v5[53] = swift_task_alloc();
  v16 = type metadata accessor for FunctionIdentifier();
  v5[54] = v16;
  v17 = *(v16 - 8);
  v5[55] = v17;
  v18 = *(v17 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v5[58] = v19;
  v20 = *(v19 - 8);
  v5[59] = v20;
  v21 = *(v20 + 64) + 15;
  v5[60] = swift_task_alloc();
  v22 = *(*(type metadata accessor for StringResponseSanitizer.Guardrails() - 8) + 64) + 15;
  v5[61] = swift_task_alloc();
  v23 = type metadata accessor for StringResponseSanitizer();
  v5[62] = v23;
  v24 = *(v23 - 8);
  v5[63] = v24;
  v25 = *(v24 + 64) + 15;
  v5[64] = swift_task_alloc();
  v26 = *(*(type metadata accessor for SensitiveContentSettings() - 8) + 64) + 15;
  v5[65] = swift_task_alloc();
  v27 = *(*(type metadata accessor for StringRenderedPromptSanitizer.Guardrails() - 8) + 64) + 15;
  v5[66] = swift_task_alloc();
  v28 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[67] = v28;
  v29 = *(v28 - 8);
  v5[68] = v29;
  v30 = *(v29 + 64) + 15;
  v5[69] = swift_task_alloc();
  v31 = *(*(sub_1000F5104(&unk_10093F420, &unk_100797AE0) - 8) + 64) + 15;
  v5[70] = swift_task_alloc();
  v32 = *(*(sub_1000F5104(&qword_10093DB50, &qword_10079B8B0) - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v33 = type metadata accessor for SamplingParameters();
  v5[73] = v33;
  v34 = *(v33 - 8);
  v5[74] = v34;
  v35 = *(v34 + 64) + 15;
  v5[75] = swift_task_alloc();
  v36 = type metadata accessor for ChatMessagesPrompt();
  v5[76] = v36;
  v37 = *(v36 - 8);
  v5[77] = v37;
  v38 = *(v37 + 64) + 15;
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();

  return _swift_task_switch(sub_1002284EC, 0, 0);
}

uint64_t sub_1002284EC()
{
  v47 = *(v0 + 680);
  v42 = *(v0 + 672);
  v40 = *(v0 + 664);
  v51 = *(v0 + 648);
  v52 = *(v0 + 656);
  v30 = *(v0 + 640);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v53 = *(v0 + 616);
  v27 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v49 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v33 = *(v0 + 552);
  v34 = *(v0 + 544);
  v31 = *(v0 + 520);
  v32 = *(v0 + 528);
  v37 = *(v0 + 512);
  v38 = *(v0 + 504);
  v39 = *(v0 + 496);
  v35 = *(v0 + 536);
  v36 = *(v0 + 488);
  v43 = *(v0 + 472);
  v44 = *(v0 + 464);
  v45 = *(v0 + 480);
  v48 = *(v0 + 456);
  v46 = *(v0 + 424);
  v41 = *(v0 + 344);
  v8 = *(v0 + 320);
  v28 = *(v0 + 328);
  v29 = *(v0 + 336);
  *(swift_task_alloc() + 16) = v8;
  ChatMessagesPrompt.init(_:)();

  v9 = type metadata accessor for SamplingStrategy();
  *(v0 + 688) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 696) = v11;
  *(v0 + 704) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  sub_10022A4A4(v5, v6);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_1000050A4(v5, &qword_10093DB50, &qword_10079B8B0);
  *(v0 + 712) = sub_10022A514(&qword_10093DB58, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  v12 = *(v4 + 8);
  *(v0 + 720) = v12;
  *(v0 + 728) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v3, v49);
  v13 = *(v53 + 8);
  *(v0 + 736) = v13;
  *(v0 + 744) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v2, v27);
  v14 = v13;
  v50 = v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v7, v28, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  ChatMessagesPrompt.locale(_:)();
  sub_1000050A4(v7, &unk_10093F420, &unk_100797AE0);
  v14(v1, v27);
  sub_10045C388(v29);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v14(v30, v27);
  *(v0 + 752) = sub_1000F5104(&qword_10093DB60, &qword_10079B8B8);
  v17 = *(type metadata accessor for SensitiveContentSettings.Sanitizer() - 8);
  *(v0 + 760) = *(v17 + 72);
  *(v0 + 824) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringRenderedPromptSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v18 = *(v34 + 8);
  *(v0 + 768) = v18;
  *(v0 + 776) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v33, v35);
  v50(v51, v27);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v19 = *(v38 + 8);
  *(v0 + 784) = v19;
  *(v0 + 792) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v37, v39);
  v50(v52, v27);
  sub_10038E004(_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v50(v40, v27);
  v20 = *(v41 + 16);
  *(v0 + 800) = v20;
  v21 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v43 + 16))(v45, v20 + v21, v44);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v43 + 8))(v45, v44);
  v50(v42, v27);
  v22 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v22 - 8) + 56))(v46, 1, 1, v22);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v23 = async function pointer to static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 808) = v24;
  *v24 = v0;
  v24[1] = sub_100228C90;
  v25 = *(v0 + 352);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v25, 0xD00000000000001CLL, 0x80000001007F1320);
}

uint64_t sub_100228C90()
{
  v2 = *(*v1 + 808);
  v5 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = sub_100229700;
  }

  else
  {
    v3 = sub_100228DA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100228DA4()
{
  v1 = *(v0 + 352);
  v2 = sub_1000F5104(&qword_10093DB68, &qword_10079B8C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1000050A4(v1, &qword_10093DB38, &qword_10079B890);
  }

  else
  {
    v54 = *(v0 + 792);
    v50 = *(v0 + 784);
    v36 = *(v0 + 768);
    v37 = *(v0 + 776);
    v28 = *(v0 + 760);
    v31 = *(v0 + 752);
    v80 = *(v0 + 736);
    v82 = *(v0 + 744);
    v60 = *(v0 + 720);
    v62 = *(v0 + 728);
    v52 = *(v0 + 704);
    v46 = *(v0 + 688);
    v48 = *(v0 + 696);
    v72 = *(v0 + 672);
    v74 = *(v0 + 680);
    v76 = *(v0 + 608);
    v78 = *(v0 + 616);
    v56 = *(v0 + 600);
    v58 = *(v0 + 584);
    v42 = *(v0 + 576);
    v44 = *(v0 + 568);
    v34 = *(v0 + 552);
    v35 = *(v0 + 536);
    v32 = *(v0 + 528);
    v29 = *(v0 + 824);
    v30 = *(v0 + 520);
    v40 = *(v0 + 512);
    v41 = *(v0 + 496);
    v25 = *(v2 + 48);
    v38 = *(v0 + 488);
    v39 = *(v0 + 456);
    v26 = *(v0 + 448);
    v27 = *(v0 + 440);
    v33 = *(v0 + 432);
    v3 = *(v0 + 400);
    v85 = *(v0 + 416);
    v87 = *(v0 + 392);
    v4 = *(v0 + 384);
    v68 = v4;
    v70 = *(v0 + 408);
    v89 = *(v0 + 376);
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v64 = *(v0 + 320);
    v66 = v3;
    v7 = *(v6 + 48);
    v8 = *(v70 + 32);
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v25, v89);
    v10 = *(v6 + 48);
    v8(v85, v5, v3);
    v9(v87, v5 + v10, v89);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v27 + 8))(v39, v33);
    (*(v27 + 32))(v39, v26, v33);
    sub_10038F2FC(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791320;
    *(inited + 32) = 0xD0000000000000BFLL;
    *(inited + 40) = 0x80000001007F1340;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringRenderedPromptSanitizer.init(guardrails:)();
    *(inited + 72) = v35;
    sub_1000103CC((inited + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v36(v34, v35);
    *(inited + 80) = 0xD0000000000000B3;
    *(inited + 88) = 0x80000001007F1400;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringResponseSanitizer.init(guardrails:)();
    *(inited + 120) = v41;
    sub_1000103CC((inited + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v50(v40, v41);
    *(inited + 128) = 0xD000000000000055;
    *(inited + 136) = 0x80000001007F14C0;
    v48(v42, 1, 1, v46);
    sub_10022A4A4(v42, v44);
    SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
    SamplingParameters.promptLookupDraftSteps.setter();
    SamplingParameters.speculativeSampling.setter();
    SamplingParameters.tokenHealing.setter();
    sub_1000050A4(v42, &qword_10093DB50, &qword_10079B8B0);
    *(inited + 168) = v58;
    sub_1000103CC((inited + 144));
    static _OverrideConfigurationHelper.samplingParameters(_:)();
    v60(v56, v58);
    sub_1001F67C8(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    sub_1000F5104(&qword_10093DB70, &qword_10079B8C8);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_100791300;
    strcpy((v12 + 32), "promptTemplate");
    *(v12 + 47) = -18;
    v13 = type metadata accessor for PromptTemplate();
    *(v12 + 72) = v13;
    *(v12 + 80) = sub_10022A514(&qword_10093DB78, &type metadata accessor for PromptTemplate);
    v14 = sub_1000103CC((v12 + 48));
    (*(*(v13 - 8) + 16))(v14, v64, v13);
    sub_10038F430(v12);
    swift_setDeallocating();
    sub_1000050A4(v12 + 32, &qword_100942EF0, &qword_10079B8D0);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v68 + 8))(v87, v89);
    (*(v70 + 8))(v85, v66);
    v80(v74, v76);
    (*(v78 + 32))(v74, v72, v76);
  }

  v43 = *(v0 + 800);
  v15 = *(v0 + 736);
  v16 = *(v0 + 712);
  v17 = *(v0 + 680);
  v18 = *(v0 + 672);
  v47 = *(v0 + 744);
  v49 = *(v0 + 664);
  v51 = *(v0 + 656);
  v53 = *(v0 + 648);
  v55 = *(v0 + 640);
  v57 = *(v0 + 632);
  v19 = *(v0 + 608);
  v59 = *(v0 + 624);
  v61 = *(v0 + 600);
  v63 = *(v0 + 576);
  v65 = *(v0 + 568);
  v67 = *(v0 + 560);
  v69 = *(v0 + 552);
  v71 = *(v0 + 528);
  v73 = *(v0 + 520);
  v75 = *(v0 + 512);
  v77 = *(v0 + 488);
  v20 = *(v0 + 456);
  v79 = *(v0 + 480);
  v81 = *(v0 + 448);
  v21 = *(v0 + 440);
  v45 = *(v0 + 432);
  v83 = *(v0 + 424);
  v84 = *(v0 + 416);
  v86 = *(v0 + 392);
  v88 = *(v0 + 368);
  v90 = *(v0 + 352);
  v22 = *(v0 + 312);
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  *(v0 + 304) = *(v43 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v15(v18, v19);
  (*(v21 + 8))(v20, v45);
  v15(v17, v19);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100229700()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v12 = v0[80];
  v13 = v0[79];
  v8 = v0[76];
  v14 = v0[78];
  v15 = v0[75];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[69];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[61];
  v24 = v0[60];
  v25 = v0[56];
  v26 = v0[53];
  v27 = v0[52];
  v28 = v0[49];
  v29 = v0[46];
  v30 = v0[44];
  (*(v0[55] + 8))(v0[57], v0[54]);
  v2(v3, v8);

  v9 = v0[1];
  v10 = v0[102];

  return v9();
}

uint64_t sub_1002298F4()
{
  v0 = type metadata accessor for ChatMessagesPrompt();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  __chkstk_darwin(v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTemplate();
  sub_10022A514(&qword_10093DB78, &type metadata accessor for PromptTemplate);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  sub_1000F5104(&qword_10093DB80, &qword_10079B8D8);
  v6 = *(v1 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  (*(v2 + 16))(v8 + v7, v5, v0);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_100229AAC()
{
  v0 = sub_10038F1E8(&off_1008DEB38);
  result = sub_1000050A4(&unk_1008DEB58, &qword_10093DB98, &unk_10079B8E0);
  qword_10093D988 = v0;
  return result;
}

unsigned __int8 *sub_100229AFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for CachePolicy();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_10093DB10, &qword_10079B870);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v61 = &v61 - v18;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10038E004(_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  v24 = *(v20 + 32);
  v62 = v6;
  v24(v6 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig, v23, v19);
  v25 = *(a5 + 16);
  v65 = a4;
  v64 = a1;
  if (!v25)
  {
    goto LABEL_66;
  }

  v26 = sub_100005F4C(0xD000000000000015, 0x80000001007F1520);
  if ((v27 & 1) == 0)
  {
    goto LABEL_66;
  }

  v28 = (*(a5 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];

  v32 = HIBYTE(v29) & 0xF;
  v33 = v30 & 0xFFFFFFFFFFFFLL;
  if (!((v29 & 0x2000000000000000) != 0 ? HIBYTE(v29) & 0xF : v30 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    sub_1002F62B8(v30, v29, 10);
    goto LABEL_66;
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v35 = *result;
    if (v35 == 43)
    {
      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v44 = 0;
          if (result)
          {
            v45 = result + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                goto LABEL_64;
              }

              v47 = 10 * v44;
              if ((v44 * 10) >> 64 != (10 * v44) >> 63)
              {
                goto LABEL_64;
              }

              v44 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                goto LABEL_64;
              }

              ++v45;
              if (!--v32)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_72;
    }

    if (v35 != 45)
    {
      if (v33)
      {
        v52 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_64;
            }

            v54 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              goto LABEL_64;
            }

            v52 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_64;
            }

            ++result;
            if (!--v33)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v32) = 1;
      goto LABEL_65;
    }

    if (v33 >= 1)
    {
      v32 = v33 - 1;
      if (v33 != 1)
      {
        v36 = 0;
        if (result)
        {
          v37 = result + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_64;
            }

            v39 = 10 * v36;
            if ((v36 * 10) >> 64 != (10 * v36) >> 63)
            {
              goto LABEL_64;
            }

            v36 = v39 - v38;
            if (__OFSUB__(v39, v38))
            {
              goto LABEL_64;
            }

            ++v37;
            if (!--v32)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v32) = 0;
LABEL_65:
        v67 = v32;
LABEL_66:

        type metadata accessor for TokenGenerator();
        static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeListID.getter();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        static CachePolicy.inMemory.getter();
        GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
        v59 = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
        v60 = v62;
        *(v62 + OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo__model) = v59;
        return v60;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v66[0] = v30;
  v66[1] = v29 & 0xFFFFFFFFFFFFFFLL;
  if (v30 != 43)
  {
    if (v30 != 45)
    {
      if (v32)
      {
        v55 = 0;
        v56 = v66;
        while (1)
        {
          v57 = *v56 - 48;
          if (v57 > 9)
          {
            break;
          }

          v58 = 10 * v55;
          if ((v55 * 10) >> 64 != (10 * v55) >> 63)
          {
            break;
          }

          v55 = v58 + v57;
          if (__OFADD__(v58, v57))
          {
            break;
          }

          ++v56;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v32)
    {
      if (--v32)
      {
        v40 = 0;
        v41 = v66 + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            break;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          ++v41;
          if (!--v32)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_71;
  }

  if (v32)
  {
    if (--v32)
    {
      v48 = 0;
      v49 = v66 + 1;
      while (1)
      {
        v50 = *v49 - 48;
        if (v50 > 9)
        {
          break;
        }

        v51 = 10 * v48;
        if ((v48 * 10) >> 64 != (10 * v48) >> 63)
        {
          break;
        }

        v48 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          break;
        }

        ++v49;
        if (!--v32)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_10022A0CC()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  v3 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo__model];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10022A180@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10022A20C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd24RDAutoCategorizerSessionP33_715EFDDC6429123E11FE4FA9276D121411_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t (*sub_10022A2A0())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10022A318()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAutoCategorizerSession._ClientInfo()
{
  result = qword_10093DA68;
  if (!qword_10093DA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022A3C8()
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022A4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093DB50, &qword_10079B8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022A514(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10022A55C()
{
  result = qword_10093DB88;
  if (!qword_10093DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB88);
  }

  return result;
}

unint64_t sub_10022A5B0()
{
  result = qword_10093DB90;
  if (!qword_10093DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB90);
  }

  return result;
}

uint64_t sub_10022A604()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093DBA0);
  v1 = sub_100006654(v0, qword_10093DBA0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10022A6CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6911093;
  }

  else
  {
    v4 = 0x44497463656A626FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6911093;
  }

  else
  {
    v6 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

Swift::Int sub_10022A76C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10022A7E8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10022A850()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10022A8D4(uint64_t *a1@<X8>)
{
  v2 = 6911093;
  if (!*v1)
  {
    v2 = 0x44497463656A626FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10022A928()
{
  if (*v0)
  {
    result = 6911093;
  }

  else
  {
    result = 0x44497463656A626FLL;
  }

  *v0;
  return result;
}

void sub_10022A984(void *a1, void *a2)
{
  v6 = *v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = v8[8];
  *&v10 = __chkstk_darwin(v7).n128_u64[0];
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 storeControllerManagedObjectContext];
  if (!v13)
  {
    v21 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = String._bridgeToObjectiveC()();
    [v21 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v23];

    swift_willThrow();
    return;
  }

  v14 = v13;
  v15 = [v13 storeController];
  if (!v15)
  {
    v24 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v25 = swift_getObjCClassFromMetadata();
    v26 = String._bridgeToObjectiveC()();
    [v24 unexpectedNilPropertyWithClass:v25 property:v26];

    swift_willThrow();
    return;
  }

  v16 = v15;
  v70 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v69 = v8;
  if (v17)
  {
    v18 = v17;
    v68 = v6;
    v72 = sub_10022B240();
    v73 = &off_1008F2C88;
    v71[0] = v16;
    v19 = a1;
    v20 = v16;
    sub_1004735D8(a2, v71, v18, 0);
    if (v3)
    {

LABEL_16:
      sub_10000607C(v71);
      return;
    }

    v67 = v16;
    goto LABEL_18;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    v67 = v16;
    if (!v31)
    {
      if (qword_100935C50 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100006654(v45, qword_10093DBA0);
      v46 = a1;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v71[0] = v51;
        *v49 = 136446466;
        v52 = sub_1001424F8();
        v54 = sub_10000668C(v52, v53, v71);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2114;
        *(v49 + 14) = v46;
        *v50 = v46;
        v55 = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: Failed to merge storage into cdSavedAttachment because storage is an unhandled type of attachment {storage: %{public}@}", v49, 0x16u);
        sub_100039860(v50);

        sub_10000607C(v51);
      }

      v56 = v70;
      v57 = objc_opt_self();
      v71[0] = 0;
      v71[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(111);
      v58._countAndFlagsBits = 0xD00000000000006CLL;
      v58._object = 0x80000001007F15B0;
      String.append(_:)(v58);
      v59 = [v46 description];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63._countAndFlagsBits = v60;
      v63._object = v62;
      String.append(_:)(v63);

      v64._countAndFlagsBits = 125;
      v64._object = 0xE100000000000000;
      String.append(_:)(v64);
      v65 = String._bridgeToObjectiveC()();

      [v57 invalidParameterErrorWithDescription:v65];

      swift_willThrow();
      goto LABEL_24;
    }

    v32 = v31;
    v72 = sub_10022B240();
    v73 = &off_1008F2C88;
    v71[0] = v16;
    v33 = a1;
    v30 = v16;
    sub_1004735D8(a2, v71, v32, 1);

    if (!v3)
    {
      sub_10000607C(v71);
      goto LABEL_19;
    }

LABEL_15:
    goto LABEL_16;
  }

  v28 = v27;
  v68 = v6;
  v72 = sub_10022B240();
  v73 = &off_1008F2C88;
  v71[0] = v16;
  v19 = a1;
  v29 = v16;
  v30 = v16;
  sub_1004735D8(a2, v71, v28, 2);
  if (v3)
  {

    goto LABEL_15;
  }

  v67 = v29;
LABEL_18:

  sub_10000607C(v71);
  v6 = v68;
LABEL_19:
  [a2 setMinimumSupportedVersion:kREMSupportedVersionFor2022];
  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (v69[1])(v12, v7);
  [a2 setLastModifiedDate:isa];

  if (qword_100935C50 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_10093DBA0);
  v36 = a1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v39 = 136446466;
    v71[0] = v6;
    swift_getMetatypeMetadata();
    v41 = String.init<A>(describing:)();
    v43 = sub_10000668C(v41, v42, &v74);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2114;
    *(v39 + 14) = v36;
    *v40 = v36;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s: Merged storage into cdSavedAttachment {storage: %{public}@}", v39, 0x16u);
    sub_100039860(v40);

    sub_10000607C(v69);
  }

LABEL_24:
}