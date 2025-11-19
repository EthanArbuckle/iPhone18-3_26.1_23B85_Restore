void (*sub_100053D4C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = sub_100054BC4(v6, a2, a3);
  return sub_100053DD4;
}

void sub_100053DD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100053E30(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for DIPError.Code();
  v104 = *(v107 - 1);
  v4 = *(v104 + 64);
  __chkstk_darwin(v107);
  v108 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v95 - v12;
  __chkstk_darwin(v11);
  v15 = &v95 - v14;
  v16 = type metadata accessor for DIPSignpost.Config();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for DIPSignpost();
  v99 = *(v18 - 8);
  v100 = v18;
  v19 = *(v99 + 64);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchActiveRegionsInPartitions.getter();
  v98 = v21;
  DIPSignpost.init(_:)();
  v109 = type metadata accessor for StoredPayload();
  v22 = static StoredPayload.fetchRequest()();
  sub_100004E70(&qword_1002018A8, &unk_1001ABD40);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001AA160;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 32) = 0x6E6F69676572;
  *(v23 + 40) = 0xE600000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v101 = v22;
  [v22 setPropertiesToFetch:isa];

  v25 = *(a1 + 16);
  v97 = v10;
  v106 = a2;
  if (v25)
  {
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = Array.description.getter();
      v31 = sub_10010150C(v29, v30, &v111);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = Set.description.getter();
      v34 = sub_10010150C(v32, v33, &v111);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchActiveRegionsInPartitions partitions %s requested docTypes: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v96 = *(v102 + 8);
    v96(v15, v103);
    sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1001AAFC0;
    *(v35 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    v36 = sub_100055454(&qword_1002018C0, &qword_100201580, &qword_1001AB980);
    *(v35 + 32) = a1;
    *(v35 + 96) = &type metadata for UInt;
    *(v35 + 104) = &protocol witness table for UInt;
    *(v35 + 64) = v36;
    *(v35 + 72) = 2;
    *(v35 + 136) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    *(v35 + 144) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10);
    *(v35 + 112) = v106;

    v37 = NSPredicate.init(format:_:)();
  }

  else
  {
    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v111 = v41;
      *v40 = 136315138;
      v42 = Set.description.getter();
      v43 = a2;
      v45 = sub_10010150C(v42, v44, &v111);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "fetchActiveRegionsInPartitions requested docTypes: %s", v40, 0xCu);
      sub_100005090(v41);

      v96 = *(v102 + 8);
      v96(v13, v103);
    }

    else
    {

      v96 = *(v102 + 8);
      v96(v13, v103);
      v43 = a2;
    }

    sub_100050ECC();
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1001AAE50;
    *(v46 + 56) = &type metadata for UInt;
    *(v46 + 64) = &protocol witness table for UInt;
    *(v46 + 32) = 2;
    *(v46 + 96) = sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    *(v46 + 104) = sub_100055454(&qword_1002018A0, &qword_100201D00, &unk_1001ACF10);
    *(v46 + 72) = v43;

    v37 = NSPredicate.init(format:_:)();
  }

  v47 = v101;
  [v101 setPredicate:v37];

  v48 = *(v110 + 16);
  v49 = v112;
  v50 = NSManagedObjectContext.fetch<A>(_:)();
  v51 = v49;
  if (v49)
  {

    (*(v104 + 104))(v108, enum case for DIPError.Code.internalError(_:), v107);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v52 = v98;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v99 + 8))(v52, v100);
  }

  v54 = v50;
  if (v50 >> 62)
  {
LABEL_50:
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v55 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v95 = v51;
  if (v55)
  {
    v51 = 0;
    v56 = 0;
    v110 = v54 & 0xC000000000000001;
    v104 = v54 & 0xFFFFFFFFFFFFFF8;
    v107 = &_swiftEmptyDictionarySingleton;
    v105 = v54;
    v109 = v55;
    while (1)
    {
      if (v110)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *(v104 + 16))
        {
          goto LABEL_48;
        }

        v57 = *(v54 + 8 * v51 + 32);
      }

      v58 = v57;
      v59 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v60 = [v57 docType];
      if (v60)
      {
        break;
      }

LABEL_16:
      ++v51;
      if (v59 == v55)
      {
        goto LABEL_43;
      }
    }

    v61 = v60;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = [v58 region];
    if (!v64)
    {

LABEL_41:
      v55 = v109;
      goto LABEL_16;
    }

    v65 = v64;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v67;

    v68 = HIBYTE(v54) & 0xF;
    v108 = v66;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v68 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (!v68)
    {

LABEL_40:
      v54 = v105;
      goto LABEL_41;
    }

    sub_10000ED48(v56);
    v69 = v107;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v69;
    v72 = sub_100099644(v112, v63);
    v73 = *(v69 + 16);
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_49;
    }

    v76 = v71;
    if (*(v69 + 24) < v75)
    {
      sub_10010842C(v75, isUniquelyReferenced_nonNull_native);
      v77 = sub_100099644(v112, v63);
      if ((v76 & 1) != (v78 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v72 = v77;
      v79 = v111;
      if ((v76 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_36:

LABEL_39:
      v107 = v79;
      v80 = *(v79 + 56) + 8 * v72;
      sub_100102214(&v111, v108, v54);

      v56 = sub_100053E20;
      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v79 = v111;
      if (v71)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_100109AC4();
      v79 = v111;
      if (v76)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    sub_100112C68(v72, v112, v63, &_swiftEmptySetSingleton, v79);
    goto LABEL_39;
  }

  v56 = 0;
  v107 = &_swiftEmptyDictionarySingleton;
LABEL_43:
  v112 = v56;

  v81 = v97;
  defaultLogger()();

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v84 = 136315394;

    sub_100004E70(&qword_100201D00, &unk_1001ACF10);
    v85 = Dictionary.description.getter();
    v87 = v86;

    v88 = sub_10010150C(v85, v87, &v111);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    v89 = Set.description.getter();
    v91 = sub_10010150C(v89, v90, &v111);

    *(v84 + 14) = v91;
    _os_log_impl(&_mh_execute_header, v82, v83, "fetchActiveRegionsInPartitions returning %s for requested docTypes: %s", v84, 0x16u);
    swift_arrayDestroy();
  }

  v96(v81, v103);
  v93 = v99;
  v92 = v100;
  v94 = v98;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v93 + 8))(v94, v92);
  sub_10000ED48(v112);
  return v107;
}

void (*sub_100054BC4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v8[8] = sub_100054EDC(v8);
  v8[9] = sub_100054CD0(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100054C70;
}

void sub_100054C70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100054CD0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100099644(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_100109A9C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100108404(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100099644(a2, a3);
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
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100054E28;
}

void sub_100054E28(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_100112C68(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10001A8EC(*(v7 + 48) + 16 * v6);
    sub_10000C01C(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_100054EDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100054F04;
}

unint64_t sub_100054F10(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v61 - v8;
  result = sub_10010D02C(_swiftEmptyArrayStorage);
  v68 = result;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = (a1 + 32);
  v66 = "fetchAllCredentials()";
  v13 = (v3 + 8);
  v63 = xmmword_1001AA160;
  v64 = v2;
  v65 = v9;
  while (1)
  {
    v14 = *v12;
    if (!*(*v12 + 16))
    {
      goto LABEL_18;
    }

    v15 = *v12;

    v16 = sub_100099644(0x6F69746974726170, 0xE90000000000006ELL);
    if ((v17 & 1) == 0)
    {

LABEL_18:
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "missing partition; skipping", v39, 2u);
      }

      (*v13)(v7, v2);
      goto LABEL_4;
    }

    if (!*(v14 + 16))
    {

LABEL_22:
      defaultLogger()();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "missing credential identifier; skipping", v42, 2u);
      }

      (*v13)(v9, v2);
      goto LABEL_4;
    }

    v18 = (*(v14 + 56) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_100099644(0xD000000000000014, v66 | 0x8000000000000000);
    if ((v22 & 1) == 0)
    {

      v9 = v65;
      goto LABEL_22;
    }

    v23 = (*(v14 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];

    v26 = v68;
    if (v68[2])
    {
      sub_100099644(v20, v19);
      if (v27)
      {
        v62 = sub_100053D4C(v67, v20, v19);
        v29 = *v28;
        if (*v28)
        {
          v30 = v28;
          v31 = *v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v30 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = sub_100100418(0, *(v29 + 2) + 1, 1, v29);
            *v30 = v29;
          }

          v34 = *(v29 + 2);
          v33 = *(v29 + 3);
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v61 = v34 + 1;
            v60 = sub_100100418((v33 > 1), v34 + 1, 1, v29);
            v35 = v61;
            v29 = v60;
            *v30 = v60;
          }

          *(v29 + 2) = v35;
          v36 = &v29[16 * v34];
          *(v36 + 4) = v24;
          *(v36 + 5) = v25;
        }

        else
        {
        }

        (v62)(v67, 0);

        goto LABEL_38;
      }
    }

    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
    v43 = swift_allocObject();
    *(v43 + 16) = v63;
    *(v43 + 32) = v24;
    *(v43 + 40) = v25;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v67[0] = v26;
    v45 = sub_100099644(v20, v19);
    v47 = v26[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (v26[3] < v50)
    {
      sub_100108404(v50, v44);
      v45 = sub_100099644(v20, v19);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_43;
      }

LABEL_30:
      v53 = v67[0];
      if ((v51 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    if (v44)
    {
      goto LABEL_30;
    }

    v56 = v45;
    sub_100109A9C();
    v45 = v56;
    v53 = v67[0];
    if ((v51 & 1) == 0)
    {
LABEL_35:
      v53[(v45 >> 6) + 8] |= 1 << v45;
      v57 = (v53[6] + 16 * v45);
      *v57 = v20;
      v57[1] = v19;
      *(v53[7] + 8 * v45) = v43;
      v58 = v53[2];
      v49 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v49)
      {
        goto LABEL_42;
      }

      v53[2] = v59;
      goto LABEL_37;
    }

LABEL_31:
    v54 = v53[7];
    v55 = *(v54 + 8 * v45);
    *(v54 + 8 * v45) = v43;

LABEL_37:
    v68 = v53;
LABEL_38:
    v2 = v64;
    v9 = v65;
LABEL_4:
    ++v12;
    if (!--v11)
    {
      return v68;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100055454(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005549C()
{
  v0 = type metadata accessor for CredentialKeyType();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPSignpost.Config();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for DIPSignpost();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllInactivePresentmentKeys.getter();
  v45 = v10;
  DIPSignpost.init(_:)();
  v43 = type metadata accessor for StoredCryptoKey();
  v42 = static StoredCryptoKey.fetchRequest()();
  v41 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  v48 = "keyType = %@ or keyType = %@)";
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v11 = swift_allocObject();
  v40 = xmmword_1001AA160;
  *(v11 + 16) = xmmword_1001AA160;
  v39 = v1[13];
  v37[0] = v4;
  v39(v4, enum case for CredentialKeyType.legacySE(_:), v0);
  v12 = CredentialKeyType.rawValue.getter();
  v14 = v13;
  v15 = v1[1];
  v37[1] = v1 + 1;
  v38 = v15;
  v15(v4, v0);
  *(v11 + 56) = &type metadata for String;
  v16 = sub_100050F18();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v17 = NSPredicate.init(format:_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v40;
  v19 = v37[0];
  v39(v37[0], enum case for CredentialKeyType.ses(_:), v0);
  v20 = v19;
  v21 = CredentialKeyType.rawValue.getter();
  v23 = v22;
  v38(v20, v0);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v16;
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = NSPredicate.init(format:_:)();
  sub_100004E70(&qword_100200220, &unk_1001AA540);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001ABD30;
  *(v25 + 32) = v17;
  *(v25 + 40) = v24;
  v26 = objc_allocWithZone(NSCompoundPredicate);
  v27 = v17;
  v28 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v30 = v26;
  v31 = v42;
  v32 = [v30 initWithType:2 subpredicates:isa];

  [v31 setPredicate:v32];
  v33 = *(v44 + 16);
  v34 = NSManagedObjectContext.fetch<A>(_:)();

  v35 = v45;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v46 + 8))(v35, v47);
  return v34;
}

uint64_t sub_1000558E0()
{
  v0 = type metadata accessor for CredentialKeyType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v44 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v41 - v5;
  v7 = type metadata accessor for CredentialKeyUsage();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPSignpost.Config();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for DIPSignpost();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  __chkstk_darwin(v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchAllInactiveDeviceEncryptionKeys.getter();
  v45 = v17;
  DIPSignpost.init(_:)();
  v43 = type metadata accessor for StoredCryptoKey();
  v42 = static StoredCryptoKey.fetchRequest()();
  v18 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  v41[1] = "AuthPolicy == %d";
  v41[2] = v18;
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001AAFC0;
  (*(v8 + 104))(v11, enum case for CredentialKeyUsage.deviceEncryption(_:), v7);
  v20 = CredentialKeyUsage.rawValue.getter();
  v22 = v21;
  (*(v8 + 8))(v11, v7);
  *(v19 + 56) = &type metadata for String;
  v41[0] = sub_100050F18();
  *(v19 + 64) = v41[0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = v1;
  v24 = *(v1 + 104);
  v24(v6, enum case for CredentialKeyType.sep(_:), v0);
  v25 = CredentialKeyType.rawValue.getter();
  v27 = v26;
  v28 = *(v23 + 8);
  v28(v6, v0);
  v29 = v41[0];
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v29;
  *(v19 + 72) = v25;
  *(v19 + 80) = v27;
  v30 = v44;
  v24(v44, enum case for CredentialKeyType.ses(_:), v0);
  v31 = v30;
  v32 = CredentialKeyType.rawValue.getter();
  v34 = v33;
  v28(v31, v0);
  *(v19 + 136) = &type metadata for String;
  *(v19 + 144) = v29;
  *(v19 + 112) = v32;
  *(v19 + 120) = v34;
  v35 = v42;
  v36 = NSPredicate.init(format:_:)();
  [v35 setPredicate:v36];

  v37 = *(v48 + 16);
  v38 = NSManagedObjectContext.fetch<A>(_:)();

  v39 = v45;
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v46 + 8))(v39, v47);
  return v38;
}

uint64_t sub_100055D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for StoredCryptoKey();
  v5 = static StoredCryptoKey.fetchRequest()();
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001AAE50;
  v7 = CredentialKeyType.rawValue.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100050F18();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for UInt;
  *(v6 + 104) = &protocol witness table for UInt;
  *(v6 + 64) = v10;
  *(v6 + 72) = a2;
  v11 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v11];

  v12 = *(v3 + 16);
  v13 = NSManagedObjectContext.fetch<A>(_:)();

  return v13;
}

uint64_t sub_100055E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = type metadata accessor for DIPSignpost.Config();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DIPSignpost();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchCredentialIdentifiersForPublicKeyIdentifier.getter();
  v40 = v12;
  DIPSignpost.init(_:)();
  type metadata accessor for StoredCryptoKey();
  v43 = static StoredCryptoKey.fetchRequest()();
  v13 = *(a3 + 16);
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v14 = swift_allocObject();
  if (v13)
  {
    *(v14 + 16) = xmmword_1001AAE50;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v14 + 56) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v14 + 64) = sub_100056894();
    *(v14 + 32) = isa;
    *(v14 + 96) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v14 + 104) = sub_1000568FC();
    *(v14 + 72) = a3;
  }

  else
  {
    *(v14 + 16) = xmmword_1001AA160;
    v16 = Data._bridgeToObjectiveC()().super.isa;
    *(v14 + 56) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v14 + 64) = sub_100056894();
    *(v14 + 32) = v16;
  }

  v17 = NSPredicate.init(format:_:)();
  v18 = v43;
  [v43 setPredicate:v17];

  v19 = *(v3 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  v45 = result;
  if (v4)
  {

    v21 = v40;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v41 + 8))(v21, v42);
    return v5;
  }

  v39 = 0;
  if (!(v45 >> 62))
  {
    v22 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_23:
    v5 = _swiftEmptyArrayStorage;
LABEL_24:

    v38 = v40;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v41 + 8))(v38, v42);
    return v5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v22 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v45 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v25 = &off_1001FE000;
    v44 = v45 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v45 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 v25[284]];
      if (v28 && (v29 = v28, v30 = [v28 credentialIdentifier], v29, v30))
      {
        v31 = v25;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100100418(0, *(v5 + 2) + 1, 1, v5);
        }

        v36 = *(v5 + 2);
        v35 = *(v5 + 3);
        if (v36 >= v35 >> 1)
        {
          v5 = sub_100100418((v35 > 1), v36 + 1, 1, v5);
        }

        *(v5 + 2) = v36 + 1;
        v37 = &v5[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        v24 = v44;
        v25 = v31;
      }

      else
      {
      }

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005634C(uint64_t a1, void *a2)
{
  v4 = v2;
  v33 = type metadata accessor for DIPError.Code();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v33);
  v34 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredCryptoKey();
  v10 = static StoredCryptoKey.fetchRequest()();
  [v10 setFetchLimit:1];
  sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v11 = swift_allocObject();
  v32 = xmmword_1001AA160;
  *(v11 + 16) = xmmword_1001AA160;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100050F18();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  v13 = *(v4 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v15._object = 0x80000001001B4C10;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31[1] = v35;
    (*(v7 + 104))(v34, enum case for DIPError.Code.coreDataErrorFetchCryptoKeyFailed(_:), v33);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    v22 = v21 + v20;
    v23 = (v22 + v18[14]);
    v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    swift_getErrorValue();
    swift_errorRetain();
    v26 = dispatch thunk of Error._code.getter();
    v23[3] = &type metadata for Int;
    v23[4] = &protocol witness table for Int;
    *v23 = v26;
    v27 = sub_10010C6F8(v21);
    swift_setDeallocating();
    sub_100005128(v22);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v27;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v29 = result;
  v30 = _CocoaArrayWrapper.endIndex.getter();
  result = v29;
  if (!v30)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(result + 32);
LABEL_8:
    v27 = v28;

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005684C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100056894()
{
  result = qword_1002018F8;
  if (!qword_1002018F8)
  {
    sub_10005684C(255, &qword_1002018F0, NSData_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018F8);
  }

  return result;
}

unint64_t sub_1000568FC()
{
  result = qword_1002018C0;
  if (!qword_1002018C0)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018C0);
  }

  return result;
}

