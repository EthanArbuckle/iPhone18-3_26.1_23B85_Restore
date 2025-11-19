uint64_t sub_1004222F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100422368@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  result = sub_10041F16C(*a1, a1[1], v2[2], v2[3], v2[4], v2[5]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004223A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10041F600(*a1, a1[1], v2[2], v2[3], v2[5], v2[6]);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

unint64_t sub_1004223F0()
{
  result = qword_100946830;
  if (!qword_100946830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946830);
  }

  return result;
}

unint64_t sub_100422444()
{
  result = qword_100946838;
  if (!qword_100946838)
  {
    sub_1000F514C(&qword_100946840, &qword_1007A8B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946838);
  }

  return result;
}

void *sub_1004224E8@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100422574(*a1, *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10042251C(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_10042252C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100422574(unint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v109 = a1;
  v6 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  __chkstk_darwin(v6);
  v110 = &v90 - v8;
  v9 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  __chkstk_darwin(v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v117 = *(v13 - 8);
  v118 = v13;
  v14 = *(v117 + 64);
  __chkstk_darwin(v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v90 - v18;
  v108 = v19;
  __chkstk_darwin(v20);
  v114 = &v90 - v21;
  v22 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v115 = *(v22 - 8);
  v23 = *(v115 + 64);
  __chkstk_darwin(v22);
  v107 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v104 = v27;
  v105 = &v90 - v26;
  __chkstk_darwin(v28);
  v116 = &v90 - v29;
  v30 = sub_1000F5104(&qword_100946860, &qword_1007A8BB0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v90 - v33;
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v120 = v22;
  v113 = v16;
  v100 = v3;
  swift_getKeyPath();

  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  v98 = a3;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (*(v31 + 8))(v34, v30);
  v99 = a2;
  v35 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
  if (v36)
  {
    v109 = v36;
    v101 = v35;
    if (qword_1009360C8 != -1)
    {
      swift_once();
    }

    v94 = qword_100974E40;
    v37 = v116;
    v38 = v120;
    (*(v115 + 104))(v116, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:), v120);
    v39 = v117;
    v40 = *(v117 + 104);
    v41 = v114;
    v96 = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
    v42 = v118;
    v97 = v117 + 104;
    v95 = v40;
    v40(v114);
    PartialOverride._full.getter();
    REMSuggestedAttributesHarvester.Request.reminder.getter();
    (*(v102 + 8))(v12, v103);
    v103 = REMSuggestedAttributeInput.reminderID.getter();

    (*(v111 + 104))(v110, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v112);
    v43 = v105;
    if (qword_1009360C0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100946628);
    v98 = *(v115 + 16);
    v98(v43, v37, v38);
    v45 = *(v39 + 16);
    v46 = v106;
    v93 = v45;
    v45(v106, v41, v42);
    v47 = v43;
    v48 = v42;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v91 = v50;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v51 = 136446722;
      v90 = v49;
      v52 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
      v54 = v53;
      v55 = v115;
      v56 = *(v115 + 8);
      v102 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v105 = v56;
      (v56)(v47, v120);
      v57 = sub_10000668C(v52, v54, &v119);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2082;
      v58 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v60 = v59;
      v61 = *(v117 + 8);
      v92 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v106 = v61;
      (v61)(v46, v118);
      v62 = sub_10000668C(v58, v60, &v119);
      v41 = v114;

      *(v51 + 14) = v62;
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_10000668C(v101, v109, &v119);
      v63 = v90;
      _os_log_impl(&_mh_execute_header, v90, v91, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v51, 0x20u);
      swift_arrayDestroy();

      v48 = v118;

      v64 = v55;
    }

    else
    {

      v66 = *(v117 + 8);
      v92 = (v117 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v106 = v66;
      (v66)(v46, v42);
      v64 = v115;
      v67 = *(v115 + 8);
      v102 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v105 = v67;
      (v67)(v47, v120);
    }

    v68 = v107;
    v98(v107, v116, v120);
    v93(v113, v41, v48);
    v69 = (*(v64 + 80) + 24) & ~*(v64 + 80);
    v70 = (v104 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = v117;
    v72 = (*(v117 + 80) + v70 + 16) & ~*(v117 + 80);
    v73 = (v108 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    v75 = v103;
    *(v74 + 16) = v103;
    v76 = v68;
    v77 = v120;
    (*(v64 + 32))(v74 + v69, v76, v120);
    v78 = (v74 + v70);
    v79 = v109;
    *v78 = v101;
    v78[1] = v79;
    v80 = v118;
    (*(v71 + 32))(v74 + v72, v113, v118);
    v81 = (v74 + v73);
    *v81 = REMCDList.cleanUpAfterLocalObjectMerge();
    v81[1] = 0;

    v82 = v75;
    v83 = v110;
    dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

    (*(v111 + 8))(v83, v112);
    (v106)(v114, v80);
    (v105)(v116, v77);
    sub_1000F5104(&qword_10093EDB8, &qword_10079D548);
    v84 = type metadata accessor for REMSuggestedAttributeOutput();
    v85 = *(v84 - 8);
    v86 = *(v85 + 72);
    v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v65 = swift_allocObject();
    *(v65 + 1) = xmmword_100791300;
    v88 = *(sub_1000F5104(&qword_1009413F8, &qword_1007A13C0) + 48);
    v95(v113, v96, v80);
    REMSuggestedAttributeOutput.Source.init(pipeline:)();
    type metadata accessor for REMSuggestedList();
    *(v65 + v87 + v88) = REMSuggestedList.__allocating_init(stringLiteral:)();
    (*(v85 + 104))(v65 + v87, enum case for REMSuggestedAttributeOutput.list(_:), v84);
  }

  else
  {
    v65 = _swiftEmptyArrayStorage;
  }

  return v65;
}

uint64_t sub_1004230BC(uint64_t a1)
{
  v3 = *(type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for REMSuggestedAttributeOutput.Pipeline() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100416AE0(a1, v8, v1 + v4, v9, v10, v1 + v7, v12, v13);
}

Class sub_100423204(unint64_t a1)
{
  v3 = v2;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v1 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v9 = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v39 = qword_100974E30;
    v13 = sub_100043AA8();
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v15 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v15];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v13];

    [v14 setFetchLimit:0];
    v40 = v14;
    [v14 setFetchOffset:0];
    v44 = _swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v47 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v17 = sub_100235FA0(Predicate);

    v18 = sub_100277CC0(v17);

    v19 = *(v18 + 16);
    if (!v19)
    {
      goto LABEL_21;
    }

LABEL_5:
    v46 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
LABEL_27:
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v34._object = 0x80000001007EC120;
      v34._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v34);
      v43 = v3;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v35 = v12;
    v36 = v3;
    v37 = a1;
    v38 = v9;
    v20 = 0;
    v21 = v46;
    v41 = v19;
    v42 = v18 & 0xC000000000000001;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v42)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_18;
        }

        v3 = *(v18 + 8 * v20 + 32);
      }

      v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v23)
      {
        goto LABEL_27;
      }

      v9 = v22;
      v24 = v23;

      v46 = v21;
      a1 = v21[2];
      v25 = v21[3];
      v3 = a1 + 1;
      if (a1 >= v25 >> 1)
      {
        sub_100026EF4((v25 > 1), a1 + 1, 1);
        v21 = v46;
      }

      v21[2] = v3;
      v26 = &v21[2 * a1];
      v26[4] = v9;
      v26[5] = v24;
      ++v20;
      if (v12 == v41)
      {

        a1 = v37;
        v9 = v38;
        v3 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_5;
  }

LABEL_21:

  v21 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_100271EA8(v21);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = v40;
  [v40 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v29.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v28 setSortDescriptors:v29.super.isa];

  v30 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    sub_1004258C8(v9, _s10PredicatesOMa);
  }

  else
  {
    v31 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v30);

    v32 = [objc_opt_self() defaultFetchOptions];
    v29.super.isa = sub_10048A0EC(v31, v32, a1);
    sub_1004258C8(v9, _s10PredicatesOMa);
  }

  return v29.super.isa;
}

uint64_t sub_10042382C(uint64_t a1)
{
  v103 = a1;
  v2 = v1;
  v112 = _s10PredicatesOMa(0);
  v3 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v106 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v96 - v9;
  __chkstk_darwin(v10);
  v12 = &v96 - v11;
  __chkstk_darwin(v13);
  v15 = &v96 - v14;
  __chkstk_darwin(v16);
  v105 = &v96 - v17;
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  __chkstk_darwin(v21);
  v23 = &v96 - v22;
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v109 = &v96 - v26;
  v110 = v2;
  v27 = [v2 startDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
  }

  else
  {
    v29 = type metadata accessor for Date();
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  }

  sub_10012F7FC(v20, v23);
  type metadata accessor for Date();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v23, 1, v29) == 1)
  {
    sub_1000050A4(v23, &unk_100938850, qword_100795AE0);
    v32 = 1;
    v33 = v109;
  }

  else
  {
    v33 = v109;
    Date.addingTimeInterval(_:)();
    (*(v30 + 8))(v23, v29);
    v32 = 0;
  }

  v34 = *(v30 + 56);
  v35 = 1;
  v104 = v29;
  v107 = v34;
  v108 = v30 + 56;
  v34(v33, v32, 1, v29);
  v36 = v110;
  v37 = [v110 endDate];
  if (v37)
  {
    v38 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  v39 = v104;
  v107(v12, v35, 1, v104);
  sub_10012F7FC(v12, v15);
  if (v31(v15, 1, v39) == 1)
  {
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    v40 = 1;
    v41 = v105;
  }

  else
  {
    v41 = v105;
    Date.addingTimeInterval(_:)();
    v36 = v110;
    (*(v30 + 8))(v15, v39);
    v40 = 0;
  }

  v107(v41, v40, 1, v39);
  v42 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
  v43 = *(v42 + 48);
  v44 = *(v42 + 64);
  v45 = [v36 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = v106;
  *v106 = v46;
  sub_10012F78C(v109, v47 + v43);
  sub_10012F78C(v41, v47 + v44);
  swift_storeEnumTagMultiPayload();
  v48 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
LABEL_30:
    swift_once();
  }

  v49 = qword_100974E30;
  v50 = sub_100043AA8();
  v51 = [objc_allocWithZone(NSFetchRequest) init];
  v52 = [swift_getObjCClassFromMetadata() entity];
  [v51 setEntity:v52];

  [v51 setAffectedStores:0];
  [v51 setPredicate:v50];

  [v51 setFetchLimit:0];
  [v51 setFetchOffset:0];
  v114 = _swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v114 = sub_1003EBAD0();
  sub_100271EA8(_swiftEmptyArrayStorage);
  v117 = v114;
  v54 = sub_100235FA0(Predicate);

  v55 = sub_100277CC0(v54);

  if ((v55 & 0x8000000000000000) == 0 && (v55 & 0x4000000000000000) == 0)
  {
    v56 = *(v55 + 16);
    v100 = v49;
    v101 = v51;
    if (v56)
    {
      goto LABEL_16;
    }

LABEL_32:

    v59 = _swiftEmptyArrayStorage;
LABEL_33:
    sub_100271EA8(v59);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v69 = v101;
    [v101 setRelationshipKeyPathsForPrefetching:isa];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v70 = Array._bridgeToObjectiveC()().super.isa;
    [v69 setSortDescriptors:v70];

    v72 = v102;
    v71 = v103;
    v73 = NSManagedObjectContext.fetch<A>(_:)();
    v29 = v72;
    if (v72)
    {

      goto LABEL_62;
    }

    v112 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v73);

    v74 = v110;
    v75 = [v110 startDate];
    if (v75)
    {
      v76 = v99;
      v77 = v104;
      v78 = v107;
    }

    else
    {
      v79 = v99;
      v77 = v104;
      v78 = v107;
      v107(v99, 1, 1, v104);
      sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
      v75 = [v74 endDate];
      if (!v75)
      {
        v90 = v97;
        v78(v97, 1, 1, v77);
        sub_1000050A4(v90, &unk_100938850, qword_100795AE0);
        v89 = v112;
LABEL_60:
        v91 = [objc_opt_self() defaultFetchOptions];
        v92 = sub_10048A0EC(v89, v91, v71);
        if (!v29)
        {
          v93 = v92;

          sub_1004258C8(v106, _s10PredicatesOMa);
          sub_1000050A4(v105, &unk_100938850, qword_100795AE0);
          sub_1000050A4(v109, &unk_100938850, qword_100795AE0);
          return v93;
        }

LABEL_62:
        sub_1004258C8(v106, _s10PredicatesOMa);
        v93 = &unk_100938850;
        sub_1000050A4(v105, &unk_100938850, qword_100795AE0);
        sub_1000050A4(v109, &unk_100938850, qword_100795AE0);
        return v93;
      }

      v76 = v97;
    }

    v80 = v75;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v78(v76, 0, 1, v77);
    sub_1000050A4(v76, &unk_100938850, qword_100795AE0);
    v114 = _swiftEmptyArrayStorage;
    v48 = v112;
    v57 = v110;
    if (v112 >> 62)
    {
      goto LABEL_57;
    }

    for (i = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v82 = 0;
      v83 = v48 & 0xC000000000000001;
      v84 = v48 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v83)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v82 >= *(v84 + 16))
          {
            goto LABEL_55;
          }

          v85 = *(v48 + 8 * v82 + 32);
        }

        v58 = v85;
        v86 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        v117 = v85;
        v87 = sub_1004244E4(&v117, v57);
        if (v29)
        {
          goto LABEL_66;
        }

        if (v87)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v88 = v114[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v48 = v112;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v57 = v110;
        }

        else
        {
        }

        ++v82;
        if (v86 == i)
        {
          v89 = v114;
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      ;
    }

    v89 = _swiftEmptyArrayStorage;
LABEL_59:

    v71 = v103;
    goto LABEL_60;
  }

  v56 = _CocoaArrayWrapper.endIndex.getter();
  v100 = v49;
  v101 = v51;
  if (!v56)
  {
    goto LABEL_32;
  }

LABEL_16:
  v116 = _swiftEmptyArrayStorage;
  v57 = &v116;
  sub_100026EF4(0, v56 & ~(v56 >> 63), 0);
  if (v56 < 0)
  {
    goto LABEL_56;
  }

  v98 = v48;
  v58 = 0;
  v59 = v116;
  v111 = v56;
  v112 = v55 & 0xC000000000000001;
  while (1)
  {
    v48 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v112)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *(v55 + 16))
      {
        goto LABEL_29;
      }

      v60 = *(v55 + 8 * v58 + 32);
    }

    v61 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v62)
    {
      break;
    }

    v63 = v61;
    v64 = v62;

    v116 = v59;
    v66 = v59[2];
    v65 = v59[3];
    v29 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      sub_100026EF4((v65 > 1), v66 + 1, 1);
      v59 = v116;
    }

    v59[2] = v29;
    v67 = &v59[2 * v66];
    v67[4] = v63;
    v67[5] = v64;
    ++v58;
    if (v48 == v111)
    {

      goto LABEL_33;
    }
  }

  v114 = 0;
  v115 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v95._object = 0x80000001007EC120;
  v95._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v95);
  v113 = v60;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_66:

  __break(1u);
  return result;
}

