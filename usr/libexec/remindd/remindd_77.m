void sub_1006D4308(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (gDADOperationQueue)
  {
    v21 = v10;
    sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v20 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    aBlock[4] = sub_1006D46E4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FBCC0;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100054694(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v21);
  }

  else
  {
    if (qword_1009366E8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_10094FB70);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v21, v17, "DADMain is disabled after we stop monitoring agents. Will not try re-starting agents.", v18, 2u);
    }

    v19 = v21;
  }
}

uint64_t sub_1006D46EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v4(v5, v6);
}

uint64_t sub_1006D483C()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4884()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 57);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v4(v5, v6, v7);
}

uint64_t sub_1006D494C(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1006D4A14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006D4A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4B38()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1006D4BA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1006D4C34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006D4CE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1006D4DA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D4E08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1006D4E98()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006D4EF0(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 56);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1006D4F80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D5000()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1006D5048()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  sub_1006BA3CC();
  if ((v2 & 1) == 0)
  {
    sub_1006D4308(v1);
  }

  return v4(v5);
}

uint64_t sub_1006D50A8(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t initializeWithCopy for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

uint64_t assignWithCopy for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

__n128 initializeWithTake for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDAccountUtils.AccountInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAccountUtils.AccountInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDAccountUtils.AccountInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006D5390()
{
  result = qword_10094FE60;
  if (!qword_10094FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE60);
  }

  return result;
}

