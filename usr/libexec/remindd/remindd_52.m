uint64_t sub_1004D00EC(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1004D0DDC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1004CFCF0(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1004D0268(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1004D03C8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1004CFD78(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1004D03C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v24 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v22 = v12;
    v16 = *(*(a3 + 56) + 8 * v12);
    sub_10013BCF4();

    if (StringProtocol.contains<A>(_:)())
    {

      v7 = v24;
    }

    else
    {
      v17 = StringProtocol.contains<A>(_:)();

      v7 = v24;
      if ((v17 & 1) == 0)
      {
        *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
          return sub_10055B778(v20, a2, v21, a3);
        }
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_10055B778(v20, a2, v21, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v24 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1004D0620()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1004D071C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004D071C()
{
  if (!qword_10094A1F0[0])
  {
    sub_1000060C8(255, &qword_10093F650, BMRule_ptr);
    v0 = type metadata accessor for OrderedDictionary();
    if (!v1)
    {
      atomic_store(v0, qword_10094A1F0);
    }
  }
}

uint64_t sub_1004D07BC()
{
  result = type metadata accessor for REMSuggestedAttributeInputDataFrame();
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

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Result(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Result(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1004D08BC()
{
  result = qword_10094A348;
  if (!qword_10094A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A348);
  }

  return result;
}

uint64_t sub_1004D0910(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = result;

    if (a2 == v3)
    {
      return v5;
    }

    if (a2 >= v3)
    {
      goto LABEL_13;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      if (a2)
      {
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v7 = v5;

      sub_1004CDDC8(&v7, &v6);

      if (v3 == 1)
      {
        return v6;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v3 > 1)
  {
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1004D09D4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A3870;
  *(inited + 32) = sub_1004CCF4C(4u);
  *(inited + 40) = sub_1004CCF4C(5u);
  *(inited + 48) = sub_1004CCF4C(6u);
  *(inited + 56) = sub_1004CCF4C(7u);
  *(inited + 64) = sub_1004CCF4C(8u);
  *(inited + 72) = sub_1004CCF4C(9u);
  *(inited + 80) = sub_1004CCF4C(0xAu);
  *(inited + 88) = sub_1004CCF4C(0xBu);
  v1 = sub_1001A6330(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1004D0AC0()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AE450;
  *(inited + 32) = sub_1004CCF4C(4u);
  *(inited + 40) = sub_1004CCF4C(6u);
  *(inited + 48) = sub_1004CCF4C(5u);
  *(inited + 56) = sub_1004CCF4C(8u);
  *(inited + 64) = sub_1004CCF4C(9u);
  *(inited + 72) = sub_1004CCF4C(0xAu);
  *(inited + 80) = sub_1004CCF4C(0xBu);
  v1 = sub_1001A6330(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

void *sub_1004D0BA0(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v4 = 0;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    v19 = v2 & 0xC000000000000001;
    v16 = v2;
    v17 = i;
    while (1)
    {
      if (v19)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v18 + 16))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = *a2;

      v9 = [v6 antecedent];
      sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
      sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
      v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = sub_1004C5794(v8);

      v12 = sub_1001A68B0(v11);

      sub_1004535E0(v12, v10);
      LOBYTE(v11) = v13;

      if (v11)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v2 = v16;
      ++v4;
      if (v7 == v17)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_1004D0DDC(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + -2592000.0;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v6 << 6);
LABEL_11:
    if (v11 < *(*(a3 + 48) + 8 * v13))
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_10055B560(result, a2, v5, a3);
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_10055B560(result, a2, v5, a3);
    }

    v15 = *(a3 + 64 + 8 * v6);
    ++v14;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D0ED8(uint64_t *a1)
{
  v3 = sub_1000F5104(&qword_10094A480, &qword_1007AE628);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_1004D4BA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000F5104(&qword_10094A460, &qword_1007AE618);
    v10[15] = 1;
    sub_1004D4C98();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

void sub_1004D10AC(id *a1, double *a2)
{
  v248 = *a1;
  v3 = [*a1 consequent];
  sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
  sub_10000CB48(&qword_10094A190, &qword_10093AA30, &qword_1007AE460);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  if (v5 > 1)
  {
    return;
  }

  v231 = a2;
  v6 = [v248 antecedent];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = v250;
    v8 = v251;
    v9 = v252;
    v10 = v253;
    v11 = v254;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
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

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v241 = 0;
  v242 = v7;
  do
  {
LABEL_15:
    v15 = v10;
    v16 = v11;
    while (1)
    {
      if (v7 < 0)
      {
        v21 = __CocoaSet.Iterator.next()();
        if (!v21)
        {
          goto LABEL_43;
        }

        v300 = v21;
        swift_dynamicCast();
        v20 = v305;
        v10 = v15;
        v19 = v16;
        if (!v305)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v17 = v15;
        v18 = v16;
        v10 = v15;
        if (!v16)
        {
          while (1)
          {
            v10 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v10 >= ((v9 + 64) >> 6))
            {
              goto LABEL_43;
            }

            v18 = *(v8 + 8 * v10);
            ++v17;
            if (v18)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_344:
          __break(1u);
          goto LABEL_345;
        }

LABEL_21:
        v19 = (v18 - 1) & v18;
        v20 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
        if (!v20)
        {
          goto LABEL_43;
        }
      }

      v245 = v19;
      v22 = [v20 type];
      v23 = [v22 identifier];

      if (v23)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = objc_opt_self();
      v28 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v29 = [v27 taskSpecificItemWithIdentifier:v28 valueClass:swift_getObjCClassFromMetadata()];

      if (!v29)
      {
        goto LABEL_355;
      }

      v30 = [v29 identifier];

      if (!v30)
      {
        if (!v26)
        {
          goto LABEL_39;
        }

LABEL_37:

        v7 = v242;
        v11 = v245;
LABEL_14:

        goto LABEL_15;
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (!v26)
      {

        v7 = v242;
        v11 = v245;
        if (!v33)
        {
          goto LABEL_40;
        }

        goto LABEL_14;
      }

      if (!v33)
      {
        goto LABEL_37;
      }

      if (v24 == v31 && v26 == v33)
      {
        break;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = v10;
      v7 = v242;
      v11 = v245;
      v16 = v245;
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_39:

    v7 = v242;
    v11 = v245;
LABEL_40:
    v35 = __OFADD__(v241++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_43:
  sub_10001B860();

  v36 = [v248 consequent];
  v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v37 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v38 = v255;
    v39 = v256;
    v40 = v257;
    i = v258;
    v42 = v259;
  }

  else
  {
    v43 = -1 << *(v37 + 32);
    v39 = v37 + 56;
    v40 = ~v43;
    v44 = -v43;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v42 = v45 & *(v37 + 56);

    i = 0;
    v38 = v37;
  }

  v240 = 0;
  v243 = v38;
  while (2)
  {
    while (2)
    {
      v46 = i;
      v47 = v42;
LABEL_53:
      if (v38 < 0)
      {
        v52 = __CocoaSet.Iterator.next()();
        if (!v52)
        {
          goto LABEL_80;
        }

        v300 = v52;
        swift_dynamicCast();
        v51 = v305;
        i = v46;
        v50 = v47;
        if (!v305)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v48 = v46;
        v49 = v47;
        for (i = v46; !v49; ++v48)
        {
          i = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_344;
          }

          if (i >= ((v40 + 64) >> 6))
          {
            goto LABEL_80;
          }

          v49 = *(v39 + 8 * i);
        }

        v50 = (v49 - 1) & v49;
        v51 = *(*(v38 + 48) + ((i << 9) | (8 * __clz(__rbit64(v49)))));
        if (!v51)
        {
          goto LABEL_80;
        }
      }

      v53 = [v51 type];
      v54 = [v53 identifier];

      v47 = v50;
      if (v54)
      {
        v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;
      }

      else
      {
        v246 = 0;
        v56 = 0;
      }

      v57 = objc_opt_self();
      v58 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v59 = [v57 taskSpecificItemWithIdentifier:v58 valueClass:swift_getObjCClassFromMetadata()];

      if (!v59)
      {
        goto LABEL_356;
      }

      v60 = [v59 identifier];

      if (!v60)
      {
        v42 = v47;
        if (!v56)
        {
          goto LABEL_76;
        }

LABEL_74:

        v38 = v243;
LABEL_51:

        continue;
      }

      break;
    }

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if (!v56)
    {

      v38 = v243;
      v42 = v47;
      if (!v63)
      {
        goto LABEL_77;
      }

      goto LABEL_51;
    }

    v42 = v47;
    if (!v63)
    {
      goto LABEL_74;
    }

    if (v246 != v61 || v56 != v63)
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = i;
      v38 = v243;
      if (v64)
      {
        goto LABEL_77;
      }

      goto LABEL_53;
    }

LABEL_76:

    v38 = v243;
LABEL_77:
    v35 = __OFADD__(v240++, 1);
    if (!v35)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_80:
  sub_10001B860();

  v65 = [v248 antecedent];
  v66 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v66 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v66 = v260;
    v67 = v261;
    v68 = v262;
    v69 = v263;
    v70 = v264;
  }

  else
  {
    v71 = -1 << *(v66 + 32);
    v67 = v66 + 56;
    v68 = ~v71;
    v72 = -v71;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v70 = v73 & *(v66 + 56);

    v69 = 0;
  }

  v238 = 0;
  do
  {
    v74 = v69;
    v75 = v70;
    do
    {
      if (v66 < 0)
      {
        v80 = __CocoaSet.Iterator.next()();
        if (!v80)
        {
          goto LABEL_102;
        }

        v300 = v80;
        swift_dynamicCast();
        v76 = v305;
        v69 = v74;
        v70 = v75;
        if (!v305)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v78 = v74;
        v79 = v75;
        v69 = v74;
        if (!v75)
        {
          while (1)
          {
            v69 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              break;
            }

            if (v69 >= ((v68 + 64) >> 6))
            {
              goto LABEL_102;
            }

            v79 = *(v67 + 8 * v69);
            ++v78;
            if (v79)
            {
              goto LABEL_88;
            }
          }

LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

LABEL_88:
        v70 = (v79 - 1) & v79;
        v76 = *(*(v66 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v79)))));
        if (!v76)
        {
          goto LABEL_102;
        }
      }

      v77 = sub_1004C8824(v76, 6u);

      v74 = v69;
      v75 = v70;
    }

    while ((v77 & 1) == 0);
    v35 = __OFADD__(v238++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_102:
  sub_10001B860();

  v81 = [v248 consequent];
  v82 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v82 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v82 = v265;
    v83 = v266;
    v84 = v267;
    v85 = v268;
    v86 = v269;
  }

  else
  {
    v87 = -1 << *(v82 + 32);
    v83 = v82 + 56;
    v84 = ~v87;
    v88 = -v87;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v86 = v89 & *(v82 + 56);

    v85 = 0;
  }

  v237 = 0;
  do
  {
    v90 = v85;
    v91 = v86;
    do
    {
      if (v82 < 0)
      {
        v96 = __CocoaSet.Iterator.next()();
        if (!v96)
        {
          goto LABEL_124;
        }

        v300 = v96;
        swift_dynamicCast();
        v92 = v305;
        v85 = v90;
        v86 = v91;
        if (!v305)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v94 = v90;
        v95 = v91;
        v85 = v90;
        if (!v91)
        {
          while (1)
          {
            v85 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              break;
            }

            if (v85 >= ((v84 + 64) >> 6))
            {
              goto LABEL_124;
            }

            v95 = *(v83 + 8 * v85);
            ++v94;
            if (v95)
            {
              goto LABEL_110;
            }
          }

LABEL_346:
          __break(1u);
          goto LABEL_347;
        }

LABEL_110:
        v86 = (v95 - 1) & v95;
        v92 = *(*(v82 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v95)))));
        if (!v92)
        {
          goto LABEL_124;
        }
      }

      v93 = sub_1004C8824(v92, 6u);

      v90 = v85;
      v91 = v86;
    }

    while ((v93 & 1) == 0);
    v35 = __OFADD__(v237++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_124:
  sub_10001B860();

  v97 = [v248 antecedent];
  v98 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v98 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v98 = v270;
    v99 = v271;
    v100 = v272;
    v101 = v273;
    v102 = v274;
  }

  else
  {
    v103 = -1 << *(v98 + 32);
    v99 = v98 + 56;
    v100 = ~v103;
    v104 = -v103;
    if (v104 < 64)
    {
      v105 = ~(-1 << v104);
    }

    else
    {
      v105 = -1;
    }

    v102 = v105 & *(v98 + 56);

    v101 = 0;
  }

  v244 = 0;
  do
  {
    v106 = v101;
    v107 = v102;
    do
    {
      if (v98 < 0)
      {
        v112 = __CocoaSet.Iterator.next()();
        if (!v112)
        {
          goto LABEL_146;
        }

        v300 = v112;
        swift_dynamicCast();
        v108 = v305;
        v101 = v106;
        v102 = v107;
        if (!v305)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v110 = v106;
        v111 = v107;
        v101 = v106;
        if (!v107)
        {
          while (1)
          {
            v101 = v110 + 1;
            if (__OFADD__(v110, 1))
            {
              break;
            }

            if (v101 >= ((v100 + 64) >> 6))
            {
              goto LABEL_146;
            }

            v111 = *(v99 + 8 * v101);
            ++v110;
            if (v111)
            {
              goto LABEL_132;
            }
          }

LABEL_347:
          __break(1u);
          goto LABEL_348;
        }

LABEL_132:
        v102 = (v111 - 1) & v111;
        v108 = *(*(v98 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v111)))));
        if (!v108)
        {
          goto LABEL_146;
        }
      }

      v109 = sub_1004C8824(v108, 5u);

      v106 = v101;
      v107 = v102;
    }

    while ((v109 & 1) == 0);
    v35 = __OFADD__(v244++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_146:
  sub_10001B860();

  v113 = [v248 consequent];
  v114 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v114 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v114 = v275;
    v115 = v276;
    v116 = v277;
    v117 = v278;
    v118 = v279;
  }

  else
  {
    v119 = -1 << *(v114 + 32);
    v115 = v114 + 56;
    v116 = ~v119;
    v120 = -v119;
    if (v120 < 64)
    {
      v121 = ~(-1 << v120);
    }

    else
    {
      v121 = -1;
    }

    v118 = v121 & *(v114 + 56);

    v117 = 0;
  }

  v239 = 0;
  do
  {
    v122 = v117;
    v123 = v118;
    do
    {
      if (v114 < 0)
      {
        v128 = __CocoaSet.Iterator.next()();
        if (!v128)
        {
          goto LABEL_168;
        }

        v300 = v128;
        swift_dynamicCast();
        v124 = v305;
        v117 = v122;
        v118 = v123;
        if (!v305)
        {
          goto LABEL_168;
        }
      }

      else
      {
        v126 = v122;
        v127 = v123;
        v117 = v122;
        if (!v123)
        {
          while (1)
          {
            v117 = v126 + 1;
            if (__OFADD__(v126, 1))
            {
              break;
            }

            if (v117 >= ((v116 + 64) >> 6))
            {
              goto LABEL_168;
            }

            v127 = *(v115 + 8 * v117);
            ++v126;
            if (v127)
            {
              goto LABEL_154;
            }
          }

LABEL_348:
          __break(1u);
          goto LABEL_349;
        }

LABEL_154:
        v118 = (v127 - 1) & v127;
        v124 = *(*(v114 + 48) + ((v117 << 9) | (8 * __clz(__rbit64(v127)))));
        if (!v124)
        {
          goto LABEL_168;
        }
      }

      v125 = sub_1004C8824(v124, 5u);

      v122 = v117;
      v123 = v118;
    }

    while ((v125 & 1) == 0);
    v35 = __OFADD__(v239++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_168:
  sub_10001B860();

  v129 = [v248 antecedent];
  v130 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v130 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v130 = v280;
    v131 = v281;
    v132 = v282;
    v133 = v283;
    v134 = v284;
  }

  else
  {
    v135 = -1 << *(v130 + 32);
    v131 = v130 + 56;
    v132 = ~v135;
    v136 = -v135;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    else
    {
      v137 = -1;
    }

    v134 = v137 & *(v130 + 56);

    v133 = 0;
  }

  v236 = 0;
  do
  {
    v138 = v133;
    v139 = v134;
    do
    {
      if (v130 < 0)
      {
        v144 = __CocoaSet.Iterator.next()();
        if (!v144)
        {
          goto LABEL_190;
        }

        v300 = v144;
        swift_dynamicCast();
        v140 = v305;
        v133 = v138;
        v134 = v139;
        if (!v305)
        {
          goto LABEL_190;
        }
      }

      else
      {
        v142 = v138;
        v143 = v139;
        v133 = v138;
        if (!v139)
        {
          while (1)
          {
            v133 = v142 + 1;
            if (__OFADD__(v142, 1))
            {
              break;
            }

            if (v133 >= ((v132 + 64) >> 6))
            {
              goto LABEL_190;
            }

            v143 = *(v131 + 8 * v133);
            ++v142;
            if (v143)
            {
              goto LABEL_176;
            }
          }

LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

LABEL_176:
        v134 = (v143 - 1) & v143;
        v140 = *(*(v130 + 48) + ((v133 << 9) | (8 * __clz(__rbit64(v143)))));
        if (!v140)
        {
          goto LABEL_190;
        }
      }

      v141 = sub_1004C8824(v140, 8u);

      v138 = v133;
      v139 = v134;
    }

    while ((v141 & 1) == 0);
    v35 = __OFADD__(v236++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_190:
  sub_10001B860();

  v145 = [v248 consequent];
  v146 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v146 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v146 = v285;
    v147 = v286;
    v148 = v287;
    v149 = v288;
    v150 = v289;
  }

  else
  {
    v151 = -1 << *(v146 + 32);
    v147 = v146 + 56;
    v148 = ~v151;
    v152 = -v151;
    if (v152 < 64)
    {
      v153 = ~(-1 << v152);
    }

    else
    {
      v153 = -1;
    }

    v150 = v153 & *(v146 + 56);

    v149 = 0;
  }

  v235 = 0;
  do
  {
    v154 = v149;
    v155 = v150;
    do
    {
      if (v146 < 0)
      {
        v160 = __CocoaSet.Iterator.next()();
        if (!v160)
        {
          goto LABEL_212;
        }

        v300 = v160;
        swift_dynamicCast();
        v156 = v305;
        v149 = v154;
        v150 = v155;
        if (!v305)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v158 = v154;
        v159 = v155;
        v149 = v154;
        if (!v155)
        {
          while (1)
          {
            v149 = v158 + 1;
            if (__OFADD__(v158, 1))
            {
              break;
            }

            if (v149 >= ((v148 + 64) >> 6))
            {
              goto LABEL_212;
            }

            v159 = *(v147 + 8 * v149);
            ++v158;
            if (v159)
            {
              goto LABEL_198;
            }
          }

LABEL_350:
          __break(1u);
          goto LABEL_351;
        }

LABEL_198:
        v150 = (v159 - 1) & v159;
        v156 = *(*(v146 + 48) + ((v149 << 9) | (8 * __clz(__rbit64(v159)))));
        if (!v156)
        {
          goto LABEL_212;
        }
      }

      v157 = sub_1004C8824(v156, 8u);

      v154 = v149;
      v155 = v150;
    }

    while ((v157 & 1) == 0);
    v35 = __OFADD__(v235++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_212:
  sub_10001B860();

  v161 = [v248 antecedent];
  v162 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v162 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v162 = v290;
    v163 = v291;
    v164 = v292;
    v165 = v293;
    v166 = v294;
  }

  else
  {
    v167 = -1 << *(v162 + 32);
    v163 = v162 + 56;
    v164 = ~v167;
    v168 = -v167;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    else
    {
      v169 = -1;
    }

    v166 = v169 & *(v162 + 56);

    v165 = 0;
  }

  v234 = 0;
  do
  {
    v170 = v165;
    v171 = v166;
    do
    {
      if (v162 < 0)
      {
        v176 = __CocoaSet.Iterator.next()();
        if (!v176)
        {
          goto LABEL_234;
        }

        v300 = v176;
        swift_dynamicCast();
        v172 = v305;
        v165 = v170;
        v166 = v171;
        if (!v305)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v174 = v170;
        v175 = v171;
        v165 = v170;
        if (!v171)
        {
          while (1)
          {
            v165 = v174 + 1;
            if (__OFADD__(v174, 1))
            {
              break;
            }

            if (v165 >= ((v164 + 64) >> 6))
            {
              goto LABEL_234;
            }

            v175 = *(v163 + 8 * v165);
            ++v174;
            if (v175)
            {
              goto LABEL_220;
            }
          }

LABEL_351:
          __break(1u);
          goto LABEL_352;
        }

LABEL_220:
        v166 = (v175 - 1) & v175;
        v172 = *(*(v162 + 48) + ((v165 << 9) | (8 * __clz(__rbit64(v175)))));
        if (!v172)
        {
          goto LABEL_234;
        }
      }

      v173 = sub_1004C8824(v172, 9u);

      v170 = v165;
      v171 = v166;
    }

    while ((v173 & 1) == 0);
    v35 = __OFADD__(v234++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_234:
  sub_10001B860();

  v177 = [v248 consequent];
  v178 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v178 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v178 = v295;
    v179 = v296;
    v180 = v297;
    v181 = v298;
    v182 = v299;
  }

  else
  {
    v183 = -1 << *(v178 + 32);
    v179 = v178 + 56;
    v180 = ~v183;
    v184 = -v183;
    if (v184 < 64)
    {
      v185 = ~(-1 << v184);
    }

    else
    {
      v185 = -1;
    }

    v182 = v185 & *(v178 + 56);

    v181 = 0;
  }

  v233 = 0;
  do
  {
    v186 = v181;
    v187 = v182;
    do
    {
      if (v178 < 0)
      {
        v192 = __CocoaSet.Iterator.next()();
        if (!v192)
        {
          goto LABEL_256;
        }

        v300 = v192;
        swift_dynamicCast();
        v188 = v305;
        v181 = v186;
        v182 = v187;
        if (!v305)
        {
          goto LABEL_256;
        }
      }

      else
      {
        v190 = v186;
        v191 = v187;
        v181 = v186;
        if (!v187)
        {
          while (1)
          {
            v181 = v190 + 1;
            if (__OFADD__(v190, 1))
            {
              break;
            }

            if (v181 >= ((v180 + 64) >> 6))
            {
              goto LABEL_256;
            }

            v191 = *(v179 + 8 * v181);
            ++v190;
            if (v191)
            {
              goto LABEL_242;
            }
          }

LABEL_352:
          __break(1u);
          goto LABEL_353;
        }

LABEL_242:
        v182 = (v191 - 1) & v191;
        v188 = *(*(v178 + 48) + ((v181 << 9) | (8 * __clz(__rbit64(v191)))));
        if (!v188)
        {
          goto LABEL_256;
        }
      }

      v189 = sub_1004C8824(v188, 9u);

      v186 = v181;
      v187 = v182;
    }

    while ((v189 & 1) == 0);
    v35 = __OFADD__(v233++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_256:
  sub_10001B860();

  v193 = [v248 antecedent];
  v194 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v194 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v194 = v300;
    v195 = v301;
    v196 = v302;
    v197 = v303;
    v198 = v304;
  }

  else
  {
    v199 = -1 << *(v194 + 32);
    v195 = v194 + 56;
    v196 = ~v199;
    v200 = -v199;
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    else
    {
      v201 = -1;
    }

    v198 = v201 & *(v194 + 56);

    v197 = 0;
  }

  v232 = 0;
  do
  {
    v202 = v197;
    v203 = v198;
    do
    {
      if (v194 < 0)
      {
        v208 = __CocoaSet.Iterator.next()();
        if (!v208)
        {
          goto LABEL_278;
        }

        v249 = v208;
        swift_dynamicCast();
        v204 = v305;
        v197 = v202;
        v198 = v203;
        if (!v305)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v206 = v202;
        v207 = v203;
        v197 = v202;
        if (!v203)
        {
          while (1)
          {
            v197 = v206 + 1;
            if (__OFADD__(v206, 1))
            {
              break;
            }

            if (v197 >= ((v196 + 64) >> 6))
            {
              goto LABEL_278;
            }

            v207 = *(v195 + 8 * v197);
            ++v206;
            if (v207)
            {
              goto LABEL_264;
            }
          }

LABEL_353:
          __break(1u);
          goto LABEL_354;
        }

LABEL_264:
        v198 = (v207 - 1) & v207;
        v204 = *(*(v194 + 48) + ((v197 << 9) | (8 * __clz(__rbit64(v207)))));
        if (!v204)
        {
          goto LABEL_278;
        }
      }

      v205 = sub_1004C8824(v204, 0xBu);

      v202 = v197;
      v203 = v198;
    }

    while ((v205 & 1) == 0);
    v35 = __OFADD__(v232++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_278:
  sub_10001B860();

  v209 = [v248 consequent];
  v210 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v210 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v210 = v305;
    v211 = v306;
    v212 = v307;
    v213 = v308;
    v214 = v309;
  }

  else
  {
    v215 = -1 << *(v210 + 32);
    v211 = v210 + 56;
    v212 = ~v215;
    v216 = -v215;
    if (v216 < 64)
    {
      v217 = ~(-1 << v216);
    }

    else
    {
      v217 = -1;
    }

    v214 = v217 & *(v210 + 56);

    v213 = 0;
  }

  v247 = 0;
  while (2)
  {
    v218 = v213;
    v219 = v214;
LABEL_288:
    if (v210 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_300;
      }

      swift_dynamicCast();
      v220 = v249;
      v213 = v218;
      v214 = v219;
      if (!v249)
      {
        goto LABEL_300;
      }

LABEL_287:
      v221 = sub_1004C8824(v220, 0xBu);

      v218 = v213;
      v219 = v214;
      if (v221)
      {
        v35 = __OFADD__(v247++, 1);
        if (!v35)
        {
          continue;
        }

        __break(1u);
LABEL_300:
        sub_10001B860();

        if (v241 <= 1 && v240 <= 1)
        {
          v224 = v241 <= 0 || v240 <= 0;
          if (v224 && v244 <= 1 && v239 <= 1)
          {
            v225 = v244 <= 0 || v239 <= 0;
            if (v225 && v238 <= 1 && v237 <= 1)
            {
              v226 = v238 <= 0 || v237 <= 0;
              if (v226 && v236 <= 1 && v235 <= 1)
              {
                v227 = v236 <= 0 || v235 <= 0;
                if (v227 && v234 <= 1 && v233 <= 1)
                {
                  v228 = v234 <= 0 || v233 <= 0;
                  if (v228 && v232 <= 1 && v247 <= 1 && (v247 < 1 || v232 <= 0))
                  {
                    v229 = *v231;
                    [v248 support];
                    if (v230 >= v229)
                    {
                      v230 = v229;
                    }

                    *v231 = v230;
                  }
                }
              }
            }
          }
        }

        return;
      }

      goto LABEL_288;
    }

    break;
  }

  v222 = v218;
  v223 = v219;
  v213 = v218;
  if (v219)
  {
LABEL_286:
    v214 = (v223 - 1) & v223;
    v220 = *(*(v210 + 48) + ((v213 << 9) | (8 * __clz(__rbit64(v223)))));
    if (!v220)
    {
      goto LABEL_300;
    }

    goto LABEL_287;
  }

  while (1)
  {
    v213 = v222 + 1;
    if (__OFADD__(v222, 1))
    {
      break;
    }

    if (v213 >= ((v212 + 64) >> 6))
    {
      goto LABEL_300;
    }

    v223 = *(v211 + 8 * v213);
    ++v222;
    if (v223)
    {
      goto LABEL_286;
    }
  }

LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
}

void sub_1004D2BA4(unint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v24 = *(*(a3 + 48) + 8 * v15);
    v16 = v24;
    sub_1004D10AC(&v24, a4);
    v18 = v17;

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1001A1140(a1, a2, v22, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1004D2D04(uint64_t a1, void *a2, double *a3)
{
  v31 = a3;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26 = v7;
    v28 = &v26;
    v29 = v9;
    __chkstk_darwin(v9);
    v27 = &v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v30 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v32 = *(*(a1 + 48) + 8 * v16);
      v17 = v32;
      sub_1004D10AC(&v32, v31);
      if (v3)
      {

        swift_willThrow();
        v22 = v29;
        goto LABEL_20;
      }

      v19 = v18;

      if (v19)
      {
        *&v27[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          v7 = sub_1001A1140(v27, v26, v30, a1);

          return v7;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v23 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v23;
  }

  v24 = swift_slowAlloc();
  v25 = v23;
  v7 = sub_1004CFDF0(v24, v7, a1, v25, v31);

  v22 = v23;
  if (v3)
  {
LABEL_20:
  }

  else
  {
  }

  return v7;
}

Swift::Int sub_1004D2FC0(uint64_t a1)
{
  v21 = 0x3FF0000000000000;
  v4 = v1;

  v6 = sub_1004CFE8C(v5, v4, &v21);
  v7 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
    v9 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_3:
      v10 = __CocoaSet.count.getter();
      v11 = v8 - v10;
      if (!__OFSUB__(v8, v10))
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      v17 = *(a1 + 16);
      goto LABEL_15;
    }
  }

  v18 = *(v7 + 16);
  v11 = v8 - v18;
  if (__OFSUB__(v8, v18))
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v4 + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics;
  v13 = *(&v4[1].isa + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics);
  v14 = __OFADD__(v13, v11);
  v15 = v13 + v11;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 1) = v15;
    *(v12 + 2) = v21;
    if (qword_1009362F0 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094A170);

  v4 = Logger.logObject.getter();
  LOBYTE(v8) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v8))
  {

    return v7;
  }

  v2 = swift_slowAlloc();
  *v2 = 134218240;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

  v17 = __CocoaSet.count.getter();
LABEL_15:
  *(v2 + 4) = v17;

  *(v2 + 12) = 2048;
  if (v9)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *(v7 + 16);
  }

  *(v2 + 14) = v19;

  _os_log_impl(&_mh_execute_header, v4, v8, "RDCoreBehaviorModel: Filtered rules {rules.count: %ld, filtered.count: %ld}", v2, 0x16u);

  return v7;
}

void sub_1004D31DC()
{
  v149 = type metadata accessor for Date();
  v154 = *(v149 - 8);
  v1 = *(v154 + 64);
  __chkstk_darwin(v149);
  v153 = v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v140 - v4;
  v6 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v140 - v9;
  v11 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = v140 - v14;
  v156 = _swiftEmptyArrayStorage;
  v148 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_trainingDataFrame;
  v150 = v0;
  REMSuggestedAttributeInputDataFrame.index.getter();
  (*(v7 + 16))(v15, v10, v6);
  v16 = *(v12 + 44);
  v17 = v6;
  v18 = sub_10000CB48(&qword_10093EE00, &qword_10093EDF8, &qword_10079D5B0);
  dispatch thunk of Collection.startIndex.getter();
  (*(v7 + 8))(v10, v17);
  v19 = v153;
  v147 = OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_intentWords;
  dispatch thunk of Collection.endIndex.getter();
  v20 = v15;
  if (*&v15[v16] == v155)
  {
LABEL_2:
    sub_1004D4478(v20);
  }

  else
  {
    v146 = (v154 + 16);
    v140[4] = "ReminderAlarmLocationLabel";
    v140[3] = "ReminderTitleIntent";
    v140[6] = "ReminderPriority";
    v140[2] = "haviorModelTrainingDelegate";
    v140[5] = "ReminderContactLabel";
    v141 = (v154 + 8);
    v140[1] = "ReminderDueDayOfWeek";
    v152 = v5;
    v142 = v15;
    v143 = v17;
    v144 = v18;
    v145 = v16;
    while (1)
    {
      v25 = dispatch thunk of Collection.subscript.read();
      v27 = *v26;
      v25(&v155, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v28 = REMSuggestedAttributeInputDataFrame.iloc(_:)();
      REMSuggestedAttributeInput.creationDate.getter();
      (*v146)(v19, v5, v149);
      REMSuggestedAttributeInput.list.getter();
      v29 = REMSuggestedList.isValid.getter();

      v154 = v28;
      if (v29)
      {
        v30 = objc_opt_self();
        v31 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v32 = [v30 taskSpecificItemWithIdentifier:v31 valueClass:swift_getObjCClassFromMetadata()];

        if (!v32)
        {
          goto LABEL_61;
        }

        REMSuggestedAttributeInput.list.getter();
        REMSuggestedList.listIdentifier.getter();

        v33 = String._bridgeToObjectiveC()();

        v34 = [objc_opt_self() itemWithType:v32 stringValue:v33];

        v35 = objc_allocWithZone(BMEvent);
        v36 = v34;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v38 = Date._bridgeToObjectiveC()().super.isa;
        v39 = [v35 initWithStartDate:isa endDate:v38 item:v36];

        v40 = v39;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v135 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v151 = REMSuggestedAttributeInput.location.getter();
      if (REMSuggestedLocation.isSpecificLocation.getter())
      {
        v41 = objc_opt_self();
        v42 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v43 = [v41 taskSpecificItemWithIdentifier:v42 valueClass:swift_getObjCClassFromMetadata()];

        if (!v43)
        {
          goto LABEL_59;
        }

        dispatch thunk of ClassificationLabel.description.getter();

        v44 = String._bridgeToObjectiveC()();

        v45 = [objc_opt_self() itemWithType:v43 stringValue:v44];

        v46 = objc_allocWithZone(BMEvent);
        v47 = v45;
        v48 = Date._bridgeToObjectiveC()().super.isa;
        v49 = Date._bridgeToObjectiveC()().super.isa;
        v50 = [v46 initWithStartDate:v48 endDate:v49 item:v47];

        v51 = v50;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v136 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (*(v150 + v147))
      {
        v52 = objc_opt_self();

        v53 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v54 = [v52 taskSpecificItemWithIdentifier:v53 valueClass:swift_getObjCClassFromMetadata()];

        if (!v54)
        {
          goto LABEL_57;
        }

        dispatch thunk of Series.iloc(_:)();
        v55 = String._bridgeToObjectiveC()();

        v56 = [objc_opt_self() itemWithType:v54 stringValue:v55];

        v57 = objc_allocWithZone(BMEvent);
        v58 = v56;
        v59 = Date._bridgeToObjectiveC()().super.isa;
        v60 = Date._bridgeToObjectiveC()().super.isa;
        v61 = [v57 initWithStartDate:v59 endDate:v60 item:v58];

        v62 = v61;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v133 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      REMSuggestedAttributeInput.dueDayOfWeek.getter();
      v63 = REMSuggestedWeekDay.value.getter();

      if ((v63 - 8) >= 0xFFFFFFFFFFFFFFF9)
      {
        v64 = objc_opt_self();
        v65 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v66 = [v64 taskSpecificItemWithIdentifier:v65 valueClass:swift_getObjCClassFromMetadata()];

        if (!v66)
        {
          goto LABEL_58;
        }

        v67 = Int._bridgeToObjectiveC()().super.super.isa;
        v68 = [objc_opt_self() itemWithType:v66 numberValue:v67];

        v69 = objc_allocWithZone(BMEvent);
        v70 = v68;
        v71 = Date._bridgeToObjectiveC()().super.isa;
        v72 = Date._bridgeToObjectiveC()().super.isa;
        v73 = [v69 initWithStartDate:v71 endDate:v72 item:v70];

        v74 = v73;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v137 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (REMSuggestedAttributeInput.flagged.getter())
      {
        v75 = objc_opt_self();
        v76 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v77 = [v75 taskSpecificItemWithIdentifier:v76 valueClass:swift_getObjCClassFromMetadata()];

        if (!v77)
        {
          goto LABEL_60;
        }

        v78 = NSNumber.init(integerLiteral:)(1).super.super.isa;
        v79 = [objc_opt_self() itemWithType:v77 numberValue:v78];

        v80 = objc_allocWithZone(BMEvent);
        v81 = v79;
        v82 = Date._bridgeToObjectiveC()().super.isa;
        v83 = Date._bridgeToObjectiveC()().super.isa;
        v84 = [v80 initWithStartDate:v82 endDate:v83 item:v81];

        v85 = v84;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v138 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      if (REMSuggestedAttributeInput.priority.getter())
      {
        v86 = objc_opt_self();
        v87 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        v88 = [v86 taskSpecificItemWithIdentifier:v87 valueClass:swift_getObjCClassFromMetadata()];

        if (!v88)
        {
          goto LABEL_56;
        }

        v89 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:REMSuggestedAttributeInput.priority.getter()];
        v90 = [objc_opt_self() itemWithType:v88 numberValue:v89];

        v91 = objc_allocWithZone(BMEvent);
        v92 = v90;
        v93 = Date._bridgeToObjectiveC()().super.isa;
        v94 = Date._bridgeToObjectiveC()().super.isa;
        v95 = [v91 initWithStartDate:v93 endDate:v94 item:v92];

        v96 = v95;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v134 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v97 = REMSuggestedAttributeInput.tags.getter();
      v98 = v97;
      v99 = 0;
      v100 = v97 + 56;
      v101 = 1 << *(v97 + 32);
      v102 = v101 < 64 ? ~(-1 << v101) : -1;
      v103 = v102 & *(v97 + 56);
      v104 = (v101 + 63) >> 6;
      if (v103)
      {
        break;
      }

      while (1)
      {
LABEL_40:
        v105 = v99 + 1;
        if (__OFADD__(v99, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v105 >= v104)
        {
          break;
        }

        v103 = *(v100 + 8 * v105);
        ++v99;
        if (v103)
        {
          v99 = v105;
          goto LABEL_44;
        }
      }

      REMSuggestedAttributeInput.contact.getter();
      if (REMSuggestedContact.isValid.getter())
      {
        v120 = objc_opt_self();
        v121 = String._bridgeToObjectiveC()();
        sub_1000060C8(0, &unk_10093F610, NSString_ptr);
        v122 = [v120 taskSpecificItemWithIdentifier:v121 valueClass:swift_getObjCClassFromMetadata()];

        v5 = v152;
        v19 = v153;
        v23 = v145;
        if (!v122)
        {
          goto LABEL_62;
        }

        dispatch thunk of ClassificationLabel.description.getter();

        v123 = String._bridgeToObjectiveC()();

        v124 = [objc_opt_self() itemWithType:v122 stringValue:v123];

        v125 = objc_allocWithZone(BMEvent);
        v126 = v124;
        v127 = Date._bridgeToObjectiveC()().super.isa;
        v128 = Date._bridgeToObjectiveC()().super.isa;
        v129 = [v125 initWithStartDate:v127 endDate:v128 item:v126];

        v130 = v129;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v139 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v5 = v152;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v131 = *v141;
        v132 = v149;
        (*v141)(v19, v149);
        v131(v5, v132);
      }

      else
      {

        v21 = *v141;
        v19 = v153;
        v22 = v149;
        (*v141)(v153, v149);
        v5 = v152;
        v21(v152, v22);
        v23 = v145;
      }

      v24 = v142;
      dispatch thunk of Collection.endIndex.getter();
      v20 = v24;
      if (*(v24 + v23) == v155)
      {
        goto LABEL_2;
      }
    }

LABEL_44:
    while (1)
    {
      v106 = (*(v98 + 48) + ((v99 << 10) | (16 * __clz(__rbit64(v103)))));
      v108 = *v106;
      v107 = v106[1];
      v109 = objc_opt_self();

      v110 = String._bridgeToObjectiveC()();
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      v111 = [v109 taskSpecificItemWithIdentifier:v110 valueClass:swift_getObjCClassFromMetadata()];

      if (!v111)
      {
        break;
      }

      v112 = String._bridgeToObjectiveC()();

      v113 = [objc_opt_self() itemWithType:v111 stringValue:v112];

      v114 = objc_allocWithZone(BMEvent);
      v115 = v113;
      v116 = Date._bridgeToObjectiveC()().super.isa;
      v117 = Date._bridgeToObjectiveC()().super.isa;
      v118 = [v114 initWithStartDate:v116 endDate:v117 item:v115];

      v119 = v118;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v103 &= v103 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!v103)
      {
        goto LABEL_40;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }
}

uint64_t sub_1004D4478(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094A360, &unk_1007A12E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004D44E0()
{
  result = qword_10094A370;
  if (!qword_10094A370)
  {
    sub_1000060C8(255, &qword_10093F650, BMRule_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A370);
  }

  return result;
}

unint64_t sub_1004D4548()
{
  result = qword_10094A390;
  if (!qword_10094A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A390);
  }

  return result;
}

uint64_t sub_1004D459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 != 0xFF)
  {
    return sub_1002F115C(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1004D45B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          return result;
        }
      }
    }
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1004D45F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          return result;
        }
      }
    }
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }
  }
}

void sub_1004D4640()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004CAA80(v6, v0 + v2, v7, v8, v9, v10);
}

void sub_1004D46F4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1004CADCC(a1, v1 + v4, v9, v10, v11, v12);
}

uint64_t initializeWithCopy for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_1002F10C8(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_1002F10C8(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_1002F115C(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for RDCoreBehaviorModel.Prediction(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_1002F115C(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Prediction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Prediction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004D4A08(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1004D45B0(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RDCoreBehaviorModel.Context(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1004D45B0(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1004D45F8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RDCoreBehaviorModel.Context(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1004D45F8(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDCoreBehaviorModel.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDCoreBehaviorModel.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1004D4BA0()
{
  result = qword_10094A458;
  if (!qword_10094A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A458);
  }

  return result;
}

unint64_t sub_1004D4BF4()
{
  result = qword_10094A468;
  if (!qword_10094A468)
  {
    sub_1000F514C(&qword_10094A460, &qword_1007AE618);
    sub_1004D4D3C(&qword_10094A470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A468);
  }

  return result;
}

unint64_t sub_1004D4C98()
{
  result = qword_10094A488;
  if (!qword_10094A488)
  {
    sub_1000F514C(&qword_10094A460, &qword_1007AE618);
    sub_1004D4D3C(&qword_10094A490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A488);
  }

  return result;
}

uint64_t sub_1004D4D3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094A478, &qword_1007AE620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004D4DBC()
{
  result = qword_10094A498;
  if (!qword_10094A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A498);
  }

  return result;
}

unint64_t sub_1004D4E14()
{
  result = qword_10094A4A0;
  if (!qword_10094A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A4A0);
  }

  return result;
}

unint64_t sub_1004D4E6C()
{
  result = qword_10094A4A8;
  if (!qword_10094A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A4A8);
  }

  return result;
}

uint64_t sub_1004D4ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1004D4F20()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A510);
  v1 = sub_100006654(v0, qword_10094A510);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004D4FE8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken]))
  {
    notify_cancel(*&v0[v2]);
    *&v0[v2] = -1;
  }

  v3 = OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken]))
  {
    notify_cancel(*&v0[v3]);
    *&v0[v3] = -1;
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1004D5198(void *a1)
{
  v1 = a1;
  sub_1004D67EC(0x657463656E6E6F63, 0xE900000000000064, v1, sub_1004D5204);
}

uint64_t sub_1004D5204(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle connected notification", v10, 2u);
  }

  v11 = *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v6 = v11;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    v14 = *sub_10000F61C(&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v16 = sub_100412978(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v36 = _swiftEmptyArrayStorage;
      sub_100253968(0, v17, 0);
      v18 = v36;
      v19 = (v16 + 48);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = *(v19 - 2);
        v23 = sub_1007467B8(v20);
        v36 = v18;
        v28 = v18[2];
        v27 = v18[3];
        if (v28 >= v27 >> 1)
        {
          v34 = v24;
          v35 = v23;
          v33 = v25;
          v32 = v26;
          sub_100253968((v27 > 1), v28 + 1, 1);
          LOBYTE(v26) = v32;
          v25 = v33;
          v24 = v34;
          v23 = v35;
          v18 = v36;
        }

        v19 += 3;
        v18[2] = v28 + 1;
        v29 = &v18[5 * v28];
        v29[4] = v22;
        v29[5] = v23;
        v29[6] = v24;
        v29[7] = v25;
        *(v29 + 64) = v26;
        *(v29 + 65) = v21 != 1;
        *(v29 + 66) = 0;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(a1, v18, Strong);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  out_token = -1;
  v9 = *(v4 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;
  v20[4] = sub_1004D6BB0;
  v20[5] = v11;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1004D4ECC;
  v20[3] = &unk_1008F4CC0;
  v12 = _Block_copy(v20);

  v13 = String.utf8CString.getter();
  v14 = notify_register_dispatch((v13 + 32), &out_token, v9, v12);

  _Block_release(v12);
  if (v14)
  {
    if (qword_1009362F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094A510);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to register notify handler. {status: %u}", v18, 8u);
    }
  }

  return out_token;
}

void sub_1004D5780(void *a1)
{
  v1 = a1;
  sub_1004D67EC(0x656E6E6F63736964, 0xEC00000064657463, v1, sub_1004D57F0);
}

uint64_t sub_1004D57F0(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle disconnected notification", v10, 2u);
  }

  v11 = *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v6 = v11;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v11)
  {
    v14 = *sub_10000F61C(&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&a1[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v16 = sub_100412978(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v36 = _swiftEmptyArrayStorage;
      sub_100253968(0, v17, 0);
      v18 = v36;
      v19 = (v16 + 48);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v22 = *(v19 - 2);
        v23 = sub_1007467B8(v20);
        v36 = v18;
        v28 = v18[2];
        v27 = v18[3];
        if (v28 >= v27 >> 1)
        {
          v34 = v24;
          v35 = v23;
          v33 = v25;
          v32 = v26;
          sub_100253968((v27 > 1), v28 + 1, 1);
          LOBYTE(v26) = v32;
          v25 = v33;
          v24 = v34;
          v23 = v35;
          v18 = v36;
        }

        v19 += 3;
        v18[2] = v28 + 1;
        v29 = &v18[5 * v28];
        v29[4] = v22;
        v29[5] = v23;
        v29[6] = v24;
        v29[7] = v25;
        *(v29 + 64) = v26;
        *(v29 + 65) = v21 != 2;
        *(v29 + 66) = 0;
        --v17;
      }

      while (v17);
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(a1, v18, Strong);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v21 = a2;
  v8 = type metadata accessor for REM_os_activity.Options();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for REM_os_activity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004D6BC0(&qword_10093FE28, 255, &type metadata accessor for REM_os_activity.Options);
  sub_1000F5104(&unk_10094D930, &qword_10079EE00);
  sub_100290400();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  REM_os_activity.init(_:dso:options:)();
  v15 = swift_allocObject();
  v16 = v22;
  v15[2] = v21;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = v16;
  v15[6] = v23;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004D6C50;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F4D38;
  v18 = _Block_copy(aBlock);

  REM_os_activity.apply(execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v14, v10);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_1004D5E24(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10000668C(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "Did receive vehicle notification {name: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    a4();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Received vehicle change notification with nil producer", v15, 2u);
    }
  }
}

uint64_t sub_1004D6028(uint64_t a1, char a2)
{
  v37 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue];
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    v13 = *sub_10000F61C(&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource], *&v2[OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_dataSource + 24]);

    v15 = sub_100412978(v14);

    v16 = *(v15 + 16);
    if (v16)
    {
      v36 = v2;
      v38 = _swiftEmptyArrayStorage;
      sub_100253968(0, v16, 0);
      v17 = v37;
      v18 = v38;
      v35 = v15;
      v19 = (v15 + 48);
      do
      {
        v20 = (a2 & 1) != 0 || *v19 != v17;
        v21 = *(v19 - 1);
        v22 = *(v19 - 2);
        v23 = sub_1007467B8(v21);
        v38 = v18;
        v28 = v18[2];
        v27 = v18[3];
        if (v28 >= v27 >> 1)
        {
          v33 = v24;
          v34 = v23;
          v32 = v25;
          HIDWORD(v31) = v26;
          sub_100253968((v27 > 1), v28 + 1, 1);
          v17 = v37;
          v18 = v38;
          LOBYTE(v26) = BYTE4(v31);
          v25 = v32;
          v24 = v33;
          v23 = v34;
        }

        v18[2] = v28 + 1;
        v29 = &v18[5 * v28];
        v29[4] = v22;
        v29[5] = v23;
        v29[6] = v24;
        v29[7] = v25;
        *(v29 + 64) = v26;
        *(v29 + 65) = v20;
        *(v29 + 66) = 0;
        v19 += 3;
        --v16;
      }

      while (v16);

      v2 = v36;
    }

    else
    {

      v18 = _swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292E70(v2, v18, Strong);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004D6314()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started))
  {
    if (qword_1009362F8 == -1)
    {
LABEL_4:
      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_10094A510);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "RDVehicleAlarmProducer.start() must be called exactly once", v13, 2u);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_started) = 1;
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094A510);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting RDVehicleAlarmProducer", v17, 2u);
  }

  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_connectedToken) = sub_1004D552C(0xD000000000000025, 0x80000001007FAC20, sub_1004D5198, 0);
  *(v1 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_disconnectedToken) = sub_1004D552C(0xD000000000000028, 0x80000001007FAC50, sub_1004D5780, 0);
}

uint64_t sub_1004D6674()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*v0 + OBJC_IVAR____TtC7remindd22RDVehicleAlarmProducer_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return sub_1004D6028(0, 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004D6794(uint64_t a1, uint64_t a2)
{
  result = sub_1004D6BC0(&unk_10094A580, a2, type metadata accessor for RDVehicleAlarmProducer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004D67EC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (qword_1009362F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094A510);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10000668C(a1, a2, v25);
    _os_log_impl(&_mh_execute_header, v8, v9, "os_transaction INIT {name: com.apple.remindd.RDVehicleAarmProducer.locationd.vehicle.notify.%{public}s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v12._object = 0x80000001007FAC80;
  v12._countAndFlagsBits = 0xD000000000000041;
  String.append(_:)(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a2;
  String.append(_:)(v13);
  String.utf8CString.getter();

  v14 = os_transaction_create();

  if (v14)
  {
    a4(a3);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000668C(a1, a2, v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction RELEASE {name: com.apple.remindd.RDVehicleAarmProducer.locationd.vehicle.notify.%{public}s}", v17, 0xCu);
      sub_10000607C(v18);
    }

    return swift_unknownObjectRelease();
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000668C(a1, a2, v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "RDVehicleAarmProducer: Couldn't create os_transaction_t for %{public}s", v22, 0xCu);
      sub_10000607C(v23);
    }

    return (a4)(a3);
  }
}

uint64_t sub_1004D6BC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004D6C08()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004D6C70()
{
  v1 = [v0 remObjectID];
  if (!v1)
  {
    return 7104878;
  }

  v2 = v1;
  v3 = [v1 description];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_1004D6D20()
{
  v1 = [*v0 remObjectID];
  if (!v1)
  {
    return 7104878;
  }

  v2 = v1;
  v3 = [v1 description];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1004D6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1004E1DF4();
}

void sub_1004D6DF4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, unint64_t a8)
{
  sub_1004E3500(a1, a4, a5, a6, a7, a8);
}

void sub_1004D6E50(void *a1, char a2, char a3, void *a4, NSObject *a5, uint64_t *a6, _BYTE *a7, void *a8)
{
  sub_1004E4AD0(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1004D6E98(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_1004EA734(a1, a4, a5, a6);
}

void *sub_1004D6EF0(void *a1, void *a2)
{
  v4 = sub_100128B6C(a1);
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [a2 markedForDeletion];
  if (v6 && (v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v8 parentAccount];
    if (!v9)
    {
      v9 = [v2 account];
      [v8 setParentAccount:v9];
    }
  }

  return v6;
}

id sub_1004D6FC8()
{
  v1 = [v0 remObjectID];
  if (!v1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v0;
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v2, v7, "remObjectID is not defined for cdObject {cdObject: %@}", v8, 0xCu);
      sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_17;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v11 = [v0 account];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v11;
    v4 = [v11 remObjectID];

    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_11:
    v13 = objc_allocWithZone(REMReplicaIDSource);
    v14 = v4;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 initWithAccountID:v14 objectID:v2 property:v15];

    return v16;
  }

  v4 = [v3 remObjectID];
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (qword_100936300 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_10094A590);
  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "accountID is not defined for cdObject {cdObject: %@}", v22, 0xCu);
    sub_1000050A4(v23, &unk_100938E70, &unk_100797230);
  }

LABEL_17:
  return 0;
}

uint64_t sub_1004D7438()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A590);
  v1 = sub_100006654(v0, qword_10094A590);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004D7500(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v54);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v54);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v53 = v21;
    v36 = 0;
    while (1)
    {
      v40 = *(&off_1008DDA80 + v36 + 32);
      if (*(&off_1008DDA80 + v36 + 32))
      {
        if (v40 == 1)
        {
          v41 = 0x4E79616C70736944;
        }

        else
        {
          v41 = 0x6574616C706D6554;
        }

        if (v40 == 1)
        {
          v42 = 0xEB00000000656D61;
        }

        else
        {
          v42 = 0xE800000000000000;
        }

        if (v40 == 1)
        {
          v43 = 0x4E79616C70736964;
        }

        else
        {
          v43 = 0x6574616C706D6574;
        }
      }

      else
      {
        v41 = 0x6E6F697461657243;
        v43 = 0x6E6F697461657263;
        v42 = 0xEC00000065746144;
      }

      if (CKRecord.subscript.getter() || (v44 = [a1 encryptedValues], v45 = String._bridgeToObjectiveC()(), v46 = objc_msgSend(v44, "objectForKeyedSubscript:", v45), swift_unknownObjectRelease(), v45, v46))
      {
        swift_unknownObjectRelease();
        v47 = String._bridgeToObjectiveC()();
        v48 = [v20 getTokenForKey:v47];

        if (!v48)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_100006654(v49, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v50, v51))
          {
            v37 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *v37 = 136446722;
            *(v37 + 4) = sub_10000668C(v43, v42, &v54);
            *(v37 + 12) = 2082;
            v38 = sub_10000668C(v41, v42, &v54);

            *(v37 + 14) = v38;
            *(v37 + 22) = 2082;
            *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v54);
            _os_log_impl(&_mh_execute_header, v50, v51, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v39 = String._bridgeToObjectiveC()();

          [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (++v36 == 3)
      {

        return v20;
      }
    }
  }

  sub_1004DDBB4(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v54);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v54);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004D7C44(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v19 = [v2 getResolutionTokenMapFromRecord:a1];
    v56 = v19;
    v55 = v4;
    if (!v19)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10094A590);
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v24 = 136446466;
        v25 = CKRecord.recordType.getter();
        v27 = sub_10000668C(v25, v26, &v57);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = [v21 recordID];
        v29 = [v28 ckShortDescription];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, &v57);

        *(v24 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v24, 0x16u);
        swift_arrayDestroy();
      }

      v56 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v55;
    }

    v54 = v19;
    v34 = 0;
    while (1)
    {
      v38 = *(&off_1008DDB48 + v34++ + 32);
      v39 = 0x626D456567646162;
      v40 = 0xEB000000006D656CLL;
      v41 = 0x626D456567646142;
      v42 = 0xEB000000006D656CLL;
      switch(v38)
      {
        case 1:
          v41 = 0x726F6C6F43;
          v39 = 0x726F6C6F63;
          v40 = 0xE500000000000000;
          v42 = 0xE500000000000000;
          break;
        case 2:
          v41 = 0x61447265746C6946;
          v39 = 0x61447265746C6966;
          v40 = 0xEA00000000006174;
          v43 = 24948;
          goto LABEL_32;
        case 3:
          goto LABEL_18;
        case 4:
          v41 = 0xD000000000000028;
          v40 = 0x80000001007F0630;
          v42 = 0x80000001007E8CC0;
          v39 = 0xD000000000000028;
          break;
        case 5:
          v41 = 0xD000000000000022;
          v40 = 0x80000001007F0600;
          v42 = 0x80000001007E8CF0;
          v39 = 0xD000000000000022;
          break;
        case 6:
          v39 = 1701667182;
          v40 = 0xE400000000000000;
          v41 = 1701667150;
          v42 = 0xE400000000000000;
          break;
        case 7:
          v41 = 0xD000000000000011;
          v40 = 0x80000001007F05E0;
          v39 = 0x6341746E65726170;
          v42 = 0xED0000746E756F63;
          break;
        case 8:
          v41 = 0x694C746E65726150;
          v39 = 0x694C746E65726170;
          v40 = 0xEA00000000007473;
          v43 = 29811;
LABEL_32:
          v42 = v43 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          break;
        case 9:
          v41 = 0xD000000000000018;
          v40 = 0x80000001007F05C0;
          v42 = 0x80000001007E8D20;
          v39 = 0xD000000000000018;
          break;
        case 10:
          v41 = 0xD000000000000017;
          v40 = 0x80000001007F05A0;
          v42 = 0x80000001007E8D40;
          v39 = 0xD000000000000017;
          break;
        case 11:
          v41 = 0x73694C7472616D53;
          v39 = 0x73694C7472616D73;
          v42 = 0xED00006570795474;
          v40 = 0xED00006570795474;
          break;
        case 12:
          v41 = 0x53676E6974726F53;
          v39 = 0x53676E6974726F73;
          v42 = 0xEC000000656C7974;
          v40 = 0xEC000000656C7974;
          break;
        case 13:
          v41 = 0x614464656E6E6950;
          v39 = 0x614464656E6E6970;
          v40 = 0xEA00000000006574;
          v42 = 0xEA00000000006574;
          break;
        default:
          break;
      }

      if (CKRecord.subscript.getter() || (v44 = [v4 encryptedValues], v45 = String._bridgeToObjectiveC()(), v46 = objc_msgSend(v44, "objectForKeyedSubscript:", v45), swift_unknownObjectRelease(), v45, v47 = v46, v4 = v55, v47))
      {
        swift_unknownObjectRelease();
        v48 = String._bridgeToObjectiveC()();
        v49 = [v56 getTokenForKey:v48];

        if (!v49)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_10094A590);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v35 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v35 = 136446722;
            *(v35 + 4) = sub_10000668C(v39, v42, &v57);
            *(v35 + 12) = 2082;
            v36 = sub_10000668C(v41, v40, &v57);

            *(v35 + 14) = v36;
            *(v35 + 22) = 2082;
            *(v35 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v57);
            _os_log_impl(&_mh_execute_header, v51, v52, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v35, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v4 = v55;
          v37 = String._bridgeToObjectiveC()();

          [v56 initTokenWithDefaultValueIfNecessaryForKey:v37];

          goto LABEL_18;
        }
      }

LABEL_18:
      if (v34 == 14)
      {

        return v56;
      }
    }
  }

  sub_1004DDF94(a1);
  v56 = [v2 resolutionTokenMap];
  if (!v56)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = CKRecord.recordType.getter();
      v12 = sub_10000668C(v10, v11, &v57);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = [v6 recordID];
      v14 = [v13 ckShortDescription];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10000668C(v15, v17, &v57);

      *(v9 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v56;
}

