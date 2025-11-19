uint64_t sub_1003D8DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138BBE0;
    sub_100032504(a2, v7, type metadata accessor for OwnedBeaconRecord);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_100008C00();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    sub_100032504(a2, v7, type metadata accessor for OwnedBeaconRecord);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1003D9064(uint64_t a1, int a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v113 = a4;
  v114 = a3;
  v105 = a2;
  v103 = type metadata accessor for SystemInfo.DeviceLockState();
  v102 = *(v103 - 8);
  v6 = *(v102 + 64);
  v7 = __chkstk_darwin(v103);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v95 - v9;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v97 = *(v10 - 8);
  v11 = *(v97 + 64);
  v12 = __chkstk_darwin(v10);
  v106 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v118 = &v95 - v15;
  v98 = v16;
  __chkstk_darwin(v14);
  v99 = &v95 - v17;
  v18 = type metadata accessor for ShareRecord();
  v111 = *(v18 - 8);
  v19 = *(v111 + 8);
  __chkstk_darwin(v18 - 8);
  v110 = (&v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v95 - v23;
  v25 = type metadata accessor for DirectorySequence();
  v107 = *(v25 - 8);
  v108 = v25;
  v26 = *(v107 + 64);
  __chkstk_darwin(v25);
  v120 = (&v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v95 - v34;
  v96 = *(v4 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
  v112 = v4;
  v36 = *(v4 + 280);
  v95 = v10;
  v37 = *(v10 + 20);
  v104 = v36;
  *&v119 = *(v36 + 168);
  v38 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1000076D4(v28, qword_10177A518);
  v116 = v37;
  v117 = a1;
  UUID.uuidString.getter();
  v39 = v28;
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v38);
  v121 = _swiftEmptyArrayStorage;
  v122[0] = _swiftEmptyArrayStorage;
  v40 = [objc_opt_self() defaultManager];
  v109 = v35;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v115 = v29;
  v41 = *(v29 + 48);
  if (v41(v24, 1, v28) != 1)
  {
    v42 = *(v115 + 32);
    v43 = (v115 + 8);
    do
    {
      v42(v33, v24, v28);
      v44 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v33, v119, v122, &v121);
      objc_autoreleasePoolPop(v44);
      (*v43)(v33, v28);
      DirectorySequence.next()();
    }

    while (v41(v24, 1, v28) != 1);
  }

  (*(v107 + 8))(v120, v108);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v45 = static OS_os_log.default.getter();
  v29 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v35 = swift_allocObject();
  *(v35 + 1) = xmmword_10138BBE0;
  v37 = v122[0];
  v46 = *(v122[0] + 16);
  *(v35 + 7) = &type metadata for Int;
  *(v35 + 8) = &protocol witness table for Int;
  *(v35 + 4) = v46;
  sub_1003FD7F0(&qword_1016B14E0, &type metadata accessor for URL);

  v47 = v109;
  v48 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v49;
  *(v35 + 12) = &type metadata for String;
  v120 = sub_100008C00();
  *(v35 + 13) = v120;
  *(v35 + 9) = v48;
  *(v35 + 10) = v28;
  os_log(_:dso:log:_:_:)();

  (*(v115 + 8))(v47, v39);

  v38 = *(v37 + 16);
  v24 = v111;
  v50 = v112;
  a1 = v110;
  if (v38)
  {
    v33 = 0;
    while (1)
    {
      if (v33 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      result = sub_100032504(v37 + ((v24[80] + 32) & ~v24[80]) + *(v24 + 9) * v33, a1, type metadata accessor for ShareRecord);
      if (!*(v50 + 40))
      {
        break;
      }

      ++v33;
      v52 = *(v50 + 40);

      sub_100528B94(a1, sub_1003EDE24, 0);

      sub_10040A66C(a1, type metadata accessor for ShareRecord);
      if (v38 == v33)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v53 = v99;
    sub_100032504(v117, v99, type metadata accessor for OwnedBeaconRecord);
    sub_100032504(v53, v118, type metadata accessor for OwnedBeaconRecord);
    v54 = *(v97 + 80);
    v55 = (v54 + 16) & ~v54;
    v115 = v55 + v98;
    v56 = (v55 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
    v111 = v54;
    v109 = (v57 + 8);
    v58 = swift_allocObject();
    v112 = v55;
    sub_10040A014(v53, v58 + v55, type metadata accessor for OwnedBeaconRecord);
    v107 = v56;
    v59 = (v58 + v56);
    v60 = v113;
    *v59 = v114;
    v59[1] = v60;
    v110 = v58;
    v108 = v57;
    *(v58 + v57) = v96;

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v61 = swift_allocObject();
    v119 = xmmword_101385D80;
    *(v61 + 16) = xmmword_101385D80;
    v62 = type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v120;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = v64;
    *(v61 + 32) = v63;
    *(v61 + 40) = v65;
    os_log(_:dso:log:_:_:)();

    v66 = v100;
    static SystemInfo.lockState.getter();
    v67 = v102;
    v68 = v101;
    v69 = v103;
    (*(v102 + 104))(v101, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v103);
    sub_1003FD7F0(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v70 = *(v67 + 8);
    v70(v68, v69);
    v70(v66, v69);
    if (v122[0] == v121)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      sub_100139CA0();
      v71 = swift_allocError();
      *v72 = 0;
      static os_log_type_t.default.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      v73 = swift_allocObject();
      *(v73 + 16) = v119;
      v74 = v118 + *(v95 + 20);
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v120;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = v76;
      *(v73 + 32) = v75;
      *(v73 + 40) = v77;
      os_log(_:dso:log:_:_:)();

      v114(v71);
    }

    v78 = dispatch_group_create();
    dispatch_group_enter(v78);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v79 = *(v62 - 8);
    v80 = *(v79 + 72);
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v119;
    v83 = v117;
    (*(v79 + 16))(v82 + v81, v117 + v116, v62);
    v84 = swift_allocObject();
    *(v84 + 16) = v78;
    v120 = v78;
    v85 = v104;
    sub_1009C99C0(v82, sub_10040616C, v84);

    OS_dispatch_group.wait()();
    v86 = v106;
    sub_100032504(v83, v106, type metadata accessor for OwnedBeaconRecord);
    v87 = v108;
    v88 = swift_allocObject();
    v89 = v112;
    sub_10040A014(v86, v88 + v112, type metadata accessor for OwnedBeaconRecord);
    v90 = (v88 + v107);
    v91 = v109;
    v92 = v110;
    *v90 = sub_100406168;
    v90[1] = v92;
    v93 = v88 + v87;
    *v93 = v85;
    v91[v88] = v105 & 1;
    *(v93 + 9) = 1;

    sub_100AAA40C(v83, sub_100406178, v88);

    sub_10040A66C(v118, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for Transaction();
    sub_100032504(v83, v86, type metadata accessor for OwnedBeaconRecord);
    v94 = swift_allocObject();
    sub_10040A014(v86, v94 + v89, type metadata accessor for OwnedBeaconRecord);
    static Transaction.asyncTask(name:block:)();
  }

  return result;
}

uint64_t sub_1003D9EB4(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SystemInfo.DeviceLockState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v2;
  v26 = *(v2 + 56);
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  static SystemInfo.lockState.getter();
  (*(v14 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v13);
  sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v14 + 8);
  v29(v18, v13);
  v29(v20, v13);
  if (v28)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 == -1)
    {
LABEL_4:
      os_log(_:dso:log:_:_:)();
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v31 = v54;
      v30 = v55;
      (*(v54 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v55);
      v32 = static OS_dispatch_queue.global(qos:)();
      (*(v31 + 8))(v12, v30);
      v33 = swift_allocObject();
      v34 = v57;
      *(v33 + 16) = v56;
      *(v33 + 24) = v34;
      v69 = sub_10040B9FC;
      v70 = v33;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v35 = &unk_10161B8D0;
LABEL_10:
      v67 = sub_100006684;
      v68 = v35;
      v44 = _Block_copy(&aBlock);

      v45 = v58;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v36 = v53;
  v37 = *(*(v53 + 280) + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v38 = aBlock[5];
  QueueSynchronizer.conditionalSync<A>(_:)();

  if (aBlock != 1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v47 = v54;
    v46 = v55;
    (*(v54 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v55);
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v12, v46);
    v48 = swift_allocObject();
    v49 = v57;
    *(v48 + 16) = v56;
    *(v48 + 24) = v49;
    v69 = sub_10040A374;
    v70 = v48;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v35 = &unk_10161B830;
    goto LABEL_10;
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v40 = v54;
  v39 = v55;
  (*(v54 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v55);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v40 + 8))(v12, v39);
  v41 = swift_allocObject();
  v42 = v56;
  v43 = v57;
  v41[2] = v36;
  v41[3] = v42;
  v41[4] = v43;
  v69 = sub_10040A3D8;
  v70 = v41;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_100006684;
  v68 = &unk_10161B880;
  v44 = _Block_copy(&aBlock);

  v45 = v58;
  static DispatchQoS.unspecified.getter();
  v64 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v50 = v59;
  v51 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v62 + 8))(v50, v51);
  (*(v60 + 8))(v45, v61);
}

uint64_t sub_1003DA80C(void (*a1)(char *))
{
  v2 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5);
  return sub_10000B3A8(v5, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003DA8F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v58 = a2;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v57 = v53 - v7;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v56 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = v53 - v12;
  v13 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v53 - v15);
  v17 = type metadata accessor for OwnedBeaconRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v53 - v23;
  v25 = *(a1 + 280);
  v26 = sub_100AA5C88();
  v27 = v26[2];
  if (v27)
  {
    v54 = a3;
    sub_100032504(v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v24, type metadata accessor for OwnedBeaconRecord);

    v28 = v18;
    v29 = v17;
    if (v27 != 1)
    {
      v53[1] = static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10138BBE0;
      sub_100EF8D90(v16);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      *(v30 + 56) = &type metadata for String;
      v34 = sub_100008C00();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      *(v30 + 96) = &type metadata for Int;
      *(v30 + 104) = &protocol witness table for Int;
      *(v30 + 64) = v34;
      *(v30 + 72) = v27;
      os_log(_:dso:log:_:_:)();
    }

    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    sub_100032504(v24, v22, type metadata accessor for OwnedBeaconRecord);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100008C00();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    os_log(_:dso:log:_:_:)();

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v39 = *(v17 + 20);
    v40 = type metadata accessor for UUID();
    v41 = *(v40 - 8);
    v42 = v55;
    (*(v41 + 16))(v55, &v24[v39], v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    sub_1000034A4();
    v43 = v56;
    sub_1000D2A70(v42, v56, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v43);

    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
    v44 = v57;
    sub_100032504(v24, v57, type metadata accessor for OwnedBeaconRecord);
    (*(v28 + 56))(v44, 0, 1, v29);
    v58(v44);
    sub_10000B3A8(v44, &unk_1016A9A20, &qword_10138B280);
    return sub_10040A66C(v24, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {

    v47 = *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);
    v48 = *(a1 + 72);
    __chkstk_darwin(v46);
    *&v53[-4] = a1;
    *&v53[-2] = v49;
    sub_1000BC4D4(&qword_10169F470, &qword_1013A0A40);
    OS_dispatch_queue.sync<A>(execute:)();
    v50 = swift_allocObject();
    v51 = v58;
    *(v50 + 16) = v58;
    *(v50 + 24) = a3;

    Future.addFailure(block:)();

    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = a3;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1003DAFF0(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v14[1] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  a2(v7);
  return sub_10000B3A8(v7, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_1003DB1D4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v34 - v8;
  v9 = type metadata accessor for UUID();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  v11 = __chkstk_darwin(v9);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v13;
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  sub_1000D2A70(a1, v20, &unk_1016A9A20, &qword_10138B280);
  v22 = String.init<A>(describing:)();
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_100008C00();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  os_log(_:dso:log:_:_:)();

  sub_1000D2A70(a1, v18, &unk_1016A9A20, &qword_10138B280);
  v25 = type metadata accessor for OwnedBeaconRecord();
  v26 = a1;
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    sub_10000B3A8(v18, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v27 = v37;
    v28 = *(v37 + 16);
    v29 = v35;
    v28(v35, &v18[*(v25 + 20)], v9);
    sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
    v30 = v36;
    (*(v27 + 32))(v36, v29, v9);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v31 = v39;
    v28(v39, v30, v9);
    (*(v27 + 56))(v31, 0, 1, v9);
    sub_1000034A4();
    v32 = v38;
    sub_1000D2A70(v31, v38, &qword_1016980D0, &unk_10138F3B0);
    sub_100EEAE98(v32);

    sub_10000B3A8(v31, &qword_1016980D0, &unk_10138F3B0);
    (*(v27 + 8))(v30, v9);
  }

  return v41(v26);
}

uint64_t sub_1003DB678@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v14 = v19[1];
  KeyPath = swift_getKeyPath();
  sub_101075400(KeyPath, v14, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    v16 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v18 = *(v2 + 280);
    sub_100AA33AC(v12, a1);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1003DB8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1003DB904, 0, 0);
}

uint64_t sub_1003DB904()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = &unk_1013A09B0;
  *(v2 + 24) = v1;
  v3 = async function pointer to withTimeout<A>(_:block:)[1];

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v4 = v0;
  v4[1] = sub_1003DBA24;

  return withTimeout<A>(_:block:)(v0 + 7, 8000000000000000000, 0, &unk_1013A09C0, v2, v5);
}

uint64_t sub_1003DBA24()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_10040B9D4;
  }

  else
  {

    v6 = sub_1003DBB6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003DBB6C()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003DBBD4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1003DBC68;

  return daemon.getter();
}

uint64_t sub_1003DBC68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  v3[4] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  v7 = type metadata accessor for Daemon();
  v3[6] = v7;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[7] = v9;
  v10 = sub_1003FD7F0(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_1003DBE48;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_1003DBE48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v10 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v6 = sub_1003DCBE4;
    v7 = 0;
  }

  else
  {
    v8 = v4[4];

    v6 = sub_1003DBF84;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1003DBF84()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + 168);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  static Keychain.deleteData(account:service:)();
  if (v1)
  {

    v3 = sub_10040BA04;
  }

  else
  {
    v3 = sub_1003DC080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003DC080()
{
  v1 = *(v0 + 64);

  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1003DC118;

  return daemon.getter();
}

uint64_t sub_1003DC118(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;
  v3[11] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[12] = v7;
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v7 = v5;
  v7[1] = sub_1003DC2CC;
  v10 = v3[7];
  v11 = v3[6];

  return ActorServiceDaemon.getService<A>()(v11, found, v10, v9);
}

uint64_t sub_1003DC2CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[11];
  if (v1)
  {

    v8 = sub_1003DCC48;
  }

  else
  {

    v4[14] = a1;
    v8 = sub_1003DC424;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1003DC424()
{
  v1 = v0[14];
  v0[15] = v0[13];
  v0[16] = v1;
  v2 = v0[2];
  v3 = swift_allocObject();
  v0[17] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to unsafeBlocking<A>(_:)[1];

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1003DC520;

  return unsafeBlocking<A>(_:)(v5, sub_100408938, v3, &type metadata for () + 8);
}

uint64_t sub_1003DC520()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1003DC638, 0, 0);
}

uint64_t sub_1003DC638()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1003DC6C4;

  return sub_1004042AC();
}

uint64_t sub_1003DC6C4()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1003DC7C0, 0, 0);
}

void sub_1003DC7C0()
{
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  if (qword_101694928 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177B2F0);
  static NSFileManager.removeDirectory(url:)();
  if (v1)
  {
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C348);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error from observationStore.purge: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  if (*(v0[2] + 40))
  {
    if (qword_101695218 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v2, qword_1016C6BF8);
    static NSFileManager.removeDirectory(url:)();
    v9 = v0[16];
    v10 = v0[8];

    v11 = v0[1];

    v11();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003DCBE4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1003DCC48()
{
  v0[15] = 0;
  v0[16] = 0;
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = async function pointer to unsafeBlocking<A>(_:)[1];

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1003DC520;

  return unsafeBlocking<A>(_:)(v4, sub_100408938, v2, &type metadata for () + 8);
}

uint64_t sub_1003DCD38(uint64_t a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &aBlock[-1] - v6;
  sub_100405140();
  v8 = *(a1 + 280);
  sub_100A85AEC();
  while (1)
  {
    v15 = *(v8 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v16 = aBlock[0];
    v8 = type metadata accessor for TaskPriority();
    v17 = *(*(v8 - 8) + 56);
    v17(v7, 1, 1, v8);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;

    sub_10025EDD4(0, 0, v7, &unk_101411AD0, v18);

    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();

    if (a2)
    {
      v17(v7, 1, 1, v8);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = a2;

      sub_10025F0D4(0, 0, v7, &unk_10139D730, v19);
    }

    sub_100A3F4E8();
    if (qword_1016944B0 != -1)
    {
      swift_once();
    }

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v20 = *(a1 + 56);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_100408A28;
    *(v21 + 24) = a1;
    aBlock[4] = sub_10040B9F8;
    v25 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10161B600;
    a2 = _Block_copy(aBlock);
    v7 = v25;

    dispatch_sync(v20, a2);
    _Block_release(a2);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C348);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error purging beacon store files: %@.", v12, 0xCu);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003DD220(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1003DD30C;

  return v6();
}

uint64_t sub_1003DD30C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1003DD418()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v9 = *(v0 + 280);
  v10 = *(v0 + 160);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v0;
  aBlock[4] = sub_10040A2DC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10161B6F0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1003FD7F0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

void sub_1003DD758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v29 - v14;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = sub_10040A2E4;
  v19[6] = v17;
  v20 = v16;

  sub_10025EDD4(0, 0, v15, &unk_1013A0A30, v19);

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B7F8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Waiting for manateeAvailable check to complete.", v24, 2u);
  }

  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v9, v4);
  OS_dispatch_group.wait(timeout:)();
  v25(v11, v4);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Timed out waiting for manateeAvailable.", v28, 2u);
    }
  }
}

void sub_1003DDAF8(char a1, NSObject *a2)
{
  v4 = [objc_opt_self() defaultStore];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 aa_primaryAppleAccount];

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446722;
    if (v8)
    {
      v13 = 0x6C696E2D746F6ELL;
    }

    else
    {
      v13 = 7104878;
    }

    if (v8)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_1000136BC(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    if (v8)
    {
      v16 = sub_10051441C();
    }

    else
    {
      v16 = 0;
    }

    *(v11 + 14) = v16;

    *(v11 + 22) = 1024;
    *(v11 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "primaryAccountModified account: %{public}s,      security: %lu with manatee enabled: %{BOOL}d.", v11, 0x1Cu);
    sub_100007BAC(v12);

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v17 = v8;
  v18 = sub_10051441C();

  if (v18 != 4)
  {
LABEL_18:
    a1 = 0;
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  sub_1000034A4();
  sub_100EEA588(v8 != 0, a1 & 1);

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  static Transaction.named<A>(_:with:)();

  dispatch_group_leave(a2);
}

void sub_1003DDE30(uint64_t a1, int a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v71 = a4;
  v72 = a3;
  v69 = a2;
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v59 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for UUID();
  v63 = *(v66 - 8);
  v14 = *(v63 + 64);
  __chkstk_darwin(v66);
  v60 = v15;
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v61 = &v59 - v18;
  v64 = type metadata accessor for LocalFindableAccessoryRecord();
  v19 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SharedBeaconRecord(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v59 - v26;
  v28 = type metadata accessor for OwnedBeaconRecord();
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v59 - v33;
  v70 = v4;
  v35 = *(v4 + 280);
  sub_100025020(a1, &v74);
  if (v75)
  {
    sub_100031694(&v74, v76);
    sub_10001F280(v76, &v74);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (swift_dynamicCast())
    {
      sub_10040A014(v34, v32, type metadata accessor for OwnedBeaconRecord);
      sub_1003DF44C(v32, v69 & 1, v72, v71);
      sub_10040A66C(v32, type metadata accessor for OwnedBeaconRecord);
    }

    else if (swift_dynamicCast())
    {
      sub_10040A014(v27, v25, type metadata accessor for SharedBeaconRecord);
      sub_1003E0AE0(v25, v72, v71);
      sub_10040A66C(v25, type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v41 = v65;
      if (swift_dynamicCast())
      {
        v42 = swift_allocObject();
        v43 = v71;
        *(v42 + 16) = v72;
        *(v42 + 24) = v43;
        v44 = type metadata accessor for TaskPriority();
        v45 = v61;
        (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
        v46 = v63;
        v47 = v62;
        v48 = a1;
        v49 = v66;
        (*(v63 + 16))(v62, v48, v66);
        v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v51 = (v60 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
        v52 = swift_allocObject();
        *(v52 + 16) = 0;
        *(v52 + 24) = 0;
        (*(v46 + 32))(v52 + v50, v47, v49);
        v53 = (v52 + v51);
        *v53 = sub_1003FD88C;
        v53[1] = v42;

        sub_10025EDD4(0, 0, v45, &unk_1013BB9D0, v52);

        (v72)(0);
        sub_100007BAC(v76);
        sub_10040A66C(v41, type metadata accessor for LocalFindableAccessoryRecord);
LABEL_17:
        sub_100007BAC(&v74);
        return;
      }

      static os_log_type_t.error.getter();
      if (qword_101695068 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_101385D80;
      sub_10001F280(v76, v73);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      *(v54 + 56) = &type metadata for String;
      *(v54 + 64) = sub_100008C00();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      os_log(_:dso:log:_:_:)();

      sub_1003FD838();
      swift_allocError();
      *v58 = 3;
      v72();
    }

    sub_100007BAC(v76);
    goto LABEL_17;
  }

  sub_10000B3A8(&v74, &qword_101696920, &unk_10138B200);
  sub_100AC53EC(a1, v9);
  if ((*(v67 + 48))(v9, 1, v68) == 1)
  {
    sub_10000B3A8(v9, &unk_1016AF8B0, &unk_1013A0700);
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = sub_100008C00();
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    os_log(_:dso:log:_:_:)();

    type metadata accessor for SPOwnerSessionError(0);
    *&v74 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = v76[0];
    (v72)(v76[0]);
  }

  else
  {
    sub_10040A014(v9, v13, type metadata accessor for OwnedBeaconGroup);
    sub_1003E0D7C(v13, v69 & 1, v72, v71);
    sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
  }
}

void sub_1003DE798(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v4 = a1;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v4;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

LABEL_8:
  v6 = v3;
  a2();
}

uint64_t sub_1003DE85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v93 = a2;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v94 = v100[0];
  v14 = *(v3 + 280);
  v15 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock;
  v16 = *(v14 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  v89 = type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v17 = sub_10130980C(a1, v100[0]);

  v18 = *(v5 + 32);
  v91 = v9;
  v19 = *(v9 + 16);
  v92 = v12;
  v95 = v8;
  v19(v12, a1 + v18, v8);
  v20 = v5;
  v21 = *(v5 + 52);
  v22 = a1;
  v23 = (a1 + v21);
  v24 = *(a1 + v21);
  v97 = *(a1 + v21 + 8);
  v96 = v17;
  if (v17)
  {
    v88 = v24;
    if (v96 == 1)
    {
      v25 = (a1 + v20[9]);
      v26 = *v25;
      v27 = v25[1];
      sub_100017D5C(v24, v97);
      v90 = v26;
      sub_100017D5C(v26, v27);
      v28 = v95;
      v29 = v94;
    }

    else
    {
      v86 = v19;
      v63 = *(v14 + v15);
      sub_100017D5C(v24, v97);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();

      v64 = (a1 + v20[9]);
      v66 = *v64;
      v65 = v64[1];
      v67 = *v23;
      v68 = v23[1];
      v69 = (v22 + v20[12]);
      v71 = *v69;
      v70 = v69[1];
      sub_100017D5C(v66, v65);
      v87 = v67;
      v89 = v68;
      sub_100017D5C(v67, v68);
      v72 = v71;
      v90 = v70;
      sub_100017D5C(v71, v70);
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v100[0] = 0x7365547265646E75;
      v100[1] = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      v73 = v65;
      v74 = sub_100A7563C(v66, v65, v96);
      v76 = v75;
      v84 = v66;
      v98 = v74;
      v99 = v75;
      v85 = objc_autoreleasePoolPush();
      sub_100017D5C(v74, v76);
      v83 = v72;
      v77 = v72;
      v17 = v90;
      v78 = v87;
      v79 = v89;
      sub_100A76468(v77, v90, v87, v89, v74, v76, 1, &v98, v100);
      sub_100006654(0, 0xF000000000000000);
      sub_100016590(v74, v76);
      sub_10040A07C(v100);
      v81 = v98;
      v27 = v99;
      sub_100017D5C(v98, v99);
      objc_autoreleasePoolPop(v85);
      sub_100016590(v78, v79);
      sub_100016590(v83, v17);
      sub_100016590(v84, v73);
      v90 = v81;
      sub_100016590(v81, v27);
      v29 = v94;
      v19 = v86;
      v28 = v95;
    }

    sub_100017D5C(v90, v27);
    v30 = sub_101074900(v29);
    if (v30 < 0)
    {
      __break(1u);
    }

    else
    {
      v31 = v30;
      v32 = v19;
      v33 = sub_10107491C(v29);

      if ((v33 & 0x8000000000000000) == 0)
      {
        v34 = [objc_allocWithZone(SPOfflineAdvertisingConfiguration) initWithShortIntervalCount:v31 longIntervalCount:v33];
        v35 = v20[5];
        v36 = type metadata accessor for UUID();
        v37 = v93;
        (*(*(v36 - 8) + 16))(v93, v22 + v35, v36);
        v38 = type metadata accessor for OfflineFindingInfo();
        v39 = v92;
        v32(v37 + v38[5], v92, v28);
        sub_1000BC4D4(&qword_10169F460, &qword_1013A09F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10138BBE0;
        *(inited + 32) = 2;
        *(inited + 40) = v34;
        *(inited + 48) = 1;
        *(inited + 56) = v34;
        v41 = v28;
        v42 = sub_100909054(inited);
        swift_setDeallocating();
        v43 = v34;
        sub_1000BC4D4(&qword_10169F468, &qword_1013A09F8);
        swift_arrayDestroy();
        v44 = v90;
        sub_100006654(v90, v27);

        (*(v91 + 8))(v39, v41);
        *(v37 + v38[6]) = v96;
        v45 = (v37 + v38[7]);
        v46 = v97;
        *v45 = v88;
        v45[1] = v46;
        v47 = (v37 + v38[8]);
        *v47 = v44;
        v47[1] = v27;
        *(v37 + v38[9]) = v42;
        return (*(*(v38 - 1) + 56))(v37, 0, 1, v38);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v17 = v24;
  sub_100017D5C(v24, v97);

  if (qword_101694840 != -1)
  {
LABEL_20:
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177B060);
  v50 = v22;
  v51 = v90;
  sub_100032504(v50, v90, type metadata accessor for OwnedBeaconRecord);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v95;
  if (v54)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v100[0] = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = v20[5];
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    sub_10040A66C(v51, type metadata accessor for OwnedBeaconRecord);
    v62 = sub_1000136BC(v59, v61, v100);

    *(v56 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "Unable to get basePrimaryKeyIndex for %{private,mask.hash}s", v56, 0x16u);
    sub_100007BAC(v57);

    sub_100016590(v17, v97);
  }

  else
  {
    sub_100016590(v17, v97);

    sub_10040A66C(v51, type metadata accessor for OwnedBeaconRecord);
  }

  (*(v91 + 8))(v92, v55);
  v80 = type metadata accessor for OfflineFindingInfo();
  return (*(*(v80 - 8) + 56))(v93, 1, 1, v80);
}

id sub_1003DF44C(uint64_t a1, int a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v201 = a4;
  v202 = a3;
  LODWORD(v199) = a2;
  v192 = *v4;
  v194 = type metadata accessor for OSSignpostID();
  v193 = *(v194 - 8);
  v6 = v193[8];
  v7 = __chkstk_darwin(v194);
  __chkstk_darwin(v7);
  v9 = &v174 - v8;
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v198 = (&v174 - v12);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v195 = *(v13 - 8);
  v14 = *(v195 + 8);
  v15 = __chkstk_darwin(v13);
  v17 = (&v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v20 = &v174 - v19;
  v197 = v21;
  __chkstk_darwin(v18);
  v196 = &v174 - v22;
  v23 = type metadata accessor for StableIdentifier();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = v13;
  v27 = *(v13 + 24);
  v28 = a1;
  sub_100032504(a1 + v27, v26, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v35 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v36 = *(v26 + v35[12] + 8);

      v37 = *(v26 + v35[16] + 8);

      v38 = *(v26 + v35[20] + 8);

      v39 = *(v26 + v35[28] + 8);

      v191 = v4;
      v40 = *(v4 + 35);
      v41 = *(v200 + 5);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v42 = sub_100035730(a1 + v41, 0, 0);
      v43 = a1 + v41;
      v44 = v198;
      v45 = sub_10003ABC0(v198, v43, v42, 1);

      sub_10000B3A8(v44, &unk_101696900, &unk_10138B1E0);
      static os_log_type_t.default.getter();
      if (v45)
      {
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        sub_1003E49EC(v28, v199 & 1, v202, v201);
      }

      else
      {
        v94 = v199;
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v95 = v191;
        v96 = *&v191[OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager];
        v97 = v28;
        sub_10089102C(v28 + v41);
        v200 = type metadata accessor for OwnedBeaconRecord;
        v98 = v196;
        sub_100032504(v28, v196, type metadata accessor for OwnedBeaconRecord);
        v99 = *(v195 + 80);
        v100 = (v99 + 32) & ~v99;
        v101 = (v197 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
        v102 = swift_allocObject();
        LODWORD(v199) = v94 & 1;
        *(v102 + 16) = v94 & 1;
        *(v102 + 24) = v95;
        v198 = type metadata accessor for OwnedBeaconRecord;
        sub_10040A014(v98, v102 + v100, type metadata accessor for OwnedBeaconRecord);
        v103 = (v102 + v101);
        v105 = v201;
        v104 = v202;
        *v103 = v202;
        v103[1] = v105;

        Future.addSuccess(block:)();

        sub_100032504(v97, v98, v200);
        v106 = swift_allocObject();
        *(v106 + 16) = v199;
        *(v106 + 24) = v104;
        *(v106 + 32) = v105;
        *(v106 + 40) = v95;
        sub_10040A014(v98, v106 + ((v99 + 48) & ~v99), v198);

        Future.addFailure(block:)();
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v30 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v31 = *(v26 + v30[12] + 8);

      v32 = *(v26 + v30[16] + 8);

      v33 = *(v26 + v30[20] + 8);

      sub_1003D9064(a1, 1, v202, v201);
LABEL_25:
      v107 = type metadata accessor for UUID();
      return (*(*(v107 - 8) + 8))(v26, v107);
    }

LABEL_6:
    sub_10040A66C(v26, type metadata accessor for StableIdentifier);
    return sub_1003D9064(a1, 1, v202, v201);
  }

  v185 = v20;
  v183 = v6;
  v184 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v9;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  v188 = v17;
  v191 = v4;
  v46 = v26[1];
  v181 = *v26;
  v178 = v46;
  v47 = v26[3];
  v182 = v26[2];
  v180 = v47;
  v48 = v26[5];
  v179 = v26[4];
  v189 = v48;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v49 = qword_10177C3B0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v50 = swift_allocObject();
  v174 = xmmword_101385D80;
  *(v50 + 16) = xmmword_101385D80;
  *(v50 + 56) = &type metadata for Bool;
  *(v50 + 64) = &protocol witness table for Bool;
  LODWORD(v190) = v199 & 1;
  *(v50 + 32) = v199 & 1;
  v177 = v49;
  os_log(_:dso:log:_:_:)();

  v51 = type metadata accessor for SPAnalyticsItemPairEvent(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = sub_101164980(0);
  v176 = type metadata accessor for Transaction();
  v55 = a1;
  v56 = v196;
  sub_100032504(a1, v196, type metadata accessor for OwnedBeaconRecord);
  v57 = *(v195 + 80);
  v58 = (v57 + 24) & ~v57;
  v59 = v197 + 7;
  v60 = (v197 + 7 + v58) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v191;
  *(v61 + 16) = v191;
  v195 = type metadata accessor for OwnedBeaconRecord;
  sub_10040A014(v56, v61 + v58, type metadata accessor for OwnedBeaconRecord);
  v63 = v61 + v60;
  v187 = v54;
  *v63 = v54;
  *(v63 + 8) = v190;

  static Transaction.asyncTask(name:block:)();

  v197 = v55;
  v64 = v185;
  sub_100032504(v55, v185, type metadata accessor for OwnedBeaconRecord);
  sub_100032504(v64, v188, type metadata accessor for OwnedBeaconRecord);
  v65 = (v57 + 64) & ~v57;
  v175 = v59;
  v66 = (v59 + v65) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v66 + 39) & 0xFFFFFFFFFFFFFFF8;
  v176 = v57;
  v69 = swift_allocObject();
  v70 = v180;
  *(v69 + 16) = v182;
  *(v69 + 24) = v70;
  v71 = v178;
  *(v69 + 32) = v181;
  *(v69 + 40) = v71;
  v72 = v201;
  *(v69 + 48) = v202;
  *(v69 + 56) = v72;
  sub_10040A014(v64, v69 + v65, v195);
  v73 = (v69 + v66);
  v74 = v189;
  *v73 = v179;
  v73[1] = v74;
  v75 = v69 + v67;
  *v75 = v62;
  *(v75 + 8) = v190;
  v195 = v69;
  *(v69 + v68) = v187;
  v76 = *(v62 + 35);
  v77 = *(v200 + 5);
  v78 = qword_101694920;

  v79 = v71;
  v80 = v186;
  if (v78 != -1)
  {
    swift_once();
  }

  v81 = v197;
  v82 = sub_100035730(v197 + v77, 0, 0);
  v83 = v198;
  v84 = sub_10003ABC0(v198, v81 + v77, v82, 1);

  sub_10000B3A8(v83, &unk_101696900, &unk_10138B1E0);
  v85 = v194;
  if ((v84 & 1) == 0)
  {
    sub_10040A66C(v188, type metadata accessor for OwnedBeaconRecord);

    static os_log_type_t.default.getter();
    v108 = v177;
    os_log(_:dso:log:_:_:)();
    v109 = v108;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    v110 = *&v191[OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager];
    v200 = sub_10089102C(v81 + v77);
    v111 = v193;
    v112 = v193[2];
    v198 = (v193 + 2);
    v199 = v112;
    v113 = v184;
    v112(v184, v80, v85);
    v114 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v197 = *(v111 + 80);
    v115 = v80;
    v116 = v114;
    v189 = v114;
    v117 = v183 + v114;
    v191 = v183 + v114;
    v118 = ((v183 + v114) & 0xFFFFFFFFFFFFFFF8) + 8;
    v196 = v118;
    v119 = (((v183 + v114) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v185 = v119;
    v120 = (v119 + 23) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    v188 = v111[4];
    v188(v121 + v116, v113, v85);
    v117[v121] = v190;
    v122 = (v121 + v118);
    v183 = sub_1003FDAF4;
    v123 = v195;
    *v122 = sub_1003FDAF4;
    v122[1] = v123;
    v124 = (v121 + v119);
    v125 = v201;
    *v124 = v202;
    v124[1] = v125;
    *(v121 + v120) = v192;

    Future.addSuccess(block:)();

    v199(v113, v115, v85);
    v126 = swift_allocObject();
    v188(v126 + v189, v113, v85);
    v191[v126] = v190;
    v127 = (v126 + v196);
    *v127 = v183;
    v127[1] = v123;
    v128 = &v185[v126];
    *v128 = v202;
    *(v128 + 1) = v125;
    *(v126 + v120) = v192;

    Future.addFailure(block:)();

    return (v193[1])(v115, v85);
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v203 = v182;
  v204 = v70;
  sub_1000DF96C();

  v86 = Data.init<A>(hexString:)();
  v88 = v188;
  if (v87 >> 60 == 15)
  {
LABEL_21:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1003FD838();
    swift_allocError();
    *v93 = 3;
    v202();

    return sub_10040A66C(v88, type metadata accessor for OwnedBeaconRecord);
  }

  v89 = v86;
  v90 = v87;
  v203 = v181;
  v204 = v79;

  v91 = Data.init<A>(hexString:)();
  if (v92 >> 60 == 15)
  {
    sub_100006654(v89, v90);
    goto LABEL_21;
  }

  v129 = v92;
  v197 = v91;
  v130 = *(v88 + *(v200 + 17));
  My = type metadata accessor for Feature.FindMy();
  v205 = My;
  v206 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v132 = sub_1000280DC(&v203);
  (*(*(My - 8) + 104))(v132, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v203);
  v198 = v129;
  if ((My & 1) == 0 || v130 != 22034)
  {
    v137 = *(v88 + *(v200 + 16));
    v208 = &type metadata for UnpairData;
    v138 = swift_allocObject();
    v207 = v138;
    v138[2] = v89;
    v138[3] = v90;
    v139 = v89;
    v140 = v197;
    v138[4] = v197;
    v138[5] = v129;
    v141 = v189;
    v138[6] = v179;
    v138[7] = v141;
    v138[8] = v130;
    v138[9] = v137;

    v194 = v139;
    sub_10002E98C(v139, v90);
    sub_10002E98C(v140, v129);
LABEL_35:
    v164 = v176;
    sub_1003E2BB4(v88, &v207, v199 & 1, 1);
    v165 = v196;
    sub_100032504(v88, v196, type metadata accessor for OwnedBeaconRecord);
    v166 = (v164 + 25) & ~v164;
    v167 = (v175 + v166) & 0xFFFFFFFFFFFFFFF8;
    v168 = swift_allocObject();
    v169 = v187;
    *(v168 + 16) = v187;
    *(v168 + 24) = 1;
    sub_10040A014(v165, v168 + v166, type metadata accessor for OwnedBeaconRecord);
    v170 = (v168 + v167);
    v171 = v201;
    v172 = v202;
    *v170 = v202;
    v170[1] = v171;

    Future.addSuccess(block:)();

    v173 = swift_allocObject();
    v173[2] = v169;
    v173[3] = v172;
    v173[4] = v171;

    Future.addFailure(block:)();

    sub_100006654(v140, v198);
    sub_100006654(v194, v90);

    sub_10040A66C(v88, type metadata accessor for OwnedBeaconRecord);
    return sub_100007BAC(&v207);
  }

  v133 = v189;

  v134 = sub_100260364(v179, v133);
  v136 = v135;
  v203 = v134;
  v204 = v135;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v134, v136);
    sub_1003FDE68();
    swift_allocError();
    v202();

    sub_100006654(v197, v198);
    sub_100006654(v89, v90);

    return sub_10040A66C(v188, type metadata accessor for OwnedBeaconRecord);
  }

  v142 = Data.trimmed.getter();
  v144 = v143;
  sub_100016590(v134, v136);
  sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = v174;
  *(inited + 32) = v142;
  *(inited + 40) = v144;
  sub_100017D5C(v142, v144);
  v146 = sub_1003E28E4(inited);
  swift_setDeallocating();
  sub_1003FDE14(inited + 32);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v147 = result;
    v193 = v146;
    v194 = v89;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v149 = result;
      chipID = MobileGestalt_get_chipID();

      v203 = uniqueChipID;
      v151 = dispatch thunk of CustomStringConvertible.description.getter();
      v192 = v152;
      v203 = chipID;
      v190 = dispatch thunk of CustomStringConvertible.description.getter();
      v186 = v153;
      v154 = sub_100EF9784();
      v156 = v155;
      v88 = v188;
      v157 = v188 + *(v200 + 5);
      v158 = UUID.uuidString.getter();
      v160 = v159;
      v208 = &type metadata for AirPodsUnpairData;
      v161 = swift_allocObject();
      v207 = v161;
      sub_100016590(v142, v144);
      v162 = v192;
      *(v161 + 16) = v151;
      *(v161 + 24) = v162;
      v163 = v186;
      *(v161 + 32) = v190;
      *(v161 + 40) = v163;
      *(v161 + 48) = v154;
      *(v161 + 56) = v156;
      *(v161 + 64) = v158;
      *(v161 + 72) = v160;
      *(v161 + 80) = 1;
      *(v161 + 88) = v193;
      v140 = v197;
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E0AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100032504(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  result = sub_10040A014(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SharedBeaconRecord);
  v13 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  if (*(a1 + *(v7 + 44)) == -1 && *(a1 + *(v7 + 48)) == -1)
  {
    if (*(v3 + 40))
    {
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100406AD0;
      *(v15 + 24) = v11;

      sub_10052B490(a1, sub_1003FD88C, v15);
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v3 + 40))
    {
      v14 = swift_allocObject();
      *(v14 + 16) = sub_100406AD0;
      *(v14 + 24) = v11;

      sub_10052D47C(a1, sub_10040BA44, v14);
LABEL_5:
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E0D7C(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v64 = a4;
  v63 = a3;
  v62 = a2;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v59 = &v58 - v7;
  v82 = type metadata accessor for SystemInfo.DeviceLockState();
  v8 = *(v82 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v82);
  v81 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v58 - v12;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v58 - v15;
  v83 = type metadata accessor for OwnedBeaconRecord();
  v17 = *(v83 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v83);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v25 = sub_100519FB0();
  v26 = v24;
  v27 = v25 + 56;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 56);
  v31 = (v28 + 63) >> 6;
  v74 = v21 + 16;
  v73 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v71 = (v8 + 8);
  v72 = (v8 + 104);
  v67 = (v17 + 48);
  v66 = (v17 + 56);
  v78 = v21;
  v69 = (v21 + 8);
  v86 = v25;

  v32 = 0;
  v65 = 0;
  v68 = 0;
  v84 = xmmword_101385D80;
  v76 = v26;
  v77 = v16;
  v79 = v20;
  v75 = v31;
  v70 = v27;
  if (v30)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        (*(v78 + 16))(v26, *(v86 + 48) + *(v78 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v20);
        v87 = *(v85 + 280);
        static os_log_type_t.info.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v30 &= v30 - 1;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v35 = swift_allocObject();
        *(v35 + 16) = v84;
        v36 = v26;
        v37 = UUID.uuidString.getter();
        v39 = v38;
        *(v35 + 56) = &type metadata for String;
        *(v35 + 64) = sub_100008C00();
        *(v35 + 32) = v37;
        *(v35 + 40) = v39;
        os_log(_:dso:log:_:_:)();

        v40 = v80;
        static SystemInfo.lockState.getter();
        v42 = v81;
        v41 = v82;
        (*v72)(v81, v73, v82);
        sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
        LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
        v43 = *v71;
        (*v71)(v42, v41);
        v43(v40, v41);
        if ((v37 & 1) == 0)
        {
          break;
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v33 = v77;
        (*v66)(v77, 1, 1, v83);
        v20 = v79;
        v31 = v75;
LABEL_6:
        v27 = v70;
        v26 = v76;
        (*v69)(v76, v20);
        sub_10000B3A8(v33, &unk_1016A9A20, &qword_10138B280);
        if (!v30)
        {
          goto LABEL_7;
        }
      }

      v44 = sub_100025044();
      __chkstk_darwin(v44);
      *(&v58 - 2) = v36;
      v33 = v77;
      v45 = v68;
      sub_1012BBBD0(sub_100406F84, v44, v77);
      v68 = v45;

      v46 = (*v67)(v33, 1, v83);
      v20 = v79;
      v31 = v75;
      if (v46 == 1)
      {
        goto LABEL_6;
      }

      v47 = v60;
      sub_10040A014(v33, v60, type metadata accessor for OwnedBeaconRecord);
      v27 = v70;
      if (v65)
      {
        v65 = 1;
      }

      else
      {
        v48 = *(v83 + 20);
        if (qword_101694920 != -1)
        {
          swift_once();
        }

        v49 = sub_100035730(v47 + v48, 0, 0);
        v50 = v47 + v48;
        v51 = v59;
        v65 = sub_10003ABC0(v59, v50, v49, 1);

        sub_10000B3A8(v51, &unk_101696900, &unk_10138B1E0);
      }

      sub_10040A66C(v47, type metadata accessor for OwnedBeaconRecord);
      v26 = v76;
      (*v69)(v76, v20);
      if (!v30)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
LABEL_24:
      os_log(_:dso:log:_:_:)();
      v52 = v62 & 1;
      v53 = v61;
      return sub_1003E171C(v53, v52, v63, v64);
    }

    if (v34 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_11;
    }
  }

  static os_log_type_t.default.getter();
  if (v65)
  {
    if (qword_1016950C8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v54 = swift_allocObject();
  *(v54 + 16) = v84;
  *(v54 + 56) = &type metadata for Bool;
  *(v54 + 64) = &protocol witness table for Bool;
  v55 = v62;
  *(v54 + 32) = v62 & 1;
  os_log(_:dso:log:_:_:)();

  if (v55)
  {
    v53 = v61;
    v52 = 1;
    return sub_1003E171C(v53, v52, v63, v64);
  }

  sub_1003FD838();
  swift_allocError();
  *v57 = 7;
  v63();
}

uint64_t sub_1003E171C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v46 = a4;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177C418);
  sub_100032504(a1, v13, type metadata accessor for OwnedBeaconGroup);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v47 = a2;
  if (v17)
  {
    v18 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v9;
    v21 = v20;
    v48 = v20;
    *v19 = 141558531;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v22 = *(v18 + 24);
    type metadata accessor for UUID();
    v42 = v5;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
    v26 = sub_1000136BC(v23, v25, &v48);
    v5 = v42;

    *(v19 + 14) = v26;
    *(v19 + 22) = 1024;
    *(v19 + 24) = v47 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "unpairMultipartAccessory for group %{private,mask.hash}s. Force? %{BOOL}d", v19, 0x1Cu);
    sub_100007BAC(v21);
    v9 = v41;

    v8 = v18;
  }

  else
  {

    sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
  }

  v27 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_classicPairingSupport);
  sub_10042F918(a1 + *(v8 + 28));
  v28 = v44;
  sub_100032504(a1, v44, type metadata accessor for OwnedBeaconGroup);
  v29 = *(v9 + 80);
  v30 = (v29 + 24) & ~v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v5;
  sub_10040A014(v28, v31 + v30, type metadata accessor for OwnedBeaconGroup);
  v32 = (v31 + ((v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = a1;
  v43 = a1;
  v34 = v45;
  v35 = v46;
  *v32 = v45;
  v32[1] = v35;
  sub_100032504(v33, v28, type metadata accessor for OwnedBeaconGroup);
  v36 = (v29 + 16) & ~v29;
  v37 = swift_allocObject();
  sub_10040A014(v28, v37 + v36, type metadata accessor for OwnedBeaconGroup);
  v38 = v37 + ((v36 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v38 = sub_100406FA4;
  *(v38 + 8) = v31;
  *(v38 + 16) = v47 & 1;
  v39 = (v37 + ((v36 + v10 + 31) & 0xFFFFFFFFFFFFFFF8));
  *v39 = v34;
  v39[1] = v35;
  swift_retain_n();

  sub_1003E8454(v43, sub_100407038, v37);
}

uint64_t sub_1003E1B90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 + 64);
  *(v4 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1003E1C5C, 0, 0);
}

uint64_t sub_1003E1C5C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  sub_100032504(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = v3;
  sub_10040A014(v1, v5 + v4, type metadata accessor for OwnedBeaconRecord);
  v6 = async function pointer to unsafeBlocking<A>(_:)[1];

  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v7 = v0;
  v7[1] = sub_1003E1DB0;

  return unsafeBlocking<A>(_:)(v0 + 2, sub_100405C58, v5, v8);
}

uint64_t sub_1003E1DB0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1003E1EC8, 0, 0);
}

uint64_t sub_1003E1EC8()
{
  v1 = v0[5];
  v0[11] = v0[2];
  return _swift_task_switch(sub_1003E1EEC, v1, 0);
}

uint64_t sub_1003E1EEC()
{
  v1 = v0[11];
  v2 = v0[5];
  v0[12] = type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003E1FCC, 0, 0);
}

uint64_t sub_1003E1FCC()
{
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 40);

    return _swift_task_switch(sub_1003E2078, v1, 0);
  }

  else
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003E2078()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1003E211C, 0, 0);
}

uint64_t sub_1003E211C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1003E2184(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v80 = a8;
  v81 = a6;
  v78 = a1;
  v18 = type metadata accessor for OwnedBeaconRecord();
  v79 = *(v18 - 1);
  v19 = *(v79 + 64);
  __chkstk_darwin(v18);
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v82 = a2;
  v83 = a3;
  sub_1000DF96C();

  v20 = Data.init<A>(hexString:)();
  if (v21 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v22 = v20;
  v23 = v21;
  v82 = a4;
  v83 = a5;

  v24 = Data.init<A>(hexString:)();
  if (v25 >> 60 == 15)
  {
    sub_100006654(v22, v23);
LABEL_6:
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    sub_1003FD838();
    swift_allocError();
    *v26 = 3;
    v81();
  }

  v76 = v24;
  v77 = v25;
  v75 = a11;
  v28 = *(v80 + v18[17]);
  My = type metadata accessor for Feature.FindMy();
  v84 = My;
  v85 = sub_1003FD7F0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v30 = sub_1000280DC(&v82);
  (*(*(My - 8) + 104))(v30, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v82);
  if ((My & 1) == 0 || v28 != 22034)
  {
    v73 = a7;
    v34 = v80;
    v35 = *(v80 + v18[16]);
    v87 = &type metadata for UnpairData;
    v36 = swift_allocObject();
    v86[0] = v36;
    v36[2] = v22;
    v36[3] = v23;
    v37 = v76;
    v38 = v77;
    v36[4] = v76;
    v36[5] = v38;
    v36[6] = a9;
    v36[7] = a10;
    v36[8] = v28;
    v36[9] = v35;

    sub_10002E98C(v22, v23);
    sub_10002E98C(v37, v38);
    v74 = v22;
LABEL_16:
    v59 = v78 & 1;
    sub_1003E2BB4(v34, v86, a12 & 1, v78 & 1);
    sub_100032504(v34, &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v60 = (*(v79 + 80) + 25) & ~*(v79 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = a13;
    *(v61 + 24) = v59;
    sub_10040A014(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v61 + v60, type metadata accessor for OwnedBeaconRecord);
    v62 = (v61 + ((v19 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
    v63 = v81;
    v64 = v73;
    *v62 = v81;
    v62[1] = v64;

    Future.addSuccess(block:)();

    v65 = swift_allocObject();
    v65[2] = a13;
    v65[3] = v63;
    v65[4] = v64;

    Future.addFailure(block:)();

    sub_100006654(v76, v77);
    sub_100006654(v74, v23);
    return sub_100007BAC(v86);
  }

  v31 = sub_100260364(a9, a10);
  v33 = v32;
  v82 = v31;
  v83 = v32;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v31, v33);
    sub_1003FDE68();
    swift_allocError();
    v81();
    sub_100006654(v22, v23);
    sub_100006654(v76, v77);
  }

  v39 = Data.trimmed.getter();
  v41 = v40;
  sub_100016590(v31, v33);
  sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v39;
  *(inited + 40) = v41;
  v72 = v41;
  sub_100017D5C(v39, v41);
  v71 = sub_1003E28E4(inited);
  swift_setDeallocating();
  sub_1003FDE14(inited + 32);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v43 = result;
    v70 = v39;
    v73 = a7;
    v74 = v22;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v45 = result;
      chipID = MobileGestalt_get_chipID();

      v82 = uniqueChipID;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v47;
      v82 = chipID;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = sub_100EF9784();
      v52 = v51;
      v34 = v80;
      v53 = v80 + v18[5];
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v87 = &type metadata for AirPodsUnpairData;
      v57 = swift_allocObject();
      v86[0] = v57;
      sub_100016590(v70, v72);
      v58 = v68;
      *(v57 + 16) = v69;
      *(v57 + 24) = v58;
      *(v57 + 32) = v67;
      *(v57 + 40) = v49;
      *(v57 + 48) = v50;
      *(v57 + 56) = v52;
      *(v57 + 64) = v54;
      *(v57 + 72) = v56;
      *(v57 + 80) = 1;
      *(v57 + 88) = v71;
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003E28E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_10169F318, &qword_1013A0730);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v22 - v6);
  v8 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v24 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = (a1 + 32);
  v22 = v12;
  v17 = (v12 + 48);
  v18 = _swiftEmptyArrayStorage;
  v23 = v2;
  do
  {
    v25 = *v16;
    sub_100017D5C(v25, *(&v25 + 1));
    sub_1003E5670(&v25, v2, v7);
    sub_100016590(v25, *(&v25 + 1));
    if ((*v17)(v7, 1, v8) == 1)
    {
      sub_10000B3A8(v7, &qword_10169F318, &qword_1013A0730);
    }

    else
    {
      sub_10040A014(v7, v14, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
      sub_10040A014(v14, v24, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100A5CB78(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_100A5CB78(v19 > 1, v20 + 1, 1, v18);
      }

      v18[2] = v20 + 1;
      sub_10040A014(v24, v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20, type metadata accessor for AirPodsUnpairData.DeviceUnpairData);
      v2 = v23;
    }

    ++v16;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_1003E2BB4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v80 = a4;
  v81 = a3;
  v82 = a2;
  v88 = *v4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v67 = &v66 - v8;
  v66 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v66);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v66 - v16;
  v18 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v83 = Future.init()();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v84 = qword_10177C3B0;
  OSSignpostID.init(log:)();
  v90 = v17;
  v21 = *(v12 + 16);
  v77 = v12 + 16;
  v78 = v21;
  v21(v15, v17, v11);
  v76 = type metadata accessor for OwnedBeaconRecord;
  sub_100032504(a1, &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v86 = a1;
  v22 = *(v12 + 80);
  v23 = v11;
  v24 = (v22 + 16) & ~v22;
  v69 = v22;
  v75 = v13;
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v9 + 80);
  v27 = (v26 + v25 + 8) & ~v26;
  v74 = v22 | v26;
  v28 = (v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = v10;
  v29 = swift_allocObject();
  v85 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  v79 = v12;
  v72 = *(v12 + 32);
  v73 = v12 + 32;
  v68 = v15;
  v87 = v23;
  v72(v29 + v24, v15, v23);
  *(v30 + v25) = v89;
  v70 = type metadata accessor for OwnedBeaconRecord;
  v31 = v30 + v27;
  v32 = v85;
  sub_10040A014(v85, v31, type metadata accessor for OwnedBeaconRecord);
  v33 = v83;
  *(v30 + v28) = v83;
  *(v30 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v88;

  static os_signpost_type_t.begin.getter();
  v34 = v90;
  os_signpost(_:dso:log:name:signpostID:)();
  v78(v15, v34, v23);
  sub_100032504(v86, v32, v76);
  v35 = (v69 + 24) & ~v69;
  v36 = v35 + v75;
  v37 = (v26 + ((v35 + v75) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26;
  v38 = v37 + v71;
  v39 = (((v37 + v71) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v72(v40 + v35, v68, v87);
  *(v40 + v36) = v80 & 1;
  *(v40 + (v36 & 0xFFFFFFFFFFFFFFF8) + 8) = v89;
  sub_10040A014(v85, v40 + v37, v70);
  *(v40 + v38) = v81 & 1;
  v41 = v40 + (v38 & 0xFFFFFFFFFFFFFFF8);
  *(v41 + 8) = sub_1003FE1F4;
  *(v41 + 16) = v30;
  *(v40 + v39) = v88;
  v42 = v82;
  sub_100013894(v82, v96);

  v43 = v33;
  if (swift_dynamicCast())
  {
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v97 = v91;
    v98 = v92;
    sub_100A2C34C();
    v44 = *(v66 + 20);
    v45 = type metadata accessor for UUID();
    v46 = *(v45 - 8);
    v47 = v86 + v44;
    v48 = v67;
    (*(v46 + 16))(v67, v47, v45);
    (*(v46 + 56))(v48, 0, 1, v45);
    sub_100925EB8(v48, &v97, sub_1003FE308, v40);

    sub_100405A18(&v97);

    sub_10000B3A8(v48, &qword_1016980D0, &unk_10138F3B0);
    (*(v79 + 8))(v90, v87);
  }

  else
  {
    v49 = v86;
    v50 = v79;
    v51 = v87;
    sub_100013894(v42, v96);
    if (swift_dynamicCast())
    {
      v97 = v91;
      v98 = v92;
      v99 = v93;
      v100 = v94;
      v52 = *(v66 + 20);
      v53 = type metadata accessor for UUID();
      v54 = *(v53 - 8);
      v55 = v49 + v52;
      v56 = v67;
      (*(v54 + 16))(v67, v55, v53);
      (*(v54 + 56))(v56, 0, 1, v53);
      sub_10088BAE8(v56, &v97, sub_1003FE308, v40);

      sub_1004059C4(&v97);

      sub_10000B3A8(v56, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v57 = static os_log_type_t.error.getter();
      sub_100013894(v42, &v97);
      v58 = v84;
      if (os_log_type_enabled(v84, v57))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v91 = v60;
        *v59 = 136446210;
        v61 = _typeName(_:qualified:)();
        v63 = v62;
        sub_100007BAC(&v97);
        v64 = sub_1000136BC(v61, v63, &v91);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v57, "#Durian: unsupported unpair data type: %{public}s", v59, 0xCu);
        sub_100007BAC(v60);
        v43 = v83;
      }

      else
      {
        sub_100007BAC(&v97);
      }

      LOBYTE(v97) = 0;
      Future.finish(result:)();
    }

    (*(v50 + 8))(v90, v51);
  }

  return v43;
}

uint64_t sub_1003E3564(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v23 = a4;
  v24 = a5;
  v8 = type metadata accessor for OwnedBeaconRecord();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  *(v15 + 32) = v14;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for Transaction();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v14;

  static Transaction.asyncTask(name:block:)();

  if ((a3 & 1) != 0 && v14)
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    sub_100032504(v23, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v18 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    sub_10040A014(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for OwnedBeaconRecord);
    sub_10025EDD4(0, 0, v13, &unk_1013A0768, v19);
  }

  return v24(0);
}

uint64_t sub_1003E3894(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1003E38B8, 0, 0);
}

uint64_t sub_1003E38B8()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1003E392C, v1, 0);
}

uint64_t sub_1003E392C()
{
  v1 = *(v0 + 32);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = v1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003E3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return _swift_task_switch(sub_1003E3A98, 0, 0);
}

uint64_t sub_1003E3A98()
{
  v19 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[5] = sub_1000076D4(v3, qword_10177B7F8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315651;
    *(v9 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101352160, &v18);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v10 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10040A66C(v7, type metadata accessor for OwnedBeaconRecord);
    v14 = sub_1000136BC(v11, v13, &v18);

    *(v9 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Start discovery after unpairing %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10040A66C(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1003E3D6C;

  return daemon.getter();
}

uint64_t sub_1003E3D6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DiscoveryService();
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1003FD7F0(&unk_1016B7D70, type metadata accessor for DiscoveryService);
  *v6 = v12;
  v6[1] = sub_1003E3F48;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003E3F48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1003E4154;
    v8 = 0;
  }

  else
  {
    v9 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_1003E4084;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1003E4084()
{
  v1 = *(v0 + 80);
  sub_100BB9D48();

  return _swift_task_switch(sub_1003E40EC, 0, 0);
}

uint64_t sub_1003E40EC()
{
  v1 = v0[10];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003E4154()
{
  v16 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1000136BC(0xD000000000000028, 0x8000000101352160, &v15);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to get discovery service: %{public}@", v8, 0x16u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
  }

  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003E4324(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for Transaction();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  return a3(a1);
}

uint64_t sub_1003E44D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003E44F0, 0, 0);
}

uint64_t sub_1003E44F0()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = sub_10090907C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_1003E4564, v1, 0);
}

uint64_t sub_1003E4564()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v1;
  *(v4 + 56) = 0;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003E4650(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(void))
{
  v8 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = &type metadata for Bool;
  *(v9 + 64) = &protocol witness table for Bool;
  *(v9 + 32) = v8;
  os_log(_:dso:log:_:_:)();

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v8 & 1) != 0 || (a3)
  {
    return a4(v8);
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  sub_1003FD838();
  swift_allocError();
  *v10 = 0;
  a6();
}

uint64_t sub_1003E4838(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  os_log(_:dso:log:_:_:)();

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (a3)
  {
    return a4(0);
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  return a6(a1);
}

id sub_1003E49EC(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v114 = a3;
  v115 = a4;
  v109 = a2;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v105 = *(v5 - 1);
  v6 = *(v105 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v8;
  __chkstk_darwin(v7);
  v107 = &v93 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v108 = &v93 - v13;
  v104 = type metadata accessor for AccessoryUnpairData();
  v14 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StableIdentifier();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v112 = *(v21 - 8);
  v113 = v21;
  v22 = *(v112 + 64);
  v23 = __chkstk_darwin(v21);
  v111 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v116 = &v93 - v25;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_101385D80;
  v103 = a1 + v5[5];
  v27 = UUID.uuidString.getter();
  v117 = a1;
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100008C00();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = v117;
  os_log(_:dso:log:_:_:)();

  sub_100032504(v30 + v5[6], v20, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v31 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v32 = *&v20[v31[12] + 8];

    v33 = *&v20[v31[16] + 8];

    v34 = &v20[v31[20]];
    v36 = *v34;
    v35 = *(v34 + 1);
    v37 = *&v20[v31[28] + 8];

    v39 = v112;
    v38 = v113;
    v40 = v116;
    v102 = *(v112 + 32);
    v102(v116, v20, v113);
    v41 = sub_100EF9784();
    v43 = v42;
    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44)
    {

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      return (*(v39 + 8))(v40, v38);
    }

    v100 = v41;
    v101 = v36;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v46 = result;
      v99 = v35;
      uniqueChipID = MobileGestalt_get_uniqueChipID();

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v48 = result;
        chipID = MobileGestalt_get_chipID();

        v98 = *(v39 + 16);
        v98(v111, v116, v38);
        v118[0] = uniqueChipID;
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v50;
        v118[0] = chipID;
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v51;
        v52 = (v117 + v5[15]);
        v54 = *v52;
        v53 = v52[1];

        v55 = sub_100D5F668();
        if (v56 >> 60 == 15)
        {
          v57 = 0;
          v58 = 0;
        }

        else
        {
          v70 = v55;
          v71 = v56;
          v118[0] = v55;
          v118[1] = v56;
          sub_1002313AC();
          v57 = RawRepresentable<>.hexString.getter();
          v58 = v72;
          sub_100006654(v70, v71);
        }

        v73 = v113;
        v102(v16, v111, v113);
        v74 = v104;
        v75 = &v16[*(v104 + 20)];
        v76 = v99;
        *v75 = v101;
        *(v75 + 1) = v76;
        v77 = &v16[v74[6]];
        *v77 = v100;
        *(v77 + 1) = v43;
        v78 = &v16[v74[7]];
        v79 = v96;
        *v78 = v97;
        v78[1] = v79;
        v80 = &v16[v74[8]];
        v81 = v94;
        *v80 = v95;
        v80[1] = v81;
        v82 = &v16[v74[9]];
        *v82 = v54;
        *(v82 + 1) = v53;
        v83 = &v16[v74[10]];
        *v83 = v57;
        v83[1] = v58;
        v84 = v110;
        v111 = sub_100A2C34C();
        v85 = v108;
        v98(v108, v103, v73);
        v86 = v112;
        (*(v112 + 56))(v85, 0, 1, v73);
        v87 = v107;
        sub_100032504(v117, v107, type metadata accessor for OwnedBeaconRecord);
        v88 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v89 = (v106 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        v91 = v115;
        *(v90 + 16) = v114;
        *(v90 + 24) = v91;
        sub_10040A014(v87, v90 + v88, type metadata accessor for OwnedBeaconRecord);
        v92 = v90 + v89;
        *v92 = v84;
        *(v92 + 8) = v109 & 1;

        sub_100416BFC(v85, v16, sub_100405F54, v90);

        sub_10000B3A8(v85, &qword_1016980D0, &unk_10138F3B0);
        sub_10040A66C(v16, type metadata accessor for AccessoryUnpairData);
        return (*(v86 + 8))(v116, v73);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_10040A66C(v20, type metadata accessor for StableIdentifier);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  sub_1000076D4(v59, qword_10177C418);
  sub_100032504(v30, v9, type metadata accessor for OwnedBeaconRecord);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v118[0] = v63;
    *v62 = 141558275;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    v64 = &v9[v5[6]];
    v65 = sub_1010DA578();
    v67 = v66;
    sub_10040A66C(v9, type metadata accessor for OwnedBeaconRecord);
    v68 = sub_1000136BC(v65, v67, v118);

    *(v62 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v60, v61, "Unsupported stableIdentifier: %{private,mask.hash}s", v62, 0x16u);
    sub_100007BAC(v63);
  }

  else
  {

    sub_10040A66C(v9, type metadata accessor for OwnedBeaconRecord);
  }

  sub_1003FD838();
  swift_allocError();
  *v69 = 6;
  v114();
}

id sub_1003E539C(char *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v10 = *a1;
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10138BBE0;
  *(v11 + 56) = &type metadata for Bool;
  *(v11 + 64) = &protocol witness table for Bool;
  *(v11 + 32) = v10;
  *(v11 + 96) = &type metadata for Bool;
  *(v11 + 104) = &protocol witness table for Bool;
  *(v11 + 72) = a2 & 1;
  os_log(_:dso:log:_:_:)();

  if (v10 & 1) != 0 || (a2)
  {
    return sub_1003E49EC(a4, a2 & 1, a5, a6);
  }

  sub_1003FD838();
  swift_allocError();
  *v12 = 7;
  a5();
}

id sub_1003E5534(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  static os_log_type_t.default.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  *(v11 + 56) = &type metadata for Bool;
  *(v11 + 64) = &protocol witness table for Bool;
  *(v11 + 32) = a2 & 1;
  os_log(_:dso:log:_:_:)();

  if (a2)
  {
    return sub_1003E49EC(a6, 1, a3, a4);
  }

  else
  {
    return (a3)(a1);
  }
}

uint64_t sub_1003E5670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v229 = a3;
  v6 = type metadata accessor for String.Encoding();
  v219 = *(v6 - 8);
  v220 = v6;
  v7 = *(v219 + 64);
  __chkstk_darwin(v6);
  v223 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v218 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v217 = &v217 - v14;
  __chkstk_darwin(v13);
  v222 = &v217 - v15;
  v230 = type metadata accessor for UUID();
  v233 = *(v230 - 8);
  v16 = *(v233 + 64);
  v17 = __chkstk_darwin(v230);
  v225 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v226 = &v217 - v19;
  v20 = type metadata accessor for StableIdentifier();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = type metadata accessor for OwnedBeaconRecord();
  v24 = *(v227 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v227);
  v28 = &v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v221 = &v217 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v217 - v32;
  __chkstk_darwin(v31);
  v228 = &v217 - v34;
  v36 = *a1;
  v35 = a1[1];
  v37 = *(a2 + 280);
  v231 = sub_100AA372C(v36, v35);

  sub_1003F135C(&v231, sub_1003F2FE4, sub_1003F19B0);
  if (v3)
  {
    goto LABEL_108;
  }

  if (!v231[2])
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177C418);
    sub_100017D5C(v36, v35);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    sub_100016590(v36, v35);
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v231 = v69;
      *v68 = 141558275;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      sub_100017D5C(v36, v35);
      static String.Encoding.utf8.getter();
      v70 = String.init(data:encoding:)();
      if (!v71)
      {
        v70 = Data.hexString.getter();
      }

      v72 = v70;
      v73 = v71;
      sub_100016590(v36, v35);
      v74 = sub_1000136BC(v72, v73, &v231);

      *(v68 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v66, v67, "Missing beacon record for %{private,mask.hash}s.", v68, 0x16u);
      sub_100007BAC(v69);
    }

    v75 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v76 = v229;
    (*(v233 + 56))(v229 + v75[7], 1, 1, v230);
    *v76 = xmmword_10138BBF0;
    *(v76 + 1) = xmmword_10138BBF0;
    v76[4] = v36;
    v76[5] = v35;
    v77 = (v76 + v75[8]);
    *v77 = 0;
    v77[1] = 0;
    v78 = (v76 + v75[9]);
    *v78 = 0;
    v78[1] = 0;
    (*(*(v75 - 1) + 56))(v76, 0, 1, v75);
    return sub_100017D5C(v36, v35);
  }

  v224 = 0;
  sub_100032504(v231 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v33, type metadata accessor for OwnedBeaconRecord);

  v38 = v228;
  sub_10040A014(v33, v228, type metadata accessor for OwnedBeaconRecord);
  sub_100032504(v38 + *(v227 + 24), v23, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v93 = *v23;
      v92 = v23[1];
      v94 = v23[3];
      v96 = v23[4];
      v95 = v23[5];
      v231 = v23[2];
      v232 = v94;
      sub_1000DF96C();
      v97 = Data.init<A>(hexString:)();
      if (v98 >> 60 == 15)
      {
        sub_10040A66C(v38, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v114 = v97;
        v110 = v98;
        v231 = v93;
        v232 = v92;
        v115 = Data.init<A>(hexString:)();
        if (v116 >> 60 == 15)
        {
          sub_10040A66C(v38, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v114, v110);
        }

        else
        {
          v43 = v115;
          v120 = v116;
          v123 = v223;
          static String.Encoding.utf8.getter();
          v124 = String.data(using:allowLossyConversion:)();
          v38 = v125;

          (*(v219 + 8))(v123, v220);
          if (v38 >> 60 != 15)
          {
            (*(v233 + 56))(v218, 1, 1, v230);
            v149 = sub_100D5F668();
            if (v150 >> 60 == 15)
            {
              v111 = 0;
              v230 = 0;
            }

            else
            {
              v169 = v149;
              v170 = v150;
              v171 = sub_100313B54(v149, v150);
              v233 = v38;
              v172 = v124;
              v174 = v173;
              sub_100006654(v169, v170);
              v111 = Data.hexString.getter();
              v230 = v175;
              v176 = v174;
              v124 = v172;
              v38 = v233;
              sub_100016590(v171, v176);
            }

            v162 = sub_100D5F668();
            v233 = v111;
            if (v163 >> 60 == 15)
            {
              v177 = 0;
              v178 = 0;
LABEL_104:
              sub_10040A66C(v228, type metadata accessor for OwnedBeaconRecord);
              v212 = v229;
              *v229 = v114;
              v212[1] = v110;
              v212[2] = v43;
              v212[3] = v120;
              v212[4] = v124;
              v212[5] = v38;
              v213 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
              sub_1000D2AD8(v218, v212 + v213[7], &qword_1016980D0, &unk_10138F3B0);
              v214 = (v212 + v213[8]);
              v215 = v230;
              *v214 = v233;
              v214[1] = v215;
              v216 = (v212 + v213[9]);
              *v216 = v177;
              v216[1] = v178;
              return (*(*(v213 - 1) + 56))(v212, 0, 1, v213);
            }

            v179 = v163 >> 62;
            v227 = v124;
            if ((v163 >> 62) <= 1)
            {
              if (!v179)
              {
                v180 = v162;
                v181 = v163;
                goto LABEL_103;
              }

              LODWORD(v198) = HIDWORD(v162) - v162;
              if (__OFSUB__(HIDWORD(v162), v162))
              {
LABEL_107:
                __break(1u);
LABEL_108:

                __break(1u);
                return result;
              }

              v198 = v198;
LABEL_100:
              v181 = v163;
              v180 = v162;
              if (v198 < -1)
              {
                __break(1u);
                goto LABEL_102;
              }

LABEL_103:
              v208 = Data.subdata(in:)();
              v210 = v209;
              sub_100006654(v180, v181);
              v177 = Data.hexString.getter();
              v178 = v211;
              sub_100016590(v208, v210);
              v124 = v227;
              goto LABEL_104;
            }

LABEL_87:
            if (v179 != 2)
            {
LABEL_102:
              v181 = v163;
              v180 = v162;
              goto LABEL_103;
            }

            v197 = *(v162 + 16);
            v196 = *(v162 + 24);
            v153 = __OFSUB__(v196, v197);
            v198 = v196 - v197;
            if (v153)
            {
              __break(1u);
LABEL_91:
              LODWORD(v179) = HIDWORD(v162) - v162;
              if (__OFSUB__(HIDWORD(v162), v162))
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              v179 = v179;
              goto LABEL_93;
            }

            goto LABEL_100;
          }

          sub_10040A66C(v228, type metadata accessor for OwnedBeaconRecord);
          sub_100006654(v43, v120);
          sub_100006654(v114, v110);
        }
      }

      v126 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v126 - 8) + 56))(v229, 1, 1, v126);
    case 3:
      v80 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v81 = v23 + v80[12];
      v83 = *v81;
      v82 = *(v81 + 1);
      v84 = v23 + v80[16];
      v85 = *v84;
      v86 = *(v84 + 1);
      v87 = v23 + v80[20];
      v89 = *v87;
      v88 = *(v87 + 1);
      (*(v233 + 32))(v225, v23, v230);
      v231 = v85;
      v232 = v86;
      sub_1000DF96C();
      v90 = Data.init<A>(hexString:)();
      if (v91 >> 60 == 15)
      {
      }

      else
      {
        v110 = v90;
        v111 = v91;
        v231 = v83;
        v232 = v82;
        v112 = Data.init<A>(hexString:)();
        if (v113 >> 60 != 15)
        {
          v120 = v112;
          v114 = v113;
          v231 = v89;
          v232 = v88;
          v121 = Data.init<A>(hexString:)();
          if (v122 >> 60 != 15)
          {
            v226 = v122;
            v227 = v121;
            v146 = v233;
            v43 = v217;
            v147 = v230;
            (*(v233 + 16))(v217, v225, v230);
            (*(v146 + 56))(v43, 0, 1, v147);
            v138 = sub_100D5F668();
            if (v139 >> 60 == 15)
            {
              v148 = 0;
              v222 = 0;
LABEL_64:
              v162 = sub_100D5F668();
              v223 = v148;
              if (v163 >> 60 == 15)
              {
                v164 = 0;
                v165 = 0;
LABEL_97:
                (*(v233 + 8))(v225, v230);
                sub_10040A66C(v38, type metadata accessor for OwnedBeaconRecord);
                v203 = v229;
                *v229 = v110;
                v203[1] = v111;
                v203[2] = v120;
                v203[3] = v114;
                v204 = v226;
                v203[4] = v227;
                v203[5] = v204;
                v189 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
                sub_1000D2AD8(v43, v203 + v189[7], &qword_1016980D0, &unk_10138F3B0);
                v205 = (v203 + v189[8]);
                v206 = v222;
                *v205 = v223;
                v205[1] = v206;
                v207 = (v203 + v189[9]);
                *v207 = v164;
                v207[1] = v165;
                v192 = *(*(v189 - 1) + 56);
                v193 = v203;
                return v192(v193, 0, 1, v189);
              }

              v166 = v163 >> 62;
              if ((v163 >> 62) <= 1)
              {
                if (!v166)
                {
                  v167 = v162;
                  v168 = v163;
LABEL_96:
                  v199 = Data.subdata(in:)();
                  v201 = v200;
                  sub_100006654(v167, v168);
                  v164 = Data.hexString.getter();
                  v165 = v202;
                  sub_100016590(v199, v201);
                  v38 = v228;
                  v43 = v217;
                  goto LABEL_97;
                }

                goto LABEL_91;
              }

              if (v166 != 2)
              {
                goto LABEL_95;
              }

              v195 = *(v162 + 16);
              v194 = *(v162 + 24);
              v153 = __OFSUB__(v194, v195);
              v179 = v194 - v195;
              if (!v153)
              {
LABEL_93:
                v168 = v163;
                v167 = v162;
                if (v179 >= -1)
                {
                  goto LABEL_96;
                }

                __break(1u);
LABEL_95:
                v168 = v163;
                v167 = v162;
                goto LABEL_96;
              }

              __break(1u);
              goto LABEL_87;
            }

LABEL_63:
            v155 = v138;
            v156 = v139;
            v157 = sub_100313B54(v138, v139);
            v159 = v158;
            sub_100006654(v155, v156);
            v148 = Data.hexString.getter();
            v222 = v160;
            v161 = v157;
            v38 = v228;
            sub_100016590(v161, v159);
            goto LABEL_64;
          }

          sub_100006654(v110, v111);
          sub_100006654(v120, v114);
LABEL_30:
          (*(v233 + 8))(v225, v230);
          v64 = v38;
LABEL_44:
          sub_10040A66C(v64, type metadata accessor for OwnedBeaconRecord);
          v127 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
          return (*(*(v127 - 8) + 56))(v229, 1, 1, v127);
        }

        sub_100006654(v110, v111);
      }

      goto LABEL_30;
    case 2:
      v40 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v41 = v23 + v40[12];
      v43 = *v41;
      v42 = *(v41 + 1);
      v44 = v23 + v40[16];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = v23 + v40[20];
      v48 = *v47;
      v49 = *(v47 + 1);
      v50 = *(v23 + v40[28] + 8);

      (*(v233 + 32))(v226, v23, v230);
      v231 = v48;
      v232 = v49;
      sub_1000DF96C();
      v51 = Data.init<A>(hexString:)();
      if (v52 >> 60 == 15)
      {

        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_1000076D4(v53, qword_10177C418);
        v54 = v221;
        sub_100032504(v38, v221, type metadata accessor for OwnedBeaconRecord);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v231 = v58;
          *v57 = 141558275;
          *(v57 + 4) = 1752392040;
          *(v57 + 12) = 2081;
          v59 = v54 + *(v227 + 24);
          v60 = sub_1010DA578();
          v62 = v61;
          sub_10040A66C(v54, type metadata accessor for OwnedBeaconRecord);
          v63 = sub_1000136BC(v60, v62, &v231);

          *(v57 + 14) = v63;
          _os_log_impl(&_mh_execute_header, v55, v56, "Invalid serialNumber for %{private,mask.hash}s", v57, 0x16u);
          sub_100007BAC(v58);
        }

        else
        {

          sub_10040A66C(v54, type metadata accessor for OwnedBeaconRecord);
        }

        (*(v233 + 8))(v226, v230);
        v64 = v38;
        goto LABEL_44;
      }

      v110 = v52;
      v225 = v51;
      if (v45)
      {
        v231 = v46;
        v232 = v45;
        v45 = Data.init<A>(hexString:)();
        v227 = v117;
        if (v42)
        {
LABEL_35:
          v231 = v43;
          v232 = v42;
          v111 = Data.init<A>(hexString:)();
          v223 = v118;
LABEL_47:
          v128 = v233;
          v120 = v222;
          v114 = v230;
          (*(v233 + 16))(v222, v226, v230);
          (*(v128 + 56))(v120, 0, 1, v114);
          v129 = sub_100D5F668();
          if (v130 >> 60 == 15)
          {
            v131 = 0;
            v132 = 0;
          }

          else
          {
            v133 = v129;
            v114 = v130;
            v120 = sub_100313B54(v129, v130);
            v43 = v45;
            v135 = v134;
            sub_100006654(v133, v114);
            v131 = Data.hexString.getter();
            v132 = v136;
            v137 = v135;
            v45 = v43;
            sub_100016590(v120, v137);
          }

          v138 = sub_100D5F668();
          if (v139 >> 60 == 15)
          {
            v140 = 0;
            v141 = 0;
LABEL_81:
            (*(v233 + 8))(v226, v230);
            sub_10040A66C(v228, type metadata accessor for OwnedBeaconRecord);
            v186 = v229;
            v187 = v227;
            *v229 = v45;
            v186[1] = v187;
            v188 = v223;
            v186[2] = v111;
            v186[3] = v188;
            v186[4] = v225;
            v186[5] = v110;
            v189 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
            sub_1000D2AD8(v222, v186 + v189[7], &qword_1016980D0, &unk_10138F3B0);
            v190 = (v186 + v189[8]);
            *v190 = v131;
            v190[1] = v132;
            v191 = (v186 + v189[9]);
            *v191 = v140;
            v191[1] = v141;
            v192 = *(*(v189 - 1) + 56);
            v193 = v186;
            return v192(v193, 0, 1, v189);
          }

          v142 = v139 >> 62;
          if ((v139 >> 62) <= 1)
          {
            if (!v142)
            {
              v143 = v45;
              v144 = v138;
              v145 = v139;
LABEL_80:
              v182 = Data.subdata(in:)();
              v184 = v183;
              sub_100006654(v144, v145);
              v140 = Data.hexString.getter();
              v141 = v185;
              sub_100016590(v182, v184);
              v45 = v143;
              goto LABEL_81;
            }

            LODWORD(v154) = HIDWORD(v138) - v138;
            if (!__OFSUB__(HIDWORD(v138), v138))
            {
              v154 = v154;
              goto LABEL_77;
            }

            __break(1u);
            goto LABEL_106;
          }

          if (v142 != 2)
          {
            goto LABEL_79;
          }

          v152 = *(v138 + 16);
          v151 = *(v138 + 24);
          v153 = __OFSUB__(v151, v152);
          v154 = v151 - v152;
          if (!v153)
          {
LABEL_77:
            v143 = v45;
            v145 = v139;
            v144 = v138;
            if (v154 >= -1)
            {
              goto LABEL_80;
            }

            __break(1u);
LABEL_79:
            v143 = v45;
            v145 = v139;
            v144 = v138;
            goto LABEL_80;
          }

          __break(1u);
          goto LABEL_63;
        }
      }

      else
      {
        v227 = 0xF000000000000000;
        if (v42)
        {
          goto LABEL_35;
        }
      }

      v111 = 0;
      v223 = 0xF000000000000000;
      goto LABEL_47;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  sub_1000076D4(v99, qword_10177C418);
  sub_100032504(v38, v28, type metadata accessor for OwnedBeaconRecord);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v231 = v103;
    *v102 = 141558275;
    *(v102 + 4) = 1752392040;
    *(v102 + 12) = 2081;
    v104 = &v28[*(v227 + 24)];
    v105 = sub_1010DA578();
    v107 = v106;
    sub_10040A66C(v28, type metadata accessor for OwnedBeaconRecord);
    v108 = sub_1000136BC(v105, v107, &v231);

    *(v102 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v100, v101, "Unsupported beacon %{private,mask.hash}s", v102, 0x16u);
    sub_100007BAC(v103);

    v109 = v228;
  }

  else
  {

    sub_10040A66C(v28, type metadata accessor for OwnedBeaconRecord);
    v109 = v38;
  }

  sub_10040A66C(v109, type metadata accessor for OwnedBeaconRecord);
  v119 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  (*(*(v119 - 8) + 56))(v229, 1, 1, v119);
  return sub_10040A66C(v23, type metadata accessor for StableIdentifier);
}

id sub_1003E6C24(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v60 = a3;
  v58 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = &v56 - v8;
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  sub_100032504(a1, v12, type metadata accessor for OwnedBeaconGroup);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v61 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v67[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = *(v9 + 24);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
    v23 = sub_1000136BC(v20, v22, v67);
    v9 = v61;

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "removeAirPodsPairingLock for %{private,mask.hash}s", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {

    sub_10040A66C(v12, type metadata accessor for OwnedBeaconGroup);
  }

  v24 = sub_1003CDA20(*(a1 + *(v9 + 40)));
  v25 = sub_1003E28E4(v24);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v67[0] = v29;
    *v28 = 136315138;
    type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v30 = Array.description.getter();
    v32 = sub_1000136BC(v30, v31, v67);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "unpairDevices: %s", v28, 0xCu);
    sub_100007BAC(v29);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v34 = result;
    v57 = a4;
    uniqueChipID = MobileGestalt_get_uniqueChipID();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v36 = result;
      chipID = MobileGestalt_get_chipID();

      *&v67[0] = uniqueChipID;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      *&v67[0] = chipID;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = sub_100EF9784();
      v46 = v45;
      v47 = v61;
      v48 = a1 + *(v61 + 28);
      v49 = MACAddress.udid.getter();
      *&v62 = v38;
      *(&v62 + 1) = v40;
      *&v63 = v41;
      *(&v63 + 1) = v43;
      *&v64 = v44;
      *(&v64 + 1) = v46;
      *&v65 = v49;
      *(&v65 + 1) = v50;
      LOBYTE(v66) = v58 & 1;
      *(&v66 + 1) = v25;
      v67[3] = v65;
      v67[4] = v66;
      v67[1] = v63;
      v67[2] = v64;
      v67[0] = v62;
      sub_100A2C34C();
      v51 = *(v47 + 24);
      v52 = type metadata accessor for UUID();
      v53 = *(v52 - 8);
      v54 = a1 + v51;
      v55 = v59;
      (*(v53 + 16))(v59, v54, v52);
      (*(v53 + 56))(v55, 0, 1, v52);
      sub_100925EB8(v55, v67, v60, v57);

      sub_100405A18(&v62);
      return sub_10000B3A8(v55, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E7200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100032504(a2, v11, type metadata accessor for OwnedBeaconGroup);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_10040A014(v11, v14 + v12, type metadata accessor for OwnedBeaconGroup);
  *(v14 + v13) = a1;
  v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a3;
  v15[1] = a4;

  sub_1003E6C24(a2, 0, sub_100407830, v14);
}

void sub_1003E7380(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C418);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = a1;
      v38 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000136BC(v19, v20, &v38);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to remove pairing lock due to %{public}s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    type metadata accessor for UnpairError(0);
    v37 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v22 = v38;
    a4(v38);
  }

  else
  {
    v23 = v11;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177C418);
    sub_100032504(a2, v13, type metadata accessor for OwnedBeaconGroup);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = a5;
      v29 = v28;
      v38 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v30 = *(v23 + 24);
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, &v38);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully removed pairing lock for group %{private,mask.hash}s", v27, 0x16u);
      sub_100007BAC(v29);
      a5 = v36;
    }

    else
    {

      sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1003E77F8(a2, 1, a4, a5);
  }
}

uint64_t sub_1003E77F8(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10 - 8);
  v64 = v12;
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_10169F3B0, &qword_1013A0880);
  v54 = *(v14 - 8);
  v55 = v14;
  v15 = *(v54 + 64);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = sub_1000BC4D4(&qword_10169F3B8, &qword_1013A0888);
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  v22 = sub_1000BC4D4(&qword_10169F3C0, &qword_1013A0890);
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = *(v58 + 64);
  __chkstk_darwin(v22);
  v25 = &v48 - v24;
  v26 = sub_1000BC4D4(&qword_10169F3C8, &qword_1013A0898);
  v61 = *(v26 - 8);
  v62 = v26;
  v27 = *(v61 + 64);
  __chkstk_darwin(v26);
  v60 = &v48 - v28;
  v67 = _swiftEmptyArrayStorage;
  v65 = a1;
  v29 = sub_100519FB0();

  sub_1003FCFF8(v29, v5, &v67, a2);

  v30 = v67;
  if (v67 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v52 = v31;
    v53 = (v31 + 16);
    v66 = v30;

    sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
    v49 = v13;
    v50 = a3;
    v51 = a4;
    sub_1000BC4D4(&qword_10169F3D8, &qword_1013A08A8);
    sub_1000041A4(&qword_10169F3E0, &qword_10169F3D0, &qword_1013A08A0);
    sub_1000041A4(&qword_10169F3E8, &qword_10169F3D8, &qword_1013A08A8);
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_10169F3F0, &qword_10169F3B0, &qword_1013A0880);
    v32 = v55;
    Publisher.collect()();
    (*(v54 + 8))(v17, v32);
    sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
    sub_1000041A4(&qword_10169F400, &qword_10169F3B8, &qword_1013A0888);
    v33 = v57;
    Publisher.map<A>(_:)();
    (*(v56 + 8))(v21, v33);
    sub_1000BC4D4(&qword_10169F408, &qword_1013A08B8);
    sub_1000041A4(&qword_10169F410, &qword_10169F3C0, &qword_1013A0890);
    sub_1000041A4(&qword_10169F418, &qword_10169F408, &qword_1013A08B8);
    v34 = v59;
    v35 = v60;
    Publisher.catch<A>(_:)();
    (*(v58 + 8))(v25, v34);
    v36 = v49;
    sub_100032504(v65, v49, type metadata accessor for OwnedBeaconGroup);
    v37 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v38 = (v64 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_10040A014(v36, v39 + v37, type metadata accessor for OwnedBeaconGroup);
    v40 = (v39 + v38);
    v41 = v51;
    *v40 = v50;
    v40[1] = v41;
    *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
    sub_1000041A4(&qword_10169F420, &qword_10169F3C8, &qword_1013A0898);

    v42 = v62;
    v43 = Publisher<>.sink(receiveValue:)();

    (*(v61 + 8))(v35, v42);
    v44 = v53;
    swift_beginAccess();
    v45 = *v44;
    *v44 = v43;
  }

  if (a2)
  {
    v47 = *(v5 + 280);
    sub_100AA9390(v65, a3, a4);
  }

  else
  {
    a3(0);
  }
}

void sub_1003E7FB0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char a5, void (*a6)(void))
{
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v41 = a4;
      v23 = v22;
      v43 = a1;
      v44 = v22;
      *v21 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v24 = String.init<A>(describing:)();
      v26 = a6;
      v27 = sub_1000136BC(v24, v25, &v44);

      *(v21 + 4) = v27;
      a6 = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to send unpair command due to %{public}s", v21, 0xCu);
      sub_100007BAC(v23);

      a3 = v42;
    }

    if (a5)
    {
      a3();
    }

    else
    {
      type metadata accessor for UnpairError(0);
      v43 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v40 = v44;
      a6(v44);
    }
  }

  else
  {
    v28 = v14;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C418);
    sub_100032504(a2, v16, type metadata accessor for OwnedBeaconGroup);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      v34 = *(v28 + 24);
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_10040A66C(v16, type metadata accessor for OwnedBeaconGroup);
      v38 = sub_1000136BC(v35, v37, &v44);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully sent unpair command for group %{private,mask.hash}s", v32, 0x16u);
      sub_100007BAC(v33);
    }

    else
    {

      v39 = sub_10040A66C(v16, type metadata accessor for OwnedBeaconGroup);
    }

    (a3)(v39);
  }
}

