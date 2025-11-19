uint64_t sub_1000939E0()
{
  v1 = [v0 valueType];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v1;
      v10 = [v8 memberValueType];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 identifier];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    else
    {
    }

    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_100093B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  v108 = a4;
  v112 = a2;
  v113 = a3;
  v111 = a1;
  v9 = [a1 parameters];
  sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_1000232F4(v10);
  if (v11)
  {
    v12 = v11;
    sub_1000B3784(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_78;
    }

    v14 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      v16 = v15;
      v7 = sub_1000943E0(v15);

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        v19 = sub_100005150(v17);
        sub_1000B3784(v19, v18 + 1, 1);
      }

      ++v14;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      _swiftEmptyArrayStorage[v18 + 4] = v7;
    }

    while (v12 != v14);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v4 = 0;
  v20 = _swiftEmptyArrayStorage[2];
  v21 = &_swiftEmptyArrayStorage[4];
  while (1)
  {
    v22 = _swiftEmptyArrayStorage[2];
    if (v20 == v4)
    {
      break;
    }

    if (v4 >= v22)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v23 = _swiftEmptyArrayStorage[v4 + 4];
    if (v23 >> 62)
    {
      if (v23 < 0)
      {
        v25 = _swiftEmptyArrayStorage[v4 + 4];
      }

      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = v23 & 0xFFFFFFFFFFFFFF8;
      v24 = *(v13 + 16);
    }

    ++v4;
    if (!v24)
    {

      sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
      v83 = [objc_opt_self() openEntitySystemProtocol];
      v84 = static NSObject.== infix(_:_:)();

      if (v84)
      {
        v93 = sub_100005270(v85, v86, v87, v88, v89, v90, v91, v92, v100, v102, v104, v106, v108, v109, v111);
        v97 = sub_1000941AC(v93, v94, v95, v96);
        if (v97)
        {
          v98 = v97;
          sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_10014CE80;
          *(v99 + 32) = v98;
        }
      }

      return;
    }
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_34:

    sub_100070920();
    v40 = v32;
    v4 = *(v32 + 16);
    v13 = *(v32 + 24);
    v114 = v4 + 1;
    if (v4 >= v13 >> 1)
    {
      goto LABEL_79;
    }

    goto LABEL_35;
  }

  sub_1000B3764(0, v22, 0);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v26 = *v21;
    if (*v21 >> 62)
    {
      if (v26 < 0)
      {
        v30 = *v21;
      }

      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = v26 & 0xFFFFFFFFFFFFFF8;
      v27 = *(v13 + 16);
    }

    v4 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    v29 = _swiftEmptyArrayStorage[2];
    v28 = _swiftEmptyArrayStorage[3];
    if (v29 >= v28 >> 1)
    {
      v31 = sub_100005150(v28);
      sub_1000B3764(v31, v29 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v29 + 1;
    _swiftEmptyArrayStorage[v29 + 4] = v4;
    ++v21;
    if (!--v22)
    {
      goto LABEL_34;
    }
  }

LABEL_76:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    sub_100005150(v13);
    sub_100070920();
    v40 = v32;
LABEL_35:
    sub_100003B58(v32, v33, v34, v35, v36, v37, v38, v39, v100, v102, v104, v106, v108, v109, v111, v112, v113, v114);
    if (v4 <= 1)
    {
      break;
    }

LABEL_46:
    v109 = v8;
    v67 = 0;
    v68 = v6[2];
    v104 = v40 + 32;
    v106 = _swiftEmptyArrayStorage;
    v8 = -v68;
    v4 = v108;
    v100 = v68;
    v102 = v40;
    while (1)
    {
      v13 = *(v40 + 16);
      if (v67 >= v13)
      {
        break;
      }

      if (v68)
      {
        v69 = *(v104 + 8 * v67);

        specialized ContiguousArray.reserveCapacity(_:)();
        v4 = v6[2];
        v70 = 4;
        while (v4)
        {
          v13 = v70 - 4;
          if ((v70 - 4) >= v6[2])
          {
            goto LABEL_71;
          }

          if (v13 >= *(v69 + 16))
          {
            goto LABEL_72;
          }

          v71 = v6[v70];
          v72 = *(v69 + 8 * v70);
          if ((v71 & 0xC000000000000001) != 0)
          {
            v75 = v6[v70];

            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v72 & 0x8000000000000000) != 0)
            {
              goto LABEL_73;
            }

            v13 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72 >= v13)
            {
              goto LABEL_74;
            }

            v73 = *(v71 + 8 * v72 + 32);
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v74 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v4;
          ++v70;
          v13 = v8 + v70;
          if (v8 + v70 == 4)
          {

            v4 = v108;
            v68 = v100;
            v40 = v102;
            goto LABEL_60;
          }
        }

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

LABEL_60:
      v76 = sub_100005270(v41, v42, v43, v44, v45, v46, v47, v48, v100, v102, v104, v106, v108, v109, v111);
      v80 = sub_1000941AC(v76, v77, v78, v79);

      if (v80)
      {
        v81 = v80;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v82 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v82 >> 1)
        {
          sub_100005150(v82);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v106 = _swiftEmptyArrayStorage;
      }

      if (++v67 == v114)
      {

        return;
      }
    }
  }

  while (2)
  {
    v49 = v7[2];
    do
    {
      if (!v49)
      {
        goto LABEL_46;
      }

      v50 = v49 - 1;
      v51 = v7[v49-- + 3];
    }

    while (v51 < 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000F51BC(v7);
      v7 = v66;
    }

    if (v50 + 1 > v7[2])
    {
      __break(1u);
    }

    else
    {
      v52 = &v7[v50];
      v53 = v52[4];
      v54 = __OFSUB__(v53, 1);
      v55 = v53 - 1;
      if (!v54)
      {
        v52[4] = v55;
        v56 = *(v40 + 16);
        v57 = *(v40 + 24);

        if (v56 >= v57 >> 1)
        {
          sub_100070920();
          v40 = v58;
        }

        sub_100003B58(v58, v59, v60, v61, v62, v63, v64, v65, v101, v103, v105, v107, v108, v110, v111, v112, v113, v56 + 1);
        if (v56 < 2)
        {
          continue;
        }

        goto LABEL_46;
      }
    }

    break;
  }

  __break(1u);
}

id sub_1000941AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_allocWithZone(LNAction);

  v6 = a1;
  v7 = sub_1000BAA38(v6);
  sub_100094A24(v6, a4, v7);
  v9 = v8;
  objc_allocWithZone(LNSuggestedAction);
  return sub_100095514(v7, a4, v9);
}

void *sub_1000943E0(void *a1)
{
  v2 = v1;
  sub_1000237B0(a1);
  v4 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v4;
  }

  v6 = sub_1000939E0();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v2[7];

    v11 = sub_1000B6334(v8, v9, v10);

    if (v11)
    {
      v12 = sub_1000232F4(v11);
      if (v12)
      {
        v13 = v12;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v13 & 0x8000000000000000) == 0)
        {
          v15 = 0;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v16 = *(v11 + 8 * v15 + 32);
            }

            v17 = v16;
            ++v15;
            objc_allocWithZone(LNProperty);

            v18 = sub_100002B74();
            sub_10010BB9C(v18, v19, v17);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v20 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v13 != v15);

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_38;
    }

LABEL_39:

    return v4;
  }

  v21 = [a1 valueType];
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_10014CE80;
    v39 = objc_allocWithZone(LNProperty);
    v40 = sub_100002B74();
    v4[4] = sub_10010BB9C(v40, v41, 0);
    return v4;
  }

  v23 = [v22 enumerationIdentifier];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = sub_1000034B4(v2 + 2, v2[5])[2];

  v28 = sub_1000B6338(v24, v26, v27);

  if (v28)
  {

    v29 = sub_100094870();
    v30 = sub_1000232F4(v29);
    if (v30)
    {
      v31 = v30;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v31 < 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v32 = 0;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v29 + 8 * v32 + 32);
        }

        v34 = v33;
        ++v32;
        objc_allocWithZone(LNProperty);

        v35 = sub_100002B74();
        sub_10010BB9C(v35, v36, v34);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v31 != v32);

      v38 = v28;
LABEL_33:

LABEL_34:

      return _swiftEmptyArrayStorage;
    }

LABEL_38:

    goto LABEL_39;
  }

  v42 = v2[7];

  v43 = sub_1000B6334(v24, v26, v42);

  if (!v43)
  {

    goto LABEL_39;
  }

  v44 = sub_1000232F4(v43);
  if (!v44)
  {

    goto LABEL_38;
  }

  v45 = v44;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v45 & 0x8000000000000000) == 0)
  {
    v46 = 0;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v43 + 8 * v46 + 32);
      }

      v48 = v47;
      ++v46;
      objc_allocWithZone(LNProperty);

      v49 = sub_100002B74();
      sub_10010BB9C(v49, v50, v48);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v45 != v46);

    v38 = v21;
    goto LABEL_33;
  }

LABEL_43:
  __break(1u);
  return result;
}

void *sub_100094870()
{
  v1 = [v0 cases];
  sub_100003D44(0, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000232F4(v2);
  if (v3)
  {
    v4 = v3;
    v17 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        v9 = [v7 identifier];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v16[3] = &type metadata for String;
        v16[0] = v10;
        v16[1] = v12;
        v13 = sub_100095428();
        v14 = objc_allocWithZone(LNValue);
        sub_1000688F0(v16, v13);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = v17[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);

      return v17;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100094A24(void *a1, void *a2, void *a3)
{
  v6 = [a1 descriptionMetadata];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 descriptionText];

    v9 = &_swiftEmptyDictionarySingleton;
    if (v8)
    {
      v10 = LNSuggestedActionDialogParameterKeyDescription;
      v11 = sub_100007BA8(v132);
      v13 = sub_1000034B4(v11, v12);
      v129 = a3;
      if (v13[1])
      {
        v14 = *v13;

        sub_100002B74();
        v15 = String._bridgeToObjectiveC()();
      }

      else
      {
        v15 = 0;
      }

      v16 = [v8 localizedStringForLocaleIdentifier:v15];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      swift_isUniquelyReferenced_nonNull_native();
      sub_100007FB0();
      sub_100069360(v17, v19, v10, v20);

      v9 = v130;
      a3 = v129;
    }
  }

  else
  {
    v9 = &_swiftEmptyDictionarySingleton;
  }

  v21 = LNActionMetadata._iconSystemImageNameForAppIntentsOnly.getter();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = LNSuggestedActionDialogParameterKeyIconSystemImageName;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v130 = v9;
    sub_100069360(v23, v24, v25, isUniquelyReferenced_nonNull_native);
  }

  v27 = sub_100095810(a1);
  if (v27)
  {
    sub_1000A0DB4(v27, &v130);

    if (v131)
    {
      if (swift_dynamicCast())
      {
        v28 = v132[8];

        v29 = sub_100002B74();
        v31 = sub_1000A0CB8(v29, v30, v28);
        v33 = v32;

        if (v33)
        {
          v34 = LNSuggestedActionDialogParameterKeyEntityType;
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000071EC();
          sub_100069360(v31, v33, v34, v35);
        }
      }
    }

    else
    {
      sub_10003D580(&v130);
    }
  }

  v36 = [a2 identifier];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

    goto LABEL_23;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {

LABEL_23:
    v43 = v132;
    v44 = sub_1000034B4(v132 + 2, v132[5]);
    sub_1000958B8(0x676E6974746573, 0xE700000000000000, *v44, v44[1], v44[2], v44[3], a3);
    if (v45)
    {
      v46 = v45;
      v47 = sub_1000034B4(v43 + 2, v43[5]);
      sub_1000958B8(0x704F65676E616863, 0xEF6E6F6974617265, *v47, v47[1], v47[2], v47[3], a3);
      if (v48)
      {
        v49 = v43;
        v50 = v48;
        v51 = LNSuggestedActionDialogParameterKeyEntityName;
        v52 = [v46 displayRepresentation];
        v53 = [v52 title];

        v54 = sub_1000034B4(v49 + 2, v49[5]);
        if (v54[1])
        {
          v55 = *v54;
          v56 = v54[1];

          sub_100002B74();
          v57 = String._bridgeToObjectiveC()();
        }

        else
        {
          v57 = 0;
        }

        v89 = [v53 localizedStringForLocaleIdentifier:v57];

        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        swift_isUniquelyReferenced_nonNull_native();
        sub_100007FB0();
        sub_100069360(v90, v92, v51, v93);
        v94 = LNSuggestedActionDialogParameterKeyChangeOperation;
        v95 = [v50 identifier];
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        swift_isUniquelyReferenced_nonNull_native();
        sub_100007FB0();
        sub_100069360(v96, v98, v94, v99);

        return;
      }
    }

    v75 = 0;
LABEL_47:

    sub_100095D94();
    swift_allocError();
    *v76 = a3;
    *(v76 + 8) = v75;
    swift_willThrow();
    v77 = a3;
    return;
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  if (v58 == v61 && v60 == v63)
  {

    goto LABEL_49;
  }

  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
LABEL_49:
    v78 = sub_100007BA8(v132);
    v80 = sub_1000034B4(v78, v79);
    sub_1000958B8(0x6F69746365726964, 0xE90000000000006ELL, *v80, v80[1], v80[2], v80[3], a3);
    if (v81)
    {
      v82 = v81;
      v83 = LNSuggestedActionDialogParameterKeyDirection;
      v84 = [v81 identifier];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      swift_isUniquelyReferenced_nonNull_native();
      sub_1000071EC();
      sub_100069360(v85, v87, v83, v88);

      return;
    }

    v75 = 1;
    goto LABEL_47;
  }

  v66 = [a3 parameters];
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = sub_1000232F4(v67);
  for (i = 0; ; ++i)
  {
    if (v68 == i)
    {

      return;
    }

    if ((v67 & 0xC000000000000001) != 0)
    {
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v70 = *(v67 + 8 * i + 32);
    }

    v71 = v70;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v72 = [v70 value];
    if (v72 && (v73 = v72, v74 = [v72 valueType], v73, v74))
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v100 = [v71 value];
        if (v100)
        {
          v101 = v100;
          v102 = [v100 valueType];
          objc_opt_self();
          v103 = swift_dynamicCastObjCClass();
          if (!v103)
          {
            goto LABEL_59;
          }

          v104 = [v103 identifier];
          v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          v108 = v132[8];

          v109 = sub_1000A0CB8(v105, v107, v108);
          v111 = v110;

          if (v111)
          {
            v112 = LNSuggestedActionDialogParameterKeyEntityType;
            swift_isUniquelyReferenced_nonNull_native();
            sub_1000071EC();
            sub_100069360(v109, v111, v112, v113);
          }

          else
          {
LABEL_59:
          }

          v114 = [v101 displayRepresentation];
          if (v114)
          {
            v115 = v114;
            v116 = LNSuggestedActionDialogParameterKeyEntityName;
            v117 = [v114 title];
            v118 = sub_100007BA8(v132);
            v120 = sub_1000034B4(v118, v119);
            if (v120[1])
            {
              v121 = *v120;
              v122 = v120[1];

              sub_100002B74();
              v123 = String._bridgeToObjectiveC()();
            }

            else
            {
              v123 = 0;
            }

            v124 = [v117 localizedStringForLocaleIdentifier:v123];

            v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v127 = v126;

            swift_isUniquelyReferenced_nonNull_native();
            sub_100007FB0();
            sub_100069360(v125, v127, v116, v128);

            return;
          }
        }

        return;
      }
    }

    else
    {
      v74 = v71;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t *sub_1000953A0()
{
  sub_1000034F8(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_1000953D0()
{
  sub_1000953A0();

  return _swift_deallocClassInstance(v0, 72, 7);
}

id sub_100095428()
{
  sub_100003D44(0, &qword_10019AE40, LNLinkEnumerationValueType_ptr);
  v1 = [v0 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_1000954A4();
}

id sub_1000954A4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100002B74();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithEnumerationIdentifier:v1];

  return v2;
}

id sub_100095514(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    sub_100095DE8(&qword_100198930, type metadata accessor for LNSuggestedActionDialogParameterKey);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithAction:a1 systemProtocol:a2 dialogParameters:v7.super.isa];

  return v8;
}

void sub_1000955F0(uint64_t a1, uint64_t a2)
{
  sub_10002EB80(&qword_10019AE50, &qword_10014FF88);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = 0;
  v34 = v3;
  v35 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v33 = v3 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v35 + 48) + 16 * v15);
      v17 = v16[1];
      v38 = *v16;
      v18 = *(*(v35 + 56) + 8 * v15);
      v19 = sub_1000034B4((a2 + 16), *(a2 + 40));
      v37 = v17;
      if (v19[1])
      {
        v20 = *v19;

        v21 = v18;

        v22 = String._bridgeToObjectiveC()();
      }

      else
      {

        v23 = v18;
        v22 = 0;
      }

      v24 = [v18 localizedStringForLocaleIdentifier:v22];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      *(v33 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v28 = (v34[6] + 16 * v15);
      *v28 = v38;
      v28[1] = v37;
      v29 = (v34[7] + 16 * v15);
      *v29 = v25;
      v29[1] = v27;
      v30 = v34[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v34[2] = v32;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {

        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100095810(void *a1)
{
  v1 = [a1 typeSpecificMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNActionTypeSpecificMetadataKey(0);
  sub_100095DE8(&qword_100198920, type metadata accessor for LNActionTypeSpecificMetadataKey);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000958B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v56 = &type metadata for SiriDiscoverabilityClosedAppSuggestionStrategy;
  v57 = &off_10018DB18;
  v14 = swift_allocObject();
  v55[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;

  v15 = [a7 parameters];
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_1000232F4(v16);
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {

      goto LABEL_38;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v19 = *(v16 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v20 = v19;
    v21 = [v19 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == a1 && v24 == a2)
    {

LABEL_16:

      v27 = [v20 value];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 value];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v30 = [v28 valueType];
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v32 = v31;
            v33 = sub_1000034B4(v55, v56)[2];

            v34 = [v32 enumerationIdentifier];
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            v38 = sub_1000B6338(v35, v37, v33);

            if (v38)
            {
              v52 = v30;
              v51 = v38;
              v39 = [v38 cases];
              sub_100003D44(0, &qword_10019A0A0, LNEnumCaseMetadata_ptr);
              v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v41 = sub_1000232F4(v40);
              for (j = 0; ; ++j)
              {
                if (v41 == j)
                {

                  goto LABEL_38;
                }

                if ((v40 & 0xC000000000000001) != 0)
                {
                  v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (j >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_46;
                  }

                  v43 = *(v40 + 8 * j + 32);
                }

                v44 = v43;
                if (__OFADD__(j, 1))
                {
                  goto LABEL_45;
                }

                v45 = [v43 identifier];
                v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v48 = v47;

                if (v46 == v53 && v48 == v54)
                {

                  goto LABEL_42;
                }

                v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v50)
                {
                  break;
                }
              }

LABEL_42:

              goto LABEL_38;
            }
          }

          else
          {
          }

LABEL_38:
          sub_1000034F8(v55);
          return;
        }
      }

      goto LABEL_38;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

unint64_t sub_100095D94()
{
  result = qword_10019AE38;
  if (!qword_10019AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AE38);
  }

  return result;
}

uint64_t sub_100095DE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100095E30()
{
  result = qword_10019AE48;
  if (!qword_10019AE48)
  {
    sub_10002EC70(&qword_10019A730, &qword_10014F3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AE48);
  }

  return result;
}

uint64_t sub_100095EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100095EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_100095F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_100198258 != -1)
  {
    sub_100007FC0();
  }

  memcpy(__dst, &unk_10019AE58, sizeof(__dst));
  if (qword_100198260 != -1)
  {
    sub_1000071FC();
  }

  sub_100003A8C(&qword_10019AF08);
  __src[0] = a3;
  __src[1] = a4;
  v10 = == infix<A>(_:_:)();
  v12 = v11;
  v14 = v13;
  if (qword_100198268 != -1)
  {
    sub_100002BC8();
  }

  sub_100003A8C(&qword_10019AF20);
  v15 = == infix<A>(_:_:)();
  v18 = && infix(_:_:)(v10, v12, v14, v15, v16, v17);
  v20 = v19;
  v22 = v21;

  memcpy(v54, __dst, sizeof(v54));
  QueryType.filter(_:)(v18, v20, v22, &type metadata for Table, &protocol witness table for Table, v23, v24, v25, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v53, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], v54[14], v54[15], v54[16], v54[17], v54[18], v54[19], v54[20], v54[21], a1, a2, __src[2], __src[3]);

  memcpy(v59, __src, sizeof(v59));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v59, 0xB0uLL);
  v26 = Connection.pluck(_:)(__src);
  result = sub_1000034F8(__src);
  if (!v51)
  {
    if (v26)
    {
      sub_10009704C(v56);
      v48 = v56[1];
      v52 = v56[0];
      v42 = v56[3];
      v45 = v56[2];
      v36 = v56[5];
      v39 = v56[4];
      v28 = v57;

      v30 = v36;
      v29 = v39;
      v32 = v42;
      v31 = v45;
      v34 = v48;
      v33 = v52;
    }

    else
    {
      v28 = 0;
      v33 = 0uLL;
      v34 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
    }

    *a5 = v33;
    *(a5 + 16) = v34;
    *(a5 + 32) = v31;
    *(a5 + 48) = v32;
    *(a5 + 64) = v29;
    *(a5 + 80) = v30;
    *(a5 + 96) = v28;
  }

  return result;
}

