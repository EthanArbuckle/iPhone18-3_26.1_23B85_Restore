void sub_10065AAA8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v85[0] = a2;
  v84[2] = v85;
  v84[3] = v10;

  v11 = sub_100759CB4(sub_1006AC71C, v84, a1);
  if (!v4)
  {
    v12 = v11;
    v80 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_65;
    }

LABEL_3:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100945730);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v12 >> 62;
    v81 = v6;
    v91 = v12;
    v77 = v12 >> 62;
    if (v16)
    {
      v5 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v85);
      *(v5 + 6) = 2048;
      if (!v17)
      {
        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_68;
    }

    while (1)
    {
      v25 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = _swiftEmptyArrayStorage;
      if (!v25)
      {
        break;
      }

      v85[0] = _swiftEmptyArrayStorage;
      v14 = v85;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v9 = v12 & 0xC000000000000001;
        v82 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v5 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v9)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *(v82 + 16))
            {
              goto LABEL_63;
            }

            v26 = *(v12 + 8 * v6 + 32);
          }

          v27 = v26;
          sub_1005E5350([v26 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v85[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          v12 = v91;
          if (v5 == v25)
          {
            v6 = v85[0];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_68:
      v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v18;

      *(v5 + 11) = 2082;
      type metadata accessor for REMCDManualSortHint();
      v19 = [swift_getObjCClassFromMetadata() description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20;
      v12 = v91;
      v24 = sub_10000668C(v23, v22, v85);

      *(v5 + 3) = v24;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v85);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v17 = v77;
    }

LABEL_20:
    v28 = v81;
    v8 = sub_1006603FC(v6, v81);

    if (v77)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v9)
    {
      v29 = 0;
      v75 = v12 & 0xFFFFFFFFFFFFFF8;
      v76 = v12 & 0xC000000000000001;
      v73 = v8;
      v74 = v9;
      do
      {
        if (v76)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v29 >= *(v75 + 16))
          {
            goto LABEL_64;
          }

          v30 = *(v12 + 8 * v29 + 32);
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_59:
            __break(1u);
            break;
          }
        }

        v6 = v30;
        v5 = sub_1005E5350([v6 remObjectID]);
        v83 = v31;

        v32 = v28[6];
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = v6;
          if (v32 < 0)
          {
            v34 = v28[6];
          }

          v35 = v5;

          v36 = __CocoaDictionary.lookup(_:)();
          if (!v36)
          {
            goto LABEL_37;
          }

          v86 = v36;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v37 = v85[0];
        }

        else
        {
          if (!*(v32 + 16))
          {
            v37 = 0;
            goto LABEL_39;
          }

          v33 = v6;
          v35 = v5;

          v38 = sub_10002B924(v35);
          if ((v39 & 1) == 0)
          {
LABEL_37:

            v37 = 0;
            goto LABEL_38;
          }

          v37 = *(*(v32 + 56) + 8 * v38);
        }

LABEL_38:
        v6 = v33;
LABEL_39:

        if (!*(v8 + 16) || (v40 = sub_100393C74(v5), (v41 & 1) == 0))
        {
          v5 = v5;

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v79 = v6;
            v6 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v6 = 136446466;
            v48 = *(v80 + 40);
            v87 = *(v80 + 24);
            v88[0] = v48;
            *(v88 + 14) = *(v80 + 54);
            sub_100009DAC(&v87, v85);
            v49 = sub_1000063E8();
            v51 = v50;
            sub_1005812D4(&v87);
            v52 = sub_10000668C(v49, v51, &v86);

            *(v6 + 4) = v52;
            *(v6 + 12) = 2080;
            v53 = [v5 description];
            v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            v57 = v54;
            v8 = v73;
            v58 = sub_10000668C(v57, v56, &v86);

            *(v6 + 14) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v28 = v81;
          goto LABEL_54;
        }

        v78 = v6;
        v42 = *(*(v8 + 56) + 8 * v40);
        if (!*(v81[7] + 16))
        {
          v59 = v42;
LABEL_50:
          v5 = v5;
          v6 = v80;

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v62 = 136446466;
            v63 = *(v80 + 40);
            v89 = *(v80 + 24);
            v90[0] = v63;
            *(v90 + 14) = *(v80 + 54);
            sub_100009DAC(&v89, v85);
            v72 = v61;
            v64 = sub_1000063E8();
            v66 = v65;
            sub_1005812D4(&v89);
            v67 = sub_10000668C(v64, v66, &v86);

            *(v62 + 4) = v67;
            *(v62 + 12) = 2080;
            v68 = [v5 description];
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v70;

            v71 = sub_10000668C(v69, v6, &v86);

            *(v62 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v60, v72, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v62, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v28 = v81;
          v8 = v73;
LABEL_54:
          v9 = v74;
          goto LABEL_55;
        }

        v43 = v5;
        v6 = v42;

        sub_10002B924(v43);
        v45 = v44;

        if ((v45 & 1) == 0)
        {
          goto LABEL_50;
        }

        v28 = v81;
        v8 = v73;
LABEL_55:
        ++v29;
        v12 = v91;
      }

      while (v83 != v9);
    }
  }
}