uint64_t sub_1004244E4(void **a1, void *a2)
{
  v95 = a2;
  v94 = type metadata accessor for Date();
  v97 = *(v94 - 8);
  v3 = *(v97 + 64);
  __chkstk_darwin(v94);
  v85 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v85 - v6;
  __chkstk_darwin(v7);
  v96 = &v85 - v8;
  __chkstk_darwin(v9);
  v86 = &v85 - v10;
  __chkstk_darwin(v11);
  v89 = &v85 - v12;
  __chkstk_darwin(v13);
  v92 = &v85 - v14;
  v15 = type metadata accessor for DateComponents();
  v99 = *(v15 - 8);
  v100 = v15;
  v16 = *(v99 + 64);
  __chkstk_darwin(v15);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v85 - v20;
  v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v87 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v91 = &v85 - v25;
  __chkstk_darwin(v26);
  v88 = &v85 - v27;
  __chkstk_darwin(v28);
  v93 = &v85 - v29;
  v30 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v85 - v32;
  v34 = type metadata accessor for TimeZone();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v85 - v41;
  v43 = *a1;
  v44 = [v43 timeZone];
  v102 = v42;
  v101 = v35;
  if (v44)
  {
    v45 = v44;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v34;

    TimeZone.init(identifier:)();

    v47 = *(v35 + 48);
    if (v47(v33, 1, v46) == 1)
    {
      static TimeZone.current.getter();
      v48 = v47(v33, 1, v46);
      v49 = v97;
      v34 = v46;
      if (v48 != 1)
      {
        sub_1000050A4(v33, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v35 + 32))(v38, v33, v46);
      v49 = v97;
      v34 = v46;
    }

    (*(v101 + 32))(v102, v38, v34);
  }

  else
  {
    static TimeZone.current.getter();
    v49 = v97;
  }

  v50 = v94;
  v51 = [v43 dueDateComponents];
  v52 = v93;
  v53 = v91;
  if (v51)
  {
    v54 = v34;
    v55 = v51;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v99 + 32))(v98, v18, v100);
    v56 = objc_opt_self();
    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v58 = TimeZone._bridgeToObjectiveC()().super.isa;
    v59 = [v56 rem_dateWithDateComponents:isa timeZone:v58];

    if (v59)
    {
      v60 = v88;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = 0;
      v62 = v92;
    }

    else
    {
      v61 = 1;
      v62 = v92;
      v60 = v88;
    }

    (*(v99 + 8))(v98, v100);
    (*(v49 + 56))(v60, v61, 1, v50);
    sub_10012F7FC(v60, v52);
    v34 = v54;
  }

  else
  {
    (*(v49 + 56))(v93, 1, 1, v50);
    v62 = v92;
  }

  v63 = v95;
  v64 = [v95 startDate];
  if (v64)
  {
    v100 = v34;
    v65 = v52;
    v66 = v89;
    v67 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = *(v49 + 32);
    v69 = v66;
    v52 = v65;
    v68(v62, v69, v50);
    sub_10012F78C(v65, v53);
    if ((*(v49 + 48))(v53, 1, v50) == 1)
    {
      (*(v49 + 8))(v62, v50);
      sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
      v70 = 0;
    }

    else
    {
      v71 = v86;
      v68(v86, v53, v50);
      v70 = static Date.< infix(_:_:)();
      v72 = v62;
      v73 = *(v49 + 8);
      v74 = v71;
      v52 = v65;
      v73(v74, v50);
      v73(v72, v50);
    }

    v34 = v100;
  }

  else
  {
    v70 = 1;
  }

  v75 = [v63 endDate];
  v76 = v96;
  if (!v75)
  {
    goto LABEL_27;
  }

  v77 = v90;
  v78 = v75;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = *(v49 + 32);
  v79(v76, v77, v50);
  if ((v70 & 1) == 0)
  {
    (*(v49 + 8))(v76, v50);
    sub_1000050A4(v52, &unk_100938850, qword_100795AE0);
    (*(v101 + 8))(v102, v34);
    goto LABEL_25;
  }

  v80 = v87;
  sub_10012F78C(v52, v87);
  if ((*(v49 + 48))(v80, 1, v50) != 1)
  {
    v81 = v80;
    v82 = v85;
    v79(v85, v81, v50);
    sub_1002CDF34();
    v70 = dispatch thunk of static Comparable.< infix(_:_:)() ^ 1;
    v83 = *(v49 + 8);
    v83(v82, v50);
    v83(v76, v50);
LABEL_27:
    sub_1000050A4(v52, &unk_100938850, qword_100795AE0);
    (*(v101 + 8))(v102, v34);
    return v70 & 1;
  }

  (*(v49 + 8))(v76, v50);
  sub_1000050A4(v52, &unk_100938850, qword_100795AE0);
  (*(v101 + 8))(v102, v34);
  sub_1000050A4(v80, &unk_100938850, qword_100795AE0);
LABEL_25:
  v70 = 0;
  return v70 & 1;
}

Class sub_100424E6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v50 - v9;
  v11 = _s10PredicatesOMa(0);
  v12 = *(*(v11 - 8) + 64);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = (v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [v2 listIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v15 = v17;
  v18 = [v2 startDate];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  }

  v22 = sub_1000F5104(&qword_100946028, &unk_1007A7498);
  sub_10012F7FC(v10, v15 + *(v22 + 48));
  v23 = [v2 endDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 56))(v7, v25, 1, v26);
  sub_10012F7FC(v7, v15 + *(v22 + 64));
  swift_storeEnumTagMultiPayload();
  v27 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v50[1] = qword_100974E30;
    v54 = v15;
    v28 = sub_100043AA8();
    v29 = [objc_allocWithZone(NSFetchRequest) init];
    v52 = v27;
    v30 = [swift_getObjCClassFromMetadata() entity];
    [v29 setEntity:v30];

    [v29 setAffectedStores:0];
    [v29 setPredicate:v28];

    [v29 setFetchLimit:0];
    v51 = v29;
    [v29 setFetchOffset:0];
    v58 = _swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v61 = sub_1003EBAD0();
    sub_100271EA8(_swiftEmptyArrayStorage);
    v32 = sub_100235FA0(Predicate);

    v33 = sub_100277CC0(v32);

    v27 = *(v33 + 16);
    if (!v27)
    {
      goto LABEL_27;
    }

LABEL_11:
    v60 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
LABEL_33:
      v58 = 0;
      v59 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v49._object = 0x80000001007EC120;
      v49._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v49);
      v57 = v10;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v50[0] = a1;
    v34 = 0;
    v15 = v60;
    v55 = v27;
    v56 = v33 & 0xC000000000000001;
    while (1)
    {
      a1 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v56)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_24;
        }

        v10 = *(v33 + 8 * v34 + 32);
      }

      v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v36)
      {
        goto LABEL_33;
      }

      v37 = v35;
      v27 = v36;

      v60 = v15;
      v39 = v15[2];
      v38 = v15[3];
      v10 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        sub_100026EF4((v38 > 1), v39 + 1, 1);
        v15 = v60;
      }

      v15[2] = v10;
      v40 = &v15[2 * v39];
      v40[4] = v37;
      v40[5] = v27;
      ++v34;
      if (a1 == v55)
      {

        a1 = v50[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (v27)
  {
    goto LABEL_11;
  }

LABEL_27:

  v15 = _swiftEmptyArrayStorage;
LABEL_28:
  sub_100271EA8(v15);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = v51;
  [v51 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v43.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v42 setSortDescriptors:v43.super.isa];

  v44 = v53;
  v45 = NSManagedObjectContext.fetch<A>(_:)();
  if (v44)
  {

    sub_1004258C8(v54, _s10PredicatesOMa);
  }

  else
  {
    v46 = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v45);

    v47 = [objc_opt_self() defaultFetchOptions];
    v43.super.isa = sub_10048A0EC(v46, v47, a1);
    sub_1004258C8(v54, _s10PredicatesOMa);
  }

  return v43.super.isa;
}

uint64_t sub_100425650(uint64_t a1)
{
  v3 = _s10PredicatesOMa_1();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v7 = qword_100975238;
  v8 = sub_10001F6F4();
  v9 = sub_100405438(0, v7, 0, v8);

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v9 setSortDescriptors:isa];

  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v11 = a1;
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1004258C8(v6, _s10PredicatesOMa_1);
  }

  else
  {
    v15[1] = v12;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v13 = Sequence.elements<A>(ofType:)();

    v11 = sub_1001E0B24(v13);
    sub_1004258C8(v6, _s10PredicatesOMa_1);
  }

  return v11;
}