id sub_1004D85B8(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v19 = [v2 getResolutionTokenMapFromRecord:a1];
    v55 = v4;
    v56 = v19;
    if (!v19)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10094A590);
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v24 = 136446466;
        v25 = CKRecord.recordType.getter();
        v27 = sub_10000668C(v25, v26, v57);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = [v21 recordID];
        v29 = [v28 ckShortDescription];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, v57);

        *(v24 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v24, 0x16u);
        swift_arrayDestroy();
      }

      v56 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v55;
    }

    v54 = v19;
    v34 = 0;
    while (1)
    {
      v38 = *(&off_1008DDD20 + v34++ + 32);
      v39 = 0x626D456567646162;
      v40 = 0xEB000000006D656CLL;
      v41 = 0x626D456567646142;
      v42 = 0xEB000000006D656CLL;
      switch(v38)
      {
        case 1:
          v41 = 0x726F6C6F43;
          v39 = 0x726F6C6F63;
          v40 = 0xE500000000000000;
          v42 = 0xE500000000000000;
          break;
        case 2:
          v41 = 0x6E6F697461657243;
          v39 = 0x6E6F697461657263;
          v43 = 1702125892;
          goto LABEL_29;
        case 3:
          v41 = 0xD000000000000010;
          v40 = 0x80000001007F2A40;
          v42 = 0x80000001007E8D70;
          v39 = 0xD000000000000010;
          break;
        case 4:
          goto LABEL_18;
        case 5:
          v41 = 0xD000000000000028;
          v40 = 0x80000001007F0630;
          v42 = 0x80000001007E8CC0;
          v39 = 0xD000000000000028;
          break;
        case 6:
          v41 = 0xD000000000000025;
          v40 = 0x80000001007F2A10;
          v42 = 0x80000001007E8D90;
          v39 = 0xD000000000000025;
          break;
        case 7:
          v39 = 1701667182;
          v40 = 0xE400000000000000;
          v41 = 1701667150;
          v42 = 0xE400000000000000;
          break;
        case 8:
          v41 = 0xD000000000000011;
          v40 = 0x80000001007F05E0;
          v39 = 0x6341746E65726170;
          v42 = 0xED0000746E756F63;
          break;
        case 9:
          v41 = 0xD00000000000001BLL;
          v40 = 0x80000001007F29F0;
          v42 = 0x80000001007E8DC0;
          v39 = 0xD00000000000001BLL;
          break;
        case 10:
          v41 = 0xD000000000000016;
          v40 = 0x80000001007F29D0;
          v42 = 0x80000001007E8DE0;
          v39 = 0xD000000000000016;
          break;
        case 11:
          v41 = 0xD000000000000018;
          v40 = 0x80000001007EC2E0;
          v42 = 0x80000001007E8BF0;
          v39 = 0xD000000000000018;
          break;
        case 12:
          v41 = 0xD00000000000001ALL;
          v40 = 0x80000001007F29B0;
          v42 = 0x80000001007E8E00;
          v39 = 0xD00000000000001ALL;
          break;
        case 13:
          v41 = 0xD000000000000011;
          v40 = 0x80000001007EC240;
          v42 = 0x80000001007E8BC0;
          v39 = 0xD000000000000011;
          break;
        case 14:
          v41 = 0xD000000000000018;
          v40 = 0x80000001007F05C0;
          v39 = 0xD000000000000018;
          v42 = 0x80000001007E8D20;
          break;
        case 15:
          v41 = 0x53676E6974726F53;
          v39 = 0x53676E6974726F73;
          v43 = 1701607796;
LABEL_29:
          v42 = v43 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          goto LABEL_30;
        case 16:
          v41 = 0x694C656372756F53;
          v39 = 0x694C656372756F73;
          v42 = 0xEF4C525544497473;
LABEL_30:
          v40 = v42;
          break;
        default:
          break;
      }

      if (CKRecord.subscript.getter() || (v44 = [v4 encryptedValues], v45 = String._bridgeToObjectiveC()(), v46 = objc_msgSend(v44, "objectForKeyedSubscript:", v45), swift_unknownObjectRelease(), v45, v47 = v46, v4 = v55, v47))
      {
        swift_unknownObjectRelease();
        v48 = String._bridgeToObjectiveC()();
        v49 = [v56 getTokenForKey:v48];

        if (!v49)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          sub_100006654(v50, qword_10094A590);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v35 = swift_slowAlloc();
            v57[0] = swift_slowAlloc();
            *v35 = 136446722;
            *(v35 + 4) = sub_10000668C(v39, v42, v57);
            *(v35 + 12) = 2082;
            v36 = sub_10000668C(v41, v40, v57);

            *(v35 + 14) = v36;
            *(v35 + 22) = 2082;
            *(v35 + 24) = sub_10000668C(7104878, 0xE300000000000000, v57);
            _os_log_impl(&_mh_execute_header, v51, v52, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v35, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v4 = v55;
          v37 = String._bridgeToObjectiveC()();

          [v56 initTokenWithDefaultValueIfNecessaryForKey:v37];

          goto LABEL_18;
        }
      }

LABEL_18:
      if (v34 == 17)
      {

        return v56;
      }
    }
  }

  sub_1004DE4D0(a1);
  v56 = [v2 resolutionTokenMap];
  if (!v56)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A590);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v9 = 136446466;
      v10 = CKRecord.recordType.getter();
      v12 = sub_10000668C(v10, v11, v57);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = [v6 recordID];
      v14 = [v13 ckShortDescription];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10000668C(v15, v17, v57);

      *(v9 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v56;
}

