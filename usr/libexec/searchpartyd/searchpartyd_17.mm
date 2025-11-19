uint64_t sub_1001D35A4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v138 = type metadata accessor for StandaloneBeacon();
  v8 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v139 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MACAddress();
  v137 = *(v10 - 8);
  v11 = *(v137 + 64);
  v12 = __chkstk_darwin(v10);
  v136 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v120 - v13;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = (&v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for OwnedBeaconRecord();
  v19 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v140 = (&v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for String.Encoding();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = *(v4 + 56);
  if (v23)
  {
    v134 = v18;
    v24 = *(v4 + 64);
    v25 = (*(v24 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v26 = v25[1];
    if (v26 >> 60 == 15)
    {
      v27 = v23;
LABEL_13:
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177C448);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Invalid serial number.", v39, 2u);
      }

      sub_1001D9F10();
      v40 = swift_allocError();
      *v41 = 1;

      *a3 = v40;
      sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
      return swift_storeEnumTagMultiPayload();
    }

    v131 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v132 = a2;
    v133 = v24;
    v129 = a1;
    v141[0] = *v25;
    v35 = v141[0];
    v141[1] = v26;
    v130 = v23;
    sub_10002E98C(v35, v26);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v35, v26);
      goto LABEL_13;
    }

    v126 = v35;
    v127 = v26;
    v42 = Data.trimmed.getter();
    v44 = v43;
    sub_100017D5C(v42, v43);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_1000076D4(v123, qword_10177C418);
    sub_100017D5C(v42, v44);
    v45 = Logger.logObject.getter();
    v46 = v44;
    v47 = static os_log_type_t.default.getter();
    sub_100016590(v42, v46);
    v122 = v47;
    v48 = os_log_type_enabled(v45, v47);
    v128 = a3;
    v125 = v46;
    if (v48)
    {
      v120 = v45;
      v49 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v141[0] = v121;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v50 = String.init(data:encoding:)();
      if (v51)
      {
        v52 = v51;
        v53 = v50;
      }

      else
      {
        v53 = Data.hexString.getter();
        v52 = v55;
      }

      sub_100016590(v42, v46);
      v56 = v120;
      v57 = sub_1000136BC(v53, v52, v141);

      *(v49 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v56, v122, "Creating beacon for %{private,mask.hash}s", v49, 0x16u);
      sub_100007BAC(v121);

      v54 = v125;
    }

    else
    {
      sub_100016590(v42, v46);

      v54 = v46;
    }

    v58 = *(v4 + 200);
    v124 = v42;
    if (v58)
    {
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v59 = sub_1000076D4(v123, qword_10177C448);
      v60 = v137;
      v140 = *(v137 + 16);
      v140(v14, v132, v10);
      v135 = v59;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v141[0] = v134;
        *v63 = 136446210;
        sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress);
        LODWORD(v133) = v62;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        (*(v60 + 8))(v14, v10);
        v67 = sub_1000136BC(v64, v66, v141);

        *(v63 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v61, v133, "Creating standalone beacon. classicMACAddress %{public}s", v63, 0xCu);
        sub_100007BAC(v134);
      }

      else
      {

        (*(v60 + 8))(v14, v10);
      }

      v78 = v60;
      v79 = type metadata accessor for __DataStorage();
      v80 = *(v79 + 48);
      v81 = *(v79 + 52);
      swift_allocObject();
      v82 = __DataStorage.init(length:)() | 0x4000000000000000;
      v83 = v136;
      v140(v136, v132, v10);
      v84 = (*(v60 + 80) + 112) & ~*(v60 + 80);
      v85 = (v11 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      *(v86 + 16) = v4;
      v87 = v129;
      v88 = *v129;
      *(v86 + 40) = v129[1];
      v89 = v87[3];
      *(v86 + 56) = v87[2];
      *(v86 + 72) = v89;
      *(v86 + 88) = v87[4];
      *(v86 + 24) = v88;
      v90 = v78;
      v91 = v130;
      *(v86 + 104) = v130;
      (*(v90 + 32))(v86 + v84, v83, v10);
      v92 = (v86 + v85);
      *v92 = 0x6000000000;
      v92[1] = v82;
      v93 = v91;

      sub_100102538(v87, v141);

      v94 = v139;
      unsafeFromAsyncTask<A>(_:)();
      sub_100006654(v126, v127);
      sub_100016590(v124, v125);

      sub_1001DA9D8(v94, v128, type metadata accessor for StandaloneBeacon);
      type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult();
      swift_storeEnumTagMultiPayload();
      sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
      return swift_storeEnumTagMultiPayload();
    }

    v68 = *(*(v133 + v131) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v69 = qword_1016950E0;

    if (v69 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v123, qword_10177C448);
    swift_bridgeObjectRetain_n();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v141[0] = v73;
      *v72 = 136315394;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v74 = Dictionary.description.getter();
      v76 = sub_1000136BC(v74, v75, v141);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2048;
      v77 = *(v68 + 16);

      *(v72 + 14) = v77;

      _os_log_impl(&_mh_execute_header, v70, v71, "allSerialNumbersAndPartIds: %s. Count %ld", v72, 0x16u);
      sub_100007BAC(v73);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v95 = *(v4 + 24);
    v96 = *(v133 + v131);
    v97 = v130;
    v98 = *&v130[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8];
    if (v98)
    {
      v99 = *&v130[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];
      v100 = *(v133 + v131);

      v101 = v98;
      v102 = v126;
    }

    else
    {
      v103 = *&v130[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
      v104 = *(v133 + v131);

      v105 = [v103 name];
      v102 = v126;
      if (!v105)
      {
        v99 = 0;
        v101 = 0xE000000000000000;
        goto LABEL_43;
      }

      v106 = v105;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v107;
    }

LABEL_43:
    v108 = v140;
    sub_100B8BFA0(v140, v134, v129, v96, v99, v101, v132, v68);

    v109 = *(v133 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_locationMonitor);
    v110 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v111 = *(v109 + v110);
    if (v111)
    {
      v112 = v140 + *(v135 + 20);
      v113 = type metadata accessor for Transaction();
      __chkstk_darwin(v113);
      LOBYTE((&v120)[-4]) = 0;
      *(&v120 - 3) = v111;
      *(&v120 - 2) = v112;
      v108 = v140;
      *(&v120 - 1) = v95;
      v114 = v111;
      static Transaction.named<A>(_:with:)();

      sub_100016590(v124, v54);
      sub_100006654(v102, v127);
    }

    else
    {
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "Unable to retrieve current location from CL for pairing", v117, 2u);
      }

      sub_100006654(v102, v127);
      sub_100016590(v124, v54);
    }

    v118 = v128;
    v119 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_1001DA9D8(v134, v118, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(v108, v118 + v119, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult();
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C448);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Missing peripheral to create beacon!", v31, 2u);
  }

  sub_1001D9F10();
  v32 = swift_allocError();
  *v33 = 1;
  *a3 = v32;
  sub_1000BC4D4(&qword_1016993A0, &qword_101391908);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001D47B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for MACAddress();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001D4880, 0, 0);
}