uint64_t sub_100096208(uint64_t a1, uint64_t a2)
{
  if (qword_100198258 != -1)
  {
    sub_100007FC0();
  }

  memcpy(v35, &unk_10019AE58, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v35, &v19);
    if (qword_100198268 != -1)
    {
      sub_100002BC8();
    }

    sub_100003A8C(&qword_10019AF20);
    v19 = a1;
    v20 = a2;
    v6 = == infix<A>(_:_:)();
    v3 = v7;
    v9 = v8;
    memcpy(v18, v35, sizeof(v18));
    QueryType.filter(_:)(v6, v3, v9, &type metadata for Table, &protocol witness table for Table, v10, v11, v12, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14], v18[15], v18[16], v18[17], v18[18], v18[19], v18[20], v18[21], v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);

    sub_10001970C(v35);
    v13 = &v19;
  }

  else
  {
    sub_1000196B0(v35, &v19);
    v13 = v35;
  }

  memcpy(v34, v13, sizeof(v34));
  v22 = &type metadata for Table;
  v23 = &protocol witness table for Table;
  v19 = swift_allocObject();
  memcpy((v19 + 16), v34, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v19);
  v14 = sub_1000034F8(&v19);
  if (!v2)
  {
    __chkstk_darwin(v14);

    RowIterator.compactMap<A>(_:)();
    v3 = v16;
  }

  return v3;
}

uint64_t sub_100096494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_100198258;

  if (v6 != -1)
  {
    sub_100007FC0();
  }

  memcpy(__dst, &unk_10019AE58, 0xB0uLL);
  memcpy(v96, &unk_10019AE58, sizeof(v96));
  sub_1000196B0(__dst, v65);
  if (qword_100198260 != -1)
  {
    sub_1000071FC();
  }

  sub_100003A8C(&qword_10019AF08);
  *v65 = *a1;
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10014E680;
  if (qword_100198268 != -1)
  {
    sub_100002BC8();
  }

  v99 = a2;
  sub_100003A8C(&qword_10019AF20);
  *v65 = *(a1 + 16);
  <- infix<A>(_:_:)();
  if (qword_100198270 != -1)
  {
    swift_once();
  }

  v8 = *(a1 + 32);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v12 = LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v3)
  {

    v14 = sub_10002EBC8(&v86);
    sub_100006800(v14, v15, v16, v17, v18, v19, v20, v21, v60, v61, v63, v64, v65[0], *&v65[8], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]);
    sub_10001970C(v65);
LABEL_21:
    sub_10002EBC8(v7 + 32);
    *(v7 + 16) = 0;
    swift_setDeallocating();
    return sub_1000B3030();
  }

  v22 = v12;
  v23 = v13;

  *v65 = v22;
  *&v65[8] = v23;
  <- infix<A>(_:_:)();

  if (qword_100198278 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF50);
  *v65 = *(a1 + 40);
  <- infix<A>(_:_:)();
  if (qword_100198280 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF68);
  *v65 = *(a1 + 56);
  <- infix<A>(_:_:)();
  if (qword_100198288 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_10019AF80);
  *v65 = *(a1 + 72);
  <- infix<A>(_:_:)();
  if (qword_100198290 != -1)
  {
    swift_once();
  }

  v62 = qword_10019AF98;
  v24 = *(a1 + 88);
  type metadata accessor for CodingUserInfoKey();
  sub_10002EB80(&unk_100198750, &unk_1001518C0);
  v25 = Dictionary.init(dictionaryLiteral:)();
  v26 = LNValue.asJson(userInfo:)(v25);
  if (v27)
  {

    v28 = sub_10002EBC8(&v86);
    sub_100006800(v28, v29, v30, v31, v32, v33, v34, v35, v60, v62, v63, v64, v65[0], *&v65[8], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]);
    sub_10001970C(v65);
    sub_10002EBC8(v7 + 352);
    sub_10002EBC8(v7 + 272);
    sub_10002EBC8(v7 + 192);
    sub_10002EBC8(v7 + 112);
    goto LABEL_21;
  }

  <- infix<A>(_:_:)();

  v37 = QueryType.insert(_:_:)(&v86);
  v39 = v38;
  v41 = v40;
  swift_setDeallocating();
  sub_1000B3030();
  v42 = sub_10002EBC8(&v86);
  sub_100006800(v42, v43, v44, v45, v46, v47, v48, v49, v60, v62, v26._countAndFlagsBits, v26._object, v65[0], *&v65[8], v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0]);
  sub_10001970C(v65);
  v100.template._countAndFlagsBits = v37;
  v100.template._object = v39;
  v100.bindings._rawValue = v41;
  v50 = v99;
  Connection.run(_:)(v100);
  if (v51)
  {
  }

  else
  {

    v52 = *(a1 + 96);
    v53 = *(v52 + 16);
    for (i = (v52 + 64); v53; --v53)
    {
      v55 = *(i - 3);
      v56 = *(i - 2);
      v57 = *(i - 1);
      v58 = *i;
      v97[0] = *(i - 4);
      v97[1] = v55;
      v97[2] = v56;
      v97[3] = v57;
      v97[4] = v58;

      v59 = v58;
      sub_100071A14(v97, v50);

      i += 5;
    }
  }
}

void sub_100096A90(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100003D44(0, &qword_100199300, NSObject_ptr);
      v6 = a1[4];
      v7 = a2[4];
      if (static NSObject.== infix(_:_:)())
      {
        v8 = a1[5] == a2[5] && a1[6] == a2[6];
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v9 = a1[7] == a2[7] && a1[8] == a2[8];
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v10 = a1[9] == a2[9] && a1[10] == a2[10];
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              v11 = a1[11];
              v12 = a2[11];
              if (static NSObject.== infix(_:_:)())
              {
                v13 = a1[12];
                v14 = a2[12];

                sub_1000453A0();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100096BC8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  v6 = v1[2];
  v7 = v1[3];
  String.hash(into:)();
  v8 = v1[4];
  NSObject.hash(into:)();
  v9 = v2[5];
  v10 = v2[6];
  String.hash(into:)();
  v11 = v2[7];
  v12 = v2[8];
  String.hash(into:)();
  v13 = v2[9];
  v14 = v2[10];
  String.hash(into:)();
  v15 = v2[11];
  NSObject.hash(into:)();
  v16 = v2[12];

  sub_10004A69C(a1, v16);
}

Swift::Int sub_100096C5C()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = v0[2];
  v5 = v0[3];
  String.hash(into:)();
  v6 = v0[4];
  NSObject.hash(into:)();
  v7 = v1[5];
  v8 = v1[6];
  String.hash(into:)();
  v9 = v1[7];
  v10 = v1[8];
  String.hash(into:)();
  v11 = v1[9];
  v12 = v1[10];
  String.hash(into:)();
  v13 = v1[11];
  NSObject.hash(into:)();
  sub_10004A69C(v15, v1[12]);
  return Hasher._finalize()();
}

Swift::Int sub_100096D00()
{
  Hasher.init(_seed:)();
  sub_100096BC8(v1);
  return Hasher._finalize()();
}

uint64_t sub_100096DC4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100096E54()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155350, v0, v1);
}

uint64_t sub_100096EB8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000011, 0x8000000100156590, v0, v1);
}

uint64_t sub_100096F1C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000017, 0x8000000100156570, v0, v1);
}

uint64_t sub_100096F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v7 = sub_100056DD4();
  return ExpressionType.init(_:)(a3, a4, v6, v7);
}

uint64_t sub_10009704C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v25 - v4;
  if (qword_100198268 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v32 = v34;
  v33 = v35;
  if (qword_100198260 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v7 = v34;
  v6 = v35;
  v8 = sub_100071D10(v32, v33, v34, v35);
  v29 = v7;
  v30 = v8;
  v31 = v6;
  if (qword_100198270 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v9 = v34;
  v10 = v35;
  if (qword_100198278 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v11 = v34;
  v12 = v35;
  if (qword_100198280 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v28 = v9;
  v14 = v34;
  v13 = v35;
  if (qword_100198288 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v26 = v5;
  v27 = v10;
  v16 = v34;
  v15 = v35;
  if (qword_100198290 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v25[1] = v34;
  v25[2] = v35;
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v17 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  v28 = sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  v18 = type metadata accessor for URL();
  sub_1000075C4(v26, 1, 1, v18);
  v19 = static LNValue.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  sub_1000209B0(v26);

  v22 = v32;
  v21 = v33;
  v24 = v30;
  v23 = v31;
  *a1 = v29;
  a1[1] = v23;
  a1[2] = v22;
  a1[3] = v21;
  a1[4] = v17;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v14;
  a1[8] = v13;
  a1[9] = v16;
  a1[10] = v15;
  a1[11] = v19;
  a1[12] = v24;
  return result;
}

void *sub_100097590@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(__src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_1000975EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100097658()
{
  result = qword_10019AFB0;
  if (!qword_10019AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019AFB0);
  }

  return result;
}

void sub_1000976AC()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v24 = v5;
  v25 = v4;
  v6 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v7 = sub_100002944(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v22 - v12;
  v23 = type metadata accessor for _RegexFactory();
  v14 = sub_100002944(v23);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100002958();
  v21 = v20 - v19;
  makeFactory()();
  v26 = v3;
  v27 = v1;
  sub_100056540();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0);
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  (*(v9 + 8))(v13, v6);
  (*(v16 + 8))(v21, v23);
  sub_1000069EC();
}

unint64_t sub_1000978C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100097910()
{
  v2 = v0;
  sub_100098DD0();
  if (!v1)
  {
    v82 = v3;
    v91[3] = _swiftEmptyArrayStorage;
    v4 = _s7BuilderVMa();
    v6 = *(v0 + v4[7]);
    v89 = v0;
    v81 = v4;
    v76 = *(v6 + 16);
    if (v76)
    {
      v7 = 0;
      v75 = (v0 + v4[10]);
      v8 = v0 + v4[5];
      v74 = *(v0 + v4[11]);
      v73 = v6 + 32;
      v71 = *(v8 + 48);
      v72 = *(v8 + 40);
      *&v5 = 136315138;
      v69 = v5;
      v70 = *(v0 + v4[7]);
      do
      {
        if (v7 >= *(v6 + 16))
        {
LABEL_50:
          __break(1u);
          return;
        }

        v83 = v7;
        v9 = (v73 + 24 * v7);
        v10 = v9[1];
        v79 = *v9;
        v11 = v9[2];

        v12 = v11;
        v13 = [v12 intentIdentifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = *sub_1000034B4(v75, v75[3]);
        v86 = v10;
        v87 = sub_100078C8C(v72, v71, v14, v16);
        v85 = v12;
        v18 = [v12 intentIdentifier];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (*(v74 + 16))
        {
          v22 = sub_10000C2A0(v19, v21);
          v24 = v23;

          if (v24)
          {
            v25 = *(*(v74 + 56) + 8 * v22);
            v26 = v25;
            goto LABEL_10;
          }
        }

        else
        {
        }

        v25 = 0;
LABEL_10:
        v2 = v89;
        v27 = &TableBuilder;
        if (v87)
        {
          v77 = v25;
          v28 = [v87 identifier];

          v29 = [v87 parameters];
          sub_100003D44(0, &qword_100199048, LNActionParameterMetadata_ptr);
          v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = sub_1000232F4(v30);
          v32 = 0;
          v33 = _swiftEmptyArrayStorage;
          while (v31 != v32)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_48;
              }

              v34 = *(v30 + 8 * v32 + 32);
            }

            v35 = v34;
            if (__OFADD__(v32, 1))
            {
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v36 = [v34 v27[34].weak_ivar_lyt];
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {

              v37 = sub_1000237B0(v35);
              v39 = v38;

              if (v39)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = v33[2];
                  sub_100004E28();
                  sub_100013A60();
                  v33 = v44;
                }

                v41 = v33[2];
                v40 = v33[3];
                if (v41 >= v40 >> 1)
                {
                  sub_100005150(v40);
                  sub_100013A60();
                  v33 = v45;
                }

                v33[2] = v41 + 1;
                v42 = &v33[2 * v41];
                v42[4] = v37;
                v42[5] = v39;
                v27 = &TableBuilder;
              }
            }

            else
            {
            }

            ++v32;
          }

          v91[0] = _swiftEmptyDictionarySingleton;
          v2 = v89;
          v46 = v86;
          if (v33)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (v25)
        {
          v77 = v25;
          v47 = [v25 identifier];

          v91[0] = _swiftEmptyDictionarySingleton;
          v46 = v86;
LABEL_31:
          v33 = _swiftEmptyArrayStorage;
LABEL_32:
          v48 = sub_100099210(v79, v46, v85, v33, v82, v91);

          sub_10006E5E0(v48);

          goto LABEL_33;
        }

        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_10000347C(v49, qword_10019E008);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = sub_100007764();
          v53 = swift_slowAlloc();
          v91[0] = v53;
          *v52 = v69;
          v54 = sub_100004C50(v14, v16, v91);

          *(v52 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v50, v51, "%s does not have any metadata, skipping", v52, 0xCu);
          sub_1000034F8(v53);
          sub_1000036AC();
          sub_1000036AC();
        }

        else
        {
        }

        v2 = v89;
LABEL_33:
        v4 = v81;
        v6 = v70;
        v7 = v83 + 1;
      }

      while (v83 + 1 != v76);
    }

    v55 = 0;
    v56 = *(v2 + v4[12]);
    v57 = (v56 + 48);
    v91[0] = _swiftEmptyDictionarySingleton;
    v78 = v56;
    v80 = *(v56 + 16);
    while (v80 != v55)
    {
      if (v55 >= *(v78 + 16))
      {
        goto LABEL_49;
      }

      v84 = v55;
      v58 = *v57;
      v59 = v2 + v4[5];
      v60 = *(v59 + 48);
      v88 = *(v59 + 40);
      v90 = *(v57 - 1);

      v61 = v58;

      v62 = [v61 entityIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = [v61 phraseTemplates];
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
      Dictionary.init(dictionaryLiteral:)();
      sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
      Dictionary.init(dictionaryLiteral:)();
      type metadata accessor for LNPlatformName(0);
      sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
      sub_100018448();
      sub_10009F250(&qword_100198940, v64);
      Dictionary.init(dictionaryLiteral:)();
      v65 = objc_allocWithZone(LNAssistantIntentMetadata);
      v2 = v89;
      sub_10009D608();
      v67 = v66;
      v68 = sub_100099210(v88, v60, v66, _swiftEmptyArrayStorage, v82, v91);
      v55 = v84 + 1;
      sub_10006E5E0(v68);

      v57 += 3;
      v4 = v81;
    }
  }
}

uint64_t sub_1000981C4()
{
  sub_10002EB80(&qword_10019B3B0, &unk_100150190);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10014BC40;
  *(v0 + 32) = String.subscript.getter();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  result = String.subscript.getter();
  *(v0 + 64) = result;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  qword_10019DE90 = v0;
  return result;
}

uint64_t sub_1000982A0()
{
  v0 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100037CD8(v0, qword_10019DE98);
  sub_10000347C(v0, qword_10019DE98);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380);
  return Regex.init<A>(_:)();
}

uint64_t sub_100098378@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v47 = type metadata accessor for _RegexFactory();
  v12 = *(v47 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v47);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10002EB80(&qword_1001996C0, &unk_1001501D0);
  v48 = *(v46 - 8);
  v16 = *(v48 + 64);
  __chkstk_darwin(v46);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = &v32 - v20;
  v51 = 31524;
  v52 = 0xE200000000000000;
  v37 = sub_100056540();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  sub_1000988AC(v7);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0);
  v33 = v11;
  v34 = v1;
  _RegexFactory.capture<A, B>(_:)();
  v40 = *(v2 + 8);
  v41 = v2 + 8;
  v40(v7, v1);
  v21 = *(v12 + 8);
  v38 = v12 + 8;
  v39 = v21;
  v21(v15, v47);
  Capture.init(_:)();
  sub_100013EBC(&qword_1001996D8, &qword_1001996C0, &unk_1001501D0);
  v22 = v35;
  v23 = v46;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v24 = *(v48 + 8);
  v48 += 8;
  v36 = v24;
  v24(v18, v23);
  v49 = 125;
  v50 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v49 = v53;
  v50 = v54;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v25 = v42;
  v26 = v34;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v27 = v33;
  v28 = v22;
  v29 = v46;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v30 = v40;
  v40(v25, v26);
  v39(v15, v47);
  sub_1000976AC();

  (*(v43 + 8))(v27, v44);
  v30(v7, v26);
  return v36(v28, v29);
}