void *sub_1006D552C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100253258(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_100411AE4(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_100253258(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_1000F5104(&qword_100946070, &qword_1007A7668);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1006B0370(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_1006B0370(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_1006B0370(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
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
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D5938()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v109 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v112 = &v107 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = (&v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v107 - v15;
  v17 = _s10PredicatesOMa_2();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v108 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v115 = &v107 - v26;
  __chkstk_darwin(v25);
  v28 = &v107 - v27;
  v122 = _swiftEmptyArrayStorage;
  sub_1006D6D24(v1, v20);
  v29 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v111 = (*(*(v29 - 8) + 48))(v20, 1, v29);
  v116 = v2;
  v119 = v28;
  v113 = v3;
  if (v111 == 1)
  {
    (*(v3 + 56))(v28, 1, 1, v2);
LABEL_5:
    v114 = 0;
LABEL_6:
    v110 = 0;
    goto LABEL_7;
  }

  (*(v10 + 32))(v16, v20, v9);
  (*(v10 + 16))(v14, v16, v9);
  v30 = (*(v10 + 88))(v14, v9);
  if (v30 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
  {
    (*(v10 + 8))(v16, v9);
    (*(v10 + 96))(v14, v9);
    v31 = v116;
    (*(v3 + 32))(v28, v14, v116);
    (*(v3 + 56))(v28, 0, 1, v31);
    goto LABEL_5;
  }

  if (v30 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v10 + 96))(v14, v9);
    v97 = *v14;
    (*(v3 + 56))(v28, 1, 1, v116);
    sub_100393DD8(v97);
    v114 = v98;

    (*(v10 + 8))(v16, v9);
    goto LABEL_6;
  }

  if (v30 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    (*(v10 + 8))(v16, v9);
    v106 = *(v3 + 56);
    v110 = 1;
    v106(v28, 1, 1, v116);
    v114 = 0;
LABEL_7:
    sub_1000F5104(&qword_10094FE70, &unk_1007B5CC8);
    inited = swift_initStackObject();
    v121 = xmmword_100791300;
    *(inited + 16) = xmmword_100791300;
    KeyPath = swift_getKeyPath();
    v34 = sub_1003918D0(KeyPath, 1);

    *(inited + 32) = v34;
    sub_100271FE4(inited);
    v35 = swift_initStackObject();
    v120 = xmmword_100791340;
    *(v35 + 16) = xmmword_100791340;
    *(v35 + 32) = sub_10001035C(0);
    *(v35 + 40) = sub_10029EB64(0x7265646E696D6572, 0xE800000000000000, 0);
    sub_100271FE4(v35);
    v36 = swift_initStackObject();
    *(v36 + 16) = v120;
    v37 = sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v38 = swift_allocObject();
    *(v38 + 16) = v121;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 32) = 0xD000000000000024;
    *(v38 + 40) = 0x80000001007FEF30;
    v39 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v41 = objc_opt_self();
    v42 = [v41 predicateWithFormat:v39 argumentArray:isa];

    *(v36 + 32) = v42;
    v43 = swift_allocObject();
    *(v43 + 16) = v121;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 32) = 0xD000000000000029;
    *(v43 + 40) = 0x80000001007FEF60;
    v44 = String._bridgeToObjectiveC()();
    v45 = Array._bridgeToObjectiveC()().super.isa;

    v46 = [v41 predicateWithFormat:v44 argumentArray:v45];

    *(v36 + 40) = v46;
    sub_100271FE4(v36);
    v47 = swift_initStackObject();
    *(v47 + 16) = v121;
    v117 = v37;
    v48 = swift_allocObject();
    *(v48 + 16) = v121;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 32) = 0xD000000000000010;
    *(v48 + 40) = 0x80000001007FEF90;
    v49 = String._bridgeToObjectiveC()();
    v50 = Array._bridgeToObjectiveC()().super.isa;

    v118 = v41;
    v51 = [v41 predicateWithFormat:v49 argumentArray:v50];

    *(v47 + 32) = v51;
    sub_100271FE4(v47);
    v52 = swift_initStackObject();
    *(v52 + 16) = v121;
    v53 = swift_getKeyPath();
    v54 = [objc_opt_self() localInternalAccountID];
    v55 = [v54 uuid];

    v56 = v112;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = type metadata accessor for UUID();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    v58 = sub_1003EDB44(v53, v56);

    *(v52 + 32) = v58;
    sub_100271FE4(v52);
    if (v110)
    {
      v59 = swift_initStackObject();
      *(v59 + 16) = v121;
      v60 = swift_allocObject();
      *(v60 + 16) = v121;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 32) = 0xD000000000000012;
      *(v60 + 40) = 0x80000001007B5D40;
      v61 = String._bridgeToObjectiveC()();
      v62 = Array._bridgeToObjectiveC()().super.isa;

      v63 = [v118 predicateWithFormat:v61 argumentArray:v62];

      *(v59 + 32) = v63;
      sub_100271FE4(v59);
    }

    v64 = v113;
    if (v111 == 1)
    {
      v65 = swift_initStackObject();
      *(v65 + 16) = v121;
      swift_getKeyPath();
      v66 = sub_1003EDB6C();

      *(v65 + 32) = v66;
      sub_100271FE4(v65);
    }

    v67 = v115;
    sub_10012F78C(v119, v115);
    v68 = v116;
    if ((*(v64 + 48))(v67, 1, v116) == 1)
    {
      sub_1000050A4(v67, &unk_100938850, qword_100795AE0);
      v69 = v114;
      if (!v114)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v70 = v109;
      (*(v64 + 32))(v109, v67, v68);
      v71 = swift_initStackObject();
      *(v71 + 16) = v121;
      v72 = swift_initStackObject();
      *(v72 + 16) = v120;
      v73 = swift_allocObject();
      *(v73 + 16) = v121;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 32) = 0xD000000000000012;
      *(v73 + 40) = 0x80000001007B5D40;
      v74 = String._bridgeToObjectiveC()();
      v75 = Array._bridgeToObjectiveC()().super.isa;

      v76 = [v118 predicateWithFormat:v74 argumentArray:v75];

      *(v72 + 32) = v76;
      v77 = swift_getKeyPath();
      v78 = v108;
      (*(v64 + 16))(v108, v70, v68);
      (*(v64 + 56))(v78, 0, 1, v68);
      v79 = sub_1003EDC5C(v77, v78);

      *(v72 + 40) = v79;
      *(v71 + 32) = sub_100025060(v72);
      sub_100271FE4(v71);
      (*(v64 + 8))(v70, v68);
      v69 = v114;
      if (!v114)
      {
LABEL_21:
        v104 = sub_10000C2B0(v122);
        sub_1000050A4(v119, &unk_100938850, qword_100795AE0);
        return v104;
      }
    }

    v80 = sub_1006D552C(v69);

    if (v80[2])
    {
      v81 = swift_initStackObject();
      *(v81 + 16) = v121;
      v82 = swift_initStackObject();
      *(v82 + 16) = v120;
      v83 = swift_allocObject();
      *(v83 + 16) = v121;
      *(v83 + 56) = &type metadata for String;
      *(v83 + 32) = 0xD000000000000012;
      *(v83 + 40) = 0x80000001007B5D40;
      v84 = String._bridgeToObjectiveC()();
      v85 = Array._bridgeToObjectiveC()().super.isa;

      v86 = v118;
      v87 = [v118 predicateWithFormat:v84 argumentArray:v85];

      *(v82 + 32) = v87;
      swift_getKeyPath();
      v88 = sub_10004FAEC(v80);

      v89 = swift_allocObject();
      *(v89 + 16) = v120;
      v90 = sub_10030D838();
      *(v89 + 56) = &type metadata for String;
      *(v89 + 32) = v90;
      *(v89 + 40) = v91;
      *(v89 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
      *(v89 + 64) = v88;
      v92 = String._bridgeToObjectiveC()();
      v93 = Array._bridgeToObjectiveC()().super.isa;

      v94 = [v86 predicateWithFormat:v92 argumentArray:v93];

      *(v82 + 40) = v94;
      v95 = sub_100025060(v82);
      v96 = v81;
      *(v81 + 32) = v95;
    }

    else
    {

      v99 = swift_initStackObject();
      *(v99 + 16) = v121;
      v100 = swift_allocObject();
      *(v100 + 16) = v121;
      *(v100 + 56) = &type metadata for String;
      *(v100 + 32) = 0xD000000000000012;
      *(v100 + 40) = 0x80000001007B5D40;
      v101 = String._bridgeToObjectiveC()();
      v102 = Array._bridgeToObjectiveC()().super.isa;

      v103 = [v118 predicateWithFormat:v101 argumentArray:v102];

      v96 = v99;
      *(v99 + 32) = v103;
    }

    sub_100271FE4(v96);
    goto LABEL_21;
  }

  if (v30 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    (*(v10 + 8))(v16, v9);
    (*(v3 + 56))(v28, 1, 1, v116);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1006D68EC()
{
  sub_100026EF4(0, 4, 0);
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
  v4[4] = 0x696669746E656469;
  v4[5] = 0xEA00000000007265;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;
  if (v3 >= v5 >> 1)
  {
    sub_100026EF4((v5 > 1), v6, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = 0x737574617473;
  v7[5] = 0xE600000000000000;
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
  v11[4] = 0xD000000000000014;
  v11[5] = 0x80000001007E8B20;
  v12 = _swiftEmptyArrayStorage[3];
  v13 = v9 + 2;
  if (v10 >= v12 >> 1)
  {
    sub_100026EF4((v12 > 1), v13, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v13;
  v14 = &_swiftEmptyArrayStorage[2 * v10];
  strcpy(v14 + 32, "assignedDate");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  return result;
}

void *sub_1006D6C38()
{
  sub_100026EF4(0, 1, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  if (v2 >= v1 >> 1)
  {
    sub_100026EF4((v1 > 1), v2 + 1, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v2 + 1;
  v3 = &_swiftEmptyArrayStorage[2 * v2];
  v3[4] = 0x7265646E696D6572;
  v3[5] = 0xE800000000000000;
  return result;
}

uint64_t _s10PredicatesOMa_2()
{
  result = qword_10094FEE8;
  if (!qword_10094FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006D6D24(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesOMa_2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1006D6D94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1006D6F24(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_1006D6FE0(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1006D7134(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_1000050A4(a1, &qword_10094FE68, &qword_1007B5CC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_1006D7310(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1006D7464(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_1000050A4(a1, &qword_10094FE68, &qword_1007B5CC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1006D7668(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1006D76DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1006D7758()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_1006D77D0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FEF8);
  v1 = sub_100006654(v0, qword_10094FEF8);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1006D78EC(uint64_t a1@<X8>)
{
  v3 = [v1 rawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  REMFeatureFlags.init(rawValue:)();
  v4 = type metadata accessor for REMFeatureFlags();
  if ((*(*(v4 - 8) + 48))(a1, 1, v4) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10094FEF8);
    v6 = v1;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [v6 rawValue];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "RDFeatureFlagsObjCWrapper: Attempt to unwrap to a feature flag with unknown rawValue: %s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006D7B14(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 rawValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  REMFeatureFlags.init(rawValue:)();
  v5 = type metadata accessor for REMFeatureFlags();
  if ((*(*(v5 - 8) + 48))(a1, 1, v5) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094FEF8);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = [v2 rawValue];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_10000668C(v11, v13, &v16);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v7, "RDFeatureFlagsObjCWrapper: Attempt to unwrap to a feature flag with unknown rawValue: %s", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

Swift::Bool __swiftcall RDFeatureFlagsObjCWrapper.isEnabled()()
{
  v0 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  sub_1006D78EC(&v8 - v2);
  v4 = type metadata accessor for REMFeatureFlags();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1006D8954(v3);
    v6 = 0;
  }

  else
  {
    v6 = REMFeatureFlags.isEnabled.getter();
    (*(v5 + 8))(v3, v4);
  }

  return v6 & 1;
}

id sub_1006D80C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDFeatureFlagsTemporaryOverrideObjcWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _sSo25RDFeatureFlagsObjCWrapperC7reminddE014wrappedFeatureB04withSo010REMFeaturebC9CWrapping_pSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;

  REMFeatureFlags.init(rawValue:)();
  v11 = type metadata accessor for REMFeatureFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v10, 1, v11) == 1)
  {
    if (qword_1009366F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094FEF8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v12;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = a1;
      v21 = v19;
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000668C(v20, a2, &v27);
      _os_log_impl(&_mh_execute_header, v15, v16, "RDFeatureFlagsObjCWrapper: Attempt to wrap a feature flag with unknown rawValue: %s", v18, 0xCu);
      sub_10000607C(v21);

      v12 = v26;
    }
  }

  sub_1006D89E0(v10, v7);
  if (v13(v7, 1, v11) == 1)
  {
    sub_1006D8954(v10);
    sub_1006D8954(v7);
    return 0;
  }

  else
  {
    REMFeatureFlags.rawValue.getter();
    v23 = objc_allocWithZone(RDFeatureFlagsObjCWrapper);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 initWithRawValue:v24];

    sub_1006D8954(v10);
    (*(v12 + 8))(v7, v11);
    return v25;
  }
}

id _sSo25RDFeatureFlagsObjCWrapperC7reminddE17temporaryOverride018withEnabledFeatureB008disabledjB0So010REMFeatureb9TemporaryG12ObjcWrapping_pSaySo0lbC9CWrapping_pG_AItFZ_0(unint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for REMFeatureFlags();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  __chkstk_darwin(v11);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v50 - v15;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v7;
  for (i = a2; v16; i = a2)
  {
    v17 = 0;
    v18 = a1 & 0xC000000000000001;
    a2 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = (v58 + 48);
    v56 = v58 + 32;
    v59 = _swiftEmptyArrayStorage;
    v51 = a1 & 0xC000000000000001;
    v52 = a1;
    while (v18)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      sub_1006D7B14(v10);
      swift_unknownObjectRelease();
      if ((*v19)(v10, 1, v11) == 1)
      {
        sub_1006D8954(v10);
      }

      else
      {
        v21 = v11;
        v22 = a2;
        v23 = v16;
        v24 = *v56;
        v25 = v21;
        (*v56)(v57, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1003686D4(0, *(v59 + 2) + 1, 1, v59);
        }

        v27 = *(v59 + 2);
        v26 = *(v59 + 3);
        if (v27 >= v26 >> 1)
        {
          v59 = sub_1003686D4(v26 > 1, v27 + 1, 1, v59);
        }

        v28 = v58;
        v29 = v59;
        *(v59 + 2) = v27 + 1;
        v7 = v25;
        v24(&v29[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27], v57, v25);
        v16 = v23;
        v18 = v51;
        a1 = v52;
        a2 = v22;
        v11 = v7;
      }

      ++v17;
      if (v20 == v16)
      {
        goto LABEL_21;
      }
    }

    if (v17 >= *(a2 + 16))
    {
      goto LABEL_18;
    }

    v7 = *(a1 + 8 * v17 + 32);
    swift_unknownObjectRetain();
    v20 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v7;
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_21:
  v30 = i;
  if (i >> 62)
  {
    goto LABEL_39;
  }

  v31 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v53;
  if (v31)
  {
LABEL_23:
    v33 = 0;
    v56 = v30 & 0xFFFFFFFFFFFFFF8;
    v57 = (v30 & 0xC000000000000001);
    v34 = (v58 + 48);
    v35 = (v58 + 32);
    v36 = _swiftEmptyArrayStorage;
    do
    {
      if (v57)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v38 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v33 >= *(v56 + 16))
        {
          goto LABEL_38;
        }

        v37 = *(v30 + 8 * v33 + 32);
        swift_unknownObjectRetain();
        v38 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v31 = _CocoaArrayWrapper.endIndex.getter();
          v32 = v53;
          if (!v31)
          {
            break;
          }

          goto LABEL_23;
        }
      }

      sub_1006D7B14(v32);
      swift_unknownObjectRelease();
      if ((*v34)(v32, 1, v11) == 1)
      {
        sub_1006D8954(v32);
      }

      else
      {
        v39 = v32;
        v40 = *v35;
        (*v35)(v55, v39, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1003686D4(0, *(v36 + 2) + 1, 1, v36);
        }

        v42 = *(v36 + 2);
        v41 = *(v36 + 3);
        if (v42 >= v41 >> 1)
        {
          v36 = sub_1003686D4(v41 > 1, v42 + 1, 1, v36);
        }

        *(v36 + 2) = v42 + 1;
        v40(&v36[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v42], v55, v11);
        v32 = v53;
        v30 = i;
      }

      ++v33;
    }

    while (v38 != v31);
  }

  v43 = static REMFeatureFlags.override(enabled:disabled:)();
  v45 = v44;

  v46 = type metadata accessor for RDFeatureFlagsTemporaryOverrideObjcWrapper();
  v47 = objc_allocWithZone(v46);
  v48 = &v47[OBJC_IVAR____TtC7remindd42RDFeatureFlagsTemporaryOverrideObjcWrapper_backing];
  *v48 = v43;
  v48[1] = v45;
  v60.receiver = v47;
  v60.super_class = v46;
  return objc_msgSendSuper2(&v60, "init");
}

uint64_t sub_1006D8954(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006D89E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FF10, &unk_1007B5ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006D8A50(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v81 = a4;
  v82 = a2;
  v83 = a3;
  v86 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  __chkstk_darwin(v14);
  v16 = &v77 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v77 - v19;
  v21 = [v4 identifier];
  if (!v21)
  {
    v48 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v50 = String._bridgeToObjectiveC()();
    [v48 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v50];

    return swift_willThrow();
  }

  v22 = v21;
  v84 = ObjectType;
  v85 = v13;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v20;
  v24 = *(v7 + 32);
  v24(v23, v16, v6);
  v25 = [v4 account];
  if (!v25)
  {
    v51 = objc_opt_self();
    v52 = swift_getObjCClassFromMetadata();
    v53 = String._bridgeToObjectiveC()();
    [v51 unexpectedNilPropertyWithClass:v52 property:v53];

    swift_willThrow();
    return (*(v7 + 8))(v23, v6);
  }

  v26 = v4;
  v79 = v7;
  v80 = v23;
  v27 = v25;
  v28 = [v25 identifier];
  if (!v28)
  {
    v54 = objc_opt_self();
    v55 = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    [v54 unexpectedNilPropertyWithClass:v55 property:v56];

    swift_willThrow();
    return (*(v79 + 8))(v80, v6);
  }

  v78 = v27;
  v29 = v28;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v6;
  v24(v85, v10, v6);
  static REMFileDigester.sha512Sum(url:)();
  if (!v31)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v87 = 0xD000000000000020;
    v88 = 0x80000001007FF040;
    v57 = [v4 remObjectID];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 stringRepresentation];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v62 = 0xE300000000000000;
      v60 = 4079420;
    }

    v70 = v79;
    v71 = v85;
    v72 = objc_opt_self();
    v73._countAndFlagsBits = v60;
    v73._object = v62;
    String.append(_:)(v73);

    v74 = String._bridgeToObjectiveC()();

    [v72 internalErrorWithDebugDescription:v74];

    swift_willThrow();
    v66 = *(v70 + 8);
    v66(v71, v6);
    return (v66)(v80, v6);
  }

  v32 = [v4 storeControllerManagedObjectContext];
  if (!v32)
  {

    v63 = objc_opt_self();
    v64 = swift_getObjCClassFromMetadata();
    v65 = String._bridgeToObjectiveC()();
    [v63 unexpectedNilPropertyWithClass:v64 property:v65];

    swift_willThrow();
    v66 = *(v79 + 8);
    v66(v85, v6);
    return (v66)(v80, v6);
  }

  v33 = v32;
  v34 = [v32 storeController];
  v35 = v79;
  v77 = v34;
  if (v34)
  {
    v84 = v33;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v37 = UUID._bridgeToObjectiveC()().super.isa;
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();

    URL._bridgeToObjectiveC()(v40);
    v42 = v41;
    v87 = 0;
    v43 = [v77 updateAttachmentFile:isa accountID:v37 fileName:v38 sha512Sum:v39 fileURL:v41 keepSource:v81 & 1 error:&v87];

    if (v43)
    {
      v44 = v87;
      v45 = String._bridgeToObjectiveC()();
      [v26 setFileName:v45];

      v46 = *(v35 + 8);
      v46(v85, v30);
      return (v46)(v80, v30);
    }

    v75 = v87;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {

    v67 = objc_opt_self();
    v68 = swift_getObjCClassFromMetadata();
    v69 = String._bridgeToObjectiveC()();
    [v67 unexpectedNilPropertyWithClass:v68 property:v69];

    swift_willThrow();
  }

  v76 = *(v35 + 8);
  v76(v85, v30);
  return (v76)(v80, v30);
}

uint64_t sub_1006D923C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for UUID();
  v70 = *(v12 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v12);
  v69 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v66 - v20;
  v22 = [v3 attachmentTypeRawValue];
  if (!v22)
  {
    goto LABEL_8;
  }

  v72 = a1;
  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v2;
  v25 = v24;
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  v29 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v28);

  v30 = v29 - 1;
  a1 = v72;
  if (v30 > 1)
  {
LABEL_8:
    v40 = type metadata accessor for URL();
    return (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
  }

  v31 = [v3 identifier];
  if (!v31)
  {
    goto LABEL_15;
  }

  v32 = v31;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = v70;
  v67 = *(v70 + 32);
  v67(v21, v17, v12);
  v34 = [v3 fileName];
  if (!v34)
  {
    (*(v33 + 8))(v21, v12);
LABEL_15:
    v45 = type metadata accessor for URL();
    return (*(*(v45 - 8) + 56))(v72, 1, 1, v45);
  }

  v35 = v34;
  v36 = [v3 account];
  if (!v36)
  {

    (*(v33 + 8))(v21, v12);
    (*(v33 + 56))(v11, 1, 1, v12);
LABEL_14:
    sub_1000050A4(v11, &unk_100939D90, "8\n\r");
    goto LABEL_15;
  }

  v66 = v35;
  v37 = v36;
  v38 = [v36 identifier];

  if (v38)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v42 = v70;
  (*(v70 + 56))(v8, v39, 1, v12);
  sub_100100FB4(v8, v11);
  v43 = (*(v42 + 48))(v11, 1, v12);
  v44 = v66;
  if (v43 == 1)
  {
    (*(v42 + 8))(v21, v12);

    goto LABEL_14;
  }

  v67(v69, v11, v12);
  v46 = [v3 storeControllerManagedObjectContext];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 storeController];
    if (v48)
    {
      v49 = v48;
      v50 = v44;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v52 = UUID._bridgeToObjectiveC()().super.isa;
      v53 = [v3 sha512Sum];
      v54 = v50;
      v55 = [v49 URLForAttachmentFile:isa accountID:v52 fileName:v50 sha512Sum:v53];

      v56 = v72;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v57 = *(v70 + 8);
      v57(v69, v12);
      v57(v21, v12);
      v58 = type metadata accessor for URL();
      return (*(*(v58 - 8) + 56))(v56, 0, 1, v58);
    }

    v62 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = String._bridgeToObjectiveC()();
    [v62 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v64];

    swift_willThrow();
  }

  else
  {

    v59 = objc_opt_self();
    v60 = swift_getObjCClassFromMetadata();
    v61 = String._bridgeToObjectiveC()();
    [v59 unexpectedNilPropertyWithClass:v60 property:v61];

    swift_willThrow();
  }

  v65 = *(v70 + 8);
  v65(v69, v12);
  return (v65)(v21, v12);
}

uint64_t sub_1006D98EC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094FFB0);
  v1 = sub_100006654(v0, qword_10094FFB0);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDSavedAttachment.prepareForDeletion()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v133 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v127 - v8;
  __chkstk_darwin(v10);
  v12 = &v127 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v127 - v15;
  v138.receiver = v0;
  v138.super_class = ObjectType;
  objc_msgSendSuper2(&v138, "prepareForDeletion", v14);
  v17 = [v0 attachmentTypeRawValue];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  v23 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v22);

  if ((v23 - 1) > 1)
  {
    return;
  }

  v129 = v9;
  v132 = ObjectType;
  if (qword_100936700 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100006654(v24, qword_10094FFB0);
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v128 = v25;
    v130 = v12;
    v131 = v16;
    v29 = swift_slowAlloc();
    *&v135 = swift_slowAlloc();
    *v29 = 136446466;
    *&v137[0] = v132;
    swift_getMetatypeMetadata();
    v30 = String.init<A>(describing:)();
    v32 = sub_10000668C(v30, v31, &v135);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = [v26 remObjectID];
    if (v33)
    {
      v34 = v33;
      v35 = v4;
      v36 = v3;
      v37 = [v33 description];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v3 = v36;
      v4 = v35;
    }

    else
    {
      v38 = 7104878;
      v40 = 0xE300000000000000;
    }

    v41 = sub_10000668C(v38, v40, &v135);

    *(v29 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s:prepareForDeletion() {savedAttachmentID: %{public}s}", v29, 0x16u);
    swift_arrayDestroy();

    v12 = v130;
    v16 = v131;
  }

  else
  {
  }

  v42 = [v26 storeControllerManagedObjectContext];
  if (v42)
  {
    v43 = v42;
    v44 = [v26 identifier];
    if (v44)
    {
      v45 = v44;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = [v26 account];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 identifier];
        if (v48)
        {
          v49 = v48;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = [v26 sha512Sum];
          if (v50)
          {
            v51 = v50;
            v52 = [v26 fileName];
            if (v52)
            {
              v53 = v52;
              v54 = [v52 pathExtension];

              if (!v54)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v54 = String._bridgeToObjectiveC()();
              }
            }

            else
            {
              v54 = 0;
            }

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [v43 proposePurgingFileAttachmentWithSha512Sum:v51 fileExtension:v54 account:isa];

            v117 = v4[1];
            v117(v12, v3);
            v117(v16, v3);
            return;
          }

          v108 = v16;
          v109 = [v43 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
          v110 = v12;
          v111 = v4;
          v113 = v4 + 2;
          v112 = v4[2];
          v130 = v110;
          v114 = v112;
          (v112)(v129);
          v115 = [v109 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();

          if (v115)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v135 = 0u;
            v136 = 0u;
          }

          v137[0] = v135;
          v137[1] = v136;
          if (*(&v136 + 1))
          {
            sub_1000F5104(&unk_10093D920, &qword_10079B688);
            if (swift_dynamicCast())
            {
              v119 = v134;
LABEL_48:
              *&v137[0] = v119;
              v120 = v133;
              v131 = v108;
              v132 = v114;
              (v114)(v133, v108, v3);
              v128 = v113;
              v121 = v129;
              sub_1003794C4(v129, v120);
              v122 = v111[1];
              v122(v121, v3);
              v123 = [v43 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
              sub_100224A60();
              v124 = Set._bridgeToObjectiveC()().super.isa;

              v125 = v130;
              (v132)(v121, v130, v3);
              [v123 __swift_setObject:v124 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

              swift_unknownObjectRelease();
              v122(v125, v3);
              v122(v131, v3);
              return;
            }
          }

          else
          {
            sub_1000050A4(v137, &qword_100939ED0, &qword_100791B10);
          }

          v119 = _swiftEmptySetSingleton;
          goto LABEL_48;
        }

        v131 = v16;
        v93 = v26;
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = v4;
          v133 = v3;
          v97 = swift_slowAlloc();
          *&v137[0] = swift_slowAlloc();
          *v97 = 136446466;
          v98 = sub_1001424F8();
          v100 = sub_10000668C(v98, v99, v137);

          *(v97 + 4) = v100;
          *(v97 + 12) = 2082;
          v101 = [v93 remObjectID];
          if (v101)
          {
            v102 = v101;
            v103 = [v101 description];

            v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v106 = v105;
          }

          else
          {
            v104 = 7104878;
            v106 = 0xE300000000000000;
          }

          v126 = sub_10000668C(v104, v106, v137);

          *(v97 + 14) = v126;
          _os_log_impl(&_mh_execute_header, v94, v95, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.account.identifier' should not be nil {moid: %{public}s}", v97, 0x16u);
          swift_arrayDestroy();

          (v96[1])(v131, v133);
        }

        else
        {

          (v4[1])(v131, v3);
        }
      }

      else
      {
        v78 = v26;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = v16;
          v82 = v4;
          v133 = v3;
          v83 = swift_slowAlloc();
          *&v135 = swift_slowAlloc();
          *v83 = 136446466;
          *&v137[0] = v132;
          swift_getMetatypeMetadata();
          v84 = String.init<A>(describing:)();
          v86 = sub_10000668C(v84, v85, &v135);

          *(v83 + 4) = v86;
          *(v83 + 12) = 2082;
          v87 = [v78 remObjectID];
          if (v87)
          {
            v88 = v87;
            v89 = [v87 description];

            v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v92 = v91;
          }

          else
          {
            v90 = 7104878;
            v92 = 0xE300000000000000;
          }

          v118 = sub_10000668C(v90, v92, &v135);

          *(v83 + 14) = v118;
          _os_log_impl(&_mh_execute_header, v79, v80, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.account' should not be nil {moid: %{public}s}", v83, 0x16u);
          swift_arrayDestroy();

          (v82[1])(v81, v133);
        }

        else
        {

          (v4[1])(v16, v3);
        }
      }
    }

    else
    {
      v68 = v26;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v135 = v73;
        *v71 = 136446466;
        *&v137[0] = v132;
        swift_getMetatypeMetadata();
        v74 = String.init<A>(describing:)();
        v76 = sub_10000668C(v74, v75, &v135);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2114;
        v77 = [v68 objectID];
        *(v71 + 14) = v77;
        *v72 = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.identifier' should not be nil {moid: %{public}@}", v71, 0x16u);
        sub_1000050A4(v72, &unk_100938E70, &unk_100797230);

        sub_10000607C(v73);
      }
    }
  }

  else
  {
    v55 = v26;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *&v135 = swift_slowAlloc();
      *v58 = 136446466;
      *&v137[0] = v132;
      swift_getMetatypeMetadata();
      v59 = String.init<A>(describing:)();
      v61 = sub_10000668C(v59, v60, &v135);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2082;
      v62 = [v55 remObjectID];
      if (v62)
      {
        v63 = v62;
        v64 = [v62 description];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 7104878;
        v67 = 0xE300000000000000;
      }

      v107 = sub_10000668C(v65, v67, &v135);

      *(v58 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s:prepareForDeletion() '\\REMCDSavedAttachment.storeControllerManagedObjectContext' should not be nil {savedAttachmentID: %{public}s}", v58, 0x16u);
      swift_arrayDestroy();
    }
  }
}

Swift::Int __swiftcall REMCDSavedAttachment.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 reminder];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDSavedAttachment.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008E42F0);
  sub_100034610(&unk_1008E4310);
  return v0;
}

Swift::Bool __swiftcall REMCDSavedAttachment.isConnected(toAccountObject:)(NSMutableDictionary toAccountObject)
{
  v3 = [v1 remObjectID];
  if (v3)
  {
    v4 = v3;
    if ([(objc_class *)toAccountObject.super.super.isa objectForKeyedSubscript:v3])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      if (swift_dynamicCast())
      {

        LOBYTE(v3) = v12 == 1;
        return v3;
      }
    }

    else
    {
      sub_1000050A4(v15, &qword_100939ED0, &qword_100791B10);
    }

    v5 = v4;
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)toAccountObject.super.super.isa setObject:isa forKeyedSubscript:v5];

    v7 = [v1 reminder];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isConnectedToAccountObject:toAccountObject.super.super.isa];

      *&v15[0] = v9;
      type metadata accessor for REMObjectIsConnectedState(0);
      v10 = v5;
      [(objc_class *)toAccountObject.super.super.isa setObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() forKeyedSubscript:v10];

      swift_unknownObjectRelease();
      LOBYTE(v3) = v9;
    }

    else
    {

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

uint64_t sub_1006DAC58(uint64_t a1)
{
  v5 = sub_1006DBA4C(a1);
  if (v2)
  {
    return v1;
  }

  v6 = v5;
  [v5 setFetchBatchSize:100];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v89 = NSManagedObjectContext.fetch<A>(_:)();
  if ([v1 options])
  {
    v8 = sub_1006DBD5C();

    v89 = v8;
  }

  v85 = a1;
  if (qword_100936710 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    v10 = sub_100006654(v9, qword_100950008);
    v93 = v89;
    __chkstk_darwin(v10);
    v84 = v11;
    v12 = sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    v13 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v82[2] = v12;
    v82[3] = v13;
    v82[1] = sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
    v87 = Sequence.map<A>(skippingError:_:)();
    v14 = v89;
    v15 = v89 >> 62;
    if (v89 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v83 = (v89 >> 62);
      v86 = v6;
      v92 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v16 & 0x8000000000000000) == 0)
      {
        v3 = 0;
        v6 = (v89 & 0xC000000000000001);
        v88 = (v89 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          v17 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v6)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v3 >= v88[2])
            {
              goto LABEL_66;
            }

            v18 = *(v89 + 8 * v3 + 32);
          }

          v13 = v18;
          v19 = [v18 account];
          if (!v19)
          {
            goto LABEL_42;
          }

          v1 = v19;
          v93 = 0;
          v20 = [v19 remObjectIDWithError:&v93];
          if (!v20)
          {
            v50 = v93;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            goto LABEL_44;
          }

          v21 = v20;
          v22 = v93;
          sub_1005E37E8(v21);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v23 = v92[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v3;
          if (v17 == v16)
          {
            v24 = v92;
            v6 = v86;
            v14 = v89;
            v15 = v83;
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_71;
    }

    v24 = _swiftEmptyArrayStorage;
LABEL_22:
    v91 = _swiftEmptySetSingleton;
    v92 = _swiftEmptySetSingleton;
    v83 = v24;
    if (!v15)
    {
      v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        break;
      }

      goto LABEL_24;
    }

    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      break;
    }

LABEL_24:
    v13 = 0;
    v88 = v25;
    v89 = v14 & 0xC000000000000001;
    v86 = (v14 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v89)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= v86[2])
        {
          goto LABEL_67;
        }

        v26 = *(v14 + 8 * v13 + 32);
      }

      v3 = v26;
      v27 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v28 = [v26 list];
      if (v28)
      {
        v90 = 0;
        v29 = v28;
        v30 = [v29 remObjectIDWithError:&v90];
        v1 = v90;
        if (!v30)
        {
          goto LABEL_45;
        }

        v31 = v30;
        v32 = v90;
        v33 = sub_1005E37C0(v31);

        sub_100379A60(&v93, v33);
      }

      v34 = [v3 parentReminder];
      if (v34)
      {
        v90 = 0;
        v29 = v34;
        v35 = [v29 remObjectIDWithError:&v90];
        v1 = v90;
        if (!v35)
        {
LABEL_45:
          v51 = v1;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          return v1;
        }

        v36 = v35;
        v37 = v90;
        v38 = sub_1005E2A38(v36);

        sub_100379A48(&v93, v38);
      }

      else
      {
      }

      ++v13;
      if (v27 == v88)
      {

        v39 = v92;
        v40 = v92[2];
        if (v40)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v39 = _swiftEmptySetSingleton;
  v40 = _swiftEmptySetSingleton[2];
  if (!v40)
  {
LABEL_47:

    v41 = _swiftEmptyArrayStorage;
LABEL_48:
    v52 = v91;
    v53 = v91[2];
    if (v53)
    {
      v54 = sub_1003689F4(v91[2], 0);
      v55 = sub_10027DC58(&v93, v54 + 4, v53, v52);
      sub_10002CF84();
      if (v55 == v53)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    v54 = _swiftEmptyArrayStorage;
LABEL_52:
    sub_1005ECAEC(v83, 100, 0, 0, 0);
    v57 = v56;

    sub_1005EC5F0(v41, 100, 0, 0, 0);
    v59 = v58;

    sub_1005EC0F4(v54, 100, 0, 0, 0);
    v88 = v60;
    v14 = v6;

    v86 = v82;
    v93 = v57;
    __chkstk_darwin(v61);
    sub_1000F5104(&qword_10094F630, qword_1007A3430);
    v62 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    sub_10000CB90(&qword_100941B18, &qword_10094F630, qword_1007A3430);
    v85 = v62;
    v89 = Sequence.map<A>(skippingError:_:)();

    v93 = v59;
    __chkstk_darwin(v63);
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    v64 = sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v86 = v64;
    v3 = Sequence.map<A>(skippingError:_:)();

    v93 = v88;
    __chkstk_darwin(v65);
    v6 = v14;
    v66 = Sequence.map<A>(skippingError:_:)();

    v93 = v66;
    v67 = v87;

    sub_1002722C4(v68);
    v88 = v93;
    if (!(v67 >> 62))
    {
      v69 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_54;
    }

LABEL_71:
    v69 = _CocoaArrayWrapper.endIndex.getter();
LABEL_54:
    if (v69)
    {
      v84 = v3;
      v93 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v69 < 0)
      {
        __break(1u);
        return result;
      }

      v70 = 0;
      v71 = v87;
      v72 = v87 & 0xC000000000000001;
      do
      {
        if (v72)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(v71 + 8 * v70 + 32);
        }

        v74 = v73;
        ++v70;
        v75 = [v73 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v76 = v93[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v71 = v87;
      }

      while (v69 != v70);
      v6 = v14;
    }

    else
    {
    }

    v77 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v79 = Array._bridgeToObjectiveC()().super.isa;

    v80 = Array._bridgeToObjectiveC()().super.isa;

    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v81 = Array._bridgeToObjectiveC()().super.isa;

    v1 = [v77 initWithAccountStorages:isa listStorages:v79 reminderStorages:v80 requestedObjectIDs:v81 metadata:0];

    return v1;
  }

LABEL_40:
  v41 = sub_100368A08(v40, 0);
  v42 = sub_10027DC58(&v93, v41 + 4, v40, v39);
  sub_10002CF84();
  if (v42 == v40)
  {
    goto LABEL_48;
  }

  __break(1u);
LABEL_42:

  v43 = objc_opt_self();
  v93 = 0;
  v94 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v93 = 0xD000000000000021;
  v94 = 0x80000001007F7F30;
  v44 = [v13 description];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 125;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v1 = String._bridgeToObjectiveC()();

  [v43 internalErrorWithDebugDescription:v1];

  swift_willThrow();
LABEL_44:

  return v1;
}

id sub_1006DBA4C(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 predicateDescriptor];
  sub_1001CDF58(a1, [v3 options]);
  v7 = v6;

  if (!v2)
  {
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v8 = [objc_allocWithZone(NSFetchRequest) init];
    v9 = [swift_getObjCClassFromMetadata() entity];
    [v8 setEntity:v9];

    [v8 setAffectedStores:0];
    [v8 setPredicate:v7];
    if ([v3 options])
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1007953F0;
      v11 = [objc_opt_self() sortDescriptorSortingByOrderingInListAscending:1];
      sub_10047707C();
      v13 = v12;

      *(v10 + 32) = v13;
    }

    else
    {
      sub_1006DD25C();
    }

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setSortDescriptors:isa];

    if (qword_100936708 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094FFF0);
    v5 = v8;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v5;
      *v19 = v5;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v16, v17, "Created reminder fetchRequest {fetchRequest: %@}", v18, 0xCu);
      sub_1000050A4(v19, &unk_100938E70, &unk_100797230);
    }
  }

  return v5;
}