id sub_1004D9000(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if (a2)
  {
    sub_1004DEA98(a1);
    v68 = [v2 resolutionTokenMap];
    if (!v68)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_10094A590);
      v6 = v4;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v9 = 136446466;
        v10 = CKRecord.recordType.getter();
        v12 = sub_10000668C(v10, v11, v71);

        *(v9 + 4) = v12;
        *(v9 + 12) = 2082;
        v13 = [v6 recordID];
        v14 = [v13 ckShortDescription];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_10000668C(v15, v17, v71);

        *(v9 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v7, v8, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v9, 0x16u);
        swift_arrayDestroy();
      }

      return [v3 createResolutionTokenMapIfNecessary];
    }
  }

  else
  {
    v19 = [v2 getResolutionTokenMapFromRecord:a1];
    v67 = v4;
    v68 = v19;
    if (!v19)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006654(v20, qword_10094A590);
      v21 = v4;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v71[0] = swift_slowAlloc();
        *v24 = 136446466;
        v25 = CKRecord.recordType.getter();
        v27 = sub_10000668C(v25, v26, v71);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = [v21 recordID];
        v29 = [v28 ckShortDescription];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_10000668C(v30, v32, v71);

        *(v24 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v24, 0x16u);
        swift_arrayDestroy();
      }

      v68 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v67;
    }

    v66 = v19;
    v34 = 0;
    while (2)
    {
      v35 = *(&off_1008DDF48 + v34++ + 32);
      v36 = 0x694C746E65726150;
      v37 = 0xEA00000000007473;
      v38 = 0x694C746E65726170;
      v39 = 0xEA00000000007473;
      switch(v35)
      {
        case 1:
          v36 = 0x726F6C6F43;
          v37 = 0xE500000000000000;
          v38 = 0x726F6C6F63;
          v39 = 0xE500000000000000;
          goto LABEL_36;
        case 2:
        case 5:
        case 7:
        case 15:
        case 16:
        case 17:
          goto LABEL_18;
        case 3:
          v36 = 0xD00000000000001FLL;
          v38 = 0xD00000000000002ALL;
          v37 = 0x80000001007F5E20;
          v39 = 0x80000001007E8E60;
          goto LABEL_36;
        case 4:
          v40 = 0x4C797265636F7267;
          v36 = 0x4C797265636F7247;
          v39 = 0xEF4449656C61636FLL;
          goto LABEL_31;
        case 6:
          v36 = 0xD000000000000012;
          v37 = 0x80000001007F5D50;
          v38 = 0xD000000000000012;
          v39 = 0x80000001007E8E90;
          goto LABEL_36;
        case 8:
          v36 = 0xD000000000000028;
          v37 = 0x80000001007F0630;
          v38 = 0xD000000000000028;
          v39 = 0x80000001007E8CC0;
          goto LABEL_36;
        case 9:
          v36 = 0xD000000000000022;
          v37 = 0x80000001007F0600;
          v38 = 0xD000000000000022;
          v39 = 0x80000001007E8CF0;
          goto LABEL_36;
        case 10:
          v36 = 1701667150;
          v37 = 0xE400000000000000;
          v38 = 1701667182;
          v39 = 0xE400000000000000;
          goto LABEL_36;
        case 11:
          v36 = 0xD000000000000011;
          v37 = 0x80000001007F05E0;
          v38 = 0x6341746E65726170;
          v39 = 0xED0000746E756F63;
          goto LABEL_36;
        case 12:
          goto LABEL_36;
        case 13:
          v36 = 0x614464656E6E6950;
          v37 = 0xEA00000000006574;
          v38 = 0x614464656E6E6970;
          v39 = 0xEA00000000006574;
          goto LABEL_36;
        case 14:
          v36 = 0xD00000000000001CLL;
          v37 = 0x80000001007F5D70;
          v38 = 0xD00000000000001CLL;
          v39 = 0x80000001007E8EB0;
          goto LABEL_36;
        case 18:
          v36 = 0xD000000000000018;
          v37 = 0x80000001007F05C0;
          v38 = 0xD000000000000018;
          v39 = 0x80000001007E8D20;
          goto LABEL_36;
        case 19:
          v36 = 0xD00000000000001CLL;
          v37 = 0x80000001007F5DE0;
          v38 = 0xD00000000000001CLL;
          v39 = 0x80000001007E8F20;
          goto LABEL_36;
        case 20:
          v36 = 0xD000000000000019;
          v37 = 0x80000001007F5E40;
          v38 = 0xD000000000000019;
          v39 = 0x80000001007E8F40;
          goto LABEL_36;
        case 21:
          v40 = 0x53676E6974726F73;
          v36 = 0x53676E6974726F53;
          v39 = 0xEC000000656C7974;
          goto LABEL_31;
        default:
          v40 = 0x626D456567646162;
          v36 = 0x626D456567646142;
          v39 = 0xEB000000006D656CLL;
LABEL_31:
          v37 = v39;
          v38 = v40;
LABEL_36:
          v69 = v35;
          if (CKRecord.subscript.getter() || (v41 = [v4 encryptedValues], v42 = String._bridgeToObjectiveC()(), v43 = objc_msgSend(v41, "objectForKeyedSubscript:", v42), swift_unknownObjectRelease(), v42, v43))
          {
            swift_unknownObjectRelease();
            v44 = 1;
          }

          else
          {
            v44 = 0;
          }

          break;
      }

      v70 = v38;
      switch(v69)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 15:
        case 16:
        case 17:
        case 18:
        case 20:
        case 21:
          goto LABEL_42;
        case 14:
          goto LABEL_46;
        case 19:
          if (0x80000001007E8EB0 == 0x80000001007E8F20)
          {
LABEL_46:

            if (v44)
            {
LABEL_44:

              v4 = v67;
              goto LABEL_56;
            }
          }

          else
          {
LABEL_42:
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v45 & 1) == 0)
            {
              switch(v69)
              {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v46)
                  {
                    if (v44)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_50;
                  }

                  v4 = v67;
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_17;
                  }

                  break;
                case 15:
                  goto LABEL_46;
                default:
                  goto LABEL_75;
              }

              goto LABEL_56;
            }

            if (v44)
            {
              goto LABEL_44;
            }
          }