void sub_10065B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), char **a6, uint64_t *a7, uint64_t (*a8)(void *, uint64_t), uint64_t (*a9)(id))
{
  v109 = a7;
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(v9 + 72);
  v103[0] = a2;
  v101 = v103;
  v102 = v18;

  v19 = a5(a4, v100, a1);
  if (!v10)
  {
    v20 = v19;
    v93 = v17;
    v97 = v16;
    v21 = v109;
    v94 = v9;
    v95 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_62;
    }

LABEL_3:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100945730);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = v20 >> 62;
    v98 = a6;
    v99 = v20;
    v92 = v20 >> 62;
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v26 = 136446978;
      *(v26 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v103);
      *(v26 + 12) = 2048;
      if (!v25)
      {
        v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_65;
    }

    while (1)
    {
      a6 = v94;
      v26 = v25 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = _swiftEmptyArrayStorage;
      if (!v26)
      {
        break;
      }

      v103[0] = _swiftEmptyArrayStorage;
      v23 = v103;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v26 & 0x8000000000000000) == 0)
      {
        v34 = 0;
        v97 = v99 & 0xFFFFFFFFFFFFFF8;
        a6 = &selRef_persistentStoreForIdentifier_;
        while (1)
        {
          v20 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if ((v99 & 0xC000000000000001) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v36 = v109;
          }

          else
          {
            v36 = v109;
            if (v34 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v35 = *(v99 + 8 * v34 + 32);
          }

          sub_1005E3810([v35 remObjectID], v98, v36);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v103[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v34;
          if (v20 == v26)
          {
            v33 = v103[0];
            v21 = v109;
            a6 = v94;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_65:
      v20 = v99;
      v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v26 + 14) = v27;

      *(v26 + 22) = 2082;
      sub_1000060C8(0, v98, v21);
      v28 = [swift_getObjCClassFromMetadata() description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_10000668C(v29, v31, v103);
      v21 = v109;

      *(v26 + 24) = v32;
      *(v26 + 32) = 2082;
      *(v26 + 34) = sub_10000668C(v93, v97, v103);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v26, 0x2Au);
      swift_arrayDestroy();

      v25 = v92;
    }

LABEL_20:
    v37 = v95;
    v38 = v98;
    v39 = v99;
    v93 = a8(v33, v95);

    if (v92)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v40)
    {
      v20 = 0;
      v91 = v40;
      do
      {
        if ((v99 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v42 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v20 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v41 = *(v39 + 8 * v20 + 32);
          v42 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_56:
            __break(1u);
            break;
          }
        }

        v97 = v42;
        v43 = v41;
        v44 = sub_1005E3810([v43 remObjectID], v38, v21);

        v45 = *(v37 + 48);
        a8 = v43;
        if ((v45 & 0xC000000000000001) != 0)
        {
          v46 = v44;

          v47 = __CocoaDictionary.lookup(_:)();
          if (!v47)
          {
            goto LABEL_35;
          }

          v104 = v47;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v48 = v103[0];
        }

        else
        {
          if (!*(v45 + 16))
          {
            goto LABEL_36;
          }

          v46 = v44;

          v49 = sub_10002B924(v46);
          if ((v50 & 1) == 0)
          {
LABEL_35:

LABEL_36:
            v48 = 0;
            goto LABEL_37;
          }

          v48 = *(*(v45 + 56) + 8 * v49);
        }

LABEL_37:

        if (!*(v93 + 16) || (v51 = a9(v44), (v52 & 1) == 0))
        {
          v58 = v44;

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *v61 = 136446466;
            v62 = *(a6 + 5);
            v105 = *(a6 + 3);
            v106[0] = v62;
            *(v106 + 14) = *(a6 + 54);
            sub_100009DAC(&v105, v103);
            v63 = sub_1000063E8();
            v65 = v64;
            sub_1005812D4(&v105);
            v66 = sub_10000668C(v63, v65, &v104);

            *(v61 + 4) = v66;
            *(v61 + 12) = 2080;
            v67 = [v58 description];
            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            v71 = v68;
            a6 = v94;
            v72 = sub_10000668C(v71, v70, &v104);
            v21 = v109;

            *(v61 + 14) = v72;
            _os_log_impl(&_mh_execute_header, v59, v60, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v61, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v73 = a8;
          goto LABEL_51;
        }

        v53 = *(*(v93 + 56) + 8 * v51);
        if (!*(*(v37 + 56) + 16))
        {
          v74 = v53;
LABEL_47:
          v90 = v53;
          v75 = v44;
          a6 = v94;

          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *v78 = 136446466;
            v79 = *(v94 + 40);
            v107 = *(v94 + 24);
            v108[0] = v79;
            *(v108 + 14) = *(v94 + 54);
            sub_100009DAC(&v107, v103);
            v89 = v77;
            v80 = sub_1000063E8();
            v82 = v81;
            sub_1005812D4(&v107);
            v83 = sub_10000668C(v80, v82, &v104);

            *(v78 + 4) = v83;
            *(v78 + 12) = 2080;
            v84 = [v75 description];
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = sub_10000668C(v85, v87, &v104);
            v21 = v109;

            *(v78 + 14) = v88;
            _os_log_impl(&_mh_execute_header, v76, v89, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v78, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v73 = v90;
LABEL_51:

          goto LABEL_52;
        }

        v54 = v44;
        v55 = v53;

        sub_10002B924(v54);
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          goto LABEL_47;
        }

        a6 = v94;
LABEL_52:
        v37 = v95;
        ++v20;
        v38 = v98;
        v39 = v99;
      }

      while (v97 != v91);
    }
  }
}

void sub_10065BF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), unint64_t *a6, uint64_t *a7, uint64_t (*a8)(void *, uint64_t), uint64_t (*a9)(id))
{
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(v9 + 72);
  v107[0] = a2;
  v105 = v107;
  v106 = v18;

  v19 = a5(a4, v104, a1);
  if (!v10)
  {
    v20 = v19;
    v97 = v17;
    v101 = v16;
    v21 = a7;
    v98 = v9;
    v99 = a3;
    if (qword_100936008 != -1)
    {
      goto LABEL_62;
    }

LABEL_3:
    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_100945730);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v20 >> 62;
    v102 = a6;
    v113 = v20;
    v95 = v20 >> 62;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v27 = 136446978;
      *(v27 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v107);
      *(v27 + 12) = 2048;
      if (!v26)
      {
        v20 = v113;
        v28 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_65;
    }

    while (1)
    {
      v35 = v98;
      v27 = v26 ? _CocoaArrayWrapper.endIndex.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = _swiftEmptyArrayStorage;
      if (!v27)
      {
        break;
      }

      v107[0] = _swiftEmptyArrayStorage;
      v23 = v107;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v27 & 0x8000000000000000) == 0)
      {
        v37 = 0;
        v21 = (v113 & 0xC000000000000001);
        v101 = v113 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v20 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v21)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v101 + 16))
            {
              goto LABEL_60;
            }

            v38 = *(v113 + 8 * v37 + 32);
          }

          v39 = v38;
          sub_1005E3810([v38 remObjectID], a6, a7);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v40 = *(v107[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v37;
          a6 = v102;
          if (v20 == v27)
          {
            v36 = v107[0];
            v21 = a7;
            v35 = v98;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_65:
      v20 = v113;
      v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v27 + 14) = v28;

      *(v27 + 22) = 2082;
      sub_1000060C8(0, a6, v21);
      v29 = [swift_getObjCClassFromMetadata() description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v30;
      a6 = v102;
      v34 = sub_10000668C(v33, v32, v107);
      v21 = a7;

      *(v27 + 24) = v34;
      *(v27 + 32) = 2082;
      *(v27 + 34) = sub_10000668C(v97, v101, v107);
      _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v27, 0x2Au);
      swift_arrayDestroy();

      v26 = v95;
    }

LABEL_20:
    v41 = v99;
    v97 = a8(v36, v99);

    if (v95)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v42 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v42)
    {
      v20 = 0;
      v94 = v113 & 0xFFFFFFFFFFFFFF8;
      v96 = v113 & 0xC000000000000001;
      v93 = v42;
      do
      {
        if (v96)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v44 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v20 >= *(v94 + 16))
          {
            goto LABEL_61;
          }

          v43 = *(v113 + 8 * v20 + 32);
          v44 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_56:
            __break(1u);
            break;
          }
        }

        v101 = v44;
        v45 = v43;
        v46 = sub_1005E3810([v45 remObjectID], a6, v21);

        v47 = *(v41 + 48);
        a8 = v45;
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = v46;

          v49 = __CocoaDictionary.lookup(_:)();
          if (!v49)
          {
            goto LABEL_35;
          }

          v108 = v49;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v50 = v107[0];
        }

        else
        {
          if (!*(v47 + 16))
          {
            goto LABEL_36;
          }

          v48 = v46;

          v51 = sub_10002B924(v48);
          if ((v52 & 1) == 0)
          {
LABEL_35:

LABEL_36:
            v50 = 0;
            goto LABEL_37;
          }

          v50 = *(*(v47 + 56) + 8 * v51);
        }

