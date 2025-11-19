void sub_10040C4C8(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v67 = (&v56 - v7);
  v66 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v62 = *(v66 - 8);
  v8 = *(v62 + 64);
  __chkstk_darwin(v66);
  v65 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v56 - v11;
  v68 = a1;
  v60 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v12 = sub_10029BD74(3, 0xA0u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  v59 = v12;
  [v14 setPredicate:v12];
  v70 = _swiftEmptySetSingleton;

  sub_1003928B4(v16);

  sub_1003FE084(v70, &qword_1009464E0, &unk_1007A3960, &qword_1009464E8, &unk_1007A86E0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  v19 = [objc_opt_self() daemonUserDefaults];
  LOBYTE(v12) = [v19 disableAlarmEngineDataSourcePrefetching];

  if ((v12 & 1) == 0)
  {
    v20 = Array._bridgeToObjectiveC()().super.isa;
    [v14 setRelationshipKeyPathsForPrefetching:v20];
  }

  v21 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v23 = v59;
    v22 = v60;
LABEL_5:

    return;
  }

  v24 = v21;
  v69 = 0;
  v70 = _swiftEmptyArrayStorage;
  v56 = a2;
  if (v21 >> 62)
  {
LABEL_50:
    v64 = v24 & 0xFFFFFFFFFFFFFF8;
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v64 = v21 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v14;
  v26 = v24 & 0xC000000000000001;
  if (!v25)
  {
    v63 = _swiftEmptyArrayStorage;
    v14 = v64;
    goto LABEL_27;
  }

  v27 = 0;
  v63 = _swiftEmptyArrayStorage;
  v14 = v64;
  do
  {
    v28 = v27;
    while (1)
    {
      if (v26)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= v14[2])
        {
          goto LABEL_47;
        }

        v29 = *(v24 + 8 * v28 + 32);
      }

      v30 = v29;
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v31 = [v29 alarm];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 reminder];

        if (v33)
        {
          break;
        }
      }

LABEL_12:
      ++v28;
      if (v27 == v25)
      {
        goto LABEL_27;
      }
    }

    v34 = [v33 remObjectID];

    if (!v34)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v64;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v63 = v70;
  }

  while (v27 != v25);
LABEL_27:
  v36 = objc_allocWithZone(REMRemindersDataView);
  v37 = v60;
  v38 = [v36 initWithStore:v60];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v39 = Array._bridgeToObjectiveC()().super.isa;

  v40 = [objc_opt_self() defaultFetchOptions];
  v70 = 0;
  v57 = v38;
  v41 = [v38 fetchRemindersWithObjectIDs:v39 fetchOptions:v40 error:&v70];

  v42 = v70;
  if (!v41)
  {
    v55 = v70;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = v57;
    v22 = v58;
    v14 = v37;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v63 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (v25)
  {
    v44 = 0;
    v45 = (v62 + 48);
    v46 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v26)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v44 >= v14[2])
        {
          goto LABEL_49;
        }

        v47 = *(v24 + 8 * v44 + 32);
      }

      v48 = v47;
      v49 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v70 = v47;
      v50 = v67;
      v51 = v69;
      sub_10040CD40(&v70, v63, v68, v67);
      v69 = v51;

      if ((*v45)(v50, 1, v66) == 1)
      {
        sub_1000050A4(v50, &qword_100945E58, &unk_1007ACAD0);
      }

      else
      {
        v52 = v61;
        sub_10041287C(v50, v61);
        sub_10041287C(v52, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100367EA4(0, v46[2] + 1, 1, v46);
        }

        v54 = v46[2];
        v53 = v46[3];
        if (v54 >= v53 >> 1)
        {
          v46 = sub_100367EA4(v53 > 1, v54 + 1, 1, v46);
        }

        v46[2] = v54 + 1;
        sub_10041287C(v65, v46 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v54);
      }

      ++v44;
      v14 = v64;
      if (v49 == v25)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v46 = _swiftEmptyArrayStorage;
LABEL_45:

  *v56 = v46;
}

uint64_t sub_10040CD40@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v80 = a3;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v81 = &v72 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  *&v14 = __chkstk_darwin(v11).n128_u64[0];
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = [*a1 alarm];
  if (!v18)
  {
    goto LABEL_46;
  }

  v19 = v18;
  v20 = [v18 reminder];
  if (!v20)
  {

LABEL_46:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009463C0);
    v65 = v17;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;
      _os_log_impl(&_mh_execute_header, v66, v67, "TimeDataSourceAlarms: Failed to get REMReminder, REMAlarm or triggerEvent from cdTrigger -- skipping {cdTrigger: %@}", v68, 0xCu);
      sub_1000050A4(v69, &unk_100938E70, &unk_100797230);
    }

    v71 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    return (*(*(v71 - 8) + 56))(a4, 1, 1, v71);
  }

  v79 = v17;
  v21 = v20;
  v22 = [v20 remObjectID];

  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = sub_100353844(v22, a2);
  if (!v23)
  {

LABEL_45:
    v17 = v79;
    goto LABEL_46;
  }

  v24 = v23;
  v25 = [v23 alarms];
  if (!v25)
  {

LABEL_25:
    goto LABEL_45;
  }

  v26 = v25;
  v78 = v24;
  v75 = v22;
  v73 = v12;
  v72 = v16;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v76 = a4;
  v77 = v4;
  v74 = v11;
  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_44:

    a4 = v76;
    goto LABEL_45;
  }

LABEL_8:
  v29 = 0;
  v82 = v19;
  v83 = (v27 & 0xC000000000000001);
  while (1)
  {
    if (v83)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    a4 = (v29 + 1);
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = [v30 remObjectID];
    v32 = [v19 remObjectID];
    v33 = v32;
    v22 = v31;
    if (!v11)
    {
      if (!v32)
      {
        goto LABEL_26;
      }

      goto LABEL_10;
    }

    if (v32)
    {
      break;
    }

    v33 = v11;
LABEL_10:

LABEL_11:
    ++v29;
    v19 = v82;
    if (a4 == v28)
    {
      goto LABEL_44;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v34 = static NSObject.== infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:

  v35 = v22;
  v89 = [v22 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  v36 = swift_dynamicCast();
  v17 = v79;
  if ((v36 & 1) == 0)
  {

    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_1000050A4(v84, &qword_10093A718, &qword_100797B90);
    a4 = v76;
    goto LABEL_46;
  }

  v83 = v35;
  sub_100054B6C(v84, v86);
  v37 = v87;
  v38 = v88;
  sub_10000F61C(v86, v87);
  v39 = v81;
  v40 = v78;
  (*(v38 + 8))(v78, v37, v38);
  v41 = v73;
  v42 = v74;
  v43 = (*(v73 + 48))(v39, 1, v74);
  a4 = v76;
  if (v43 == 1)
  {

    sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
    sub_10000607C(v86);
    goto LABEL_46;
  }

  v44 = v39;
  v45 = *(v41 + 32);
  v22 = v72;
  v45(v72, v44, v42);
  v46 = [v40 assignmentContext];
  v47 = [v46 currentAssignment];

  if (!v47 || (v47, v48 = *(v80 + 40), v49 = v48, LOBYTE(v48) = sub_1005815C8(v48), v49, v42 = v74, (v48 & 1) != 0) || [v40 prefersUrgentPresentationStyleForDateAlarms])
  {

    v50 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    v51 = *(v50 + 48);
    v52 = v83;
    *a4 = v40;
    a4[1] = v52;
    v45(a4 + v51, v22, v42);
    (*(*(v50 - 8) + 56))(a4, 0, 1, v50);
    return sub_10000607C(v86);
  }

  if (qword_1009360A8 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100006654(v54, qword_1009463C0);
  v11 = v78;
  v27 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138543362;
    v58 = [v11 objectID];
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&_mh_execute_header, v27, v55, "TimeDataSourceAlarms: Fetched reminder is a non-urgent reminder assigned to another user in a shared list. Skipping {reminderID: %{public}@}", v56, 0xCu);
    sub_1000050A4(v57, &unk_100938E70, &unk_100797230);

    v59 = v11;
    v60 = v82;
    v61 = v83;
    v62 = v75;
    goto LABEL_42;
  }

LABEL_41:
  v59 = v27;
  v27 = v11;
  v61 = v75;
  v62 = v82;
  v60 = v83;
LABEL_42:

  (*(v73 + 8))(v22, v74);
  v63 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v63 - 8) + 56))(a4, 1, 1, v63);
  return sub_10000607C(v86);
}

void sub_10040D67C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = [v6 phones];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(a2) = sub_1003D8420(v8, a2);

  if ((a2 & 1) == 0)
  {

    return;
  }

  v46 = a3;
  v47 = v6;
  v9 = [v6 phones];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = 0;
  v13 = *(v10 + 16);
  v14 = v10 + 40;
LABEL_3:
  v15 = (v14 + 16 * v12);
  while (v13 != v12)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v38 = v11;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v38;
      v24 = v47;
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_13;
    }

    ++v12;
    v16 = v15 + 2;
    v18 = *(v15 - 1);
    v17 = *v15;
    v19 = objc_allocWithZone(CNPhoneNumber);

    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithStringValue:v20];

    v15 = v16;
    if (v21)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v10 + 40;
      goto LABEL_3;
    }
  }

  v11 = v46;
  if (v46 >> 62)
  {
    goto LABEL_36;
  }

  v23 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v47;
  if (!v23)
  {
LABEL_31:

    v36 = [v24 emails];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003D8420(v37, a4);

    return;
  }

LABEL_13:
  v25 = v23;
  if (_swiftEmptyArrayStorage >> 62)
  {
    v39 = v11;
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v39;
    v26 = v40;
  }

  else
  {
    v26 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v28 = v11 & 0xC000000000000001;
  v41 = v11 + 32;
  v42 = v11 & 0xFFFFFFFFFFFFFF8;
  v43 = v25;
  v44 = v11 & 0xC000000000000001;
  while (v28)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v30 = v29;
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_35;
    }

    for (i = 0; v26 != i; ++i)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v33 = _swiftEmptyArrayStorage[i + 4];
      }

      v34 = v33;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      v35 = [v30 isLikePhoneNumber:v33];

      if (v35)
      {

        return;
      }
    }

    v27 = v31;
    v28 = v44;
    v24 = v47;
    if (v31 == v43)
    {
      goto LABEL_31;
    }
  }

  if (v27 < *(v42 + 16))
  {
    v29 = *(v41 + 8 * v27);
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_10040DA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v131 = a2;
  v129 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v118 - v10;
  __chkstk_darwin(v11);
  v119 = &v118 - v12;
  __chkstk_darwin(v13);
  v121 = &v118 - v14;
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v124 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v122 = (&v118 - v19);
  __chkstk_darwin(v20);
  v136 = &v118 - v21;
  v22 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v128 = *(v22 - 8);
  v23 = *(v128 + 64);
  __chkstk_darwin(v22);
  v123 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v118 - v26;
  __chkstk_darwin(v27);
  v29 = (&v118 - v28);
  sub_100010364(a1, &v118 - v28, &unk_1009464C0, &qword_10079D360);
  v31 = *v29;
  v30 = v29[1];
  v137 = v22;
  v32 = *(v22 + 48);
  v135 = v5;
  v33 = *(v5 + 8);
  v130 = v4;
  v132 = v33;
  v133 = v5 + 8;
  v33(v29 + v32, v4);
  v34 = qword_1009360A8;
  v35 = v30;
  v36 = v31;
  if (v34 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100006654(v37, qword_1009463C0);
  v39 = v35;
  v40 = v36;
  v134 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v127 = v8;
  v138 = v39;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v120 = a1;
    v45 = v44;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v141[0] = v47;
    *v45 = 138543618;
    v48 = [v39 objectID];
    *(v45 + 4) = v48;
    *v46 = v48;
    *(v45 + 12) = 2082;
    if ([v40 isRecurrent])
    {
      v49 = 89;
    }

    else
    {
      v49 = 78;
    }

    v50 = sub_10000668C(v49, 0xE100000000000000, v141);

    *(v45 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter alarm {alarmID: %{public}@ isRecurring: %{public}s}", v45, 0x16u);
    sub_1000050A4(v46, &unk_100938E70, &unk_100797230);

    sub_10000607C(v47);

    a1 = v120;
  }

  v52 = v135;
  v51 = v136;
  v53 = *(v135 + 56);
  v54 = v130;
  v53(v136, 1, 1, v130);
  v55 = [v40 isOverdue];
  v126 = v40;
  if (!v55)
  {
    sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
    v62 = v51;
    goto LABEL_14;
  }

  v144 = [v138 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v62 = v136;
    sub_1000050A4(v136, &unk_100938850, qword_100795AE0);
    memset(v139, 0, sizeof(v139));
    v140 = 0;
    sub_1000050A4(v139, &qword_10093A718, &qword_100797B90);
    goto LABEL_14;
  }

  sub_100054B6C(v139, v141);
  v56 = v142;
  v57 = v143;
  sub_10000F61C(v141, v142);
  v58 = *(v57 + 16);
  v59 = v56;
  v60 = v122;
  v61 = v57;
  v52 = v135;
  v58(v40, v131, v59, v61);
  v62 = v136;
  sub_1000050A4(v136, &unk_100938850, qword_100795AE0);
  if ((*(v52 + 48))(v60, 1, v54) == 1)
  {
    sub_1000050A4(v60, &unk_100938850, qword_100795AE0);
    sub_10000607C(v141);
LABEL_14:
    sub_100010364(a1, v29, &unk_1009464C0, &qword_10079D360);

    v63 = v29 + *(v137 + 48);
    v122 = *(v52 + 32);
    v122(v62, v63, v54);
    v53(v62, 0, 1, v54);
    v64 = v123;
    sub_100010364(a1, v123, &unk_1009464C0, &qword_10079D360);
    v65 = v138;
    v66 = Logger.logObject.getter();
    v67 = v54;
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138543618;
      v71 = [v65 objectID];
      *(v69 + 4) = v71;
      *v70 = v71;
      *(v69 + 12) = 2114;
      sub_100010364(v64, v29, &unk_1009464C0, &qword_10079D360);

      v72 = *(v137 + 48);
      v73 = v67;
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v64, &unk_1009464C0, &qword_10079D360);
      v75 = v29 + v72;
      v62 = v136;
      v132(v75, v73);
      *(v69 + 14) = isa;
      v70[1] = isa;
      _os_log_impl(&_mh_execute_header, v66, v68, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v69, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v52 = v135;
    }

    else
    {

      sub_1000050A4(v64, &unk_1009464C0, &qword_10079D360);
      v73 = v67;
    }

    v76 = v127;
    v77 = v125;
    goto LABEL_18;
  }

  v98 = *(v52 + 32);
  v120 = a1;
  v99 = v121;
  v122 = v98;
  v98(v121, v60, v54);
  v100 = *(v52 + 16);
  v100(v62, v99, v54);
  v53(v62, 0, 1, v54);
  v101 = v118;
  sub_100010364(v120, v118, &unk_1009464C0, &qword_10079D360);
  v102 = v119;
  v100(v119, v99, v54);
  v103 = v54;
  v104 = v138;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v107 = 138543874;
    v109 = [v104 objectID];
    *(v107 + 4) = v109;
    *v108 = v109;
    *(v107 + 12) = 2114;
    sub_100010364(v101, v29, &unk_1009464C0, &qword_10079D360);

    v110 = v102;
    v111 = *(v137 + 48);
    LODWORD(v123) = v106;
    v112 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v101, &unk_1009464C0, &qword_10079D360);
    v113 = v29 + v111;
    v114 = v130;
    v115 = v132;
    v132(v113, v130);
    *(v107 + 14) = v112;
    v108[1] = v112;
    *(v107 + 22) = 2114;
    v116 = Date._bridgeToObjectiveC()().super.isa;
    v115(v110, v114);
    *(v107 + 24) = v116;
    v108[2] = v116;
    v117 = v115;
    _os_log_impl(&_mh_execute_header, v105, v123, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter is calculating fireDate for overdue recurring alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ nextFireDate: %{public}@}", v107, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v52 = v135;

    v73 = v114;
  }

  else
  {

    v117 = v132;
    v132(v102, v103);
    sub_1000050A4(v101, &unk_1009464C0, &qword_10079D360);
    v73 = v103;
  }

  v76 = v127;
  v77 = v125;
  v117(v121, v73);
  sub_10000607C(v141);
LABEL_18:
  v78 = v124;
  sub_100010364(v62, v124, &unk_100938850, qword_100795AE0);
  if ((*(v52 + 48))(v78, 1, v73) == 1)
  {
    sub_1000050A4(v78, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v79 = v78;
    v80 = v122;
    v122(v77, v79, v73);
    if (static Date.> infix(_:_:)())
    {
      sub_1000050A4(v62, &unk_100938850, qword_100795AE0);
      v81 = v126;

      v82 = v138;
      v83 = v137;
      v84 = *(v137 + 48);
      v85 = v80;
      v86 = v129;
      *v129 = v81;
      *(v86 + 1) = v82;
      v85(&v86[v84], v77, v73);
      return (*(v128 + 56))(v86, 0, 1, v83);
    }

    v132(v77, v73);
  }

  v88 = v138;
  (*(v52 + 16))(v76, v131, v73);
  v89 = v88;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138543618;
    v94 = [v89 objectID];
    *(v92 + 4) = v94;
    *v93 = v94;
    *(v92 + 12) = 2114;
    v95 = Date._bridgeToObjectiveC()().super.isa;
    v132(v76, v73);
    *(v92 + 14) = v95;
    v93[1] = v95;
    _os_log_impl(&_mh_execute_header, v90, v91, "RDDueDateDeltaAlarmProducerDataSource: nextProducerDueDateDeltaAlarmFiringAfter fireDate is earlier than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v92, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v96 = v126;
  }

  else
  {

    v97 = v126;
    v132(v76, v73);
  }

  sub_1000050A4(v62, &unk_100938850, qword_100795AE0);
  return (*(v128 + 56))(v129, 1, 1, v137);
}

uint64_t sub_10040E92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v239 = a2;
  v234 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v230 = &v217 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v222 = &v217 - v9;
  __chkstk_darwin(v10);
  v219 = &v217 - v11;
  __chkstk_darwin(v12);
  v218 = &v217 - v13;
  __chkstk_darwin(v14);
  v223 = &v217 - v15;
  __chkstk_darwin(v16);
  v18 = &v217 - v17;
  __chkstk_darwin(v19);
  v220 = &v217 - v20;
  __chkstk_darwin(v21);
  v224 = &v217 - v22;
  __chkstk_darwin(v23);
  v235 = &v217 - v24;
  __chkstk_darwin(v25);
  v226 = &v217 - v26;
  __chkstk_darwin(v27);
  v227 = (&v217 - v28);
  v29 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v232 = &v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v228 = (&v217 - v33);
  __chkstk_darwin(v34);
  v36 = &v217 - v35;
  v37 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v233 = *(v37 - 8);
  v38 = *(v233 + 64);
  __chkstk_darwin(v37);
  v229 = &v217 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v225 = &v217 - v41;
  __chkstk_darwin(v42);
  v44 = (&v217 - v43);
  v231 = a1;
  sub_100010364(a1, &v217 - v43, &unk_1009464C0, &qword_10079D360);
  v46 = *v44;
  v45 = v44[1];
  v244 = v37;
  v245 = v4;
  v47 = *(v37 + 48);
  v242 = v5;
  v48 = v5[1];
  v236 = v5 + 1;
  v48(v44 + v47, v4);
  v49 = qword_1009360A8;
  v50 = v45;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  v52 = sub_100006654(v51, qword_1009463C0);
  v53 = v50;
  v54 = v46;
  v240 = v52;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  v57 = os_log_type_enabled(v55, v56);
  v241 = v36;
  v237 = v48;
  v238 = v54;
  v221 = v18;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v54;
    v61 = swift_slowAlloc();
    v248 = v61;
    *v58 = 138543618;
    v62 = [v53 objectID];
    *(v58 + 4) = v62;
    *v59 = v62;
    *(v58 + 12) = 2082;
    if ([v60 isRecurrent])
    {
      v63 = 89;
    }

    else
    {
      v63 = 78;
    }

    v64 = sub_10000668C(v63, 0xE100000000000000, &v248);

    *(v58 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v55, v56, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore alarm {alarmID: %{public}@ isRecurring: %{public}s}", v58, 0x16u);
    sub_1000050A4(v59, &unk_100938E70, &unk_100797230);
    v36 = v241;

    sub_10000607C(v61);

    v65 = v244;
  }

  else
  {

    v65 = v244;
  }

  v66 = v242;
  v67 = v242[7];
  v67(v36, 1, 1, v245);
  v243 = v53;
  v251 = [v53 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v227 = v67;
    sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
    memset(v246, 0, sizeof(v246));
    v247 = 0;
    sub_1000050A4(v246, &qword_10093A718, &qword_100797B90);
LABEL_13:
    v72 = v231;
    sub_100010364(v231, v44, &unk_1009464C0, &qword_10079D360);

    v73 = v44 + *(v65 + 48);
    v74 = v245;
    v228 = v66[4];
    v228(v36, v73, v245);
    v227(v36, 0, 1, v74);
    v75 = v229;
    sub_100010364(v72, v229, &unk_1009464C0, &qword_10079D360);
    v76 = v243;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543618;
      v81 = [v76 objectID];
      *(v79 + 4) = v81;
      *v80 = v81;
      *(v79 + 12) = 2114;
      sub_100010364(v75, v44, &unk_1009464C0, &qword_10079D360);

      v82 = v75;
      v83 = *(v244 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v82, &unk_1009464C0, &qword_10079D360);
      v85 = v44 + v83;
      v86 = v241;
      v87 = v244;
      v88 = v237;
      v237(v85, v245);
      *(v79 + 14) = isa;
      v80[1] = isa;
      _os_log_impl(&_mh_execute_header, v77, v78, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v79, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v89 = v87;

      v90 = v235;
      v91 = v242;
      v92 = v232;
    }

    else
    {

      sub_1000050A4(v75, &unk_1009464C0, &qword_10079D360);
      v90 = v235;
      v88 = v237;
      v91 = v242;
      v86 = v36;
      v92 = v232;
      v89 = v244;
    }

    goto LABEL_20;
  }

  sub_100054B6C(v246, &v248);
  v68 = v249;
  v69 = v250;
  sub_10000F61C(&v248, v249);
  v70 = v68;
  v71 = v228;
  (*(v69 + 24))(v238, v239, v70, v69);
  sub_1000050A4(v36, &unk_100938850, qword_100795AE0);
  if ((v66[6])(v71, 1, v245) == 1)
  {
    v227 = v67;
    sub_1000050A4(v71, &unk_100938850, qword_100795AE0);
    sub_10000607C(&v248);
    v65 = v244;
    goto LABEL_13;
  }

  v93 = v227;
  v94 = v245;
  v228 = v66[4];
  v228(v227, v71, v245);
  v95 = v66[2];
  v95(v36, v93, v94);
  v67(v36, 0, 1, v94);
  v96 = v225;
  sub_100010364(v231, v225, &unk_1009464C0, &qword_10079D360);
  v97 = v226;
  v95(v226, v93, v94);
  v98 = v243;
  v99 = Logger.logObject.getter();
  v100 = v94;
  v101 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v99, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    LODWORD(v231) = v101;
    v104 = v103;
    *v102 = 138543874;
    v105 = [v98 objectID];
    *(v102 + 4) = v105;
    *v104 = v105;
    *(v102 + 12) = 2114;
    v106 = v96;
    sub_100010364(v96, v44, &unk_1009464C0, &qword_10079D360);

    v107 = *(v244 + 48);
    v108 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v106, &unk_1009464C0, &qword_10079D360);
    v109 = v44 + v107;
    v110 = v97;
    v88 = v237;
    v237(v109, v100);
    *(v102 + 14) = v108;
    v104[1] = v108;
    *(v102 + 22) = 2114;
    v111 = Date._bridgeToObjectiveC()().super.isa;
    v88(v110, v100);
    *(v102 + 24) = v111;
    v104[2] = v111;
    _os_log_impl(&_mh_execute_header, v99, v231, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore is calculating fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ previousFireDate: %{public}@}", v102, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v86 = v241;
    v89 = v244;

    v90 = v235;
  }

  else
  {

    v112 = v97;
    v88 = v237;
    v237(v112, v100);
    sub_1000050A4(v96, &unk_1009464C0, &qword_10079D360);
    v90 = v235;
    v89 = v244;
    v86 = v241;
  }

  v92 = v232;
  v88(v227, v245);
  sub_10000607C(&v248);
  v91 = v242;