uint64_t sub_1004258C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100425928()
{
  v1 = [v0 fileName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100425990(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v2 setSha512Sum:v3];
}

id sub_1004259FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

size_t sub_100425A50(unint64_t a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v41 = _swiftEmptyArrayStorage;
  if (a2 < 0)
  {
    KeyPath = swift_getKeyPath();
    if (a1 >> 62)
    {
      v36 = KeyPath;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      KeyPath = v36;
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v39 = KeyPath;
      v40 = _swiftEmptyArrayStorage;
      result = sub_100253218(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      v19 = 0;
      v17 = v40;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v20 = *(a1 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = [v20 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = type metadata accessor for UUID();
        (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
        v40 = v17;
        v25 = v17[2];
        v24 = v17[3];
        if (v25 >= v24 >> 1)
        {
          sub_100253218(v24 > 1, v25 + 1, 1);
          v17 = v40;
        }

        ++v19;
        v17[2] = v25 + 1;
        sub_100100FB4(v8, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25);
      }

      while (v16 != v19);
      KeyPath = v39;
    }

    sub_1003EDDB8(KeyPath, v17);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v41[2] >= v41[3] >> 1)
    {
      v37 = v41[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v12 = swift_getKeyPath();
    v13 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    sub_1003918E4(v12, v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v41[2] >= v41[3] >> 1)
    {
      v35 = v41[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_100023B44(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v41[2] >= v41[3] >> 1)
  {
    v33 = v41[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000F5104(&qword_100946878, qword_1007A8EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v27 = swift_getKeyPath();
  v28 = sub_1003EDDDC(v27);

  *(inited + 32) = v28;
  v29 = swift_getKeyPath();
  v30 = sub_1003EDE08(v29);

  *(inited + 40) = v30;
  sub_100025060(inited);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v41[2] >= v41[3] >> 1)
  {
    v34 = v41[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_26:
  v31 = swift_getKeyPath();
  sub_1003EDE08(v31);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v41[2] >= v41[3] >> 1)
  {
    v32 = v41[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0(v41);
}

void sub_100425F68(uint64_t a1, void **a2)
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

uint64_t sub_1004260A4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  sub_10012DF40();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 32) = result;
  qword_100974E58 = v0;
  return result;
}

uint64_t sub_10042611C()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_10012DF40();
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100974E60 = v0;
  return result;
}

uint64_t sub_1004261AC@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
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

void sub_100426264(uint64_t a1, void **a2)
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

void *sub_1004263A0()
{
  sub_100026EF4(0, 5, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 0xD000000000000023;
  v4[5] = 0x80000001007F2430;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x696669746E656469;
  v7[5] = 0xEA00000000007265;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_100026EF4((v8 > 1), v9 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v9];
  v11[4] = 0xD00000000000001ALL;
  v11[5] = 0x80000001007EA730;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  v14[4] = 0xD00000000000001ELL;
  v14[5] = 0x80000001007EC560;
  v16 = _swiftEmptyArrayStorage[2];
  v15 = _swiftEmptyArrayStorage[3];
  if (v16 >= v15 >> 1)
  {
    sub_100026EF4((v15 > 1), v16 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v16 + 1;
  v17 = &_swiftEmptyArrayStorage[2 * v16];
  v17[4] = 0x4E79616C70736964;
  v17[5] = 0xEB00000000656D61;
  return result;
}

uint64_t sub_1004267FC()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  v1 = *(inited + 32);

  while (1)
  {
    v2 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v3)
    {
      goto LABEL_21;
    }

    v4 = v2;
    v5 = v3;

    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100365788(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_100365788((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v5;
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(inited + 40);

      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
  v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v12)
  {
LABEL_21:
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(&unk_100943040, &unk_1007A3AC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v11;
  v14 = v12;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100365788(0, *(v6 + 2) + 1, 1, v6);
  }

  v16 = *(v6 + 2);
  v15 = *(v6 + 3);
  if (v16 >= v15 >> 1)
  {
    v6 = sub_100365788((v15 > 1), v16 + 1, 1, v6);
  }

  *(v6 + 2) = v16 + 1;
  v17 = &v6[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  return v6;
}

size_t sub_100426AE4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v36 - v9;
  v39 = _swiftEmptyArrayStorage;
  if (a3 < 0)
  {
    KeyPath = swift_getKeyPath();
    if (a1)
    {
      sub_1003EF6B4(KeyPath);
    }

    else
    {
      sub_1003EF644(KeyPath);
    }

LABEL_30:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v39[2] >= v39[3] >> 1)
    {
      v32 = v39[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return sub_10000C2B0(v39);
  }

  if (a3)
  {
    v11 = swift_getKeyPath();
    sub_1003EF644(v11);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v39[2] >= v39[3] >> 1)
    {
      v35 = v39[2];
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v12 = swift_getKeyPath();
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_100016ED8(0, v13, 0);
    v14 = v38;
    v15 = (a1 + 32);
    v16 = v38[2];
    do
    {
      v18 = *v15++;
      v17 = v18;
      v38 = v14;
      v19 = v14[3];
      if (v16 >= v19 >> 1)
      {
        sub_100016ED8((v19 > 1), v16 + 1, 1);
        v14 = v38;
      }

      v14[2] = v16 + 1;
      *(v14 + v16++ + 16) = v17 + 1;
      --v13;
    }

    while (v13);
  }

  sub_1003EF66C(v12, v14);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v39[2] >= v39[3] >> 1)
  {
    v33 = v39[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!a2)
  {
    return sub_10000C2B0(v39);
  }

  v20 = swift_getKeyPath();
  if (a2 >> 62)
  {
    v34 = v20;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v20 = v34;
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = _swiftEmptyArrayStorage;
  if (!v21)
  {
LABEL_28:
    sub_1003EF690(v20, v22);
    goto LABEL_30;
  }

  v37 = v20;
  v38 = _swiftEmptyArrayStorage;
  result = sub_100253218(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v22 = v38;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(a2 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = [v25 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for UUID();
      (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
      v38 = v22;
      v30 = v22[2];
      v29 = v22[3];
      if (v30 >= v29 >> 1)
      {
        sub_100253218(v29 > 1, v30 + 1, 1);
        v22 = v38;
      }

      ++v24;
      v22[2] = v30 + 1;
      sub_100100FB4(v10, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30);
    }

    while (v21 != v24);
    v20 = v37;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_100426F14(uint64_t a1, void **a2)
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

  [v8 setTemplateIdentifier:isa];
}

id sub_100427050(id a1)
{
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v3];

  v5 = sub_100426AE4(0, 0, 128);
  [v4 setPredicate:v5];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *&v25 = 0x656C706D6F437369;
  *(&v25 + 1) = 0xEB00000000646574;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToUpdate:isa];

  [v4 setResultType:1];
  v23 = 0;
  v8 = [a1 executeRequest:v4 error:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = v8;
    *(&v26 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v25 = v10;
    sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
    v11 = v9;
    throwingCast<A>(_:as:failureMessage:)();
    if (v1)
    {

      sub_10000607C(&v25);
    }

    else
    {
      sub_10000607C(&v25);
      v12 = v24;
      if ([v24 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v24, &v25);
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
      }

      v13 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v25, &qword_100939ED0, &qword_100791B10);
      v15 = v23;
      v16 = objc_opt_self();
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_100791300;
      *&v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v25 + 1) = v18;
      AnyHashable.init<A>(_:)();
      *(v17 + 96) = v13;
      *(v17 + 72) = v15;

      sub_10038ED74(v17);
      swift_setDeallocating();
      sub_1000050A4(v17 + 32, &unk_100946590, &qword_100796FF0);
      v19 = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007953F0;
      *(v20 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v21 = a1;
      v22 = Array._bridgeToObjectiveC()().super.isa;

      [v16 mergeChangesFromRemoteContextSave:v19 intoContexts:v22];

      if (v15 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }
  }

  else
  {
    a1 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100427578()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v0 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  result = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  *(v0 + 40) = result;
  qword_100946880 = v0;
  return result;
}

void sub_100427618(uint64_t a1, void **a2)
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

uint64_t sub_100427754(uint64_t a1, void *a2)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = a2;

  v5 = a2;
  v6 = sub_100426AE4(a1, inited, 1);

  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for REMCDTemplateOperationQueueItem();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  [v8 setAffectedStores:0];
  [v8 setPredicate:v6];

  if (qword_1009360F0 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 setSortDescriptors:isa];

  [v8 setReturnsObjectsAsFaults:0];
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

id sub_100427964(id a1)
{
  v3 = sub_100426AE4(1, 0, 128);
  type metadata accessor for REMCDTemplateOperationQueueItem();
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  *(&v27 + 1) = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
  *&v26 = v4;
  v6 = v4;
  throwingCast<A>(_:as:failureMessage:)();
  if (v1)
  {

    sub_10000607C(&v26);
  }

  else
  {

    sub_10000607C(&v26);
    v8 = v25;
    v9 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v25];
    [v9 setResultType:1];
    v24 = 0;
    v10 = [a1 executeRequest:v9 error:&v24];
    v11 = v24;
    if (v10)
    {
      v12 = v10;
      *(&v27 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
      *&v26 = v12;
      sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
      v13 = v11;
      throwingCast<A>(_:as:failureMessage:)();
      sub_10000607C(&v26);
      v14 = v25;
      if ([v25 result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(&v25, &v26);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }

      v15 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      sub_1000050A4(&v26, &qword_100939ED0, &qword_100791B10);
      v16 = v24;
      v23 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v26 + 1) = v18;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v15;
      *(inited + 72) = v16;

      sub_10038ED74(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007953F0;
      *(v20 + 32) = a1;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v21 = a1;
      v22 = Array._bridgeToObjectiveC()().super.isa;

      [v23 mergeChangesFromRemoteContextSave:isa intoContexts:v22];

      if (v16 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        a1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      a1 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_100427E68()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946888);
  v1 = sub_100006654(v0, qword_100946888);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100427F30(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v62 = a3;
  v63 = a1;
  v60 = a2;
  v7 = *v4;
  v66 = type metadata accessor for UUID();
  v59 = *(v66 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v66);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date();
  v61 = *(v65 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v65);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v51 - v11;
  v12 = OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID;
  v13 = sub_10013FBFC();
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100946888);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v56 = v15;
  v57 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    v68[1] = v7;
    *v19 = 136446466;
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    v55 = v12;
    v22 = sub_10000668C(v20, v21, v68);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v23 = [(objc_class *)v15 recordName];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v8;
    v27 = v26;

    v28 = v24;
    v12 = v55;
    v29 = sub_10000668C(v28, v27, v68);
    v8 = v25;

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: Start execution {recordName: %{public}s}", v19, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v67;
  Date.init()();
  v31 = *(v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController + 32);
  v55 = *(v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController + 24);
  v52 = v31;
  v54 = sub_10000F61C((v5 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController), v55);
  v53 = type metadata accessor for RDPublicTemplate();
  v32 = v61;
  v33 = v65;
  (*(v61 + 16))(v64, v30, v65);
  v34 = v59;
  v35 = v5 + v12;
  v36 = v58;
  (*(v59 + 16))(v58, v35, v66);
  v37 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v38 = (v9 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v56;
  *(v40 + 16) = v56;
  (*(v32 + 32))(v40 + v37, v64, v33);
  (*(v34 + 32))(v40 + v38, v36, v66);
  v42 = (v40 + v39);
  v43 = v62;
  v44 = v63;
  *v42 = v60;
  v42[1] = v43;
  v45 = v52;
  v46 = v40 + v51;
  *v46 = v44;
  *(v46 + 8) = 0;
  *(v40 + ((v39 + 39) & 0xFFFFFFFFFFFFFFF8)) = v57;
  v47 = *(v45 + 24);
  v48 = v41;

  v49 = v44;
  v47(v48, v53, sub_100429FD8, v40, v53, &off_1008E60A0, v55, v45, a4);

  return (*(v32 + 8))(v67, v65);
}

uint64_t sub_100428450(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v41 = a1;
  v42 = a6;
  v40 = a2;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100946888);
  (*(v12 + 16))(v17, a4, v11);
  v19 = a3;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = a5;
    v23 = v22;
    v43[0] = swift_slowAlloc();
    v43[1] = a7;
    *v23 = 136446722;
    swift_getMetatypeMetadata();
    v24 = String.init<A>(describing:)();
    v26 = sub_10000668C(v24, v25, v43);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    v27 = [v19 recordName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v43);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2048;
    v32 = v39;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v34 = v33;
    v35 = *(v12 + 8);
    v35(v32, v11);
    v35(v17, v11);
    *(v23 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s: Finished execution {recordName: %{public}s, elapsedSeconds: %f}", v23, 0x20u);
    swift_arrayDestroy();

    a5 = v38;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  return a5(v41, v40 & 1);
}

uint64_t sub_10042878C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, void *a7, int a8, uint64_t a9)
{
  v130 = a8;
  v138 = a7;
  v140 = a5;
  v141 = a6;
  v134 = a4;
  v145 = a3;
  v139 = a2;
  v143 = a9;
  v137 = type metadata accessor for UUID();
  v129 = *(v137 - 8);
  v10 = *(v129 + 64);
  __chkstk_darwin(v137);
  v128 = v11;
  v136 = &v122[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v132 = &v122[-v14];
  v146 = type metadata accessor for Date();
  v144 = *(v146 - 8);
  v15 = *(v144 + 64);
  __chkstk_darwin(v146);
  v16 = &v122[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v133 = &v122[-v18];
  __chkstk_darwin(v19);
  v142 = &v122[-v20];
  __chkstk_darwin(v21);
  v23 = &v122[-v22];
  v131 = type metadata accessor for RDPublicTemplate();
  v127 = *(v131 - 8);
  v24 = *(v127 + 64);
  __chkstk_darwin(v131);
  v135 = &v122[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v122[-v26];
  v28 = sub_1000F5104(&qword_100946978, &qword_1007A9248);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v122[-v30];
  sub_100010364(a1, &v122[-v30], &qword_100946978, &qword_1007A9248);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    if (qword_1009360F8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100946888);
    v34 = v144;
    v35 = v146;
    (*(v144 + 16))(v16, v145, v146);
    v36 = v139;
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v153 = v139;
      *v39 = 136446978;
      aBlock = v143;
      swift_getMetatypeMetadata();
      v40 = String.init<A>(describing:)();
      v42 = sub_10000668C(v40, v41, &v153);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      v43 = [v36 recordName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v36;
      v47 = v46;

      v48 = sub_10000668C(v44, v47, &v153);
      v36 = v45;

      *(v39 + 14) = v48;
      *(v39 + 22) = 2082;
      swift_getErrorValue();
      v49 = Error.rem_errorDescription.getter();
      v51 = sub_10000668C(v49, v50, &v153);

      *(v39 + 24) = v51;
      *(v39 + 32) = 2048;
      v52 = v142;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v54 = v53;
      v55 = *(v34 + 8);
      v56 = v52;
      v57 = v146;
      v55(v56, v146);
      v55(v16, v57);
      *(v39 + 34) = v54;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s: Failed to download public template {recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v39, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v34 + 8))(v16, v35);
    }

    v83 = v141;
    aBlock = v32;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v84 = v153;
      aBlock = v153;
      sub_10042A100();
      _BridgedStoredNSError.code.getter();
      if (v153 == 4)
      {
        v89 = [objc_opt_self() internetNotReachableError];

        goto LABEL_28;
      }

      if (v153 == 11)
      {
        v85 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v88 = [ObjCClassFromMetadata objectIDWithUUID:isa];

        v89 = [v85 noSuchObjectErrorWithObjectID:v88];
LABEL_28:
        swift_errorRetain();
        sub_100428450(v89, 1, v36, v145, v140, v83, v143);
      }
    }

    v89 = v32;
    goto LABEL_28;
  }

  sub_10042A158(v31, v27);
  v58 = v27;
  if (qword_1009360F8 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_100006654(v59, qword_100946888);
  v60 = v144;
  v61 = *(v144 + 16);
  v62 = v146;
  v126 = v144 + 16;
  v125 = v61;
  v61(v23, v145, v146);
  v63 = v139;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  v66 = os_log_type_enabled(v64, v65);
  v139 = v63;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v153 = v124;
    *v67 = 136446722;
    aBlock = v143;
    swift_getMetatypeMetadata();
    v68 = String.init<A>(describing:)();
    v123 = v65;
    v70 = sub_10000668C(v68, v69, &v153);

    *(v67 + 4) = v70;
    *(v67 + 12) = 2082;
    v71 = [v63 recordName];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v58;
    v75 = v74;

    v76 = v72;
    v60 = v144;
    v77 = sub_10000668C(v76, v75, &v153);

    *(v67 + 14) = v77;
    *(v67 + 22) = 2048;
    v78 = v142;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v80 = v79;
    v81 = *(v60 + 8);
    v82 = v78;
    v58 = v73;
    v81(v82, v146);
    v81(v23, v146);
    *(v67 + 24) = v80;
    _os_log_impl(&_mh_execute_header, v64, v123, "%{public}s: Downloaded public template {recordName: %{public}s, elapsedSeconds: %f}", v67, 0x20u);
    swift_arrayDestroy();

    v62 = v146;
  }

  else
  {

    v81 = *(v60 + 8);
    v81(v23, v62);
  }

  v90 = v133;
  v91 = v132;
  sub_100010364(v58 + *(v131 + 36), v132, &unk_100938850, qword_100795AE0);
  if ((*(v60 + 48))(v91, 1, v62) == 1)
  {
    v92 = v62;
    sub_1001AAD5C(v91);
  }

  else
  {
    (*(v60 + 32))(v90, v91, v62);
    v93 = v142;
    static Date.now.getter();
    v94 = static Date.< infix(_:_:)();
    v81(v93, v62);
    if (v94)
    {
      v95 = objc_opt_self();
      type metadata accessor for REMCDTemplate();
      v96 = swift_getObjCClassFromMetadata();
      v97 = UUID._bridgeToObjectiveC()().super.isa;
      v98 = [v96 objectIDWithUUID:v97];

      v99 = [v95 noSuchObjectErrorWithObjectID:v98];
      v100 = v99;
      sub_100428450(v99, 1, v139, v145, v140, v141, v143);

      v81(v90, v62);
      return sub_1003B52F4(v58);
    }

    v92 = v62;
    v81(v90, v62);
  }

  v102 = v129;
  (*(v129 + 16))(v136, v134, v137);
  sub_10042A1BC(v58, v135);
  v125(v142, v145, v92);
  v103 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v104 = (v128 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = (*(v127 + 80) + v104 + 8) & ~*(v127 + 80);
  v106 = (v24 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v144;
  v108 = *(v144 + 80);
  v145 = v58;
  v109 = (v108 + v106 + 8) & ~v108;
  v110 = (v15 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  (*(v102 + 32))(v111 + v103, v136, v137);
  *(v111 + v104) = v138;
  sub_10042A158(v135, v111 + v105);
  v112 = v139;
  *(v111 + v106) = v139;
  (*(v107 + 32))(v111 + v109, v142, v146);
  v113 = (v111 + v110);
  v114 = v141;
  *v113 = v140;
  v113[1] = v114;
  *(v111 + ((v110 + 23) & 0xFFFFFFFFFFFFFFF8)) = v143;
  if (v130)
  {
    v115 = swift_allocObject();
    *(v115 + 16) = sub_10042A220;
    *(v115 + 24) = v111;
    v151 = sub_1000529DC;
    v152 = v115;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_10000F160;
    v150 = &unk_1008F1638;
    v116 = _Block_copy(&aBlock);
    v117 = v112;
    v118 = v138;

    [v118 performBlockAndWait:v116];
    _Block_release(v116);

    sub_1003B52F4(v145);
    LOBYTE(v116) = swift_isEscapingClosureAtFileLocation();

    if ((v116 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v151 = sub_10042A220;
  v152 = v111;
  aBlock = _NSConcreteStackBlock;
  v148 = 1107296256;
  v149 = sub_100019200;
  v150 = &unk_1008F15E8;
  v119 = _Block_copy(&aBlock);
  v120 = v112;
  v121 = v138;

  [v121 performBlock:v119];
  _Block_release(v119);

  return sub_1003B52F4(v145);
}

void sub_1004296A4(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7, void *a8)
{
  v82 = a6;
  v83 = a8;
  v81 = a7;
  v84 = a5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v77 - v18;
  __chkstk_darwin(v19);
  v21 = &v77 - v20;
  v22 = sub_10041621C(a1, a2);
  sub_1006E8AFC(a3);
  v79 = v22;
  v85 = 0;
  if ([a2 save:&v85])
  {
    v23 = qword_1009360F8;
    v24 = v85;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_100946888);
    (*(v13 + 16))(v21, v84, v12);
    v26 = a4;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v78 = v26;

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v29 = 136446722;
      v85 = v83;
      swift_getMetatypeMetadata();
      v30 = String.init<A>(describing:)();
      v32 = sub_10000668C(v30, v31, &v86);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      v33 = [v78 recordName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_10000668C(v34, v36, &v86);

      *(v29 + 14) = v37;
      *(v29 + 22) = 2048;
      v38 = v80;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v40 = v39;
      v41 = *(v13 + 8);
      v41(v38, v12);
      v41(v21, v12);
      *(v29 + 24) = v40;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: Saved public template in cache {recordName: %{public}s, elapsedSeconds: %f}", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    v69 = v79;
    v70 = sub_1006E8E28();
    if (v70)
    {
      v71 = v70;
      v72 = v70;
      sub_100428450(v71, 0, v78, v84, v82, v81, v83);
    }

    else
    {
      type metadata accessor for REMCDPublicTemplate();
      v73 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v75 = String._bridgeToObjectiveC()();
      v76 = [v73 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v75];

      sub_100428450(v76, 1, v78, v84, v82, v81, v83);
    }
  }

  else
  {
    v42 = v85;
    v43 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v13;
    if (qword_1009360F8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100006654(v45, qword_100946888);
    (*(v13 + 16))(v16, v84, v12);
    v46 = a4;
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86 = v79;
      *v49 = 136446978;
      v85 = v83;
      swift_getMetatypeMetadata();
      v50 = String.init<A>(describing:)();
      LODWORD(v78) = v48;
      v52 = sub_10000668C(v50, v51, &v86);
      v77 = v12;
      v53 = v52;

      *(v49 + 4) = v53;
      *(v49 + 12) = 2082;
      v54 = [v46 recordName];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v44;
      v58 = v57;

      v59 = sub_10000668C(v55, v58, &v86);

      *(v49 + 14) = v59;
      *(v49 + 22) = 2082;
      swift_getErrorValue();
      v60 = Error.rem_errorDescription.getter();
      v62 = sub_10000668C(v60, v61, &v86);

      *(v49 + 24) = v62;
      *(v49 + 32) = 2048;
      v63 = v80;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v65 = v64;
      v66 = *(v56 + 8);
      v67 = v63;
      v68 = v77;
      v66(v67, v77);
      v66(v16, v68);
      *(v49 + 34) = v65;
      _os_log_impl(&_mh_execute_header, v47, v78, "%{public}s: Failed to save public template in cache {recordName: %{public}s, error: %{public}s, elapsedSeconds: %f}", v49, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    swift_errorRetain();
    sub_100428450(v43, 1, v46, v84, v82, v81, v83);
  }
}

uint64_t sub_100429E34()
{
  v1 = OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicLinkURLUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd41RDTemplateOperationDownloadPublicTemplate_publicCloudDatabaseController));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDTemplateOperationDownloadPublicTemplate()
{
  result = qword_1009468E0;
  if (!qword_1009468E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100429F34()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100429FD8(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10042878C(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_10042A100()
{
  result = qword_1009371E8;
  if (!qword_1009371E8)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009371E8);
  }

  return result;
}

uint64_t sub_10042A158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPublicTemplate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPublicTemplate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10042A220()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for RDPublicTemplate() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for Date() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v3);
  v12 = *(v0 + v6);
  v13 = v0 + v9;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v0 + v10);

  sub_1004296A4((v0 + v2), v11, (v0 + v5), v12, v0 + v8, v14, v15, v16);
}

uint64_t sub_10042A3B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946980);
  v1 = sub_100006654(v0, qword_100946980);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDRecurrenceRule.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDRecurrenceRule.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      v13 = v10;
      [v13 setCkServerRecord:a1];
      [v13 setInCloud:1];

      [v13 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100936100 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_100946980);
      v15 = a2;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v4;
        *v18 = 136446466;
        swift_getMetatypeMetadata();
        v19 = String.init<A>(describing:)();
        v21 = sub_10000668C(v19, v20, &v30);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2082;
        v22 = [v15 remObjectID];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 description];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v27 = 0xE300000000000000;
          v25 = 7104878;
        }

        v28 = sub_10000668C(v25, v27, &v30);

        *(v18 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v18, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

Swift::String __swiftcall REMCDRecurrenceRule.recordType()()
{
  v0 = 0x6E65727275636552;
  v1 = 0xEE00656C75526563;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDRecurrenceRule.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v37 - v7;
  v9 = String._bridgeToObjectiveC()();
  v40.receiver = v3;
  v40.super_class = REMCDRecurrenceRule;
  objc_msgSendSuper2(&v40, "mergeDataFromRecord:accountID:", from.super.isa, v9);

  v10 = [(objc_class *)from.super.isa recordID];
  v11 = [v10 recordName];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = [v3 ckIdentifierFromRecordName:v11];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v12];

  v13 = 0;
  v37[1] = "nDownloadPublicTemplate";
  do
  {
    v14 = *(&off_1008E33E8 + v13 + 32);
    if (v14 > 5)
    {
      if (*(&off_1008E33E8 + v13 + 32) > 8u)
      {
        if (v14 == 9)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v28 = v39;
          if (v39 >> 60 != 15)
          {
            v29 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v29, v28);
          }

          [v3 setMonthsOfTheYear:isa];
          goto LABEL_7;
        }

        if (v14 == 10)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v21 = v39;
          if (v39 >> 60 != 15)
          {
            v22 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v22, v21);
          }

          [v3 setWeeksOfTheYear:isa];
          goto LABEL_7;
        }

        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v34 = swift_dynamicCastObjCClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v34 = 0;
        }

        v35 = sub_1001287DC(v34);

        if (v35)
        {
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (!v36)
          {
          }
        }

        else
        {
          v36 = 0;
        }

        [v3 setReminder:v36];
      }

      else
      {
        if (v14 == 6)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v25 = v39;
          if (v39 >> 60 != 15)
          {
            v26 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v26, v25);
          }

          [v3 setDaysOfTheWeek:isa];
          goto LABEL_7;
        }

        if (v14 == 7)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v17 = v39;
          if (v39 >> 60 != 15)
          {
            v18 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v18, v17);
          }

          [v3 setDaysOfTheYear:isa];
          goto LABEL_7;
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v38))
        {
          v31 = 0;
        }

        else
        {
          v31 = v38;
        }

        [v3 setFirstDayOfTheWeek:v31];
      }
    }

    else if (*(&off_1008E33E8 + v13 + 32) > 2u)
    {
      if (v14 != 3)
      {
        if (v14 == 4)
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v19 = v39;
          if (v39 >> 60 != 15)
          {
            v20 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v20, v19);
          }

          [v3 setSetPositions:isa];
        }

        else
        {
          sub_10018E134();
          CKRecordKeyValueSetting.subscript.getter();
          isa = 0;
          v32 = v39;
          if (v39 >> 60 != 15)
          {
            v33 = v38;
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100031A14(v33, v32);
          }

          [v3 setDaysOfTheMonth:isa];
        }

        goto LABEL_7;
      }

      sub_10018E134();
      CKRecordKeyValueSetting.subscript.getter();
      if (v39)
      {
        v27 = 0;
      }

      else
      {
        v27 = v38;
      }

      [v3 setOccurrenceCount:v27];
    }

    else
    {
      if (!*(&off_1008E33E8 + v13 + 32))
      {
        sub_10018E134();
        v23 = type metadata accessor for Date();
        CKRecordKeyValueSetting.subscript.getter();
        v24 = *(v23 - 8);
        isa = 0;
        if ((*(v24 + 48))(v8, 1, v23) != 1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v24 + 8))(v8, v23);
        }

        [v3 setEndDate:isa];
LABEL_7:

        goto LABEL_8;
      }

      if (v14 == 1)
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v38))
        {
          v15 = 0;
        }

        else
        {
          v15 = v38;
        }

        [v3 setFrequency:v15];
      }

      else
      {
        sub_10018E134();
        CKRecordKeyValueSetting.subscript.getter();
        if (BYTE2(v38))
        {
          v30 = 0;
        }

        else
        {
          v30 = v38;
        }

        [v3 setInterval:v30];
      }
    }

LABEL_8:
    ++v13;
  }

  while (v13 != 12);
}

CKRecord_optional __swiftcall REMCDRecurrenceRule.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = v33 - v8;
  v37.receiver = v0;
  v37.super_class = REMCDRecurrenceRule;
  v11 = objc_msgSendSuper2(&v37, "newlyCreatedRecord", v7);
  if (v11)
  {
    v12 = 0;
    v33[1] = "nDownloadPublicTemplate";
    do
    {
      v13 = *(&off_1008E33E8 + v12 + 32);
      if (v13 > 5)
      {
        if (*(&off_1008E33E8 + v12 + 32) > 8u)
        {
          if (v13 == 9)
          {
            v15 = [v1 monthsOfTheYear];
            if (!v15)
            {
              v36 = 0;
              v34 = 0u;
              v35 = 0u;
              goto LABEL_45;
            }
          }

          else
          {
            if (v13 != 10)
            {
              v25 = [v1 reminder];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 recordID];
              }

              else
              {
                v27 = 0;
              }

              v31 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v27];

              CKRecord.subscript.setter();
              goto LABEL_47;
            }

            v15 = [v1 weeksOfTheYear];
            if (!v15)
            {
              v36 = 0;
              v34 = 0u;
              v35 = 0u;
              goto LABEL_45;
            }
          }

LABEL_32:
          v21 = v15;
          v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          *(&v35 + 1) = &type metadata for Data;
          v36 = &protocol witness table for Data;
          *&v34 = v22;
          *(&v34 + 1) = v24;
          goto LABEL_45;
        }

        if (v13 == 6)
        {
          v15 = [v1 daysOfTheWeek];
          if (!v15)
          {
            v36 = 0;
            v34 = 0u;
            v35 = 0u;
            goto LABEL_45;
          }

          goto LABEL_32;
        }

        if (v13 == 7)
        {
          v15 = [v1 daysOfTheYear];
          if (v15)
          {
            goto LABEL_32;
          }

          v36 = 0;
          v34 = 0u;
          v35 = 0u;
          goto LABEL_45;
        }

        v20 = [v1 firstDayOfTheWeek];
        *(&v35 + 1) = &type metadata for Int16;
        v36 = &protocol witness table for Int16;
        LOWORD(v34) = v20;
        sub_10018E134();
      }

      else
      {
        if (*(&off_1008E33E8 + v12 + 32) <= 2u)
        {
          if (*(&off_1008E33E8 + v12 + 32))
          {
            if (v13 == 1)
            {
              v14 = [v1 frequency];
            }

            else
            {
              v14 = [v1 interval];
            }

            *(&v35 + 1) = &type metadata for Int16;
            v36 = &protocol witness table for Int16;
            LOWORD(v34) = v14;
            sub_10018E134();
            goto LABEL_46;
          }

          v16 = [v1 endDate];
          if (v16)
          {
            v17 = v16;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v18 = 0;
          }

          else
          {
            v18 = 1;
          }

          v28 = type metadata accessor for Date();
          v29 = *(v28 - 8);
          (*(v29 + 56))(v5, v18, 1, v28);
          sub_10012F7FC(v5, v9);
          if ((*(v29 + 48))(v9, 1, v28) == 1)
          {
            sub_1001AAD5C(v9);
            v34 = 0u;
            v35 = 0u;
            v36 = 0;
          }

          else
          {
            *(&v35 + 1) = v28;
            v36 = &protocol witness table for Date;
            v30 = sub_1000103CC(&v34);
            (*(v29 + 32))(v30, v9, v28);
          }

          goto LABEL_45;
        }

        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v15 = [v1 setPositions];
            if (v15)
            {
              goto LABEL_32;
            }

            v36 = 0;
            v34 = 0u;
            v35 = 0u;
          }

          else
          {
            v15 = [v1 daysOfTheMonth];
            if (v15)
            {
              goto LABEL_32;
            }

            v36 = 0;
            v34 = 0u;
            v35 = 0u;
          }

LABEL_45:
          sub_10018E134();
          goto LABEL_46;
        }

        v19 = [v1 occurrenceCount];
        v36 = &protocol witness table for Int64;
        *(&v35 + 1) = &type metadata for Int64;
        *&v34 = v19;
        sub_10018E134();
      }

LABEL_46:
      CKRecordKeyValueSetting.subscript.setter();
LABEL_47:
      ++v12;
    }

    while (v12 != 12);
  }

  v32 = v11;
  result.value.super.isa = v32;
  result.is_nil = v10;
  return result;
}

Swift::Void __swiftcall REMCDRecurrenceRule.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDRecurrenceRule.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100946980);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v45 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v47);

  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v16 = [v4 reminder];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 remObjectID];
  if (!v18)
  {

LABEL_12:
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

LABEL_13:
  v23 = sub_10000668C(v7, v22, &v47);

  *(v8 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for recurrence rule {recurrenceRuleID: %{public}s, reminderID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 reminder];
  if (v24)
  {
    v46 = v24;
    if ([v24 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
    {
      v25 = v4;
      v26 = v46;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v29 = 136446466;
        v30 = &selRef_persistentStoreForIdentifier_;
        v31 = [v25 remObjectID];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 description];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          v30 = &selRef_persistentStoreForIdentifier_;
        }

        else
        {
          v36 = 0xE300000000000000;
          v34 = 7104878;
        }

        v37 = sub_10000668C(v34, v36, &v47);

        *(v29 + 4) = v37;
        *(v29 + 12) = 2082;
        v38 = [v26 v30[106]];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 description];

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v43 = 0xE300000000000000;
          v41 = 7104878;
        }

        v44 = sub_10000668C(v41, v43, &v47);

        *(v29 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v27, v28, "Reminder is marked for deletion but recurrence rule is not {recurrenceRuleID: %{public}s, reminderID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

uint64_t _sSo19REMCDRecurrenceRuleC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo19REMCDRecurrenceRuleC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100946980);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_10042C5D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v23 = a4;
  v5 = v4;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = (*(a1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a1 + 56) + 8 * v16);
      v22[0] = *v17;
      v22[1] = v18;
      v22[2] = v19;

      v20 = v19;
      sub_10042D348(v22, a2, a3, v23);
      if (v5)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
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
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10042C740(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 hashtags];
  if (v3)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10026E1F4();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_10042C7CC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_10026E1F4();
    v3.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setHashtags:?];
}