uint64_t sub_1006DBD5C()
{
  sub_1006DD25C();
  v1 = v0;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1006DDB98;
  *(v4 + 24) = v3;
  v10[4] = sub_1002FF4D4;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1005E2238;
  v10[3] = &unk_1008FCC80;
  v5 = _Block_copy(v10);

  v6 = [(objc_class *)isa sortedArrayWithOptions:16 usingComparator:v5];

  _Block_release(v5);
  LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

  if (isa)
  {
    __break(1u);
  }

  else
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10[0] = v8;
    sub_1000F5104(&qword_10093CB40, &qword_1007A4450);
    sub_10000CB90(&qword_1009418B0, &qword_10093CB40, &qword_1007A4450);
    v9 = Sequence.elements<A>(ofType:)();

    return v9;
  }

  return result;
}

id sub_1006DBF70(uint64_t a1)
{
  v3 = sub_1006DBA4C(a1);
  if (!v2)
  {
    v4 = v3;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    NSManagedObjectContext.fetch<A>(_:)();
    if ([v1 options])
    {
      sub_1006DBD5C();
    }

    if (qword_100936710 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_100006654(v6, qword_100950008);
    __chkstk_darwin(v7);
    sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
    Sequence.map<A>(skippingError:_:)();

    v8 = objc_allocWithZone(REMFetchResult);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v1 = [v8 initWithReminderStorages:isa];
  }

  return v1;
}

id sub_1006DC1D0(uint64_t a1)
{
  result = sub_1006DBA4C(a1);
  if (!v1)
  {
    v3 = result;
    v5[3] = sub_1000F5104(&qword_100939EB8, &unk_1007A35C0);
    v5[0] = v3;
    v4 = v3;
    throwingCast<A>(_:as:failureMessage:)();

    sub_10000607C(v5);
    return v5[5];
  }

  return result;
}

void sub_1006DC274(uint64_t a1)
{
  if (([v1 options] & 2) != 0)
  {
    sub_1006DC488(a1);
    if (!v2)
    {
      v4 = objc_allocWithZone(REMReminderFetchMetadata);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
      sub_10000CE28(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v6 = [v4 initWithSubtaskCounts:isa];

      [objc_allocWithZone(REMFetchResult) initWithMetadata:v6];
    }
  }

  else if (([v1 options] & 4) != 0)
  {
    sub_1006DC880(a1);
    if (!v2)
    {
      v7 = objc_allocWithZone(REMReminderFetchMetadata);
      sub_1000060C8(0, &qword_100950020, REMReminderFetchMetadataDueDateCount_ptr);
      v8 = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v7 initWithDueDateCounts:v8];

      [objc_allocWithZone(REMFetchResult) initWithMetadata:v9];
    }
  }

  else
  {
    [objc_allocWithZone(REMFetchResult) initWithMetadata:0];
  }
}

uint64_t sub_1006DC488(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1006DBA4C(a1);
  if (v1)
  {
    return v2;
  }

  v4 = v3;
  v5 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  isUniquelyReferenced_nonNull_native = NSManagedObjectContext.fetch<A>(_:)();
  v36 = v5;
  v2 = sub_10039096C(_swiftEmptyArrayStorage);
  v40 = v2;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_48:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

  v8 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_49:

    return v2;
  }

LABEL_6:
  v34 = v4;
  v35 = isUniquelyReferenced_nonNull_native;
  v9 = 0;
  v2 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v37 = v8;
  v38 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v4 = v36;
  v39 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  while (1)
  {
    if (v2)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v38 + 16))
      {
        goto LABEL_44;
      }

      v10 = *(isUniquelyReferenced_nonNull_native + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v13 = [v10 remObjectID];
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = v13;
    v15 = [v11 children];
    if (v15)
    {
      break;
    }

LABEL_8:
LABEL_9:
    ++v9;
    if (v12 == v8)
    {

      return v40;
    }
  }

  v16 = v15;
  sub_10000CE28(&qword_100944210, &qword_100939EE0, off_1008D41D0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_32:

    v2 = v39;
    goto LABEL_9;
  }

  v17 = __CocoaSet.count.getter();
LABEL_21:

  v18 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
  if (!v18)
  {
    v28 = sub_100369908(v14);

    goto LABEL_41;
  }

  v19 = v18;
  v20 = v40;
  if ((v40 & 0xC000000000000001) != 0)
  {
    if (v40 < 0)
    {
      v2 = v40;
    }

    else
    {
      v2 = v40 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = __CocoaDictionary.count.getter();
    if (__OFADD__(v21, 1))
    {
      goto LABEL_46;
    }

    v20 = sub_10021E048(v2, v21 + 1);
    v40 = v20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = sub_10002B924(v14);
  v23 = v20[2];
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    goto LABEL_45;
  }

  v2 = v22;
  if (v20[3] >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100376A24();
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = v35;
    if (v2)
    {
      v29 = v20[7];
      v30 = *(v29 + 8 * v4);
      *(v29 + 8 * v4) = v19;
    }

    else
    {
      v20[(v4 >> 6) + 8] |= 1 << v4;
      *(v20[6] + 8 * v4) = v14;
      *(v20[7] + 8 * v4) = v19;

      v31 = v20[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_47;
      }

      v20[2] = v33;
    }

    v40 = v20;
    v4 = v36;
LABEL_41:
    v8 = v37;
    v2 = v39;
    goto LABEL_9;
  }

  sub_100370B68(v25, isUniquelyReferenced_nonNull_native);
  v26 = sub_10002B924(v14);
  if ((v2 & 1) == (v27 & 1))
  {
    v4 = v26;
    goto LABEL_36;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006DC880(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v89 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = (&v77 - v6);
  v94 = type metadata accessor for Date();
  v92 = *(v94 - 8);
  v7 = *(v92 + 8);
  __chkstk_darwin(v94);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = type metadata accessor for Calendar();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v93;
  v22 = sub_1006DBA4C(a1);
  if (v21)
  {
    return;
  }

  v23 = v22;
  v90 = v15;
  v91 = v12;
  v87 = v9;
  v24 = v92;
  v80 = v17;
  v81 = v16;
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v25 = NSManagedObjectContext.fetch<A>(_:)();
  v82 = 0;
  v26 = v25;
  v78 = v23;
  v27 = v20;
  static Calendar.current.getter();
  v95 = _swiftEmptyArrayStorage;
  if (v26 >> 62)
  {
LABEL_43:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v24;
  v30 = v27;
  v31 = v87;
  v32 = v89;
  if (!v28)
  {

    (*(v80 + 8))(v27, v81);
    return;
  }

  v85 = v28;
  v86 = v26 & 0xC000000000000001;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_46;
    }

    v33 = *(v26 + 32);
  }

  v34 = v33;
  v35 = [v33 dueDate];

  if (v35)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v88;
  v38 = v94;
  (*(v29 + 56))(v32, v36, 1, v94);
  sub_10012F7FC(v32, v37);
  if ((*(v29 + 48))(v37, 1, v38) == 1)
  {

    sub_1000050A4(v37, &unk_100938850, qword_100795AE0);
    if (qword_100936708 == -1)
    {
LABEL_14:
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_10094FFF0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      v42 = os_log_type_enabled(v40, v41);
      v44 = v80;
      v43 = v81;
      if (v42)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Due date sorting missing due date", v45, 2u);
      }

      v46 = objc_opt_self();
      v47 = String._bridgeToObjectiveC()();
      [v46 internalErrorWithDebugDescription:v47];

      swift_willThrow();
      (*(v44 + 8))(v27, v43);
      return;
    }

LABEL_46:
    swift_once();
    goto LABEL_14;
  }

  v27 = (v29 + 32);
  v48 = *(v29 + 32);
  v49 = v90;
  v48(v90, v37, v38);
  Calendar.startOfDay(for:)();
  v51 = *(v29 + 8);
  v50 = v29 + 8;
  v92 = v51;
  v51(v49, v38);
  v88 = v48;
  v89 = v27;
  v48(v49, v91, v38);
  v24 = 0;
  v52 = 0;
  v77 = v26 & 0xFFFFFFFFFFFFFF8;
  v79 = _swiftEmptyArrayStorage;
  v83 = v26;
  v84 = v30;
  while (1)
  {
    if (v86)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v77 + 16))
      {
        goto LABEL_42;
      }

      v56 = *(v26 + 8 * v24 + 32);
    }

    v57 = v56;
    v27 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v58 = [v56 dueDate];
    if (!v58)
    {
      break;
    }

    v59 = v58;
    v93 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v50;
    v60 = v91;
    Calendar.startOfDay(for:)();
    v61 = v94;
    v62 = v92;
    v92(v31, v94);
    v88(v31, v60, v61);
    sub_1002D81D8();
    v63 = v90;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v62(v31, v61);

      if (__OFADD__(v52++, 1))
      {
        goto LABEL_41;
      }

      v50 = v26;
    }

    else
    {
      v53 = objc_allocWithZone(REMReminderFetchMetadataDueDateCount);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v53 initWithDueDate:isa count:v52];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v55 = v94;
      v50 = v26;
      v92(v63, v94);
      v79 = v95;
      v31 = v87;
      v88(v63, v87, v55);
      v52 = 1;
    }

    ++v24;
    v30 = v84;
    v26 = v83;
    if (v27 == v85)
    {

      v73 = objc_allocWithZone(REMReminderFetchMetadataDueDateCount);
      v74 = v90;
      v75 = Date._bridgeToObjectiveC()().super.isa;
      [v73 initWithDueDate:v75 count:v52];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v76 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v92(v74, v94);
      (*(v80 + 8))(v30, v81);
      return;
    }
  }

  if (qword_100936708 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_100006654(v65, qword_10094FFF0);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v90;
  if (v68)
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v66, v67, "Due date sorting missing due date", v70, 2u);
  }

  v71 = objc_opt_self();
  v72 = String._bridgeToObjectiveC()();
  [v71 internalErrorWithDebugDescription:v72];

  swift_willThrow();
  v92(v69, v94);
  (*(v80 + 8))(v30, v81);
}

void sub_1006DD25C()
{
  v1 = v0;
  v2 = [v0 sortDescriptors];
  sub_1000060C8(0, &qword_100948748, REMReminderSortDescriptor_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

LABEL_17:
    if ([v1 options])
    {
      return;
    }

    v1 = [objc_opt_self() sortDescriptorSortingByOrderingInListAscending:1];
    sub_10047707C();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return;
    }

LABEL_22:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_19;
  }

LABEL_15:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v5 = 0;
  v13 = v1;
  v1 = &selRef_isEmpty;
  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = [v7 type];
    if (v9 >= 5)
    {
      break;
    }

    v10 = *(&off_1008FCCA8 + v9);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    [v8 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v11 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    ++v5;
    if (v6 == v4)
    {

      v1 = v13;
      goto LABEL_17;
    }
  }

  if (qword_1009361E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100947FE8);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_1001F67C8(_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2);
  __break(1u);
}