LABEL_37:

        if (!*(v97 + 16) || (v53 = a9(v46), (v54 & 1) == 0))
        {
          v60 = v46;

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v63 = 136446466;
            v64 = *(v35 + 40);
            v109 = *(v35 + 24);
            v110[0] = v64;
            *(v110 + 14) = *(v35 + 54);
            sub_100009DAC(&v109, v107);
            v65 = sub_1000063E8();
            v67 = v66;
            sub_1005812D4(&v109);
            v68 = sub_10000668C(v65, v67, &v108);

            *(v63 + 4) = v68;
            *(v63 + 12) = 2080;
            v69 = [v60 description];
            v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            v73 = v70;
            v35 = v98;
            v74 = sub_10000668C(v73, v72, &v108);
            v21 = a7;

            *(v63 + 14) = v74;
            _os_log_impl(&_mh_execute_header, v61, v62, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v63, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v75 = a8;
          goto LABEL_51;
        }

        v55 = *(*(v97 + 56) + 8 * v53);
        if (!*(*(v41 + 56) + 16))
        {
          v76 = v55;
LABEL_47:
          v92 = v55;
          v77 = v46;
          v35 = v98;

          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *v80 = 136446466;
            v81 = *(v98 + 40);
            v111 = *(v98 + 24);
            v112[0] = v81;
            *(v112 + 14) = *(v98 + 54);
            sub_100009DAC(&v111, v107);
            v91 = v79;
            v82 = sub_1000063E8();
            v84 = v83;
            sub_1005812D4(&v111);
            v85 = sub_10000668C(v82, v84, &v108);

            *(v80 + 4) = v85;
            *(v80 + 12) = 2080;
            v86 = [v77 description];
            v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v89 = v88;

            v90 = sub_10000668C(v87, v89, &v108);
            v21 = a7;

            *(v80 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v78, v91, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v80, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v75 = v92;
LABEL_51:

          a6 = v102;
          goto LABEL_52;
        }

        v56 = v46;
        v57 = v55;

        sub_10002B924(v56);
        v59 = v58;

        if ((v59 & 1) == 0)
        {
          goto LABEL_47;
        }

        a6 = v102;
        v35 = v98;
LABEL_52:
        v41 = v99;
        ++v20;
      }

      while (v101 != v93);
    }
  }
}

