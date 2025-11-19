uint64_t sub_100B0E4A8(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for StableIdentifier();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OwnedBeaconRecord();
  sub_100022A54(a1 + *(v8 + 24), v7, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v21 = *(v7 + v20[12] + 8);

    v22 = *(v7 + v20[16] + 8);

    v23 = (v7 + v20[20]);
    v12 = *v23;
    v18 = v23[1];
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = v7[1];
        v11 = v7[3];
        v12 = v7[4];
        v13 = v7[5];
      }

      else
      {
        sub_100022C40(v7, type metadata accessor for StableIdentifier);
        return 0;
      }

      return v12;
    }

    v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v15 = *(v7 + v14[12] + 8);

    v16 = *(v7 + v14[16] + 8);

    v17 = (v7 + v14[20]);
    v12 = *v17;
    v18 = v17[1];
    v19 = *(v7 + v14[28] + 8);
  }

  v24 = type metadata accessor for UUID();
  (*(*(v24 - 8) + 8))(v7, v24);
  v35 = v12;
  v36 = v18;
  sub_1000DF96C();

  v25 = Data.init<A>(hexString:)();
  if (v26 >> 60 != 15)
  {
    v27 = v25;
    v28 = v26;
    v35 = v25;
    v36 = v26;
    sub_1000E0A3C();
    if ((DataProtocol.isNull.getter() & 1) == 0)
    {

      v29 = Data.trimmed.getter();
      v31 = v30;
      static String.Encoding.utf8.getter();
      v32 = String.init(data:encoding:)();
      if (!v33)
      {
        v32 = Data.hexString.getter();
      }

      v12 = v32;
      sub_100016590(v29, v31);
    }

    sub_100006654(v27, v28);
  }

  return v12;
}

uint64_t sub_100B0E7A8(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OwnedBeaconRecord();
  sub_100022A54(a1 + *(v6 + 24), v5, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v17 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v18 = *&v5[v17[12] + 8];

    v19 = *&v5[v17[16] + 8];

    v20 = *&v5[v17[20] + 8];

    v13 = v5[v17[24]];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_6:
    sub_100022C40(v5, type metadata accessor for StableIdentifier);
    return -1;
  }

  v8 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
  v9 = *&v5[v8[12] + 8];

  v10 = *&v5[v8[16] + 8];

  v11 = *&v5[v8[20] + 8];

  v12 = &v5[v8[24]];
  v13 = *v12;
  v14 = v12[1];
  v15 = *&v5[v8[28] + 8];

  if ((v14 & 1) == 0)
  {
LABEL_9:
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(v5, v21);
    return v13;
  }

  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v5, v16);
  return -1;
}

uint64_t sub_100B0E9C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a1;
  v46 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v11 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v13 = &v44 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v47 = a5;
  v48 = a4;
  v18[4] = a6;
  v19 = qword_101694BE8;

  v49 = a6;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177BA08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saving record. Disk First? %{BOOL}d", v23, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C218;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isInternalBuild];

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
    v28 = [v24 BOOLForKey:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() defaultStore];
  v30 = v50;
  if (v29)
  {
    v31 = v29;
    v32 = [v29 aa_primaryAppleAccount];

    if (v32 && (v32, ((a2 | v28) & 1) == 0))
    {
      sub_1006E5214(v30, sub_100B27354, v18);
    }

    else
    {
      sub_100022A54(v30, v17, type metadata accessor for OwnedBeaconRecord);
      v33 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v34 = *(a3 + 168);
      sub_1009F15D4(v17);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v45 = v17;
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Saved LocalStorageBacked record. Calling completion.", v38, 2u);
        v17 = v45;
      }

      v39 = v50;
      sub_100022A54(v50, v13, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      sub_100AD79A4(v13, v48, v47, v49);
      sub_10000B3A8(v13, &unk_1016B15A0, &qword_1013A0900);
      if (((v32 != 0) & ~v28) != 0)
      {
        v43 = type metadata accessor for Transaction();
        __chkstk_darwin(v43);
        *(&v44 - 4) = a3;
        *(&v44 - 3) = v39;
        *(&v44 - 2) = v17;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 67109376;
          *(v42 + 4) = v28;
          *(v42 + 8) = 1024;
          *(v42 + 10) = v32 != 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v42, 0xEu);
        }
      }

      sub_100022C40(v17, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B0F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  __chkstk_darwin(v8);
  v30 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  v11 = *(v29 + 64);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v14 = *(a1 + 184);

  v27 = a4;

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v15 = aBlock[0];
  v16 = swift_allocObject();
  v16[2] = sub_100B27348;
  v16[3] = v13;
  v16[4] = a1;
  v17 = *(v15 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v18 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  *(v19 + 56) = &type metadata for Bool;
  *(v19 + 64) = &protocol witness table for Bool;
  *(v19 + 32) = v18;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v18)
  {
    sub_10040020C(a2, a3, v27);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v27 = *(v15 + 72);
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = sub_100B27E44;
    v20[4] = v16;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101648298;
    v21 = _Block_copy(aBlock);

    v22 = v28;
    static DispatchQoS.unspecified.getter();
    v34 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v23 = v30;
    v24 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v32 + 8))(v23, v24);
    (*(v29 + 8))(v22, v31);
  }
}

Swift::Int sub_100B0F6A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _SetStorage.allocate(capacity:)();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      v13 = *(v5 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F7D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v126 = a2;
  v122 = type metadata accessor for BeaconStoreFileRecord();
  v119 = *(v122 - 8);
  v7 = *(v119 + 64);
  __chkstk_darwin(v122);
  v118 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v120 = *(v9 - 8);
  v121 = v9;
  v10 = *(v120 + 64);
  v11 = __chkstk_darwin(v9);
  v117 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v104 - v13;
  v14 = type metadata accessor for UUID();
  v125 = *(v14 - 1);
  v15 = *(v125 + 8);
  v16 = __chkstk_darwin(v14);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v116 = &v104 - v19;
  __chkstk_darwin(v18);
  v108 = &v104 - v20;
  v106 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v21 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v104 - v22;
  v23 = type metadata accessor for ShareRecord();
  v113 = *(v23 - 1);
  v24 = *(v113 + 64);
  v25 = __chkstk_darwin(v23);
  v115 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = (&v104 - v26);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v123 = v28;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C380;
  v111 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  v110 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  v127 = a1;
  sub_100022A54(a1, v27, type metadata accessor for ShareRecord);
  v114 = v27;
  v124 = v23;
  v31 = String.init<A>(describing:)();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100008C00();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v112 = v29;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_opt_self() defaultStore];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 aa_primaryAppleAccount];

    v128 = v14;
    if (v42 && (v42, (v39 & 1) == 0))
    {
      v117 = v34;
      v118 = v24;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v60 = v124;
      v61 = *(v124 + 5);
      v62 = v127;
      v63 = UUID.uuidString.getter();
      v65 = v64;
      v66 = v14;
      v67 = v126;
      v68 = *(v126 + 160);
      v69._countAndFlagsBits = v63;
      v69._object = v65;
      isa = CKRecordID.init(recordName:zoneID:)(v69, v68).super.isa;
      v71 = *(v67 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v105 = isa;
      v116 = sub_100FDB020(isa);

      v115 = swift_allocBox();
      v72 = *(v119 + 56);
      v106 = v73;
      v74 = v122;
      v119 += 56;
      v104 = v72;
      v72(v73, 1, 1, v122);
      v75 = *(v67 + 168);
      v76 = v108;
      (*(v125 + 2))(v108, v62 + v61, v66);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v77 = v121;
      sub_1000076D4(v121, qword_10177A518);
      v78 = v62 + *(v60 + 6);
      UUID.uuidString.getter();
      v79 = v109;
      URL.appendingPathComponent(_:isDirectory:)();

      v81 = *(v75 + 16);
      __chkstk_darwin(v80);
      *(&v104 - 4) = v75;
      *(&v104 - 3) = v76;
      *(&v104 - 2) = v79;
      v82 = v107;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v79, v77);
      (*(v125 + 1))(v76, v128);
      v104(v82, 0, 1, v74);
      sub_10002311C(v82, v106, &qword_1016B53E0, &unk_1013D65D0);
      v84 = v114;
      v85 = v117;
      v86 = v105;
      static os_log_type_t.default.getter();
      v87 = swift_allocObject();
      *(v87 + 16) = v110;
      v88 = v86;
      v128 = v88;
      v89 = [v88 description];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      *(v87 + 56) = &type metadata for String;
      *(v87 + 64) = v85;
      *(v87 + 32) = v90;
      *(v87 + 40) = v92;
      os_log(_:dso:log:_:_:)();

      v125 = type metadata accessor for ShareRecord;
      sub_100022A54(v127, v84, type metadata accessor for ShareRecord);
      v93 = v84;
      v94 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v95 = &v118[v94 + 7] & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      v97 = v115;
      v98 = v126;
      *(v96 + 16) = v115;
      *(v96 + 24) = v98;
      v124 = type metadata accessor for ShareRecord;
      sub_10002911C(v84, v96 + v94, type metadata accessor for ShareRecord);
      v99 = (v96 + v95);
      v100 = v123;
      *v99 = sub_100B27FFC;
      v99[1] = v100;

      Future.addSuccess(block:)();

      sub_100022A54(v127, v93, v125);
      v101 = swift_allocObject();
      *(v101 + 16) = v97;
      *(v101 + 24) = v98;
      sub_10002911C(v93, v101 + v94, v124);
      v102 = (v101 + v95);
      *v102 = sub_100B27FFC;
      v102[1] = v100;

      Future.addFailure(block:)();
    }

    else
    {
      v114 = a3;
      v119 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      v113 = sub_1000076D4(v43, qword_10177BA08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v116;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 67109376;
        *(v48 + 4) = v39;
        *(v48 + 8) = 1024;
        *(v48 + 10) = v42 != 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v48, 0xEu);
      }

      v49 = *(v126 + 168);
      v50 = v124;
      v51 = v125;
      v52 = v127;
      v53 = v127 + *(v124 + 5);
      v112 = *(v125 + 2);
      v112(v47, v53, v128);
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v54 = v121;
      sub_1000076D4(v121, qword_10177A518);
      v55 = v52 + *(v50 + 6);
      UUID.uuidString.getter();
      v56 = v117;
      URL.appendingPathComponent(_:isDirectory:)();

      v58 = *(v49 + 16);
      __chkstk_darwin(v57);
      *(&v104 - 4) = v49;
      *(&v104 - 3) = v47;
      *(&v104 - 2) = v56;
      v59 = v118;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v56, v54);
      (*(v51 + 1))(v47, v128);
      sub_100B39D8C(v59);
      v83 = *(v126 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(1);
      sub_100022C40(v59, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

id sub_100B10ADC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v41[-v9 - 8];
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = [objc_allocWithZone(SPBeaconGroup) init];
  sub_10001F280(a1, v41);
  sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v10, 0, 1, v11);
    sub_10002911C(v10, v15, type metadata accessor for OwnedBeaconGroup);
    if (v15[24])
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v15 + 2);
    }

    [v16 setVersion:v19];
    v22 = &v15[v11[9]];
    v23 = *v22;
    v24 = *(v22 + 1);
    v25 = String._bridgeToObjectiveC()();
    [v16 setName:v25];

    v26 = &v15[v11[7]];
    v27 = MACAddress.data.getter();
    v29 = v28;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v27, v29);
    [v16 setMacAddress:isa];

    [v16 setIsPairingComplete:sub_100518118() & 1];
    [v16 setIsFindMyNetworkEnabled:v15[v11[8]]];
    sub_100022C40(v15, type metadata accessor for OwnedBeaconGroup);
  }

  else
  {
    v18(v10, 1, 1, v11);
    sub_10000B3A8(v10, &unk_1016AF8B0, &unk_1013A0700);
    v20 = String._bridgeToObjectiveC()();
    [v16 setName:v20];

    v21 = Data._bridgeToObjectiveC()().super.isa;
    [v16 setMacAddress:v21];

    [v16 setIsPairingComplete:1];
    [v16 setIsFindMyNetworkEnabled:1];
  }

  v31 = a1[3];
  v32 = a1[4];
  sub_1000035D0(a1, v31);
  (*(v32 + 8))(v31, v32);
  v33 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v16 setIdentifier:v33];

  [v16 setClassification:0];
  [v16 setStatus:0];
  v34 = a1[3];
  v35 = a1[4];
  sub_1000035D0(a1, v34);
  (*(v35 + 16))(v34, v35);
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
  v36 = Set._bridgeToObjectiveC()().super.isa;

  [v16 setBeaconIdentifiers:v36];

  [v16 setIsClassicConnected:0];
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
  v37 = Set._bridgeToObjectiveC()().super.isa;
  [v16 setMultipartStatus:v37];

  [v16 setIsConnected:0];
  [v16 setLostModeInfo:0];
  sub_10090979C(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_1016B54D8, SPPairingState_ptr);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 setBeaconMap:v38];

  return v16;
}

Swift::Int sub_100B11100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100B11268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54B8, &qword_1013D6858);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100B1145C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v121 = a2;
  v118 = type metadata accessor for BeaconStoreFileRecord();
  v115 = *(v118 - 8);
  v7 = *(v115 + 64);
  __chkstk_darwin(v118);
  v113 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v116 = *(v9 - 8);
  v117 = v9;
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v112 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v100 - v13;
  v14 = type metadata accessor for UUID();
  v123 = *(v14 - 1);
  v124 = v14;
  v15 = *(v123 + 8);
  v16 = __chkstk_darwin(v14);
  v101 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v100 - v19;
  __chkstk_darwin(v18);
  v106 = &v100 - v21;
  v22 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v105 = &v100 - v24;
  v25 = type metadata accessor for BeaconNamingRecord();
  v104 = *(v25 - 1);
  v26 = *(v104 + 64);
  v27 = __chkstk_darwin(v25);
  v109 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v100 - v28;
  v30 = swift_allocObject();
  v114 = a3;
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v119 = v30;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C380;
  v110 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  v108 = xmmword_101385D80;
  *(v32 + 16) = xmmword_101385D80;
  v122 = a1;
  sub_100022A54(a1, v29, type metadata accessor for BeaconNamingRecord);
  v120 = v25;
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v32 + 64) = v102;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v103 = v31;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C218;
  v37 = [objc_opt_self() sharedInstance];
  v38 = [v37 isInternalBuild];

  if (v38)
  {
    v39 = String._bridgeToObjectiveC()();
    v40 = [v36 BOOLForKey:v39];
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_opt_self() defaultStore];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 aa_primaryAppleAccount];

    v111 = a4;
    if (v43 && (v43, (v40 & 1) == 0))
    {
      v114 = v29;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v58 = v120;
      v59 = *(v120 + 5);
      v60 = v122;
      v61 = UUID.uuidString.getter();
      v63 = v62;
      v64 = v121;
      v65 = *(v121 + 160);
      v66._countAndFlagsBits = v61;
      v66._object = v63;
      isa = CKRecordID.init(recordName:zoneID:)(v66, v65).super.isa;
      v68 = *(v64 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v109 = isa;
      v113 = sub_100FDB020(isa);

      v112 = swift_allocBox();
      v69 = *(v115 + 56);
      v101 = v70;
      v71 = v118;
      v115 += 56;
      v69(v70, 1, 1, v118);
      v72 = *(v64 + 168);
      v73 = v106;
      (*(v123 + 2))(v106, v60 + v59, v124);
      v74 = *(v58 + 6);
      v75 = objc_autoreleasePoolPush();
      v76 = v107;
      sub_100DE1148(v107);
      v120 = v26;
      objc_autoreleasePoolPop(v75);
      v77 = *(v72 + 16);
      __chkstk_darwin(v78);
      *(&v100 - 4) = v72;
      *(&v100 - 3) = v73;
      *(&v100 - 2) = v76;
      v79 = v105;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v116 + 8))(v76, v117);
      (*(v123 + 1))(v73, v124);
      v69(v79, 0, 1, v71);
      sub_10002311C(v79, v101, &qword_1016B53E0, &unk_1013D65D0);
      v81 = v104;
      v82 = v102;
      v83 = v109;
      static os_log_type_t.default.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v108;
      v85 = v83;
      v124 = v85;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v82;
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      v123 = type metadata accessor for BeaconNamingRecord;
      v90 = v114;
      sub_100022A54(v122, v114, type metadata accessor for BeaconNamingRecord);
      v91 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v92 = (v120 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v112;
      v95 = v121;
      *(v93 + 16) = v112;
      *(v93 + 24) = v95;
      v120 = type metadata accessor for BeaconNamingRecord;
      sub_10002911C(v90, v93 + v91, type metadata accessor for BeaconNamingRecord);
      v96 = (v93 + v92);
      v118 = sub_100B27FFC;
      v97 = v119;
      *v96 = sub_100B27FFC;
      v96[1] = v97;

      Future.addSuccess(block:)();

      sub_100022A54(v122, v90, v123);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      sub_10002911C(v90, v98 + v91, v120);
      v99 = (v98 + v92);
      *v99 = v118;
      v99[1] = v97;

      Future.addFailure(block:)();
    }

    else
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = v122;
      v45 = type metadata accessor for Logger();
      sub_1000076D4(v45, qword_10177BA08);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.info.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v112;
      if (v48)
      {
        v50 = swift_slowAlloc();
        *v50 = 67109376;
        *(v50 + 4) = v40;
        *(v50 + 8) = 1024;
        *(v50 + 10) = v43 != 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v50, 0xEu);
      }

      v51 = v120;
      v52 = *(v121 + 168);
      (*(v123 + 2))(v20, v44 + *(v120 + 5), v124);
      v53 = *(v51 + 6);
      v54 = objc_autoreleasePoolPush();
      sub_100DE1148(v49);
      objc_autoreleasePoolPop(v54);
      v55 = *(v52 + 16);
      __chkstk_darwin(v56);
      *(&v100 - 4) = v52;
      *(&v100 - 3) = v20;
      *(&v100 - 2) = v49;
      v57 = v113;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v116 + 8))(v49, v117);
      (*(v123 + 1))(v20, v124);
      sub_100B39D8C(v57);
      v80 = *(v121 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(1);
      sub_100022C40(v57, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);

    objc_autoreleasePoolPop(v36);
    __break(1u);
  }
}