unint64_t sub_100056960(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DIPError.Code();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v35 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StoredRelyingParty();
  v10 = static StoredRelyingParty.fetchRequest()();
  [v10 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v11 = swift_allocObject();
  v32 = xmmword_1001AA160;
  *(v11 + 16) = xmmword_1001AA160;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100050F18();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v12 = NSPredicate.init(format:_:)();
  [v10 setPredicate:v12];

  v13 = *(v4 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v15._countAndFlagsBits = 0xD00000000000001DLL;
    v15._object = 0x80000001001B4DB0;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8250;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31[1] = v36;
    (*(v33 + 104))(v35, enum case for DIPError.Code.coreDataErrorFetchRelyingPartyFailed(_:), v34);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v32;
    v22 = v21 + v20;
    v23 = (v22 + v18[14]);
    v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    swift_getErrorValue();
    swift_errorRetain();
    v26 = dispatch thunk of Error._code.getter();
    v23[3] = &type metadata for Int;
    v23[4] = &protocol witness table for Int;
    *v23 = v26;
    v27 = sub_10010C6F8(v21);
    swift_setDeallocating();
    sub_100005128(v22);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v27;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v29 = result;
  v30 = _CocoaArrayWrapper.endIndex.getter();
  result = v29;
  if (!v30)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(result + 32);
LABEL_8:
    v27 = v28;

    return v27;
  }

  __break(1u);
  return result;
}

unint64_t sub_100056E4C(uint64_t a1, void *a2)
{
  v4 = v2;
  v43 = type metadata accessor for DIPError.Code();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v43);
  v44 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for DIPSignpost();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseFetchPrearmTrustKey.getter();
  v45 = v15;
  DIPSignpost.init(_:)();
  type metadata accessor for StoredTrustKey();
  v16 = static StoredTrustKey.fetchRequest()();
  [v16 setFetchLimit:1];
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v17 = swift_allocObject();
  v42 = xmmword_1001AA160;
  *(v17 + 16) = xmmword_1001AA160;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100050F18();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v18 = NSPredicate.init(format:_:)();
  [v16 setPredicate:v18];

  v19 = *(v4 + 16);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v21._countAndFlagsBits = 0xD00000000000002ELL;
    v21._object = 0x80000001001B4E30;
    String.append(_:)(v21);
    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8250;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v41[1] = v48;
    (*(v7 + 104))(v44, enum case for DIPError.Code.coreDataErrorFetchPrearmTrustKeyFailed(_:), v43);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v24 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v25 = *(*v24 + 72);
    v26 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v42;
    v28 = v27 + v26;
    v29 = (v27 + v26 + v24[14]);
    v30 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v31 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v31 - 8) + 104))(v28, v30, v31);
    swift_getErrorValue();
    swift_errorRetain();
    v32 = dispatch thunk of Error._code.getter();
    v29[3] = &type metadata for Int;
    v29[4] = &protocol witness table for Int;
    *v29 = v32;
    sub_10010C6F8(v27);
    swift_setDeallocating();
    sub_100005128(v28);
    swift_deallocClassInstance();
    v33 = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v34 = v45;
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v46 + 8))(v34, v47);
    return v33;
  }

  v36 = v45;
  v35 = v46;
  v37 = v47;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v33 = 0;
    goto LABEL_11;
  }

  v39 = result;
  v40 = _CocoaArrayWrapper.endIndex.getter();
  result = v39;
  if (!v40)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(result + 32);
LABEL_8:
    v33 = v38;

LABEL_11:
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v35 + 8))(v36, v37);
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_100057464(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v33 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost.Config();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v32 = type metadata accessor for DIPSignpost();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v32);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IDCSSignposts.databaseDeletePrearmTrustKey.getter();
  DIPSignpost.init(_:)();
  v16 = sub_100056E4C(a1, a2);
  if (v3)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v17._object = 0x80000001001B4ED0;
    v17._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v17);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v31[1] = v35;
    v31[2] = v34;
    (*(v7 + 104))(v33, enum case for DIPError.Code.coreDataErrorDeletePrearmTrustKeyFailed(_:), v6);
    sub_100004E70(&unk_100200230, &unk_1001AB020);
    v18 = (sub_100004E70(&unk_100201890, &unk_1001AA550) - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001AA160;
    v22 = v21 + v20;
    v23 = (v21 + v20 + v18[14]);
    v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    swift_getErrorValue();
    swift_errorRetain();
    v26 = dispatch thunk of Error._code.getter();
    v23[3] = &type metadata for Int;
    v23[4] = &protocol witness table for Int;
    *v23 = v26;
    sub_10010C6F8(v21);
    swift_setDeallocating();
    sub_100005128(v22);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v12 + 8))(v15, v32);
  }

  else
  {
    v28 = v32;
    if (v16)
    {
      v29 = *(v2 + 16);
      v30 = v16;
      [v29 deleteObject:v16];
    }

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    return (*(v12 + 8))(v15, v28);
  }
}

uint64_t sub_100057918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100057A0C, 0, 0);
}

uint64_t sub_100057A0C()
{
  v59 = v0;
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  defaultLogger()();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v10 = v0[6];
  v9 = v0[7];
  if (v7)
  {
    v11 = v0[5];
    v55 = v0[4];
    v12 = v0[3];
    v56 = v0[12];
    v13 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Array.description.getter();
    v16 = sub_10010150C(v14, v15, &v58);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10010150C(v12, v55, &v58);
    _os_log_impl(&_mh_execute_header, v5, v6, "IDCSCoreDataBackfillProvider: performBackfill partitions %s docType %s", v13, 0x16u);
    swift_arrayDestroy();

    v17 = *(v9 + 8);
    v17(v56, v10);
  }

  else
  {

    v17 = *(v9 + 8);
    v17(v8, v10);
  }

  v0[13] = v17;
  v18 = v0[11];
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "In performBackfillOperationsIfUserDefaultDoesNotExist", v21, 2u);
  }

  v22 = v0[11];
  v23 = v0[6];
  v24 = v0[7];

  v17(v22, v23);
  v25 = objc_opt_self();
  v0[14] = v25;
  v26 = [v25 standardUserDefaults];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 stringForKey:v27];

  if (v28)
  {
    v29 = v0[10];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    defaultLogger()();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[10];
    v38 = v0[6];
    v37 = v0[7];
    if (v35)
    {
      v57 = v0[10];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 136315138;
      v41 = sub_10010150C(v30, v32, &v58);

      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "IDCSCoreDataBackfillProvider idcreddDatabaseBackfillVersion exists %s", v39, 0xCu);
      sub_100005090(v40);

      v42 = v57;
    }

    else
    {

      v42 = v36;
    }

    v17(v42, v38);
    v50 = v0[11];
    v49 = v0[12];
    v52 = v0[9];
    v51 = v0[10];
    v53 = v0[8];

    v54 = v0[1];

    return v54();
  }

  else
  {
    v43 = swift_task_alloc();
    v0[15] = v43;
    *v43 = v0;
    v43[1] = sub_100057EF0;
    v44 = v0[4];
    v45 = v0[5];
    v46 = v0[2];
    v47 = v0[3];

    return sub_1000583AC(v45, v46, v47, v44, v45);
  }
}

uint64_t sub_100057EF0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_100058208;
  }

  else
  {
    v3 = sub_100058004;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058004()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = [*(v0 + 112) standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:v4];

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 104);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10010150C(3223089, 0xE300000000000000, &v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "IDCSCoreDataBackfillProvider performBackfillOperationsIfUserDefaultDoesNotExist: IDCSDefaultsKeys succesfully updated to %s", v12, 0xCu);
    sub_100005090(v13);
  }

  v8(v9, v10);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100058208()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "IDCSCoreDataBackfillProvider caught error %@", v7, 0xCu);
    sub_100005CA8(v8);
  }

  else
  {
    v10 = *(v0 + 128);
  }

  v11 = *(v0 + 56) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000583AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100058474, 0, 0);
}

uint64_t sub_100058474()
{
  v31 = v0;
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v28 = v0[4];
    v29 = v0[5];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Array.description.getter();
    v16 = sub_10010150C(v14, v15, &v30);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10010150C(v28, v29, &v30);
    _os_log_impl(&_mh_execute_header, v6, v7, "IDCSCoreDataBackfillProvider updateEmptyRegion partitions %s docType %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v10 + 8))(v9, v11);
  v18 = v0[5];
  v17 = v0[6];
  v20 = v0[3];
  v19 = v0[4];
  v21 = v0[2];
  v22 = swift_allocObject();
  v0[10] = v22;
  v22[2] = v20;
  v22[3] = v19;
  v22[4] = v18;
  v22[5] = v17;
  v22[6] = v21;
  v23 = *(v20 + 16);
  v24 = swift_allocObject();
  v0[11] = v24;
  *(v24 + 16) = sub_100058F4C;
  *(v24 + 24) = v22;
  v25 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v26 = swift_task_alloc();
  v0[12] = v26;
  *v26 = v0;
  v26[1] = sub_100058750;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v26, sub_10001AAC8, v24, &type metadata for () + 8);
}