uint64_t sub_1000988AC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for RegexRepetitionBehavior();
  v36 = v1;
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v43 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _RegexFactory();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002EB80(&qword_1001996E0, &unk_10014E3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v37 = type metadata accessor for CharacterClass();
  v40 = *(v37 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v37);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002EB80(&qword_1001996E8, &unk_1001501E0);
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v36 - v26;
  __chkstk_darwin(v28);
  v30 = &v36 - v29;
  static RegexComponent<>.word.getter();
  sub_1000075C4(v11, 1, 1, v1);
  makeFactory()();
  sub_10009F250(&qword_1001996F0, &type metadata accessor for CharacterClass);
  v31 = v37;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v41 + 8))(v7, v42);
  sub_100003E9C(v11, &qword_1001996E0, &unk_10014E3B0);
  (*(v40 + 8))(v14, v31);
  OneOrMore.init(_:)();
  v32 = v38;
  OneOrMore.regex.getter();
  (*(v39 + 8))(v19, v32);
  v33 = v43;
  static RegexRepetitionBehavior.reluctant.getter();
  Regex.repetitionBehavior(_:)();
  (*(v44 + 8))(v33, v36);
  v34 = *(v21 + 8);
  v34(v24, v20);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v34(v27, v20);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v34)(v30, v20);
}

void sub_100098DD0()
{
  v1 = _s7BuilderVMa();
  v2 = (v0 + *(v1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_1000034B4(v2, v3);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014CE90;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v8;
  v9 = *(v4 + 24);

  v55 = v9(v5, v3, v4);
  v11 = v10;

  v12 = v2[3];
  v13 = v2[4];
  sub_1000034B4(v2, v12);
  v14 = (*(v13 + 32))(v7, v8, v12, v13);
  v15 = *(v14 + 16);
  v16 = (v14 + 48);
  v17 = v15 + 1;
  do
  {
    if (!--v17)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10014CE90;
      *(v36 + 32) = v55;
      *(v36 + 40) = v11;
      if (v15)
      {
        sub_100011438(0, v15, 0);
        v37 = (v14 + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          v40 = _swiftEmptyArrayStorage[2];
          v41 = _swiftEmptyArrayStorage[3];

          if (v40 >= v41 >> 1)
          {
            sub_100011438(v41 > 1, v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v42 = &_swiftEmptyArrayStorage[2 * v40];
          v42[4] = v39;
          v42[5] = v38;
          v37 += 3;
          --v15;
        }

        while (v15);
      }

      goto LABEL_33;
    }

    v18 = v16 + 24;
    v19 = *v16;
    v16 += 24;
  }

  while (v19 != 1);
  v52 = v11;
  v21 = *(v18 - 5);
  v20 = *(v18 - 4);

  v22 = 0;
  v53 = _swiftEmptyArrayStorage;
LABEL_5:
  v23 = 24 * v22;
  while (v15 != v22)
  {
    if (v22 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v14 + v23 + 32);
    v25 = *(v14 + v23 + 40);
    if (v24 != v21 || v25 != v20)
    {
      v27 = *(v14 + v23 + 48);
      sub_100024754();
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v28 = v53;
        v56 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = v53[2];
          sub_1000B34CC();
          v28 = v53;
        }

        v31 = v28[2];
        v30 = v28[3];
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_100005150(v30);
          v54 = v34;
          v51 = v35;
          sub_1000B34CC();
          v32 = v54;
          v31 = v51;
          v28 = v56;
        }

        ++v22;
        v28[2] = v32;
        v53 = v28;
        v33 = &v28[3 * v31];
        v33[4] = v24;
        v33[5] = v25;
        *(v33 + 48) = v27;
        goto LABEL_5;
      }
    }

    v23 += 24;
    ++v22;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10014BC40;
  *(v43 + 32) = v21;
  *(v43 + 40) = v20;
  *(v43 + 48) = v55;
  *(v43 + 56) = v52;
  v44 = v53[2];
  if (v44)
  {
    sub_100011438(0, v44, 0);
    v45 = v53 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];

      if (v49 >= v48 >> 1)
      {
        sub_100011438(v48 > 1, v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = v47;
      v50[5] = v46;
      v45 += 3;
      --v44;
    }

    while (v44);
  }

LABEL_33:
  sub_10006E3AC(_swiftEmptyArrayStorage);
}

uint64_t sub_100099210(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a2;
  v7 = v6;
  v69 = a6;
  v70 = a5;
  v71 = a4;
  v72 = a1;
  v9 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100006724();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for URL();
  v18 = sub_100002944(v17);
  v66 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100002958();
  v24 = v23 - v22;
  v25 = [a3 phraseTemplates];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = [a3 intentIdentifier];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v28;

  if (!sub_1000232F4(v26))
  {
    v33 = sub_10001AB24();
    sub_1000075C4(v33, v34, 1, v17);
LABEL_9:
    sub_100003E9C(v16, &qword_1001990C0, &unk_10014E200);
    goto LABEL_10;
  }

  sub_10003818C(0, (v26 & 0xC000000000000001) == 0, v26);
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v29 = *(v26 + 32);
  }

  v30 = v29;
  v31 = [v29 bundleURL];

  if (v31)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_1000075C4(v13, v32, 1, v17);
  sub_10009EDDC(v13, v16);
  v35 = sub_10001AB24();
  if (sub_1000032C4(v35, v36, v17) == 1)
  {
    goto LABEL_9;
  }

  v51 = v66;
  (*(v66 + 32))(v24, v16, v17);
  v52 = objc_opt_self();
  URL._bridgeToObjectiveC()(v53);
  v55 = v54;
  v56 = [v52 ln_uniqueBundleWithURL:v54];

  if (v56)
  {
    v57 = _s7BuilderVMa();
    v58 = v51;
    v37 = sub_1000BB650(0xD000000000000010, 0x80000001001565B0, *(v7 + *(v57 + 24)), *(v7 + *(v57 + 24) + 8));

    v59 = *(v58 + 8);
    v60 = sub_10001E110();
    v61(v60);
    goto LABEL_11;
  }

  v62 = *(v51 + 8);
  v63 = sub_10001E110();
  v64(v63);
LABEL_10:
  v37 = 0;
LABEL_11:
  sub_100099D04();
  v39 = v38;

  v40 = [a3 parameterValues];
  sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
  v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = sub_10009A6B4(v41, v37, v69);

  v43 = sub_10009FDF8(a3);
  v74 = &_swiftEmptySetSingleton;
  __chkstk_darwin(v43);
  v44 = v68;
  *(&v65 - 12) = v67;
  *(&v65 - 11) = v44;
  v46 = v70;
  v45 = v71;
  *(&v65 - 10) = v7;
  *(&v65 - 9) = v46;
  *(&v65 - 8) = v42;
  *(&v65 - 56) = 0;
  *(&v65 - 6) = v45;
  *(&v65 - 5) = v47;
  *(&v65 - 4) = &v74;
  v48 = v73;
  *(&v65 - 3) = v72;
  *(&v65 - 2) = v48;
  *(&v65 - 1) = a3;
  v49 = sub_10006D7E0(_swiftEmptyArrayStorage, sub_10009F0C8, (&v65 - 14), v39);

  return v49;
}

void sub_1000996B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100006724();
  v79 = v8 - v9;
  __chkstk_darwin(v10);
  v80 = &v71 - v11;
  v12 = type metadata accessor for URL();
  v13 = sub_100002944(v12);
  v78 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100002958();
  v19 = v18 - v17;
  v20 = *(a2 + 16);
  v21 = [v20 intentIdentifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = _s7BuilderVMa();
  v26 = sub_1000034B4((a3 + *(v25 + 40)), *(a3 + *(v25 + 40) + 24));
  v27 = a3 + *(v25 + 20);
  v28 = *(v27 + 48);
  v29 = *v26;
  v30 = *(v27 + 40);
  v82 = v22;
  v31 = v81;
  v32 = sub_100078C8C(v30, v28, v22, v24);
  if (v31)
  {

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000347C(v33, qword_10019E008);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v82;
    if (v36)
    {
      v38 = sub_100007764();
      v39 = swift_slowAlloc();
      v83 = v39;
      *v38 = 136315138;
      v40 = sub_100004C50(v37, v24, &v83);

      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s does not have any metadata, skipping", v38, 0xCu);
      sub_1000034F8(v39);
      sub_1000036AC();
      sub_100004D70();
    }

    else
    {
    }

    return;
  }

  v72 = v25;
  v73 = v19;
  v76 = a3;
  v77 = v32;
  v81 = 0;
  v75 = v20;
  v41 = [v20 phrases];
  v74 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1000232F4(v42))
  {
    sub_10003818C(0, (v42 & 0xC000000000000001) == 0, v42);
    v43 = v12;
    if ((v42 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v44 = *(v42 + 32);
    }

    v45 = v44;
    v46 = v73;
    v47 = v79;

    v48 = [v45 bundleURL];

    v49 = v82;
    if (v48)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v54 = v78;
    sub_1000075C4(v47, v50, 1, v43);
    v51 = v80;
    sub_10009EDDC(v47, v80);
    v55 = sub_10001AB24();
    if (sub_1000032C4(v55, v56, v43) != 1)
    {
      (*(v54 + 32))(v46, v51, v43);
      v58 = objc_opt_self();
      URL._bridgeToObjectiveC()(v59);
      v61 = v60;
      v62 = [v58 ln_uniqueBundleWithURL:v60];

      v57 = v75;
      if (v62)
      {
        sub_1000BB650(0xD000000000000010, 0x80000001001565B0, *(v76 + *(v72 + 24)), *(v76 + *(v72 + 24) + 8));

        (*(v54 + 8))(v73, v43);
      }

      else
      {
        (*(v54 + 8))(v46, v43);
      }

      goto LABEL_19;
    }
  }

  else
  {

    v51 = v80;
    v52 = sub_10001AB24();
    sub_1000075C4(v52, v53, 1, v12);
    v49 = v82;
  }

  sub_100003E9C(v51, &qword_1001990C0, &unk_10014E200);
  v57 = v75;
LABEL_19:
  v63 = [v57 phrases];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100099D04();
  v65 = v64;

  v66 = *(v65 + 16);
  if (v66)
  {
    v82 = v65;
    v67 = (v65 + 56);
    do
    {
      v68 = *(v67 - 1);
      v69 = *v67;
      objc_allocWithZone(LNExamplePhraseDescription);

      sub_10009D7B8(4, v49, v24, v68, v69, 0, 0, 0, 0);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v70 >> 1)
      {
        sub_100005150(v70);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v67 += 4;
      --v66;
    }

    while (v66);
  }
}

void sub_100099D04()
{
  sub_100006A04();
  v3 = v2;
  v4 = v1;
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10003818C(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v4 + 32);
    }

    v39 = v6;
    if (!v3 || (v7 = [v6 key], static String._unconditionallyBridgeFromObjectiveC(_:)(), v7, v8 = sub_100024754(), v10 = sub_1000B6334(v8, v9, v3), v6 = , !v10))
    {
      __chkstk_darwin(v6);
      sub_100003710();
      *(v34 - 16) = v0;
      sub_1000C3140(sub_10009EE4C, v35, v4);

      break;
    }

    v40 = v10;

    sub_100004F18();
    sub_10009D9E8(&v40, v11, v12, sub_10009DD50, sub_10009DB8C);

    v4 = v40;
    v13 = *(v40 + 16);
    if (!v13)
    {
LABEL_20:

      break;
    }

    v42[0] = _swiftEmptyArrayStorage;
    v0 = v42;
    sub_1000B3558(0, v13, 0);
    v14 = 0;
    v15 = v42[0];
    v37 = v4;
    v38 = *(v4 + 16);
    v3 = (v4 + 40);
    v36 = v13;
    while (v38 != v14)
    {
      if (v14 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v16 = *(v3 - 1);
      v17 = *v3;
      if (v14)
      {
        v40 = 91;
        v41 = 0xE100000000000000;

        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        v19._countAndFlagsBits = 93;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);
        v21 = v40;
        v20 = v41;
      }

      else
      {
        v22 = *v3;

        v21 = 0;
        v20 = 0xE000000000000000;
      }

      v23 = [v39 key];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v40 = v24;
      v41 = v26;

      v0 = &v40;
      v27._countAndFlagsBits = v21;
      v27._object = v20;
      String.append(_:)(v27);

      v28 = v40;
      v29 = v41;
      v42[0] = v15;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        v33 = sub_100005150(v30);
        v0 = v42;
        sub_1000B3558(v33, v31 + 1, 1);
        v15 = v42[0];
      }

      *(v15 + 16) = v31 + 1;
      v32 = (v15 + 32 * v31);
      v32[4] = v28;
      v32[5] = v29;
      v32[6] = v16;
      v32[7] = v17;
      ++v14;
      v3 += 2;
      v4 = v37;
      if (v36 == v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  sub_1000069EC();
}