void sub_100B12498(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v48 = a3;
  v45 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v9 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = &v43 - v10;
  v11 = type metadata accessor for BeaconNamingRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  v15 = swift_allocObject();
  v15[2] = sub_1002FB454;
  v15[3] = v14;
  v15[4] = a4;
  _Block_copy(a5);
  _Block_copy(a5);
  v16 = qword_101694BE8;

  v47 = a4;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Saving record. Disk First? %{BOOL}d", v20, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C218;
  v22 = [objc_opt_self() sharedInstance];
  v23 = [v22 isInternalBuild];

  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
    v23 = [v21 BOOLForKey:v24];
  }

  v25 = v48;
  v26 = [objc_opt_self() defaultStore];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 aa_primaryAppleAccount];

    if (v28 && (v28, ((a2 | v23) & 1) == 0))
    {
      sub_1006E547C(a1, sub_100B24B10, v15);

      _Block_release(a5);
    }

    else
    {
      v44 = v23;
      v29 = v49;
      sub_100022A54(a1, v49, type metadata accessor for BeaconNamingRecord);
      v30 = *(v25 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v31 = *(v25 + 168);
      sub_1009F0C24(v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v43 = v14;
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      v35 = v46;
      sub_100022A54(a1, v46, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      _Block_copy(a5);
      sub_10070DAD8(v35, v47, a5);
      _Block_release(a5);
      sub_10000B3A8(v35, &qword_1016A7808, &qword_1013D6750);
      v36 = v44;
      if (((v28 != 0) & ~v44) != 0)
      {
        v41 = type metadata accessor for Transaction();
        __chkstk_darwin(v41);
        v42 = v49;
        *(&v43 - 4) = v48;
        *(&v43 - 3) = a1;
        *(&v43 - 2) = v42;
        static Transaction.named<A>(_:with:)();
        v40 = v42;
      }

      else
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109376;
          *(v39 + 4) = v36;
          *(v39 + 8) = 1024;
          *(v39 + 10) = v28 != 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
        }

        v40 = v49;
      }

      sub_100022C40(v40, type metadata accessor for BeaconNamingRecord);

      _Block_release(a5);
    }
  }

  else
  {

    _Block_release(a5);
    _Block_release(a5);

    __break(1u);
  }
}

void sub_100B12C8C(uint64_t *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v43 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v10 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v12 = &v43 - v11;
  v13 = type metadata accessor for BeaconNamingRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v46 = v16;
  v17 = qword_101694BE8;
  v18 = a4;
  v44 = a5;
  v45 = v18;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = a1;
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177BA08);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Saving record. Disk First? %{BOOL}d", v23, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v24 = qword_10177C218;
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 isInternalBuild];

  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
    v26 = [v24 BOOLForKey:v27];
  }

  v28 = [objc_opt_self() defaultStore];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 aa_primaryAppleAccount];

    if (v30 && (v30, ((a2 | v26) & 1) == 0))
    {
      sub_1006E547C(v19, sub_100B23AC4, v46);
    }

    else
    {
      v31 = v47;
      sub_100022A54(v19, v47, type metadata accessor for BeaconNamingRecord);
      v32 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v33 = *(a3 + 168);
      sub_1009F0C24(v31);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Saved LocalStorageBacked record. Calling completion.", v36, 2u);
      }

      sub_100022A54(v19, v12, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      sub_1006D5B48(v12, v45, v44);
      sub_10000B3A8(v12, &qword_1016A7808, &qword_1013D6750);
      if (((v30 != 0) & ~v26) != 0)
      {
        v41 = type metadata accessor for Transaction();
        __chkstk_darwin(v41);
        *(&v43 - 4) = a3;
        *(&v43 - 3) = v19;
        v42 = v47;
        *(&v43 - 2) = v47;
        static Transaction.named<A>(_:with:)();
        v40 = v42;
      }

      else
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109376;
          *(v39 + 4) = v26;
          *(v39 + 8) = 1024;
          *(v39 + 10) = v30 != 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
        }

        v40 = v47;
      }

      sub_100022C40(v40, type metadata accessor for BeaconNamingRecord);
    }
  }

  else
  {

    __break(1u);
  }
}