uint64_t sub_100058750()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1000588D8;
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = sub_100058874;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100058874()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000588D8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void sub_100058950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = v51 - v15;
  v57 = type metadata accessor for StoredPayload();
  v16 = static StoredPayload.fetchRequest()();
  sub_100050ECC();
  sub_100004E70(&qword_100201868, &unk_1001ABDC0);
  v17 = swift_allocObject();
  v56 = xmmword_1001AA160;
  *(v17 + 16) = xmmword_1001AA160;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100050F18();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  v18 = NSPredicate.init(format:_:)();
  if (*(a6 + 16))
  {
    sub_100004E70(&qword_100200220, &unk_1001AA540);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001ABD30;
    v20 = swift_allocObject();
    *(v20 + 16) = v56;
    *(v20 + 56) = sub_100004E70(&qword_100201580, &qword_1001AB980);
    *(v20 + 64) = sub_1000568FC();
    *(v20 + 32) = a6;

    *(v19 + 32) = NSPredicate.init(format:_:)();
    *(v19 + 40) = v18;
    v21 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v16 setPredicate:v23];
  }

  else
  {
    [v16 setPredicate:v18];
  }

  v24 = *(v55 + 16);
  v25 = v58;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v25)
  {
  }

  else
  {
    v27 = v26;
    v51[1] = 0;
    v53 = v16;
    v28 = v54;
    defaultLogger()();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v31 = v27 >> 62;
    if (!os_log_type_enabled(v29, v30))
    {

      goto LABEL_11;
    }

    v32 = swift_slowAlloc();
    *v32 = 134217984;
    if (v31)
    {
      goto LABEL_25;
    }

    v33 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v27;
    while (1)
    {
      *(v32 + 4) = v33;
      v35 = v32;

      _os_log_impl(&_mh_execute_header, v29, v30, "IDCSCoreDataBackfillProvider updateEmptyRegion result count: %ld", v35, 0xCu);

      v27 = v34;
LABEL_11:
      v52 = v18;
      v36 = *(v60 + 8);
      v60 += 8;
      v32 = v36(v28, v59);
      if (v31)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
        v31 = v32;
        if (!v32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v31 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_22;
        }
      }

      if (v31 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_25:
      v34 = v27;
      v50 = v32;
      v33 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v50;
    }

    v38 = 0;
    v39 = v27 & 0xC000000000000001;
    *&v37 = 136315138;
    v56 = v37;
    v57 = v27;
    v58 = v36;
    do
    {
      if (v39)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v27 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = String._bridgeToObjectiveC()();
      [v41 setRegion:v42];

      defaultLogger()();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = v39;
        v47 = v14;
        v48 = v31;
        v49 = swift_slowAlloc();
        v61 = v49;
        *v45 = v56;
        *(v45 + 4) = sub_10010150C(21333, 0xE200000000000000, &v61);
        _os_log_impl(&_mh_execute_header, v43, v44, "IDCSCoreDataBackfillProvider updateEmptyRegion region updated %s", v45, 0xCu);
        sub_100005090(v49);
        v31 = v48;
        v14 = v47;
        v39 = v46;

        v27 = v57;
        v36 = v58;
      }

      v36(v14, v59);
      ++v38;
    }

    while (v31 != v38);
LABEL_22:

    sub_100050240();
  }
}

uint64_t sub_100058EFC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100058F70()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058FA8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 16) + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore__container);
  os_unfair_lock_lock((v7 + 24));
  sub_100059460((v7 + 16), &v10);
  os_unfair_lock_unlock((v7 + 24));
  if (!v1)
  {
    return v10;
  }

  (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10005917C(int a1)
{
  v24 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - v8;
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  static URL.libraryDirectory.getter();
  URL.appendingPathComponent(_:isDirectory:)();
  v12 = *(v2 + 8);
  v12(v6, v1);
  URL.appendingPathComponent(_:)();
  v12(v9, v1);
  static URL.idcreddManagedObjectModel.getter();
  (*(v2 + 16))(v6, v11, v1);
  v23 = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
  v13 = type metadata accessor for AsyncCoreDataStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore__container;
  sub_100004E70(&qword_1002019A0, &qword_1001ABDB8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  v23 = v23;
  v12(v11, v1);
  *(v16 + v17) = v18;
  *(v18 + 16) = 0;
  v19 = (v16 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_persistentStoreName);
  *v19 = 1935893609;
  v19[1] = 0xE400000000000000;
  v20 = *(v2 + 32);
  v20(v16 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_modelURL, v9, v1);
  v20(v16 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_databaseURL, v6, v1);
  *(v16 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_urlFileProtection) = v23;
  *(v16 + 16) = v24 & 1;
  *(v16 + OBJC_IVAR____TtC7idcredd18AsyncCoreDataStore_automaticallyRemoveIncompatibleStoresOnMigrationError) = 0;
  result = v25;
  *(v25 + 16) = v16;
  return result;
}

void *sub_10005947C()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 payloads];
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v8 = v6;
    v15 = &_swiftEmptyArrayStorage;
    NSSet.makeIterator()();
    NSFastEnumerationIterator.next()();
    while (v14)
    {
      sub_100009268(&v13, &v12);
      type metadata accessor for StoredPayload();
      if (swift_dynamicCast())
      {
        v9 = v11[2];
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v11[1] = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v15;
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

void sub_10005966C()
{
  v2 = type metadata accessor for CredentialKeyUsage();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v10 = [v0 credentialIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [v0 managedObjectContext];
    if (v15)
    {
      v36 = v15;
      v35 = type metadata accessor for StoredCryptoKey();
      v34 = static StoredCryptoKey.fetchRequest()();
      v16 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      v33[2] = "setCredentialUUIDs(_:)";
      v33[3] = v16;
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v17 = v12;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001AAFC0;
      *(v18 + 56) = &type metadata for String;
      v19 = sub_100050F18();
      *(v18 + 64) = v19;
      *(v18 + 32) = v17;
      *(v18 + 40) = v14;
      v33[1] = v1;
      v33[0] = v3[13];
      (v33[0])(v9, enum case for CredentialKeyUsage.deviceEncryption(_:), v2);
      v20 = CredentialKeyUsage.rawValue.getter();
      v21 = v9;
      v22 = v20;
      v24 = v23;
      v25 = v7;
      v26 = v3[1];
      v26(v21, v2);
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = v19;
      *(v18 + 72) = v22;
      *(v18 + 80) = v24;
      (v33[0])(v25, enum case for CredentialKeyUsage.deviceEncryptionAuthRequired(_:), v2);
      v27 = CredentialKeyUsage.rawValue.getter();
      v29 = v28;
      v26(v25, v2);
      *(v18 + 136) = &type metadata for String;
      *(v18 + 144) = v19;
      *(v18 + 112) = v27;
      *(v18 + 120) = v29;
      v30 = NSPredicate.init(format:_:)();
      v31 = v34;
      [v34 setPredicate:v30];

      v32 = v36;
      NSManagedObjectContext.fetch<A>(_:)();
    }

    else
    {
    }
  }
}

void sub_100059974()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 elementIdentifiersByNamespace];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v16 >= 1)
      {
        goto LABEL_9;
      }
    }

LABEL_13:
    sub_1000092BC(v9, v11);
LABEL_14:
    sub_10010D02C(&_swiftEmptyArrayStorage);
    return;
  }

  if (!v12)
  {
    if (!BYTE6(v11))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v9), v9))
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (HIDWORD(v9) - v9 < 1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v17 = type metadata accessor for JSONDecoder();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100004E70(&qword_1002019B8, &qword_1001AD020);
  sub_100060A8C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.jsonEncodingFailed(_:), v2);
    swift_errorRetain();
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1000092BC(v9, v11);
  }

  else
  {
    sub_1000092BC(v9, v11);
  }
}

void *sub_100059C5C()
{
  v1 = [v0 credentialIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = [v0 managedObjectContext];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for StoredCryptoKey();
      v8 = static StoredCryptoKey.fetchRequest()();
      sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1001AA160;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100050F18();
      *(v9 + 32) = v3;
      *(v9 + 40) = v5;
      v10 = NSPredicate.init(format:_:)();
      [v8 setPredicate:v10];

      v11 = NSManagedObjectContext.fetch<A>(_:)();
      return v11;
    }
  }

  return &_swiftEmptyArrayStorage;
}

void sub_100059E04(unsigned int *a1)
{
  v3 = type metadata accessor for CredentialKeyUsage();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 credentialIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [v1 managedObjectContext];
    if (v13)
    {
      v14 = v13;
      v28 = type metadata accessor for StoredCryptoKey();
      v27 = static StoredCryptoKey.fetchRequest()();
      v15 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
      v26[1] = "fiersByNamespace()";
      v26[2] = v15;
      sub_100004E70(&qword_100201868, &unk_1001ABDC0);
      v16 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001AAE50;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_100050F18();
      v19 = v10;
      v20 = v18;
      *(v17 + 64) = v18;
      *(v17 + 32) = v19;
      *(v17 + 40) = v12;
      (*(v4 + 104))(v7, *v16, v3);
      v21 = CredentialKeyUsage.rawValue.getter();
      v23 = v22;
      (*(v4 + 8))(v7, v3);
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v20;
      *(v17 + 72) = v21;
      *(v17 + 80) = v23;
      v24 = NSPredicate.init(format:_:)();
      v25 = v27;
      [v27 setPredicate:v24];

      NSManagedObjectContext.fetch<A>(_:)();
    }

    else
    {
    }
  }
}

void sub_10005A0A4(uint64_t a1, void *a2)
{
  v4 = v2;
  v70 = a1;
  v71 = a2;
  v5 = type metadata accessor for CredentialKeyUsage();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "IDCSEntities: getPresentmentKey", v18, 2u);
  }

  v21 = *(v10 + 8);
  v19 = v10 + 8;
  v20 = v21;
  v21(v15, v9);
  v22 = [v4 credentialIdentifier];
  if (v22)
  {
    v60 = v19;
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = [v4 managedObjectContext];
    if (!v27)
    {

      return;
    }

    v28 = v27;
    v58 = v20;
    v59 = v9;
    v63 = type metadata accessor for StoredCryptoKey();
    v29 = static StoredCryptoKey.fetchRequest()();
    v66 = v3;
    v30 = v29;
    [v29 setFetchLimit:1];
    v31 = sub_10005684C(0, &qword_100201870, NSPredicate_ptr);
    v61 = "missing stored package";
    v62 = v31;
    sub_100004E70(&qword_100201868, &unk_1001ABDC0);
    v32 = v24;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1001AAFC0;
    *(v33 + 56) = &type metadata for String;
    v34 = sub_100050F18();
    *(v33 + 64) = v34;
    v57 = v32;
    *(v33 + 32) = v32;
    *(v33 + 40) = v26;
    v35 = v26;
    v37 = v68;
    v36 = v69;
    (*(v68 + 104))(v8, enum case for CredentialKeyUsage.presentment(_:), v69);
    v64 = v35;

    v38 = CredentialKeyUsage.rawValue.getter();
    v65 = v28;
    v40 = v39;
    (*(v37 + 8))(v8, v36);
    *(v33 + 96) = &type metadata for String;
    *(v33 + 104) = v34;
    *(v33 + 72) = v38;
    *(v33 + 80) = v40;
    v41 = v65;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v33 + 136) = sub_10005684C(0, &qword_1002018F0, NSData_ptr);
    *(v33 + 144) = sub_100056894();
    *(v33 + 112) = isa;
    v43 = NSPredicate.init(format:_:)();
    [v30 setPredicate:v43];

    v44 = v66;
    v45 = NSManagedObjectContext.fetch<A>(_:)();
    v46 = v44;
    if (v44)
    {
      goto LABEL_22;
    }

    v47 = v45;
    v48 = v67;
    defaultLogger()();
    v49 = v64;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    v52 = v47 >> 62;
    if (!os_log_type_enabled(v50, v51))
    {

      v58(v48, v59);
      goto LABEL_16;
    }

    v71 = v30;
    v66 = 0;
    v48 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v72 = v30;
    *v48 = 136315394;
    v53 = sub_10010150C(v57, v49, &v72);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2112;
    if (v52)
    {
      goto LABEL_26;
    }

    v54 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v54)
    {
      while (1)
      {
LABEL_14:
        *(v48 + 14) = v54;
        *v46 = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "IDCSEntities: getPresentmentKey for credentialIdentifier %s returning : first entity: %@", v48, 0x16u);
        sub_10000A0D4(v46, &qword_1002003B8, &unk_1001AB850);

        sub_100005090(v30);

        v58(v67, v59);
        v41 = v65;
        v46 = v66;
        v30 = v71;
LABEL_16:
        if (v52)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_22;
          }
        }

        else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        if ((v47 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v55 = *(v47 + 32);
          goto LABEL_22;
        }

        __break(1u);
LABEL_26:
        v54 = _CocoaArrayWrapper.endIndex.getter();
        if (v54)
        {
          goto LABEL_11;
        }
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

      return;
    }

LABEL_11:
    if ((v47 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v54 = *(v47 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }
}

void sub_10005A720()
{
  v46 = type metadata accessor for Date();
  v1 = *(v46 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v46);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - v10;
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  if (v0)
  {
    return;
  }

  v15 = v14;
  v39 = v13;
  v43 = v11;
  if (v14 >> 62)
  {
LABEL_28:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_29:

    return;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_29;
  }

LABEL_4:
  v45 = v15 & 0xC000000000000001;
  v34 = 0;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;
  if (v16 == 1)
  {
    goto LABEL_24;
  }

  v36 = v8;
  v37 = v5;
  v35 = v15 & 0xFFFFFFFFFFFFFF8;
  v19 = (v1 + 32);
  v40 = (v1 + 8);
  v41 = v16;
  v20 = 1;
  v8 = v39;
  v42 = v15;
  while (2)
  {
    v5 = v18;
    v1 = v20;
    v38 = v18;
    while (1)
    {
      if (v45)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        if (v1 >= *(v35 + 16))
        {
          goto LABEL_27;
        }

        v21 = *(v15 + 8 * v1 + 32);
      }

      v22 = v21;
      v20 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v23 = [v5 createdAt];
      if (v23)
      {
        break;
      }

LABEL_11:
      ++v1;
      if (v20 == v16)
      {
        goto LABEL_24;
      }
    }

    v24 = v43;
    v25 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *v19;
    (*v19)(v8, v24, v46);
    v27 = [v22 createdAt];
    if (!v27)
    {

      (*v40)(v8, v46);
      v16 = v41;
      v15 = v42;
      goto LABEL_11;
    }

    v28 = v27;
    v44 = v22;
    v29 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v36;
    v31 = v46;
    v32 = v39;
    v26(v36, v29, v46);
    LOBYTE(v28) = static Date.< infix(_:_:)();
    v33 = *v40;
    (*v40)(v30, v31);
    v8 = v32;
    v33(v32, v31);
    if ((v28 & 1) == 0)
    {

      v16 = v41;
      v15 = v42;
      v5 = v38;
      goto LABEL_11;
    }

    v16 = v41;
    v15 = v42;
    v18 = v44;
    if (v20 != v41)
    {
      continue;
    }

    break;
  }

LABEL_24:
}