uint64_t sub_1001D4880()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v3 + 24);
  v5 = *(*(v3 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v0[12] = v5;

  sub_100A22DF0(v1);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1001D496C;
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[2];

  return sub_100B90BDC(v12, v11, v5, v7, v10, v8, v9);
}

uint64_t sub_1001D496C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return _swift_task_switch(sub_1001D4B44, 0, 0);
  }

  else
  {
    v9 = *(v2 + 88);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1001D4B44()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void sub_1001D4BA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v106 = &v99 - v8;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v110 = &v99 - v11;
  v12 = type metadata accessor for UUID();
  v111 = *(v12 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v107 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v117 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v99 - v20;
  v22 = __chkstk_darwin(v19);
  v105 = &v99 - v23;
  __chkstk_darwin(v22);
  v109 = &v99 - v24;
  v25 = type metadata accessor for String.Encoding();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v114 = v16;
  v104 = v21;
  v27 = type metadata accessor for Logger();
  v28 = sub_1000076D4(v27, qword_10177C448);
  sub_100017D5C(a1, a2);
  v113 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v31 = os_log_type_enabled(v29, v30);
  v115 = v15;
  v116 = v12;
  v118 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v120[0] = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v34 = String.init(data:encoding:)();
    v35 = a1;
    v37 = v36;
    v38 = v35;
    if (!v36)
    {
      v34 = Data.hexString.getter();
      v37 = v39;
    }

    v40 = sub_1000136BC(v34, v37, v120);

    *(v32 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v29, v30, "Clean up pending pairing for %{private,mask.hash}s", v32, 0x16u);
    sub_100007BAC(v33);

    v15 = v115;
    a1 = v38;
    a3 = v118;
  }

  else
  {
  }

  v41 = swift_allocBox();
  sub_1001DA7B4(a3, v42, type metadata accessor for OwnedBeaconGroup);
  if (sub_100519780(a1, a2))
  {
    v102 = a1;
    v103 = a2;
    v43 = dispatch_group_create();
    dispatch_group_enter(v43);
    isa = v108[3].isa;
    v101 = swift_allocObject();
    *(v101 + 16) = v43;

    v108 = v43;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_101385D80;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_100008C00();
    *(v45 + 32) = 0x65736C6166;
    *(v45 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v46 = objc_autoreleasePoolPush();
    sub_1011218E0(a3);
    v48 = v47;
    v100 = v47;
    objc_autoreleasePoolPop(v46);
    v49 = *(isa + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v117 = isa;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v99 = type metadata accessor for OwnedBeaconGroup;
    v50 = v109;
    sub_1001DA7B4(a3, v109, type metadata accessor for OwnedBeaconGroup);
    v51 = *(v114 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1001DA00C;
    *(v52 + 24) = v41;
    v53 = a3;
    v112 = v41;
    sub_1001DA9D8(v50, v52 + ((v51 + 32) & ~v51), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v48, sub_1001DA038, v52);

    v54 = swift_allocObject();
    v55 = v101;
    *(v54 + 16) = sub_1001DA014;
    *(v54 + 24) = v55;

    Future.addFailure(block:)();

    sub_1001DA7B4(v53, v50, v99);
    v56 = (v51 + 16) & ~v51;
    v57 = (v17 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    sub_1001DA9D8(v50, v58 + v56, type metadata accessor for OwnedBeaconGroup);
    *(v58 + v57) = v117;
    v59 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v59 = sub_1001DA014;
    v59[1] = v55;

    Future.addSuccess(block:)();

    v60 = v108;
    OS_dispatch_group.wait()();
    v61 = v110;
    sub_100519BCC(v102, v103, v110);
    v62 = v111;
    v63 = v116;
    if ((*(v111 + 48))(v61, 1, v116) == 1)
    {

      v64 = &qword_1016980D0;
      v65 = &unk_10138F3B0;
    }

    else
    {
      v80 = v107;
      (*(v62 + 32))(v107, v61, v63);
      v61 = v106;
      sub_100AC53EC(v80, v106);
      v81 = v115;
      if ((*(v114 + 48))(v61, 1, v115) != 1)
      {
        v82 = v105;
        sub_1001DA9D8(v61, v105, type metadata accessor for OwnedBeaconGroup);
        v83 = sub_100B93B5C(v82);
        if (v83)
        {
          v84 = v83;
          v85 = v104;
          sub_1001DA7B4(v82, v104, type metadata accessor for OwnedBeaconGroup);
          swift_errorRetain();
          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = v62;
            v89 = swift_slowAlloc();
            v120[0] = swift_slowAlloc();
            *v89 = 141558531;
            *(v89 + 4) = 1752392040;
            *(v89 + 12) = 2081;
            LODWORD(v118) = v87;
            v90 = *(v81 + 24);
            sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            sub_1001DAA40(v85, type metadata accessor for OwnedBeaconGroup);
            v94 = sub_1000136BC(v91, v93, v120);

            *(v89 + 14) = v94;
            *(v89 + 22) = 2082;
            v119 = v84;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v95 = String.init<A>(describing:)();
            v97 = sub_1000136BC(v95, v96, v120);

            *(v89 + 24) = v97;
            _os_log_impl(&_mh_execute_header, v86, v118, "Failed to delete pending record %{private,mask.hash}s\ndue to %{public}s", v89, 0x20u);
            swift_arrayDestroy();

            sub_1001DAA40(v105, type metadata accessor for OwnedBeaconGroup);
            (*(v88 + 8))(v80, v116);
            goto LABEL_28;
          }

          sub_1001DAA40(v85, type metadata accessor for OwnedBeaconGroup);
          v98 = v82;
        }

        else
        {

          v98 = v82;
        }

        sub_1001DAA40(v98, type metadata accessor for OwnedBeaconGroup);
        (*(v62 + 8))(v80, v63);
        goto LABEL_28;
      }

      (*(v62 + 8))(v80, v63);

      v64 = &unk_1016AF8B0;
      v65 = &unk_1013A0700;
    }

    sub_10000B3A8(v61, v64, v65);
LABEL_28:

    return;
  }

  v66 = a3;
  v67 = v117;
  sub_1001DA7B4(v66, v117, type metadata accessor for OwnedBeaconGroup);
  sub_100017D5C(a1, a2);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  sub_100016590(a1, a2);
  if (!os_log_type_enabled(v68, v69))
  {

    sub_1001DAA40(v67, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_28;
  }

  v70 = swift_slowAlloc();
  v120[0] = swift_slowAlloc();
  *v70 = 141558787;
  *(v70 + 4) = 1752392040;
  *(v70 + 12) = 2081;
  static String.Encoding.utf8.getter();
  v71 = String.init(data:encoding:)();
  if (!v72)
  {
    v71 = Data.hexString.getter();
  }

  v73 = sub_1000136BC(v71, v72, v120);

  *(v70 + 14) = v73;
  *(v70 + 22) = 2160;
  *(v70 + 24) = 1752392040;
  *(v70 + 32) = 2081;
  v74 = *(v15 + 24);
  sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
  v75 = v117;
  v76 = dispatch thunk of CustomStringConvertible.description.getter();
  v78 = v77;
  sub_1001DAA40(v75, type metadata accessor for OwnedBeaconGroup);
  v79 = sub_1000136BC(v76, v78, v120);

  *(v70 + 34) = v79;
  _os_log_impl(&_mh_execute_header, v68, v69, "Unable to unpair %{private,mask.hash}s from %{private,mask.hash}s!", v70, 0x2Au);
  swift_arrayDestroy();
}

uint64_t sub_1001D59AC(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = swift_projectBox();
  swift_beginAccess();
  v4 = *(v2 + 40);
  v5 = *(v3 + v4);
  v6 = *(a1 + v4);

  *(a1 + v4) = v5;
  return result;
}

void sub_1001D5A28(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_1000D2A70(a1, &v35 - v13, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C448);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v15;
      v36 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v36);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to modify existing group. Error %{public}s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {
    }
  }

  else
  {
    sub_1001DA9D8(v14, v10, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_1000076D4(v24, qword_10177C448);
    sub_1001DA7B4(v10, v8, type metadata accessor for OwnedBeaconGroup);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v30 = *(v4 + 24);
      type metadata accessor for UUID();
      sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_1001DAA40(v8, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully modified existing group %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_1001DAA40(v8, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v25);
    sub_1001DAA40(v10, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1001D5EEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1016950E0 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);
  sub_100017D5C(a1, a2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a1;
    v24[4] = a2;
    v25 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v18;
    v22 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v14, v15, "didNotify data length %ld", v22, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v18) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v18 = v18;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D61CC(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v99 = a2;
  v100 = a5;
  v98 = a1;
  v6 = type metadata accessor for BinaryDecodingError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecoder();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  __chkstk_darwin(v10);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bit();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v94 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v86 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    *&v120 = 0;
    v118 = 0u;
    v119 = 0u;
    BYTE8(v120) = 11;
    LOBYTE(v121) = 1;
    v98(&v118);
    return sub_10000B3A8(&v118, &qword_101699380, &unk_1013918F0);
  }

  v21 = Strong;
  v90 = v19;
  v86 = v14;
  v87 = v13;
  v95 = v7;
  v22 = *(Strong + 160);
  v23 = *(v21 + 168);
  if (v23 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = 0xC000000000000000;
  if (v23 >> 60 != 15)
  {
    v25 = *(v21 + 168);
  }

  v132 = v24;
  v133 = v25;
  sub_10002E98C(v22, v23);
  v26 = v100;
  sub_100017D5C(a4, v100);
  v96 = a4;
  sub_100ED428C(1, a4, v26, &v118);
  v27 = v118;
  Data.append(_:)();
  sub_100016590(v27, *(&v27 + 1));
  v28 = v132;
  v29 = v133;
  v30 = *(v21 + 160);
  v31 = *(v21 + 168);
  *(v21 + 160) = v132;
  *(v21 + 168) = v29;
  sub_100017D5C(v28, v29);
  sub_100006654(v30, v31);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_1000076D4(v32, qword_10177C448);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *&v118 = swift_slowAlloc();
    v88 = v33;
    v37 = v118;
    *v36 = 136315138;
    swift_beginAccess();
    v89 = v6;
    v38 = v132;
    v39 = v133;
    sub_100017D5C(v132, v133);
    v40 = v21;
    v41 = Data.description.getter();
    v43 = v42;
    sub_100016590(v38, v39);
    v44 = v41;
    v21 = v40;
    v45 = sub_1000136BC(v44, v43, &v118);

    *(v36 + 4) = v45;
    v6 = v89;
    _os_log_impl(&_mh_execute_header, v34, v35, "localReadBuffer %s", v36, 0xCu);
    sub_100007BAC(v37);
    v33 = v88;
  }

  v46 = v96;
  v47 = sub_100017C08(v96, v100);
  v48 = v95;
  if ((v47 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v118) = v47;
  sub_1000198E8();
  v49 = FixedWidthInteger.bits()();
  if (!*(v49 + 16))
  {

LABEL_17:
    sub_1001D9F10();
    v58 = swift_allocError();
    *v59 = 2;
    swift_willThrow();
    sub_100016590(v132, v133);
    v60 = v97;
    goto LABEL_19;
  }

  v88 = v33;
  v89 = v6;
  v51 = v86;
  v50 = v87;
  (*(v86 + 16))(v90, v49 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v87);

  v52 = v94;
  (*(v51 + 104))(v94, enum case for Bit.one(_:), v50);
  sub_1001DAC6C(&qword_101698660, &type metadata accessor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v53 = *(v51 + 8);
  v53(v52, v50);
  if (v118 == v104)
  {
    v94 = v53;
    v54 = v91;
    BinaryDecoder.init()();
    swift_beginAccess();
    v55 = v132;
    v56 = v133;
    sub_100017D5C(v132, v133);
    v57 = sub_1001D9F64();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v55, v56);
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v117 = v131;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v113 = v127;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v104 = v118;
    v105 = v119;
    v76 = *(v21 + 160);
    v77 = *(v21 + 168);
    *(v21 + 160) = xmmword_10138BBF0;
    sub_100006654(v76, v77);
    v102[3] = &type metadata for AirPodsLEPairingCommand;
    v102[4] = v57;
    v102[5] = sub_1001D9E94();
    v78 = swift_allocObject();
    v102[0] = v78;
    v79 = v115;
    *(v78 + 176) = v114;
    *(v78 + 192) = v79;
    *(v78 + 208) = v116;
    *(v78 + 224) = v117;
    v80 = v111;
    *(v78 + 112) = v110;
    *(v78 + 128) = v80;
    v81 = v113;
    *(v78 + 144) = v112;
    *(v78 + 160) = v81;
    v82 = v107;
    *(v78 + 48) = v106;
    *(v78 + 64) = v82;
    v83 = v109;
    *(v78 + 80) = v108;
    *(v78 + 96) = v83;
    v84 = v105;
    *(v78 + 16) = v104;
    *(v78 + 32) = v84;
    v103 = 0;
    sub_1001D9B48(&v104, &v101);
    v98(v102);

    sub_1001D9FB8(&v104);
    (*(v92 + 8))(v54, v93);
    (v94)(v90, v87);
    sub_10000B3A8(v102, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v132, v133);
  }

  sub_1001DAC6C(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
  v61 = v89;
  v58 = swift_allocError();
  (*(v48 + 104))(v62, enum case for BinaryDecodingError.insufficientData(_:), v61);
  swift_willThrow();
  v53(v90, v50);
  v6 = v61;
  sub_100016590(v132, v133);
  v60 = v97;
LABEL_19:
  *&v118 = v58;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_25:

    v66 = v100;
    sub_100017D5C(v46, v100);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    sub_100016590(v46, v66);
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v118 = v70;
      *v69 = 136446210;
      v71 = Data.description.getter();
      v73 = sub_1000136BC(v71, v72, &v118);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Failed to decode data %{public}s", v69, 0xCu);
      sub_100007BAC(v70);
    }

    v74 = *(v21 + 160);
    v75 = *(v21 + 168);
    *(v21 + 160) = xmmword_10138BBF0;
    sub_100006654(v74, v75);
    *&v118 = v58;
    BYTE8(v120) = 10;
    LOBYTE(v121) = 1;
    swift_errorRetain();
    v98(&v118);

    return sub_10000B3A8(&v118, &qword_101699380, &unk_1013918F0);
  }

  if ((*(v48 + 88))(v60, v6) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v48 + 8))(v60, v6);
    goto LABEL_25;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "insufficientData. Keep reading...", v65, 2u);
  }
}

uint64_t sub_1001D6CAC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v15 = *(a1 + 176);
    *(v14 + 184) = *(a1 + 160);
    *(v14 + 200) = v15;
    *(v14 + 216) = *(a1 + 192);
    v16 = *(a1 + 112);
    *(v14 + 120) = *(a1 + 96);
    *(v14 + 136) = v16;
    v17 = *(a1 + 144);
    *(v14 + 152) = *(a1 + 128);
    *(v14 + 168) = v17;
    v18 = *(a1 + 48);
    *(v14 + 56) = *(a1 + 32);
    *(v14 + 72) = v18;
    v19 = *(a1 + 80);
    *(v14 + 88) = *(a1 + 64);
    *(v14 + 104) = v19;
    v20 = *(a1 + 16);
    *(v14 + 24) = *a1;
    *(v14 + 16) = v13;
    v21 = *(a1 + 208);
    *(v14 + 40) = v20;
    *(v14 + 232) = v21;
    *(v14 + 240) = a2;
    v22 = sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1001D9B48(a1, v26);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D6EB4(void (*a1)(__int128 *), void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a5;
  v8 = type metadata accessor for BinaryEncoder();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    *&v64 = 0;
    v62 = 0u;
    v63 = 0u;
    BYTE8(v64) = 11;
    v76 = 1;
    a1(&v62);
    return sub_10000B3A8(&v62, &qword_101699350, &qword_1013918C8);
  }

  v14 = Strong;
  v15 = Strong[7];
  if (!v15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177C448);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Missing peripheral to write!", v29, 2u);
    }

    *&v64 = 0;
    v62 = 0u;
    v63 = 0u;
    BYTE8(v64) = 11;
    v76 = 1;
    a1(&v62);

    return sub_10000B3A8(&v62, &qword_101699350, &qword_1013918C8);
  }

  v16 = Strong[18];
  v17 = Strong[19];
  v60 = a1;
  Strong[18] = a1;
  Strong[19] = a2;
  v18 = v15;
  v59 = a2;

  sub_1000BB27C(v16);
  BinaryEncoder.init()();
  v19 = *(a4 + 176);
  v72 = *(a4 + 160);
  v73 = v19;
  v74 = *(a4 + 192);
  v75 = *(a4 + 208);
  v20 = *(a4 + 112);
  v68 = *(a4 + 96);
  v69 = v20;
  v21 = *(a4 + 144);
  v70 = *(a4 + 128);
  v71 = v21;
  v22 = *(a4 + 48);
  v64 = *(a4 + 32);
  v65 = v22;
  v23 = *(a4 + 80);
  v66 = *(a4 + 64);
  v67 = v23;
  v24 = *(a4 + 16);
  v62 = *a4;
  v63 = v24;
  sub_1001D9E94();
  v25 = 0;
  v31 = BinaryEncoder.encode<A>(_:)();
  v60 = v32;
  v33 = *&v18[OBJC_IVAR____TtC12searchpartyd10Peripheral_lock];
  __chkstk_darwin(v31);
  v59 = v18;
  *&v53[-16] = v18;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v34 = v62;
  if (__OFSUB__(v62, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = Data.chunked(into:)();
  if (qword_1016950E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v57 = v12;
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177C448);
  swift_retain_n();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v56 = v31;
    v39 = v38;
    v55 = swift_slowAlloc();
    *&v62 = v55;
    *v39 = 136315906;
    v40 = Array.description.getter();
    v54 = v37;
    v42 = sub_1000136BC(v40, v41, &v62);
    v58 = v8;
    v43 = v42;

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v34;
    *(v39 + 22) = 2048;
    swift_beginAccess();
    v44 = *(v14[22] + 16);

    *(v39 + 24) = v44;

    *(v39 + 32) = 2080;
    v45 = v14[22];

    v46 = Array.description.getter();
    v47 = v9;
    v49 = v48;

    v50 = v46;
    v8 = v58;
    v51 = sub_1000136BC(v50, v49, &v62);
    v9 = v47;

    *(v39 + 34) = v51;
    _os_log_impl(&_mh_execute_header, v36, v54, "Enqueuing %s. MTU %ld. Current queue [%ld] %s", v39, 0x2Au);
    swift_arrayDestroy();

    v31 = v56;
  }

  else
  {
  }

  v52 = sub_1001D97CC(v25);

  swift_beginAccess();
  sub_100398324(v52);
  swift_endAccess();
  sub_1001D767C(v61, a4);
  sub_100016590(v31, v60);

  return (*(v9 + 8))(v57, v8);
}

uint64_t sub_1001D767C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v83 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3[2];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C448);
    sub_100017D5C(v19, v6);

    v85 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    sub_100016590(v19, v6);

    v26 = os_log_type_enabled(v24, v25);
    v91 = v6;
    v92 = v19;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *&v97[0] = swift_slowAlloc();
      *v27 = 136315394;
      sub_100017D5C(v92, v6);
      v28 = Data.description.getter();
      v30 = v29;
      sub_100016590(v92, v91);
      v31 = sub_1000136BC(v28, v30, v97);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      v33 = sub_100A5AADC(v32);
      v35 = sub_1000136BC(v33, v34, v97);

      *(v27 + 14) = v35;
      v6 = v91;
      _os_log_impl(&_mh_execute_header, v24, v25, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v27, 0x16u);
      swift_arrayDestroy();

      v19 = v92;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = 0u;
    v37 = v36 + 16;
    *(v36 + 32) = 0u;
    *(v36 + 48) = 0;
    *(v36 + 56) = 267;
    v38 = dispatch_group_create();
    dispatch_group_enter(v38);
    *&v97[0] = sub_100A59B98(v19, v6);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v38;
    v87 = v36;

    v40 = v38;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    v41 = v89;
    + infix(_:_:)();
    v42 = *(v90 + 8);
    v43 = v86;
    v42(v10, v86);
    OS_dispatch_group.wait(timeout:)();
    v42(v41, v43);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Timed out waiting for writeFuture", v46, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v37, &v93, &qword_1016B1CA0, &qword_1013918C0);
    if ((v95 & 1) == 0)
    {

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v91;
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v97[0] = v75;
        *v74 = 134218242;
        *(v74 + 4) = *(v3[22] + 16);

        *(v74 + 12) = 2080;
        v76 = v3[22];

        v77 = Array.description.getter();
        v78 = v40;
        v80 = v79;

        v81 = sub_1000136BC(v77, v80, v97);
        v40 = v78;

        *(v74 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v70, v71, "writeFuture success. writeQueue [%ld] %s", v74, 0x16u);
        sub_100007BAC(v75);

        v73 = v91;
      }

      else
      {
      }

      v82 = v92;
      sub_1001D767C(v88, v84);

      sub_100016590(v82, v73);
    }

    v47 = v40;
    v111 = v93;
    v112[0] = *v94;
    *(v112 + 9) = *&v94[9];
    sub_100101AA8(&v111, v97);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v91;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v96 = v53;
      *v52 = 136446210;
      v54 = sub_1013181BC();
      v56 = v55;
      sub_100101B04(v97);
      v57 = sub_1000136BC(v54, v56, &v96);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "writeFuture error: %{public}s", v52, 0xCu);
      sub_100007BAC(v53);

      v58 = v3[18];
      if (v58)
      {
LABEL_13:
        v59 = v3[19];
        sub_100101B58();
        v60 = swift_allocError();
        sub_100101AA8(&v111, v61);
        *&v97[0] = v60;
        BYTE8(v98) = 0;
        v110 = 1;

        v58(v97);
        sub_1000BB27C(v58);

        sub_100016590(v92, v51);
        sub_10000B3A8(v97, &qword_101699350, &qword_1013918C8);
LABEL_20:
        sub_100101B04(&v111);
      }
    }

    else
    {

      sub_100101B04(v97);
      v58 = v3[18];
      if (v58)
      {
        goto LABEL_13;
      }
    }

    sub_100016590(v92, v51);

    goto LABEL_20;
  }

  result = swift_beginAccess();
  v21 = v3[22];
  if (v21[2])
  {
    v86 = v6;
    v88 = a1;
    v84 = a2;
    swift_beginAccess();
    v19 = v21[4];
    v6 = v21[5];
    sub_100017D5C(v19, v6);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_1016950E0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v62 = v3[18];
  if (v62)
  {
    v63 = v3[19];
    v64 = *(a2 + 176);
    v106 = *(a2 + 160);
    v107 = v64;
    v108 = *(a2 + 192);
    v109 = *(a2 + 208);
    v65 = *(a2 + 112);
    v102 = *(a2 + 96);
    v103 = v65;
    v66 = *(a2 + 144);
    v104 = *(a2 + 128);
    v105 = v66;
    v67 = *(a2 + 48);
    v98 = *(a2 + 32);
    v99 = v67;
    v68 = *(a2 + 80);
    v100 = *(a2 + 64);
    v101 = v68;
    v69 = *(a2 + 16);
    v97[0] = *a2;
    v97[1] = v69;
    v110 = 0;
    sub_100012908(v62);
    sub_1001D9B48(a2, &v93);
    v62(v97);
    sub_1000BB27C(v62);
    return sub_10000B3A8(v97, &qword_101699350, &qword_1013918C8);
  }

  return result;
}