uint64_t sub_10042C868@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260B5C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10042C970@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260B98(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return result;
}

size_t sub_10042CA3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100260BC0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(sub_1000F5104(&qword_100944128, &qword_1007A4890) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100431CA8(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10042CB80(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_10042CC18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009469A0);
  v1 = sub_100006654(v0, qword_1009469A0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10042CCE0()
{
  sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v0 = NSExpression.init<A, B>(forKeyPath:)();
  v1 = [v0 keyPath];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithKey:v3 ascending:1 selector:"localizedStandardCompare:"];

  qword_100974E68 = v4;
}

void sub_10042CDC0()
{
  sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  swift_getKeyPath();
  v0 = NSExpression.init<A, B>(forKeyPath:)();
  v1 = [v0 keyPath];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = objc_allocWithZone(NSSortDescriptor);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithKey:v3 ascending:0];

  qword_100974E70 = v4;
}

uint64_t sub_10042CE94@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recencyDate];
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

  return v7(a2, v5, 1, v6);
}

void sub_10042CF38(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRecencyDate:isa];
}

unint64_t sub_10042D064(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_10042D174(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_10042D264(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    v8 = objc_opt_self();
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = String._bridgeToObjectiveC()();
    [v8 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v10];

    swift_willThrow();
  }
}

void sub_10042D348(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  if (*(*a2 + 16) && (v6 = *a1, v7 = a1[1], v8 = sub_100005F4C(*a1, v7), (v9 & 1) != 0))
  {
    v10 = *(*(v4 + 56) + 8 * v8);
    v11 = [v10 name];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = *a4;
      if (*(*a4 + 16) && (v17 = sub_100005F4C(v6, v7), (v18 & 1) != 0))
      {
        v19 = *(*(v16 + 56) + 8 * v17);
      }

      else
      {
        v20 = 0;
      }

      sub_10031DACC(v20, v13, v15);
    }

    else
    {
      if (qword_100936108 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100006654(v24, qword_1009469A0);
      v10 = v10;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        v29 = [v10 objectID];
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Skipping HashtagLabel with nil name in reminderIDsByHashtagLabelNames(from:) {mid: %{public}@}", v27, 0xCu);
        sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
      }

      else
      {

        v10 = v25;
      }
    }
  }

  else
  {
    if (qword_100936108 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_1009469A0);
    v10 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v10, v22, "Skipping nil HashtagLabel in reminderIDsByHashtagLabelNames(from:)", v23, 2u);
    }
  }
}

uint64_t sub_10042D618()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000F5104(&qword_100940958, &qword_1007A0260);
    sub_1000F5104(&qword_100946A10, &qword_1007A9320);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    sub_1000F5104(&qword_100946A18, &qword_1007A9328);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042D85C(unint64_t a1)
{
  v129 = type metadata accessor for UUID();
  v2 = *(v129 - 8);
  v3 = v2[8];
  __chkstk_darwin(v129);
  v128 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v106 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = v11[8].isa;
  __chkstk_darwin(v10);
  v110 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v106 - v15;
  __chkstk_darwin(v16);
  v120 = &v106 - v17;
  v18 = _swiftEmptyArrayStorage;
  v139[0] = sub_10038E5F0(_swiftEmptyArrayStorage);
  v19 = sub_10038E5F0(_swiftEmptyArrayStorage);
  v138 = v19;
  v130 = sub_10038E604(_swiftEmptyArrayStorage);
  v137 = v130;
  if (a1 >> 62)
  {
    goto LABEL_86;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
    while (2)
    {
      v22 = 0;
      v125 = a1 & 0xC000000000000001;
      v116 = a1 & 0xFFFFFFFFFFFFFF8;
      v115 = a1 + 32;
      v112 = v11 + 4;
      v119 = v11 + 7;
      v107 = &v11[6];
      v109 = v11 + 1;
      v127 = v2 + 1;
      *&v20 = 138543362;
      v108 = v20;
      v121 = v18 >> 62;
      v117 = v10;
      v124 = v21;
      v118 = a1;
      while (1)
      {
        if (v125)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v116 + 16))
          {
            goto LABEL_84;
          }

          v26 = *(v115 + 8 * v22);
        }

        v2 = v26;
        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          goto LABEL_82;
        }

        v28 = [v26 canonicalName];
        if (v28)
        {
          break;
        }

        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_100006654(v52, qword_1009469A0);
        v2 = v2;
        v11 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v11, v18))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = v108;
          v55 = [v2 objectID];
          *(v53 + 4) = v55;
          *v54 = v55;
          _os_log_impl(&_mh_execute_header, v11, v18, "Skipping HashtagLabel with nil canonicalName in reminderIDsByHashtagLabelNames(from:) {mid: %{public}@}", v53, 0xCu);
          sub_1000050A4(v54, &unk_100938E70, &unk_100797230);

          v21 = v124;