uint64_t sub_1003E8454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v82 = sub_1000BC4D4(&qword_10169F340, &qword_1013A07F8);
  v5 = *(v82 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v82);
  v8 = &v67 - v7;
  v9 = sub_1000BC4D4(&qword_10169F348, &qword_1013A0800);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = v80[8];
  __chkstk_darwin(v9);
  v12 = &v67 - v11;
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v71 = v16;
  v72 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  v19 = type metadata accessor for OwnedBeaconGroup(0);
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  v21 = __chkstk_darwin(v19);
  v68 = v22;
  v69 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v67 - v23;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177C418);
  v76 = a1;
  sub_100032504(a1, v24, type metadata accessor for OwnedBeaconGroup);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v74 = a3;
  v77 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v83[0] = v30;
    *v29 = 141558275;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    v31 = *(v19 + 24);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_10040A66C(v24, type metadata accessor for OwnedBeaconGroup);
    v35 = sub_1000136BC(v32, v34, v83);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Sending unpair command to all members of group %{private,mask.hash}s", v29, 0x16u);
    sub_100007BAC(v30);
  }

  else
  {

    sub_10040A66C(v24, type metadata accessor for OwnedBeaconGroup);
  }

  v36 = sub_100519FB0();
  v37 = v75;

  v38 = sub_1003FE438(v36, v37);

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_8;
    }