void sub_1001D8024(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  sub_1001DA61C(a1, a2 + 16, &qword_1016B1CA0, &qword_1013918C0);
  dispatch_group_leave(a3);
}

void sub_1001D8094()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[2];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1016950E0 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C448);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "pairingCompleteAnalyticsEvent", v12, 2u);
  }

  v13 = v1[24];
  if (v13)
  {
    v14 = *(v1[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    type metadata accessor for Transaction();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    swift_retain_n();
    swift_retain_n();
    static Transaction.asyncTask(name:block:)();

    v16 = v1[24];
    v1[24] = 0;
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No analytics event!", v19, 2u);
    }
  }
}

uint64_t sub_1001D8370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1001D8390, 0, 0);
}

uint64_t sub_1001D8390()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1001D83FC, v2, 0);
}

uint64_t sub_1001D83FC()
{
  sub_10116CE40(v0[2], v0[3]);
  v1 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[4] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1001D84D8;
  v3 = v0[2];

  return sub_101163F78(v3);
}

uint64_t sub_1001D84D8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1001D85E8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x626D754E74726170;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = UInt8._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "numberOfParts");
  *(inited + 110) = -4864;
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  *(inited + 128) = 0x6961506563726F66;
  *(inited + 136) = 0xE900000000000072;
  v5 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair);
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  v6 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v6;
}

void sub_1001D8778(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v73 = a2;
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v76 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  v70 = type metadata accessor for MACAddress();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v70);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v72 = &v65 - v18;
  v75 = type metadata accessor for OwnedBeaconGroup(0);
  v71 = *(v75 - 8);
  v19 = *(v71 + 64);
  __chkstk_darwin(v75);
  v74 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v4[2];
  *v25 = v26;
  (*(v22 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v21);
  v27 = v26;
  v28 = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if (v28)
  {
    v68 = v15;
    if (qword_1016950E0 == -1)
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
  v29 = type metadata accessor for Logger();
  sub_1000076D4(v29, qword_10177C448);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v67 = v4;
    v34 = v11;
    v35 = v33;
    v77 = a1;
    v78 = v33;
    *v32 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v36 = String.init<A>(describing:)();
    v38 = sub_1000136BC(v36, v37, &v78);

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "pairingFailureAnalyticsEvent %{public}s", v32, 0xCu);
    sub_100007BAC(v35);
    v11 = v34;
    v4 = v67;
  }

  v39 = v76;
  v40 = v4[24];
  if (v40)
  {
    v41 = *(v4[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v42 = (v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if (*(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
    {
      v43 = v4[3];
      v44 = v4[24];

      v45 = v72;
      sub_100AC5D4C(v73, v72);
      if ((*(v71 + 48))(v45, 1, v75) == 1)
      {
        sub_10000B3A8(v45, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        sub_1001DA9D8(v45, v74, type metadata accessor for OwnedBeaconGroup);
        sub_1000D2A70(v69, v39, &qword_1016A40D0, &unk_10138BE70);
        v52 = v70;
        v73 = *(v12 + 48);
        v53 = v73(v39, 1, v70);
        v66 = v12;
        if (v53 == 1)
        {
          v54 = v4[7];
          if (v54)
          {
            v55 = v54;
            sub_100A22DF0(v11);

            v52 = v70;
            v56 = 0;
          }

          else
          {
            v56 = 1;
          }

          v58 = v76;
          v59 = v73;
          (*(v66 + 56))(v11, v56, 1, v52);
          if (v59(v58, 1, v52) != 1)
          {
            sub_10000B3A8(v58, &qword_1016A40D0, &unk_10138BE70);
          }

          v57 = v59(v11, 1, v52);
        }

        else
        {
          (*(v12 + 32))(v11, v39, v52);
          (*(v12 + 56))(v11, 0, 1, v52);
          v57 = v73(v11, 1, v52);
        }

        if (v57 == 1)
        {
          sub_1001DAA40(v74, type metadata accessor for OwnedBeaconGroup);
          sub_10000B3A8(v11, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          v60 = v66;
          v61 = v68;
          (*(v66 + 32))(v68, v11, v52);
          v62 = v52;
          v63 = v74;
          v64 = sub_10051578C(v61);
          (*(v60 + 8))(v61, v62);
          *v42 = v64;
          v42[1] = HIBYTE(v64) & 1;
          *(v41 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = *(*(v63 + *(v75 + 40)) + 16);
          sub_1001DAA40(v63, type metadata accessor for OwnedBeaconGroup);
        }
      }
    }

    else
    {
      v49 = v4[24];
    }

    type metadata accessor for Transaction();
    v50 = swift_allocObject();
    v50[2] = v40;
    v50[3] = v41;
    v50[4] = a1;
    swift_errorRetain();

    static Transaction.asyncTask(name:block:)();

    v51 = v4[24];
    v4[24] = 0;
  }

  else
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No analytics event!", v48, 2u);
    }
  }
}

uint64_t sub_1001D8FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001D8FC4, 0, 0);
}

uint64_t sub_1001D8FC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  swift_errorRetain();

  return _swift_task_switch(sub_1001D9038, v3, 0);
}

uint64_t sub_1001D9038()
{
  sub_10116CE80(v0[2], v0[3], v0[4]);
  v2 = v0[3];
  v1 = v0[4];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1001D9120;
  v4 = v0[2];

  return sub_101163F78(v4);
}

uint64_t sub_1001D9120()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1001D9230(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1013917A0;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6D6F44726F727265;
  *(inited + 72) = 0xEB000000006E6961;
  swift_getErrorValue();
  Error.domain.getter();
  v5 = String._bridgeToObjectiveC()();

  *(inited + 80) = v5;
  *(inited + 88) = 0;
  *(inited + 96) = 0x646F43726F727265;
  *(inited + 104) = 0xE900000000000065;
  swift_getErrorValue();
  Error.code.getter();
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "numberOfParts");
  *(inited + 142) = -4864;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0x626D754E74726170;
  *(inited + 168) = 0xEA00000000007265;
  *(inited + 176) = UInt8._bridgeToObjectiveC()();
  *(inited + 184) = 0;
  *(inited + 192) = 0x6961506563726F66;
  *(inited + 200) = 0xE900000000000072;
  v6 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair);
  *(inited + 208) = Bool._bridgeToObjectiveC()();
  *(inited + 216) = 0;
  v7 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1001D946C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1001D8FA0(v2, v3, v4);
}

uint64_t sub_1001D9514(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 5;
  }

  else
  {
    return (0x104030200uLL >> (8 * a1));
  }
}

void sub_1001D9538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v3[2];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v14 = v3[7];
  if (v14)
  {
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    *&v21[-48] = v3;
    *&v21[-40] = v14;
    *&v21[-32] = a1;
    *&v21[-24] = a2;
    *&v21[-16] = v6;
    v16 = v14;
    static Transaction.named<A>(_:with:)();

    return;
  }

  if (qword_1016950E0 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177C448);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Missing peripheral to start pairing!", v20, 2u);
  }
}

char *sub_1001D97CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = (a1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;
    sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    *(v6 + 32) = v1 == 1;
    v7 = sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    v29 = v7;
    v30 = sub_1000041A4(&qword_101699370, &unk_10169BA40, &unk_1013918E0);
    v27 = v6;
    v8 = sub_1000035D0(&v27, v7);
    v9 = *v8;
    v10 = *(*v8 + 16);
    if (v10)
    {
      if (v10 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v26 = v10;
        memcpy(__dst, (v9 + 32), v10);
        v16 = *__dst;
        v17 = v24 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v26 << 16)) << 32);
        sub_100017D5C(v4, v5);
        v24 = v17;
      }

      else
      {
        v11 = type metadata accessor for __DataStorage();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        swift_allocObject();
        sub_100017D5C(v4, v5);
        v14 = __DataStorage.init(bytes:length:)();
        v15 = v14;
        if (v10 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v16 = swift_allocObject();
          *(v16 + 16) = 0;
          *(v16 + 24) = v10;
          v17 = v15 | 0x8000000000000000;
        }

        else
        {
          v16 = v10 << 32;
          v17 = v14 | 0x4000000000000000;
        }
      }
    }

    else
    {
      sub_100017D5C(v4, v5);
      v16 = 0;
      v17 = 0xC000000000000000;
    }

    sub_100007BAC(&v27);
    v27 = v16;
    v28 = v17;
    Data.append(_:)();
    v18 = v27;
    v19 = v28;
    sub_100017D5C(v27, v28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B734(0, *(v2 + 2) + 1, 1, v2);
    }

    v21 = *(v2 + 2);
    v20 = *(v2 + 3);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_100A5B734((v20 > 1), v21 + 1, 1, v2);
    }

    v3 += 2;
    sub_100016590(v4, v5);
    sub_100016590(v27, v28);
    *(v2 + 2) = v21 + 1;
    v22 = &v2[16 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = v19;
    --v1;
  }

  while (v1);
  return v2;
}

uint64_t sub_1001D9AA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001D8370(v2, v3);
}

uint64_t sub_1001D9BA4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, unint64_t a25, uint64_t a26, unint64_t a27)
{
  v32 = (a27 >> 59) & 6 | (a25 >> 63);
  if (v32 <= 2)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        a26 = a9;
        v33 = a10;
      }

      else
      {
        if (v32 != 2)
        {
          return result;
        }

        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        sub_100016590(a9, a10);
        sub_100016590(a11, a12);
        sub_100016590(a13, a14);
        sub_100016590(a15, a16);
        sub_100016590(a17, a18);
        sub_100016590(a19, a20);
        sub_100016590(a21, a22);
        sub_100016590(a23, a24);
        v33 = a27 & 0xCFFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      sub_100016590(result, a2);
      a26 = a3;
      v33 = a4;
    }

LABEL_14:

    return sub_100016590(a26, v33);
  }

  if (v32 == 3)
  {
    v44 = a24;
    v42 = a22;
    v43 = a23;
    v40 = a20;
    v41 = a21;
    v38 = a18;
    v39 = a19;
    v37 = a17;
    v35 = a8;
  }

  else
  {
    v35 = a8;
    if (v32 != 4)
    {
      if (v32 != 5)
      {
        return result;
      }

      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      a26 = a7;
      v33 = v35;
      goto LABEL_14;
    }

    v44 = a24;
    v42 = a22;
    v43 = a23;
    v40 = a20;
    v41 = a21;
    v38 = a18;
    v39 = a19;
    v37 = a17;
  }

  sub_100016590(result, a2);
  sub_100016590(a3, a4);
  sub_100016590(a5, a6);
  sub_100016590(a7, v35);
  sub_100016590(a9, a10);
  sub_100016590(a11, a12);
  sub_100016590(a13, a14);
  sub_100016590(a15, a16);
  sub_100016590(v37, v38);
  sub_100016590(v39, v40);
  sub_100016590(v41, v42);

  return sub_100006654(v43, v44);
}

unint64_t sub_1001D9E94()
{
  result = qword_101699360;
  if (!qword_101699360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699360);
  }

  return result;
}

unint64_t sub_1001D9F10()
{
  result = qword_101699388;
  if (!qword_101699388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699388);
  }

  return result;
}

unint64_t sub_1001D9F64()
{
  result = qword_101699390;
  if (!qword_101699390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699390);
  }

  return result;
}

uint64_t sub_1001DA038(id *a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ECE7C(a1, v4, v5, v6);
}

uint64_t sub_1001DA0B4(void **a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100B98024(a1, v1 + v4, v6, v8);
}

uint64_t type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult()
{
  result = qword_101699630;
  if (!qword_101699630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DA1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 104);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_1001D47B4(a1, v6, v1 + 24, v7, v1 + v5, v9, v10);
}

double sub_1001DA2E4(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BC00;
  *(a1 + 16) = xmmword_10138BC00;
  *(a1 + 32) = xmmword_10138BC00;
  *(a1 + 48) = xmmword_10138BC00;
  *(a1 + 64) = xmmword_10138BC00;
  *(a1 + 80) = xmmword_10138BC00;
  *(a1 + 96) = xmmword_10138BC00;
  *(a1 + 112) = xmmword_10138BC00;
  *(a1 + 128) = xmmword_10138BC00;
  *(a1 + 144) = xmmword_10138BC00;
  *(a1 + 160) = xmmword_10138BC00;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 261888;
  return result;
}

