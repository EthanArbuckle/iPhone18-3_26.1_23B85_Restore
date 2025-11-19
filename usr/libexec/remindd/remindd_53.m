void sub_1004E6754(void *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v106 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v112 & 1) != 0 || v111 != 1)
  {
    v7 = sub_1004DA878(a1, 0);
    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      CKRecordKeyValueSetting.subscript.getter();

      if ((v112 & 1) != 0 || v111 != 1 || ![a2 markedForDeletion])
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

      v9 = type metadata accessor for Logger();
      sub_100006654(v9, qword_10094A590);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v13 = 136446466;
        v14 = CKRecord.recordType.getter();
        v16 = sub_10000668C(v14, v15, &v111);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2082;
        v17 = [v10 recordID];
        v18 = [v17 ckShortDescription];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = sub_10000668C(v19, v21, &v111);

        *(v13 + 14) = v22;
        v23 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_17;
      }

LABEL_18:
    }

    if ([a2 shouldPerformCloudSchemaCatchUpSync])
    {
      v35 = [a2 storeControllerManagedObjectContext];
      if (v35)
      {
        v36 = v35;
        v37 = [a2 accountCKIdentifier];
        if (v37)
        {
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          v42 = [v36 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v43 + 16))
          {
            v44 = sub_100005F4C(v39, v41);
            v46 = v45;

            if (v46)
            {
              v47 = *(*(v43 + 56) + 8 * v44);

              v48 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v47, "persistenceCloudSchemaVersion")}];
              v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v50 = sub_1001A5660(v49);

LABEL_35:
              v107 = [a2 createResolutionTokenMapIfNecessary];
              v53 = [v7 getTokenKeys];
              v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v109 = *(v54 + 16);
              if (!v109)
              {
LABEL_79:

                return;
              }

              v56 = 0;
              v108 = v54 + 32;
              v110 = v50 + 7;
              *&v55 = 136446466;
              v100 = v55;
              v101 = a2;
              v104 = v7;
              v105 = v54;
              while (1)
              {
                if (v56 >= *(v54 + 16))
                {
                  __break(1u);
LABEL_81:
                  swift_once();
LABEL_15:
                  v24 = type metadata accessor for Logger();
                  sub_100006654(v24, qword_10094A590);
                  v25 = v106;
                  v11 = Logger.logObject.getter();
                  v12 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v11, v12))
                  {
                    v13 = swift_slowAlloc();
                    v111 = swift_slowAlloc();
                    *v13 = 136446466;
                    v26 = CKRecord.recordType.getter();
                    v28 = sub_10000668C(v26, v27, &v111);

                    *(v13 + 4) = v28;
                    *(v13 + 12) = 2082;
                    v29 = [v25 recordID];
                    v30 = [v29 ckShortDescription];

                    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v33 = v32;

                    v34 = sub_10000668C(v31, v33, &v111);

                    *(v13 + 14) = v34;
                    v23 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_17:
                    _os_log_impl(&_mh_execute_header, v11, v12, v23, v13, 0x16u);
                    swift_arrayDestroy();
                  }

                  goto LABEL_18;
                }

                v57 = (v108 + 16 * v56);
                v58 = *v57;
                v59 = v57[1];

                v60._countAndFlagsBits = v58;
                v60._object = v59;
                v61 = _findStringSwitchCase(cases:string:)(&off_1008DE628, v60);
                if (v61 > 2)
                {
                  v65._countAndFlagsBits = v58;
                  v65._object = v59;
                  if (_findStringSwitchCase(cases:string:)(&off_1008DE690, v65))
                  {
                    if (qword_100936300 != -1)
                    {
                      swift_once();
                    }

                    v66 = type metadata accessor for Logger();
                    sub_100006654(v66, qword_10094A590);
                    v67 = v106;

                    v68 = Logger.logObject.getter();
                    v69 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v68, v69))
                    {
                      v70 = swift_slowAlloc();
                      v111 = swift_slowAlloc();
                      *v70 = 136446722;
                      v71 = sub_10000668C(v58, v59, &v111);

                      *(v70 + 4) = v71;
                      *(v70 + 12) = 2082;
                      v72 = CKRecord.recordType.getter();
                      v74 = sub_10000668C(v72, v73, &v111);

                      *(v70 + 14) = v74;
                      *(v70 + 22) = 2082;
                      v113[0] = &_s6FieldsON_4;
                      sub_1000F5104(&unk_10094A640, &qword_1007AE8F8);
                      v75 = String.init<A>(reflecting:)();
                      v77 = sub_10000668C(v75, v76, &v111);

                      *(v70 + 24) = v77;
                      _os_log_impl(&_mh_execute_header, v68, v69, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v70, 0x20u);
                      swift_arrayDestroy();
                      a2 = v101;

                      v54 = v105;
                    }

                    else
                    {
                    }

                    v7 = v104;
                  }

                  else
                  {
                  }

                  goto LABEL_38;
                }

                v62 = v61;
                LOBYTE(v113[0]) = v61;
                if ([a2 shouldPerformCloudSchemaCatchUpSync])
                {
                  break;
                }

LABEL_68:
                v85 = String._bridgeToObjectiveC()();

                v86 = [v107 compareAndMergeWithMap:v7 forKey:v85];

                if (v86 == -1)
                {
                  sub_1003B15B4(v113, a3, a4);
                }

LABEL_38:
                if (++v56 == v109)
                {
                  goto LABEL_79;
                }
              }

              if (v62)
              {
                if (v62 == 1)
                {
                  v63 = 0xD00000000000001DLL;
                }

                else
                {
                  v63 = 0x6574616C706D6574;
                }

                if (v62 == 1)
                {
                  v64 = 0x80000001007E9100;
                }

                else
                {
                  v64 = 0xE800000000000000;
                }

                if (!v50[2])
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v64 = 0xE800000000000000;
                v63 = 0x617461646174656DLL;
                if (!v50[2])
                {
LABEL_67:

                  v54 = v105;
                  goto LABEL_68;
                }
              }

              v78 = v50[5];
              Hasher.init(_seed:)();
              String.hash(into:)();
              v79 = Hasher._finalize()();
              v80 = -1 << *(v50 + 32);
              v81 = v79 & ~v80;
              if ((*(v110 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
              {
                v82 = ~v80;
                while (1)
                {
                  v83 = (v50[6] + 16 * v81);
                  v84 = *v83 == v63 && v83[1] == v64;
                  if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v81 = (v81 + 1) & v82;
                  if (((*(v110 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
                  {
                    goto LABEL_67;
                  }
                }

                if (qword_100936300 != -1)
                {
                  swift_once();
                }

                v87 = type metadata accessor for Logger();
                sub_100006654(v87, qword_10094A590);

                v88 = a2;
                v89 = Logger.logObject.getter();
                v90 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v89, v90))
                {
                  v91 = swift_slowAlloc();
                  v111 = swift_slowAlloc();
                  *v91 = v100;
                  *(v91 + 4) = sub_10000668C(v58, v59, &v111);
                  *(v91 + 12) = 2082;
                  v92 = [v88 remObjectID];
                  if (v92)
                  {
                    v93 = v92;
                    v94 = [v92 description];

                    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v97 = v96;
                  }

                  else
                  {
                    v97 = 0xE300000000000000;
                    v95 = 7104878;
                  }

                  v98 = sub_10000668C(v95, v97, &v111);

                  *(v91 + 14) = v98;
                  _os_log_impl(&_mh_execute_header, v89, v90, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v91, 0x16u);
                  swift_arrayDestroy();

                  a2 = v101;
                }

                else
                {
                }

                v54 = v105;
                sub_1003B15B4(v113, a3, a4);
                v99 = String._bridgeToObjectiveC()();

                v7 = v104;
                [v107 forceMergeFromMap:v104 forKey:v99];

                goto LABEL_38;
              }

              goto LABEL_67;
            }
          }

          else
          {
          }
        }
      }
    }

    v50 = _swiftEmptySetSingleton;
    goto LABEL_35;
  }

  LOBYTE(v111) = 0;
  sub_1003B15B4(&v111, a3, a4);
  LOBYTE(v111) = 1;
  sub_1003B15B4(&v111, a3, a4);
  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 0;
  }

  v51 = sub_1001287F0(v6);

  if (v51)
  {
    type metadata accessor for REMCDTemplate();
    v52 = swift_dynamicCastClass();
    if (!v52)
    {
    }
  }

  else
  {
    v52 = 0;
  }

  [a3 setTemplate:v52];
}

void sub_1004E7498(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
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
    v19 = sub_1004DAFEC(v122, 0);
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
                v79 = _findStringSwitchCase(cases:string:)(&off_1008DE718, v78);
                if (v79 > 2)
                {
                  v83._countAndFlagsBits = v76;
                  v83._object = v77;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DE780, v83))
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
                    v131[0] = &_s6FieldsON_5;
                    sub_1000F5104(&qword_10094A638, &qword_1007AE8F0);
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
                    sub_1004786A0(v131, v117, v119, v118);
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
                  v81 = 0x73694C7472616D73;
                }

                if (v80 == 1)
                {
                  v82 = 0xEB00000000656D61;
                }

                else
                {
                  v82 = 0xE900000000000074;
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

                sub_1004786A0(v131, v117, v119, v118);
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
  sub_1004786A0(&v129, v16, v119, v118);
  LOBYTE(v129) = 2;
  sub_1004786A0(&v129, v16, v18, v17);
  v124 = sub_1004DAFEC(v122, 1);
LABEL_83:
}