LABEL_16:

    v48 = _swiftEmptyArrayStorage;
LABEL_17:
    v49 = v76;
    v50 = *(v75 + 280);
    sub_100A85ED4(v76, v77);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v80 = (v52 + 16);
    v83[0] = v48;
    sub_1000BC4D4(&qword_10169F388, &qword_1013A0820);
    sub_1000041A4(&qword_10169F390, &qword_10169F388, &qword_1013A0820);
    v82 = sub_1000041A4(&qword_10169F398, &qword_10169F3A0, &qword_1013A0828);
    v53 = Sequence<>.merged()();
    v81 = v53;

    v83[0] = v53;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v69;
    sub_100032504(v49, v69, type metadata accessor for OwnedBeaconGroup);
    v56 = (*(v67 + 80) + 48) & ~*(v67 + 80);
    v57 = (v68 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v58[2] = v54;
    v58[3] = v51;
    v59 = v74;
    v58[4] = v73;
    v58[5] = v59;
    sub_10040A014(v55, v58 + v56, type metadata accessor for OwnedBeaconGroup);
    *(v58 + v57) = v52;
    v60 = v72;
    sub_1000D2A70(v77, v72, &unk_1016A9A20, &qword_10138B280);
    v61 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v62 = (v71 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    sub_1000D2AD8(v60, v63 + v61, &unk_1016A9A20, &qword_10138B280);
    *(v63 + v62) = v51;
    swift_retain_n();

    sub_1000BC4D4(&qword_10169F3A0, &qword_1013A0828);
    v64 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_10000B3A8(v77, &unk_1016A9A20, &qword_10138B280);
    v65 = v80;
    swift_beginAccess();
    v66 = *v65;
    *v65 = v64;
  }

  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (!v39)
  {
    goto LABEL_16;
  }

LABEL_8:
  v83[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v39 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = (v5 + 8);
    v43 = (v80 + 1);
    v79 = v38 & 0xC000000000000001;
    v80 = v38;
    v78 = v39;
    do
    {
      if (v79)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v38 + 8 * v41 + 32);
      }

      ++v41;
      v83[3] = v44;
      sub_1000BC4D4(&qword_10169F350, &qword_1013A0808);
      sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
      sub_1000041A4(&qword_10169F360, &qword_10169F350, &qword_1013A0808);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_10169F368, &qword_1013A0818);
      sub_1000041A4(&qword_10169F370, &qword_10169F340, &qword_1013A07F8);
      sub_1000041A4(&qword_10169F378, &qword_10169F368, &qword_1013A0818);
      v45 = v82;
      Publisher.catch<A>(_:)();
      (*v42)(v8, v45);
      sub_1000041A4(&qword_10169F380, &qword_10169F348, &qword_1013A0800);
      v46 = v81;
      Publisher.eraseToAnyPublisher()();

      (*v43)(v12, v46);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v47 = *(v83[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v38 = v80;
    }

    while (v78 != v41);

    v48 = v83[0];
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003E8F50(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  *(&v6 - v4) = *a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  return Just.init(_:)();
}

uint64_t sub_1003E9004(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    swift_beginAccess();
    if (*(a3 + 16))
    {
      a4(0);
    }

    else
    {
      type metadata accessor for Transaction();
      sub_100032504(a6, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
      v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      sub_10040A014(v15, v20 + v18, type metadata accessor for OwnedBeaconGroup);
      *(v20 + v19) = v17;
      v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v21 = a4;
      v21[1] = a5;

      static Transaction.asyncTask(name:block:)();

      swift_beginAccess();
      v22 = *(a7 + 16);
      *(a7 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1003E9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for SystemInfo.DeviceLockState();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = type metadata accessor for OwnedBeaconRecord();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003E93F0, 0, 0);
}

uint64_t sub_1003E93F0()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = sub_100519FB0();
  v7 = *(v5 + 280);
  v8 = v6 + 56;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v6 + 56);
  v12 = (63 - v10) >> 6;
  v49 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v47 = (v3 + 8);
  v48 = (v3 + 104);
  v44 = (v2 + 56);
  v52 = v1;
  v43 = v2;
  v45 = (v2 + 48);
  v46 = (v1 + 8);

  v53 = v6;

  v17 = 0;
  v54 = _swiftEmptyArrayStorage;
  v50 = v12;
  v51 = v6 + 56;
  while (1)
  {
    v18 = v17;
    v0[25] = v54;
    if (!v11)
    {
      break;
    }

LABEL_8:
    (*(v52 + 16))(v0[24], *(v53 + 48) + *(v52 + 72) * (__clz(__rbit64(v11)) | (v17 << 6)), v0[22]);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v19 = v0[24];
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[13];
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    static SystemInfo.lockState.getter();
    (*v48)(v20, v49, v22);
    sub_1003FD7F0(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v24) = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v47;
    (*v47)(v20, v22);
    v27(v21, v22);
    v28 = v0[17];
    if (v24)
    {
      v29 = v0[18];
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      (*v44)(v28, 1, 1, v29);
    }

    else
    {
      v30 = v0[24];
      v31 = sub_100025044();
      *(swift_task_alloc() + 16) = v30;
      sub_1012BBBD0(sub_10040B9D8, v31, v28);
    }

    v12 = v50;
    v8 = v51;
    v11 &= v11 - 1;
    v32 = v0[17];
    v33 = v0[18];
    (*v46)(v0[24], v0[22]);
    if ((*v45)(v32, 1, v33) == 1)
    {
      v13 = sub_10000B3A8(v0[17], &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v34 = v0[20];
      v35 = v0[21];
      sub_10040A014(v0[17], v35, type metadata accessor for OwnedBeaconRecord);
      sub_10040A014(v35, v34, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100A5C050(0, v54[2] + 1, 1, v54);
      }

      v37 = v54[2];
      v36 = v54[3];
      if (v37 >= v36 >> 1)
      {
        v54 = sub_100A5C050(v36 > 1, v37 + 1, 1, v54);
      }

      v38 = v0[20];
      v54[2] = v37 + 1;
      v13 = sub_10040A014(v38, v54 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, type metadata accessor for OwnedBeaconRecord);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return Sequence.asyncFilter(_:)(v13, v14, v15, v16);
    }

    if (v17 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v17);
    ++v18;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  v0[2] = v54;
  v39 = async function pointer to Sequence.asyncFilter(_:)[1];
  v40 = swift_task_alloc();
  v0[26] = v40;
  v41 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v16 = sub_1000041A4(&qword_10169F3A8, &qword_101698C80, &unk_1013A23F0);
  *v40 = v0;
  v40[1] = sub_1003E99EC;
  v13 = &unk_1013A0840;
  v14 = 0;
  v15 = v41;

  return Sequence.asyncFilter(_:)(v13, v14, v15, v16);
}

uint64_t sub_1003E99EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 200);

    return _swift_task_switch(sub_1003E9B2C, 0, 0);
  }
}