LABEL_76:
          goto LABEL_5;
        }

LABEL_5:
        if (v22 == v21)
        {
          goto LABEL_87;
        }
      }

      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v130;
      v34 = *(v130 + 16);
      v132 = v2;
      v133 = v32;
      v131 = v30;
      if (v34)
      {
        v35 = sub_100005F4C(v30, v32);
        if (v36)
        {
          v37 = *(*(v33 + 56) + 8 * v35);
          v38 = [v37 firstOccurrenceCreationDate];
          if (v38)
          {
            v39 = v114;
            v40 = v38;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v41 = v112->isa;
            v42 = v111;
            (v112->isa)(v111, v39, v10);
            v43 = v119->isa;
            (v119->isa)(v42, 0, 1, v10);
            v41(v120, v42, v10);
          }

          else
          {
            v43 = v119->isa;
            v59 = v111;
            (v119->isa)(v111, 1, 1, v10);
            static Date.distantFuture.getter();
            if ((*v107)(v59, 1, v10) != 1)
            {
              sub_1000050A4(v59, &unk_100938850, qword_100795AE0);
            }
          }

          v60 = [v132 firstOccurrenceCreationDate];
          if (v60)
          {
            v61 = v114;
            v62 = v60;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = v112->isa;
            v64 = v113;
            (v112->isa)(v113, v61, v10);
            v43(v64, 0, 1, v10);
            v65 = v110;
            v63(v110, v64, v10);
          }

          else
          {
            v66 = v113;
            v43(v113, 1, 1, v10);
            v65 = v110;
            static Date.distantFuture.getter();
            if ((*v107)(v66, 1, v10) != 1)
            {
              sub_1000050A4(v113, &unk_100938850, qword_100795AE0);
            }
          }

          v67 = v120;
          v68 = static Date.> infix(_:_:)();
          v69 = v65;
          v70 = v109->isa;
          (v109->isa)(v69, v10);
          v70(v67, v10);
          v2 = v132;
          if (v68)
          {
            v71 = v132;
          }

          else
          {
            v71 = v37;
          }

          v72 = v71;
          v73 = v133;

          v74 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v74;
          v11 = v136;
          sub_1002C72A0(v72, v131, v73, isUniquelyReferenced_nonNull_native);

          v58 = v136[0];
          v137 = v136[0];
          goto LABEL_41;
        }
      }

      v18 = v2;
      v11 = v137;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v136[0] = v11;
      v45 = sub_100005F4C(v30, v32);
      v47 = v11[2].isa;
      v48 = (v46 & 1) == 0;
      v27 = __OFADD__(v47, v48);
      v49 = v47 + v48;
      if (v27)
      {
        goto LABEL_83;
      }

      v50 = v46;
      if (v11[3].isa >= v49)
      {
        if ((v44 & 1) == 0)
        {
          v2 = v45;
          sub_100373650();
          v45 = v2;
          v11 = v136[0];
          if (v50)
          {
            goto LABEL_26;
          }

          break;
        }
      }

      else
      {
        sub_10036A8DC(v49, v44);
        v45 = sub_100005F4C(v30, v133);
        if ((v50 & 1) != (v51 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v11 = v136[0];
      if (v50)
      {
LABEL_26:
        v56 = v11[7].isa;
        v57 = *(v56 + v45);
        *(v56 + v45) = v18;

        v137 = v11;
        v2 = v132;
        v58 = v11;
LABEL_41:
        v80 = *(v19 + 16);
        v130 = v58;
        if (v80 && (v11 = v19, v81 = sub_100005F4C(v131, v133), (v82 & 1) != 0))
        {
          v18 = *(*(v19 + 56) + 8 * v81);
          v136[0] = v18;
        }

        else
        {
          if (v121)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              sub_100391990(_swiftEmptyArrayStorage);
              v18 = v102;
            }

            else
            {
              v18 = _swiftEmptySetSingleton;
            }

            v2 = v132;
          }

          else
          {
            v18 = _swiftEmptySetSingleton;
          }

          v136[0] = v18;
        }

        v83 = [v2 hashtags];
        if (v83)
        {
          v84 = v83;
          v123 = v19;
          v85 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          v11 = sub_10026E1F4();
          v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v126 = v85;
          if ((v19 & 0xC000000000000001) != 0)
          {
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v19 = v139[1];
            a1 = v139[2];
            v86 = v139[3];
            v2 = v139[4];
            v87 = v139[5];
          }

          else
          {
            v2 = 0;
            v88 = -1 << *(v19 + 32);
            a1 = v19 + 56;
            v86 = ~v88;
            v89 = -v88;
            if (v89 < 64)
            {
              v90 = ~(-1 << v89);
            }

            else
            {
              v90 = -1;
            }

            v87 = v90 & *(v19 + 56);
          }

          v122 = v86;
          v10 = (v86 + 64) >> 6;
LABEL_58:
          if (v19 < 0)
          {
            v11 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
            v95 = __CocoaSet.Iterator.next()();
            if (!v95 || (v134 = v95, swift_dynamicCast(), v94 = v135, v93 = v2, v18 = v87, !v135))
            {
LABEL_70:
              sub_10001B860();
              v18 = v136[0];
              a1 = v118;
              v10 = v117;
              v19 = v123;
              v2 = v132;
              goto LABEL_71;
            }
          }

          else
          {
            v91 = v2;
            v92 = v87;
            v93 = v2;
            if (!v87)
            {
              while (1)
              {
                v93 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
                  break;
                }

                if (v93 >= v10)
                {
                  goto LABEL_70;
                }

                v92 = *(a1 + 8 * v93);
                v91 = (v91 + 1);
                if (v92)
                {
                  goto LABEL_63;
                }
              }

              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              v21 = _CocoaArrayWrapper.endIndex.getter();
              if (!v21)
              {
                goto LABEL_87;
              }

              continue;
            }

LABEL_63:
            v18 = (v92 - 1) & v92;
            v94 = *(*(v19 + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v92)))));
            if (!v94)
            {
              goto LABEL_70;
            }
          }

          v96 = [v94 reminderIdentifier];
          if (v96)
          {
            v97 = v128;
            v11 = v96;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            if (([v94 isConcealed] & 1) == 0)
            {
              sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v99 = UUID._bridgeToObjectiveC()().super.isa;
              v100 = [ObjCClassFromMetadata objectIDWithUUID:v99];

              v11 = v136;
              sub_100378D70(&v135, v100);

              (*v127)(v97, v129);
              goto LABEL_57;
            }

            (*v127)(v97, v129);
          }

LABEL_57:
          v2 = v93;
          v87 = v18;
          goto LABEL_58;
        }

LABEL_71:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v101 = __CocoaSet.count.getter();
        }

        else
        {
          v101 = *(v18 + 16);
        }

        v21 = v124;
        if (!v101)
        {

          goto LABEL_76;
        }

        v23 = v138;
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v23;
        v11 = &v135;
        v25 = v18;
        v18 = v133;
        sub_1002C7600(v25, v131, v133, v24);

        v19 = v135;
        v138 = v135;
        goto LABEL_5;
      }

      break;
    }

    v11[(v45 >> 6) + 8].isa = (v11[(v45 >> 6) + 8].isa | (1 << v45));
    v76 = (v11[6].isa + 16 * v45);
    v77 = v133;
    *v76 = v30;
    v76[1] = v77;
    *(v11[7].isa + v45) = v18;
    v78 = v11[2].isa;
    v27 = __OFADD__(v78, 1);
    v79 = (v78 + 1);
    if (v27)
    {
      goto LABEL_85;
    }

    v58 = v11;
    v11[2].isa = v79;
    v137 = v11;
    v2 = v132;
    goto LABEL_41;
  }

LABEL_87:

  sub_10042C5D8(v103, &v137, v139, &v138);

  v104 = v139[0];

  return v104;
}

uint64_t sub_10042E5D4(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = sub_10038E5F0(_swiftEmptyArrayStorage);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_59:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

    return v2;
  }

  v4 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v2;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v58 = isUniquelyReferenced_nonNull_native + 32;
    *&v3 = 138543362;
    v57 = v3;
    v61 = isUniquelyReferenced_nonNull_native;
    v59 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v60 = v4;
    while (1)
    {
      if (v6)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v58 + 8 * v5);
      }

      v10 = v9;
      v11 = [v9 canonicalName];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (*(v2 + 16) && (v16 = sub_100005F4C(v13, v15), (v17 & 1) != 0))
        {
          v68 = *(*(v2 + 56) + 8 * v16);
        }

        else
        {
          if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
          {
            sub_100391990(_swiftEmptyArrayStorage);
          }

          else
          {
            v18 = _swiftEmptySetSingleton;
          }

          v68 = v18;
        }

        v19 = [v10 hashtags];
        v65 = v13;
        v66 = v15;
        if (v19)
        {
          v20 = v19;
          v62 = v10;
          v63 = v2;
          sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
          sub_10026E1F4();
          v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
          if ((v21 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            Set.Iterator.init(_cocoa:)();
            v22 = v69;
            v23 = v70;
            v24 = v71;
            v2 = v72;
            v25 = v73;
          }

          else
          {
            v36 = -1 << *(v21 + 32);
            v23 = v21 + 56;
            v24 = ~v36;
            v37 = -v36;
            if (v37 < 64)
            {
              v38 = ~(-1 << v37);
            }

            else
            {
              v38 = -1;
            }

            v25 = v38 & *(v21 + 56);

            v2 = 0;
            v22 = v21;
          }

          v64 = v5;
          v39 = (v24 + 64) >> 6;
LABEL_31:
          v40 = v2;
          v41 = v25;
          while (1)
          {
            if (v22 < 0)
            {
              if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v42 = v67, v2 = v40, v25 = v41, !v67))
              {
LABEL_46:
                sub_10001B860();

                v4 = v60;
                v35 = v61;
                v2 = v63;
                v5 = v64;
                v6 = v59;
                v10 = v62;
                goto LABEL_47;
              }
            }

            else
            {
              v44 = v40;
              v45 = v41;
              v2 = v40;
              if (!v41)
              {
                while (1)
                {
                  v2 = v44 + 1;
                  if (__OFADD__(v44, 1))
                  {
                    break;
                  }

                  if (v2 >= v39)
                  {
                    goto LABEL_46;
                  }

                  v45 = *(v23 + 8 * v2);
                  ++v44;
                  if (v45)
                  {
                    goto LABEL_32;
                  }
                }

                __break(1u);
                goto LABEL_58;
              }

LABEL_32:
              v25 = (v45 - 1) & v45;
              v42 = *(*(v22 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v45)))));
              if (!v42)
              {
                goto LABEL_46;
              }
            }

            v43 = [v42 remObjectID];

            v40 = v2;
            v41 = v25;
            if (v43)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v46 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
              goto LABEL_31;
            }
          }
        }

        v35 = isUniquelyReferenced_nonNull_native;
LABEL_47:
        sub_100392144(_swiftEmptyArrayStorage);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = sub_100005F4C(v65, v66);
        v49 = *(v2 + 16);
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v53 = v48;
        if (*(v2 + 24) >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v55 = v47;
            sub_100373988();
            v47 = v55;
          }
        }

        else
        {
          sub_10036AEBC(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_100005F4C(v65, v66);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_62;
          }
        }

        isUniquelyReferenced_nonNull_native = v35;
        if (v53)
        {
          v7 = *(v2 + 56);
          v8 = *(v7 + 8 * v47);
          *(v7 + 8 * v47) = v68;
        }

        else
        {
          sub_1002CB9B4(v47, v65, v66, v68, v2);
        }
      }

      else
      {
        if (qword_100936108 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100006654(v26, qword_1009469A0);
        v27 = v10;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = isUniquelyReferenced_nonNull_native;
          v31 = swift_slowAlloc();
          v32 = v2;
          v33 = swift_slowAlloc();
          *v31 = v57;
          v34 = [v27 objectID];
          *(v31 + 4) = v34;
          *v33 = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "Skipping HashtagLabel with nil canonicalName in hashtagIDsByCanonicalNames(from:) {mid: %{public}@}", v31, 0xCu);
          sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
          v2 = v32;

          isUniquelyReferenced_nonNull_native = v30;
        }

        else
        {
        }
      }

      if (++v5 == v4)
      {
        return v2;
      }
    }
  }

  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10042EC48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v41 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v8 = _swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(inited + 32);
  }

  v10 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v11)
  {
LABEL_20:
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v35._object = 0x80000001007EC120;
    v35._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v35);
    sub_1000F5104(&unk_1009440D0, qword_10079ABB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v12 = v10;
  v13 = v11;
  v40 = &type metadata for String;

  *&v39 = v12;
  *(&v39 + 1) = v13;
  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];
  if (v15 >= v14 >> 1)
  {
    sub_100010D04((v14 > 1), v15 + 1, 1);
    v8 = v41;
  }

  v8[2] = v15 + 1;
  sub_100005EE0(&v39, &v8[4 * v15 + 4]);
  swift_setDeallocating();
  v16 = *(inited + 16);
  swift_arrayDestroy();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1007953F0;
  *(v17 + 32) = swift_getKeyPath();
  v41 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v18 = v41;
  if ((v17 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v17 + 32);

LABEL_12:
  v38 = a5;
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v20;
  v23 = v21;

  v25 = v18[2];
  v24 = v18[3];
  if (v25 >= v24 >> 1)
  {
    sub_100026EF4((v24 > 1), v25 + 1, 1);
    v18 = v41;
  }

  v18[2] = v25 + 1;
  v26 = &v18[2 * v25];
  v26[4] = v22;
  v26[5] = v23;
  swift_setDeallocating();
  v27 = *(v17 + 16);
  swift_arrayDestroy();
  v28 = sub_100034664(a1, a2);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v29 = [objc_allocWithZone(NSFetchRequest) init];
  v30 = [swift_getObjCClassFromMetadata() entity];
  [v29 setEntity:v30];

  [v29 setAffectedStores:0];
  [v29 setPredicate:v28];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v29 setPropertiesToFetch:isa];

  v32 = Array._bridgeToObjectiveC()().super.isa;
  [v29 setRelationshipKeyPathsForPrefetching:v32];

  v33 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v5)
  {
    v29 = v38(v33);
  }

  return v29;
}

uint64_t sub_10042F0DC(char a1)
{
  sub_10003450C(&off_1008DD458);
  sub_100034610(&unk_1008DD478);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:0];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setPropertiesToFetch:isa];

  v5 = Array._bridgeToObjectiveC()().super.isa;
  [v2 setRelationshipKeyPathsForPrefetching:v5];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  if ((a1 & 1) == 0)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007953F0;
    v8 = (v11 + 32);
    if (qword_100936110 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100796900;
  if (qword_100936118 != -1)
  {
    swift_once();
  }

  v7 = qword_100974E70;
  *(v6 + 32) = qword_100974E70;
  v8 = (v6 + 40);
  v9 = qword_100936110;
  v10 = v7;
  if (v9 != -1)
  {
LABEL_5:
    swift_once();
  }

LABEL_7:
  v12 = qword_100974E68;
  *v8 = qword_100974E68;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v13 = v12;
  v14 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setSortDescriptors:v14];

  v15 = NSManagedObjectContext.fetch<A>(_:)();

  return v15;
}