void sub_1004E83E0(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = [swift_getObjCClassFromObject() cdEntityName];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [a1 identifier];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_100031B58(v12, v15, &unk_100939D90, "8\n\r");
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    (*(v5 + 16))(v8, v15, v4);
    sub_1000050A4(v15, &unk_100939D90, "8\n\r");
    v22 = UUID.uuidString.getter();
    v21 = v23;
    (*(v5 + 8))(v8, v4);
  }

  v24 = [objc_opt_self() ckRecordKeyForMinimumSupportedVersion];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (CKRecord.subscript.getter())
  {
    swift_unknownObjectRelease();
    v28 = CKRecord.subscript.getter();
    v59 = v22;
    if (v28)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;

        if (qword_100936300 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_100006654(v31, qword_10094A590);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v34 = 136446466;
          v35 = sub_10000668C(v60, v18, &v62);

          *(v34 + 4) = v35;
          *(v34 + 12) = 2082;
          v36 = sub_10000668C(v59, v21, &v62);

          *(v34 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v32, v33, "REMCDObjectSystemFieldsMerging: Merged updated minimumSupportedVersion as NSNumber from CK record {entity: %{public}s, identifier: %{public}s}", v34, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        [a1 setMinimumSupportedVersion:{objc_msgSend(v30, "integerValue")}];
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_10094A590);

    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v50 = 136446978;
      *(v50 + 4) = sub_10000668C(v25, v27, &v62);
      *(v50 + 12) = 2082;
      v51 = sub_10000668C(v60, v18, &v62);

      *(v50 + 14) = v51;
      *(v50 + 22) = 2082;
      v52 = sub_10000668C(v59, v21, &v62);

      *(v50 + 24) = v52;
      *(v50 + 32) = 2080;
      v53 = CKRecord.subscript.getter();

      v61 = v53;
      sub_1000F5104(&qword_100944EF0, &unk_1007AE8D0);
      v54 = String.init<A>(describing:)();
      v56 = sub_10000668C(v54, v55, &v62);

      *(v50 + 34) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "REMCDObjectSystemFieldsMerging: Unknown kind of value in ckRecord[%{public}s] {entity: %{public}s, identifier: %{public}s, value: %s}", v50, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {

    v37 = [a1 minimumSupportedVersion];
    v38 = kREMSupportedVersionUnset;
    if (v37 == kREMSupportedVersionUnset)
    {
    }

    else
    {
      v39 = v22;
      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100006654(v40, qword_10094A590);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v43 = 136446466;
        v44 = sub_10000668C(v60, v18, &v62);

        *(v43 + 4) = v44;
        *(v43 + 12) = 2082;
        v45 = sub_10000668C(v39, v21, &v62);

        *(v43 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "REMCDObjectSystemFieldsMerging: Found a case we are merging down a Unset version number from CK while local object version isn't unset {entity: %{public}s, identifier: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      [a1 setMinimumSupportedVersion:v38];
    }
  }
}

void sub_1004E8C90(NSObject *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.getter();

  if ((v91 & 1) == 0 && v90 == 1)
  {
    sub_1004E83E0(a3, a4);

    return;
  }

  v6 = sub_1004DB734(a1, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CKRecordKeyValueSetting.subscript.getter();

  if ((v91 & 1) != 0 || v90 != 1 || ![a2 markedForDeletion])
  {
    if (qword_100936300 != -1)
    {
      goto LABEL_58;
    }

    goto LABEL_13;
  }

  if (qword_100936300 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094A590);
  v9 = a1;
  a1 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(a1, v10))
  {
    v11 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = CKRecord.recordType.getter();
    v14 = v6;
    v15 = sub_10000668C(v12, v13, &v90);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = [v9 recordID];
    v17 = [v16 ckShortDescription];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10000668C(v18, v20, &v90);
    v6 = v14;

    *(v11 + 14) = v21;
    v22 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
LABEL_15:
    _os_log_impl(&_mh_execute_header, a1, v10, v22, v11, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

  while (1)
  {
LABEL_16:

LABEL_17:
    if ([a2 shouldPerformCloudSchemaCatchUpSync])
    {
      v35 = [a2 storeControllerManagedObjectContext];
      if (v35)
      {
        a1 = v35;
        v36 = [a2 accountCKIdentifier];
        if (v36)
        {
          v37 = v36;
          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = [a1 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v42 + 16))
          {
            v43 = sub_100005F4C(v38, v40);
            v45 = v44;

            if (v45)
            {
              v46 = *(*(v42 + 56) + 8 * v43);

              v47 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v46, "persistenceCloudSchemaVersion")}];
              v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = sub_1001A5660(v48);

              goto LABEL_27;
            }
          }

          else
          {
          }
        }
      }
    }

    v49 = _swiftEmptySetSingleton;
LABEL_27:
    v88 = [a2 createResolutionTokenMapIfNecessary];
    v50 = [v6 getTokenKeys];
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = *(v51 + 16);
    if (!v52)
    {
      break;
    }

    v86 = v6;
    v87 = a2;
    v6 = 0;
    v53 = v51 + 32;
    a2 = 0x80000001007E8C60;
    v89 = v49 + 7;
    while (v6 < *(v51 + 16))
    {
      v54 = (v53 + 16 * v6);
      v55 = *v54;
      a1 = v54[1];

      v56._countAndFlagsBits = v55;
      v56._object = a1;
      if (_findStringSwitchCase(cases:string:)(&off_1008DE7B8, v56))
      {
      }

      else if ([v87 shouldPerformCloudSchemaCatchUpSync] & 1) != 0 && v49[2] && (v57 = v49[5], Hasher.init(_seed:)(), String.hash(into:)(), v58 = Hasher._finalize()(), v59 = -1 << *(v49 + 32), v60 = v58 & ~v59, ((*(v89 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60)))
      {
        v61 = ~v59;
        while (1)
        {
          v62 = (v49[6] + 16 * v60);
          v63 = *v62 == 0xD000000000000017 && 0x80000001007E8C60 == v62[1];
          if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v60 = (v60 + 1) & v61;
          if (((*(v89 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (qword_100936300 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100006654(v66, qword_10094A590);

        v67 = v87;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        v82 = v69;
        if (os_log_type_enabled(v68, v69))
        {
          log = v68;
          v70 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v90 = v79;
          *v70 = 136446466;
          *(v70 + 4) = sub_10000668C(v55, a1, &v90);
          buf = v70;
          *(v70 + 12) = 2082;
          v71 = [v67 remObjectID];
          v53 = v51 + 32;
          if (v71)
          {
            v72 = v71;
            v73 = [v71 description];

            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v76 = v81;
          }

          else
          {
            v75 = 0xE300000000000000;
            v76 = 7104878;
          }

          v77 = sub_10000668C(v76, v75, &v90);

          *(buf + 14) = v77;
          _os_log_impl(&_mh_execute_header, log, v82, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", buf, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v53 = v51 + 32;
        }

        sub_1004E83E0(a3, a4);
        v78 = String._bridgeToObjectiveC()();

        [v88 forceMergeFromMap:v86 forKey:v78];
      }

      else
      {
LABEL_43:
        v64 = String._bridgeToObjectiveC()();

        v65 = [v88 compareAndMergeWithMap:v86 forKey:v64];

        if (v65 == -1)
        {
          sub_1004E83E0(a3, a4);
        }
      }

      if (++v6 == v52)
      {

        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_13:
    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_10094A590);
    v24 = a1;
    a1 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(a1, v10))
    {
      v11 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v11 = 136446466;
      v25 = CKRecord.recordType.getter();
      v27 = v6;
      v28 = sub_10000668C(v25, v26, &v90);

      *(v11 + 4) = v28;
      *(v11 + 12) = 2082;
      v29 = [v24 recordID];
      v30 = [v29 ckShortDescription];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_10000668C(v31, v33, &v90);
      v6 = v27;

      *(v11 + 14) = v34;
      v22 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
      goto LABEL_15;
    }
  }

LABEL_56:
}

void sub_1004E96DC(void *a1, int a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7)
{
  v125 = a7;
  v126 = a6;
  v124 = a5;
  v129 = a3;
  v127 = a2;
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v120 - v11;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v128 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v137 & 1) != 0 || v136 != 1)
  {
    v21 = sub_1004DBE24(v128, 0);
    v130 = v21;
    if (v22)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      CKRecordKeyValueSetting.subscript.getter();

      if ((v137 & 1) != 0 || v136 != 1 || ![a4 markedForDeletion])
      {
        if (qword_100936300 != -1)
        {
          goto LABEL_100;
        }

        goto LABEL_16;
      }

      if (qword_100936300 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10094A590);
      v24 = v128;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *v27 = 136446466;
        v28 = CKRecord.recordType.getter();
        v30 = sub_10000668C(v28, v29, &v136);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2082;
        v31 = [v24 recordID];
        v32 = [v31 ckShortDescription];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_10000668C(v33, v35, &v136);

        *(v27 + 14) = v36;
        v37 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
        goto LABEL_18;
      }

LABEL_19:
    }

    if ([a4 shouldPerformCloudSchemaCatchUpSync])
    {
      v49 = [a4 storeControllerManagedObjectContext];
      if (v49)
      {
        v50 = v49;
        v51 = [a4 accountCKIdentifier];
        if (v51)
        {
          v52 = v51;
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = [v50 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
          sub_1000060C8(0, &unk_10094A618, off_1008D4110);
          v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v57 + 16))
          {
            v58 = sub_100005F4C(v53, v55);
            v60 = v59;

            if (v60)
            {
              v61 = *(*(v57 + 56) + 8 * v58);

              v62 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a4 persistenceCloudSchemaVersion:{objc_msgSend(v61, "persistenceCloudSchemaVersion")}];
              v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v64 = sub_1001A5660(v63);

LABEL_32:
              v131 = [a4 createResolutionTokenMapIfNecessary];
              v66 = [v21 getTokenKeys];
              v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v134 = *(v67 + 16);
              if (!v134)
              {
LABEL_97:

                goto LABEL_98;
              }

              v69 = 0;
              v133 = v67 + 32;
              v135 = v64 + 7;
              *&v68 = 136446466;
              v120 = v68;
              *&v68 = 136446722;
              v122 = v68;
              v123 = a4;
              v132 = v67;
              while (1)
              {
                if (v69 >= *(v67 + 16))
                {
                  __break(1u);
LABEL_100:
                  swift_once();
LABEL_16:
                  v38 = type metadata accessor for Logger();
                  sub_100006654(v38, qword_10094A590);
                  v39 = v128;
                  v25 = Logger.logObject.getter();
                  v26 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v25, v26))
                  {
                    v27 = swift_slowAlloc();
                    v136 = swift_slowAlloc();
                    *v27 = 136446466;
                    v40 = CKRecord.recordType.getter();
                    v42 = sub_10000668C(v40, v41, &v136);

                    *(v27 + 4) = v42;
                    *(v27 + 12) = 2082;
                    v43 = [v39 recordID];
                    v44 = [v43 ckShortDescription];

                    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v47 = v46;

                    v48 = sub_10000668C(v45, v47, &v136);

                    *(v27 + 14) = v48;
                    v37 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_18:
                    _os_log_impl(&_mh_execute_header, v25, v26, v37, v27, 0x16u);
                    swift_arrayDestroy();
                    v21 = v130;
                  }

                  goto LABEL_19;
                }

                v78 = (v133 + 16 * v69);
                v79 = *v78;
                v80 = v78[1];

                v81._countAndFlagsBits = v79;
                v81._object = v80;
                v82 = _findStringSwitchCase(cases:string:)(&off_1008DE840, v81);
                if (v82 > 3)
                {
                  v99._countAndFlagsBits = v79;
                  v99._object = v80;
                  if (!_findStringSwitchCase(cases:string:)(&off_1008DE8C0, v99))
                  {

                    goto LABEL_37;
                  }

                  if (qword_100936300 != -1)
                  {
                    swift_once();
                  }

                  v100 = type metadata accessor for Logger();
                  sub_100006654(v100, qword_10094A590);
                  v101 = v128;

                  v102 = Logger.logObject.getter();
                  v103 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v102, v103))
                  {
                    v70 = swift_slowAlloc();
                    v136 = swift_slowAlloc();
                    *v70 = v122;
                    v71 = sub_10000668C(v79, v80, &v136);

                    *(v70 + 4) = v71;
                    *(v70 + 12) = 2082;
                    v72 = CKRecord.recordType.getter();
                    v74 = sub_10000668C(v72, v73, &v136);

                    *(v70 + 14) = v74;
                    *(v70 + 22) = 2082;
                    v138[0] = &_s6FieldsON_6;
                    sub_1000F5104(&unk_10094A628, &unk_1007AE8E0);
                    v75 = String.init<A>(reflecting:)();
                    v77 = sub_10000668C(v75, v76, &v136);

                    *(v70 + 24) = v77;
                    _os_log_impl(&_mh_execute_header, v102, v103, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v70, 0x20u);
                    swift_arrayDestroy();
                    v21 = v130;

                    a4 = v123;
                  }

                  else
                  {
                  }

                  goto LABEL_36;
                }

                v83 = v82;
                LOBYTE(v138[0]) = v82;
                if ([a4 shouldPerformCloudSchemaCatchUpSync])
                {
                  v84 = 0x6163696E6F6E6163;
                  if (v83 != 2)
                  {
                    v84 = 1953720684;
                  }

                  v85 = 0xED0000656D614E6CLL;
                  if (v83 != 2)
                  {
                    v85 = 0xE400000000000000;
                  }

                  v86 = 0x6E6F697461657263;
                  if (v83)
                  {
                    v86 = 0x4E79616C70736964;
                  }

                  v87 = 0xEC00000065746144;
                  if (v83)
                  {
                    v87 = 0xEB00000000656D61;
                  }

                  if (v83 <= 1u)
                  {
                    v88 = v86;
                  }

                  else
                  {
                    v88 = v84;
                  }

                  if (v83 <= 1u)
                  {
                    v89 = v87;
                  }

                  else
                  {
                    v89 = v85;
                  }

                  if (v64[2])
                  {
                    v90 = v64[5];
                    Hasher.init(_seed:)();
                    String.hash(into:)();
                    v91 = Hasher._finalize()();
                    v92 = -1 << *(v64 + 32);
                    v93 = v91 & ~v92;
                    if ((*(v135 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
                    {
                      v94 = ~v92;
                      while (1)
                      {
                        v95 = (v64[6] + 16 * v93);
                        v96 = *v95 == v88 && v95[1] == v89;
                        if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v93 = (v93 + 1) & v94;
                        if (((*(v135 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
                        {
                          goto LABEL_64;
                        }
                      }

                      if (qword_100936300 != -1)
                      {
                        swift_once();
                      }

                      v106 = type metadata accessor for Logger();
                      sub_100006654(v106, qword_10094A590);

                      v107 = a4;
                      v108 = Logger.logObject.getter();
                      v109 = static os_log_type_t.default.getter();

                      v110 = os_log_type_enabled(v108, v109);
                      v21 = v130;
                      if (v110)
                      {
                        v111 = swift_slowAlloc();
                        v121 = swift_slowAlloc();
                        v136 = v121;
                        *v111 = v120;
                        *(v111 + 4) = sub_10000668C(v79, v80, &v136);
                        *(v111 + 12) = 2082;
                        v112 = [v107 remObjectID];
                        if (v112)
                        {
                          v113 = v112;
                          v114 = [v112 description];

                          v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v117 = v116;
                        }

                        else
                        {
                          v117 = 0xE300000000000000;
                          v115 = 7104878;
                        }

                        v118 = sub_10000668C(v115, v117, &v136);

                        *(v111 + 14) = v118;
                        _os_log_impl(&_mh_execute_header, v108, v109, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v111, 0x16u);
                        swift_arrayDestroy();

                        a4 = v123;
                        v21 = v130;
                      }

                      else
                      {
                      }

                      sub_10059FC28(v138, v124, v126, v125);
                      v119 = String._bridgeToObjectiveC()();

                      [v131 forceMergeFromMap:v21 forKey:v119];

                      goto LABEL_36;
                    }
                  }

LABEL_64:

                  v21 = v130;
                }

                v97 = String._bridgeToObjectiveC()();

                v98 = [v131 compareAndMergeWithMap:v21 forKey:v97];

                if (v129)
                {
                  if (v83 > 1u && v83 != 2)
                  {

LABEL_36:
                    v67 = v132;
                    goto LABEL_37;
                  }

                  v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v104)
                  {
                    goto LABEL_36;
                  }
                }

                if (v127)
                {
                  if (v83 <= 1u || v83 == 2)
                  {
                    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    v67 = v132;
                    if ((v105 & 1) == 0 && v98 != -1)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {

                    v67 = v132;
                  }

LABEL_92:
                  sub_10059FC28(v138, v124, v126, v125);
                  goto LABEL_37;
                }

                v67 = v132;
                if (v98 == -1)
                {
                  goto LABEL_92;
                }

LABEL_37:
                if (++v69 == v134)
                {
                  goto LABEL_97;
                }
              }
            }
          }

          else
          {
          }
        }
      }
    }

    v64 = _swiftEmptySetSingleton;
    goto LABEL_32;
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

  v16 = v124;
  [v124 setCreationDate:isa];

  LOBYTE(v136) = 1;
  v17 = v16;
  v18 = v126;
  sub_10059FC28(&v136, v17, v126, v125);
  v19 = [v18 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  swift_unknownObjectRelease();
  if (v137)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v65 = v124;
  [v124 setCanonicalName:v20];

  LOBYTE(v136) = 3;
  sub_10059FC28(&v136, v65, v126, v125);
  v131 = sub_1004DBE24(v128, 1);
LABEL_98:
}

void sub_1004EA734(void *a1, void *a2, void *a3, void *a4)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  v104 = a1;
  CKRecordKeyValueSetting.subscript.getter();

  if ((v110 & 1) == 0 && v109 == 1)
  {
    LOBYTE(v109) = 0;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 1;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 2;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 3;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 4;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 5;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 6;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 7;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 8;
    sub_10071D4BC(&v109, a3, a4);
    LOBYTE(v109) = 9;
    sub_10071D4BC(&v109, a3, a4);

    return;
  }

  v6 = sub_1004DC5B0(a1, 0);
  v101 = v6;
  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    CKRecordKeyValueSetting.subscript.getter();

    if ((v110 & 1) != 0 || v109 != 1 || ![a2 markedForDeletion])
    {
      if (qword_100936300 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_13;
    }

    if (qword_100936300 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094A590);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v12 = 136446466;
      v13 = CKRecord.recordType.getter();
      v15 = sub_10000668C(v13, v14, &v109);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      v16 = [v9 recordID];
      v17 = [v16 ckShortDescription];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10000668C(v18, v20, &v109);
      v6 = v101;

      *(v12 + 14) = v21;
      v22 = "merge() did repair resolution token map but since the record & CD object are in deleted state we will avoid uploading changes {recordType: %{public}s, recordID=%{public}s}";
      goto LABEL_15;
    }

LABEL_16:
  }

  if ([a2 shouldPerformCloudSchemaCatchUpSync])
  {
    v34 = [a2 storeControllerManagedObjectContext];
    if (v34)
    {
      v35 = v34;
      v36 = [a2 accountCKIdentifier];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v35 cloudSchemaCatchUpSyncContextsByAccountIdentifier];
        sub_1000060C8(0, &unk_10094A618, off_1008D4110);
        v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v42 + 16))
        {
          v43 = sub_100005F4C(v38, v40);
          v45 = v44;

          if (v45)
          {
            v46 = *(*(v42 + 56) + 8 * v43);

            v47 = [objc_opt_self() incompatiblePropertyKeysForCloudObject:a2 persistenceCloudSchemaVersion:{objc_msgSend(v46, "persistenceCloudSchemaVersion")}];
            v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v49 = sub_1001A5660(v48);

            goto LABEL_27;
          }
        }

        else
        {
        }
      }
    }
  }

  v49 = _swiftEmptySetSingleton;
LABEL_27:
  v105 = [a2 createResolutionTokenMapIfNecessary];
  v50 = [v6 getTokenKeys];
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v107 = *(v51 + 16);
  if (v107)
  {
    v53 = 0;
    v106 = v51 + 32;
    v108 = v49 + 7;
    *&v52 = 136446466;
    v98 = v52;
    v99 = a2;
    v100 = v51;
    do
    {
      if (v53 >= *(v51 + 16))
      {
        __break(1u);
LABEL_68:
        swift_once();
LABEL_13:
        v23 = type metadata accessor for Logger();
        sub_100006654(v23, qword_10094A590);
        v24 = v104;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          *v12 = 136446466;
          v25 = CKRecord.recordType.getter();
          v27 = sub_10000668C(v25, v26, &v109);

          *(v12 + 4) = v27;
          *(v12 + 12) = 2082;
          v28 = [v24 recordID];
          v29 = [v28 ckShortDescription];

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v33 = sub_10000668C(v30, v32, &v109);
          v6 = v101;

          *(v12 + 14) = v33;
          v22 = "merge() did repair resolution token map for {recordType=%{public}s, recordID=%{public}s}";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v10, v11, v22, v12, 0x16u);
          swift_arrayDestroy();
        }

        goto LABEL_16;
      }

      v54 = (v106 + 16 * v53);
      v56 = *v54;
      v55 = v54[1];
      swift_bridgeObjectRetain_n();
      v57._countAndFlagsBits = v56;
      v57._object = v55;
      v58 = _findStringSwitchCase(cases:string:)(&off_1008DE928, v57);

      if (v58 > 9)
      {
        v72._countAndFlagsBits = v56;
        v72._object = v55;
        if (_findStringSwitchCase(cases:string:)(&off_1008DEA38, v72))
        {
          if (qword_100936300 != -1)
          {
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          sub_100006654(v73, qword_10094A590);
          v74 = v104;

          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *v77 = 136446722;
            v78 = sub_10000668C(v56, v55, &v109);

            *(v77 + 4) = v78;
            *(v77 + 12) = 2082;
            v79 = CKRecord.recordType.getter();
            v81 = sub_10000668C(v79, v80, &v109);

            *(v77 + 14) = v81;
            *(v77 + 22) = 2082;
            *v111 = &_s6FieldsON_7;
            sub_1000F5104(&qword_10094A610, &qword_1007AE8C8);
            v82 = String.init<A>(reflecting:)();
            v84 = sub_10000668C(v82, v83, &v109);

            *(v77 + 24) = v84;
            _os_log_impl(&_mh_execute_header, v75, v76, "Key in CKRecord's resolution token map is unrecognized {key: %{public}s, recordType: %{public}s, fieldType: %{public}s}", v77, 0x20u);
            swift_arrayDestroy();
            v51 = v100;

            v6 = v101;
          }

          else
          {
          }

          a2 = v99;
        }

        else
        {
        }
      }

      else
      {
        v111[0] = v58;
        if ([a2 shouldPerformCloudSchemaCatchUpSync])
        {
          v59 = sub_10071A064(v58);
          v61 = v60;
          if (v49[2])
          {
            v62 = v59;
            v63 = v49[5];
            Hasher.init(_seed:)();
            String.hash(into:)();
            v64 = Hasher._finalize()();
            v65 = -1 << *(v49 + 32);
            v66 = v64 & ~v65;
            if ((*(v108 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
            {
              v67 = ~v65;
              while (1)
              {
                v68 = (v49[6] + 16 * v66);
                v69 = *v68 == v62 && v68[1] == v61;
                if (v69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v66 = (v66 + 1) & v67;
                if (((*(v108 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              if (qword_100936300 != -1)
              {
                swift_once();
              }

              v85 = type metadata accessor for Logger();
              sub_100006654(v85, qword_10094A590);

              v86 = a2;
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                *v89 = v98;
                *(v89 + 4) = sub_10000668C(v56, v55, &v109);
                *(v89 + 12) = 2082;
                v90 = [v86 remObjectID];
                if (v90)
                {
                  v91 = v90;
                  v92 = [v90 description];

                  v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v95 = v94;
                }

                else
                {
                  v95 = 0xE300000000000000;
                  v93 = 7104878;
                }

                v96 = sub_10000668C(v93, v95, &v109);

                *(v89 + 14) = v96;
                _os_log_impl(&_mh_execute_header, v87, v88, "merge() is forced because we are in CloudSchemaCatchUpSync and this property key is incompatible with the runtime schema {key: %{public}s, objectID: %{public}s}", v89, 0x16u);
                swift_arrayDestroy();

                a2 = v99;
              }

              else
              {
              }

              v6 = v101;
              sub_10071D4BC(v111, a3, a4);
              v97 = String._bridgeToObjectiveC()();

              [v105 forceMergeFromMap:v101 forKey:v97];

              v51 = v100;
              goto LABEL_30;
            }
          }

LABEL_43:

          v51 = v100;
          v6 = v101;
        }

        v70 = String._bridgeToObjectiveC()();

        v71 = [v105 compareAndMergeWithMap:v6 forKey:v70];

        if (sub_10018F5D8(v58, &off_1008DEA70) && v71 || !sub_10018F5D8(v58, &off_1008DEA98) && v71 == -1)
        {
          sub_10071D4BC(v111, a3, a4);
        }
      }

LABEL_30:
      ++v53;
    }

    while (v53 != v107);
  }
}

char *sub_1004EB4B0(void *a1)
{
  if (a1)
  {
    sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
    sub_1001AADC4();
    v2 = a1;
    v3 = Sequence.elements<A>(ofType:)();
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_23:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = _swiftEmptyArrayStorage;
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_22;
              }

              v10 = *(v4 + 8 * v9 + 32);
            }

            v11 = v10;
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = [v10 ckIdentifier];
            if (v12)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_25;
            }
          }

          v21 = v2;
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100365788(0, *(v8 + 2) + 1, 1, v8);
          }

          v17 = *(v8 + 2);
          v16 = *(v8 + 3);
          if (v17 >= v16 >> 1)
          {
            v8 = sub_100365788((v16 > 1), v17 + 1, 1, v8);
          }

          *(v8 + 2) = v17 + 1;
          v18 = &v8[16 * v17];
          v2 = v21;
          *(v18 + 4) = v14;
          *(v18 + 5) = v20;
        }

        while (v7 != v6);
        goto LABEL_25;
      }
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v8 = _swiftEmptyArrayStorage;
LABEL_25:

    return v8;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004EB6C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8)
{

  return sub_1000616D4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1004EB724()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A680);
  v1 = sub_100006654(v0, qword_10094A680);
  if (qword_100936470 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004EB7EC()
{
  v0 = sub_1000F5104(&qword_10094A740, &unk_1007AE960);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return PassthroughSubject.init()();
}

void sub_1004EB830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = *a2;
  sub_1004EBE00(a3, a4, a5);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v44 = v13;
  v47 = v8;
  while (v12)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(v8 + 48) + 24 * (v16 | (v15 << 6));
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    *(swift_allocObject() + 16) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v21 = v19;
    v22 = v18;

    v38 = v20;
    REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

    v23 = v49;
    if (v49)
    {
      v40 = v48;
      v24 = String._bridgeToObjectiveC()();
      [a8 giveAccountWithIDAnotherChance:{v24, 0, 0, 0, 0, sub_1004EBF68, v38, 0, 0, &type metadata for String}];

      if (qword_100936308 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_10094A680);
      v26 = v22;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v29 = 136446466;
        log = v27;
        v30 = sub_10000668C(v40, v23, &v48);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2082;
        v31 = [v26 internalDescription];
        v41 = v26;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = sub_10000668C(v32, v34, &v48);

        *(v29 + 14) = v35;
        v27 = log;
        _os_log_impl(&_mh_execute_header, log, v28, "RDDisabledAccountsEventHandler did reset babysitter for {babysittableWaiterID: %{public}s, accountTypeHost: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v14 = v15;
      v8 = v47;
      v13 = v44;
    }

    else
    {

      v14 = v15;
      v13 = v44;
      v8 = v47;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  v36 = *(a1 + 16);
  if (v36)
  {
    v37 = *(a1 + 24);

    v36(v8);
    sub_10003E114(v36);
  }
}

uint64_t sub_1004EBC88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UUID.uuidString.getter();
  v12 = v11;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1004EBD9C()
{
  v1 = v0[3];
  sub_10003E114(v0[2]);
  v2 = v0[4];

  return swift_deallocClassInstance();
}

void sub_1004EBE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(0, 0xF000000000000000, ObjectType, a2);
  (*(a3 + 16))(0, 0xF000000000000000, ObjectType, a3);
  if (qword_100936308 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094A680);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "RDDisabledAccountsEventHandler did reset accountsListCategorizedCountsCache and hashtagLabelsInCustomSmartListFilterCache", v8, 2u);
  }
}