uint64_t sub_1001DA318(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 192) | 0x8000000000000000;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v11;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1001DA3BC(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1001DA45C(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 192) >> 8 << 22);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DA538(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1001CED84(a1, v4, v5, v6);
}

uint64_t sub_1001DA5AC()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return sub_1001CF5CC(v2, v3, v4, v5);
}

uint64_t sub_1001DA61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001DA684(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

uint64_t sub_1001DA7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001DA81C()
{
  result = qword_1016993C8;
  if (!qword_1016993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016993C8);
  }

  return result;
}

double sub_1001DA870(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}

uint64_t sub_1001DA968(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[216] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_101699350, &qword_1013918C8);
}

uint64_t sub_1001DA9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DAA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DAAA0(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 192) | 0x8000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v12;
  *(result + 208) = v11;
  return result;
}

uint64_t sub_1001DAC6C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1001DACD4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}

uint64_t sub_1001DAD1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001D5EEC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

double sub_1001DAD4C@<D0>(uint64_t a1@<X0>, unsigned __int128 *a2@<X8>)
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));
  v7 = *(v2 + 16);
  return sub_1001CA590(a1, v6, a2);
}

uint64_t sub_1001DADC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_1001CA1CC(a1, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1001DADF8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001DAEE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_1001DAFD0()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 42) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v8 = *(v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8));
  return sub_1001C1D18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 41), v0 + v3, *(v0 + v5), v0 + v6);
}

uint64_t sub_1001DB088()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

void sub_1001DB124(void **a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1001C35A0(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_1001DB1DC(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1001C4290(a1, v6, v7, v8, v9, (v1 + v5), v10);
}

uint64_t sub_1001DB2C0(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

unint64_t sub_1001DB348()
{
  result = qword_101699668;
  if (!qword_101699668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699668);
  }

  return result;
}

unint64_t sub_1001DB39C()
{
  result = qword_101699670;
  if (!qword_101699670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699670);
  }

  return result;
}

uint64_t sub_1001DB428()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_101699678 = result;
  return result;
}

void *sub_1001DB468()
{
  type metadata accessor for MessagingQueryController();
  swift_allocObject();
  result = sub_10126766C(0xD00000000000001BLL, 0x800000010134CCA0);
  qword_101699690 = result;
  return result;
}

uint64_t sub_1001DB4C0()
{
  static os_log_type_t.debug.getter();
  if (qword_101695058 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  qword_101699680 = 0;

  qword_101699688 = 0;
}

uint64_t sub_1001DB570@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_101699680;
  if (qword_101699680)
  {

    static os_log_type_t.debug.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    result = os_log(_:dso:log:_:_:)();
    *a1 = v2;
    *(a1 + 8) = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v4 setCachePolicy:1];
    v5 = dispatch_group_create();
    v6 = swift_allocObject();
    sub_1001DB7C4();
    v7 = swift_allocError();
    *v8 = 1;
    *(v6 + 16) = v7;
    *(v6 + 24) = 1;
    dispatch_group_enter(v5);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    v14[4] = sub_1001DB99C;
    v14[5] = v9;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000D488C;
    v14[3] = &unk_101613098;
    v10 = _Block_copy(v14);
    v11 = v5;

    [v4 startRequestWithCompletionHandler:v10];
    _Block_release(v10);
    OS_dispatch_group.wait()();

    swift_beginAccess();
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    *a1 = v12;
    *(a1 + 8) = v13;
    sub_1001DB9A4(v12, v13);
  }

  return result;
}

uint64_t sub_1001DB7B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1001DB7C4()
{
  result = qword_101699698;
  if (!qword_101699698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699698);
  }

  return result;
}

void sub_1001DB818(void *a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    *(a4 + 16) = a2;
    *(a4 + 24) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
  }

  else if (a1)
  {
    v11 = a1;
    v12 = [v11 members];
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_101129F98(v13);

    qword_101699680 = v14;

    swift_beginAccess();
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    *(a4 + 16) = v14;
    *(a4 + 24) = 0;
  }

  else
  {
    sub_1001DB7C4();
    v15 = swift_allocError();
    *v16 = 1;
    swift_beginAccess();
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    *(a4 + 16) = v15;
    *(a4 + 24) = 1;
  }

  sub_1001DB7B8(v9, v10);
  dispatch_group_leave(a3);
}

uint64_t sub_1001DB9A4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1001DB9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return _swift_task_switch(sub_1001DB9F8, 0, 0);
}

uint64_t sub_1001DB9F8()
{
  v1 = *(v0 + 104);
  *(v0 + 88) = &_swiftEmptySetSingleton;
  v2 = *(v1 + 32);
  *(v0 + 256) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 152) = v5;
    *(v0 + 160) = v7;
    v9 = *(v6 + 48) + 24 * (__clz(__rbit64(v5)) | (v7 << 6));
    *(v0 + 257) = *v9;
    *(v0 + 168) = *(v9 + 8);
    *(v0 + 176) = *(v9 + 16);
    v10 = qword_1016944B8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v11, 0);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 88);
    *(v0 + 128) = v12;
    v13 = swift_allocObject();
    *(v0 + 136) = v13;
    *(v13 + 16) = v12;
    v14 = async function pointer to unsafeBlocking<A>(_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v15, sub_1001DD08C, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1001DBC10()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_1001DBD28, 0, 0);
}

uint64_t sub_1001DBD28()
{
  v1 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 128), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DBDA0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 257);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  v6 = *(v2 + 112);
  *(v0 + 200) = v6;

  if (v6)
  {
    v7 = *(v0 + 184);
    v8 = sub_1001DD028();
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    v9[2] = inited;
    v9[3] = v6;
    v9[4] = v7;
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = v6;
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    v13 = sub_1000BC4D4(&qword_1016996B8, &qword_101391C40);
    *v12 = v0;
    v12[1] = sub_1001DBFB8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, v7, v8, 0xD00000000000001CLL, 0x800000010134D210, sub_1001DD080, v9, v13);
  }

  else
  {
    v14 = *(v0 + 176);

    swift_setDeallocating();
    sub_1001BAE8C(inited + 32);
    sub_1001DCF6C();
    v15 = swift_allocError();
    *v16 = 6;
    swift_willThrow();
    *(v0 + 232) = v15;

    return _swift_task_switch(sub_1001DC3BC, 0, 0);
  }
}

uint64_t sub_1001DBFB8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  v6 = v2[24];
  v7 = v2[23];
  if (v0)
  {
    v8 = v2[22];
    swift_setDeallocating();
    v9 = *(v6 + 16);
    swift_arrayDestroy();

    v10 = sub_1001DC34C;
  }

  else
  {
    swift_setDeallocating();
    v11 = *(v6 + 16);
    swift_arrayDestroy();

    v10 = sub_1001DC16C;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_1001DC16C()
{
  v2 = 0;
  v3 = 0;
  v4 = *(v1 + 96);
  v5 = 1 << *(v4 + 32);
  while (1)
  {
    v6 = *(v4 + 8 * v3 + 64);
    if (v6)
    {
      break;
    }

    ++v3;
    v2 -= 64;
    if ((v5 + 63) >> 6 == v3)
    {
      goto LABEL_20;
    }
  }

  v7 = __clz(__rbit64(v6));
  if (v7 - v5 == v2)
  {
    goto LABEL_20;
  }

  if (-v2 < 0 || (v8 = v7 - v2, v8 >= v5))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (((*(v4 + 64 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL)) >> v7) & 1) == 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_20:

    v20 = sub_1001DD13C;
    goto LABEL_21;
  }

  v0 = *(*(v4 + 56) + 8 * v8);
  v9 = *(v1 + 96);

  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v12, v10, v11);
    }

    v13 = *(v0 + 32);
  }

  v14 = v13;

  v15 = [v14 senderCorrelationIdentifier];

  if (v15)
  {
    v16 = *(v1 + 176);

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v1 + 240) = v17;
    *(v1 + 248) = v19;
    v20 = sub_1001DC6A0;
  }

  else
  {
    v20 = sub_1001DC8AC;
  }

LABEL_21:
  v12 = v20;
  v10 = 0;
  v11 = 0;

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_1001DC34C()
{
  *(v0 + 232) = *(v0 + 224);

  return _swift_task_switch(sub_1001DC3BC, 0, 0);
}

uint64_t sub_1001DC3BC()
{
  static os_log_type_t.error.getter();
  if (qword_101695058 != -1)
  {
LABEL_17:
    swift_once();
  }

  v1 = *(v0 + 232);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = _convertErrorToNSError(_:)();
  *(v2 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v2 + 64) = sub_1001DCFC0();
  *(v2 + 32) = v3;
  os_log(_:dso:log:_:_:)();

  v4 = *(v0 + 160);
  v5 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v5)
  {
    v6 = *(v0 + 104);
LABEL_8:
    *(v0 + 152) = v5;
    *(v0 + 160) = v4;
    v8 = *(v6 + 48) + 24 * (__clz(__rbit64(v5)) | (v4 << 6));
    *(v0 + 257) = *v8;
    *(v0 + 168) = *(v8 + 8);
    *(v0 + 176) = *(v8 + 16);
    v9 = qword_1016944B8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v10, 0);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v7 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v0 + 104);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_8;
      }
    }

    v11 = *(v0 + 104);

    v12 = *(v0 + 88);
    *(v0 + 128) = v12;
    v13 = swift_allocObject();
    *(v0 + 136) = v13;
    *(v13 + 16) = v12;
    v14 = async function pointer to unsafeBlocking<A>(_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v15, sub_1001DD08C, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1001DC6A0()
{
  sub_100DE9538((v0 + 72), *(v0 + 240), *(v0 + 248));
  v1 = *(v0 + 80);

  v2 = *(v0 + 160);
  v3 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v3)
  {
    v4 = *(v0 + 104);
LABEL_7:
    *(v0 + 152) = v3;
    *(v0 + 160) = v2;
    v6 = *(v4 + 48) + 24 * (__clz(__rbit64(v3)) | (v2 << 6));
    *(v0 + 257) = *v6;
    *(v0 + 168) = *(v6 + 8);
    *(v0 + 176) = *(v6 + 16);
    v7 = qword_1016944B8;

    if (v7 != -1)
    {
LABEL_15:
      swift_once();
    }

    v8 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v8, 0);
  }

  else
  {
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v4 = *(v0 + 104);
      if (v5 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v4 + 8 * v5 + 56);
      ++v2;
      if (v3)
      {
        v2 = v5;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 88);
    *(v0 + 128) = v9;
    v10 = swift_allocObject();
    *(v0 + 136) = v10;
    *(v10 + 16) = v9;
    v11 = async function pointer to unsafeBlocking<A>(_:)[1];

    v12 = swift_task_alloc();
    *(v0 + 144) = v12;
    *v12 = v0;
    v12[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v12, sub_1001DD08C, v10, &type metadata for () + 8);
  }
}

uint64_t sub_1001DC8AC()
{
  static os_log_type_t.error.getter();
  if (qword_101695058 != -1)
  {
LABEL_17:
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  os_log(_:dso:log:_:_:)();

  v4 = *(v0 + 160);
  v5 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v5)
  {
    v6 = *(v0 + 104);
LABEL_8:
    *(v0 + 152) = v5;
    *(v0 + 160) = v4;
    v8 = *(v6 + 48) + 24 * (__clz(__rbit64(v5)) | (v4 << 6));
    *(v0 + 257) = *v8;
    *(v0 + 168) = *(v8 + 8);
    *(v0 + 176) = *(v8 + 16);
    v9 = qword_1016944B8;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v10, 0);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v7 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v0 + 104);
      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_8;
      }
    }

    v11 = *(v0 + 104);

    v12 = *(v0 + 88);
    *(v0 + 128) = v12;
    v13 = swift_allocObject();
    *(v0 + 136) = v13;
    *(v13 + 16) = v12;
    v14 = async function pointer to unsafeBlocking<A>(_:)[1];

    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v15, sub_1001DD08C, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1001DCB6C(uint64_t a1)
{
  if (qword_1016944B0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_1001DCC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 80) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return _swift_task_switch(sub_1001DCC5C, 0, 0);
}

uint64_t sub_1001DCC5C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1001DCD2C;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 80);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_1001DCD2C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_1001DCED8;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_1001DCE60;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001DCE60()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 72), *(v0 + 64), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001DCED8()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  swift_errorRetain();
  v3(v1, 0, 1);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001DCF6C()
{
  result = qword_1016996A8;
  if (!qword_1016996A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016996A8);
  }

  return result;
}

unint64_t sub_1001DCFC0()
{
  result = qword_1016BC310;
  if (!qword_1016BC310)
  {
    sub_100008BB8(255, &qword_10169E020, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC310);
  }

  return result;
}

unint64_t sub_1001DD028()
{
  result = qword_1016996B0;
  if (!qword_1016996B0)
  {
    type metadata accessor for MessagingQueryController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016996B0);
  }

  return result;
}

uint64_t sub_1001DD094()
{
  qword_101699688 = *(v0 + 16);
}

unint64_t sub_1001DD0E8()
{
  result = qword_1016996C0[0];
  if (!qword_1016996C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016996C0);
  }

  return result;
}