uint64_t sub_10005AAEC()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v313 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v312 = &v289 - v12;
  v13 = __chkstk_darwin(v11);
  v311 = &v289 - v14;
  v15 = __chkstk_darwin(v13);
  v309 = &v289 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v289 - v18;
  v20 = __chkstk_darwin(v17);
  v314 = &v289 - v21;
  v22 = __chkstk_darwin(v20);
  v316 = &v289 - v23;
  v24 = __chkstk_darwin(v22);
  v308 = &v289 - v25;
  __chkstk_darwin(v24);
  v315 = &v289 - v26;
  v325 = type metadata accessor for Logger();
  v318 = *(v325 - 8);
  v27 = *(v318 + 64);
  v28 = __chkstk_darwin(v325);
  v307 = &v289 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v310 = &v289 - v31;
  v32 = __chkstk_darwin(v30);
  v317 = &v289 - v33;
  v34 = __chkstk_darwin(v32);
  v319 = (&v289 - v35);
  v36 = __chkstk_darwin(v34);
  v320 = &v289 - v37;
  __chkstk_darwin(v36);
  v323 = &v289 - v38;
  v321 = type metadata accessor for Date();
  v39 = *(v321 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v321);
  v43 = &v289 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v289 - v44;
  v46 = [v0 credentialIdentifier];
  if (!v46)
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v39;
  }

  v322 = v46;
  v47 = [v0 partition];
  if (!v47)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_12;
  }

  v305 = v47;
  v48 = [v0 createdAt];
  if (!v48)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_12;
  }

  v294 = v19;
  v49 = v48;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = [v0 updatedAt];
  if (!v50)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v61 = *(v39 + 8);
    v39 += 8;
    v61(v45, v321);
    return v39;
  }

  v51 = v50;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = [v0 state];
  if ((v52 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v53 = v52;
  v54 = [v0 options];
  if (!v54)
  {

    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v62 = *(v39 + 8);
    v39 += 8;
    v63 = v43;
    v64 = v321;
    v62(v63, v321);
    v62(v45, v64);
    return v39;
  }

  v291 = v53;
  v292 = v54;
  v55 = sub_10010CCC8(&_swiftEmptyArrayStorage);
  sub_100059E04(&enum case for CredentialKeyUsage.keySigning(_:));
  v296 = v1;
  if (v1)
  {

    v57 = *(v39 + 8);
    v39 += 8;
    v58 = v43;
    v59 = v321;
    v57(v58, v321);
    v57(v45, v59);
LABEL_86:

    return v39;
  }

  v302 = v55;
  v290 = v0;
  v51 = v56;
  if (!(v56 >> 62))
  {
    v65 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_81:
  v65 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
  v66 = v323;
  v293 = v39;
  v299 = v45;
  v298 = v43;
  if (v65)
  {
    v39 = 0;
    v304 = v51 & 0xC000000000000001;
    v295 = v51 & 0xFFFFFFFFFFFFFF8;
    v297 = v318 + 8;
    v300 = v51;
    v303 = v65;
    do
    {
      if (v304)
      {
        v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v295 + 16))
        {
          goto LABEL_74;
        }

        v67 = *(v51 + 8 * v39 + 32);
      }

      v68 = v67;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v324 = (v39 + 1);
      v69 = [v67 identifier];
      if (!v69)
      {
        goto LABEL_36;
      }

      v70 = v45;
      v71 = v69;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v306 = v68;
      v75 = [v68 publicKeyIdentifier];
      if (!v75)
      {

        v45 = v70;
        v68 = v306;
LABEL_36:
        defaultLogger()();
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&_mh_execute_header, v97, v98, "Credential key signing key does not have required field; skipping", v99, 2u);
          v51 = v300;
        }

        (*v297)(v66, v325);
        goto LABEL_21;
      }

      v76 = v75;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v301 = v78;
      sub_100009708(v43, v78);
      v79 = v302;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v326 = v79;
      v81 = v72;
      v82 = v74;
      v45 = sub_100099644(v72, v74);
      v84 = v79[2];
      v85 = (v83 & 1) == 0;
      v86 = v84 + v85;
      if (__OFADD__(v84, v85))
      {
        goto LABEL_73;
      }

      v51 = v83;
      if (v79[3] >= v86)
      {
        v89 = v306;
        if (isUniquelyReferenced_nonNull_native)
        {
          v66 = v323;
          if ((v83 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_100109AD8();
          v66 = v323;
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_100108440(v86, isUniquelyReferenced_nonNull_native);
        v87 = sub_100099644(v81, v74);
        v89 = v306;
        if ((v51 & 1) != (v88 & 1))
        {
          goto LABEL_207;
        }

        v45 = v87;
        v66 = v323;
        if ((v51 & 1) == 0)
        {
LABEL_33:
          v90 = v326;
          v326[(v45 >> 6) + 8] |= 1 << v45;
          v91 = (v90[6] + 16 * v45);
          *v91 = v81;
          v91[1] = v82;
          v92 = (v90[7] + 16 * v45);
          v93 = v301;
          *v92 = v43;
          v92[1] = v93;

          sub_1000092BC(v43, v93);
          v94 = v90[2];
          v95 = __OFADD__(v94, 1);
          v96 = v94 + 1;
          if (v95)
          {
            goto LABEL_77;
          }

          v302 = v90;
          v90[2] = v96;
          goto LABEL_41;
        }
      }

      v302 = v326;
      v100 = (v326[7] + 16 * v45);
      v101 = *v100;
      v102 = v100[1];
      v103 = v301;
      *v100 = v43;
      v100[1] = v103;
      sub_1000092BC(v101, v102);

      sub_1000092BC(v43, v103);
LABEL_41:
      v45 = v299;
      v43 = v298;
      v51 = v300;
LABEL_21:
      ++v39;
    }

    while (v324 != v303);
  }

  v104 = sub_10010CCC8(&_swiftEmptyArrayStorage);
  v105 = v296;
  sub_10005966C();
  v296 = v105;
  if (v105)
  {

    v107 = *(v293 + 8);
    v108 = v321;
    v107(v43, v321);
    v107(v45, v108);
    v109 = &v327;
LABEL_85:
    v149 = *(v109 - 32);

    goto LABEL_86;
  }

  v110 = v106;
  v304 = v104;
  if (v106 >> 62)
  {
    v111 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v320;
    if (v111)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v111 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v320;
    if (v111)
    {
LABEL_48:
      v39 = 0;
      v324 = (v110 & 0xC000000000000001);
      v297 = v110 & 0xFFFFFFFFFFFFFF8;
      v300 = (v318 + 8);
      v323 = v110;
      v306 = v111;
      while (1)
      {
        if (v324)
        {
          v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v297 + 16))
          {
            goto LABEL_79;
          }

          v112 = *(v110 + 8 * v39 + 32);
        }

        v113 = v112;
        v114 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_75;
        }

        v115 = [v112 identifier];
        if (!v115)
        {
          goto LABEL_63;
        }

        v116 = v115;
        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v118;

        v120 = [v113 publicKeyIdentifier];
        if (!v120)
        {

LABEL_63:
          defaultLogger()();
          v131 = Logger.logObject.getter();
          v132 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            *v133 = 0;
            _os_log_impl(&_mh_execute_header, v131, v132, "Credential device encryption key does not have required field; skipping", v133, 2u);
            v51 = v320;
          }

          (*v300)(v51, v325);
          v110 = v323;
          goto LABEL_50;
        }

        v303 = v113;
        v301 = (v39 + 1);
        v121 = v120;
        v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v123 = v122;

        sub_100009708(v43, v123);
        v124 = v304;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v326 = v124;
        v125 = sub_100099644(v117, v119);
        v127 = *(v124 + 16);
        v128 = (v126 & 1) == 0;
        v95 = __OFADD__(v127, v128);
        v129 = v127 + v128;
        if (v95)
        {
          goto LABEL_78;
        }

        v45 = v126;
        if (*(v124 + 24) < v129)
        {
          break;
        }

        if (v51)
        {
          goto LABEL_66;
        }

        v138 = v125;
        sub_100109AD8();
        v125 = v138;
        v51 = v320;
        if ((v45 & 1) == 0)
        {
LABEL_69:
          v139 = v326;
          v326[(v125 >> 6) + 8] |= 1 << v125;
          v140 = (v139[6] + 16 * v125);
          *v140 = v117;
          v140[1] = v119;
          v141 = (v139[7] + 16 * v125);
          *v141 = v43;
          v141[1] = v123;

          sub_1000092BC(v43, v123);
          v142 = v139[2];
          v95 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v95)
          {
            goto LABEL_80;
          }

          v304 = v139;
          v139[2] = v143;
          goto LABEL_71;
        }

LABEL_67:
        v134 = v125;

        v304 = v326;
        v135 = (v326[7] + 16 * v134);
        v136 = *v135;
        v137 = v135[1];
        *v135 = v43;
        v135[1] = v123;
        sub_1000092BC(v136, v137);

        sub_1000092BC(v43, v123);
LABEL_71:
        v45 = v299;
        v43 = v298;
        v110 = v323;
        v114 = v301;
LABEL_50:
        ++v39;
        if (v114 == v306)
        {
          goto LABEL_83;
        }
      }

      sub_100108440(v129, v51);
      v125 = sub_100099644(v117, v119);
      if ((v45 & 1) != (v130 & 1))
      {
        goto LABEL_207;
      }

LABEL_66:
      v51 = v320;
      if ((v45 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_67;
    }
  }

LABEL_83:

  v144 = sub_10010CCC8(&_swiftEmptyArrayStorage);
  v145 = v296;
  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  v296 = v145;
  if (v145)
  {

    v147 = *(v293 + 8);
    v148 = v321;
    v147(v43, v321);
    v147(v45, v148);

    v109 = &v328;
    goto LABEL_85;
  }

  v150 = v146;
  v306 = v144;
  v151 = v293;
  if (v146 >> 62)
  {
    goto LABEL_117;
  }

  v152 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v153 = v319;
  if (v152)
  {
LABEL_89:
    v154 = 0;
    v324 = (v150 & 0xC000000000000001);
    v297 = v150 & 0xFFFFFFFFFFFFFF8;
    v300 = (v318 + 8);
    v323 = v150;
    v320 = v152;
    while (1)
    {
      if (v324)
      {
        v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v154 >= *(v297 + 16))
        {
          goto LABEL_115;
        }

        v156 = *(v150 + 8 * v154 + 32);
      }

      v157 = v156;
      v151 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v187 = v150;
        v188 = _CocoaArrayWrapper.endIndex.getter();
        v150 = v187;
        v152 = v188;
        v153 = v319;
        if (!v188)
        {
          goto LABEL_118;
        }

        goto LABEL_89;
      }

      v158 = [v156 identifier];
      if (!v158)
      {
        goto LABEL_104;
      }

      v159 = v158;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v161 = v160;

      v162 = [v157 publicKeyIdentifier];
      if (!v162)
      {
        break;
      }

      v301 = v157;
      v303 = (v154 + 1);
      v163 = v162;
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v165 = v164;

      sub_100009708(v43, v165);
      v166 = v161;
      v167 = v306;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v326 = v167;
      v168 = v166;
      v169 = sub_100099644(v39, v166);
      v170 = v167[2];
      v171 = (v150 & 1) == 0;
      v172 = v170 + v171;
      if (__OFADD__(v170, v171))
      {
        goto LABEL_114;
      }

      v173 = v150;
      if (v167[3] >= v172)
      {
        if ((v151 & 1) == 0)
        {
          sub_100109AD8();
        }
      }

      else
      {
        sub_100108440(v172, v151);
        v174 = sub_100099644(v39, v168);
        if ((v173 & 1) != (v175 & 1))
        {
          goto LABEL_207;
        }

        v169 = v174;
      }

      v151 = v303;
      if (v173)
      {

        v306 = v326;
        v179 = (v326[7] + 16 * v169);
        v180 = *v179;
        v181 = v179[1];
        *v179 = v43;
        v179[1] = v165;
        sub_1000092BC(v180, v181);

        sub_1000092BC(v43, v165);
      }

      else
      {
        v182 = v326;
        v326[(v169 >> 6) + 8] |= 1 << v169;
        v183 = (v182[6] + 16 * v169);
        *v183 = v39;
        v183[1] = v168;
        v184 = (v182[7] + 16 * v169);
        *v184 = v43;
        v184[1] = v165;

        sub_1000092BC(v43, v165);
        v185 = v182[2];
        v95 = __OFADD__(v185, 1);
        v186 = v185 + 1;
        if (v95)
        {
          goto LABEL_116;
        }

        v306 = v182;
        v182[2] = v186;
      }

      v43 = v298;
      v153 = v319;
LABEL_91:
      v150 = v323;
      ++v154;
      v155 = v151 == v320;
      v151 = v293;
      if (v155)
      {
        goto LABEL_118;
      }
    }

LABEL_104:
    defaultLogger()();
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&_mh_execute_header, v176, v177, "Credential presentment key does not have required field; skipping", v178, 2u);
      v153 = v319;
    }

    (*v300)(v153, v325);
    goto LABEL_91;
  }