Swift::Int sub_100B133C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B55E8, &qword_1013D6BD0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100B13520(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_1000BC4D4(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100008BB8(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100008BB8(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100B1380C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v25 = a2;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v14 = aBlock[0];
  v15 = swift_allocObject();
  v15[2] = sub_100B2531C;
  v15[3] = v12;
  v15[4] = a1;
  v16 = *(v14 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v17)
  {
    v19 = os_log(_:dso:log:_:_:)();
    v25(v19);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v25 = *(v14 + 72);
    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = sub_100B27E44;
    v20[4] = v15;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101648720;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v22 = v27;
    v23 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v11, v28);
  }
}

uint64_t sub_100B13D74(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a3;
  v42 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v9 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v11 = &v42 - v10;
  v12 = type metadata accessor for LostModeRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v44 = v15;
  v16 = qword_101694BE8;

  v43 = a5;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Saving record. Disk First? %{BOOL}d", v20, 8u);
  }

  v21 = v45;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v25];
  }

  v26 = [objc_opt_self() defaultStore];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 aa_primaryAppleAccount];

    if (v28 && (v28, ((a2 | v24) & 1) == 0))
    {
      sub_1006E594C(a1, sub_100B27A2C, v44);
    }

    else
    {
      v29 = v46;
      sub_100022A54(a1, v46, type metadata accessor for LostModeRecord);
      v30 = *(v21 + 168);
      sub_1009F0274(v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      sub_100022A54(a1, v11, type metadata accessor for LostModeRecord);
      swift_storeEnumTagMultiPayload();
      v35 = swift_projectBox();
      swift_beginAccess();
      sub_1008BA6D8(v11, v35);
      dispatch_group_leave(v43);
      sub_10000B3A8(v11, &qword_1016B1840, &qword_1013B68F0);
      if (((v28 != 0) & ~v24) != 0)
      {
        v40 = type metadata accessor for Transaction();
        __chkstk_darwin(v40);
        v41 = v46;
        *(&v42 - 4) = v45;
        *(&v42 - 3) = a1;
        *(&v42 - 2) = v41;
        static Transaction.named<A>(_:with:)();
        v39 = v41;
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v24;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v28 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }

        v39 = v46;
      }

      sub_100022C40(v39, type metadata accessor for LostModeRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B144B8(uint64_t a1, uint64_t a2, void *a3)
{
  v129 = a2;
  v124 = type metadata accessor for BeaconStoreFileRecord();
  v121 = *(v124 - 8);
  v5 = *(v121 + 64);
  __chkstk_darwin(v124);
  v120 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = *(v122 + 64);
  v9 = __chkstk_darwin(v7);
  v119 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v115 = &v106 - v11;
  v130 = type metadata accessor for UUID();
  v12 = *(v130 - 1);
  v13 = v12[8];
  v14 = __chkstk_darwin(v130);
  v108 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v106 - v17;
  __chkstk_darwin(v16);
  v111 = &v106 - v19;
  v109 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v20 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v110 = &v106 - v21;
  v22 = type metadata accessor for LostModeRecord();
  v117 = *(v22 - 8);
  v23 = v117[8];
  v24 = __chkstk_darwin(v22);
  v118 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100B277FC;
  *(v28 + 24) = v27;
  v125 = v28;
  v126 = a3;
  v127 = v27;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C380;
  v113 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  v112 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v26, type metadata accessor for LostModeRecord);
  v128 = v22;
  v31 = String.init<A>(describing:)();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v114 = sub_100008C00();
  *(v30 + 64) = v114;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v116 = v29;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];
  }

  else
  {
    v38 = 0;
  }

  v39 = v18;
  v40 = [objc_opt_self() defaultStore];
  if (v40)
  {
    v41 = v40;
    v131 = v12;
    v42 = [v40 aa_primaryAppleAccount];

    if (v42 && (v42, (v38 & 1) == 0))
    {
      v119 = v26;
      v120 = v23;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v59 = v128;
      v60 = *(v128 + 20);
      v61 = UUID.uuidString.getter();
      v63 = v62;
      v64 = a1;
      v65 = v129;
      v66 = *(v129 + 160);
      v67._countAndFlagsBits = v61;
      v67._object = v63;
      isa = CKRecordID.init(recordName:zoneID:)(v67, v66).super.isa;
      v69 = *(v65 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v108 = isa;
      v118 = sub_100FDB020(isa);

      v109 = swift_allocBox();
      v70 = *(v121 + 56);
      v107 = v71;
      v72 = v124;
      v121 += 56;
      v70(v71, 1, 1, v124);
      v73 = *(v65 + 168);
      v74 = v64;
      v75 = v64 + v60;
      v76 = v111;
      v77 = v130;
      (v131)[2](v111, v75, v130);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v78 = v123;
      sub_1000076D4(v123, qword_10177C140);
      v79 = *(v59 + 24);
      v128 = v74;
      UUID.uuidString.getter();
      v80 = v115;
      URL.appendingPathComponent(_:isDirectory:)();

      v82 = *(v73 + 16);
      __chkstk_darwin(v81);
      *(&v106 - 4) = v73;
      *(&v106 - 3) = v76;
      *(&v106 - 2) = v80;
      v83 = v110;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v122 + 8))(v80, v78);
      (v131[1])(v76, v77);
      v70(v83, 0, 1, v72);
      sub_10002311C(v83, v107, &qword_1016B53E0, &unk_1013D65D0);
      v86 = v114;
      v87 = v108;
      static os_log_type_t.default.getter();
      v88 = swift_allocObject();
      *(v88 + 16) = v112;
      v89 = v87;
      v131 = v89;
      v90 = [v89 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = v86;
      *(v88 + 32) = v91;
      *(v88 + 40) = v93;
      os_log(_:dso:log:_:_:)();

      v94 = v119;
      sub_100022A54(v128, v119, type metadata accessor for LostModeRecord);
      v95 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v96 = &v120[v95 + 7] & 0xFFFFFFFFFFFFFFF8;
      v97 = swift_allocObject();
      v98 = v109;
      v99 = v129;
      *(v97 + 16) = v109;
      *(v97 + 24) = v99;
      v130 = type metadata accessor for LostModeRecord;
      sub_10002911C(v94, v97 + v95, type metadata accessor for LostModeRecord);
      v100 = (v97 + v96);
      v124 = sub_100B27FFC;
      v101 = v125;
      *v100 = sub_100B27FFC;
      v100[1] = v101;

      Future.addSuccess(block:)();

      sub_100022A54(v128, v94, type metadata accessor for LostModeRecord);
      v102 = swift_allocObject();
      *(v102 + 16) = v98;
      *(v102 + 24) = v99;
      sub_10002911C(v94, v102 + v95, v130);
      v103 = (v102 + v96);
      *v103 = v124;
      v103[1] = v101;

      Future.addFailure(block:)();
    }

    else
    {
      v43 = a1;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      v121 = sub_1000076D4(v44, qword_10177BA08);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v38;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v42 != 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = v122;

      v49 = v128;
      v50 = *(v129 + 168);
      v51 = v43 + *(v128 + 20);
      v117 = v131[2];
      (v117)(v39, v51, v130);
      v52 = v39;
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v53 = v123;
      sub_1000076D4(v123, qword_10177C140);
      v54 = v43 + *(v49 + 24);
      UUID.uuidString.getter();
      v55 = v119;
      URL.appendingPathComponent(_:isDirectory:)();

      v57 = *(v50 + 16);
      __chkstk_darwin(v56);
      *(&v106 - 4) = v50;
      *(&v106 - 3) = v52;
      *(&v106 - 2) = v55;
      v58 = v120;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v48 + 8))(v55, v53);
      (v131[1])(v52, v130);
      sub_100B39D8C(v58);
      v84 = *(v129 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v85 = v126;
      static os_log_type_t.default.getter();
      if (qword_1016950A0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      dispatch_group_leave(v85);

      sub_100022C40(v58, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    v105 = v126;

    __break(1u);
  }

  return result;
}

uint64_t sub_100B156CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v126 = a2;
  v122 = type metadata accessor for BeaconStoreFileRecord();
  v119 = *(v122 - 8);
  v7 = *(v119 + 64);
  __chkstk_darwin(v122);
  v118 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v120 = *(v9 - 8);
  v121 = v9;
  v10 = *(v120 + 64);
  v11 = __chkstk_darwin(v9);
  v117 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v104 - v13;
  v14 = type metadata accessor for UUID();
  v125 = *(v14 - 1);
  v15 = *(v125 + 8);
  v16 = __chkstk_darwin(v14);
  v105 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v116 = &v104 - v19;
  __chkstk_darwin(v18);
  v108 = &v104 - v20;
  v106 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v21 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v104 - v22;
  v23 = type metadata accessor for LostModeRecord();
  v113 = *(v23 - 1);
  v24 = *(v113 + 64);
  v25 = __chkstk_darwin(v23);
  v115 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = (&v104 - v26);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v123 = v28;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C380;
  v111 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  v110 = xmmword_101385D80;
  *(v30 + 16) = xmmword_101385D80;
  v127 = a1;
  sub_100022A54(a1, v27, type metadata accessor for LostModeRecord);
  v114 = v27;
  v124 = v23;
  v31 = String.init<A>(describing:)();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100008C00();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v112 = v29;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_opt_self() defaultStore];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 aa_primaryAppleAccount];

    v128 = v14;
    if (v42 && (v42, (v39 & 1) == 0))
    {
      v117 = v34;
      v118 = v24;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v60 = v124;
      v61 = *(v124 + 5);
      v62 = v127;
      v63 = UUID.uuidString.getter();
      v65 = v64;
      v66 = v14;
      v67 = v126;
      v68 = *(v126 + 160);
      v69._countAndFlagsBits = v63;
      v69._object = v65;
      isa = CKRecordID.init(recordName:zoneID:)(v69, v68).super.isa;
      v71 = *(v67 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v105 = isa;
      v116 = sub_100FDB020(isa);

      v115 = swift_allocBox();
      v72 = *(v119 + 56);
      v106 = v73;
      v74 = v122;
      v119 += 56;
      v104 = v72;
      v72(v73, 1, 1, v122);
      v75 = *(v67 + 168);
      v76 = v108;
      (*(v125 + 2))(v108, v62 + v61, v66);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v77 = v121;
      sub_1000076D4(v121, qword_10177C140);
      v78 = v62 + *(v60 + 6);
      UUID.uuidString.getter();
      v79 = v109;
      URL.appendingPathComponent(_:isDirectory:)();

      v81 = *(v75 + 16);
      __chkstk_darwin(v80);
      *(&v104 - 4) = v75;
      *(&v104 - 3) = v76;
      *(&v104 - 2) = v79;
      v82 = v107;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v79, v77);
      (*(v125 + 1))(v76, v128);
      v104(v82, 0, 1, v74);
      sub_10002311C(v82, v106, &qword_1016B53E0, &unk_1013D65D0);
      v84 = v114;
      v85 = v117;
      v86 = v105;
      static os_log_type_t.default.getter();
      v87 = swift_allocObject();
      *(v87 + 16) = v110;
      v88 = v86;
      v128 = v88;
      v89 = [v88 description];
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = v91;

      *(v87 + 56) = &type metadata for String;
      *(v87 + 64) = v85;
      *(v87 + 32) = v90;
      *(v87 + 40) = v92;
      os_log(_:dso:log:_:_:)();

      v125 = type metadata accessor for LostModeRecord;
      sub_100022A54(v127, v84, type metadata accessor for LostModeRecord);
      v93 = v84;
      v94 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v95 = &v118[v94 + 7] & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      v97 = v115;
      v98 = v126;
      *(v96 + 16) = v115;
      *(v96 + 24) = v98;
      v124 = type metadata accessor for LostModeRecord;
      sub_10002911C(v84, v96 + v94, type metadata accessor for LostModeRecord);
      v99 = (v96 + v95);
      v100 = v123;
      *v99 = sub_100B27FFC;
      v99[1] = v100;

      Future.addSuccess(block:)();

      sub_100022A54(v127, v93, v125);
      v101 = swift_allocObject();
      *(v101 + 16) = v97;
      *(v101 + 24) = v98;
      sub_10002911C(v93, v101 + v94, v124);
      v102 = (v101 + v95);
      *v102 = sub_100B27FFC;
      v102[1] = v100;

      Future.addFailure(block:)();
    }

    else
    {
      v114 = a3;
      v119 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      v113 = sub_1000076D4(v43, qword_10177BA08);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v116;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 67109376;
        *(v48 + 4) = v39;
        *(v48 + 8) = 1024;
        *(v48 + 10) = v42 != 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v48, 0xEu);
      }

      v49 = *(v126 + 168);
      v50 = v124;
      v51 = v125;
      v52 = v127;
      v53 = v127 + *(v124 + 5);
      v112 = *(v125 + 2);
      v112(v47, v53, v128);
      if (qword_101694EF8 != -1)
      {
        swift_once();
      }

      v54 = v121;
      sub_1000076D4(v121, qword_10177C140);
      v55 = v52 + *(v50 + 6);
      UUID.uuidString.getter();
      v56 = v117;
      URL.appendingPathComponent(_:isDirectory:)();

      v58 = *(v49 + 16);
      __chkstk_darwin(v57);
      *(&v104 - 4) = v49;
      *(&v104 - 3) = v47;
      *(&v104 - 2) = v56;
      v59 = v118;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v56, v54);
      (*(v51 + 1))(v47, v128);
      sub_100B39D8C(v59);
      v83 = *(v126 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(1);
      sub_100022C40(v59, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

void *sub_100B167CC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v61 = a3;
  v62 = a4;
  v60 = a2;
  v9 = type metadata accessor for StableIdentifier();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59[-v15];
  v17 = type metadata accessor for OwnedBeaconRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v59[-v23];
  v64[3] = a5;
  v64[4] = a6;
  v25 = sub_1000280DC(v64);
  (*(*(a5 - 8) + 16))(v25, a1, a5);
  sub_10001F280(v64, v63);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v26 = swift_dynamicCast();
  v27 = *(v18 + 56);
  if (!v26)
  {
    v27(v16, 1, 1, v17);
    sub_10000B3A8(v16, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_16;
  }

  v27(v16, 0, 1, v17);
  sub_10002911C(v16, v24, type metadata accessor for OwnedBeaconRecord);
  sub_100022A54(&v24[*(v17 + 24)], v12, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v37 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v38 = *&v12[v37[12] + 8];

    v39 = *&v12[v37[16] + 8];

    v40 = *&v12[v37[20] + 8];

    v41 = &v12[v37[24]];
    v42 = *v41;
    v43 = v41[1];
    v44 = *&v12[v37[28] + 8];

    if ((v43 & 1) == 0)
    {
      v34 = v60 & 1;
      v35 = v61 & 1;
      v36 = v62 & 1;
      v33 = v42;
      goto LABEL_13;
    }

    sub_100022C40(v24, type metadata accessor for OwnedBeaconRecord);
    v45 = type metadata accessor for UUID();
    (*(*(v45 - 8) + 8))(v12, v45);
LABEL_16:
    v56 = &_swiftEmptySetSingleton;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177BA38);
    sub_100022A54(v24, v22, type metadata accessor for OwnedBeaconRecord);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      v51 = &v22[*(v17 + 24)];
      v52 = sub_1010DA578();
      v54 = v53;
      sub_100022C40(v22, type metadata accessor for OwnedBeaconRecord);
      v55 = sub_1000136BC(v52, v54, v63);

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "nearbyParts: Invalid stableIdentifier %{private,mask.hash}s", v49, 0x16u);
      sub_100007BAC(v50);
    }

    else
    {

      sub_100022C40(v22, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100022C40(v24, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v12, type metadata accessor for StableIdentifier);
    goto LABEL_16;
  }

  v29 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v30 = *&v12[v29[12] + 8];

  v31 = *&v12[v29[16] + 8];

  v32 = *&v12[v29[20] + 8];

  v33 = v12[v29[24]];
  v34 = v60 & 1;
  v35 = v61 & 1;
  v36 = v62 & 1;
LABEL_13:
  v56 = sub_100165BD4(v33, v34, v35, v36);
  sub_100022C40(v24, type metadata accessor for OwnedBeaconRecord);
  v57 = type metadata accessor for UUID();
  (*(*(v57 - 8) + 8))(v12, v57);
LABEL_17:
  sub_100007BAC(v64);
  return v56;
}

unint64_t sub_100B16E04(unint64_t result)
{
  if (result >= 0x17)
  {
    return 23;
  }

  return result;
}

uint64_t sub_100B16E14(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a3;
  v54 = a1;
  v8 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v46[-v10];
  v12 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v15 = &v46[-v14];
  v16 = type metadata accessor for SafeLocation();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = qword_101694BE8;
  v52 = a4;

  v51 = a5;
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BA08);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "Saving record. Disk First? %{BOOL}d", v25, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v26 = qword_10177C218;
  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 isInternalBuild];

  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
    v30 = [v26 BOOLForKey:v29];
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() defaultStore];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 aa_primaryAppleAccount];

    if (v33 && (v33, ((a2 | v30) & 1) == 0))
    {
      sub_1006E6084(v54, sub_100B24CBC, v20);
    }

    else
    {
      sub_100022A54(v54, v19, type metadata accessor for SafeLocation);
      v34 = *(v53 + 168);
      sub_1009F04E0(v19);
      v48 = v20;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Saved LocalStorageBacked record. Calling completion.", v38, 2u);
      }

      v47 = v33 != 0;

      v39 = v54;
      sub_100022A54(v54, v15, type metadata accessor for SafeLocation);
      v40 = v50;
      swift_storeEnumTagMultiPayload();
      v41 = swift_projectBox();
      sub_1000D2A70(v15, v11, &unk_1016B1480, &qword_1013B6890);
      (*(v49 + 56))(v11, 0, 1, v40);
      swift_beginAccess();
      sub_10002311C(v11, v41, &unk_1016B14A0, &unk_1013D68C0);
      dispatch_group_leave(v51);
      sub_10000B3A8(v15, &unk_1016B1480, &qword_1013B6890);
      if (v47 & ~v30)
      {
        v45 = type metadata accessor for Transaction();
        __chkstk_darwin(v45);
        *&v46[-32] = v53;
        *&v46[-24] = v39;
        *&v46[-16] = v19;
        static Transaction.named<A>(_:with:)();
        sub_100022C40(v19, type metadata accessor for SafeLocation);
      }

      else
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 67109376;
          *(v44 + 4) = v30;
          *(v44 + 8) = 1024;
          *(v44 + 10) = v33 != 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v44, 0xEu);
        }

        sub_100022C40(v19, type metadata accessor for SafeLocation);
      }
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B176D4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v121 = a2;
  v119 = type metadata accessor for BeaconStoreFileRecord();
  v116 = *(v119 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v119);
  v114 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v101 - v14;
  v125 = type metadata accessor for UUID();
  v122 = *(v125 - 1);
  v15 = *(v122 + 8);
  v16 = __chkstk_darwin(v125);
  v102 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v113 = &v101 - v19;
  __chkstk_darwin(v18);
  v105 = &v101 - v20;
  v103 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v21 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v101 - v22;
  v23 = type metadata accessor for SafeLocation();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v112 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v101 - v27;
  v29 = swift_allocObject();
  v115 = a3;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v120 = v29;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C380;
  v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  v107 = xmmword_101385D80;
  *(v31 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v28, type metadata accessor for SafeLocation);
  v111 = v28;
  v124 = v23;
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  v109 = sub_100008C00();
  *(v31 + 64) = v109;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v110 = v30;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v35 BOOLForKey:v38];
  }

  v39 = v124;
  v40 = v13;
  v41 = [objc_opt_self() defaultStore];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 aa_primaryAppleAccount];

    v123 = a1;
    if (v43 && (v43, (v37 & 1) == 0))
    {
      v115 = v25;
      v124 = v24;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v57 = *(v39 + 5);
      v58 = UUID.uuidString.getter();
      v60 = v59;
      v61 = v121;
      v62 = *(v121 + 160);
      v63._countAndFlagsBits = v58;
      v63._object = v60;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      v65 = *(v61 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v112 = isa;
      v114 = sub_100FDB020(isa);

      v113 = swift_allocBox();
      v66 = *(v116 + 56);
      v103 = v67;
      v68 = a1;
      v69 = v119;
      v116 += 56;
      v102 = v66;
      (v66)(v67, 1, 1, v119);
      v70 = *(v61 + 168);
      v71 = v122;
      v72 = v105;
      (*(v122 + 2))(v105, v68 + v57, v125);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v73 = v118;
      v74 = sub_1000076D4(v118, qword_10177C268);
      v75 = v117;
      v76 = v106;
      v77 = (*(v117 + 16))(v106, v74, v73);
      v78 = *(v70 + 16);
      __chkstk_darwin(v77);
      *(&v101 - 4) = v70;
      *(&v101 - 3) = v72;
      *(&v101 - 2) = v76;
      v79 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v75 + 8))(v76, v73);
      (*(v71 + 1))(v72, v125);
      (v102)(v79, 0, 1, v69);
      sub_10002311C(v79, v103, &qword_1016B53E0, &unk_1013D65D0);
      v81 = v109;
      v82 = v115;
      v83 = v112;
      static os_log_type_t.default.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v107;
      v85 = v83;
      v125 = v85;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v81;
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      v122 = type metadata accessor for SafeLocation;
      v90 = v111;
      sub_100022A54(v123, v111, type metadata accessor for SafeLocation);
      v91 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v92 = (v82 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v113;
      v95 = v121;
      *(v93 + 16) = v113;
      *(v93 + 24) = v95;
      v124 = type metadata accessor for SafeLocation;
      sub_10002911C(v90, v93 + v91, type metadata accessor for SafeLocation);
      v96 = (v93 + v92);
      v119 = sub_100B27FFC;
      v97 = v120;
      *v96 = sub_100B27FFC;
      v96[1] = v97;

      Future.addSuccess(block:)();

      sub_100022A54(v123, v90, v122);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      sub_10002911C(v90, v98 + v91, v124);
      v99 = (v98 + v92);
      *v99 = v119;
      v99[1] = v97;

      Future.addFailure(block:)();
    }

    else
    {
      v116 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177BA08);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v43 != 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = v117;

      v49 = *(v121 + 168);
      v50 = v123 + *(v124 + 5);
      v51 = v113;
      v111 = *(v122 + 2);
      v111(v113, v50, v125);
      if (qword_101694F88 != -1)
      {
        swift_once();
      }

      v52 = v118;
      v53 = sub_1000076D4(v118, qword_10177C268);
      v54 = (*(v48 + 16))(v40, v53, v52);
      v55 = *(v49 + 16);
      __chkstk_darwin(v54);
      *(&v101 - 4) = v49;
      *(&v101 - 3) = v51;
      *(&v101 - 2) = v40;
      v56 = v114;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v48 + 8))(v40, v52);
      (*(v122 + 1))(v51, v125);
      sub_100B39D8C(v56);
      v80 = *(v121 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v115(1);
      sub_100022C40(v56, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B18780(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v121 = a2;
  v119 = type metadata accessor for BeaconStoreFileRecord();
  v116 = *(v119 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v119);
  v114 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v101 - v14;
  v125 = type metadata accessor for UUID();
  v122 = *(v125 - 1);
  v15 = *(v122 + 8);
  v16 = __chkstk_darwin(v125);
  v102 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v113 = &v101 - v19;
  __chkstk_darwin(v18);
  v105 = &v101 - v20;
  v103 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v21 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v101 - v22;
  v23 = type metadata accessor for LeashRecord();
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v112 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v101 - v27;
  v29 = swift_allocObject();
  v115 = a3;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v120 = v29;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C380;
  v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  v107 = xmmword_101385D80;
  *(v31 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v28, type metadata accessor for LeashRecord);
  v111 = v28;
  v124 = v23;
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  v109 = sub_100008C00();
  *(v31 + 64) = v109;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v110 = v30;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v35 BOOLForKey:v38];
  }

  v39 = v124;
  v40 = v13;
  v41 = [objc_opt_self() defaultStore];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 aa_primaryAppleAccount];

    v123 = a1;
    if (v43 && (v43, (v37 & 1) == 0))
    {
      v115 = v25;
      v124 = v24;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v57 = *(v39 + 5);
      v58 = UUID.uuidString.getter();
      v60 = v59;
      v61 = v121;
      v62 = *(v121 + 160);
      v63._countAndFlagsBits = v58;
      v63._object = v60;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      v65 = *(v61 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v112 = isa;
      v114 = sub_100FDB020(isa);

      v113 = swift_allocBox();
      v66 = *(v116 + 56);
      v103 = v67;
      v68 = a1;
      v69 = v119;
      v116 += 56;
      v102 = v66;
      (v66)(v67, 1, 1, v119);
      v70 = *(v61 + 168);
      v71 = v122;
      v72 = v105;
      (*(v122 + 2))(v105, v68 + v57, v125);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v73 = v118;
      v74 = sub_1000076D4(v118, qword_10177CDB8);
      v75 = v117;
      v76 = v106;
      v77 = (*(v117 + 16))(v106, v74, v73);
      v78 = *(v70 + 16);
      __chkstk_darwin(v77);
      *(&v101 - 4) = v70;
      *(&v101 - 3) = v72;
      *(&v101 - 2) = v76;
      v79 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v75 + 8))(v76, v73);
      (*(v71 + 1))(v72, v125);
      (v102)(v79, 0, 1, v69);
      sub_10002311C(v79, v103, &qword_1016B53E0, &unk_1013D65D0);
      v81 = v109;
      v82 = v115;
      v83 = v112;
      static os_log_type_t.default.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v107;
      v85 = v83;
      v125 = v85;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v81;
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      v122 = type metadata accessor for LeashRecord;
      v90 = v111;
      sub_100022A54(v123, v111, type metadata accessor for LeashRecord);
      v91 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v92 = (v82 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v113;
      v95 = v121;
      *(v93 + 16) = v113;
      *(v93 + 24) = v95;
      v124 = type metadata accessor for LeashRecord;
      sub_10002911C(v90, v93 + v91, type metadata accessor for LeashRecord);
      v96 = (v93 + v92);
      v119 = sub_100B27FFC;
      v97 = v120;
      *v96 = sub_100B27FFC;
      v96[1] = v97;

      Future.addSuccess(block:)();

      sub_100022A54(v123, v90, v122);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      sub_10002911C(v90, v98 + v91, v124);
      v99 = (v98 + v92);
      *v99 = v119;
      v99[1] = v97;

      Future.addFailure(block:)();
    }

    else
    {
      v116 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177BA08);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v43 != 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = v117;

      v49 = *(v121 + 168);
      v50 = v123 + *(v124 + 5);
      v51 = v113;
      v111 = *(v122 + 2);
      v111(v113, v50, v125);
      if (qword_1016954B8 != -1)
      {
        swift_once();
      }

      v52 = v118;
      v53 = sub_1000076D4(v118, qword_10177CDB8);
      v54 = (*(v48 + 16))(v40, v53, v52);
      v55 = *(v49 + 16);
      __chkstk_darwin(v54);
      *(&v101 - 4) = v49;
      *(&v101 - 3) = v51;
      *(&v101 - 2) = v40;
      v56 = v114;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v48 + 8))(v40, v52);
      (*(v122 + 1))(v51, v125);
      sub_100B39D8C(v56);
      v80 = *(v121 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v115(1);
      sub_100022C40(v56, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1982C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v10 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v12 = &v43 - v11;
  v13 = type metadata accessor for LeashRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v44 = a4;
  v45 = v16;
  v17 = qword_101694BE8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = a1;
  v46 = a3;
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177BA08);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "Saving record. Disk First? %{BOOL}d", v22, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v23 = qword_10177C218;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 isInternalBuild];

  if (v25)
  {
    v26 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v26];
  }

  v27 = v46;
  v28 = [objc_opt_self() defaultStore];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 aa_primaryAppleAccount];

    if (v30 && (v30, ((a2 | v25) & 1) == 0))
    {
      sub_1006E62EC(v18, sub_100B27620, v45);
    }

    else
    {
      v31 = v47;
      sub_100022A54(v18, v47, type metadata accessor for LeashRecord);
      v32 = *(v27 + 168);
      sub_1009F074C(v31);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Saved LocalStorageBacked record. Calling completion.", v36, 2u);
      }

      sub_100022A54(v18, v12, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      sub_1009E6CD8(v12, v44, a5);
      sub_10000B3A8(v12, &qword_1016A78E0, &qword_1013B6888);
      if (((v30 != 0) & ~v25) != 0)
      {
        v41 = type metadata accessor for Transaction();
        __chkstk_darwin(v41);
        v42 = v47;
        *(&v43 - 4) = v46;
        *(&v43 - 3) = v18;
        *(&v43 - 2) = v42;
        static Transaction.named<A>(_:with:)();
        v40 = v42;
      }

      else
      {
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109376;
          *(v39 + 4) = v25;
          *(v39 + 8) = 1024;
          *(v39 + 10) = v30 != 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
        }

        v40 = v47;
      }

      sub_100022C40(v40, type metadata accessor for LeashRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B19F38(uint64_t *a1, int a2, char *a3, uint64_t a4, void *a5)
{
  v46 = a3;
  v47 = a1;
  v44 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v10 = &v43 - v9;
  v11 = type metadata accessor for LeashRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = qword_101694BE8;

  v45 = a5;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177BA08);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Saving record. Disk First? %{BOOL}d", v20, 8u);
  }

  v21 = v46;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v24 = [v22 BOOLForKey:v25];
  }

  v26 = [objc_opt_self() defaultStore];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 aa_primaryAppleAccount];

    if (v28 && (v28, ((a2 | v24) & 1) == 0))
    {
      sub_1006E62EC(v47, sub_100B24CB4, v15);
    }

    else
    {
      sub_100022A54(v47, v14, type metadata accessor for LeashRecord);
      v29 = *(v21 + 21);
      sub_1009F074C(v14);
      v43 = v14;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Saved LocalStorageBacked record. Calling completion.", v33, 2u);
      }

      v34 = v47;
      sub_100022A54(v47, v10, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      sub_1009E9304(v10, a4, v45);
      sub_10000B3A8(v10, &qword_1016A78E0, &qword_1013B6888);
      if (((v28 != 0) & ~v24) != 0)
      {
        v41 = type metadata accessor for Transaction();
        __chkstk_darwin(v41);
        *(&v43 - 4) = v46;
        *(&v43 - 3) = v34;
        v42 = v43;
        *(&v43 - 2) = v43;
        static Transaction.named<A>(_:with:)();
        v40 = v42;
      }

      else
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        v37 = os_log_type_enabled(v35, v36);
        v38 = v43;
        if (v37)
        {
          v39 = swift_slowAlloc();
          *v39 = 67109376;
          *(v39 + 4) = v24;
          *(v39 + 8) = 1024;
          *(v39 + 10) = v28 != 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v39, 0xEu);
        }

        v40 = v38;
      }

      sub_100022C40(v40, type metadata accessor for LeashRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1A674()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setInteger:28 forKey:v1];

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = 28;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100B1A7C4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v29);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v26 = a2;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v14 = aBlock[0];
  v15 = swift_allocObject();
  v15[2] = sub_100B24A40;
  v15[3] = v12;
  v15[4] = a1;
  v16 = *(v14 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v17)
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v19 = os_log(_:dso:log:_:_:)();
    v26(v19);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v20 = *(v14 + 72);
    v21 = swift_allocObject();
    v21[2] = v14;
    v21[3] = sub_100B24A48;
    v21[4] = v15;
    aBlock[4] = sub_100B24A78;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647118;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v23 = v28;
    v24 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v30 + 8))(v23, v24);
    (*(v27 + 8))(v11, v29);
  }
}