void *sub_10042F390(uint64_t a1, char a2)
{
  v3 = sub_100034664(a1, a2);
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  sub_10003450C(&off_1008E3478);
  sub_100034610(&unk_1008E3498);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToFetch:isa];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    v8 = sub_100034C08(v7);

    v3 = *(v8 + 16);
  }

  return v3;
}

uint64_t sub_10042F520()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    sub_1000F5104(&qword_100946A28, &qword_1007A9338);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_1000F5104(&qword_100946A30, &qword_1007A9340);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042F71C()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1000F5104(&qword_100946A38, &qword_1007A9348);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_1000F5104(&qword_100946A40, &qword_1007A9350);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042F918()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    sub_1000F5104(&unk_10094F1B0, &qword_1007A4840);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_1000F5104(&qword_1009469F8, &qword_1007A9308);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FB38()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    sub_1000F5104(&qword_100946A50, &qword_1007A9360);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FD30()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    sub_1000F5104(&qword_1009469B8, &qword_1007A9258);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000F5104(&qword_1009469C0, qword_1007A9260);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_10042FF1C()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
    sub_1000F5104(&qword_100946A58, &unk_1007A9368);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430118()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDListSection();
    sub_1000F5104(&qword_100946A80, &qword_1007A93F8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_100939BD0, REMListSectionStorage_ptr);
    sub_1000F5104(&qword_100946A88, &unk_1007A9400);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430304()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    sub_1000F5104(&qword_1009469E8, &qword_1007A92F8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
    sub_1000F5104(&qword_1009469F0, &qword_1007A9300);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430500()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_1000F5104(&qword_1009469D8, &qword_1007A92E8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
    sub_1000F5104(&qword_1009469E0, &qword_1007A92F0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004306FC()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDSavedReminder();
    sub_1000F5104(&qword_1009446C8, &qword_1007A5230);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_1000F5104(&qword_100946A40, &qword_1007A9350);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004308E8()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDTemplate();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_1000F5104(&qword_1009469F8, &qword_1007A9308);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430AD4()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    sub_1000F5104(&qword_10093E858, qword_10079CB30);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
    sub_1000F5104(&qword_100946A00, &qword_1007A9310);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430CD0()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    sub_1000F5104(&unk_10093BA58, &unk_100799158);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    sub_1000F5104(&qword_100946A08, &qword_1007A9318);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100430ECC()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    sub_1000F5104(&qword_100946998, &qword_1007A9250);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
    sub_1000F5104(&qword_100946A20, &qword_1007A9330);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004310EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 136446722;
    sub_1000060C8(0, a3, a4);
    sub_1000F5104(a5, a6);
    v13 = String.init<A>(describing:)();
    v15 = sub_10000668C(v13, v14, &v23);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = String.init<A>(describing:)();
    v18 = sub_10000668C(v16, v17, &v23);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_10000668C(v19, v20, &v23);

    *(v12 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v12, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004312CC()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDSmartListSection();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_1009405A0, REMSmartListSectionStorage_ptr);
    sub_1000F5104(&qword_100946A78, &qword_1007A93F0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004314B8()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDTemplate();
    sub_1000F5104(&unk_10093F4C0, &qword_10079DF80);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    sub_1000F5104(&qword_100946A60, &qword_1007A93D8);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004316A4()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDTemplateSection();
    sub_1000F5104(&qword_10093A368, &qword_100797540);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &qword_1009429C8, REMTemplateSectionStorage_ptr);
    sub_1000F5104(&qword_100946A68, &qword_1007A93E0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_1004318B4()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    sub_1000F5104(&qword_100938868, &qword_100794FA8);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
    sub_1000F5104(&qword_100940990, &qword_1007A0290);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100431AB0()
{
  swift_errorRetain();
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v2 = 136446722;
    type metadata accessor for REMCDSavedAttachment();
    sub_1000F5104(&qword_100946A48, &qword_1007A9358);
    v3 = String.init<A>(describing:)();
    v5 = sub_10000668C(v3, v4, &v13);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2082;
    sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
    sub_1000F5104(&qword_100946A18, &qword_1007A9328);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000668C(v6, v7, &v13);

    *(v2 + 14) = v8;
    *(v2 + 22) = 2080;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_10000668C(v9, v10, &v13);

    *(v2 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v0, v1, "Error occured when mapping object from %{public}s to %{public}s {error: %s}", v2, 0x20u);
    swift_arrayDestroy();
  }

  return 1;
}

uint64_t sub_100431CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100944128, &qword_1007A4890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100431D18()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946A90);
  v1 = sub_100006654(v0, qword_100946A90);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100431DE0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for OSSignpostID();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OSSignposter();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936120 != -1)
  {
    swift_once();
  }

  v16 = sub_100006654(v7, qword_100946A90);
  (*(v8 + 16))(v11, v16, v7);
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v20, "RDAnalyticsActivity.execute", "", v17, 2u);
  v21 = v25;
  sub_100432108(a2);
  if (v21)
  {
  }

  else
  {
    v22 = static os_signpost_type_t.end.getter();
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v22, v23, "RDAnalyticsActivity.execute", "", v17, 2u);
  }

  (*(v3 + 8))(v6, v27);
  return (*(v12 + 8))(v15, v26);
}

uint64_t sub_100432108(uint64_t a1)
{
  v86 = sub_1000F5104(&qword_100946C30, &qword_1007A2530);
  v2 = *(v86 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v86);
  v84 = &v74 - v4;
  v5 = type metadata accessor for REMAccountSnapshotSummary();
  v92 = *(v5 - 8);
  v6 = *(v92 + 64);
  __chkstk_darwin(v5);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v87 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = &v74 - v13;
  __chkstk_darwin(v14);
  v16 = &v74 - v15;
  v17 = *(a1 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name + 8);
  v88 = *(a1 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name);
  v18 = qword_100936120;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100006654(v19, qword_100946A90);

  v89 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v85 = v2;
  v82 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = v8;
    v26 = v17;
    v27 = swift_slowAlloc();
    v94 = v27;
    *v24 = 136446210;
    *(v24 + 4) = sub_10000668C(v88, v26, &v94);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] start execute()", v24, 0xCu);
    sub_10000607C(v27);
    v17 = v26;
    v8 = v25;
  }

  Date.init()();
  v28 = *(a1 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_storeController);
  v95[0] = 0xD000000000000013;
  v95[1] = 0x80000001007A9510;
  v95[3] = 0;
  v96[0] = 0;
  v95[2] = 0;
  *(v96 + 6) = 0;
  v29 = v93;
  v30 = sub_1003FE534(v95, sub_1004339E0, 0);
  if (v29)
  {

    return (*(v9 + 8))(v16, v8);
  }

  else
  {
    v77 = 0;
    v32 = *(v30 + 16);
    v78 = v9;
    v80 = v8;
    v79 = v16;
    if (v32)
    {
      v75 = v17;
      v33 = v30;
      v34 = type metadata accessor for Analytics();
      v35 = v92 + 16;
      v92 = *(v92 + 16);
      v93 = v34;
      v36 = (*(v35 + 64) + 32) & ~*(v35 + 64);
      v76 = v33;
      v37 = v33 + v36;
      v90 = *(v35 + 56);
      v91 = "RDAnalyticsActivity.execute";
      v39 = v81;
      v38 = v82;
      do
      {
        (v92)(v39, v37, v38);
        v40 = REMAccountSnapshotSummary.nsPayload.getter();
        (*(v35 - 8))(v39, v38);
        sub_1004646CC(v40);

        static Analytics.postEvent(_:payload:duration:)();

        v37 += v90;
        --v32;
      }

      while (v32);

      v8 = v80;
      v16 = v79;
      v9 = v78;
      v17 = v75;
    }

    else
    {
    }

    v41 = v83;
    v92 = *(v9 + 16);
    (v92)(v83, v16, v8);

    v42 = Logger.logObject.getter();
    v43 = v9;
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v44))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v94 = v47;
      *v46 = 136446466;
      *(v46 + 4) = sub_10000668C(v88, v17, &v94);
      *(v46 + 12) = 2050;
      Date.rem_elapsedInMilliseconds.getter();
      v49 = v48;
      v93 = *(v43 + 8);
      v93(v45, v8);
      *(v46 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v42, v44, "[%{public}s] posted CA data, elapsedSeconds: %{public}f ms", v46, 0x16u);
      sub_10000607C(v47);
    }

    else
    {

      v93 = *(v43 + 8);
      v93(v41, v8);
    }

    v50 = v87;

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v79;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v94 = v56;
      *v55 = 136446210;
      v57 = v17;
      *(v55 + 4) = sub_10000668C(v88, v17, &v94);
      _os_log_impl(&_mh_execute_header, v51, v52, "[%{public}s] start posting grocery correction to CA", v55, 0xCu);
      sub_10000607C(v56);
    }

    else
    {
      v57 = v17;
    }

    v59 = v84;
    v58 = v85;
    if (qword_100935E40 != -1)
    {
      swift_once();
    }

    v60 = v86;
    (*(v58 + 104))(v59, enum case for REMCache.ExecutionMode.synchronously<A, B>(_:), v86);
    sub_1002C600C();
    (*(v58 + 8))(v59, v60);
    v61 = v80;
    (v92)(v50, v54, v80);
    v62 = v57;

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v54;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v94 = v67;
      *v66 = 136446466;
      v68 = sub_10000668C(v88, v62, &v94);

      *(v66 + 4) = v68;
      *(v66 + 12) = 2050;
      Date.rem_elapsedInMilliseconds.getter();
      v70 = v69;
      v71 = v50;
      v72 = v93;
      v93(v71, v61);
      *(v66 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v63, v64, "[%{public}s] end execute(), elapsedSeconds: %{public}f ms", v66, 0x16u);
      sub_10000607C(v67);

      return v72(v65, v61);
    }

    else
    {

      v73 = v93;
      v93(v50, v61);
      return v73(v54, v61);
    }
  }
}

id sub_100432AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100432B78()
{
  v1 = *v0;
  if (qword_100936120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100946A90);
  sub_10014D938(0xD000000000000030, 0x80000001007F8560, v3, v1);
}

uint64_t sub_100432C18()
{
  v1 = (*v0 + OBJC_IVAR____TtCC7remindd19RDAnalyticsActivityP33_35FD618111A9B708721C682F761C56BE29RDAnalyticsActivityExecutable_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_100432C58()
{
  _StringGuts.grow(_:)(31);

  v1 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier + 8);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x746973796261622ELL;
  v4._object = 0xEB00000000726574;
  String.append(_:)(v4);
  return 0xD000000000000012;
}

double sub_100432D80()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_100432DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDAnalyticsActivity();
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
    if (qword_100936120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100946A90);
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
      _os_log_impl(&_mh_execute_header, v9, v10, "RDAnalyticsExecutionDateStorage.lastExecutedDate(for:) must work with RDAnalyticsActivity only {executable: %{public}s}", v11, 0xCu);
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

uint64_t sub_100433080(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  sub_10000A87C(a1, v26);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDAnalyticsActivity();
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
    if (qword_100936120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100946A90);
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
      _os_log_impl(&_mh_execute_header, v14, v15, "RDAnalyticsExecutionDateStorage.updateLastExecutedDate(for:) must work with RDAnalyticsActivity only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v25);
    }
  }

  return sub_10000607C(v26);
}

id sub_1004334D0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_executable);
  a1[3] = type metadata accessor for RDAnalyticsActivity.RDAnalyticsActivityExecutable();
  a1[4] = &off_1008F16E0;
  a1[5] = &off_1008F16F0;
  *a1 = v4;

  return v4;
}

uint64_t sub_100433540()
{
  v1 = (v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations);
  v2 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24);
  v3 = *(v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32);
  sub_10000F61C(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1004335CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_babysitter;
  swift_beginAccess();
  return sub_100010364(v1 + v3, a1, &unk_10093D8F0, &unk_10079B600);
}

char *sub_100433634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24);
  v5 = *(*v2 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32);
  sub_10000F61C(&v11[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations], *&v11[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24]);
  v7 = (*(*(v5 + 16) + 8))(v6);
  v13 = a1;
  v14 = &off_1008F1730;
  *&v12 = v11;
  v8 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v9 = swift_allocObject();
  sub_100054B6C(&v12, v9 + 16);
  *(v9 + 56) = v7;
  a2[3] = v8;
  a2[4] = &off_1008F5B28;
  *a2 = v9;

  return v11;
}

uint64_t sub_100433718()
{
  v1 = (*v0 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_100433784@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 analyticsActivityLastExecutionDate];
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

void sub_100433828(uint64_t a1)
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
  [v3 setAnalyticsActivityLastExecutionDate:?];
}

id sub_10043393C()
{
  v1 = [*v0 postAnalyticsRateReduceFactor];

  return v1;
}

void sub_1004339E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = objc_autoreleasePoolPush();
  sub_100433A60(a1, &v6, &v7);
  objc_autoreleasePoolPop(v5);
  if (!v2)
  {
    *a2 = v7;
  }
}

void sub_100433A60(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1000F5104(&qword_100946C38, &qword_1007A9648);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v37 - v9;
  v11 = type metadata accessor for REMAccountSnapshotSummary();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v37 - v17;
  v19 = sub_10042F390(4, 2);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v47 = v10;
    v48 = v19;
    v39 = v18;
    v40 = v12;
    v46 = v16;
    v41 = v11;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    [v20 setAffectedStores:0];
    [v20 setPredicate:0];
    NSManagedObjectContext.fetch<A>(_:)();

    v50 = sub_100018CD8(v22, sub_100018D7C, sub_100010EF0);
    sub_100434DAC(&v50);

    v23 = v50;
    if (v50 < 0 || (v50 & 0x4000000000000000) != 0)
    {
      goto LABEL_23;
    }

    v24 = *(v50 + 16);
    for (i = a3; v24; i = a3)
    {
      v37[1] = a2;
      v25 = 0;
      v44 = a1;
      v45 = v23 & 0xC000000000000001;
      a2 = v41;
      v42 = (v40 + 32);
      v43 = (v40 + 48);
      v49 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v45)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_22;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        a3 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v28 = objc_autoreleasePoolPush();
        a1 = v47;
        sub_10043406C(v27, v44, v48, &v50, v47);
        objc_autoreleasePoolPop(v28);

        v29 = (*v43)(a1, 1, a2) == 1;
        v30 = a1;
        if (v29)
        {
          sub_1000050A4(a1, &qword_100946C38, &qword_1007A9648);
        }

        else
        {
          a1 = v42;
          v31 = *v42;
          v32 = v39;
          (*v42)(v39, v30, a2);
          v31(v46, v32, a2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1003682E8(0, v49[2] + 1, 1, v49);
          }

          v34 = v49[2];
          v33 = v49[3];
          if (v34 >= v33 >> 1)
          {
            v49 = sub_1003682E8(v33 > 1, v34 + 1, 1, v49);
          }

          v35 = v49;
          v49[2] = v34 + 1;
          v36 = v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34;
          a2 = v41;
          v31(v36, v46, v41);
        }

        ++v25;
        if (a3 == v24)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_25:

    *i = v49;
  }
}