LABEL_20:
  sub_100010364(v86, v92, &unk_100938850, qword_100795AE0);
  if ((v91[6])(v92, 1, v245) == 1)
  {
    sub_1000050A4(v92, &unk_100938850, qword_100795AE0);
LABEL_24:
    v113 = v243;
    v114 = v230;
    (v91[2])(v230, v239, v245);
    v115 = v113;
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = v114;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138543618;
      v121 = [v115 objectID];
      *(v119 + 4) = v121;
      *v120 = v121;
      *(v119 + 12) = 2114;
      v122 = Date._bridgeToObjectiveC()().super.isa;
      v88(v118, v245);
      *(v119 + 14) = v122;
      v120[1] = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore fireDate is later than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v119, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    else
    {

      v88(v114, v245);
    }

    sub_1000050A4(v241, &unk_100938850, qword_100795AE0);
    v123 = *(v233 + 56);
    v124 = v234;
    v125 = 1;
    v126 = v244;
    return v123(v124, v125, 1, v126);
  }

  v228(v90, v92, v245);
  sub_10041219C(&qword_1009464D0, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v88 = v237;
    v237(v90, v245);
    goto LABEL_24;
  }

  v128 = v243;
  v129 = [v243 trigger];
  objc_opt_self();
  v130 = swift_dynamicCastObjCClass();
  if (!v130)
  {

LABEL_45:
    sub_1000050A4(v86, &unk_100938850, qword_100795AE0);
    v210 = *(v89 + 48);
    v211 = v234;
    *v234 = v238;
    *(v211 + 1) = v128;
    v228(&v211[v210], v90, v245);
    v123 = *(v233 + 56);
    v124 = v211;
    v125 = 0;
LABEL_46:
    v126 = v89;
    return v123(v124, v125, 1, v126);
  }

  v131 = v130;
  v132 = [v130 acknowledgedDate];
  if (v132)
  {
    v133 = v86;
    v134 = v224;
    v135 = v132;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (static Date.< infix(_:_:)())
    {
      v136 = v134;
      v137 = v242[2];
      v138 = v220;
      v139 = v90;
      v140 = v245;
      v137(v220, v139, v245);
      v141 = v221;
      v137(v221, v136, v140);
      v142 = v243;
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v143, v144))
      {
        v145 = v141;
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        *v146 = 138543874;
        v148 = [v142 objectID];
        *(v146 + 4) = v148;
        *v147 = v148;
        *(v146 + 12) = 2114;
        v243 = v143;
        v149 = Date._bridgeToObjectiveC()().super.isa;
        v150 = v138;
        v151 = v245;
        v152 = v237;
        v237(v150, v245);
        *(v146 + 14) = v149;
        v147[1] = v149;
        *(v146 + 22) = 2114;
        v153 = v145;
        v154 = Date._bridgeToObjectiveC()().super.isa;
        v152(v153, v151);
        *(v146 + 24) = v154;
        v147[2] = v154;
        v155 = v243;
        _os_log_impl(&_mh_execute_header, v243, v144, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerDueDateDeltaAlarmsBefore fireDate is earlier than ackDate for alarm. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ ackDate: %{public}@}", v146, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        v156 = v241;
        v157 = v244;
      }

      else
      {

        v212 = v245;
        v152 = v237;
        v237(v141, v245);
        v152(v138, v212);
        v157 = v244;
        v156 = v133;
      }

      v213 = v245;
      v152(v224, v245);
      v152(v235, v213);
      sub_1000050A4(v156, &unk_100938850, qword_100795AE0);
      return (*(v233 + 56))(v234, 1, 1, v157);
    }

    v237(v134, v245);
    v86 = v133;
  }

  v158 = [v131 dueDateDelta];
  v159 = [v158 isEmpty];

  if (v159)
  {
    v160 = v222;
    (v242[2])(v222, v90, v245);
    v161 = v129;
    v162 = Logger.logObject.getter();
    v163 = v90;
    v164 = static os_log_type_t.error.getter();
    v242 = v161;

    v165 = os_log_type_enabled(v162, v164);
    v89 = v244;
    if (v165)
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168 = v245;
      v169 = v167;
      v240 = swift_slowAlloc();
      v248 = v240;
      *v166 = 136446722;
      sub_10041219C(&qword_100937010, &type metadata accessor for Date);
      v170 = dispatch thunk of CustomStringConvertible.description.getter();
      v171 = v160;
      v173 = v172;
      v174 = v168;
      v175 = v162;
      v176 = v237;
      v237(v171, v174);
      v177 = sub_10000668C(v170, v173, &v248);

      *(v166 + 4) = v177;
      *(v166 + 12) = 2114;
      v178 = [v131 dueDateDelta];
      *(v166 + 14) = v178;
      *v169 = v178;
      *(v166 + 22) = 2114;
      v179 = [v131 objectID];
      *(v166 + 24) = v179;
      v169[1] = v179;
      v180 = v175;
      _os_log_impl(&_mh_execute_header, v175, v164, "RDDueDateDeltaAlarmProducerDataSource: unable to calculate dueDate fireDate {finalFireDate: %{public}s, un-inverted dueDateDelta: %{public}@, triggerID: %{public}@}", v166, 0x20u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      sub_10000607C(v240);

      v89 = v244;

      v181 = v243;

      v176(v235, v245);
      v182 = v241;
    }

    else
    {
      v207 = v243;

      v208 = v245;
      v209 = v237;
      v237(v160, v245);
      v209(v163, v208);
      v182 = v86;
    }

    sub_1000050A4(v182, &unk_100938850, qword_100795AE0);
    v123 = *(v233 + 56);
    v124 = v234;
    v125 = 1;
    goto LABEL_46;
  }

  v183 = [v131 dueDateDelta];
  v184 = [v183 inverted];

  v185 = Date._bridgeToObjectiveC()().super.isa;
  v186 = [v184 addedTo:v185];

  v187 = v223;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v128 = v243;

    v237(v187, v245);
    v89 = v244;
    goto LABEL_45;
  }

  v188 = v242[2];
  v189 = v218;
  v190 = v90;
  v191 = v245;
  v188(v218, v190, v245);
  v192 = v219;
  v188(v219, v187, v191);
  v193 = v243;
  v194 = Logger.logObject.getter();
  v195 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v197 = v189;
    v198 = swift_slowAlloc();
    *v196 = 138543874;
    v199 = [v193 objectID];
    *(v196 + 4) = v199;
    *v198 = v199;
    *(v196 + 12) = 2114;
    v243 = v194;
    v200 = Date._bridgeToObjectiveC()().super.isa;
    v201 = v245;
    LODWORD(v242) = v195;
    v202 = v192;
    v203 = v237;
    v237(v197, v245);
    *(v196 + 14) = v200;
    v198[1] = v200;
    *(v196 + 22) = 2114;
    v204 = Date._bridgeToObjectiveC()().super.isa;
    v203(v202, v201);
    *(v196 + 24) = v204;
    v198[2] = v204;
    v205 = v243;
    _os_log_impl(&_mh_execute_header, v243, v242, "RDDueDateDeltaAlarmProducerDataSource: expiredProducerAlarmsBefore dueDate alarm notification has already past. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ calculatedDueDateFireDate: %{public}@}", v196, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();
    v187 = v223;

    v86 = v241;
    v206 = v244;
  }

  else
  {

    v214 = v192;
    v215 = v245;
    v203 = v237;
    v237(v214, v245);
    v203(v189, v215);
    v206 = v244;
  }

  v216 = v245;
  v203(v187, v245);
  v203(v235, v216);
  sub_1000050A4(v86, &unk_100938850, qword_100795AE0);
  return (*(v233 + 56))(v234, 1, 1, v206);
}

void sub_100410310(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v82 = a1;
  v7 = sub_1000F5104(&qword_100945E58, &unk_1007ACAD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v74 = &v67 - v9;
  v77 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v73 = *(v77 - 8);
  v10 = *(v73 + 64);
  __chkstk_darwin(v77);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v67 - v13;
  v80 = type metadata accessor for UUID();
  v70 = *(v80 - 1);
  v14 = v70[8];
  __chkstk_darwin(v80);
  v16 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a2;
  v71 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a2 + 24)];
  v86 = _swiftEmptyArrayStorage;
  v17 = rem_currentRuntimeVersion();
  KeyPath = swift_getKeyPath();
  sub_1003EBD48(KeyPath, v17);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(v86 + 16) >= *(v86 + 24) >> 1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v19 = sub_10000C2B0(v86);
    sub_10075E638();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    [v20 setAffectedStores:0];
    [v20 setPredicate:v19];
    v86 = _swiftEmptySetSingleton;

    sub_100391890(v22);

    sub_1003FE084(v86, &qword_10093F560, &qword_10079C0F0, &unk_100946500, &qword_1007A8758);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 setPropertiesToFetch:isa];

    v24 = NSManagedObjectContext.fetch<A>(_:)();
    if (v4)
    {

      return;
    }

    v25 = v24;
    v82 = 0;
    v69 = v19;
    v26 = v24 >> 62;
    v4 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = a3;
    v68 = v20;
    v81 = v25;
    if (!v4)
    {
      break;
    }

    v79 = v26;
    v86 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v28 = v25 & 0xC000000000000001;
      v29 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        a3 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v28)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_56;
          }

          v30 = *(v25 + 8 * v27 + 32);
        }

        v31 = v30;
        v84 = v30;
        v32 = v82;
        sub_100410D34(&v84, &v83, &v85);
        v82 = v32;
        if (v32)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = *(v86 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v25 = v81;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v27;
        if (a3 == v4)
        {
          v34 = v86;
          v26 = v79;
          goto LABEL_18;
        }
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
LABEL_60:
    v53 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v74;
    if (!v53)
    {
      goto LABEL_61;
    }

LABEL_35:
    v54 = 0;
    v4 = a3 & 0xC000000000000001;
    v55 = a3 & 0xFFFFFFFFFFFFFF8;
    v56 = (v73 + 48);
    v57 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v4)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *(v55 + 16))
        {
          goto LABEL_55;
        }

        v59 = *(a3 + 8 * v54 + 32);
      }

      v60 = v59;
      a3 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      v86 = v59;
      v61 = v82;
      sub_1004110C4(&v86, v81, v78, v16);
      v82 = v61;

      if ((*v56)(v16, 1, v77) == 1)
      {
        sub_1000050A4(v16, &qword_100945E58, &unk_1007ACAD0);
      }

      else
      {
        v62 = v16;
        v63 = v72;
        sub_10041287C(v62, v72);
        sub_10041287C(v63, v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_100367EA4(0, v57[2] + 1, 1, v57);
        }

        v65 = v57[2];
        v64 = v57[3];
        if (v65 >= v64 >> 1)
        {
          v57 = sub_100367EA4(v64 > 1, v65 + 1, 1, v57);
        }

        v57[2] = v65 + 1;
        sub_10041287C(v76, v57 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65);
        v16 = v74;
      }

      ++v54;
      v58 = a3 == v53;
      a3 = v75;
      if (v58)
      {
        goto LABEL_62;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_18:
  v75 = v34;
  v86 = _swiftEmptyArrayStorage;
  v79 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v26)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  a3 = v25 & 0xC000000000000001;
  v36 = (v70 + 1);
  v70 = _swiftEmptyArrayStorage;
  while (v35 != v4)
  {
    if (a3)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v79 + 16))
      {
        goto LABEL_52;
      }

      v37 = *(v81 + 8 * v4 + 32);
    }

    v38 = v37;
    v39 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v40 = objc_opt_self();
    v41 = [v38 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = UUID._bridgeToObjectiveC()().super.isa;
    (*v36)(v16, v80);
    v43 = [v40 objectIDWithUUID:v42];

    ++v4;
    if (v43)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70 = v86;
      v4 = v39;
    }
  }

  v45 = objc_allocWithZone(REMRemindersDataView);
  v46 = v71;
  v47 = [v45 initWithStore:v71];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = [objc_opt_self() defaultFetchOptions];
  v86 = 0;
  v80 = v47;
  v50 = [v47 fetchRemindersWithObjectIDs:v48 fetchOptions:v49 error:&v86];

  v51 = v86;
  if (!v50)
  {
    v66 = v86;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  a3 = v75;
  if (v75 >> 62)
  {
    goto LABEL_60;
  }

  v53 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v74;
  if (v53)
  {
    goto LABEL_35;
  }

LABEL_61:
  v57 = _swiftEmptyArrayStorage;
LABEL_62:

  *v67 = v57;
}

void sub_100410D34(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v30 = a3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = __chkstk_darwin(v4).n128_u64[0];
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 account];
  v37 = v11;
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v34 = 0xD000000000000025;
  v35 = 0x80000001007F8150;
  v31 = v10;
  v12 = [v10 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10041219C(&qword_10093F2A0, &type metadata accessor for UUID);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = *(v5 + 8);
  v14(v9, v4);
  v15._countAndFlagsBits = 8317;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  v16 = v33;
  Optional.tryUnwrap(_:file:line:)();
  v17 = v16;

  if (!v16)
  {
    v18 = v36;
    v19 = objc_opt_self();
    v20 = [v31 reminderIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14(v9, v4);
    v22 = [v19 objectIDWithUUID:isa];

    v34 = 0;
    v23 = [v18 remObjectIDWithError:&v34];
    if (v23)
    {
      v24 = v23;
      v25 = v34;
      v26 = v22;
      v28 = sub_10075DC6C(v31);

      *v30 = v28;
      return;
    }

    v27 = v34;
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *v32 = v17;
}

uint64_t sub_1004110C4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v82 = a3;
  v84 = a4;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v79 - v18;
  v20 = *a1;
  v21 = [*a1 reminderID];
  v22 = sub_100353844(v21, a2);

  if (!v22)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100006654(v32, qword_1009463C0);
    v33 = v20;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "DueDateDeltaDataSourceAlarms: Failed to get REMReminder from remEarlyAlert -- skipping {remEarlyAlert: %@}", v36, 0xCu);
      sub_1000050A4(v37, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_25;
  }

  v81 = v12;
  v83 = v4;
  v23 = [v20 dueDateDelta];
  v24 = [v23 isEmpty];

  if (v24)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100006654(v25, qword_1009463C0);
    v26 = v20;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "DueDateDeltaDataSourceAlarms: Invalid dueDateDelta of 0 for remEarlyAlert -- skipping {remEarlyAlert: %@}", v29, 0xCu);
      sub_1000050A4(v30, &unk_100938E70, &unk_100797230);
    }

LABEL_25:
    v57 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    return (*(*(v57 - 8) + 56))(v84, 1, 1, v57);
  }

  v39 = [v20 dueDateDelta];
  v40 = [v20 acknowledgedDate];
  if (v40)
  {
    v41 = v40;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v42.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v43 = v81;
    (*(v81 + 8))(v19, v11);
  }

  else
  {
    v42.super.isa = 0;
    v43 = v81;
  }

  v44 = [objc_allocWithZone(REMAlarmDueDateDeltaAlertTrigger) initWithDueDateDelta:v39 acknowledgedDate:v42.super.isa];

  v45 = objc_allocWithZone(REMAlarm);
  v80 = v44;
  v46 = [v45 initWithTrigger:v44];
  v90 = [v46 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v86 = 0;
    memset(v85, 0, sizeof(v85));
    sub_1000050A4(v85, &qword_10093A718, &qword_100797B90);
    goto LABEL_20;
  }

  v79 = v46;
  sub_100054B6C(v85, v87);
  v47 = v88;
  v48 = v89;
  sub_10000F61C(v87, v88);
  (*(v48 + 8))(v22, v47, v48);
  if ((*(v43 + 48))(v10, 1, v11) == 1)
  {
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    sub_10000607C(v87);
    v46 = v79;
LABEL_20:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100006654(v49, qword_1009463C0);
    v50 = v20;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v46;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v50;
      *v55 = v50;
      v56 = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "DueDateDeltaDataSourceAlarms: Failed to get fireDate from remEarlyAlert -- skipping {remEarlyAlert: %@}", v54, 0xCu);
      sub_1000050A4(v55, &unk_100938E70, &unk_100797230);

      v46 = v53;
    }

    goto LABEL_25;
  }

  v59 = *(v43 + 32);
  v59(v15, v10, v11);
  v60 = [v22 assignmentContext];
  v61 = [v60 currentAssignment];

  if (v61 && (v61, v62 = *(v82 + 40), v63 = v62, LOBYTE(v62) = sub_1005815C8(v62), v63, (v62 & 1) == 0))
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100006654(v68, qword_1009463C0);
    v69 = v22;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138543362;
      v74 = [v69 objectID];
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v72, 0xCu);
      sub_1000050A4(v73, &unk_100938E70, &unk_100797230);

      v76 = v79;
      v75 = v80;
      v77 = v69;
    }

    else
    {
      v75 = v70;
      v77 = v79;
      v76 = v80;
      v70 = v69;
    }

    (*(v81 + 8))(v15, v11);
    v78 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    (*(*(v78 - 8) + 56))(v84, 1, 1, v78);
    return sub_10000607C(v87);
  }

  else
  {

    v64 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
    v65 = *(v64 + 48);
    v66 = v84;
    v67 = v79;
    *v84 = v22;
    *(v66 + 1) = v67;
    v59(&v66[v65], v15, v11);
    (*(*(v64 - 8) + 56))(v66, 0, 1, v64);
    return sub_10000607C(v87);
  }
}