LABEL_50:
          v4 = v67;
          if (CKRecord.subscript.getter())
          {
          }

          else
          {
            v47 = [v67 encryptedValues];
            v48 = String._bridgeToObjectiveC()();

            v49 = [v47 objectForKeyedSubscript:v48];
            swift_unknownObjectRelease();

            if (!v49)
            {
              goto LABEL_17;
            }
          }

          swift_unknownObjectRelease();
LABEL_56:
          v50 = String._bridgeToObjectiveC()();
          v51 = [v68 getTokenForKey:v50];

          if (v51)
          {

LABEL_17:

            goto LABEL_18;
          }

          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_100006654(v52, qword_10094A590);

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v53, v54))
          {

            goto LABEL_72;
          }

          v55 = swift_slowAlloc();
          v71[0] = swift_slowAlloc();
          *v55 = 136446722;
          *(v55 + 4) = sub_10000668C(v70, v39, v71);
          *(v55 + 12) = 2082;
          v56 = sub_10000668C(v36, v37, v71);

          *(v55 + 14) = v56;
          *(v55 + 22) = 2082;
          if (sub_10035692C(v69) == 0xD00000000000001CLL && 0x80000001007E8EB0 == v57)
          {

            v58 = 0x7265646E696D6552;
            v59 = 0xEB00000000734449;
            goto LABEL_71;
          }

          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v58 = 0x7265646E696D6552;
          v59 = 0xEB00000000734449;
          if (v60)
          {
            goto LABEL_71;
          }

          if (sub_10035692C(v69) == 0xD000000000000021 && 0x80000001007E8ED0 == v61)
          {

LABEL_69:
            v58 = 0xD000000000000010;
            v59 = 0x80000001007F5DC0;
            goto LABEL_71;
          }

          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v62)
          {
            goto LABEL_69;
          }

          v59 = 0xE300000000000000;
          v58 = 7104878;