uint64_t sub_1004EBF68@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1004EBF88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A748);
  v1 = sub_100006654(v0, qword_10094A748);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004EC2B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDXPCIndexingPerformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004EC320(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v2 = type metadata accessor for Date();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = REMAppBundleIdentifier;
  v15 = objc_allocWithZone(CSSearchableIndex);
  v16 = v14;
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();

  v54 = [v15 initWithName:v17 protectionClass:v18 bundleIdentifier:v16];

  static UTType.image.getter();
  UTType.identifier.getter();
  v19 = *(v7 + 8);
  v19(v13, v6);
  v20 = objc_allocWithZone(CSSearchableItemAttributeSet);
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 initWithItemContentType:v21];

  v23 = String._bridgeToObjectiveC()();
  [v22 setTitle:v23];

  v53 = v5;
  Date.init()();
  v24 = objc_opt_self();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26 = [v24 localizedStringFromDate:isa dateStyle:1 timeStyle:1];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  aBlock = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  aBlock = 0xD000000000000016;
  v60 = 0x80000001007FAE50;
  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = String._bridgeToObjectiveC()();

  [v22 setContentDescription:v31];

  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100791340;
  static UTType.utf8PlainText.getter();
  v33 = UTType.identifier.getter();
  v35 = v34;
  v19(v13, v6);
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  static UTType.utf16PlainText.getter();
  v36 = UTType.identifier.getter();
  v38 = v37;
  v19(v10, v6);
  *(v32 + 48) = v36;
  *(v32 + 56) = v38;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setProviderDataTypeIdentifiers:v39];

  v40 = objc_allocWithZone(CSSearchableItem);
  v41 = v22;
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v40 initWithUniqueIdentifier:v42 domainIdentifier:v43 attributeSet:v41];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1007953F0;
  *(v45 + 32) = v44;
  sub_1004ECD94();
  v46 = v44;
  v47 = Array._bridgeToObjectiveC()().super.isa;

  v48 = swift_allocObject();
  v49 = v56;
  *(v48 + 16) = v55;
  *(v48 + 24) = v49;
  v63 = sub_100189954;
  v64 = v48;
  aBlock = _NSConcreteStackBlock;
  v60 = 1107296256;
  v61 = sub_100042968;
  v62 = &unk_1008F4EA0;
  v50 = _Block_copy(&aBlock);

  v51 = v54;
  [v54 indexSearchableItems:v47 completionHandler:v50];
  _Block_release(v50);

  return (*(v57 + 8))(v53, v58);
}

uint64_t sub_1004EC934(uint64_t a1, uint64_t a2)
{
  if (qword_100936310 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_10094A748);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon receives reindexAllSearchableItems", v7, 2u);
  }

  [*(a1 + OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController) reindexAllSearchableItems];
  v8 = *(a2 + 16);

  return v8(a2);
}

uint64_t sub_1004ECA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100936310 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10094A748);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = Array.description.getter();
    v12 = sub_10000668C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Daemon receives reindexSearchableItems {identifiers: %s}", v8, 0xCu);
    sub_10000607C(v9);
  }

  v13 = *(a2 + OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 reindexSearchableItemsWithIdentifiers:isa];

  v15 = *(a3 + 16);

  return v15(a3);
}

void sub_1004ECC18(void *a1, uint64_t a2)
{
  v4 = REMDaemonCoreSpotlightIndexName;
  v5 = static NSFileProtectionType.rem_spotlightIndexFileProtection.getter();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = REMAppBundleIdentifier;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = REMAppBundleIdentifier;
    v8 = 0;
  }

  v9 = [objc_allocWithZone(CSSearchableIndex) initWithName:v4 protectionClass:v8 bundleIdentifier:v7];

  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100042968;
    v10[3] = &unk_1008F4E28;
    a1 = _Block_copy(v10);
  }

  [v9 deleteAllSearchableItemsWithCompletionHandler:a1];
  _Block_release(a1);
}

unint64_t sub_1004ECD94()
{
  result = qword_10094A790;
  if (!qword_10094A790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094A790);
  }

  return result;
}

id REMCDDueDateDeltaAlert.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDDueDateDeltaAlert.remChangedObjectID()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15[1] = ObjectType;
  sub_1000F5104(&unk_100950F40, &qword_1007AE990);
  String.init<A>(describing:)();
  v10 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 initWithUUID:isa entityName:v12];

  (*(v4 + 8))(v8, v3);
  return v13;
}

uint64_t sub_1004ED154()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094A7C0);
  v1 = sub_100006654(v0, qword_10094A7C0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004ED21C()
{
  _StringGuts.grow(_:)(26);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x646E696D6572202CLL;
  v1._object = 0xED0000203A737265;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 125;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x203A737473696C7BLL;
}

uint64_t sub_1004ED328(void *a1)
{
  *(v1 + 16) = xmmword_1007AE9C0;
  *(v1 + 64) = 1;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 32) = 0x80000001007FB080;
  *(v1 + 40) = a1;
  [a1 setMode:4];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return v1;
}

void sub_1004ED390(void *a1, void *a2)
{
  v4 = a1;
  if (![a1 inactive])
  {
LABEL_17:
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094A7C0);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = [v4 objectID];
    *(inited + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 48) = v23;
    sub_1001F67C8(inited);

    v24 = "RDAccountDataMover: The copy-from account is an inactivated account {%{public}@}.";
    v25 = 81;
LABEL_23:
    sub_10054573C(v24, v25, 2);
    __break(1u);
    return;
  }

  if ([v4 type] != 3)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10094A7C0);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_100791300;
    *(v27 + 32) = 48;
    *(v27 + 40) = 0xE100000000000000;
    v28 = [v4 objectID];
    *(v27 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v27 + 48) = v28;
    sub_1001F67C8(v27);

    v24 = "RDAccountDataMover: The copy-from account is not a CalDAV account {%{public}@}.";
    v25 = 79;
    goto LABEL_23;
  }

  if ([a2 type] == 1 || objc_msgSend(a2, "type") == 5 || !objc_msgSend(a2, "type"))
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094A7C0);
    v4 = sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_100791300;
    *(v19 + 32) = 48;
    *(v19 + 40) = 0xE100000000000000;
    v20 = [a2 objectID];
    *(v19 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v19 + 48) = v20;
    sub_1001F67C8(v19);

    sub_10054573C("RDAccountDataMover: The copy-to account is not a cloud account type {%{public}@}.", 81, 2);
    __break(1u);
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sub_1004F059C();
  if (!v2)
  {
    v7 = v6;
    sub_1004EDD70(v4, a2, v7);
    v8 = [v7 updateAccount:a2];
    [v8 setDaWasMigrated:1];
    sub_1004F0264();
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = v4;
    v11 = a2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v29 = v12;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543618;
      v16 = [v10 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2114;
      v17 = [v11 objectID];
      *(v14 + 14) = v17;
      v15[1] = v17;
      _os_log_impl(&_mh_execute_header, v29, v13, "RDAccountDataMover: Copied data from inactivated account, saved all changes and set .daWasMigrated=YES to cloud account {inactivatedAccount: %{public}@, cloudAccount: %{public}@}", v14, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();

      v12 = v29;
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1004ED92C(void *a1, void *a2)
{
  if ([a1 type] != 1)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10094A7C0);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = [a1 objectID];
    *(inited + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 48) = v23;
    sub_1001F67C8(inited);

    v19 = "RDAccountDataMover: The copy-from account is not a local account {%{public}@}.";
    v20 = 78;
    goto LABEL_19;
  }

  if ([a2 type] == 1 || objc_msgSend(a2, "type") == 5 || !objc_msgSend(a2, "type"))
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094A7C0);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_100791300;
    *(v17 + 32) = 48;
    *(v17 + 40) = 0xE100000000000000;
    v18 = [a2 objectID];
    *(v17 + 72) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(v17 + 48) = v18;
    sub_1001F67C8(v17);

    v19 = "RDAccountDataMover: The copy-to account is not a cloud account type {%{public}@}.";
    v20 = 81;
LABEL_19:
    sub_10054573C(v19, v20, 2);
    __break(1u);
    return;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sub_1004F059C();
  if (!v2)
  {
    v7 = v6;
    sub_1004EDD70(a1, a2, v7);
    v8 = [v7 updateAccount:a2];
    [v8 setDaWasMigrated:1];
    sub_1004F0264();
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = [v10 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDAccountDataMover: Saved all changes and set .daWasMigrated=YES to cloud account {cloudAccount: %{public}@}", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1004EDD70(void *a1, id a2, void *a3)
{
  v5 = v4;
  v124 = a3;
  *&v120 = type metadata accessor for UUID();
  v8 = *(v120 - 8);
  isa = v8[8].isa;
  __chkstk_darwin(v120);
  v119 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v3;
  v3[6] = 0;
  v3[7] = 0;
  *&v121 = v3 + 6;
  v11 = v3[5];
  v12 = [objc_opt_self() localAccountDefaultListID];
  v135 = 0;
  v13 = [v11 fetchListWithObjectID:v12 error:&v135];

  v14 = &selRef_hack_willSaveHandled;
  if (v13)
  {
    v15 = v135;
    v123 = v13;
    v16 = [v13 account];
    v17 = [v16 objectID];

    v18 = a2;
    v19 = [a2 objectID];
    v20 = v19;
    if (v17)
    {
      if (v19)
      {
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!v19)
      {
LABEL_11:
        a2 = v18;
        goto LABEL_12;
      }
    }

    v123 = 0;
    goto LABEL_11;
  }

  v22 = v135;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v123 = 0;
  v5 = 0;
LABEL_12:
  v135 = 0;
  v23 = [a1 fetchListsWithError:&v135];
  v24 = v135;
  if (!v23)
  {
    v74 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_61;
  }

  v25 = v23;
  v125 = sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v24;

  if (v26 >> 62)
  {
    goto LABEL_111;
  }

  v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  if (v29)
  {
    if (v29 < 1)
    {
      goto LABEL_115;
    }

    v127 = a2;
    a2 = 0;
    v133 = v26 & 0xC000000000000001;
    v118 = v8 + 1;
    v128 = &_swiftEmptyDictionarySingleton;
    *&v28 = 138543362;
    v129 = v28;
    *&v28 = 138543618;
    v117 = v28;
    v131 = v29;
    v132 = v26;
    while (1)
    {
      if (v133)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v26 + 8 * a2 + 32);
      }

      v32 = v31;
      if (qword_100936318 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100006654(v33, qword_10094A7C0);
      v8 = v32;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = v129;
        v38 = [v8 *(v14 + 3464)];
        *(v36 + 4) = v38;
        *v37 = v38;
        _os_log_impl(&_mh_execute_header, v34, v35, "RDAccountDataMover: Processing source list to consider... {objectID: %{public}@}", v36, 0xCu);
        sub_1000050A4(v37, &unk_100938E70, &unk_100797230);
        v29 = v131;

        v26 = v132;
      }

      if (([v8 daIsEventOnlyContainer]& 1) != 0)
      {
        goto LABEL_20;
      }

      if (([v8 daIsNotificationsCollection]& 1) != 0)
      {
        goto LABEL_20;
      }

      v39 = [v127 capabilities];
      v40 = [v39 supportsGroups];

      if ((v40 & 1) == 0 && ([v8 isGroup]& 1) != 0)
      {
        goto LABEL_20;
      }

      if ([v8 sharingStatus:v117]== 3)
      {
        goto LABEL_20;
      }

      if (*(v130 + 64) != 1 || ![v8 isSharedToMe])
      {
        break;
      }

      v8 = v8;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = v129;
        v45 = [v8 *(v14 + 3464)];
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "RDAccountDataMover: we chose to exclude this source list since someone else owns it {objectID: %{public}@}", v43, 0xCu);
        sub_1000050A4(v44, &unk_100938E70, &unk_100797230);

        v26 = v132;

        v30 = v41;
      }

      else
      {
        v30 = v8;
        v8 = v41;
      }

LABEL_19:

      v29 = v131;
LABEL_20:
      a2 = a2 + 1;

      if (v29 == a2)
      {
        goto LABEL_63;
      }
    }

    v122 = [v124 updateAccount:v127];
    if (v123)
    {
      v126 = v5;
      v46 = v123;
      v47 = [v8 name];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = [v46 name];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (v48 == v52 && v50 == v54)
      {

        v14 = 0x100929000;
LABEL_42:
        v56 = [v124 updateList:v46];
        v5 = v126;
        v26 = v132;
LABEL_48:
        v57 = v56;

        [v57 copyListDataFrom:v8];
        if (*(v130 + 80) == 1)
        {
          v58 = [v8 *(v14 + 3464)];
          v59 = [v58 uuid];

          v60 = v119;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          UUID.uuidString.getter();
          (v118->isa)(v60, v120);
          v61 = String._bridgeToObjectiveC()();
          v26 = v132;

          [v57 setExternalIdentifier:v61];
        }

        if (*(v130 + 81) == 1)
        {
          [v57 setSharingStatus:{-[NSObject sharingStatus](v8, "sharingStatus")}];
        }

        v62 = [v57 *(v14 + 3464)];
        v63 = v128;
        if ((v128 & 0xC000000000000001) != 0)
        {
          if (v128 >= 0)
          {
            v63 = (v128 & 0xFFFFFFFFFFFFFF8);
          }

          v64 = v8;
          v65 = __CocoaDictionary.count.getter();
          if (__OFADD__(v65, 1))
          {
            __break(1u);
LABEL_115:
            __break(1u);
          }

          v63 = sub_10021DDFC(v63, v65 + 1);
        }

        else
        {
          v66 = v8;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v63;
        sub_1002C9CF4(v8, v62, isUniquelyReferenced_nonNull_native);

        v128 = v135;
        v30 = v8;
        v8 = v57;
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *v70 = v117;
          v72 = [v30 *(v14 + 3464)];
          *(v70 + 4) = v72;
          *v71 = v72;
          *(v70 + 12) = 2114;
          v73 = [v8 *(v14 + 3464)];
          *(v70 + 14) = v73;
          v71[1] = v73;
          _os_log_impl(&_mh_execute_header, v68, v69, "RDAccountDataMover: Done copying source list {sourceList: %{public}@, targetList: %{public}@}", v70, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
          v26 = v132;
        }

        else
        {

          v30 = v68;
          v8 = v122;
        }

        goto LABEL_19;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = &selRef_hack_willSaveHandled;
      if (v55)
      {
        goto LABEL_42;
      }

      v5 = v126;
      v26 = v132;
    }

    v46 = [v8 name];
    if (!v46)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = String._bridgeToObjectiveC()();
    }

    v56 = [v124 addListWithName:v46 toAccountChangeItem:v122];
    goto LABEL_48;
  }

  v128 = &_swiftEmptyDictionarySingleton;
LABEL_63:

  if (qword_100936318 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  v76 = sub_100006654(v75, qword_10094A7C0);
  v77 = v124;
  v124 = v76;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();
  v14 = &selRef_attachmentRepresentationAndReturnError_;
  v80 = &selRef_accountStatusWithCompletionHandler_;
  if (os_log_type_enabled(v78, v79))
  {
    v8 = swift_slowAlloc();
    LODWORD(v8->isa) = 134217984;
    v81 = [v77 trackedListChangeItems];
    a2 = [v81 count];

    *(&v8->isa + 4) = a2;
    _os_log_impl(&_mh_execute_header, v78, v79, "RDAccountDataMover: Source lists processed {count: %ld}", v8, 0xCu);
  }

  else
  {

    v78 = v77;
  }

  v82 = [v77 trackedListChangeItems];
  v83 = [v82 count];

  if (__OFADD__(*v121, v83))
  {
    __break(1u);
LABEL_113:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_72;
  }

  *v121 += v83;
  v14 = v128;

  v80 = sub_100278BC4(v84);

  if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
  {
    goto LABEL_113;
  }

  v26 = *(v80 + 16);
LABEL_72:
  if (!v26)
  {
LABEL_107:

    return;
  }

  *&v129 = v77;
  v86 = 0;
  v132 = v14 & 0xC000000000000001;
  v133 = v80 & 0xC000000000000001;
  v87 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 < 0)
  {
    v87 = v14;
  }

  v131 = v87;
  *&v85 = 138543362;
  v121 = v85;
  *&v85 = 138543618;
  v120 = v85;
  v122 = v80;
  v127 = v26;
  while (1)
  {
    if (v133)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v86 >= *(v80 + 16))
      {
        goto LABEL_110;
      }

      v90 = *(v80 + 8 * v86 + 32);
    }

    v8 = v90;
    a2 = (v86 + 1);
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (!v132)
    {
      break;
    }

    v91 = v90;
    v92 = __CocoaDictionary.lookup(_:)();

    if (!v92)
    {
      goto LABEL_80;
    }

    v134 = v92;
    swift_dynamicCast();
    v93 = v135;
    if (v135)
    {
      goto LABEL_93;
    }

LABEL_79:
    v26 = v127;
LABEL_80:

    ++v86;
    if (a2 == v26)
    {
      goto LABEL_107;
    }
  }

  if (!*(v14 + 16))
  {
    goto LABEL_80;
  }

  v94 = sub_10002B924(v90);
  if ((v95 & 1) == 0)
  {
    goto LABEL_80;
  }

  v93 = *(*(v14 + 56) + 8 * v94);
  if (!v93)
  {
    goto LABEL_79;
  }

LABEL_93:
  v96 = [v129 _trackedListChangeItemForObjectID:{v8, v117, *(&v117 + 1)}];
  if (!v96)
  {
    v89 = v8;
    v88 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = v121;
      *(v115 + 4) = v89;
      *v116 = v89;
      _os_log_impl(&_mh_execute_header, v88, v114, "RDAccountDataMover: Can't find target list change item with {objectID: %{public}@}", v115, 0xCu);
      sub_1000050A4(v116, &unk_100938E70, &unk_100797230);
      v14 = v128;

      v80 = v122;

      v8 = v93;
    }

    else
    {

      v8 = v88;
      v88 = v89;
    }