void sub_10009A044()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v64 = sub_10002EB80(&qword_100199678, &unk_1001501A0);
  v4 = sub_100002944(v64);
  v60 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100006724();
  v62 = v8 - v9;
  __chkstk_darwin(v10);
  v63 = v55 - v11;
  v65 = v3;
  v66 = v1;
  if (qword_1001982A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v12 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_10000347C(v12, qword_10019DE98);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100056498();
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380);
  v13 = BidirectionalCollection<>.matches<A, B>(of:)();
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  v59 = v13;
  if (v14)
  {
    v73 = _swiftEmptyArrayStorage;
    sub_1000B3578();
    v15 = v73;
    v16 = *(v60 + 16);
    v17 = v13 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v57 = *(v60 + 72);
    v58 = v16;
    v61 = v60 + 16;
    v56 = (v60 + 8);
    do
    {
      v18 = v62;
      v19 = v64;
      v58(v62, v17, v64);
      Regex.Match.output.getter();
      (*v56)(v18, v19);
      v20 = v65;
      v21 = v66;
      v23 = v67;
      v22 = v68;

      v73 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_100005150(v24);
        sub_1000B3578();
        v15 = v73;
      }

      v15[2] = v25 + 1;
      v26 = &v15[4 * v25];
      v26[4] = v20;
      v26[5] = v21;
      v26[6] = v23;
      v26[7] = v22;
      v17 += v57;
      --v14;
    }

    while (v14);
    v13 = v59;
  }

  v65 = v15;

  sub_100013528();
  sub_10009D9E8(&v65, v27, v28, sub_10009E258, sub_10009DC54);

  sub_10002EB80(&qword_1001996A0, &unk_10014E390);
  sub_100013EBC(&qword_1001996A8, &qword_1001996A0, &unk_10014E390);
  sub_1000564EC();
  v55[2] = Sequence<>.joined(separator:)();
  v55[1] = v29;

  v58 = *(v13 + 16);
  if (!v58)
  {
LABEL_20:

    sub_1000069EC();
    return;
  }

  v30 = 0;
  v57 = v13 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v56 = (v60 + 16);
  v31 = _swiftEmptyDictionarySingleton;
  v55[3] = v60 + 8;
  while (1)
  {
    if (v30 >= *(v13 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    (*(v60 + 16))(v63, v57 + *(v60 + 72) * v30, v64);
    Regex.Match.output.getter();

    v33 = v69;
    v32 = v70;
    v34 = v71;
    v35 = v72;
    v61 = Regex.Match.range.getter();
    v62 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v31;
    sub_10001E110();
    v38 = sub_10004592C();
    v40 = v31[2];
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_22;
    }

    v43 = v38;
    v44 = v39;
    sub_10002EB80(&qword_1001996B8, &unk_1001501C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42))
    {
      break;
    }

LABEL_15:
    if (v44)
    {

      v31 = v65;
      v47 = sub_1000077B8();
      v48(v47);
    }

    else
    {
      v31 = v65;
      sub_10000681C(&v65[v43 >> 6]);
      v49 = (v31[6] + 32 * v43);
      *v49 = v33;
      v49[1] = v32;
      v49[2] = v34;
      v49[3] = v35;
      v50 = sub_1000077B8();
      v51(v50);
      v52 = v31[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_23;
      }

      v31[2] = v54;
    }

    ++v30;
    v13 = v59;
    if (v58 == v30)
    {
      goto LABEL_20;
    }
  }

  sub_10001E110();
  v45 = sub_10004592C();
  if ((v44 & 1) == (v46 & 1))
  {
    v43 = v45;
    goto LABEL_15;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void sub_10009A5E4(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = (a2 + *(_s7BuilderVMa() + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 localizedStringForLocaleIdentifier:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v4 key];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a3 = v14;
  a3[1] = v16;
  a3[2] = v10;
  a3[3] = v12;
}

uint64_t sub_10009A6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a2 && (v4 = a2, *(a2 + 16)))
  {
    v6 = a1 + 64;
    v5 = *(a1 + 64);
    v7 = *(a1 + 32);
    sub_100002BE8();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;

    v13 = 0;
    v14 = 0;
LABEL_4:
    if (v10)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_91;
      }

      if (v15 >= v12)
      {
        break;
      }

      v10 = *(v6 + 8 * v15);
      ++v14;
      if (v10)
      {
        v14 = v15;
LABEL_9:
        v16 = __clz(__rbit64(v10)) | (v14 << 6);
        v17 = (*(v3 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v3 + 56) + 8 * v16);
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 &= v10 - 1;
        if (v21)
        {
          v131 = v3;
          v150 = v20 & 0xC000000000000001;
          v138 = v20 & 0xFFFFFFFFFFFFFF8;
          v141 = v19;
          v142 = v18;
          v146 = v21;

          v22 = 0;
          v136 = v4;
          v148 = v20;
          while (1)
          {
            if (v150)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v22 >= *(v138 + 16))
              {
                goto LABEL_99;
              }

              v23 = *(v20 + 8 * v22 + 32);
            }

            if (__OFADD__(v22, 1))
            {
              goto LABEL_95;
            }

            v152 = v22 + 1;
            v155 = v23;
            v24 = [v23 key];
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            if (*(v4 + 16))
            {
              v28 = sub_10000C2A0(v25, v27);
              v30 = v29;

              if (v30)
              {
                v144 = *(*(v4 + 56) + 8 * v28);

                sub_10002CCE0(v13);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_10000C2A0(v141, v142);
                sub_100003B6C();
                v36 = v34 + v35;
                if (__OFADD__(v34, v35))
                {
                  goto LABEL_100;
                }

                v37 = v32;
                v38 = v33;
                sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v36))
                {
                  v39 = sub_10000C2A0(v141, v142);
                  v41 = v144;
                  if ((v38 & 1) != (v40 & 1))
                  {
                    goto LABEL_106;
                  }

                  v37 = v39;
                  if (v38)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v41 = v144;
                  if (v38)
                  {
LABEL_29:
                    v47 = _swiftEmptyDictionarySingleton[7];
                    v48 = *(v41 + 16);
                    v49 = *(v47 + 8 * v37);
                    v50 = *(v49 + 16);
                    v51 = v50 + v48;
                    if (__OFADD__(v50, v48))
                    {
                      goto LABEL_101;
                    }

                    v52 = *(v47 + 8 * v37);
                    v53 = swift_isUniquelyReferenced_nonNull_native();
                    *(v47 + 8 * v37) = v49;
                    if (!v53 || (v54 = *(v49 + 24) >> 1, v54 < v51))
                    {
                      if (*(v49 + 16) > v51)
                      {
                        v55 = *(v49 + 16);
                      }

                      sub_100013A60();
                      v49 = v56;
                      *(v47 + 8 * v37) = v56;
                      v54 = *(v56 + 24) >> 1;
                    }

                    if (*(v144 + 16))
                    {
                      if (v54 - *(v49 + 16) < v48)
                      {
                        goto LABEL_103;
                      }

                      swift_arrayInitWithCopy();

                      if (v48)
                      {
                        v57 = *(v49 + 16);
                        v45 = __OFADD__(v57, v48);
                        v58 = v57 + v48;
                        if (v45)
                        {
                          goto LABEL_105;
                        }

                        *(v49 + 16) = v58;
                      }
                    }

                    else
                    {

                      if (v48)
                      {
                        goto LABEL_102;
                      }
                    }

                    *(v47 + 8 * v37) = v49;
                    v13 = sub_10009F544;
                    v4 = v136;
                    goto LABEL_42;
                  }
                }

                sub_10000681C(&_swiftEmptyDictionarySingleton[v37 >> 6]);
                v43 = (v42[6] + 16 * v37);
                *v43 = v141;
                v43[1] = v142;
                *(v42[7] + 8 * v37) = _swiftEmptyArrayStorage;
                v44 = v42[2];
                v45 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (v45)
                {
                  goto LABEL_104;
                }

                v42[2] = v46;

                goto LABEL_29;
              }
            }

            else
            {
            }

LABEL_42:

            ++v22;
            v20 = v148;
            if (v152 == v146)
            {

              v3 = v131;
              goto LABEL_4;
            }
          }
        }

        goto LABEL_4;
      }
    }

    v68 = _swiftEmptyDictionarySingleton;