void sub_100411B4C(unint64_t a1, int a2, char a3, uint64_t a4, void (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      a5(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    a5(0);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_100411DD0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_10001B270(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100411E50(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100411EA4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v28 = v7;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!__CocoaDictionary.Iterator.next()())
    {
      goto LABEL_25;
    }

    v20 = v19;
    swift_unknownObjectRelease();
    v31 = v20;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    swift_dynamicCast();
    v18 = v29;
    v16 = v11;
    v17 = v6;
    if (!v29)
    {
LABEL_25:
      sub_10001B860();
      return;
    }

LABEL_19:
    v31 = v18;
    sub_100409EF8(&v31, a2, &v29);
    if (v3)
    {

      sub_10001B860();

      return;
    }

    if (v29)
    {
      v26 = v29;
      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_100368034(0, v12[2] + 1, 1, v12);
      }

      v23 = v12[2];
      v22 = v12[3];
      v24 = v26;
      if (v23 >= v22 >> 1)
      {
        v25 = sub_100368034((v22 > 1), v23 + 1, 1, v12);
        v24 = v26;
        v12 = v25;
      }

      v12[2] = v23 + 1;
      v13 = &v12[3 * v23];
      *(v13 + 2) = v24;
      v13[6] = v21;
    }

    v7 = v28;
    v11 = v16;
    v6 = v17;
  }

  v14 = v11;
  v15 = v6;
  v16 = v11;
  if (v6)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v5 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_10041219C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1004121E4(unint64_t a1)
{

  v3 = sub_1004129A4(v2, sub_100412180, sub_100403054);

  if (a1 >> 62)
  {
    goto LABEL_88;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v67 = v3;
  v5 = _swiftEmptyArrayStorage;
  v70 = a1;
  v71 = v4;
  v68 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v3 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v3)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_76;
        }

        v10 = *(a1 + 8 * v6 + 32);
      }

      v11 = v10;
      a1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_75:
        __break(1u);
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
LABEL_81:
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
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v12 = [v10 phones];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      v15 = *(v5 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_77;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v5 + 3) >> 1)
      {
        if (*(v13 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v5 = sub_100365788(isUniquelyReferenced_nonNull_native, v18, 1, v5);
        if (*(v13 + 16))
        {
LABEL_20:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v14)
          {
            goto LABEL_84;
          }

          swift_arrayInitWithCopy();

          v8 = v71;
          if (v14)
          {
            v19 = *(v5 + 2);
            v20 = __OFADD__(v19, v14);
            v21 = v19 + v14;
            if (v20)
            {
              goto LABEL_86;
            }

            *(v5 + 2) = v21;
          }

          goto LABEL_6;
        }
      }

      v8 = v71;
      if (v14)
      {
        goto LABEL_78;
      }

LABEL_6:
      ++v6;
      v9 = a1 == v8;
      a1 = v70;
    }

    while (!v9);
  }

  v22 = sub_1001A5660(v5);

  v73[0] = _swiftEmptyArrayStorage;
  v3 = v22 + 56;
  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 56);
  v26 = (v23 + 63) >> 6;
  v69 = v22;

  v27 = 0;
  v28 = REMCRMergeableOrderedSet_ptr;
  if (!v25)
  {
    goto LABEL_30;
  }

  do
  {
LABEL_28:
    while (1)
    {
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (*(v69 + 48) + ((v27 << 10) | (16 * v29)));
      v31 = *v30;
      v32 = v30[1];
      v33 = objc_allocWithZone(v28[377]);

      v34 = String._bridgeToObjectiveC()();

      v35 = [v33 initWithStringValue:v34];

      if (v35)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_30;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v37 = v28;
      v38 = *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v37;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v68 = v73[0];
  }

  while (v25);
  while (1)
  {
LABEL_30:
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v36 >= v26)
    {
      break;
    }

    v25 = *(v3 + 8 * v36);
    ++v27;
    if (v25)
    {
      v27 = v36;
      goto LABEL_28;
    }
  }

  if (v71)
  {
    v39 = 0;
    v40 = a1 & 0xC000000000000001;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v42 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v40)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v39 >= *(v41 + 16))
        {
          goto LABEL_81;
        }

        v43 = *(a1 + 8 * v39 + 32);
      }

      v44 = v43;
      a1 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_80;
      }

      v45 = [v43 emails];
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = *(v46 + 16);
      v3 = *(v42 + 2);
      v48 = v3 + v47;
      if (__OFADD__(v3, v47))
      {
        goto LABEL_82;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      if (v49 && v48 <= *(v42 + 3) >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v3 <= v48)
        {
          v50 = v3 + v47;
        }

        else
        {
          v50 = v3;
        }

        v42 = sub_100365788(v49, v50, 1, v42);
        if (!*(v46 + 16))
        {
LABEL_40:

          if (v47)
          {
            goto LABEL_83;
          }

          goto LABEL_41;
        }
      }

      if ((*(v42 + 3) >> 1) - *(v42 + 2) < v47)
      {
        goto LABEL_85;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v51 = *(v42 + 2);
        v20 = __OFADD__(v51, v47);
        v52 = v51 + v47;
        if (v20)
        {
          goto LABEL_87;
        }

        *(v42 + 2) = v52;
      }

LABEL_41:
      ++v39;
      v9 = a1 == v71;
      a1 = v70;
      if (v9)
      {
        goto LABEL_61;
      }
    }
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_61:
  v53 = sub_1001A5660(v42);

  v54 = v67;
  v3 = *(v67 + 16);
  if (v3)
  {
    v55 = 0;
    v56 = (v67 + 48);
    v57 = _swiftEmptyArrayStorage;
    v72 = v53;
    while (v55 < *(v54 + 16))
    {
      a1 = *(v56 - 1);
      v58 = *v56;
      v73[0] = *(v56 - 2);
      v73[1] = a1;
      v73[2] = v58;
      v59 = v73[0];
      v60 = a1;
      v61 = v58;
      sub_10040D67C(v73, v69, v68, v53);
      if (v62)
      {
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v57;
        if ((v63 & 1) == 0)
        {
          sub_100253948(0, v57[2] + 1, 1);
          v57 = v74;
        }

        a1 = v57[2];
        v64 = v57[3];
        if (a1 >= v64 >> 1)
        {
          sub_100253948((v64 > 1), a1 + 1, 1);
          v57 = v74;
        }

        v57[2] = a1 + 1;
        v65 = &v57[3 * a1];
        v65[4] = v59;
        v65[5] = v60;
        v65[6] = v61;
        v53 = v72;
      }

      else
      {
      }

      ++v55;
      v56 += 3;
      v54 = v67;
      if (v3 == v55)
      {
        goto LABEL_73;
      }
    }

    goto LABEL_79;
  }

  v57 = _swiftEmptyArrayStorage;
LABEL_73:

  return v57;
}

uint64_t sub_10041287C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004129A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, uint64_t, uint64_t))
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12[0] = v8;
  *(v12 + 14) = *(a1 + 78);
  v9 = a3(&v11, a2, a1);
  objc_autoreleasePoolPop(v6);
  return v9;
}

void sub_100412C60(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_100412CB4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100412D88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946550);
  v1 = sub_100006654(v0, qword_100946550);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD000000000000049;
  *(&v8 + 1) = 0x80000001007A87D0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_100413068(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000049;
    *(&v10[0] + 1) = 0x80000001007A87D0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_100413068(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100946550);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10000668C(v8, v9, &v22);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1003533B0();
    v13 = sub_10000668C(v11, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: BEGIN {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v15 = [v4 persistentStoreCoordinator];
  [v14 setPersistentStoreCoordinator:v15];

  [v14 setTransactionAuthor:RDStoreControllerMostRecentTargetTemplateIdentifierByCurrentUserMigrationAuthor];
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v4;
  v16[4] = ObjectType;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004157D8;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1310;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = v14;

  [v20 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004133B0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v35[-v12];
  __chkstk_darwin(v14);
  v16 = &v35[-v15];
  Date.init()();
  v17 = objc_autoreleasePoolPush();
  sub_10041399C(a1, a2, v16, a3, &v40);
  objc_autoreleasePoolPop(v17);
  v39[0] = 0;
  v18 = objc_autoreleasePoolPush();
  sub_10041441C(a1, v39, a2, v16, a3, &v40);
  objc_autoreleasePoolPop(v18);
  v19 = objc_autoreleasePoolPush();
  sub_100414D68(a1, v39, a2, v16, a3, &v40);
  objc_autoreleasePoolPop(v19);
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100946550);
  (*(v7 + 16))(v13, v16, v6);
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v24 = 136315650;
    v40 = a3;
    swift_getMetatypeMetadata();
    v25 = String.init<A>(describing:)();
    v36 = v23;
    v27 = sub_10000668C(v25, v26, &v38);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = sub_1003533B0();
    v30 = sub_10000668C(v28, v29, &v38);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2050;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v32 = v31;
    v33 = *(v7 + 8);
    v33(v10, v6);
    v33(v13, v6);
    *(v24 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v22, v36, "%s: END {store: %{public}s, elapsedSeconds: %{public}f}", v24, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v13, v6);
  }

  v33(v16, v6);
}

void sub_10041399C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v70 = a5;
  v6 = v5;
  v62 = a4;
  v65 = a3;
  v66 = a2;
  v8 = type metadata accessor for Date();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  __chkstk_darwin(v8);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v60 - v12;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v13 = [swift_getObjCClassFromMetadata() entity];
  v14 = [objc_allocWithZone(NSBatchUpdateRequest) initWithEntity:v13];

  swift_getKeyPath();
  v15 = sub_1003F71F0();

  [v14 setPredicate:v15];

  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  v64 = xmmword_100791300;
  *(inited + 16) = xmmword_100791300;
  *&v73 = 0xD00000000000002FLL;
  *(&v73 + 1) = 0x80000001007F8250;
  AnyHashable.init<A>(_:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() expressionForKeyPath:v17];

  *(inited + 96) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
  *(inited + 72) = v18;
  sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 setPropertiesToUpdate:isa];

  [v14 setResultType:1];
  v71 = 0;
  v20 = [a1 executeRequest:v14 error:&v71];
  v21 = v71;
  if (!v20)
  {
    v24 = v71;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_9;
  }

  v22 = v20;
  *(&v74 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
  *&v73 = v22;
  sub_1000060C8(0, &qword_1009465A0, NSBatchUpdateResult_ptr);
  v23 = v21;
  throwingCast<A>(_:as:failureMessage:)();
  if (v5)
  {

    sub_10000607C(&v73);
LABEL_9:
    *v70 = v6;
    return;
  }

  sub_10000607C(&v73);
  v25 = *&v72[0];
  if ([*&v72[0] result])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005EE0(v72, &v73);
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v26 = sub_1000F5104(&qword_100937028, &qword_100791C10);
  throwingCast<A>(_:as:failureMessage:)();
  sub_1000050A4(&v73, &qword_100939ED0, &qword_100791B10);
  v70 = v25;
  v27 = v71;
  v28 = objc_opt_self();
  v29 = swift_initStackObject();
  *(v29 + 16) = v64;
  *&v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v73 + 1) = v30;
  AnyHashable.init<A>(_:)();
  *(v29 + 96) = v26;
  *(v29 + 72) = v27;
  *&v64 = v27;

  sub_10038ED74(v29);
  swift_setDeallocating();
  sub_1000050A4(v29 + 32, &unk_100946590, &qword_100796FF0);
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007953F0;
  *(v32 + 32) = a1;
  sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
  v33 = a1;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v28 mergeChangesFromRemoteContextSave:v31 intoContexts:v34];

  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100006654(v35, qword_100946550);
  v36 = v67;
  v37 = v68;
  (*(v67 + 16))(v69, v65, v68);
  v38 = v64;

  v39 = v66;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v65 = v39;

  LODWORD(v66) = v41;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v36;
    v61 = v40;
    v43 = v38;
    v44 = swift_slowAlloc();
    *&v72[0] = swift_slowAlloc();
    *v44 = 136315906;
    *&v73 = v62;
    swift_getMetatypeMetadata();
    v45 = String.init<A>(describing:)();
    v47 = sub_10000668C(v45, v46, v72);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2082;
    v48 = sub_1003533B0();
    v50 = sub_10000668C(v48, v49, v72);

    *(v44 + 14) = v50;
    *(v44 + 22) = 2050;
    if (v43 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v69;

    *(v44 + 24) = v51;

    *(v44 + 32) = 2050;
    v53 = v63;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v55 = v54;
    v56 = *(v42 + 8);
    v57 = v53;
    v58 = v68;
    v56(v57, v68);
    v56(v52, v58);
    *(v44 + 34) = v55;
    v59 = v61;
    _os_log_impl(&_mh_execute_header, v61, v66, "%s: Copied value of '\\REMCDList.mostRecentTargetTemplateIdentifier' to '\\REMCDList.mostRecentTargetTemplateIdentifierByCurrentUser' via 'NSBatchUpdateRequest' {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v44, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v36 + 8))(v69, v37);
  }
}

uint64_t sub_10041424C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 mostRecentTargetTemplateIdentifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1004142F0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setMostRecentTargetTemplateIdentifier:isa];
}

void sub_10041441C(uint64_t a1, char **a2, void *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v74 = a5;
  v75 = a4;
  v76 = a3;
  v79 = a2;
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v69 - v9;
  v11 = type metadata accessor for UUID();
  v86 = *(v11 - 8);
  v12 = *(v86 + 64);
  __chkstk_darwin(v11);
  v90 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v69 - v15;
  __chkstk_darwin(v16);
  v84 = &v69 - v17;
  v78 = type metadata accessor for Date();
  v77 = *(v78 - 8);
  v18 = *(v77 + 64);
  __chkstk_darwin(v78);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  v24 = sub_10001035C(0);
  v25 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDTemplate();
  v26 = [swift_getObjCClassFromMetadata() entity];
  [v25 setEntity:v26];

  [v25 setAffectedStores:0];
  [v25 setPredicate:v24];
  [v25 setResultType:2];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100791300;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 0x696669746E656469;
  *(v27 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v29 = v89;
  v30 = NSManagedObjectContext.fetch<A>(_:)();
  v31 = v29;
  if (v29)
  {

    *a6 = v29;
    return;
  }

  v32 = v86;
  v33 = v78;
  v34 = v79;
  v70 = v20;
  v73 = v23;
  v94[0] = _swiftEmptySetSingleton;
  v89 = v30;
  if (v30 >> 62)
  {
    goto LABEL_34;
  }

  v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v36 = v84;
  v71 = v31;
  v72 = v25;
  if (v35)
  {
    v33 = 0;
    v87 = v30 & 0xFFFFFFFFFFFFFF8;
    v88 = v30 & 0xC000000000000001;
    v37 = (v32 + 56);
    v85 = (v32 + 48);
    v86 = v35;
    v81 = (v32 + 16);
    v82 = (v32 + 32);
    v80 = (v32 + 8);
    while (1)
    {
      if (v88)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v87 + 16))
        {
          goto LABEL_33;
        }

        v38 = *(v30 + 8 * v33 + 32);
      }

      v25 = v38;
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v35 = _CocoaArrayWrapper.endIndex.getter();
        v30 = v89;
        goto LABEL_5;
      }

      *&v91 = 0x696669746E656469;
      *(&v91 + 1) = 0xEA00000000007265;
      v34 = [v38 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v34)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v91 = 0u;
        v92 = 0u;
      }

      v31 = v90;
      v93[0] = v91;
      v93[1] = v92;
      if (*(&v92 + 1))
      {
        v39 = swift_dynamicCast();
        (*v37)(v10, v39 ^ 1u, 1, v11);
        if ((*v85)(v10, 1, v11) != 1)
        {
          (*v82)(v36, v10, v11);
          (*v81)(v31, v36, v11);
          v40 = v83;
          sub_1003794C4(v83, v31);

          v41 = v40;
          v36 = v84;
          v34 = v80;
          v31 = *v80;
          (*v80)(v41, v11);
          (v31)(v36, v11);
          goto LABEL_9;
        }
      }

      else
      {

        sub_1000050A4(v93, &qword_100939ED0, &qword_100791B10);
        (*v37)(v10, 1, 1, v11);
      }

      sub_1000050A4(v10, &unk_100939D90, "8\n\r");
LABEL_9:
      ++v33;
      v30 = v89;
      if (v32 == v86)
      {
        v42 = v94[0];
        v43 = v79;
        v44 = v78;
        goto LABEL_24;
      }
    }
  }

  v42 = _swiftEmptySetSingleton;
  v43 = v34;
  v44 = v33;
LABEL_24:

  swift_beginAccess();
  v45 = *v43;
  *v43 = v42;

  v46 = v77;
  v47 = v73;
  v48 = v76;
  v49 = v75;
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100006654(v50, qword_100946550);
  (*(v46 + 16))(v47, v49, v44);
  v51 = v48;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v54 = 136315906;
    *&v91 = v74;
    swift_getMetatypeMetadata();
    v55 = String.init<A>(describing:)();
    v57 = sub_10000668C(v55, v56, v94);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_1003533B0();
    v60 = sub_10000668C(v58, v59, v94);

    *(v54 + 14) = v60;
    *(v54 + 22) = 2050;
    swift_beginAccess();
    if (*v43)
    {
      v61 = *(*v43 + 2);
    }

    else
    {
      v61 = 0;
    }

    v62 = v44;
    v63 = v77;
    v64 = v73;
    v65 = v70;
    *(v54 + 24) = v61;
    *(v54 + 32) = 2050;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v67 = v66;
    v68 = *(v63 + 8);
    v68(v65, v62);
    v68(v64, v62);
    *(v54 + 34) = v67;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s: Fetched '\\REMCDTemplate.identifier' of all non-deleted templates in persistent stores {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v54, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v46 + 8))(v47, v44);
  }
}