LABEL_78:

    v8 = v89;
    goto LABEL_79;
  }

  v97 = v96;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v126 = v5;
    v101 = v100;
    v102 = swift_slowAlloc();
    *v101 = v121;
    v103 = [v97 objectID];
    *(v101 + 4) = v103;
    *v102 = v103;
    _os_log_impl(&_mh_execute_header, v98, v99, "RDAccountDataMover: Processing target list to copy reminders into {objectID: %{public}@}", v101, 0xCu);
    sub_1000050A4(v102, &unk_100938E70, &unk_100797230);
    v14 = v128;

    v5 = v126;
  }

  v104 = sub_1004EF900(v93, v97, v129);
  if (!v5)
  {
    if (v104)
    {
      v88 = v93;
      v89 = v97;
    }

    else
    {
      v105 = v130[9];

      v106 = [v93 objectID];
      v135 = v106;
      __chkstk_darwin(v106);
      *(&v117 - 2) = &v135;
      v107 = sub_10032DE90(sub_1004F1508, (&v117 - 2), v105);
      v126 = 0;

      if (v107)
      {
        v89 = v8;
        v8 = v93;
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *v110 = v120;
          v112 = [v8 objectID];
          *(v110 + 4) = v112;
          *(v110 + 12) = 2114;
          *(v110 + 14) = v89;
          *v111 = v112;
          v111[1] = v89;
          v113 = v89;
          _os_log_impl(&_mh_execute_header, v108, v109, "RDAccountDataMover: Source list is denylisted to copy to the target and it does not contain any non-denylisted child reminder {sourceList: %{public}@, targetList: %{public}@}", v110, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();
        }

        [v97 removeFromParent];
        v88 = v97;
      }

      else
      {
        v88 = v93;
        v89 = v97;
      }

      v5 = v126;
      v14 = v128;
    }

    v80 = v122;
    goto LABEL_78;
  }

LABEL_61:
}

void sub_1004EEEE8(uint64_t a1)
{
  v2 = v1;
  v4 = REMAccount.isConsideredEmpty()();
  if (v5)
  {
    return;
  }

  if (!v4)
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_10094A7C0);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v14;
      v19 = swift_slowAlloc();
      *v17 = 138543362;
      v20 = [v18 objectID];
      *(v17 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "RDAccountDataMover: removeData: given account is not empty, now remove its lists and reminders {objectID: %{public}@}", v17, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
      v14 = v18;
    }

    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    v88 = 0;
    v21 = [v14 fetchListsWithError:&v88];
    v22 = v88;
    if (!v21)
    {
      v27 = v88;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v23 = v21;
    sub_1000060C8(0, &qword_10093D5D0, REMList_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v22;

    a1 = v2;
    v26 = sub_1004F059C();
    v76 = v24 >> 62;
    v77 = v14;
    v86 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v24 >> 62)
    {
      a1 = v26;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v26 = a1;
    }

    else
    {
      v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = (v2 + 48);
    v87 = v26;
    if (!v28)
    {
      v29 = 0;
      v79 = 1;
      goto LABEL_53;
    }

    v29 = 0;
    v30 = 0;
    v83 = v28;
    v84 = v24 & 0xC000000000000001;
    v79 = 1;
    while (1)
    {
      v31 = v30;
      while (1)
      {
        if (v84)
        {
          v32 = v24;
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v86 + 16))
          {
            goto LABEL_67;
          }

          v32 = v24;
          v33 = *(v24 + 8 * v31 + 32);
        }

        v34 = v33;
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        v35 = [v34 objectID];
        v36 = [objc_opt_self() localAccountDefaultListID];
        v37 = static NSObject.== infix(_:_:)();

        if (v37)
        {
          break;
        }

        a1 = [v87 updateList:v34];
        [a1 removeFromParent];

        ++v31;
        v24 = v32;
        if (v30 == v83)
        {
          goto LABEL_53;
        }
      }

      v88 = 0;
      v38 = [v34 fetchRemindersWithError:&v88];
      v39 = v88;
      if (!v38)
      {
        v74 = v88;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v40 = v38;
      sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v39;

      v43 = v41;
      if (v41 >> 62)
      {
        break;
      }

      v82 = v41 & 0xFFFFFFFFFFFFFF8;
      a1 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_30;
      }

LABEL_49:

      v24 = v32;
      if (v30 == v83)
      {
LABEL_53:
        sub_1004F0264();
        v55 = v2;
        v56 = v77;

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v90 = v85;
          *v59 = 138543874;
          v61 = [v56 objectID];
          *(v59 + 4) = v61;
          *v60 = v61;
          *(v59 + 12) = 2048;
          if (v76)
          {
            v62 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v62 = *(v86 + 16);
          }

          *(v59 + 14) = v62;

          *(v59 + 22) = 2080;
          if (v79)
          {
            v64 = 0x80000001007FB190;
            v65 = 0xD000000000000013;
          }

          else
          {
            v88 = v29;
            v89 = 0;
            sub_1000F5104(&qword_10093EBB0, &unk_10079D080);
            v65 = String.init<A>(describing:)();
            v64 = v66;
          }

          v63 = v55;
          v67 = sub_10000668C(v65, v64, &v90);

          *(v59 + 24) = v67;
          _os_log_impl(&_mh_execute_header, v57, v58, "RDAccountDataMover: removeData: done removing data from account {objectID: %{public}@, lists.count: %ld, remindersFromDefaultList: %s}", v59, 0x20u);
          sub_1000050A4(v60, &unk_100938E70, &unk_100797230);

          sub_10000607C(v85);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v63 = v55;
        }

        v68 = [v87 trackedListChangeItems];
        v69 = [v68 count];

        if (__OFADD__(*v78, v69))
        {
          __break(1u);
        }

        else
        {
          *(v63 + 48) = &v69[*v78];
          v70 = [v87 trackedReminderChangeItems];
          v71 = [v70 count];

          v72 = *(v63 + 56);
          v53 = __OFADD__(v72, v71);
          v73 = &v71[v72];
          if (!v53)
          {
            *(v63 + 56) = v73;
            return;
          }
        }

        __break(1u);
      }
    }

    v82 = v41 & 0xFFFFFFFFFFFFFF8;
    v54 = _CocoaArrayWrapper.endIndex.getter();
    v43 = v41;
    a1 = v54;
    if (!v54)
    {
      goto LABEL_49;
    }

LABEL_30:
    v80 = v43 & 0xC000000000000001;
    v81 = v43;
    if ((v43 & 0xC000000000000001) == 0)
    {
      if (*(v82 + 16))
      {
        v44 = *(v43 + 32);
        goto LABEL_33;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_33:
    v45 = v44;
    v46 = [v87 updateReminder:{v44, v2}];
    [v46 removeFromList];

    if (v79)
    {
      v47 = 0;
    }

    else
    {
      v47 = v29;
    }

    v29 = v47 + 1;
    if (!__OFADD__(v47, 1))
    {
      v48 = 1 - a1;
      a1 = 5;
      while (v48 + a1 != 5)
      {
        v49 = a1 - 4;
        if (v80)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v49 >= *(v82 + 16))
          {
            goto LABEL_68;
          }

          v50 = *(v81 + 8 * a1);
        }

        v51 = v50;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_70;
        }

        v52 = [v87 updateReminder:v50];
        [v52 removeFromList];

        ++a1;
        v53 = __OFADD__(v29++, 1);
        if (v53)
        {
          goto LABEL_69;
        }
      }

      v79 = 0;
      v2 = v75;
      goto LABEL_49;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (qword_100936318 != -1)
  {
LABEL_71:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_10094A7C0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = [v7 objectID];
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "RDAccountDataMover: removeData: given account is already empty (no reminder or list count < 2) so we stopped {objectID: %{public}@}", v10, 0xCu);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);
  }
}

uint64_t sub_1004EF900(void *a1, void *a2, void *a3)
{
  v5 = v3;
  v28 = 0;
  v6 = [a1 fetchRemindersWithError:&v28];
  v7 = v28;
  if (v6)
  {
    v8 = v6;
    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v7;

    v28 = v9;
    sub_1000F5104(&unk_100939320, &qword_1007AEAE0);
    sub_1004F0CD0();
    v11 = BidirectionalCollection<>.slices(by:)();

    v23 = *(v11 + 16);
    v4 = 0;
    if (v23)
    {
      v12 = 0;
      v13 = (v11 + 56);
      while (1)
      {
        if (v12 >= *(v11 + 16))
        {
          __break(1u);
        }

        v14 = *(v13 - 1);
        v26 = *v13;
        v27 = v5;
        v16 = *(v13 - 3);
        v15 = *(v13 - 2);
        swift_unknownObjectRetain();
        v17 = objc_autoreleasePoolPush();
        v18 = [a2 objectID];
        v19 = sub_1004F0D34(v15, v14, v26, v18, a3);
        v5 = v27;
        if (v27)
        {
          break;
        }

        v20 = v19;

        ++v12;
        v4 |= v20;
        objc_autoreleasePoolPop(v17);
        swift_unknownObjectRelease();
        v13 += 4;
        if (v23 == v12)
        {
          goto LABEL_7;
        }
      }

      objc_autoreleasePoolPop(v17);
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
    }
  }

  else
  {
    v21 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4 & 1;
}

void sub_1004EFB1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 account];
  v5 = [v4 accountTypeHost];

  v16 = sub_1000F5104(&qword_10094ABA8, &unk_1007AEAE8);
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();
  sub_1004F1498(v19, &v17);
  if (v18)
  {
    sub_1000050A4(v19, &qword_10094ABB0, &qword_1007AEAF8);

    sub_100054B6C(&v17, a1);
  }

  else
  {
    sub_1000050A4(&v17, &qword_10094ABB0, &qword_1007AEAF8);
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 internalErrorWithDebugDescription:{v7, sub_1004F1524, 0, sub_1004F1524, 0, sub_1004F0518, 0, 0, 0, v16}];

    swift_willThrow();
    sub_1000050A4(v19, &qword_10094ABB0, &qword_1007AEAF8);
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v11 = [v5 internalDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(inited + 48) = v12;
    *(inited + 56) = v14;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    v15 = [v2 remObjectID];
    *(inited + 120) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    *(inited + 96) = v15;
    sub_1001F67C8(inited);

    sub_10054573C("REMReminder.dataCopierFactory: Could not create data copier for account data move because account type is not supported for now {accountTypeHost: %{public}@, reminderID: %{public}@}.", 182, 2);
    __break(1u);
  }
}

id sub_1004EFE64(void *a1)
{
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29[-v5];
  v7 = *(v1 + 72);

  v8 = [a1 objectID];
  v31 = v8;
  v30 = &v31;
  v9 = sub_10032DE90(sub_10031D63C, v29, v7);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 72);

  v11 = [a1 list];
  v12 = [v11 objectID];

  v31 = v12;
  __chkstk_darwin(v13);
  *&v29[-16] = &v31;
  v14 = sub_10032DE90(sub_1004F1508, &v29[-32], v10);

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = [a1 dueDateComponents];
  if (v15)
  {
    v16 = v15;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for DateComponents();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
    return 0;
  }

  v19 = type metadata accessor for DateComponents();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
  result = [a1 alarms];
  if (result)
  {
    v20 = result;
    sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      return 0;
    }

    result = [a1 recurrenceRules];
    if (result)
    {
      v23 = result;
      sub_1000060C8(0, &unk_100940C70, REMRecurrenceRule_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v25)
      {
        return 0;
      }

      v26 = [a1 attachments];
      sub_1000060C8(0, &unk_100938CE0, REMAttachment_ptr);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      return (v28 == 0);
    }
  }

  return result;
}

void sub_1004F0264()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v10 = 0;
    v2 = v1;
    if ([v2 saveSynchronouslyWithError:&v10])
    {
      v3 = v10;

      v4 = *(v0 + 88);
      *(v0 + 88) = 0;
    }

    else
    {
      v9 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094A7C0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDAccountDataMover: Attempted to save with a current save request.", v8, 2u);
    }
  }
}

uint64_t sub_1004F03E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1004F0544@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = swift_allocObject();
  a2[3] = v3;
  a2[4] = &off_1008F4F48;
  *a2 = result;
  return result;
}

uint64_t sub_1004F059C()
{
  result = v0[11];
  if (!result)
  {
    v2 = [objc_allocWithZone(REMSaveRequest) initWithStore:v0[5]];
    v3 = v0[3];
    v4 = v0[4];
    v5 = String._bridgeToObjectiveC()();
    [v2 setAuthor:v5];

    v6 = v0[11];
    v0[11] = v2;

    result = v0[11];
    if (!result)
    {
      v7 = objc_opt_self();
      v8 = String._bridgeToObjectiveC()();
      [v7 internalErrorWithDebugDescription:v8];

      return swift_willThrow();
    }
  }

  return result;
}

id sub_1004F068C(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = a1;
  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  v24 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v7 exportICSCalendarFromReminders:isa];

  result = [v10 components];
  if (result)
  {
    v12 = result;
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (v27)
    {
      while (1)
      {
        sub_100005EE0(&v26, &v25);
        sub_1000060C8(0, &qword_100949360, ICSTodo_ptr);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v27)
        {
          goto LABEL_5;
        }
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
LABEL_5:
      (*(v3 + 8))(v6, v2);
      v13 = objc_opt_self();
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v14._object = 0x80000001007FB030;
      v14._countAndFlagsBits = 0xD000000000000042;
      String.append(_:)(v14);
      v15 = [v24 objectID];
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 125;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = String._bridgeToObjectiveC()();

      [v13 internalErrorWithDebugDescription:v22];

      swift_willThrow();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004F09D8(void *a1, void *a2)
{
  v5 = sub_1004F068C(a1);
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    if (qword_100936318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094A7C0);
    v10 = a1;
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543618;
      v16 = [v10 objectID];
      *(v14 + 4) = v16;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v16;
      v15[1] = v11;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "RDAccountDataMover: RDReminderDataICSCopier: source reminder exported as ICS {objectID: %{public}@, icsTodo: %@}", v14, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }

    v18 = [a2 saveRequest];
    [v18 updateReminderChangeItem:a2 fromICSTodo:v11 icsCalendar:v7 isNew:1 withOptions:0];
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543618;
      v24 = [v19 objectID];
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2112;
      v25 = [v19 storage];
      *(v22 + 14) = v25;
      v23[1] = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "RDAccountDataMover: RDReminderDataICSCopier: imported ICS into as reminder {objectID: %{public}@, storage: %@}", v22, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
    }
  }
}

unint64_t sub_1004F0CD0()
{
  result = qword_10094ABA0;
  if (!qword_10094ABA0)
  {
    sub_1000F514C(&unk_100939320, &qword_1007AEAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ABA0);
  }

  return result;
}