void sub_10065C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t), NSObject *a6, void *a7, void (*a8)(id), uint64_t (*a9)(NSObject *))
{
  v103 = a8;
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v19 = *(v9 + 72);
  v97[0] = a2;
  v95 = v97;
  v96 = v19;

  v20 = a5(a4, v94, a1);
  if (!v10)
  {
    v21 = v20;
    v90 = a7;
    v91 = v18;
    v87 = v17;
    v22 = v103;
    v92 = a3;
    v89 = v9;
    if (qword_100936008 != -1)
    {
      goto LABEL_60;
    }

LABEL_3:
    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100945730);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    v93 = v21;
    v88 = v21 >> 62;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v97[0] = swift_slowAlloc();
      *v26 = 136446978;
      *(v26 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v97);
      *(v26 + 12) = 2048;
      LOBYTE(v86) = v25;
      if (!(v21 >> 62))
      {
        v27 = v21;
        v28 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_63;
    }

    v34 = v22;
    while (1)
    {
      v26 = v90;
      v35 = v88;
      v21 = v88 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = _swiftEmptyArrayStorage;
      if (!v21)
      {
        break;
      }

      v97[0] = _swiftEmptyArrayStorage;
      v24 = v97;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = 0;
        v91 = v93 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          a6 = (v22 + 1);
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if ((v93 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v38 = v103;
          }

          else
          {
            v38 = v103;
            if (v22 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v37 = *(v93 + 8 * v22 + 32);
          }

          v38([v37 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v39 = *(v97[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v22;
          if (a6 == v21)
          {
            v36 = v97[0];
            v34 = v103;
            v26 = v90;
            v35 = v88;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_63:
      v27 = v93;
      v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v26 + 14) = v28;

      *(v26 + 22) = 2082;
      (a6)(0);
      v29 = [swift_getObjCClassFromMetadata() description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10000668C(v30, v32, v97);

      *(v26 + 24) = v33;
      *(v26 + 32) = 2082;
      *(v26 + 34) = sub_10000668C(v87, v91, v97);
      _os_log_impl(&_mh_execute_header, v24, v86, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v26, 0x2Au);
      swift_arrayDestroy();

      v34 = v103;
      v21 = v27;
    }

LABEL_20:
    v40 = (v26)(v36, v92);

    v21 = v93;
    if (v35)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v92;
    swift_beginAccess();
    swift_beginAccess();
    if (v22)
    {
      v42 = 0;
      v87 = v93 & 0xFFFFFFFFFFFFFF8;
      v85 = v22;
      v86 = v40;
      do
      {
        if ((v93 & 0xC000000000000001) != 0)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v42 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v44 = *(v21 + 8 * v42 + 32);
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
LABEL_54:
            __break(1u);
            break;
          }
        }

        v46 = v44;
        a6 = v34([v46 remObjectID]);

        v47 = *(v41 + 48);
        v91 = v45;
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = a6;

          v49 = __CocoaDictionary.lookup(_:)();
          if (!v49)
          {
            goto LABEL_39;
          }

          v98 = v49;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v22 = v97[0];
        }

        else
        {
          if (!*(v47 + 16))
          {
            goto LABEL_40;
          }

          v48 = a6;

          v50 = sub_10002B924(v48);
          if ((v51 & 1) == 0)
          {
LABEL_39:

LABEL_40:
            v22 = 0;
            goto LABEL_41;
          }

          v22 = *(*(v47 + 56) + 8 * v50);
        }

LABEL_41:
        v90 = v46;

        if (*(v40 + 16) && (v52 = a9(a6), (v53 & 1) != 0))
        {
          v54 = *(*(v40 + 56) + 8 * v52);
          if (*(*(v92 + 56) + 16))
          {
            v22 = a6;
            v55 = v54;

            sub_10002B924(v22);
            v57 = v56;

            if (v57)
            {

              goto LABEL_28;
            }
          }

          else
          {
            v70 = v54;
          }

          v22 = a6;

          a6 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(a6, v71))
          {

            goto LABEL_28;
          }

          v84 = v54;
          v72 = v22;
          v22 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *v22 = 136446466;
          v73 = *(v89 + 40);
          v101 = *(v89 + 24);
          v102[0] = v73;
          *(v102 + 14) = *(v89 + 54);
          sub_100009DAC(&v101, v97);
          v74 = sub_1000063E8();
          v76 = v75;
          sub_1005812D4(&v101);
          v77 = sub_10000668C(v74, v76, &v98);

          *(v22 + 4) = v77;
          *(v22 + 12) = 2080;
          v78 = [v72 description];
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = v79;
          v34 = v103;
          v83 = sub_10000668C(v82, v81, &v98);

          *(v22 + 14) = v83;
          _os_log_impl(&_mh_execute_header, a6, v71, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v22, 0x16u);
          swift_arrayDestroy();

          v43 = v84;
        }

        else
        {
          a6 = a6;

          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v58, v59))
          {
            v22 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            *v22 = 136446466;
            v60 = *(v89 + 40);
            v99 = *(v89 + 24);
            v100[0] = v60;
            *(v100 + 14) = *(v89 + 54);
            sub_100009DAC(&v99, v97);
            v61 = sub_1000063E8();
            v63 = v62;
            sub_1005812D4(&v99);
            v64 = sub_10000668C(v61, v63, &v98);

            *(v22 + 4) = v64;
            *(v22 + 12) = 2080;
            v65 = [a6 description];
            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            v69 = sub_10000668C(v66, v68, &v98);
            v34 = v103;

            *(v22 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v58, v59, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v22, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v43 = v90;
        }

LABEL_28:
        v41 = v92;
        v21 = v93;
        v40 = v86;
        ++v42;
      }

      while (v91 != v85);
    }
  }
}

void sub_10065D434(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v85[0] = a2;
  v84[2] = v85;
  v84[3] = v10;

  v11 = sub_100759CB4(sub_1006AD758, v84, a1);
  if (!v4)
  {
    v12 = v11;
    v80 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_65;
    }

LABEL_3:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100945730);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v12 >> 62;
    v81 = v6;
    v91 = v12;
    v77 = v12 >> 62;
    if (v16)
    {
      v5 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v85);
      *(v5 + 6) = 2048;
      if (!v17)
      {
        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_68;
    }

    while (1)
    {
      v25 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = _swiftEmptyArrayStorage;
      if (!v25)
      {
        break;
      }

      v85[0] = _swiftEmptyArrayStorage;
      v14 = v85;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v6 = 0;
        v9 = v12 & 0xC000000000000001;
        v82 = v12 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v5 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v9)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *(v82 + 16))
            {
              goto LABEL_63;
            }

            v26 = *(v12 + 8 * v6 + 32);
          }

          v27 = v26;
          sub_1005E2A38([v26 remObjectID]);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v85[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v6;
          v12 = v91;
          if (v5 == v25)
          {
            v6 = v85[0];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_68:
      v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v18;

      *(v5 + 11) = 2082;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v19 = [swift_getObjCClassFromMetadata() description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20;
      v12 = v91;
      v24 = sub_10000668C(v23, v22, v85);

      *(v5 + 3) = v24;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v85);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v17 = v77;
    }

LABEL_20:
    v28 = v81;
    v8 = sub_10066C018(v6, v81);

    if (v77)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v9)
    {
      v29 = 0;
      v75 = v12 & 0xFFFFFFFFFFFFFF8;
      v76 = v12 & 0xC000000000000001;
      v73 = v8;
      v74 = v9;
      do
      {
        if (v76)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v29 >= *(v75 + 16))
          {
            goto LABEL_64;
          }

          v30 = *(v12 + 8 * v29 + 32);
          v31 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_59:
            __break(1u);
            break;
          }
        }

        v6 = v30;
        v5 = sub_1005E2A38([v6 remObjectID]);
        v83 = v31;

        v32 = v28[6];
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = v6;
          if (v32 < 0)
          {
            v34 = v28[6];
          }

          v35 = v5;

          v36 = __CocoaDictionary.lookup(_:)();
          if (!v36)
          {
            goto LABEL_37;
          }

          v86 = v36;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v37 = v85[0];
        }

        else
        {
          if (!*(v32 + 16))
          {
            v37 = 0;
            goto LABEL_39;
          }

          v33 = v6;
          v35 = v5;

          v38 = sub_10002B924(v35);
          if ((v39 & 1) == 0)
          {
LABEL_37:

            v37 = 0;
            goto LABEL_38;
          }

          v37 = *(*(v32 + 56) + 8 * v38);
        }