void sub_100414D68(void *a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v90 = a6;
  v98 = a5;
  v85 = a4;
  v86 = a3;
  v97 = a2;
  v89 = type metadata accessor for Date();
  v88 = *(v89 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v89);
  v84 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = v81 - v10;
  v11 = type metadata accessor for UUID();
  v91 = *(v11 - 8);
  v12 = v91[8];
  __chkstk_darwin(v11);
  v14 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v81 - v16;
  v18 = _s10PredicatesOMa_1();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v22 = sub_10001F6F4();
  sub_1001555B4(v21);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v23 = [objc_allocWithZone(NSFetchRequest) init];
  v24 = [swift_getObjCClassFromMetadata() entity];
  [v23 setEntity:v24];

  [v23 setAffectedStores:0];
  [v23 setPredicate:v22];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100791300;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 32) = 0xD00000000000002FLL;
  *(v25 + 40) = 0x80000001007F8250;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 setPropertiesToFetch:isa];

  v27 = a1;
  v28 = v90;
  v29 = v106;
  v30 = NSManagedObjectContext.fetch<A>(_:)();
  v31 = v29;
  if (v29)
  {
    goto LABEL_2;
  }

  v104 = v17;
  v105 = v11;
  v102 = v14;
  v92 = v30;
  if (v30 >> 62)
  {
    goto LABEL_40;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v33 = v98;
  v34 = v91;
  v83 = v27;
  v81[1] = v31;
  v82 = v23;
  if (v32)
  {
    v27 = v32;
    v23 = v92;
    v99 = v92 & 0xC000000000000001;
    swift_beginAccess();
    v35 = 0;
    v36 = 0;
    v93 = (v23 + 32);
    v94 = v23 & 0xFFFFFFFFFFFFFF8;
    v101 = v34 + 2;
    v106 = (v34 + 1);
    v38 = v104;
    v37 = v105;
    v31 = v102;
    v96 = v27;
    while (1)
    {
      while (1)
      {
        if (v99)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = __OFADD__(v36++, 1);
          if (v40)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v36 >= *(v94 + 16))
          {
            goto LABEL_39;
          }

          v41 = *&v93[8 * v36];
          v40 = __OFADD__(v36++, 1);
          if (v40)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v32 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_5;
          }
        }

        v42 = v41;
        v43 = [v41 mostRecentTargetTemplateIdentifierByCurrentUser];
        if (v43)
        {
          break;
        }

LABEL_25:

        if (v36 == v27)
        {
          goto LABEL_28;
        }
      }

      v100 = v42;
      v44 = v43;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = *v97;
      if (*v97 && *(v45 + 16))
      {
        v95 = v35;
        v46 = *(v45 + 40);
        sub_1001BE27C(&qword_10093B410);

        v47 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v48 = -1 << *(v45 + 32);
        v49 = v47 & ~v48;
        v103 = v45 + 56;
        if ((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          v51 = v91[9];
          v52 = v91[2];
          while (1)
          {
            v53 = v105;
            v52(v31, *(v45 + 48) + v51 * v49, v105);
            sub_1001BE27C(&qword_10093A3E0);
            v54 = dispatch thunk of static Equatable.== infix(_:_:)();
            v55 = v31;
            v56 = *v106;
            (*v106)(v55, v53);
            if (v54)
            {
              break;
            }

            v49 = (v49 + 1) & v50;
            v31 = v102;
            if (((*(v103 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          v38 = v104;
          v37 = v105;
          v56(v104, v105);
          v33 = v98;
          v31 = v102;
          v35 = v95;
          v27 = v96;
          v23 = v92;
          v42 = v100;
          goto LABEL_25;
        }

LABEL_7:

        v38 = v104;
        v37 = v105;
        v35 = v95;
        v23 = v92;
      }

      v39 = v100;
      [v100 setMostRecentTargetTemplateIdentifierByCurrentUser:0];

      (*v106)(v38, v37);
      v40 = __OFADD__(v35++, 1);
      v33 = v98;
      v27 = v96;
      if (v40)
      {
        goto LABEL_38;
      }

      if (v36 == v96)
      {
        goto LABEL_28;
      }
    }
  }

  v35 = 0;
LABEL_28:

  v57 = v83;
  v58 = [v83 hasChanges];
  v59 = v89;
  v60 = v88;
  v61 = v87;
  v62 = v86;
  v63 = v85;
  if (v58)
  {
    v107 = 0;
    if (![v57 save:&v107])
    {
      v80 = v107;
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v23 = v82;
      v28 = v90;
LABEL_2:

      *v28 = v31;
      return;
    }

    v64 = v107;
  }

  v95 = v35;
  if (qword_1009360B8 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_100006654(v65, qword_100946550);
  (*(v60 + 16))(v61, v63, v59);
  v66 = v62;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v107 = v33;
    v108 = v106;
    *v69 = 136315906;
    swift_getMetatypeMetadata();
    v70 = String.init<A>(describing:)();
    v72 = sub_10000668C(v70, v71, &v108);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2082;
    v73 = sub_1003533B0();
    v75 = sub_10000668C(v73, v74, &v108);

    *(v69 + 14) = v75;
    *(v69 + 22) = 2050;
    *(v69 + 24) = v95;
    *(v69 + 32) = 2050;
    v76 = v84;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v78 = v77;
    v79 = *(v60 + 8);
    v79(v76, v59);
    v79(v61, v59);
    *(v69 + 34) = v78;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s: Set '\\REMCDList.mostRecentTargetTemplateIdentifierByCurrentUser' of some shared lists to nil {store: %{public}s, count = %{public}ld, elapsedSeconds: %{public}f}", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v60 + 8))(v61, v59);
  }
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004157F0()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10PredicatesOMa_0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptyArrayStorage;
  sub_1004161B8(v1, v14);
  (*(v7 + 32))(v10, v14, v6);
  KeyPath = swift_getKeyPath();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10039221C(KeyPath, v5);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (v19[2] >= v19[3] >> 1)
  {
    v17 = v19[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v7 + 8))(v10, v6);
  return sub_10000C2B0(v19);
}

uint64_t sub_100415A38@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 publicLinkURLUUID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100415ADC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setPublicLinkURLUUID:isa];
}

void *sub_100415C08()
{
  sub_100026EF4(0, 6, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = *(&off_1008DD4B0 + v0 + 32);
    if (v2 == 4)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x53676E6974726F73;
    }

    if (v2 == 4)
    {
      v4 = 0x80000001007A8870;
    }

    else
    {
      v4 = 0xEC000000656C7974;
    }

    if (v2 == 3)
    {
      v3 = 1701667182;
      v4 = 0xE400000000000000;
    }

    v5 = 0xD000000000000015;
    if (v2 == 1)
    {
      v5 = 0x726F6C6F63;
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x80000001007F8280;
    }

    if (!*(&off_1008DD4B0 + v0 + 32))
    {
      v5 = 0x626D456567646162;
      v6 = 0xEB000000006D656CLL;
    }

    if (*(&off_1008DD4B0 + v0 + 32) <= 2u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*(&off_1008DD4B0 + v0 + 32) <= 2u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v12 = result;
    v10 = result[2];
    v9 = result[3];
    if (v10 >= v9 >> 1)
    {
      sub_100026EF4((v9 > 1), v10 + 1, 1);
      result = v12;
    }

    ++v0;
    result[2] = v10 + 1;
    v11 = &result[2 * v10];
    v11[4] = v7;
    v11[5] = v8;
  }

  while (v0 != 6);
  return result;
}

unint64_t sub_100415DE4(NSString a1, uint64_t a2, Class isa)
{
  v6 = _s10PredicatesOMa_0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = sub_1004157F0();
  type metadata accessor for REMCDPublicTemplate();
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];

  if (isa)
  {
    sub_10003450C(isa);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v12 setPropertiesToFetch:isa];

  [v12 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_10041615C(v9);

    return a1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_13:

    v18 = objc_opt_self();
    v19 = objc_allocWithZone(REMObjectID);
    v20 = UUID._bridgeToObjectiveC()().super.isa;
    a1 = String._bridgeToObjectiveC()();
    v21 = [v19 initWithUUID:v20 entityName:a1];

    [v18 noSuchObjectErrorWithObjectID:v21];
    swift_willThrow();

    sub_10041615C(v9);
    return a1;
  }

  v16 = result;
  v17 = _CocoaArrayWrapper.endIndex.getter();
  result = v16;
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 32);
LABEL_10:
    a1 = v15;

    sub_10041615C(v9);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t _s10PredicatesOMa_0()
{
  result = qword_100946618;
  if (!qword_100946618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10041615C(uint64_t a1)
{
  v2 = _s10PredicatesOMa_0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004161B8(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10041621C(void *a1, uint64_t a2)
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v6 = sub_100013674(qword_1009752E8);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100415C08();
    v9 = sub_100415DE4(a1, a2, v8);
    if (v2)
    {

      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        type metadata accessor for REMCDPublicTemplate();
        v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a2];
        [v3 setAccount:v7];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v3 setPublicLinkURLUUID:isa];
      }

      else
      {
        swift_willThrow();
      }
    }

    else
    {
      v3 = v9;
    }
  }

  else
  {
    [objc_opt_self() noPrimaryActiveCloudKitAccountError];
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_1004163B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  return a1;
}

uint64_t sub_100416468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1004164D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100416550(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t type metadata accessor for RDSuggestedAttributeCache()
{
  result = qword_100946640;
  if (!qword_100946640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100416680()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946628);
  v1 = sub_100006654(v0, qword_100946628);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100416748()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  __chkstk_darwin(v0);
  v19 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  v12 = type metadata accessor for RDSuggestedAttributeCache();
  v22 = v12;
  sub_1000F5104(&qword_1009466B8, &unk_1007A8948);
  v13 = String.init<A>(reflecting:)();
  v18[0] = v14;
  v18[1] = v13;
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000D4A0(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_100007FA0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = *(v12 + 48);
  v16 = *(v12 + 52);
  swift_allocObject();
  result = REMCache.init(cacheQueue:countLimit:)();
  qword_100974E40 = result;
  return result;
}

uint64_t sub_100416A94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return REMCache.init(cacheQueue:countLimit:)();
}

uint64_t sub_100416AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v67 = a8;
  v68 = a7;
  v66 = a6;
  v13 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  v21 = REMCacheContext.object(forKey:)();
  v65 = a1;
  if (v21)
  {
    *&v64 = a3;
    v63 = a2;
    REMStructWrapper.value.getter();

    v22 = v70;
    if (v70[2] && (v23 = sub_1003647E8(v64), (v24 & 1) != 0))
    {
      v25 = *(v22[7] + 8 * v23);
      v26 = *(v25 + 16);

      if (v26 && (v27 = sub_100005F4C(a4, a5), (v28 & 1) != 0))
      {
        v70 = *(*(v25 + 56) + 8 * v27);
      }

      else
      {
        v70 = _swiftEmptySetSingleton;
      }

      (*(v14 + 16))(v17, v66, v13);
      sub_10037E310(v20, v17);
      (*(v14 + 8))(v20, v13);
      v54 = v70;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v25;
      sub_1002C97A8(v54, a4, a5, isUniquelyReferenced_nonNull_native);

      v56 = v69;

      v57 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v22;
      sub_1002C97D4(v56, v64, v57);

      v36 = v69;
    }

    else
    {
      sub_1000F5104(&qword_100946698, &qword_1007A8928);
      inited = swift_initStackObject();
      v62 = xmmword_100791300;
      *(inited + 16) = xmmword_100791300;
      *(inited + 32) = a4;
      *(inited + 40) = a5;
      sub_1000F5104(&qword_1009466A0, &qword_1007A8930);
      v30 = *(v14 + 72);
      v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v62;
      (*(v14 + 16))(v32 + v31, v66, v13);

      v33 = sub_1003932F8(v32);
      swift_setDeallocating();
      (*(v14 + 8))(v32 + v31, v13);
      swift_deallocClassInstance();
      *(inited + 48) = v33;
      v34 = sub_100390588(inited);
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &qword_1009466A8, &qword_1007A8938);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v22;
      sub_1002C97D4(v34, v64, v35);
      v36 = v70;
    }

    v70 = v36;
    v58 = sub_1000F5104(&qword_1009466B0, &qword_1007A8940);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();

    REMStructWrapper.init(_:)();
    v53 = v65;
    REMCacheContext.setObject(_:forKey:)();
  }

  else
  {
    sub_1000F5104(&qword_100946690, &unk_1007A8918);
    v37 = (sub_1000F5104(&qword_100943F10, &qword_1007A4680) - 8);
    v38 = *(*v37 + 72);
    v39 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v40 = swift_allocObject();
    v64 = xmmword_100791300;
    *(v40 + 16) = xmmword_100791300;
    v41 = v40 + v39;
    v63 = v37[14];
    v42 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
    (*(*(v42 - 8) + 16))(v41, a3, v42);
    sub_1000F5104(&qword_100946698, &qword_1007A8928);
    v43 = swift_initStackObject();
    *(v43 + 16) = v64;
    *(v43 + 32) = a4;
    *(v43 + 40) = a5;
    sub_1000F5104(&qword_1009466A0, &qword_1007A8930);
    v44 = *(v14 + 72);
    v45 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    (*(v14 + 16))(v46 + v45, v66, v13);

    v47 = sub_1003932F8(v46);
    swift_setDeallocating();
    (*(v14 + 8))(v46 + v45, v13);
    swift_deallocClassInstance();
    *(v43 + 48) = v47;
    v48 = sub_100390588(v43);
    swift_setDeallocating();
    sub_1000050A4(v43 + 32, &qword_1009466A8, &qword_1007A8938);
    *(v41 + v63) = v48;
    v49 = sub_10039059C(v40);
    swift_setDeallocating();
    sub_1000050A4(v41, &qword_100943F10, &qword_1007A4680);
    swift_deallocClassInstance();
    v70 = v49;
    v50 = sub_1000F5104(&qword_1009466B0, &qword_1007A8940);
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    REMStructWrapper.init(_:)();
    v53 = v65;
    REMCacheContext.setObject(_:forKey:)();
  }

  return v68(v53);
}

void sub_100417174(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v78 = *(v3 - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v83 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  __chkstk_darwin(v9);
  v76 = &v63 - v10;
  v11 = sub_1000F5104(&qword_1009466C0, &qword_1007A8958);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v84 = a2;
  v18 = REMSuggestedAttributeInput.reminderID.getter();
  v19 = REMCacheContext.object(forKey:)();

  if (v19)
  {
    REMStructWrapper.value.getter();

    v20 = v89;
    if (qword_1009360C0 != -1)
    {
LABEL_57:
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100946628);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v85 = v14;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = *(v20 + 16);

      _os_log_impl(&_mh_execute_header, v22, v23, "RDSuggestedAttributeCache: Posting suggestion metric for %ld suggestions", v25, 0xCu);
    }

    else
    {
    }

    v27 = v20 + 64;
    v26 = *(v20 + 64);
    v28 = 1 << *(v20 + 32);
    v81 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & v26;
    v72 = (v28 + 63) >> 6;
    v86 = (v78 + 32);
    v87 = (v78 + 16);
    v80 = (v78 + 88);
    v73 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.recurrence(_:);
    v71 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.dueDayOfWeek(_:);
    v69 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.location(_:);
    v70 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.nlpDueDate(_:);
    v67 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.flagged(_:);
    v68 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.vehicle(_:);
    v66 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.priority(_:);
    v65 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.tag(_:);
    v82 = (v78 + 8);
    v64 = enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.contact(_:);
    v77 = v20;

    v20 = 0;
    v88 = v8;
    v74 = v27;
    v75 = v17;
    v79 = v3;
    while (1)
    {
      if (!v30)
      {
        if (v72 <= v20 + 1)
        {
          v35 = v20 + 1;
        }

        else
        {
          v35 = v72;
        }

        v36 = v35 - 1;
        v37 = v85;
        while (1)
        {
          v34 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v34 >= v72)
          {
            v14 = &unk_1007A8960;
            v54 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
            (*(*(v54 - 8) + 56))(v37, 1, 1, v54);
            v30 = 0;
            v20 = v36;
            goto LABEL_23;
          }

          v30 = *(v27 + 8 * v34);
          ++v20;
          if (v30)
          {
            v20 = v34;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

      v34 = v20;
LABEL_22:
      v38 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v39 = v38 | (v34 << 6);
      v40 = v77;
      v41 = v78;
      v42 = v76;
      (*(v78 + 16))(v76, *(v77 + 48) + *(v78 + 72) * v39, v3);
      v43 = *(*(v40 + 56) + 8 * v39);
      v14 = &unk_1007A8960;
      v44 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
      v45 = *(v44 + 48);
      v46 = *(v41 + 32);
      v37 = v85;
      v46(v85, v42, v3);
      *(v37 + v45) = v43;
      (*(*(v44 - 8) + 56))(v37, 0, 1, v44);

      v8 = v88;
      v27 = v74;
      v17 = v75;
LABEL_23:
      sub_1004179E4(v37, v17);
      v47 = sub_1000F5104(&qword_1009466C8, &unk_1007A8960);
      if ((*(*(v47 - 8) + 48))(v17, 1, v47) == 1)
      {

        return;
      }

      v48 = *&v17[*(v47 + 48)];
      v3 = v79;
      (*v86)(v8, v17, v79);
      v49 = v83;
      (*v87)(v83, v8, v3);
      v50 = (*v80)(v49, v3);
      if (v50 == v81)
      {
        REMSuggestedAttributeInput.list.getter();
        v31 = REMSuggestedList.description.getter();
        v33 = v32;

        sub_100417A54(v88, v48, v31, v33, 0);

        v8 = v88;
        goto LABEL_11;
      }

      if (v50 == v73)
      {
        v51 = REMSuggestedAttributeInput.recurrence.getter();
      }

      else
      {
        if (v50 == v71)
        {
          REMSuggestedAttributeInput.dueDayOfWeek.getter();
          v52 = REMSuggestedWeekDay.description.getter();
          goto LABEL_46;
        }

        if (v50 == v70)
        {
          v55 = REMSuggestedAttributeInput.dueDateTime.getter();
          v57 = v56;
          goto LABEL_33;
        }

        if (v50 == v69 || v50 == v68)
        {
          REMSuggestedAttributeInput.location.getter();
          goto LABEL_45;
        }

        if (v50 == v67)
        {
          v58 = REMSuggestedAttributeInput.flagged.getter();
          if (v58)
          {
            v55 = 1702195828;
          }

          else
          {
            v55 = 0x65736C6166;
          }

          if (v58)
          {
            v57 = 0xE400000000000000;
          }

          else
          {
            v57 = 0xE500000000000000;
          }

LABEL_33:
          v8 = v88;
LABEL_34:
          sub_100417A54(v8, v48, v55, v57, 0);
          goto LABEL_47;
        }

        v8 = v88;
        if (v50 == v66)
        {
          v89 = REMSuggestedAttributeInput.priority.getter();
          sub_100418828();
          v55 = BinaryInteger.description.getter();
          v57 = v62;
          goto LABEL_34;
        }

        if (v50 != v65)
        {
          if (v50 != v64)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return;
          }

          REMSuggestedAttributeInput.contact.getter();
LABEL_45:
          v52 = dispatch thunk of ClassificationLabel.description.getter();
LABEL_46:
          v59 = v52;
          v60 = v53;

          v61 = v59;
          v8 = v88;
          sub_100417A54(v88, v48, v61, v60, 0);
          goto LABEL_47;
        }

        v51 = REMSuggestedAttributeInput.tags.getter();
      }

      sub_1004180E8(v8, v48, v51, 0);
LABEL_47:

LABEL_11:

      (*v82)(v8, v3);
    }
  }
}

uint64_t sub_1004179AC()
{
  REMCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004179E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009466C0, &qword_1007A8958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100417A54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (a5)
  {
    if (qword_1009360C0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100946628);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v69 = v12;
      *v11 = v7[80];
      *(v11 + 4) = sub_10000668C(a3, a4, &v69);
      _os_log_impl(&_mh_execute_header, v9, v10, "RDSuggestedAttributeCache: Comparing cached suggestions with true value {%s} from the commited reminder", v11, 0xCu);
      sub_10000607C(v12);

      v6 = a3;
      v5 = a4;
    }

    else
    {

      v5 = a4;
      v6 = a3;
    }
  }

  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v62 = v7[80];
  while (v15)
  {
    v18 = v17;
LABEL_16:
    v19 = __clz(__rbit64(v15)) | (v18 << 6);
    v20 = (*(a2 + 48) + 16 * v19);
    v21 = v20[1];
    v22 = *(*(a2 + 56) + 8 * v19);
    v23 = *v20 == v6 && v21 == v5;
    v64 = *v20;
    if (!v23)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v70 = 0x74636572726F63;
    v71 = 0xE700000000000000;
    v68 = v21;

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v73 = 0x7475626972747461;
    v74 = 0xE900000000000065;
    REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
    v24 = String._bridgeToObjectiveC()();

    v75 = v24;
    v76 = 0x656372756F73;
    v77 = 0xE600000000000000;
    type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
    sub_10000D4A0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
    Set.description.getter();

    v25 = String._bridgeToObjectiveC()();

    v78 = v25;
    sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
    v26 = static _DictionaryStorage.allocate(capacity:)();

    v28 = v70;
    v27 = v71;
    v29 = isa;

    v30 = v29;
    v31 = sub_100005F4C(v28, v27);
    if (v32)
    {
      goto LABEL_36;
    }

    v7 = v26 + 8;
    *(&v26[8] + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v33 = (*&v26[6] + 16 * v31);
    *v33 = v28;
    v33[1] = v27;
    *(*&v26[7] + 8 * v31) = v30;
    v34 = v26[2];
    v35 = __OFADD__(v34, 1);
    v36 = (*&v34 + 1);
    if (v35)
    {
      goto LABEL_37;
    }

    v26[2] = v36;
    v37 = v73;
    v38 = v74;
    v39 = v75;

    v40 = v39;
    v41 = sub_100005F4C(v37, v38);
    if (v42)
    {
      goto LABEL_36;
    }

    *(v7 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v43 = (*&v26[6] + 16 * v41);
    *v43 = v37;
    v43[1] = v38;
    *(*&v26[7] + 8 * v41) = v40;
    v44 = v26[2];
    v35 = __OFADD__(v44, 1);
    v45 = (*&v44 + 1);
    if (v35)
    {
      goto LABEL_37;
    }

    v26[2] = v45;
    v46 = v76;
    v47 = v77;
    v48 = v78;

    v49 = v48;
    v50 = sub_100005F4C(v46, v47);
    if (v51)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    *(v7 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v52 = (*&v26[6] + 16 * v50);
    *v52 = v46;
    v52[1] = v47;
    *(*&v26[7] + 8 * v50) = v49;
    v53 = v26[2];
    v35 = __OFADD__(v53, 1);
    v54 = (*&v53 + 1);
    if (v35)
    {
      goto LABEL_37;
    }

    v15 &= v15 - 1;
    v26[2] = v54;

    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();

    if (a5)
    {
      v7 = v68;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_100946628);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v69 = v59;
        *v58 = v62;
        v60 = sub_10000668C(v64, v68, &v69);

        *(v58 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v56, v57, "RDSuggestedAttributeCache: Sugestion record {%s}", v58, 0xCu);
        sub_10000607C(v59);
      }

      else
      {
      }
    }

    else
    {
    }

    v17 = v18;
    v6 = a3;
    v5 = a4;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(a2 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1004180E8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = &OBJC_INSTANCE_METHODS__TtP7remindd28RDAccountInitializerObserver_;
  if (a4)
  {
    if (qword_1009360C0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_45;
  }

LABEL_6:
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = a3 + 56;

  v20 = 0;
  v64 = *(v5 + 640);
  v66 = a3;
  v65 = v18;
  v68 = a3 + 56;
  if (v17)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_13:
    v5 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
LABEL_3:
      v6 = type metadata accessor for Logger();
      sub_100006654(v6, qword_100946628);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v72[0] = v10;
        *v9 = *(v5 + 640);
        v11 = Set.description.getter();
        v13 = sub_10000668C(v11, v12, v72);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "RDSuggestedAttributeCache: Comparing cached suggestions with true values {%s} from the commited reminder", v9, 0xCu);
        sub_10000607C(v10);
      }

      goto LABEL_6;
    }

    if (v5 >= v18)
    {
    }

    v17 = *(v14 + 8 * v5);
    ++v20;
    if (v17)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v17)) | (v5 << 6);
        v22 = (*(a2 + 48) + 16 * v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = *(*(a2 + 56) + 8 * v21);
        if (*(a3 + 16))
        {
          v26 = *(a3 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v27 = Hasher._finalize()();
          v28 = -1 << *(a3 + 32);
          v29 = v27 & ~v28;
          if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            do
            {
              v31 = (*(a3 + 48) + 16 * v29);
              if (*v31 == v24 && v31[1] == v23)
              {
                break;
              }

              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                break;
              }

              v29 = (v29 + 1) & v30;
            }

            while (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
          }
        }

        else
        {
          v33 = v22[1];
        }

        isa = Bool._bridgeToObjectiveC()().super.super.isa;
        REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v34 = String._bridgeToObjectiveC()();

        v71 = v34;
        type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
        sub_10000D4A0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
        Set.description.getter();

        v35 = String._bridgeToObjectiveC()();

        sub_1000F5104(&unk_100942ED0, &qword_1007A3958);
        v36 = static _DictionaryStorage.allocate(capacity:)();

        a3 = 0xE700000000000000;

        v37 = isa;
        v38 = sub_100005F4C(0x74636572726F63, 0xE700000000000000);
        if (v39)
        {
          goto LABEL_43;
        }

        v40 = v36 + 8;
        *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
        v41 = (v36[6] + 16 * v38);
        *v41 = 0x74636572726F63;
        v41[1] = 0xE700000000000000;
        *(v36[7] + 8 * v38) = v37;
        v42 = v36[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_44;
        }

        v36[2] = v44;
        a3 = 0xE900000000000065;

        v45 = v71;
        v46 = sub_100005F4C(0x7475626972747461, 0xE900000000000065);
        if (v47)
        {
          goto LABEL_43;
        }

        *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        v48 = (v36[6] + 16 * v46);
        *v48 = 0x7475626972747461;
        v48[1] = 0xE900000000000065;
        *(v36[7] + 8 * v46) = v45;
        v49 = v36[2];
        v43 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v43)
        {
          goto LABEL_44;
        }

        v36[2] = v50;
        a3 = 0xE600000000000000;

        v51 = v35;
        v52 = sub_100005F4C(0x656372756F73, 0xE600000000000000);
        if (v53)
        {
          goto LABEL_43;
        }

        *(v40 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v54 = (v36[6] + 16 * v52);
        *v54 = 0x656372756F73;
        v54[1] = 0xE600000000000000;
        *(v36[7] + 8 * v52) = v51;
        v55 = v36[2];
        v43 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v43)
        {
          goto LABEL_44;
        }

        v17 &= v17 - 1;
        v36[2] = v56;

        type metadata accessor for Analytics();
        sub_1000F5104(&unk_100939250, &unk_100795D30);
        swift_arrayDestroy();
        static Analytics.postEvent(_:payload:duration:)();

        if ((a4 & 1) == 0)
        {

          v20 = v5;
          a3 = v66;
          v18 = v65;
          v14 = a2 + 64;
          v19 = v68;
          if (v17)
          {
            goto LABEL_12;
          }

          goto LABEL_13;
        }

        a3 = v66;
        v19 = v68;
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100006654(v57, qword_100946628);

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v72[0] = v61;
          *v60 = v64;
          v62 = sub_10000668C(v24, v23, v72);

          *(v60 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v58, v59, "RDSuggestedAttributeCache: Sugestion record {%s}", v60, 0xCu);
          sub_10000607C(v61);

          v19 = v68;
        }

        else
        {
        }

        v20 = v5;
        v18 = v65;
        v14 = a2 + 64;
        if (!v17)
        {
          goto LABEL_13;
        }