uint64_t sub_100B1AD94(uint64_t a1)
{
  v2 = type metadata accessor for SystemInfo.DeviceLockState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  static SystemInfo.lockState.getter();
  (*(v3 + 104))(v7, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v2);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v3 + 8);
  v10(v7, v2);
  v10(v9, v2);
  if (v20 == v19[2])
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    v12 = sub_100B07CF0();
    *(v11 + 56) = &type metadata for Bool;
    *(v11 + 64) = &protocol witness table for Bool;
    *(v11 + 32) = v12 & 1;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v13 = sub_100AB035C() > 0;
    sub_100B07FD8(v13);
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v15 = sub_100B07CF0();
    *(v14 + 56) = &type metadata for Bool;
    *(v14 + 64) = &protocol witness table for Bool;
    *(v14 + 32) = v15 & 1;
    os_log(_:dso:log:_:_:)();

    v16 = *(a1 + 56);
    LOBYTE(v20) = sub_100B07CF0() & 1;
    CurrentValueSubject.send(_:)();
  }

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v17 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(5);
  sub_100A907FC();

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100B1B1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v13 = aBlock[0];
  v14 = swift_allocObject();
  v14[2] = sub_100B26970;
  v14[3] = a2;
  v14[4] = a1;
  v15 = *(v13 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v16 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = v16;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v16)
  {
    sub_100B1AD94(a2);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v22[1] = *(v13 + 72);
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = sub_100B27E44;
    v18[4] = v14;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647E38;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v20 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v25 + 8))(v7, v20);
    (*(v23 + 8))(v11, v24);
  }
}

uint64_t sub_100B1B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin(v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = aBlock[0];
  v12 = swift_allocObject();
  v12[2] = sub_100B275C4;
  v12[3] = a2;
  v12[4] = a1;
  v13 = *(v11 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v14 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
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

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v14)
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v21 = *(v11 + 72);
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = sub_100B27E44;
    v16[4] = v12;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016484A0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v18 = v23;
    v19 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v25 + 8))(v18, v19);
    (*(v22 + 8))(v9, v24);
  }
}

uint64_t sub_100B1BC50()
{
  v0 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v30 - v3;
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  if (qword_101694C30 != -1)
  {
    swift_once();
  }

  v17 = sub_1000076D4(v0, qword_1016B4938);
  swift_beginAccess();
  (*(v1 + 16))(v4, v17, v0);
  ManagedDefault.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
    return 1;
  }

  (*(v10 + 32))(v16, v8, v9);
  Date.init()();
  if (qword_101694C20 != -1)
  {
    swift_once();
  }

  v18 = (Duration.milliseconds.getter() / 1000);
  Date.timeIntervalSinceReferenceDate.getter();
  v20 = v19;
  Date.timeIntervalSinceReferenceDate.getter();
  v22 = v20 - v21;
  if (v22 > v18)
  {
    v23 = *(v10 + 8);
    v23(v14, v9);
    v23(v16, v9);
    return 1;
  }

  if (qword_101694BF0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177BA20);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v22;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v26, v27, "Not publishing metrics: duration %f < threshold %f", v28, 0x16u);
  }

  v29 = *(v10 + 8);
  v29(v14, v9);
  v29(v16, v9);
  return 0;
}

uint64_t sub_100B1C0B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v40 = a4;
  v41 = a3;
  v38 = a2;
  v39 = a1;
  v43 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v42);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v34[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v35 = "r.defaultClientQueue";
  v44 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v36 = *(v9 + 104);
  v37 = v9 + 104;
  v36(v12);
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  v13 = sub_10000768C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v14 = sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v15 = sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  v34[2] = v14;
  v34[3] = v13;
  v34[4] = v15;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v35 = "oudKitCoordinator.serialQueue";
  v16 = v36;
  (v36)(v12, v44, v42);
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a5 + 64) = dispatch_semaphore_create(0);
  v35 = "tor.notificationQueue";
  (v16)(v12, v44, v42);
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a5 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a5 + 80) = 0;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  *(a5 + 136) = 0;
  v17 = sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(a5 + 160) = PassthroughSubject.init()();
  *(a5 + 168) = 0;
  v20 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(a5 + 176) = PassthroughSubject.init()();
  *(a5 + 184) = _swiftEmptyArrayStorage;
  *(a5 + 192) = 0;
  *(a5 + 200) = 0;
  *(a5 + 208) = 0;
  *(a5 + 216) = 0x2D65746176697270;
  *(a5 + 224) = 0xEF7365676E616863;
  *(a5 + 232) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(a5 + 240) = v23;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 248) = 0;
  *(a5 + 280) = dispatch_semaphore_create(1);
  static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  *(a5 + 272) = v39;
  *(a5 + 24) = &off_10160F6C8;
  swift_unknownObjectWeakAssign();
  v24 = v40;
  *(a5 + 48) = v40;
  type metadata accessor for CloudKitUpdateEligibility();
  swift_allocObject();

  v25 = v24;

  v27 = sub_10047B8D4(v26);

  *(a5 + 128) = v27;
  v28 = *(a5 + 32);
  v29 = type metadata accessor for QueueSynchronizer();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v28;
  *(a5 + 40) = QueueSynchronizer.init(queue:)();
  sub_100FD0494();
  return a5;
}

uint64_t sub_100B1C6E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, void (*a9)(char *, uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11)
{
  v57 = a1;
  v50 = a11;
  v51 = a8;
  v49 = a10;
  v53 = a9;
  v52 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v16 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v18 = &v49 - v17;
  v19 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v54 = a5;
  v55 = a4;
  v23[4] = a6;
  v24 = qword_101694BE8;

  v56 = a6;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177BA08);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v26, v27, "Saving record. Disk First? %{BOOL}d", v28, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v29 = qword_10177C218;
  v30 = [objc_opt_self() sharedInstance];
  v31 = [v30 isInternalBuild];

  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = [v29 BOOLForKey:v32];
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() defaultStore];
  v35 = v57;
  if (v34)
  {
    v36 = v34;
    v37 = [v34 aa_primaryAppleAccount];

    if (v37 && (v37, ((a2 | v33) & 1) == 0))
    {
      sub_1006E5E1C(v35, v50, v23);
    }

    else
    {
      sub_100022A54(v35, v22, type metadata accessor for SharedBeaconRecord);
      v38 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v39 = *(a3 + 168);
      sub_1009F1368(v22);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v51 = v22;
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Saved LocalStorageBacked record. Calling completion.", v43, 2u);
        v22 = v51;
      }

      v44 = v57;
      sub_100022A54(v57, v18, type metadata accessor for SharedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v53(v18, v55, v54, v56);
      sub_10000B3A8(v18, &qword_101699BC8, &qword_1013926D8);
      if (((v37 != 0) & ~v33) != 0)
      {
        v48 = type metadata accessor for Transaction();
        __chkstk_darwin(v48);
        *(&v49 - 4) = a3;
        *(&v49 - 3) = v44;
        *(&v49 - 2) = v22;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 67109376;
          *(v47 + 4) = v33;
          *(v47 + 8) = 1024;
          *(v47 + 10) = v37 != 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
        }
      }

      sub_100022C40(v22, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1CE90(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v121 = a2;
  v119 = type metadata accessor for BeaconStoreFileRecord();
  v116 = *(v119 - 8);
  v7 = *(v116 + 64);
  __chkstk_darwin(v119);
  v114 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v101 - v14;
  v125 = type metadata accessor for UUID();
  v122 = *(v125 - 1);
  v15 = *(v122 + 8);
  v16 = __chkstk_darwin(v125);
  v102 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v113 = &v101 - v19;
  __chkstk_darwin(v18);
  v105 = &v101 - v20;
  v103 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v21 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v104 = &v101 - v22;
  v23 = type metadata accessor for OwnedBeaconGroup(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v112 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v101 - v27;
  v29 = swift_allocObject();
  v115 = a3;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v120 = v29;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C380;
  v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  v107 = xmmword_101385D80;
  *(v31 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v28, type metadata accessor for OwnedBeaconGroup);
  v111 = v28;
  v124 = v23;
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  v109 = sub_100008C00();
  *(v31 + 64) = v109;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v110 = v30;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v35 BOOLForKey:v38];
  }

  v39 = v124;
  v40 = v13;
  v41 = [objc_opt_self() defaultStore];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 aa_primaryAppleAccount];

    v123 = a1;
    if (v43 && (v43, (v37 & 1) == 0))
    {
      v115 = v25;
      v124 = v24;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v57 = *(v39 + 6);
      v58 = UUID.uuidString.getter();
      v60 = v59;
      v61 = v121;
      v62 = *(v121 + 160);
      v63._countAndFlagsBits = v58;
      v63._object = v60;
      isa = CKRecordID.init(recordName:zoneID:)(v63, v62).super.isa;
      v65 = *(v61 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v112 = isa;
      v114 = sub_100FDB020(isa);

      v113 = swift_allocBox();
      v66 = *(v116 + 56);
      v103 = v67;
      v68 = a1;
      v69 = v119;
      v116 += 56;
      v102 = v66;
      (v66)(v67, 1, 1, v119);
      v70 = *(v61 + 168);
      v71 = v122;
      v72 = v105;
      (*(v122 + 2))(v105, v68 + v57, v125);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v73 = v118;
      v74 = sub_1000076D4(v118, qword_10177AEF8);
      v75 = v117;
      v76 = v106;
      v77 = (*(v117 + 16))(v106, v74, v73);
      v78 = *(v70 + 16);
      __chkstk_darwin(v77);
      *(&v101 - 4) = v70;
      *(&v101 - 3) = v72;
      *(&v101 - 2) = v76;
      v79 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v75 + 8))(v76, v73);
      (*(v71 + 1))(v72, v125);
      (v102)(v79, 0, 1, v69);
      sub_10002311C(v79, v103, &qword_1016B53E0, &unk_1013D65D0);
      v81 = v109;
      v82 = v115;
      v83 = v112;
      static os_log_type_t.default.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v107;
      v85 = v83;
      v125 = v85;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v81;
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      v122 = type metadata accessor for OwnedBeaconGroup;
      v90 = v111;
      sub_100022A54(v123, v111, type metadata accessor for OwnedBeaconGroup);
      v91 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v92 = (v82 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v113;
      v95 = v121;
      *(v93 + 16) = v113;
      *(v93 + 24) = v95;
      v124 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v90, v93 + v91, type metadata accessor for OwnedBeaconGroup);
      v96 = (v93 + v92);
      v119 = sub_100B27FFC;
      v97 = v120;
      *v96 = sub_100B27FFC;
      v96[1] = v97;

      Future.addSuccess(block:)();

      sub_100022A54(v123, v90, v122);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      sub_10002911C(v90, v98 + v91, v124);
      v99 = (v98 + v92);
      *v99 = v119;
      v99[1] = v97;

      Future.addFailure(block:)();
    }

    else
    {
      v116 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177BA08);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v43 != 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = v117;

      v49 = *(v121 + 168);
      v50 = v123 + *(v124 + 6);
      v51 = v113;
      v111 = *(v122 + 2);
      v111(v113, v50, v125);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v52 = v118;
      v53 = sub_1000076D4(v118, qword_10177AEF8);
      v54 = (*(v48 + 16))(v40, v53, v52);
      v55 = *(v49 + 16);
      __chkstk_darwin(v54);
      *(&v101 - 4) = v49;
      *(&v101 - 3) = v51;
      *(&v101 - 2) = v40;
      v56 = v114;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v48 + 8))(v40, v52);
      (*(v122 + 1))(v51, v125);
      sub_100B39D8C(v56);
      v80 = *(v121 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v115(1);
      sub_100022C40(v56, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1DF3C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v125 = a2;
  v123 = type metadata accessor for BeaconStoreFileRecord();
  v119 = *(v123 - 1);
  v7 = *(v119 + 64);
  __chkstk_darwin(v123);
  v117 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v121 = v9;
  v122 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v116 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v103 - v14;
  v15 = type metadata accessor for UUID();
  v128 = *(v15 - 1);
  v16 = v128[8];
  v17 = __chkstk_darwin(v15);
  v103 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v103 - v20;
  __chkstk_darwin(v19);
  v105 = &v103 - v21;
  v22 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v104 = &v103 - v24;
  v25 = type metadata accessor for KeyAlignmentRecord();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  v27 = __chkstk_darwin(v25);
  v114 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v28;
  __chkstk_darwin(v27);
  v30 = &v103 - v29;
  v31 = swift_allocObject();
  v118 = a3;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C380;
  v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  v107 = xmmword_101385D80;
  *(v33 + 16) = xmmword_101385D80;
  v126 = a1;
  sub_100022A54(a1, v30, type metadata accessor for KeyAlignmentRecord);
  v113 = v30;
  v124 = v25;
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  v109 = sub_100008C00();
  *(v33 + 64) = v109;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v110 = v32;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v37 = qword_10177C218;
  v38 = [objc_opt_self() sharedInstance];
  v39 = [v38 isInternalBuild];

  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
    v41 = [v37 BOOLForKey:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = v124;
  v43 = [objc_opt_self() defaultStore];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 aa_primaryAppleAccount];

    v120 = v31;
    v127 = v15;
    if (v45 && (v45, (v41 & 1) == 0))
    {
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v61 = *(v42 + 20);
      v62 = v126;
      v63 = UUID.uuidString.getter();
      v65 = v64;
      v66 = v15;
      v67 = v125;
      v68 = *(v125 + 160);
      v69._countAndFlagsBits = v63;
      v69._object = v65;
      isa = CKRecordID.init(recordName:zoneID:)(v69, v68).super.isa;
      v71 = *(v67 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v117 = isa;
      v124 = sub_100FDB020(isa);

      v118 = swift_allocBox();
      v115 = *(v119 + 56);
      v116 = v72;
      v73 = v123;
      v119 += 56;
      (v115)(v72, 1, 1, v123);
      v74 = *(v67 + 168);
      v75 = v105;
      (v128[2])(v105, v62 + v61, v66);
      v76 = *(v42 + 24);
      v77 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v78 = v121;
      sub_1000076D4(v121, qword_10177A500);
      UUID.uuidString.getter();
      v79 = v106;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v77);
      v80 = *(v74 + 16);
      __chkstk_darwin(v81);
      *(&v103 - 4) = v74;
      *(&v103 - 3) = v75;
      *(&v103 - 2) = v79;
      v82 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v122 + 8))(v79, v78);
      (v128[1])(v75, v127);
      (v115)(v82, 0, 1, v73);
      sub_10002311C(v82, v116, &qword_1016B53E0, &unk_1013D65D0);
      v84 = v109;
      v85 = v117;
      static os_log_type_t.default.getter();
      v86 = swift_allocObject();
      *(v86 + 16) = v107;
      v87 = v85;
      v128 = v87;
      v88 = [v87 description];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = v84;
      *(v86 + 32) = v89;
      *(v86 + 40) = v91;
      os_log(_:dso:log:_:_:)();

      v127 = type metadata accessor for KeyAlignmentRecord;
      v92 = v113;
      sub_100022A54(v126, v113, type metadata accessor for KeyAlignmentRecord);
      v93 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v94 = (v112 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      v96 = v118;
      v97 = v125;
      *(v95 + 16) = v118;
      *(v95 + 24) = v97;
      v123 = type metadata accessor for KeyAlignmentRecord;
      sub_10002911C(v92, v95 + v93, type metadata accessor for KeyAlignmentRecord);
      v98 = (v95 + v94);
      v99 = v120;
      *v98 = sub_100B27FFC;
      v98[1] = v99;

      Future.addSuccess(block:)();

      sub_100022A54(v126, v92, v127);
      v100 = swift_allocObject();
      *(v100 + 16) = v96;
      *(v100 + 24) = v97;
      sub_10002911C(v92, v100 + v93, v123);
      v101 = (v100 + v94);
      *v101 = sub_100B27FFC;
      v101[1] = v99;

      Future.addFailure(block:)();
    }

    else
    {
      v119 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      v113 = sub_1000076D4(v46, qword_10177BA08);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v115;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 67109376;
        *(v51 + 4) = v41;
        *(v51 + 8) = 1024;
        *(v51 + 10) = v45 != 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v51, 0xEu);
      }

      v52 = *(v125 + 168);
      v53 = v126 + *(v42 + 20);
      v112 = v128[2];
      v112(v50, v53, v127);
      v54 = *(v42 + 24);
      v55 = objc_autoreleasePoolPush();
      if (qword_101694460 != -1)
      {
        swift_once();
      }

      v56 = v121;
      sub_1000076D4(v121, qword_10177A500);
      UUID.uuidString.getter();
      v57 = v116;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v55);
      v58 = *(v52 + 16);
      __chkstk_darwin(v59);
      *(&v103 - 4) = v52;
      *(&v103 - 3) = v50;
      *(&v103 - 2) = v57;
      v60 = v117;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v122 + 8))(v57, v56);
      (v128[1])(v50, v127);
      sub_100B39D8C(v60);
      v83 = *(v125 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v118(1);
      sub_100022C40(v60, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B1F028(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v125 = a2;
  v123 = type metadata accessor for BeaconStoreFileRecord();
  v119 = *(v123 - 1);
  v7 = *(v119 + 64);
  __chkstk_darwin(v123);
  v117 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v121 = v9;
  v122 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v116 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v103 - v14;
  v15 = type metadata accessor for UUID();
  v128 = *(v15 - 1);
  v16 = v128[8];
  v17 = __chkstk_darwin(v15);
  v103 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v103 - v20;
  __chkstk_darwin(v19);
  v105 = &v103 - v21;
  v22 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v104 = &v103 - v24;
  v25 = type metadata accessor for BeaconEstimatedLocation();
  v111 = *(v25 - 8);
  v26 = *(v111 + 64);
  v27 = __chkstk_darwin(v25);
  v114 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v28;
  __chkstk_darwin(v27);
  v30 = &v103 - v29;
  v31 = swift_allocObject();
  v118 = a3;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v32 = qword_10177C380;
  v108 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  v107 = xmmword_101385D80;
  *(v33 + 16) = xmmword_101385D80;
  v126 = a1;
  sub_100022A54(a1, v30, type metadata accessor for BeaconEstimatedLocation);
  v113 = v30;
  v124 = v25;
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  v109 = sub_100008C00();
  *(v33 + 64) = v109;
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v110 = v32;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v37 = qword_10177C218;
  v38 = [objc_opt_self() sharedInstance];
  v39 = [v38 isInternalBuild];

  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
    v41 = [v37 BOOLForKey:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = v124;
  v43 = [objc_opt_self() defaultStore];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 aa_primaryAppleAccount];

    v120 = v31;
    v127 = v15;
    if (v45 && (v45, (v41 & 1) == 0))
    {
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v61 = *(v42 + 20);
      v62 = v126;
      v63 = UUID.uuidString.getter();
      v65 = v64;
      v66 = v15;
      v67 = v125;
      v68 = *(v125 + 160);
      v69._countAndFlagsBits = v63;
      v69._object = v65;
      isa = CKRecordID.init(recordName:zoneID:)(v69, v68).super.isa;
      v71 = *(v67 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v117 = isa;
      v124 = sub_100FDB020(isa);

      v118 = swift_allocBox();
      v115 = *(v119 + 56);
      v116 = v72;
      v73 = v123;
      v119 += 56;
      (v115)(v72, 1, 1, v123);
      v74 = *(v67 + 168);
      v75 = v105;
      (v128[2])(v105, v62 + v61, v66);
      v76 = *(v42 + 24);
      v77 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v78 = v121;
      sub_1000076D4(v121, qword_10177BF38);
      UUID.uuidString.getter();
      v79 = v106;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v77);
      v80 = *(v74 + 16);
      __chkstk_darwin(v81);
      *(&v103 - 4) = v74;
      *(&v103 - 3) = v75;
      *(&v103 - 2) = v79;
      v82 = v104;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v122 + 8))(v79, v78);
      (v128[1])(v75, v127);
      (v115)(v82, 0, 1, v73);
      sub_10002311C(v82, v116, &qword_1016B53E0, &unk_1013D65D0);
      v84 = v109;
      v85 = v117;
      static os_log_type_t.default.getter();
      v86 = swift_allocObject();
      *(v86 + 16) = v107;
      v87 = v85;
      v128 = v87;
      v88 = [v87 description];
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = v84;
      *(v86 + 32) = v89;
      *(v86 + 40) = v91;
      os_log(_:dso:log:_:_:)();

      v127 = type metadata accessor for BeaconEstimatedLocation;
      v92 = v113;
      sub_100022A54(v126, v113, type metadata accessor for BeaconEstimatedLocation);
      v93 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v94 = (v112 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      v96 = v118;
      v97 = v125;
      *(v95 + 16) = v118;
      *(v95 + 24) = v97;
      v123 = type metadata accessor for BeaconEstimatedLocation;
      sub_10002911C(v92, v95 + v93, type metadata accessor for BeaconEstimatedLocation);
      v98 = (v95 + v94);
      v99 = v120;
      *v98 = sub_100B23178;
      v98[1] = v99;

      Future.addSuccess(block:)();

      sub_100022A54(v126, v92, v127);
      v100 = swift_allocObject();
      *(v100 + 16) = v96;
      *(v100 + 24) = v97;
      sub_10002911C(v92, v100 + v93, v123);
      v101 = (v100 + v94);
      *v101 = sub_100B23178;
      v101[1] = v99;

      Future.addFailure(block:)();
    }

    else
    {
      v119 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      v113 = sub_1000076D4(v46, qword_10177BA08);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v115;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 67109376;
        *(v51 + 4) = v41;
        *(v51 + 8) = 1024;
        *(v51 + 10) = v45 != 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v51, 0xEu);
      }

      v52 = *(v125 + 168);
      v53 = v126 + *(v42 + 20);
      v112 = v128[2];
      v112(v50, v53, v127);
      v54 = *(v42 + 24);
      v55 = objc_autoreleasePoolPush();
      if (qword_101694E08 != -1)
      {
        swift_once();
      }

      v56 = v121;
      sub_1000076D4(v121, qword_10177BF38);
      UUID.uuidString.getter();
      v57 = v116;
      URL.appendingPathComponent(_:)();

      objc_autoreleasePoolPop(v55);
      v58 = *(v52 + 16);
      __chkstk_darwin(v59);
      *(&v103 - 4) = v52;
      *(&v103 - 3) = v50;
      *(&v103 - 2) = v57;
      v60 = v117;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v122 + 8))(v57, v56);
      (v128[1])(v50, v127);
      sub_100B39D8C(v60);
      v83 = *(v125 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v118(1);
      sub_100022C40(v60, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B20114(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v25 = a2;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v14 = aBlock[0];
  v15 = swift_allocObject();
  v15[2] = sub_100B2531C;
  v15[3] = v12;
  v15[4] = a1;
  v16 = *(v14 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  *(v18 + 56) = &type metadata for Bool;
  *(v18 + 64) = &protocol witness table for Bool;
  *(v18 + 32) = v17;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  if (v17)
  {
    v19 = os_log(_:dso:log:_:_:)();
    v25(v19);
  }

  else
  {
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v25 = *(v14 + 72);
    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = sub_100B27E44;
    v20[4] = v15;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016476B8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v22 = v27;
    v23 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v11, v28);
  }
}

uint64_t sub_100B2067C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeaconObservation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v50 = a1;
  v48 = qword_10177B2E8;
  v22 = sub_100035730(a1, sub_100AC8058, 0);
  sub_1012BB138(v22, v21);

  sub_1000D2A70(v21, v19, &qword_1016A42E0, &qword_1013B0010);
  if ((*(v8 + 48))(v19, 1, v7) == 1)
  {
    sub_10000B3A8(v21, &qword_1016A42E0, &qword_1013B0010);
    v21 = v19;
  }

  else
  {
    sub_10002911C(v19, v14, type metadata accessor for BeaconObservation);
    if (v14[*(v7 + 24)] == 41)
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177BA08);
      v24 = v47;
      v46 = *(v47 + 16);
      v46(v6, v50, v3);
      v25 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v45))
      {
        v26 = swift_slowAlloc();
        v44 = v8;
        v27 = v24;
        v28 = v26;
        v43 = swift_slowAlloc();
        v51 = v43;
        *v28 = 141558275;
        *(v28 + 4) = 1752392040;
        *(v28 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v42 = v25;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v27 + 8))(v6, v3);
        v8 = v44;
        v31 = sub_1000136BC(v41, v30, &v51);

        *(v28 + 14) = v31;
        v32 = v42;
        _os_log_impl(&_mh_execute_header, v42, v45, "Marking beacon %{private,mask.hash}s as reunited", v28, 0x16u);
        sub_100007BAC(v43);
      }

      else
      {

        (*(v24 + 8))(v6, v3);
      }

      v46(v12, v50, v3);
      v34 = *(v7 + 20);
      v35 = type metadata accessor for Date();
      (*(*(v35 - 8) + 16))(&v12[v34], v49, v35);
      v12[*(v7 + 24)] = 42;
      sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
      v36 = *(v8 + 72);
      v37 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_101385D80;
      sub_100022A54(v12, v38 + v37, type metadata accessor for BeaconObservation);
      v39 = type metadata accessor for Transaction();
      __chkstk_darwin(v39);
      *(&v41 - 4) = v48;
      *(&v41 - 3) = v38;
      *(&v41 - 2) = 0;
      *(&v41 - 1) = 0;
      static Transaction.named<A>(_:with:)();

      sub_100022C40(v12, type metadata accessor for BeaconObservation);
      v33 = v14;
    }

    else
    {
      v33 = v14;
    }

    sub_100022C40(v33, type metadata accessor for BeaconObservation);
  }

  return sub_10000B3A8(v21, &qword_1016A42E0, &qword_1013B0010);
}