uint64_t sub_1003E9B2C()
{
  if (*(v0[27] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_1003E9CE0;

    return daemon.getter();
  }

  else
  {
    v4 = v0[11];
    v3 = v0[12];

    type metadata accessor for UnpairError(0);
    v0[8] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v0[7];
    v4(v5);

    v6 = v0[24];
    v7 = v0[20];
    v8 = v0[21];
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1003E9CE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  *(v3 + 232) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 240) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1003FD7F0(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1003E9EBC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003E9EBC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 240);
  v7 = *v2;

  v8 = *(v4 + 232);
  if (v1)
  {
    v9 = *(v5 + 216);

    v10 = sub_1003EA01C;
  }

  else
  {

    *(v5 + 248) = a1;
    v10 = sub_1003EA204;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1003EA01C()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendUnpairCommand: missing OwnerCommandService to send unpair!", v4, 2u);
  }

  v6 = v0[11];
  v5 = v0[12];

  type metadata accessor for UnpairError(0);
  v0[4] = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = v0[3];
  v6(v7);

  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EA204()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = swift_task_alloc();
  v0[32] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1003EA2F4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1003EA2F4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 216);
  v5 = *v0;

  return _swift_task_switch(sub_1003EA428, 0, 0);
}

uint64_t sub_1003EA428()
{
  v1 = v0[31];
  v3 = v0[11];
  v2 = v0[12];
  type metadata accessor for UnpairError(0);
  v0[6] = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1003FD7F0(&qword_101696378, type metadata accessor for UnpairError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v4 = v0[5];
  v3(v4);

  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003EA568()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003EA5F8;

  return sub_100D5F8B4();
}

uint64_t sub_1003EA5F8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1003EA6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v4[16] = *(v7 + 64);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003EA87C, 0, 0);
}