LABEL_71:
          v63 = sub_10000668C(v58, v59, v71);

          *(v55 + 24) = v63;
          _os_log_impl(&_mh_execute_header, v53, v54, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v55, 0x20u);
          swift_arrayDestroy();

          v4 = v67;
LABEL_72:
          v64 = String._bridgeToObjectiveC()();

          [v68 initTokenWithDefaultValueIfNecessaryForKey:v64];

LABEL_18:
          if (v34 != 22)
          {
            continue;
          }

          break;
        default:
LABEL_75:
          JUMPOUT(0);
      }

      break;
    }
  }

  return v68;
}

id sub_1004DA158(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    v58 = v4;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = v4;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v59);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v59);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v58;
    }

    v57 = v21;
    v36 = 0;
    while (1)
    {
      v40 = *(&off_1008DE238 + v36++ + 32);
      if (((1 << v40) & 0x1777DFE6) != 0)
      {
        v41 = sub_100395898(v40);
        v43 = v42;
        v44 = sub_10039611C(v40);
        v46 = v45;
        if (CKRecord.subscript.getter() || (v47 = [v4 encryptedValues], v48 = String._bridgeToObjectiveC()(), v49 = objc_msgSend(v47, "objectForKeyedSubscript:", v48), swift_unknownObjectRelease(), v48, v50 = v49, v4 = v58, v50))
        {
          swift_unknownObjectRelease();
          v51 = String._bridgeToObjectiveC()();
          v52 = [v20 getTokenForKey:v51];

          if (!v52)
          {
            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v53 = type metadata accessor for Logger();
            sub_100006654(v53, qword_10094A590);

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v37 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *v37 = 136446722;
              *(v37 + 4) = sub_10000668C(v41, v43, &v59);
              *(v37 + 12) = 2082;
              v38 = sub_10000668C(v44, v46, &v59);

              *(v37 + 14) = v38;
              *(v37 + 22) = 2082;
              *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v59);
              _os_log_impl(&_mh_execute_header, v54, v55, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v4 = v58;
            v39 = String._bridgeToObjectiveC()();

            [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

            goto LABEL_18;
          }
        }
      }

LABEL_18:
      if (v36 == 29)
      {

        return v20;
      }
    }
  }

  sub_1004DF054(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v59);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v59);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DA878(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    v56 = v4;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = v4;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v57);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v57);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v56;
    }

    v55 = v21;
    v36 = 0;
    while (1)
    {
      v40 = *(&off_1008DE600 + v36 + 32);
      if (*(&off_1008DE600 + v36 + 32))
      {
        if (v40 == 1)
        {
          v41 = 0xD00000000000001DLL;
        }

        else
        {
          v41 = 0x6574616C706D6554;
        }

        if (v40 == 1)
        {
          v42 = 0x80000001007F65B0;
        }

        else
        {
          v42 = 0xE800000000000000;
        }

        if (v40 == 1)
        {
          v43 = 0xD00000000000001DLL;
        }

        else
        {
          v43 = 0x6574616C706D6574;
        }

        if (v40 == 1)
        {
          v44 = 0x80000001007E9100;
        }

        else
        {
          v44 = 0xE800000000000000;
        }
      }

      else
      {
        v41 = 0x617461646174654DLL;
        v43 = 0x617461646174656DLL;
        v42 = 0xE800000000000000;
        v44 = 0xE800000000000000;
      }

      if (CKRecord.subscript.getter() || (v45 = [v4 encryptedValues], v46 = String._bridgeToObjectiveC()(), v47 = objc_msgSend(v45, "objectForKeyedSubscript:", v46), swift_unknownObjectRelease(), v46, v48 = v47, v4 = v56, v48))
      {
        swift_unknownObjectRelease();
        v49 = String._bridgeToObjectiveC()();
        v50 = [v20 getTokenForKey:v49];

        if (!v50)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_100006654(v51, qword_10094A590);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v37 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v37 = 136446722;
            *(v37 + 4) = sub_10000668C(v43, v44, &v57);
            *(v37 + 12) = 2082;
            v38 = sub_10000668C(v41, v42, &v57);

            *(v37 + 14) = v38;
            *(v37 + 22) = 2082;
            *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v57);
            _os_log_impl(&_mh_execute_header, v52, v53, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v4 = v56;
          v39 = String._bridgeToObjectiveC()();

          [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

          goto LABEL_18;
        }
      }

LABEL_18:
      if (++v36 == 3)
      {

        return v20;
      }
    }
  }

  sub_1004DF3EC(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v57);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v57);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DAFEC(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v54);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v54);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v53 = v21;
    v36 = 0;
    while (1)
    {
      v40 = *(&off_1008DE6F0 + v36 + 32);
      if (*(&off_1008DE6F0 + v36 + 32))
      {
        if (v40 == 1)
        {
          v41 = 0x4E79616C70736944;
        }

        else
        {
          v41 = 0x73694C7472616D53;
        }

        if (v40 == 1)
        {
          v42 = 0xEB00000000656D61;
        }

        else
        {
          v42 = 0xE900000000000074;
        }

        if (v40 == 1)
        {
          v43 = 0x4E79616C70736964;
        }

        else
        {
          v43 = 0x73694C7472616D73;
        }
      }

      else
      {
        v41 = 0x6E6F697461657243;
        v43 = 0x6E6F697461657263;
        v42 = 0xEC00000065746144;
      }

      if (CKRecord.subscript.getter() || (v44 = [a1 encryptedValues], v45 = String._bridgeToObjectiveC()(), v46 = objc_msgSend(v44, "objectForKeyedSubscript:", v45), swift_unknownObjectRelease(), v45, v46))
      {
        swift_unknownObjectRelease();
        v47 = String._bridgeToObjectiveC()();
        v48 = [v20 getTokenForKey:v47];

        if (!v48)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_100006654(v49, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v50, v51))
          {
            v37 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *v37 = 136446722;
            *(v37 + 4) = sub_10000668C(v43, v42, &v54);
            *(v37 + 12) = 2082;
            v38 = sub_10000668C(v41, v42, &v54);

            *(v37 + 14) = v38;
            *(v37 + 22) = 2082;
            *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v54);
            _os_log_impl(&_mh_execute_header, v50, v51, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v39 = String._bridgeToObjectiveC()();

          [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (++v36 == 3)
      {

        return v20;
      }
    }
  }

  sub_1004DF7C8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v54);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v54);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DB734(void *a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = a1;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v51);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v51);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
    }

    v36 = v21;
    v37 = [objc_opt_self() ckRecordKeyForMinimumSupportedVersion];
    if (!v37)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = String._bridgeToObjectiveC()();
    }

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (CKRecord.subscript.getter())
    {
    }

    else
    {
      v41 = [objc_msgSend(a1 "encryptedValues")];
      swift_unknownObjectRelease();

      if (!v41)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v20 getTokenForKey:v42];

    if (!v43)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_10094A590);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v47 = 136446722;
        *(v47 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007E8C60, &v51);
        *(v47 + 12) = 2082;
        v48 = sub_10000668C(v38, v40, &v51);

        *(v47 + 14) = v48;
        *(v47 + 22) = 2082;
        *(v47 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v51);
        _os_log_impl(&_mh_execute_header, v45, v46, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v47, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v49 = String._bridgeToObjectiveC()();
      [v20 initTokenWithDefaultValueIfNecessaryForKey:v49];

      goto LABEL_29;
    }

LABEL_22:

LABEL_29:

    return v20;
  }

  sub_1004DFBAC(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v51);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v51);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DBE24(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    v62 = v4;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = v4;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v63);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v63);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v62;
    }

    v61 = v21;
    v36 = 0;
    while (1)
    {
      v40 = &off_1008DE818 + v36++;
      v41 = v40[32];
      v42 = 0x6E6F697461657243;
      v43 = 0x6E6F697461657263;
      v44 = 0x6163696E6F6E6143;
      v45 = 0x6163696E6F6E6163;
      if (v41 != 2)
      {
        v44 = 1953720652;
      }

      v46 = 0xED0000656D614E6CLL;
      if (v41 != 2)
      {
        v46 = 0xE400000000000000;
        v45 = 1953720684;
      }

      if (v41)
      {
        v42 = 0x4E79616C70736944;
      }

      v47 = 0xEC00000065746144;
      if (v41)
      {
        v47 = 0xEB00000000656D61;
        v43 = 0x4E79616C70736964;
      }

      if (v41 <= 1)
      {
        v48 = v42;
      }

      else
      {
        v48 = v44;
      }

      if (v41 <= 1)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      if (v41 <= 1)
      {
        v50 = v43;
      }

      else
      {
        v50 = v45;
      }

      if (CKRecord.subscript.getter() || (v51 = [v4 encryptedValues], v52 = String._bridgeToObjectiveC()(), v53 = objc_msgSend(v51, "objectForKeyedSubscript:", v52), swift_unknownObjectRelease(), v52, v54 = v53, v4 = v62, v54))
      {
        swift_unknownObjectRelease();
        v55 = String._bridgeToObjectiveC()();
        v56 = [v20 getTokenForKey:v55];

        if (!v56)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_100006654(v57, qword_10094A590);
          swift_bridgeObjectRetain_n();
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v58, v59))
          {
            v37 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *v37 = 136446722;
            *(v37 + 4) = sub_10000668C(v50, v49, &v63);
            *(v37 + 12) = 2082;
            v38 = sub_10000668C(v48, v49, &v63);

            *(v37 + 14) = v38;
            *(v37 + 22) = 2082;
            *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v63);
            _os_log_impl(&_mh_execute_header, v58, v59, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v4 = v62;
          v39 = String._bridgeToObjectiveC()();

          [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_18:
      if (v36 == 4)
      {

        return v20;
      }
    }
  }

  sub_1004DFED8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v63);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v63);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

id sub_1004DC5B0(void *a1, char a2)
{
  v3 = v2;
  v4 = a1;
  if ((a2 & 1) == 0)
  {
    v21 = [v2 getResolutionTokenMapFromRecord:a1];
    v20 = v21;
    v56 = v4;
    if (!v21)
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);
      v23 = v4;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = CKRecord.recordType.getter();
        v29 = sub_10000668C(v27, v28, &v57);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = [v23 recordID];
        v31 = [v30 ckShortDescription];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v57);

        *(v26 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMap: CKRecord's resolution token map is undefined or corrupted, will try to create a new one {recordType: %{public}s, recordID=%{public}s}", v26, 0x16u);
        swift_arrayDestroy();
      }

      v20 = [objc_allocWithZone(REMResolutionTokenMap) init];
      v4 = v56;
    }

    v55 = v21;
    v36 = 0;
    while (1)
    {
      v40 = *(&off_1008DE8F8 + v36 + 32);
      if (v40 > 4)
      {
        break;
      }

      if (*(&off_1008DE8F8 + v36 + 32) <= 1u)
      {
        if (*(&off_1008DE8F8 + v36 + 32))
        {
          v44 = 0x80000001007FAD60;
        }

        else
        {
          v44 = 0x80000001007FAD80;
        }

        if (*(&off_1008DE8F8 + v36 + 32))
        {
          v43 = 0x80000001007E9160;
        }

        else
        {
          v43 = 0x80000001007E9140;
        }

        v41 = 0xD000000000000012;
        v42 = 0xD000000000000012;
        goto LABEL_38;
      }

      if (v40 == 2)
      {
        v41 = 0xD000000000000018;
        v44 = 0x80000001007F8B30;
        v43 = 0x80000001007E9180;
LABEL_37:
        v42 = v41;
        goto LABEL_38;
      }

      if (v40 == 3)
      {
        goto LABEL_18;
      }

      v41 = 0x44496E6F73726550;
      v42 = 0x44496E6F73726570;
      v43 = 0xEC000000746C6153;
      v44 = 0xEC000000746C6153;
LABEL_38:
      if (CKRecord.subscript.getter() || (v45 = [v4 encryptedValues], v46 = String._bridgeToObjectiveC()(), v47 = objc_msgSend(v45, "objectForKeyedSubscript:", v46), swift_unknownObjectRelease(), v46, v48 = v47, v4 = v56, v48))
      {
        swift_unknownObjectRelease();
        v49 = String._bridgeToObjectiveC()();
        v50 = [v20 getTokenForKey:v49];

        if (!v50)
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v51 = type metadata accessor for Logger();
          sub_100006654(v51, qword_10094A590);

          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v52, v53))
          {
            v37 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v37 = 136446722;
            *(v37 + 4) = sub_10000668C(v42, v43, &v57);
            *(v37 + 12) = 2082;
            v38 = sub_10000668C(v41, v44, &v57);

            *(v37 + 14) = v38;
            *(v37 + 22) = 2082;
            *(v37 + 24) = sub_10000668C(7104878, 0xE300000000000000, &v57);
            _os_log_impl(&_mh_execute_header, v52, v53, "repairResolutionTokenMap: did repair resolution token map for {resolutionTokenKey=%{public}s, recordKey=%{public}s, remappedRecordKey=%{public}s}", v37, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v4 = v56;
          v39 = String._bridgeToObjectiveC()();

          [v20 initTokenWithDefaultValueIfNecessaryForKey:v39];

          goto LABEL_18;
        }
      }

LABEL_18:
      if (++v36 == 10)
      {

        return v20;
      }
    }

    if (*(&off_1008DE8F8 + v36 + 32) <= 6u)
    {
      if (v40 == 5)
      {
        goto LABEL_18;
      }

      v41 = 0xD000000000000023;
      v44 = 0x80000001007FAD10;
      v43 = 0x80000001007E9200;
    }

    else
    {
      if (v40 - 7 < 2)
      {
        goto LABEL_18;
      }

      v41 = 0xD00000000000001BLL;
      v44 = 0x80000001007FAD40;
      v43 = 0x80000001007E9270;
    }

    goto LABEL_37;
  }

  sub_1004E02E8(a1);
  v5 = [v2 resolutionTokenMap];
  if (!v5)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094A590);
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v10 = 136446466;
      v11 = CKRecord.recordType.getter();
      v13 = sub_10000668C(v11, v12, &v57);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v14 = [v7 recordID];
      v15 = [v14 ckShortDescription];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_10000668C(v16, v18, &v57);

      *(v10 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "repairResolutionTokenMap: repairResolutionTokenMapForImportedRecord() must have initialized the CD object's token map, this indicates a programmming fault {recordType: %{public}s, recordID=%{public}s}", v10, 0x16u);
      swift_arrayDestroy();
    }

    return [v3 createResolutionTokenMapIfNecessary];
  }

  return v5;
}

uint64_t sub_1004DCE1C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, Class *a9, uint64_t (*a10)(void), SEL *a11)
{
  v12 = a2;
  if (a5 >> 60 == 15)
  {
    *a1 = 0;
    sub_1001CB4B8(a2, a3);
  }

  else if (a3 >> 60 == 15)
  {
    *a1 = 0;
    sub_100029344(a4, a5);
    return a4;
  }

  else
  {
    sub_1001CB4B8(a2, a3);
    sub_1001CB4B8(a4, a5);
    v18 = sub_1004D6FC8();
    if (v18)
    {
      v19 = v18;
      v55 = a6;
      log = a4;
      v20 = objc_allocWithZone(*a9);
      sub_1001CB4B8(v12, a3);
      v21 = v19;
      v53 = a10();
      sub_100031A14(v12, a3);

      v29 = objc_allocWithZone(*a9);
      sub_1001CB4B8(log, a5);
      v54 = v21;
      v30 = v21;
      v42 = a10();
      sub_100031A14(log, a5);
      v43 = v30;

      v60 = 0;
      v44 = [v53 *a11];
      v45 = v60;
      if (v44)
      {
        *a1 = v44;
        v46 = v44;
        v47 = v45;
        v48 = v46;
        v49 = [v48 serializedData];
        v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100031A14(log, a5);
        sub_100031A14(v12, a3);

        return v50;
      }

      v51 = v60;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100006654(v31, qword_10094A590);

      v32 = a8;
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v52 = v34;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v35 = 136446722;
        *(v35 + 4) = sub_10000668C(v55, a7, &v60);
        *(v35 + 12) = 2112;
        *(v35 + 14) = v32;
        *v36 = v32;
        *(v35 + 22) = 2082;
        swift_getErrorValue();
        v37 = v32;
        v38 = Error.localizedDescription.getter();
        v40 = sub_10000668C(v38, v39, &v60);

        *(v35 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v33, v52, "Unable to merge CR property from CKRecord into coredata object {key: %{public}s, cdObject: %@, error: %{public}s}", v35, 0x20u);
        sub_1000050A4(v36, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        sub_100031A14(log, a5);
      }

      else
      {

        sub_100031A14(log, a5);
      }
    }

    else
    {
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094A590);

      v23 = a8;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      loga = v24;
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v60 = v56;
        *v26 = 136446466;
        *(v26 + 4) = sub_10000668C(a6, a7, &v60);
        *(v26 + 12) = 2112;
        *(v26 + 14) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, loga, v25, "Unable to merge CR property from CKRecord into coredata object because replicaIDSource isn't available {key: %{public}s, cdObject: %@}", v26, 0x16u);
        sub_1000050A4(v27, &unk_100938E70, &unk_100797230);

        sub_10000607C(v56);

        sub_100031A14(a4, a5);
      }

      else
      {
        sub_100031A14(a4, a5);
      }
    }

    *a1 = 0;
  }

  return v12;
}