LABEL_12:
        v5 = v20;
      }
    }
  }
}

unint64_t sub_100418828()
{
  result = qword_1009466D0;
  if (!qword_1009466D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009466D0);
  }

  return result;
}

uint64_t sub_10041887C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009466D8);
  v1 = sub_100006654(v0, qword_1009466D8);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100418944()
{
  v0 = sub_10038D894(&off_1008DD368);
  result = swift_arrayDestroy();
  qword_1009466F0 = v0;
  return result;
}

uint64_t sub_100418990@<X0>(uint64_t a1@<X0>, char *a2@<X4>, uint64_t a3@<X8>)
{
  v120 = a3;
  v5 = sub_1000F5104(&qword_1009467D8, &qword_1007A8A78);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v119 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v118 = &v108 - v9;
  __chkstk_darwin(v10);
  v117 = &v108 - v11;
  v116 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v122 = *(v116 - 1);
  v12 = *(v122 + 64);
  __chkstk_darwin(v116);
  v111 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v110 = &v108 - v15;
  v115 = sub_1000F5104(&qword_100946820, &qword_1007A8AB8);
  v114 = *(v115 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v108 - v17;
  v18 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  v125 = *(v126 - 8);
  v23 = *(v125 + 64);
  __chkstk_darwin(v126);
  v127 = &v108 - v24;
  v25 = sub_1000F5104(&unk_100943F70, &unk_1007A46C0);
  v121 = *(v25 - 8);
  v26 = *(v121 + 64);
  __chkstk_darwin(v25);
  v123 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v108 - v29;
  sub_100247474(&v135);
  if (qword_1009360D0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v124 = sub_100006654(v31, qword_1009466D8);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v109 = v30;
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "loaded model in invocation", v34, 2u);
    v30 = v109;
  }

  v35 = _swiftEmptyArrayStorage;
  if (REMSuggestedAttributesHarvester.Request.allowLocalOverrides.getter())
  {
    v109 = a2;
    v36 = *(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 56);
    (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 48))();
    sub_10042252C(&qword_100946858, &type metadata accessor for REMSuggestedAttributesHarvester.Request);
    v37 = v142;
    Partial<A>.init(dictionary:)();
    v142 = v37;
    if (v37)
    {
      return sub_1002497E0(&v135);
    }

    v35 = sub_100365C78(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v35[2];
    v39 = v35[3];
    if (v40 >= v39 >> 1)
    {
      v35 = sub_100365C78(v39 > 1, v40 + 1, 1, v35);
    }

    v35[2] = v40 + 1;
    (*(v121 + 32))(v35 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v40, v30, v25);
    a2 = v109;
  }

  if (REMSuggestedAttributesHarvester.Request.allowCloudOverrides.getter())
  {
    v41 = a2;
    v42 = *(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 40);
    (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 32))();
    sub_10042252C(&qword_100946858, &type metadata accessor for REMSuggestedAttributesHarvester.Request);
    v43 = v142;
    Partial<A>.init(dictionary:)();
    v44 = v43;
    if (v43)
    {
      sub_1002497E0(&v135);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_100365C78(0, v35[2] + 1, 1, v35);
    }

    v46 = v35[2];
    v45 = v35[3];
    if (v46 >= v45 >> 1)
    {
      v35 = sub_100365C78(v45 > 1, v46 + 1, 1, v35);
    }

    v35[2] = v46 + 1;
    (*(v121 + 32))(v35 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v46, v123, v25);
    a2 = v41;
  }

  else
  {
    v44 = v142;
  }

  (*(v19 + 16))(v22, a2, v18);

  PartialOverride.init(full:partials:)();
  v47 = v44;
  v48 = sub_100420A2C();
  v49 = v44;
  if (v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v48;
  }

  if (v44)
  {
    v44 = 0;
  }

  swift_getKeyPath();
  v51 = v126;
  PartialOverride.subscript.getter();

  if (LOBYTE(v130[0]) == 1)
  {
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v123 = v50;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;

      _os_log_impl(&_mh_execute_header, v52, v53, "SuggestedAttributes harvesting is enabled on iOS: YES", v55, 2u);
    }

    else
    {
    }

    swift_getKeyPath();
    v61 = v113;
    PartialOverride.subscript.getter();

    v62 = v115;
    PartialOverride._full.getter();
    (*(v114 + 8))(v61, v62);
    v63 = *&v130[0];
    v64 = REMSuggestedAttributeInput.title.getter();
    v66 = v65;
    swift_getKeyPath();
    PartialOverride.subscript.getter();

    LOBYTE(v64) = sub_100420C6C(v64, v66, *&v130[0], *(&v130[0] + 1));

    v124 = v63;
    if (v64)
    {
      sub_100010364(&v135, v130, &unk_10093E960, &qword_10079CC10);
      v142 = v44;
      v109 = v47;
      if (v131 == 1)
      {
        v128 = *&v130[0];
        sub_1000F5104(&unk_1009399E0, &qword_100795D00);
        swift_willThrowTypedImpl();

        v121 = 0;
        v130[0] = 0uLL;
      }

      else
      {
        sub_100054B6C(v130, &v132);
        sub_10000F61C(&v132, v134);
        REMSuggestedAttributeInput.title.getter();
        v68 = dispatch thunk of REMTitleEmbedding.vector(for:)();

        sub_10000607C(&v132);
        v130[0] = 0uLL;
        v121 = v68;
        if (v68)
        {
          v69 = v138;
          if (v139)
          {
            v132 = v138;
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            swift_willThrowTypedImpl();
            v70 = 0;
            v71 = 0;
          }

          else
          {

            sub_1002490E8(v69, 0);
            v70 = RDIntentClusterModel.predict(for:)();
            v71 = v72;

            sub_10042251C(v69, 0, &_swift_release);
          }

          *&v130[0] = v70;
          *(&v130[0] + 1) = v71;
        }

        else
        {
          v121 = 0;
        }
      }

      swift_getKeyPath();
      sub_100422444();
      PartialOverride.subscript.getter();

      v73 = v132;
      v74 = v122;
      v75 = *(v122 + 104);
      v76 = v110;
      v77 = v116;
      v75(v110, enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:), v116);
      v78 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v80 = v79;
      v81 = *(v74 + 8);
      v122 = v74 + 8;
      v81(v76, v77);
      if (*(v73 + 16))
      {
        v82 = sub_100005F4C(v78, v80);
        v84 = v83;

        if (v84)
        {
          v85 = *(*(v73 + 56) + v82);
          goto LABEL_49;
        }
      }

      else
      {
      }

      v85 = 1;
LABEL_49:
      v86 = v109;
      v87 = v111;
      v88 = v116;
      v75(v111, enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:), v116);
      v89 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
      v91 = v90;
      v81(v87, v88);
      if (*(v73 + 16))
      {
        v92 = sub_100005F4C(v89, v91);
        v94 = v93;

        v95 = v112;
        if (v94)
        {
          v96 = *(*(v73 + 56) + v92);

          if ((v85 & 1) == 0)
          {
            LODWORD(v122) = 0;
            v98 = 0;
            v116 = _swiftEmptyArrayStorage;
            v99 = _swiftEmptyArrayStorage;
            v100 = v124;
            if (!v96)
            {
              goto LABEL_62;
            }

            goto LABEL_61;
          }

          goto LABEL_57;
        }
      }

      else
      {

        v95 = v112;
      }

      if (!v85)
      {
        LODWORD(v122) = 0;
        v116 = _swiftEmptyArrayStorage;
LABEL_60:
        v100 = v124;
LABEL_61:
        v104 = v140;
        v105 = v141;
        v128 = v140;
        v129 = v141;
        __chkstk_darwin(v97);
        *(&v108 - 4) = v95;
        *(&v108 - 3) = v100;
        *(&v108 - 2) = v130;
        *(&v108 - 1) = v127;
        sub_1002490E8(v104, v105);
        sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
        sub_1000F5104(&qword_100946848, &qword_1007A8BA0);
        Result<>.tryMap<A>(transform:)();
        sub_10042251C(v104, v105, &_swift_release);
        v99 = v132;
        v98 = v133;
        goto LABEL_62;
      }

      LOBYTE(v96) = 1;
LABEL_57:
      v101 = v136;
      v102 = v137;
      v128 = v136;
      v129 = v137;
      __chkstk_darwin(v97);
      v103 = v121;
      *(&v108 - 4) = v95;
      *(&v108 - 3) = v103;
      *(&v108 - 2) = v127;
      sub_1002490E8(v101, v102);
      sub_1000F5104(&qword_100946850, &qword_1007A8BA8);
      sub_1000F5104(&qword_100946848, &qword_1007A8BA0);
      Result<>.tryMap<A>(transform:)();
      v97 = sub_10042251C(v101, v102, &_swift_release);
      v116 = v132;
      LODWORD(v122) = v133;
      if ((v96 & 1) == 0)
      {
        v98 = 0;
        v99 = _swiftEmptyArrayStorage;
LABEL_62:
        LODWORD(v115) = v86 != 0;
        v132 = v123;
        v133 = v86 != 0;
        sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
        Result.eraseToCodableError()();
        v106 = v116;
        v132 = v116;
        v107 = v122;
        v133 = v122;
        Result.eraseToCodableError()();
        v132 = v99;
        v133 = v98;
        Result.eraseToCodableError()();
        REMSuggestedAttributesHarvester.Response.init(heuristicResult:embeddingResult:coreBehaviorResult:)();

        sub_10042251C(v99, v98, &_swift_bridgeObjectRelease);
        sub_10042251C(v106, v107, &_swift_bridgeObjectRelease);
        sub_10042251C(v123, v115, &_swift_bridgeObjectRelease);

        sub_1002497E0(&v135);

        v51 = v126;
        return (*(v125 + 8))(v127, v51);
      }

      goto LABEL_60;
    }

    v67 = v123;
    *&v130[0] = v123;
    BYTE8(v130[0]) = v47 != 0;
    sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
    Result.eraseToCodableError()();
    *&v130[0] = _swiftEmptyArrayStorage;
    BYTE8(v130[0]) = 0;
    Result.eraseToCodableError()();
    *&v130[0] = _swiftEmptyArrayStorage;
    BYTE8(v130[0]) = 0;
    Result.eraseToCodableError()();
    REMSuggestedAttributesHarvester.Response.init(heuristicResult:embeddingResult:coreBehaviorResult:)();

    v59 = v67;
    v60 = v47 != 0;
  }

  else
  {

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "SuggestedAttributes harvesting is enabled on iOS: NO", v58, 2u);
    }

    sub_1004223F0();
    swift_allocError();
    swift_willThrow();
    v59 = v50;
    v60 = v49 != 0;
  }

  sub_10042251C(v59, v60, &_swift_bridgeObjectRelease);
  sub_1002497E0(&v135);
  return (*(v125 + 8))(v127, v51);
}

uint64_t sub_100419BE4@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = a3[1];

  v11 = sub_1004C68F8(a2, v9, v10, 0, 0);

  v14[2] = a4;
  v12 = sub_1003E00D4(sub_1004230A0, v14, v11);

  *a5 = v12;
  return result;
}