uint64_t sub_1004F0D34(uint64_t a1, uint64_t a2, unint64_t a3, id a4, void *a5)
{
  v7 = v6;
  v8 = v5;
  v71 = a1;
  v67 = type metadata accessor for UUID();
  v13 = *(v67 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v67);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a5;
  v65 = [a5 _trackedListChangeItemForObjectID:a4];
  if (v65)
  {
    v18 = a3 >> 1;
    v66 = v8;
    v19 = 0;
    if (a3 >> 1 == a2)
    {
LABEL_3:
      [v65 setRemindersICSDisplayOrderChanged:0];
      if (qword_100936318 == -1)
      {
LABEL_4:
        v20 = type metadata accessor for Logger();
        sub_100006654(v20, qword_10094A7C0);
        v21 = v63;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();
        v24 = &selRef_attachmentRepresentationAndReturnError_;
        if (os_log_type_enabled(v22, v23))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          v26 = v19;
          v19 = [v21 trackedReminderChangeItems];
          v27 = [v19 count];

          LOBYTE(v19) = v26;
          v24 = &selRef_attachmentRepresentationAndReturnError_;
          *(v25 + 4) = v27;
          v8 = v66;

          _os_log_impl(&_mh_execute_header, v22, v23, "RDAccountDataMover: Processed copying source reminders {count: %ld}", v25, 0xCu);
        }

        else
        {

          v22 = v21;
        }

        a4 = [v21 v24[54]];
        v55 = [a4 count];

        v56 = *(v8 + 56);
        v57 = __OFADD__(v56, v55);
        v58 = &v55[v56];
        if (!v57)
        {
          *(v8 + 56) = v58;
          return v19 & 1;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      v64 = (v13 + 8);
      *&v17 = 138543362;
      v62 = v17;
      v61 = v16;
      while (a2 < v18)
      {
        v35 = *(v71 + 8 * a2);
        if (sub_1004EFE64(v35))
        {
          if (qword_100936318 != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          sub_100006654(v36, qword_10094A7C0);
          v37 = v35;
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = v18;
            v41 = v7;
            v42 = v19;
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = v62;
            v45 = [v37 objectID];
            *(v43 + 4) = v45;
            *v44 = v45;
            _os_log_impl(&_mh_execute_header, v38, v39, "RDAccountDataMover: _copySliceOfReminders: Source reminder is denylisted to copy to the target list {sourceReminder: %{public}@}", v43, 0xCu);
            sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
            v8 = v66;

            v19 = v42;
            v7 = v41;
            v18 = v40;
            v16 = v61;
          }
        }

        else
        {
          v46 = [v35 titleAsString];
          if (v46)
          {
            v47 = v46;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          v48 = String._bridgeToObjectiveC()();

          v49 = [v63 addReminderWithTitle:v48 toListChangeItem:v65];

          sub_1004EFB1C(v68);
          v50 = v69;
          v19 = v70;
          sub_10000F61C(v68, v69);
          (*(v19 + 8))(v35, v49, v50, v19);
          if (v7)
          {

            sub_10000607C(v68);
            return v19 & 1;
          }

          v8 = v66;
          if (*(v66 + 80) == 1)
          {
            v51 = [v35 objectID];
            v52 = [v51 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            UUID.uuidString.getter();
            (*v64)(v16, v67);
            v53 = String._bridgeToObjectiveC()();

            [v49 setExternalIdentifier:v53];
          }

          UUID.init()();
          UUID.uuidString.getter();
          (*v64)(v16, v67);
          v54 = String._bridgeToObjectiveC()();

          [v49 setDaCalendarItemUniqueIdentifier:v54];

          sub_10000607C(v68);
          v19 = 1;
        }

        if (v18 == ++a2)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_100936318 != -1)
  {
LABEL_33:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006654(v28, qword_10094A7C0);
  v29 = a4;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138543362;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "RDAccountDataMover: _copySliceOfReminders: Cannot copy reminders because list change item is not tracked and is nil {targetListID: %{public}@}", v32, 0xCu);
    sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
  }

  LOBYTE(v19) = 0;
  return v19 & 1;
}

uint64_t sub_1004F1498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094ABB0, &qword_1007AEAF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F1548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v4 = type metadata accessor for DateComponents();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v55 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v48 - v16;
  v17 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v48 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v48 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v48 - v29;
  __chkstk_darwin(v28);
  v32 = &v48 - v31;
  v52 = a1;
  v33 = [a1 dueDateComponents];
  if (v33)
  {
    v34 = v33;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v50;
    v36 = v8;
    v37 = v51;
    (*(v50 + 32))(v10, v36, v51);
    sub_1004F20E4(v30);
    (*(v35 + 8))(v10, v37);
    v38 = v11;
    if ((*(v12 + 48))(v30, 1, v11) != 1)
    {
      v39 = v49;
      (*(v12 + 32))(v49, v30, v38);
      sub_1004F2BFC(v39, v32);
      (*(v12 + 8))(v39, v38);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v12 + 56))(v30, 1, 1, v11);
    v38 = v11;
  }

  sub_1000050A4(v30, &unk_100938850, qword_100795AE0);
  (*(v12 + 56))(v32, 1, 1, v38);
LABEL_6:
  sub_1004F1A98(v52, v53, v32, &selRef_nextRecurrentDueDateAfter_dueDate_timeZone_allDay_recurrenceRules_, v27);
  sub_1004F2344(v27, v32, v24);
  sub_10012F78C(v24, v21);
  if ((*(v12 + 48))(v21, 1, v38) == 1)
  {
    sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
    sub_1000050A4(v32, &unk_100938850, qword_100795AE0);
    v40 = v21;
    v41 = v38;
    sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
LABEL_11:
    v46 = 1;
    v45 = v54;
    return (*(v12 + 56))(v45, v46, 1, v41);
  }

  v42 = *(v12 + 32);
  v42(v55, v21, v38);
  v43 = static Date.> infix(_:_:)();
  v41 = v38;
  sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v32, &unk_100938850, qword_100795AE0);
  if ((v43 & 1) == 0)
  {
    (*(v12 + 8))(v55, v38);
    goto LABEL_11;
  }

  v44 = v54;
  v42(v54, v55, v38);
  v45 = v44;
  v46 = 0;
  return (*(v12 + 56))(v45, v46, 1, v41);
}

uint64_t sub_1004F1A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, SEL *a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a4;
  v59 = a3;
  v56 = a2;
  v64 = a5;
  v6 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v54[-v8];
  v10 = type metadata accessor for TimeZone();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  __chkstk_darwin(v10);
  v60 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = type metadata accessor for Date();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v65);
  v63 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v57 = &v54[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v22 = &v54[-v21];
  __chkstk_darwin(v20);
  v24 = &v54[-v23];
  v25 = type metadata accessor for DateComponents();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v54[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v32 = &v54[-v31];
  v33 = [a1 dueDateComponents];
  if (!v33)
  {
    return (*(v13 + 56))(v64, 1, 1, v65);
  }

  v34 = v33;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v26 + 32))(v32, v30, v25);
  v35 = [a1 recurrenceRules];
  if (!v35)
  {
    (*(v26 + 8))(v32, v25);
    return (*(v13 + 56))(v64, 1, 1, v65);
  }

  v36 = v35;
  sub_1004F20E4(v24);
  sub_1004F2344(v59, v24, v22);
  v37 = v65;
  if ((*(v13 + 48))(v22, 1, v65) == 1)
  {

    sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
    (*(v26 + 8))(v32, v25);
    sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
    return (*(v13 + 56))(v64, 1, 1, v37);
  }

  else
  {
    v59 = v36;
    (*(v13 + 32))(v63, v22, v37);
    DateComponents.timeZone.getter();
    v39 = v61;
    v40 = v62;
    v41 = *(v61 + 48);
    if (v41(v9, 1, v62) == 1)
    {
      static TimeZone.current.getter();
      if (v41(v9, 1, v40) != 1)
      {
        sub_1000050A4(v9, &qword_10093F970, &unk_1007A7670);
      }
    }

    else
    {
      (*(v39 + 32))(v60, v9, v40);
    }

    isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v55 = [(objc_class *)isa rem_isAllDayDateComponents];

    v43 = objc_opt_self();
    v44 = Date._bridgeToObjectiveC()().super.isa;
    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = TimeZone._bridgeToObjectiveC()().super.isa;
    v47 = v59;
    v48 = [v43 *v58];

    if (v48)
    {
      v49 = v57;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
      v51 = v65;
      v53 = v61;
      v52 = v62;
    }

    else
    {
      v50 = 1;
      v51 = v65;
      v53 = v61;
      v52 = v62;
      v49 = v57;
    }

    (*(v53 + 8))(v60, v52);
    (*(v13 + 8))(v63, v51);
    sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
    (*(v26 + 8))(v32, v25);
    (*(v13 + 56))(v49, v50, 1, v51);
    return sub_100031B58(v49, v64, &unk_100938850, qword_100795AE0);
  }
}

uint64_t sub_1004F20E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
  DateComponents.timeZone.getter();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    static TimeZone.current.getter();
    if (v12(v5, 1, v6) != 1)
    {
      sub_1000050A4(v5, &qword_10093F970, &unk_1007A7670);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
  }

  v13 = objc_opt_self();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  v15 = [v13 rem_dateWithDateComponents:v11.super.isa timeZone:isa];

  if (v15)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for Date();
  return (*(*(v17 - 8) + 56))(a1, v16, 1, v17);
}

uint64_t sub_1004F2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v26 - v19;
  sub_10012F78C(a1, v12);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) != 1)
  {
    v23 = *(v14 + 32);
    v23(v20, v12, v13);
    v23(a3, v20, v13);
LABEL_6:
    v22 = 0;
    return (*(v14 + 56))(a3, v22, 1, v13);
  }

  sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
  sub_10012F78C(a2, v10);
  if (v21(v10, 1, v13) != 1)
  {
    v24 = *(v14 + 32);
    v24(v18, v10, v13);
    v24(a3, v18, v13);
    goto LABEL_6;
  }

  sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
  v22 = 1;
  return (*(v14 + 56))(a3, v22, 1, v13);
}

uint64_t sub_1004F25C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v53 = a2;
  v55 = a3;
  v4 = type metadata accessor for Calendar();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  __chkstk_darwin(v4);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DateComponents();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v51);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v50 = &v47 - v19;
  v20 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v47 - v26;
  v28 = __chkstk_darwin(v25);
  v56 = &v47 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v47 - v31;
  __chkstk_darwin(v30);
  v34 = &v47 - v33;
  v52 = a1;
  v35 = [a1 dueDateComponents];
  if (v35)
  {
    v36 = v35;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v51;
    (*(v7 + 32))(v13, v11, v51);
    sub_1004F20E4(v32);
    (*(v7 + 8))(v13, v37);
    if ((*(v15 + 48))(v32, 1, v14) != 1)
    {
      v38 = v50;
      (*(v15 + 32))(v50, v32, v14);
      sub_1004F2BFC(v38, v34);
      (*(v15 + 8))(v38, v14);
      goto LABEL_6;
    }
  }

  else
  {
    (*(v15 + 56))(v32, 1, 1, v14);
  }

  sub_1000050A4(v32, &unk_100938850, qword_100795AE0);
  (*(v15 + 56))(v34, 1, 1, v14);
LABEL_6:
  v39 = v54;
  v40 = v56;
  sub_1004F1A98(v52, v53, v34, &selRef_previousRecurrentDueDateBefore_dueDate_timeZone_allDay_recurrenceRules_, v56);
  sub_1004F2344(v40, v34, v27);
  sub_10012F78C(v27, v24);
  if ((*(v15 + 48))(v24, 1, v14) != 1)
  {
    v43 = *(v15 + 32);
    v43(v39, v24, v14);
    sub_1002CDF34();
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v44 = v47;
      static Calendar.current.getter();
      v45 = Calendar.isDateInToday(_:)();
      (*(v48 + 8))(v44, v49);
      sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v56, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
      if ((v45 & 1) == 0)
      {
        (*(v15 + 8))(v39, v14);
        goto LABEL_8;
      }
    }

    else
    {
      sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v56, &unk_100938850, qword_100795AE0);
      sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
    }

    v42 = v55;
    v43(v55, v39, v14);
    v41 = 0;
    return (*(v15 + 56))(v42, v41, 1, v14);
  }

  sub_1000050A4(v27, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v40, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v34, &unk_100938850, qword_100795AE0);
  sub_1000050A4(v24, &unk_100938850, qword_100795AE0);
LABEL_8:
  v41 = 1;
  v42 = v55;
  return (*(v15 + 56))(v42, v41, 1, v14);
}

uint64_t sub_1004F2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v62 = a2;
  v2 = type metadata accessor for Calendar.SearchDirection();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  __chkstk_darwin(v2);
  v55 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v50 = *(v56 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Calendar.MatchingPolicy();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v47 - v23;
  v25 = type metadata accessor for DateComponents();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() daemonUserDefaults];
  v31 = [v30 todayNotificationFireTime];

  if (v31)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v26;
    v33 = *(v26 + 56);
    v34 = v22;
    v35 = 0;
  }

  else
  {
    v32 = v26;
    v33 = *(v26 + 56);
    v34 = v22;
    v35 = 1;
  }

  v36 = v25;
  v33(v34, v35, 1, v25);
  sub_100031B58(v22, v24, &qword_10093B790, &qword_100798D88);
  if ((*(v32 + 48))(v24, 1, v25) == 1)
  {
    sub_1000050A4(v24, &qword_10093B790, &qword_100798D88);
    return (*(v60 + 56))(v62, 1, 1, v61);
  }

  else
  {
    v38 = *(v32 + 32);
    v48 = v29;
    v38(v29, v24, v25);
    static Calendar.current.getter();
    Calendar.startOfDay(for:)();
    v39 = v49;
    (*(v7 + 104))(v49, enum case for Calendar.MatchingPolicy.nextTime(_:), v59);
    v40 = v50;
    v41 = v53;
    v42 = v56;
    (*(v50 + 104))(v53, enum case for Calendar.RepeatedTimePolicy.first(_:), v56);
    v54 = v36;
    v44 = v57;
    v43 = v58;
    v45 = *(v57 + 104);
    v47 = v32;
    v46 = v55;
    v45(v55, enum case for Calendar.SearchDirection.forward(_:), v58);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v44 + 8))(v46, v43);
    (*(v40 + 8))(v41, v42);
    (*(v7 + 8))(v39, v59);
    (*(v60 + 8))(v13, v61);
    (*(v51 + 8))(v17, v52);
    return (*(v47 + 8))(v48, v54);
  }
}

uint64_t sub_1004F3224()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094ABB8);
  v1 = sub_100006654(v0, qword_10094ABB8);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F32EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3344();
  }

  return result;
}

void sub_1004F3344()
{
  v1 = v0;
  v70 = *v0;
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v61 - v4;
  v6 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v61 - v18;
  v20 = sub_1000F5104(&qword_10094ACE0, qword_1007AEB68);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v25 = &v61 - v24;
  if (!*(v1 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription))
  {
    v67 = v22;
    v68 = v23;
    v69 = OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription;
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    inited = swift_initStackObject();
    v66 = v25;
    v27 = inited;
    *(inited + 16) = xmmword_100791340;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = v11;
    v29 = [ObjCClassFromMetadata cdEntityName];
    v65 = v16;
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v15;
    v32 = v31;
    v62 = v19;
    v34 = v33;

    v61 = v10;
    v27[4] = v32;
    v27[5] = v34;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v35 = [swift_getObjCClassFromMetadata() cdEntityName];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v27[6] = v36;
    v27[7] = v38;
    v39 = v1[2];
    v73 = v70;
    sub_1000F5104(&qword_100936EF8, &qword_100791B08);
    v40 = String.init<A>(reflecting:)();
    v42 = sub_100441DF8(v39, v40, v41, 0);

    v43 = sub_1001A5660(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    v73 = v42;
    *(swift_allocObject() + 16) = v43;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0);
    Publisher.map<A>(_:)();

    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0);
    v44 = v72;
    Publisher.filter(_:)();

    (*(v71 + 8))(v9, v44);
    v73 = v1[4];
    v45 = v73;
    v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v47 = *(v46 - 8);
    v71 = *(v47 + 56);
    v72 = v47 + 56;
    (v71)(v5, 1, 1, v46);
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0);
    sub_100006CA4();
    v48 = v45;
    v49 = v14;
    v50 = v61;
    v51 = v62;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);
    (*(v63 + 8))(v49, v50);
    v73 = v48;
    (v71)(v5, 1, 1, v46);
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0);
    v52 = v66;
    v53 = v64;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000050A4(v5, &qword_100939980, &unk_10079ADA0);

    (*(v65 + 8))(v51, v53);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_10094ACE8, &qword_10094ACE0, qword_1007AEB68);
    v54 = v67;
    v55 = Publisher<>.sink(receiveValue:)();

    (*(v68 + 8))(v52, v54);
    v56 = *(v1 + v69);
    *(v1 + v69) = v55;

    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100006654(v57, qword_10094ABB8);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "RDManualSortHintUpdater starts.", v60, 2u);
    }
  }
}

uint64_t sub_1004F3BE0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3344();
  }

  return result;
}

uint64_t sub_1004F3C38()
{
  v1 = OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription;
  v2 = *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription);
  *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = 0;

  sub_1004F3D20();

  v3 = *(v0 + 24);

  v4 = OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_debounceInterval;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription);

  v7 = *(v0 + v1);

  sub_10000CC4C(*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 8), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 16), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 24), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 32), *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 40) | (*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 44) << 32));
  return v0;
}

void sub_1004F3D20()
{
  if (*(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription))
  {
    *(v0 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription) = 0;

    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_10094ABB8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "RDManualSortHintUpdater stops.", v3, 2u);
    }
  }
}

uint64_t sub_1004F3E30()
{
  sub_1004F3C38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDManualSortHintUpdater()
{
  result = qword_10094AC20;
  if (!qword_10094AC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F3EDC()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_1004F3FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3FFC();
  }

  return result;
}

uint64_t sub_1004F3FFC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 16);
  v5 = *(v1 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity);
  v6[0] = v3;
  *(v6 + 14) = *(v1 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity + 30);
  return sub_100014A64(&v5, sub_1004F609C, v1);
}

void sub_1004F41C4(void *a1)
{
  sub_1000F5104(&unk_100939E20, qword_100795830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_100791340;
  KeyPath = swift_getKeyPath();
  v6 = sub_1003EDA7C(KeyPath);

  *(v4 + 32) = v6;
  v7 = swift_getKeyPath();
  v8 = sub_1003EDA7C(v7);

  *(v4 + 40) = v8;
  *(inited + 32) = sub_100025060(v4);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100791300;
  *(v9 + 32) = sub_10001035C(0);
  v75 = v9;
  sub_10003A170(inited);
  v10 = sub_10000C2B0(v9);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  type metadata accessor for REMCDManualSortHint();
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setPredicate:v10];
  [v11 setResultType:1];

  sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v22 = v13;
    v23 = v13 >> 62;
    if (v13 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_8:
        v67 = v11;
        if (qword_100936320 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100006654(v25, qword_10094ABB8);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        v73 = v24;
        v74 = a1;
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v75 = v29;
          *v28 = 136315138;
          v71 = v29;
          if (v23)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = sub_10000668C(v31, v32, &v75);

          *(v28 + 4) = v33;
          _os_log_impl(&_mh_execute_header, v26, v27, "RDManualSortHintUpdater fetched %s REMCDManualSortHint with local IDs.", v28, 0xCu);
          sub_10000607C(v71);

          v24 = v73;
        }

        else
        {
        }

        v34 = 0;
        v35 = 0;
        v11 = 0;
        v72 = v22 & 0xC000000000000001;
        v36 = v22 & 0xFFFFFFFFFFFFFF8;
        v70 = 1;
LABEL_17:
        v68 = v35;
        v69 = v34;
        while (v24 != v34)
        {
          if (v72)
          {
            v37 = v22;
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *(v36 + 16))
            {
              goto LABEL_48;
            }

            v37 = v22;
            v38 = *(v22 + 8 * v34 + 32);
          }

          v39 = v38;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          sub_1004F628C(v38, v74);
          v41 = v40;

          v42 = v41;
          if (v41 != 2)
          {
            v24 = v73;
            if (!v42)
            {
              v70 = 0;
              ++v34;
              v22 = v37;
              goto LABEL_17;
            }

            v70 = 0;
            ++v34;
            v43 = __OFADD__(v35++, 1);
            v11 = v35;
            v22 = v37;
            if (v43)
            {
              __break(1u);
              break;
            }

            goto LABEL_17;
          }

          ++v34;
          v43 = __OFADD__(v35, 1);
          v11 = ++v35;
          v22 = v37;
          v24 = v73;
          if (v43)
          {
            goto LABEL_49;
          }
        }

        if (&v68[v24 - v69] < 1)
        {
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&_mh_execute_header, v60, v61, "RDManualSortHintUpdater did not replace local IDs in any REMCDManualSortHint.", v62, 2u);
          }

LABEL_45:
          v11 = v67;
          if (v70)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v75 = 0;
        if ([v74 save:&v75])
        {
          v44 = v75;
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v75 = v48;
            *v47 = 136315138;
            v49 = dispatch thunk of CustomStringConvertible.description.getter();
            v51 = sub_10000668C(v49, v50, &v75);

            *(v47 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v45, v46, "RDManualSortHintUpdater replaced local IDs in %s REMCDManualSortHint.", v47, 0xCu);
            sub_10000607C(v48);
          }

          goto LABEL_45;
        }

        v52 = v75;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();

        v11 = v67;
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v75 = v56;
          *v55 = 136315138;
          swift_getErrorValue();
          v57 = Error.rem_errorDescription.getter();
          v59 = sub_10000668C(v57, v58, &v75);

          *(v55 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v53, v54, "RDManualSortHintUpdater failed to save changes {error: %s}", v55, 0xCu);
          sub_10000607C(v56);
        }

        sub_1004F3D20();

        if ((v70 & 1) == 0)
        {
          goto LABEL_58;
        }