LABEL_38:
        v6 = v33;
LABEL_39:

        if (!*(v8 + 16) || (v40 = sub_100393C74(v5), (v41 & 1) == 0))
        {
          v5 = v5;

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v79 = v6;
            v6 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v6 = 136446466;
            v48 = *(v80 + 40);
            v87 = *(v80 + 24);
            v88[0] = v48;
            *(v88 + 14) = *(v80 + 54);
            sub_100009DAC(&v87, v85);
            v49 = sub_1000063E8();
            v51 = v50;
            sub_1005812D4(&v87);
            v52 = sub_10000668C(v49, v51, &v86);

            *(v6 + 4) = v52;
            *(v6 + 12) = 2080;
            v53 = [v5 description];
            v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            v57 = v54;
            v8 = v73;
            v58 = sub_10000668C(v57, v56, &v86);

            *(v6 + 14) = v58;
            _os_log_impl(&_mh_execute_header, v46, v47, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v28 = v81;
          goto LABEL_54;
        }

        v78 = v6;
        v42 = *(*(v8 + 56) + 8 * v40);
        if (!*(v81[7] + 16))
        {
          v59 = v42;
LABEL_50:
          v5 = v5;
          v6 = v80;

          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v62 = 136446466;
            v63 = *(v80 + 40);
            v89 = *(v80 + 24);
            v90[0] = v63;
            *(v90 + 14) = *(v80 + 54);
            sub_100009DAC(&v89, v85);
            v72 = v61;
            v64 = sub_1000063E8();
            v66 = v65;
            sub_1005812D4(&v89);
            v67 = sub_10000668C(v64, v66, &v86);

            *(v62 + 4) = v67;
            *(v62 + 12) = 2080;
            v68 = [v5 description];
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v70;

            v71 = sub_10000668C(v69, v6, &v86);

            *(v62 + 14) = v71;
            _os_log_impl(&_mh_execute_header, v60, v72, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v62, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v28 = v81;
          v8 = v73;
LABEL_54:
          v9 = v74;
          goto LABEL_55;
        }

        v43 = v5;
        v6 = v42;

        sub_10002B924(v43);
        v45 = v44;

        if ((v45 & 1) == 0)
        {
          goto LABEL_50;
        }

        v28 = v81;
        v8 = v73;
LABEL_55:
        ++v29;
        v12 = v91;
      }

      while (v83 != v9);
    }
  }
}

void sub_10065DE60(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(v3 + 72);
  v93[0] = a2;
  v92[2] = v93;
  v92[3] = v10;

  v11 = sub_100759CB4(sub_1006AF758, v92, a1);
  if (!v4)
  {
    v12 = v11;
    v84 = v3;
    if (qword_100936008 != -1)
    {
      goto LABEL_63;
    }

LABEL_3:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100945730);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v12 >> 62;
    v89 = v6;
    v99 = v12;
    v85 = v12 >> 62;
    if (v16)
    {
      v5 = swift_slowAlloc();
      v93[0] = swift_slowAlloc();
      *v5 = 136446978;
      *(v5 + 4) = sub_10000668C(0x7661537265746661, 0xEF6E6F6974634165, v93);
      *(v5 + 6) = 2048;
      if (!v17)
      {
        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      goto LABEL_66;
    }

    while (1)
    {
      v8 = v84;
      v25 = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = _swiftEmptyArrayStorage;
      if (!v25)
      {
        break;
      }

      v93[0] = _swiftEmptyArrayStorage;
      v14 = v93;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v25 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v26 = v12 & 0xC000000000000001;
        v90 = v12 & 0xFFFFFFFFFFFFFF8;
        v9 = off_1008D4120;
        while (1)
        {
          v6 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v26)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v90 + 16))
            {
              goto LABEL_61;
            }

            v27 = *(v12 + 8 * v8 + 32);
          }

          v28 = v27;
          sub_1005E3810([v27 remObjectID], &qword_1009399F0, off_1008D4120);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *(v93[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v8;
          v12 = v99;
          if (v6 == v25)
          {
            v6 = v93[0];
            v8 = v84;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        swift_once();
        goto LABEL_3;
      }

      __break(1u);
LABEL_66:
      v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
      *(v5 + 14) = v18;

      *(v5 + 11) = 2082;
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      v19 = [swift_getObjCClassFromMetadata() description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v20;
      v12 = v99;
      v24 = sub_10000668C(v23, v22, v93);

      *(v5 + 3) = v24;
      *(v5 + 16) = 2082;
      *(v5 + 34) = sub_10000668C(v9, v8, v93);
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v5, 0x2Au);
      swift_arrayDestroy();

      v17 = v85;
    }

LABEL_20:
    v29 = v89;
    v9 = sub_1006666A4(v6, v89);

    if (v85)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    swift_beginAccess();
    if (v30)
    {
      v31 = 0;
      v82 = v12 & 0xFFFFFFFFFFFFFF8;
      v83 = v12 & 0xC000000000000001;
      v80 = v9;
      v81 = v30;
      do
      {
        if (v83)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v31 >= *(v82 + 16))
          {
            goto LABEL_62;
          }

          v32 = *(v12 + 8 * v31 + 32);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_57:
            __break(1u);
            break;
          }
        }

        v91 = v33;
        v6 = v32;
        v34 = sub_1005E3810([v6 remObjectID], &qword_1009399F0, off_1008D4120);

        v35 = v29[6];
        if ((v35 & 0xC000000000000001) != 0)
        {
          v86 = v31;
          v36 = v9;
          v37 = v8;
          v38 = v6;
          v39 = v34;

          v40 = __CocoaDictionary.lookup(_:)();
          if (!v40)
          {
            goto LABEL_35;
          }

          v94 = v40;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v41 = v93[0];
        }

        else
        {
          if (!*(v35 + 16))
          {
            v41 = 0;
            goto LABEL_37;
          }

          v86 = v31;
          v36 = v9;
          v37 = v8;
          v38 = v6;
          v39 = v34;

          v42 = sub_10002B924(v39);
          if ((v43 & 1) == 0)
          {
LABEL_35:

            v41 = 0;
            goto LABEL_36;
          }

          v41 = *(*(v35 + 56) + 8 * v42);
        }