uint64_t sub_1006DD58C(void *a1, void *a2, unint64_t a3)
{
  v5 = [a1 parentReminder];
  if (v5 || (v5 = [a2 parentReminder]) != 0)
  {

    v34 = [a1 parentReminder];
    if (!v34)
    {
      v34 = a1;
    }

    v6 = [a2 parentReminder];
    if (!v6)
    {
      v6 = a2;
    }

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v33 = a3;
    if (static NSObject.== infix(_:_:)())
    {
      v7 = [a1 parentReminder];
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        v10 = a2;
        v11 = static NSObject.== infix(_:_:)();

        v6 = v9;
        a3 = v33;

        if (v11)
        {
          v12 = 1;
LABEL_11:

          return v12;
        }
      }

      v23 = [a2 parentReminder];
      if (v23)
      {
        v24 = v23;
        v25 = v6;
        v26 = a1;
        v27 = static NSObject.== infix(_:_:)();

        a3 = v33;
        if (v27)
        {
          return -1;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
      if (a3 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v16 = a3 & 0xC000000000000001;
      while (v14 != v15)
      {
        if (v16)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_43;
          }

          v17 = *(a3 + 8 * v15 + 32);
        }

        v18 = v17;
        if (__OFADD__(v15, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v19 = a2;
        v20 = v34;
        v21 = v6;
        v22 = v6;
        v12 = [v18 compareObject:v20 toObject:v22];

        a2 = v19;
        v6 = v21;
        a3 = v33;

        ++v15;
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_27:
  v6 = (a3 & 0xFFFFFFFFFFFFFF8);
  if (a3 >> 62)
  {
LABEL_44:
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v28 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= v6[2])
      {
        goto LABEL_41;
      }

      v30 = *(a3 + 8 * i + 32);
    }

    v31 = v30;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v12 = [v30 compareObject:a1 toObject:a2];

    if (v12)
    {
      return v12;
    }
  }

  return 0;
}

uint64_t sub_1006DD8CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100005EF0(a1, v12);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (swift_dynamicCast())
  {
    sub_100005EF0(a2, v12);
    if (swift_dynamicCast())
    {
      v5 = v11;
      v6 = sub_1006DD58C(v11, v11, a3);

      goto LABEL_10;
    }
  }

  if (qword_100936708 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_10094FFF0);
  v5 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v8, "Given cdReminders should not contain any element that is not a REMCDReminder.", v9, 2u);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void sub_1006DDAC8(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1006DBA4C(a1);
  if (!v2)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    [objc_allocWithZone(REMFetchResult) initWithCount:NSManagedObjectContext.count<A>(for:)()];
  }
}

unint64_t sub_1006DDBA0(void (**a1)(char *))
{
  v97 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v92 - v7;
  __chkstk_darwin(v9);
  v93 = &v92 - v10;
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  v14 = type metadata accessor for REMSearchCriterion();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v95 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v99 = &v92 - v19;
  __chkstk_darwin(v20);
  v98 = &v92 - v21;
  __chkstk_darwin(v22);
  v94 = &v92 - v23;
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = (&v92 - v26);
  v28 = [v2 title];
  v100 = v14;
  v102 = v2;
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    *v27 = v30;
    v27[1] = v32;
    v34 = enum case for REMStringMatchingStyle.prefix(_:);
    v35 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v35 - 8) + 104))(v27 + v33, v34, v35);
    (*(v15 + 104))(v27, enum case for REMSearchCriterion.textualField(_:), v14);
    v36 = sub_100365AEC(0, 1, 1, _swiftEmptyArrayStorage);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_100365AEC(v37 > 1, v38 + 1, 1, v36);
    }

    v39 = v100;
    v40 = v101;
    v36[2] = v38 + 1;
    (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v38, v27, v39);
    v2 = v102;
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
    v40 = v101;
  }

  v41 = [v2 dueAfter];
  v42 = &selRef_attachmentRepresentationAndReturnError_;
  if (v41)
  {
    v43 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = type metadata accessor for Date();
    (*(*(v44 - 8) + 56))(v13, 0, 1, v44);
  }

  else
  {
    v45 = type metadata accessor for Date();
    v46 = *(*(v45 - 8) + 56);
    v46(v13, 1, 1, v45);
    sub_1001AAD5C(v13);
    v47 = [v2 dueBefore];
    if (!v47)
    {
      v91 = v93;
      v46(v93, 1, 1, v45);
      sub_1001AAD5C(v91);
      v61 = v97;
      v59 = v100;
      v62 = v102;
      goto LABEL_20;
    }

    v13 = v93;
    v48 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46(v13, 0, 1, v45);
    v2 = v102;
    v40 = v101;
  }

  sub_1001AAD5C(v13);
  v49 = [v2 dueAfter];
  if (v49)
  {
    v50 = v49;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = type metadata accessor for Date();
  v53 = *(*(v52 - 8) + 56);
  v54 = 1;
  v53(v8, v51, 1, v52);
  v55 = v8;
  v56 = v94;
  sub_10012F7FC(v55, v94);
  v57 = [v102 dueBefore];
  if (v57)
  {
    v58 = v57;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = v101;
    v54 = 0;
  }

  v59 = v100;
  v53(v40, v54, 1, v52);
  v60 = sub_1000F5104(&qword_100938C18, &qword_1007957A0);
  sub_10012F7FC(v40, v56 + *(v60 + 48));
  (*(v15 + 104))(v56, enum case for REMSearchCriterion.dueDate(_:), v59);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_100365AEC(0, v36[2] + 1, 1, v36);
  }

  v61 = v97;
  v62 = v102;
  v42 = v36[2];
  v63 = v36[3];
  if (v42 >= v63 >> 1)
  {
    v36 = sub_100365AEC(v63 > 1, v42 + 1, 1, v36);
  }

  v36[2] = v42 + 1;
  (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v42, v56, v59);
LABEL_20:
  v64 = [v62 completed];
  v65 = v95;
  if (v64)
  {
    v66 = v64;
    v67 = [v64 BOOLValue];
    v68 = v98;
    *v98 = v67;
    (*(v15 + 104))(v68, enum case for REMSearchCriterion.isCompleted(_:), v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100365AEC(0, v36[2] + 1, 1, v36);
    }

    v70 = v36[2];
    v69 = v36[3];
    v42 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      v36 = sub_100365AEC(v69 > 1, v70 + 1, 1, v36);
    }

    v36[2] = v42;
    (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v70, v98, v59);
    v62 = v102;
  }

  v71 = [v62 hasLocation];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 BOOLValue];
    v74 = v99;
    *v99 = v73;
    (*(v15 + 104))(v74, enum case for REMSearchCriterion.hasLocation(_:), v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100365AEC(0, v36[2] + 1, 1, v36);
    }

    v76 = v36[2];
    v75 = v36[3];
    v42 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v36 = sub_100365AEC(v75 > 1, v76 + 1, 1, v36);
    }

    v36[2] = v42;
    (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v76, v99, v59);
  }

  v77 = [v62 location];
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v82 = *(sub_1000F5104(&qword_100945098, qword_1007B11A0) + 48);
    *v65 = v79;
    v65[1] = v81;
    v83 = enum case for REMStringMatchingStyle.prefix(_:);
    v84 = type metadata accessor for REMStringMatchingStyle();
    (*(*(v84 - 8) + 104))(v65 + v82, v83, v84);
    (*(v15 + 104))(v65, enum case for REMSearchCriterion.location(_:), v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100365AEC(0, v36[2] + 1, 1, v36);
    }

    v42 = v36[2];
    v85 = v36[3];
    if (v42 >= v85 >> 1)
    {
      v36 = sub_100365AEC(v85 > 1, v42 + 1, 1, v36);
    }

    v36[2] = v42 + 1;
    (*(v15 + 32))(v36 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v42, v65, v59);
  }

  v86 = v96;
  sub_1003C93D0(v36, 0, 0x33uLL, v61);
  if (!v86)
  {
    v88 = v87;

    v89 = [objc_opt_self() defaultFetchOptions];
    v42 = sub_10048A0EC(v88, v89, v61);
  }

  return v42;
}

uint64_t sub_1006DE628()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950028);
  v1 = sub_100006654(v0, qword_100950028);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NLLanguage sub_1006DE6F0()
{
  sub_1000F5104(&qword_10093EC30, &unk_1007B60C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100792CE0;
  *(v0 + 32) = NLLanguageSimplifiedChinese;
  *(v0 + 40) = NLLanguageTraditionalChinese;
  *(v0 + 48) = NLLanguageJapanese;
  *(v0 + 56) = NLLanguageKorean;
  qword_1009752A8 = v0;
  v1 = NLLanguageSimplifiedChinese;
  v2 = NLLanguageTraditionalChinese;
  v3 = NLLanguageJapanese;

  return NLLanguageKorean;
}

uint64_t sub_1006DE7A4()
{
  v0 = [objc_allocWithZone(NLLanguageRecognizer) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 processString:v1];

  v2 = [v0 dominantLanguage];
  if (v2)
  {
    v3 = v2;
    if (qword_100936718 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100950028);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = sub_10000668C(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "RDRecipeClassifier: dominantLanguage identified from text: %{public}s", v8, 0xCu);
      sub_10000607C(v9);
    }

    if (qword_100936720 != -1)
    {
      v13 = swift_once();
    }

    v22 = v5;
    __chkstk_darwin(v13);
    v21[2] = &v22;
    v15 = sub_1003377DC(sub_10025C570, v21, v14);
  }

  else
  {
    if (qword_100936718 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006654(v16, qword_100950028);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDRecipeClassifier: no dominantLanguage identified from text", v19, 2u);
    }

    v15 = 0;
  }

  return v15 & 1;
}

id sub_1006DEAC0(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() modelWithMLModel:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

double sub_1006DEB84()
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v7 = sub_1006DE7A4();
  v9 = v8;
  v43 = v7;
  if (v7)
  {
    type metadata accessor for Recipe_CJK();
    v10 = [objc_allocWithZone(MLModelConfiguration) init];
    sub_10075F438(v10);
    if (v0)
    {
LABEL_3:

LABEL_4:
      (*(v3 + 8))(v6, v2);
      return v1;
    }
  }

  else
  {
    type metadata accessor for Recipe();
    v10 = [objc_allocWithZone(MLModelConfiguration) init];
    sub_10075F98C(v10);
    if (v0)
    {
      goto LABEL_3;
    }
  }

  v12 = v11;

  v13 = *(v12 + 16);

  sub_1006DF060();
  v14 = v13;
  v16 = sub_1006DEAC0(v14);
  v40 = v14;

  v41 = v16;
  v17 = NLModel.predictedLabelHypotheses(for:maximumCount:)();
  static DispatchTime.secondsElapsed(since:)();
  v1 = v18;
  if (qword_100936718 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100950028);
  v20 = v9;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v38 = v20;

  v39 = v22;
  v42 = v21;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v23 = 136446722;
    v24 = Dictionary.description.getter();
    v37 = v17;
    v26 = sub_10000668C(v24, v25, &v44);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v1;
    *(v23 + 22) = 2080;
    if (v43)
    {
      v27 = 0xD00000000000002CLL;
    }

    else
    {
      v27 = 0xD000000000000024;
    }

    if (v43)
    {
      v28 = " missing due date";
    }

    else
    {
      v28 = "orean v1 Trained: 2025-06-02";
    }

    v29 = sub_10000668C(v27, v28 | 0x8000000000000000, &v44);
    v17 = v37;

    *(v23 + 24) = v29;
    v30 = v42;
    _os_log_impl(&_mh_execute_header, v42, v39, "RDRecipeClassifier: confidenceScore: %{public}s, in %f seconds, classifierType: %s", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = sub_10031EBC8(v17);
  v33 = v32;
  v35 = v34;

  v36 = v40;
  if (!v33)
  {
    sub_1006DF0AC();
    swift_allocError();
    swift_willThrow();

    goto LABEL_4;
  }

  v1 = v35;
  if (v31 != 49 || v33 != 0xE100000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v3 + 8))(v6, v2);

  return v1;
}

unint64_t sub_1006DF060()
{
  result = qword_100950040;
  if (!qword_100950040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950040);
  }

  return result;
}

unint64_t sub_1006DF0AC()
{
  result = qword_100950048;
  if (!qword_100950048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950048);
  }

  return result;
}

unint64_t sub_1006DF114()
{
  result = qword_100950050;
  if (!qword_100950050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950050);
  }

  return result;
}

void sub_1006DF168(uint64_t a1@<X1>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v35 = a3;
  v3 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v31 - v5;
  v7 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for REMRemindersListDataView.ListSectionsModel();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for REMRemindersListDataView.Diff();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  v19 = REMRemindersListDataView.PublicTemplateInvocation.Parameters.publicTemplateObjectID.getter();
  v20 = v38;
  v21 = sub_1006DF640(v19, v36, v37);
  if (v20)
  {
  }

  else
  {
    v31[1] = v22;
    v32 = v21;
    v33 = v19;
    v34 = v15;
    v36 = 0;
    v37 = v11;
    v38 = v9;
    if (_swiftEmptyArrayStorage >> 62)
    {
      v23 = v18;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
        v31[0] = v29;
      }

      else
      {
        v31[0] = _swiftEmptySetSingleton;
      }

      v24 = v6;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v34;
      if (v30)
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1003915C4(_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v23 = v18;
      v24 = v6;
      v25 = v34;
    }

    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    v26 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    REMRemindersListDataView.SectionsModel.init(sections:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v27 = v32;
    REMList.codable.getter();
    REMRemindersListDataView.ListSectionsModel.init(sectionsModel:list:)();
    v28 = v37;
    (*(v12 + 16))(v25, v23, v37);
    sub_1006DF90C(&qword_10094DB28, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    sub_1006DF90C(&qword_10094DB30, &type metadata accessor for REMRemindersListDataView.ListSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();

    (*(v12 + 8))(v23, v28);
  }
}

uint64_t sub_1006DF5E8(uint64_t a1)
{
  result = sub_1006DF90C(&qword_100950078, &type metadata accessor for REMRemindersListDataView.PublicTemplateInvocation);
  *(a1 + 8) = result;
  return result;
}

void *sub_1006DF640(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for RDPublicTemplate();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  *&v14 = __chkstk_darwin(v11).n128_u64[0];
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  v32 = 0;
  v17 = [a3 fetchPrimaryActiveCloudKitAccountWithError:{&v32, v14}];
  if (v17)
  {
    v18 = v17;
    v19 = v32;
    v20 = sub_100415C08();
    v21 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = sub_100415DE4(v16, a2, v20);
    if (v3)
    {

      v23 = v12[1];
      ++v12;
      v23(v16, v11);
    }

    else
    {
      v25 = v22;

      (v12[1])(v16, v11);
      v27 = [v18 objectID];
      v28 = sub_10013BE04(v27);

      v29 = objc_allocWithZone(REMList);
      v12 = [v29 initWithStore:v31 account:v18 storage:v28];

      sub_10013CB64();
      sub_1003B52F4(v10);
    }
  }

  else
  {
    v24 = v32;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v12;
}

uint64_t sub_1006DF90C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006DF954()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950080);
  v1 = sub_100006654(v0, qword_100950080);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMCDAlarmTrigger.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t static REMCDAlarmTrigger.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v8 = CKRecord.subscript.getter();
  if (v8)
  {
    v43 = v8;
    sub_1000F5104(&qword_100938860, &unk_1007A4830);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;

      v11 = sub_1006E284C(v42);
      if (v11 == 4)
      {
        if (qword_100936728 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100006654(v12, qword_100950080);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v41 = v4;
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v42._countAndFlagsBits = v16;
          *v15 = 136446210;
          v17 = sub_10000668C(countAndFlagsBits, object, &v42._countAndFlagsBits);

          *(v15 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v13, v14, "newCloudObject: Unknown alarm trigger type {type: %{public}s}", v15, 0xCu);
          sub_10000607C(v16);

          v4 = v41;
        }

        else
        {
        }
      }

      else
      {

        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v18 = &qword_10094F688;
            v19 = off_1008D4140;
          }

          else
          {
            v18 = &qword_100940370;
            v19 = off_1008D4150;
          }
        }

        else if (v11)
        {
          v18 = &qword_100940360;
          v19 = off_1008D4138;
        }

        else
        {
          v18 = &qword_100940350;
          v19 = off_1008D4130;
        }

        sub_1000060C8(0, v18, v19);
      }
    }
  }

  v20 = [a1 recordID];
  v21 = [v20 recordName];

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v21 context:a3 account:a2];

  if (v22)
  {
    v23 = [a2 ckIdentifier];
    if (v23)
    {
      v24 = v23;
      [v22 mergeDataFromRecord:a1 accountID:v23];

      v25 = v22;
      [v25 setCkServerRecord:a1];
      [v25 setInCloud:1];

      [v25 updateParentReferenceIfNecessary];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_100936728 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006654(v27, qword_100950080);
      v28 = a2;
      v25 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v29))
      {
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v30 = 136446466;
        v42._countAndFlagsBits = v4;
        swift_getMetatypeMetadata();
        v31 = String.init<A>(describing:)();
        v33 = sub_10000668C(v31, v32, &v43);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2082;
        v34 = [v28 remObjectID];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 description];

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
        }

        else
        {
          v39 = 0xE300000000000000;
          v37 = 7104878;
        }

        v40 = sub_10000668C(v37, v39, &v43);

        *(v30 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v25, v29, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v30, 0x16u);
        swift_arrayDestroy();
      }
    }
  }

  return 0;
}