uint64_t sub_1001DD1AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101696E28, &qword_1013EAD80);
    sub_1001E4940(a2, a3, type metadata accessor for MultipartAccessoryPairingInfo, type metadata accessor for MultipartAccessoryPairingInfo, sub_100AF6500, sub_1010052AC, v10);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v10, &qword_101696E28, &qword_1013EAD80);
  }

  else
  {
    sub_100038E0C(a1, v14, type metadata accessor for MultipartAccessoryPairingInfo);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100FFA7D4(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_1001DD3D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016998A8, &qword_1013EADC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998A8, &qword_1013EADC0);
    sub_1001E47B8(a2, a3, v10);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v10, &qword_1016998A8, &qword_1013EADC0);
  }

  else
  {
    sub_1000D2AD8(a1, v14, &qword_1016A40D0, &unk_10138BE70);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100FFA9DC(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_1001DD5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100FFACA0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100771D58(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1010056F4();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_100AF6720(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1001DD6C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699858, &qword_101391FF0);
    sub_1001E4940(a2, a3, type metadata accessor for OwnedBeaconGroup.PairingState, type metadata accessor for OwnedBeaconGroup.PairingState, sub_100AF68D0, sub_10100586C, v10);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v10, &qword_101699858, &qword_101391FF0);
  }

  else
  {
    sub_100038E0C(a1, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100FFAE28(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_1001DD8EC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for BookmarkMetaData();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998B8, &unk_1013B6AD0);
    v15 = *v3;
    v16 = sub_100771F0C(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_101005B0C();
        v21 = v26;
      }

      sub_100038E0C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for BookmarkMetaData);
      sub_100AF6AE8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_10000B3A8(v9, &qword_1016998B8, &unk_1013B6AD0);
  }

  else
  {
    sub_100038E0C(a1, v14, type metadata accessor for BookmarkMetaData);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_100FFB030(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1001DDB40(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_1016980D0, &unk_10138F3B0);
    sub_1001E4AC4(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100FFB184(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1001DDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10004D07C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100FFB368(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_10000B3A8(a1, &unk_1016A0B10, &qword_10139BF40);
    sub_1001E4C5C(a2, a3, v10);

    return sub_10000B3A8(v10, &unk_1016A0B10, &qword_10139BF40);
  }

  return result;
}

uint64_t sub_1001DDE00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10004D07C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_100FFB504(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_10000B3A8(a1, &qword_1016998F8, &qword_101392048);
    sub_1001E4D00(a2, v10);
    v8 = type metadata accessor for CodingUserInfoKey();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_10000B3A8(v10, &qword_1016998F8, &qword_101392048);
  }

  return result;
}

void sub_1001DDF1C(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699868, &qword_101391FF8);
    sub_1001E4DDC(a2, v8);

    sub_10000B3A8(v8, &qword_101699868, &qword_101391FF8);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100FFB8A0(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_1001DE0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 41) == 255)
  {
    sub_10000B3A8(a1, &qword_101699870, &qword_101392000);
    sub_1001E50DC(a2, a3, &v11);

    return sub_10000B3A8(&v11, &qword_101699870, &qword_101392000);
  }

  else
  {
    v7 = *(a1 + 16);
    v11 = *a1;
    v12[0] = v7;
    *(v12 + 10) = *(a1 + 26);
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_100FFC070(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_1001DE1F0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
    v15 = *v3;
    v16 = sub_100771D14(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010074AC();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_100AF7F1C(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_10000B3A8(v9, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_100FFC5AC(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_1001DE440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100FFC714(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for MACAddress();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1007723C0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_101007714();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for MACAddress();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100AF81EC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for MACAddress();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001DE600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998E0, &qword_101392030);
    sub_1001E5500(a2, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, sub_100AF8234, sub_10100773C, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998E0, &qword_101392030);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFC918(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001DE870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100FFD020(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100817C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001DEA30(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (a2)
  {
    v7 = sub_1007723C0(a3);
    if (v8)
    {
      v9 = v7;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010081E0();
        v12 = v23;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for MACAddress();
      v15 = *(v14 - 8);
      v16 = *(v15 + 8);
      v16(v13 + *(v15 + 72) * v9, v14);
      sub_100AF8590(v9, v12);
      result = (v16)(a3, v14);
      *v4 = v12;
    }

    else
    {
      v21 = type metadata accessor for MACAddress();
      v22 = *(*(v21 - 8) + 8);

      return v22(a3, v21);
    }
  }

  else
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_100FFD49C(a1, a3, v19);
    v20 = type metadata accessor for MACAddress();
    result = (*(*(v20 - 8) + 8))(a3, v20);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_1001DEBE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998C0, &qword_1013DF6D0);
    sub_1001E5E40(a2, &qword_1016998C8, &qword_1013AAC70, sub_100AF85D8, sub_1010083D0, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998C0, &qword_1013DF6D0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFD670(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001DEE50(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
    sub_1001E5240(sub_1000210EC, &type metadata accessor for UUID, sub_100AF85EC, sub_101008408, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFD694(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001DF0CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000A748(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_100FFDCC4(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_10000B3A8(a1, &unk_1016AA480, &unk_1013BD050);
    sub_1001E5A24(a2, sub_100031694, sub_100B27F74, sub_1010087A8, v10);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_10000B3A8(v10, &unk_1016AA480, &unk_1013BD050);
  }

  return result;
}

uint64_t sub_1001DF224(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  if (a3 == -1)
  {
    v14 = *v4;
    v15 = sub_1000210EC(a4);
    if (v16)
    {
      v17 = v15;
      v18 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v28 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010087D0();
        v20 = v28;
      }

      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      sub_1001E61D8(*(*(v20 + 56) + 24 * v17), *(*(v20 + 56) + 24 * v17 + 8), *(*(v20 + 56) + 24 * v17 + 16));
      sub_100AF8604(v17, v20);
      result = (v24)(a4, v22);
      *v5 = v20;
    }

    else
    {
      v25 = type metadata accessor for UUID();
      v26 = *(*(v25 - 8) + 8);

      return v26(a4, v25);
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v5;
    sub_100FFDEE0(a1, a2, a3 & 1, a4, v11);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a4, v12);
    *v5 = v27;
  }

  return result;
}

void sub_1001DF40C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100FFE0D8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v9 = *v3;
    v10 = sub_1007725DC(a3);
    if (v11)
    {
      v12 = v10;
      v13 = *v4;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v19 = *v4;
      if (!v14)
      {
        sub_101008E60();
        v15 = v19;
      }

      v16 = *(*(v15 + 56) + 16 * v12 + 8);

      sub_100AF8944(v12, v15);

      *v4 = v15;
    }

    else
    {
    }
  }
}

uint64_t sub_1001DF51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_100FFE25C(a1, a2, isUniquelyReferenced_nonNull_native);
    v19 = type metadata accessor for UUID();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v3 = v23;
  }

  else
  {
    v6 = sub_1000210EC(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v22 = *v3;
      if (!v10)
      {
        sub_101008FD0();
        v11 = v22;
      }

      v12 = *(v11 + 48);
      v13 = type metadata accessor for UUID();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v8, v13);
      sub_1001E61B8(*(*(v11 + 56) + 8 * v8));
      sub_100AF8AD0(v8, v11);
      result = (v15)(a2, v13);
      *v3 = v11;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a2, v20);
    }
  }

  return result;
}

uint64_t sub_1001DF724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v30;
  }

  else
  {
    v16 = *v5;
    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v31 = *v6;
      if (!v21)
      {
        a5();
        v22 = v31;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);
      v27 = *(*(v22 + 56) + 8 * v19);

      a4(v19, v22);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v28 = type metadata accessor for UUID();
      v29 = *(*(v28 - 8) + 8);

      return v29(a2, v28);
    }
  }

  return result;
}

uint64_t sub_1001DF908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100FFF1D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100A548();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001DFAC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998F0, &qword_1013B60E0);
    sub_1001E5E40(a2, &qword_1016C3210, &qword_101392040, sub_100AF8DF0, sub_10100A584, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998F0, &qword_1013B60E0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFF200(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

void sub_1001DFD34(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100FFF5A8(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_100777014(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_10100A710();
        v13 = v16;
      }

      sub_100AF8E04(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_1001DFE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100FFF724(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100A870();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100AF8FCC(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001DFFF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_101000050(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100B154();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001E01B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998D8, &qword_101392028);
    sub_1001E56C0(a2, &qword_1016AD630, &qword_1013C3FD0, sub_100AF95C0, sub_10100B4E0, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998D8, &qword_101392028);
  }

  else
  {
    sub_1000D2AD8(a1, v12, &qword_1016AD630, &qword_1013C3FD0);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1010000A0(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E0414(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    sub_101000330(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_100772110(a3, a4, a5);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        sub_10100BA90();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 24 * v16 + 16);

      v22 = *(*(v20 + 56) + 16 * v16 + 8);

      result = sub_100AF95EC(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_1001E0530(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_101000870(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_100777018(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_10100C4B8();
        v14 = v16;
      }

      result = sub_100AF9AE0(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_1001E05F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BeaconNamingRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_1016B29E0, &unk_1013B70E0);
    sub_1001E5500(a2, type metadata accessor for BeaconNamingRecord, type metadata accessor for BeaconNamingRecord, sub_100AF9C74, sub_10100C788, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &unk_1016B29E0, &unk_1013B70E0);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for BeaconNamingRecord);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1010009CC(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E0860(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BeaconProductInfoRecord();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_1016AF8C0, &unk_1013A07A0);
    sub_1001E5500(a2, type metadata accessor for BeaconProductInfoRecord, type metadata accessor for BeaconProductInfoRecord, sub_100AF9C8C, sub_10100C7C4, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for BeaconProductInfoRecord);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101000C38(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E0AD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1001E56C0(a2, &qword_1016998D0, &unk_1013931A0, sub_100AF9CA4, sub_10100C800, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016AA4E0, &unk_1013BD0E0);
  }

  else
  {
    sub_1000D2AD8(a1, v12, &qword_1016998D0, &unk_1013931A0);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101000EA4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E0D2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Device();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_101699860, &qword_1013A34D0);
    sub_1001E5884(a2, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699860, &qword_1013A34D0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101000EDC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E0F58(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_101699898, &qword_101392018);
    sub_1001E5E40(a2, &qword_1016998A0, &unk_1013D68B0, sub_100AF9EB4, sub_10100D1A8, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699898, &qword_101392018);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101001164(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E11C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000A748(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_101001188(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1001E5A24(a2, sub_100031694, sub_100B27F74, sub_10100D1F0, v10);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    if (v10[3])
    {
      return sub_100007BAC(v10);
    }
  }

  return result;
}

uint64_t sub_1001E1300(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998B0, &qword_101392020);
    sub_1001E5E40(a2, &qword_1016C30B0, &qword_1013E4770, sub_100AF9EC8, sub_10100D1CC, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998B0, &qword_101392020);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1010013BC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1010018A8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100771D58(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_10100DA34();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_100AFA690(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1001E1664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_101001A44(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100DBCC();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001E1824(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699890, &qword_101392010);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699890, &qword_101392010);
    sub_1001E5C98(a2, v8);
    v14 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699890, &qword_101392010);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for BeaconScanner.AISLookupState);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101001CC4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E1A5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699880, &qword_1013F52E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_101699880, &qword_1013F52E0);
    sub_1001E5E40(a2, &qword_101699888, &unk_1013D68A0, sub_100AFAB88, sub_10100DF20, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699880, &qword_1013F52E0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101001EA0(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E1CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_101001ED8(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100E40C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001E1E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo();
  v10 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699878, &qword_101392008);
    sub_1001E5500(a2, type metadata accessor for AccessoryFirmwareUpdateStateInfo, type metadata accessor for AccessoryFirmwareUpdateStateInfo, sub_100AFAEE0, sub_10100EB08, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_101699878, &qword_101392008);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1010025A4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E20F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v10 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998E8, &qword_101392038);
    sub_1001E5500(a2, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, sub_100AFAEF8, sub_10100EB44, v8);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_10000B3A8(v8, &qword_1016998E8, &qword_101392038);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101002810(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1001E23E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
    *v5 = v25;
  }

  else
  {
    v15 = *v5;
    v16 = sub_100772AE4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v6;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v26 = *v6;
      if (!v20)
      {
        a5();
        v21 = v26;
      }

      v22 = *(v21 + 48);
      v23 = type metadata accessor for BeaconKeyManager.FileKey(0);
      sub_1000296A4(v22 + *(*(v23 - 8) + 72) * v18, type metadata accessor for BeaconKeyManager.FileKey);
      v24 = *(*(v21 + 56) + 8 * v18);

      a4(v18, v21);
      result = sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
      *v6 = v21;
    }

    else
    {
      return sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
    }
  }

  return result;
}

uint64_t sub_1001E2590(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v5 = v29;
  }

  else
  {
    v16 = *v5;
    v17 = sub_1000210EC(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v6;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v6;
      v30 = *v6;
      if (!v21)
      {
        a5();
        v22 = v30;
      }

      v23 = *(v22 + 48);
      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      v26 = *(v25 + 8);
      v26(v23 + *(v25 + 72) * v19, v24);

      a4(v19, v22);
      result = (v26)(a2, v24);
      *v6 = v22;
    }

    else
    {
      v27 = type metadata accessor for UUID();
      v28 = *(*(v27 - 8) + 8);

      return v28(a2, v27);
    }
  }

  return result;
}

uint64_t sub_1001E2774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_101002EC0(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1000210EC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_10100F98C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100B27F6C(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1001E2934(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    sub_101002ED4(a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v4 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_1000210EC(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_10100FC30();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_100AF97C0(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

unint64_t sub_1001E2B00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016083F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_1001E2D28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E2B00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E2D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E2B50(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_1001E2DA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E2B4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E2DD0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1001E61B0();
  *a2 = result;
  return result;
}

uint64_t sub_1001E2DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001E2E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int Message.MessageError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001E2F40()
{
  Hasher.init(_seed:)();
  Message.MessageError.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t SessionMessage.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SessionMessage.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v47 = a6;
  v49 = a3;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a4 - 8);
  v51 = a1;
  v17 = a1;
  v18 = a4;
  (*(v50 + 16))(a7, v17, a4);
  v19 = type metadata accessor for SessionMessage();
  *(a7 + *(v19 + 36)) = a2;
  v20 = *(v19 + 40);
  v52 = a7;
  v45 = v19;
  v46 = v20;
  UUID.init()();
  v21 = type metadata accessor for PropertyListEncoder();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v12, static CodingUserInfoKey.messagingCoder);
  (*(v13 + 16))(v16, v24, v12);
  v54[3] = &type metadata for Bool;
  LOBYTE(v54[0]) = 1;
  v25 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v54, v16);
  v25(v53, 0);
  v26 = sub_1001E40AC(a5, a5);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = *(a5 - 8);
  v30 = *(v29 + 72);
  v31 = *(v29 + 80);
  swift_allocObject();
  v32 = static Array._adoptStorage(_:count:)();
  v33 = v49;
  (*(v29 + 16))(v34, v49, a5);
  type metadata accessor for Array();
  v54[0] = v32;
  v54[5] = v47;
  swift_getWitnessTable();
  v35 = v48;
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v35)
  {

    (*(v29 + 8))(v33, a5);
    v38 = *(v50 + 8);
    v38(v51, v18);

    v39 = v52;
    v38(v52, v18);
    v40 = type metadata accessor for UUID();
    return (*(*(v40 - 8) + 8))(v39 + v46, v40);
  }

  else
  {
    v42 = v36;
    v43 = v37;

    (*(v29 + 8))(v33, a5);
    (*(v50 + 8))(v51, v18);

    v44 = (v52 + *(v45 + 44));
    *v44 = v42;
    v44[1] = v43;
  }

  return result;
}

uint64_t SessionMessage.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v9 = type metadata accessor for Optional();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v31 = &v27 - v11;
  v12 = type metadata accessor for PropertyListDecoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for Array();
  v15 = a1;
  v16 = (v4 + *(a1 + 44));
  v18 = *v16;
  v17 = v16[1];
  v32 = a3;
  swift_getWitnessTable();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    v27 = v9;
    v28 = v15;
    v20 = v29;
    v21 = v30;
    swift_getWitnessTable();
    v22 = v31;
    Collection.first.getter();
    v23 = *(a2 - 8);
    if ((*(v23 + 48))(v22, 1, a2) == 1)
    {
      (*(v20 + 8))(v22, v27);

      v24 = *(v28 + 16);
      v25 = *(v28 + 24);
      type metadata accessor for SessionMessage.MessageError();
      swift_getWitnessTable();
      swift_allocError();
      *v26 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v23 + 32))(v21, v22, a2);
    }
  }

  return result;
}

uint64_t SessionMessage.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v22[0] = a2;
  v22[1] = v3;
  type metadata accessor for SessionMessage.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  v11 = *(v4 + 16);
  v12 = v22[2];
  v13 = v9;
  v14 = v22[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v16 = v6;
  v17 = v22[0];
  v18 = *(v12 + *(v22[0] + 36));
  LOBYTE(v23) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = *(v17 + 40);
  LOBYTE(v23) = 2;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v20 = (v12 + *(v17 + 44));
  v21 = v20[1];
  v23 = *v20;
  v24 = v21;
  v25 = 3;
  sub_100017D5C(v23, v21);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v23, v24);
  return (*(v16 + 8))(v13, v5);
}

uint64_t SessionMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = type metadata accessor for UUID();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v7);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a2 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v9);
  v45 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionMessage.CodingKeys();
  swift_getWitnessTable();
  v44 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v44 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v44);
  v15 = &v34 - v14;
  v43 = a3;
  v16 = type metadata accessor for SessionMessage();
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v46 = v15;
  v21 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100007BAC(a1);
  }

  v22 = v41;
  v23 = v42;
  v35 = v19;
  LOBYTE(v48) = 0;
  v24 = v44;
  v25 = *(v43 + 8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = *(v23 + 32);
  v27 = v35;
  v26(v35, v45, a2);
  LOBYTE(v48) = 1;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v16;
  *&v27[*(v16 + 36)] = v28;
  LOBYTE(v48) = 2;
  sub_1000096E8(&qword_101698300);
  v29 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = a1;
  v30 = v45;
  (*(v39 + 32))(&v35[*(v45 + 10)], v38, v29);
  v49 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v46, v24);
  v32 = v35;
  v31 = v36;
  *&v35[*(v30 + 11)] = v48;
  (*(v31 + 16))(v37, v32, v30);
  sub_100007BAC(v47);
  return (*(v31 + 8))(v32, v30);
}

uint64_t SessionMessage.description.getter(uint64_t a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(65);
  v4._object = 0x800000010134D260;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  v5 = *(a1 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._countAndFlagsBits = 0x6F6973726576202CLL;
  v6._object = 0xEB00000000203A6ELL;
  String.append(_:)(v6);
  v18 = *(v1 + *(a1 + 36));
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x69746E656469202CLL;
  v8._object = 0xEE00203A72656966;
  String.append(_:)(v8);
  v9 = *(a1 + 40);
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101696930);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x64616F6C79617020;
  v11._object = 0xEA0000000000203ALL;
  String.append(_:)(v11);
  v12 = (v2 + *(a1 + 44));
  v13 = *v12;
  v14 = v12[1];
  v15._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_1001E40AC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_1001E4174(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E420C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v27 = *(v5 - 8);
  v6 = *(v27 + 84);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v27 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  if (v11 <= 0xC)
  {
    v11 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v7 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((v13 + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v6 == v11)
  {
    v23 = *(v27 + 48);

    return v23(a1, v6, v5);
  }

  else
  {
    v24 = (((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v11)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      if (((4 * v26) & 0xC) != 0)
      {
        return 16 - ((4 * v26) & 0xC | (v26 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1001E4490(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v9 + 84);
  v11 = *(v26 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v12 <= 0xC)
  {
    v12 = 12;
  }

  v14 = *(v9 + 64) + 7;
  v15 = ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
    v19 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v12)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v8, v7);
      }

      else
      {
        v23 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v10 == v12)
        {
          v24 = *(v9 + 56);

          v24(v23, a2);
        }

        else
        {
          v25 = ((v14 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0xC)
          {
            *v25 = (a2 - 13);
            v25[1] = 0;
          }

          else
          {
            *v25 = 0;
            v25[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
          }
        }
      }

      return;
    }
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v12 + a2;
    bzero(a1, ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1001E47B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100771E30(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1010052E8();
      v12 = v22;
    }

    sub_100016590(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v21 = *(v14 - 8);
    sub_1000D2AD8(v13 + *(v21 + 72) * v9, a3, &qword_1016A40D0, &unk_10138BE70);
    sub_100AF6518(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1001E4940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_100771E30(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v30 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v30;
    }

    sub_100016590(*(*(v20 + 48) + 16 * v17), *(*(v20 + 48) + 16 * v17 + 8));
    v21 = *(v20 + 56);
    v22 = a3(0);
    v29 = *(v22 - 8);
    sub_100038E0C(v21 + *(v29 + 72) * v17, a7, a4);
    a5(v17, v20);
    *v12 = v20;
    v23 = *(v29 + 56);
    v24 = a7;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a3(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a7;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1001E4AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000210EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101005D44();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_100AF6F44(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = type metadata accessor for UUID();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1001E4C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100771D58(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100600C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_10004D07C((*(v12 + 56) + 32 * v9), a3);
    sub_100AF7244(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1001E4D00@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100771F94(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006034();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_10004D07C((*(v11 + 56) + 32 * v8), a2);
    sub_100AF73F4(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001E4DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100771FF8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1010062F4();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v20 = *(v13 - 8);
    sub_100038E0C(v12 + *(v20 + 72) * v8, a2, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    sub_100AF79C8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001E4F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100038994(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006B74();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for BeaconIdentifier();
    sub_1000296A4(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for BeaconIdentifier);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ObservedAdvertisement(0);
    v22 = *(v15 - 8);
    sub_100038E0C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for ObservedAdvertisement);
    sub_100AF79E0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ObservedAdvertisement(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1001E50DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100771D58(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006FE8();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 48 * v9);
    v15 = v14[1];
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 26) = *(v14 + 26);
    sub_100AF7D4C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -256;
  }

  return result;
}

uint64_t sub_1001E5240@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = a1();
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = a2(0);
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = type metadata accessor for Date();
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    a3(v20, v17);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = type metadata accessor for Date();
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

double sub_1001E5408@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000210EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v18 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100AAF0();
      v11 = v18;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56) + 72 * v8;
    v15 = *(v14 + 48);
    *(a2 + 32) = *(v14 + 32);
    *(a2 + 48) = v15;
    *(a2 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v16;
    sub_100AF92C8(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001E5500@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1000210EC(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_100038E0C(v23 + *(v31 + 72) * v22, a6, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1001E56C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1000210EC(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = sub_1000BC4D4(a2, a3);
    v31 = *(v24 - 8);
    sub_1000D2AD8(v23 + *(v31 + 72) * v22, a6, a2, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = sub_1000BC4D4(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1001E5884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000210EC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100CE10();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Device();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100AF9E9C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Device();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1001E5A24@<D0>(uint64_t a1@<X0>, void (*a2)(unint64_t, uint64_t)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_1000210EC(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v21 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v21;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    a2(*(v17 + 56) + 40 * v14, a5);
    a3(v14, v17);
    *v9 = v17;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double sub_1001E5B28@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1007723C0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100D4B0();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for MACAddress();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_100AFA200(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_10138BBF0;
  }

  return result;
}

uint64_t sub_1001E5C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100771C58(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10100D768();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_100AFA520(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1001E5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100772CAC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100DBF4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for BeaconScanner.AISLookupState(0);
    v22 = *(v15 - 8);
    sub_100038E0C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for BeaconScanner.AISLookupState);
    sub_100AFA840(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for BeaconScanner.AISLookupState(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1001E5E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1000210EC(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = sub_1000BC4D4(a2, a3);
    v31 = *(v24 - 8);
    (*(v31 + 32))(a6, v23 + *(v31 + 72) * v22, v24);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = sub_1000BC4D4(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_1001E6014@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100772DDC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EE0C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
    sub_1000296A4(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_100AFB260(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_1001E61B8(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_1001E61D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001E622C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001E6288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001E62E8(uint64_t a1, void (*a2)(char *, void))
{
  v4 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  sub_1001E63CC(a1, &v11 - v7);
  a2(v8, v8[*(v5 + 56)]);
  v9 = type metadata accessor for URL();
  return (*(*(v9 - 8) + 8))(v8, v9);
}

uint64_t sub_1001E63CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E643C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016999C8, &unk_101392310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1001E8164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_1001E81B8(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent();
    LOBYTE(v15) = *(v3 + v11[5]);
    v16 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v11[6];
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[7]);
    v16 = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v11[8]);
    v16 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001E66E8()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x64497265626D656DLL;
  v4 = 0x7265747369676572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E6C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E67B4(uint64_t a1)
{
  v2 = sub_1001E8164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E67F0(uint64_t a1)
{
  v2 = sub_1001E8164();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E6878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001E68FC(uint64_t a1)
{
  v2 = sub_1001E82D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E6938(uint64_t a1)
{
  v2 = sub_1001E82D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E6974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016999E0, &qword_101392320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1001E82D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100007BAC(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_1001E6AD8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016999F0, &qword_101392328);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1001E82D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001E6C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265747369676572 && a2 == 0xEE00736E656B6F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D2C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001E6DD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 304) = a2;
  *(v6 + 88) = a1;
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  *(v6 + 128) = v7;
  v8 = *(v7 - 8);
  *(v6 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 144) = swift_task_alloc();
  v10 = type metadata accessor for P256.Signing.ECDSASignature();
  *(v6 + 152) = v10;
  v11 = *(v10 - 8);
  *(v6 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  v13 = type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent();
  *(v6 + 176) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v15 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 192) = v15;
  v16 = *(v15 - 8);
  *(v6 + 200) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v18 = type metadata accessor for KeyDropJoinToken(0);
  *(v6 + 216) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  *(v6 + 232) = v20;
  v21 = *(v20 - 8);
  *(v6 + 240) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1001E701C, v5, 0);
}

uint64_t sub_1001E701C()
{
  v89 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v87 = *(v0 + 192);
  v6 = *(v0 + 112);
  v84 = *(v0 + 104);
  v7 = *(v0 + 96);
  v8 = *(*(v0 + 240) + 16);
  v8(*(v0 + 256), *(v0 + 88), v2);
  v86 = v8;
  v8(v1, v7, v2);
  sub_1001E7D68(v6, v3);
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *v4 = sub_100281AE0;
  v4[1] = 0;
  (*(v5 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v87);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v12 = *(v84 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v85 = v0;
    v14 = *(v0 + 104);
    v88 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v12, 0);
    v15 = _swiftEmptyArrayStorage;
    v16 = v14;
    v17 = (v14 + 40);
    v18 = v12;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      sub_100017D5C(v19, *v17);
      v21 = Data.hexString.getter();
      v23 = v22;
      sub_100016590(v19, v20);
      v88 = v15;
      v25 = v15[2];
      v24 = v15[3];
      if (v25 >= v24 >> 1)
      {
        sub_101123BB8((v24 > 1), v25 + 1, 1);
        v15 = v88;
      }

      v17 += 2;
      v15[2] = v25 + 1;
      v26 = &v15[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      --v18;
    }

    while (v18);
    v88 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v12, 0);
    v27 = _swiftEmptyArrayStorage;
    v28 = (v16 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      sub_100017D5C(v29, *v28);
      v31 = Data.hexString.getter();
      v33 = v32;
      sub_100016590(v29, v30);
      v88 = v27;
      v35 = v27[2];
      v34 = v27[3];
      if (v35 >= v34 >> 1)
      {
        sub_101123BB8((v34 > 1), v35 + 1, 1);
        v27 = v88;
      }

      v28 += 2;
      v27[2] = v35 + 1;
      v36 = &v27[2 * v35];
      v36[4] = v31;
      v36[5] = v33;
      --v12;
    }

    while (v12);
    v0 = v85;
    v13 = v27;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v37 = *(v0 + 248);
  v38 = *(v0 + 232);
  v40 = *(v0 + 176);
  v39 = *(v0 + 184);
  v41 = *(v0 + 304);
  v86(v39, *(v0 + 256), v38);
  v86(v39 + v40[6], v37, v38);
  *(v39 + v40[5]) = v41;
  *(v39 + v40[7]) = v15;
  *(v39 + v40[8]) = v13;
  sub_1001E81B8(&qword_101699908, type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent);
  v42 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 264) = v42;
  *(v0 + 272) = v43;
  v44 = v42;
  v45 = v43;
  v46 = *(v0 + 144);
  v47 = (*(v0 + 224) + *(*(v0 + 216) + 20));
  v48 = *v47;
  v49 = v47[1];
  *(v0 + 56) = *v47;
  *(v0 + 64) = v49;
  sub_100017D5C(v48, v49);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v50 = *(v0 + 168);
  v51 = *(v0 + 144);
  *(v0 + 72) = v44;
  *(v0 + 80) = v45;
  sub_1000E0A3C();
  P256.Signing.PrivateKey.signature<A>(for:)();
  v52 = (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v53 = sub_100646BE0(v52);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v54 = qword_10177C218;
  v55 = [objc_opt_self() sharedInstance];
  v56 = [v55 isInternalBuild];

  if ((v56 & 1) != 0 && (v57 = String._bridgeToObjectiveC()(), v58 = [v54 BOOLForKey:v57], v57, v58))
  {
  }

  else
  {
    v59 = *(v0 + 168);
    v60 = P256.Signing.ECDSASignature.derRepresentation.getter();
    v62 = v61;
    v63 = Data.base64EncodedString(options:)(0);
    sub_100016590(v60, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v53;
    sub_100FFACA0(v63._countAndFlagsBits, v63._object, 0xD000000000000012, 0x800000010134D2A0, isUniquelyReferenced_nonNull_native);
  }

  *(v0 + 280) = v53;
  v66 = *(v0 + 248);
  v65 = *(v0 + 256);
  v67 = *(v0 + 232);
  v68 = *(v0 + 240);
  v69 = *(v0 + 224);
  v70 = *(v0 + 184);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_1001E7DCC(v70, type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent);
  sub_1001E7DCC(v69, type metadata accessor for KeyDropJoinToken);
  v71 = *(v68 + 8);
  v71(v66, v67);
  v71(v65, v67);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_1000076D4(v72, qword_10177CDD0);

  sub_100017D5C(v44, v45);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();

  sub_100016590(v44, v45);
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v88 = v76;
    *v75 = 136315138;
    v77 = sub_100646BE8(v44, v45);
    if (v78)
    {
      v79 = v78;
    }

    else
    {
      v77 = 7104878;
      v79 = 0xE300000000000000;
    }

    v80 = sub_1000136BC(v77, v79, &v88);

    *(v75 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v73, v74, "KeyDropRegisterAPNSTokenRequest: %s", v75, 0xCu);
    sub_100007BAC(v76);
  }

  *(v0 + 40) = &type metadata for KeyDropRegisterAPNSTokenRequest;
  *(v0 + 48) = sub_1001E7E2C();
  *(v0 + 16) = v53;
  *(v0 + 24) = v44;
  *(v0 + 32) = v45;

  sub_100017D5C(v44, v45);
  v81 = swift_task_alloc();
  *(v0 + 288) = v81;
  *v81 = v0;
  v81[1] = sub_1001E7A0C;
  v82 = *(v0 + 120);

  return sub_10103C29C(v0 + 16, 6);
}

uint64_t sub_1001E7A0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = *(v4 + 120);
    v8 = sub_1001E7C38;
  }

  else
  {
    v9 = *(v4 + 120);
    *(v4 + 305) = a1 & 1;
    sub_100007BAC((v4 + 16));
    v8 = sub_1001E7B50;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001E7B50()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);

  sub_100016590(v3, v2);

  v11 = *(v0 + 8);
  v12 = *(v0 + 305);

  return v11(v12);
}

uint64_t sub_1001E7C38()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  sub_100016590(v3, v2);
  sub_100007BAC(v0 + 2);
  v4 = v0[37];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[23];
  v10 = v0[21];
  v11 = v0[18];

  v12 = v0[1];

  return v12(0);
}

uint64_t type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent()
{
  result = qword_101699970;
  if (!qword_101699970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E7D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropJoinToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E7DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E7E2C()
{
  result = qword_101699910;
  if (!qword_101699910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyDropRegisterAPNSTokenResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for HeartbeatConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001E7F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E7F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001E8004()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1001E8098();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001E8098()
{
  if (!qword_101699980)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101699980);
    }
  }
}

unint64_t sub_1001E80E8(uint64_t a1)
{
  result = sub_1001E8110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E8110()
{
  result = qword_1016999C0;
  if (!qword_1016999C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999C0);
  }

  return result;
}

unint64_t sub_1001E8164()
{
  result = qword_1016999D0;
  if (!qword_1016999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999D0);
  }

  return result;
}

uint64_t sub_1001E81B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001E8200()
{
  result = qword_1016999D8;
  if (!qword_1016999D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999D8);
  }

  return result;
}

unint64_t sub_1001E8254()
{
  result = qword_1016B2860;
  if (!qword_1016B2860)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2860);
  }

  return result;
}

unint64_t sub_1001E82D0()
{
  result = qword_1016999E8;
  if (!qword_1016999E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999E8);
  }

  return result;
}

unint64_t sub_1001E8348()
{
  result = qword_1016999F8;
  if (!qword_1016999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999F8);
  }

  return result;
}

unint64_t sub_1001E83A0()
{
  result = qword_101699A00;
  if (!qword_101699A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A00);
  }

  return result;
}

unint64_t sub_1001E83F8()
{
  result = qword_101699A08;
  if (!qword_101699A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A08);
  }

  return result;
}

unint64_t sub_1001E8450()
{
  result = qword_101699A10;
  if (!qword_101699A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A10);
  }

  return result;
}

unint64_t sub_1001E84A8()
{
  result = qword_101699A18;
  if (!qword_101699A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A18);
  }

  return result;
}

unint64_t sub_1001E8500()
{
  result = qword_101699A20;
  if (!qword_101699A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A20);
  }

  return result;
}

uint64_t sub_1001E8554()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v10 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074D34(v15[1]);
  v12 = v11;
  v13 = v11;

  static Calendar.current.getter();
  result = (*(v1 + 104))(v4, enum case for Calendar.Component.second(_:), v0);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 9.22337204e18)
  {
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1001E87D4(uint64_t a1)
{
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v1[20] = v3;
  v4 = type metadata accessor for DeviceIdentityUtility();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v7 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 12;
  v1[21] = v7;
  v1[14] = a1;
  v10 = type metadata accessor for SharingCircleKeyManager();
  v11 = swift_allocObject();

  swift_defaultActor_initialize();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v11 + 112) = v12;
  *(v11 + 120) = a1;
  v1[18] = v10;
  v1[19] = &off_10164E4F0;
  v1[15] = v11;
  return v1;
}

uint64_t sub_1001E8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for SharingCircleSecret();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = type metadata accessor for SharingCircleSecretValue();
  v4[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v13 = type metadata accessor for SymmetricKey256();
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v15 = *(v14 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001E8B0C, v3, 0);
}

uint64_t sub_1001E8B0C()
{
  v72 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = Data.init(base64Encoded:options:)();
  v0[22] = v3;
  v0[23] = v4;
  if (v4 >> 60 == 15)
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[3];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177AE40);
    (*(v6 + 16))(v5, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v71[0] = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_1000136BC(v18, v20, v71);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid decryption key for share identifier %{private,mask.hash}s.", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    sub_1002021D0();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    v24 = v0[21];
    v26 = v0[17];
    v25 = v0[18];
    v28 = v0[15];
    v27 = v0[16];
    v30 = v0[11];
    v29 = v0[12];
    v31 = v0[9];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v22 = v0[21];
    sub_100017D5C(v3, v4);
    SymmetricKey256.init(data:)();
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v34 = v0[18];
    v35 = v0[13];
    v36 = v0[14];
    v37 = v0[3];
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177AE40);
    v70 = *(v36 + 16);
    v70(v34, v37, v35);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[18];
    v43 = v0[13];
    v44 = v0[14];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71[0] = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v69 = *(v44 + 8);
      v69(v42, v43);
      v50 = sub_1000136BC(v47, v49, v71);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v39, v40, "Saving decryption key for the share %{private,mask.hash}s.", v45, 0x16u);
      sub_100007BAC(v46);
    }

    else
    {

      v69 = *(v44 + 8);
      v69(v42, v43);
    }

    v52 = v0[16];
    v51 = v0[17];
    v54 = v0[12];
    v53 = v0[13];
    v56 = v0[10];
    v55 = v0[11];
    v57 = v0[9];
    v58 = v0[7];
    v68 = v0[6];
    v59 = v0[3];
    (*(v0[20] + 16))(v54, v0[21], v0[19]);
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v70(v52, v59, v53);
    sub_100203698(v54, v55, type metadata accessor for SharingCircleSecretValue);
    *v57 = xmmword_10138C660;
    v70(v57 + v58[5], v51, v53);
    v70(v57 + v58[6], v52, v53);
    v60 = sub_101315BA4();
    v61 = (v57 + v58[8]);
    *v61 = v60;
    v61[1] = v62;
    v63 = sub_101315964();
    v65 = v64;
    sub_100203700(v55, type metadata accessor for SharingCircleSecretValue);
    v69(v52, v53);
    v69(v51, v53);
    v66 = (v57 + v58[7]);
    *v66 = v63;
    v66[1] = v65;
    v67 = *(v68 + 112);
    v0[24] = v67;

    return _swift_task_switch(sub_1001E919C, v67, 0);
  }
}

uint64_t sub_1001E919C()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1001E927C;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001E927C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1001E9394, v2, 0);
}

uint64_t sub_1001E9394()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_1001E93B8, v1, 0);
}

uint64_t sub_1001E93B8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 216) = *(*(v0 + 208) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  sub_1000BC4D4(&qword_101698D88, &qword_101390910);
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v0 + 248) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 224) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_100203698(v1, v6 + v5, type metadata accessor for SharingCircleSecret);
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_1001E94E8;

  return sub_10069208C(v6);
}

uint64_t sub_1001E94E8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(v2 + 240) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 248);
  v7 = *(v2 + 216);
  v8 = *(v2 + 48);

  swift_setDeallocating();
  sub_100203700(v5 + ((v6 + 32) & ~v6), type metadata accessor for SharingCircleSecret);
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_1001E97BC;
  }

  else
  {
    v9 = sub_1001E968C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001E968C()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v12 = v0[11];
  v9 = v0[9];
  sub_100006654(v0[22], v0[23]);
  sub_100203700(v9, type metadata accessor for SharingCircleSecret);
  sub_100203700(v8, type metadata accessor for SharingCircleSecretValue);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1001E97BC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];
  v5 = v0[9];
  sub_100006654(v0[22], v0[23]);
  sub_100203700(v5, type metadata accessor for SharingCircleSecret);
  sub_100203700(v4, type metadata accessor for SharingCircleSecretValue);
  (*(v2 + 8))(v1, v3);
  v6 = v0[30];
  v7 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001E98E8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001E99A8, v1, 0);
}

uint64_t sub_1001E99A8()
{
  v21 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting decryption key for the share %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[4] + 112);
  v0[8] = v18;

  return _swift_task_switch(sub_1001E9C04, v18, 0);
}

uint64_t sub_1001E9C04()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1001E9CE4;
  v5 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001E9CE4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1001E9DFC, v2, 0);
}

uint64_t sub_1001E9DFC()
{
  v1 = v0[4];
  v0[10] = v0[2];
  return _swift_task_switch(sub_1001E9E20, v1, 0);
}

uint64_t sub_1001E9E20()
{
  v0[11] = *(v0[10] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1001E9EE0;
  v2 = v0[3];

  return sub_100692A94(v2);
}

uint64_t sub_1001E9EE0()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_1001EA02C, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1001EA02C()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1001EA09C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for KeyGenerationBeaconInfo();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for BeaconIdentifier();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EA16C, v1, 0);
}

uint64_t sub_1001EA16C()
{
  v26 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = getuid();
  sub_1000294F0(v3);
  *(v0 + 128) = *(v2 + 20);
  UUID.init()();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE40);
  sub_100203698(v5, v4, type metadata accessor for BeaconIdentifier);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 56);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v2 + 20);
    type metadata accessor for UUID();
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100203700(v10, type metadata accessor for BeaconIdentifier);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating and saving KeyGenerationBeaconInfo into the observation store with beacon id %{private,mask.hash}s.", v11, 0x16u);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100203700(v10, type metadata accessor for BeaconIdentifier);
  }

  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  sub_100203698(*(v0 + 64), v19, type metadata accessor for BeaconIdentifier);
  v20 = v19 + v18[5];
  Date.init()();
  v21 = (v19 + v18[6]);
  *v21 = xmmword_10138BBF0;
  v21[1] = 0u;
  v21[2] = 0u;
  *(v19 + v18[7]) = 3;
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  *(v0 + 72) = v23;
  *v23 = v0;
  v23[1] = sub_1001EA478;

  return daemon.getter();
}