uint64_t sub_1004DD52C@<X0>(void *a1@<X0>, uint64_t a2@<X3>, char a3@<W5>, __int128 *a4@<X8>)
{
  v36 = a2;
  v37 = a4;
  v6 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v35 = &v34 - v18;
  if (a3)
  {
    v19 = [a1 encryptedValues];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 objectForKeyedSubscript:v20];
    swift_unknownObjectRelease();

    v39 = v21;
  }

  else
  {
    v39 = CKRecord.subscript.getter();
  }

  sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
  result = swift_dynamicCast();
  if (result)
  {
    v23 = v38;
LABEL_16:
    *v37 = v23;
    return result;
  }

  v38 = xmmword_1007A5D40;
  sub_100031A14(0, 0xF000000000000000);
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_14:
    result = sub_1000050A4(v12, &unk_1009441F0, &qword_100795760);
LABEL_15:
    v23 = xmmword_1007A5D40;
    goto LABEL_16;
  }

  v25 = [v24 fileURL];
  swift_unknownObjectRelease();
  if (v25)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v14 + 56))(v9, v26, 1, v13);
  sub_100031B58(v9, v12, &unk_1009441F0, &qword_100795760);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_14;
  }

  v27 = v35;
  (*(v14 + 32))(v35, v12, v13);
  v28 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 fileExistsAtPath:v29];

  if (!v30)
  {
    result = (*(v14 + 8))(v27, v13);
    goto LABEL_15;
  }

  v31 = Data.init(contentsOf:options:)();
  v32 = v37;
  *v37 = v31;
  *(v32 + 1) = v33;
  return (*(v14 + 8))(v27, v13);
}

void sub_1004DDBB4(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v30);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DDA58;
    v18 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v20 = *(v17 + v16 + 32);
      if (*(v17 + v16 + 32))
      {
        if (v20 == 1)
        {
          v21 = 0x4E79616C70736964;
        }

        else
        {
          v21 = 0x6574616C706D6574;
        }

        if (v20 == 1)
        {
          v22 = 0xEB00000000656D61;
        }

        else
        {
          v22 = 0xE800000000000000;
        }
      }

      else
      {
        v21 = 0x6E6F697461657263;
        v22 = 0xEC00000065746144;
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v15;
        v26 = v18;
        v27 = v17;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_10000668C(v21, v22, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
        sub_10000607C(v29);

        v17 = v27;
        v18 = v26;
        v15 = v25;
      }

      ++v16;
      v19 = String._bridgeToObjectiveC()();

      [v15 v18[40]];
    }

    while (v16 != 3);
  }
}

void sub_1004DDF94(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v33 & 1) == 0 && v32 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v32);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DDB48;
    v18 = 0xEB000000006D656CLL;
    v19 = 0x626D456567646162;
    v31 = v15;
    while (2)
    {
      v20 = *(v17 + v16++ + 32);
      v21 = v18;
      v22 = v19;
      switch(v20)
      {
        case 1:
          v21 = 0xE500000000000000;
          v22 = 0x726F6C6F63;
          goto LABEL_21;
        case 2:
          v22 = 0x61447265746C6966;
          v21 = 0xEA00000000006174;
          goto LABEL_21;
        case 3:
          goto LABEL_24;
        case 4:
          v22 = 0xD000000000000028;
          v21 = 0x80000001007E8CC0;
          goto LABEL_21;
        case 5:
          v22 = 0xD000000000000022;
          v21 = 0x80000001007E8CF0;
          goto LABEL_21;
        case 6:
          v21 = 0xE400000000000000;
          v22 = 1701667182;
          goto LABEL_21;
        case 7:
          v22 = 0x6341746E65726170;
          v21 = 0xED0000746E756F63;
          goto LABEL_21;
        case 8:
          v21 = 0xEA00000000007473;
          v22 = 0x694C746E65726170;
          goto LABEL_21;
        case 9:
          v22 = 0xD000000000000018;
          v21 = 0x80000001007E8D20;
          goto LABEL_21;
        case 10:
          v22 = 0xD000000000000017;
          v21 = 0x80000001007E8D40;
          goto LABEL_21;
        case 11:
          v22 = 0x73694C7472616D73;
          v21 = 0xED00006570795474;
          goto LABEL_21;
        case 12:
          v22 = 0x53676E6974726F73;
          v21 = 0xEC000000656C7974;
          goto LABEL_21;
        case 13:
          v21 = 0xEA00000000006574;
          v22 = 0x614464656E6E6970;
          goto LABEL_21;
        default:
LABEL_21:

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = v18;
            v26 = v17;
            v27 = swift_slowAlloc();
            v28 = v19;
            v29 = swift_slowAlloc();
            v32 = v29;
            *v27 = 136446210;
            *(v27 + 4) = sub_10000668C(v22, v21, &v32);
            _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v27, 0xCu);
            sub_10000607C(v29);
            v19 = v28;

            v17 = v26;
            v18 = v25;
            v15 = v31;
          }

          v30 = String._bridgeToObjectiveC()();

          [v15 initTokenWithDefaultValueIfNecessaryForKey:v30];

LABEL_24:
          if (v16 != 14)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void sub_1004DE4D0(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v34 & 1) == 0 && v33 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v33);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DDD20;
    v18 = 0xEB000000006D656CLL;
    v19 = 0x626D456567646162;
    while (2)
    {
      v20 = *(v17 + v16++ + 32);
      v21 = v18;
      v22 = v19;
      switch(v20)
      {
        case 1:
          v21 = 0xE500000000000000;
          v22 = 0x726F6C6F63;
          goto LABEL_24;
        case 2:
          v22 = 0x6E6F697461657263;
          v21 = 0xEC00000065746144;
          goto LABEL_24;
        case 3:
          v22 = 0xD000000000000010;
          v21 = 0x80000001007E8D70;
          goto LABEL_24;
        case 4:
          goto LABEL_27;
        case 5:
          v22 = 0xD000000000000028;
          v21 = 0x80000001007E8CC0;
          goto LABEL_24;
        case 6:
          v22 = 0xD000000000000025;
          v21 = 0x80000001007E8D90;
          goto LABEL_24;
        case 7:
          v21 = 0xE400000000000000;
          v22 = 1701667182;
          goto LABEL_24;
        case 8:
          v22 = 0x6341746E65726170;
          v21 = 0xED0000746E756F63;
          goto LABEL_24;
        case 9:
          v22 = 0xD00000000000001BLL;
          v21 = 0x80000001007E8DC0;
          goto LABEL_24;
        case 10:
          v22 = 0xD000000000000016;
          v21 = 0x80000001007E8DE0;
          goto LABEL_24;
        case 11:
          v22 = 0xD000000000000018;
          v21 = 0x80000001007E8BF0;
          goto LABEL_24;
        case 12:
          v22 = 0xD00000000000001ALL;
          v21 = 0x80000001007E8E00;
          goto LABEL_24;
        case 13:
          v22 = 0xD000000000000011;
          v21 = 0x80000001007E8BC0;
          goto LABEL_24;
        case 14:
          v22 = 0xD000000000000018;
          v21 = 0x80000001007E8D20;
          goto LABEL_24;
        case 15:
          v22 = 0x53676E6974726F73;
          v21 = 0xEC000000656C7974;
          goto LABEL_24;
        case 16:
          v22 = 0x694C656372756F73;
          v21 = 0xEF4C525544497473;
          goto LABEL_24;
        default:
LABEL_24:

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v32 = v16;
            v25 = v15;
            v26 = v18;
            v27 = v17;
            v28 = swift_slowAlloc();
            v29 = v19;
            v30 = swift_slowAlloc();
            v33 = v30;
            *v28 = 136446210;
            *(v28 + 4) = sub_10000668C(v22, v21, &v33);
            _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
            sub_10000607C(v30);
            v19 = v29;

            v17 = v27;
            v18 = v26;
            v15 = v25;
            v16 = v32;
          }

          v31 = String._bridgeToObjectiveC()();

          [v15 initTokenWithDefaultValueIfNecessaryForKey:v31];

LABEL_27:
          if (v16 != 17)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void sub_1004DEA98(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v33 & 1) == 0 && v32 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v32);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DDF48;
    v18 = 0xEB000000006D656CLL;
    v19 = 0x626D456567646162;
    v31 = v15;
    while (2)
    {
      v21 = *(v17 + v16++ + 32);
      v22 = v18;
      v23 = v19;
      switch(v21)
      {
        case 1:
          v22 = 0xE500000000000000;
          v23 = 0x726F6C6F63;
          goto LABEL_26;
        case 2:
        case 5:
        case 7:
        case 15:
        case 16:
        case 17:
          goto LABEL_9;
        case 3:
          v23 = 0xD00000000000002ALL;
          v22 = 0x80000001007E8E60;
          goto LABEL_26;
        case 4:
          v23 = 0x4C797265636F7267;
          v22 = 0xEF4449656C61636FLL;
          goto LABEL_26;
        case 6:
          v23 = 0xD000000000000012;
          v22 = 0x80000001007E8E90;
          goto LABEL_26;
        case 8:
          v23 = 0xD000000000000028;
          v22 = 0x80000001007E8CC0;
          goto LABEL_26;
        case 9:
          v23 = 0xD000000000000022;
          v22 = 0x80000001007E8CF0;
          goto LABEL_26;
        case 10:
          v22 = 0xE400000000000000;
          v23 = 1701667182;
          goto LABEL_26;
        case 11:
          v23 = 0x6341746E65726170;
          v22 = 0xED0000746E756F63;
          goto LABEL_26;
        case 12:
          v22 = 0xEA00000000007473;
          v23 = 0x694C746E65726170;
          goto LABEL_26;
        case 13:
          v23 = 0x614464656E6E6970;
          v22 = 0xEA00000000006574;
          goto LABEL_26;
        case 14:
          v23 = 0xD00000000000001CLL;
          v22 = 0x80000001007E8EB0;
          goto LABEL_26;
        case 18:
          v23 = 0xD000000000000018;
          v22 = 0x80000001007E8D20;
          goto LABEL_26;
        case 19:
          v23 = 0xD00000000000001CLL;
          v22 = 0x80000001007E8F20;
          goto LABEL_26;
        case 20:
          v23 = 0xD000000000000019;
          v22 = 0x80000001007E8F40;
          goto LABEL_26;
        case 21:
          v23 = 0x53676E6974726F73;
          v22 = 0xEC000000656C7974;
          goto LABEL_26;
        default:
LABEL_26:

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = v18;
            v27 = v17;
            v28 = swift_slowAlloc();
            v29 = v19;
            v30 = swift_slowAlloc();
            v32 = v30;
            *v28 = 136446210;
            *(v28 + 4) = sub_10000668C(v23, v22, &v32);
            _os_log_impl(&_mh_execute_header, v24, v25, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
            sub_10000607C(v30);
            v19 = v29;

            v17 = v27;
            v18 = v26;
            v15 = v31;
          }

          v20 = String._bridgeToObjectiveC()();

          [v15 initTokenWithDefaultValueIfNecessaryForKey:v20];

LABEL_9:
          if (v16 != 22)
          {
            continue;
          }

          break;
      }

      break;
    }
  }
}

void sub_1004DF054(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v29 & 1) == 0 && v28 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v28);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DE238;
    do
    {
      v19 = *(v17 + v16++ + 32);
      if (((1 << v19) & 0x1777DFE6) != 0)
      {
        v20 = sub_100395898(v19);
        v22 = v21;

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = v17;
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = v27;
          *v26 = 136446210;
          *(v26 + 4) = sub_10000668C(v20, v22, &v28);
          _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v26, 0xCu);
          sub_10000607C(v27);

          v17 = v25;
        }

        v18 = String._bridgeToObjectiveC()();

        [v15 initTokenWithDefaultValueIfNecessaryForKey:v18];
      }
    }

    while (v16 != 29);
  }
}

void sub_1004DF3EC(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v30);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DE5D8;
    v18 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v20 = *(v17 + v16 + 32);
      if (*(v17 + v16 + 32))
      {
        if (v20 == 1)
        {
          v21 = 0xD00000000000001DLL;
        }

        else
        {
          v21 = 0x6574616C706D6574;
        }

        if (v20 == 1)
        {
          v22 = 0x80000001007E9100;
        }

        else
        {
          v22 = 0xE800000000000000;
        }
      }

      else
      {
        v22 = 0xE800000000000000;
        v21 = 0x617461646174656DLL;
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v15;
        v26 = v18;
        v27 = v17;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_10000668C(v21, v22, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
        sub_10000607C(v29);

        v17 = v27;
        v18 = v26;
        v15 = v25;
      }

      ++v16;
      v19 = String._bridgeToObjectiveC()();

      [v15 v18[40]];
    }

    while (v16 != 3);
  }
}

void sub_1004DF7C8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v30);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DE6C8;
    v18 = &selRef_attachmentRepresentationAndReturnError_;
    do
    {
      v20 = *(v17 + v16 + 32);
      if (*(v17 + v16 + 32))
      {
        if (v20 == 1)
        {
          v21 = 0x4E79616C70736964;
        }

        else
        {
          v21 = 0x73694C7472616D73;
        }

        if (v20 == 1)
        {
          v22 = 0xEB00000000656D61;
        }

        else
        {
          v22 = 0xE900000000000074;
        }
      }

      else
      {
        v21 = 0x6E6F697461657263;
        v22 = 0xEC00000065746144;
      }

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v15;
        v26 = v18;
        v27 = v17;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_10000668C(v21, v22, &v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
        sub_10000607C(v29);

        v17 = v27;
        v18 = v26;
        v15 = v25;
      }

      ++v16;
      v19 = String._bridgeToObjectiveC()();

      [v15 v18[40]];
    }

    while (v16 != 3);
  }
}

void sub_1004DFBAC(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v22 & 1) == 0 && v21 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v21);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10000668C(0xD000000000000017, 0x80000001007E8C60, &v21);
      _os_log_impl(&_mh_execute_header, v16, v17, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v18, 0xCu);
      sub_10000607C(v19);
    }

    v20 = String._bridgeToObjectiveC()();
    [v15 initTokenWithDefaultValueIfNecessaryForKey:v20];
  }
}

void sub_1004DFED8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v37 & 1) == 0 && v36 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v36 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v36);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DE7F0;
    v18 = 0xEC00000065746144;
    v19 = &selRef_attachmentRepresentationAndReturnError_;
    v35 = v15;
    do
    {
      v21 = *(v17 + v16++ + 32);
      v22 = 0x6163696E6F6E6163;
      if (v21 != 2)
      {
        v22 = 1953720684;
      }

      v23 = 0xED0000656D614E6CLL;
      if (v21 != 2)
      {
        v23 = 0xE400000000000000;
      }

      v24 = 0x6E6F697461657263;
      if (v21)
      {
        v24 = 0x4E79616C70736964;
      }

      v25 = 0xEB00000000656D61;
      if (!v21)
      {
        v25 = v18;
      }

      if (v21 <= 1)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v21 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v18;
        v31 = v17;
        v32 = swift_slowAlloc();
        v33 = v19;
        v34 = swift_slowAlloc();
        v36 = v34;
        *v32 = 136446210;
        *(v32 + 4) = sub_10000668C(v26, v27, &v36);
        _os_log_impl(&_mh_execute_header, v28, v29, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v32, 0xCu);
        sub_10000607C(v34);
        v19 = v33;

        v17 = v31;
        v18 = v30;
        v15 = v35;
      }

      v20 = String._bridgeToObjectiveC()();

      [v15 v19[40]];
    }

    while (v16 != 4);
  }
}

void sub_1004E02E8(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v31 & 1) == 0 && v30 == 1)
  {
    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006654(v3, qword_10094A590);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136446210;
      v9 = [v4 recordID];
      v10 = [v9 ckShortDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v30);

      *(v7 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "repairResolutionTokenMapForImportedRecord - recordID=%{public}s", v7, 0xCu);
      sub_10000607C(v8);
    }

    v15 = [v1 createResolutionTokenMapIfNecessary];
    v16 = 0;
    v17 = &off_1008DE8F8;
    v18 = &selRef_attachmentRepresentationAndReturnError_;
    while (1)
    {
      v20 = *(v17 + v16 + 32);
      if (v20 > 4)
      {
        if (*(v17 + v16 + 32) <= 6u)
        {
          if (v20 != 5)
          {
            v21 = 0xD000000000000023;
            v22 = 0x80000001007E9200;
            goto LABEL_25;
          }
        }

        else if (v20 - 7 >= 2)
        {
          v21 = 0xD00000000000001BLL;
          v22 = 0x80000001007E9270;
          goto LABEL_25;
        }
      }

      else
      {
        if (*(v17 + v16 + 32) <= 1u)
        {
          if (*(v17 + v16 + 32))
          {
            v22 = 0x80000001007E9160;
          }

          else
          {
            v22 = 0x80000001007E9140;
          }

          v21 = 0xD000000000000012;
          goto LABEL_25;
        }

        if (v20 == 2)
        {
          v21 = 0xD000000000000018;
          v22 = 0x80000001007E9180;
          goto LABEL_25;
        }

        if (v20 != 3)
        {
          v21 = 0x44496E6F73726570;
          v22 = 0xEC000000746C6153;
LABEL_25:

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = v15;
            v26 = v17;
            v27 = v18;
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v30 = v29;
            *v28 = 136446210;
            *(v28 + 4) = sub_10000668C(v21, v22, &v30);
            _os_log_impl(&_mh_execute_header, v23, v24, "repairResolutionTokenMapForImportedRecord -- repair token map for key=%{public}s", v28, 0xCu);
            sub_10000607C(v29);

            v18 = v27;
            v17 = v26;
            v15 = v25;
          }

          v19 = String._bridgeToObjectiveC()();

          [v15 v18[40]];
        }
      }

      if (++v16 == 10)
      {

        return;
      }
    }
  }
}