LABEL_57:
        sub_1004F3D20();
        goto LABEL_58;
      }
    }

    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100006654(v63, qword_10094ABB8);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "RDManualSortHintUpdater did not fetch any REMCDManualSortHint with local IDs.", v66, 2u);
    }

    goto LABEL_57;
  }

  if (qword_100936320 != -1)
  {
LABEL_50:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094ABB8);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75 = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = Error.rem_errorDescription.getter();
    v21 = sub_10000668C(v19, v20, &v75);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "RDManualSortHintUpdater failed to fetch REMCDManualSortHint with local IDs {error: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  sub_1004F3D20();

LABEL_58:
}

uint64_t sub_1004F4C8C(unint64_t a1)
{
  v35 = sub_10038DB14(_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()() || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), swift_dynamicCast(), v15 = v36, type metadata accessor for RDAccountManualSortID(), swift_dynamicCast(), (v14 = v36) == 0))
      {
LABEL_35:
        sub_10001B860();
        return v35;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);

    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if (v14[3])
    {
      v16 = v35;
      if ((v35 & 0xC000000000000001) != 0)
      {
        if (v35 >= 0)
        {
          v16 = (v35 & 0xFFFFFFFFFFFFFF8);
        }

        swift_retain_n();
        v17 = v15;
        v18 = __CocoaDictionary.count.getter();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_38;
        }

        v16 = sub_10021D4A0(v16, v18 + 1);
      }

      else
      {
        swift_retain_n();
        v19 = v15;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v16;
      v21 = sub_10002B924(v15);
      v23 = v16[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_37;
      }

      v27 = v22;
      if (v16[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v21;
          sub_1003751CC();
          v21 = v33;
        }
      }

      else
      {
        sub_10036DB04(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_10002B924(v15);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_40;
        }
      }

      v35 = v16;
      if (v27)
      {
        v29 = v16[7];
        v30 = *(v29 + 8 * v21);
        *(v29 + 8 * v21) = v14;
      }

      else
      {
        v16[(v21 >> 6) + 8] |= 1 << v21;
        *(v16[6] + 8 * v21) = v15;
        *(v16[7] + 8 * v21) = v14;

        v31 = v16[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        v16[2] = v32;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_35;
    }

    v12 = *(v2 + 8 * v9);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F501C(unint64_t a1)
{
  v35 = sub_10038E300(_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()() || (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr), swift_dynamicCast(), v15 = v36, type metadata accessor for RDElementManualSortID(), swift_dynamicCast(), (v14 = v36) == 0))
      {
LABEL_35:
        sub_10001B860();
        return v35;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);

    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if (v14[3])
    {
      v16 = v35;
      if ((v35 & 0xC000000000000001) != 0)
      {
        if (v35 >= 0)
        {
          v16 = (v35 & 0xFFFFFFFFFFFFFF8);
        }

        swift_retain_n();
        v17 = v15;
        v18 = __CocoaDictionary.count.getter();
        if (__OFADD__(v18, 1))
        {
          goto LABEL_38;
        }

        v16 = sub_10021C478(v16, v18 + 1);
      }

      else
      {
        swift_retain_n();
        v19 = v15;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v16;
      v21 = sub_10002B924(v15);
      v23 = v16[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_37;
      }

      v27 = v22;
      if (v16[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v21;
          sub_1003731C0();
          v21 = v33;
        }
      }

      else
      {
        sub_10036A210(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_10002B924(v15);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_40;
        }
      }

      v35 = v16;
      if (v27)
      {
        v29 = v16[7];
        v30 = *(v29 + 8 * v21);
        *(v29 + 8 * v21) = v14;
      }

      else
      {
        v16[(v21 >> 6) + 8] |= 1 << v21;
        *(v16[6] + 8 * v21) = v15;
        *(v16[7] + 8 * v21) = v14;

        v31 = v16[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_39;
        }

        v16[2] = v32;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_35;
    }

    v12 = *(v2 + 8 * v9);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F53AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v71 = a3;
  v62 = v7;
  v63 = v11;
  v65 = a2;
  while (v10)
  {
LABEL_11:
    v16 = (v12 << 10) | (16 * __clz(__rbit64(v10)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(a2 + 16);

    v69 = v22;

    v24 = v19;
    v25 = v18;
    if (v23)
    {
      v26 = sub_100005F4C(v18, v19);
      a3 = v71;
      v24 = v19;
      v25 = v18;
      if (v27)
      {
        v28 = (*(a2 + 56) + 16 * v26);
        v25 = *v28;
        v24 = v28[1];
      }
    }

    v67 = v19;

    v29 = v69;
    v30 = v21;
    if (*(a3 + 16))
    {
      v29 = v69;
      v31 = sub_100005F4C(v21, v69);
      a3 = v71;
      v30 = v21;
      if (v32)
      {
        v33 = (*(v71 + 56) + 16 * v31);
        v30 = *v33;
        v29 = v33[1];
      }
    }

    v68 = v30;

    if (*(a3 + 16) && (v34 = sub_100005F4C(v21, v69), v35 = v68, (v36 & 1) != 0))
    {
      v37 = (*(v71 + 56) + 16 * v34);
      v38 = *v37 == v68 && v37[1] == v29;
      v39 = v25;
      if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_34:
        sub_100378434(&v70, v35, v29);
        goto LABEL_35;
      }
    }

    else
    {
      v39 = v25;
    }

    if (!*(v65 + 16))
    {
      goto LABEL_36;
    }

    v40 = sub_100005F4C(v18, v67);
    if (v41)
    {
      v42 = (*(v65 + 56) + 16 * v40);
      v43 = *v42 == v39 && v42[1] == v24;
      if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v35 = v68;
        goto LABEL_34;
      }
    }

LABEL_35:

LABEL_36:
    v44 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *a5;
    v46 = v70;
    v47 = sub_100005F4C(v39, v24);
    v49 = *(v46 + 16);
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      goto LABEL_48;
    }

    v53 = v48;
    if (*(v46 + 24) < v52)
    {
      sub_10036A8F0(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_100005F4C(v39, v24);
      if ((v53 & 1) != (v54 & 1))
      {
        goto LABEL_50;
      }

LABEL_41:
      v55 = v70;
      if (v53)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_41;
    }

    v60 = v47;
    sub_100373664();
    v47 = v60;
    v55 = v70;
    if (v53)
    {
LABEL_4:
      v13 = (v55[7] + 16 * v47);
      v14 = v13[1];
      *v13 = v68;
      v13[1] = v29;

      goto LABEL_5;
    }

LABEL_42:
    v55[(v47 >> 6) + 8] |= 1 << v47;
    v56 = (v55[6] + 16 * v47);
    *v56 = v39;
    v56[1] = v24;
    v57 = (v55[7] + 16 * v47);
    *v57 = v68;
    v57[1] = v29;
    v58 = v55[2];
    v51 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v51)
    {
      goto LABEL_49;
    }

    v55[2] = v59;
LABEL_5:
    v10 &= v10 - 1;
    *a5 = v55;

    a3 = v71;
    a2 = v65;
    v7 = v62;
    v11 = v63;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1004F5780(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(a2 + 16);

      v13 = v11;
      v14 = v10;
      if (v12)
      {
        v15 = sub_100005F4C(v10, v11);
        v13 = v11;
        v14 = v10;
        if (v16)
        {
          v17 = (*(a2 + 56) + 16 * v15);
          v14 = *v17;
          v13 = v17[1];
        }
      }

      if (*(a2 + 16))
      {
        v18 = sub_100005F4C(v10, v11);
        if (v19)
        {
          v20 = (*(a2 + 56) + 16 * v18);
          v21 = *v20 == v14 && v20[1] == v13;
          if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v22 = *a3;
            if (*(*a3 + 16))
            {
              v23 = sub_100005F4C(a4, a5);
              if (v24)
              {
                v25 = (*(v22 + 56) + 16 * v23);
                v27 = *v25;
                v26 = v25[1];

                sub_100378434(&v35, v27, v26);
              }
            }
          }
        }
      }

      v36 = v6;
      v29 = v6[2];
      v28 = v6[3];
      if (v29 >= v28 >> 1)
      {
        sub_100026EF4((v28 > 1), v29 + 1, 1);
        v6 = v36;
      }

      v6[2] = v29 + 1;
      v30 = &v6[2 * v29];
      v30[4] = v14;
      v30[5] = v13;
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t sub_1004F5954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, Swift::Int *a5)
{
  v6 = v5;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v56 = v12;
  v57 = v8;
  while (v11)
  {
    v62 = v6;
LABEL_12:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a1 + 56) + 8 * v17);
    v22 = *(a2 + 16);

    v23 = v20;
    v64 = v19;
    if (v22)
    {
      v24 = sub_100005F4C(v19, v20);
      v23 = v20;
      v64 = v19;
      if (v25)
      {
        v26 = (*(a2 + 56) + 16 * v24);
        v23 = v26[1];
        v64 = *v26;
      }
    }

    if (*(a2 + 16))
    {
      v27 = sub_100005F4C(v19, v20);
      if (v28)
      {
        v29 = (*(a2 + 56) + 16 * v27);
        v30 = *v29 == v64 && v29[1] == v23;
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v31 = *a3;
          if (*(*a3 + 16))
          {
            v32 = sub_100005F4C(v64, v23);
            if (v33)
            {
              v34 = (*(v31 + 56) + 16 * v32);
              v36 = *v34;
              v35 = v34[1];

              sub_100378434(&v63, v36, v35);
            }
          }
        }
      }
    }

    v37 = v64;
    v60 = sub_1004F5780(v21, a2, a3, v64, v23);
    v38 = a2;

    v39 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *a5;
    v41 = v63;
    *a5 = 0x8000000000000000;
    v43 = sub_100005F4C(v37, v23);
    v44 = *(v41 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_36;
    }

    v47 = v42;
    if (*(v41 + 24) >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10037443C();
      }
    }

    else
    {
      sub_10036C5F8(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_100005F4C(v64, v23);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_38;
      }

      v43 = v48;
    }

    a2 = v38;
    v50 = v63;
    if (v47)
    {
      v14 = v63[7];
      v15 = *(v14 + 8 * v43);
      *(v14 + 8 * v43) = v60;
    }

    else
    {
      v63[(v43 >> 6) + 8] |= 1 << v43;
      v51 = (v50[6] + 16 * v43);
      *v51 = v64;
      v51[1] = v23;
      *(v50[7] + 8 * v43) = v60;
      v52 = v50[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_37;
      }

      v50[2] = v54;
    }

    v11 &= v11 - 1;
    *a5 = v50;

    v6 = v62;
    v12 = v56;
    v8 = v57;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v62 = v6;
      v13 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1004F5CE4(uint64_t a1, uint64_t a2, uint64_t *a3, Swift::Int *a4)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  v54 = v10;
  v55 = a2;
  while (v9)
  {
LABEL_12:
    v14 = __clz(__rbit64(v9)) | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v5 + 56) + 8 * v14);
    v19 = *(a2 + 16);

    v59 = v17;
    v20 = v16;
    if (v19)
    {
      v17 = v59;
      v21 = sub_100005F4C(v16, v59);
      v20 = v16;
      if (v22)
      {
        v23 = (*(a2 + 56) + 16 * v21);
        v20 = *v23;
        v17 = v23[1];
      }
    }

    if (*(a2 + 16))
    {
      v24 = sub_100005F4C(v16, v59);
      if (v25)
      {
        v26 = (*(a2 + 56) + 16 * v24);
        v27 = *v26 == v20 && v26[1] == v17;
        if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          sub_100378434(&v58, v20, v17);
        }
      }
    }

    v28 = *a3;
    if (*(*a3 + 16))
    {
      v29 = *(v28 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v28 + 48) + 16 * v32);
          v35 = *v34 == v20 && v34[1] == v17;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v18 = v18 + 1.0;
      }

      else
      {
LABEL_32:
      }

      v5 = v53;
    }

    v36 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *a4;
    v38 = v58;
    *a4 = 0x8000000000000000;
    v39 = sub_100005F4C(v20, v17);
    v41 = *(v38 + 16);
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_46;
    }

    v45 = v40;
    if (*(v38 + 24) >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v39;
        sub_100373044();
        v39 = v51;
      }
    }

    else
    {
      sub_100369F58(v44, isUniquelyReferenced_nonNull_native);
      v39 = sub_100005F4C(v20, v17);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_48;
      }
    }

    a2 = v55;
    v47 = v58;
    if (v45)
    {
      *(v58[7] + 8 * v39) = v18;
    }

    else
    {
      v58[(v39 >> 6) + 8] |= 1 << v39;
      v48 = (v47[6] + 16 * v39);
      *v48 = v20;
      v48[1] = v17;
      *(v47[7] + 8 * v39) = v18;
      v49 = v47[2];
      v43 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v43)
      {
        goto LABEL_47;
      }

      v47[2] = v50;
    }

    v9 &= v9 - 1;
    v12 = *a4;
    *a4 = v47;

    v10 = v54;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1004F60B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_100026EF4(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(a2 + 16);

      v11 = v9;
      v12 = v8;
      if (v10)
      {
        v13 = sub_100005F4C(v8, v9);
        v11 = v9;
        v12 = v8;
        if (v14)
        {
          v15 = (*(a2 + 56) + 16 * v13);
          v12 = *v15;
          v11 = v15[1];
        }
      }

      if (*(a2 + 16))
      {
        v16 = sub_100005F4C(v8, v9);
        if (v17)
        {
          v18 = (*(a2 + 56) + 16 * v16);
          v19 = *v18 == v12 && v18[1] == v11;
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v20 = *a3;
            if (*(*a3 + 16))
            {
              v21 = sub_100005F4C(v12, v11);
              if (v22)
              {
                v23 = (*(v20 + 56) + 16 * v21);
                v25 = *v23;
                v24 = v23[1];

                sub_100378434(&v31, v25, v24);
              }
            }
          }
        }
      }

      v32 = v4;
      v27 = v4[2];
      v26 = v4[3];
      if (v27 >= v26 >> 1)
      {
        sub_100026EF4((v26 > 1), v27 + 1, 1);
        v4 = v32;
      }

      v4[2] = v27 + 1;
      v28 = &v4[2 * v27];
      v28[4] = v12;
      v28[5] = v11;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1004F628C(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for REMManualOrdering.ElementType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v287 = &v276 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  i = &v276 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v294 = &v276 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v291 = &v276 - v21;
  __chkstk_darwin(v20);
  v292 = &v276 - v22;
  v305 = 0;
  v23 = [a2 existingObjectWithID:a1 error:&v305];
  isa = v305;
  if (!v23)
  {
    v36 = v305;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v25 = v23;
  v286 = a2;
  type metadata accessor for REMCDManualSortHint();
  v26 = swift_dynamicCastClass();
  v27 = isa;
  if (!v26)
  {

    return;
  }

  v28 = [v26 account];
  if (!v28)
  {
    if (qword_100936320 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_10094ABB8);
    v38 = v25;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v305 = v42;
      *v41 = 136446210;
      v43 = [v26 remObjectID];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 description];

        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      v105 = sub_10000668C(v46, v48, &v305);

      *(v41 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v39, v40, "Cannot replaceLocalIDsInREMCDManualSortHint() against a manual sort hint without an associated account {remObjectID: %{public}s}", v41, 0xCu);
      sub_10000607C(v42);
    }

    else
    {
    }

    return;
  }

  v278 = v28;
  v283 = v25;
  v29 = [v26 concatenatedContainerIDsWithLocalContainerIDPrefix];
  v284 = v26;
  v296 = v14;
  v285 = v2;
  v277 = v19;
  v280 = v5;
  v279 = v6;
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v305 = v31;
    v306 = v33;
    v34 = *&v26[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    v297 = *&v26[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    v298 = v34;
    sub_10013BCF4();
    isa = StringProtocol.components<A>(separatedBy:)();

    v35 = sub_1001A5660(isa);
  }

  else
  {
    v35 = &_swiftEmptySetSingleton;
  }

  v305 = _swiftEmptyArrayStorage;
  v49 = v35 + 56;
  v50 = 1 << v35[32];
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v35 + 7);
  v53 = (v50 + 63) >> 6;
  v295 = (v15 + 6);
  v288 = (v15 + 4);
  v289 = (v15 + 1);

  v54 = 0;
  v281 = _swiftEmptyArrayStorage;
  v282 = _swiftEmptyArrayStorage;
  v290 = v35;
  while (v52)
  {
LABEL_23:
    v56 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v57 = (*(v35 + 6) + ((v54 << 10) | (16 * v56)));
    v58 = *v57;
    v5 = v57[1];

    v59 = String.count.getter();
    sub_10048A888(v59, v58, v5);
    static String._fromSubstring(_:)();

    isa = v294;
    UUID.init(uuidString:)();

    v19 = v296;
    if ((*v295)(isa, 1, v296) == 1)
    {

      sub_1000050A4(isa, &unk_100939D90, "8\n\r");
      v35 = v290;
    }

    else
    {
      v60 = v292;
      (*v288)(v292, isa, v19);
      sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v62 = [ObjCClassFromMetadata objectIDWithUUID:isa];

      (*v289)(v60, v19);
      v35 = v290;
      if (v62)
      {
        isa = &v305;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v282 = v305;
      }
    }
  }

  while (1)
  {
    v55 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v55 >= v53)
    {
      break;
    }

    v52 = v49[v55];
    ++v54;
    if (v52)
    {
      v54 = v55;
      goto LABEL_23;
    }
  }

  v292 = sub_1001A577C(v282);

  v63 = v284;
  v64 = [v284 concatenatedElementIDsWithLocalElementIDPrefix];
  v49 = &_swiftEmptySetSingleton;
  if (v64)
  {
    v65 = v64;
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v305 = v66;
    v306 = v68;
    v69 = *&v63[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
    v297 = *&v63[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
    v298 = v69;
    sub_10013BCF4();
    isa = &v305;
    v70 = StringProtocol.components<A>(separatedBy:)();

    v49 = sub_1001A5660(v70);
  }

  v305 = _swiftEmptyArrayStorage;
  v52 = (v49 + 7);
  v71 = 1 << *(v49 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v19 = v72 & v49[7];
  v53 = (v71 + 63) >> 6;

  v54 = 0;
  v294 = v49;
  while (v19)
  {
LABEL_39:
    v74 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v75 = (v49[6] + ((v54 << 10) | (16 * v74)));
    v77 = *v75;
    v76 = v75[1];

    v78 = String.count.getter();
    sub_10048A888(v78, v77, v76);
    v35 = static String._fromSubstring(_:)();
    v5 = v79;

    isa = i;
    UUID.init(uuidString:)();

    v80 = v296;
    if ((*v295)(isa, 1, v296) == 1)
    {

      sub_1000050A4(isa, &unk_100939D90, "8\n\r");
      v49 = v294;
    }

    else
    {
      v5 = v291;
      (*v288)(v291, isa, v80);
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v81 = swift_getObjCClassFromMetadata();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v35 = [v81 objectIDWithUUID:isa];

      (*v289)(v5, v80);
      v49 = v294;
      if (v35)
      {
        isa = &v305;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v82 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v281 = v305;
      }
    }
  }

  while (1)
  {
    v73 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_138;
    }

    if (v73 >= v53)
    {
      break;
    }

    v19 = *(v52 + 8 * v73);
    ++v54;
    if (v19)
    {
      v54 = v73;
      goto LABEL_39;
    }
  }

  v83 = sub_1001A577C(v281);

  v84 = v278;
  sub_1006B038C();
  v86 = v85;
  v87 = type metadata accessor for RDManualSortIDCache();
  v88 = v87;
  if (qword_100936508 != -1)
  {
    v87 = swift_once();
  }

  v89 = qword_10094C220;
  __chkstk_darwin(v87);
  *(&v276 - 4) = v88;
  *(&v276 - 3) = v86;
  *(&v276 - 2) = v89;
  v90 = v285;
  OS_dispatch_queue.sync<A>(execute:)();
  v91 = v305;
  type metadata accessor for RDManualSortIDAdapter();
  swift_allocObject();
  v92 = sub_100214ECC(v91, v86, 0);

  v93 = sub_100217DB4(v292);
  v94 = v280;
  v95 = v279;
  if (v90)
  {

    return;
  }

  v96 = v93;

  v292 = sub_1004F4C8C(v96);

  v97 = v287;
  (*(v95 + 104))(v287, enum case for REMManualOrdering.ElementType.reminders(_:), v94);
  v98 = sub_1002184FC(v83);
  v99 = v283;
  v100 = v97;
  v101 = v98;
  (*(v95 + 8))(v100, v94);

  v102 = sub_1004F501C(v101);

  v103 = v292;
  if ((v292 & 0xC000000000000001) != 0)
  {
    v104 = __CocoaDictionary.count.getter();
  }

  else
  {
    v104 = *(v292 + 16);
  }

  if (!v104 && !((v102 & 0xC000000000000001) != 0 ? __CocoaDictionary.count.getter() : *(v102 + 16)))
  {

    return;
  }

  v294 = sub_10038E004(_swiftEmptyArrayStorage);
  v291 = v102;
  v285 = 0;
  v288 = v84;
  v282 = v92;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v111 = -1 << *(v103 + 32);
    v108 = ~v111;
    v112 = v103;
    v114 = *(v103 + 64);
    v107 = v103 + 64;
    v113 = v114;
    v115 = -v111;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    else
    {
      v116 = -1;
    }

    v109 = (v116 & v113);
    v110 = v112;
  }

  v117 = 0;
  v290 = v108;
  v295 = v110;
  for (i = v107; ; v107 = i)
  {
    v118 = v117;
    v49 = v109;
    if ((v110 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v125 = __CocoaDictionary.Iterator.next()();
      if (!v125)
      {
        goto LABEL_96;
      }

      v127 = v126;
      v297 = v125;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v124 = v305;
      v297 = v127;
      type metadata accessor for RDAccountManualSortID();
      swift_dynamicCast();
      v123 = v305;
      v117 = v118;
      v121 = v49;
      if (!v124)
      {
        goto LABEL_96;
      }

LABEL_76:

      v128._countAndFlagsBits = UUID.uuidString.getter();
      v305 = 0x7C6C61636F6CLL;
      v306 = 0xE600000000000000;
      String.append(_:)(v128);

      v129 = v305;
      v130 = v306;
      v131 = *(v123 + 24);
      if (v131)
      {
        v287 = *(v123 + 16);

        v136 = v294;
        LODWORD(v286) = swift_isUniquelyReferenced_nonNull_native();
        v305 = v136;
        v138 = sub_100005F4C(v129, v130);
        v139 = v136[2];
        v140 = (v137 & 1) == 0;
        v141 = v139 + v140;
        if (!__OFADD__(v139, v140))
        {
          if (v136[3] >= v141)
          {
            if (v286)
            {
              v109 = v121;
              if ((v137 & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            else
            {
              v286 = v138;
              LODWORD(v294) = v137;
              sub_100373664();
              v138 = v286;
              v109 = v121;
              if ((v294 & 1) == 0)
              {
                goto LABEL_92;
              }
            }
          }

          else
          {
            LODWORD(v294) = v137;
            sub_10036A8F0(v141, v286);
            v142 = sub_100005F4C(v129, v130);
            if ((v294 & 1) != (v143 & 1))
            {
              goto LABEL_188;
            }

            v138 = v142;
            v109 = v121;
            if ((v294 & 1) == 0)
            {
LABEL_92:
              v150 = v305;
              *(v305 + 8 * (v138 >> 6) + 64) |= 1 << v138;
              v151 = (*(v150 + 48) + 16 * v138);
              *v151 = v129;
              v151[1] = v130;
              v152 = (*(v150 + 56) + 16 * v138);
              *v152 = v287;
              v152[1] = v131;
              v153 = v150;

              v154 = *(v153 + 16);
              v155 = __OFADD__(v154, 1);
              v156 = v154 + 1;
              if (v155)
              {
                goto LABEL_182;
              }

              v294 = v153;
              *(v153 + 16) = v156;
              goto LABEL_94;
            }
          }

          v147 = v138;

          v294 = v305;
          v148 = (*(v305 + 56) + 16 * v147);
          v149 = v148[1];
          *v148 = v287;
          v148[1] = v131;

LABEL_94:
          v110 = v295;
          goto LABEL_95;
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v132 = v294;
      v133 = sub_100005F4C(v305, v306);
      v135 = v134;

      if (v135)
      {
        break;
      }

      v118 = v117;
      v49 = v121;
      v110 = v295;
      v107 = i;
      if ((v295 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v305 = v132;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100373664();
      v132 = v305;
    }

    v145 = *(v132[6] + 16 * v133 + 8);

    v146 = *(v132[7] + 16 * v133 + 8);

    v294 = v132;
    sub_1003328B8(v133, v132);

    v110 = v295;
    v109 = v121;
LABEL_95:
    ;
  }

LABEL_68:
  v119 = v118;
  v120 = v49;
  v117 = v118;
  if (!v49)
  {
    while (1)
    {
      v117 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v117 >= ((v108 + 64) >> 6))
      {
        goto LABEL_96;
      }

      v120 = *(v107 + 8 * v117);
      ++v119;
      if (v120)
      {
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:

    v303 = v295;
    v218 = &v303;
LABEL_151:
    sub_1000050A4(v218, &unk_100945240, &qword_1007A0A70);
    v216 = v296;
    v217 = v277;
    goto LABEL_152;
  }

LABEL_72:
  v121 = (v120 - 1) & v120;
  v122 = (v117 << 9) | (8 * __clz(__rbit64(v120)));
  v123 = *(*(v110 + 56) + v122);
  v124 = *(*(v110 + 48) + v122);

  if (v124)
  {
    goto LABEL_76;
  }

LABEL_96:
  sub_10001B860();

  i = sub_10038E004(_swiftEmptyArrayStorage);
  if ((v291 & 0xC000000000000001) != 0)
  {
    v157 = 0;
    v158 = 0;
    v49 = 0;
    v159 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v160 = -1 << *(v291 + 32);
    v158 = ~v160;
    v157 = v291 + 64;
    v161 = -v160;
    if (v161 < 64)
    {
      v162 = ~(-1 << v161);
    }

    else
    {
      v162 = -1;
    }

    v49 = (v162 & *(v291 + 64));
    v159 = v291;
  }

  v163 = 0;
  v290 = v158;
  v292 = v159;
  while (1)
  {
    v164 = v163;
    if ((v159 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v170 = __CocoaDictionary.Iterator.next()();
      if (!v170)
      {
        goto LABEL_131;
      }

      v172 = v171;
      v297 = v170;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      swift_dynamicCast();
      v169 = v305;
      v297 = v172;
      type metadata accessor for RDElementManualSortID();
      swift_dynamicCast();
      v168 = v305;
      v163 = v164;
      v295 = v49;
      if (!v169)
      {
        goto LABEL_131;
      }

LABEL_112:

      v173._countAndFlagsBits = UUID.uuidString.getter();
      v305 = 0x7C6C61636F6CLL;
      v306 = 0xE600000000000000;
      String.append(_:)(v173);

      v174 = v305;
      v175 = v306;
      v176 = *(v168 + 24);
      if (v176)
      {
        v287 = *(v168 + 16);

        v181 = i;
        LODWORD(v286) = swift_isUniquelyReferenced_nonNull_native();
        v305 = v181;
        v183 = sub_100005F4C(v174, v175);
        v184 = v181[2];
        v185 = (v182 & 1) == 0;
        v186 = v184 + v185;
        if (!__OFADD__(v184, v185))
        {
          if (v181[3] < v186)
          {
            LODWORD(i) = v182;
            sub_10036A8F0(v186, v286);
            v187 = sub_100005F4C(v174, v175);
            if ((i & 1) == (v188 & 1))
            {
              v183 = v187;
              if ((i & 1) == 0)
              {
                goto LABEL_128;
              }

LABEL_126:
              v192 = v183;

              i = v305;
              v193 = (*(v305 + 56) + 16 * v192);
              v194 = v193[1];
              *v193 = v287;
              v193[1] = v176;

              goto LABEL_130;
            }

LABEL_188:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_189:

            __break(1u);
            return;
          }

          if (v286)
          {
            if (v182)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v286 = v183;
            LODWORD(i) = v182;
            sub_100373664();
            v183 = v286;
            if (i)
            {
              goto LABEL_126;
            }
          }

LABEL_128:
          v195 = v305;
          *(v305 + 8 * (v183 >> 6) + 64) |= 1 << v183;
          v196 = (*(v195 + 48) + 16 * v183);
          *v196 = v174;
          v196[1] = v175;
          v197 = (*(v195 + 56) + 16 * v183);
          *v197 = v287;
          v197[1] = v176;
          v198 = v195;

          v199 = *(v198 + 16);
          v155 = __OFADD__(v199, 1);
          v200 = v199 + 1;
          if (!v155)
          {
            i = v198;
            *(v198 + 16) = v200;
            goto LABEL_130;
          }

LABEL_183:
          __break(1u);
        }

LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v177 = i;
      v178 = sub_100005F4C(v305, v306);
      v180 = v179;

      if (v180)
      {
        break;
      }

      v164 = v163;
      v49 = v295;
      v159 = v292;
      if ((v292 & 0x8000000000000000) == 0)
      {
        goto LABEL_104;
      }
    }

    v189 = swift_isUniquelyReferenced_nonNull_native();
    v305 = v177;
    if (!v189)
    {
      sub_100373664();
      v177 = v305;
    }

    v190 = *(v177[6] + 16 * v178 + 8);

    v191 = *(v177[7] + 16 * v178 + 8);

    i = v177;
    sub_1003328B8(v178, v177);

LABEL_130:
    v159 = v292;
    v49 = v295;
  }

LABEL_104:
  v165 = v164;
  v166 = v49;
  v163 = v164;
  if (!v49)
  {
    do
    {
      v163 = v165 + 1;
      if (__OFADD__(v165, 1))
      {
        goto LABEL_148;
      }

      if (v163 >= ((v158 + 64) >> 6))
      {
        goto LABEL_131;
      }

      v166 = *(v157 + 8 * v163);
      ++v165;
    }

    while (!v166);
  }

  v295 = (v166 - 1) & v166;
  v167 = (v163 << 9) | (8 * __clz(__rbit64(v166)));
  v168 = *(*(v159 + 56) + v167);
  v169 = *(*(v159 + 48) + v167);

  if (v169)
  {
    goto LABEL_112;
  }

LABEL_131:
  sub_10001B860();

  v201 = v285;
  sub_100226C14(v307);
  if (v201 || (v202 = v307[0], v203 = v294, !v307[0]))
  {

    return;
  }

  v53 = v307[1];
  v5 = v307[2];
  v54 = v307[3];
  v295 = v307[4];
  v305 = &_swiftEmptySetSingleton;
  v297 = &_swiftEmptyDictionarySingleton;
  v204 = i;

  sub_1004F53AC(v205, v204, v203, &v305, &v297);

  v207 = sub_1004F60B8(v206, v204, &v297);
  v208 = v202;
  v35 = v207;
  v292 = v208;

  v300 = &_swiftEmptyDictionarySingleton;

  sub_1004F5954(v209, v204, &v297, &v305, &v300);

  swift_bridgeObjectRelease_n();
  v299 = &_swiftEmptyDictionarySingleton;

  sub_1004F5CE4(v210, v203, &v305, &v299);

  swift_bridgeObjectRelease_n();
  isa = v299;
  v19 = v300;
  v49 = v297;
  swift_bridgeObjectRetain_n();

  v52 = sub_1001A6DC0(isa);

  sub_10015E0CC(v35, v49, v52);
  v285 = 0;
LABEL_139:

  v304[1] = v35;
  v304[2] = v19;
  v304[3] = v49;
  v304[4] = isa;
  v294 = v52;
  v304[5] = v52;

  v211 = sub_1003AD2E8(v35, v292);
  i = v35;

  v291 = v19;
  if ((v211 & 1) == 0)
  {

    v301 = v295;
    v218 = &v301;
    goto LABEL_151;
  }

  v212 = sub_1004ADA04(v19, v53);

  if ((v212 & 1) == 0)
  {

    v302 = v295;
    v218 = &v302;
    goto LABEL_151;
  }

  v213 = sub_1004ADBAC(v49, v5);

  if ((v213 & 1) == 0)
  {
    goto LABEL_149;
  }

  v214 = sub_1004ADD50(isa, v54);

  if ((v214 & 1) == 0)
  {

    v304[0] = v295;
    v218 = v304;
    goto LABEL_151;
  }

  v215 = sub_1005A544C(v294, v295);

  v216 = v296;
  v217 = v277;
  if (v215)
  {
LABEL_153:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_152:
  v219 = v285;
  v220 = sub_10015D850();
  v285 = v219;
  if (v219)
  {
    goto LABEL_153;
  }

  v222 = v220;
  v223 = v221;
  v224 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v222, v223);
  v225 = v284;
  [v284 setHintData:v224];

  [v225 setSerializationVersion:1];
  UUID.init()();
  v226 = UUID._bridgeToObjectiveC()().super.isa;
  (*v289)(v217, v216);
  [v225 setETag:v226];

  v228 = v294;
  v229 = *(v294 + 32);
  v292 = ((1 << v229) + 63) >> 6;
  if ((v229 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v272 = swift_slowAlloc();
      v273 = v285;
      v274 = sub_1004ADE8C(v272, v292, v294, sub_1004FD8D0);
      v285 = v273;
      if (!v273)
      {
        v275 = v274;

        v248 = v275;
        v241 = i;
        goto LABEL_170;
      }

      goto LABEL_189;
    }

    v228 = v294;
  }

  v290 = &v276;
  __chkstk_darwin(v227);
  v295 = &v276 - ((v230 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v295, v230);
  v296 = 0;
  v231 = 0;
  v234 = *(v228 + 56);
  v233 = v228 + 56;
  v232 = v234;
  v235 = 1 << *(v233 - 24);
  v236 = -1;
  if (v235 < 64)
  {
    v236 = ~(-1 << v235);
  }

  v237 = v236 & v232;
  v238 = (v235 + 63) >> 6;
  while (1)
  {
    if (!v237)
    {
      v240 = v231;
      v241 = i;
      while (1)
      {
        v231 = v240 + 1;
        if (__OFADD__(v240, 1))
        {
          break;
        }

        if (v231 >= v238)
        {
          goto LABEL_169;
        }

        v242 = *(v233 + 8 * v231);
        ++v240;
        if (v242)
        {
          v239 = __clz(__rbit64(v242));
          v237 = (v242 - 1) & v242;
          goto LABEL_165;
        }
      }

      __break(1u);
      goto LABEL_180;
    }

    v239 = __clz(__rbit64(v237));
    v237 &= v237 - 1;
LABEL_165:
    v241 = v239 | (v231 << 6);
    v243 = (*(v294 + 48) + 16 * v241);
    v245 = *v243;
    v244 = v243[1];

    v246._countAndFlagsBits = 0x7C6C61636F6CLL;
    v246._object = 0xE600000000000000;
    v247 = String.hasPrefix(_:)(v246);

    if (v247)
    {
      *(v295 + ((v241 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v241;
      v155 = __OFADD__(v296++, 1);
      if (v155)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_169:
  v248 = sub_1001A0BCC(v295, v292, v296, v294);
LABEL_170:
  v249 = v284;
  sub_1002D6764(v248);
  v250 = sub_1004FE558(1, v241, v291, v49);

  v251 = v249;

  sub_1002D6778(v250);
  [v249 updateChangeCount];
  v252 = [v249 concatenatedContainerIDsWithLocalContainerIDPrefix];
  v253 = v283;
  if (v252)
  {
    v254 = v252;
    v255 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v257 = v256;

    v305 = v255;
    v306 = v257;
    v258 = *&v251[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix + 8];
    v297 = *&v251[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedContainerIDsWithLocalContainerIDPrefix];
    v298 = v258;
    sub_10013BCF4();
    v259 = StringProtocol.components<A>(separatedBy:)();

    v260 = sub_1001A5660(v259);
  }

  else
  {
    v260 = &_swiftEmptySetSingleton;
  }

  v261 = v288;
  v262 = v260[2];

  if (v262)
  {
  }

  else
  {
    v263 = [v251 concatenatedElementIDsWithLocalElementIDPrefix];
    if (v263)
    {
      v264 = v263;
      v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v267 = v266;

      v305 = v265;
      v306 = v267;
      v268 = *&v251[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix + 8];
      v297 = *&v251[OBJC_IVAR___REMCDManualSortHint_separatorInConcatenatedElementIDsWithLocalElementIDPrefix];
      v298 = v268;
      sub_10013BCF4();
      v269 = StringProtocol.components<A>(separatedBy:)();

      v270 = sub_1001A5660(v269);
    }

    else
    {

      v270 = &_swiftEmptySetSingleton;
    }

    v271 = v270[2];
  }
}

uint64_t destroy for RDSavedReminders(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];
}

void *initializeWithCopy for RDSavedReminders(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  return a1;
}

uint64_t *assignWithCopy for RDSavedReminders(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v7 = a1[3];
  a1[3] = a2[3];

  v8 = a1[4];
  a1[4] = a2[4];

  v9 = a1[5];
  a1[5] = a2[5];

  v10 = a1[6];
  a1[6] = a2[6];

  v11 = a2[7];
  v12 = a1[7];
  a1[7] = v11;

  return a1;
}

void *assignWithTake for RDSavedReminders(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = a2[2];

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = a2[3];

  return a1;
}

uint64_t sub_1004F88D4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1004F89D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004F920C(*a1);
  *a2 = result;
  return result;
}

void sub_1004F8A00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "alarm.reminder.completed";
  v4 = "sectionIdentifiers";
  v5 = 0xD000000000000016;
  if (v2 == 5)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v4 = "sectionByIdentifier";
  }

  v6 = "savedReminderByIdentifier";
  v7 = 0xD00000000000002CLL;
  if (v2 != 3)
  {
    v7 = 0xD000000000000012;
    v6 = "ntsBySavedReminderIdentifier";
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "inderIdentifiers";
  v9 = 0xD000000000000019;
  if (v2 == 1)
  {
    v9 = 0xD000000000000033;
  }

  else
  {
    v8 = "dReminderIdentifier";
  }

  if (*v1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v9 = v5;
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_1004F8AC8()
{
  v1 = *v0;
  v2 = 0xD000000000000016;
  if (v1 == 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD00000000000002CLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (v1 == 1)
  {
    v4 = 0xD000000000000033;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1004F8B8C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1004F920C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1004F8BC0(uint64_t a1)
{
  v2 = sub_1004F9E10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F8BFC(uint64_t a1)
{
  v2 = sub_1004F9E10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F8C38(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_10094AD80, &qword_1007AED08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_1004F9E10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  sub_1004FA31C(&qword_10094AD88, &qword_10094AD90);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_1000F5104(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA3B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_1000F5104(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA4A8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_1000F5104(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA594();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    sub_1000F5104(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA76C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[6];
    HIBYTE(v12) = 6;
    sub_1000F5104(&qword_10094AD70, &qword_1007AED00);
    sub_1004FA87C(&qword_10094ADD8, &qword_10094AD90);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004F8FF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1004F9098(v7, v8) & 1;
}

double sub_1004F903C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1004F9258(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1004F9098(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1003AE83C(*a1, *a2) & 1) == 0 || (sub_1004ABFD0(a1[1], a2[1]) & 1) == 0 || (sub_1004AC5B0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a2[3];

    v7 = sub_1004ACB00(v4, v5);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a2[4];

    v11 = sub_1003AE83C(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v12 = a1[5];
  v13 = a2[5];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = a2[5];

    v15 = sub_1004ACF8C(v12, v13);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v16 = a1[6];
  v17 = a2[6];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  v18 = a2[6];

  v19 = sub_1004AD468(v16, v17);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v20 = a1[7];
  v21 = a2[7];

  return sub_1004AD468(v20, v21);
}

unint64_t sub_1004F920C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3A08, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004F9258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for UUID();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = v110[8];
  __chkstk_darwin(v3);
  v112 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v114 = &v82 - v7;
  __chkstk_darwin(v8);
  v113 = &v82 - v9;
  __chkstk_darwin(v10);
  v12 = &v82 - v11;
  v13 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v82 - v18;
  v20 = sub_1000F5104(&qword_10094ACF0, &unk_1007AECC8);
  v115 = *(v20 - 8);
  v21 = *(v115 + 64);
  __chkstk_darwin(v20);
  v23 = &v82 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v116 = a1;
  sub_10000F61C(a1, v24);
  sub_1004F9E10();
  v26 = v117;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_10000607C(v116);
  }

  v107 = v13;
  v108 = v19;
  v106 = v16;
  v117 = v12;
  v27 = v115;
  sub_1000F5104(&qword_10093D008, qword_10079AAC0);
  v118 = 0;
  sub_1004FA31C(&qword_10094AD00, &qword_10094AD08);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v119;
  sub_1000F5104(&qword_10094AD10, &qword_1007AECD8);
  v118 = 1;
  sub_1004F9E64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v23;
  v30 = v27;
  v105 = v28;
  v31 = v119;
  sub_1000F5104(&qword_10094AD20, &qword_1007AECE0);
  v118 = 2;
  sub_1004F9F54();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v119;
  sub_1000F5104(&qword_10094AD30, &qword_1007AECE8);
  v118 = 3;
  sub_1004FA040();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v34 = v119;
  v118 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v119;
  sub_1000F5104(&qword_10094AD58, &qword_1007AECF8);
  v118 = 5;
  sub_1004FA134();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v90 = v119;
  sub_1000F5104(&qword_10094AD70, &qword_1007AED00);
  v118 = 6;
  sub_1004FA87C(&qword_10094AD78, &qword_10094AD08);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v83 = v35;
  v84 = v32;
  v85 = v29;
  v86 = 0;
  v87 = v20;
  v82 = v119;

  v36 = sub_10038EEC4(_swiftEmptyArrayStorage);
  v37 = v31 + 8;
  v38 = 1 << *(v31 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v31[8];
  v92 = (v38 + 63) >> 6;
  v102 = v110 + 2;
  v98 = v110 + 4;
  v99 = (v110 + 1);
  v96 = (v110 + 5);
  v91 = v31;

  v41 = 0;
  v42 = v111;
  v43 = v108;
  v89 = v34;
  v88 = v37;
  while (1)
  {
    v44 = v109;
    if (!v40)
    {
      break;
    }

LABEL_14:
    v95 = v40;
    v94 = v41;
    v46 = __clz(__rbit64(v40)) | (v41 << 6);
    v47 = v91;
    v48 = v91[6];
    v49 = v110;
    v93 = v110[9];
    v101 = v110[2];
    v101(v43, v48 + v93 * v46, v42);
    v50 = *(v47[7] + 8 * v46);
    v52 = v106;
    v51 = v107;
    *(v43 + *(v107 + 48)) = v50;
    sub_1004FA244(v43, v52);
    v53 = *(v52 + *(v51 + 48));
    v97 = v49[4];
    v97(v117, v52, v42);
    v100 = *(v53 + 16);
    if (v100)
    {
      v54 = v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80));

      v55 = v54;
      v56 = 0;
      v57 = v113;
      v58 = v93;
      while (1)
      {
        v60 = *(v53 + 16);
        v104 = v56;
        if (v56 >= v60)
        {
          break;
        }

        v61 = v53;
        v62 = v57;
        v103 = v55;
        v63 = v101;
        (v101)(v57);
        v64 = v114;
        v63(v114, v62, v42);
        v63(v112, v117, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v119 = v36;
        v66 = sub_100363F20(v64);
        v68 = v36[2];
        v69 = (v67 & 1) == 0;
        v70 = __OFADD__(v68, v69);
        v71 = v68 + v69;
        if (v70)
        {
          goto LABEL_31;
        }

        v72 = v67;
        if (v36[3] >= v71)
        {
          v74 = v99;
          v53 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v79 = v66;
            sub_1003744A0();
            v66 = v79;
          }
        }

        else
        {
          sub_10036C648(v71, isUniquelyReferenced_nonNull_native);
          v66 = sub_100363F20(v114);
          v74 = v99;
          if ((v72 & 1) != (v73 & 1))
          {
            goto LABEL_34;
          }

          v53 = v61;
        }

        v42 = v111;
        v36 = v119;
        if (v72)
        {
          (*v96)(v119[7] + v66 * v58, v112, v111);
          v59 = *v74;
          (*v74)(v114, v42);
          v59(v113, v42);
        }

        else
        {
          v119[(v66 >> 6) + 8] |= 1 << v66;
          v75 = v66 * v58;
          v76 = v114;
          v101(v36[6] + v66 * v58, v114, v42);
          v97((v36[7] + v75), v112, v42);
          v59 = *v74;
          (*v74)(v76, v42);
          v59(v113, v42);
          v77 = v36[2];
          v70 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v70)
          {
            goto LABEL_32;
          }

          v36[2] = v78;
        }

        v56 = v104 + 1;
        v55 = v103 + v58;
        v57 = v113;
        if (v100 == v104 + 1)
        {

          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v59 = *v99;
LABEL_8:
    v43 = v108;
    v40 = (v95 - 1) & v95;
    v59(v117, v42);
    sub_1004FA2B4(v43);
    v37 = v88;
    v41 = v94;
    v34 = v89;
  }

  while (1)
  {
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v45 >= v92)
    {
      (*(v30 + 8))(v85, v87);
      v80 = v91;

      result = sub_10000607C(v116);
      *v44 = v105;
      v44[1] = v80;
      v44[2] = v84;
      v44[3] = v34;
      v81 = v90;
      v44[4] = v83;
      v44[5] = v81;
      v44[6] = v82;
      v44[7] = v36;
      return result;
    }

    v40 = v37[v45];
    ++v41;
    if (v40)
    {
      v41 = v45;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1004F9E10()
{
  result = qword_10094ACF8;
  if (!qword_10094ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ACF8);
  }

  return result;
}

unint64_t sub_1004F9E64()
{
  result = qword_10094AD18;
  if (!qword_10094AD18)
  {
    sub_1000F514C(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID);
    sub_1004FA31C(&qword_10094AD00, &qword_10094AD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD18);
  }

  return result;
}

unint64_t sub_1004F9F54()
{
  result = qword_10094AD28;
  if (!qword_10094AD28)
  {
    sub_1000F514C(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID);
    sub_1004FA724(&qword_100940528, type metadata accessor for RDSavedReminder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD28);
  }

  return result;
}

unint64_t sub_1004FA040()
{
  result = qword_10094AD38;
  if (!qword_10094AD38)
  {
    sub_1000F514C(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID);
    sub_1004FA688(&qword_10094AD40, &qword_10094AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD38);
  }

  return result;
}

unint64_t sub_1004FA134()
{
  result = qword_10094AD60;
  if (!qword_10094AD60)
  {
    sub_1000F514C(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA724(&qword_10094AD08, &type metadata accessor for UUID);
    sub_1004FA1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD60);
  }

  return result;
}

unint64_t sub_1004FA1F0()
{
  result = qword_10094AD68;
  if (!qword_10094AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD68);
  }

  return result;
}

uint64_t sub_1004FA244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FA2B4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100949240, &unk_1007AD460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004FA31C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093D008, qword_10079AAC0);
    sub_1004FA724(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004FA3B8()
{
  result = qword_10094AD98;
  if (!qword_10094AD98)
  {
    sub_1000F514C(&qword_10094AD10, &qword_1007AECD8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID);
    sub_1004FA31C(&qword_10094AD88, &qword_10094AD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AD98);
  }

  return result;
}

unint64_t sub_1004FA4A8()
{
  result = qword_10094ADA0;
  if (!qword_10094ADA0)
  {
    sub_1000F514C(&qword_10094AD20, &qword_1007AECE0);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID);
    sub_1004FA724(&qword_10094ADA8, type metadata accessor for RDSavedReminder);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADA0);
  }

  return result;
}

unint64_t sub_1004FA594()
{
  result = qword_10094ADB0;
  if (!qword_10094ADB0)
  {
    sub_1000F514C(&qword_10094AD30, &qword_1007AECE8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID);
    sub_1004FA688(&qword_10094ADB8, &qword_10094ADC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADB0);
  }

  return result;
}

uint64_t sub_1004FA688(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094AD48, &qword_1007AECF0);
    sub_1004FA724(a2, type metadata accessor for RDSavedURLAttachment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FA724(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004FA76C()
{
  result = qword_10094ADC8;
  if (!qword_10094ADC8)
  {
    sub_1000F514C(&qword_10094AD58, &qword_1007AECF8);
    sub_1004FA724(&qword_10094AD90, &type metadata accessor for UUID);
    sub_1004FA828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADC8);
  }

  return result;
}

unint64_t sub_1004FA828()
{
  result = qword_10094ADD0;
  if (!qword_10094ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADD0);
  }

  return result;
}

uint64_t sub_1004FA87C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10094AD70, &qword_1007AED00);
    sub_1004FA724(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004FA92C()
{
  result = qword_10094ADE0;
  if (!qword_10094ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADE0);
  }

  return result;
}

unint64_t sub_1004FA984()
{
  result = qword_10094ADE8;
  if (!qword_10094ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADE8);
  }

  return result;
}

unint64_t sub_1004FA9DC()
{
  result = qword_10094ADF0;
  if (!qword_10094ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094ADF0);
  }

  return result;
}

uint64_t sub_1004FAA30()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094ADF8);
  v1 = sub_100006654(v0, qword_10094ADF8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004FAAF8()
{
  v0 = _s10PredicatesOMa_1();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v4 = sub_10001F6F4();
  result = sub_1004258C8(v3, _s10PredicatesOMa_1);
  qword_100974F20 = v4;
  return result;
}

void *sub_1004FAB9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v9 = objc_opt_self();
  v10 = [v9 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v11 = v13;
  v13(v8, v4);
  sub_1004FC6E8();
  if (v1)
  {
    return v2;
  }

  v15 = v14;
  v84 = v8;
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  v81 = a1;
  v82 = v15;
  v74 = v11;
  v78 = v4;
  if (qword_100936328 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    v18 = sub_100006654(v17, qword_10094ADF8);
    v86 = &v71;
    v87 = v16;
    __chkstk_darwin(v18);
    v80 = v19;
    *(&v71 - 2) = v19;
    v20 = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v21 = sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v76 = sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v77 = v20;
    v79 = v21;
    v85 = Sequence.map<A>(skippingError:_:)();
    v22 = v16 >> 62;
    v23 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v73 = v9;
    v75 = v12;
    if (!v23)
    {
      break;
    }

    v72 = (v16 >> 62);
    v89 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    v12 = 0;
    v86 = (v16 & 0xC000000000000001);
    v83 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      v24 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v86)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= v83[2])
        {
          goto LABEL_57;
        }

        v25 = *(v16 + 8 * v12 + 32);
      }

      v9 = v25;
      v26 = [v25 account];
      if (!v26)
      {

        v2 = objc_opt_self();
        v87 = 0;
        v88 = 0xE000000000000000;
        _StringGuts.grow(_:)(32);

        v87 = 0xD00000000000001DLL;
        v88 = 0x80000001007FB460;
        v45 = [v9 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49._countAndFlagsBits = v46;
        v49._object = v48;
        String.append(_:)(v49);

        v50._countAndFlagsBits = 125;
        v50._object = 0xE100000000000000;
        String.append(_:)(v50);
        v51 = String._bridgeToObjectiveC()();

        [v2 internalErrorWithDebugDescription:v51];

        swift_willThrow();
LABEL_40:

        return v2;
      }

      v27 = v26;
      v87 = 0;
      v28 = [v26 remObjectIDWithError:&v87];
      if (!v28)
      {
        v2 = v87;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_40;
      }

      v29 = v28;
      v30 = v87;
      sub_1005E37E8(v29);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = v89[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v12;
      if (v24 == v23)
      {
        v83 = v89;
        v22 = v72;
        goto LABEL_18;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_18:
  v87 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
LABEL_20:
      v32 = 0;
      v86 = _swiftEmptyArrayStorage;
      do
      {
        v33 = v32;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v33 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v34 = *(v16 + 8 * v33 + 32);
          }

          v2 = v34;
          v32 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v35 = [v34 parentList];
          if (v35)
          {
            break;
          }

          ++v33;
          if (v32 == v9)
          {
            goto LABEL_37;
          }
        }

        v89 = 0;
        v72 = v35;
        v36 = [v35 remObjectIDWithError:&v89];
        if (!v36)
        {
          v70 = v89;

          _convertNSErrorToError(_:)();

          swift_willThrow();

          return v2;
        }

        v37 = v36;
        v38 = v89;
        v12 = sub_1005E37C0(v37);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v87[2] >= v87[3] >> 1)
        {
          v39 = v87[2];
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v86 = v87;
      }

      while (v32 != v9);
      goto LABEL_37;
    }
  }

  else
  {
    v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_20;
    }
  }

  v86 = _swiftEmptyArrayStorage;
LABEL_37:

  sub_1005ECAEC(v83, 0, 1, 0, 0);
  v41 = v40;

  v87 = v41;
  __chkstk_darwin(v42);
  v43 = v80;
  *(&v71 - 2) = v80;
  sub_1000F5104(&qword_10094F630, qword_1007A3430);
  v44 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
  sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
  v83 = v44;
  Sequence.map<A>(skippingError:_:)();
  v21 = &selRef_accountStatusWithCompletionHandler_;
  v52 = v86;

  sub_1005EC5F0(v52, 0, 1, 0, 0);
  v55 = v54;

  v87 = v55;
  __chkstk_darwin(v56);
  *(&v71 - 2) = v43;
  v86 = Sequence.map<A>(skippingError:_:)();
  v20 = v78;

  v23 = v85;
  if (!(v85 >> 62))
  {
    v57 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_44;
  }

LABEL_61:
  v57 = _CocoaArrayWrapper.endIndex.getter();
LABEL_44:
  if (v57)
  {
    v87 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v57 < 0)
    {
      __break(1u);
    }

    v58 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v59 = *(v85 + 8 * v58 + 32);
      }

      v60 = v59;
      ++v58;
      v61 = [v59 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v62 = v87[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 = &selRef_accountStatusWithCompletionHandler_;
    }

    while (v57 != v58);
    v20 = v78;
    v23 = v85;
  }

  v87 = v23;
  sub_100271FB4(v86);
  v63 = objc_allocWithZone(REMFetchResult);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v65 = Array._bridgeToObjectiveC()().super.isa;

  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  v66 = Array._bridgeToObjectiveC()().super.isa;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v67 = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v63 initWithAccountStorages:isa listStorages:v65 reminderStorages:v66 requestedObjectIDs:v67 metadata:0];

  static os_signpost_type_t.end.getter();
  v68 = [v73 v21[274]];
  v69 = v84;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v74(v69, v20);
  return v2;
}

id sub_1004FB7FC()
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v7 = objc_opt_self();
  v8 = [v7 database];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_1004FC6E8();
  if (!v1)
  {
    v11 = v10;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v13 = NSManagedObjectContext.fetch<A>(_:)();
    v22 = 0;
    if (qword_100936328 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_100006654(v14, qword_10094ADF8);
    v21[2] = v21;
    v23 = v13;
    __chkstk_darwin(v15);
    v21[-2] = v16;
    v21[1] = v13;
    v21[0] = sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v17 = v22;
    Sequence.map<A>(skippingError:_:)();
    if (v17)
    {

      v22 = 0;
    }

    else
    {
      v22 = 0;
    }

    v18 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v0 = [v18 initWithListStorages:isa];

    static os_signpost_type_t.end.getter();
    v20 = [v7 database];
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    v9(v6, v2);
  }

  return v0;
}