uint64_t sub_1001EA478(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100019348(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v6 = v12;
  v6[1] = sub_1001EA65C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001EA65C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v8 = v4[3];

    return _swift_task_switch(sub_1001EAA48, v8, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[14] = v9;
    *v9 = v7;
    v9[1] = sub_1001EA80C;
    v10 = v4[5];

    return sub_10098F23C(v10);
  }
}

uint64_t sub_1001EA80C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1001EAB04;
  }

  else
  {
    v6 = sub_1001EA938;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001EA938()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  sub_100203700(v5, type metadata accessor for KeyGenerationBeaconInfo);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v6, v4 + v2, v7);
  sub_100203700(v4, type metadata accessor for BeaconIdentifier);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001EAA48()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  sub_100203700(v0[5], type metadata accessor for KeyGenerationBeaconInfo);
  sub_100203700(v2, type metadata accessor for BeaconIdentifier);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001EAB04()
{
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  sub_100203700(v0[5], type metadata accessor for KeyGenerationBeaconInfo);
  sub_100203700(v3, type metadata accessor for BeaconIdentifier);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v4[15] = *(v7 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v4[20] = v10;
  v11 = *(v10 - 8);
  v4[21] = v11;
  v12 = *(v11 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = type metadata accessor for MemberSharingCircle();
  v4[24] = v13;
  v14 = *(v13 - 8);
  v4[25] = v14;
  v4[26] = *(v14 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v4[29] = v15;
  v16 = *(v15 - 8);
  v4[30] = v16;
  v17 = *(v16 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAEF0, v3, 0);
}

uint64_t sub_1001EAEF0()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 312) = v1;
  return _swift_task_switch(sub_1001EAF14, v1, 0);
}

uint64_t sub_1001EAF14()
{
  v1 = v0[39];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[40] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[41] = v4;
  *v3 = v0;
  v3[1] = sub_1001EAFF8;
  v5 = v0[39];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001EAFF8()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return _swift_task_switch(sub_1001EB110, v2, 0);
}

uint64_t sub_1001EB110()
{
  v1 = v0[11];
  v0[42] = v0[6];
  return _swift_task_switch(sub_1001EB134, v1, 0);
}

uint64_t sub_1001EB134()
{
  v0[43] = *(v0[42] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1001EB1F4;
  v2 = v0[10];

  return sub_10069176C(v2);
}

uint64_t sub_1001EB1F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v10 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v5 = v3[11];
    v6 = sub_1001ECBCC;
  }

  else
  {
    v7 = v3[43];
    v8 = v3[11];

    v6 = sub_1001EB31C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001EB31C()
{
  v1 = v0[45];
  if (*(v1 + 16))
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = type metadata accessor for SharingCircleSecret();
    v5 = *(v4 - 8);
    sub_100203698(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, type metadata accessor for SharingCircleSecret);

    (*(v5 + 56))(v3, 0, 1, v4);
    sub_10000B3A8(v3, &qword_101699BB0, &qword_1013B35F0);

    return _swift_task_switch(sub_1001EB5DC, v2, 0);
  }

  else
  {
    v6 = v0[38];
    v7 = v0[45];

    v8 = type metadata accessor for SharingCircleSecret();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_10000B3A8(v6, &qword_101699BB0, &qword_1013B35F0);
    sub_1002021D0();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
    v11 = v0[37];
    v10 = v0[38];
    v13 = v0[35];
    v12 = v0[36];
    v15 = v0[33];
    v14 = v0[34];
    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[27];
    v19 = v0[28];
    v22 = v0[23];
    v23 = v0[22];
    v24 = v0[19];
    v25 = v0[18];
    v26 = v0[17];
    v27 = v0[16];
    v28 = v0[12];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1001EB5DC()
{
  v1 = v0[39];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_1001EB6B4;
  v4 = v0[41];
  v5 = v0[39];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001EB6B4()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return _swift_task_switch(sub_1001EB7CC, v2, 0);
}

uint64_t sub_1001EB7CC()
{
  v1 = v0[11];
  v0[48] = v0[7];
  return _swift_task_switch(sub_1001EB7F0, v1, 0);
}

uint64_t sub_1001EB7F0()
{
  v1 = v0[37];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_1001EB89C;
  v4 = v0[48];
  v5 = v0[37];
  v6 = v0[9];
  v7 = v0[10];

  return sub_1012D866C(v7, v6, v5);
}

uint64_t sub_1001EB89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v8 = *(*v5 + 392);
  v9 = *v5;
  v7[50] = a1;
  v7[51] = a2;
  v7[52] = a3;
  v7[53] = a4;
  v7[54] = v4;

  v10 = v6[48];
  v11 = v6[37];
  v12 = v6[30];
  v13 = v6[29];
  v14 = v6[11];
  v15 = *(v12 + 8);
  v16 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v4)
  {
    v7[64] = v15;
    v7[65] = v16;
    v15(v11, v13);

    v17 = sub_1001ECD10;
  }

  else
  {
    v7[55] = v15;
    v7[56] = v16;
    v15(v11, v13);

    v17 = sub_1001EBA74;
  }

  return _swift_task_switch(v17, v14, 0);
}

uint64_t sub_1001EBA74()
{
  *(v0 + 16) = *(v0 + 416);
  *(v0 + 24) = *(v0 + 424);
  *(v0 + 32) = 0x676174726961;
  *(v0 + 40) = 0xE600000000000000;
  sub_1000DF96C();
  v1 = StringProtocol.contains<A>(_:)();
  v2 = *(v0 + 424);
  if (v1)
  {
    v3 = *(v0 + 424);

    v4 = sub_100314604(76, 21760);
  }

  else
  {
    v6 = *(v0 + 416);
    v7 = Data.init(stringLiteral:)();
    v4 = sub_100314594(v7, v8);
  }

  v68 = *(v0 + 408);
  v70 = *(v0 + 400);
  v64 = *(v0 + 288);
  v66 = *(v0 + 280);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 224);
  v12 = *(v0 + 192);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v60 = v13;
  v62 = *(v0 + 184);
  v58 = v5;
  *(v0 + 456) = v5;
  *(v0 + 464) = v4;
  v55 = v4;
  v15 = v12[5];
  v16 = *(v10 + 16);
  *(v0 + 472) = v16;
  *(v0 + 480) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(&v11[v15], v14, v9);
  v16(&v11[v12[6]], v13, v9);
  v16(&v11[v12[7]], v14, v9);
  v16(&v11[v12[8]], v14, v9);
  sub_1000BC4D4(&qword_101699BB8, &unk_1013926C0);
  v17 = (sub_1000BC4D4(&qword_101699BC0, &unk_1013C54C0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = v20 + v19;
  v22 = v17[14];
  UUID.init()();
  *(v21 + v22) = 1;
  v23 = sub_100908888(v20);
  swift_setDeallocating();
  sub_10000B3A8(v21, &qword_101699BC0, &unk_1013C54C0);
  swift_deallocClassInstance();
  *v11 = xmmword_10138C660;
  *&v11[v12[9]] = v23;
  v11[v12[10]] = 1;
  static Date.trustedNow.getter(v62);
  v16(v64, v60, v9);
  v16(v66, v14, v9);

  v24 = String._bridgeToObjectiveC()();
  v25 = IDSCopyIDForPhoneNumber();

  if (v25)
  {

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v30;
    v67 = v29;

    if (v58 >> 60 == 15)
    {
      v57 = 0;
      v63 = 0;
    }

    else
    {
      v31 = *(v0 + 152);
      v63 = sub_100313A28(v55, v58);
      sub_100313B54(v55, v58);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      v32 = *(v0 + 528);
      if (*(v0 + 532))
      {
        v32 = 0;
      }

      v57 = v32;
    }

    v71 = *(v0 + 312);
    v51 = *(v0 + 288);
    v34 = *(v0 + 232);
    v33 = *(v0 + 240);
    v35 = *(v0 + 144);
    v54 = *(v0 + 280);
    v56 = v35;
    v59 = *(v0 + 136);
    v69 = *(v0 + 120);
    v61 = *(v0 + 112);
    v36 = *(v0 + 104);
    v37 = *(v0 + 64);
    (*(*(v0 + 168) + 16))(&v37[v36[18]], *(v0 + 184), *(v0 + 160));
    v38 = *(v33 + 56);
    v38(&v37[v36[19]], 1, 1, v34);
    v38(v35, 1, 1, v34);
    v52 = v36[14];
    v53 = v36[15];
    v39 = &v37[v36[20]];
    v40 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v41 = *(*(v40 - 8) + 56);
    v41(v39, 1, 1, v40);
    *v37 = xmmword_10138C660;
    v42 = *(v33 + 32);
    v42(&v37[v36[5]], v51, v34);
    v42(&v37[v36[6]], v54, v34);
    v43 = &v37[v36[7]];
    *v43 = 1;
    *(v43 + 1) = v67;
    *(v43 + 2) = v65;
    v44 = &v37[v36[8]];
    *v44 = 0;
    *(v44 + 1) = 0xE000000000000000;
    v45 = &v37[v36[9]];
    *v45 = 12653;
    *(v45 + 1) = 0xE200000000000000;
    v46 = &v37[v36[10]];
    *v46 = 0x3130304131;
    *(v46 + 1) = 0xE500000000000000;
    *&v37[v36[11]] = v63;
    *&v37[v36[12]] = v57;
    v37[v36[13]] = 1;
    v37[v52] = 3;
    *&v37[v53] = -1;
    v37[v36[16]] = 5;
    *&v37[v36[17]] = 1;
    sub_10000B3A8(v39, &unk_1016AF890, &qword_1013926D0);
    *v39 = 1;
    sub_10012C154(v56, &v39[*(v40 + 20)]);
    v41(v39, 0, 1, v40);
    sub_100203698(v37, v59, type metadata accessor for SharedBeaconRecord);
    v47 = *(v61 + 80);
    *(v0 + 536) = v47;
    v48 = (v47 + 16) & ~v47;
    v49 = swift_allocObject();
    *(v0 + 488) = v49;
    sub_100203304(v59, v49 + v48, type metadata accessor for SharedBeaconRecord);
    v26 = sub_1001EC0E8;
    v27 = v71;
    v28 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_1001EC0E8()
{
  v16 = *(v0 + 488);
  v1 = *(v0 + 536);
  v2 = *(v0 + 312);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  sub_100203698(*(v0 + 64), v7, type metadata accessor for SharedBeaconRecord);
  sub_100203698(v3, v4, type metadata accessor for MemberSharingCircle);
  v9 = (v1 + 24) & ~v1;
  v10 = (v8 + v9 + *(v6 + 80)) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 496) = v11;
  *(v11 + 16) = v2;
  sub_100203304(v7, v11 + v9, type metadata accessor for SharedBeaconRecord);
  sub_100203304(v4, v11 + v10, type metadata accessor for MemberSharingCircle);
  v12 = (v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = sub_1002034DC;
  v12[1] = v16;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  *v14 = v0;
  v14[1] = sub_1001EC2E8;

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100203590, v11, &type metadata for () + 8);
}

uint64_t sub_1001EC2E8()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 496);
  v3 = *(*v0 + 312);
  v5 = *v0;

  return _swift_task_switch(sub_1001EC414, v3, 0);
}

uint64_t sub_1001EC414()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1001EC480, v2, 0);
}