Swift::String __swiftcall REMCDAlarmTrigger.recordType()()
{
  v0 = 0x6972546D72616C41;
  v1 = 0xEC00000072656767;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void sub_1006E0208()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    isa = 0;
    if (v15 >> 60 != 15)
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100031A14(v14, v15);
    }

    [v2 setDateComponentsData:isa];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000668C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is date but this is not a date trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006E047C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v28 = v1;
    v5 = 0;
    while (1)
    {
      v7 = *(&off_1008E43D0 + v5 + 32);
      if (v7 <= 4)
      {
        if (*(&off_1008E43D0 + v5 + 32) <= 1u)
        {
          if (*(&off_1008E43D0 + v5 + 32))
          {
            v17 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            if (v31)
            {
              v6.super.isa = String._bridgeToObjectiveC()();
            }

            else
            {
              v6.super.isa = 0;
            }

            [v4 setContactLabel:v6.super.isa];
          }

          else
          {
            v10 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            if (v31)
            {
              v6.super.isa = String._bridgeToObjectiveC()();
            }

            else
            {
              v6.super.isa = 0;
            }

            [v4 setAddress:v6.super.isa];
          }
        }

        else
        {
          if (v7 == 2)
          {
            v11 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            v12 = *&v30;
            if (v31)
            {
              v12 = 0.0;
            }

            [v4 setLatitude:v12];
            goto LABEL_6;
          }

          if (v7 != 3)
          {
            v15 = [a1 encryptedValues];
            swift_getObjectType();
            CKRecordKeyValueSetting.subscript.getter();
            swift_unknownObjectRelease();
            v16 = *&v30;
            if (v31)
            {
              v16 = 0.0;
            }

            [v4 setLongitude:v16];
            goto LABEL_6;
          }

          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          CKRecordKeyValueSetting.subscript.getter();
          if (v31)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setLocationUID:v6.super.isa];
        }
      }

      else if (*(&off_1008E43D0 + v5 + 32) > 7u)
      {
        if (v7 == 8)
        {
          v14 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v31)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setReferenceFrameString:v6.super.isa];
        }

        else if (v7 == 9)
        {
          v9 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v31)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setRouting:v6.super.isa];
        }

        else
        {
          v19 = [a1 encryptedValues];
          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.getter();
          swift_unknownObjectRelease();
          if (v31)
          {
            v6.super.isa = String._bridgeToObjectiveC()();
          }

          else
          {
            v6.super.isa = 0;
          }

          [v4 setTitle:v6.super.isa];
        }
      }

      else
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.getter();
            if (BYTE2(v30))
            {
              v8 = 0;
            }

            else
            {
              v8 = v30;
            }

            [v4 setProximity:v8];
          }

          else
          {
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.getter();
            v18 = *&v30;
            if (v31)
            {
              v18 = 0.0;
            }

            [v4 setRadius:v18];
          }

          goto LABEL_6;
        }

        v13 = [a1 encryptedValues];
        swift_getObjectType();
        CKRecordKeyValueSetting.subscript.getter();
        swift_unknownObjectRelease();
        if (v31 >> 60 == 15)
        {
          v6.super.isa = 0;
        }

        else
        {
          v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_100031A14(v30, v31);
        }

        [v4 setMapKitHandle:v6.super.isa];
      }

LABEL_6:
      if (++v5 == 11)
      {

        return;
      }
    }
  }

  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100950080);
  v21 = v1;
  oslog = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    ObjectType = swift_getObjectType();
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v25 = String.init<A>(describing:)();
    v27 = sub_10000668C(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, oslog, v22, "Record.type is location but this is not a location trigger {type: %s}", v23, 0xCu);
    sub_10000607C(v24);
  }

  else
  {
  }
}

void sub_1006E0C94()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    v4 = *&v14;
    if (v15)
    {
      v4 = 0.0;
    }

    [v2 setTimeInterval:v4];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      ObjectType = swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000668C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is time interval but this is not a time interval trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

void sub_1006E0EE4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    CKRecordKeyValueSetting.subscript.getter();
    if (BYTE2(v14))
    {
      v4 = 0;
    }

    else
    {
      v4 = v14;
    }

    [v2 setEvent:v4];
  }

  else
  {
    if (qword_100936728 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_100950080);
    v6 = v0;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getObjectType();
      sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000668C(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Record.type is vehicle but this is not a vehicle trigger {type: %s}", v8, 0xCu);
      sub_10000607C(v9);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall REMCDAlarmTrigger.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  v5 = String._bridgeToObjectiveC()();
  v25.receiver = v3;
  v25.super_class = REMCDAlarmTrigger;
  objc_msgSendSuper2(&v25, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v3 ckIdentifierFromRecordName:v7];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [v3 setCkIdentifier:v8];

  v9 = CKRecord.subscript.getter();
  if (v9 && (v24 = v9, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
  {
    countAndFlagsBits = v23._countAndFlagsBits;
    object = v23._object;

    v12 = sub_1006E284C(v23);
    if (v12 != 4)
    {

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          sub_1006E0C94();
        }

        else
        {
          sub_1006E0EE4();
        }
      }

      else if (v12)
      {
        sub_1006E047C(from.super.isa);
      }

      else
      {
        sub_1006E0208();
      }

      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v20 = 0;
      }

      v21 = sub_100128F0C(v20);

      if (v21)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (!v22)
        {
        }
      }

      else
      {
        v22 = 0;
      }

      [v3 setAlarm:v22];

      return;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100950080);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23._countAndFlagsBits = v17;
    *v16 = 136315138;
    if (object)
    {
      v18 = countAndFlagsBits;
    }

    else
    {
      v18 = 7104878;
    }

    if (!object)
    {
      object = 0xE300000000000000;
    }

    v19 = sub_10000668C(v18, object, &v23._countAndFlagsBits);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "mergeData: Unknown trigger type {type: %s}", v16, 0xCu);
    sub_10000607C(v17);
  }

  else
  {
  }
}

CKRecord_optional __swiftcall REMCDAlarmTrigger.newlyCreatedRecord()()
{
  v1 = v0;
  v43.super_class = REMCDAlarmTrigger;
  v3 = objc_msgSendSuper2(&v43, "newlyCreatedRecord");
  if (v3)
  {
    v4 = [v0 alarm];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 recordID];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v6];

    CKRecord.subscript.setter();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v10 = v1;
      CKRecordKeyValueSetting.subscript.setter();
      v11 = [v9 dateComponentsData];
      if (v11)
      {
        v12 = v11;
        static Data._unconditionallyBridgeFromObjectiveC(_:)();
      }

LABEL_11:
      CKRecordKeyValueSetting.subscript.setter();

      goto LABEL_27;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v10 = v1;
        CKRecordKeyValueSetting.subscript.setter();
        [v21 timeInterval];
      }

      else
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (!v40)
        {
          goto LABEL_27;
        }

        v41 = v40;
        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        v10 = v1;
        CKRecordKeyValueSetting.subscript.setter();
        [v41 event];
      }

      goto LABEL_11;
    }

    v14 = v13;
    sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
    v42 = v1;
    CKRecordKeyValueSetting.subscript.setter();
    v15 = [v3 encryptedValues];
    swift_getObjectType();
    [v14 latitude];
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v16 = [v3 encryptedValues];
    swift_getObjectType();
    [v14 longitude];
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    [v14 proximity];
    CKRecordKeyValueSetting.subscript.setter();
    [v14 radius];
    CKRecordKeyValueSetting.subscript.setter();
    v17 = [v3 encryptedValues];
    v18 = [v14 title];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v22 = [v14 locationUID];
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    CKRecordKeyValueSetting.subscript.setter();
    v24 = [v3 encryptedValues];
    v25 = [v14 address];
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v27 = [v3 encryptedValues];
    v28 = [v14 routing];
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v30 = [v3 encryptedValues];
    v31 = [v14 referenceFrameString];
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v33 = [v3 encryptedValues];
    v34 = [v14 contactLabel];
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v36 = [v3 encryptedValues];
    v37 = [v14 mapKitHandle];
    if (v37)
    {
      v38 = v37;
      static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.setter();

    swift_unknownObjectRelease();
  }

LABEL_27:
  v39 = v3;
  result.value.super.isa = v39;
  result.is_nil = v2;
  return result;
}

void __swiftcall REMCDAlarmTrigger.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 alarm];

  v3 = v2;
}

Swift::Void __swiftcall REMCDAlarmTrigger.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
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
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
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

Swift::Void __swiftcall REMCDAlarmTrigger.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_100950080);
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
  v16 = [v4 alarm];
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
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for alarmTrigger {alarmTriggerID: %{public}s, alarmID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v24 = [v4 alarm];
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
        _os_log_impl(&_mh_execute_header, v27, v28, "Alarm is marked for deletion but alarm trigger is not {alarmTriggerID: %{public}s, alarmID: %{public}s}", v29, 0x16u);
        swift_arrayDestroy();
      }

      [v25 markForDeletion];
    }

    [v46 forcePushToCloud];
  }
}

unint64_t sub_1006E284C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E4350, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _sSo17REMCDAlarmTriggerC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
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
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo17REMCDAlarmTriggerC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100936728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100950080);
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
    sub_1000F5104(&unk_1009500A0, &unk_1007B61C0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000668C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t sub_1006E2B90()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009500B0);
  v1 = sub_100006654(v0, qword_1009500B0);
  if (qword_100936478 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009750B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006E2C58()
{
  if (qword_100935D38 != -1)
  {
    swift_once();
  }

  v0 = qword_100974CD0;
  v1 = type metadata accessor for RDAsyncAnalytics();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem] = 0;
  v3 = v0;
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_fetchCounts] = sub_10038F94C(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_saveCounts] = sub_10038F94C(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue] = v3;
  v2[OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_enabled] = 1;
  v5.receiver = v2;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  qword_1009500C8 = result;
  return result;
}

uint64_t sub_1006E2D48(uint64_t a1)
{
  v2 = type metadata accessor for REMAnalyticsEvent();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v6[2] = 0;
  v6[3] = 0;
  v7 = v3[13];
  v61 = enum case for REMAnalyticsEvent.storeControllerReadWrite(_:);
  v59 = v7;
  v60 = v3 + 13;
  v7(v6);
  v8 = REMAnalyticsEvent.id.getter();
  v10 = v9;
  v11 = v3[1];
  v62 = v6;
  v63 = v3 + 1;
  v64 = v2;
  v58 = v11;
  v11(v6, v2);
  String.utf8CString.getter();
  v68 = os_transaction_create();

  if (qword_100936730 != -1)
  {
LABEL_24:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100006654(v12, qword_1009500B0);

  v66 = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v67 = v10;
  v65 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v72 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10000668C(v8, v10, &v72);
    _os_log_impl(&_mh_execute_header, v14, v15, "os_transaction INIT {name: %s}", v17, 0xCu);
    sub_10000607C(v18);
  }

  v19 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_fetchCounts;
  swift_beginAccess();
  v69 = v19;
  v20 = *(a1 + v19);

  v22 = sub_1001A6DC0(v21);
  v23 = OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_saveCounts;
  swift_beginAccess();
  v24 = *(a1 + v23);

  v26 = sub_1007256B0(v25, v22);
  v10 = 0;
  v28 = v26 + 56;
  v27 = *(v26 + 56);
  v70 = v26;
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v32 = (v29 + 63) >> 6;
  if ((v30 & v27) != 0)
  {
    do
    {
LABEL_13:
      while (1)
      {
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v35 = (*(v70 + 48) + ((v10 << 10) | (16 * v34)));
        v37 = *v35;
        v36 = v35[1];
        swift_beginAccess();
        v38 = *(a1 + v23);
        v8 = *(v38 + 16);

        if (v8)
        {
          v39 = sub_100005F4C(v37, v36);
          if (v40)
          {
            v8 = *(*(v38 + 56) + 8 * v39);
            swift_endAccess();
            v41 = v69;
            swift_beginAccess();
            v42 = *(a1 + v41);
            if (*(v42 + 16))
            {
              v43 = sub_100005F4C(v37, v36);
              if (v44)
              {
                break;
              }
            }
          }
        }

        swift_endAccess();

        if (!v31)
        {
          goto LABEL_9;
        }
      }

      v57 = *(*(v42 + 56) + 8 * v43);
      swift_endAccess();
      type metadata accessor for Analytics();
      v45 = v8;
      v8 = v62;
      *v62 = v37;
      v8[1] = v36;
      v8[2] = v45;
      v8[3] = v57;
      v46 = v64;
      v59(v8, v61, v64);
      static Analytics.postEvent(_:)();
      v58(v8, v46);
    }

    while (v31);
  }

  while (1)
  {
LABEL_9:
    v33 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v33 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v33);
    ++v10;
    if (v31)
    {
      v10 = v33;
      goto LABEL_13;
    }
  }

  v47 = *(a1 + v23);
  *(a1 + v23) = &_swiftEmptyDictionarySingleton;

  v48 = *(a1 + v69);
  *(a1 + v69) = &_swiftEmptyDictionarySingleton;

  v49 = *(a1 + OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem);
  *(a1 + OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_q_postEventWorkItem) = 0;

  v50 = v67;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v71 = v54;
    *v53 = 136315138;
    v55 = sub_10000668C(v65, v50, &v71);

    *(v53 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v51, v52, "os_transaction RELEASE {name: %s}", v53, 0xCu);
    sub_10000607C(v54);
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1006E32E8(_OWORD *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC7remindd16RDAsyncAnalytics_queue);
  v14 = swift_allocObject();
  v15 = a1[3];
  v14[3] = a1[2];
  v14[4] = v15;
  v16 = a1[5];
  v14[5] = a1[4];
  v14[6] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  aBlock[4] = sub_1006E3C64;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008FCE98;
  v18 = _Block_copy(aBlock);
  sub_1006E3C6C(a1, v20);
  static DispatchQoS.unspecified.getter();
  v20[0] = _swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000AB90();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_1006E3578(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1006E35D0(a1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1006E35D0(uint64_t *a1)
{
  v28[0] = type metadata accessor for REMAnalyticsEvent();
  v2 = *(v28[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v28[0]);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_1000F5104(&qword_10093EE58, &unk_10079E1F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  *(v8 + 32) = NLTagSchemeLexicalClass;
  v9 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v10 = NLTagSchemeLexicalClass;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithTagSchemes:isa];

  v13 = String._bridgeToObjectiveC()();
  [v12 setString:v13];

  v34 = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v14 = String.count.getter();
  v28[4] = &v34;
  v28[5] = &v33;
  v28[6] = &v32;
  v28[7] = &v31;
  v28[8] = &v30;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();
  v15 = v32;
  v16 = v34;
  v18 = v30;
  v17 = v31;
  v19 = a1[6];
  v20 = *(a1 + 56);
  v21 = a1[8];
  v23 = *(a1 + 16);
  v24 = *(a1 + 40);
  v25 = *(a1 + 73);
  v29 = *(a1 + 72);
  v22 = v29;
  *v5 = v33;
  *(v5 + 1) = v16;
  *(v5 + 2) = v15;
  *(v5 + 3) = v17;
  *(v5 + 4) = v18;
  *(v5 + 5) = v19;
  v5[48] = v20;
  *(v5 + 7) = v21;
  v5[64] = v22;
  *(v5 + 72) = *(a1 + 5);
  v5[88] = v23;
  *(v5 + 6) = *(a1 + 3);
  v5[112] = v24;
  v5[113] = v25;
  *(v5 + 15) = v14;
  v26 = v28[0];
  (*(v2 + 104))(v5, enum case for REMAnalyticsEvent.reminderIngestorMerged(_:), v28[0]);
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  REMAnalyticsManager.post(event:)();

  return (*(v2 + 8))(v5, v26);
}

void sub_1006E38CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = a1;

      if ((v19 & 1) == 0)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
        if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
        {
        }

        else
        {
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v27 & 1) == 0)
          {
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;
            if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
            {
            }

            else
            {
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v32 & 1) == 0)
              {
                v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v35 = v34;
                if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
                {
                }

                else
                {
                  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v37 & 1) == 0)
                  {
                    v21 = *a8 + 1;
                    if (!__OFADD__(*a8, 1))
                    {
                      a4 = a8;
                      goto LABEL_10;
                    }

LABEL_40:
                    __break(1u);
                    return;
                  }
                }

                v21 = *a7 + 1;
                if (!__OFADD__(*a7, 1))
                {
                  a4 = a7;
                  goto LABEL_10;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }
            }

            v21 = *a6 + 1;
            if (!__OFADD__(*a6, 1))
            {
              a4 = a6;
              goto LABEL_10;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v21 = *a5 + 1;
        if (!__OFADD__(*a5, 1))
        {
          a4 = a5;
          goto LABEL_10;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v21 = *a4 + 1;
    if (!__OFADD__(*a4, 1))
    {
LABEL_10:
      *a4 = v21;
      return;
    }

    __break(1u);
    goto LABEL_37;
  }
}

uint64_t initializeWithCopy for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