uint64_t sub_100B20CDC(uint64_t a1)
{
  v2 = type metadata accessor for StableIdentifier();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v2);
  v64 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = v62 - v6;
  v65 = 0;
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v15 = v62 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v62[1] = v2;
    v17 = *(v12 + 24);
    v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v19 = a1 + v18;
    v67 = *(v13 + 72);
    v68 = v18;
    v20 = _swiftEmptyDictionarySingleton;
    v69 = v17;
    v70 = v11;
    while (1)
    {
      sub_100022A54(v19, v15, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v15, v11, type metadata accessor for OwnedBeaconRecord);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v20;
      v23 = sub_100772BF4(&v15[v17]);
      v24 = v20[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_36;
      }

      v27 = v22;
      if (v20[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v28 = v20;
          if ((v22 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_10100CB68();
          v28 = v71;
          if ((v27 & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_100FF54E0(v26, isUniquelyReferenced_nonNull_native);
        v28 = v71;
        v29 = sub_100772BF4(&v15[v17]);
        if ((v27 & 1) != (v30 & 1))
        {
          goto LABEL_39;
        }

        v23 = v29;
        if ((v27 & 1) == 0)
        {
LABEL_10:
          v28[(v23 >> 6) + 8] |= 1 << v23;
          sub_100022A54(&v15[v17], v28[6] + *(v66 + 72) * v23, type metadata accessor for StableIdentifier);
          *(v28[7] + 8 * v23) = _swiftEmptyArrayStorage;
          v31 = v28[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_37;
          }

          v28[2] = v33;
        }
      }

      v34 = v28[7];
      v35 = *(v34 + 8 * v23);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v23) = v35;
      if ((v36 & 1) == 0)
      {
        v35 = sub_100A5C050(0, v35[2] + 1, 1, v35);
        *(v34 + 8 * v23) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        *(v34 + 8 * v23) = sub_100A5C050(v37 > 1, v38 + 1, 1, v35);
      }

      sub_100022C40(v15, type metadata accessor for OwnedBeaconRecord);
      v39 = *(v34 + 8 * v23);
      *(v39 + 16) = v38 + 1;
      v40 = v67;
      v11 = v70;
      sub_10002911C(v70, v39 + v68 + v38 * v67, type metadata accessor for OwnedBeaconRecord);
      v19 += v40;
      v20 = v28;
      --v16;
      v17 = v69;
      if (!v16)
      {
        goto LABEL_21;
      }
    }
  }

  v28 = _swiftEmptyDictionarySingleton;
LABEL_21:
  sub_1000BC4D4(&unk_1016C2CB0, &qword_1013D6748);
  v41 = static _DictionaryStorage.copy(original:)();
  v42 = 0;
  v43 = 1 << *(v28 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v28[8];
  v46 = (v43 + 63) >> 6;
  v69 = v41 + 64;
  v70 = v41;
  if (v45)
  {
    while (1)
    {
      v47 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
LABEL_30:
      v50 = v47 | (v42 << 6);
      v51 = *(v66 + 72) * v50;
      v52 = v63;
      sub_100022A54(v28[6] + v51, v63, type metadata accessor for StableIdentifier);
      v53 = *(v28[7] + 8 * v50);
      v54 = v52;
      v55 = v64;
      sub_10002911C(v54, v64, type metadata accessor for StableIdentifier);
      v71 = v53;
      swift_bridgeObjectRetain_n();
      v56 = v65;
      sub_100A8ABA4(&v71);
      v65 = v56;
      if (v56)
      {
        break;
      }

      v57 = v71;
      v58 = v70;
      *(v69 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      sub_10002911C(v55, v58[6] + v51, type metadata accessor for StableIdentifier);
      *(v58[7] + 8 * v50) = v57;
      v59 = v58[2];
      v32 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v32)
      {
        goto LABEL_38;
      }

      *(v70 + 2) = v60;
      if (!v45)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    v48 = v42;
    while (1)
    {
      v42 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v42 >= v46)
      {

        return v70;
      }

      v49 = v28[v42 + 8];
      ++v48;
      if (v49)
      {
        v47 = __clz(__rbit64(v49));
        v45 = (v49 - 1) & v49;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100B2128C(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v2)
  {
    center = v2;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    os_log(_:dso:log:_:_:)();

    CFNotificationCenterPostNotification(center, a1, 0, 0, 1u);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100B2145C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v75 = &v61 - v4;
  v77 = type metadata accessor for URL();
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v77 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for BeaconStoreFileRecord();
  v68 = *(v73 - 8);
  v9 = *(v68 + 64);
  v10 = __chkstk_darwin(v73);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v61 - v13;
  v14 = sub_1000BC4D4(&qword_1016B53E8, &qword_1013D65E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v76 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v74 = (&v61 - v18);
  v19 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 64);
  v23 = (v20 + 63) >> 6;
  v71 = (v5 + 48);
  v64 = (v5 + 8);
  v65 = (v5 + 32);
  v69 = a1;

  v24 = 0;
  v62 = 0;
  v63 = xmmword_101385D80;
  v72 = a1 + 64;
  v66 = v8;
  while (1)
  {
    if (v22)
    {
      v25 = v24;
      v26 = v76;
LABEL_17:
      v29 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v30 = v29 | (v25 << 6);
      v31 = *(*(v69 + 48) + 8 * v30);
      v32 = v67;
      sub_100022A54(*(v69 + 56) + *(v68 + 72) * v30, v67, type metadata accessor for BeaconStoreFileRecord);
      v33 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
      v34 = *(v33 + 48);
      *v26 = v31;
      sub_10002911C(v32, v26 + v34, type metadata accessor for BeaconStoreFileRecord);
      (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
      v35 = v31;
    }

    else
    {
      v27 = v23 <= v24 + 1 ? v24 + 1 : v23;
      v28 = v27 - 1;
      v26 = v76;
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
        }

        if (v25 >= v23)
        {
          break;
        }

        v22 = *(v19 + 8 * v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          goto LABEL_17;
        }
      }

      v59 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
      (*(*(v59 - 8) + 56))(v26, 1, 1, v59);
      v22 = 0;
      v24 = v28;
    }

    v36 = v74;
    sub_1000D2AD8(v26, v74, &qword_1016B53E8, &qword_1013D65E0);
    v37 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v75;
    if (v38 == 1)
    {
    }

    v40 = *v36;
    sub_10002911C(v36 + *(v37 + 48), v12, type metadata accessor for BeaconStoreFileRecord);
    sub_1000D2A70(&v12[*(v73 + 20)], v39, &unk_101696AC0, &qword_101390A60);
    v41 = v12;
    v42 = v77;
    if ((*v71)(v39, 1, v77) == 1)
    {

      sub_100022C40(v41, type metadata accessor for BeaconStoreFileRecord);
      sub_10000B3A8(v39, &unk_101696AC0, &qword_101390A60);
LABEL_5:
      v12 = v41;
      goto LABEL_6;
    }

    v70 = v40;
    v43 = v66;
    (*v65)(v66, v39, v42);
    v44 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v78 = 0;
    v51 = [v44 moveItemAtURL:v47 toURL:v49 error:&v78];

    if (v51)
    {
      v52 = v78;

      (*v64)(v43, v42);
      sub_100022C40(v41, type metadata accessor for BeaconStoreFileRecord);
      goto LABEL_5;
    }

    v53 = v78;
    v54 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v55 = swift_allocObject();
    *(v55 + 16) = v63;
    v78 = v54;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v56 = String.init<A>(describing:)();
    v58 = v57;
    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_100008C00();
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    os_log(_:dso:log:_:_:)();

    (*v64)(v66, v77);
    v12 = v41;
    sub_100022C40(v41, type metadata accessor for BeaconStoreFileRecord);
    v62 = 0;
LABEL_6:
    v19 = v72;
  }
}

uint64_t sub_100B21C10(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_100B21C1C(uint64_t a1)
{
  v2 = &unk_101696AC0;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = &v63 - v5;
  v76 = type metadata accessor for URL();
  v6 = *(v76 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v76 - 8);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconStoreFileRecord();
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = __chkstk_darwin(v9);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v63 - v13;
  v14 = sub_1000BC4D4(&qword_1016B53E8, &qword_1013D65E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v75 = &v63 - v19;
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  v71 = a1;
  v72 = (v6 + 48);
  v66 = (v6 + 8);
  v67 = (v6 + 32);

  v25 = 0;
  v64 = 0;
  v65 = xmmword_101385D80;
  v78 = v18;
  v73 = v9;
  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_7:
  v26 = v25;
LABEL_16:
  v30 = v2;
  v31 = __clz(__rbit64(v23));
  v23 &= v23 - 1;
  v32 = v31 | (v26 << 6);
  v33 = *(*(v71 + 48) + 8 * v32);
  v34 = v69;
  sub_100022A54(*(v71 + 56) + *(v70 + 72) * v32, v69, type metadata accessor for BeaconStoreFileRecord);
  v35 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
  v36 = *(v35 + 48);
  v37 = v78;
  *v78 = v33;
  v38 = v34;
  v18 = v37;
  sub_10002911C(v38, &v37[v36], type metadata accessor for BeaconStoreFileRecord);
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  v39 = v33;
  v29 = v75;
  while (1)
  {
    sub_1000D2AD8(v18, v29, &qword_1016B53E8, &qword_1013D65E0);
    v40 = v29;
    v41 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v74;
    if (v42 == 1)
    {
    }

    v44 = v40 + *(v41 + 48);
    v45 = v77;
    sub_10002911C(v44, v77, type metadata accessor for BeaconStoreFileRecord);
    v2 = v30;
    sub_1000D2A70(v45 + *(v73 + 20), v43, v30, &qword_101390A60);
    v46 = v76;
    if ((*v72)(v43, 1, v76) == 1)
    {
      sub_100022C40(v45, type metadata accessor for BeaconStoreFileRecord);
      sub_10000B3A8(v43, v30, &qword_101390A60);
      goto LABEL_6;
    }

    v47 = v68;
    (*v67)(v68, v43, v46);
    v48 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v49);
    v51 = v50;
    v79 = 0;
    v52 = [v48 removeItemAtURL:v50 error:&v79];

    if (v52)
    {
      v53 = *v66;
      v54 = v79;
      v53(v47, v46);
      sub_100022C40(v77, type metadata accessor for BeaconStoreFileRecord);
      v2 = &unk_101696AC0;
LABEL_6:
      v18 = v78;
      if (v23)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v55 = v79;
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v57 = swift_allocObject();
    *(v57 + 16) = v65;
    v79 = v56;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_100008C00();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    os_log(_:dso:log:_:_:)();

    (*v66)(v68, v76);
    sub_100022C40(v77, type metadata accessor for BeaconStoreFileRecord);
    v64 = 0;
    v2 = &unk_101696AC0;
    v18 = v78;
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (v24 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v24;
    }

    v28 = v27 - 1;
    v29 = v75;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
      }

      if (v26 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    v30 = v2;
    v61 = sub_1000BC4D4(&qword_1016B53F0, &unk_1013D65E8);
    (*(*(v61 - 8) + 56))(v18, 1, 1, v61);
    v23 = 0;
    v25 = v28;
  }
}

id sub_100B223D0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100B2242C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100ACD84C();
}

uint64_t sub_100B224D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100ACD22C(v2);
}

uint64_t sub_100B2256C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10094E68C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100B22634(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4B064(a1, v1);
}

void sub_100B226E0(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100AF110C(a1, v5, v1 + v4, v6);
}

uint64_t sub_100B227B8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v38 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v13 = v11[1];

      v14 = v11[3];

      v15 = v11 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10(v11, v8);
      v37 = (v2 + 32) & ~v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v3 = v37;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v37 = (v2 + 32) & ~v2;
      v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v22 = *(v11 + v21[12] + 8);

      v23 = *(v11 + v21[16] + 8);

      v20 = v21[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v15 = v11 + 1;
LABEL_13:
      v24 = *v15;

      break;
  }

LABEL_14:
  v25 = v1[7];
  if (!(*(v9 + 48))(v6 + v25, 1, v8))
  {
    v10(v6 + v25, v8);
  }

  v26 = v1[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v28 = (v6 + v1[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v6 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v38 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v33 = *(v6 + v1[14] + 8);

  v34 = *(v6 + v1[15] + 8);

  v35 = *(v0 + v32 + 8);

  return _swift_deallocObject(v0, v32 + 16);
}

void sub_100B22B78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100ACE2D8();
}

BOOL sub_100B22BD8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for SafeLocation();
  return sub_1005C8A30(v3, *(a1 + *(v4 + 52)));
}

uint64_t sub_100B22C54()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1009E2A6C(v4, v0 + v2, v5, v7, v8);
}

uint64_t sub_100B22CF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AE6D3C(a1, v4, v1 + 24);
}

uint64_t sub_100B22DA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100AE7214(a1, v1 + 16);
}

void sub_100B22E3C(char a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_100AE6740(a1, v6, v1 + v5, v7);
}

void sub_100B22EDC(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100AE63DC(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_100B23010(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(*(v1 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  return v6(a1);
}

void sub_100B23104(char a1)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  sub_100AE6074(a1);
}

uint64_t sub_100B23178(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0);
}

uint64_t sub_100B231D4()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[6], v7);
  v9 = v1[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v2 + v9, v10);
  v13 = v1[12];
  if (!(*(v11 + 48))(v0 + v2 + v13, 1, v10))
  {
    v12(v5 + v13, v10);
  }

  v14 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v1[13]);

  v16 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_100B233E8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100AAEEB8(a1, *(v3 + 16), *(v3 + 24), v3 + v7, *v8, *(v8 + 8), a3);
}

uint64_t sub_100B234C0()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[8], v8);
  v10 = *(v6 + v1[10] + 8);

  v11 = *(v6 + v1[11] + 8);

  v12 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23690()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[8], v8);
  v10 = v1[10];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23864(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100AAEBC0(a1, v5, v6, v1 + v4, v8);
}