LABEL_118:

  v189 = v296;
  sub_100059E04(&enum case for CredentialKeyUsage.payloadProtection(_:));
  v296 = v189;
  if (v189)
  {

    v191 = *(v151 + 8);
    v192 = v321;
    v191(v43, v321);
    v191(v299, v192);

    goto LABEL_86;
  }

  v193 = v190;
  if (v190 >> 62)
  {
    goto LABEL_171;
  }

  for (i = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v195 = v317;
    if (!i)
    {
      break;
    }

    v196 = 0;
    v323 = (v193 & 0xC000000000000001);
    v320 = v193 & 0xFFFFFFFFFFFFFF8;
    v324 = &_swiftEmptyArrayStorage;
    v319 = (v318 + 8);
    while (1)
    {
      if (v323)
      {
        v197 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v196 >= *(v320 + 16))
        {
          goto LABEL_170;
        }

        v197 = *(v193 + 8 * v196 + 32);
      }

      v198 = v197;
      v199 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        break;
      }

      v200 = [v197 identifier];
      if (v200)
      {
        v201 = v200;
        v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v204 = v203;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v324 = sub_100100418(0, *(v324 + 2) + 1, 1, v324);
        }

        v206 = *(v324 + 2);
        v205 = *(v324 + 3);
        if (v206 >= v205 >> 1)
        {
          v324 = sub_100100418((v205 > 1), v206 + 1, 1, v324);
        }

        v207 = v324;
        *(v324 + 2) = v206 + 1;
        v208 = &v207[16 * v206];
        *(v208 + 4) = v202;
        *(v208 + 5) = v204;
        v195 = v317;
      }

      else
      {
        defaultLogger()();
        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          *v211 = 0;
          _os_log_impl(&_mh_execute_header, v209, v210, "Credential payload protection key does not have required field; skipping", v211, 2u);
        }

        (*v319)(v195, v325);
      }

      ++v196;
      v151 = v293;
      if (v199 == i)
      {
        goto LABEL_140;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    ;
  }

  v324 = &_swiftEmptyArrayStorage;
LABEL_140:

  v212 = v296;
  v213 = sub_10005CF80();
  if (v212)
  {
    v214 = v310;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v318 + 8))(v214, v325);
    v215 = 0;
  }

  else
  {
    v215 = v213;
  }

  v296 = 0;
  v216 = v314;
  v217 = sub_10005947C();
  if (!(v217 >> 62))
  {
    v218 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    LODWORD(v317) = v215;
    if (v218)
    {
      goto LABEL_145;
    }

LABEL_173:

    goto LABEL_174;
  }

  v251 = v217;
  v252 = _CocoaArrayWrapper.endIndex.getter();
  v217 = v251;
  LODWORD(v317) = v215;
  if (!v252)
  {
    goto LABEL_173;
  }

LABEL_145:
  if ((v217 & 0xC000000000000001) != 0)
  {
    v219 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_148:
    v220 = v219;

    if (v220)
    {
      v319 = v220;
      v221 = [v220 validFrom];
      if (v221)
      {
        v222 = v308;
        v223 = v221;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v224 = 0;
        v225 = v315;
      }

      else
      {
        v224 = 1;
        v225 = v315;
        v222 = v308;
      }

      v226 = *(v151 + 56);
      v227 = 1;
      v226(v222, v224, 1, v321);
      sub_100046524(v222, v225, &qword_1002004D0, &unk_1001AE1C0);
      v228 = [v319 validUntil];
      if (v228)
      {
        v229 = v228;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v227 = 0;
      }

      v230 = 1;
      v226(v216, v227, 1, v321);
      sub_100046524(v216, v316, &qword_1002004D0, &unk_1001AE1C0);
      v231 = v319;
      v232 = [v319 signedAt];
      if (v232)
      {
        v233 = v309;
        v234 = v232;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v235 = v233;
        v230 = 0;
      }

      else
      {
        v235 = v309;
      }

      v226(v235, v230, 1, v321);
      sub_100046524(v235, v294, &qword_1002004D0, &unk_1001AE1C0);
      v236 = [v231 ingestionHash];
      if (v236)
      {
        v237 = v236;
        v314 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v320 = v238;
      }

      else
      {
        v314 = 0;
        v320 = 0xF000000000000000;
      }

      v239 = [v231 identifierRevocationList];
      if (v239)
      {
        v240 = v239;
        v241 = v296;
        v323 = sub_10005D534();
        v242 = v241;
        if (v241)
        {

          v243 = v307;
          defaultLogger()();
          swift_errorRetain();
          v244 = Logger.logObject.getter();
          v245 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v244, v245))
          {
            v246 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            *v246 = 138412290;
            swift_errorRetain();
            v248 = _swift_stdlib_bridgeErrorToNSError();
            *(v246 + 4) = v248;
            *v247 = v248;
            _os_log_impl(&_mh_execute_header, v244, v245, "StoredCredential Could not parse revocation info from stored value; skipping: %@", v246, 0xCu);
            sub_10000A0D4(v247, &qword_1002003B8, &unk_1001AB850);
          }

          else
          {
          }

          (*(v318 + 8))(v243, v325);
          v242 = 0;
          v323 = 0;
          v296 = 0;
          v151 = v293;
        }

        else
        {
          v296 = 0;
        }
      }

      else
      {
        v242 = 0;
        v323 = 0;
      }

      v249 = v321;
      v250 = v315;
LABEL_175:
      v39 = [objc_allocWithZone(DCCredentialProperties) init];
      v254 = v322;
      [v39 setCredentialIdentifier:v322];

      v255 = v305;
      [v39 setPartition:v305];

      [v39 setCredentialState:v291];
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v39 setCreatedAt:isa];

      v257 = Date._bridgeToObjectiveC()().super.isa;
      [v39 setUpdatedAt:v257];

      v258 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v39 setKeySigningKeys:v258];

      v259 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v39 setDeviceEncryptionKeys:v259];

      v260 = Dictionary._bridgeToObjectiveC()().super.isa;
      [v39 setPresentmentKeys:v260];

      v261 = Array._bridgeToObjectiveC()().super.isa;
      [v39 setPayloadProtectionKeys:v261];

      v262 = v311;
      sub_100060BA4(v250, v311);
      v263 = *(v151 + 48);
      if (v263(v262, 1, v249) == 1)
      {
        v264 = 0;
      }

      else
      {
        v264 = Date._bridgeToObjectiveC()().super.isa;
        (*(v151 + 8))(v262, v249);
      }

      v265 = v313;
      [v39 setPayloadValidFrom:v264];

      v266 = v312;
      sub_100060BA4(v316, v312);
      if (v263(v266, 1, v249) == 1)
      {
        v267 = 0;
      }

      else
      {
        v267 = Date._bridgeToObjectiveC()().super.isa;
        (*(v293 + 8))(v266, v249);
      }

      [v39 setPayloadValidUntil:v267];

      sub_100060BA4(v294, v265);
      if (v263(v265, 1, v249) == 1)
      {
        v268 = 0;
      }

      else
      {
        v268 = Date._bridgeToObjectiveC()().super.isa;
        (*(v293 + 8))(v265, v249);
      }

      v269 = v249;
      v271 = v319;
      v270 = v320;
      v272 = v314;
      [v39 setPayloadSignedAt:v268];

      v273 = v298;
      if (v270 >> 60 == 15)
      {
        v274 = 0;
      }

      else
      {
        sub_100009708(v272, v270);
        v274 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001C120(v272, v270);
      }

      [v39 setPayloadIngestionHash:v274];

      v275 = sub_10005DBAC();
      [v39 setOptions:v275];

      [v39 setNeedsPresentmentKeyRefresh:v317 & 1];
      if ((v242 & 1) != 0 || (v276 = [v271 docType]) == 0)
      {
        v276 = 0;
      }

      [v39 setDocType:v276];

      if (v242)
      {
        v277 = Array._bridgeToObjectiveC()().super.isa;

        [v39 setIssuerCertificateChain:v277];
      }

      else
      {
        v278 = [v271 issuerCertificateChain];
        if (v278)
        {
          v326 = 0;
          v279 = v278;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        v280 = Array._bridgeToObjectiveC()().super.isa;

        [v39 setIssuerCertificateChain:v280];

        v281 = [v271 region];
        if (v281)
        {
          goto LABEL_196;
        }
      }

      v281 = 0;
LABEL_196:
      [v39 setRegion:v281];

      if ((v242 & 1) != 0 || (v282 = [v271 issuingJurisdiction]) == 0)
      {
        v282 = 0;
      }

      [v39 setIssuingJurisdiction:v282];

      if ((v242 & 1) != 0 || (v283 = [v271 issuingAuthority]) == 0)
      {
        v283 = 0;
      }

      [v39 setIssuingAuthority:v283];

      [v39 setCredentialRevocationInfo:v323];
      v284 = [v290 provisioningFailureReasons];
      if (v284)
      {
        v326 = 0;
        v285 = v284;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }

      v286 = v294;

      v287 = Array._bridgeToObjectiveC()().super.isa;

      [v39 setProvisioningFailureReasons:v287];

      sub_10001C120(v272, v320);
      sub_10000A0D4(v286, &qword_1002004D0, &unk_1001AE1C0);
      sub_10000A0D4(v316, &qword_1002004D0, &unk_1001AE1C0);
      sub_10000A0D4(v315, &qword_1002004D0, &unk_1001AE1C0);
      v288 = *(v293 + 8);
      v288(v273, v269);
      v288(v299, v269);
      return v39;
    }

LABEL_174:
    v253 = *(v151 + 56);
    v242 = 1;
    v250 = v315;
    v249 = v321;
    v253(v315, 1, 1, v321);
    v253(v316, 1, 1, v249);
    v253(v294, 1, 1, v249);
    v323 = 0;
    v314 = 0;
    v319 = 0;
    v320 = 0xF000000000000000;
    goto LABEL_175;
  }

  if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v219 = *(v217 + 32);
    goto LABEL_148;
  }

  __break(1u);
LABEL_207:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005CF80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 1);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v50 = &v45 - v7;
  __chkstk_darwin(v6);
  v9 = &v45 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11._object = 0x80000001001B53C0;
  v11._countAndFlagsBits = 0xD000000000000029;
  v12 = NSUserDefaults.internalBool(forKey:)(v11);

  if (v12)
  {
    v13 = v2;
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Forcing needsPresentmentKeyRefresh to true due to internal defaults setting", v16, 2u);
    }

    (v13[1])(v9, v1);
LABEL_5:
    v17 = 1;
    return v17 & 1;
  }

  sub_100059E04(&enum case for CredentialKeyUsage.presentment(_:));
  if (v0)
  {
    return v17 & 1;
  }

  v20 = v18;
  v51 = &_swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v47 = v1;
    v48 = 0;
    v46 = v2;
    if (!i)
    {
      break;
    }

    v22 = 0;
    v2 = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v26 = [v23 payload];
      if (v26)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v1 = v51[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v22;
      if (v25 == i)
      {
        v27 = v51;
        v1 = v47;
        v2 = v46;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  v27 = &_swiftEmptyArrayStorage;
LABEL_23:

  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
  {
    v20 = *(v27 + 16);
    if (v20)
    {
      goto LABEL_26;
    }

LABEL_55:
    v40 = v2;

    v41 = v49;
    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Credential does not have any keys, skipping key refresh", v44, 2u);
    }

    (v40[1])(v41, v1);
    v17 = 0;
    return v17 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = result;
  if (!result)
  {
    goto LABEL_55;
  }

LABEL_26:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v27 + 16))
  {
    v28 = *(v27 + 32);
LABEL_29:
    v29 = v28;
    v2 = &off_1001FE000;
    if (v20 != 1)
    {
      v37 = 1;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v37 >= *(v27 + 16))
          {
            goto LABEL_52;
          }

          v38 = *(v27 + 8 * v37 + 32);
        }

        v30 = v38;
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_50;
        }

        v1 = [v38 timesUsed];
        if (v1 < [v29 timesUsed])
        {

          v29 = v30;
          ++v37;
          if (v39 == v20)
          {
            goto LABEL_31;
          }
        }

        else
        {

          ++v37;
          if (v39 == v20)
          {
            break;
          }
        }
      }
    }

    v30 = v29;
LABEL_31:

    v31 = [v30 timesUsed];
    if (v31 < 1)
    {

      v17 = 0;
      return v17 & 1;
    }

    v32 = v31;
    v33 = v50;
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v34, v35, "Minimum number of times a presentment key is used is %lld, needs key refresh", v36, 0xCu);
    }

    (v46[1])(v33, v47);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10005D534()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = [v1 identifier];
  if (v19)
  {
    v46 = v16;
    v48 = v12;
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v22;

    v23 = [v1 uri];
    if (!v23)
    {
      (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
      sub_10002688C(&_swiftEmptyArrayStorage);
      v26 = type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v27 = v21;
      goto LABEL_7;
    }

    v24 = v23;
    v45 = v6;
    v47 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();

    v25 = v48;
    if ((*(v48 + 48))(v10, 1, v11) == 1)
    {
      sub_10000A0D4(v10, &qword_1002019B0, &unk_1001ABDD0);
      (*(v3 + 104))(v45, enum case for DIPError.Code.invalidStoredData(_:), v2);
      sub_10002688C(&_swiftEmptyArrayStorage);
      v26 = type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v27 = v47;
LABEL_7:
      sub_1000092BC(v27, v49);
      return v26;
    }

    (*(v25 + 32))(v18, v10, v11);
    v28 = [v1 certificate];
    if (v28)
    {
      v29 = v28;
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xF000000000000000;
    }

    v33 = *(v25 + 16);
    v34 = v46;
    v33(v46, v18, v11);
    v35.super.isa = Data._bridgeToObjectiveC()().super.isa;
    if (v32 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10001C120(v30, v32);
    }

    v37 = objc_allocWithZone(DCCredentialRevocationInfo);
    URL._bridgeToObjectiveC()(v38);
    v39 = v34;
    v41 = v40;
    v26 = [v37 initWithIdentifier:v35.super.isa certificate:isa URL:v40];

    sub_1000092BC(v47, v49);
    v42 = *(v48 + 8);
    v42(v39, v11);
    v42(v18, v11);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.invalidStoredData(_:), v2);
    sub_10002688C(&_swiftEmptyArrayStorage);
    v26 = type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v26;
}