LABEL_36:
        v6 = v38;
        v8 = v37;
        v9 = v36;
        v31 = v86;
LABEL_37:

        if (!v9[2] || (v44 = sub_100393C74(v34), (v45 & 1) == 0))
        {
          v5 = v34;

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v88 = v6;
            v6 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *v6 = 136446466;
            v53 = *(v8 + 40);
            v95 = *(v8 + 24);
            v96[0] = v53;
            *(v96 + 14) = *(v8 + 54);
            sub_100009DAC(&v95, v93);
            v54 = sub_1000063E8();
            v56 = v55;
            sub_1005812D4(&v95);
            v57 = sub_10000668C(v54, v56, &v94);

            *(v6 + 1) = v57;
            *(v6 + 6) = 2080;
            v58 = [v5 description];
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            v62 = v59;
            v8 = v84;
            v63 = sub_10000668C(v62, v61, &v94);
            v12 = v99;

            *(v6 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v51, v52, "Tried to perform after-save action with non-existent target object -- bail {author: %{public}s, cdObjectID: %s}", v6, 0x16u);
            swift_arrayDestroy();

            v64 = v88;
            goto LABEL_51;
          }

LABEL_52:
          v29 = v89;
          v9 = v80;
          goto LABEL_53;
        }

        v87 = v6;
        v46 = *(&v9[7]->isa + v44);
        v6 = v89[7];
        v47 = *(v6 + 2);
        v5 = v34;
        v79 = v46;
        if (!v47)
        {
          goto LABEL_47;
        }

        v48 = sub_10002B924(v5);
        if ((v49 & 1) == 0)
        {

LABEL_47:

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            *v67 = 136446466;
            v68 = *(v8 + 40);
            v97 = *(v8 + 24);
            v98[0] = v68;
            *(v98 + 14) = *(v8 + 54);
            sub_100009DAC(&v97, v93);
            v78 = v66;
            v69 = sub_1000063E8();
            v71 = v70;
            sub_1005812D4(&v97);
            v72 = sub_10000668C(v69, v71, &v94);

            *(v67 + 4) = v72;
            *(v67 + 12) = 2080;
            v73 = [v5 description];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v6 = v75;

            v76 = v74;
            v12 = v99;
            v77 = sub_10000668C(v76, v6, &v94);

            *(v67 + 14) = v77;
            _os_log_impl(&_mh_execute_header, v65, v78, "Could not find the changed keys & values to perform after-save action -- bail {author: %{public}s, cdObjectID: %s}", v67, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v64 = v79;
LABEL_51:

          goto LABEL_52;
        }

        v50 = *(*(v6 + 7) + 8 * v48);

        v6 = v79;
        sub_1002FF0BC(v79, v50);

        v29 = v89;
LABEL_53:
        ++v31;
      }

      while (v91 != v81);
    }
  }
}