uint64_t sub_1003EA87C()
{
  v70 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v60 = *(v0 + 176);
    v4 = *(v0 + 120);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 16);
    v67 = (v4 + 8);
    v59 = v4;
    v57 = **(v0 + 72);
    v58 = *(*(v0 + 160) + 20);
    v56 = *(v3 + 72);
    v68 = (v4 + 16);
    do
    {
      v66 = v2;
      v11 = *(v0 + 176);
      v12 = *(v0 + 152);
      v13 = *(v0 + 112);
      v65 = v5;
      sub_100032504(v5, v11, type metadata accessor for OwnedBeaconRecord);
      v14 = *v6;
      (*v6)(v12, v60 + v58, v13);
      sub_10040A66C(v11, type metadata accessor for OwnedBeaconRecord);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 112);
      v18 = type metadata accessor for Logger();
      sub_1000076D4(v18, qword_10177C418);
      v63 = v14;
      v14(v16, v15, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 144);
      v23 = *(v0 + 112);
      if (v21)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v69 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v64 = *v67;
        (*v67)(v22, v23);
        v29 = sub_1000136BC(v26, v28, &v69);

        *(v24 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "sendUnpairCommand: Sending unpair to managed peripheral %{private,mask.hash}s", v24, 0x16u);
        sub_100007BAC(v25);
      }

      else
      {

        v64 = *v67;
        (*v67)(v22, v23);
      }

      v30 = *(v0 + 152);
      v31 = *(v0 + 128);
      v32 = *(v0 + 136);
      v33 = *(v0 + 104);
      v34 = *(v0 + 112);
      v35 = *(v0 + 88);
      v61 = v33;
      v62 = *(v0 + 96);
      v36 = type metadata accessor for TaskPriority();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v33, 1, 1, v36);
      v63(v32, v30, v34);
      v38 = (*(v59 + 80) + 40) & ~*(v59 + 80);
      v39 = swift_allocObject();
      v39[2] = 0;
      v40 = v39 + 2;
      v39[3] = 0;
      v39[4] = v35;
      (*(v59 + 32))(v39 + v38, v32, v34);
      sub_1000D2A70(v61, v62, &qword_101698C00, &qword_10138B570);
      v41 = (*(v37 + 48))(v62, 1, v36);

      v42 = *(v0 + 96);
      if (v41 == 1)
      {
        sub_10000B3A8(*(v0 + 96), &qword_101698C00, &qword_10138B570);
        if (*v40)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v37 + 8))(v42, v36);
        if (*v40)
        {
LABEL_14:
          v45 = v39[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v43 = dispatch thunk of Actor.unownedExecutor.getter();
          v44 = v46;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v43 = 0;
      v44 = 0;
LABEL_15:
      v47 = swift_allocObject();
      *(v47 + 16) = &unk_1013A0868;
      *(v47 + 24) = v39;

      if (v44 | v43)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v43;
        *(v0 + 40) = v44;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 152);
      v10 = *(v0 + 104);
      v9 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v57;
      swift_task_create();

      sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
      v64(v8, v9);
      v5 = v65 + v56;
      v2 = v66 - 1;
      v6 = v68;
    }

    while (v66 != 1);
  }

  v48 = *(v0 + 176);
  v49 = *(v0 + 144);
  v50 = *(v0 + 152);
  v51 = *(v0 + 136);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1003EAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003EAF74, 0, 0);
}