uint64_t sub_100B23934()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[8], v8);
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  sub_100016590(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B23B40(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100ABCE7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100B23C44()
{
  v1 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100ABD1C8(v2, v3);
}

uint64_t sub_100B23CF0()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[6], v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v2 + v9, v10);
  v13 = v1[8];
  if (!(*(v11 + 48))(v0 + v2 + v13, 1, v10))
  {
    v12(v5 + v13, v10);
  }

  v14 = (v19 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v1[9] + 16);

  v16 = *(v5 + v1[10] + 8);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_100B23F44()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v1[6], v7);
  v10 = *(v5 + v1[7] + 16);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v1[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[19];
  v17 = *(v8 + 48);
  if (!v17(v5 + v16, 1, v7))
  {
    v9(v5 + v16, v7);
  }

  v18 = v5 + v1[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    if (!v17(v18 + v20, 1, v7))
    {
      v9(v18 + v20, v7);
    }
  }

  v21 = (v24 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16);
}

uint64_t sub_100B2420C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100A952A8(v0);
}

void sub_100B242D0(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyAlignmentRecord() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for KeySyncMetadata() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100AD111C(a1, v11, v12, v1 + v4, v1 + v7, v1 + v10, v13);
}

uint64_t sub_100B24438()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AD2E7C(v5, v6, v7, v0 + v2, v8);
}

void sub_100B245B0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_100AD26E8(a1, v7, v1 + v4, v8);
}

uint64_t sub_100B24688(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyAlignmentRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100AD19A0(a1, v4, v5);
}

uint64_t sub_100B246FC(uint64_t a1)
{
  v4 = *(type metadata accessor for KeySyncMetadata() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100AD1C58(a1, v6, v7, v1 + v5);
}

uint64_t sub_100B247F4()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B24988(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v7, v3 + v6, v8);
}

void sub_100B24B04()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100B2F860(v0[2]);
}

uint64_t sub_100B24B38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100ADFAF8(a1, v4, v1 + 24, v5);
}

uint64_t sub_100B24BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100AE23E4(a1, v4, v1 + 24, v5, v6, v7);
}

uint64_t sub_100B24CF0()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[9] + 8);

  v10 = *(v6 + v1[15]);

  v11 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B24E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100AF2410(a1, v4, v5, v6);
}

uint64_t sub_100B24F0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100AF3DB0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100B25078()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AF409C(v5, v0 + v2, v6);
}

uint64_t sub_100B25184()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

Swift::Int sub_100B251CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54C0, &unk_1013D6900);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      v12 = qword_1013D6F68[v10];
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v5 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v3 + 48);
      if ((v18 & v17) != 0)
      {
        while (qword_1013D6F68[*(v19 + v15)] != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B25340()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100AC7A98(v4, v0 + v3);
}

uint64_t sub_100B254C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *(a2(0) + 28);
  return static MACAddress.== infix(_:_:)() & 1;
}

uint64_t sub_100B255F4(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100ABFA34(a1, v6, v1 + v5);
}

uint64_t sub_100B25720(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

void sub_100B257A8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for KeyAlignmentRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_100AC0234(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_100B259B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AB927C(a1, v4, v1 + 24);
}

uint64_t sub_100B25A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100AB9700(a1, v4, v1 + 24);
}

uint64_t sub_100B25B10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100AB9B88(a1, v1 + 16);
}

uint64_t sub_100B25C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B25CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100AA79B4(a1, v4, v5, v7, v6);
}

uint64_t sub_100B25DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords);
  *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedOwnedBeaconRecords) = *(v0 + 24);
}

uint64_t sub_100B25E48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = a2(0);
  return a3(a1 + *(v7 + 24), v6) & 1;
}

uint64_t sub_100B25F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 16);
  v4 = *(a2(0) + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100B25F90()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_100A9E100(v0 + v2, v6, v7, v8);
}

uint64_t sub_100B26114()
{
  v1 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100AA213C(v3, v0 + v2, v4);
}

uint64_t sub_100B261E4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v3 + 16);
  v11 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a3(v10, v3 + v6, v3 + v9, v12, v13);
}

uint64_t sub_100B26308()
{
  v1 = *(type metadata accessor for SessionTokenRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_100A9C5BC(v3, v0 + v2, v5, v6);
}

uint64_t sub_100B26418(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A99424(a1, v1);
}

uint64_t sub_100B264B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100AC8778(v0);
}

uint64_t sub_100B26554()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v6 = (v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = *(v0 + v6);

  v9(v0 + v6 + v5[11], v1);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100B266B8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100AC7468(v5, v0 + v2, v6);
}

uint64_t sub_100B26794(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100A99A48(a1, v1);
}

uint64_t sub_100B2682C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1002ECF7C();
}

uint64_t sub_100B268E0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100AC8778(v0);
}

uint64_t sub_100B26994()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100A98F8C(v0);
}

uint64_t sub_100B26A7C(unsigned __int8 *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = *a1;
  v5 = v1[2];
  Transaction.capture()();
  return v2(v4 == 1);
}

void sub_100B26AC8(char a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100AEC050(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_100B26B8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

void sub_100B26BB8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);

  sub_100AEC3A0(a1, a2 & 1);
}

unint64_t sub_100B26C84()
{
  result = qword_1016B55D0;
  if (!qword_1016B55D0)
  {
    sub_1000BC580(&qword_1016A5880, &unk_1013B3270);
    sub_10000768C(&qword_101698330, &type metadata accessor for UUID);
    sub_100B26D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55D0);
  }

  return result;
}

unint64_t sub_100B26D40()
{
  result = qword_1016B55D8;
  if (!qword_1016B55D8)
  {
    sub_1000BC580(&qword_101696970, &qword_10138C490);
    sub_10000768C(&qword_1016BA0B0, type metadata accessor for BeaconEstimatedLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55D8);
  }

  return result;
}

uint64_t sub_100B26DF4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100A92198(v7, a1, v4, v5, v6);
}

uint64_t sub_100B26EB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100A947AC(a1, v4, v5, v6);
}

uint64_t sub_100B26F6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100A92B74(a1, a2, v6);
}

uint64_t sub_100B2701C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A93070(a1, a2, v2);
}

uint64_t sub_100B270C4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100A955E8(a1, a2, v2);
}

uint64_t sub_100B271CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100B27284(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

id sub_100B27360()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100AD7D6C(v0 + v2, v4, v6, v7);
}

uint64_t sub_100B27408(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_100AD8568(a1, v4, v5, v6, v7);
}

uint64_t sub_100B27574()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for BeaconEstimatedLocation() + 40);
  return static Date.< infix(_:_:)() & 1;
}

uint64_t sub_100B275CC(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 24);

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100B27654()
{
  v1 = (type metadata accessor for LeashRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v1[8]);

  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B277B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100B27804(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = *a1;

  return a3(v12, v7, v8, v3 + v6, v10, v11);
}

uint64_t sub_100B278C0()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[8], v8);
  v10 = *(v6 + v1[9] + 8);

  v11 = *(v6 + v1[10] + 8);

  v12 = *(v6 + v1[11] + 8);

  v13 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100B27A34(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_100B27A84(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));
  v4 = *(v2 + 32);

  return _swift_deallocObject(v2, a2);
}

unint64_t sub_100B27AD8()
{
  result = qword_1016B55F8;
  if (!qword_1016B55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B55F8);
  }

  return result;
}

unint64_t sub_100B27B2C()
{
  result = qword_1016B5600;
  if (!qword_1016B5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5600);
  }

  return result;
}

uint64_t sub_100B27B98(uint64_t a1)
{

  sub_100ACBF00(sub_100B27BE8, a1);
}

unint64_t sub_100B27BF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100A9A010();
}

unint64_t sub_100B27C00()
{
  result = qword_1016B5658;
  if (!qword_1016B5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5658);
  }

  return result;
}

unint64_t sub_100B27C78()
{
  result = qword_1016B5660;
  if (!qword_1016B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5660);
  }

  return result;
}

unint64_t sub_100B27CD0()
{
  result = qword_1016B5668;
  if (!qword_1016B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5668);
  }

  return result;
}

unint64_t sub_100B28010(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD000000000000045;
    if (a1 != 2)
    {
      v4 = 0xD000000000000049;
    }

    v5 = 0xD000000000000047;
    if (!a1)
    {
      v5 = 0xD000000000000044;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 == 6)
    {
      v1 = 0xD00000000000004BLL;
    }

    else
    {
      v1 = 0xD000000000000036;
    }

    v2 = 0xD000000000000049;
    if (a1 != 4)
    {
      v2 = 0xD00000000000004BLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100B28108(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v54[-v11];
  ObjectType = swift_getObjectType();
  v14 = *(a2 + 56);
  v58 = 0x66u >> a3;
  v15 = v14((0x66u >> a3) & 1, (0x2Bu >> a3) & 1, ObjectType, a2);
  v16 = v15;
  (*(a2 + 80))(v15, ObjectType, a2);
  v17 = v12;
  Date.timeIntervalSinceNow.getter();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v18 < 9.22337204e18)
  {
    v57 = 0x2Bu >> a3;
    v17 = v18;
    if (qword_101694420 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_5:
  v59 = v17 & ~(v17 >> 63);
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177A470);
  (*(v6 + 16))(v10, v12, v5);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v55 = v16;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136447490;
    v56 = v23;
    if (a3 <= 3u)
    {
      v34 = 0xE800000000000000;
      v35 = 0x7265776F50776F6CLL;
      v36 = 0xE900000000000072;
      v37 = 0x65776F5068676968;
      if (a3 != 2)
      {
        v37 = 0x4F7265776F506E6FLL;
        v36 = 0xED0000694669576ELL;
      }

      if (a3)
      {
        v35 = 0x6F506D756964656DLL;
        v34 = 0xEB00000000726577;
      }

      if (a3 <= 1u)
      {
        v30 = v35;
      }

      else
      {
        v30 = v37;
      }

      if (a3 <= 1u)
      {
        v31 = v34;
      }

      else
      {
        v31 = v36;
      }
    }

    else
    {
      v24 = 0xEF6C6C65436E4F79;
      v25 = 0x7265747461426E6FLL;
      v26 = 0xEF79627261654E6ELL;
      v27 = 0x6F696E61706D6F63;
      if (a3 != 7)
      {
        v27 = 0x6857796669746F6ELL;
        v26 = 0xEF646E756F466E65;
      }

      if (a3 != 6)
      {
        v25 = v27;
        v24 = v26;
      }

      v28 = 0xED00006C6C65436ELL;
      v29 = 0x4F7265776F506E6FLL;
      if (a3 != 4)
      {
        v29 = 0x7265747461426E6FLL;
        v28 = 0xEF694669576E4F79;
      }

      if (a3 <= 5u)
      {
        v30 = v29;
      }

      else
      {
        v30 = v25;
      }

      if (a3 <= 5u)
      {
        v31 = v28;
      }

      else
      {
        v31 = v24;
      }
    }

    v38 = sub_1000136BC(v30, v31, &v60);

    *(v22 + 4) = v38;
    *(v22 + 12) = 1024;
    v39 = v57 & 1;
    v40 = v55;
    *(v22 + 14) = v58 & 1;
    *(v22 + 18) = 1024;
    *(v22 + 20) = v39;
    *(v22 + 24) = 2080;
    v41 = 0x4669577265776F70;
    v42 = 0xEB00000000694669;
    v43 = 0x5779726574746162;
    if (v40 != 2)
    {
      v43 = 0x4379726574746162;
      v42 = 0xEB000000006C6C65;
    }

    v44 = 0xE90000000000006CLL;
    if (v40)
    {
      v41 = 0x6C65437265776F70;
    }

    else
    {
      v44 = 0xE900000000000069;
    }

    if (v40 <= 1)
    {
      v45 = v41;
    }

    else
    {
      v45 = v43;
    }

    if (v40 <= 1)
    {
      v46 = v44;
    }

    else
    {
      v46 = v42;
    }

    v47 = sub_1000136BC(v45, v46, &v60);

    *(v22 + 26) = v47;
    *(v22 + 34) = 2082;
    sub_100B286F8();
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v51 = *(v6 + 8);
    v51(v10, v5);
    v52 = sub_1000136BC(v48, v50, &v60);

    *(v22 + 36) = v52;
    *(v22 + 44) = 2048;
    v33 = v59;
    *(v22 + 46) = v59;
    _os_log_impl(&_mh_execute_header, v20, v21, "Publish delay: policy:%{public}s onBattery: %{BOOL}d, onWiFi: %{BOOL}d, powerMode: %s, next publish date: %{public}s, delay: %lld.", v22, 0x36u);
    swift_arrayDestroy();

    v51(v12, v5);
  }

  else
  {

    v32 = *(v6 + 8);
    v32(v10, v5);
    v32(v12, v5);
    return v59;
  }

  return v33;
}

unint64_t sub_100B286F8()
{
  result = qword_1016969A0;
  if (!qword_1016969A0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016969A0);
  }

  return result;
}