uint64_t sub_10065E91C(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_100366688(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100366688((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F3B0, &qword_1007B4F48);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F3B8, &unk_1007B4F50);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&unk_10094F3C0, &qword_1007A3F78);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067AE04(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A5E78(v32);

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

    a2 = sub_10019CA44(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368B70(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066D1B8(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698228(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10065F214(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003666AC(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003666AC((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F120, &qword_1007B4D28);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F128, &unk_1007B4D30);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943280, &qword_1007A3C68);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067B184(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A5EA8(v32);

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

    a2 = sub_10019CAAC(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368B84(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_1006A772C(v44);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_1006A7A4C(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10065FB04(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_10036673C(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_10036673C((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F550, &qword_1007B5080);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F558, &unk_1007B5088);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943850, &qword_1007A4130);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067B504(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A5FAC(v32);

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

    a2 = sub_10019D578(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368B98(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066D564(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698498(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006603FC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003667D0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003667D0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F2C0, &qword_1007B4E80);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F2C8, &qword_1007B4E88);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&unk_10094F2D0, &unk_1007B4E90);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067B884(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A600C(v32);

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

    a2 = sub_10019D5E0(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368BAC(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066D920(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698708(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100660CF4(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_100366864(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100366864((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F7D8, &qword_1007B51D8);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F7E0, &qword_1007B51E0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943BC8, &qword_1007A4410);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067BC04(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A609C(v32);

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

    a2 = sub_10019D648(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368BC0(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066DCCC(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698978(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006615EC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003668AC(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003668AC((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F790, &qword_1007B51B0);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F798, &qword_1007B51B8);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&unk_10094F7A0, &qword_1007A43D0);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067BF84(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A60CC(v32);

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

    a2 = sub_10019D6B0(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368BD4(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066E088(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698BE8(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100661EE4(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003668F4(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003668F4((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F740, &qword_1007B5188);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F748, &qword_1007B5190);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&unk_10094F750, &qword_1007A43A0);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067C304(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A60FC(v32);

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

    a2 = sub_10019D718(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368BE8(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066E444(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100698E58(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006627DC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_10036693C(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_10036693C((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F690, &qword_1007B5160);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F698, &qword_1007B5168);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&unk_10094F6A0, &qword_1007A4360);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067C684(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A612C(v32);

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

    a2 = sub_10019D780(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368BFC(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066E800(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_1006990C8(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006630D4(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_100367758(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100367758((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F440, &qword_1007B4FB8);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F448, &unk_1007B4FC0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943710, &qword_1007A4010);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067CA04(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A641C(v32);

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

    a2 = sub_10019DEA8(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C10(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066EBBC(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100699338(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006639CC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003677A0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003677A0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F478, &qword_1007B4FE0);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F480, &unk_1007B4FE8);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943750, &qword_1007A4050);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067CD84(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A644C(v32);

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

    a2 = sub_10019DF10(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C24(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066EF78(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_1006995A8(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006642C4(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003677E8(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003677E8((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F4B0, &qword_1007B5008);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F4B8, &qword_1007B5010);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943790, &qword_1007A4080);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067D104(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A647C(v32);

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

    a2 = sub_10019DF78(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C38(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066F334(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_100699818(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100664BBC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_100367830(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100367830((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F4E8, &qword_1007B5030);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F4F0, &qword_1007B5038);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_1009437D0, &qword_1007A40C0);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067D484(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A64AC(v32);

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

    a2 = sub_10019DFE0(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C4C(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066F6F0(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_10069C030(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006654B4(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_100367878(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100367878((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F520, &qword_1007B5058);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F528, &qword_1007B5060);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943810, &qword_1007A40F0);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067D804(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A64DC(v32);

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

    a2 = sub_10019E048(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C60(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066FAAC(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_10069E26C(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100665DAC(uint64_t a1, void *a2)
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
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_84;
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
      v6 = sub_1003678C0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_1003678C0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F588, &qword_1007B50A8);
  v84[0] = v6;
  sub_1000F5104(&unk_10094F590, &unk_1007B50B0);

  throwingCast<A>(_:as:failureMessage:)();
  v2 = v80;
  if (v80)
  {

    sub_10000607C(v84);
    return v5;
  }

  else
  {
    sub_10000607C(v84);
    v28 = v85;
    v29 = v85[2];
    if (v29)
    {
      sub_1000F5104(&qword_100943890, &qword_1007A4160);
      v30 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v30 = _swiftEmptyDictionarySingleton;
    }

    v84[0] = v30;

    sub_10067DB84(v31, 1, v84);

    v5 = v84[0];

    v33 = sub_1001A650C(v32);

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

    a2 = sub_10019E0B0(v37, v33);

    if (qword_100936008 != -1)
    {
      goto LABEL_86;
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
          goto LABEL_54;
        }
      }

      else
      {

        v42 = a2[2];
        if (!v42)
        {
LABEL_54:

          return v5;
        }
      }

      v43 = *(v78 + 88);
      v44 = sub_100368C74(v42, 0);
      a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
      sub_10001B860();
      if (a2 != v42)
      {
        break;
      }

      v45 = sub_10066FE68(v44, v83[4]);

      if (v2)
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v5;
      sub_1006A0738(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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
LABEL_67:
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
            goto LABEL_89;
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
          goto LABEL_88;
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
            goto LABEL_91;
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
            goto LABEL_90;
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
          goto LABEL_67;
        }
      }

LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_91:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006666A4(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v6 = _swiftEmptyArrayStorage;
  v107 = a2;
  if (v5)
  {
    v7 = 0;
    v8 = a1 + 32;
    do
    {
      v105 = v6;
      v9 = v7;
      while (1)
      {
        if (v9 >= v5)
        {
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_103;
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

          v109 = v13;
          sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
          swift_dynamicCast();
          v14 = v108[0];
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
            v109 = v21;
            sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
            swift_dynamicCast();
            v14 = v108[0];

            a2 = v107;
            if (v108[0])
            {
              break;
            }
          }

          else
          {

            a2 = v107;
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
          v6 = v105;
          goto LABEL_38;
        }
      }

      v6 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100367DCC(0, v105[2] + 1, 1, v105);
      }

      v2 = v6[2];
      v25 = v6[3];
      if (v2 >= v25 >> 1)
      {
        v6 = sub_100367DCC((v25 > 1), v2 + 1, 1, v6);
      }

      v6[2] = v2 + 1;
      v26 = &v6[2 * v2];
      v26[4] = v10;
      v26[5] = v14;
    }

    while (v7 != v5);
  }

LABEL_38:
  v108[3] = sub_1000F5104(&qword_10094F608, &qword_1007B5118);
  v108[0] = v6;
  sub_1000F5104(&unk_10094F610, &qword_1007B5120);
  throwingCast<A>(_:as:failureMessage:)();
  v2 = v103;
  sub_10000607C(v108);
  if (v103)
  {
    return v5;
  }

  v28 = v109;
  v29 = *(v109 + 16);
  if (v29)
  {
    sub_1000F5104(&qword_100943940, &unk_1007A41F0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v108[0] = v30;

  sub_10067DF04(v31, 1, v108);
  v5 = v108[0];

  v33 = sub_1001A66D8(v32);

  if (v29)
  {
    v108[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = 32;
    do
    {
      v35 = *(v28 + v34);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v36 = *(v108[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 += 16;
      --v29;
    }

    while (v29);

    v37 = v108[0];
  }

  else
  {

    v37 = _swiftEmptyArrayStorage;
  }

  a2 = sub_10019E118(v37, v33);

  if (qword_100936008 != -1)
  {
    goto LABEL_105;
  }

LABEL_49:
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

  v43 = *(v101 + 88);
  v44 = sub_100368CB0(v42, 0);
  v45 = sub_10027DC58(v108, v44 + 4, v42, a2);
  sub_10001B860();
  if (v45 == v42)
  {
    a2 = v107;
    v46 = sub_100670224(v44, v107[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108[0] = v5;
    sub_100682460(v46, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v108);
    v101 = 0;

    v100 = v108[0];
    v48 = v46 + 64;
    v49 = 1 << *(v46 + 32);
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v2 = v50 & *(v46 + 64);
    v5 = (v49 + 63) >> 6;

    v51 = 0;
    v102 = v46;
    while (1)
    {
      if (!v2)
      {
        while (1)
        {
          v56 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v56 >= v5)
          {

            return v100;
          }

          v2 = *(v48 + 8 * v56);
          ++v51;
          if (v2)
          {
            v51 = v56;
            goto LABEL_67;
          }
        }

LABEL_104:
        __break(1u);
LABEL_105:
        swift_once();
        goto LABEL_49;
      }

LABEL_67:
      v57 = (v51 << 9) | (8 * __clz(__rbit64(v2)));
      v58 = *(*(v46 + 48) + v57);
      v59 = *(*(v46 + 56) + v57);
      swift_beginAccess();
      v60 = a2[5];
      v106 = v59;
      if ((v60 & 0xC000000000000001) != 0)
      {
        if (v60 < 0)
        {
          v61 = a2[5];
        }

        else
        {
          v61 = v60 & 0xFFFFFFFFFFFFFF8;
        }

        v62 = v59;
        v63 = v58;
        v64 = __CocoaDictionary.count.getter();
        if (__OFADD__(v64, 1))
        {
          goto LABEL_108;
        }

        a2[5] = sub_10021CDBC(v61, v64 + 1);
      }

      else
      {
        v65 = v59;
        v66 = v58;
      }

      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = a2;
      v69 = a2[5];
      v109 = v69;
      v68[5] = 0x8000000000000000;
      v104 = v58;
      v70 = sub_10002B924(v58);
      v72 = *(v69 + 16);
      v73 = (v71 & 1) == 0;
      v74 = __OFADD__(v72, v73);
      v75 = v72 + v73;
      if (v74)
      {
        __break(1u);
        goto LABEL_107;
      }

      v76 = v71;
      if (*(v69 + 24) < v75)
      {
        break;
      }

      if (v67)
      {
        v77 = v69;
        goto LABEL_80;
      }

      v98 = v70;
      sub_1000F5104(&unk_10094F620, &unk_1007A3C40);
      v82 = static _DictionaryStorage.copy(original:)();
      v77 = v82;
      if (*(v69 + 16))
      {
        v83 = (v82 + 64);
        v84 = ((1 << *(v77 + 32)) + 63) >> 6;
        if (v77 != v69 || v83 >= v69 + 64 + 8 * v84)
        {
          memmove(v83, (v69 + 64), 8 * v84);
        }

        v85 = 0;
        *(v77 + 16) = *(v69 + 16);
        v86 = 1 << *(v69 + 32);
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        else
        {
          v87 = -1;
        }

        v97 = (v86 + 63) >> 6;
        v88 = v87 & *(v69 + 64);
        if (v88)
        {
          do
          {
            v89 = __clz(__rbit64(v88));
            v99 = (v88 - 1) & v88;
LABEL_97:
            v92 = v89 | (v85 << 6);
            v93 = *(*(v69 + 48) + 8 * v92);
            v94 = *(*(v69 + 56) + 8 * v92);
            *(*(v77 + 48) + 8 * v92) = v93;
            *(*(v77 + 56) + 8 * v92) = v94;
            v95 = v93;
            v96 = v94;
            v88 = v99;
          }

          while (v99);
        }

        v90 = v85;
        while (1)
        {
          v85 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_110;
          }

          if (v85 >= v97)
          {
            break;
          }

          v91 = *(v69 + 64 + 8 * v85);
          ++v90;
          if (v91)
          {
            v89 = __clz(__rbit64(v91));
            v99 = (v91 - 1) & v91;
            goto LABEL_97;
          }
        }
      }

      v70 = v98;
      a2 = v107;
      if (v76)
      {
LABEL_60:
        v52 = *(v77 + 56);
        v53 = *(v52 + 8 * v70);
        v54 = v106;
        *(v52 + 8 * v70) = v106;

        v46 = v102;
        v55 = v104;
        goto LABEL_61;
      }

LABEL_81:
      *(v77 + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v55 = v104;
      *(*(v77 + 48) + 8 * v70) = v104;
      *(*(v77 + 56) + 8 * v70) = v106;
      v79 = *(v77 + 16);
      v74 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v74)
      {
        goto LABEL_109;
      }

      *(v77 + 16) = v80;
      v81 = v104;
      v46 = v102;
      v54 = v106;
LABEL_61:
      v2 &= v2 - 1;
      a2[5] = v77;
      swift_endAccess();
    }

    sub_10036CA94(v75, v67);
    v77 = v109;
    v70 = sub_10002B924(v104);
    if ((v76 & 1) != (v78 & 1))
    {
      goto LABEL_111;
    }

LABEL_80:
    a2 = v107;
    if (v76)
    {
      goto LABEL_60;
    }

    goto LABEL_81;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_111:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006670C8(uint64_t a1, void *a2)
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
      v6 = sub_100367DF0(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100367DF0((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F100, &qword_1007B4CE0);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F108, &qword_1007B4CE8);
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
    sub_1000F5104(&qword_100943250, &unk_1007B4CF0);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067E284(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6708(v32);

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

  a2 = sub_10019E180(v37, v33);

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
    v44 = sub_100368CC4(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_1006705DC(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A2C24(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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

uint64_t sub_100667998(uint64_t a1, void *a2)
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
      v6 = sub_100367E38(0, v81[2] + 1, 1, v81);
    }

    v2 = v6[2];
    v25 = v6[3];
    if (v2 >= v25 >> 1)
    {
      v6 = sub_100367E38((v25 > 1), v2 + 1, 1, v6);
    }

    v6[2] = v2 + 1;
    v26 = &v6[2 * v2];
    v26[4] = v10;
    v26[5] = v14;
  }

  while (v7 != v5);
LABEL_38:
  v84[3] = sub_1000F5104(&qword_10094F178, &qword_1007B4D68);
  v84[0] = v6;
  sub_1000F5104(&qword_10094F180, &unk_1007B4D70);
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
    sub_1000F5104(&qword_1009432E0, &qword_1007A3CB8);
    v30 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v30 = _swiftEmptyDictionarySingleton;
  }

  v84[0] = v30;

  sub_10067E604(v31, 1, v84);
  v5 = v84[0];

  v33 = sub_1001A6738(v32);

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

  a2 = sub_10019E1E8(v37, v33);

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
    v44 = sub_100368CD8(v42, 0);
    a2 = sub_10027DC58(v84, v44 + 4, v42, a2);
    sub_10001B860();
    if (a2 != v42)
    {
      break;
    }

    v45 = sub_100670994(v44, v83[4]);

    if (v2)
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84[0] = v5;
    sub_1006A2E94(v45, sub_1006B036C, 0, isUniquelyReferenced_nonNull_native, v84);

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