unint64_t sub_10005DBAC()
{
  v1 = [objc_allocWithZone(DCCredentialOptions) init];
  [v1 setDeleteInactiveKeysAfterDays:{objc_msgSend(v0, "deleteInactiveKeysAfterDays")}];
  [v1 setDeleteIncompleteCredentialAfterDays:{objc_msgSend(v0, "deleteIncompleteCredentialAfterDays")}];
  result = [v0 readerAuthenticationPolicy];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v1 setReaderAuthenticationPolicy:result];
  result = [v0 presentmentAuthPolicy];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v1 setPresentmentAuthPolicy:result];
  result = [v0 payloadProtectionPolicy];
  if ((result & 0x8000000000000000) == 0)
  {
    [v1 setPayloadProtectionPolicy:result];
    [v1 setIsPIIHashMismatchTerminal:{objc_msgSend(v0, "isPIIHashMismatchTerminal")}];
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10005DCD8()
{
  v2 = v0;
  v3 = type metadata accessor for Logger();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  __chkstk_darwin(v3);
  v90 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v89 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v88 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v87 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v79 - v21;
  __chkstk_darwin(v20);
  v92 = &v79 - v23;
  result = [v2 format];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v25 = result;
  v91 = v12;
  v26 = [v2 docType];
  if (!v26)
  {
    v32 = " == %@ OR usage == %@)";
    (*(v7 + 104))(v10, enum case for DIPError.Code.invalidStoredData(_:), v6);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
LABEL_13:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return v32;
  }

  v27 = v26;
  v28 = [v2 payloadData];
  if (!v28)
  {

    v32 = "missing stored doctype";
    (*(v7 + 104))(v10, enum case for DIPError.Code.invalidStoredData(_:), v6);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    goto LABEL_13;
  }

  v82 = v1;
  v83 = v11;
  v84 = v22;
  v29 = v28;
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = [v2 createdAt];
  if (!v33)
  {

    v92 = "toDCCredentialPayload()";
    (*(v7 + 104))(v10, enum case for DIPError.Code.invalidStoredData(_:), v6);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v30, v32);
    return v32;
  }

  v34 = v33;
  v80 = v30;
  v81 = v32;
  v35 = v92;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = [v2 updatedAt];
  if (!v36)
  {

    v32 = "missing stored createdAt";
    (*(v7 + 104))(v10, enum case for DIPError.Code.invalidStoredData(_:), v6);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000092BC(v80, v81);
    (*(v91 + 8))(v35, v83);
    return v32;
  }

  v37 = v36;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v2 protectionType];
  if ((result & 0x8000000000000000) == 0)
  {
    v38 = result;
    v39 = [v2 identifierRevocationList];
    v40 = v82;
    v41 = v83;
    v42 = v80;
    if (v39)
    {
      v43 = v39;
      v44 = sub_10005D534();
      if (v40)
      {

        defaultLogger()();
        swift_errorRetain();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          swift_errorRetain();
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v49;
          *v48 = v49;
          _os_log_impl(&_mh_execute_header, v45, v46, "StoredPayload Could not parse revocation info from stored value; skipping: %@", v47, 0xCu);
          sub_10000A0D4(v48, &qword_1002003B8, &unk_1001AB850);

          v41 = v83;
        }

        else
        {
        }

        v42 = v80;
        (*(v85 + 8))(v90, v86);
        v90 = 0;
        v82 = 0;
      }

      else
      {
        v90 = v44;
        v82 = 0;
      }
    }

    else
    {
      v90 = 0;
    }

    v32 = [objc_allocWithZone(DCCredentialPayload) init];
    [v32 setFormat:v25];
    [v32 setDocType:v27];

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v32 setPayloadData:isa];

    v51 = v92;
    v52 = Date._bridgeToObjectiveC()().super.isa;
    [v32 setCreatedAt:v52];

    v53 = Date._bridgeToObjectiveC()().super.isa;
    [v32 setUpdatedAt:v53];

    v54 = [v2 validFrom];
    if (v54)
    {
      v55 = v87;
      v56 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v57.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v58 = v91;
      (*(v91 + 8))(v55, v41);
    }

    else
    {
      v57.super.isa = 0;
      v58 = v91;
    }

    [v32 setValidFrom:v57.super.isa];

    v59 = [v2 validUntil];
    if (v59)
    {
      v60 = v88;
      v61 = v59;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v62.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v58 + 8))(v60, v41);
    }

    else
    {
      v62.super.isa = 0;
    }

    [v32 setValidUntil:v62.super.isa];

    v63 = [v2 signedAt];
    if (v63)
    {
      v64 = v89;
      v65 = v63;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v66.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v58 + 8))(v64, v41);
    }

    else
    {
      v66.super.isa = 0;
    }

    [v32 setSignedAt:v66.super.isa];

    [v32 setProtectionType:v38];
    v67 = v82;
    sub_100059974();
    if (v67)
    {
      sub_1000092BC(v42, v81);

      v68 = *(v58 + 8);
      v69 = v83;
      v68(v84, v83);
      v68(v51, v69);
    }

    else
    {
      sub_100004E70(&qword_100201580, &qword_1001AB980);
      v70 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v32 setElementIdentifiersByNamespace:v70];

      v71 = [v2 issuerCertificateChain];
      if (!v71 || (v93 = 0, v72 = v71, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v72, !v93))
      {
      }

      v73 = Array._bridgeToObjectiveC()().super.isa;

      [v32 setIssuerCertificateChain:v73];

      v74 = [v2 region];
      [v32 setRegion:v74];

      v75 = [v2 issuingJurisdiction];
      [v32 setIssuingJurisdiction:v75];

      v76 = v90;
      [v32 setCredentialRevocationInfo:v90];
      sub_1000092BC(v42, v81);

      v77 = *(v58 + 8);
      v78 = v83;
      v77(v84, v83);
      v77(v51, v78);
    }

    return v32;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_10005E914(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 format];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v2 docType];
  if (!v11)
  {
LABEL_9:
    (*(v5 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v4);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v12 = v11;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = [v2 payloadData];
  if (!v15)
  {

    goto LABEL_9;
  }

  v37 = v14;
  v16 = v15;
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v2 protectionType];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v21 = v20;
  v36 = v17;
  v22 = [v2 region];
  if (v22)
  {
    v23 = v22;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v35 = 0;
    v25 = 0;
  }

  v26 = v19;
  v27 = [v2 issuingJurisdiction];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = v38;
  *a1 = v10;
  a1[1] = v32;
  v33 = v36;
  a1[2] = v37;
  a1[3] = v33;
  a1[4] = v26;
  a1[5] = v21;
  a1[6] = v35;
  a1[7] = v25;
  a1[8] = v29;
  a1[9] = v31;
}

uint64_t sub_10005EC20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = [v2 identifierRevocationList];
  if (v8 && (v9 = v8, v10 = [v8 identifier], v9, v10))
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = [v2 identifierRevocationList];
  if (v14 && (v15 = v14, v16 = [v14 certificate], v15, v16))
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v20 = [v2 identifierRevocationList];
  if (v20 && (v21 = v20, v22 = [v20 uri], v21, v22))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  }

  *a1 = v11;
  a1[1] = v13;
  a1[2] = v17;
  a1[3] = v19;
  v24 = type metadata accessor for PayloadRevocationListMetadata();
  sub_100046524(v7, a1 + *(v24 + 24), &qword_1002019B0, &unk_1001ABDD0);
  return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
}

uint64_t sub_10005EE94(uint64_t a1)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v10 = result;
    v11 = v1;
    v12 = type metadata accessor for JSONEncoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v20[1] = a1;
    sub_100004E70(&qword_1002019B8, &qword_1001AD020);
    sub_100060C14();
    v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v2)
    {

      (*(v5 + 104))(v9, enum case for DIPError.Code.jsonEncodingFailed(_:), v10);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v17 = v15;
      v18 = v16;

      isa = Data._bridgeToObjectiveC()().super.isa;
      [v11 setElementIdentifiersByNamespace:isa];

      return sub_1000092BC(v17, v18);
    }
  }

  return result;
}

void sub_10005F0F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v50 = &v45 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v45 - v17;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = String._bridgeToObjectiveC()();
  [v3 setIdentifier:v20];

  CredentialKeyType.rawValue.getter();
  v21 = String._bridgeToObjectiveC()();

  [v3 setKeyType:v21];

  CredentialKeyUsage.rawValue.getter();
  v22 = String._bridgeToObjectiveC()();

  [v3 setUsage:v22];

  v23 = *(a1 + OBJC_IVAR____TtC7idcredd13CredentialKey_lock);
  v53 = sub_100060CC0;
  v54 = a1;
  os_unfair_lock_lock(v23 + 4);
  sub_100032EEC(v24);
  if (v2)
  {
    os_unfair_lock_unlock(v23 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v23 + 4);
    v26 = v56;
    if (v56 >> 60 == 15)
    {
LABEL_5:
      v50 = "fiersByNamespace(_:)";
      v29 = v52;
      v51 = *(v51 + 104);
      v30 = v57;
      (v51)(v57, enum case for DIPError.Code.idcsInvalidPublicKey(_:), v52);
      v49 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (v51)(v30, enum case for DIPError.Code.internalError(_:), v29);
      swift_errorRetain();
      sub_10002688C(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      return;
    }

    v46 = v11;
    v47 = v12;
    v48 = v55;
    __chkstk_darwin(v25);
    os_unfair_lock_lock(v23 + 4);
    sub_100034020(v27);
    os_unfair_lock_unlock(v23 + 4);
    v28 = v56;
    if (v56 >> 60 == 15)
    {
      sub_10001C120(v48, v26);
      goto LABEL_5;
    }

    v31 = v55;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v3 setPublicKey:isa];

    v52 = v31;
    v57 = v28;
    v33 = Data._bridgeToObjectiveC()().super.isa;
    [v3 setPublicKeyIdentifier:v33];

    v34 = [v3 createdAt];
    if (v34)
    {
      v35 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v46;
      v36 = v47;
      v38 = *(v47 + 32);
      v39 = v50;
      (v38)(v50, v16, v46);
      (*(v36 + 56))(v39, 0, 1, v37);
      v40 = v49;
      v38();
    }

    else
    {
      v37 = v46;
      v36 = v47;
      v41 = v50;
      (*(v47 + 56))(v50, 1, 1, v46);
      v40 = v49;
      Date.init()();
      if ((*(v36 + 48))(v41, 1, v37) != 1)
      {
        sub_10000A0D4(v41, &qword_1002004D0, &unk_1001AE1C0);
      }
    }

    v42 = Date._bridgeToObjectiveC()().super.isa;
    v43 = *(v36 + 8);
    v43(v40, v37);
    [v3 setCreatedAt:v42];

    Date.init()();
    v44 = Date._bridgeToObjectiveC()().super.isa;
    v43(v16, v37);
    [v3 setUpdatedAt:v44];

    sub_10001C120(v52, v57);
    sub_10001C120(v48, v26);
  }
}

void sub_10005F810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = a3;
  v44 = a4;
  v6 = v4;
  v8 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = String._bridgeToObjectiveC()();
  [v6 setIdentifier:v22];

  CredentialKeyType.rawValue.getter();
  v23 = String._bridgeToObjectiveC()();

  [v6 setKeyType:v23];

  CredentialKeyUsage.rawValue.getter();
  v24 = String._bridgeToObjectiveC()();

  [v6 setUsage:v24];

  v25 = (a1 + *a2);
  v26 = *v25;
  v27 = v25[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v6 setKeyBlob:isa];

  v29 = (a1 + *v43);
  v30 = *v29;
  v31 = v29[1];
  v32 = Data._bridgeToObjectiveC()().super.isa;
  [v6 setPublicKey:v32];

  v33 = (a1 + *v44);
  v34 = *v33;
  v35 = v33[1];
  v36 = Data._bridgeToObjectiveC()().super.isa;
  [v6 setPublicKeyIdentifier:v36];

  v37 = [v6 createdAt];
  if (v37)
  {
    v38 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v13 + 32);
    v39(v11, v17, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v39(v19, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    Date.init()();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_10000A0D4(v11, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v40 = Date._bridgeToObjectiveC()().super.isa;
  v41 = *(v13 + 8);
  v41(v19, v12);
  [v6 setCreatedAt:v40];

  Date.init()();
  v42 = Date._bridgeToObjectiveC()().super.isa;
  v41(v17, v12);
  [v6 setUpdatedAt:v42];
}

void sub_10005FBEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v18];

  CredentialKeyType.rawValue.getter();
  v19 = String._bridgeToObjectiveC()();

  [v2 setKeyType:v19];

  CredentialKeyUsage.rawValue.getter();
  v20 = String._bridgeToObjectiveC()();

  [v2 setUsage:v20];

  v21 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey);
  v22 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKey + 8);
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2 || *(v21 + 16) == *(v21 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v23)
  {
    if ((v22 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 setPublicKey:isa];

    goto LABEL_10;
  }

  if (v21 != v21 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  [v2 setPublicKey:0];
LABEL_10:
  v25 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier);
  v26 = *(a1 + OBJC_IVAR____TtC7idcredd24ExternalSEPresentmentKey_publicKeyIdentifier + 8);
  v27 = Data._bridgeToObjectiveC()().super.isa;
  [v2 setPublicKeyIdentifier:v27];

  v28 = [v2 createdAt];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v9 + 32);
    v30(v7, v13, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v30(v15, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    Date.init()();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_10000A0D4(v7, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v31 = Date._bridgeToObjectiveC()().super.isa;
  v32 = *(v9 + 8);
  v32(v15, v8);
  [v2 setCreatedAt:v31];

  Date.init()();
  v33 = Date._bridgeToObjectiveC()().super.isa;
  v32(v13, v8);
  [v2 setUpdatedAt:v33];
}

void sub_10006000C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v18];

  CredentialKeyType.rawValue.getter();
  v19 = String._bridgeToObjectiveC()();

  [v2 setKeyType:v19];

  CredentialKeyUsage.rawValue.getter();
  v20 = String._bridgeToObjectiveC()();

  [v2 setUsage:v20];

  v21 = *(a1 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier);
  v22 = *(a1 + OBJC_IVAR____TtC7idcredd20PayloadProtectionKey_publicKeyIdentifier + 8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v2 setPublicKeyIdentifier:isa];

  v24 = [v2 createdAt];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = *(v9 + 32);
    v26(v7, v13, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v26(v15, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    Date.init()();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_10000A0D4(v7, &qword_1002004D0, &unk_1001AE1C0);
    }
  }

  v27 = Date._bridgeToObjectiveC()().super.isa;
  v28 = *(v9 + 8);
  v28(v15, v8);
  [v2 setCreatedAt:v27];

  Date.init()();
  v29 = Date._bridgeToObjectiveC()().super.isa;
  v28(v13, v8);
  [v2 setUpdatedAt:v29];
}

Swift::Int sub_100060384()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000603FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