LABEL_89:

    sub_10002CCE0(v13);
    return v68;
  }

  else
  {
    v60 = a1 + 64;
    v59 = *(a1 + 64);
    v61 = *(a1 + 32);
    sub_100002BE8();
    v64 = v63 & v62;
    v66 = (v65 + 63) >> 6;

    v13 = 0;
    v67 = 0;
    v68 = _swiftEmptyDictionarySingleton;
LABEL_46:
    while (v64)
    {
LABEL_51:
      v70 = __clz(__rbit64(v64)) | (v67 << 6);
      v71 = (*(v3 + 48) + 16 * v70);
      v72 = v71[1];
      v149 = *v71;
      v73 = *(*(v3 + 56) + 8 * v70);
      if (v73 >> 62)
      {
        v74 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 &= v64 - 1;
      if (v74)
      {
        v129 = v66;
        v130 = v60;
        v132 = v3;
        v139 = v73 & 0xC000000000000001;
        v133 = v73 & 0xFFFFFFFFFFFFFF8;
        v134 = v74;

        v75 = 0;
        v135 = v73;
        v137 = v72;
        while (1)
        {
          if (v139)
          {
            v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v75 >= *(v133 + 16))
            {
              goto LABEL_97;
            }

            v76 = *(v73 + 8 * v75 + 32);
          }

          v77 = v76;
          if (__OFADD__(v75, 1))
          {
            goto LABEL_92;
          }

          v156 = v68;
          v78 = [v76 key];
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = *a3;
          v145 = v77;
          v147 = v75 + 1;
          if (*(*a3 + 16) && (v83 = sub_100012AC4(), (v84 & 1) != 0))
          {
            v85 = (v82[7] + 16 * v83);
            v151 = v85[1];
            v153 = *v85;

            v68 = v156;
          }

          else
          {
            v143 = v13;
            v86 = (v140 + *(_s7BuilderVMa() + 24));
            v87 = *v86;
            v88 = v86[1];
            v89 = String._bridgeToObjectiveC()();
            v90 = [v77 localizedStringForLocaleIdentifier:v89];

            v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;

            v151 = v92;

            v93 = *a3;
            swift_isUniquelyReferenced_nonNull_native();
            v157 = *a3;
            sub_100012AC4();
            sub_100003B6C();
            if (__OFADD__(v96, v97))
            {
              goto LABEL_94;
            }

            v98 = v94;
            v99 = v95;
            sub_10002EB80(&qword_100199670, &unk_10014E370);
            if (sub_100012750())
            {
              sub_100012AC4();
              sub_10009F580();
              if (!v101)
              {
                goto LABEL_106;
              }

              v98 = v100;
            }

            if (v99)
            {

              v102 = v157;
              v103 = (v157[7] + 16 * v98);
              v104 = v103[1];
              *v103 = v153;
              v103[1] = v151;
            }

            else
            {
              v102 = v157;
              sub_10000681C(&v157[v98 >> 6]);
              v105 = (v157[6] + 16 * v98);
              *v105 = v79;
              v105[1] = v81;
              v106 = (v157[7] + 16 * v98);
              *v106 = v153;
              v106[1] = v151;
              v107 = v157[2];
              v45 = __OFADD__(v107, 1);
              v108 = v107 + 1;
              if (v45)
              {
                goto LABEL_98;
              }

              v157[2] = v108;
            }

            v68 = v156;
            *a3 = v102;
            v13 = v143;
          }

          sub_10002CCE0(v13);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100012AC4();
          sub_100003B6C();
          if (__OFADD__(v111, v112))
          {
            goto LABEL_93;
          }

          v113 = v109;
          v114 = v110;
          sub_10002EB80(&qword_10019AFD0, &qword_1001501F0);
          if (sub_100012750())
          {
            sub_100012AC4();
            sub_10009F580();
            if (!v101)
            {
              goto LABEL_106;
            }

            v113 = v115;
          }

          if ((v114 & 1) == 0)
          {
            sub_10000681C(&v68[v113 >> 6]);
            v116 = (v68[6] + 16 * v113);
            *v116 = v149;
            v116[1] = v137;
            *(v68[7] + 8 * v113) = _swiftEmptyArrayStorage;
            v117 = v68[2];
            v45 = __OFADD__(v117, 1);
            v118 = v117 + 1;
            if (v45)
            {
              goto LABEL_96;
            }

            v68[2] = v118;
          }

          v119 = v68[7];
          v120 = *(v119 + 8 * v113);
          v121 = swift_isUniquelyReferenced_nonNull_native();
          *(v119 + 8 * v113) = v120;
          if ((v121 & 1) == 0)
          {
            v125 = *(v120 + 16);
            sub_100004E28();
            sub_100013A60();
            v120 = v126;
            *(v119 + 8 * v113) = v126;
          }

          v13 = *(v120 + 16);
          v122 = *(v120 + 24);
          if (v13 >= v122 >> 1)
          {
            sub_100005150(v122);
            sub_100013A60();
            *(v119 + 8 * v113) = v127;
          }

          v123 = *(v119 + 8 * v113);
          *(v123 + 16) = v13 + 1;
          v124 = v123 + 16 * v13;
          *(v124 + 32) = v153;
          *(v124 + 40) = v151;
          ++v75;
          sub_100011858();
          v73 = v135;
          if (v147 == v134)
          {

            sub_100011858();
            v60 = v130;
            v3 = v132;
            v66 = v129;
            goto LABEL_46;
          }
        }
      }
    }

    while (1)
    {
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v69 >= v66)
      {
        goto LABEL_89;
      }

      v64 = *(v60 + 8 * v69);
      ++v67;
      if (v64)
      {
        v67 = v69;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_91:
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
    __break(1u);
LABEL_106:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009AF54(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, void *a14)
{
  v70 = a2[1];
  v71 = *a2;
  v79 = a2[3];
  v80 = a2[2];
  sub_10009A044();
  v73 = v17;
  result = _s7BuilderVMa();
  v20 = 0;
  v21 = *(a5 + *(result + 36));
  v22 = *(v21 + 16);
  v23 = _swiftEmptyArrayStorage;
LABEL_2:
  v24 = (v21 + 32 + (v20 << 6));
  while (v22 != v20)
  {
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v26 = v24[1];
    v25 = v24[2];
    v27 = *v24;
    *&v85[10] = *(v24 + 42);
    v84 = v26;
    *v85 = v25;
    v83 = v27;
    v28 = v27 == a3 && *(&v27 + 1) == a4;
    if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      sub_10009F108(&v83, v86);
      result = swift_isUniquelyReferenced_nonNull_native();
      v87 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1000B37A4(0, v23[2] + 1, 1);
        v23 = v87;
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_1000B37A4((v29 > 1), v30 + 1, 1);
        v23 = v87;
      }

      ++v20;
      v23[2] = v30 + 1;
      v31 = &v23[8 * v30];
      v32 = v83;
      v33 = v84;
      v34 = *v85;
      *(v31 + 74) = *&v85[10];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
      goto LABEL_2;
    }

    v24 += 4;
    ++v20;
  }

  v35 = sub_10009B3E8(a3, a4, v71, v70, v80, v79, v73, v19, v66, v67, v68, a6, a7, v23, a8 & 1, a9, a10);
  if (v81)
  {
  }

  v36 = v35;

  v37 = 0;
  v38 = v36 + 64;
  v39 = 1 << *(v36 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v36 + 64);
  v42 = (v39 + 63) >> 6;
  v43 = a11;
  v75 = v42;
  v77 = v36;
  if (v41)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v44 >= v42)
    {
    }

    v41 = *(v38 + 8 * v44);
    ++v37;
    if (v41)
    {
      v37 = v44;
      do
      {
LABEL_26:
        v45 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v46 = (v37 << 10) | (16 * v45);
        v47 = *(v36 + 56);
        v48 = (*(v36 + 48) + v46);
        v50 = *v48;
        v49 = v48[1];
        v51 = (v47 + v46);
        v78 = *v51;
        v52 = *v43;
        v82 = v51[1];
        if (*(*v43 + 16))
        {
          v53 = *(v52 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v54 = Hasher._finalize()();
          v55 = ~(-1 << *(v52 + 32));
          while (1)
          {
            v56 = v54 & v55;
            if (((*(v52 + 56 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v55)) & 1) == 0)
            {
              break;
            }

            v57 = (*(v52 + 48) + 16 * v56);
            if (*v57 != v50 || v57[1] != v49)
            {
              v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v54 = v56 + 1;
              if ((v59 & 1) == 0)
              {
                continue;
              }
            }

            v43 = a11;
            goto LABEL_38;
          }

          v43 = a11;
        }

        else
        {
        }

        sub_100027678();

        v60 = [a14 intentIdentifier];
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = objc_allocWithZone(LNExamplePhraseDescription);

        sub_10009D7B8(0, v61, v63, v50, v49, v78, v82, v80, v65);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_1000FCDF4(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
        result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_38:
        v42 = v75;
        v36 = v77;
      }

      while (v41);
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10009B3E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17)
{
  v422 = a6;
  v415 = a5;
  v395 = a3;
  *&v418 = a1;
  *(&v418 + 1) = a2;
  v398 = a17;
  v412 = a16;
  LODWORD(v427) = a15;
  v428 = a13;
  v414 = a12;
  v419 = String.subscript.getter();
  v420 = a7;
  v416 = v21;
  v417 = v20;
  v396 = a7[2];
  v397 = v22;
  v23 = (a14 + 32);
  v409 = a4;
  v410 = _swiftEmptyDictionarySingleton;
  v24 = *(a14 + 16);
  if (!v24)
  {
LABEL_21:
    v64 = v422;
    if (v427)
    {
      if (!v396)
      {

        if (qword_1001982F0 != -1)
        {
LABEL_262:
          sub_100002A48();
          swift_once();
        }

        v270 = type metadata accessor for Logger();
        sub_10000347C(v270, qword_10019E008);

        v67 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (!sub_100012638())
        {
          goto LABEL_142;
        }

        sub_100007764();
        v271 = sub_100012074();
        sub_1000248B4(v271);
        sub_100019D54(4.8149e-34);
        *(a7 + 4) = sub_100004C50(v415, v64, v272);
        goto LABEL_141;
      }

      sub_1000A0D08(v419, v417, v416, v397, v420);
      if (v65)
      {

        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_10000347C(v66, qword_10019E008);

        v67 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (!sub_100012638())
        {
          goto LABEL_142;
        }

        sub_100007764();
        v68 = sub_100012074();
        sub_1000248B4(v68);
        sub_100019D54(4.8149e-34);
        *(a7 + 4) = sub_100004C50(v415, v422, v69);
LABEL_141:
        sub_100006AA4(&_mh_execute_header, v70, v71, v72);
        sub_1000034F8(v17);
        sub_100004D70();
        sub_1000036AC();
LABEL_142:

        return Dictionary.init(dictionaryLiteral:)();
      }
    }

    if (v396 <= 5)
    {
      v80 = *(v428 + 64);
      v79 = v428 + 64;
      v81 = *(v428 + 32);
      sub_100002BE8();
      v84 = v83 & v82;
      v86 = (v85 + 63) >> 6;

      v87 = 0;
      v88 = _swiftEmptyDictionarySingleton;
      *&v423 = v428 + 64;
      v421 = v86;
      if (v84)
      {
        goto LABEL_38;
      }

      while (1)
      {
LABEL_34:
        v89 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        if (v89 >= v86)
        {
          break;
        }

        v84 = *(v79 + 8 * v89);
        ++v87;
        if (v84)
        {
          v87 = v89;
          while (1)
          {
LABEL_38:
            v90 = __clz(__rbit64(v84)) | (v87 << 6);
            v91 = (*(v428 + 48) + 16 * v90);
            v92 = *v91;
            v93 = v91[1];
            v17 = *(*(v428 + 56) + 8 * v90);
            if ((v93 & 0x2000000000000000) == 0)
            {
              v94 = *v91;
            }

            v429 = v93;
            a7 = String.subscript.getter();
            v96 = v95;
            v98 = v97;
            v100 = v99;
            v430 = v17;

            LODWORD(v424) = swift_isUniquelyReferenced_nonNull_native();
            *&v437 = v88;
            v426 = v96;
            v427 = a7;
            v425 = v98;
            v101 = v100;
            sub_10004592C();
            sub_100003B6C();
            a4 = v104 + v105;
            if (__OFADD__(v104, v105))
            {
              goto LABEL_253;
            }

            v17 = v102;
            v106 = v103;
            sub_10002EB80(&qword_10019A0D8, &qword_10014EE98);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v424, a4))
            {
              v107 = sub_10004592C();
              if ((v106 & 1) != (v108 & 1))
              {
                goto LABEL_265;
              }

              v17 = v107;
            }

            if (v106)
            {

              v88 = v437;
              v109 = *(v437 + 56);
              v110 = *(v109 + 8 * v17);
              *(v109 + 8 * v17) = v430;
            }

            else
            {
              v111 = v437;
              sub_10000681C(v437 + 8 * (v17 >> 6));
              v112 = (v111[6] + 32 * v17);
              v113 = v426;
              *v112 = v427;
              v112[1] = v113;
              v112[2] = v425;
              v112[3] = v101;
              *(v111[7] + 8 * v17) = v430;

              v114 = v111[2];
              v57 = __OFADD__(v114, 1);
              v115 = v114 + 1;
              if (v57)
              {
                goto LABEL_254;
              }

              v88 = v111;
              v111[2] = v115;
            }

            v84 &= v84 - 1;
            v79 = v423;
            v86 = v421;
            if (!v84)
            {
              goto LABEL_34;
            }
          }
        }
      }

      v116 = 0;
      v117 = v414[2];
      v17 = (v414 + 5);
      v118 = _swiftEmptyArrayStorage;
LABEL_51:
      v119 = (v17 + 16 * v116);
      while (v117 != v116)
      {
        if (v116 >= v117)
        {
          goto LABEL_236;
        }

        v120 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_237;
        }

        v121 = *(v119 - 1);
        a7 = *v119;
        v122 = HIBYTE(*v119) & 0xFLL;
        if ((*v119 & 0x2000000000000000) == 0)
        {
          v122 = v121 & 0xFFFFFFFFFFFFLL;
        }

        ++v116;
        v119 += 2;
        if (v122)
        {

          v430 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = v118[2];
            sub_100004E28();
            sub_100013A60();
            v118 = v126;
          }

          a4 = v118[2];
          v123 = v118[3];
          if (a4 >= v123 >> 1)
          {
            sub_100005150(v123);
            sub_100013A60();
            v118 = v127;
          }

          v118[2] = a4 + 1;
          v124 = &v118[2 * a4];
          v124[4] = v121;
          v124[5] = a7;
          v116 = v120;
          v17 = v430;
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v437 = v88;
      sub_100069490(v118, v419, v417, v416, v397, isUniquelyReferenced_nonNull_native);
      v392 = v437;
      sub_10002EB80(&qword_10019A4F0, &unk_100150160);
      inited = swift_initStackObject();
      v423 = xmmword_10014CE90;
      *(inited + 16) = xmmword_10014CE90;
      v130 = v422;
      *(inited + 32) = v415;
      *(inited + 40) = v130;
      v131 = *(&v418 + 1);
      *(inited + 48) = v418;
      *(inited + 56) = v131;
      v407 = inited;
      *(inited + 64) = _swiftEmptyArrayStorage;

      *&v437 = sub_10006B6A4(v420);
      v132 = v440;
      sub_100055648(&v437);
      a4 = &v437;
      v440 = v132;
      if (v132)
      {

        __break(1u);
        return result;
      }

      v393 = *(v437 + 16);
      if (v393)
      {
        v133 = 0;
        v134 = v437 + 32;
        v17 = 48;
        v400 = v437 + 32;
        v391[5] = v437;
        while (1)
        {
          v135 = v133;
          (sub_100038190)();
          v394 = v135;
          v136 = (v134 + 48 * v135);
          a7 = *v136;
          v137 = v136[1];
          v138 = v136[2];
          v139 = v136[3];
          v140 = v136[4];
          v424 = v136[5];
          v425 = v140;

          v141 = static String._fromSubstring(_:)();
          v143 = sub_1000B6334(v141, v142, v410);

          v420 = v139;
          v429 = v138;
          v430 = a7;
          v426 = v137;
          if (v143)
          {
            break;
          }

          v209 = v137;
          v210 = v139;
          v211 = sub_1000B6318(a7, v209, v138, v139, v392);
          if (!v211)
          {
            goto LABEL_231;
          }

          v212 = v211;
          v213 = 0;
          v214 = *(v407 + 16);
          v404 = (v407 + 32);
          v405 = v214;
          v403 = (v211 + 40);
          v215 = _swiftEmptyArrayStorage;
          v402 = v212;
          while (v213 != v405)
          {
            if (v213 >= *(v407 + 16))
            {
              goto LABEL_238;
            }

            v216 = *(v212 + 16);
            if (v216)
            {
              v408 = v215;
              v406 = v213;
              v217 = &v404[5 * v213];
              v218 = v217[1];
              v413 = *v217;
              v219 = v217[3];
              v411 = v217[2];
              v220 = v217[4];
              v432 = _swiftEmptyArrayStorage;
              v415 = v218;

              v428 = v219;

              v414 = v220;

              sub_1000B37C4(0, v216, 0);
              v427 = _swiftEmptyArrayStorage;
              v422 = (v216 - 1);
              for (i = v403; ; i = v419 + 2)
              {
                v223 = *(i - 1);
                v222 = *i;
                v419 = i;

                v224 = v426;
                v225 = static String._fromSubstring(_:)();
                v227 = v226;
                sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
                v228 = swift_allocObject();
                *(v228 + 16) = v423;
                *(v228 + 32) = v223;
                *(v228 + 40) = v222;
                v437 = v418;
                v416 = v225;
                v417 = v223;
                *&v438 = v225;
                *(&v438 + 1) = v227;
                *v439 = v223;
                *&v439[8] = v222;
                *&v439[16] = v228;
                *&v439[24] = 1;
                *&v431 = v413;
                *(&v431 + 1) = v415;
                v433 = v223;
                v434 = v222;
                sub_1000563F8();
                swift_bridgeObjectRetain_n();

                v421 = v227;

                v229 = String.replaceSubrange<A>(_:with:)();
                if (qword_100198298 != -1)
                {
                  sub_100011148();
                  v229 = swift_once();
                }

                v433 = v430;
                v434 = v224;
                v435 = v429;
                v436 = v210;
                __chkstk_darwin(v229);
                sub_100003710();
                *(v230 - 16) = &v433;
                v231 = v440;
                v234 = v440;
                if (sub_10005770C(sub_10009F230, v232, v233))
                {
                  v440 = v231;
                  sub_10009F164(&v437);

                  v236 = v210;
                  v237 = v422;
                }

                else
                {
                  v433 = static String._fromSubstring(_:)();
                  v434 = v238;
                  __chkstk_darwin(v433);
                  sub_100003710();
                  *(v239 - 16) = &v433;
                  v241 = sub_1000574AC(sub_10004BC6C, v240, v412);
                  v440 = v234;

                  if (v241)
                  {
                    sub_10009F164(&v437);
                    v242 = *(&v418 + 1);

                    v243 = v421;
                    v237 = v422;
                  }

                  else
                  {
                    v243 = v421;

                    v242 = *(&v418 + 1);
                    v237 = v422;
                  }

                  v244 = v417;
                  v245 = v416;
                  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
                  v246 = swift_initStackObject();
                  *(v246 + 16) = v423;
                  *(v246 + 32) = v418;
                  *(v246 + 40) = v242;
                  *(v246 + 48) = v245;
                  *(v246 + 56) = v243;
                  *(v246 + 64) = v244;
                  *(v246 + 72) = v222;
                  *(v246 + 80) = v228;
                  *(v246 + 88) = 1;
                  *(v246 + 89) = v241;
                  v433 = v414;

                  sub_10006E450(v246);

                  v235 = v433;
                  v236 = v420;
                }

                v247 = v431;
                v248 = v427;
                v432 = v427;
                v250 = v427[2];
                v249 = v427[3];
                if (v250 >= v249 >> 1)
                {
                  v253 = sub_100005150(v249);
                  sub_1000B37C4(v253, v250 + 1, 1);
                  v248 = v432;
                }

                v248[2] = v250 + 1;
                v251 = &v248[5 * v250];
                *(v251 + 2) = v247;
                v252 = v428;
                v251[6] = v411;
                v251[7] = v252;
                v251[8] = v235;
                if (!v237)
                {
                  break;
                }

                v427 = v248;
                v210 = v236;
                v422 = (v237 - 1);
              }

              a4 = &v437;
              v215 = v408;
              v212 = v402;
              v213 = v406;
            }

            else
            {
              v248 = _swiftEmptyArrayStorage;
            }

            v254 = v248;
            v255 = v248[2];
            a7 = v215[2];
            v17 = a7 + v255;
            if (__OFADD__(a7, v255))
            {
              goto LABEL_239;
            }

            v256 = v215;
            v257 = swift_isUniquelyReferenced_nonNull_native();
            v258 = v256;
            if ((v257 & 1) == 0 || v17 > v256[3] >> 1)
            {
              sub_100070A08();
              v258 = v259;
            }

            v17 = 48;
            ++v213;
            if (v254[2])
            {
              v260 = v258[2];
              v261 = v258[3];
              sub_10000EE98();
              if (v264 < v255)
              {
                goto LABEL_247;
              }

              a7 = &v262[5 * v263];
              v265 = v262;
              sub_10002EB80(&qword_10019B390, &qword_1001505A0);
              swift_arrayInitWithCopy();

              v215 = v265;
              v17 = 48;
              v210 = v420;
              if (v255)
              {
                v266 = v215[2];
                v57 = __OFADD__(v266, v255);
                v267 = v266 + v255;
                if (v57)
                {
                  goto LABEL_251;
                }

                v215[2] = v267;
              }
            }

            else
            {
              v268 = v258;

              v215 = v268;
              v210 = v420;
              if (v255)
              {
                goto LABEL_240;
              }
            }
          }

          v269 = v215;
          v134 = v400;
LABEL_136:

          v407 = v269;
          v133 = v394 + 1;
          if (v394 + 1 == v393)
          {
            goto LABEL_146;
          }
        }

        v144 = v139;
        v145 = 0;
        v401 = *(v407 + 16);
        v399 = v407 + 32;
        v406 = v143 + 32;
        v146 = _swiftEmptyArrayStorage;
        v134 = v400;
        v402 = v143;
        while (1)
        {
LABEL_68:
          if (v145 == v401)
          {
            v269 = v146;
            goto LABEL_136;
          }

          if (v145 >= *(v407 + 16))
          {
            goto LABEL_241;
          }

          v408 = v146;
          v147 = (v399 + 40 * v145);
          v148 = v147[1];
          v419 = *v147;
          v149 = v147[3];
          v417 = v147[2];
          v150 = v147[4];
          v405 = v145 + 1;
          a7 = *(v143 + 16);
          v421 = v148;

          v428 = v149;

          v422 = v150;

          v151 = 0;
          v152 = _swiftEmptyArrayStorage;
LABEL_71:
          v153 = (v406 + (v151 << 6));
          while (a7 != v151)
          {
            if (v151 >= a7)
            {
              __break(1u);
LABEL_227:
              __break(1u);
              goto LABEL_228;
            }

            v154 = *v153;
            v155 = v153[1];
            v156 = v153[2];
            *&v439[10] = *(v153 + 42);
            v438 = v155;
            *v439 = v156;
            v437 = v154;
            if (__OFADD__(v151, 1))
            {
              goto LABEL_227;
            }

            v157 = *(*&v439[16] + 16);
            if (v157)
            {
              v403 = (v151 + 1);
              v404 = a7;
              v158 = sub_100009A34();
              v160 = v159;
              sub_10009F108(v158, v161);
              v416 = sub_1000563F8();
              v411 = v160;
              v162 = (v160 + 40);
              v163 = v440;
              v164 = v144;
              do
              {
                v427 = v152;
                v165 = *(v162 - 1);
                v166 = *v162;
                *&v431 = v419;
                *(&v431 + 1) = v421;
                v433 = v165;
                v434 = v166;

                v167 = String.replaceSubrange<A>(_:with:)();
                if (qword_100198298 != -1)
                {
                  sub_100011148();
                  v167 = swift_once();
                }

                v433 = v430;
                v434 = v426;
                v435 = v429;
                v436 = v164;
                __chkstk_darwin(v167);
                sub_100003710();
                *(v168 - 16) = &v433;
                if (sub_10005770C(sub_10009F564, v169, v170))
                {
                }

                else
                {
                  v433 = static String._fromSubstring(_:)();
                  v434 = v172;
                  __chkstk_darwin(v433);
                  sub_100003710();
                  *(v173 - 16) = &v433;
                  v175 = sub_1000574AC(sub_10009F548, v174, v412);

                  v440 = v163;
                  if (v175)
                  {
                    v176 = *(&v437 + 1);
                    v177 = *(&v438 + 1);
                    v413 = v437;
                    v414 = v438;
                    v178 = *&v439[8];
                    v415 = *v439;

                    v179 = v411;

                    v180 = 1;
                  }

                  else
                  {
                    v180 = v439[25];
                    v178 = *&v439[8];
                    v177 = *(&v438 + 1);
                    v414 = v438;
                    v415 = *v439;
                    v176 = *(&v437 + 1);
                    v413 = v437;
                    v181 = sub_100009A34();
                    sub_10009F108(v181, v182);
                    v179 = v411;
                  }

                  v183 = v439[24];
                  sub_10002EB80(&qword_10019A4F8, &unk_100150170);
                  v184 = swift_initStackObject();
                  *(v184 + 16) = v423;
                  v185 = v414;
                  *(v184 + 32) = v413;
                  *(v184 + 40) = v176;
                  *(v184 + 48) = v185;
                  *(v184 + 56) = v177;
                  *(v184 + 64) = v415;
                  *(v184 + 72) = v178;
                  *(v184 + 80) = v179;
                  *(v184 + 88) = v183;
                  *(v184 + 89) = v180;
                  v433 = v422;

                  sub_10006E450(v184);
                  v171 = v433;
                  v163 = v440;
                }

                v186 = v431;
                v187 = v427;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v193 = v427[2];
                  sub_100004E28();
                  sub_100070A08();
                  v187 = v194;
                }

                v189 = v187[2];
                v188 = v187[3];
                v190 = v187;
                if (v189 >= v188 >> 1)
                {
                  sub_100005150(v188);
                  sub_100070A08();
                  v190 = v195;
                }

                v190[2] = v189 + 1;
                v152 = v190;
                v191 = &v190[5 * v189];
                *(v191 + 2) = v186;
                v192 = v428;
                v191[6] = v417;
                v191[7] = v192;
                v191[8] = v171;
                v162 += 2;
                --v157;
                v17 = 48;
                v164 = v420;
              }

              while (v157);
              v144 = v420;
              v440 = v163;
              sub_10009F164(&v437);
              a4 = &v437;
              v134 = v400;
              v143 = v402;
              v151 = v403;
              a7 = v404;
              goto LABEL_71;
            }

            v153 += 4;
            ++v151;
          }

          v196 = v152;
          v197 = v152[2];
          v198 = v408[2];
          a7 = (v198 + v197);
          if (__OFADD__(v198, v197))
          {
            goto LABEL_242;
          }

          v199 = swift_isUniquelyReferenced_nonNull_native();
          v200 = v408;
          if ((v199 & 1) == 0 || a7 > v408[3] >> 1)
          {
            sub_100070A08();
            v200 = v201;
          }

          if (!v196[2])
          {
            break;
          }

          v202 = v200[2];
          v203 = v200[3];
          sub_10000EE98();
          if (v205 < v197)
          {
            goto LABEL_248;
          }

          a7 = v204;
          sub_10002EB80(&qword_10019B390, &qword_1001505A0);
          swift_arrayInitWithCopy();

          v146 = a7;
          v144 = v420;
          v145 = v405;
          if (v197)
          {
            v206 = a7[2];
            v57 = __OFADD__(v206, v197);
            v207 = v206 + v197;
            if (v57)
            {
              goto LABEL_252;
            }

            a7[2] = v207;
          }
        }

        v208 = v200;

        v146 = v208;
        v144 = v420;
        v145 = v405;
        if (!v197)
        {
          goto LABEL_68;
        }

LABEL_243:
        __break(1u);
        goto LABEL_244;
      }

      v269 = v407;
LABEL_146:
      v408 = v269;

      v276 = (v398 + 64);
      v275 = *(v398 + 64);
      v277 = *(v398 + 32);
      sub_100002BE8();
      v64 = v279 & v278;
      v17 = (v280 + 63) >> 6;

      a4 = 0;
      v422 = _swiftEmptyArrayStorage;
      v430 = (v398 + 64);
      while (v64)
      {
LABEL_152:
        v282 = (a4 << 9) | (8 * __clz(__rbit64(v64)));
        a7 = *(*(v398 + 56) + v282);
        v283 = a7[2];
        v284 = v422[2];
        if (__OFADD__(v284, v283))
        {
          goto LABEL_255;
        }

        v285 = *(*(v398 + 56) + v282);

        if (!swift_isUniquelyReferenced_nonNull_native() || v284 + v283 > v422[3] >> 1)
        {
          sub_100070554();
          v422 = v286;
        }

        v276 = v430;
        v64 &= v64 - 1;
        if (a7[2])
        {
          v287 = v422[2];
          v288 = v422[3];
          sub_10000EE98();
          if (v289 < v283)
          {
            goto LABEL_257;
          }

          swift_arrayInitWithCopy();

          if (v283)
          {
            v290 = v422[2];
            v57 = __OFADD__(v290, v283);
            v291 = v290 + v283;
            if (v57)
            {
LABEL_260:
              __break(1u);
LABEL_261:
              __break(1u);
              goto LABEL_262;
            }

            v422[2] = v291;
          }
        }

        else
        {

          if (v283)
          {
            __break(1u);
LABEL_163:

            v292 = 1 << *(v398 + 32);
            v293 = -1;
            if (v292 < 64)
            {
              v293 = ~(-1 << v292);
            }

            v294 = v293 & *(v398 + 64);
            v430 = ((v292 + 63) >> 6);

            v64 = 0;
            v295 = _swiftEmptyArrayStorage;
            while (v294)
            {
LABEL_171:
              v297 = (v64 << 9) | (8 * __clz(__rbit64(v294)));
              v17 = *(*(v398 + 56) + v297);
              a7 = *(v17 + 16);
              v298 = v295[2];
              a4 = a7 + v298;
              if (__OFADD__(v298, a7))
              {
                goto LABEL_256;
              }

              v299 = *(*(v398 + 56) + v297);

              if (!swift_isUniquelyReferenced_nonNull_native() || a4 > v295[3] >> 1)
              {
                sub_100070554();
                v295 = v300;
              }

              v294 &= v294 - 1;
              if (*(v17 + 16))
              {
                v301 = v295[2];
                v302 = v295[3];
                sub_10000EE98();
                if (v303 < a7)
                {
                  __break(1u);
                  goto LABEL_260;
                }

                swift_arrayInitWithCopy();

                if (a7)
                {
                  v304 = v295[2];
                  v57 = __OFADD__(v304, a7);
                  v305 = a7 + v304;
                  if (v57)
                  {
                    goto LABEL_261;
                  }

                  v295[2] = v305;
                }
              }

              else
              {

                if (a7)
                {
                  __break(1u);
LABEL_182:

                  v306 = 0;
                  a4 = v295[2];
                  v307 = v295 + 7;
                  v430 = _swiftEmptyArrayStorage;
                  while (a4 != v306)
                  {
                    if (v306 >= v295[2])
                    {
                      goto LABEL_246;
                    }

                    v308 = *(v307 - 1);
                    a7 = *v307;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v313 = v430[2];
                      sub_100004E28();
                      sub_100013A60();
                      v430 = v314;
                    }

                    v310 = v430[2];
                    v309 = v430[3];
                    v17 = v310 + 1;
                    if (v310 >= v309 >> 1)
                    {
                      sub_100005150(v309);
                      sub_100013A60();
                      v430 = v315;
                    }

                    v311 = v430;
                    v430[2] = v17;
                    v312 = &v311[2 * v310];
                    v312[4] = v308;
                    v312[5] = a7;
                    v307 += 8;
                    ++v306;
                  }

                  v316 = 0;
                  a4 = _swiftEmptyArrayStorage;
                  v317 = v408[2];
                  v420 = v408 + 4;
                  v421 = v317;
                  while (v316 != v421)
                  {
                    v427 = a4;
                    v318 = sub_10001AB24();
                    sub_100038190(v318, v319, v320);
                    v321 = &v420[5 * v316];
                    v322 = v321[1];
                    v428 = *v321;
                    v323 = v321[3];
                    v424 = v321[2];
                    v425 = v322;
                    v324 = v321[4];
                    v426 = v316 + 1;
                    v325 = *(v324 + 16);

                    *&v423 = v323;

                    v326 = 0;
                    v429 = _swiftEmptyArrayStorage;
LABEL_193:
                    a7 = ((v326 << 6) | 0x20);
                    while (v325 != v326)
                    {
                      v327 = sub_10001AB24();
                      v329 = sub_100038190(v327, v328, v324);
                      v330 = *(a7 + v324);
                      v331 = *(a7 + v324 + 16);
                      v332 = *(a7 + v324 + 32);
                      *&v439[10] = *(a7 + v324 + 42);
                      v438 = v331;
                      *v439 = v332;
                      v437 = v330;
                      v17 = v326 + 1;
                      if (__OFADD__(v326, 1))
                      {
LABEL_228:
                        __break(1u);
                        goto LABEL_229;
                      }

                      v431 = v438;
                      __chkstk_darwin(v329);
                      v391[2] = &v431;
                      v333 = sub_100009A34();
                      sub_10009F108(v333, v334);

                      v335 = v440;
                      v336 = sub_1000574AC(sub_10009F548, v391, v430);
                      v440 = v335;

                      if (!v336)
                      {
                        v337 = v429;
                        v338 = swift_isUniquelyReferenced_nonNull_native();
                        v432 = v337;
                        if ((v338 & 1) == 0)
                        {
                          sub_1000B37A4(0, v337[2] + 1, 1);
                          v337 = v432;
                        }

                        v340 = v337[2];
                        v339 = v337[3];
                        if (v340 >= v339 >> 1)
                        {
                          v345 = sub_100005150(v339);
                          sub_1000B37A4(v345, v340 + 1, 1);
                          v337 = v432;
                        }

                        v337[2] = v340 + 1;
                        v429 = v337;
                        v341 = &v337[8 * v340];
                        v342 = v437;
                        v343 = v438;
                        v344 = *v439;
                        *(v341 + 74) = *&v439[10];
                        v341[3] = v343;
                        v341[4] = v344;
                        v341[2] = v342;
                        v326 = v17;
                        goto LABEL_193;
                      }

                      sub_10009F164(&v437);
                      a7 += 8;
                      ++v326;
                    }

                    *&v437 = v422;

                    sub_10006E450(v429);

                    v346 = v437;
                    a4 = v427;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v354 = *(a4 + 16);
                      sub_100004E28();
                      sub_100070A08();
                      a4 = v355;
                    }

                    v347 = v428;
                    v349 = *(a4 + 16);
                    v348 = *(a4 + 24);
                    if (v349 >= v348 >> 1)
                    {
                      sub_100005150(v348);
                      sub_100070A08();
                      a4 = v356;
                    }

                    *(a4 + 16) = v349 + 1;
                    v350 = (a4 + 40 * v349);
                    v352 = v424;
                    v351 = v425;
                    v350[4] = v347;
                    v350[5] = v351;
                    v353 = v423;
                    v350[6] = v352;
                    v350[7] = v353;
                    v350[8] = v346;
                    v316 = v426;
                  }

                  v357 = *(a4 + 16);

                  if (v396 <= 1)
                  {
                    v358 = 1;
                  }

                  else
                  {
                    v358 = v396;
                  }

                  v359 = sub_10009EE6C(0, v357, v358);
                  v360 = 0;
                  v361 = *(v359 + 16);
                  a7 = a4;
                  v17 = a4 + 32;
                  v429 = _swiftEmptyArrayStorage;
                  while (v361 != v360)
                  {
                    if (v360 >= v361)
                    {
                      goto LABEL_249;
                    }

                    v362 = v360 + 1;
                    if (__OFADD__(v360, 1))
                    {
                      goto LABEL_250;
                    }

                    v363 = *(v359 + 8 * v360++ + 32);
                    if (v363 < a7[2])
                    {
                      if (v363 < 0)
                      {
                        __break(1u);
                        goto LABEL_264;
                      }

                      v364 = (v17 + 40 * v363);
                      v365 = *v364;
                      v366 = v364[1];
                      v367 = v364[3];
                      v426 = v364[2];
                      v427 = v365;
                      a4 = v364[4];

                      v368 = swift_isUniquelyReferenced_nonNull_native();
                      v430 = v17;
                      v428 = v366;
                      if ((v368 & 1) == 0)
                      {
                        v374 = v429[2];
                        sub_100004E28();
                        sub_100070A08();
                        v429 = v375;
                      }

                      v370 = v429[2];
                      v369 = v429[3];
                      if (v370 >= v369 >> 1)
                      {
                        sub_100005150(v369);
                        sub_100070A08();
                        v429 = v376;
                      }

                      v371 = v429;
                      v429[2] = v370 + 1;
                      v372 = &v371[5 * v370];
                      v373 = v428;
                      v372[4] = v427;
                      v372[5] = v373;
                      v372[6] = v426;
                      v372[7] = v367;
                      v372[8] = a4;
                      v360 = v362;
                      v17 = v430;
                    }
                  }

                  v377 = v429;

                  v378 = 0;
                  v428 = v377[2];
                  v379 = v377 + 8;
                  v273 = _swiftEmptyDictionarySingleton;
                  while (v428 != v378)
                  {
                    sub_100038190(v378++, 1, v429);
                    v381 = *(v379 - 1);
                    v380 = *v379;
                    v383 = *(v379 - 3);
                    v382 = *(v379 - 2);
                    v430 = *(v379 - 4);

                    sub_10009D2E0(v382, v381, v380);
                    swift_isUniquelyReferenced_nonNull_native();
                    *&v437 = v273;
                    sub_100068CEC();

                    v273 = v437;
                    v379 += 5;
                  }

                  swift_bridgeObjectRelease_n();

                  return v273;
                }
              }
            }

            while (1)
            {
              v296 = v64 + 1;
              if (__OFADD__(v64, 1))
              {
                goto LABEL_245;
              }

              if (v296 >= v430)
              {
                goto LABEL_182;
              }

              v294 = v276[v296];
              ++v64;
              if (v294)
              {
                v64 = v296;
                goto LABEL_171;
              }
            }
          }
        }
      }

      while (1)
      {
        v281 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v281 >= v17)
        {
          goto LABEL_163;
        }

        v64 = v276[v281];
        ++a4;
        if (v64)
        {
          a4 = v281;
          goto LABEL_152;
        }
      }

LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
    }

    else
    {

      if (qword_1001982F0 == -1)
      {
LABEL_30:
        v73 = type metadata accessor for Logger();
        sub_10000347C(v73, qword_10019E008);

        v74 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (sub_100012638())
        {
          sub_100007764();
          v75 = sub_100012074();
          sub_1000248B4(v75);
          sub_100019D54(4.8149e-34);
          *(a7 + 4) = sub_100004C50(v395, a4, v76);
          sub_100006AA4(&_mh_execute_header, v77, v78, "Skipping phrase template with too many tokens: %s");
          sub_1000034F8(v17);
          sub_100004D70();
          sub_1000036AC();
        }

        return Dictionary.init(dictionaryLiteral:)();
      }
    }

    sub_100002A48();
    swift_once();
    goto LABEL_30;
  }

  while (1)
  {
    v17 = &v437;
    *&v439[10] = *(v23 + 42);
    v25 = v23[2];
    v438 = v23[1];
    *v439 = v25;
    v437 = *v23;
    v26 = v438;
    v27 = v410;
    if (v410[2])
    {
      v28 = sub_100009A34();
      sub_10009F108(v28, v29);

      v30 = sub_10001AA34();
      v32 = sub_10000C2A0(v30, v31);
      a7 = _swiftEmptyArrayStorage;
      if ((v33 & 1) == 0)
      {
        goto LABEL_7;
      }

      a7 = *(v410[7] + 8 * v32);
    }

    else
    {
      v34 = sub_100009A34();
      sub_10009F108(v34, v35);
      a7 = _swiftEmptyArrayStorage;
    }

LABEL_7:
    v36 = sub_100009A34();
    sub_10009F108(v36, v37);
    v430 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = a7[2];
      sub_100004E28();
      sub_100070554();
      a7 = v62;
    }

    v39 = a7[2];
    v38 = a7[3];
    v429 = v23;
    if (v39 >= v38 >> 1)
    {
      sub_100005150(v38);
      sub_100070554();
      a7 = v63;
    }

    a7[2] = v39 + 1;
    v40 = &a7[8 * v39];
    v41 = v437;
    v42 = v438;
    v43 = *v439;
    *(v40 + 74) = *&v439[10];
    v40[3] = v42;
    v40[4] = v43;
    v40[2] = v41;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v433 = v27;
    v45 = sub_10001AA34();
    sub_10000C2A0(v45, v46);
    sub_100003B6C();
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      break;
    }

    v17 = v47;
    v52 = v48;
    sub_10002EB80(&qword_10019AFB8, &unk_100150150);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v51))
    {
      sub_10000C2A0(v26, *(&v26 + 1));
      sub_10009F580();
      a4 = v409;
      if (!v54)
      {
        while (1)
        {
LABEL_265:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
        }
      }

      v17 = v53;
      if (v52)
      {
LABEL_19:

        v410 = v433;
        v59 = v433[7];
        v60 = *(v59 + 8 * v17);
        *(v59 + 8 * v17) = a7;

        sub_10009F164(&v437);
        goto LABEL_20;
      }
    }

    else
    {
      a4 = v409;
      if (v52)
      {
        goto LABEL_19;
      }
    }

    v55 = v433;
    sub_10000681C(&v433[v17 >> 6]);
    *(v433[6] + 16 * v17) = v26;
    *(v55[7] + 8 * v17) = a7;
    sub_10009F164(&v437);
    v56 = v55[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_230;
    }

    v410 = v55;
    v55[2] = v58;
LABEL_20:
    v23 = v429 + 8;
    v24 = (v430 - 1);
    if (v430 == 1)
    {
      goto LABEL_21;
    }
  }

LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:

  if (qword_1001982F0 != -1)
  {
LABEL_264:
    sub_100002A48();
    swift_once();
  }

  v384 = type metadata accessor for Logger();
  sub_10000347C(v384, qword_10019E008);
  v385 = v409;

  v386 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_100012638())
  {
    sub_100007764();
    v387 = sub_100012074();
    sub_1000248B4(v387);
    sub_100019D54(4.8149e-34);
    *(a7 + 4) = sub_100004C50(v395, v385, v388);
    sub_100006AA4(&_mh_execute_header, v389, v390, "Skipping phrase template with an unrecognized token: %s");
    sub_1000034F8(v17);
    sub_100004D70();
    sub_1000036AC();
  }

  v273 = Dictionary.init(dictionaryLiteral:)();

  return v273;
}

uint64_t sub_10009D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = 40;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v35 = a1;
  v5 = *(a3 + 16);
  v6 = (a3 + 89);
  v7 = _swiftEmptyArrayStorage;
  if (v5)
  {
    do
    {
      v36 = v5;
      v37 = v7;
      v8 = *(v6 - 49);
      v9 = *(v6 - 41);
      v10 = *(v6 - 33);
      v11 = *(v6 - 25);
      v12 = *(v6 - 17);
      v13 = *(v6 - 9);
      v14 = *v6;
      if (*(v6 - 1) == 1)
      {

        v15._countAndFlagsBits = v11;
        v15._object = v12;
        String.append(_:)(v15);
        v16._countAndFlagsBits = 34;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        if (v14)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v19 = *(v6 - 49);

        swift_bridgeObjectRetain_n();

        if (v14)
        {
LABEL_6:
          v39 = v9;
          v40 = v10;

          v20._countAndFlagsBits = 23357;
          v20._object = 0xE200000000000000;
          String.append(_:)(v20);
          v21._countAndFlagsBits = sub_10001AA34();
          String.append(_:)(v21);

          v22._countAndFlagsBits = 93;
          v22._object = 0xE100000000000000;
          String.append(_:)(v22);

          goto LABEL_7;
        }
      }

      v39 = v9;
      v40 = v10;

      v17._countAndFlagsBits = 61;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_10001AA34();
      String.append(_:)(v18);

LABEL_7:

      v7 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = v37[2];
        sub_100004E28();
        sub_100013A60();
        v7 = v27;
      }

      v24 = v7[2];
      v23 = v7[3];
      if (v24 >= v23 >> 1)
      {
        sub_100005150(v23);
        sub_100013A60();
        v7 = v28;
      }

      v7[2] = v24 + 1;
      v25 = &v7[2 * v24];
      v25[4] = v39;
      v25[5] = v40;
      v6 += 64;
      v5 = v36 - 1;
    }

    while (v36 != 1);
  }

  sub_10002EB80(&qword_10019AFC0, &unk_100150180);
  sub_100013EBC(&qword_10019AFC8, &qword_10019AFC0, &unk_100150180);
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);

  return v35;
}