uint64_t sub_1001EC480()
{
  v100 = v0;
  if (v0[51] && (v1 = v0[50], v2 = v0[51], v3 = String._bridgeToObjectiveC()(), , v4 = objc_opt_self(), v5 = [v4 handleWithString:v3], v3, v5))
  {
    v98 = v5;
    v6 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[12];
    type metadata accessor for ImportedShareUseCase();
    sub_1001E8554();
    v10 = *(v7 + 48);
    if (v10(v9, 1, v8) == 1)
    {
      v11 = v0[20];
      v12 = v0[12];
      v13 = v0[22];
      static Date.distantFuture.getter();
      if (v10(v12, 1, v11) != 1)
      {
        sub_10000B3A8(v0[12], &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[12], v0[20]);
    }

    v73 = v0[57];
    v74 = v0[58];
    v75 = v0[55];
    v76 = v0[56];
    v78 = v0[38];
    v79 = v0[37];
    v80 = v0[36];
    v81 = v0[35];
    v82 = v0[33];
    v83 = v0[32];
    v85 = v0[31];
    v71 = v0[29];
    v77 = v0[28];
    v87 = v0[27];
    v69 = v0[23];
    v67 = v0[22];
    v53 = v0[21];
    v72 = v0[20];
    v89 = v0[19];
    v91 = v0[18];
    v93 = v0[17];
    v95 = v0[16];
    v97 = v0[12];
    v54 = v0[9];
    v55 = v0[10];
    v68 = v0[34];
    UUID.init()();
    v56 = String._bridgeToObjectiveC()();
    v66 = [v4 handleWithRecipient:v56];

    v57 = objc_allocWithZone(SPBeaconShare);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v59 = UUID._bridgeToObjectiveC()().super.isa;
    v60 = UUID._bridgeToObjectiveC()().super.isa;
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    v62 = Date._bridgeToObjectiveC()().super.isa;
    v63 = Date._bridgeToObjectiveC()().super.isa;
    v70 = [v57 initWithIdentifier:isa beaconIdentifier:v59 sharingCircleIdentifier:v60 peerTrustIdentifier:v61 owner:v98 sharee:v66 state:5 creationDate:v62 expirationDate:v63];

    sub_100006654(v74, v73);
    v75(v68, v71);
    v64 = *(v53 + 8);
    v64(v67, v72);
    v64(v69, v72);
    sub_100203700(v77, type metadata accessor for MemberSharingCircle);

    v65 = v0[1];

    return v65(v70);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v15 = v0[59];
    v14 = v0[60];
    v16 = v0[33];
    v17 = v0[29];
    v18 = v0[10];
    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177AE40);
    v15(v16, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[55];
    v23 = v0[56];
    v25 = v0[33];
    v26 = v0[29];
    if (v22)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v99 = v28;
      *v27 = 136315138;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v24(v25, v26);
      v32 = sub_1000136BC(v29, v31, &v99);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "SPHandle failed for share id %s, privacy: .private(mask: .hash))", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      v24(v25, v26);
    }

    v34 = v0[57];
    v33 = v0[58];
    v35 = v0[28];
    v36 = v0[23];
    v38 = v0[20];
    v37 = v0[21];
    v39 = v0[8];
    sub_1002021D0();
    swift_allocError();
    *v40 = 2;
    swift_willThrow();
    sub_100006654(v33, v34);
    (*(v37 + 8))(v36, v38);
    sub_100203700(v35, type metadata accessor for MemberSharingCircle);
    sub_100203700(v39, type metadata accessor for SharedBeaconRecord);
    v42 = v0[37];
    v41 = v0[38];
    v44 = v0[35];
    v43 = v0[36];
    v46 = v0[33];
    v45 = v0[34];
    v47 = v0[31];
    v48 = v0[32];
    v50 = v0[27];
    v49 = v0[28];
    v84 = v0[23];
    v86 = v0[22];
    v88 = v0[19];
    v90 = v0[18];
    v92 = v0[17];
    v94 = v0[16];
    v96 = v0[12];

    v51 = v0[1];

    return v51();
  }
}