unsigned __int16 *sub_100060440@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100060478()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000604EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_WORD *sub_100060530@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10006055C(uint64_t a1)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v18[1] = a1;
  sub_100004E70(&qword_100201580, &qword_1001AB980);
  sub_100060B38(&qword_1002019A8);
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    (*(v5 + 104))(v8, enum case for DIPError.Code.jsonEncodingFailed(_:), v4);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v15 = v12;
    v16 = v13;

    isa = Data._bridgeToObjectiveC()().super.isa;
    [v1 setCredentialUUIDs:isa];

    return sub_1000092BC(v15, v16);
  }
}

id sub_1000607CC()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 credentialUUIDs];
  if (result)
  {
    v8 = result;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100004E70(&qword_100201580, &qword_1001AB980);
    sub_100060B38(&qword_1002019C8);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1000092BC(v9, v11);

    if (v1)
    {
      (*(v3 + 104))(v6, enum case for DIPError.Code.jsonDecodingFailed(_:), v2);
      swift_errorRetain();
      sub_10002688C(&_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      return v15[1];
    }
  }

  return result;
}

uint64_t type metadata accessor for PayloadRevocationListMetadata()
{
  result = qword_100201A30;
  if (!qword_100201A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100060A8C()
{
  result = qword_1002019C0;
  if (!qword_1002019C0)
  {
    sub_100021ED0(&qword_1002019B8, &qword_1001AD020);
    sub_100060B38(&qword_1002019C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002019C0);
  }

  return result;
}

uint64_t sub_100060B38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100021ED0(&qword_100201580, &qword_1001AB980);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100060BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_1002004D0, &unk_1001AE1C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100060C14()
{
  result = qword_1002019D0;
  if (!qword_1002019D0)
  {
    sub_100021ED0(&qword_1002019B8, &qword_1001AD020);
    sub_100060B38(&qword_1002019A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002019D0);
  }

  return result;
}

uint64_t sub_100060CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

void *sub_100060DC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_100004E70(&qword_1002019B0, &unk_1001ABDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060E7C()
{
  sub_100060F00();
  if (v0 <= 0x3F)
  {
    sub_100060F50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060F00()
{
  if (!qword_100201A40)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201A40);
    }
  }
}

void sub_100060F50()
{
  if (!qword_100201A48)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100201A48);
    }
  }
}

__n128 sub_100060FA8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100060FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006100C(uint64_t result, int a2, int a3)
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

unint64_t sub_100061084()
{
  result = qword_100201A80;
  if (!qword_100201A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A80);
  }

  return result;
}

unint64_t sub_1000610EC()
{
  result = qword_100201A88;
  if (!qword_100201A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201A88);
  }

  return result;
}

NSObject *sub_100061140(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithMachServiceName:v9];

  *&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener] = v10;
  *&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_dataContainer] = a1;
  v11 = type metadata accessor for BiometricStoreListener();
  v20.receiver = v1;
  v20.super_class = v11;

  v12 = objc_msgSendSuper2(&v20, "init");
  v13 = OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener;
  v14 = *&v12[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener];
  v15 = v12;
  [v14 setDelegate:v15];
  [*&v12[v13] resume];
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Biometric store listener is started", v18, 2u);
  }

  else
  {

    v16 = v15;
  }

  (*(v4 + 8))(v7, v3);
  return v15;
}

id sub_10006136C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Biometric store listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC7idcredd22BiometricStoreListener_xpcListener] invalidate];
  v10 = type metadata accessor for BiometricStoreListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10006156C(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_10006175C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying BiometricStoreSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for BiometricStoreSessionProxy();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10006193C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100061A64, 0, 0);
}

uint64_t sub_100061A64()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy bioBindingUnboundACL", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v17 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v17)
  {
    v18 = v17[7];
    sub_100009278(v17 + 3, v17[6]);

    v19 = dispatch thunk of AppleIDVManaging.prepareBioBindingUnboundACL()();
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[6];
    v24 = v0[7];
    v29 = v0[5];
    v25 = v19;
    v26 = v20;
    defaultLogger()();
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    Logger.cryptoParam(_:)();

    v9(v22, v23);

    v28 = v0[1];

    return v28(v25, v26);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v12);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100061FB8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_10006193C();
}

uint64_t sub_100062060()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100062188, 0, 0);
}

uint64_t sub_100062188()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy passcodeBindingUnboundACL", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v17 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v17)
  {
    v18 = v17[7];
    sub_100009278(v17 + 3, v17[6]);

    v19 = dispatch thunk of AppleIDVManaging.preparePasscodeBindingUnboundACL()();
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[6];
    v24 = v0[7];
    v29 = v0[5];
    v25 = v19;
    v26 = v20;
    defaultLogger()();
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    Logger.cryptoParam(_:)();

    v9(v22, v23);

    v28 = v0[1];

    return v28(v25, v26);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v12);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1000626DC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D6C;

  return sub_100062060();
}

uint64_t sub_100062784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000628B0, 0, 0);
}

uint64_t sub_1000628B0()
{
  v32 = v0;
  v1 = v0[12];
  v3 = v0[2];
  v2 = v0[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];
  if (v6)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = Data.base64EncodedString(options:)(0);
    v15 = sub_10010150C(v14._countAndFlagsBits, v14._object, &v31);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "BiometricStoreSessionProxy setGlobalAuthACL, authACL = %s", v12, 0xCu);
    sub_100005090(v13);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v0[13] = v16;
  v17 = v0[5];
  sub_1000710B4();
  v26 = *(v0[5] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[14] = v26;
  if (v26)
  {

    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_100062C8C;
    v28 = v0[3];
    v29 = v0[4];
    v30 = v0[2];

    return sub_100125008(v30, v28, v29);
  }

  else
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.badLogic(_:), v0[6]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[12];
    v18 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v23 = v0[8];
    v22 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v18(v20, v22);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100062C8C(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 120);
  v9 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_100062E48;
  }

  else
  {
    sub_10001C120(a1, a2);
    v7 = sub_100062DBC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100062DBC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100062E48()
{
  v1 = v0[14];

  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100063110(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100063200;

  return sub_100062784(v9, v11, a2);
}

uint64_t sub_100063200()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_1000092BC(v7, v6);
  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000633C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000634FC, 0, 0);
}

uint64_t sub_1000634FC()
{
  v34 = v0;
  v1 = v0[14];
  v3 = v0[2];
  v2 = v0[3];
  defaultLogger()();
  sub_100009708(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  sub_1000092BC(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  if (v6)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    v14 = Data.base64EncodedString(options:)(0);
    v15 = sub_10010150C(v14._countAndFlagsBits, v14._object, &v33);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "BiometricStoreSessionProxy setModifiedGlobalAuthACL, modifiedAuthACL = %s", v12, 0xCu);
    sub_100005090(v13);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v0[15] = v16;
  v17 = v0[6];
  sub_1000710B4();
  v27 = *(v0[6] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[16] = v27;
  if (v27)
  {

    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_1000638EC;
    v29 = v0[4];
    v30 = v0[5];
    v32 = v0[2];
    v31 = v0[3];

    return sub_100125558(v32, v31, v29, v30);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[10];
    v23 = v0[11];
    v24 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v18(v20, v22);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1000638EC()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100063E68, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v3;
    v5[1] = sub_100063A7C;

    return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100063A7C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 152);
  v7 = *v3;
  v5[20] = a1;
  v5[21] = v2;

  if (v2)
  {
    v8 = sub_100063D18;
  }

  else
  {
    v5[22] = a2;
    v8 = sub_100063BA4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100063BA4()
{
  v1 = v0[20];
  if (v0[22] < 1)
  {
    v3 = v0[13];
    v4 = v0[20];

    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    if (v7)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "no bound credential present skip returning uuids", v13, 2u);
    }

    v9(v10, v11);

    v1 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v2 = v0[16];
  }

  v15 = v0[13];
  v14 = v0[14];
  v16 = v0[12];
  v17 = v0[9];

  v18 = v0[1];

  return v18(v1);
}

uint64_t sub_100063D18()
{
  v1 = v0[16];

  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v7);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100063E68()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v7);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100064148(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4[6] = v13;
  v4[7] = v15;
  v16 = swift_task_alloc();
  v4[8] = v16;
  *v16 = v4;
  v16[1] = sub_100064258;

  return sub_1000633C0(v10, v12, v13, v15);
}

uint64_t sub_100064258(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  sub_1000092BC(v8, v7);
  sub_1000092BC(v10, v9);
  if (v3)
  {
    a1 = _convertErrorToNSError(_:)();

    v13 = a1;
LABEL_3:
    v14 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v13 = 0;
    goto LABEL_3;
  }

  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = isa;
  v13 = 0;
  a1 = isa;
LABEL_6:
  v16 = *(v5 + 24);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v12 + 8);

  return v17();
}

uint64_t sub_100064468()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100064590, 0, 0);
}

uint64_t sub_100064590()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalAuthACL", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_1000648FC;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000648FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100064AB4;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_100064A24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100064A24()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[14];

  return v5(v6);
}

uint64_t sub_100064AB4()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100064D64(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100064E0C;

  return sub_100064468();
}

uint64_t sub_100064E0C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100064FAC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000650D4, 0, 0);
}

uint64_t sub_1000650D4()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy deleteGlobalAuthACL", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_10006541C;

    return sub_100125AF8();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16(0);
  }
}

uint64_t sub_10006541C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1000655D8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v7 = sub_100065548;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100065548()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);
  v6 = *(v0 + 112);

  return v5(v6);
}

uint64_t sub_1000655D8()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_10006588C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100065934;

  return sub_100064FAC();
}

uint64_t sub_100065934(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100065AC4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100065BEC, 0, 0);
}

uint64_t sub_100065BEC()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalAuthACLTemplateUUIDs", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[10] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[11] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[12] = v19;
    *v19 = v0;
    v19[1] = sub_100065F4C;

    return sub_100138978(0xD000000000000012, 0x80000001001B18B0);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100065F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = *v4;
  *(*v4 + 104) = v3;

  if (v3)
  {
    v11 = sub_100064AB4;
  }

  else
  {
    v8[14] = a3;
    v8[15] = a2;
    v8[16] = a1;
    v11 = sub_100066088;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_100066088()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];

  v5 = v0[1];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];

  return v5(v6, v7, v8);
}

uint64_t sub_100066290(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100066338;

  return sub_100065AC4();
}

uint64_t sub_100066338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 32);
  v9 = *(*v4 + 16);
  v10 = *v4;

  v11 = *(v7 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, 0, 0, v12);

    _Block_release(v11);
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v11)[2](v11, isa, a2, a3, 0);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_100066518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPTrustKey();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000666A4, 0, 0);
}

uint64_t sub_1000666A4()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePrearmTrustCertificate", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[17] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v19 = *(v0[6] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[18] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[19] = v20;
    *v20 = v0;
    v20[1] = sub_100066A14;
    v21 = v0[12];
    v22 = v0[2];
    v23 = v0[3];

    return sub_100125FC4(v21, v22, v23);
  }

  else
  {
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.badLogic(_:), v0[7]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[16];
    v10 = v0[17];
    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100066A14()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000671D8, 0, 0);
  }

  else
  {
    v4 = v3[18];
    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v3;
    v5[1] = sub_100066BA4;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100066BA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_100067068;
  }

  else
  {
    v5 = sub_100066CB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100066CB8()
{
  v1 = v0[22];
  v36 = v0[18];
  if (v1)
  {
    v33 = v0[16];
    v34 = v0[15];
    v2 = v0[12];
    v31 = v0[11];
    v32 = v0[10];
    v35 = v0[9];
    v3 = v0[5];
    v28 = v0[4];
    v4 = DIPTrustKey.keyBlob.getter();
    v29 = v5;
    v30 = v4;
    v6 = DIPTrustKey.baaCertificate.getter();
    v8 = v7;
    v9 = [v1 aclType] == 2;
    v10 = objc_allocWithZone(DCCredentialTrust);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = Data._bridgeToObjectiveC()().super.isa;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v10 initWithCredentialKeyBlob:isa baaCertificate:v12 pairingID:v13 isAccessibilityEnabled:v9];

    sub_1000092BC(v6, v8);
    sub_1000092BC(v30, v29);

    (*(v31 + 8))(v2, v32);

    v15 = v0[1];

    return v15(v14);
  }

  else
  {
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[10];
    (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[7]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v18 + 8))(v17, v19);
    v21 = v0[16];
    v20 = v0[17];
    v23 = v0[14];
    v22 = v0[15];
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[9];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v20(v22, v24);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100067068()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[23];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v6(v8, v10);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000671D8()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v7);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000674B8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4[6] = v15;
  v16 = swift_task_alloc();
  v4[7] = v16;
  *v16 = v4;
  v16[1] = sub_1000675C8;

  return sub_100066518(v10, v12, v13, v15);
}

uint64_t sub_1000675C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_1000092BC(v5[4], v5[5]);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000677B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = type metadata accessor for DIPTrustKey();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[15] = v14;
  v15 = *(v14 - 8);
  v7[16] = v15;
  v16 = *(v15 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return _swift_task_switch(sub_100067940, 0, 0);
}

uint64_t sub_100067940()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePrearmTrustCertificate fromKeyBlob", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[19] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v19 = *(v0[8] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[20] = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    v0[21] = v20;
    *v20 = v0;
    v20[1] = sub_100067CB4;
    v21 = v0[14];
    v22 = v0[4];
    v23 = v0[5];
    v24 = v0[2];
    v25 = v0[3];

    return sub_100126C28(v21, v24, v25, v22, v23);
  }

  else
  {
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.badLogic(_:), v0[9]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[18];
    v10 = v0[19];
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100067CB4()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100068478, 0, 0);
  }

  else
  {
    v4 = v3[20];
    v5 = swift_task_alloc();
    v3[23] = v5;
    *v5 = v3;
    v5[1] = sub_100067E44;

    return sub_100137614(0xD000000000000012, 0x80000001001B18B0);
  }
}