__n128 initializeWithTake for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t assignWithTake for RDReminderChangeForAnalytics(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDReminderChangeForAnalytics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDReminderChangeForAnalytics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E3F44(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  if (sub_10047A67C(v8, v9))
  {
    v10 = objc_opt_self();
    v11 = a1[3];
    v12 = a1[4];
    sub_10000F61C(a1, v11);
    (*(v12 + 16))(v24, v11, v12);
    v13 = *sub_10000F61C(v24, v24[3]);
    sub_10051EE80(v7);
    Date.timeIntervalSinceNow.getter();
    v15 = v14;
    (*(v4 + 8))(v7, v3);
    [v10 throttledErrorWithRemainingTimeInterval:v15];
    sub_10000607C(v24);
    return swift_willThrow();
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_10000F61C(a1, v17);
    (*(v18 + 24))(v17, v18);
    v20 = a1[3];
    v19 = a1[4];
    sub_10000F61C(a1, v20);
    result = (*(*(v19 + 8) + 8))(v20);
    if (!v1)
    {
      v21 = a1[3];
      v22 = a1[4];
      sub_10000F61C(a1, v21);
      return (*(v22 + 32))(v21, v22);
    }
  }

  return result;
}

void sub_1006E4184()
{
  v1 = v0;
  v2 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v53 = *(v2 - 1);
  v3 = *(v53 + 64);
  v4 = __chkstk_darwin(v2);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v52 - v6;
  v8 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started;
  if (*(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started))
  {
    if (qword_100936740 == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_100950120);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Started RDSuggestedAttributesAutoTrainer more than once", v24, 2u);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v52 = v11;
  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100950120);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Starting RDSuggestedAttributesAutoTrainer", v28, 2u);
  }

  *(v1 + v20) = 1;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v18;
  v30[3] = sub_1006E7B04;
  v30[4] = v29;
  type metadata accessor for RDDynamicXPCActivity();
  swift_allocObject();
  v31 = v18;
  v32 = sub_1005A9A28(0, sub_1000FCE88, v30);

  v33 = *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity);
  *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity) = v32;

  v34 = *(v1 + 24);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v36 = [objc_opt_self() cdEntityName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  *(inited + 32) = v37;
  *(inited + 40) = v39;
  v40 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v41 = swift_allocObject();
  swift_weakInit();

  v42 = v52;
  UUID.init()();
  sub_100026CD8(v42, v7, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  *&v7[v2[5]] = v40;
  *&v7[v2[6]] = v31;
  v43 = &v7[v2[7]];
  *v43 = sub_1006E7B20;
  v43[1] = v41;
  v44 = *(v34 + 40);
  v45 = v31;

  os_unfair_lock_lock(v44);
  sub_100026CD8(v7, v54, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v46 = *(v34 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 48) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = sub_100365714(0, v46[2] + 1, 1, v46);
    *(v34 + 48) = v46;
  }

  v49 = v46[2];
  v48 = v46[3];
  if (v49 >= v48 >> 1)
  {
    v46 = sub_100365714(v48 > 1, v49 + 1, 1, v46);
  }

  v46[2] = v49 + 1;
  sub_10035083C(v54, v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v34 + 48) = v46;
  swift_endAccess();
  os_unfair_lock_unlock(v44);

  sub_1003508A4(v7, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v50 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v50 - 8) + 56))(v42, 0, 1, v50);
  v51 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
  swift_beginAccess();
  sub_100117A3C(v42, v1 + v51, &qword_100942CA0, &qword_1007A3810);
  swift_endAccess();
  sub_1006E6D74(0);
}

uint64_t sub_1006E488C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950120);
  v1 = sub_100006654(v0, qword_100950120);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006E4954()
{
  result = [objc_opt_self() suggestedAttributes];
  qword_100950138 = result;
  return result;
}

uint64_t sub_1006E4990@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity____lazy_storage___throttlingPolicy;
  swift_beginAccess();
  sub_100010364(&v1[v5], &v13, &unk_100940320, qword_10079F2F0);
  if (v14)
  {
    return sub_100054B6C(&v13, a1);
  }

  sub_1000050A4(&v13, &unk_100940320, qword_10079F2F0);
  v7 = *&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs + 24];
  v8 = *&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs + 32];
  sub_10000F61C(&v1[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs], v7);
  v9 = (*(v8 + 8))(v7, v8);
  v14 = ObjectType;
  v15 = &off_1008FD008;
  *&v13 = v1;
  v10 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v11 = swift_allocObject();
  sub_100054B6C(&v13, v11 + 16);
  *(v11 + 56) = v9;
  a1[3] = v10;
  a1[4] = &off_1008F5B28;
  *a1 = v11;
  sub_10000A87C(a1, &v13);
  swift_beginAccess();
  v12 = v2;
  sub_100117A3C(&v13, v2 + v5, &unk_100940320, qword_10079F2F0);
  return swift_endAccess();
}

uint64_t sub_1006E4BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v23);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
  if (swift_dynamicCast())
  {

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_10000607C(v23);
  }

  else
  {
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100950120);
    sub_10000A87C(a1, v22);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      sub_10000A87C(v22, &v20);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_10000607C(v22);
      v18 = sub_10000668C(v15, v17, &v21);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDSuggestedAttributesAutoTrainingExecutionDateStorage.lastExecutedDate(for:) must work with RDSuggestedAttributesAutoTrainingActivity only {executable: %{public}s}", v13, 0xCu);
      sub_10000607C(v14);
    }

    else
    {

      sub_10000607C(v22);
    }

    sub_10000607C(v23);
    v19 = type metadata accessor for Date();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_1006E4E68(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25[-v7];
  sub_10000A87C(a1, v28);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
  if (swift_dynamicCast())
  {

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v12 = type metadata accessor for Date();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v8, a2, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v14 = *(v10 + 40);
    swift_unknownObjectRetain();
    v14(v8, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100950120);
    sub_10000A87C(a1, v27);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      sub_10000A87C(v27, v25);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_10000607C(v27);
      v23 = sub_10000668C(v20, v22, &v26);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "RDSuggestedAttributesAutoTrainingExecutionDateStorage.updateLastExecutedDate(for:) must work with RDSuggestedAttributesAutoTrainingActivity only {executable: %{public}s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    else
    {

      sub_10000607C(v27);
    }
  }

  return sub_10000607C(v28);
}

uint64_t sub_1006E52E8()
{
  v1 = (*v0 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_identifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1006E5354()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executable);
  v3[4] = &off_1008FCFB0;
  v3[5] = &off_1008FCFC0;
  v3[3] = type metadata accessor for RDSuggestedAttributesAutoTrainer.RDSuggestedAttributesAutoTrainingActivityExecutable();
  v3[0] = v1;

  sub_10045FABC(v3);
  return sub_10000607C(v3);
}

uint64_t sub_1006E53D8()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v24 - v7;
  v9 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
  swift_beginAccess();
  sub_100010364(v1 + v14, v8, &qword_100942CA0, &qword_1007A3810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000050A4(v8, &qword_100942CA0, &qword_1007A3810);
LABEL_5:

    v20 = *(v1 + 24);

    v21 = *(v1 + 40);
    swift_unknownObjectRelease();
    sub_10000607C((v1 + 56));
    sub_1000050A4(v1 + v14, &qword_100942CA0, &qword_1007A3810);
    v22 = *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity);

    return v1;
  }

  sub_10035083C(v8, v13, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v15 = *(v1 + 24);
  v16 = *(v15 + 40);

  os_unfair_lock_lock(v16);
  v24[0] = v24;
  __chkstk_darwin(v17);
  v24[-2] = v13;
  swift_beginAccess();
  v18 = sub_1002601AC(sub_10014D8A4, &v24[-4]);
  v19 = *(*(v15 + 48) + 16);
  if (v19 >= v18)
  {
    sub_100260C60(v18, v19);
    swift_endAccess();
    os_unfair_lock_unlock(v16);

    sub_1003508A4(v13, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    (*(v10 + 56))(v5, 1, 1, v9);
    swift_beginAccess();
    sub_100117A3C(v5, v1 + v14, &qword_100942CA0, &qword_1007A3810);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1006E5734()
{
  sub_1006E53D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1006E578C()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_100936748 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  v7 = v9;
  v9(v6, v2);
  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100950120);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16[1] = v8;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDSuggestedAttributesAutoTrainingActivityExecutable: execute now", v13, 2u);
  }

  v14 = *(v1 + 40);
  (*(v1 + 32))();
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return v7(v6, v2);
}

void sub_1006E5A40()
{
  v1 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v2 = *(*(v1 - 1) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v60 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v60[1] = v1;
    v62 = v7;
    if (qword_100936740 != -1)
    {
      swift_once();
    }

    v64 = v0;
    v10 = type metadata accessor for Logger();
    v63 = sub_100006654(v10, qword_100950120);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "RDSuggestedAttributesAutoTrainer XPC activity called back to run", v13, 2u);
    }

    v14 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for RDSuggestedAttributesAutoTrainer.RDSuggestedAttributesAutoTrainingActivityExecutable();
    v15 = swift_allocObject();
    v15[2] = 0xD000000000000027;
    v15[3] = 0x80000001007FF440;
    v15[4] = sub_1006E7B28;
    v15[5] = v14;
    v17 = *(v9 + 40);
    v16 = *(v9 + 48);
    sub_10000A87C(v9 + 56, v67);
    v18 = objc_opt_self();
    swift_unknownObjectRetain();
    v19 = [v18 sharedBabysitter];
    v20 = v19;
    v61 = v5;
    if (v19)
    {
      v19 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
      v21 = &off_1008F54F0;
    }

    else
    {
      v21 = 0;
      v66[1] = 0;
      v66[2] = 0;
    }

    v66[0] = v20;
    v66[3] = v19;
    v66[4] = v21;
    v22 = type metadata accessor for RDSuggestedAttributesAutoTrainingActivity();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_identifier];
    v67[10] = v22;

    sub_1000F5104(&qword_100950438, &unk_1007B64F0);
    *v24 = String.init<A>(reflecting:)();
    v24[1] = v25;
    v26 = &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity____lazy_storage___throttlingPolicy];
    *v26 = 0u;
    *(v26 + 1) = 0u;
    *(v26 + 4) = 0;
    *&v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executable] = v15;
    v27 = &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_states];
    *v27 = v17;
    *(v27 + 1) = v16;
    sub_10000A87C(v67, &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_configs]);
    sub_100010364(v66, &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_babysitter], &unk_10093D8F0, &unk_10079B600);
    v28 = type metadata accessor for RDSuggestedAttributesAutoTrainingActivity.RDSuggestedAttributesAutoTrainingExecutionDateStorage();
    v29 = swift_allocObject();
    *(v29 + 16) = v17;
    *(v29 + 24) = v16;
    v30 = &v23[OBJC_IVAR____TtC7remindd41RDSuggestedAttributesAutoTrainingActivity_executionDateStorage];
    v30[3] = v28;
    v30[4] = &off_1008FCFE0;
    *v30 = v29;
    v65.receiver = v23;
    v65.super_class = v22;
    swift_unknownObjectRetain();
    v31 = objc_msgSendSuper2(&v65, "init");
    sub_10000607C(v67);
    sub_1000050A4(v66, &unk_10093D8F0, &unk_10079B600);
    v67[3] = v22;
    v67[4] = &off_1008FD028;
    v67[0] = v31;
    v32 = v31;
    v33 = v64;
    sub_1006E3F44(v67);
    if (v33)
    {
      sub_10000607C(v67);
      swift_getErrorValue();
      if (Error.isREMError(withErrorCode:)())
      {
        v60[0] = v32;
        v64 = v33;
        v34 = *(v9 + 40);
        v35 = *(v9 + 48);
        ObjectType = swift_getObjectType();
        v37 = *(v35 + 32);
        swift_unknownObjectRetain();
        v38 = v62;
        v37(ObjectType, v35);
        swift_unknownObjectRelease();
        v39 = v61;
        sub_100010364(v38, v61, &unk_100938850, qword_100795AE0);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = v38;
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v67[0] = v44;
          *v43 = 136446210;
          v45 = Optional.descriptionOrNil.getter();
          v46 = v39;
          v47 = v45;
          v49 = v48;
          sub_1000050A4(v46, &unk_100938850, qword_100795AE0);
          v50 = sub_10000668C(v47, v49, v67);

          *(v43 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v40, v41, "RDSuggestedAttributesAutoTrainer TRAIN THROTTLED, skipping {lastExecuted: %{public}s}", v43, 0xCu);
          sub_10000607C(v44);

          v51 = v42;
        }

        else
        {

          sub_1000050A4(v39, &unk_100938850, qword_100795AE0);
          v51 = v38;
        }

        sub_1000050A4(v51, &unk_100938850, qword_100795AE0);
      }

      else
      {
        swift_errorRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v60[0] = v32;
          v55 = v54;
          v56 = swift_slowAlloc();
          v67[0] = v56;
          *v55 = 136315138;
          swift_getErrorValue();
          v57 = Error.rem_errorDescription.getter();
          v59 = sub_10000668C(v57, v58, v67);

          *(v55 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v52, v53, "RDSuggestedAttributesAutoTrainer TRAIN ERROR: (%s", v55, 0xCu);
          sub_10000607C(v56);

          v32 = v60[0];
        }

        swift_willThrow();
      }
    }

    else
    {

      sub_10000607C(v67);
    }
  }
}

uint64_t sub_1006E61E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E6250();
  }

  return result;
}

void sub_1006E6250()
{
  v2 = v0;
  v3 = type metadata accessor for REMSuggestedAttributesTrainer.Result();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = &v76 - v8;
  v86 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v85 = *(v86 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v86);
  v89 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.AnchoredBubble();
  v91 = *(v11 - 8);
  v12 = *(v91 + 64);
  v13 = __chkstk_darwin(v11);
  v84 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v100 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.IntentionalWord();
  v90 = *(v100 - 8);
  v17 = *(v90 + 64);
  v18 = __chkstk_darwin(v100);
  v83 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v95 = &v76 - v20;
  v21 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.Embedding();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v82 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v76 - v26;
  v27 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters.CoreBehavior();
  v96 = *(v27 - 8);
  v97 = v27;
  v28 = *(v96 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v93 = &v76 - v32;
  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v98 = v16;
  v99 = v21;
  v88 = v22;
  v92 = v11;
  v33 = type metadata accessor for Logger();
  v80 = sub_100006654(v33, qword_100950120);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "RDSuggestedAttributesAutoTrainer TRAIN START", v36, 2u);
  }

  v38 = v2[5];
  v37 = v2[6];
  v39 = *(v2[3] + 16);
  v102[0] = 0xD000000000000020;
  v102[1] = 0x80000001007B6370;
  v102[3] = 0;
  v103[0] = 0;
  v102[2] = 0;
  *(v103 + 6) = 0;
  v40 = v39;
  sub_100404AFC(v102, sub_1006E7620, 0);
  v42 = v41;

  if (!v1)
  {
    v101 = 0;
    v43 = [v42 dataRepresentationWithError:&v101];

    v44 = v101;
    if (v43)
    {
      v76 = v4;
      v77 = v3;
      ObjectType = swift_getObjectType();
      v46 = v44;
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      (*(v37 + 16))(v47, v49, ObjectType, v37);
      v78 = [objc_allocWithZone(REMSuggestedAttributesPerformer) initWithQueue:v2[2] store:v2[4]];
      v50 = v93;
      REMSuggestedAttributesTrainer.Parameters.CoreBehavior.init(isEnabled:support:adjustment:confidence:validationRelativeSupport:validationConfidence:feedbackResetVersion:feedbackExpirationWindow:)();
      v51 = v94;
      REMSuggestedAttributesTrainer.Parameters.Embedding.init(isEnabled:neighborsToConsider:)();
      v52 = v95;
      REMSuggestedAttributesTrainer.Parameters.IntentionalWord.init(isEnabled:k:)();
      v53 = v98;
      REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.init(enabledOniOS:enabledOnmacOS:defaultWordDistanceScale:overrideLocalWordDistanceScale:)();
      (*(v96 + 16))(v31, v50, v97);
      v54 = v88;
      (*(v88 + 16))(v82, v51, v99);
      v55 = v91;
      v56 = *(v91 + 16);
      v79 = 0;
      v57 = v92;
      v56(v84, v53, v92);
      v58 = v90;
      (*(v90 + 16))(v83, v52, v100);
      v59 = v78;
      v60 = v89;
      REMSuggestedAttributesTrainer.Parameters.init(enabledOnmacOS:enabledOniOS:maxSampleCount:minimumSampleCount:validationSetProportion:shouldSaveModel:allowLocalOverrides:allowCloudOverrides:randomSeed:coreBehavior:embedding:anchoredBubble:intentionalWord:)();
      type metadata accessor for REMSuggestedAttributesTrainer();
      v61 = v87;
      v62 = v79;
      static REMSuggestedAttributesTrainer.train(in:parameters:)();
      v79 = v62;
      if (v62)
      {

        (*(v85 + 8))(v60, v86);
        (*(v55 + 8))(v98, v57);
        (*(v58 + 8))(v95, v100);
        (*(v54 + 8))(v94, v99);
      }

      else
      {
        v64 = v76;
        v65 = v81;
        v66 = v77;
        (*(v76 + 16))(v81, v61, v77);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v101 = v84;
          *v69 = 136446210;
          v70 = REMSuggestedAttributesTrainer.Result.shortDescription.getter();
          v72 = v71;
          v73 = *(v64 + 8);
          v73(v65, v66);
          v74 = sub_10000668C(v70, v72, &v101);

          *(v69 + 4) = v74;
          _os_log_impl(&_mh_execute_header, v67, v68, "RDSuggestedAttributesAutoTrainer TRAIN END {results: %{public}s}", v69, 0xCu);
          sub_10000607C(v84);

          v73(v87, v66);
        }

        else
        {

          v75 = *(v64 + 8);
          v75(v65, v66);
          v75(v61, v66);
        }

        (*(v85 + 8))(v89, v86);
        (*(v91 + 8))(v98, v92);
        (*(v90 + 8))(v95, v100);
        (*(v88 + 8))(v94, v99);
      }

      (*(v96 + 8))(v93, v97);
    }

    else
    {
      v63 = v101;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1006E6D18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E6D74(1);
  }

  return result;
}