uint64_t sub_1001ECBCC()
{
  v1 = v0[43];

  v21 = v0[46];
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v14 = v0[23];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001ECD10()
{
  v50 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v6 = v0[9];
  v5 = v0[10];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE40);
  v8 = *(v4 + 16);
  v8(v2, v5, v3);
  v8(v1, v6, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[65];
  v13 = v0[64];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[29];
  if (v11)
  {
    log = v9;
    v17 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v10;
    v20 = v19;
    v13(v14, v16);
    v21 = sub_1000136BC(v18, v20, v49);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v13(v15, v16);
    v25 = sub_1000136BC(v22, v24, v49);

    *(v17 + 34) = v25;
    _os_log_impl(&_mh_execute_header, log, v44, "Failed to get displayIdentifier / product data for share id %{private,mask.hash}s,\nbeacon id %{private,mask.hash}s", v17, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v13(v15, v16);
    v13(v14, v16);
  }

  v26 = v0[54];
  swift_willThrow();
  v48 = v0[54];
  v28 = v0[37];
  v27 = v0[38];
  v30 = v0[35];
  v29 = v0[36];
  v32 = v0[33];
  v31 = v0[34];
  v34 = v0[31];
  v33 = v0[32];
  v36 = v0[27];
  v35 = v0[28];
  v39 = v0[23];
  v40 = v0[22];
  v41 = v0[19];
  v42 = v0[18];
  v43 = v0[17];
  v45 = v0[16];
  loga = v0[12];

  v37 = v0[1];

  return v37();
}