uint64_t sub_1003EAF74()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Trying RX Unpair...", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1003EB0CC;
  v7 = v0[2];
  v6 = v0[3];

  return sub_10121C86C(v6, 0);
}

uint64_t sub_1003EB0CC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1003EB3E0;
  }

  else
  {
    v3 = sub_1003EB1E0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003EB1E0()
{
  v19 = v0;
  v1 = v0[8];
  (*(v0[5] + 16))(v0[7], v0[3], v0[4]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "RX Unpaired %{private,mask.hash}s completed successfully", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003EB3E0()
{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[8];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_1000136BC(v11, v13, &v23);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v21 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "RX Unpaired %{private,mask.hash}s with error %{public}@", v10, 0x20u);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v22);
  }

  else
  {
    v16 = v0[10];

    (*(v8 + 8))(v7, v9);
  }

  v18 = v0[6];
  v17 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003EB664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v75 = a2;
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = &v69 - v6;
  v76 = type metadata accessor for OwnedBeaconRecord();
  v74 = *(v76 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v76);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v20 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v69 - v22);
  sub_1000D2A70(a1, &v69 - v22, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v25 = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v26 = qword_10177C410;
    if (os_log_type_enabled(qword_10177C410, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v79[0] = v28;
      *v27 = 136315138;
      v79[3] = v24;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000136BC(v29, v30, v79);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v26, v25, "Unpair failed. %s", v27, 0xCu);
      sub_100007BAC(v28);
    }
  }

  else
  {
    v72 = v9;
    (*(v11 + 32))(v19, v23, v10);
    v33 = static os_log_type_t.default.getter();
    v34 = v19;
    v35 = v11;
    v36 = v10;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    v37 = qword_10177C410;
    v38 = *(v11 + 16);
    v38(v17, v34, v36);
    if (os_log_type_enabled(v37, v33))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70 = v38;
      v71 = v11;
      v41 = v36;
      v42 = v40;
      v79[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v11 + 16;
      v44 = v33;
      v45 = v34;
      v46 = v43;
      v48 = v47;
      v49 = *(v71 + 8);
      v49(v17, v41);
      v50 = v46;
      v34 = v45;
      v51 = sub_1000136BC(v50, v48, v79);

      *(v39 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v37, v44, "Unpair succeeded for beacon %{private,mask.hash}s", v39, 0x16u);
      sub_100007BAC(v42);
      v36 = v41;
      v38 = v70;
      v35 = v71;
    }

    else
    {
      v49 = *(v11 + 8);
      v49(v17, v36);
    }

    v52 = v77;
    v53 = v78;
    v54 = v76;
    sub_1000D2A70(v75, v77, &unk_1016A9A20, &qword_10138B280);
    if ((*(v74 + 48))(v52, 1, v54) == 1)
    {
      v49(v34, v36);
      sub_10000B3A8(v52, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v55 = v72;
      sub_10040A014(v52, v72, type metadata accessor for OwnedBeaconRecord);
      v56 = *(v54 + 20);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_10040A66C(v55, type metadata accessor for OwnedBeaconRecord);
        return (v49)(v34, v36);
      }

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_1000076D4(v57, qword_10177C418);
      v38(v53, v34, v36);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v71 = v35;
        v62 = v36;
        v63 = v61;
        v79[0] = v61;
        *v60 = 141558275;
        *(v60 + 4) = 1752392040;
        *(v60 + 12) = 2081;
        sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        v49(v53, v62);
        v67 = sub_1000136BC(v64, v66, v79);

        *(v60 + 14) = v67;
        _os_log_impl(&_mh_execute_header, v58, v59, "Unpair command succeeded for primary beacon %{private,mask.hash}s", v60, 0x16u);
        sub_100007BAC(v63);

        sub_10040A66C(v72, type metadata accessor for OwnedBeaconRecord);
        v49(v34, v62);
      }

      else
      {

        v49(v53, v36);
        sub_10040A66C(v72, type metadata accessor for OwnedBeaconRecord);
        v49(v34, v36);
      }
    }

    v68 = v73;
    result = swift_beginAccess();
    *(v68 + 16) = 1;
  }

  return result;
}

uint64_t sub_1003EBF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
}

uint64_t sub_1003EBF20(uint64_t *a1)
{
  v2 = *a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
  return Just.init(_:)();
}

uint64_t sub_1003EBF80(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  if (*(a1 + 8) == 1)
  {
    v16 = *a1;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    sub_100032504(a2, v13, type metadata accessor for OwnedBeaconGroup);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_1001DB7B8(v16, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v44 = a3;
      v21 = v20;
      v46[0] = swift_slowAlloc();
      *v21 = 141558531;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v22 = *(v9 + 24);
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
      v26 = sub_1000136BC(v23, v25, v46);

      *(v21 + 14) = v26;
      *(v21 + 22) = 2082;
      v45 = v16;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000136BC(v27, v28, v46);

      *(v21 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to remove related records for %{private,mask.hash}s. Error %{public}s)", v21, 0x20u);
      swift_arrayDestroy();

      a3 = v44;
    }

    else
    {

      sub_10040A66C(v13, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C418);
    sub_100032504(a2, v15, type metadata accessor for OwnedBeaconGroup);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = a3;
      v35 = swift_slowAlloc();
      v46[0] = v35;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      v36 = *(v9 + 24);
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_10040A66C(v15, type metadata accessor for OwnedBeaconGroup);
      v40 = sub_1000136BC(v37, v39, v46);

      *(v33 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully removed related records for %{private,mask.hash}s", v33, 0x16u);
      sub_100007BAC(v35);
      a3 = v34;
    }

    else
    {

      sub_10040A66C(v15, type metadata accessor for OwnedBeaconGroup);
    }

    v16 = 0;
  }

  a3(v16);
  swift_beginAccess();
  v41 = *(a5 + 16);
  *(a5 + 16) = 0;
}

uint64_t sub_1003EC4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = *(a3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  sub_1008914EC(a4);
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  Future.addSuccess(block:)();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  Future.addFailure(block:)();
}

uint64_t sub_1003EC69C(_BYTE *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  if (*a1 == 1)
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 16))(v10, a4, v11);
  }

  else
  {
    sub_1003FD838();
    v12 = swift_allocError();
    *v13 = 0;
    *v10 = v12;
  }

  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_10000B3A8(v10, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_1003EC7D8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  *(&v9 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v7);
  return sub_10000B3A8(v7, &qword_10169F358, &qword_1013A0810);
}

uint64_t sub_1003EC8A4(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v12 = type metadata accessor for OwnedBeaconRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    v44 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    swift_errorRetain();
    a2(a1);
  }

  else
  {
    v41 = a6;
    v42 = a3;
    v43 = a2;
    LODWORD(v40) = static os_log_type_t.default.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v22 = *(v12 + 20);
    v23 = UUID.uuidString.getter();
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    v26 = *(a5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
    sub_1008914EC(a4 + v22);
    sub_100032504(a4, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v40 = a4;
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = v27 + v14;
    v29 = (v27 + v14) & 0xFFFFFFFFFFFFFFF8;
    v30 = v29 + 8;
    v39 = v29 + 8;
    v31 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v38 = type metadata accessor for OwnedBeaconRecord;
    sub_10040A014(v15, v32 + v27, type metadata accessor for OwnedBeaconRecord);
    v41 &= 1u;
    *(v32 + v28) = v41;
    *(v32 + v30) = a5;
    v33 = (v32 + v31);
    v34 = v42;
    *v33 = v43;
    v33[1] = v34;

    Future.addSuccess(block:)();

    sub_100032504(v40, v15, type metadata accessor for OwnedBeaconRecord);
    v35 = swift_allocObject();
    sub_10040A014(v15, v35 + v27, v38);
    *(v35 + v28) = v41;
    *(v35 + v39) = 0;
    v36 = (v35 + v31);
    *v36 = v43;
    v36[1] = v34;
    *(v35 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = a5;

    Future.addFailure(block:)();
  }
}

uint64_t sub_1003ECD14(char *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v8 = *a1;
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138B360;
  v10 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  v20 = a2;
  v11 = UUID.uuidString.getter();
  v13 = v12;
  *(v9 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 96) = &type metadata for Bool;
  *(v9 + 104) = &protocol witness table for Bool;
  *(v9 + 72) = v8;
  *(v9 + 136) = &type metadata for Bool;
  *(v9 + 144) = &protocol witness table for Bool;
  *(v9 + 112) = a3 & 1;
  os_log(_:dso:log:_:_:)();

  if (v8 & 1) != 0 || (a3)
  {
    static os_log_type_t.default.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = UUID.uuidString.getter();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v14;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    return sub_1003D9064(v20, 1, a5, a6);
  }

  else
  {
    sub_1003FD838();
    swift_allocError();
    *v15 = 7;
    (a5)();
  }
}

uint64_t sub_1003ECF68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138B360;
  v9 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  *(v8 + 56) = &type metadata for String;
  v20 = a2;
  v13 = sub_100008C00();
  *(v8 + 64) = v13;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  *(v8 + 96) = &type metadata for Bool;
  *(v8 + 104) = &protocol witness table for Bool;
  *(v8 + 72) = a3 & 1;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v14 = String.init<A>(describing:)();
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v13;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  os_log(_:dso:log:_:_:)();

  if ((a3 & 1) == 0)
  {
    return (a5)(a1);
  }

  static os_log_type_t.default.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = UUID.uuidString.getter();
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v13;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  os_log(_:dso:log:_:_:)();

  return sub_1003D9064(v20, 1, a5, a6);
}

uint64_t sub_1003ED190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a2;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = a4;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;

  sub_1003D9064(a3, 1, sub_100405BB0, v15);
}

uint64_t sub_1003ED37C(uint64_t a1)
{
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_100008C00();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    return Future.finish(result:)();
  }
}

uint64_t sub_1003ED538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10)
{
  v56 = a8;
  v55 = a7;
  v54 = a6;
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = type metadata accessor for OSSignpostID();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  else
  {
    v46 = v17;
    v47 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v21;
    v49 = v16;
    v52 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = v20;
    v50 = a2;
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v51 = a9;
    os_log(_:dso:log:_:_:)();
    static os_signpost_type_t.end.getter();
    v27 = a3;
    v28 = os_signpost(_:dso:log:name:signpostID:)();
    if (a4)
    {
      v45 = a10;
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v29 = *(a5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
      v30 = v54;
      v44[1] = sub_1008914EC(v54 + *(v15 + 20));
      v44[0] = swift_allocObject();
      swift_weakInit();
      v32 = v47;
      v31 = v48;
      (*(v48 + 16))(v47, v27, v53);
      sub_100032504(v30, v52, type metadata accessor for OwnedBeaconRecord);
      v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v34 = v33 + v19;
      v35 = (v33 + v19) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 31) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = (*(v49 + 80) + v37 + 8) & ~*(v49 + 80);
      v39 = (v46 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      (*(v31 + 32))(v40 + v33, v32, v53);
      *(v40 + v34) = v55 & 1;
      v41 = v40 + v35;
      v43 = v50;
      v42 = v51;
      *(v41 + 8) = v56;
      *(v41 + 16) = v42;
      *(v40 + v36) = v43;
      *(v40 + v37) = v44[0];
      sub_10040A014(v52, v40 + v38, type metadata accessor for OwnedBeaconRecord);
      *(v40 + v39) = v45;

      Future.addCompletion(block:)();
    }

    else
    {
      return v56(v28);
    }
  }
}

uint64_t sub_1003EDA2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *a1;
  static os_signpost_type_t.end.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  result = os_signpost(_:dso:log:name:signpostID:)();
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v15 = Error.localizedDescription.getter();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    if (a4)
    {
      static os_log_type_t.error.getter();
      v18 = os_log(_:dso:log:_:_:)();
      a5(v18);
    }

    else
    {
      Future.finish(error:)();
    }
  }

  else if (v12 != 2)
  {
    static os_log_type_t.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    *(v19 + 56) = &type metadata for Bool;
    *(v19 + 64) = &protocol witness table for Bool;
    *(v19 + 32) = v12 & 1;
    os_log(_:dso:log:_:_:)();

    if (v12 & 1) != 0 || (a4)
    {
      a5(v20);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v21 = *(result + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_localPairingMonitor);

        sub_100A5188C(a9);
      }
    }

    else
    {
      return Future.finish(result:)();
    }
  }

  return result;
}

uint64_t sub_1003EDD10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_100400A38(a4, a5, a3, sub_100407A2C, v10);
}

uint64_t sub_1003EDDAC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_1003EDE24(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v2 = String.init<A>(describing:)();
    v4 = v3;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 64) = sub_100008C00();
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

uint64_t sub_1003EDF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  static os_log_type_t.default.getter();
  if (a1)
  {
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v14 = *(v6 + 20);
    type metadata accessor for UUID();
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    os_log(_:dso:log:_:_:)();

    return v30(a1);
  }

  else
  {
    v28 = v7;
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v20 = a2 + *(v6 + 20);
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    os_log(_:dso:log:_:_:)();

    v30(0);
    sub_100A5188C(a2);
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    sub_100032504(a2, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
    v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    sub_10040A014(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for OwnedBeaconRecord);
    sub_10025EDD4(0, 0, v12, &unk_1013A07E0, v26);
  }
}

uint64_t sub_1003EE354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v4[9] = v11;
  *v11 = v4;
  v11[1] = sub_1003EE480;

  return daemon.getter();
}

uint64_t sub_1003EE480(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_1003EE65C;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_1003EE65C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1003EEC28;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_1003EE778;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003EE778()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = v0[3];
  UUID.init()();
  v4 = *(v3 + 20);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1003EE82C;
  v6 = v0[12];
  v7 = v0[8];

  return sub_10033205C(v7, v2 + v4);
}