void static REMCDObject.mergeSystemProperties(into:from:)(void *a1, void *a2)
{
  if ([a1 respondsToSelector:"shouldUseResolutionTokenMapForMergingData"])
  {
    [a1 mergeDataRevertedLocallyMarkedForDeletion];
    [a1 mergeDataRefusedToMergeMarkedForDeletion];
    v4 = a1;
    v5 = a2;
    sub_1004E8C90(v5, v4, v4, v5);
  }

  else
  {

    sub_1004E83E0(a1, a2);
  }
}

void sub_1004E0908(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v118 = a7;
  v119 = a6;
  v117 = a5;
  v123 = a3;
  v120 = a2;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v113 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v122 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v130 & 1) != 0 || v129 != 1)
  {
    v19 = sub_1004D7500(v122, 0);
    if (v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      CKRecordKeyValueSetting.subscript.getter();

      if ((v130 & 1) != 0 || v129 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_85;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_10094A590);
      v22 = v122;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *v25 = 136446466;
        v26 = CKRecord.recordType.getter();
        v28 = sub_10000668C(v26, v27, &v129);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2082;
        v29 = [v22 recordID];
        v30 = [v29 ckShortDescription];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10000668C(v31, v33, &v129);

        *(v25 + 14) = v34;
        v35 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v47 = [a4 storeControllerManagedObjectContext];
      if (v47)
      {
        v48 = v47;
        v49 = [a4 accountCKIdentifier];
        if (v49)
        {
          v50 = v49;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = [v48 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v55 + 16))
          {
            v56 = sub_100005F4C(v51, v53);
            v58 = v57;

            if (v58)
            {
              v59 = *(*(v55 + 56) + 8 * v56);

              v60 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v59, "persistenceCloudSchemaVersion")}];
              v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v62 = sub_1001A5660(v61);

LABEL_29:
              v124 = [a4 createResolutionTokenMapIfNecessary];
              v63 = [v19 getTokenKeys];
              v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v127 = *(v64 + 16);
              if (!v127)
              {
LABEL_82:

                goto LABEL_83;
              }

              v66 = 0;
              v126 = v64 + 32;
              v128 = v62 + 7;
              *&v65 = 136446466;
              v113 = v65;
              *&v65 = 136446722;
              v115 = v65;
              v116 = a4;
              v121 = v19;
              v125 = v64;
              while (1)
              {
                if (v66 >= *(v64 + 16))
                {
                  __break(1u);
LABEL_85:
                  swift_once();
LABEL_15:
                  v36 = type metadata accessor for Logger();
                  sub_100006654(v36, qword_10094A590);
                  v37 = v122;
                  v23 = Logger.logObject.getter();
                  v24 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v23, v24))
                  {
                    v25 = swift_slowAlloc();
                    v129 = swift_slowAlloc();
                    *v25 = 136446466;
                    v38 = CKRecord.recordType.getter();
                    v40 = sub_10000668C(v38, v39, &v129);

                    *(v25 + 4) = v40;
                    *(v25 + 12) = 2082;
                    v41 = [v37 recordID];
                    v42 = [v41 ckShortDescription];

                    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v45 = v44;

                    v46 = sub_10000668C(v43, v45, &v129);

                    *(v25 + 14) = v46;
                    v35 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v23, v24, v35, v25, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v75 = (v126 + 16 * v66);
                v76 = *v75;
                v77 = v75[1];

                v78._countAndFlagsBits = v76;
                v78._object = v77;
                v79 = _findStringSwitchCase(cases:string:)(&off_1008DDAA8, v78);
                if (v79 > 2)
                {
                  v83._countAndFlagsBits = v76;
                  v83._object = v77;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DDB10, v83))
                  {

                    goto LABEL_34;
                  }

                  if (qword_100936300 != -1)
                  {
                    swift_once();
                  }

                  v84 = type metadata accessor for Logger();
                  sub_100006654(v84, qword_10094A590);
                  v85 = v122;

                  v86 = Logger.logObject.getter();
                  v87 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v86, v87))
                  {
                    v67 = swift_slowAlloc();
                    v129 = swift_slowAlloc();
                    *v67 = v115;
                    v68 = sub_10000668C(v76, v77, &v129);

                    *(v67 + 4) = v68;
                    *(v67 + 12) = 2082;
                    v69 = CKRecord.recordType.getter();
                    v71 = sub_10000668C(v69, v70, &v129);

                    *(v67 + 14) = v71;
                    *(v67 + 22) = 2082;
                    v131[0] = &_s6FieldsON;
                    sub_1000F5104(&unk_10094A670, &unk_1007AE920);
                    v72 = String.init<A>(reflecting:)();
                    v74 = sub_10000668C(v72, v73, &v129);

                    *(v67 + 24) = v74;
                    _os_log_impl(&_mh_execute_header, v86, v87, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v67, 0x20u);
                    swift_arrayDestroy();
                    v19 = v121;

                    a4 = v116;
                  }

                  else
                  {
                  }

                  goto LABEL_33;
                }

                v80 = v79;
                LOBYTE(v131[0]) = v79;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  break;
                }

LABEL_63:
                v95 = String._bridgeToObjectiveC()();

                v96 = [v124 compareAndMergeWithMap:v19 forKey:v95];

                if (v123)
                {
                  if (v80 == 2)
                  {

                    goto LABEL_33;
                  }

                  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v97)
                  {
                    goto LABEL_33;
                  }
                }

                if (v120)
                {
                  if (v80 == 2)
                  {

LABEL_77:
                    sub_10018CB0C(v131, v117, v119, v118);
                    goto LABEL_33;
                  }

                  v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v110)
                  {
                    goto LABEL_77;
                  }
                }

                if (v96 == -1)
                {
                  goto LABEL_77;
                }

LABEL_33:
                v64 = v125;
LABEL_34:
                if (++v66 == v127)
                {
                  goto LABEL_82;
                }
              }

              if (v80)
              {
                if (v80 == 1)
                {
                  v81 = 0x4E79616C70736964;
                }

                else
                {
                  v81 = 0x6574616C706D6574;
                }

                if (v80 == 1)
                {
                  v82 = 0xEB00000000656D61;
                }

                else
                {
                  v82 = 0xE800000000000000;
                }

                if (!v62[2])
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v81 = 0x6E6F697461657263;
                v82 = 0xEC00000065746144;
                if (!v62[2])
                {
LABEL_62:

                  v19 = v121;
                  goto LABEL_63;
                }
              }

              v88 = v62[5];
              Hasher.init(_seed:)();
              String.hash(into:)();
              v89 = Hasher._finalize()();
              v90 = -1 << *(v62 + 32);
              v91 = v89 & ~v90;
              if ((*(v128 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
              {
                v92 = ~v90;
                while (1)
                {
                  v93 = (v62[6] + 16 * v91);
                  v94 = *v93 == v81 && v93[1] == v82;
                  if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v91 = (v91 + 1) & v92;
                  if (((*(v128 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
                  {
                    goto LABEL_62;
                  }
                }

                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v98 = type metadata accessor for Logger();
                sub_100006654(v98, qword_10094A590);

                v99 = a4;
                v100 = Logger.logObject.getter();
                v101 = static os_log_type_t.default.getter();

                v102 = os_log_type_enabled(v100, v101);
                v19 = v121;
                if (v102)
                {
                  v103 = swift_slowAlloc();
                  v114 = swift_slowAlloc();
                  v129 = v114;
                  *v103 = v113;
                  *(v103 + 4) = sub_10000668C(v76, v77, &v129);
                  *(v103 + 12) = 2082;
                  v104 = [v99 remObjectID];
                  if (v104)
                  {
                    v105 = v104;
                    v106 = [v104 description];

                    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v109 = v108;
                  }

                  else
                  {
                    v109 = 0xE300000000000000;
                    v107 = 7104878;
                  }

                  v111 = sub_10000668C(v107, v109, &v129);

                  *(v103 + 14) = v111;
                  _os_log_impl(&_mh_execute_header, v100, v101, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v103, 0x16u);
                  swift_arrayDestroy();

                  a4 = v116;
                  v19 = v121;
                }

                else
                {
                }

                sub_10018CB0C(v131, v117, v119, v118);
                v112 = String._bridgeToObjectiveC()();

                [v124 forceMergeFromMap:v19 forKey:v112];

                goto LABEL_33;
              }

              goto LABEL_62;
            }
          }

          else
          {
          }
        }
      }
    }

    v62 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  v13 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v12, v13);
  }

  v16 = v117;
  [v117 setCreationDate:isa];

  LOBYTE(v129) = 1;
  v17 = v118;
  v18 = v119;
  sub_10018CB0C(&v129, v16, v119, v118);
  LOBYTE(v129) = 2;
  sub_10018CB0C(&v129, v16, v18, v17);
  v124 = sub_1004D7500(v122, 1);
LABEL_83:
}

uint64_t sub_1004E183C()
{
  v0 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_6:
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_9:
    sub_1000050A4(v6, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v14 = [v13 fileURL];
  swift_unknownObjectRelease();
  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v8 + 56))(v3, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v3, 1, 1, v7);
  }

  sub_100031B58(v3, v6, &unk_1009441F0, &qword_100795760);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_9;
  }

  (*(v8 + 32))(v12, v6, v7);
  v16 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 fileExistsAtPath:v17];

  if (!v18)
  {
    (*(v8 + 8))(v12, v7);
    return 0;
  }

  v19 = Data.init(contentsOf:options:)();
  (*(v8 + 8))(v12, v7);
  return v19;
}

void sub_1004E3500(void *a1, void *a2, void *a3, unint64_t a4, void *a5, unint64_t a6)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v108 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v116 & 1) != 0 || v115 != 1)
  {
    v14 = sub_1004D85B8(a1, 0);
    v103 = a2;
    v107 = a3;
    v111 = v14;
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CKRecordKeyValueSetting.subscript.getter();

    if ((v116 & 1) != 0 || v115 != 1 || ![a2 markedForDeletion])
    {
      if (qword_100936300 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_15;
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094A590);
    v17 = v108;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = a4;
      v115 = swift_slowAlloc();
      *v20 = 136446466;
      v22 = CKRecord.recordType.getter();
      v24 = sub_10000668C(v22, v23, &v115);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = [v17 recordID];
      v26 = [v25 ckShortDescription];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10000668C(v27, v29, &v115);
      a2 = v103;

      *(v20 + 14) = v30;
      v31 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v18, v19, v31, v20, 0x16u);
      swift_arrayDestroy();
      a4 = v21;
      a3 = v107;

      v14 = v111;

      goto LABEL_18;
    }

    while (1)
    {
LABEL_18:

LABEL_19:
      v105 = a5;
      v106 = a6;
      if (![a2 shouldPerformCloudSchemaCatchUpSync])
      {
        goto LABEL_26;
      }

      v43 = [a2 storeControllerManagedObjectContext];
      if (!v43)
      {
        goto LABEL_26;
      }

      v44 = v43;
      v45 = [a2 accountCKIdentifier];
      if (!v45)
      {
        break;
      }

      v46 = v45;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = [v44 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
      sub_1000060C8(0, &unk_10094A618, off_1008D4110);
      v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v51 + 16))
      {
        v52 = sub_100005F4C(v47, v49);
        v54 = v53;

        if (v54)
        {
          v55 = *(*(v51 + 56) + 8 * v52);

          v56 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v55, "persistenceCloudSchemaVersion")}];
          v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          a5 = sub_1001A5660(v57);

          v14 = v111;
          goto LABEL_27;
        }
      }

      else
      {
      }

      a5 = _swiftEmptySetSingleton;
      v14 = v111;
LABEL_27:
      v110 = [a2 createResolutionTokenMapIfNecessary];
      v58 = [v14 getTokenKeys];
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v113 = *(v59 + 16);
      if (!v113)
      {
LABEL_94:

        return;
      }

      v104 = a4;
      a4 = 0;
      v112 = v59 + 32;
      v102 = 0x80000001007E8D70;
      v114 = a5 + 7;
      v109 = v59;
      while (a4 < *(v59 + 16))
      {
        v60 = (v112 + 16 * a4);
        v61 = *v60;
        a6 = v60[1];
        swift_bridgeObjectRetain_n();
        v62 = sub_10027D52C();
        if (v62 == 17)
        {
          v63._countAndFlagsBits = v61;
          v63._object = a6;
          if (_findStringSwitchCase(cases:string:)(&off_1008DDF10, v63))
          {
            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            sub_100006654(v64, qword_10094A590);
            v65 = v108;

            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *v68 = 136446722;
              v69 = sub_10000668C(v61, a6, &v115);

              *(v68 + 4) = v69;
              a6 = 2082;
              *(v68 + 12) = 2082;
              v70 = CKRecord.recordType.getter();
              v72 = sub_10000668C(v70, v71, &v115);

              *(v68 + 14) = v72;
              *(v68 + 22) = 2082;
              v117[0] = &_s6FieldsON_1;
              sub_1000F5104(&qword_10094A660, &qword_1007AE910);
              v73 = String.init<A>(reflecting:)();
              v75 = sub_10000668C(v73, v74, &v115);

              *(v68 + 24) = v75;
              _os_log_impl(&_mh_execute_header, v66, v67, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v68, 0x20u);
              swift_arrayDestroy();

              a2 = v103;
            }

            else
            {
            }

            a3 = v107;
            v14 = v111;
            v59 = v109;
          }

          else
          {
          }
        }

        else
        {
          LOBYTE(v117[0]) = v62;
          if ([a2 shouldPerformCloudSchemaCatchUpSync])
          {
            v77 = 0xEB000000006D656CLL;
            v78 = 0x626D456567646162;
            switch(v76)
            {
              case 1:
                v77 = 0xE500000000000000;
                v78 = 0x726F6C6F63;
                if (a5[2])
                {
                  goto LABEL_72;
                }

                goto LABEL_80;
              case 2:
                v78 = 0x6E6F697461657263;
                v79 = 1702125892;
                goto LABEL_58;
              case 3:
                v78 = 0xD000000000000010;
                v77 = 0x80000001007E8D70;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 4:
                v78 = 0xD000000000000026;
                v77 = 0x80000001007E8C90;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 5:
                v78 = 0xD000000000000028;
                v77 = 0x80000001007E8CC0;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 6:
                v78 = 0xD000000000000025;
                v77 = 0x80000001007E8D90;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 7:
                v77 = 0xE400000000000000;
                v78 = 1701667182;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 8:
                v78 = 0x6341746E65726170;
                v77 = 0xED0000746E756F63;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 9:
                v78 = 0xD00000000000001BLL;
                v77 = 0x80000001007E8DC0;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 10:
                v78 = 0xD000000000000016;
                v77 = 0x80000001007E8DE0;
                goto LABEL_71;
              case 11:
                v78 = 0xD000000000000018;
                v77 = 0x80000001007E8BF0;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 12:
                v78 = 0xD00000000000001ALL;
                v77 = 0x80000001007E8E00;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 13:
                v78 = 0xD000000000000011;
                v77 = 0x80000001007E8BC0;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 14:
                v78 = 0xD000000000000018;
                v77 = 0x80000001007E8D20;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 15:
                v78 = 0x53676E6974726F73;
                v79 = 1701607796;
LABEL_58:
                v77 = v79 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              case 16:
                v78 = 0x694C656372756F73;
                v77 = 0xEF4C525544497473;
                if (!a5[2])
                {
                  goto LABEL_80;
                }

                goto LABEL_72;
              default:
LABEL_71:
                if (!a5[2])
                {
                  goto LABEL_80;
                }

LABEL_72:
                v80 = a5[5];
                Hasher.init(_seed:)();
                String.hash(into:)();
                v81 = Hasher._finalize()();
                v82 = -1 << *(a5 + 32);
                v83 = v81 & ~v82;
                if (((*(v114 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
                {
                  goto LABEL_80;
                }

                v84 = ~v82;
                break;
            }

            while (1)
            {
              v85 = (a5[6] + 16 * v83);
              v86 = *v85 == v78 && v85[1] == v77;
              if (v86 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v83 = (v83 + 1) & v84;
              if (((*(v114 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
              {
LABEL_80:

                v14 = v111;
                v59 = v109;
                goto LABEL_81;
              }
            }

            if (qword_100936300 != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            sub_100006654(v89, qword_10094A590);

            v90 = a2;
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              *v93 = 136446466;
              *(v93 + 4) = sub_10000668C(v61, a6, &v115);
              *(v93 + 12) = 2082;
              v94 = [v90 remObjectID];
              if (v94)
              {
                v95 = v94;
                v96 = [v94 description];

                v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v99 = v98;
              }

              else
              {
                v99 = 0xE300000000000000;
                v97 = 7104878;
              }

              v100 = sub_10000668C(v97, v99, &v115);

              *(v93 + 14) = v100;
              _os_log_impl(&_mh_execute_header, v91, v92, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v93, 0x16u);
              swift_arrayDestroy();

              a2 = v103;
              a3 = v107;
            }

            else
            {
            }

            v59 = v109;
            sub_100274408(v117, a3, v104, v105, v106);
            v101 = String._bridgeToObjectiveC()();

            v14 = v111;
            [v110 forceMergeFromMap:v111 forKey:v101];
          }

          else
          {
LABEL_81:
            v87 = String._bridgeToObjectiveC()();

            v88 = [v110 compareAndMergeWithMap:v14 forKey:v87];

            if (v88 == -1)
            {
              sub_100274408(v117, a3, v104, v105, v106);
            }
          }
        }

        if (++a4 == v113)
        {
          goto LABEL_94;
        }
      }

      __break(1u);
LABEL_98:
      swift_once();
LABEL_15:
      v32 = type metadata accessor for Logger();
      sub_100006654(v32, qword_10094A590);
      v33 = v108;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = a4;
        v115 = swift_slowAlloc();
        *v20 = 136446466;
        v34 = CKRecord.recordType.getter();
        v36 = sub_10000668C(v34, v35, &v115);

        *(v20 + 4) = v36;
        *(v20 + 12) = 2082;
        v37 = [v33 recordID];
        v38 = [v37 ckShortDescription];

        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v42 = sub_10000668C(v39, v41, &v115);
        a2 = v103;

        *(v20 + 14) = v42;
        v31 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }
    }

LABEL_26:
    a5 = _swiftEmptySetSingleton;
    goto LABEL_27;
  }

  for (i = 0; i != 17; ++i)
  {
    v13 = *(&off_1008DDD20 + i + 32);
    LOBYTE(v115) = v13;
    sub_100274408(&v115, a3, a4, a5, a6);
  }
}

uint64_t sub_1004E4464(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v35 = a4;
  v8 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v34 = &v33 - v20;
  if (a6)
  {
    v21 = [a1 encryptedValues];
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 objectForKeyedSubscript:v22];
    swift_unknownObjectRelease();

    v37 = v23;
  }

  else
  {
    v37 = CKRecord.subscript.getter();
  }

  sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
  if (swift_dynamicCast())
  {
    return v36;
  }

  if (!CKRecord.subscript.getter())
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_14:
    sub_1000050A4(v14, &unk_1009441F0, &qword_100795760);
    return 0;
  }

  v26 = [v25 fileURL];
  swift_unknownObjectRelease();
  if (v26)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v16 + 56))(v11, v27, 1, v15);
  sub_100031B58(v11, v14, &unk_1009441F0, &qword_100795760);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_14;
  }

  v28 = v34;
  (*(v16 + 32))(v34, v14, v15);
  v29 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 fileExistsAtPath:v30];

  if (!v31)
  {
    (*(v16 + 8))(v28, v15);
    return 0;
  }

  v32 = String.init(contentsOf:)();
  (*(v16 + 8))(v28, v15);
  return v32;
}