void sub_10009D608()
{
  sub_100006A04();
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10002EB80(&qword_1001990E0, &unk_10014DDC0);
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  sub_100024754();
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (v2)
  {
    type metadata accessor for LNPlatformName(0);
    sub_100003D44(0, &qword_10019A0A8, LNAvailabilityAnnotation_ptr);
    sub_100018448();
    sub_10009F250(v7, v8);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  [v0 initWithIntentIdentifier:v3 phraseTemplates:v4.super.isa parameterValues:v5.super.isa impliedValues:v6.super.isa availabilityAnnotations:v9.super.isa];

  sub_1000069EC();
}

id sub_10009D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  if (!a7)
  {
    v14 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = String._bridgeToObjectiveC()();

LABEL_6:
  v16 = [v9 initWithKind:a1 parentIdentifier:v12 phrase:v13 expected:v14 phraseTemplate:v15];

  return v16;
}

uint64_t sub_10009D8C8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

Swift::Int sub_10009D9E8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_10009DA84(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

Swift::Int sub_10009DA84(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100024754();
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v11[2] = v10;
      }

      v12[0] = v11 + 4;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_10009DB8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10009DC54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 32 * v4);
      v10 = *v9;
      v11 = v9[1];
      result = v9[2];
      v12 = v9[3];
      v13 = v8;
      v14 = v7;
      do
      {
        if (result == v14[2] && v12 == v14[3] && v10 >> 16 == *v14 >> 16 && v11 >> 16 == v14[1] >> 16)
        {
          break;
        }

        result = _stringCompareInternal(_:_:_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v14[4];
        v11 = v14[5];
        result = v14[6];
        v12 = v14[7];
        v18 = *(v14 + 1);
        *(v14 + 2) = *v14;
        *(v14 + 3) = v18;
        *v14 = v10;
        v14[1] = v11;
        v14[2] = result;
        v14[3] = v12;
        v14 -= 4;
      }

      while (!__CFADD__(v13++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10009DD50(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1000702DC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1000702DC();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_10009E9D4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_10009E8A8(&v92, *a1, a3);
LABEL_102:
}

void sub_10009E258(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_115:
    v104 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    v102 = v7;
    v4 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_3:
  v11 = v9;
  v12 = v9 + 1;
  if (v9 + 1 >= v8)
  {
    v8 = v9 + 1;
    goto LABEL_33;
  }

  v4 = v7;
  v13 = *v7 + 32 * v9;
  v14 = sub_10009D8C8(*(*v7 + 32 * v12), *(*v7 + 32 * v12 + 8), *(*v7 + 32 * v12 + 16), *(*v7 + 32 * v12 + 24), *v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
  if (v6)
  {
    goto LABEL_125;
  }

  v15 = v14;
  v16 = 32 * v11;
  for (i = (v13 + 48); ; i += 4)
  {
    if (v12 + 1 >= v8)
    {
      goto LABEL_22;
    }

    v18 = i[4] == *i && i[5] == i[1];
    v19 = v18 && i[2] >> 16 == *(i - 2) >> 16;
    if (!v19 || i[3] >> 16 != *(i - 1) >> 16)
    {
      break;
    }

    if (v15)
    {
      v8 = v12 + 1;
      goto LABEL_25;
    }

LABEL_20:
    ++v12;
  }

  if (((v15 ^ _stringCompareInternal(_:_:_:_:expecting:)()) & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = v12 + 1;
LABEL_22:
  if ((v15 & 1) == 0)
  {
LABEL_27:
    v7 = v4;
    goto LABEL_33;
  }

LABEL_25:
  if (v8 < v11)
  {
    goto LABEL_148;
  }

  if (v11 > v12)
  {
    goto LABEL_27;
  }

  v21 = 32 * v8 - 32;
  v22 = v8;
  v23 = v11;
  v7 = v4;
  do
  {
    if (v23 != --v22)
    {
      v24 = *v4;
      if (!*v4)
      {
        goto LABEL_155;
      }

      v25 = (v24 + v16);
      v26 = (v24 + v21);
      v27 = *(v25 + 2);
      v28 = *(v25 + 3);
      v29 = *v25;
      v30 = v26[1];
      *v25 = *v26;
      v25[1] = v30;
      *v26 = v29;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
    }

    ++v23;
    v21 -= 32;
    v16 += 32;
  }

  while (v23 < v22);
LABEL_33:
  v31 = v7[1];
  if (v8 >= v31)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(v8, v11))
  {
    goto LABEL_147;
  }

  if (v8 - v11 >= a4)
  {
LABEL_42:
    v4 = v8;
    goto LABEL_43;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_149;
  }

  if (v11 + a4 >= v31)
  {
    v4 = v7[1];
  }

  else
  {
    v4 = (v11 + a4);
  }

  if (v4 < v11)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    v10 = sub_1000BCD28(v10);
LABEL_117:
    v92 = (v10 + 16);
    v93 = *(v10 + 16);
    while (v93 >= 2)
    {
      if (!*v102)
      {
        goto LABEL_154;
      }

      v94 = v10;
      v95 = (v10 + 16 * v93);
      v10 = *v95;
      v96 = &v92[2 * v93];
      v97 = *(v96 + 1);
      sub_10009EB78((*v102 + 32 * *v95), (*v102 + 32 * *v96), (*v102 + 32 * v97), v104);
      if (v4)
      {
        break;
      }

      if (v97 < v10)
      {
        goto LABEL_142;
      }

      if (v93 - 2 >= *v92)
      {
        goto LABEL_143;
      }

      *v95 = v10;
      v95[1] = v97;
      v98 = *v92 - v93;
      if (*v92 < v93)
      {
        goto LABEL_144;
      }

      v93 = *v92 - 1;
      sub_1000BCD3C(v96 + 16, v98, v96);
      *v92 = v93;
      v10 = v94;
    }

LABEL_125:

    return;
  }

  if (v8 == v4)
  {
    goto LABEL_42;
  }

  v102 = v7;
  v74 = *v7;
  v75 = *v7 + 32 * v8 - 32;
  v104 = v11;
  v76 = v11 - v8;
  while (2)
  {
    v77 = (v74 + 32 * v8);
    v78 = *v77;
    v79 = v77[1];
    v80 = v77[2];
    v81 = v77[3];
    v82 = v76;
    v83 = v75;
LABEL_97:
    v86 = v80 == v83[2] && v81 == v83[3] && v78 >> 16 == *v83 >> 16 && v79 >> 16 == v83[1] >> 16;
    if (v86 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
    {
LABEL_111:
      ++v8;
      v75 += 32;
      --v76;
      if (v8 != v4)
      {
        continue;
      }

      v7 = v102;
      v11 = v104;
LABEL_43:
      if (v4 < v11)
      {
        goto LABEL_146;
      }

      v101 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = *(v10 + 16);
        sub_1000702DC();
        v10 = v90;
      }

      v32 = *(v10 + 16);
      v33 = v32 + 1;
      v34 = v4;
      if (v32 >= *(v10 + 24) >> 1)
      {
        sub_1000702DC();
        v34 = v4;
        v10 = v91;
      }

      *(v10 + 16) = v33;
      v35 = v10 + 32;
      v36 = (v10 + 32 + 16 * v32);
      *v36 = v11;
      v36[1] = v34;
      v103 = *a1;
      if (!*a1)
      {
        goto LABEL_156;
      }

      if (!v32)
      {
LABEL_93:
        v8 = v7[1];
        v9 = v101;
        if (v101 >= v8)
        {
          goto LABEL_115;
        }

        goto LABEL_3;
      }

      v104 = v10;
      while (1)
      {
        v37 = v33 - 1;
        v38 = (v35 + 16 * (v33 - 1));
        v39 = (v10 + 16 * v33);
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v40 = *(v10 + 32);
          v41 = *(v10 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_64:
          if (v43)
          {
            goto LABEL_133;
          }

          v55 = *v39;
          v54 = v39[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_136;
          }

          v59 = v38[1];
          v60 = v59 - *v38;
          if (__OFSUB__(v59, *v38))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v57, v60))
          {
            goto LABEL_141;
          }

          if (v57 + v60 >= v42)
          {
            if (v42 < v60)
            {
              v37 = v33 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v33 < 2)
        {
          goto LABEL_135;
        }

        v62 = *v39;
        v61 = v39[1];
        v50 = __OFSUB__(v61, v62);
        v57 = v61 - v62;
        v58 = v50;
LABEL_79:
        if (v58)
        {
          goto LABEL_138;
        }

        v64 = *v38;
        v63 = v38[1];
        v50 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v50)
        {
          goto LABEL_140;
        }

        if (v65 < v57)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v37 - 1 >= v33)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*v7)
        {
          goto LABEL_153;
        }

        v69 = (v35 + 16 * (v37 - 1));
        v70 = *v69;
        v4 = v37;
        v71 = v35 + 16 * v37;
        v10 = *(v71 + 8);
        sub_10009EB78((*v7 + 32 * *v69), (*v7 + 32 * *v71), (*v7 + 32 * v10), v103);
        if (v6)
        {
          goto LABEL_125;
        }

        if (v10 < v70)
        {
          goto LABEL_128;
        }

        v72 = *(v104 + 16);
        if (v4 > v72)
        {
          goto LABEL_129;
        }

        *v69 = v70;
        v69[1] = v10;
        if (v4 >= v72)
        {
          goto LABEL_130;
        }

        v33 = v72 - 1;
        sub_1000BCD3C((v71 + 16), v72 - 1 - v4, v71);
        v10 = v104;
        *(v104 + 16) = v72 - 1;
        v73 = v72 > 2;
        v6 = 0;
        if (!v73)
        {
          goto LABEL_93;
        }
      }

      v44 = v35 + 16 * v33;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_131;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_132;
      }

      v51 = v39[1];
      v52 = v51 - *v39;
      if (__OFSUB__(v51, *v39))
      {
        goto LABEL_134;
      }

      v50 = __OFADD__(v42, v52);
      v53 = v42 + v52;
      if (v50)
      {
        goto LABEL_137;
      }

      if (v53 >= v47)
      {
        v67 = *v38;
        v66 = v38[1];
        v50 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v50)
        {
          goto LABEL_145;
        }

        if (v42 < v68)
        {
          v37 = v33 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

    break;
  }

  if (v74)
  {
    v78 = v83[4];
    v79 = v83[5];
    v80 = v83[6];
    v81 = v83[7];
    v87 = *(v83 + 1);
    *(v83 + 2) = *v83;
    *(v83 + 3) = v87;
    *v83 = v78;
    v83[1] = v79;
    v83[2] = v80;
    v83[3] = v81;
    v83 -= 4;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_10009E8A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000BCD28(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10009E9D4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_10009E9D4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100071004(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100071004(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_10009EB78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_100071024(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      v13 = v12 && *v6 >> 16 == *v4 >> 16;
      v14 = v13 && *(v6 + 1) >> 16 == *(v4 + 1) >> 16;
      if (v14 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v15 = v6;
      v12 = v7 == v6;
      v6 += 32;
      if (!v12)
      {
        goto LABEL_22;
      }

LABEL_23:
      v7 += 32;
    }

    v15 = v4;
    v12 = v7 == v4;
    v4 += 32;
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_23;
  }

  sub_100071024(a2, (a3 - a2) / 32, a4);
  v17 = &v4[32 * v9];
LABEL_25:
  v18 = 0;
  v30 = v6 - 32;
  while (1)
  {
    v10 = &v17[v18];
    if (&v17[v18] <= v4 || v6 <= v7)
    {
      break;
    }

    v22 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1) && *(v10 - 4) >> 16 == *(v6 - 4) >> 16 && *(v10 - 3) >> 16 == *(v6 - 3) >> 16;
    if (!v22 && (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
    {
      v25 = &v5[v18];
      v5 = &v5[v18 - 32];
      v17 += v18;
      v12 = v25 == v6;
      v6 -= 32;
      if (!v12)
      {
        v26 = *(v30 + 1);
        *v5 = *v30;
        *(v5 + 1) = v26;
        v6 = v30;
      }

      goto LABEL_25;
    }

    v23 = &v5[v18];
    if (v10 != &v5[v18])
    {
      v24 = *(v10 - 1);
      *(v23 - 2) = *(v10 - 2);
      *(v23 - 1) = v24;
    }

    v18 -= 32;
  }

LABEL_48:
  v27 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v27])
  {
    memmove(v6, v4, 32 * v27);
  }

  return 1;
}

uint64_t _s7BuilderVMa()
{
  result = qword_10019B030;
  if (!qword_10019B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009EDDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EE6C(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = sub_10009F1B8(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v8[3];

  if (v7 < 0)
  {
    goto LABEL_48;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  if (!v7)
  {
    goto LABEL_17;
  }

  v13 -= v7;
  do
  {
    v14 = v5 <= v4;
    if (a3 > 0)
    {
      v14 = v5 >= v4;
    }

    if (v14)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v15 = v5 + a3;
    if (__OFADD__(v5, a3))
    {
      v15 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
    }

    *v12++ = v5;
    v5 = v15;
    --v7;
  }

  while (v7);
  v5 = v15;
LABEL_17:
  v16 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v33 = v4;
  while (2)
  {
    v17 = v5 <= v4;
    if (a3 > 0)
    {
      v17 = v5 >= v4;
    }

    if (!v17)
    {
      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = v16;
        if (!v13)
        {
          goto LABEL_26;
        }

        v18 = v16;
      }

      else if (!v13)
      {
LABEL_26:
        v19 = v8[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v20 = v16;
        v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_10002EB80(&qword_10019A4A0, &qword_10014F1E0);
        v23 = swift_allocObject();
        v24 = (j__malloc_size(v23) - 32) / 8;
        v23[2] = v22;
        v23[3] = 2 * v24;
        v25 = (v23 + 4);
        v26 = v8[3];
        v27 = v26 >> 1;
        if (v8[2])
        {
          if (v23 != v8 || v25 >= &v8[v27 + 4])
          {
            memmove(v23 + 4, v8 + 4, 8 * v27);
          }

          v8[2] = 0;
        }

        v12 = (v25 + 8 * v27);
        v13 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);

        v8 = v23;
        v16 = v20;
        v4 = v33;
      }

      v29 = __OFSUB__(v13--, 1);
      if (v29)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v12++ = v5;
      v5 = v18;
      continue;
    }

    break;
  }

  v30 = v8[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v13);
    v32 = v31 - v13;
    if (v29)
    {
      goto LABEL_49;
    }

    v8[2] = v32;
  }

  return v8;
}

uint64_t sub_10009F1B8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_10009F250(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10009F2D0()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    sub_10009F4F8(319, &qword_10019B040);
    if (v1 <= 0x3F)
    {
      sub_10009F4F8(319, &qword_10019B048);
      if (v2 <= 0x3F)
      {
        sub_10009F4F8(319, &qword_10019B050);
        if (v3 <= 0x3F)
        {
          sub_10009F424();
          if (v4 <= 0x3F)
          {
            sub_10009F480();
            if (v5 <= 0x3F)
            {
              sub_10009F4F8(319, &unk_10019B068);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10009F424()
{
  result = qword_10019B058;
  if (!qword_10019B058)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10019B058);
  }

  return result;
}

void sub_10009F480()
{
  if (!qword_10019B060)
  {
    sub_100003D44(255, &qword_10019AB50, LNEntityMetadata_ptr);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10019B060);
    }
  }
}

void sub_10009F4F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_10009F590()
{
  v0 = type metadata accessor for DispatchQoS();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchQoS.userInitiated.getter();
  v4 = sub_10002EB80(&qword_10019B0B8, &qword_100150270);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_100065C94(1uLL, 500, v3);
  qword_10019DEB0 = result;
  return result;
}

uint64_t sub_10009F638(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100013334(v4, v14);
      v6 = v15;
      v5 = v16;
      sub_1000034B4(v14, v15);
      v7 = (*(*(v5 + 8) + 8))(v6);
      v9 = v8;
      sub_1000034F8(v14);
      v17 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_100011438(v10 > 1, v11 + 1, 1);
        v3 = v17;
      }

      v3[2] = v11 + 1;
      v12 = &v3[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  return sub_1000275B8(v3);
}

uint64_t sub_10009F778()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DEB8 = result;
  qword_10019DEC0 = v1;
  return result;
}

void *sub_10009F7A8(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for Notification();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v45);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v10 = *(a2 + 16);
  v11 = &off_10014B000;
  v44 = v4;
  if (v10)
  {
    v12 = LNMetadataChangedNotification;
    v48 = 0u;
    v49 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v14;

    v15 = v12;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 1;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v16;
    AnyHashable.init<A>(_:)();
    v17 = sub_10009FD18();
    v18 = sub_1000A1F48(a2);
    sub_10006DE3C(v18);

    v19 = sub_100034D2C();
    *(inited + 168) = v17;
    *(inited + 144) = v19;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
    sub_100070514(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v20;
    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      sub_100002C04(v22);
      v21 = v39;
    }

    v25 = v44;
    v24 = v45;
    v21[2] = v23 + 1;
    (*(v25 + 32))(v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v9, v24);
    v11 = &off_10014B000;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16))
  {
    v26 = LNMetadataChangedNotification;
    v48 = 0u;
    v49 = 0u;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    v27 = swift_initStackObject();
    *(v27 + 16) = *(v11 + 196);
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v28;

    v29 = v26;
    AnyHashable.init<A>(_:)();
    *(v27 + 96) = &type metadata for Int;
    *(v27 + 72) = 0;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v30;
    AnyHashable.init<A>(_:)();
    v31 = sub_10009FD18();
    v32 = sub_1000A1F48(a1);
    sub_10006DE3C(v32);

    v33 = sub_100034D2C();
    *(v27 + 168) = v31;
    *(v27 + 144) = v33;
    Dictionary.init(dictionaryLiteral:)();
    v34 = v43;
    Notification.init(name:object:userInfo:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070514(0, v21[2] + 1, 1, v21);
      v21 = v40;
    }

    v36 = v21[2];
    v35 = v21[3];
    v37 = v44;
    if (v36 >= v35 >> 1)
    {
      sub_100002C04(v35);
      v21 = v41;
    }

    v21[2] = v36 + 1;
    (*(v37 + 32))(v21 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v36, v34, v45);
  }

  return v21;
}

uint64_t sub_10009FC20()
{
  _StringGuts.grow(_:)(22);

  v0._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x65766F6D6572202CLL;
  v1._object = 0xEB00000000203A64;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v2);

  return 0x203A6465646461;
}

uint64_t sub_10009FD10()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10009FC20();
}

unint64_t sub_10009FD18()
{
  result = qword_100199510;
  if (!qword_100199510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100199510);
  }

  return result;
}

unint64_t sub_10009FD7C(uint64_t a1)
{
  result = sub_10009FDA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009FDA4()
{
  result = qword_10019B0C0;
  if (!qword_10019B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019B0C0);
  }

  return result;
}

uint64_t sub_10009FDF8(void *a1)
{
  v1 = [a1 impliedValues];
  sub_100003D44(0, &qword_1001990E8, LNValue_ptr);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v46 = v2;

  v8 = 0;
  v43 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(v46 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v46 + 56) + 8 * v11);

    v16 = v15;
    v17 = [a1 intentIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    sub_1000A0154(v16, v13, v14, v18, v20, &v48);

    v21 = v49;
    if (v49)
    {
      v22 = v48;
      sub_10002EB80(&qword_10019A4F8, &unk_100150170);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10014CE90;
      *(v23 + 32) = v22;
      *(v23 + 40) = v21;
      v24 = v51[0];
      *(v23 + 48) = v50;
      *(v23 + 64) = v24;
      *(v23 + 74) = *(v51 + 10);
      isUnique = swift_isUniquelyReferenced_nonNull_native();
      v47 = v43;
      v25 = sub_10000C2A0(v13, v14);
      v26 = v43[2];
      v44 = v27;
      v28 = (v27 & 1) == 0;
      v29 = v26 + v28;
      if (__OFADD__(v26, v28))
      {
        goto LABEL_21;
      }

      v30 = v25;
      sub_10002EB80(&qword_10019AFB8, &unk_100150150);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUnique, v29))
      {
        v31 = v13;
        v32 = sub_10000C2A0(v13, v14);
        v34 = v44;
        if ((v44 & 1) != (v33 & 1))
        {
          goto LABEL_23;
        }

        v30 = v32;
      }

      else
      {
        v31 = v13;
        v34 = v44;
      }

      v43 = v47;
      if (v34)
      {
        v35 = v47[7];
        v36 = *(v35 + 8 * v30);
        *(v35 + 8 * v30) = v23;
      }

      else
      {
        v47[(v30 >> 6) + 8] |= 1 << v30;
        v37 = (v47[6] + 16 * v30);
        *v37 = v31;
        v37[1] = v14;
        *(v47[7] + 8 * v30) = v23;
        v38 = v47[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_22;
        }

        v47[2] = v40;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v43;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A0154(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = [a1 valueType];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v13 = a5;

      v14 = [v11 enumerationIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v46 = v17;
      v18._countAndFlagsBits = 46;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      String.append(_:)(v47);

      countAndFlagsBits = v15;
      object = v46;
LABEL_4:

LABEL_29:
      v35 = _swiftEmptyArrayStorage;
      v37 = a4;
      v36 = a2;
      goto LABEL_30;
    }
  }

  v21 = [a1 valueType];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    v22 = [objc_opt_self() BOOLValueType];
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v24 = [a1 value];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {

        if (LOBYTE(v47._countAndFlagsBits))
        {
          countAndFlagsBits = 1163219540;
        }

        else
        {
          countAndFlagsBits = 0x45534C4146;
        }

        if (LOBYTE(v47._countAndFlagsBits))
        {
          object = 0xE400000000000000;
        }

        else
        {
          object = 0xE500000000000000;
        }

        goto LABEL_28;
      }
    }
  }

  v9 = [a1 valueType];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = [v25 memberValueType];
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_22;
    }

    v27 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    if (swift_dynamicCast())
    {
      if (*(v47._countAndFlagsBits + 16))
      {
        countAndFlagsBits = *(v47._countAndFlagsBits + 32);
        object = *(v47._countAndFlagsBits + 40);

        v13 = a5;

        goto LABEL_4;
      }
    }
  }

LABEL_22:
  v28 = [a1 valueType];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();

  if (v29)
  {
    v30 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      goto LABEL_27;
    }
  }

  v31 = [a1 valueType];
  v32 = sub_1000A0780();

  if (v32)
  {
    v33 = [a1 value];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      goto LABEL_27;
    }
  }

  v34 = [a1 value];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