uint64_t sub_1003EE82C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003EEF24;
  }

  else
  {
    v6 = sub_1003EE99C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003EE99C()
{
  v26 = v0;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v10 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10040A66C(v9, type metadata accessor for OwnedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notify when found disabled for beacon %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {
    v18 = v0[5];
    v19 = v0[12];

    sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
  }

  v20 = v0[8];
  v21 = v0[4];
  v22 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003EEC28()
{
  v27 = v0;
  v1 = v0[13];
  v2 = v0[10];

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177ACC8);
  sub_100032504(v4, v3, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v9 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10040A66C(v10, type metadata accessor for OwnedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = v0[4];

    sub_10040A66C(v20, type metadata accessor for OwnedBeaconRecord);
  }

  v21 = v0[8];
  v22 = v0[4];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003EEF24()
{
  v27 = v0;
  v1 = v0[15];
  v2 = v0[12];

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177ACC8);
  sub_100032504(v4, v3, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v9 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10040A66C(v10, type metadata accessor for OwnedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = v0[4];

    sub_10040A66C(v20, type metadata accessor for OwnedBeaconRecord);
  }

  v21 = v0[8];
  v22 = v0[4];
  v23 = v0[5];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1003EF220(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1003EF2B4;

  return daemon.getter();
}

uint64_t sub_1003EF2B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1003FD7F0(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1003EF490;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003EF490(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;

  v7 = v4[8];
  if (v1)
  {

    return _swift_task_switch(sub_1003EF7C0, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v6;
    v8[1] = sub_1003EF64C;
    v9 = v4[6];

    return sub_1001A6108(v9);
  }
}

uint64_t sub_1003EF64C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1003EF948;
  }

  else
  {
    v3 = sub_1003EF760;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003EF760()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003EF7C0()
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  type metadata accessor for UUID();
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003EF948()
{
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[6];
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  type metadata accessor for UUID();
  sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  swift_getErrorValue();
  v11 = v0[2];
  v10 = v0[3];
  v12 = v0[4];
  v13 = Error.localizedDescription.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v9;
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  os_log(_:dso:log:_:_:)();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003EFB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v23 = v11;
    v24 = a2;
    v22 = a4;
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v25 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)();

    a4 = v22;
    v11 = v23;
    a2 = v24;
  }

  v17 = *(a2 + 280);
  sub_100032504(a3, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_10040A014(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SharedBeaconRecord);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a4;
  v20[1] = a5;
  swift_errorRetain();

  sub_100DDDDF4(a3, sub_100406D84, v19);
}

uint64_t sub_1003EFDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a1;
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v40 - v14;
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v40 - v18;
  if (a2)
  {
    v40[0] = a4;
    v40[1] = a5;
    if (qword_1016946D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177ACC8);
    sub_100032504(a3, v13, type metadata accessor for SharedBeaconRecord);
    swift_errorRetain();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v42 = v25;
      *v23 = 141558787;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      v26 = *(v9 + 20);
      type metadata accessor for UUID();
      sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10040A66C(v13, type metadata accessor for SharedBeaconRecord);
      v30 = sub_1000136BC(v27, v29, &v42);
      v31 = v41;

      *(v23 + 14) = v30;
      *(v23 + 22) = 2112;
      if (v31)
      {
        swift_errorRetain();
        v32 = _swift_stdlib_bridgeErrorToNSError();
        v33 = v32;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      *(v23 + 24) = v32;
      *v24 = v33;
      *(v23 + 32) = 2114;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 34) = v39;
      v24[1] = v39;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unpair for beacon %{private,mask.hash}s, success: %@, error: %{public}@.", v23, 0x2Au);
      sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
      swift_arrayDestroy();

      sub_100007BAC(v25);
    }

    else
    {

      sub_10040A66C(v13, type metadata accessor for SharedBeaconRecord);
    }

    return (v40[0])(a2);
  }

  else
  {
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
    sub_100032504(a3, v15, type metadata accessor for SharedBeaconRecord);
    v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_10040A014(v15, v36 + v35, type metadata accessor for SharedBeaconRecord);
    v37 = (v36 + ((v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = a4;
    v37[1] = a5;

    sub_10025EDD4(0, 0, v19, &unk_1013A07F0, v36);
  }
}

uint64_t sub_1003F0290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v6[11] = v13;
  *v13 = v6;
  v13[1] = sub_1003F03C0;

  return daemon.getter();
}

uint64_t sub_1003F03C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_1003FD7F0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1003FD7F0(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_1003F059C;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_1003F059C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_1003F0B80;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_1003F06B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003F06B8()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[2];
  UUID.init()();
  v4 = *(v2 + 20);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1003F0770;
  v6 = v0[14];
  v7 = v0[10];

  return sub_10033205C(v7, v3 + v4);
}

uint64_t sub_1003F0770()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1003F0E90;
  }

  else
  {
    v6 = sub_1003F08E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003F08E0()
{
  v27 = v0;
  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177ACC8);
  sub_100032504(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v10 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10040A66C(v9, type metadata accessor for SharedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notify when found disabled for beacon %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {
    v18 = *(v0 + 56);
    v19 = *(v0 + 112);

    sub_10040A66C(v18, type metadata accessor for SharedBeaconRecord);
  }

  v20 = *(v0 + 80);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 32);
  (*(v0 + 24))(0);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1003F0B80()
{
  v28 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177ACC8);
  sub_100032504(v4, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v9 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10040A66C(v10, type metadata accessor for SharedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = *(v0 + 48);

    sub_10040A66C(v20, type metadata accessor for SharedBeaconRecord);
  }

  v21 = *(v0 + 80);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 32);
  (*(v0 + 24))(0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003F0E90()
{
  v28 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  if (qword_1016946D0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177ACC8);
  sub_100032504(v4, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v9 + 20);
    sub_1003FD7F0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10040A66C(v10, type metadata accessor for SharedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disable notify when found for beacon %{private,mask.hash}s, error - %{public}@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = *(v0 + 48);

    sub_10040A66C(v20, type metadata accessor for SharedBeaconRecord);
  }

  v21 = *(v0 + 80);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 32);
  (*(v0 + 24))(0);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003F11A0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v4 = String.init<A>(describing:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695068 != -1)
    {
      swift_once();
    }

    v7 = os_log(_:dso:log:_:_:)();
  }

  return a2(v7);
}

Swift::Int sub_1003F135C(void **a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100B320AC(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1003F1610(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1003F141C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v16, 0, 14);
      v7 = v16;
      goto LABEL_17;
    }

    v8 = a5;
    v9 = a4;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v12 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      a5 = v10 - a1;
      if (__OFSUB__(v10, a1))
      {
        goto LABEL_19;
      }

      v12 += a5;
    }

    if (!__OFSUB__(v11, v10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v13 = a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a5;
      v9 = a4;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
LABEL_15:
        __DataStorage._length.getter();
        a5 = v8;
        v7 = v12;
        a3 = v5;
        a4 = v9;
        goto LABEL_17;
      }

      v14 = __DataStorage._offset.getter();
      if (!__OFSUB__(v13, v14))
      {
        v12 += v13 - v14;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v16[0] = a1;
  LOWORD(v16[1]) = a2;
  BYTE2(v16[1]) = BYTE2(a2);
  BYTE3(v16[1]) = BYTE3(a2);
  BYTE4(v16[1]) = BYTE4(a2);
  BYTE5(v16[1]) = BYTE5(a2);
  v7 = v16;
LABEL_17:
  sub_100A78A88(v7, a3, a4, a5);
}

Swift::Int sub_1003F1610(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for OwnedBeaconRecord();
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for OwnedBeaconRecord() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1003F174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_100032504(v24, v18, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v21, v14, type metadata accessor for OwnedBeaconRecord);
      v25 = *(v8 + 32);
      v26 = static Date.< infix(_:_:)();
      sub_10040A66C(v14, type metadata accessor for OwnedBeaconRecord);
      result = sub_10040A66C(v18, type metadata accessor for OwnedBeaconRecord);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10040A014(v24, v37, type metadata accessor for OwnedBeaconRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10040A014(v27, v21, type metadata accessor for OwnedBeaconRecord);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003F19B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v113 = &v99 - v18;
  v125 = type metadata accessor for Date();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v125);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v99 - v24;
  v117 = type metadata accessor for OwnedBeaconRecord();
  v25 = *(*(v117 - 8) + 64);
  v26 = __chkstk_darwin(v117);
  v116 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v127 = (&v99 - v29);
  result = __chkstk_darwin(v28);
  v33 = (&v99 - v32);
  v101 = a2;
  if (a3 != a2)
  {
    v107 = v12;
    v123 = (v19 + 56);
    v126 = (v19 + 48);
    v34 = *a4;
    v106 = (v19 + 32);
    v119 = (v19 + 8);
    v35 = *(v31 + 72);
    v36 = v34 + v35 * (a3 - 1);
    v114 = -v35;
    v115 = v34;
    v37 = a1 - a3;
    v100 = v35;
    v38 = v34 + v35 * a3;
    v109 = xmmword_101385D80;
    v112 = v17;
    v39 = v113;
    v118 = v23;
    v120 = (&v99 - v32);
    do
    {
      v105 = a3;
      v102 = v38;
      v40 = v38;
      v103 = v37;
      v41 = v37;
      v104 = v36;
      while (1)
      {
        v122 = v41;
        sub_100032504(v40, v33, type metadata accessor for OwnedBeaconRecord);
        sub_100032504(v36, v127, type metadata accessor for OwnedBeaconRecord);
        v42 = objc_autoreleasePoolPush();
        v43 = *v33;
        v44 = v33[1];
        v45 = v44 >> 62;
        v121 = v40;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2 || *(v43 + 16) == *(v43 + 24))
          {
LABEL_18:
            v54 = v125;
LABEL_22:
            v64 = *v123;
            (*v123)(v39, 1, 1, v54);
            goto LABEL_23;
          }
        }

        else if (v45)
        {
          if (v43 == v43 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v44 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v43, v44);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v49 = [v47 initForReadingFromData:isa error:&v128];

        if (!v49)
        {
          v57 = v128;
          v58 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v43, v44);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v59 = swift_allocObject();
          *(v59 + 16) = v109;
          v128 = v58;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = sub_100008C00();
          *(v59 + 32) = v60;
          *(v59 + 40) = v62;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v49 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_21:
          v39 = v113;
          v54 = v125;

          objc_autoreleasePoolPop(v46);
          v17 = v112;
          goto LABEL_22;
        }

        v50 = v128;
        sub_100016590(v43, v44);
        [v49 _enableStrictSecureDecodingMode];
        v51 = [objc_allocWithZone(CKRecord) initWithCoder:v49];
        if (!v51)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v63 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_21;
        }

        v52 = v51;

        objc_autoreleasePoolPop(v46);
        v53 = [v52 creationDate];

        v39 = v113;
        v54 = v125;
        if (v53)
        {
          v55 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = 0;
        }

        else
        {
          v56 = 1;
          v55 = v108;
        }

        v17 = v112;
        v64 = *v123;
        (*v123)(v55, v56, 1, v54);
        sub_1000D2AD8(v55, v39, &unk_101696900, &unk_10138B1E0);
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          (*v106)(v124, v39, v54);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v42);
        v66 = objc_autoreleasePoolPush();
        v67 = v66;
        v68 = *v127;
        v69 = v127[1];
        v70 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          if (v70 != 2 || *(v68 + 16) == *(v68 + 24))
          {
LABEL_36:
            v79 = v125;
LABEL_40:
            v64(v17, 1, 1, v79);
            v89 = v118;
            goto LABEL_41;
          }
        }

        else if (v70)
        {
          if (v68 == v68 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v69 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v111 = v66;
        v71 = objc_autoreleasePoolPush();
        v72 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v68, v69);
        v73 = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v74 = [v72 initForReadingFromData:v73 error:&v128];

        if (!v74)
        {
          v82 = v128;
          v83 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v68, v69);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v109;
          v128 = v83;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v74 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_39:
          v39 = v113;
          v79 = v125;

          objc_autoreleasePoolPop(v71);
          v67 = v111;
          v17 = v112;
          goto LABEL_40;
        }

        v75 = v128;
        sub_100016590(v68, v69);
        [v74 _enableStrictSecureDecodingMode];
        v76 = [objc_allocWithZone(CKRecord) initWithCoder:v74];
        if (!v76)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v88 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_39;
        }

        v77 = v76;

        objc_autoreleasePoolPop(v71);
        v78 = [v77 creationDate];

        v39 = v113;
        v79 = v125;
        if (v78)
        {
          v80 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = 0;
        }

        else
        {
          v81 = 1;
          v80 = v107;
        }

        v17 = v112;
        v64(v80, v81, 1, v79);
        sub_1000D2AD8(v80, v17, &unk_101696900, &unk_10138B1E0);
        if (v65(v17, 1, v79) != 1)
        {
          v90 = v39;
          v89 = v118;
          v91 = v17;
          (*v106)(v118, v17, v79);
          v67 = v111;
          goto LABEL_43;
        }

        v89 = v118;
        v67 = v111;
LABEL_41:
        v90 = v39;
        Date.init()();
        v91 = v17;
        if (v65(v17, 1, v79) != 1)
        {
          sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v67);
        v92 = v124;
        v93 = Date.compare(_:)();
        v94 = *v119;
        (*v119)(v89, v79);
        v94(v92, v79);
        sub_10040A66C(v127, type metadata accessor for OwnedBeaconRecord);
        v33 = v120;
        result = sub_10040A66C(v120, type metadata accessor for OwnedBeaconRecord);
        if (v93 != 1)
        {
          break;
        }

        v95 = v122;
        if (!v115)
        {
          __break(1u);
        }

        v96 = v121;
        v97 = v116;
        sub_10040A014(v121, v116, type metadata accessor for OwnedBeaconRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10040A014(v97, v36, type metadata accessor for OwnedBeaconRecord);
        v36 += v114;
        v40 = v96 + v114;
        v98 = __CFADD__(v95, 1);
        v41 = v95 + 1;
        v17 = v91;
        v39 = v90;
        if (v98)
        {
          goto LABEL_5;
        }
      }

      v17 = v91;
      v39 = v90;
LABEL_5:
      a3 = v105 + 1;
      v36 = v104 + v100;
      v37 = v103 - 1;
      v38 = v102 + v100;
    }

    while (v105 + 1 != v101);
  }

  return result;
}

uint64_t sub_1003F2680(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for OwnedBeaconRecord();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1003F4F58(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_100032504(v114 + v25 * v24, v19, type metadata accessor for OwnedBeaconRecord);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_100032504(v27, v120, type metadata accessor for OwnedBeaconRecord);
      v30 = *(v9 + 32);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_10040A66C(v29, type metadata accessor for OwnedBeaconRecord);
      result = sub_10040A66C(v19, type metadata accessor for OwnedBeaconRecord);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_100032504(v32, v19, type metadata accessor for OwnedBeaconRecord);
        v33 = v120;
        sub_100032504(v5, v120, type metadata accessor for OwnedBeaconRecord);
        v34 = *(v121 + 32);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_10040A66C(v33, type metadata accessor for OwnedBeaconRecord);
        result = sub_10040A66C(v19, type metadata accessor for OwnedBeaconRecord);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10040A014(v42 + v41, v111, type metadata accessor for OwnedBeaconRecord);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10040A014(v111, v42 + v36, type metadata accessor for OwnedBeaconRecord);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_100032504(v5, v19, type metadata accessor for OwnedBeaconRecord);
    v96 = v120;
    sub_100032504(v93, v120, type metadata accessor for OwnedBeaconRecord);
    v97 = *(v9 + 32);
    a4 = static Date.< infix(_:_:)();
    sub_10040A66C(v96, type metadata accessor for OwnedBeaconRecord);
    result = sub_10040A66C(v19, type metadata accessor for OwnedBeaconRecord);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1003F4F58(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for OwnedBeaconRecord;
    v98 = v119;
    sub_10040A014(v5, v119, type metadata accessor for OwnedBeaconRecord);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10040A014(v98, v93, type metadata accessor for OwnedBeaconRecord);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

void sub_1003F2FE4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v258 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v251 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v251 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v251 - v20;
  v22 = __chkstk_darwin(v19);
  v260 = &v251 - v23;
  v24 = __chkstk_darwin(v22);
  v259 = &v251 - v25;
  v26 = __chkstk_darwin(v24);
  v270 = &v251 - v27;
  __chkstk_darwin(v26);
  v269 = &v251 - v28;
  v290 = type metadata accessor for Date();
  v29 = *(v290 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v290);
  v288 = &v251 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v295 = &v251 - v34;
  v35 = __chkstk_darwin(v33);
  v275 = &v251 - v36;
  v37 = __chkstk_darwin(v35);
  v277 = &v251 - v38;
  v39 = __chkstk_darwin(v37);
  v254 = &v251 - v40;
  __chkstk_darwin(v39);
  v256 = &v251 - v41;
  v287 = type metadata accessor for OwnedBeaconRecord();
  v271 = *(v287 - 8);
  v42 = *(v271 + 64);
  v43 = __chkstk_darwin(v287);
  v263 = &v251 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v286 = &v251 - v46;
  v47 = __chkstk_darwin(v45);
  v298 = (&v251 - v48);
  v49 = __chkstk_darwin(v47);
  v294 = (&v251 - v50);
  v51 = __chkstk_darwin(v49);
  v281 = (&v251 - v52);
  v53 = __chkstk_darwin(v51);
  v276 = (&v251 - v54);
  v55 = __chkstk_darwin(v53);
  v253 = (&v251 - v56);
  __chkstk_darwin(v55);
  v255 = (&v251 - v57);
  v58 = a3[1];
  if (v58 >= 1)
  {
    v291 = v18;
    v59 = 0;
    v289 = (v29 + 8);
    v296 = (v29 + 56);
    v297 = (v29 + 48);
    v60 = _swiftEmptyArrayStorage;
    v274 = (v29 + 32);
    v279 = xmmword_101385D80;
    v252 = a3;
    v257 = a4;
    v273 = v12;
    v272 = v15;
    v283 = v21;
    v61 = v290;
LABEL_4:
    v264 = v60;
    v265 = v59;
    if (v59 + 1 >= v58)
    {
      v82 = v59 + 1;
      goto LABEL_69;
    }

    v278 = v58;
    v62 = *a3;
    v63 = *(v271 + 72);
    v64 = v5;
    v65 = *a3 + v63 * (v59 + 1);
    v66 = v255;
    sub_100032504(v65, v255, type metadata accessor for OwnedBeaconRecord);
    v292 = v63;
    v67 = v62 + v63 * v59;
    v68 = v253;
    sub_100032504(v67, v253, type metadata accessor for OwnedBeaconRecord);
    a4 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v66, v256);
    if (v64)
    {
      goto LABEL_225;
    }

    objc_autoreleasePoolPop(a4);
    v69 = objc_autoreleasePoolPush();
    v70 = v254;
    sub_100E7AB5C(v68, v254);
    v280 = 0;
    objc_autoreleasePoolPop(v69);
    v71 = v256;
    v285 = Date.compare(_:)();
    v72 = v290;
    v73 = *v289;
    (*v289)(v70, v290);
    v284 = v73;
    v73(v71, v72);
    v29 = type metadata accessor for OwnedBeaconRecord;
    sub_10040A66C(v68, type metadata accessor for OwnedBeaconRecord);
    sub_10040A66C(v255, type metadata accessor for OwnedBeaconRecord);
    v74 = v265 + 2;
    v75 = (v62 + v292 * (v265 + 2));
    v21 = v283;
    while (1)
    {
      v82 = v278;
      if (v278 == v74)
      {
LABEL_54:
        a3 = v252;
        a4 = v257;
        v5 = v280;
        if (v285 != 1)
        {
          goto LABEL_67;
        }

        if (v82 < v265)
        {
          goto LABEL_215;
        }

        if (v265 < v82)
        {
          v135 = v292 * (v82 - 1);
          v136 = v82 * v292;
          v137 = v82;
          v138 = v265;
          v139 = v265 * v292;
          do
          {
            if (v138 != --v137)
            {
              v140 = *a3;
              if (!*a3)
              {
                goto LABEL_221;
              }

              v141 = v82;
              v29 = v140 + v139;
              sub_10040A014(v140 + v139, v263, type metadata accessor for OwnedBeaconRecord);
              if (v139 < v135 || v29 >= v140 + v136)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v139 != v135)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10040A014(v263, v140 + v135, type metadata accessor for OwnedBeaconRecord);
              v21 = v283;
              v82 = v141;
            }

            ++v138;
            v135 -= v292;
            v136 -= v292;
            v139 += v292;
          }

          while (v138 < v137);
          a4 = v257;
          v61 = v290;
          v5 = v280;
        }

        else
        {
LABEL_67:
          v61 = v290;
        }

LABEL_69:
        v142 = a3[1];
        if (v82 >= v142)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v82, v265))
        {
          goto LABEL_214;
        }

        if (v82 - v265 >= a4)
        {
LABEL_78:
          v59 = v82;
          goto LABEL_79;
        }

        if (__OFADD__(v265, a4))
        {
          goto LABEL_216;
        }

        if ((v265 + a4) >= v142)
        {
          v143 = a3[1];
        }

        else
        {
          v143 = v265 + a4;
        }

        if (v143 >= v265)
        {
          if (v82 == v143)
          {
            goto LABEL_78;
          }

          v280 = v5;
          v188 = *a3;
          v189 = *(v271 + 72);
          v190 = (*a3 + v189 * (v82 - 1));
          v284 = -v189;
          v191 = v265 - v82;
          v285 = v188;
          v261 = v189;
          v192 = v188 + v82 * v189;
          v262 = v143;
LABEL_132:
          v278 = v82;
          v266 = v192;
          v267 = v191;
          v193 = v191;
          v268 = v190;
          while (2)
          {
            v292 = v193;
            v194 = v294;
            sub_100032504(v192, v294, type metadata accessor for OwnedBeaconRecord);
            sub_100032504(v190, v298, type metadata accessor for OwnedBeaconRecord);
            v293 = objc_autoreleasePoolPush();
            v195 = *v194;
            v196 = v194[1];
            v197 = v196 >> 62;
            if ((v196 >> 62) > 1)
            {
              v198 = v291;
              if (v197 == 2 && *(v195 + 16) != *(v195 + 24))
              {
                goto LABEL_141;
              }

LABEL_148:
              v216 = *v296;
              (*v296)(v21, 1, 1, v61);
              goto LABEL_149;
            }

            v198 = v291;
            if (v197)
            {
              if (v195 == v195 >> 32)
              {
                goto LABEL_148;
              }
            }

            else if ((v196 & 0xFF000000000000) == 0)
            {
              goto LABEL_148;
            }

LABEL_141:
            v199 = objc_autoreleasePoolPush();
            v200 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v195, v196);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v299 = 0;
            v202 = [v200 initForReadingFromData:isa error:&v299];

            if (v202)
            {
              v203 = v299;
              sub_100016590(v195, v196);
              [v202 _enableStrictSecureDecodingMode];
              v204 = [objc_allocWithZone(CKRecord) initWithCoder:v202];
              if (v204)
              {
                v205 = v204;

                objc_autoreleasePoolPop(v199);
                v206 = [v205 creationDate];

                v21 = v283;
                if (v206)
                {
                  v207 = v272;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v208 = 0;
                }

                else
                {
                  v208 = 1;
                  v207 = v272;
                }

                v61 = v290;
                v216 = *v296;
                (*v296)(v207, v208, 1, v290);
                sub_1000D2AD8(v207, v21, &unk_101696900, &unk_10138B1E0);
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  (*v274)(v295, v21, v61);
                  goto LABEL_151;
                }

LABEL_149:
                Date.init()();
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
                }

LABEL_151:
                objc_autoreleasePoolPop(v293);
                v293 = objc_autoreleasePoolPush();
                v218 = *v298;
                v219 = v298[1];
                v220 = v219 >> 62;
                if ((v219 >> 62) > 1)
                {
                  if (v220 == 2 && *(v218 + 16) != *(v218 + 24))
                  {
                    goto LABEL_157;
                  }

LABEL_162:
                  v231 = v288;
                }

                else
                {
                  if (v220)
                  {
                    if (v218 == v218 >> 32)
                    {
                      goto LABEL_162;
                    }
                  }

                  else if ((v219 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_162;
                  }

LABEL_157:
                  v282 = v216;
                  v221 = objc_autoreleasePoolPush();
                  v222 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v218, v219);
                  v223 = Data._bridgeToObjectiveC()().super.isa;
                  v299 = 0;
                  v224 = [v222 initForReadingFromData:v223 error:&v299];

                  if (v224)
                  {
                    v225 = v299;
                    sub_100016590(v218, v219);
                    [v224 _enableStrictSecureDecodingMode];
                    v226 = [objc_allocWithZone(CKRecord) initWithCoder:v224];
                    if (v226)
                    {
                      v227 = v226;

                      objc_autoreleasePoolPop(v221);
                      v228 = [v227 creationDate];

                      v198 = v291;
                      v21 = v283;
                      if (v228)
                      {
                        v229 = v273;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v230 = 0;
                      }

                      else
                      {
                        v230 = 1;
                        v229 = v273;
                      }

                      v61 = v290;
                      v231 = v288;
                      v282(v229, v230, 1, v290);
                      sub_1000D2AD8(v229, v198, &unk_101696900, &unk_10138B1E0);
                      if (v217(v198, 1, v61) != 1)
                      {
                        v245 = v198;
                        v239 = v21;
                        (*v274)(v231, v245, v61);
                        goto LABEL_170;
                      }

LABEL_167:
                      Date.init()();
                      if (v217(v198, 1, v61) == 1)
                      {
                        v239 = v21;
                      }

                      else
                      {
                        v240 = v198;
                        v239 = v21;
                        sub_10000B3A8(v240, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_170:
                      objc_autoreleasePoolPop(v293);
                      v241 = v295;
                      v29 = Date.compare(_:)();
                      v242 = *v289;
                      (*v289)(v231, v61);
                      v242(v241, v61);
                      a4 = type metadata accessor for OwnedBeaconRecord;
                      sub_10040A66C(v298, type metadata accessor for OwnedBeaconRecord);
                      sub_10040A66C(v294, type metadata accessor for OwnedBeaconRecord);
                      if (v29 == 1)
                      {
                        v243 = v292;
                        if (!v285)
                        {
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
                        }

                        v29 = type metadata accessor for OwnedBeaconRecord;
                        a4 = v286;
                        sub_10040A014(v192, v286, type metadata accessor for OwnedBeaconRecord);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_10040A014(a4, v190, type metadata accessor for OwnedBeaconRecord);
                        v190 = v284 + v190;
                        v192 += v284;
                        v244 = __CFADD__(v243, 1);
                        v193 = v243 + 1;
                        v21 = v239;
                        if (v244)
                        {
                          goto LABEL_131;
                        }

                        continue;
                      }

                      v21 = v239;
LABEL_131:
                      v82 = v278 + 1;
                      v190 = &v268[v261];
                      v191 = v267 - 1;
                      v192 = v266 + v261;
                      v59 = v262;
                      if (v278 + 1 != v262)
                      {
                        goto LABEL_132;
                      }

                      a3 = v252;
                      v5 = v280;
LABEL_79:
                      if (v59 < v265)
                      {
                        goto LABEL_213;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v60 = v264;
                      }

                      else
                      {
                        v60 = sub_100A5B430(0, *(v264 + 2) + 1, 1, v264);
                      }

                      v29 = *(v60 + 2);
                      v144 = *(v60 + 3);
                      a4 = v29 + 1;
                      v145 = v5;
                      if (v29 >= v144 >> 1)
                      {
                        v60 = sub_100A5B430((v144 > 1), v29 + 1, 1, v60);
                      }

                      *(v60 + 2) = a4;
                      v146 = &v60[16 * v29];
                      *(v146 + 4) = v265;
                      *(v146 + 5) = v59;
                      v5 = *v258;
                      if (!*v258)
                      {
                        goto LABEL_223;
                      }

                      if (v29)
                      {
                        while (2)
                        {
                          v29 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v151 = &v60[16 * a4 + 32];
                            v152 = *(v151 - 64);
                            v153 = *(v151 - 56);
                            v157 = __OFSUB__(v153, v152);
                            v154 = v153 - v152;
                            if (v157)
                            {
                              goto LABEL_200;
                            }

                            v156 = *(v151 - 48);
                            v155 = *(v151 - 40);
                            v157 = __OFSUB__(v155, v156);
                            v149 = v155 - v156;
                            v150 = v157;
                            if (v157)
                            {
                              goto LABEL_201;
                            }

                            v158 = &v60[16 * a4];
                            v160 = *v158;
                            v159 = *(v158 + 1);
                            v157 = __OFSUB__(v159, v160);
                            v161 = v159 - v160;
                            if (v157)
                            {
                              goto LABEL_203;
                            }

                            v157 = __OFADD__(v149, v161);
                            v162 = v149 + v161;
                            if (v157)
                            {
                              goto LABEL_206;
                            }

                            if (v162 >= v154)
                            {
                              v180 = &v60[16 * v29 + 32];
                              v182 = *v180;
                              v181 = *(v180 + 1);
                              v157 = __OFSUB__(v181, v182);
                              v183 = v181 - v182;
                              if (v157)
                              {
                                goto LABEL_210;
                              }

                              if (v149 < v183)
                              {
                                v29 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_99:
                              if (v150)
                              {
                                goto LABEL_202;
                              }

                              v163 = &v60[16 * a4];
                              v165 = *v163;
                              v164 = *(v163 + 1);
                              v166 = __OFSUB__(v164, v165);
                              v167 = v164 - v165;
                              v168 = v166;
                              if (v166)
                              {
                                goto LABEL_205;
                              }

                              v169 = &v60[16 * v29 + 32];
                              v171 = *v169;
                              v170 = *(v169 + 1);
                              v157 = __OFSUB__(v170, v171);
                              v172 = v170 - v171;
                              if (v157)
                              {
                                goto LABEL_208;
                              }

                              if (__OFADD__(v167, v172))
                              {
                                goto LABEL_209;
                              }

                              if (v167 + v172 < v149)
                              {
                                goto LABEL_113;
                              }

                              if (v149 < v172)
                              {
                                v29 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v147 = *(v60 + 4);
                              v148 = *(v60 + 5);
                              v157 = __OFSUB__(v148, v147);
                              v149 = v148 - v147;
                              v150 = v157;
                              goto LABEL_99;
                            }

                            v173 = &v60[16 * a4];
                            v175 = *v173;
                            v174 = *(v173 + 1);
                            v157 = __OFSUB__(v174, v175);
                            v167 = v174 - v175;
                            v168 = v157;
LABEL_113:
                            if (v168)
                            {
                              goto LABEL_204;
                            }

                            v176 = &v60[16 * v29];
                            v178 = *(v176 + 4);
                            v177 = *(v176 + 5);
                            v157 = __OFSUB__(v177, v178);
                            v179 = v177 - v178;
                            if (v157)
                            {
                              goto LABEL_207;
                            }

                            if (v179 < v167)
                            {
                              break;
                            }
                          }

                          v184 = v29 - 1;
                          if (v29 - 1 >= a4)
                          {
                            __break(1u);
LABEL_198:
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
                            goto LABEL_217;
                          }

                          if (!*a3)
                          {
                            goto LABEL_220;
                          }

                          v185 = v60;
                          a4 = *&v60[16 * v184 + 32];
                          v186 = *&v60[16 * v29 + 40];
                          sub_1003F5488(*a3 + *(v271 + 72) * a4, *a3 + *(v271 + 72) * *&v60[16 * v29 + 32], *a3 + *(v271 + 72) * v186, v5);
                          if (v145)
                          {
                            goto LABEL_196;
                          }

                          if (v186 < a4)
                          {
                            goto LABEL_198;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v185 = sub_100B31E68(v185);
                          }

                          if (v184 >= *(v185 + 2))
                          {
                            goto LABEL_199;
                          }

                          v187 = &v185[16 * v184];
                          *(v187 + 4) = a4;
                          *(v187 + 5) = v186;
                          v300 = v185;
                          sub_100B31DDC(v29);
                          v60 = v300;
                          a4 = *(v300 + 2);
                          v61 = v290;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v58 = a3[1];
                      a4 = v257;
                      v5 = v145;
                      v21 = v283;
                      if (v59 >= v58)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_4;
                    }

                    static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v238 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();
                  }

                  else
                  {
                    v232 = v299;
                    v233 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v218, v219);
                    static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v234 = swift_allocObject();
                    *(v234 + 16) = v279;
                    v299 = v233;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v235 = String.init<A>(describing:)();
                    v237 = v236;
                    *(v234 + 56) = &type metadata for String;
                    *(v234 + 64) = sub_100008C00();
                    *(v234 + 32) = v235;
                    *(v234 + 40) = v237;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v224 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v280 = 0;
                  }

                  v198 = v291;
                  v21 = v283;

                  objc_autoreleasePoolPop(v221);
                  v61 = v290;
                  v231 = v288;
                  v216 = v282;
                }

                v216(v198, 1, 1, v61);
                goto LABEL_167;
              }

              static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v215 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();
            }

            else
            {
              v209 = v299;
              v210 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v195, v196);
              static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v211 = swift_allocObject();
              *(v211 + 16) = v279;
              v299 = v210;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v212 = String.init<A>(describing:)();
              v214 = v213;
              *(v211 + 56) = &type metadata for String;
              *(v211 + 64) = sub_100008C00();
              *(v211 + 32) = v212;
              *(v211 + 40) = v214;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v202 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              v198 = v291;

              v280 = 0;
            }

            break;
          }

          v21 = v283;

          objc_autoreleasePoolPop(v199);
          v61 = v290;
          goto LABEL_148;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        v246 = sub_100B31E68(a4);
        goto LABEL_188;
      }

      v293 = v75;
      v83 = v276;
      sub_100032504(v75, v276, type metadata accessor for OwnedBeaconRecord);
      sub_100032504(v65, v281, type metadata accessor for OwnedBeaconRecord);
      v84 = objc_autoreleasePoolPush();
      v85 = v84;
      v86 = *v83;
      v87 = v83[1];
      v88 = v87 >> 62;
      v89 = v290;
      if ((v87 >> 62) > 1)
      {
        if (v88 != 2 || *(v86 + 16) == *(v86 + 24))
        {
LABEL_21:
          v101 = v269;
LABEL_25:
          v109 = *v296;
          (*v296)(v101, 1, 1, v89);
          goto LABEL_26;
        }
      }

      else if (v88)
      {
        if (v86 == v86 >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((v87 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v90 = v84;
      v91 = objc_autoreleasePoolPush();
      v92 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v86, v87);
      v93 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v94 = [v92 initForReadingFromData:v93 error:&v299];

      if (!v94)
      {
        break;
      }

      v95 = v299;
      sub_100016590(v86, v87);
      [v94 _enableStrictSecureDecodingMode];
      v96 = [objc_allocWithZone(CKRecord) initWithCoder:v94];
      if (!v96)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v108 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_24;
      }

      v97 = v96;

      objc_autoreleasePoolPop(v91);
      v98 = [v97 creationDate];

      v21 = v283;
      v89 = v290;
      if (v98)
      {
        v99 = v259;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
        v99 = v259;
      }

      v85 = v90;
      v109 = *v296;
      (*v296)(v99, v100, 1, v89);
      v133 = v99;
      v101 = v269;
      sub_1000D2AD8(v133, v269, &unk_101696900, &unk_10138B1E0);
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        (*v274)(v277, v101, v89);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v85);
      v111 = objc_autoreleasePoolPush();
      v112 = v111;
      v114 = *v281;
      v113 = v281[1];
      v115 = v113 >> 62;
      if ((v113 >> 62) > 1)
      {
        if (v115 != 2 || *(v114 + 16) == *(v114 + 24))
        {
LABEL_39:
          v125 = v270;
LABEL_43:
          v109(v125, 1, 1, v89);
LABEL_44:
          v76 = v65;
          Date.init()();
          if (v110(v125, 1, v89) != 1)
          {
            sub_10000B3A8(v125, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v115)
      {
        if (v114 == v114 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v113 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v282 = v111;
      v268 = objc_autoreleasePoolPush();
      v116 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v114, v113);
      v117 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v118 = [v116 initForReadingFromData:v117 error:&v299];

      if (!v118)
      {
        v126 = v299;
        v127 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v114, v113);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v128 = swift_allocObject();
        *(v128 + 16) = v279;
        v299 = v127;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        *(v128 + 56) = &type metadata for String;
        *(v128 + 64) = sub_100008C00();
        *(v128 + 32) = v129;
        *(v128 + 40) = v131;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v118 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v21 = v283;

        v280 = 0;
LABEL_42:
        v112 = v282;

        objc_autoreleasePoolPop(v268);
        v125 = v270;
        v89 = v290;
        goto LABEL_43;
      }

      v119 = v299;
      sub_100016590(v114, v113);
      [v118 _enableStrictSecureDecodingMode];
      v120 = [objc_allocWithZone(CKRecord) initWithCoder:v118];
      if (!v120)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v132 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_42;
      }

      v121 = v120;

      objc_autoreleasePoolPop(v268);
      v122 = [v121 creationDate];

      v112 = v282;
      if (v122)
      {
        v123 = v260;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = 0;
      }

      else
      {
        v124 = 1;
        v123 = v260;
      }

      v89 = v290;
      v109(v123, v124, 1, v290);
      v134 = v123;
      v125 = v270;
      sub_1000D2AD8(v134, v270, &unk_101696900, &unk_10138B1E0);
      if (v110(v125, 1, v89) == 1)
      {
        goto LABEL_44;
      }

      v76 = v65;
      (*v274)(v275, v125, v89);
LABEL_8:
      v77 = v285 == 1;
      objc_autoreleasePoolPop(v112);
      v78 = v275;
      v79 = v277;
      v29 = Date.compare(_:)();
      v80 = v290;
      v81 = v284;
      v284(v78, v290);
      v81(v79, v80);
      sub_10040A66C(v281, type metadata accessor for OwnedBeaconRecord);
      sub_10040A66C(v276, type metadata accessor for OwnedBeaconRecord);
      ++v74;
      v75 = &v293[v292];
      v65 = v76 + v292;
      if (((v77 ^ (v29 != 1)) & 1) == 0)
      {
        v82 = v74 - 1;
        goto LABEL_54;
      }
    }

    v102 = v299;
    v103 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v86, v87);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v104 = swift_allocObject();
    *(v104 + 16) = v279;
    v299 = v103;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_100008C00();
    *(v104 + 32) = v105;
    *(v104 + 40) = v107;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v94 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v280 = 0;
LABEL_24:
    v21 = v283;
    v89 = v290;

    objc_autoreleasePoolPop(v91);
    v101 = v269;
    v85 = v90;
    goto LABEL_25;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_185:
  v29 = *v258;
  if (*v258)
  {
    a4 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_218;
    }

    v246 = a4;
LABEL_188:
    v300 = v246;
    a4 = *(v246 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v247 = *&v246[16 * a4];
        v248 = v246;
        v249 = *&v246[16 * a4 + 24];
        sub_1003F5488(*a3 + *(v271 + 72) * v247, *a3 + *(v271 + 72) * *&v246[16 * a4 + 16], *a3 + *(v271 + 72) * v249, v29);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v249 < v247)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_100B31E68(v248);
        }

        if (a4 - 2 >= *(v248 + 2))
        {
          goto LABEL_212;
        }

        v250 = &v248[16 * a4];
        *v250 = v247;
        *(v250 + 1) = v249;
        v300 = v248;
        sub_100B31DDC(a4 - 1);
        v246 = v300;
        a4 = *(v300 + 2);
        if (a4 <= 1)
        {
          goto LABEL_196;
        }
      }

      goto LABEL_222;
    }

LABEL_196:
  }

  else
  {
    __break(1u);
LABEL_225:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}