uint64_t sub_100B28750()
{
  if (qword_101694940 != -1)
  {
LABEL_14:
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = sub_101073B8C(v15);

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_3:
  v5 = (v1 + 40 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v2;
    v6 = v5 + 2;
    v7 = *(v5 - 1);
    v8 = *v5;

    v9._countAndFlagsBits = v7;
    v9._object = v8;
    v10 = _findStringSwitchCase(cases:string:)(&off_1016074D0, v9);

    v5 = v6;
    if (v10 < 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100A5B6E4(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_100A5B6E4((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v4[v12 + 32] = v10;
      goto LABEL_3;
    }
  }

  v13 = sub_1011298FC(v4);

  return v13;
}

unint64_t sub_100B28924()
{
  result = qword_1016B5670;
  if (!qword_1016B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B5670);
  }

  return result;
}

uint64_t sub_100B28A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberSharingCircle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100B28B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MemberSharingCircle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100B28C14()
{
  result = type metadata accessor for MemberSharingCircle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100B28C94(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = sub_1010E09D0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8), 0);
  *(inited + 40) = v9;
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.itemSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_100B28E4C(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = sub_1010E09D0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8), 0);
  *(inited + 40) = v9;
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.itemSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v10 = String.init(format:arguments:)();

  return v10;
}

uint64_t sub_100B29004()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v7 = type metadata accessor for ItemShareInviteReceivedAirTagUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v7 + 24)), *(v0 + *(v7 + 24) + 8), 0);
  *(inited + 40) = v8;
  v9 = (v0 + *(v7 + 28));
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != 0x676154726941 || v11 != 0xE600000000000000)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v10 == 0x676154726961 && v11 == 0xE600000000000000;
    if ((v13 & 1) == 0 && !v15)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v16 = String.init(format:arguments:)();

  return v16;
}

uint64_t sub_100B29280()
{
  v1 = type metadata accessor for LocalizationUtility.Table();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v7 = type metadata accessor for ItemShareInviteReceivedAirTagWithBlockedMembersUserNotification(0);
  *(inited + 32) = sub_1010E09D0(*(v0 + *(v7 + 24)), *(v0 + *(v7 + 24) + 8), 0);
  *(inited + 40) = v8;
  v9 = (v0 + *(v7 + 28));
  v10 = *v9;
  v11 = v9[1];
  if (*v9 != 0x676154726941 || v11 != 0xE600000000000000)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v15 = v10 == 0x676154726961 && v11 == 0xE600000000000000;
    if ((v13 & 1) == 0 && !v15)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v5, enum case for LocalizationUtility.Table.itemSharing(_:), v1);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v2 + 8))(v5, v1);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v16 = String.init(format:arguments:)();

  return v16;
}

uint64_t sub_100B294F8(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 20));
  v10 = v9[1];
  *(inited + 32) = *v9;
  *(inited + 40) = v10;
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.itemSharing(_:), v3);

  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_10039B904(inited);
  swift_setDeallocating();
  sub_1002FFC04(inited + 32);
  v11 = String.init(format:arguments:)();

  return v11;
}

unint64_t sub_100B296B4()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v2 = v0 + *(type metadata accessor for MemberSharingCircle() + 28);
  v3 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v5;
}

uint64_t sub_100B2979C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B2984C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100B297C8(uint64_t a1)
{
  *(a1 + 8) = sub_100B297F8();
  result = sub_10030FE78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B297F8()
{
  result = qword_1016B58D8;
  if (!qword_1016B58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B58D8);
  }

  return result;
}

uint64_t sub_100B2984C(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryDecodingError.decodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

Swift::Int sub_100B29A1C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32228(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[5];
          if (v12[1] >= v13)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12[1] = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000BC4D4(&qword_1016B5C98, &qword_1013D7318);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_100B31648(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100B29B78()
{
  v0 = sub_100B11100(&off_10160D020);
  result = sub_1002FFC04(&unk_10160D040);
  off_1016B58E0 = v0;
  return result;
}

void *sub_100B29BB8(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100024980(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  v16 = type metadata accessor for PropertyListDecoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v1[5] = PropertyListDecoder.init()();
  v19 = sub_1000BC4D4(&qword_1016B5D30, &qword_1013D7460);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v1[6] = PassthroughSubject.init()();
  v1[8] = 0;
  v1[9] = _swiftEmptyDictionarySingleton;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1[3] = v34;
  v22 = v1[6];
  sub_1000BC4D4(&qword_1016B5D38, &qword_1013D7468);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v2[7] = v23;
  v24 = v2[2];
  aBlock[4] = sub_100B3B26C;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101648D98;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100024980(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v26 = v32;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v33 + 8))(v26, v27);
  (*(v30 + 8))(v10, v31);

  return v2;
}

void sub_100B2A17C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v1 = [objc_opt_self() defaultManager];
    if (qword_101694E78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for URL();
  sub_1000076D4(v8, qword_10177C070);
  v9 = NSFileManager.entryCount(directory:)();
  if (qword_101695470 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177CD50);
  v10 = NSFileManager.entryCount(directory:)();
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v8, qword_10177C0C0);
  v11 = NSFileManager.entryCount(directory:)();
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BA08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218496;
    *(v15 + 4) = v9;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v13, v14, "RecordCount: OwnedBeaconRecord: %ld OwnedBeaconRecord: %ld BeaconNamingRecord: %ld", v15, 0x20u);
  }
}

uint64_t sub_100B2A4C0@<X0>(void (*a1)(char *, uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a2;
  v66 = a3;
  v67 = a1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v63 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v16 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v70 = v4;
  v17 = *(v4 + 8);
  v17(v13, v3);
  objc_autoreleasePoolPop(v16);
  v18 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v69 = v3;
  v19 = v3;
  v20 = v10;
  v67 = v17;
  v17(v13, v19);
  objc_autoreleasePoolPop(v18);
  v21 = objc_opt_self();
  v22 = [v21 defaultManager];
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v71 = 0;
  LODWORD(v10) = [v22 moveItemAtURL:v25 toURL:v27 error:&v71];

  if (v10)
  {
    v64 = v20;
    v29 = v71;
    v30 = v15;
  }

  else
  {
    v31 = v71;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = [v21 defaultManager];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v71 = 0;
    v39 = [v32 replaceItemAtURL:v35 withItemAtURL:v37 backupItemName:0 options:1 resultingItemURL:0 error:&v71];

    v30 = v15;
    if ((v39 & 1) == 0)
    {
      v60 = v71;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v61 = v69;
      v62 = v67;
      v67(v20, v69);
      return v62(v15, v61);
    }

    v64 = v20;
    v40 = v71;

    v68 = 0;
  }

  v41 = v69;
  v42 = v65;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177BA08);
  v44 = v30;
  (*(v70 + 16))(v42, v30, v41);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v71 = v48;
    *v47 = 136315138;
    sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v42;
    v51 = v41;
    v53 = v52;
    v67(v50, v51);
    v54 = sub_1000136BC(v49, v53, &v71);

    *(v47 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v45, v46, "Tombstoned record %s", v47, 0xCu);
    sub_100007BAC(v48);
  }

  else
  {

    v67(v42, v41);
    v51 = v41;
  }

  v55 = v70;
  v56 = *(v70 + 32);
  v57 = v66;
  v56(v66, v44, v51);
  v58 = *(type metadata accessor for BeaconStoreFileRecord() + 20);
  v56(v57 + v58, v64, v51);
  return (*(v55 + 56))(v57 + v58, 0, 1, v51);
}

uint64_t sub_100B2AABC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v27 = *(v2 + 8);
  v27(v6, v1);
  objc_autoreleasePoolPop(v9);
  v10 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v29 = 0;
  LODWORD(v6) = [v10 removeItemAtURL:v12 error:&v29];

  if (v6)
  {
    v14 = v29;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)();

    v19 = 1;
  }

  else
  {
    v20 = v29;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v29 = v21;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    v19 = 0;
  }

  result = (v27)(v8, v1);
  *v28 = v19;
  return result;
}

uint64_t sub_100B2AEE8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v58 = a2;
  v65 = a1;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for UUID();
  v71 = *(v6 - 8);
  v7 = *(v71 + 8);
  __chkstk_darwin(v6);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v70 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v52 - v18;
  v57 = type metadata accessor for DirectorySequence();
  v56 = *(v57 - 8);
  v20 = *(v56 + 64);
  __chkstk_darwin(v57);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_opt_self();
  v23 = [v54 defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v73 = v10[6];
  v74 = v10 + 6;
  if (v73(v19, 1, v9) == 1)
  {
    LOBYTE(v24) = 0;
    goto LABEL_24;
  }

  v24 = 0;
  v25 = v10 + 4;
  v72 = v10[4];
  v26 = (v10 + 1);
  v67 = (v71 + 48);
  v60 = (v71 + 8);
  v61 = (v71 + 32);
  v64 = xmmword_101385D80;
  v62 = v6;
  v63 = v5;
  v68 = v25;
  v69 = v22;
  do
  {
    v55 = v24;
    while (1)
    {
      v72(v15, v19, v9);
      if ((URL.hasDirectoryPath.getter() & 1) == 0)
      {
        break;
      }

      (*v26)(v15, v9);
LABEL_6:
      DirectorySequence.next()();
      if (v73(v19, 1, v9) == 1)
      {
        LOBYTE(v24) = v55;
        goto LABEL_24;
      }
    }

    v27 = v70;
    URL.deletingPathExtension()();
    URL.lastPathComponent.getter();
    v71 = *v26;
    v71(v27, v9);
    UUID.init(uuidString:)();

    if ((*v67)(v5, 1, v6) == 1)
    {
      sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
      static os_log_type_t.error.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v28 = swift_allocObject();
      *(v28 + 16) = v64;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100008C00();
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      os_log(_:dso:log:_:_:)();

      v71(v15, v9);
      v6 = v62;
      v5 = v63;
      v22 = v69;
      goto LABEL_6;
    }

    v32 = v66;
    (*v61)(v66, v5, v6);
    v33 = static UUID.== infix(_:_:)();
    v22 = v69;
    if ((v33 & 1) == 0)
    {
      (*v60)(v32, v6);
      v71(v15, v9);
      goto LABEL_6;
    }

    v34 = [v54 defaultManager];
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v75 = 0;
    LODWORD(v53) = [v34 removeItemAtURL:v36 error:&v75];

    if (v53)
    {
      v38 = v75;
      v55 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v53 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v39 = swift_allocObject();
      *(v39 + 16) = v64;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_100008C00();
      v42 = v52;
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      os_log(_:dso:log:_:_:)();

      v55 = 1;
      v43 = v66;
    }

    else
    {
      v44 = v75;
      v45 = _convertNSErrorToError(_:)();

      swift_willThrow();
      LODWORD(v59) = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v46 = swift_allocObject();
      *(v46 + 16) = v64;
      v75 = v45;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_100008C00();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      os_log(_:dso:log:_:_:)();

      v59 = 0;
      v6 = v62;
      v5 = v63;
      v43 = v66;
      v22 = v69;
    }

    (*v60)(v43, v6);
    v71(v15, v9);
    DirectorySequence.next()();
    v50 = v73(v19, 1, v9);
    v24 = v55;
  }

  while (v50 != 1);
LABEL_24:
  result = (*(v56 + 8))(v22, v57);
  *v58 = v24 & 1;
  return result;
}

void sub_100B2B870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v18 = objc_autoreleasePoolPush();
  v13 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v14 = *(v6 + 8);
  v14(v10, v5);
  objc_autoreleasePoolPop(v13);
  v15 = objc_autoreleasePoolPush();
  v16 = *(v2 + 16);
  v19 = v12;
  v20 = v3;
  v21 = a2;
  sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v15);
  v14(v12, v5);
  objc_autoreleasePoolPop(v18);
}

uint64_t sub_100B2BA38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v94 = a2;
  v102 = a1;
  v103 = a3;
  v4 = type metadata accessor for CryptoError();
  v99 = *(v4 - 8);
  v100 = v4;
  v5 = *(v99 + 64);
  v6 = __chkstk_darwin(v4);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v98 = &v82 - v9;
  __chkstk_darwin(v8);
  v97 = &v82 - v10;
  v90 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for OwnedBeaconRecord();
  v13 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v93 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v96 = *(v15 - 8);
  v16 = *(v96 + 64);
  __chkstk_darwin(v15);
  v101 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SystemInfo.DeviceLockState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v82 - v24;
  static SystemInfo.lockState.getter();
  (*(v19 + 104))(v23, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v18);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v19 + 8);
  v26(v23, v18);
  v26(v25, v18);
  if (aBlock == v110)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
    v28 = v103;
    *(v103 + 32) = 0;
    *v28 = 0u;
    v28[1] = 0u;
    return result;
  }

  v29 = Data.init(contentsOf:options:)();
  if (v3)
  {

    v31 = v103;
    *(v103 + 32) = 0;
    *v31 = 0u;
    v31[1] = 0u;
    return result;
  }

  v32 = v30;
  v33 = v29;
  v89 = 0;
  static os_log_type_t.info.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v85 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  v86 = xmmword_101385D80;
  *(v34 + 16) = xmmword_101385D80;
  v84 = sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  v87 = sub_100008C00();
  *(v34 + 64) = v87;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_log(_:dso:log:_:_:)();

  v38 = *(v102 + 24);
  v39 = *(v38 + 72);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100B3B27C;
  *(v40 + 24) = v38;
  v108 = sub_10040B9F8;
  v109 = v40;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_10013FE14;
  v107 = &unk_101648D70;
  v41 = _Block_copy(&aBlock);

  dispatch_sync(v39, v41);
  _Block_release(v41);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  v43 = *(v38 + 96);
  __chkstk_darwin(v42);
  *(&v82 - 4) = v38;
  *(&v82 - 3) = v33;
  v88 = v33;
  *(&v82 - 2) = v32;
  v44 = v89;
  OS_dispatch_queue.sync<A>(execute:)();
  v40 = v101;
  if (v44)
  {
    v101 = v32;
    v45 = v44;
    goto LABEL_21;
  }

  v89 = 0;
  v33 = aBlock;
  v83 = v105;
  (*(v96 + 16))(v101, v94, v15);
  if (qword_101694E78 != -1)
  {
    goto LABEL_32;
  }

LABEL_13:
  sub_1000076D4(v15, qword_10177C070);
  sub_100024980(&qword_1016A8918, &type metadata accessor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (*(v96 + 8))(v40, v15);
    v46 = objc_autoreleasePoolPush();
    v47 = v93;
    v48 = v33;
    v49 = v83;
    v50 = v89;
    sub_1012C2DF4(v102);
    v51 = v50;
    if (!v50)
    {
      objc_autoreleasePoolPop(v46);
      v52 = v103;
      *(v103 + 24) = v91;
      v52[4] = sub_100024980(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
      v53 = sub_1000280DC(v52);
      v54 = type metadata accessor for OwnedBeaconRecord;
LABEL_30:
      sub_100029420(v47, v53, v54);
      sub_100016590(v48, v49);
      return sub_100016590(v88, v32);
    }
  }

  else
  {
    if (qword_101695470 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v15, qword_10177CD50);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v96 + 8))(v40, v15);
    if ((v55 & 1) == 0)
    {
      static os_log_type_t.error.getter();
      v77 = swift_allocObject();
      *(v77 + 16) = v86;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v87;
      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v79;
      *(v77 + 32) = v78;
      *(v77 + 40) = v80;
      os_log(_:dso:log:_:_:)();
      sub_100016590(v33, v83);
      v73 = v88;
      v74 = v32;
      goto LABEL_25;
    }

    v46 = objc_autoreleasePoolPush();
    v47 = v92;
    v48 = v33;
    v49 = v83;
    v56 = v89;
    sub_1012C2C18(v102);
    v51 = v56;
    if (!v56)
    {
      objc_autoreleasePoolPop(v46);
      v81 = v103;
      *(v103 + 24) = v90;
      v81[4] = sub_100024980(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
      v53 = sub_1000280DC(v81);
      v54 = type metadata accessor for SharedBeaconRecord;
      goto LABEL_30;
    }
  }

  v101 = v32;
  objc_autoreleasePoolPop(v46);
  sub_100016590(v48, v49);
  v45 = v51;