uint64_t sub_100419C9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v519 = a3;
  v516 = a2;
  v4 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v523 = *(v4 - 8);
  v524 = v4;
  v5 = *(v523 + 64);
  __chkstk_darwin(v4);
  v499 = &v477 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v497 = &v477 - v8;
  __chkstk_darwin(v9);
  v498 = &v477 - v10;
  __chkstk_darwin(v11);
  v496 = &v477 - v12;
  __chkstk_darwin(v13);
  v494 = &v477 - v14;
  __chkstk_darwin(v15);
  v495 = &v477 - v16;
  __chkstk_darwin(v17);
  v493 = (&v477 - v18);
  v530 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v528 = *(v530 - 8);
  v19 = *(v528 + 64);
  __chkstk_darwin(v530);
  v488 = &v477 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v508 = &v477 - v22;
  __chkstk_darwin(v23);
  v487 = &v477 - v24;
  __chkstk_darwin(v25);
  v507 = &v477 - v26;
  __chkstk_darwin(v27);
  v490 = &v477 - v28;
  __chkstk_darwin(v29);
  v501 = &v477 - v30;
  __chkstk_darwin(v31);
  v486 = &v477 - v32;
  __chkstk_darwin(v33);
  v506 = &v477 - v34;
  __chkstk_darwin(v35);
  v485 = &v477 - v36;
  __chkstk_darwin(v37);
  v505 = &v477 - v38;
  __chkstk_darwin(v39);
  v484 = &v477 - v40;
  __chkstk_darwin(v41);
  v510 = (&v477 - v42);
  __chkstk_darwin(v43);
  v522 = &v477 - v44;
  __chkstk_darwin(v45);
  v483 = &v477 - v46;
  v515 = v47;
  __chkstk_darwin(v48);
  v509 = &v477 - v49;
  v527 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v529 = *(v527 - 8);
  v50 = *(v529 + 64);
  __chkstk_darwin(v527);
  v482 = &v477 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v504 = &v477 - v53;
  __chkstk_darwin(v54);
  v481 = &v477 - v55;
  __chkstk_darwin(v56);
  v503 = &v477 - v57;
  __chkstk_darwin(v58);
  v480 = &v477 - v59;
  __chkstk_darwin(v60);
  v502 = &v477 - v61;
  __chkstk_darwin(v62);
  v489 = &v477 - v63;
  __chkstk_darwin(v64);
  v500 = &v477 - v65;
  __chkstk_darwin(v66);
  v479 = &v477 - v67;
  __chkstk_darwin(v68);
  v511 = (&v477 - v69);
  __chkstk_darwin(v70);
  v478 = &v477 - v71;
  __chkstk_darwin(v72);
  v74 = &v477 - v73;
  __chkstk_darwin(v75);
  v77 = &v477 - v76;
  __chkstk_darwin(v78);
  v80 = &v477 - v79;
  v514 = v81;
  __chkstk_darwin(v82);
  v526 = &v477 - v83;
  v84 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v517 = *(v84 - 8);
  v518 = v84;
  v85 = *(v517 + 64);
  __chkstk_darwin(v84);
  v513 = &v477 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  v89 = &v477 - v88;
  v90 = type metadata accessor for REMSuggestedAttributesHarvester.Request();
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  __chkstk_darwin(v90);
  v94 = &v477 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(a1 + 8);
  v525 = *a1;
  v492 = v95;
  v96 = *(a1 + 32);
  v512 = *(a1 + 24);
  v521 = v96;
  v491 = *(a1 + 40);
  v97 = *(a1 + 48);
  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  PartialOverride._full.getter();
  REMSuggestedAttributesHarvester.Request.reminder.getter();
  (*(v91 + 8))(v94, v90);
  v98 = REMSuggestedAttributeInput.reminderID.getter();

  v516 = v98;
  if (v97 <= 2)
  {
    v507 = v77;
    v508 = v89;
    v132 = v74;
    v133 = v511;
    v134 = v509;
    v135 = v510;
    if (v97)
    {
      v136 = v97 == 1;
      v137 = v529;
      v138 = v530;
      if (v136)
      {
        v139 = qword_1009360C8;

        v140 = v528;
        if (v139 != -1)
        {
          swift_once();
        }

        v508 = qword_100974E40;

        v509 = dispatch thunk of ClassificationLabel.description.getter();
        v142 = v141;

        (*(v140 + 104))(v135, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.location(_:), v138);
        v143 = *(v137 + 104);
        LODWORD(v506) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
        v144 = v527;
        v507 = (v137 + 104);
        v505 = v143;
        (v143)(v132);
        (*(v523 + 104))(v495, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v145 = type metadata accessor for Logger();
        sub_100006654(v145, qword_100946628);
        v146 = (v140 + 16);
        v147 = *(v140 + 16);
        v148 = v484;
        v504 = v146;
        v502 = v147;
        (v147)(v484, v135, v138);
        v149 = *(v137 + 16);
        v150 = v478;
        v511 = v132;
        v500 = v149;
        (v149)(v478, v132, v144);

        v151 = v138;
        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.default.getter();

        v154 = os_log_type_enabled(v152, v153);
        v497 = v142;
        if (v154)
        {
          v155 = swift_slowAlloc();
          LODWORD(v494) = v153;
          v156 = v150;
          v157 = v155;
          v496 = swift_slowAlloc();
          v532 = v496;
          *v157 = 136446722;
          v493 = v152;
          v158 = v142;
          v159 = v151;
          v160 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
          v161 = v137;
          v163 = v162;
          v164 = *(v528 + 8);
          v501 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v503 = v164;
          (v164)(v148, v159);
          v165 = sub_10000668C(v160, v163, &v532);

          *(v157 + 4) = v165;
          *(v157 + 12) = 2082;
          v166 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
          v168 = v167;
          v169 = *(v161 + 8);
          v498 = ((v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v170 = v527;
          v499 = v169;
          (v169)(v156, v527);
          v171 = sub_10000668C(v166, v168, &v532);
          v137 = v161;
          v172 = v528;

          *(v157 + 14) = v171;
          *(v157 + 22) = 2080;
          *(v157 + 24) = sub_10000668C(v509, v158, &v532);
          v173 = v493;
          _os_log_impl(&_mh_execute_header, v493, v494, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v157, 0x20u);
          swift_arrayDestroy();

          v151 = v159;
        }

        else
        {

          v350 = *(v137 + 8);
          v498 = ((v137 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v499 = v350;
          (v350)(v150, v144);
          v351 = v528;
          v352 = *(v528 + 8);
          v501 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v503 = v352;
          (v352)(v148, v151);
          v170 = v144;
          v172 = v351;
        }

        (v502)(v522, v510, v151);
        (v500)(v526, v511, v170);
        v353 = (*(v172 + 80) + 24) & ~*(v172 + 80);
        v354 = (v515 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
        v355 = v137;
        v356 = v172;
        v357 = (*(v137 + 80) + v354 + 16) & ~*(v137 + 80);
        v358 = (v514 + v357 + 7) & 0xFFFFFFFFFFFFFFF8;
        v359 = swift_allocObject();
        v360 = v516;
        *(v359 + 16) = v516;
        (*(v356 + 32))(v359 + v353, v522, v530);
        v361 = (v359 + v354);
        v362 = v497;
        *v361 = v509;
        v361[1] = v362;
        v363 = v526;
        (*(v355 + 32))(v359 + v357, v526, v170);
        v364 = (v359 + v358);
        *v364 = REMCDList.cleanUpAfterLocalObjectMerge();
        v364[1] = 0;
        v365 = v360;
        v366 = v495;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v523 + 8))(v366, v524);
        (v499)(v511, v170);
        (v503)(v510, v530);
        (v505)(v363, v506, v170);
        v367 = v513;
        REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

        v368 = *(sub_1000F5104(&qword_1009413F0, &qword_1007A8C30) + 48);
        v348 = v519;
        (*(v517 + 32))(v519, v367, v518);
        *(v348 + v368) = v525;
        v349 = &enum case for REMSuggestedAttributeOutput.location(_:);
      }

      else
      {
        v235 = qword_1009360C8;

        v236 = v528;
        if (v235 != -1)
        {
          swift_once();
        }

        v506 = qword_100974E40;
        v510 = REMSuggestedWeekDay.description.getter();
        v238 = v237;
        v239 = v505;
        (*(v236 + 104))(v505, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.dueDayOfWeek(_:), v138);
        v240 = *(v137 + 104);
        LODWORD(v508) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
        v241 = v138;
        v242 = v527;
        v509 = v137 + 104;
        v507 = v240;
        (v240)(v133);
        (*(v523 + 104))(v494, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
        if (qword_1009360C0 != -1)
        {
          swift_once();
        }

        v243 = type metadata accessor for Logger();
        sub_100006654(v243, qword_100946628);
        v244 = *(v236 + 16);
        v245 = v485;
        v504 = (v236 + 16);
        v502 = v244;
        (v244)(v485, v239, v241);
        v246 = *(v137 + 16);
        v247 = v236;
        v248 = v479;
        v497 = v246;
        (v246)(v479, v133, v242);

        v249 = v241;
        v250 = Logger.logObject.getter();
        v251 = static os_log_type_t.default.getter();

        v252 = os_log_type_enabled(v250, v251);
        v498 = v238;
        if (v252)
        {
          v253 = v248;
          v254 = swift_slowAlloc();
          v496 = swift_slowAlloc();
          v532 = v496;
          *v254 = 136446722;
          LODWORD(v495) = v251;
          v255 = v249;
          v256 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
          v258 = v257;
          v259 = *(v528 + 8);
          v501 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v503 = v259;
          (v259)(v245, v255);
          v260 = sub_10000668C(v256, v258, &v532);

          *(v254 + 4) = v260;
          *(v254 + 12) = 2082;
          v261 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
          v263 = v262;
          v264 = *(v529 + 8);
          v499 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v265 = v253;
          v242 = v527;
          v500 = v264;
          (v264)(v265, v527);
          v266 = sub_10000668C(v261, v263, &v532);
          v247 = v528;

          *(v254 + 14) = v266;
          *(v254 + 22) = 2080;
          *(v254 + 24) = sub_10000668C(v510, v238, &v532);
          _os_log_impl(&_mh_execute_header, v250, v495, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v254, 0x20u);
          swift_arrayDestroy();

          v267 = v255;
        }

        else
        {

          v369 = *(v529 + 8);
          v499 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v500 = v369;
          (v369)(v248, v242);
          v370 = *(v247 + 8);
          v501 = ((v247 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v503 = v370;
          (v370)(v245, v249);
          v267 = v249;
        }

        (v502)(v522, v505, v267);
        (v497)(v526, v511, v242);
        v371 = (*(v247 + 80) + 24) & ~*(v247 + 80);
        v372 = v247;
        v373 = (v515 + v371 + 7) & 0xFFFFFFFFFFFFFFF8;
        v374 = v529;
        v375 = (*(v529 + 80) + v373 + 16) & ~*(v529 + 80);
        v376 = (v514 + v375 + 7) & 0xFFFFFFFFFFFFFFF8;
        v377 = swift_allocObject();
        v378 = v516;
        *(v377 + 16) = v516;
        (*(v372 + 32))(v377 + v371, v522, v530);
        v379 = (v377 + v373);
        v380 = v498;
        *v379 = v510;
        v379[1] = v380;
        v381 = v526;
        (*(v374 + 32))(v377 + v375, v526, v242);
        v382 = (v377 + v376);
        *v382 = REMCDList.cleanUpAfterLocalObjectMerge();
        v382[1] = 0;
        v383 = v378;
        v384 = v494;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        (*(v523 + 8))(v384, v524);
        (v500)(v511, v242);
        (v503)(v505, v530);
        (v507)(v381, v508, v242);
        v385 = v513;
        REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

        v386 = *(sub_1000F5104(&qword_1009413E8, &unk_1007A13B0) + 48);
        v348 = v519;
        (*(v517 + 32))(v519, v385, v518);
        *(v348 + v386) = v525;
        v349 = &enum case for REMSuggestedAttributeOutput.dueDate(_:);
      }
    }

    else
    {
      v206 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v207 = *(v529 + 104);
      v208 = v527;
      v207(v526, enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:), v527);

      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();
      if (qword_1009360C8 != -1)
      {
        swift_once();
      }

      v512 = qword_100974E40;
      v513 = REMSuggestedList.listIdentifier.getter();
      v210 = v209;
      v211 = v528;
      (*(v528 + 104))(v134, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.list(_:), v530);
      v207(v80, v206, v208);
      (*(v523 + 104))(v493, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v212 = type metadata accessor for Logger();
      sub_100006654(v212, qword_100946628);
      v213 = *(v211 + 16);
      v214 = v483;
      v510 = (v211 + 16);
      v505 = v213;
      (v213)(v483, v134, v530);
      v215 = *(v529 + 16);
      v216 = v507;
      v521 = v80;
      v503 = v215;
      (v215)(v507, v80, v208);

      v217 = v208;
      v218 = Logger.logObject.getter();
      v219 = static os_log_type_t.default.getter();

      v220 = os_log_type_enabled(v218, v219);
      v502 = v210;
      if (v220)
      {
        v221 = swift_slowAlloc();
        v501 = swift_slowAlloc();
        v532 = v501;
        *v221 = 136446722;
        LODWORD(v500) = v219;
        v222 = v217;
        v223 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v225 = v224;
        v226 = *(v528 + 8);
        v506 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v511 = v226;
        (v226)(v214, v530);
        v227 = sub_10000668C(v223, v225, &v532);

        *(v221 + 4) = v227;
        *(v221 + 12) = 2082;
        v228 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v230 = v229;
        v231 = *(v529 + 8);
        v504 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v507 = v231;
        (v231)(v216, v222);
        v232 = sub_10000668C(v228, v230, &v532);
        v233 = v528;

        *(v221 + 14) = v232;
        *(v221 + 22) = 2080;
        *(v221 + 24) = sub_10000668C(v513, v210, &v532);
        _os_log_impl(&_mh_execute_header, v218, v500, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v221, 0x20u);
        swift_arrayDestroy();

        v234 = v530;
      }

      else
      {
        v233 = v211;

        v331 = *(v529 + 8);
        v504 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v507 = v331;
        (v331)(v216, v217);
        v332 = *(v211 + 8);
        v506 = ((v211 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v234 = v530;
        v511 = v332;
        (v332)(v214, v530);
        v222 = v217;
      }

      (v505)(v522, v509, v234);
      (v503)(v526, v521, v222);
      v333 = (*(v233 + 80) + 24) & ~*(v233 + 80);
      v334 = (v515 + v333 + 7) & 0xFFFFFFFFFFFFFFF8;
      v335 = v529;
      v336 = v233;
      v337 = (*(v529 + 80) + v334 + 16) & ~*(v529 + 80);
      v338 = (v514 + v337 + 7) & 0xFFFFFFFFFFFFFFF8;
      v339 = swift_allocObject();
      v340 = v516;
      *(v339 + 16) = v516;
      (*(v336 + 32))(v339 + v333, v522, v234);
      v341 = (v339 + v334);
      v342 = v502;
      *v341 = v513;
      v341[1] = v342;
      v343 = v527;
      (*(v335 + 32))(v339 + v337, v526, v527);
      v344 = (v339 + v338);
      *v344 = REMCDList.cleanUpAfterLocalObjectMerge();
      v344[1] = 0;
      v345 = v340;
      v346 = v493;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v523 + 8))(v346, v524);
      (v507)(v521, v343);
      (v511)(v509, v234);
      v347 = *(sub_1000F5104(&qword_1009413F8, &qword_1007A13C0) + 48);
      v348 = v519;
      (*(v517 + 32))(v519, v508, v518);
      *(v348 + v347) = v525;
      v349 = &enum case for REMSuggestedAttributeOutput.list(_:);
    }
  }

  else if (v97 > 4)
  {
    v175 = v529;
    v174 = v530;
    if (v97 == 5)
    {
      v176 = qword_1009360C8;
      v177 = v492;

      v179 = v527;
      v178 = v528;
      if (v176 != -1)
      {
        swift_once();
      }

      v509 = qword_100974E40;
      v180 = v507;
      (*(v178 + 104))(v507, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.tag(_:), v174);
      v181 = *(v175 + 104);
      v182 = v503;
      LODWORD(v511) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v512 = v175 + 104;
      v510 = v181;
      v181(v503);
      (*(v523 + 104))(v497, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
      v183 = v174;
      v184 = v487;
      v185 = v179;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v186 = type metadata accessor for Logger();
      sub_100006654(v186, qword_100946628);
      v187 = *(v178 + 16);
      v506 = (v178 + 16);
      v504 = v187;
      (v187)(v184, v180, v183);
      v188 = v481;
      v502 = *(v175 + 16);
      (v502)(v481, v182, v179);

      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v189, v190))
      {
        v191 = v177;
        v192 = swift_slowAlloc();
        v499 = swift_slowAlloc();
        v532 = v499;
        *v192 = 136446722;
        v193 = v191;
        v194 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        LODWORD(v498) = v190;
        v195 = v188;
        v196 = v194;
        v198 = v197;
        v199 = *(v528 + 8);
        v505 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v508 = v199;
        (v199)(v184, v183);
        v200 = sub_10000668C(v196, v198, &v532);

        *(v192 + 4) = v200;
        *(v192 + 12) = 2082;
        v201 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v203 = v202;
        v204 = *(v529 + 8);
        v500 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v501 = v204;
        (v204)(v195, v527);
        v205 = sub_10000668C(v201, v203, &v532);

        *(v192 + 14) = v205;
        *(v192 + 22) = 2080;
        *(v192 + 24) = sub_10000668C(v525, v193, &v532);
        _os_log_impl(&_mh_execute_header, v189, v498, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v192, 0x20u);
        swift_arrayDestroy();

        v185 = v527;
      }

      else
      {

        v409 = *(v529 + 8);
        v500 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v501 = v409;
        (v409)(v188, v179);
        v410 = *(v528 + 8);
        v505 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v508 = v410;
        (v410)(v184, v183);
      }

      (v504)(v522, v507, v183);
      v411 = v183;
      (v502)(v526, v503, v185);
      v412 = v528;
      v413 = v529;
      v414 = (*(v528 + 80) + 24) & ~*(v528 + 80);
      v415 = (v515 + v414 + 7) & 0xFFFFFFFFFFFFFFF8;
      v416 = (*(v529 + 80) + v415 + 16) & ~*(v529 + 80);
      v417 = (v514 + v416 + 7) & 0xFFFFFFFFFFFFFFF8;
      v418 = swift_allocObject();
      v419 = v516;
      *(v418 + 16) = v516;
      (*(v412 + 32))(v418 + v414, v522, v411);
      v420 = (v418 + v415);
      v421 = v526;
      v422 = v492;
      *v420 = v525;
      v420[1] = v422;
      v423 = v418 + v416;
      v424 = v527;
      (*(v413 + 32))(v423, v421, v527);
      v425 = (v418 + v417);
      *v425 = REMCDList.cleanUpAfterLocalObjectMerge();
      v425[1] = 0;
      v426 = v419;

      v427 = v497;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v523 + 8))(v427, v524);
      (v501)(v503, v424);
      (v508)(v507, v530);
      (v510)(v421, v511, v424);
      v428 = v513;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v429 = sub_1000F5104(&qword_1009413D8, &unk_1007A13A0);
      v348 = v519;
      v430 = (v519 + *(v429 + 48));
      (*(v517 + 32))(v519, v428, v518);
      *v430 = v525;
      v430[1] = v422;
      v349 = &enum case for REMSuggestedAttributeOutput.tag(_:);
    }

    else
    {
      v298 = qword_1009360C8;

      v299 = v527;
      v300 = v528;
      if (v298 != -1)
      {
        swift_once();
      }

      v506 = qword_100974E40;
      v511 = REMSuggestedContact.name.getter();
      v302 = v301;
      v303 = v508;
      (*(v300 + 104))(v508, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.contact(_:), v174);
      v304 = *(v175 + 104);
      v305 = v504;
      LODWORD(v509) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v510 = (v175 + 104);
      v507 = v304;
      (v304)(v504);
      (*(v523 + 104))(v499, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
      v306 = v488;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v307 = type metadata accessor for Logger();
      sub_100006654(v307, qword_100946628);
      v503 = *(v300 + 16);
      (v503)(v306, v303, v174);
      v308 = *(v175 + 16);
      v309 = v482;
      v501 = v308;
      (v308)(v482, v305, v299);

      v310 = v299;
      v311 = v302;
      v312 = Logger.logObject.getter();
      v313 = static os_log_type_t.default.getter();

      v314 = os_log_type_enabled(v312, v313);
      v497 = v311;
      if (v314)
      {
        v315 = v309;
        v316 = swift_slowAlloc();
        v496 = swift_slowAlloc();
        v532 = v496;
        *v316 = 136446722;
        v317 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        LODWORD(v495) = v313;
        v319 = v318;
        v320 = *(v528 + 8);
        v502 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v505 = v320;
        (v320)(v306, v530);
        v321 = sub_10000668C(v317, v319, &v532);

        *(v316 + 4) = v321;
        *(v316 + 12) = 2082;
        v322 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v324 = v323;
        v325 = *(v529 + 8);
        v498 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v326 = v315;
        v327 = v527;
        v500 = v325;
        (v325)(v326, v527);
        v328 = sub_10000668C(v322, v324, &v532);

        *(v316 + 14) = v328;
        *(v316 + 22) = 2080;
        *(v316 + 24) = sub_10000668C(v511, v311, &v532);
        _os_log_impl(&_mh_execute_header, v312, v495, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v316, 0x20u);
        swift_arrayDestroy();

        v329 = v530;

        v310 = v327;
        v330 = v528;
      }

      else
      {

        v452 = *(v529 + 8);
        v498 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v500 = v452;
        (v452)(v309, v310);
        v453 = v528;
        v454 = *(v528 + 8);
        v502 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v505 = v454;
        (v454)(v306, v174);
        v330 = v453;
        v329 = v174;
      }

      (v503)(v522, v508, v329);
      (v501)(v526, v504, v310);
      v455 = (*(v330 + 80) + 24) & ~*(v330 + 80);
      v456 = (v515 + v455 + 7) & 0xFFFFFFFFFFFFFFF8;
      v457 = v529;
      v458 = (*(v529 + 80) + v456 + 16) & ~*(v529 + 80);
      v459 = v329;
      v460 = (v514 + v458 + 7) & 0xFFFFFFFFFFFFFFF8;
      v461 = swift_allocObject();
      v462 = v516;
      *(v461 + 16) = v516;
      (*(v330 + 32))(v461 + v455, v522, v459);
      v463 = (v461 + v456);
      v464 = v497;
      *v463 = v511;
      v463[1] = v464;
      v465 = v461 + v458;
      v466 = v526;
      v467 = v527;
      (*(v457 + 32))(v465, v526, v527);
      v468 = (v461 + v460);
      *v468 = REMCDList.cleanUpAfterLocalObjectMerge();
      v468[1] = 0;
      v469 = v462;
      v470 = v499;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v523 + 8))(v470, v524);
      (v500)(v504, v467);
      (v505)(v508, v530);
      (v507)(v466, v509, v467);
      v471 = v513;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v472 = *(sub_1000F5104(&qword_1009413D0, &qword_1007A1398) + 48);
      v348 = v519;
      (*(v517 + 32))(v519, v471, v518);
      *(v348 + v472) = v525;
      v349 = &enum case for REMSuggestedAttributeOutput.contact(_:);
    }
  }

  else
  {
    v99 = v529;
    v100 = v530;
    if (v97 == 3)
    {
      v101 = qword_1009360C8;

      v102 = v525;
      v103 = v528;
      if (v101 != -1)
      {
        swift_once();
      }

      v507 = qword_100974E40;
      v104 = 1702195828;
      if ((v102 & 1) == 0)
      {
        v104 = 0x65736C6166;
      }

      v511 = v104;
      if (v102)
      {
        v105 = 0xE400000000000000;
      }

      else
      {
        v105 = 0xE500000000000000;
      }

      v106 = v506;
      (*(v103 + 104))(v506, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.flagged(_:), v100);
      v107 = v99[13];
      v108 = v500;
      LODWORD(v509) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v109 = v527;
      v510 = v99 + 13;
      v508 = v107;
      (v107)(v500);
      (*(v523 + 104))(v496, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
      v110 = v486;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v111 = type metadata accessor for Logger();
      sub_100006654(v111, qword_100946628);
      v112 = *(v103 + 16);
      v505 = (v103 + 16);
      v503 = v112;
      (v112)(v110, v106, v100);
      v113 = v99[2];
      (v113)(v489, v108, v109);

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();

      v116 = os_log_type_enabled(v114, v115);
      v498 = v105;
      if (v116)
      {
        v117 = swift_slowAlloc();
        v497 = v113;
        v118 = v117;
        v532 = swift_slowAlloc();
        *v118 = 136446722;
        v119 = v115;
        v120 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v121 = v100;
        v123 = v122;
        v124 = *(v528 + 8);
        v502 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v504 = v124;
        (v124)(v110, v121);
        v125 = sub_10000668C(v120, v123, &v532);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2082;
        v126 = v489;
        v127 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v129 = v128;
        v130 = *(v529 + 8);
        v499 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v501 = v130;
        (v130)(v126, v527);
        v131 = sub_10000668C(v127, v129, &v532);

        *(v118 + 14) = v131;
        *(v118 + 22) = 2080;
        *(v118 + 24) = sub_10000668C(v511, v105, &v532);
        _os_log_impl(&_mh_execute_header, v114, v119, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v118, 0x20u);
        swift_arrayDestroy();

        v113 = v497;
        v108 = v500;
        v109 = v527;

        v100 = v530;
      }

      else
      {

        v387 = *(v529 + 8);
        v499 = ((v529 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v501 = v387;
        (v387)(v489, v109);
        v388 = *(v528 + 8);
        v502 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v504 = v388;
        (v388)(v110, v100);
      }

      v389 = v522;
      (v503)(v522, v506, v100);
      (v113)(v526, v108, v109);
      v391 = v528;
      v390 = v529;
      v392 = (*(v528 + 80) + 24) & ~*(v528 + 80);
      v393 = (v515 + v392 + 7) & 0xFFFFFFFFFFFFFFF8;
      v394 = (*(v529 + 80) + v393 + 16) & ~*(v529 + 80);
      v395 = (v514 + v394 + 7) & 0xFFFFFFFFFFFFFFF8;
      v396 = swift_allocObject();
      v397 = v516;
      *(v396 + 16) = v516;
      v398 = v389;
      v399 = v530;
      (*(v391 + 32))(v396 + v392, v398, v530);
      v400 = (v396 + v393);
      v401 = v498;
      *v400 = v511;
      v400[1] = v401;
      v403 = v526;
      v402 = v527;
      (*(v390 + 32))(v396 + v394, v526, v527);
      v404 = (v396 + v395);
      *v404 = REMCDList.cleanUpAfterLocalObjectMerge();
      v404[1] = 0;
      v405 = v397;
      v406 = v496;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v523 + 8))(v406, v524);
      (v501)(v500, v402);
      (v504)(v506, v399);
      (v508)(v403, v509, v402);
      v407 = v513;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v408 = *(sub_1000F5104(&qword_100946870, &unk_1007A8C20) + 48);
      v348 = v519;
      (*(v517 + 32))(v519, v407, v518);
      *(v348 + v408) = v525 & 1;
      v349 = &enum case for REMSuggestedAttributeOutput.flagged(_:);
    }

    else
    {
      v268 = qword_1009360C8;

      v269 = v525;
      v270 = v528;
      if (v268 != -1)
      {
        swift_once();
      }

      v509 = qword_100974E40;
      v532 = v269;
      sub_100418828();
      v511 = BinaryInteger.description.getter();
      v272 = v271;
      v273 = v501;
      (*(v270 + 104))(v501, enum case for REMSuggestedAttributesHarvester.CachedSuggestionType.priority(_:), v100);
      v274 = v99[13];
      v275 = v502;
      LODWORD(v507) = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
      v276 = v527;
      v508 = (v99 + 13);
      v506 = v274;
      (v274)(v502);
      (*(v523 + 104))(v498, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v524);
      v277 = v480;
      if (qword_1009360C0 != -1)
      {
        swift_once();
      }

      v278 = type metadata accessor for Logger();
      sub_100006654(v278, qword_100946628);
      v279 = *(v270 + 16);
      v505 = (v270 + 16);
      v503 = v279;
      (v279)(v490, v273, v100);
      v496 = v99[2];
      (v496)(v277, v275, v276);

      v280 = v100;
      v281 = v277;
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.default.getter();

      LODWORD(v495) = v283;
      v284 = os_log_type_enabled(v282, v283);
      v510 = v272;
      if (v284)
      {
        v285 = swift_slowAlloc();
        v494 = swift_slowAlloc();
        v531 = v494;
        *v285 = 136446722;
        v286 = v490;
        v287 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
        v288 = v99;
        v290 = v289;
        v291 = *(v528 + 8);
        v500 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v504 = v291;
        (v291)(v286, v280);
        v292 = sub_10000668C(v287, v290, &v531);

        *(v285 + 4) = v292;
        *(v285 + 12) = 2082;
        v293 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
        v295 = v294;
        v296 = v288[1];
        v497 = ((v288 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v276 = v527;
        v499 = v296;
        (v296)(v281, v527);
        v297 = sub_10000668C(v293, v295, &v531);

        *(v285 + 14) = v297;
        *(v285 + 22) = 2080;
        *(v285 + 24) = sub_10000668C(v511, v510, &v531);
        _os_log_impl(&_mh_execute_header, v282, v495, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v285, 0x20u);
        swift_arrayDestroy();

        v273 = v501;
      }

      else
      {

        v431 = v99[1];
        v497 = ((v99 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v499 = v431;
        (v431)(v281, v276);
        v432 = *(v528 + 8);
        v500 = ((v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v504 = v432;
        (v432)(v490, v280);
      }

      v433 = v522;
      (v503)(v522, v273, v280);
      (v496)(v526, v502, v276);
      v435 = v528;
      v434 = v529;
      v436 = (*(v528 + 80) + 24) & ~*(v528 + 80);
      v437 = (v515 + v436 + 7) & 0xFFFFFFFFFFFFFFF8;
      v438 = (*(v529 + 80) + v437 + 16) & ~*(v529 + 80);
      v520 = (v514 + v438 + 7) & 0xFFFFFFFFFFFFFFF8;
      v439 = swift_allocObject();
      v440 = v516;
      *(v439 + 16) = v516;
      v441 = v433;
      v442 = v530;
      (*(v435 + 32))(v439 + v436, v441, v530);
      v443 = (v439 + v437);
      v444 = v510;
      *v443 = v511;
      v443[1] = v444;
      v446 = v526;
      v445 = v527;
      (*(v434 + 32))(v439 + v438, v526, v527);
      v447 = (v439 + v520);
      *v447 = REMCDList.cleanUpAfterLocalObjectMerge();
      v447[1] = 0;
      v448 = v440;
      v449 = v498;
      dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

      (*(v523 + 8))(v449, v524);
      (v499)(v502, v445);
      (v504)(v501, v442);
      (v506)(v446, v507, v445);
      v450 = v513;
      REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)();

      v451 = *(sub_1000F5104(&qword_100946868, &qword_1007A8C18) + 48);
      v348 = v519;
      (*(v517 + 32))(v519, v450, v518);
      *(v348 + v451) = v525;
      v349 = &enum case for REMSuggestedAttributeOutput.priority(_:);
    }
  }

  v473 = *v349;
  v474 = type metadata accessor for REMSuggestedAttributeOutput();
  v475 = *(v474 - 8);
  (*(v475 + 104))(v348, v473, v474);
  return (*(v475 + 56))(v348, 0, 1, v474);
}

uint64_t sub_10041D2A8(uint64_t a1)
{
  result = sub_10042252C(&qword_100946718, &type metadata accessor for REMSuggestedAttributesHarvester.Invocation);
  *(a1 + 8) = result;
  return result;
}

id sub_10041D300@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = [*a1 objectID];
  v8 = sub_10035386C(v7, a2);

  if (v8)
  {
    v9 = [v8 givenName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1000F5104(&unk_100936FD0, &unk_100795D40);
      v14 = swift_allocObject();
      *(v14 + 1) = xmmword_100791300;
      v14[4] = v10;
      v14[5] = v12;
      goto LABEL_18;
    }
  }

  v15 = [v6 firstName];
  if (v15 || (v15 = [v6 displayName]) != 0)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v24 = v17;
    v25 = v19;
    if (v19)
    {
      v26 = v3;

      v14 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100365788(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        v14 = sub_100365788((v20 > 1), v21 + 1, 1, v14);
      }

      v14[2] = v21 + 1;
      v22 = &v14[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      goto LABEL_17;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_17:
  sub_1000050A4(&v24, &unk_100939E40, &qword_100791BD0);
LABEL_18:

  if (v14[2])
  {
    *a3 = v14;
    a3[1] = v6;
    return v6;
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

char *sub_10041D538(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = *v2;
    v6 = sub_10041EE28(a2);
    v7 = objc_allocWithZone(NSRegularExpression);
    v8 = sub_10031B768(0x4029775C213C3F28, 0xED00002A5D405E5BLL, 0);
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();
      v26 = v6;

      sub_1000F5104(&qword_100946808, &qword_1007A8AB0);
      sub_10000CB48(&qword_100946810, &qword_100946808, &qword_1007A8AB0);
      sub_10013BCF4();
      v11 = _NSRange.init<A, B>(_:in:)();
      v25 = v9;
      v13 = [v9 matchesInString:v10 options:0 range:{v11, v12}];

      sub_1000060C8(0, &qword_100946818, NSTextCheckingResult_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_9:
          result = sub_100253B94(0, v15 & ~(v15 >> 63), 0);
          if (v15 < 0)
          {
            __break(1u);
            return result;
          }

          v16 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = [v17 range];
            v21 = v20;

            v26 = _swiftEmptyArrayStorage;
            v23 = _swiftEmptyArrayStorage[2];
            v22 = _swiftEmptyArrayStorage[3];
            if (v23 >= v22 >> 1)
            {
              sub_100253B94((v22 > 1), v23 + 1, 1);
            }

            ++v16;
            _swiftEmptyArrayStorage[2] = v23 + 1;
            v24 = &_swiftEmptyArrayStorage[2 * v23];
            v24[4] = v19;
            v24[5] = v21;
          }

          while (v15 != v16);

          goto LABEL_3;
        }
      }
    }

LABEL_3:
    __chkstk_darwin(v8);
    sub_1000F5104(&qword_1009467F0, &qword_1007A8AA0);
    sub_1000F5104(&qword_1009467F8, &qword_1007A8AA8);
    sub_10000CB48(&qword_100946800, &qword_1009467F0, &qword_1007A8AA0);
    Sequence.firstMap<A>(_:)();

    result = _swiftEmptyArrayStorage;
    if (v26)
    {
      return v26;
    }
  }

  return result;
}

uint64_t sub_10041D94C(char **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_1009467D8, &qword_1007A8A78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100420E70(*a1, a4, a5);
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = v11;
  }

  sub_1000F5104(&qword_1009467E0, &qword_1007A8A80);
  Result.eraseToCodableError()();
  REMSuggestedAttributesHarvester.MentionsExtractionResponse.init(result:)();
  return sub_10042251C(v12, v5 != 0, &_swift_bridgeObjectRelease);
}

uint64_t sub_10041DA60(uint64_t a1)
{
  result = sub_10042252C(&qword_100946740, &type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10041DAB8@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v49 = a2;
  v67 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v67);
  v64 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = type metadata accessor for REMSuggestedAttributeOutput.Source();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100247474(v72);
  v76 = 0;
  v52 = a1;
  REMSuggestedAttributesHarvester.FeedbackRequest.source.getter();
  v20 = REMSuggestedAttributeOutput.Source.predictors.getter();
  (*(v16 + 8))(v19, v15);
  v21 = 0;
  v22 = *(v20 + 64);
  v55 = v20 + 64;
  v62 = v20;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v57 = v3 + 16;
  v66 = (v3 + 32);
  v61 = v3;
  v63 = (v3 + 88);
  v75 = enum case for REMSuggestedAttributeOutput.Pipeline.nlQueryParser(_:);
  v56 = enum case for REMSuggestedAttributeOutput.Pipeline.kNN(_:);
  v54 = enum case for REMSuggestedAttributeOutput.Pipeline.coreBehavior(_:);
  v51 = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
  v50 = enum case for REMSuggestedAttributeOutput.Pipeline.anchoredBubble(_:);
  v48 = enum case for REMSuggestedAttributeOutput.Pipeline.spotlight(_:);
  v59 = v11;
  v58 = v14;
  for (i = v26; ; v26 = i)
  {
    if (!v25)
    {
      if (v26 <= v21 + 1)
      {
        v28 = v21 + 1;
      }

      else
      {
        v28 = v26;
      }

      v29 = v28 - 1;
      while (1)
      {
        v27 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v27 >= v26)
        {
          v45 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
          (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
          v25 = 0;
          goto LABEL_16;
        }

        v25 = *(v55 + 8 * v27);
        ++v21;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v27 = v21;
LABEL_15:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v62;
    v33 = v61;
    (*(v61 + 16))(v60, *(v62 + 48) + *(v61 + 72) * v31, v67);
    v34 = *(*(v32 + 56) + 8 * v31);
    v35 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    v36 = *(v35 + 48);
    v11 = v59;
    (*(v33 + 32))();
    *&v11[v36] = v34;
    (*(*(v35 - 8) + 56))(v11, 0, 1, v35);

    v29 = v27;
    v14 = v58;
LABEL_16:
    sub_10041FA34(v11, v14);
    v37 = sub_1000F5104(&qword_1009467D0, &unk_1007A8A60);
    if ((*(*(v37 - 8) + 48))(v14, 1, v37) == 1)
    {
      goto LABEL_26;
    }

    v38 = *&v14[*(v37 + 48)];
    v39 = v67;
    v40 = v64;
    (*v66)(v64, v14, v67);
    v41 = (*v63)(v40, v39);
    if (v41 == v75 || v41 == v56)
    {
      goto LABEL_4;
    }

    if (v41 != v54)
    {
      break;
    }

    v53 = v47;
    v42 = v73;
    v43 = v74;
    v68 = v73;
    v69 = v74;
    __chkstk_darwin(v41);
    v44 = v52;
    *&v47[-32] = v38;
    *&v47[-24] = v44;
    *&v47[-16] = &v76;
    sub_1002490E8(v42, v43);
    sub_1000F5104(&qword_10093E9A8, &qword_1007A8A70);
    Result<>.tryMap<A>(transform:)();

    sub_10042251C(v42, v43, &_swift_release);
    sub_100138D4C(v70, v71);
LABEL_5:
    v21 = v29;
  }

  if (v41 == v51 || v41 == v50 || v41 == v48)
  {
LABEL_4:

    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_26:

  if (v76 != 1)
  {
    goto LABEL_29;
  }

  if (qword_100935D08 != -1)
  {
LABEL_31:
    swift_once();
  }

  sub_1000F5104(&unk_10093E978, &qword_1007A1070);
  sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070);
  Subject<>.send()();
LABEL_29:
  REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
  return sub_1002497E0(v72);
}

uint64_t sub_10041E248(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *a1;
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; *a4 = 1)
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (*(a2 + 48) + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];

    REMSuggestedAttributesHarvester.FeedbackRequest.feedbackFactor.getter();
    sub_1004C7804(v16, v17, v18);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10041E38C(uint64_t a1)
{
  result = sub_10042252C(&qword_100946768, &type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10041E3E4()
{
  v0 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  if (qword_1009360C8 != -1)
  {
    swift_once();
  }

  v5 = qword_100974E40;
  v6 = REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.reminder.getter();
  (*(v1 + 104))(v4, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v0);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  dispatch thunk of REMCache.performReadOnly(_:operations:)();

  (*(v1 + 8))(v4, v0);
  return REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
}

uint64_t sub_10041E5A0(uint64_t a1)
{
  result = sub_10042252C(&qword_100946790, &type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10041E5F8@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = sub_1000F5104(&qword_1009467C0, &qword_1007A8A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v69[-v4];
  v72 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v92 = *(v72 - 8);
  v6 = v92[8];
  __chkstk_darwin(v72);
  v91 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v78 = &v69[-v9];
  v82 = v10;
  __chkstk_darwin(v11);
  v13 = &v69[-v12];
  v14 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v94 = *(v14 - 8);
  v15 = v94[8];
  __chkstk_darwin(v14);
  v89 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v69[-v18];
  v80 = v20;
  __chkstk_darwin(v21);
  v23 = &v69[-v22];
  if (qword_1009360C8 != -1)
  {
    swift_once();
  }

  v81 = qword_100974E40;
  v88 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionValue.getter();
  v25 = v24;
  REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionType.getter();
  REMSuggestedAttributesHarvester.RecordSuggestionRequest.pipeline.getter();
  v79 = REMSuggestedAttributesHarvester.RecordSuggestionRequest.reminderID.getter();
  v83 = v5;
  v84 = v2;
  (*(v2 + 104))(v5, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v1);
  if (qword_1009360C0 != -1)
  {
    swift_once();
  }

  v85 = v1;
  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_100946628);
  v27 = v94[2];
  v90 = v23;
  v75 = v27;
  v27(v19, v23, v14);
  v95 = v14;
  v28 = v92;
  v29 = v92[2];
  v30 = v78;
  v93 = v13;
  v31 = v13;
  v32 = v72;
  v74 = v29;
  v29(v78, v31, v72);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v87 = v25;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v96 = v71;
    *v36 = 136446722;
    v70 = v34;
    v37 = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
    v38 = v32;
    v40 = v39;
    v41 = v94[1];
    v76 = (v94 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77 = v41;
    v41(v19, v95);
    v42 = sub_10000668C(v37, v40, &v96);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2082;
    v43 = REMSuggestedAttributeOutput.Pipeline.rawValue.getter();
    v45 = v44;
    v46 = v92[1];
    v73 = (v92 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v46;
    (v46)(v30, v38);
    v47 = sub_10000668C(v43, v45, &v96);

    *(v36 + 14) = v47;
    *(v36 + 22) = 2080;
    *(v36 + 24) = sub_10000668C(v88, v87, &v96);
    _os_log_impl(&_mh_execute_header, v33, v70, "RDSuggestedAttributeCache: Recording %{public}s suggestion from %{public}s with value: %s", v36, 0x20u);
    swift_arrayDestroy();

    v28 = v92;

    v48 = v38;
    v49 = v94;
  }

  else
  {

    v50 = v28[1];
    v73 = (v28 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v78 = v50;
    (v50)(v30, v32);
    v49 = v94;
    v51 = v94[1];
    v76 = (v94 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v77 = v51;
    v51(v19, v95);
    v48 = v32;
  }

  v75(v89, v90, v95);
  v74(v91, v93, v48);
  v52 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v53 = (v80 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v28 + 80) + v53 + 16) & ~*(v28 + 80);
  v55 = (v82 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = v28;
  v57 = swift_allocObject();
  v58 = v79;
  *(v57 + 16) = v79;
  v59 = v57 + v52;
  v60 = v95;
  (v49[4])(v59, v89, v95);
  v61 = (v57 + v53);
  v62 = v87;
  *v61 = v88;
  v61[1] = v62;
  v63 = v57 + v54;
  v64 = v48;
  (v56[4])(v63, v91, v48);
  v65 = (v57 + v55);
  *v65 = REMCDList.cleanUpAfterLocalObjectMerge();
  v65[1] = 0;
  v66 = v58;
  v67 = v83;
  dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

  (*(v84 + 8))(v67, v85);
  (v78)(v93, v64);
  v77(v90, v60);
  return REMSuggestedAttributesHarvester.BooleanResponse.init(result:)();
}

uint64_t sub_10041ED60(uint64_t a1)
{
  result = sub_10042252C(&qword_1009467B8, &type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation);
  *(a1 + 8) = result;
  return result;
}

Swift::Int sub_10041EDBC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004364DC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10041FAC4(v5);
  *a1 = v2;
  return result;
}

char *sub_10041EE28(uint64_t a1)
{
  v2 = objc_allocWithZone(NSRegularExpression);
  v3 = sub_10031B768(2847580, 0xE300000000000000, 0);
  v4 = v3;
  if (!v3)
  {

    sub_10041F8B8(_swiftEmptyArrayStorage);
    return a1;
  }

  sub_1000F5104(&qword_100946808, &qword_1007A8AB0);
  sub_10000CB48(&qword_100946810, &qword_100946808, &qword_1007A8AB0);
  sub_10013BCF4();
  v5 = _NSRange.init<A, B>(_:in:)();
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v4 matchesInString:v8 options:0 range:{v5, v7}];

  sub_1000060C8(0, &qword_100946818, NSTextCheckingResult_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_16:

LABEL_17:
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v4 stringByReplacingMatchesInString:v22 options:0 range:v5 withTemplate:{v7, v23}];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10041F8B8(_swiftEmptyArrayStorage);

    return a1;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_6:
  v25 = v7;
  v26 = v5;
  result = sub_100253B94(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 range];
      v18 = v17;

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_100253B94((v19 > 1), v20 + 1, 1);
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
    }

    while (v11 != v13);

    v5 = v26;
    v7 = v25;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041F16C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2 != 1)
  {
    if (a2 > 1)
    {
      v21 = *(a6 + 16);
      if (v21)
      {
        v22 = (a6 + 40);
        v12 = _swiftEmptyArrayStorage;
        do
        {
          v24 = *(v22 - 1);
          v23 = *v22;

          v25 = v23;
          v26 = v7;
          v27 = sub_10041F4D0(v24, v25, a3, a4, a5);
          v29 = v28;
          v31 = v30;

          if (v26)
          {
            v31 = v39;
            v29 = v40;
          }

          v32 = v41;
          if (!v26)
          {
            v32 = v27;
          }

          v40 = v29;
          v41 = v32;
          v39 = v31;
          if (v32)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100368190(0, v12[2] + 1, 1, v12);
            }

            v7 = v26;
            v34 = v12[2];
            v33 = v12[3];
            if (v34 >= v33 >> 1)
            {
              v12 = sub_100368190((v33 > 1), v34 + 1, 1, v12);
            }

            v12[2] = v34 + 1;
            v35 = &v12[3 * v34];
            v35[4] = v32;
            v35[5] = v29;
            v35[6] = v31;
          }

          else
          {
            v7 = v26;
          }

          v22 += 2;
          --v21;
        }

        while (v21);
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      if (v12[2])
      {
        return v12;
      }
    }

    return 0;
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v9 < result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = result;
  if (v9 == result)
  {
LABEL_8:
    v11 = *(a6 + 16);
    v12 = _swiftEmptyArrayStorage;
    if (v11)
    {
      sub_100253C08(0, v11, 0);
      v12 = _swiftEmptyArrayStorage;
      v13 = (a6 + 40);
      v14 = v10;
      do
      {
        v15 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        v17 = *v13;
        if (v15 >= v16 >> 1)
        {
          v19 = v16 > 1;
          v20 = v17;
          sub_100253C08(v19, v15 + 1, 1);
          v17 = v20;
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        v18 = &_swiftEmptyArrayStorage[3 * v15];
        v18[4] = v17;
        v18[5] = v14;
        v18[6] = 1;
        v13 += 2;
        --v11;
      }

      while (v11);
    }

    return v12;
  }

  if (v9 > result)
  {
    if (*(a5 + 16))
    {
      sub_100364364(result);
    }

    goto LABEL_8;
  }

LABEL_36:
  __break(1u);
  return result;
}

int64_t sub_10041F400(int64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = result;
  if (v3 < result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 == result)
  {
    return v4;
  }

  if (v3 <= result)
  {
    goto LABEL_19;
  }

  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a2 - 1;
  v9 = result + 1;
  v10 = result;
  while (1)
  {
    if (v7)
    {
      result = sub_100364364(v10);
      if (v11)
      {
        v12 = *(*(a3 + 56) + 8 * result);
        v13 = __OFADD__(v6, v12);
        v6 += v12;
        if (v13)
        {
          __break(1u);
          goto LABEL_17;
        }
      }
    }

    if (!v8)
    {
      break;
    }

    --v8;
    v13 = __OFADD__(v9, v6);
    v10 = v9 + v6;
    ++v9;
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  if (__OFSUB__(v10, v4))
  {
    goto LABEL_20;
  }

  if (!__OFADD__(v10 - v4, 1))
  {
    return v4;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_10041F4D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  type metadata accessor for _NSRange(0);
  sub_10000CB48(&unk_100945250, &unk_10093B300, &unk_100797780);
  Sequence.firstMap<A>(_:)();

  result = 0;
  if ((v11 & 1) == 0)
  {
    sub_10041F400(v9, v10, a5);
    v8 = a2;
    return a2;
  }

  return result;
}

unint64_t sub_10041F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Range<>.init(_:in:)();
  if ((v8 & 1) == 0)
  {
    String.subscript.getter();
    v10 = v9;
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v12)
    {
      result = v10;
    }

    if (v10 >> 14 < result >> 14)
    {
      __break(1u);
      return result;
    }

    v31 = a6;
    Substring.subscript.getter();

    sub_1001BBAF8();
    sub_10013BCF4();
    v13 = StringProtocol.commonPrefix<A>(with:options:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = objc_opt_self();
      v18 = String._bridgeToObjectiveC()();

      v19 = [v17 escapedPatternForString:v18];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);

      v24._countAndFlagsBits = 25180;
      v24._object = 0xE200000000000000;
      String.append(_:)(v24);
      v25 = objc_allocWithZone(NSRegularExpression);
      v26 = sub_10031B768(16478, 0xE200000000000000, 0);
      v27 = v26;
      if (v26)
      {
        v28 = String._bridgeToObjectiveC()();
        v29 = [v27 firstMatchInString:v28 options:0 range:{a5, v31}];

        if (v29)
        {
          v30 = [v29 range];

          return v30;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_10041F8B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      if (*v2 >= 2)
      {
        v6 = *(v2 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100368080(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_100368080((v7 > 1), v8 + 1, 1, v3);
        }

        *(v3 + 2) = v8 + 1;
        v4 = &v3[16 * v8];
        *(v4 + 4) = v6;
        *(v4 + 5) = v5 - 1;
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (*(v3 + 2))
  {
    sub_1000F5104(&unk_100943F40, &qword_1007A46A0);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = _swiftEmptyDictionarySingleton;
  }

  v12 = v9;

  sub_1004206DC(v10, 1, &v12);

  return v12;
}

uint64_t sub_10041FA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_1009467C8, &qword_1007A8A58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10041FAC4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F5104(&unk_100943F50, &unk_10079D570);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10041FCE8(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10041FBCC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10041FBCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v20 = a3;
    v7 = *(v4 + 16 * a3);
    v17 = v6;
    v18 = v5;
    while (1)
    {
      v19 = *(&v7 + 1);
      v9 = *v5;
      v8 = *(v5 + 8);

      v10 = v19;

      v11 = v8;
      v12 = NSObject.hashValue.getter();
      v13 = NSObject.hashValue.getter();

      if (v12 >= v13)
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v18 + 16;
        v6 = v17 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v14 = *v5;
      v7 = *(v5 + 16);
      *v5 = v7;
      *(v5 + 16) = v14;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10041FCE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_89:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1004361F4(v10);
      v10 = result;
    }

    v97 = *(v10 + 2);
    if (v97 >= 2)
    {
      while (*v6)
      {
        v98 = v10;
        v10 = (v97 - 1);
        v99 = *&v98[16 * v97];
        v100 = *&v98[16 * v97 + 24];
        sub_1004203BC((*v6 + 16 * v99), (*v6 + 16 * *&v98[16 * v97 + 16]), (*v6 + 16 * v100), v9);
        if (v5)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1004361F4(v98);
        }

        if (v97 - 2 >= *(v98 + 2))
        {
          goto LABEL_115;
        }

        v101 = &v98[16 * v97];
        *v101 = v99;
        *(v101 + 1) = v100;
        result = sub_100436168(v97 - 1);
        v10 = v98;
        v97 = *(v98 + 2);
        if (v97 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v108 = result;
  while (1)
  {
    v11 = v9;
    v109 = v9;
    if (v9 + 1 >= v8)
    {
      v8 = v9 + 1;
    }

    else
    {
      v104 = v10;
      v106 = v5;
      v12 = *v6;
      v13 = (*v6 + 16 * (v9 + 1));
      v15 = *v13;
      v14 = v13[1];
      v16 = v9;
      v111 = 16 * v9;
      v17 = (v12 + 16 * v9);
      v19 = *v17;
      v18 = v17[1];

      v9 = v14;

      v20 = v18;
      v117 = NSObject.hashValue.getter();
      v113 = NSObject.hashValue.getter();

      v21 = v16 + 2;
      v22 = (v17 + 3);
      v115 = v8;
      while (v8 != v21)
      {
        v23 = *v22;
        v24 = v22[1];
        v26 = v22 + 2;
        v25 = v22[2];
        v9 = *(v22 - 1);

        v27 = v25;

        v28 = v23;
        v29 = NSObject.hashValue.getter();
        v30 = NSObject.hashValue.getter();

        ++v21;
        v22 = v26;
        v8 = v115;
        if (v117 < v113 == v29 >= v30)
        {
          v8 = v21 - 1;
          break;
        }
      }

      v31 = v111;
      v10 = v104;
      v5 = v106;
      v6 = a3;
      v7 = v108;
      v11 = v109;
      if (v117 < v113)
      {
        if (v8 < v109)
        {
          goto LABEL_118;
        }

        if (v109 < v8)
        {
          v32 = 16 * v8 - 16;
          v33 = v8;
          v34 = v109;
          do
          {
            if (v34 != --v33)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v35 = *(v36 + v31);
              *(v36 + v31) = *(v36 + v32);
              *(v36 + v32) = v35;
            }

            ++v34;
            v32 -= 16;
            v31 += 16;
          }

          while (v34 < v33);
        }
      }
    }

    v37 = v6[1];
    if (v8 < v37)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_117;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v11 + a4 >= v37)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = v11 + a4;
        }

        if (v9 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_1003658B8((v38 > 1), v39 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v109;
    *(v41 + 5) = v9;
    v42 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v10 + 4);
          v45 = *(v10 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_48:
          if (v47)
          {
            goto LABEL_105;
          }

          v60 = &v10[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_108;
          }

          v66 = &v10[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_112;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v70 = &v10[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_62:
        if (v65)
        {
          goto LABEL_107;
        }

        v73 = &v10[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_69:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
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
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v82 = *&v10[16 * v81 + 32];
        v83 = *&v10[16 * v43 + 40];
        sub_1004203BC((*v6 + 16 * v82), (*v6 + 16 * *&v10[16 * v43 + 32]), (*v6 + 16 * v83), v42);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1004361F4(v10);
        }

        if (v81 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v84 = &v10[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100436168(v43);
        v40 = *(v10 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_103;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_104;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_106;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_109;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v108;
    if (v9 >= v8)
    {
      goto LABEL_89;
    }
  }

  v105 = v10;
  v107 = v5;
  v85 = *v6;
  v86 = v85 + 16 * v8 - 16;
  v87 = v11 - v8;
  v110 = v9;
LABEL_80:
  v114 = v86;
  v116 = v8;
  v88 = *(v85 + 16 * v8);
  v112 = v87;
  while (1)
  {
    v118 = *(&v88 + 1);
    v89 = *v86;
    v90 = *(v86 + 8);

    v91 = v118;

    v92 = v90;
    v93 = NSObject.hashValue.getter();
    v94 = NSObject.hashValue.getter();

    if (v93 >= v94)
    {
LABEL_79:
      v8 = v116 + 1;
      v86 = v114 + 16;
      v9 = v110;
      v87 = v112 - 1;
      if ((v116 + 1) != v110)
      {
        goto LABEL_80;
      }

      v10 = v105;
      v5 = v107;
      v6 = a3;
      v7 = v108;
      if (v110 < v109)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v85)
    {
      break;
    }

    v95 = *v86;
    v88 = *(v86 + 16);
    *v86 = v88;
    *(v86 + 16) = v95;
    v86 -= 16;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1004203BC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v11 >> 4)
  {
    if (a4 != __src || &__src[16 * v12] <= a4)
    {
      v25 = a4;
      memmove(a4, __src, 16 * v12);
      a4 = v25;
    }

    v44 = &a4[16 * v12];
    v13 = a4;
    if (v10 >= 16 && v5 > v6)
    {
      v41 = a4;
      v39 = v6;
LABEL_27:
      v40 = v5 - 16;
      v26 = v4 - 16;
      v27 = v44;
      do
      {
        v28 = v26;
        v29 = v26 + 16;
        v30 = *(v27 - 2);
        v31 = *(v27 - 1);
        v27 -= 16;
        v33 = *(v5 - 2);
        v32 = *(v5 - 1);
        v34 = v5;

        v35 = v31;

        v36 = v32;
        v43 = NSObject.hashValue.getter();
        v37 = NSObject.hashValue.getter();

        if (v43 < v37)
        {
          v24 = v29 == v34;
          v4 = v28;
          if (!v24)
          {
            *v28 = *v40;
          }

          v13 = v41;
          if (v44 <= v41 || (v5 = v40, v40 <= v39))
          {
            v5 = v40;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v29 != v44)
        {
          *v28 = *v27;
        }

        v26 = v28 - 16;
        v44 = v27;
        v5 = v34;
      }

      while (v27 > v41);
      v44 = v27;
      v13 = v41;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[16 * v9] <= a4)
    {
      memmove(a4, __dst, 16 * v9);
    }

    v44 = &v13[16 * v9];
    if (v7 >= 16 && v5 < v4)
    {
      v42 = v4;
      while (1)
      {
        v15 = *v5;
        v14 = *(v5 + 1);
        v16 = v5;
        v18 = *v13;
        v17 = *(v13 + 1);

        v19 = v14;

        v20 = v17;
        v21 = NSObject.hashValue.getter();
        v22 = NSObject.hashValue.getter();

        if (v21 >= v22)
        {
          break;
        }

        v23 = v16;
        v5 = v16 + 16;
        if (v6 != v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 16;
        if (v13 >= v44 || v5 >= v42)
        {
          goto LABEL_19;
        }
      }

      v23 = v13;
      v24 = v6 == v13;
      v13 += 16;
      v5 = v16;
      if (v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v23;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v13 || v5 >= &v13[(v44 - v13 + (v44 - v13 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v5, v13, 16 * ((v44 - v13) / 16));
  }

  return 1;
}

uint64_t sub_1004206DC(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_100364364(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1003703C4(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_100364364(v8);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1003765CC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v40._object = 0x80000001007F8340;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = sub_100364364(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_1003703C4(v33, 1);
        v35 = *a3;
        v29 = sub_100364364(v26);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v37[6] + 8 * v29) = v26;
      *(v37[7] + 8 * v29) = v27;
      v38 = v37[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v37[2] = v39;
      v24 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_26;
  }
}

void *sub_100420A2C()
{
  v0 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  sub_1000F5104(&qword_100946828, &unk_1007A8AC0);
  PartialOverride.subscript.getter();

  if (v11[15] != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  if (v11[14])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000F5104(&qword_10093EDB8, &qword_10079D548);
  v6 = type metadata accessor for REMSuggestedAttributeOutput();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100791300;
  (*(v1 + 104))(v4, enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:), v0);
  REMSuggestedAttributeOutput.Source.init(pipeline:)();
  (*(v7 + 104))(v10 + v9, enum case for REMSuggestedAttributeOutput.pasteboardURL(_:), v6);
  return v10;
}

BOOL sub_100420C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_1009360D8 != -1)
    {
      swift_once();
    }

    v12 = qword_1009466F0;
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 baseLanguageFromLanguage:v14];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    LOBYTE(v16) = sub_100240BDC(v16, v18, v12);

    if ((v16 & 1) == 0 && String.count.getter() < 5)
    {
      return 0;
    }
  }

  v24[0] = a1;
  v24[1] = a2;
  static CharacterSet.whitespaces.getter();
  sub_10013BCF4();
  v20 = StringProtocol.trimmingCharacters(in:)();
  v22 = v21;
  (*(v8 + 8))(v11, v7);

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  return v23 != 0;
}

void *sub_100420E70(char *a1, void *a2, uint64_t a3)
{
  v181 = a2;
  v188 = a1;
  v183 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v185 = *(v183 - 8);
  v4 = *(v185 + 64);
  __chkstk_darwin(v183);
  v182 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for REMSuggestedAttributeOutput();
  v184 = *(v175 - 8);
  v6 = *(v184 + 64);
  __chkstk_darwin(v175);
  v193 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  v189 = *(v8 - 8);
  v190 = v8;
  v9 = *(v189 + 64);
  __chkstk_darwin(v8);
  v11 = (&v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v177 = &v171 - v13;
  __chkstk_darwin(v14);
  v176 = &v171 - v15;
  v16 = type metadata accessor for UUID();
  v186 = *(v16 - 8);
  v187 = v16;
  v17 = *(v186 + 64);
  __chkstk_darwin(v16);
  v178 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v171 - v21;
  v23 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v180 = (&v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v179 = (&v171 - v27);
  __chkstk_darwin(v28);
  v30 = &v171 - v29;
  v192 = a3;
  v31 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
  v32 = [v31 entityName];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = [objc_opt_self() cdEntityName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (v33 == v37 && v35 == v39)
  {

LABEL_5:
    if (qword_1009360D0 != -1)
    {
LABEL_68:
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100006654(v41, qword_1009466D8);
    v43 = v189;
    v42 = v190;
    (*(v189 + 16))(v11, v192, v190);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      v48 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
      (*(v43 + 8))(v11, v42);
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "REMSuggestedAttributesHarvester.MentionsExtractionInvocation should not be called with 'parameters.listID', which belongs to list representation of a template. {parameters.listID: %{public}@}", v46, 0xCu);
      sub_1000050A4(v47, &unk_100938E70, &unk_100797230);
    }

    else
    {

      (*(v43 + 8))(v11, v42);
    }

    return _swiftEmptyArrayStorage;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_5;
  }

  REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
  v50 = v186;
  v49 = v187;
  v51 = *(v186 + 56);
  v173 = v186 + 56;
  v172 = v51;
  v51(v30, 0, 1, v187);
  v52 = OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedEditingSessionID;
  v53 = v22;
  v54 = v188;
  swift_beginAccess();
  v55 = *(v19 + 48);
  sub_100010364(v30, v53, &unk_100939D90, "8\n\r");
  v174 = v52;
  v56 = &v54[v52];
  v57 = v53;
  v58 = v49;
  sub_100010364(v56, v57 + v55, &unk_100939D90, "8\n\r");
  v59 = *(v50 + 48);
  v60 = v59(v57, 1, v49);
  v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
  v171 = v59;
  if (v60 != 1)
  {
    v62 = v179;
    sub_100010364(v57, v179, &unk_100939D90, "8\n\r");
    if (v59(v57 + v55, 1, v49) != 1)
    {
      v63 = v186;
      v64 = v178;
      (*(v186 + 32))(v178, v57 + v55, v58);
      sub_10042252C(&qword_10093A3E0, &type metadata accessor for UUID);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v63 + 8);
      v66(v64, v187);
      sub_1000050A4(v30, &unk_100939D90, "8\n\r");
      v66(v62, v187);
      v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
      v61 = v188;
      sub_1000050A4(v57, &unk_100939D90, "8\n\r");
      if ((v65 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_1000050A4(v30, &unk_100939D90, "8\n\r");
    (*(v186 + 8))(v62, v49);
LABEL_14:
    sub_1000050A4(v57, &unk_10093A3D0, &qword_100795770);
    v61 = v188;
    goto LABEL_23;
  }

  sub_1000050A4(v30, &unk_100939D90, "8\n\r");
  if (v59(v57 + v55, 1, v49) != 1)
  {
    goto LABEL_14;
  }

  sub_1000050A4(v57, &unk_100939D90, "8\n\r");
  v61 = v188;
LABEL_16:
  v67 = *&v61[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
  if (v67)
  {
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    v11 = v67;
    v68 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
    v69 = [v11 remObjectID];
    v70 = static NSObject.== infix(_:_:)();

    if (v70)
    {
      if (qword_1009360D0 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100006654(v71, qword_1009466D8);
      v73 = v189;
      v72 = v190;
      v74 = *(v189 + 16);
      v75 = v176;
      v76 = v192;
      v74(v176, v192, v190);
      v77 = v177;
      v74(v177, v76, v72);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = v77;
        v81 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *&v195 = v181;
        *v81 = 136315394;
        v179 = v78;
        v82 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
        LODWORD(v180) = v79;
        v83 = v82;
        v84 = [v82 description];

        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = *(v73 + 8);
        v88(v75, v72);
        v89 = sub_10000668C(v85, v87, &v195);

        *(v81 + 4) = v89;
        *(v81 + 12) = 2080;
        v90 = v178;
        REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
        v91 = UUID.description.getter();
        v93 = v92;
        (*(v186 + 8))(v90, v187);
        v88(v80, v72);
        v94 = sub_10000668C(v91, v93, &v195);

        *(v81 + 14) = v94;
        v95 = v179;
        _os_log_impl(&_mh_execute_header, v179, v180, "Loading cached list: %s for session: %s", v81, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v169 = *(v73 + 8);
        v169(v77, v72);
        v169(v75, v72);
      }

      v124 = v11;
      v128 = v191;
      goto LABEL_36;
    }

    v61 = v188;
    v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
  }

LABEL_23:
  if (qword_1009360D0 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_100006654(v96, qword_1009466D8);
  v97 = v61;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = v61;
    v190 = swift_slowAlloc();
    *&v195 = v190;
    *v100 = 136315394;
    v102 = v174;
    v103 = &v61[v174];
    v104 = v187;
    if (v171(v103, 1, v187))
    {
      v105 = 0xE300000000000000;
      v106 = 7104878;
    }

    else
    {
      v107 = v186;
      v108 = &v101[v102];
      v109 = v178;
      (*(v186 + 16))(v178, v108, v104);
      v110 = UUID.description.getter();
      v105 = v111;
      (*(v107 + 8))(v109, v104);
      v106 = v110;
    }

    v112 = sub_10000668C(v106, v105, &v195);

    *(v100 + 4) = v112;
    *(v100 + 12) = 2080;
    v11 = &OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList;
    v113 = *&v97[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
    v114 = 7104878;
    if (v113)
    {
      v115 = [v113 remObjectID];
      v116 = [v115 description];

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;
    }

    else
    {
      v118 = 0xE300000000000000;
    }

    v119 = sub_10000668C(v114, v118, &v195);

    *(v100 + 14) = v119;
    _os_log_impl(&_mh_execute_header, v98, v99, "No cached value found for session: %s list: %s", v100, 0x16u);
    swift_arrayDestroy();

    v61 = v188;
  }

  else
  {
  }

  v120 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.listID.getter();
  *&v195 = 0;
  v121 = [v181 fetchListWithObjectID:v120 error:&v195];

  v122 = v195;
  if (!v121)
  {
    v147 = v195;
    v148 = _convertNSErrorToError(_:)();

    *&v191 = v148;
    swift_willThrow();
    return v121;
  }

  v123 = *&v97[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList];
  *&v97[OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_cachedList] = v121;
  v124 = v121;
  v125 = v122;

  v126 = v180;
  REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter();
  v172(v126, 0, 1, v187);
  v127 = v174;
  swift_beginAccess();
  sub_1004222F8(v126, &v61[v127]);
  swift_endAccess();
  v128 = v191;
LABEL_36:
  v129 = [v124 account];

  v130 = [v129 capabilities];
  LODWORD(v129) = [v130 supportsAssignments];

  if (!v129)
  {
    goto LABEL_71;
  }

  v131 = [v124 shareeContext];
  if (!v131)
  {
    goto LABEL_71;
  }

  v132 = v131;
  v133 = [v131 sharees];

  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v134 >> 62)
  {
    v135 = _CocoaArrayWrapper.endIndex.getter();
    if (v135)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v135)
  {
LABEL_70:

LABEL_71:

    return _swiftEmptyArrayStorage;
  }

LABEL_40:
  v180 = v124;
  v189 = v135;
  v136 = sub_1002481DC(v134);
  v137 = v189;
  v190 = v136;
  v138 = 0;
  v139 = _swiftEmptyArrayStorage;
  do
  {
    if ((v134 & 0xC000000000000001) != 0)
    {
      v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v138 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v140 = *(v134 + 8 * v138 + 32);
    }

    v11 = v140;
    v141 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v194 = v140;
    v142 = v128;
    sub_10041D300(&v194, v190, &v195);

    if (v195)
    {
      v191 = v195;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = sub_1003681B4(0, v139[2] + 1, 1, v139);
      }

      v144 = v139[2];
      v143 = v139[3];
      v11 = (v144 + 1);
      v145 = v191;
      if (v144 >= v143 >> 1)
      {
        v146 = sub_1003681B4((v143 > 1), v144 + 1, 1, v139);
        v145 = v191;
        v139 = v146;
      }

      v139[2] = v11;
      *&v139[2 * v144 + 4] = v145;
      v128 = v142;
      v137 = v189;
    }

    ++v138;
  }

  while (v141 != v137);

  *&v195 = v139;

  sub_10041EDBC(&v195);
  v149 = v180;
  if (!v128)
  {
    *&v191 = 0;

    v150 = v195;
    if (!*(v195 + 16))
    {

      return _swiftEmptyArrayStorage;
    }

    sub_1000F5104(&qword_1009467E8, &qword_1007A8A88);
    inited = swift_initStackObject();
    v152 = REMSuggestedAttributesHarvester.MentionsExtractionRequest.reminderTitle.getter();
    v153 = sub_10041D538(v150, v152);

    v154 = *(v153 + 2);
    if (!v154)
    {

      return _swiftEmptyArrayStorage;
    }

    v179 = inited;
    *&v195 = _swiftEmptyArrayStorage;
    sub_100253BC4(0, v154, 0);
    v121 = v195;
    v189 = *(v185 + 104);
    v185 += 104;
    LODWORD(v188) = enum case for REMSuggestedAttributeOutput.Pipeline.heuristic(_:);
    LODWORD(v187) = enum case for REMSuggestedAttributeOutput.assignee(_:);
    v186 = v184 + 104;
    v181 = (v184 + 32);
    v178 = v153;
    v155 = (v153 + 48);
    v156 = v175;
    do
    {
      v157 = *(v155 - 2);
      v192 = *(v155 - 1);
      v190 = *v155;
      v158 = sub_1000F5104(&qword_1009413E0, &unk_1007A8A90);
      v159 = *(v158 + 48);
      v160 = &v193[*(v158 + 64)];
      (v189)(v182, v188, v183);
      v161 = v157;
      REMSuggestedAttributeOutput.Source.init(pipeline:)();
      v162 = [v161 objectID];
      v163 = REMObjectID.codable.getter();

      v164 = v192;
      *&v193[v159] = v163;
      v165 = v190;
      *v160 = v164;
      *(v160 + 1) = v165;
      v166 = v193;
      (*v186)(v193, v187, v156);
      *&v195 = v121;
      v168 = v121[2];
      v167 = v121[3];
      if (v168 >= v167 >> 1)
      {
        sub_100253BC4(v167 > 1, v168 + 1, 1);
        v121 = v195;
      }

      v155 += 3;
      v121[2] = v168 + 1;
      (*(v184 + 32))(v121 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v168, v166, v156);
      --v154;
    }

    while (v154);

    return v121;
  }

  __break(1u);
  return result;
}