LABEL_27:
    object = v47._object;
    countAndFlagsBits = v47._countAndFlagsBits;
LABEL_28:
    v13 = a5;

    goto LABEL_29;
  }

  if (qword_1001982F0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000347C(v38, qword_10019E008);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_100004C50(a2, a3, &v48);
    _os_log_impl(&_mh_execute_header, v39, v40, "Tried converting parameter %s to String but failed", v41, 0xCu);
    sub_1000034F8(v42);
  }

  v37 = 0;
  v13 = 0;
  v36 = 0;
  a3 = 0;
  countAndFlagsBits = 0;
  object = 0;
  v35 = 0;
LABEL_30:
  *a6 = v37;
  *(a6 + 8) = v13;
  *(a6 + 16) = v36;
  *(a6 + 24) = a3;
  *(a6 + 32) = countAndFlagsBits;
  *(a6 + 40) = object;
  *(a6 + 48) = v35;
  *(a6 + 56) = 0;
}

uint64_t sub_1000A0780()
{
  sub_100003D44(0, &qword_100199300, NSObject_ptr);
  v0 = objc_opt_self();
  v1 = [v0 intValueType];
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    return 1;
  }

  v3 = [v0 doubleValueType];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    return 1;
  }

  v5 = [v0 int16ValueType];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    return 1;
  }

  v7 = [v0 int32ValueType];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v10 = [v0 int64ValueType];
  v11 = static NSObject.== infix(_:_:)();

  return v11 & 1;
}

void sub_1000A08E4(uint64_t a1)
{
  v1 = a1;
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2 & ~(v2 >> 63), 0);
    v45 = _swiftEmptyArrayStorage;
    v48 = sub_10006651C(v1);
    v49 = v3;
    v50 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v41 = v1 + 56;
      v40 = v1 + 64;
      v42 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v48;
        v8 = v50;
        v44 = v49;
        v9 = v1;
        sub_100066278(v48, v49, v50, v1);
        v11 = v10;
        v12 = [v10 bundleIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v46 = v13;
        v47 = v15;
        v16._countAndFlagsBits = 58;
        v16._object = 0xE100000000000000;
        String.append(_:)(v16);
        v17 = [v11 actionIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21._countAndFlagsBits = v18;
        v21._object = v20;
        String.append(_:)(v21);

        v22 = v46;
        v23 = v47;
        v24 = v45;
        v51 = v45;
        v26 = v45[2];
        v25 = v45[3];
        if (v26 >= v25 >> 1)
        {
          sub_100011438(v25 > 1, v26 + 1, 1);
          v24 = v51;
        }

        v24[2] = v26 + 1;
        v27 = &v24[2 * v26];
        v27[4] = v22;
        v27[5] = v23;
        v45 = v24;
        if (v43)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v32 = v42;
          sub_10002EB80(&unk_10019B4C0, &qword_1001507B8);
          v33 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v33(&v46, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v28 = 1 << *(v9 + 32);
          if (v7 >= v28)
          {
            goto LABEL_32;
          }

          v29 = v7 >> 6;
          v30 = *(v41 + 8 * (v7 >> 6));
          if (((v30 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v44)
          {
            goto LABEL_34;
          }

          v31 = v30 & (-2 << (v7 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v32 = v42;
          }

          else
          {
            v34 = v29 << 6;
            v35 = v29 + 1;
            v36 = (v40 + 8 * v29);
            v32 = v42;
            while (v35 < (v28 + 63) >> 6)
            {
              v38 = *v36++;
              v37 = v38;
              v34 += 64;
              ++v35;
              if (v38)
              {
                sub_100060B50(v7, v44, 0);
                v28 = __clz(__rbit64(v37)) + v34;
                goto LABEL_27;
              }
            }

            sub_100060B50(v7, v44, 0);
          }

LABEL_27:
          v39 = *(v1 + 36);
          v48 = v28;
          v49 = v39;
          v50 = 0;
        }

        if (v5 == v32)
        {
          sub_100060B50(v48, v49, v50);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

double sub_1000A0C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v5 = sub_10000C2A0(a1, a2), (v6 & 1) != 0))
  {
    v7 = sub_1000056FC(v5);

    sub_100004D14(v7, v8);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1000A0CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_10000C2A0(a1, a2), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

uint64_t sub_1000A0D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = sub_10004592C();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = (*(a5 + 56) + 16 * v6);
  result = *v8;
  v10 = v8[1];
  return result;
}

void *sub_1000A0D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000C2A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1000A0DCC@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = sub_1000056FC(v4);

    sub_100004D14(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1000A0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = sub_10004592C();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a5 + 56) + 8 * v6);
}

uint64_t sub_1000A0E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_10000C2A0(a1, a2), (v5 & 1) != 0))
  {
    v6 = (*(a3 + 56) + 16 * v4);
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    sub_1000B65A8();
  }

  return sub_1000077D8();
}

double sub_1000A0ED4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100045D24(), (v4 & 1) != 0))
  {
    v5 = sub_1000056FC(v3);

    sub_100004D14(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000A0F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_10000C2A0(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56);
    v8 = type metadata accessor for LNBundleRecord();
    sub_10000482C(v8);
    v10 = *(v9 + 72);
    sub_10001E984();
    v11 = a4;
    v12 = 0;
    v13 = 1;
    v14 = v8;
  }

  else
  {
    type metadata accessor for LNBundleRecord();
    v11 = sub_10001A9BC();
  }

  return sub_1000075C4(v11, v12, v13, v14);
}

uint64_t sub_1000A0FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10000C2A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1000A1030()
{
  v0 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  sub_1000B645C();
  v6 = static Data.== infix(_:_:)();
  sub_100009B18(v3, v5);
  sub_100009B18(v0, v2);
  return v6 & 1;
}

void sub_1000A10D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000A1138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v46 = *(a4 + 16);
  v5 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    if (v46 == v4)
    {
      return v5;
    }

    v6 = *(type metadata accessor for LNActionRecord() - 8);
    v7 = a4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (v5[2] && (v8 = sub_10000C2A0(v52, v53), (v9 & 1) != 0))
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
      sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v49, v50);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_100198B90, &unk_10014D040);
    v47 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v49, v50);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_29;
      }

      v18 = v20;
    }

    v22 = v10;
    if (v19)
    {
      v23 = v10[7];
      v24 = *(v23 + 8 * v18);
      *(v23 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v25 = (v10[6] + 16 * v18);
      *v25 = v49;
      v25[1] = v50;
      *(v10[7] + 8 * v18) = v11;
      v26 = v10[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v10[2] = v28;
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v30 = sub_10000C2A0(v52, v53);
    v32 = v5[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_26;
    }

    v35 = v30;
    v36 = v31;
    sub_10002EB80(&qword_10019B438, &qword_100150610);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v29, v34))
    {
      v37 = sub_10000C2A0(v52, v53);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_29;
      }

      v35 = v37;
    }

    v5 = v48;
    if (v36)
    {
      v39 = v48[7];
      v40 = *(v39 + 8 * v35);
      *(v39 + 8 * v35) = v22;
    }

    else
    {
      v48[(v35 >> 6) + 8] |= 1 << v35;
      v41 = (v48[6] + 16 * v35);
      *v41 = v52;
      v41[1] = v53;
      *(v48[7] + 8 * v35) = v10;
      v42 = v48[2];
      v27 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v48[2] = v43;
    }

    v4 = v47 + 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v46 = *(v6 - 1);
    v47 = v6;
    v54 = *(v6 - 2);

    v45 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_10000C2A0(v52, v53);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v49, v50);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B4A0, &qword_100150790);
    v44 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v49, v50);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v49;
      v24[1] = v50;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v29 = sub_10000C2A0(v52, v53);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B4A8, &qword_100150798);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v52, v53);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v48;
    if (v35)
    {
      v38 = v48[7];
      v39 = *(v38 + 8 * v34);
      *(v38 + 8 * v34) = v10;
    }

    else
    {
      v48[(v34 >> 6) + 8] |= 1 << v34;
      v40 = (v48[6] + 16 * v34);
      *v40 = v52;
      v40[1] = v53;
      *(v48[7] + 8 * v34) = v10;
      v41 = v48[2];
      v26 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v48[2] = v42;
    }

    v6 = v47 + 3;
    --v4;
    if (v44 == 1)
    {
      return v5;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v46 = *(v6 - 1);
    v47 = v6;
    v54 = *(v6 - 2);

    v45 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_10000C2A0(v52, v53);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_100003D44(0, &qword_10019AB60, LNEnumMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v49, v50);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B490, &qword_10014EE48);
    v44 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v49, v50);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v49;
      v24[1] = v50;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v29 = sub_10000C2A0(v52, v53);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B498, &qword_100150720);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v52, v53);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v48;
    if (v35)
    {
      v38 = v48[7];
      v39 = *(v38 + 8 * v34);
      *(v38 + 8 * v34) = v10;
    }

    else
    {
      v48[(v34 >> 6) + 8] |= 1 << v34;
      v40 = (v48[6] + 16 * v34);
      *v40 = v52;
      v40[1] = v53;
      *(v48[7] + 8 * v34) = v10;
      v41 = v48[2];
      v26 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v48[2] = v42;
    }

    v6 = v47 + 3;
    --v4;
    if (v44 == 1)
    {
      return v5;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A1BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = _swiftEmptyDictionarySingleton;
  v6 = (a4 + 48);
  if (!v4)
  {
    return v5;
  }

  while (1)
  {
    v7 = *v6;
    v46 = *(v6 - 1);
    v47 = v6;
    v54 = *(v6 - 2);

    v45 = v7;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (!v5[2])
    {
      goto LABEL_5;
    }

    v8 = sub_10000C2A0(v52, v53);
    if (v9)
    {
      v10 = *(v5[7] + 8 * v8);
    }

    else
    {
LABEL_5:
      sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v11 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10000C2A0(v49, v50);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    v19 = v14;
    sub_10002EB80(&qword_10019B480, &qword_1001506A0);
    v44 = v4;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000C2A0(v49, v50);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    if (v19)
    {
      v22 = v10[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v11;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v10[6] + 16 * v18);
      *v24 = v49;
      v24[1] = v50;
      *(v10[7] + 8 * v18) = v11;
      v25 = v10[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v10[2] = v27;
    }

    v28 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v29 = sub_10000C2A0(v52, v53);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_25;
    }

    v34 = v29;
    v35 = v30;
    sub_10002EB80(&qword_10019B488, &qword_1001506A8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v28, v33))
    {
      v36 = sub_10000C2A0(v52, v53);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_28;
      }

      v34 = v36;
    }

    v5 = v48;
    if (v35)
    {
      v38 = v48[7];
      v39 = *(v38 + 8 * v34);
      *(v38 + 8 * v34) = v10;
    }

    else
    {
      v48[(v34 >> 6) + 8] |= 1 << v34;
      v40 = (v48[6] + 16 * v34);
      *v40 = v52;
      v40[1] = v53;
      *(v48[7] + 8 * v34) = v10;
      v41 = v48[2];
      v26 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v26)
      {
        goto LABEL_27;
      }

      v48[2] = v42;
    }

    v6 = v47 + 3;
    --v4;
    if (v44 == 1)
    {
      return v5;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000A1F48(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1000142A0(*(a1 + 16), 0);
  sub_1000B6468();
  v7 = sub_1000B5A94(v3, v4, v5, v6);
  sub_100014464();
  if (v7 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void *sub_1000A1FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_1000B3278(*(a1 + 16), 0);
  sub_1000B6468();
  sub_1000B604C(v3, v4, v5, v6);
  v8 = v7;
  sub_100014464();
  if (v8 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

void _LNMetadataProviderDirect.actions()()
{
  v1 = v0;
  sub_1000188D4();
  sub_1000A44FC();
}

void _LNMetadataProviderDirect.enumerateActions(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.enumerateEnums(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.enumerateEntities(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void sub_1000A2170(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v5 = a3;
  sub_1000294A8();
  sub_10000C900();
  sub_1000A55D8();
  _Block_release(a4);
}

void _LNMetadataProviderDirect.enumerateQueries(forBundleIdentifier:using:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A55D8();
}

void _LNMetadataProviderDirect.actions(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.enums(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.entities(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.queries(forSchemaIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_1000A6B98();
}

void _LNMetadataProviderDirect.actionsConforming(to:logicalType:bundleIdentifier:)()
{
  sub_10000682C();

  v0;

  sub_1000071CC();
  sub_1000A3F48();
}

void _LNMetadataProviderDirect.actionsAndSystemProtocolDefaults(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_100013540();
  sub_1000A70F4();
}

void _LNMetadataProviderDirect.actions(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void _LNMetadataProviderDirect.actionIdentifiers(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_10000489C();
  sub_100013540();
  sub_1000A7648();
}

void _LNMetadataProviderDirect.action(forBundleIdentifier:actionIdentifier:)()
{
  sub_10000682C();
  v1 = v0;
  sub_1000294A8();

  sub_1000071CC();
  sub_1000A7B00();
}

void _LNMetadataProviderDirect.actionsConforming(to:withParametersOfTypes:bundleIdentifier:)()
{
  sub_10000682C();

  v2 = v0;
  v3 = v1;
  sub_1000186AC();
  sub_1000A4AE0();
}

void _LNMetadataProviderDirect.actions(withFullyQualifiedIdentifiers:)()
{
  v1 = v0;
  sub_1000B6398();
  sub_10000C900();
  sub_1000A4FB4();
}

void _LNMetadataProviderDirect.bundles()()
{
  v1 = v0;
  sub_10001DD20();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.bundleRegistrations()()
{
  v1 = v0;
  sub_1000B635C();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.queries()()
{
  v1 = v0;
  sub_10001CED0();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.queries(forBundleIdentifier:ofType:)()
{
  sub_10000682C();

  v1 = v0;
  sub_1000294A8();
  sub_1000071CC();
  sub_1000A8B34();
}

void _LNMetadataProviderDirect.queries(with:inputValueType:resultValueType:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v3;
  v7 = a2;
  sub_1000186AC();
  sub_1000A8518();
}

void _LNMetadataProviderDirect.enums()()
{
  v1 = v0;
  sub_100004BDC();
  sub_1000188D4();
  sub_1000A8038();
}

void _LNMetadataProviderDirect.enums(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

void sub_1000A2868()
{
  sub_10000E80C();

  sub_10000C900();
  sub_100010D64();
  sub_1000A967C();
}

void _LNMetadataProviderDirect.entities()()
{
  v1 = v0;
  sub_1000188D4();
  sub_1000A9CF4();
}

void _LNMetadataProviderDirect.entities(forBundleIdentifier:)()
{
  sub_100018460();
  v1 = v0;
  sub_1000B6398();
  sub_100007FE0();
  sub_100016DF0();
}

uint64_t sub_1000A2978()
{
  sub_10000E80C();

  sub_10000C900();
  sub_100010D64();
  return v0();
}

void _LNMetadataProviderDirect.entityIdentifiers(forBundleIdentifier:)()
{
  sub_100018460();

  v1 = v0;
  sub_1000188E0();
  sub_100013540();
  sub_1000A7648();
}

id _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v3;
  sub_10001A5F8();

  v8 = sub_1000186AC();
  return sub_1000AA3EC(v8, v9, a1, a2, a3);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _LNMetadataProviderDirect.appShortcutsProviderMangledTypeName(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  v5 = v1;

  v6 = sub_10000C900();
  v8 = sub_1000AA9C0(v6, v7, countAndFlagsBits, object);
  if (!v2 && !v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    sub_10002EB80(&qword_10019B0D0, &unk_100150350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v14;
    _StringGuts.grow(_:)(57);
    v15._object = 0x80000001001565D0;
    v15._countAndFlagsBits = 0xD000000000000037;
    String.append(_:)(v15);
    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = object;
    String.append(_:)(v16);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v17 = Dictionary.init(dictionaryLiteral:)();
    objc_allocWithZone(NSError);
    sub_1000B2C68(v10, v12, 9004, v17);
    v8 = sub_100013A10();
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}