LABEL_21:
  v89 = 0;
  aBlock = v45;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v57 = v97;
  v58 = v100;
  v59 = swift_dynamicCast();
  v61 = v98;
  v60 = v99;
  if (!v59)
  {

    static os_log_type_t.error.getter();
    v69 = swift_allocObject();
    *(v69 + 16) = v86;
    aBlock = v45;
    swift_errorRetain();
    v70 = String.init<A>(describing:)();
    v71 = v87;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v71;
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    os_log(_:dso:log:_:_:)();

    v73 = v88;
    v74 = v101;
LABEL_25:
    sub_100016590(v73, v74);

    v75 = v103;
    *(v103 + 32) = 0;
    *v75 = 0u;
    v75[1] = 0u;
    return result;
  }

  (*(v60 + 32))(v61, v57, v58);
  static os_log_type_t.error.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = v86;
  v63 = *(v60 + 16);
  v63(v95, v61, v58);
  v64 = String.init<A>(describing:)();
  v65 = v87;
  *(v62 + 56) = &type metadata for String;
  *(v62 + 64) = v65;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  os_log(_:dso:log:_:_:)();

  if (*(v102 + 32))
  {
    sub_100024980(&qword_10169C9B8, &type metadata accessor for CryptoError);
    v67 = swift_allocError();
    v63(v68, v61, v58);

    sub_101042538(v67);
    sub_100016590(v88, v101);

    (*(v60 + 8))(v61, v58);
  }

  else
  {
    sub_100016590(v88, v101);
    (*(v60 + 8))(v61, v58);
  }

  v76 = v103;
  *(v103 + 32) = 0;
  *v76 = 0u;
  v76[1] = 0u;
}

uint64_t sub_100B2C7A8()
{
  v1._object = 0x800000010135B5A0;
  v1._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v1);
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v2 = objc_autoreleasePoolPush();
  v3 = *(v0 + 16);
  type metadata accessor for Optional();
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100B2C8A0@<X0>(void *a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v105 = a5;
  v94 = a6;
  v98 = a3;
  v99 = a4;
  v100 = a1;
  v101 = a2;
  v104 = a7;
  v96 = type metadata accessor for CryptoError();
  v93 = *(v96 - 8);
  v7 = *(v93 + 64);
  v8 = __chkstk_darwin(v96);
  v92 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v97 = &v86 - v11;
  __chkstk_darwin(v10);
  v95 = &v86 - v12;
  v103 = type metadata accessor for URL();
  v13 = *(v103 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v103);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v86 - v18;
  v19 = type metadata accessor for SystemInfo.DeviceLockState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v86 - v25;
  static SystemInfo.lockState.getter();
  (*(v20 + 104))(v24, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v19);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v27 = *(v20 + 8);
  v27(v24, v19);
  v27(v26, v19);
  if (aBlock == v115)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return (*(*(v105 - 8) + 56))(v104, 1, 1);
  }

  v29 = objc_autoreleasePoolPush();
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  v30 = v102;
  URL.appendingPathExtension(_:)();
  v33 = *(v13 + 8);
  v31 = v13 + 8;
  v32 = v33;
  v34 = v103;
  v33(v17, v103);
  objc_autoreleasePoolPop(v29);
  v35 = v106;
  v36 = Data.init(contentsOf:options:)();
  if (v35)
  {

    v32(v30, v34);
    return (*(*(v105 - 8) + 56))(v104, 1, 1);
  }

  v91 = v36;
  v101 = v37;
  v90 = v31;
  static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v38 = qword_10177C380;
  v87 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v39 = swift_allocObject();
  v86 = xmmword_101385D80;
  *(v39 + 16) = xmmword_101385D80;
  sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  *(v39 + 56) = &type metadata for String;
  v88 = sub_100008C00();
  *(v39 + 64) = v88;
  *(v39 + 32) = v40;
  *(v39 + 40) = v42;
  v89 = v38;
  os_log(_:dso:log:_:_:)();

  v43 = v100;
  swift_beginAccess();
  v44 = v43[9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = v43[9];
  v46 = v115;
  v43[9] = 0x8000000000000000;
  v48 = sub_100771D58(v98, v99);
  v49 = v46[2];
  v50 = (v47 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v42) = v47;
  if (v46[3] >= v51)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_38;
    }

    v43[9] = v46;
    if ((v47 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_17:
    while (1)
    {
      v54 = v46[7];
      v55 = v54[v48];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        break;
      }

      v54[v48] = v57;
      swift_endAccess();
      v58 = v43[8];
      v56 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v56)
      {
        goto LABEL_36;
      }

      v43[8] = v59;
      if (__ROR8__(0x1CAC083126E978D5 * v59 + 0x10624DD2F1A9FB8, 3) <= 0x4189374BC6A7EEuLL)
      {
        v48 = sub_100B2D828(v43);
        v60 = v43;
        v62 = v61;
        v63 = v60[9];

        v65 = sub_1012BB02C(v64);
        v67 = v66;

        if ((v67 & 1) != 0 || v65 < 10001)
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          sub_1000076D4(v71, qword_10177BA08);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.info.getter();
        }

        else
        {
          if (qword_101694BE8 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          sub_1000076D4(v68, qword_10177BA08);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
        }

        v72 = v70;

        if (os_log_type_enabled(v69, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          aBlock = v74;
          *v73 = 136446210;
          v48 = sub_1000136BC(v48, v62, &aBlock);

          *(v73 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v69, v72, "readStatistics:\n%{public}s", v73, 0xCu);
          sub_100007BAC(v74);
        }

        else
        {
        }

        v43 = v100;
      }

      v43 = v43[3];
      v75 = v43[9];
      v76 = swift_allocObject();
      *(v76 + 16) = sub_10088FFBC;
      *(v76 + 24) = v43;
      v113 = sub_10040B9F8;
      v114 = v76;
      aBlock = _NSConcreteStackBlock;
      v110 = 1107296256;
      v111 = sub_10013FE14;
      v112 = &unk_101648D20;
      v42 = _Block_copy(&aBlock);

      dispatch_sync(v75, v42);
      _Block_release(v42);
      LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

      if ((v75 & 1) == 0)
      {
        v78 = v43[12];
        __chkstk_darwin(v77);
        v79 = v91;
        *(&v86 - 4) = v43;
        *(&v86 - 3) = v79;
        *(&v86 - 2) = v101;
        OS_dispatch_queue.sync<A>(execute:)();
        v80 = aBlock;
        v81 = v110;
        v82 = type metadata accessor for Optional();
        v83 = v94;
        v108 = *(v94 + 8);
        WitnessTable = swift_getWitnessTable();
        v107 = *(v83 + 16);
        v85 = swift_getWitnessTable();
        sub_100B2F330(v80, v81, v82, WitnessTable, v85);
        v32(v102, v103);
        sub_100016590(v80, v81);
        return sub_100016590(v91, v101);
      }

LABEL_37:
      __break(1u);
LABEL_38:
      sub_101006344();
      v46 = v115;
      v43[9] = v115;
      if ((v42 & 1) == 0)
      {
LABEL_16:
        sub_1000464E0(&v115);
        sub_1010036DC(v48, v98, v99, v115, v46);
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_100FE8BB4(v51, isUniquelyReferenced_nonNull_native);
  v46 = v115;
  v52 = sub_100771D58(v98, v99);
  if ((v42 & 1) == (v53 & 1))
  {
    v48 = v52;
    v43[9] = v46;
    if ((v42 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B2D828(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 72);

  v18 = sub_100B37820(v3);
  sub_100B29A1C(&v18);

  v4 = v18[2];
  if (v4)
  {
    v5 = v18 + 7;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v18 = *(v5 - 2);
      v19 = v7;
      swift_bridgeObjectRetain_n();
      v9._countAndFlagsBits = 8250;
      v9._object = 0xE200000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v18;
      v12 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100A5B2CC(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_100A5B2CC((v13 > 1), v14 + 1, 1, v6);
      }

      v5 += 4;
      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v18 = v6;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80);
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

uint64_t sub_100B2DA4C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for DirectorySequence();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = objc_autoreleasePoolPush();
  if (qword_101694460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177A500);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v17);
  v46 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v18 = [objc_opt_self() defaultManager];
  v41 = v16;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v19 = v8;
  DirectorySequence.next()();
  v43 = v10;
  v20 = *(v10 + 48);
  if (v20(v4, 1, v9) != 1)
  {
    v44 = *(v43 + 32);
    v21 = (v43 + 8);
    do
    {
      v44(v14, v4, v9);
      v22 = v20;
      v23 = objc_autoreleasePoolPush();
      sub_1005FEDCC(v14, v45, &v47, &v46);
      v24 = v23;
      v20 = v22;
      objc_autoreleasePoolPop(v24);
      (*v21)(v14, v9);
      DirectorySequence.next()();
    }

    while (v22(v4, 1, v9) != 1);
  }

  (*(v39 + 8))(v19, v40);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = v47;
  v28 = v47[2];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v28;
  sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);

  v29 = v41;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = sub_100008C00();
  *(v26 + 72) = v30;
  *(v26 + 80) = v32;
  os_log(_:dso:log:_:_:)();

  if (*(v27 + 16))
  {
    v33 = type metadata accessor for KeyAlignmentRecord();
    v34 = *(v33 - 8);
    v35 = v42;
    sub_100034F3C(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v42, type metadata accessor for KeyAlignmentRecord);

    (*(v43 + 8))(v29, v9);
    return (*(v34 + 56))(v35, 0, 1, v33);
  }

  else
  {

    (*(v43 + 8))(v29, v9);
    v37 = type metadata accessor for KeyAlignmentRecord();
    return (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  }
}

uint64_t sub_100B2DFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v43 = a2;
  v2 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016B5D00, &qword_1013D7408);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  if (qword_1016947A0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v16 = type metadata accessor for URL();
    v17 = sub_1000076D4(v16, qword_10177AEC8);
    v18 = sub_100AF4F94(v17);
    v19 = 0;
    v20 = 0;
    v21 = *(v18 + 8);
    v45 = v18 + 64;
    v22 = 1 << v18[32];
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v44 = (v22 + 63) >> 6;
    v46 = v6 + 32;
    v47 = v6 + 16;
    v51 = v6;
    v52 = v5;
    v53 = v18;
    v54 = (v6 + 8);
    v50 = v15;
    v48 = v13;
    if ((v23 & v21) != 0)
    {
      break;
    }

LABEL_6:
    if (v44 <= v19 + 1)
    {
      v26 = v19 + 1;
    }

    else
    {
      v26 = v44;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v25 >= v44)
      {
        v39 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
        (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
        v24 = 0;
        goto LABEL_15;
      }

      v24 = *&v45[8 * v25];
      ++v19;
      if (v24)
      {
        v56 = v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  while (1)
  {
    v56 = v20;
    v25 = v19;
LABEL_14:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v53;
    v31 = v51;
    (*(v51 + 16))(v49, *(v53 + 6) + *(v51 + 72) * v29, v57);
    v32 = *(*(v30 + 7) + 8 * v29);
    v33 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
    v34 = *(v33 + 48);
    v13 = v48;
    (*(v31 + 32))();
    *&v13[v34] = v32;
    (*(*(v33 - 8) + 56))(v13, 0, 1, v33);

    v27 = v25;
    v5 = v52;
    v15 = v50;
    v20 = v56;
LABEL_15:
    sub_1000D2AD8(v13, v15, &qword_1016B5D00, &qword_1013D7408);
    v35 = sub_1000BC4D4(&qword_1016B5D08, &unk_1013D7410);
    v36 = (*(*(v35 - 8) + 48))(v15, 1, v35);
    if (v36 == 1)
    {

      found = type metadata accessor for NotifyWhenFoundRecord();
      return (*(*(found - 8) + 56))(v43, 1, 1, found);
    }

    v37 = *&v15[*(v35 + 48)];
    __chkstk_darwin(v36);
    *(&v43 - 2) = v55;
    sub_1012BC72C(sub_100B3B198, v37, v5);

    v6 = type metadata accessor for NotifyWhenFoundRecord();
    v38 = *(v6 - 8);
    if ((*(v38 + 48))(v5, 1, v6) != 1)
    {
      break;
    }

    sub_10000B3A8(v5, &qword_10169E328, &unk_10139D740);
    (*v54)(v15, v57);
    v19 = v27;
    if (!v24)
    {
      goto LABEL_6;
    }
  }

  v42 = v43;
  sub_100029420(v5, v43, type metadata accessor for NotifyWhenFoundRecord);
  (*(v38 + 56))(v42, 0, 1, v6);
  return (*v54)(v15, v57);
}

uint64_t sub_100B2E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(a1);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v27 - v15;
  v17 = *(v3 + 16);
  v30 = v18;
  v31 = v19;
  v32 = v5;
  v33 = v14;
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v4)
  {
    v29 = a3;
    v34[6] = 0;
    v28 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v27[1] = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v27[0] = *(v9 + 16);
    (v27[0])(v13, a1, a2);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    v25 = *(v5 + 48);
    v34[3] = a2;
    v34[4] = v29;
    v26 = sub_1000280DC(v34);
    (v27[0])(v26, v16, a2);
    PassthroughSubject.send(_:)();
    (*(v9 + 8))(v16, a2);
    return sub_100007BAC(v34);
  }

  return result;
}

void sub_100B2E838(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a3;
  isa = a1;
  v79 = a5;
  v7 = type metadata accessor for URLResourceValues();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = type metadata accessor for UUID();
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for URL();
  v90 = *(v85 - 8);
  v12 = *(v90 + 64);
  v13 = __chkstk_darwin(v85);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v88 = &v75 - v16;
  __chkstk_darwin(v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for SystemInfo.DeviceLockState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v75 - v25;
  static SystemInfo.lockState.getter();
  (*(v20 + 104))(v24, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v19);
  sub_100024980(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v27 = *(v20 + 8);
  v27(v24, v19);
  v27(v26, v19);
  if (v94 == v93)
  {
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  else
  {
    v29 = a4[1];
    v30 = a4[2];
    v31 = v91;
    v32 = v92;
    sub_100B3AD54();
    if (!v31)
    {
      v35 = *(isa + 3);
      v36 = v33;
      v37 = v34;
      v38 = sub_1010B6FB0(v33, v34, 0);
      v77 = v36;
      v78 = v37;
      v39 = v38;
      v41 = v40;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100016590(v39, v41);
      sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
      v76 = a4[5];
      v76(v32, a4);
      static NSFileManager.createDirectoryIfNecessary(url:attributes:)();
      v42 = a4;
      v43 = v90 + 8;
      v91 = *(v90 + 8);
      v44 = v32;
      v45 = a2;
      v46 = v85;
      v91(v18, v85);
      v47 = v81;
      (v42[4])(v44, v42);
      v75 = v45;
      v76(v44, v42);
      v48 = v43;
      v49 = objc_autoreleasePoolPush();
      UUID.uuidString.getter();
      v50 = v80;
      URL.appendingPathComponent(_:)();

      URL.appendingPathExtension(_:)();
      v51 = v91;
      v91(v50, v46);
      objc_autoreleasePoolPop(v49);
      v52 = v18;
      v53 = v46;
      v90 = v48;
      v51(v52, v46);
      (*(v82 + 8))(v47, v83);
      v54 = v84;
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v55 = objc_autoreleasePoolPush();
      URL._bridgeToObjectiveC()(v56);
      v58 = v57;
      [(objc_class *)isa writeToURL:v57 atomically:1];

      objc_autoreleasePoolPop(v55);
      static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v59 = swift_allocObject();
      v83 = xmmword_101385D80;
      *(v59 + 16) = xmmword_101385D80;
      sub_100024980(&qword_1016B14E0, &type metadata accessor for URL);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100008C00();
      *(v59 + 32) = v60;
      *(v59 + 40) = v62;
      v63 = v88;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&qword_1016ABE90, &qword_1013D7400);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      *(inited + 32) = NSFileProtectionKey;
      *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v65 = NSFileProtectionKey;
      v66 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v67 = sub_100908390(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &unk_1016B14F0, &qword_1013BFD10);
      v68 = [objc_opt_self() defaultManager];
      sub_100695108(v67);

      type metadata accessor for FileAttributeKey(0);
      sub_100024980(&qword_1016964F0, type metadata accessor for FileAttributeKey);
      v69 = Dictionary._bridgeToObjectiveC()().super.isa;

      URL.path.getter();
      v70 = String._bridgeToObjectiveC()();

      v94 = 0;
      LODWORD(v62) = [v68 setAttributes:v69 ofItemAtPath:v70 error:&v94];

      if (v62)
      {
        v71 = v94;
        URL.setResourceValues(_:)();
        v72 = v78;
        v73 = v77;
        (*(v86 + 8))(v54, v87);

        sub_100016590(v73, v72);
        (*(*(v92 - 8) + 16))(v79, v75);
      }

      else
      {
        v74 = v94;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v77, v78);
        (*(v86 + 8))(v54, v87);
      }

      v91(v63, v53);
    }
  }
}