void sub_1006E6D74(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity);
  if (v2)
  {
    *&v20 = *(v2 + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    if (v19)
    {
LABEL_28:

      return;
    }

    if (a1 & 1) != 0 || (sub_1006E714C())
    {
      v4 = sub_1006E7424();
      v5 = v4 + 60.0;
      if (v4 + 60.0 > 0.0)
      {
        v6 = 1;
      }

      else
      {
        v6 = 512;
      }

      if (v4 + 60.0 <= 0.0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v4 + 60.0;
      }

      *&v20 = 0;
      *(&v20 + 1) = v6;
      v22 = 0;
      v23 = 0;
      v21 = v7;
      v24 = v4 + 60.0 > 0.0;
      v25 = 33685504;
      v26 = 0x404E000000000000;
      v27 = 0;
      v28 = 0x102020200010101;
      v29 = 1792;
      v30 = sub_10039363C(&off_1008E40B8);
      sub_1005A46AC(&v20);

      if (qword_100936740 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100006654(v8, qword_100950120);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_27;
      }

      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = a1 & 1;
      *(v11 + 8) = 2048;
      *(v11 + 10) = v5;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDSuggestedAttributesAutoTrainer scheduled {isDatabaseDirty: true, assumeDatabaseDirty: %{BOOL}d, delay: %f}", v11, 0x12u);
    }

    else
    {
      if (qword_100936740 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006654(v15, qword_100950120);
      v9 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v16))
      {
        goto LABEL_27;
      }

      v17 = swift_slowAlloc();
      *v17 = 67109120;
      _os_log_impl(&_mh_execute_header, v9, v16, "RDSuggestedAttributesAutoTrainer schedule skipped {isDatabaseDirty: false, assumeDatabaseDirty: %{BOOL}d}", v17, 8u);
    }

LABEL_27:

    goto LABEL_28;
  }

  if (qword_100936740 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100950120);
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v13, "Scheduling XPCActivity before start()", v14, 2u);
  }
}

uint64_t sub_1006E714C()
{
  v1 = v0[6];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 8))(ObjectType, v1);
  if (v5 >> 60 == 15)
  {
    v6 = 1;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    sub_1000060C8(0, &qword_100948CE8, REMFetchResultToken_ptr);
    v9 = sub_100031948();
    v10 = *(v0[3] + 16);
    v15[0] = 0xD000000000000020;
    v15[1] = 0x80000001007B6370;
    v15[3] = 0;
    v16[0] = 0;
    v15[2] = 0;
    *(v16 + 6) = 0;
    v11 = v10;
    sub_100404AFC(v15, sub_1006E7620, 0);
    v13 = v12;

    LOBYTE(v11) = static NSObject.== infix(_:_:)();
    sub_100031A14(v7, v8);

    v6 = v11 ^ 1;
  }

  return v6 & 1;
}

double sub_1006E7424()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = v0[10];
  v15 = v0[11];
  sub_10000F61C(v0 + 7, v14);
  (*(v15 + 8))(v14, v15);
  v16 = v0[5];
  v17 = v1[6];
  ObjectType = swift_getObjectType();
  (*(v17 + 32))(ObjectType, v17);
  Optional<A>.orDistantPast.getter();
  sub_1000050A4(v5, &unk_100938850, qword_100795AE0);
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v11, v6);
  v21(v13, v6);
  return v20;
}

id sub_1006E7620@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v3 = [a1 latestFetchResultTokenWithError:&v7];
  v4 = v7;
  if (v3)
  {
    *a2 = v3;
    return v4;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1006E76D4()
{
  v1 = [v0 lastSuggestedAttributesAutoTrainingToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1006E773C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    [v2 setLastSuggestedAttributesAutoTrainingToken:0];
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100031A14(a1, a2);
    [v2 setLastSuggestedAttributesAutoTrainingToken:isa];
  }
}

uint64_t sub_1006E77C0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 lastSuggestedAttributesAutoTrainingExecutionDate];
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

void sub_1006E7864(uint64_t a1)
{
  v2 = v1;
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
  [v2 setLastSuggestedAttributesAutoTrainingExecutionDate:?];
}

uint64_t type metadata accessor for RDSuggestedAttributesAutoTrainer()
{
  result = qword_1009502A8;
  if (!qword_1009502A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E7A08()
{
  sub_1001490E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006E7B44()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950440);
  v1 = sub_100006654(v0, qword_100950440);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1006E7C0C(void *a1, void *a2)
{
  v123 = a2;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v126 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v119 - v7;
  v8 = type metadata accessor for Date();
  v129 = *(v8 - 8);
  v9 = v129[8];
  v10 = __chkstk_darwin(v8);
  v125 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v127 = &v119 - v13;
  __chkstk_darwin(v12);
  v128 = &v119 - v14;
  v15 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v119 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v119 - v29;
  v132 = a1;
  v31 = [a1 account];
  if (v31)
  {
    v130 = v31;
    v32 = [v31 identifier];
    if (v32)
    {
      v33 = v32;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v20 + 56))(v28, 0, 1, v19);
    }

    else
    {
      (*(v20 + 56))(v28, 1, 1, v19);
    }

    sub_100100FB4(v28, v30);
    if ((*(v20 + 48))(v30, 1, v19))
    {
      sub_1000050A4(v30, &unk_100939D90, "8\n\r");
      v37 = objc_opt_self();
      sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = String._bridgeToObjectiveC()();
      [v37 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v39];

LABEL_8:
      swift_willThrow();
      v40 = v130;
LABEL_9:

      return v19;
    }

    (*(v20 + 16))(v23, v30, v19);
    sub_1000050A4(v30, &unk_100939D90, "8\n\r");
    v42 = UUID.uuidString.getter();
    v44 = v43;
    (*(v20 + 8))(v23, v19);
    v45 = [v132 objectID];
    v46 = [v45 persistentStore];

    if (!v46)
    {
      if (qword_100936750 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_100006654(v66, qword_100950440);
      v67 = v132;

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v42;
        v19 = v44;
        v71 = swift_slowAlloc();
        v131[0] = swift_slowAlloc();
        *v71 = 136446466;
        v72 = [v67 remObjectID];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 description];

          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;
        }

        else
        {
          v75 = 7104878;
          v77 = 0xE300000000000000;
        }

        v110 = sub_10000668C(v75, v77, v131);

        *(v71 + 4) = v110;
        *(v71 + 12) = 2082;
        v111 = sub_10000668C(v70, v19, v131);

        *(v71 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v68, v69, "REMCDHashtagLabel.createHashtagLabel: Cannot obtain the associated persistent store of the given hashtag {hashtagID: %{public}s, hashtagAccountID: %{public}s}", v71, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v112 = objc_opt_self();
      v113 = String._bridgeToObjectiveC()();
      [v112 internalErrorWithDebugDescription:v113];

      goto LABEL_8;
    }

    v47 = sub_10034C000();
    v122 = v44;
    if (v48)
    {
      v49 = v47;
      v19 = v48;
      if ((v47 != v42 || v48 != v44) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v128 = v49;
        v129 = v46;
        if (qword_100936750 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_100006654(v98, qword_100950440);
        v99 = v132;

        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = v42;
          v103 = swift_slowAlloc();
          v131[0] = swift_slowAlloc();
          *v103 = 136446722;
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
            v107 = 7104878;
            v109 = 0xE300000000000000;
          }

          v114 = sub_10000668C(v107, v109, v131);

          *(v103 + 4) = v114;
          *(v103 + 12) = 2082;
          v115 = sub_10000668C(v102, v122, v131);

          *(v103 + 14) = v115;
          *(v103 + 22) = 2082;
          v116 = sub_10000668C(v128, v19, v131);

          *(v103 + 24) = v116;
          _os_log_impl(&_mh_execute_header, v100, v101, "REMCDHashtagLabel.createHashtagLabel: Hashtag does not have matching account identifier with its persistent store {hashtagID: %{public}s, hashtagAccountID: %{public}s, pStoreAccountID: %{public}s}", v103, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v117 = objc_opt_self();
        v118 = String._bridgeToObjectiveC()();
        [v117 internalErrorWithDebugDescription:v118];

        swift_willThrow();
        v40 = v129;
        goto LABEL_9;
      }
    }

    v121 = v42;
    sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
    v50 = swift_getObjCClassFromMetadata();
    v51 = v46;
    v52 = [v50 entity];
    v53 = objc_allocWithZone(v50);
    v54 = v123;
    v55 = [v53 initWithEntity:v52 insertIntoManagedObjectContext:v123];
    v56 = v51;
    v19 = v55;
    [v54 assignObject:v19 toPersistentStore:v56];

    v123 = v56;
    v57 = v132;
    v58 = [v132 name];
    [v19 setName:v58];

    v59 = [v57 name];
    if (v59)
    {
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v131[0] = v61;
      v131[1] = v63;
      static Locale.current.getter();
      v64 = type metadata accessor for Locale();
      (*(*(v64 - 8) + 56))(v18, 0, 1, v64);
      sub_10013BCF4();
      StringProtocol.foldedStringForWriting(locale:)();
      sub_1000050A4(v18, &unk_10093F420, &unk_100797AE0);

      v65 = String._bridgeToObjectiveC()();
    }

    else
    {
      v65 = 0;
    }

    [v19 setCanonicalName:v65];

    v78 = [v132 creationDate];
    if (v78)
    {
      v79 = v127;
      v80 = v78;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = v129;
      v82 = v129[4];
      v83 = v124;
      v82(v124, v79, v8);
      v120 = v81[7];
      v120(v83, 0, 1, v8);
      v84 = v128;
      v82(v128, v83, v8);
    }

    else
    {
      v85 = v129;
      v86 = v124;
      v120 = v129[7];
      v120(v124, 1, 1, v8);
      static Date.distantFuture.getter();
      if ((v85[6])(v86, 1, v8) != 1)
      {
        sub_1000050A4(v86, &unk_100938850, qword_100795AE0);
      }

      v84 = v128;
      v81 = v129;
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    v88 = v81[1];
    v88(v84, v8);
    [v19 setFirstOccurrenceCreationDate:isa];

    v89 = [v132 creationDate];
    if (v89)
    {
      v90 = v127;
      v91 = v89;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = v81[4];
      v93 = v126;
      v92(v126, v90, v8);
      v120(v93, 0, 1, v8);
      v94 = v125;
      v92(v125, v93, v8);
    }

    else
    {
      v95 = v126;
      v120(v126, 1, 1, v8);
      v94 = v125;
      static Date.distantPast.getter();
      if ((v81[6])(v95, 1, v8) != 1)
      {
        sub_1000050A4(v95, &unk_100938850, qword_100795AE0);
      }
    }

    v96 = Date._bridgeToObjectiveC()().super.isa;
    v88(v94, v8);
    [v19 setRecencyDate:v96];

    v97 = String._bridgeToObjectiveC()();

    [v19 setAccountIdentifier:v97];

    [v19 addHashtagsObject:v132];
  }

  else
  {
    v34 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    v35 = swift_getObjCClassFromMetadata();
    v36 = String._bridgeToObjectiveC()();
    [v34 unexpectedNilPropertyWithClass:v35 property:v36];

    swift_willThrow();
  }

  return v19;
}

void sub_1006E8AFC(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v35 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = String._bridgeToObjectiveC()();
  [v3 setName:v11];

  [v3 setColor:a1[2]];
  if (a1[4])
  {
    v12 = a1[3];
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v3 setBadgeEmblem:v13];

  if (a1[6])
  {
    v14 = a1[5];
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v3 setSortingStyle:v15];

  v16 = type metadata accessor for RDPublicTemplate();
  v17 = a1 + v16[8];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v3 setPublicLinkURLUUID:isa];

  sub_10012F78C(a1 + v16[9], v8);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v8, 1, v19) != 1)
  {
    v21 = Date._bridgeToObjectiveC()().super.isa;
    (*(v20 + 8))(v8, v19);
  }

  [v3 setPublicLinkExpirationDate:v21];

  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v25 = (a1 + v16[10]);
  v26 = v25[1];
  v27 = v25[3];
  v41 = v25[2];
  v42 = v27;
  v28 = v25[1];
  v40[0] = *v25;
  v40[1] = v28;
  v36 = v40[0];
  v37 = v26;
  v29 = v25[3];
  v38 = v41;
  v39 = v29;
  sub_10013FD6C(v40, v35);
  sub_10013FDC8();
  v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  if (v2)
  {
    sub_10013FE1C(v35);
  }

  else
  {
    v32 = v30;
    v33 = v31;
    sub_10013FE1C(v35);

    v34 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v32, v33);
    [v3 setEncodedSavedReminders:v34];
  }
}

id sub_1006E8E28()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18 - v9;
  v11 = [v1 publicLinkURLUUID];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v10, v6, v2);
  v13 = objc_allocWithZone(REMObjectID);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 initWithUUID:isa entityName:v15];

  (*(v3 + 8))(v10, v2);
  return v16;
}

double sub_1006E8FC0@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  ObjectType = swift_getObjectType();
  v93 = type metadata accessor for Date();
  v4 = *(v93 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v93);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v82 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v82 - v17;
  v19 = [v2 publicLinkURLUUID];
  if (!v19)
  {
    v46 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = String._bridgeToObjectiveC()();
    [v46 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v48];

    swift_willThrow();
    return result;
  }

  v20 = v19;
  v90 = ObjectType;
  v92 = v4;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = *(v11 + 32);
  v86(v18, v14, v10);
  v21 = [v2 publicLinkExpirationDate];
  v22 = v10;
  v23 = v18;
  if (!v21)
  {
    v50 = objc_opt_self();
    v51 = swift_getObjCClassFromMetadata();
    v52 = String._bridgeToObjectiveC()();
    [v50 unexpectedNilPropertyWithClass:v51 property:v52];

    swift_willThrow();
    (*(v11 + 8))(v23, v22);
    return result;
  }

  v87 = v18;
  v88 = v10;
  v24 = v21;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v92;
  v25 = v93;
  v27 = *(v92 + 32);
  v28 = v102;
  v27(v102, v7, v93);
  v29 = [v2 name];
  if (!v29)
  {
    v53 = objc_opt_self();
    v54 = v28;
    v55 = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    [v53 unexpectedNilPropertyWithClass:v55 property:v56];

    swift_willThrow();
    (*(v26 + 8))(v54, v25);
LABEL_11:
    v44 = *(v11 + 8);
    v45 = v87;
    goto LABEL_12;
  }

  v85 = v27;
  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v2 encodedSavedReminders];
  if (!v34)
  {

    v57 = objc_opt_self();
    v58 = swift_getObjCClassFromMetadata();
    v59 = String._bridgeToObjectiveC()();
    [v57 unexpectedNilPropertyWithClass:v58 property:v59];

    swift_willThrow();
    (*(v92 + 8))(v102, v25);
    goto LABEL_11;
  }

  v84 = v31;
  v90 = v33;
  v35 = v34;
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = type metadata accessor for JSONDecoder();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10013F2DC();
  v42 = v91;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v43 = v87;
  if (v42)
  {

    sub_10001BBA0(v36, v38);

    (*(v92 + 8))(v102, v93);
    v44 = *(v11 + 8);
    v45 = v43;
LABEL_12:
    v44(v45, v88);
    return result;
  }

  v60 = v38;

  v94 = v98;
  v95 = v99;
  v96 = v100;
  v97 = v101;
  v91 = [v2 color];
  v61 = [v2 badgeEmblem];
  if (v61)
  {
    v62 = v61;
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v63;
  }

  else
  {
    v83 = 0;
    v82 = 0;
  }

  v64 = v43;
  v65 = [v2 sortingStyle];
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
    v70 = v36;
    v71 = v67;
    sub_10001BBA0(v70, v60);
  }

  else
  {
    sub_10001BBA0(v36, v60);
    v71 = 0;
    v69 = 0;
  }

  v72 = type metadata accessor for RDPublicTemplate();
  v73 = v89;
  v86(&v89[v72[8]], v64, v88);
  v74 = v72[9];
  v75 = v93;
  v85(&v73[v74], v102, v93);
  (*(v92 + 56))(&v73[v74], 0, 1, v75);
  v76 = v90;
  v77 = v91;
  *v73 = v84;
  *(v73 + 1) = v76;
  v78 = v83;
  *(v73 + 2) = v77;
  *(v73 + 3) = v78;
  *(v73 + 4) = v82;
  *(v73 + 5) = v71;
  *(v73 + 6) = v69;
  v79 = &v73[v72[10]];
  v80 = v95;
  *v79 = v94;
  *(v79 + 1) = v80;
  result = *&v96;
  v81 = v97;
  *(v79 + 2) = v96;
  *(v79 + 3) = v81;
  return result;
}

uint64_t sub_1006E9A78()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950480);
  v1 = sub_100006654(v0, qword_100950480);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_AccountIdentifierHashtagLabels.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD000000000000038;
  *(&v8 + 1) = 0x80000001007B6500;
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
    sub_1001B2134(v10);
LABEL_9:
    sub_1006E9D4C(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD000000000000038;
    *(&v10[0] + 1) = 0x80000001007B6500;
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

void sub_1006E9D4C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_100936758 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950480);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = ObjectType;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&aBlock = v13;
    *v12 = 136446210;
    v14 = sub_1003533B0();
    v16 = sub_10000668C(v14, v15, &aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "AccountIdentifierHashtagLabelsMigrator BEGIN {store: %{public}s}", v12, 0xCu);
    sub_10000607C(v13);

    ObjectType = v11;
    v3 = v2;
  }

  *&v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v43 + 1) = v17;
  v18 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  aBlock = v43;
  v38 = v44;
  if (!*(&v44 + 1))
  {
LABEL_12:
    sub_1001B2134(&aBlock);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v19 = v41;
    v20 = v42;
    v21 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    v22 = [v8 persistentStoreCoordinator];
    [v21 setPersistentStoreCoordinator:v22];

    [v21 setTransactionAuthor:RDStoreControllerAccountIdentifierHashtagLabelsMigrationAuthor];
    v23 = swift_allocObject();
    v23[2] = v3;
    v23[3] = v21;
    v23[4] = v8;
    v23[5] = v19;
    v23[6] = v20;
    v23[7] = ObjectType;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1006EA7CC;
    *(v24 + 24) = v23;
    v39 = sub_1000529DC;
    v40 = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v38 = sub_10000F160;
    *(&v38 + 1) = &unk_1008FD100;
    v25 = _Block_copy(&aBlock);
    v26 = v8;
    v27 = v3;
    v28 = v21;

    [v28 performBlockAndWait:v25];

    _Block_release(v25);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if ((v28 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v29 = v8;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v32 = 136446210;
    v34 = sub_1003533B0();
    v36 = sub_10000668C(v34, v35, &aBlock);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "AccountIdentifierHashtagLabelsMigrator {store: %{public}s} accountIdentifier is nil, skip migration", v32, 0xCu);
    sub_10000607C(v33);
  }
}