void sub_1004E4AD0(void *a1, char a2, char a3, void *a4, NSObject *a5, uint64_t *a6, _BYTE *a7, void *a8)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v122 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v131 & 1) != 0 || v130 != 1)
  {
    v124 = sub_1004D9000(a1, 0);
    v117 = a6;
    v118 = a7;
    v116 = a5;
    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      CKRecordKeyValueSetting.subscript.getter();

      if ((v131 & 1) != 0 || v130 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_81;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094A590);
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v21 = 136446466;
        v22 = CKRecord.recordType.getter();
        v24 = sub_10000668C(v22, v23, &v130);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        v25 = [v18 recordID];
        v26 = [v25 ckShortDescription];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10000668C(v27, v29, &v130);

        *(v21 + 14) = v30;
        v31 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    v43 = v124;
    v119 = a8;
    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v44 = [a4 storeControllerManagedObjectContext];
      if (v44)
      {
        v45 = v44;
        v46 = [a4 accountCKIdentifier];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51 = [v45 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v52 + 16))
          {
            v53 = sub_100005F4C(v48, v50);
            v55 = v54;

            if (v55)
            {
              v56 = *(*(v52 + 56) + 8 * v53);

              v57 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v56, "persistenceCloudSchemaVersion")}];
              v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              a8 = sub_1001A5660(v58);

LABEL_29:
              v126 = [a4 createResolutionTokenMapIfNecessary];
              v59 = [v124 getTokenKeys];
              v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v128 = *(v60 + 16);
              if (!v128)
              {
LABEL_79:

                return;
              }

              v62 = 0;
              v127 = v60 + 32;
              v129 = a8 + 7;
              *&v61 = 136446466;
              v115 = v61;
              v121 = a4;
              v125 = v60;
              while (1)
              {
                if (v62 >= *(v60 + 16))
                {
                  __break(1u);
LABEL_81:
                  swift_once();
LABEL_15:
                  v32 = type metadata accessor for Logger();
                  sub_100006654(v32, qword_10094A590);
                  v33 = v122;
                  v19 = Logger.logObject.getter();
                  v20 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v19, v20))
                  {
                    v21 = swift_slowAlloc();
                    v130 = swift_slowAlloc();
                    *v21 = 136446466;
                    v34 = CKRecord.recordType.getter();
                    v36 = sub_10000668C(v34, v35, &v130);

                    *(v21 + 4) = v36;
                    *(v21 + 12) = 2082;
                    v37 = [v33 recordID];
                    v38 = [v37 ckShortDescription];

                    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v41 = v40;

                    v42 = sub_10000668C(v39, v41, &v130);

                    *(v21 + 14) = v42;
                    v31 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v19, v20, v31, v21, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v63 = (v127 + 16 * v62);
                v64 = *v63;
                v65 = v63[1];
                swift_bridgeObjectRetain_n();
                v66 = sub_100392D78();
                if (v66 == 22)
                {
                  break;
                }

                v80 = v66;
                v132[0] = v66;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v81 = sub_10035692C(v80);
                  v83 = v82;
                  if (a8[2])
                  {
                    v84 = v81;
                    v85 = a8[5];
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v86 = Hasher._finalize()();
                    v87 = -1 << *(a8 + 32);
                    v88 = v86 & ~v87;
                    if ((*(v129 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
                    {
                      v89 = ~v87;
                      while (1)
                      {
                        v90 = (a8[6] + 16 * v88);
                        v91 = *v90 == v84 && v90[1] == v83;
                        if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v88 = (v88 + 1) & v89;
                        if (((*(v129 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
                        {
                          goto LABEL_51;
                        }
                      }

                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v99 = type metadata accessor for Logger();
                      sub_100006654(v99, qword_10094A590);

                      v100 = a4;
                      v101 = Logger.logObject.getter();
                      v102 = static os_log_type_t.default.getter();

                      v43 = v124;
                      if (os_log_type_enabled(v101, v102))
                      {
                        v103 = swift_slowAlloc();
                        v130 = swift_slowAlloc();
                        *v103 = v115;
                        *(v103 + 4) = sub_10000668C(v64, v65, &v130);
                        *(v103 + 12) = 2082;
                        v104 = [v100 remObjectID];
                        if (v104)
                        {
                          v105 = v104;
                          v106 = [v104 description];

                          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v109 = v108;
                        }

                        else
                        {
                          v109 = 0xE300000000000000;
                          v107 = 7104878;
                        }

                        v113 = sub_10000668C(v107, v109, &v130);

                        *(v103 + 14) = v113;
                        _os_log_impl(&_mh_execute_header, v101, v102, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v103, 0x16u);
                        swift_arrayDestroy();

                        a4 = v121;
                        v43 = v124;
                      }

                      else
                      {
                      }

                      v60 = v125;
                      sub_100358E3C(v132, v116, v117, v118, v119);
                      v114 = String._bridgeToObjectiveC()();

                      [v126 forceMergeFromMap:v43 forKey:v114];

                      goto LABEL_33;
                    }
                  }

LABEL_51:

                  v43 = v124;
                  v60 = v125;
                }

                v92 = String._bridgeToObjectiveC()();

                v93 = [v126 compareAndMergeWithMap:v43 forKey:v92];

                if (a3)
                {
                  if (sub_10035692C(v80) == 0x6341746E65726170 && v94 == 0xED0000746E756F63)
                  {
                    goto LABEL_55;
                  }

                  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v95)
                  {
                    goto LABEL_33;
                  }

                  if (sub_10035692C(v80) == 0x694C746E65726170 && v96 == 0xEA00000000007473)
                  {
                    goto LABEL_55;
                  }

                  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v97)
                  {
                    goto LABEL_33;
                  }
                }

                if (a2)
                {
                  if (sub_10035692C(v80) == 0x6341746E65726170 && v98 == 0xED0000746E756F63)
                  {
                    goto LABEL_63;
                  }

                  v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v110)
                  {
                    goto LABEL_74;
                  }

                  if (sub_10035692C(v80) == 0x694C746E65726170 && v111 == 0xEA00000000007473)
                  {
LABEL_63:

LABEL_74:
                    sub_100358E3C(v132, v116, v117, v118, v119);
                    goto LABEL_33;
                  }

                  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v112)
                  {
                    goto LABEL_74;
                  }
                }

                if (v93 == -1)
                {
                  goto LABEL_74;
                }

LABEL_33:
                if (++v62 == v128)
                {
                  goto LABEL_79;
                }
              }

              v67._countAndFlagsBits = v64;
              v67._object = v65;
              if (_findStringSwitchCase(cases:string:)(&off_1008DE200, v67))
              {
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v68 = type metadata accessor for Logger();
                sub_100006654(v68, qword_10094A590);
                v69 = v122;

                v70 = Logger.logObject.getter();
                v71 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  v130 = swift_slowAlloc();
                  *v72 = 136446722;
                  v73 = sub_10000668C(v64, v65, &v130);

                  *(v72 + 4) = v73;
                  *(v72 + 12) = 2082;
                  v74 = CKRecord.recordType.getter();
                  v76 = sub_10000668C(v74, v75, &v130);

                  *(v72 + 14) = v76;
                  *(v72 + 22) = 2082;
                  *v132 = &_s6FieldsON_2;
                  sub_1000F5104(&qword_10094A658, &qword_1007AE908);
                  v77 = String.init<A>(reflecting:)();
                  v79 = sub_10000668C(v77, v78, &v130);

                  *(v72 + 24) = v79;
                  _os_log_impl(&_mh_execute_header, v70, v71, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v72, 0x20u);
                  swift_arrayDestroy();

                  v43 = v124;
                }

                else
                {
                }

                a4 = v121;
                v60 = v125;
                goto LABEL_33;
              }

LABEL_55:

              goto LABEL_33;
            }
          }

          else
          {
          }
        }
      }
    }

    a8 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  for (i = 0; i != 22; ++i)
  {
    v15 = *(&off_1008DDF48 + i + 32);
    LOBYTE(v130) = v15;
    sub_100358E3C(&v130, a5, a6, a7, a8);
  }
}

void sub_1004E5918(void *a1, char a2, char a3, void *a4, void *a5, void *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void *a8)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v123 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v131 & 1) != 0 || v130 != 1)
  {
    v125 = sub_1004DA158(a1, 0);
    v118 = a6;
    v119 = a7;
    v117 = a5;
    if (v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      CKRecordKeyValueSetting.subscript.getter();

      if ((v131 & 1) != 0 || v130 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_84;
        }

        goto LABEL_15;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006654(v17, qword_10094A590);
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v21 = 136446466;
        v22 = CKRecord.recordType.getter();
        v24 = sub_10000668C(v22, v23, &v130);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        v25 = [v18 recordID];
        v26 = [v25 ckShortDescription];

        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_10000668C(v27, v29, &v130);

        *(v21 + 14) = v30;
        v31 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    v43 = v125;
    v120 = a8;
    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v44 = [a4 storeControllerManagedObjectContext];
      if (v44)
      {
        v45 = v44;
        v46 = [a4 accountCKIdentifier];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51 = [v45 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v52 + 16))
          {
            v53 = sub_100005F4C(v48, v50);
            v55 = v54;

            if (v55)
            {
              v56 = *(*(v52 + 56) + 8 * v53);

              v57 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v56, "persistenceCloudSchemaVersion")}];
              v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              a8 = sub_1001A5660(v58);

LABEL_29:
              v126 = [a4 createResolutionTokenMapIfNecessary];
              v59 = [v125 getTokenKeys];
              v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v128 = *(v60 + 16);
              if (!v128)
              {
LABEL_82:

                return;
              }

              v62 = 0;
              v127 = v60 + 32;
              v129 = a8 + 7;
              *&v61 = 136446466;
              v115 = v61;
              v121 = a4;
              v122 = v60;
              while (1)
              {
                if (v62 >= *(v60 + 16))
                {
                  __break(1u);
LABEL_84:
                  swift_once();
LABEL_15:
                  v32 = type metadata accessor for Logger();
                  sub_100006654(v32, qword_10094A590);
                  v33 = v123;
                  v19 = Logger.logObject.getter();
                  v20 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v19, v20))
                  {
                    v21 = swift_slowAlloc();
                    v130 = swift_slowAlloc();
                    *v21 = 136446466;
                    v34 = CKRecord.recordType.getter();
                    v36 = sub_10000668C(v34, v35, &v130);

                    *(v21 + 4) = v36;
                    *(v21 + 12) = 2082;
                    v37 = [v33 recordID];
                    v38 = [v37 ckShortDescription];

                    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v41 = v40;

                    v42 = sub_10000668C(v39, v41, &v130);

                    *(v21 + 14) = v42;
                    v31 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v19, v20, v31, v21, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v63 = (v127 + 16 * v62);
                v64 = *v63;
                v65 = v63[1];
                swift_bridgeObjectRetain_n();
                v66 = sub_1003A991C();
                if (v66 == 29)
                {
                  break;
                }

                v80 = v66;
                v132[0] = v66;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v81 = sub_100395898(v80);
                  v83 = v82;
                  if (a8[2])
                  {
                    v84 = v81;
                    v85 = a8[5];
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v86 = Hasher._finalize()();
                    v87 = -1 << *(a8 + 32);
                    v88 = v86 & ~v87;
                    if ((*(v129 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
                    {
                      v89 = ~v87;
                      while (1)
                      {
                        v90 = (a8[6] + 16 * v88);
                        v91 = *v90 == v84 && v90[1] == v83;
                        if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v88 = (v88 + 1) & v89;
                        if (((*(v129 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
                        {
                          goto LABEL_51;
                        }
                      }

                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v99 = type metadata accessor for Logger();
                      sub_100006654(v99, qword_10094A590);

                      v100 = a4;
                      v101 = Logger.logObject.getter();
                      v102 = static os_log_type_t.default.getter();

                      v60 = v122;
                      if (os_log_type_enabled(v101, v102))
                      {
                        v103 = swift_slowAlloc();
                        v130 = swift_slowAlloc();
                        *v103 = v115;
                        *(v103 + 4) = sub_10000668C(v64, v65, &v130);
                        *(v103 + 12) = 2082;
                        v104 = [v100 remObjectID];
                        if (v104)
                        {
                          v105 = v104;
                          v106 = [v104 description];

                          v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v109 = v108;
                        }

                        else
                        {
                          v109 = 0xE300000000000000;
                          v107 = 7104878;
                        }

                        v113 = sub_10000668C(v107, v109, &v130);

                        *(v103 + 14) = v113;
                        _os_log_impl(&_mh_execute_header, v101, v102, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v103, 0x16u);
                        swift_arrayDestroy();

                        a4 = v121;
                        v60 = v122;
                      }

                      else
                      {
                      }

                      sub_100397ED0(v132, v117, v118, v119, v120);
                      v114 = String._bridgeToObjectiveC()();

                      v43 = v125;
                      [v126 forceMergeFromMap:v125 forKey:v114];

                      goto LABEL_33;
                    }
                  }

LABEL_51:

                  v43 = v125;
                  v60 = v122;
                }

                v92 = String._bridgeToObjectiveC()();

                v93 = [v126 compareAndMergeWithMap:v43 forKey:v92];

                if ((a3 & 1) == 0)
                {
LABEL_60:
                  if (a2)
                  {
                    if (sub_100395898(v80) == 1953720684 && v98 == 0xE400000000000000)
                    {
LABEL_63:

                      goto LABEL_77;
                    }

                    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v110)
                    {
                      goto LABEL_77;
                    }

                    if (sub_100395898(v80) == 0x6552746E65726170 && v111 == 0xEE007265646E696DLL)
                    {
                      goto LABEL_63;
                    }

                    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v112)
                    {
LABEL_77:
                      sub_100397ED0(v132, v117, v118, v119, v120);
                      goto LABEL_33;
                    }
                  }

                  if ((!sub_10018F88C(v80, &off_1008DE588) || !v93) && (sub_10018F88C(v80, &off_1008DE5B0) || v93 != -1))
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_77;
                }

                if (sub_100395898(v80) == 1953720684 && v94 == 0xE400000000000000)
                {
                  goto LABEL_55;
                }

                v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v95)
                {
                  goto LABEL_33;
                }

                if (sub_100395898(v80) == 0x6552746E65726170 && v96 == 0xEE007265646E696DLL)
                {
                  goto LABEL_55;
                }

                v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v97 & 1) == 0)
                {
                  goto LABEL_60;
                }

LABEL_33:
                if (++v62 == v128)
                {
                  goto LABEL_82;
                }
              }

              v67._countAndFlagsBits = v64;
              v67._object = v65;
              if (_findStringSwitchCase(cases:string:)(&off_1008DE550, v67))
              {
                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v68 = type metadata accessor for Logger();
                sub_100006654(v68, qword_10094A590);
                v69 = v123;

                v70 = Logger.logObject.getter();
                v71 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  v130 = swift_slowAlloc();
                  *v72 = 136446722;
                  v73 = sub_10000668C(v64, v65, &v130);

                  *(v72 + 4) = v73;
                  *(v72 + 12) = 2082;
                  v74 = CKRecord.recordType.getter();
                  v76 = sub_10000668C(v74, v75, &v130);

                  *(v72 + 14) = v76;
                  *(v72 + 22) = 2082;
                  *v132 = &_s6FieldsON_3;
                  sub_1000F5104(&qword_10094A650, &qword_1007AE900);
                  v77 = String.init<A>(reflecting:)();
                  v79 = sub_10000668C(v77, v78, &v130);

                  *(v72 + 24) = v79;
                  _os_log_impl(&_mh_execute_header, v70, v71, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v72, 0x20u);
                  swift_arrayDestroy();
                  v43 = v125;

                  v60 = v122;
                }

                else
                {
                }

                a4 = v121;
                goto LABEL_33;
              }

LABEL_55:

              goto LABEL_33;
            }
          }

          else
          {
          }
        }
      }
    }

    a8 = _swiftEmptySetSingleton;
    goto LABEL_29;
  }

  for (i = 0; i != 29; ++i)
  {
    v15 = *(&off_1008DE238 + i + 32);
    LOBYTE(v130) = v15;
    sub_100397ED0(&v130, a5, a6, a7, a8);
  }
}