uint64_t sub_100433F40()
{
  v1 = v0;
  [v0 type];
  v10 = dispatch thunk of CustomStringConvertible.description.getter();

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = [v0 ckIdentifier];
  if (!v3)
  {
    v4 = [v1 objectID];
    v3 = [v4 description];
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  return v10;
}

void sub_10043406C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a3;
  v99 = a2;
  v89 = _s10PredicatesOMa_3();
  v9 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v11 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = _s10PredicatesOMa(0);
  v12 = *(*(v97 - 8) + 64);
  v13 = __chkstk_darwin(v97);
  v90 = (v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v91 = (v85 - v16);
  v17 = __chkstk_darwin(v15);
  v94 = (v85 - v18);
  v19 = __chkstk_darwin(v17);
  v95 = (v85 - v20);
  v21 = __chkstk_darwin(v19);
  v96 = (v85 - v22);
  __chkstk_darwin(v21);
  v24 = v85 - v23;
  v25 = _s10PredicatesOMa_1();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v92 = (v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __chkstk_darwin(v27);
  v93 = (v85 - v30);
  v31 = __chkstk_darwin(v29);
  v33 = (v85 - v32);
  __chkstk_darwin(v31);
  v35 = (v85 - v34);
  v100 = a1;
  v36 = [a1 remObjectID];
  if (v36)
  {
    v87 = v11;
    v98 = a4;
    *v35 = v36;
    v37 = v36;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
    v39 = sub_10001F6F4();
    sub_1000253D4(v35, _s10PredicatesOMa_1);
    v40 = sub_100434B9C(v39, v99, v100, &unk_100938880, off_1008D41A8);
    if (v5)
    {

      *v98 = v5;
    }

    else
    {
      v85[3] = v40;
      v86 = v37;

      *v33 = v38;
      swift_storeEnumTagMultiPayload();
      v41 = v38;
      v42 = sub_10001F6F4();
      sub_1000253D4(v33, _s10PredicatesOMa_1);
      v85[2] = sub_100434B9C(v42, v99, v100, &unk_100938880, off_1008D41A8);

      *v24 = v41;
      v24[8] = 2;
      swift_storeEnumTagMultiPayload();
      v43 = v41;
      v44 = sub_100043AA8();
      sub_1000253D4(v24, _s10PredicatesOMa);
      v45 = sub_100434B9C(v44, v99, v100, &qword_100939EE0, off_1008D41D0);

      v46 = v96;
      *v96 = v43;
      *(v46 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v47 = v43;
      v48 = sub_100043AA8();
      sub_1000253D4(v46, _s10PredicatesOMa);
      v96 = sub_100434B9C(v48, v99, v100, &qword_100939EE0, off_1008D41D0);

      v49 = v95;
      *v95 = v47;
      swift_storeEnumTagMultiPayload();
      v50 = v47;
      v51 = sub_100043AA8();
      sub_1000253D4(v49, _s10PredicatesOMa);
      v95 = sub_100434B9C(v51, v99, v100, &qword_100939EE0, off_1008D41D0);

      v52 = v94;
      *v94 = v50;
      swift_storeEnumTagMultiPayload();
      v53 = v50;
      v54 = sub_100043AA8();
      sub_1000253D4(v52, _s10PredicatesOMa);
      v94 = sub_100434B9C(v54, v99, v100, &qword_100939EE0, off_1008D41D0);

      v55 = v93;
      *v93 = v53;
      swift_storeEnumTagMultiPayload();
      v56 = v53;
      v57 = sub_10001F6F4();
      sub_1000253D4(v55, _s10PredicatesOMa_1);
      v93 = sub_100434B9C(v57, v99, v100, &unk_100938880, off_1008D41A8);

      v58 = v92;
      *v92 = v56;
      swift_storeEnumTagMultiPayload();
      v59 = v56;
      v60 = sub_10001F6F4();
      sub_1000253D4(v58, _s10PredicatesOMa_1);
      v92 = sub_100434B9C(v60, v99, v100, &unk_100938880, off_1008D41A8);

      v61 = v91;
      *v91 = v59;
      swift_storeEnumTagMultiPayload();
      v62 = v59;
      v63 = sub_100043AA8();
      sub_1000253D4(v61, _s10PredicatesOMa);
      v64 = sub_100434B9C(v63, v99, v100, &qword_100939EE0, off_1008D41D0);
      v85[1] = v45;
      v91 = v64;

      v65 = v90;
      *v90 = v62;
      swift_storeEnumTagMultiPayload();
      v66 = v62;
      v67 = sub_100043AA8();
      sub_1000253D4(v65, _s10PredicatesOMa);
      sub_100434B9C(v67, v99, v100, &qword_100939EE0, off_1008D41D0);
      v97 = v38;

      v68 = v87;
      *v87 = v66;
      swift_storeEnumTagMultiPayload();
      v69 = v66;
      v70 = sub_10002DDAC();
      sub_1000253D4(v68, _s10PredicatesOMa_3);
      sub_100434B9C(v70, v99, v100, &unk_10093F770, off_1008D41E8);

      v71 = v69;
      v72 = sub_1003480AC(v86, 1u);
      sub_100434B9C(v72, v99, v100, &qword_10093CFE0, off_1008D4190);

      v74 = sub_1003480AC(v86, 2u);
      sub_100434B9C(v74, v99, v100, &qword_10093CFE0, off_1008D4190);

      v75 = v71;
      v76 = sub_100224CC4(v75);

      sub_100434B9C(v76, v99, v100, &unk_100939E30, off_1008D4160);
      v77 = v75;
      v78 = sub_10029BD74(v86, 0x61u);

      v90 = sub_100434B9C(v78, v99, v100, &unk_100940330, off_1008D4148);
      v79 = v77;
      v80 = sub_10029BD74(v86, 0x60u);

      v89 = sub_100434B9C(v80, v99, v100, &unk_100940330, off_1008D4148);
      v81 = v79;
      v82 = sub_10029B198(v86, 0x80u);
      v87 = sub_100434B9C(v82, v99, v100, &qword_100940360, off_1008D4138);

      v83 = sub_10029D52C(v86, 0x80u);
      v99 = sub_100434B9C(v83, v99, v100, &qword_100940350, off_1008D4130);

      [v100 type];
      REMAccountSnapshotSummary.init(accountID:accountType:tagLabelCount:totalListCount:totalGroceryListCount:totalReminderCount:softDeletedReminderCount:incompleteReminderCount:incompleteGroceryReminderCount:sharedListsCount:groupCount:parentReminderCount:flaggedReminderCount:customSmartListCount:inlineTagCount:structuredTagCount:attachmentCount:nonDeletedAlarmCount:softDeletedAlarmCount:incompleteLocationAlarmsCount:incompleteTimeAlarmsCount:)();
      v84 = type metadata accessor for REMAccountSnapshotSummary();
      (*(*(v84 - 8) + 56))(a5, 0, 1, v84);
    }
  }

  else
  {
    v73 = type metadata accessor for REMAccountSnapshotSummary();
    (*(*(v73 - 8) + 56))(a5, 1, 1, v73);
  }
}

uint64_t sub_100434B9C(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a3;
  v10 = a3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_100270528();
  sub_1000254F4();
  v11 = Sequence.compactMapToSet<A>(_:)();
  sub_10002595C(v11);

  sub_1000060C8(0, a4, a5);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:a1];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v12 setAffectedStores:isa];

  v15 = NSManagedObjectContext.count<A>(for:)();

  if (v15 < 0)
  {
    return -1;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_100434DAC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10005FF58(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100434E28(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100434E28(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100435290(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100434F3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100434F3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v35 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v7 = &selRef_accountStatusWithCompletionHandler_;
LABEL_6:
    v33 = v4;
    v34 = a3;
    v8 = *(v35 + 8 * a3);
    v32 = v5;
    while (1)
    {
      v36 = v5;
      v9 = *v4;
      v10 = v8;
      v37 = v9;
      [v10 v6[269]];
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v11;

      v12._countAndFlagsBits = 95;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);

      v13 = [v10 v7[159]];
      if (!v13)
      {
        v14 = [v10 objectID];
        v13 = [v14 description];
      }

      v42 = v10;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      String.append(_:)(v18);

      v19 = v38;
      v20 = v40;
      [v37 v6[269]];
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v21;

      v22._countAndFlagsBits = 95;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);

      v23 = [v37 ckIdentifier];
      if (!v23)
      {
        v24 = [v37 objectID];
        v23 = [v24 description];
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      if (v19 == v39 && v20 == v41)
      {

        v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        v7 = &selRef_accountStatusWithCompletionHandler_;
LABEL_5:
        a3 = v34 + 1;
        v4 = v33 + 8;
        v5 = v32 - 1;
        if (v34 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v7 = &selRef_accountStatusWithCompletionHandler_;
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v30 = *v4;
      v8 = *(v4 + 8);
      *v4 = v8;
      *(v4 + 8) = v30;
      v4 -= 8;
      ++v5;
      if (v36 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100435290(char ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v127 = v5;
      v128 = *(v9 + 2);
      if (v128 >= 2)
      {
        while (*v6)
        {
          v5 = *&v9[16 * v128];
          v129 = *&v9[16 * v128 + 24];
          sub_100435E08((*v6 + 8 * v5), (*v6 + 8 * *&v9[16 * v128 + 16]), (*v6 + 8 * v129), v10);
          if (v127)
          {
            goto LABEL_117;
          }

          if (v129 < v5)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1004361F4(v9);
          }

          if (v128 - 2 >= *(v9 + 2))
          {
            goto LABEL_134;
          }

          v130 = &v9[16 * v128];
          *v130 = v5;
          *(v130 + 1) = v129;
          sub_100436168(v128 - 1);
          v128 = *(v9 + 2);
          if (v128 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v9 = sub_1004361F4(v9);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = &selRef_accountStatusWithCompletionHandler_;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    v139 = v9;
    if (v8 + 1 < v7)
    {
      v145 = v7;
      v132 = v5;
      v13 = *v6;
      v135 = v8;
      v14 = *(*v6 + 8 * v8);
      v15 = *(*v6 + 8 * v12);
      v16 = v14;
      v17 = sub_100433F40();
      v19 = v18;
      if (v17 == sub_100433F40() && v19 == v20)
      {
        v147 = 0;
      }

      else
      {
        v147 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v12 = v135 + 2;
      if (v135 + 2 < v145)
      {
        v22 = (v13 + 8 * v135 + 16);
        do
        {
          v142 = v12;
          v24 = *(v22 - 1);
          v25 = *v22;
          v26 = v24;
          [v25 type];
          v151 = dispatch thunk of CustomStringConvertible.description.getter();
          v155 = v27;

          v28._countAndFlagsBits = 95;
          v28._object = 0xE100000000000000;
          String.append(_:)(v28);

          v29 = v155;
          v30 = [v25 ckIdentifier];
          if (!v30)
          {
            v31 = [v25 objectID];
            v30 = [v31 description];
          }

          v149 = v25;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35._countAndFlagsBits = v32;
          v35._object = v34;
          String.append(_:)(v35);

          v36 = v151;
          [v26 type];
          v152 = dispatch thunk of CustomStringConvertible.description.getter();
          v156 = v37;

          v38._countAndFlagsBits = 95;
          v38._object = 0xE100000000000000;
          String.append(_:)(v38);

          v39 = [v26 ckIdentifier];
          if (!v39)
          {
            v40 = [v26 objectID];
            v39 = [v40 description];
          }

          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;

          v44._countAndFlagsBits = v41;
          v44._object = v43;
          String.append(_:)(v44);

          if (v36 == v152 && v29 == v156)
          {

            v6 = a3;
            v9 = v139;
            v12 = v142;
            if (v147)
            {
              v5 = v132;
              v10 = &selRef_accountStatusWithCompletionHandler_;
              v11 = v135;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v6 = a3;
            v9 = v139;
            v12 = v142;
            if ((v147 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v12;
          ++v22;
        }

        while (v145 != v12);
        v12 = v145;
      }

LABEL_24:
      v5 = v132;
      v10 = &selRef_accountStatusWithCompletionHandler_;
      v11 = v135;
      if (v147)
      {
LABEL_25:
        if (v12 < v11)
        {
          goto LABEL_137;
        }

        if (v11 < v12)
        {
          v45 = 8 * v12 - 8;
          v46 = 8 * v11;
          v47 = v12;
          v48 = v11;
          do
          {
            if (v48 != --v47)
            {
              v49 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v50 = *(v49 + v46);
              *(v49 + v46) = *(v49 + v45);
              *(v49 + v45) = v50;
            }

            ++v48;
            v45 -= 8;
            v46 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = v6[1];
    if (v12 < v51)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_136;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v12 < v11)
    {
      goto LABEL_135;
    }

    v144 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003658B8(0, *(v9 + 2) + 1, 1, v9);
    }

    v82 = *(v9 + 2);
    v81 = *(v9 + 3);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v9 = sub_1003658B8((v81 > 1), v82 + 1, 1, v9);
    }

    *(v9 + 2) = v83;
    v84 = &v9[16 * v82];
    *(v84 + 4) = v11;
    *(v84 + 5) = v144;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v82)
    {
      while (1)
      {
        v86 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v87 = *(v9 + 4);
          v88 = *(v9 + 5);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_76:
          if (v90)
          {
            goto LABEL_124;
          }

          v103 = &v9[16 * v83];
          v105 = *v103;
          v104 = *(v103 + 1);
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_127;
          }

          v109 = &v9[16 * v86 + 32];
          v111 = *v109;
          v110 = *(v109 + 1);
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_131;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v86 = v83 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v113 = &v9[16 * v83];
        v115 = *v113;
        v114 = *(v113 + 1);
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_90:
        if (v108)
        {
          goto LABEL_126;
        }

        v116 = &v9[16 * v86];
        v118 = *(v116 + 4);
        v117 = *(v116 + 5);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_129;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_97:
        v124 = v86 - 1;
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v125 = *&v9[16 * v124 + 32];
        v10 = *&v9[16 * v86 + 40];
        sub_100435E08((*v6 + 8 * v125), (*v6 + 8 * *&v9[16 * v86 + 32]), (*v6 + 8 * v10), v85);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v10 < v125)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1004361F4(v9);
        }

        if (v124 >= *(v9 + 2))
        {
          goto LABEL_121;
        }

        v126 = &v9[16 * v124];
        *(v126 + 4) = v125;
        *(v126 + 5) = v10;
        sub_100436168(v86);
        v83 = *(v9 + 2);
        if (v83 <= 1)
        {
          goto LABEL_3;
        }
      }

      v91 = &v9[16 * v83 + 32];
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_122;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_123;
      }

      v98 = &v9[16 * v83];
      v100 = *v98;
      v99 = *(v98 + 1);
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_125;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_128;
      }

      if (v102 >= v94)
      {
        v120 = &v9[16 * v86 + 32];
        v122 = *v120;
        v121 = *(v120 + 1);
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_132;
        }

        if (v89 < v123)
        {
          v86 = v83 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v144;
    v10 = &selRef_accountStatusWithCompletionHandler_;
    if (v144 >= v7)
    {
      goto LABEL_107;
    }
  }

  v52 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_138;
  }

  if (v52 >= v51)
  {
    v52 = v6[1];
  }

  if (v52 < v11)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v12 == v52)
  {
    goto LABEL_56;
  }

  v133 = v5;
  v146 = *v6;
  v53 = *v6 + 8 * v12 - 8;
  v136 = v11;
  v137 = v52;
  v54 = v11 - v12;
  v55 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
LABEL_44:
  v141 = v53;
  v143 = v12;
  v56 = *(v146 + 8 * v12);
  v140 = v54;
  v57 = v54;
  while (1)
  {
    v148 = v57;
    v58 = *v53;
    v59 = v56;
    v60 = v58;
    [v59 v55[269]];
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v157 = v61;

    v62._countAndFlagsBits = 95;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);

    v63 = [v59 v10[159]];
    if (!v63)
    {
      v64 = [v59 objectID];
      v63 = [v64 description];
    }

    v150 = v59;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68._countAndFlagsBits = v65;
    v68._object = v67;
    String.append(_:)(v68);

    v70 = v153;
    v69 = v157;
    [v60 v55[269]];
    v154 = dispatch thunk of CustomStringConvertible.description.getter();
    v158 = v71;

    v72._countAndFlagsBits = 95;
    v72._object = 0xE100000000000000;
    String.append(_:)(v72);

    v73 = [v60 ckIdentifier];
    if (!v73)
    {
      v74 = [v60 objectID];
      v73 = [v74 description];
    }

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78._countAndFlagsBits = v75;
    v78._object = v77;
    String.append(_:)(v78);

    if (v70 == v154 && v69 == v158)
    {

LABEL_42:
      v55 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      v10 = &selRef_accountStatusWithCompletionHandler_;
LABEL_43:
      v12 = v143 + 1;
      v53 = v141 + 8;
      v54 = v140 - 1;
      if (v143 + 1 == v137)
      {
        v12 = v137;
        v5 = v133;
        v6 = a3;
        v9 = v139;
        v11 = v136;
        goto LABEL_56;
      }

      goto LABEL_44;
    }

    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v79 & 1) == 0)
    {
      goto LABEL_42;
    }

    v55 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
    v10 = &selRef_accountStatusWithCompletionHandler_;
    if (!v146)
    {
      break;
    }

    v80 = *v53;
    v56 = *(v53 + 8);
    *v53 = v56;
    *(v53 + 8) = v80;
    v53 -= 8;
    v57 = v148 + 1;
    if (v148 == -1)
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_100435E08(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v25 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v44 = &v4[v12];
    if (v10 >= 8 && v25 > v6)
    {
      v43 = v4;
LABEL_32:
      v42 = v25;
      v26 = v25 - 1;
      v27 = v5;
      v28 = v44;
      do
      {
        v29 = *--v28;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        v34 = sub_100433F40();
        v36 = v35;
        if (v34 == sub_100433F40() && v36 == v37)
        {

          v5 = v27 - 1;
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v27 - 1;
          if (v39)
          {
            v40 = v30;
            if (v27 != v42)
            {
              *v5 = *v30;
            }

            v4 = v43;
            if (v44 <= v43 || (v25 = v40, v40 <= v6))
            {
              v25 = v40;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v26 = v30;
        v4 = v43;
        if (v44 != v27)
        {
          *v5 = *v28;
        }

        v44 = v28;
        v27 = v5;
      }

      while (v28 > v43);
      v44 = v28;
      v25 = v42;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v44 = &v4[v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v4;
        v16 = *v14;
        v17 = v15;
        v18 = sub_100433F40();
        v20 = v19;
        v22 = v18 == sub_100433F40() && v20 == v21;
        if (v22)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          goto LABEL_21;
        }

        v24 = v14;
        v22 = v6 == v14++;
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v6;
        if (v4 >= v44 || v14 >= v5)
        {
          goto LABEL_25;
        }
      }

LABEL_21:
      v24 = v4;
      v22 = v6 == v4++;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      *v6 = *v24;
      goto LABEL_23;
    }

LABEL_25:
    v25 = v6;
  }

LABEL_49:
  if (v25 != v4 || v25 >= (v4 + ((v44 - v4 + (v44 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v4, 8 * (v44 - v4));
  }

  return 1;
}

uint64_t sub_100436168(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004361F4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100436208(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F5104(&qword_100943020, &qword_1007A3AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100436540(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(0x44497463656A626FLL, 0xE800000000000000, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(a1, 1, AssociatedTypeWitness) == 1)
  {
    if (qword_100936128 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100946C50);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      swift_getAssociatedTypeWitness();
      v8 = [swift_getObjCClassFromMetadata() description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_10000668C(v9, v11, &v14);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v5, "CDIngestableValueKey is expected to define 'objectID' for every kind of CDIngestors {CDType: %{public}s}", v6, 0xCu);
      sub_10000607C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1004367B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946C50);
  v1 = sub_100006654(v0, qword_100946C50);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100436880()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004368F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100436974@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1A88, v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_1004369F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100436A6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100436AEC@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1AC0, v3);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100436BE4()
{
  result = qword_100946C78;
  if (!qword_100946C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C78);
  }

  return result;
}

unint64_t sub_100436C6C()
{
  result = qword_100946C90;
  if (!qword_100946C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C90);
  }

  return result;
}

unint64_t sub_100436CC4()
{
  result = qword_100946C98;
  if (!qword_100946C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946C98);
  }

  return result;
}

uint64_t sub_100436D88()
{
  *v0;
  String.hash(into:)();
}

unint64_t sub_100436EB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100437494(*a1);
  *a2 = result;
  return result;
}

void sub_100436EE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0xEA0000000000676ELL;
    v10 = 0x6972745364697575;
    if (v2 != 1)
    {
      v10 = 0x4C525574736F68;
      v9 = 0xE700000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x44497463656A626FLL;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB000000006E656BLL;
    v4 = 0x6F54636E79536164;
    if (v2 != 5)
    {
      v4 = 0x654B687375506164;
      v3 = 0xE900000000000079;
    }

    v5 = 0xD000000000000012;
    v6 = 0x80000001007EA030;
    if (v2 != 3)
    {
      v5 = 0xD000000000000017;
      v6 = 0x80000001007EA050;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_100436FF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100437494(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10043701C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6972745364697575;
    if (v1 != 1)
    {
      v5 = 0x4C525574736F68;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x44497463656A626FLL;
    }
  }

  else
  {
    v2 = 0x6F54636E79536164;
    if (v1 != 5)
    {
      v2 = 0x654B687375506164;
    }

    v3 = 0xD000000000000012;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100437110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x44497473696CLL;
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
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x44497473696CLL;
  }

  else
  {
    v6 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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

Swift::Int sub_1004371B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10043723C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1004372AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10043732C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E19E8, *a1);

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

void sub_10043738C(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x44497473696CLL;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1004373DC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E19E8, v3);

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

uint64_t sub_100437440()
{
  if (*v0)
  {
    result = 0x44497473696CLL;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

unint64_t sub_100437494(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0F30, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_1004374E0(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  v63 = type metadata accessor for URL();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v63);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for UUID();
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v65);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100436540(&v66);
  v14 = v66;
  v60 = a2;
  v58 = v8;
  v59 = a1;
  v61 = a3;
  v57 = v11;
  if (v66 == 7 || (v15 = *(a3 + 16)) == 0)
  {
    v32 = 0;
    goto LABEL_59;
  }

  v16 = (a3 + 32);
  v17 = v15 - 1;
  while (1)
  {
    v18 = v17;
    v20 = *v16++;
    v19 = v20;
    if (v20 <= 2)
    {
      v25 = 0x6972745364697575;
      if (v19 != 1)
      {
        v25 = 0x4C525574736F68;
      }

      v26 = 0xEA0000000000676ELL;
      if (v19 != 1)
      {
        v26 = 0xE700000000000000;
      }

      if (v19)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0x44497463656A626FLL;
      }

      if (v19)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0xE800000000000000;
      }

      if (v14 > 2)
      {
LABEL_33:
        v27 = 0x6F54636E79536164;
        if (v14 != 5)
        {
          v27 = 0x654B687375506164;
        }

        v28 = 0xEB000000006E656BLL;
        if (v14 != 5)
        {
          v28 = 0xE900000000000079;
        }

        v29 = 0xD000000000000017;
        if (v14 == 3)
        {
          v29 = 0xD000000000000012;
          v30 = 0x80000001007EA030;
        }

        else
        {
          v30 = 0x80000001007EA050;
        }

        if (v14 <= 4)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        if (v14 <= 4)
        {
          v24 = v30;
        }

        else
        {
          v24 = v28;
        }

        if (v21 != v31)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }

    else if (v19 > 4)
    {
      if (v19 == 5)
      {
        v21 = 0x6F54636E79536164;
        v22 = 0xEB000000006E656BLL;
        if (v14 > 2)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v21 = 0x654B687375506164;
        v22 = 0xE900000000000079;
        if (v14 > 2)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (v19 == 3)
      {
        v21 = 0xD000000000000012;
      }

      else
      {
        v21 = 0xD000000000000017;
      }

      if (v19 == 3)
      {
        v22 = 0x80000001007EA030;
      }

      else
      {
        v22 = 0x80000001007EA050;
      }

      if (v14 > 2)
      {
        goto LABEL_33;
      }
    }

    if (v14)
    {
      break;
    }

    v24 = 0xE800000000000000;
    if (v21 == 0x44497463656A626FLL)
    {
      goto LABEL_47;
    }

LABEL_48:
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v17 = v18 - 1;
      if (v18)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  if (v14 == 1)
  {
    v23 = 0x6972745364697575;
  }

  else
  {
    v23 = 0x4C525574736F68;
  }

  if (v14 == 1)
  {
    v24 = 0xEA0000000000676ELL;
  }

  else
  {
    v24 = 0xE700000000000000;
  }

  if (v21 != v23)
  {
    goto LABEL_48;
  }

LABEL_47:
  if (v22 != v24)
  {
    goto LABEL_48;
  }

  v32 = 1;
LABEL_59:
  v33 = *(v61 + 16);
  v35 = v59;
  v34 = v60;
  if (v33)
  {
    v36 = (v61 + 32);
    v61 = v58 + 8;
    v37 = (v57 + 8);
    while (1)
    {
      v43 = *v36++;
      v42 = v43;
      if (v43 <= 2)
      {
        if (v42)
        {
          if (v42 == 1)
          {
            v41.super.isa = [v35 uuidString];
            [v34 setUuidString:{v41.super.isa, v57, v58}];
          }

          else
          {
            v50 = [v35 hostURL];
            if (v50)
            {
              v51 = v62;
              v52 = v50;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              URL._bridgeToObjectiveC()(v53);
              v41.super.isa = v54;
              (*v61)(v51, v63);
            }

            else
            {
              v41.super.isa = 0;
            }

            [v34 setHostURL:{v41.super.isa, v57, v58}];
          }
        }

        else
        {
          v38 = [v35 objectID];
          v39 = [v38 uuid];

          v40 = v64;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41.super.isa = UUID._bridgeToObjectiveC()().super.isa;
          (*v37)(v40, v65);
          [v34 setIdentifier:{v41.super.isa, v57, v58}];
        }

        goto LABEL_62;
      }

      if (v42 <= 4)
      {
        if (v42 == 3)
        {
          v41.super.isa = [v35 externalIdentifier];
          [v34 setExternalIdentifier:{v41.super.isa, v57, v58}];
        }

        else
        {
          v41.super.isa = [v35 externalModificationTag];
          [v34 setExternalModificationTag:{v41.super.isa, v57, v58}];
        }

        goto LABEL_62;
      }

      if (v42 != 5)
      {
        break;
      }

      if (v32)
      {
        goto LABEL_63;
      }

      if (qword_100936130 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100006654(v44, qword_100946D00);
      v41.super.isa = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v41.super.isa, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        v47 = v45;
        isa = v41.super.isa;
        v49 = ".daSyncToken should not be practically used in REMCalDAVNotification";
LABEL_85:
        _os_log_impl(&_mh_execute_header, isa, v47, v49, v46, 2u);
      }

LABEL_62:

LABEL_63:
      if (!--v33)
      {
        return;
      }
    }

    if (v32)
    {
      goto LABEL_63;
    }

    if (qword_100936130 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100946D00);
    v41.super.isa = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v41.super.isa, v56))
    {
      goto LABEL_62;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = v56;
    isa = v41.super.isa;
    v49 = ".daPushKey should not be practically used in REMCalDAVNotification";
    goto LABEL_85;
  }
}

void *sub_100437BEC(void *a1)
{
  v2 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = (&v69 - v8);
  __chkstk_darwin(v7);
  v11 = &v69 - v10;
  v77 = 0;
  v12 = [a1 remObjectIDWithError:&v77];
  if (v12)
  {
    v75 = v11;
    v76 = v12;
    v13 = v77;
    v14 = [a1 account];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 remObjectID];

      v74 = v16;
      if (v16)
      {
        v17 = [a1 owner];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 remObjectID];

          if (v19)
          {
            v20 = [a1 uuidString];
            if (v20)
            {
              v21 = v20;
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v23 = v22;
            }

            else
            {
              v72 = 0;
              v23 = 0;
            }

            v45 = [a1 hostURL];
            if (v45)
            {
              v46 = v45;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v47 = 0;
            }

            else
            {
              v47 = 1;
            }

            v48 = type metadata accessor for URL();
            v73 = *(v48 - 8);
            (*(v73 + 56))(v9, v47, 1, v48);
            sub_10003E8F8(v9, v75);
            v49 = [a1 externalIdentifier];
            if (v49)
            {
              v50 = v49;
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v52 = v51;
            }

            else
            {
              v71 = 0;
              v52 = 0;
            }

            v53 = [a1 externalModificationTag];
            if (v53)
            {
              v54 = v53;
              v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;
            }

            else
            {
              v70 = 0;
              v56 = 0;
            }

            sub_1001E0978(v75, v6);
            if (v23)
            {
              v57 = String._bridgeToObjectiveC()();
            }

            else
            {
              v57 = 0;
            }

            v58 = v73;
            if ((*(v73 + 48))(v6, 1, v48) == 1)
            {
              v60 = 0;
              if (v52)
              {
                goto LABEL_39;
              }
            }

            else
            {
              URL._bridgeToObjectiveC()(v59);
              v60 = v64;
              (*(v58 + 8))(v6, v48);
              if (v52)
              {
LABEL_39:
                v61 = String._bridgeToObjectiveC()();

                v62 = v19;
                if (v56)
                {
LABEL_40:
                  v63 = String._bridgeToObjectiveC()();

LABEL_44:
                  v65 = objc_allocWithZone(REMCalDAVNotification);
                  v66 = v76;
                  v67 = v74;
                  v68 = v62;
                  v9 = [v65 initCalDAVNotificationWithObjectID:v76 accountID:v74 listID:v62 uuidString:v57 hostURL:v60 externalIdentifier:v61 externalModificationTag:v63];

                  sub_1000050A4(v75, &unk_1009441F0, &qword_100795760);
                  return v9;
                }

LABEL_43:
                v63 = 0;
                goto LABEL_44;
              }
            }

            v61 = 0;
            v62 = v19;
            if (v56)
            {
              goto LABEL_40;
            }

            goto LABEL_43;
          }
        }
      }
    }

    v25 = [a1 account];
    if (v25)
    {
      v26 = v25;
      v27 = v76;
    }

    else
    {
      v27 = v76;
      if (qword_100936138 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_100946D18);
      v29 = v27;
      v26 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v30))
      {
        v31 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v29;
        *v9 = v27;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v26, v30, "REMCalDAVNotificationCDIngestor: cdCalDAVNotification.account is nil {cdCalDAVNotification.remObjectID: %@}", v31, 0xCu);
        sub_1000050A4(v9, &unk_100938E70, &unk_100797230);
      }
    }

    v33 = [a1 owner];
    if (v33)
    {
      v34 = v33;
    }

    else
    {

      if (qword_100936138 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_100946D18);
      v36 = v27;
      v34 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v36;
        *v39 = v27;
        v40 = v36;
        _os_log_impl(&_mh_execute_header, v34, v37, "REMCalDAVNotificationCDIngestor: cdCalDAVNotification.owner is nil {cdCalDAVNotification.remObjectID: %@}", v38, 0xCu);
        sub_1000050A4(v39, &unk_100938E70, &unk_100797230);
      }
    }

    v41 = objc_opt_self();
    sub_1004383B8();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v43 = String._bridgeToObjectiveC()();

    [v41 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v43];

    swift_willThrow();
  }

  else
  {
    v24 = v77;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

unint64_t sub_1004383B8()
{
  result = qword_10094F150;
  if (!qword_10094F150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094F150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDDynamicXPCActivity.MotionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDDynamicXPCActivity.MotionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100438598()
{
  result = qword_100946F30;
  if (!qword_100946F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946F30);
  }

  return result;
}

unint64_t sub_100438620()
{
  result = qword_100946F48;
  if (!qword_100946F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946F48);
  }

  return result;
}

uint64_t static REMCDTemplate.cdEntityName.getter()
{
  v0 = [objc_opt_self() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Int __swiftcall REMCDTemplate.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 parentAccount];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDTemplate.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E3590);
  sub_100034610(&unk_1008E35B0);
  return v0;
}