void sub_1006EA204(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = sub_1006EA7DC(a2, a3, 50);
  v6 = &qword_100936000;
  v15 = v5;
  if (v5 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
LABEL_7:
      v35 = v3;
      v17 = 0;
      v6 = (v15 & 0xC000000000000001);
      v36 = v4;
      v3 = 0x51EB851EB851EB8;
      v18 = v16;
      while (1)
      {
        if (v6)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v19 = *(v15 + 8 * v17 + 32);
        }

        v20 = v19;
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = String._bridgeToObjectiveC()();
        [v20 setAccountIdentifier:v21];

        if (__ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v16, 1) <= 0x51EB851EB851EB8uLL && [v36 hasChanges])
        {
          v37 = 0;
          if (![v36 save:&v37])
          {
            v23 = v37;

            _convertNSErrorToError(_:)();

            swift_willThrow();
            v3 = v35;
            v6 = &qword_100936000;
            goto LABEL_2;
          }

          v22 = v37;
        }

        ++v17;
        if (v16 == v18)
        {
          v16 = v18;

          v3 = v35;
          v6 = &qword_100936000;
          v4 = v36;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
LABEL_3:
      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_100950480);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v37 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = Error.rem_errorDescription.getter();
        v14 = sub_10000668C(v12, v13, &v37);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "AccountIdentifierHashtagLabelsMigrator with error: %s", v10, 0xCu);
        sub_10000607C(v11);
      }

      else
      {
      }

      goto LABEL_29;
    }
  }

  else
  {
    v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }
  }

LABEL_26:
  if ([v4 hasChanges])
  {
    v37 = 0;
    if ([v4 save:&v37])
    {
      v24 = v37;
      goto LABEL_29;
    }

    v34 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_2:
    if (v6[235] == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_23;
  }

LABEL_29:
  if (v6[235] != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_100950480);
  v26 = v3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v29 = 136446466;
    v31 = sub_1003533B0();
    v33 = sub_10000668C(v31, v32, &v37);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v27, v28, "AccountIdentifierHashtagLabelsMigrator END {store: %{public}s, migrated hashtag labels count = %ld}", v29, 0x16u);
    sub_10000607C(v30);
  }
}

id RDStoreControllerMigrator_AccountIdentifierHashtagLabels.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_AccountIdentifierHashtagLabels.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006EA7CC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_1006EA204(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1006EA7DC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000060C8(0, &qword_10093B2C0, off_1008D4198);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:0];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007953F0;
  *(v7 + 32) = a2;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v8 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setAffectedStores:isa];

  [v5 setFetchBatchSize:a3];
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  return v10;
}

uint64_t sub_1006EA978@<X0>(unint64_t *a1@<X8>)
{
  v27 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Date();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CF0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = UUID.uuidString.getter();
  *(inited + 56) = v11;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001007F62D0;
  v12 = *(v1 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta);
  *(inited + 96) = [v12 unit];
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001007F62F0;
  *(inited + 144) = [v12 count];
  *(inited + 168) = &type metadata for Int;
  strcpy((inited + 176), "creationDate");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 192) = v13;
  v14 = v26;
  *(inited + 216) = &type metadata for Double;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001007EA730;
  v15 = *(v2 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion);
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v15;
  v16 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  sub_10012F78C(v2 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate, v6);
  if ((*(v14 + 48))(v6, 1, v7) == 1)
  {
    sub_1001AAD5C(v6);
  }

  else
  {
    v17 = v25;
    (*(v14 + 32))(v25, v6, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = &type metadata for Double;
    *&v29 = v18;
    sub_100005EE0(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v16;
    sub_1002C88F0(v28, 0xD000000000000010, 0x80000001007E9F10, isUniquelyReferenced_nonNull_native);
    (*(v14 + 8))(v17, v7);
    v16 = v31;
  }

  v20 = v27;
  *v27 = v16;
  v21 = enum case for REMJSONType.jsonObject(_:);
  v22 = type metadata accessor for REMJSONType();
  return (*(*(v22 - 8) + 104))(v20, v21, v22);
}

uint64_t sub_1006EAD54()
{
  v1 = OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1001AAD5C(v0 + OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1006EAE74@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006EB574(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t REMDueDateDeltaInterval.toJSON()@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  *(inited + 32) = 1953066613;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = [v2 unit];
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x746E756F63;
  *(inited + 88) = 0xE500000000000000;
  v5 = [v2 count];
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = v5;
  v6 = sub_1001F67C8(inited);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939260, &unk_100797220);
  swift_arrayDestroy();
  *a1 = v6;
  v7 = enum case for REMJSONType.jsonObject(_:);
  v8 = type metadata accessor for REMJSONType();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

id static REMDueDateDeltaInterval.fromJSON(_:)(uint64_t a1)
{
  v3 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for REMJSONType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v16, a1, v11, v14);
  v17 = (*(v12 + 88))(v16, v11);
  if (v17 == enum case for REMJSONType.jsonObject(_:))
  {
    v29[1] = v1;
    v30 = v7;
    (*(v12 + 96))(v16, v11);
    v18 = *v16;
    v19 = enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:);
    v20 = v4[13];
    v20(v10, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v3);
    v21 = v31;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v22 = v4[1];
    v22(v10, v3);
    if (v21)
    {
    }

    v31 = v32;
    v26 = v30;
    v20(v30, v19, v3);
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    v22(v26, v3);

    v27 = v32;
    v28 = v31;
    if (sub_1006EB3F8(v31))
    {
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnit:v28 count:v27];
    }
  }

  else
  {
    if (v17 != enum case for REMJSONType.jsonArray(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v12 + 8))(v16, v11);
  }

  v24 = type metadata accessor for REMJSONDeserializationError();
  sub_1003466D4();
  swift_allocError();
  (*(*(v24 - 8) + 104))(v25, enum case for REMJSONDeserializationError.invalidData(_:), v24);
  return swift_willThrow();
}

id sub_1006EB3CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static REMDueDateDeltaInterval.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for RDDueDateDeltaAlert()
{
  result = qword_1009504E8;
  if (!qword_1009504E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EB458()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100140DD4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1006EB574(_BYTE *a1)
{
  v105 = a1;
  v94 = sub_1000F5104(&qword_100950590, &qword_1007B6618);
  v92 = *(v94 - 8);
  v1 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v81[-v2];
  v89 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v86 = &v81[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v90 = &v81[-v6];
  __chkstk_darwin(v7);
  v93 = &v81[-v8];
  v9 = sub_1000F5104(&qword_100938AE0, qword_1007B6560);
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = v97[8];
  __chkstk_darwin(v9);
  v87 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v88 = &v81[-v13];
  __chkstk_darwin(v14);
  v95 = &v81[-v15];
  v16 = sub_1000F5104(&unk_100942600, &qword_1007A2E18);
  v99 = *(v16 - 8);
  v100 = v16;
  v17 = v99[8];
  __chkstk_darwin(v16);
  v19 = &v81[-v18];
  v102 = type metadata accessor for Date();
  v96 = *(v102 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v102);
  v85 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v103 = &v81[-v23];
  v24 = sub_1000F5104(&qword_100938AF0, &qword_1007B6620);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v81[-v27];
  v29 = type metadata accessor for UUID();
  v101 = *(v29 - 8);
  v30 = *(v101 + 64);
  __chkstk_darwin(v29);
  v84 = &v81[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v81[-v33];
  v35 = type metadata accessor for REMJSONType();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v40 = &v81[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v36 + 16))(v40, v105, v35, v38);
  v41 = (*(v36 + 88))(v40, v35);
  if (v41 == enum case for REMJSONType.jsonObject(_:))
  {
    (*(v36 + 96))(v40, v35);
    v42 = *v40;
    (*(v25 + 104))(v28, enum case for Dictionary<>.DeserializableValueType.uuid<A, B><A1>(_:), v24);
    v43 = v104;
    Dictionary<>.deserializeRequired<A>(key:valueType:)();
    (*(v25 + 8))(v28, v24);
    if (v43)
    {
    }

    else
    {
      v105 = v34;
      v45 = enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:);
      v47 = v99;
      v46 = v100;
      (v99[13])(v19, enum case for Dictionary<>.DeserializableValueType.date<A, B><A1>(_:), v100);
      v48 = v102;
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v104 = v29;
      (v47[1])(v19, v46);
      v49 = enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:);
      v50 = v97 + 13;
      v51 = v97[13];
      v52 = v95;
      (v51)(v95, enum case for Dictionary<>.DeserializableValueType.integer<A, B><A1>(_:), v98);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v83 = v50;
      v99 = v51;
      v82 = v49;
      v53 = v97 + 1;
      v100 = v97[1];
      v100(v52, v98);
      v95 = v106;
      v54 = v48;
      v56 = v91;
      v55 = v92;
      (*(v92 + 104))(v91, v45, v94);
      v57 = v90;
      (*(v96 + 56))(v90, 1, 1, v54);
      Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)();
      sub_1001AAD5C(v57);
      (*(v55 + 8))(v56, v94);
      v59 = v88;
      v60 = v82;
      v61 = v98;
      v62 = v99;
      (v99)(v88, v82, v98);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v63 = v53;
      v64 = v62;
      v65 = v100;
      v97 = v63;
      v100(v59, v61);
      v94 = v106;
      v66 = v87;
      v64(v87, v60, v61);
      Dictionary<>.deserializeRequired<A>(key:valueType:)();
      v67 = v93;
      v65(v66, v61);

      v68 = v106;
      v69 = objc_allocWithZone(REMDueDateDeltaInterval);
      v70 = [v69 initWithUnitInteger:v68 count:v94];
      if (v70)
      {
        v71 = v70;
        v72 = v67;
        v101 = *(v101 + 32);
        v73 = v84;
        v74 = v104;
        (v101)(v84, v105, v104);
        v75 = *(v96 + 32);
        v76 = v102;
        v75(v85, v103, v102);
        sub_10012F7FC(v72, v86);
        v77 = type metadata accessor for RDDueDateDeltaAlert();
        v78 = *(v77 + 48);
        v79 = *(v77 + 52);
        v28 = swift_allocObject();
        (v101)(&v28[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_identifier], v73, v74);
        *&v28[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_dueDateDelta] = v71;
        v75(&v28[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_creationDate], v85, v76);
        sub_10012F7FC(v86, &v28[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_acknowledgedDate]);
        *&v28[OBJC_IVAR____TtC7remindd19RDDueDateDeltaAlert_minimumSupportedAppVersion] = v95;
      }

      else
      {
        v28 = type metadata accessor for REMJSONDeserializationError();
        sub_1003466D4();
        swift_allocError();
        (*(*(v28 - 1) + 104))(v80, enum case for REMJSONDeserializationError.invalidData(_:), v28);
        swift_willThrow();
        sub_1001AAD5C(v67);
        (*(v96 + 8))(v103, v102);
        (*(v101 + 8))(v105, v104);
      }
    }

    return v28;
  }

  if (v41 == enum case for REMJSONType.jsonArray(_:))
  {
    (*(v36 + 8))(v40, v35);
    v28 = type metadata accessor for REMJSONDeserializationError();
    sub_1003466D4();
    swift_allocError();
    (*(*(v28 - 1) + 104))(v44, enum case for REMJSONDeserializationError.invalidData(_:), v28);
    swift_willThrow();
    return v28;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1006EC1D0(uint64_t a1)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v30 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(a1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v27;
    v10 = v28;
    v12 = v29;
    sub_100411AE4(v27, v28, v29, a1);
    v14 = v13;
    REMObjectID.codable.getter();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v15 = v30[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1000F5104(&qword_100946070, &qword_1007A7668);
      v8 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v8(v26, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1006B0370(v27, v28, v29);
        return v30;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v11 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v11 >> 6;
      v18 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v18 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v11 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1006B0370(v11, v10, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_1006B0370(v11, v10, 0);
      }

LABEL_27:
      v27 = v16;
      v28 = v10;
      v29 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

NSObject *sub_1006EC510(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950B08, &qword_1007B6940);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950B10, &type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950B18, qword_1007B6948);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_10012BCB4(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950B20, &qword_100950B08, &qword_1007B6940);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}

uint64_t sub_1006ECEB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a6;
  v66 = a3;
  v67 = a2;
  v69 = a1;
  v62 = type metadata accessor for REMRemindersListDataView.Diff();
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v62);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Result();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Parameters();
  v71 = *(v76 - 8);
  v14 = *(v71 + 64);
  __chkstk_darwin(v76);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v70 = &v61 - v18;
  v19 = type metadata accessor for CodingUserInfoKey();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PropertyListDecoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v77 = PropertyListDecoder.init()();
  v65 = v11;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v26 = type metadata accessor for REMStoreObjectsContainer();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = a4;
  v30 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v81 = v26;
  v80[0] = v30;
  v75 = v30;

  v31 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v80, v22);
  v31(v79, 0);
  sub_10000F85C(&qword_100950AF0, &type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Parameters);
  v32 = v76;
  v33 = v74;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v33)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_100950598);
    swift_errorRetain();
    v35 = v72;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v38 = 136315394;
      swift_getErrorValue();
      v39 = Error.rem_errorDescription.getter();
      v41 = sub_10000668C(v39, v40, v80);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v79[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950AF8, &qword_1007B6938);
      v42 = String.init<A>(describing:)();
      v44 = sub_10000668C(v42, v43, v80);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v38, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    (*(v71 + 32))(v70, v16, v32);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v46 = [v72 fetchResultTokenToDiffAgainst];
    v47 = v68;
    sub_100534D44(v46, v68);

    v48 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
    v49 = REMReminderDetailDataView.CheckUpdateInvocation.Parameters.reminderID.getter();
    sub_10024111C(v49, v48);

    v50 = v47;
    v51 = v64;
    REMReminderDetailDataView.CheckUpdateInvocation.Result.init(hasUpdates:)();
    (*(v61 + 8))(v50, v62);
    v52 = type metadata accessor for PropertyListEncoder();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v55 = *(v26 + 48);
    v56 = *(v26 + 52);
    swift_allocObject();
    v57 = v29;
    v58 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v81 = v26;
    v80[0] = v58;

    v59 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v80, v22);
    v59(v79, 0);
    sub_10000F85C(&qword_100950B00, &type metadata accessor for REMReminderDetailDataView.CheckUpdateInvocation.Result);
    v60 = v65;
    v37 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v63 + 8))(v51, v60);

    (*(v71 + 8))(v70, v76);
  }

  return v37;
}

NSObject *sub_1006ED950(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a6;
  v67 = a5;
  v62 = a3;
  v61 = a2;
  v64 = a1;
  v60 = sub_1000F5104(&qword_100950AD0, &qword_1007B6928);
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v60);
  v63 = &v58 - v11;
  v71 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v58 - v17;
  v18 = type metadata accessor for CodingUserInfoKey();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PropertyListDecoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v72 = PropertyListDecoder.init()();
  v66 = v7;
  if (!a7)
  {
    sub_10003B2E4(_swiftEmptyArrayStorage);
  }

  v25 = type metadata accessor for REMStoreObjectsContainer();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = a4;
  v29 = REMStoreObjectsContainer.init(store:storages:)();
  static CodingUserInfoKey.remStoragesContainer.getter();
  v76 = v25;
  v75[0] = v29;
  v70 = v29;

  v30 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  sub_10000E350(v75, v21);
  v30(v74, 0);
  sub_10000F85C(&qword_100950AD8, &type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters);
  v31 = v71;
  v32 = v69;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v32)
  {
    if (qword_100936760 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100950598);
    swift_errorRetain();
    v34 = v66;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v75[0] = swift_slowAlloc();
      *v37 = 136315394;
      swift_getErrorValue();
      v38 = Error.rem_errorDescription.getter();
      v40 = sub_10000668C(v38, v39, v75);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v74[0] = swift_getObjectType();
      sub_1000F5104(&qword_100950AE0, &qword_1007B6930);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000668C(v41, v42, v75);

      *(v37 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to decode the parameters of RDSwiftInvocable {error: %s, invocation: %s}", v37, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  else
  {
    v44 = v12;
    v45 = v65;
    (*(v12 + 32))(v65, v15, v31);
    type metadata accessor for RDXPCStorePerformer();
    throwingCast<A>(_:as:failureMessage:)();
    v47 = v73;
    sub_1001AFC7C(v61, v62, v28, v45, v63);
    v69 = v47;
    v48 = type metadata accessor for PropertyListEncoder();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_10003B2E4(_swiftEmptyArrayStorage);
    v51 = *(v25 + 48);
    v52 = *(v25 + 52);
    swift_allocObject();
    v53 = v28;
    v54 = REMStoreObjectsContainer.init(store:storages:)();
    static CodingUserInfoKey.remStoragesContainer.getter();
    v76 = v25;
    v75[0] = v54;

    v55 = dispatch thunk of PropertyListEncoder.userInfo.modify();
    sub_10000E350(v75, v21);
    v55(v74, 0);
    sub_10000CB48(&qword_100950AE8, &qword_100950AD0, &qword_1007B6928);
    v56 = v63;
    v57 = v60;
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    dispatch thunk of REMStoreObjectsContainer.storages.getter();

    (*(v59 + 8))(v56, v57);
    (*(v44 + 8))(v65, v71);
  }

  return v35;
}