uint64_t sub_100067E44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_100068308;
  }

  else
  {
    v5 = sub_100067F58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100067F58()
{
  v1 = v0[24];
  v36 = v0[20];
  if (v1)
  {
    v33 = v0[18];
    v34 = v0[17];
    v2 = v0[14];
    v31 = v0[13];
    v32 = v0[12];
    v35 = v0[11];
    v3 = v0[7];
    v28 = v0[6];
    v4 = DIPTrustKey.keyBlob.getter();
    v29 = v5;
    v30 = v4;
    v6 = DIPTrustKey.baaCertificate.getter();
    v8 = v7;
    v9 = [v1 aclType] == 2;
    v10 = objc_allocWithZone(DCCredentialTrust);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = Data._bridgeToObjectiveC()().super.isa;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v10 initWithCredentialKeyBlob:isa baaCertificate:v12 pairingID:v13 isAccessibilityEnabled:v9];

    sub_1000092BC(v6, v8);
    sub_1000092BC(v30, v29);

    (*(v31 + 8))(v2, v32);

    v15 = v0[1];

    return v15(v14);
  }

  else
  {
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.idcsMissingGlobalAuthACL(_:), v0[9]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v18 + 8))(v17, v19);
    v21 = v0[18];
    v20 = v0[19];
    v23 = v0[16];
    v22 = v0[17];
    v25 = v0[14];
    v24 = v0[15];
    v26 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v20(v22, v24);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100068308()
{
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  (*(v3 + 8))(v2, v4);
  v5 = v0[25];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v6(v8, v10);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100068478()
{
  v1 = v0[20];

  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v7);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10006876C(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[4] = v13;
  v5[5] = v15;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[6] = v16;
  v5[7] = v18;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v5[8] = v21;
  v22 = swift_task_alloc();
  v5[9] = v22;
  *v22 = v5;
  v22[1] = sub_1000688B0;

  return sub_1000677B0(v13, v15, v16, v18, v19, v21);
}

uint64_t sub_1000688B0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[5];
  v11 = v5[4];
  v12 = v5[3];
  sub_1000092BC(v5[6], v5[7]);
  sub_1000092BC(v11, v10);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](v12, a1, 0);
    _Block_release(v12);
  }

  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_100068ACC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100068BF8, 0, 0);
}

uint64_t sub_100068BF8()
{
  v25 = v0;
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10010150C(0xD00000000000001ALL, 0x80000001001B5CB0, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy %s", v8, 0xCu);
    sub_100005090(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[12] = v10;
  v11 = v0[4];
  sub_1000710B4();
  v20 = *(v0[4] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[13] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_100068F9C;
    v23 = v0[2];
    v22 = v0[3];

    return sub_1001278A0(v23, v22);
  }

  else
  {
    (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.badLogic(_:), v0[5]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v13 = v0[11];
    v12 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v12(v14, v16);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100068F9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = sub_100069160;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v9 = sub_1000690D0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000690D0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];
  v7 = v0[16];
  v6 = v0[17];

  return v5(v6, v7);
}

uint64_t sub_100069160()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100069424(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v3[4] = v7;
  v3[5] = v9;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_100069500;

  return sub_100068ACC(v7, v9);
}

uint64_t sub_100069500(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 16);
  v11 = *v3;

  sub_1000092BC(*(v7 + 32), *(v7 + 40));
  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v13 = isa;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v14 = isa;
    v13 = 0;
  }

  v15 = *(v8 + 24);
  (v15)[2](v15, v14, v13);

  _Block_release(v15);
  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_1000696C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000697F4, 0, 0);
}

uint64_t sub_1000697F4()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy generatePhoneToken", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[15] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[7] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[16] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_100069B4C;
    v20 = v0[3];
    v21 = v0[4];
    v22 = v0[2];

    return sub_1001280C8(v22, v20, v21);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100069B4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 136);
  v8 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {
    v9 = sub_100069D98;
  }

  else
  {
    *(v6 + 152) = a2;
    *(v6 + 160) = a1;
    v9 = sub_100069C80;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100069C80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v14 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = objc_allocWithZone(DCCredentialAuthorizationToken);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithCredentialAuthorizationToken:isa pairingID:v10];

  sub_1000092BC(v2, v1);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_100069D98()
{
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10006A078(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v5[7] = v18;
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_10006A1A4;

  return sub_1000696C4(v10, v13, v15, v16, v18);
}

uint64_t sub_10006A1A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = v5[4];
  sub_1000092BC(v5[5], v5[6]);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10006A3AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10006A4D4, 0, 0);
}

uint64_t sub_10006A4D4()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy establishPrearmTrustV2", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[15] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[7] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[16] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[17] = v19;
    *v19 = v0;
    v19[1] = sub_10006A820;
    v20 = v0[6];

    return sub_100128CC0(v20);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.badLogic(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[14];
    v10 = v0[15];
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10006A820(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[17];
  v9 = *v3;
  v5[18] = a2;
  v5[19] = v2;

  if (v2)
  {
    v7 = sub_10006AC28;
  }

  else
  {
    v7 = sub_10006A93C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006A93C()
{
  v1 = v0[18];
  if (v1 >> 60 == 15)
  {
    v2 = v0[16];
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.idcsMissingProgenitorKeyAttestation(_:), v0[8]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v8 = v0[10];
    v7 = v0[11];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v3(v5, v7);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[3];
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[10];
    v16 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = [v16 initWithData:isa type:1];

    sub_10001C120(v11, v1);

    v19 = v0[1];

    return v19(v18);
  }
}

uint64_t sub_10006AC28()
{
  v1 = v0[16];

  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10006AEEC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006AFB0;

  return sub_10006A3AC(v6);
}

uint64_t sub_10006AFB0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10006B168()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006B290, 0, 0);
}

uint64_t sub_10006B290()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy nonceForAuthorizationToken", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v17 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v17)
  {
    v18 = v17[7];
    sub_100009278(v17 + 3, v17[6]);

    v19 = dispatch thunk of AppleIDVManaging.generateNonceOnWatch()();
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[5];
    v24 = v19;
    v25 = v20;
    v26 = objc_allocWithZone(DCCredentialNonce);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = [v26 initWithCredentialNonce:isa];

    sub_1000092BC(v24, v25);

    v29 = v0[1];

    return v29(v28);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v12);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10006B7D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100064E0C;

  return sub_10006B168();
}

uint64_t sub_10006B878()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006B9A0, 0, 0);
}

uint64_t sub_10006B9A0()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy revokeCredentialAuthorizationToken", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v17 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  if (v17)
  {
    v18 = v17[7];
    sub_100009278(v17 + 3, v17[6]);

    dispatch thunk of AppleIDVManaging.revokeCredentialAuthorizationToken()();

    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[5];

    v15 = v0[1];
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v12);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_10006BE40(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D70;

  return sub_10006B878();
}

uint64_t sub_10006BEE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10006C010, 0, 0);
}

uint64_t sub_10006C010()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy prearmCredential", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[3];

  v9 = *(v7 + 8);
  v0[11] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v18 = *(v0[3] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[12] = v18;
  if (v18)
  {

    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_10006C35C;
    v20 = v0[2];

    return sub_10012BB40(v20);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.badLogic(_:), v0[4]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v15 = v0[6];
    v14 = v0[7];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v12, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10006C35C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10006C4FC;
  }

  else
  {
    v3 = sub_10006C470;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006C470()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006C4FC()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v5, v8);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10006C7C0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10006C884;

  return sub_10006BEE8(v6);
}

uint64_t sub_10006C884()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10006CA20()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10006CB54, 0, 0);
}

uint64_t sub_10006CB54()
{
  v1 = v0[10];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy credentialAuthenticationTokenStatus", v4, 2u);
  }

  v5 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v18 = v0[2];
  if (*(v18 + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage))
  {
    v19 = v0[9];
    v20 = *(v18 + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);

    v21 = sub_10012C50C();
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "Credential authentication token status: %lu", v24, 0xCu);
    }

    v26 = v0[9];
    v25 = v0[10];
    v32 = v21;
    v27 = v0[7];
    v28 = v0[8];
    v30 = v0[5];
    v29 = v0[6];

    v9(v26, v29);

    v31 = v0[1];

    return v31(v32);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v13, v14);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10006D0D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10006D17C;

  return sub_10006CA20();
}

uint64_t sub_10006D17C(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10006D30C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10006D434, 0, 0);
}

uint64_t sub_10006D434()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy casdCertificate", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_1000710B4();
  v17 = v0[2];
  if (*(v17 + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage))
  {
    v18 = *(v17 + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);

    v19 = sub_10012C720();
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[6];
    v24 = v0[7];
    v29 = v0[5];
    v25 = v19;
    v26 = v20;
    defaultLogger()();
    v27 = swift_task_alloc();
    *(v27 + 16) = v25;
    *(v27 + 24) = v26;
    Logger.cryptoParam(_:)();

    v9(v22, v23);

    v28 = v0[1];

    return v28(v25, v26);
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[7];
    v14 = v0[5];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v9(v10, v12);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

unint64_t sub_10006D7FC()
{
  _StringGuts.grow(_:)(31);

  v0 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v0);

  return 0xD00000000000001DLL;
}

uint64_t sub_10006DA04(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10006DAAC;

  return sub_10006D30C();
}

uint64_t sub_10006DAAC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000092BC(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_10006DC40()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006DD80, 0, 0);
}

uint64_t sub_10006DD80()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalProgenitorKeyAttestation", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v20 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[13] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_10006E0E8;

    return sub_10012C910();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[9];
    v13 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v14, v16);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10006E0E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_10006E57C;
  }

  else
  {
    v6 = sub_10006E200;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006E200()
{
  v50 = v0;
  v1 = v0[16];
  if (v1 >> 60 == 15)
  {
    v2 = v0[9];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[15];
      v5 = v0[16];
      v7 = v0[13];
      v47 = v0[12];
      v8 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no progenitor key attestation available", v11, 2u);

      sub_10001C120(v6, v5);
      v47(v8, v9);
    }

    else
    {
      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[9];
      v28 = v0[6];
      v29 = v0[7];

      v26(v27, v28);
    }

    v30 = 0;
  }

  else
  {
    v12 = v0[15];
    v13 = v0[10];
    sub_100009708(v12, v0[16]);
    defaultLogger()();
    sub_100009708(v12, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    sub_10001C120(v12, v1);
    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[15];
      v16 = v0[16];
      v48 = v0[12];
      v18 = v0[10];
      v19 = v0[6];
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;
      v23 = Data.base64EncodedString(options:)(0);
      v24 = sub_10010150C(v23._countAndFlagsBits, v23._object, &v49);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Progenitor key attestation retrieved : %s", v21, 0xCu);
      sub_100005090(v22);

      v48(v18, v19);
    }

    else
    {
      v31 = v0[12];
      v32 = v0[10];
      v33 = v0[6];
      v34 = v0[7];

      v31(v32, v33);
    }

    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[13];
    v38 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v38 initWithData:isa type:1];

    sub_10001C120(v36, v35);
    sub_10001C120(v36, v35);
  }

  v41 = v0[10];
  v40 = v0[11];
  v43 = v0[8];
  v42 = v0[9];
  v44 = v0[5];

  v45 = v0[1];

  return v45(v30);
}

uint64_t sub_10006E57C()
{
  v1 = v0[13];

  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v3(v7, v10);
  sub_100071394();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSError.mapFromError(_:domain:mapper:)();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10006E848(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D74;

  return sub_10006DC40();
}

uint64_t sub_10006E8F0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006EA30, 0, 0);
}

uint64_t sub_10006EA30()
{
  v1 = v0[11];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BiometricStoreSessionProxy globalThirdPartyProgenitorKeyAttestation", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[12] = v9;
  v9(v5, v6);
  sub_1000710B4();
  v20 = *(v0[2] + OBJC_IVAR____TtC7idcredd26BiometricStoreSessionProxy_storage);
  v0[13] = v20;
  if (v20)
  {

    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = sub_10006ED98;

    return sub_10012CEAC();
  }

  else
  {
    (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.badLogic(_:), v0[3]);
    sub_10002688C(&_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[9];
    v13 = v0[10];
    v15 = v0[7];
    v14 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v10(v14, v16);
    sub_100071394();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static NSError.mapFromError(_:domain:mapper:)();

    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10006ED98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_100072D7C;
  }

  else
  {
    v6 = sub_10006EEB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10006EEB0()
{
  v50 = v0;
  v1 = v0[16];
  if (v1 >> 60 == 15)
  {
    v2 = v0[9];
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[15];
      v5 = v0[16];
      v7 = v0[13];
      v47 = v0[12];
      v8 = v0[9];
      v9 = v0[6];
      v10 = v0[7];
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "no third party progenitor key attestation available", v11, 2u);

      sub_10001C120(v6, v5);
      v47(v8, v9);
    }

    else
    {
      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[9];
      v28 = v0[6];
      v29 = v0[7];

      v26(v27, v28);
    }

    v30 = 0;
  }

  else
  {
    v12 = v0[15];
    v13 = v0[10];
    sub_100009708(v12, v0[16]);
    defaultLogger()();
    sub_100009708(v12, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    sub_10001C120(v12, v1);
    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[15];
      v16 = v0[16];
      v48 = v0[12];
      v18 = v0[10];
      v19 = v0[6];
      v20 = v0[7];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;
      v23 = Data.base64EncodedString(options:)(0);
      v24 = sub_10010150C(v23._countAndFlagsBits, v23._object, &v49);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Third party progenitor key attestation retrieved : %s", v21, 0xCu);
      sub_100005090(v22);

      v48(v18, v19);
    }

    else
    {
      v31 = v0[12];
      v32 = v0[10];
      v33 = v0[6];
      v34 = v0[7];

      v31(v32, v33);
    }

    v36 = v0[15];
    v35 = v0[16];
    v37 = v0[13];
    v38 = objc_allocWithZone(DCCredentialAttestation);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v30 = [v38 initWithData:isa type:1];

    sub_10001C120(v36, v35);
    sub_10001C120(v36, v35);
  }

  v41 = v0[10];
  v40 = v0[11];
  v43 = v0[8];
  v42 = v0[9];
  v44 = v0[5];

  v45 = v0[1];

  return v45(v30);
}

uint64_t sub_10006F3A0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100072D74;

  return sub_10006E8F0();
}