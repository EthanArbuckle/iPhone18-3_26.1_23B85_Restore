uint64_t sub_100DBD674(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v87 = a1;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v77 - v9;
  v11 = *(v2 + 160);
  v12 = type metadata accessor for AccessoryProductInfo();
  v13 = (a2 + *(v12 + 96));
  v14 = *v13;
  v15 = v13[1];

  v16 = sub_100D65C9C(v14, v15);
  v18 = v17;

  if (v18 >> 60 == 15)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_1016BB490);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to generate E1 blob.", v22, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v25 = sub_100F54748();
    if (v26 >> 60 == 15)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_1016BB490);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unable to generate FindMyNetworkId.", v30, 2u);
      }

      sub_100500BC4();
      swift_allocError();
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v31 + 16) = 3;
      swift_willThrow();
      return sub_100006654(v16, v18);
    }

    else
    {
      v84 = v26;
      v85 = v25;
      v80 = v12;
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      v33 = sub_1000076D4(v32, qword_1016BB490);
      sub_100017D5C(v16, v18);
      v78 = v33;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      sub_100006654(v16, v18);
      v36 = os_log_type_enabled(v34, v35);
      v82 = v10;
      v83 = v4;
      v81 = a2;
      v79 = v16;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v77 = v5;
        v38 = v37;
        v39 = swift_slowAlloc();
        v86[0] = v39;
        *v38 = 136315138;
        sub_100017D5C(v16, v18);
        v40 = Data.hexString.getter();
        v42 = v41;
        sub_100006654(v16, v18);
        v43 = sub_1000136BC(v40, v42, v86);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v34, v35, "E1: %s", v38, 0xCu);
        sub_100007BAC(v39);

        v5 = v77;
      }

      v44 = v84;
      v45 = v85;
      sub_100017D5C(v85, v84);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      sub_100006654(v45, v44);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v86[0] = v78;
        *v48 = 136315138;
        sub_100017D5C(v45, v44);
        v49 = Data.hexString.getter();
        v51 = v50;
        sub_100006654(v45, v44);
        v52 = sub_1000136BC(v49, v51, v86);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "findMyNetworkId: %s", v48, 0xCu);
        sub_100007BAC(v78);
      }

      v53 = v81;
      v54 = v87;
      v55 = *(v5 + 160);
      v56 = type metadata accessor for AccessoryMetadata(0);
      v57 = (v54 + *(v56 + 44));
      if (v57[2])
      {

        sub_100006654(v79, v18);
        v58 = 0;
        v59 = 0;
      }

      else
      {
        v60 = *v57;
        v61 = v57[1];

        v58 = sub_100B67D6C();
        v59 = v62;
        sub_100006654(v79, v18);
      }

      v63 = *(v55 + 96);
      *(v55 + 88) = v58;
      *(v55 + 96) = v59;

      v64 = *(v5 + 160);
      v65 = (v54 + *(v56 + 20));
      v67 = *v65;
      v66 = v65[1];
      v68 = *(v64 + 104);
      v69 = *(v64 + 112);
      *(v64 + 104) = *v65;
      *(v64 + 112) = v66;

      sub_100017D5C(v67, v66);
      sub_100006654(v68, v69);

      v70 = (*(v5 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
      v72 = *v70;
      v71 = v70[1];
      v73 = v84;
      *v70 = v85;
      v70[1] = v73;

      sub_100006654(v72, v71);

      v74 = *(v5 + 160);
      v75 = v82;
      sub_100DD9284(v53, v82, type metadata accessor for AccessoryProductInfo);
      (*(*(v80 - 8) + 56))(v75, 0, 1);
      v76 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();

      sub_10002311C(v75, v74 + v76, &qword_101697268, &qword_101394FE0);
      swift_endAccess();
    }
  }
}

void sub_100DBDD8C(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = v2[6];
  if (v3 >> 60 == 15)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing E1 blob to generate init pairing.", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v9 = v2[5];
    v10 = (v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v11 = *(v2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId + 8);
    if (v11 >> 60 == 15)
    {
      sub_100017D5C(v2[5], v2[6]);
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_1016BB490);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Missing FindMyNetworkId to generate init pairing.", v15, 2u);
      }

      sub_100500BC4();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 3;
      swift_willThrow();
      sub_100006654(v9, v3);
    }

    else
    {
      v17 = v1;
      v60 = a1;
      v18 = *v10;
      v19 = v2[2];
      v20 = v2[3];
      sub_100DE5458(v19, v20, v9, v3, *v10, v11, v57);
      v47 = v57[1];
      v44 = v57[0];
      v45 = v59;
      v46 = v58;
      sub_10002E98C(v9, v3);
      sub_10002E98C(v18, v11);
      sub_10002E98C(v9, v3);
      sub_10002E98C(v18, v11);
      sub_100017D5C(v19, v20);
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_1016BB490);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v42 = v18;
        v24 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *&v48 = v41;
        *v24 = 136315138;
        v25 = *(v17 + 160);
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        sub_100017D5C(v26, v27);
        v40 = v23;
        v28 = Data.hexString.getter();
        v43 = v9;
        v30 = v29;
        sub_100016590(v26, v27);
        v31 = sub_1000136BC(v28, v30, &v48);
        v9 = v43;

        *(v24 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v22, v40, "sessionNonce: %s", v24, 0xCu);
        sub_100007BAC(v41);

        v18 = v42;
      }

      v48 = v44;
      v49 = v47;
      *&v50 = v46;
      *(&v50 + 1) = v45;
      sub_1002807FC(&v48);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "generateInitPairingPayload request success.", v34, 2u);
      }

      sub_100006654(v18, v11);
      sub_100006654(v9, v3);

      v35 = v55;
      v36 = v60;
      v60[6] = v54;
      v36[7] = v35;
      v36[8] = v56;
      v37 = v51;
      v36[2] = v50;
      v36[3] = v37;
      v38 = v53;
      v36[4] = v52;
      v36[5] = v38;
      v39 = v49;
      *v36 = v48;
      v36[1] = v39;
    }
  }
}

uint64_t sub_100DBE2D8(uint64_t a1)
{
  v2[198] = v1;
  v2[197] = a1;
  v2[199] = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[200] = swift_task_alloc();
  v4 = type metadata accessor for PencilPairingLockCheckResponse();
  v2[201] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  v2[204] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[205] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[206] = v8;
  v9 = *(v8 - 8);
  v2[207] = v9;
  v10 = *(v9 + 64) + 15;
  v2[208] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[209] = v11;
  v12 = *(v11 - 8);
  v2[210] = v12;
  v13 = *(v12 + 64) + 15;
  v2[211] = swift_task_alloc();
  v14 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v2[212] = v14;
  v15 = *(v14 + 64) + 15;
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();

  return _swift_task_switch(sub_100DBE540, v1, 0);
}

uint64_t sub_100DBE540()
{
  v64 = v0;
  v1 = v0[198];
  v2 = *(v1 + 160);

  sub_100D66838(v0 + 78);

  memcpy(v0 + 40, v0 + 78, 0x130uLL);
  if (sub_100DD993C((v0 + 40)) == 1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016BB490);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to create pairing check data.", v6, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v7 = 0xD00000000000001ALL;
    *(v7 + 8) = 0x800000010134B3C0;
    *(v7 + 16) = 0;
    swift_willThrow();
LABEL_17:
    v49 = v0[214];
    v50 = v0[213];
    v51 = v0[211];
    v52 = v0[208];
    v53 = v0[205];
    v54 = v0[203];
    v55 = v0[202];
    v56 = v0[200];

    v57 = v0[1];

    return v57();
  }

  memcpy(v0 + 2, v0 + 40, 0x130uLL);
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v0[215] = sub_1000076D4(v8, qword_1016BB490);
  sub_1000D2A70((v0 + 78), (v0 + 116), &qword_1016BB8A8, &qword_1013E8918);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v11 = 136316162;
    v62 = v10;
    v12 = v0[32];
    v13 = v0[33];
    sub_100017D5C(v12, v13);
    v14 = Data.description.getter();
    v16 = v15;
    sub_100016590(v12, v13);
    v17 = sub_1000136BC(v14, v16, v63);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = v0[34];
    v19 = v0[35];
    sub_100017D5C(v18, v19);
    v20 = Data.description.getter();
    v22 = v21;
    sub_100016590(v18, v19);
    v23 = sub_1000136BC(v20, v22, v63);

    *(v11 + 14) = v23;
    *(v11 + 22) = 2080;
    v24 = v0[26];
    v25 = v0[27];
    sub_100017D5C(v24, v25);
    v26 = Data.description.getter();
    v28 = v27;
    sub_100016590(v24, v25);
    v29 = sub_1000136BC(v26, v28, v63);

    *(v11 + 24) = v29;
    *(v11 + 32) = 2080;
    v30 = v0[24];
    v31 = v0[25];
    sub_100017D5C(v30, v31);
    v32 = Data.description.getter();
    v34 = v33;
    sub_100016590(v30, v31);
    v35 = sub_1000136BC(v32, v34, v63);

    *(v11 + 34) = v35;
    *(v11 + 42) = 2080;
    v36 = v0[22];
    v37 = v0[23];
    sub_100017D5C(v36, v37);
    v38 = Data.description.getter();
    v40 = v39;
    sub_100016590(v36, v37);
    v41 = sub_1000136BC(v38, v40, v63);

    *(v11 + 44) = v41;
    _os_log_impl(&_mh_execute_header, v9, v62, "nonce: %s e1: %s attestation: %s\ncsr: %s certs: %s", v11, 0x34u);
    swift_arrayDestroy();
  }

  v42 = (*(v1 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v43 = *v42;
  v0[216] = *v42;
  v44 = v42[1];
  v0[217] = v44;
  if (v44 >> 60 == 15)
  {
LABEL_14:
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid serial number.", v47, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v48 = xmmword_1013E84F0;
    *(v48 + 16) = 3;
    swift_willThrow();
    sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
    goto LABEL_17;
  }

  v0[193] = v43;
  v0[194] = v44;
  sub_100017D5C(v43, v44);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v43, v44);
    goto LABEL_14;
  }

  v0[218] = Data.trimmed.getter();
  v0[219] = v59;
  v60 = async function pointer to daemon.getter[1];
  v61 = swift_task_alloc();
  v0[220] = v61;
  *v61 = v0;
  v61[1] = sub_100DBEC00;

  return daemon.getter();
}

uint64_t sub_100DBEC00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1760);
  v12 = *v1;
  *(v3 + 1768) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1776) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DBEDDC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DBEDDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1776);
  v10 = *v2;
  v3[223] = a1;
  v3[224] = v1;

  if (v1)
  {
    v5 = v3[198];
    v6 = sub_100DC0854;
  }

  else
  {
    v7 = v3[221];
    v8 = v3[198];

    v6 = sub_100DBEF08;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DBEF08()
{
  v1 = v0[223];
  v2 = v0[199];
  v3 = swift_allocObject();
  v0[225] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[226] = v5;
  *v5 = v0;
  v5[1] = sub_100DBF008;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1013E8928, v3, &type metadata for () + 8);
}

uint64_t sub_100DBF008()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v9 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v4 = *(v2 + 1584);
    v5 = sub_100DC096C;
  }

  else
  {
    v6 = *(v2 + 1800);
    v7 = *(v2 + 1584);

    v5 = sub_100DBF130;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DBF14C()
{
  v1 = *(v0[223] + 128);
  v2 = swift_task_alloc();
  v0[228] = v2;
  *v2 = v0;
  v2[1] = sub_100DBF1EC;
  v3 = v0[219];
  v4 = v0[218];

  return sub_100C580A0(v4, v3);
}

uint64_t sub_100DBF1EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1824);
  v6 = *v2;
  *(v4 + 1832) = a1;
  *(v4 + 1840) = v1;

  v7 = *(v3 + 1584);
  if (v1)
  {
    v8 = sub_100DBF6A0;
  }

  else
  {
    v8 = sub_100DBF324;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DBF324()
{
  v25 = v0;
  result = *(v0 + 1832);
  v2 = *(result + 16);
  *(v0 + 1848) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 1696) + 80);
    *(v0 + 1896) = v3;
    *(v0 + 1856) = 0;
    if (*(result + 16))
    {
      v4 = *(v0 + 1720);
      v5 = *(v0 + 1712);
      v6 = *(v0 + 1704);
      sub_100DD9284(result + ((v3 + 32) & ~v3), v5, type metadata accessor for LocalFindableAccessoryRecord);
      sub_100DD9284(v5, v6, type metadata accessor for LocalFindableAccessoryRecord);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 1704);
      if (v9)
      {
        v11 = *(v0 + 1648);
        v12 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v12 = 136446466;
        *(v12 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v24);
        *(v12 + 12) = 2082;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        sub_100DD92EC(v10, type metadata accessor for LocalFindableAccessoryRecord);
        v16 = sub_1000136BC(v13, v15, &v24);

        *(v12 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Removing dupe: %{public}s", v12, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100DD92EC(v10, type metadata accessor for LocalFindableAccessoryRecord);
      }

      v20 = *(v0 + 1688);
      (*(*(v0 + 1656) + 16))(*(v0 + 1664), *(v0 + 1712), *(v0 + 1648));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v21 = swift_task_alloc();
      *(v0 + 1864) = v21;
      *v21 = v0;
      v21[1] = sub_100DBF7B8;
      v22 = *(v0 + 1688);
      v23 = *(v0 + 1584);

      return sub_100DC1228(v22, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v17 = swift_task_alloc();
    *(v0 + 1880) = v17;
    *v17 = v0;
    v17[1] = sub_100DBFCD0;
    v18 = *(v0 + 1640);
    v19 = *(v0 + 1584);

    return sub_100DC34DC(v18, v0 + 16);
  }

  return result;
}

uint64_t sub_100DBF6A0()
{
  v1 = v0[223];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];

  sub_100016590(v3, v2);
  sub_100006654(v5, v4);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  v6 = v0[230];
  v7 = v0[214];
  v8 = v0[213];
  v9 = v0[211];
  v10 = v0[208];
  v11 = v0[205];
  v12 = v0[203];
  v13 = v0[202];
  v14 = v0[200];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100DBF7B8()
{
  v2 = *v1;
  v3 = *(*v1 + 1864);
  v13 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v4 = v2[229];
    v5 = v2[211];
    v6 = v2[210];
    v7 = v2[209];
    v8 = v2[198];
    (*(v6 + 8))(v5, v7);

    v9 = sub_100DC0A94;
    v10 = v8;
  }

  else
  {
    v11 = v2[198];
    (*(v2[210] + 8))(v2[211], v2[209]);
    v9 = sub_100DBF920;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100DBF920()
{
  v28 = v0;
  v1 = *(v0 + 1848);
  v2 = *(v0 + 1856) + 1;
  result = sub_100DD92EC(*(v0 + 1712), type metadata accessor for LocalFindableAccessoryRecord);
  if (v2 == v1)
  {
    v4 = *(v0 + 1832);

    v5 = swift_task_alloc();
    *(v0 + 1880) = v5;
    *v5 = v0;
    v5[1] = sub_100DBFCD0;
    v6 = *(v0 + 1640);
    v7 = *(v0 + 1584);

    return sub_100DC34DC(v6, v0 + 16);
  }

  else
  {
    v8 = *(v0 + 1856) + 1;
    *(v0 + 1856) = v8;
    v9 = *(v0 + 1832);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 1720);
      v11 = *(v0 + 1712);
      v12 = *(v0 + 1704);
      sub_100DD9284(v9 + ((*(v0 + 1896) + 32) & ~*(v0 + 1896)) + *(*(v0 + 1696) + 72) * v8, v11, type metadata accessor for LocalFindableAccessoryRecord);
      sub_100DD9284(v11, v12, type metadata accessor for LocalFindableAccessoryRecord);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 1704);
      if (v15)
      {
        v17 = *(v0 + 1648);
        v18 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v18 = 136446466;
        *(v18 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v27);
        *(v18 + 12) = 2082;
        sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        sub_100DD92EC(v16, type metadata accessor for LocalFindableAccessoryRecord);
        v22 = sub_1000136BC(v19, v21, &v27);

        *(v18 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s Removing dupe: %{public}s", v18, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100DD92EC(v16, type metadata accessor for LocalFindableAccessoryRecord);
      }

      v23 = *(v0 + 1688);
      (*(*(v0 + 1656) + 16))(*(v0 + 1664), *(v0 + 1712), *(v0 + 1648));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v24 = swift_task_alloc();
      *(v0 + 1864) = v24;
      *v24 = v0;
      v24[1] = sub_100DBF7B8;
      v25 = *(v0 + 1688);
      v26 = *(v0 + 1584);

      return sub_100DC1228(v25, 0);
    }
  }

  return result;
}

uint64_t sub_100DBFCD0()
{
  v1 = *(*v0 + 1880);
  v2 = *(*v0 + 1584);
  v4 = *v0;

  return _swift_task_switch(sub_100DBFDE0, v2, 0);
}

uint64_t sub_100DBFDE0()
{
  v54 = v0;
  v1 = v0[205];
  v2 = v0[204];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[215];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v5;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Pairing lock check failed. Error: %{public}@", v8, 0xCu);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
    }

    v0[195] = v5;
    type metadata accessor for SPPairingSessionError(0);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.code.getter();
    v12 = v0[223];
    v13 = v0[219];
    v14 = v0[218];
    v15 = v0[217];
    v16 = v0[216];
    if (v0[196] == 18)
    {
      sub_100500BC4();
      swift_allocError();
      *v17 = xmmword_1013E84E0;
      *(v17 + 16) = 3;
      swift_willThrow();
    }

    else
    {
      sub_100500BC4();
      swift_allocError();
      *v30 = v5;
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      swift_willThrow();
      v31 = v5;
    }

    sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
    sub_100006654(v16, v15);

    sub_100016590(v14, v13);

    v32 = v0[214];
    v33 = v0[213];
    v34 = v0[211];
    v35 = v0[208];
    v36 = v0[205];
    v37 = v0[203];
    v38 = v0[202];
    v39 = v0[200];

    v40 = v0[1];

    return v40();
  }

  else
  {
    v18 = v0[203];
    v19 = v0[202];
    sub_100DD921C(v1, v18, type metadata accessor for PencilPairingLockCheckResponse);
    sub_100DD9284(v18, v19, type metadata accessor for PencilPairingLockCheckResponse);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[202];
    if (v22)
    {
      v24 = v0[201];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v53 = v26;
      *v25 = 136446210;
      v27 = (v23 + *(v24 + 40));
      if (v27[1] >> 60 == 15)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v42 = *v27;
        v28 = Data.hexString.getter();
        v29 = v43;
      }

      sub_100DD92EC(v0[202], type metadata accessor for PencilPairingLockCheckResponse);
      v44 = sub_1000136BC(v28, v29, &v53);

      *(v25 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received SeedS and S3 from server. Pairing token: %{public}s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100DD92EC(v23, type metadata accessor for PencilPairingLockCheckResponse);
    }

    v45 = v0[207];
    v46 = v0[206];
    v47 = v0[200];
    v48 = *(v0[198] + 160);
    (*(v45 + 16))(v47, v0[203] + *(v0[201] + 32), v46);
    (*(v45 + 56))(v47, 0, 1, v46);
    v49 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();

    sub_10002311C(v47, v48 + v49, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();

    v50 = swift_task_alloc();
    v0[236] = v50;
    *v50 = v0;
    v50[1] = sub_100DC0384;
    v51 = v0[203];
    v52 = v0[198];

    return sub_100DC3D28((v0 + 172), v51);
  }
}

uint64_t sub_100DC0384()
{
  v1 = *(*v0 + 1888);
  v2 = *(*v0 + 1584);
  v4 = *v0;

  return _swift_task_switch(sub_100DC0494, v2, 0);
}

uint64_t sub_100DC0494()
{
  *(v0 + 1312) = *(v0 + 1456);
  *(v0 + 1328) = *(v0 + 1472);
  *(v0 + 1344) = *(v0 + 1488);
  *(v0 + 1360) = *(v0 + 1504);
  *(v0 + 1248) = *(v0 + 1392);
  *(v0 + 1264) = *(v0 + 1408);
  *(v0 + 1280) = *(v0 + 1424);
  *(v0 + 1296) = *(v0 + 1440);
  *(v0 + 1232) = *(v0 + 1376);
  if (sub_100DD9A00(v0 + 1232) == 1)
  {
    v1 = *(v0 + 1784);
    v2 = *(v0 + 1752);
    v3 = *(v0 + 1744);
    v4 = *(v0 + 1736);
    v5 = *(v0 + 1728);
    v6 = *(v0 + 1624);
    sub_100500BC4();
    swift_allocError();
    *v7 = 0xD00000000000001ALL;
    *(v7 + 8) = 0x8000000101370CF0;
    *(v7 + 16) = 0;
    swift_willThrow();
    sub_100016590(v3, v2);

    sub_100006654(v5, v4);
    sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
    sub_100DD92EC(v6, type metadata accessor for PencilPairingLockCheckResponse);
    v8 = *(v0 + 1712);
    v9 = *(v0 + 1704);
    v10 = *(v0 + 1688);
    v11 = *(v0 + 1664);
    v12 = *(v0 + 1640);
    v13 = *(v0 + 1624);
    v14 = *(v0 + 1616);
    v15 = *(v0 + 1600);

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = *(v0 + 1720);
    v42 = *(v0 + 1328);
    v43 = *(v0 + 1344);
    v44 = *(v0 + 1360);
    v38 = *(v0 + 1264);
    v39 = *(v0 + 1280);
    v40 = *(v0 + 1296);
    v41 = *(v0 + 1312);
    v36 = *(v0 + 1232);
    v37 = *(v0 + 1248);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 1784);
    v22 = *(v0 + 1752);
    v23 = *(v0 + 1744);
    v24 = *(v0 + 1736);
    v25 = *(v0 + 1728);
    if (v20)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully generated finalize pairing command.", v26, 2u);

      sub_100016590(v23, v22);

      sub_100006654(v25, v24);
      sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
    }

    else
    {
      sub_10000B3A8(v0 + 624, &qword_1016BB8A8, &qword_1013E8918);
      sub_100006654(v25, v24);

      sub_100016590(v23, v22);
    }

    v27 = *(v0 + 1712);
    v28 = *(v0 + 1704);
    v29 = *(v0 + 1688);
    v30 = *(v0 + 1664);
    v31 = *(v0 + 1640);
    v32 = *(v0 + 1616);
    v33 = *(v0 + 1600);
    v34 = *(v0 + 1576);
    sub_100DD92EC(*(v0 + 1624), type metadata accessor for PencilPairingLockCheckResponse);
    v34[6] = v42;
    v34[7] = v43;
    v34[8] = v44;
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[5] = v41;
    *v34 = v36;
    v34[1] = v37;

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_100DC0854()
{
  v1 = v0[221];
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];

  sub_100016590(v3, v2);
  sub_100006654(v5, v4);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  v6 = v0[224];
  v7 = v0[214];
  v8 = v0[213];
  v9 = v0[211];
  v10 = v0[208];
  v11 = v0[205];
  v12 = v0[203];
  v13 = v0[202];
  v14 = v0[200];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100DC096C()
{
  v1 = v0[225];
  v2 = v0[223];
  v3 = v0[219];
  v4 = v0[218];
  v5 = v0[217];
  v6 = v0[216];
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  sub_100006654(v6, v5);

  sub_100016590(v4, v3);

  v7 = v0[227];
  v8 = v0[214];
  v9 = v0[213];
  v10 = v0[211];
  v11 = v0[208];
  v12 = v0[205];
  v13 = v0[203];
  v14 = v0[202];
  v15 = v0[200];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DC0A94()
{
  v1 = v0[223];
  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[214];
  sub_100016590(v0[218], v0[219]);

  sub_100006654(v3, v2);
  sub_10000B3A8((v0 + 78), &qword_1016BB8A8, &qword_1013E8918);
  sub_100DD92EC(v4, type metadata accessor for LocalFindableAccessoryRecord);
  v5 = v0[234];
  v6 = v0[214];
  v7 = v0[213];
  v8 = v0[211];
  v9 = v0[208];
  v10 = v0[205];
  v11 = v0[203];
  v12 = v0[202];
  v13 = v0[200];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DC0BC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100DC0C88, 0, 0);
}

uint64_t sub_100DC0C88()
{
  v9 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available... %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100DC0E2C, v6, 0);
}

uint64_t sub_100DC0E2C()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100DC0EDC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100DC0EDC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_100DC114C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_100DC1010;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DC1010()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101370D10, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DC114C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100DC11C4, 0, 0);
}

uint64_t sub_100DC11C4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_100DC1228(uint64_t a1, char a2)
{
  *(v3 + 388) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016BB858, &unk_1013E87B8) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v3 + 104) = v8;
  v9 = *(v8 - 8);
  *(v3 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  v12 = type metadata accessor for LocalFindableAccessoryRecord();
  *(v3 + 136) = v12;
  v13 = *(v12 - 8);
  *(v3 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 160) = v15;
  v16 = *(v15 - 8);
  *(v3 + 168) = v16;
  *(v3 + 176) = *(v16 + 64);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100DC149C, v2, 0);
}

uint64_t sub_100DC149C()
{
  v39 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v5, qword_1016BB490);
  v6 = *(v2 + 16);
  v0[27] = v6;
  v0[28] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  if (v9)
  {
    v37 = v8;
    v13 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000136BC(0xD00000000000003ALL, 0x8000000101370BF0, v38);
    *(v13 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, v38);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v37, "%{public}s for %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[29] = v17;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100D97688(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v20 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.lineUp(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v21 = async function pointer to daemon.getter[1];
    v22 = swift_task_alloc();
    v0[30] = v22;
    *v22 = v0;
    v22[1] = sub_100DC1938;

    return daemon.getter();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Feature.FindMy.lineUp is disabled!", v25, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v26 = xmmword_10139D960;
    *(v26 + 16) = 3;
    swift_willThrow();
    v28 = v0[24];
    v27 = v0[25];
    v29 = v0[23];
    v30 = v0[19];
    v32 = v0[15];
    v31 = v0[16];
    v34 = v0[11];
    v33 = v0[12];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_100DC1938(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v12 = *v1;
  *(v3 + 248) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 256) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DC1B14;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DC1B14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v10 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = sub_100DC321C;
  }

  else
  {
    v7 = v3[31];
    v8 = v3[8];

    v6 = sub_100DC1C3C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DC1C3C()
{
  v1 = v0[33];
  v2 = v0[20];
  v3 = v0[15];
  v4 = v0[7];
  Identifier.id.getter();

  return _swift_task_switch(sub_100DC1CB0, v1, 0);
}

uint64_t sub_100DC1CB0()
{
  v1 = *(v0[33] + 128);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_100DC1D4C;
  v4 = v0[15];
  v3 = v0[16];

  return sub_100C57B00(v3, v4);
}

uint64_t sub_100DC1D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v8 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[33];
    v5 = sub_100DC2200;
  }

  else
  {
    v6 = v2[8];
    (*(v2[14] + 8))(v2[15], v2[13]);
    v5 = sub_100DC1E84;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DC1E84()
{
  v43 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 208);
    v6 = *(v0 + 184);
    v7 = *(v0 + 160);
    v8 = *(v0 + 56);
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    v4(v6, v8, v7);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 232);
    v13 = *(v0 + 184);
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    if (v11)
    {
      v41 = *(v0 + 232);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v41(v13, v14);
      v21 = sub_1000136BC(v18, v20, &v42);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "No LocalFindableAccessoryRecord corresponds to peripheralIdentifier: %{public}s", v16, 0xCu);
      sub_100007BAC(v17);
    }

    else
    {

      v12(v13, v14);
    }

    v30 = *(v0 + 264);
    sub_100500BC4();
    swift_allocError();
    *v31 = xmmword_10139D9A0;
    *(v31 + 16) = 3;
    swift_willThrow();

    v33 = *(v0 + 192);
    v32 = *(v0 + 200);
    v34 = *(v0 + 184);
    v35 = *(v0 + 152);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v22 = *(v0 + 152);
    sub_100DD921C(v2, v22, type metadata accessor for LocalFindableAccessoryRecord);
    v23 = *(v1 + 28);
    *(v0 + 384) = v23;
    v24 = (v22 + v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = swift_task_alloc();
    *(v0 + 296) = v27;
    *v27 = v0;
    v27[1] = sub_100DC2348;
    v28 = *(v0 + 64);

    return sub_100DD6AEC(v26, v25);
  }
}

uint64_t sub_100DC2200()
{
  v1 = v0[8];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_100DC227C, v1, 0);
}

uint64_t sub_100DC227C()
{
  v1 = v0[33];

  v2 = v0[36];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[11];
  v9 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100DC2348()
{
  v2 = *(*v1 + 296);
  v3 = *v1;
  *(v3 + 304) = v0;

  if (v0)
  {
    v4 = *(v3 + 64);

    return _swift_task_switch(sub_100DC32E8, v4, 0);
  }

  else
  {
    v5 = (*(v3 + 152) + *(v3 + 384));
    v7 = *v5;
    v6 = v5[1];
    v8 = swift_task_alloc();
    *(v3 + 312) = v8;
    *v8 = v3;
    v8[1] = sub_100DC24E0;
    v9 = *(v3 + 64);
    v10 = *(v3 + 152);

    return sub_100DA6CF8(v10, v7, v6);
  }
}

uint64_t sub_100DC24E0()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100DC25F0, v2, 0);
}

uint64_t sub_100DC25F0()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v2;

  return _swift_task_switch(sub_100DC2668, v1, 0);
}

uint64_t sub_100DC2668()
{
  v1 = *(v0[33] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_100DC2730;
  v4 = v0[40];
  v5 = v0[12];

  return v7(v5, &unk_1013E87E0, v4);
}

uint64_t sub_100DC2730()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[33];
    v5 = sub_100DC2AC4;
  }

  else
  {
    v6 = v2[40];
    v7 = v2[8];

    v5 = sub_100DC2858;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DC2858()
{
  v1 = v0[33];
  (*(v0[10] + 104))(v0[11], enum case for CloudKitCoordinator.Database.private(_:), v0[9]);

  return _swift_task_switch(sub_100DC28E0, v1, 0);
}

uint64_t sub_100DC28E0()
{
  v1 = *(v0[33] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_100DC2990;
  v4 = v0[11];
  v5 = v0[12];

  return v7(v5, v4);
}

uint64_t sub_100DC2990()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = v2[33];
    v5 = sub_100DC2E4C;
  }

  else
  {
    v6 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_100DC2C1C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DC2AC4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100DC2B30, v2, 0);
}

uint64_t sub_100DC2B30()
{
  v1 = v0[33];
  v2 = v0[19];

  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v3 = v0[42];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[11];
  v10 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100DC2C1C()
{
  if (*(v0 + 388) == 1)
  {
    v1 = *(v0 + 224);
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = *(v0 + 64);
    (*(v0 + 216))(v2, *(v0 + 56), v5);
    v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v8 = swift_allocObject();
    *(v0 + 360) = v8;
    *(v8 + 16) = v6;
    (*(v4 + 32))(v8 + v7, v2, v5);
    v9 = async function pointer to withTimeout<A>(_:block:)[1];

    v10 = swift_task_alloc();
    *(v0 + 368) = v10;
    *v10 = v0;
    v10[1] = sub_100DC2FCC;

    return withTimeout<A>(_:block:)(v10, 0x40AAD21B3B700000, 3, &unk_1013E87F0, v8, &type metadata for () + 8);
  }

  else
  {
    v11 = *(v0 + 264);
    sub_10000B3A8(*(v0 + 96), &qword_1016BB858, &unk_1013E87B8);

    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v14 = *(v0 + 184);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    sub_100DD92EC(*(v0 + 152), type metadata accessor for LocalFindableAccessoryRecord);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100DC2E4C()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return _swift_task_switch(sub_100DC2EC4, v1, 0);
}

uint64_t sub_100DC2EC4()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[12];

  sub_10000B3A8(v3, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = v0[44];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[11];
  v11 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DC2FCC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 360);
  v6 = *(v2 + 64);

  if (v0)
  {
    v7 = sub_100DC33D4;
  }

  else
  {
    v7 = sub_100DC3114;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DC3114()
{
  v1 = v0[33];
  v2 = v0[12];

  sub_10000B3A8(v2, &qword_1016BB858, &unk_1013E87B8);
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  sub_100DD92EC(v0[19], type metadata accessor for LocalFindableAccessoryRecord);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DC321C()
{
  v1 = v0[31];

  v2 = v0[34];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[11];
  v9 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100DC32E8()
{
  v1 = v0[33];
  v2 = v0[19];

  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v3 = v0[38];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[11];
  v10 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100DC33D4()
{
  v1 = v0[33];
  v2 = v0[19];
  v3 = v0[12];

  sub_10000B3A8(v3, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = v0[47];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[11];
  v11 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DC34DC(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Date();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = type metadata accessor for PencilPairingLockCheckResponse();
  v3[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100DC35DC, v2, 0);
}

uint64_t sub_100DC35DC()
{
  v40 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = 0x7365547265646E75;
  *(v0 + 56) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 216) == 1)
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v35 = *(v0 + 160);
    v36 = *(v0 + 152);
    v4 = *(v0 + 136);
    v34 = *(v0 + 144);
    v37 = *(v0 + 128);
    *(v0 + 16) = *(v4 + 80);
    *(v0 + 32) = *(v4 + 96);
    v5 = type metadata accessor for __DataStorage();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1001022C4(v0 + 16, v0 + 64);
    sub_1001022C4(v0 + 32, v0 + 80);
    v38 = 0x2000000000;
    v39 = __DataStorage.init(length:)();
    sub_1007765FC(&v38, 17);
    v32 = v39 | 0x4000000000000000;
    v33 = v38;
    v8 = *(v5 + 48);
    v9 = *(v5 + 52);
    swift_allocObject();
    v10 = __DataStorage.init(length:)();
    v38 = 0x6400000000;
    v39 = v10;
    sub_1007765FC(&v38, 34);
    v11 = v38;
    v12 = v39 | 0x4000000000000000;
    v13 = v1 + v3[8];
    UUID.init()();
    v14 = *(v5 + 48);
    v15 = *(v5 + 52);
    swift_allocObject();
    v16 = __DataStorage.init(length:)();
    v38 = 0x2000000000;
    v39 = v16;
    sub_1007765FC(&v38, 85);
    v17 = v38;
    v18 = v39 | 0x4000000000000000;
    *v1 = *(v0 + 16);
    *(v1 + 16) = *(v0 + 32);
    *(v1 + 32) = v33;
    *(v1 + 40) = v32;
    *(v1 + 48) = v11;
    *(v1 + 56) = v12;
    v19 = (v1 + v3[9]);
    *v19 = 0xD000000000000011;
    v19[1] = 0x800000010134B430;
    v20 = (v1 + v3[10]);
    *v20 = v17;
    v20[1] = v18;
    *(v1 + v3[11]) = 0;
    v21 = *(v34 + 160);

    Date.init()();
    v22 = Date.epoch.getter();
    (*(v35 + 8))(v2, v36);
    *(v21 + 32) = v22;

    sub_100DD921C(v1, v37, type metadata accessor for PencilPairingLockCheckResponse);
    sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
    swift_storeEnumTagMultiPayload();
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = *(v0 + 168);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(*(v0 + 144) + 136);
    v29 = swift_task_alloc();
    *(v0 + 200) = v29;
    *v29 = v0;
    v29[1] = sub_100DC3990;
    v30 = *(v0 + 184);
    v31 = *(v0 + 136);

    return sub_1004F5960(v30, v31);
  }
}

uint64_t sub_100DC3990()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_100DC3B78;
  }

  else
  {
    v6 = sub_100DC3ABC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DC3ABC()
{
  sub_100DD921C(v0[23], v0[16], type metadata accessor for PencilPairingLockCheckResponse);
  sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  swift_storeEnumTagMultiPayload();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC3B78()
{
  v0[12] = v0[26];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    v1 = v0[26];
    v2 = v0[16];

    *v2 = v0[13];
  }

  else
  {
    v0[15] = 7;
    v3 = v0[26];
    v4 = v0[16];
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D97688(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();

    *v4 = v0[14];
  }

  sub_1000BC4D4(&qword_1016BB8A0, &qword_1013E8910);
  swift_storeEnumTagMultiPayload();
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DC3D28(uint64_t a1, uint64_t a2)
{
  v3[44] = a1;
  v3[45] = a2;
  v4 = *(*(type metadata accessor for PencilPairingLockCheckResponse() - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return _swift_task_switch(sub_100DC3DC4, v2, 0);
}

uint64_t sub_100DC3DC4()
{
  v52 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_1016BB490);
  sub_100DD9284(v3, v2, type metadata accessor for PencilPairingLockCheckResponse);
  sub_100DD9284(v3, v1, type metadata accessor for PencilPairingLockCheckResponse);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 376);
  if (v7)
  {
    v9 = swift_slowAlloc();
    result = swift_slowAlloc();
    v11 = result;
    v51 = result;
    *v9 = 134218242;
    v12 = *(v8 + 48);
    v13 = *(v8 + 56);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_15;
      }

      v18 = v12 + 16;
      v12 = *(v12 + 16);
      v17 = *(v18 + 8);
      v15 = v17 - v12;
      if (!__OFSUB__(v17, v12))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(v13);
LABEL_15:
      v21 = *(v0 + 368);
      sub_100DD92EC(*(v0 + 376), type metadata accessor for PencilPairingLockCheckResponse);
      *(v9 + 4) = v15;
      *(v9 + 12) = 2080;
      v22 = *(v21 + 48);
      v23 = *(v21 + 56);
      v24 = Data.hexString.getter();
      v26 = v25;
      sub_100DD92EC(v21, type metadata accessor for PencilPairingLockCheckResponse);
      v27 = sub_1000136BC(v24, v26, &v51);

      *(v9 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v5, v6, "S3 count %ld: %s", v9, 0x16u);
      sub_100007BAC(v11);

      goto LABEL_16;
    }

    v19 = __OFSUB__(HIDWORD(v12), v12);
    v20 = HIDWORD(v12) - v12;
    if (v19)
    {
      __break(1u);
      return result;
    }

    v15 = v20;
    goto LABEL_15;
  }

  v16 = *(v0 + 368);
  sub_100DD92EC(*(v0 + 376), type metadata accessor for PencilPairingLockCheckResponse);

  sub_100DD92EC(v16, type metadata accessor for PencilPairingLockCheckResponse);
LABEL_16:
  v29 = *(v0 + 368);
  v28 = *(v0 + 376);
  v31 = *(v0 + 352);
  v30 = *(v0 + 360);
  v32 = v30[4];
  v33 = v30[5];
  v34 = v30[6];
  v35 = v30[7];
  sub_100017D5C(v32, v33);
  sub_100017D5C(v34, v35);
  sub_100D54608(v32, v33, v34, v35, (v0 + 304));
  v36 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  v37 = *(v0 + 336);
  *(v0 + 176) = v36;
  *(v0 + 192) = v37;
  sub_100280714((v0 + 160));
  v38 = *(v0 + 240);
  v39 = *(v0 + 272);
  v40 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 256);
  *(v0 + 128) = v39;
  *(v0 + 144) = v40;
  v41 = *(v0 + 176);
  v42 = *(v0 + 208);
  v43 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 192);
  *(v0 + 64) = v42;
  *(v0 + 80) = v43;
  *(v0 + 96) = v38;
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v41;
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 16);
  *v31 = *(v0 + 16);
  v44 = *(v0 + 32);
  v45 = *(v0 + 48);
  v46 = *(v0 + 80);
  v31[3] = *(v0 + 64);
  v31[4] = v46;
  v31[1] = v44;
  v31[2] = v45;
  v47 = *(v0 + 96);
  v48 = *(v0 + 112);
  v49 = *(v0 + 144);
  v31[7] = *(v0 + 128);
  v31[8] = v49;
  v31[5] = v47;
  v31[6] = v48;

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_100DC411C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for CentralManager.State();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v2[28] = v14;
  v15 = *(v14 - 8);
  v2[29] = v15;
  v16 = *(v15 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v2[32] = v18;
  *v18 = v2;
  v18[1] = sub_100DC43FC;

  return daemon.getter();
}

uint64_t sub_100DC43FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  *(v3 + 264) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 272) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalFindableLostModeDetectionService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016BC560, type metadata accessor for LocalFindableLostModeDetectionService);
  *v6 = v12;
  v6[1] = sub_100DC45D8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DC45D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = a1;
  v4[36] = v1;

  if (v1)
  {
    v7 = sub_100DC7650;
    v8 = 0;
  }

  else
  {
    v9 = v4[33];

    v7 = sub_100DC4710;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100DC4710()
{
  v1 = *(v0 + 280);
  if (*(v1 + 145) == 1)
  {
    v2 = sub_100DC4754;
  }

  else
  {
    *(v0 + 600) = *(v1 + 146);
    v2 = sub_100DC4920;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DC4754()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Onboarding is showing. Not retrying.", v6, 2u);
  }

  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[20];
  v13 = v0[21];
  v16 = v0[18];
  v15 = v0[19];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DC4920()
{
  if (*(v0 + 600))
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016BB490);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 280);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Onboarding is showing. Not retrying.", v6, 2u);
    }

    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v23 = *(v0 + 136);
    v24 = *(v0 + 128);
    v25 = *(v0 + 104);
    v26 = *(v0 + 96);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 216);
    v20 = *(v0 + 112);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    Identifier.id.getter();

    return _swift_task_switch(sub_100DC4B4C, v21, 0);
  }
}

uint64_t sub_100DC4B4C()
{
  *(v0 + 296) = sub_100DDB460();

  return _swift_task_switch(sub_100DC4BB4, 0, 0);
}

uint64_t sub_100DC4BB4()
{
  if (*(v0[37] + 16) && (v1 = sub_1000210EC(v0[27]), (v2 & 1) != 0))
  {
    v3 = v0[31];
    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[27];
    v7 = v0[22];
    v8 = v0[23];
    v9 = v0[21];
    (*(v5 + 16))(v9, *(v0[37] + 56) + *(v5 + 72) * v1, v4);
    v10 = *(v8 + 8);
    v10(v6, v7);

    (*(v5 + 56))(v9, 0, 1, v4);
    (*(v5 + 32))(v3, v9, v4);
  }

  else
  {
    v11 = v0[31];
    v12 = v0[28];
    v13 = v0[29];
    v14 = v0[27];
    v15 = v0[22];
    v16 = v0[23];
    v17 = v0[21];

    v10 = *(v16 + 8);
    v10(v14, v15);
    (*(v13 + 56))(v17, 1, 1, v12);
    static Date.distantPast.getter();
    if ((*(v13 + 48))(v17, 1, v12) != 1)
    {
      sub_10000B3A8(v0[21], &unk_101696900, &unk_10138B1E0);
    }
  }

  v0[38] = v10;
  v18 = v0[30];
  v19 = v0[28];
  v20 = v0[29];
  static Date.trustedNow.getter(v18);
  Date.timeIntervalSince(_:)();
  v0[39] = v21;
  v22 = *(v20 + 8);
  v0[40] = v22;
  v0[41] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v19);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v23 = qword_10177B348;
  v0[42] = qword_10177B348;
  v24 = async function pointer to unsafeBlocking<A>(_:)[1];

  v25 = swift_task_alloc();
  v0[43] = v25;
  *v25 = v0;
  v25[1] = sub_100DC4E74;

  return unsafeBlocking<A>(_:)(v0 + 4, sub_1000D2BE0, v23, &type metadata for Configuration);
}

uint64_t sub_100DC4E74()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_100DC4F8C, 0, 0);
}

uint64_t sub_100DC4F8C()
{
  v1 = v0[8];
  v0[44] = v0[4];
  return _swift_task_switch(sub_100DC4FB0, v1, 0);
}

uint64_t sub_100DC4FB0()
{
  sub_1010748E8(*(v0 + 352));
  *(v0 + 360) = v1;

  return _swift_task_switch(sub_100DC5028, 0, 0);
}

uint64_t sub_100DC5028()
{
  v1 = *(v0 + 312);
  if (*(v0 + 360) >= v1)
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016BB490);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 360);
      v11 = *(v0 + 312);
      v12 = *(v0 + 280);
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v11;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "Time since last attempt %f. Threshold %f. Not retrying.", v13, 0x16u);
    }

    else
    {
      v15 = *(v0 + 280);
    }

    v16 = *(v0 + 328);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 224));
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v24 = *(v0 + 160);
    v23 = *(v0 + 168);
    v26 = *(v0 + 144);
    v25 = *(v0 + 152);
    v29 = *(v0 + 136);
    v30 = *(v0 + 128);
    v31 = *(v0 + 104);
    v32 = *(v0 + 96);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    if (v1 <= 86400.0)
    {
      v14 = *(v0 + 200);
      Identifier.id.getter();
      v6 = sub_100DC53DC;
    }

    else
    {
      v5 = *(v0 + 208);
      Identifier.id.getter();
      v6 = sub_100DC52D4;
    }

    return _swift_task_switch(v6, v3, 0);
  }
}

uint64_t sub_100DC52D4()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  sub_100DDBB80(0, v2);
  v1(v2, v3);

  return _swift_task_switch(sub_100DC536C, 0, 0);
}

uint64_t sub_100DC536C()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  Identifier.id.getter();

  return _swift_task_switch(sub_100DC53DC, v3, 0);
}

uint64_t sub_100DC53DC()
{
  *(v0 + 368) = sub_100DDB824();

  return _swift_task_switch(sub_100DC5444, 0, 0);
}

uint64_t sub_100DC5444()
{
  if (*(*(v0 + 368) + 16) && (v1 = sub_1000210EC(*(v0 + 200)), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 368) + 56) + 8 * v1);
    v4 = *(v0 + 184) + 8;
    (*(v0 + 304))(*(v0 + 200), *(v0 + 176));
  }

  else
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    v8 = *(v0 + 184);

    v5(v6, v7);
    v3 = 0;
  }

  *(v0 + 376) = v3;
  v9 = *(v0 + 336);
  v10 = async function pointer to unsafeBlocking<A>(_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 384) = v11;
  *v11 = v0;
  v11[1] = sub_100DC559C;
  v12 = *(v0 + 336);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v12, &type metadata for Configuration);
}

uint64_t sub_100DC559C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return _swift_task_switch(sub_100DC56B4, 0, 0);
}

uint64_t sub_100DC56B4()
{
  v1 = v0[8];
  v0[49] = v0[5];
  return _swift_task_switch(sub_100DC56D8, v1, 0);
}

uint64_t sub_100DC56D8()
{
  *(v0 + 400) = sub_10107488C(*(v0 + 392));

  return _swift_task_switch(sub_100DC5750, 0, 0);
}

uint64_t sub_100DC5750()
{
  v58 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= 1)
  {
    if (qword_101694EA0 == -1)
    {
LABEL_4:
      v5 = *(v0 + 160);
      v6 = *(v0 + 112);
      v7 = *(v0 + 120);
      v8 = *(v0 + 72);
      v9 = type metadata accessor for Logger();
      *(v0 + 408) = sub_1000076D4(v9, qword_1016BB490);
      v10 = *(v7 + 16);
      *(v0 + 416) = v10;
      *(v0 + 424) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v5, v8, v6);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v53 = *(v0 + 376);
        v55 = *(v0 + 400);
        v13 = *(v0 + 160);
        v15 = *(v0 + 112);
        v14 = *(v0 + 120);
        v16 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v57 = v51;
        *v16 = 136446722;
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        v20 = *(v14 + 8);
        v20(v13, v15);
        v21 = sub_1000136BC(v17, v19, &v57);

        *(v16 + 4) = v21;
        *(v16 + 12) = 2048;
        *(v16 + 14) = v53;
        *(v16 + 22) = 2048;
        *(v16 + 24) = v55;
        _os_log_impl(&_mh_execute_header, v11, v12, "Retry pairing for %{public}s. Attempted %ld. Daily limit %ld", v16, 0x20u);
        sub_100007BAC(v51);
      }

      else
      {
        v29 = *(v0 + 160);
        v30 = *(v0 + 112);
        v31 = *(v0 + 120);

        v20 = *(v31 + 8);
        v20(v29, v30);
      }

      *(v0 + 432) = v20;
      v32 = *(v0 + 208);
      v33 = *(v0 + 112);
      v35 = *(v0 + 64);
      v34 = *(v0 + 72);
      static Date.trustedNow.getter(*(v0 + 240));
      Identifier.id.getter();

      return _swift_task_switch(sub_100DC5BD8, v35, 0);
    }

LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_1016BB490);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 400);
    v26 = *(v0 + 376);
    v27 = *(v0 + 280);
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v25;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v23, v24, "Exceeded number of retries per day %ld. Attempted: %ld", v28, 0x16u);
  }

  else
  {
    v36 = *(v0 + 280);
  }

  v37 = *(v0 + 328);
  (*(v0 + 320))(*(v0 + 248), *(v0 + 224));
  v39 = *(v0 + 240);
  v38 = *(v0 + 248);
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v47 = *(v0 + 144);
  v46 = *(v0 + 152);
  v50 = *(v0 + 136);
  v52 = *(v0 + 128);
  v54 = *(v0 + 104);
  v56 = *(v0 + 96);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100DC5BD8()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[22];
  v8 = v0[23];
  sub_100DDBD4C(v4, v6);
  v0[55] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v6, v7);
  v2(v4, v5);

  return _swift_task_switch(sub_100DC5CA4, 0, 0);
}

uint64_t sub_100DC5CA4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[47];
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = v3[26];
    v8 = v3[14];
    v9 = v3[8];
    v10 = v3[9];
    v3[56] = v6;
    Identifier.id.getter();
    a1 = sub_100DC5D28;
    a2 = v9;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100DC5D28()
{
  v1 = v0[55];
  v2 = v0[38];
  v3 = v0[26];
  v4 = v0[22];
  sub_100DDBB80(v0[56], v3);
  v2(v3, v4);
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_100DC5DEC;
  v6 = v0[13];
  v8 = v0[8];
  v7 = v0[9];

  return sub_100D8D800(v6, v7);
}

uint64_t sub_100DC5DEC()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_100DC776C;
  }

  else
  {
    v3 = sub_100DC5F00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DC5F00()
{
  v47 = v0;
  v1 = *(v0 + 104);
  v2 = type metadata accessor for LocalFindableAccessoryRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
  if (v3 == 1)
  {
    *(v0 + 472) = type metadata accessor for CentralManager();
    v4 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v5 = swift_task_alloc();
    *(v0 + 480) = v5;
    *v5 = v0;
    v5[1] = sub_100DC62A8;

    return static CentralManager.pairingCentralManager.getter();
  }

  else
  {
    v6 = *(v0 + 424);
    v7 = *(v0 + 408);
    (*(v0 + 416))(*(v0 + 152), *(v0 + 72), *(v0 + 112));
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 432);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v42 = v11;
    v44 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 152);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    if (v10)
    {
      v40 = *(v0 + 248);
      v19 = swift_slowAlloc();
      v38 = v15;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v37 = v13;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v42(v16, v18);
      v24 = sub_1000136BC(v21, v23, &v46);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "Found record for %{public}s. Not retrying", v19, 0xCu);
      sub_100007BAC(v20);

      v37(v40, v38);
    }

    else
    {

      v42(v16, v18);
      v13(v14, v15);
    }

    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v34 = *(v0 + 144);
    v33 = *(v0 + 152);
    v39 = *(v0 + 136);
    v41 = *(v0 + 128);
    v43 = *(v0 + 104);
    v45 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_100DC62A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v5 = sub_100DC7A80;
  }

  else
  {
    v5 = sub_100DC63BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DC63BC()
{
  (*(v0[11] + 104))(v0[12], enum case for CentralManager.State.poweredOn(_:), v0[10]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[63] = v2;
  v3 = sub_100D97688(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100DC64B8;
  v4 = v0[61];
  v5 = v0[59];
  v6 = v0[12];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100DC64B8()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v5 = sub_100DC7BB4;
  }

  else
  {
    v5 = sub_100DC6620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DC6620()
{
  v1 = v0[53];
  v2 = v0[52];
  v19 = v0[24];
  v20 = v0[54];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[9];
  sub_1000BC4D4(&qword_1016BB870, &unk_1013F6290);
  v7 = *(v5 + 72);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v2(v9 + v8, v6, v4);
  sub_101123D4C(0, 1, 0);
  v2(v3, v9 + v8, v4);

  Identifier.id.getter();
  v0[65] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v3, v4);
  v11 = _swiftEmptyArrayStorage[2];
  v10 = _swiftEmptyArrayStorage[3];
  if (v11 >= v10 >> 1)
  {
    sub_101123D4C(v10 > 1, v11 + 1, 1);
  }

  v0[66] = _swiftEmptyArrayStorage;
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  _swiftEmptyArrayStorage[2] = v11 + 1;
  (*(v13 + 32))(_swiftEmptyArrayStorage + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11, v12, v14);
  v15 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v21 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v16 = swift_task_alloc();
  v0[67] = v16;
  *v16 = v0;
  v16[1] = sub_100DC6830;
  v17 = v0[61];

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_100DC6830(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  v7 = *(v3 + 528);

  if (v1)
  {
    v8 = sub_100DC7CF4;
  }

  else
  {
    v8 = sub_100DC6970;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100DC6970()
{
  v58 = v0;
  v1 = v0[68];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v13 = v0[68];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v14 = v0[68];
    v16 = v0[52];
    v15 = v0[53];
    v17 = v0[51];
    v18 = v0[16];
    v19 = v0[14];
    v20 = v0[9];

    v16(v18, v20, v19);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[65];
    v25 = v0[54];
    v26 = v0[16];
    v27 = v0[14];
    if (v23)
    {
      v28 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v28 = 136446466;
      *(v28 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, v57);
      *(v28 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v25(v26, v27);
      v32 = sub_1000136BC(v29, v31, v57);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s Missing peripheral for %{public}s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v25(v26, v27);
    }

    v33 = v0[61];
    v35 = v0[40];
    v34 = v0[41];
    v36 = v0[35];
    v37 = v0[31];
    v38 = v0[28];
    sub_100500BC4();
    swift_allocError();
    *v39 = xmmword_1013E84C0;
    *(v39 + 16) = 3;
    swift_willThrow();

    v35(v37, v38);
    v41 = v0[30];
    v40 = v0[31];
    v43 = v0[26];
    v42 = v0[27];
    v45 = v0[24];
    v44 = v0[25];
    v47 = v0[20];
    v46 = v0[21];
    v48 = v0[18];
    v49 = v0[19];
    v53 = v0[17];
    v54 = v0[16];
    v55 = v0[13];
    v56 = v0[12];

    v50 = v0[1];

    return v50();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v51 = v0[68];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v52 = v0[68];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[68] + 32);
  }

  v0[70] = v3;
  v4 = v0[51];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, v57);
    *(v7 + 12) = 2080;
    v0[7] = v3;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972D0, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v57);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Retrieved peripheral: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = swift_task_alloc();
  v0[71] = v11;
  *v11 = v0;
  v11[1] = sub_100DC6ED8;
  v12 = v0[8];

  return sub_100DA5158(v3);
}

uint64_t sub_100DC6ED8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v7 = *v2;
  *(v3 + 601) = a1;
  *(v3 + 576) = v1;

  if (v1)
  {
    v5 = sub_100DC7E34;
  }

  else
  {
    v5 = sub_100DC6FF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100DC6FF0()
{
  v50 = v0;
  v1 = (*(v0 + 601) < 5u) & (*(v0 + 601) ^ 1);
  v2 = *(v0 + 408);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 601);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = v7;
    *v6 = 136446466;
    v8 = sub_100B9F190(v5);
    v10 = sub_1000136BC(v8, v9, &v49);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1026;
    *(v6 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "AccountCheckResult: %{public}s, shouldRetry = %{BOOL,public}d", v6, 0x12u);
    sub_100007BAC(v7);
  }

  if (v1)
  {
    v11 = *(v0 + 424);
    v12 = *(v0 + 408);
    (*(v0 + 416))(*(v0 + 136), *(v0 + 72), *(v0 + 112));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 432);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    if (v15)
    {
      v47 = *(v0 + 520);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 136446210;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v16(v17, v18);
      v24 = sub_1000136BC(v21, v23, &v49);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Retrying pairing for %{public}s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {

      v16(v17, v18);
    }

    v41 = swift_task_alloc();
    *(v0 + 584) = v41;
    *v41 = v0;
    v41[1] = sub_100DC73F8;
    v42 = *(v0 + 560);
    v43 = *(v0 + 64);

    return sub_100D9BE04(v42);
  }

  else
  {
    v25 = *(v0 + 560);
    v26 = *(v0 + 488);
    v27 = *(v0 + 328);
    v28 = *(v0 + 280);
    (*(v0 + 320))(*(v0 + 248), *(v0 + 224));

    v30 = *(v0 + 240);
    v29 = *(v0 + 248);
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    v44 = *(v0 + 136);
    v45 = *(v0 + 128);
    v46 = *(v0 + 104);
    v48 = *(v0 + 96);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_100DC73F8()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_100DC7F80;
  }

  else
  {
    v3 = sub_100DC750C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DC750C()
{
  v1 = v0[70];
  v2 = v0[61];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[28];

  v4(v6, v7);
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DC7650()
{
  v1 = v0[33];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[36];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100DC776C()
{
  v0[6] = v0[58];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  if (v0[3])
  {

LABEL_4:
    v1 = v0[58];
    v2 = v0[51];
    v3 = v0[6];

    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[58];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error during localFindableRecord check: %{public}@", v7, 0xCu);
      sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
    }

    v10 = v0[58];
    v12 = v0[40];
    v11 = v0[41];
    v13 = v0[35];
    v14 = v0[31];
    v15 = v0[28];

    swift_willThrow();

    v12(v14, v15);
    v17 = v0[30];
    v16 = v0[31];
    v19 = v0[26];
    v18 = v0[27];
    v21 = v0[24];
    v20 = v0[25];
    v23 = v0[20];
    v22 = v0[21];
    v24 = v0[18];
    v25 = v0[19];
    v32 = v0[17];
    v33 = v0[16];
    v34 = v0[13];
    v35 = v0[12];
    v36 = v0[58];

    v26 = v0[1];

    return v26();
  }

  v28 = v0[58];

  v29 = v0[6];

  v0[59] = type metadata accessor for CentralManager();
  v30 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v31 = swift_task_alloc();
  v0[60] = v31;
  *v31 = v0;
  v31[1] = sub_100DC62A8;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100DC7A80()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[28];

  v2(v4, v5);
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v15 = v0[19];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[62];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DC7BB4()
{
  v1 = v0[61];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[28];

  v3(v5, v6);
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[18];
  v16 = v0[19];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[64];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DC7CF4()
{
  v1 = v0[61];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v5 = v0[31];
  v6 = v0[28];

  v3(v5, v6);
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[18];
  v16 = v0[19];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[12];
  v23 = v0[69];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DC7E34()
{
  v1 = v0[70];
  v2 = v0[61];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[28];

  v4(v6, v7);
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[72];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DC7F80()
{
  v1 = v0[70];
  v2 = v0[61];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[28];

  v4(v6, v7);
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[18];
  v17 = v0[19];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[12];
  v24 = v0[74];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DC80CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100DC81A8, 0, 0);
}

uint64_t sub_100DC81A8()
{
  v40 = v0;
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (qword_101694EA0 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    (*(v3 + 16))(v2, v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1000BB584(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v13 = 136446722;
      *(v13 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v39);
      *(v13 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_1000136BC(v14, v16, &v39);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v18;
      *v38 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s failed for %{public}s. Error %{public}@", v13, 0x20u);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

LABEL_10:

      goto LABEL_13;
    }

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 24);
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_1016BB490);
    (*(v21 + 16))(v19, v22, v20);
    v7 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v7, v24);
    v26 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_1000136BC(0xD000000000000018, 0x8000000101371090, &v39);
      *(v29 + 12) = 2082;
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v28 + 8))(v26, v27);
      v33 = sub_1000136BC(v30, v32, &v39);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v7, v24, "%{public}s succeeded for %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }

    (*(v28 + 8))(v26, v27);
  }

LABEL_13:
  v35 = *(v0 + 48);
  v34 = *(v0 + 56);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100DC868C(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DC882C, 0, 0);
}

uint64_t sub_100DC882C()
{
  v1 = v0[10];
  v24 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = enum case for ConnectUseCase.findNearbyPencil(_:);
  v8 = type metadata accessor for ConnectUseCase();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v1, v7, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v12;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = type metadata accessor for LongTermKey();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v15 = type metadata accessor for Peripheral.Options();
  (*(*(v15 - 8) + 56))(v24, 0, 1, v15);
  v16 = type metadata accessor for Peripheral();
  v17 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v18 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_100DC8B98;
  v20 = v0[9];
  v21 = v0[10];
  v22 = v0[3];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v21, v20, v16, v17);
}

uint64_t sub_100DC8B98()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[12] = v0;

  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {

    return _swift_task_switch(sub_100DDDDB8, 0, 0);
  }

  else
  {
    v7 = v5[9];
    v6 = v5[10];
    v8 = v5[8];
    v9 = v5[4];
    v10 = v5[5];

    v11 = v5[1];

    return v11();
  }
}

uint64_t sub_100DC8D64(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DC8F04, 0, 0);
}

uint64_t sub_100DC8F04()
{
  v1 = v0[10];
  v22 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for ConnectUseCase();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v10;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = type metadata accessor for LongTermKey();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v13 = type metadata accessor for Peripheral.Options();
  (*(*(v13 - 8) + 56))(v22, 0, 1, v13);
  v14 = type metadata accessor for Peripheral();
  v15 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v16 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_100DC8B98;
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[3];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v19, v18, v14, v15);
}

uint64_t sub_100DC9230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v9 = type metadata accessor for Characteristic();
  v10 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
  v11 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_100DC93A0;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v8, a3, v9, v10);
}

uint64_t sub_100DC93A0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100DDDDC8, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence<>.reassemble()[1];
    v5 = swift_task_alloc();
    v3[8] = v5;
    v6 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v5 = v3;
    v5[1] = sub_100DC9558;
    v7 = v3[5];
    v8 = v3[3];

    return AsyncSequence<>.reassemble()(v8, v6);
  }
}

uint64_t sub_100DC9558(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  v6[9] = v2;

  v9 = v6[5];
  v10 = v6[4];
  v11 = v6[3];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_100DDDDCC;
  }

  else
  {
    v6[10] = a2;
    v6[11] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_100DDDDC4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100DC96E4(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = type metadata accessor for BinaryDecoder();
  v2[36] = v3;
  v4 = *(v3 - 8);
  v2[37] = v4;
  v5 = *(v4 + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = type metadata accessor for BinaryEncoder();
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[42] = v9;
  v10 = *(v9 - 8);
  v2[43] = v10;
  v11 = *(v10 + 64) + 15;
  v2[44] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[45] = v12;
  v13 = *(v12 - 8);
  v2[46] = v13;
  v14 = *(v13 + 64) + 15;
  v2[47] = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[48] = v15;
  v16 = *(v15 - 8);
  v2[49] = v16;
  v17 = *(v16 + 64) + 15;
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_100DC9938, v1, 0);
}

uint64_t sub_100DC9938()
{
  v24 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = type metadata accessor for Logger();
  v0[51] = sub_1000076D4(v2, qword_1016BB490);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[49];
    v5 = v0[50];
    v7 = v0[48];
    v8 = v0[34];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101370EC0, &v23);
    *(v9 + 12) = 2082;
    type metadata accessor for Peripheral();
    sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;

    (*(v6 + 8))(v5, v7);
    v13 = sub_1000136BC(v10, v12, &v23);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s for %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[34];
  }

  v15 = v0[47];
  v0[52] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v16 = type metadata accessor for Peripheral();
  v0[53] = v16;
  v17 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v0[54] = v17;
  v18 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
  v19 = swift_task_alloc();
  v0[55] = v19;
  *v19 = v0;
  v19[1] = sub_100DC9CA8;
  v20 = v0[47];
  v21 = v0[34];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v20, v16, v17);
}

uint64_t sub_100DC9CA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  v4[56] = a1;
  v4[57] = v1;

  v7 = v3[47];
  v8 = v3[46];
  v9 = v3[45];
  v10 = v3[35];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100DCA0D4;
  }

  else
  {
    v11 = sub_100DC9E2C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100DC9E2C()
{
  v1 = v0[44];
  v0[58] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = sub_100D97688(&qword_1016972A8, &type metadata accessor for Service);
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_100DC9F34;
  v5 = v0[56];
  v6 = v0[52];
  v7 = v0[44];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v2);
}

uint64_t sub_100DC9F34(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  v7 = v3[56];
  v8 = v3[44];
  v9 = v3[43];
  v10 = v3[42];
  v11 = v3[35];
  (*(v9 + 8))(v8, v10);

  if (v1)
  {
    v12 = sub_100DCA530;
  }

  else
  {
    v12 = sub_100DCA178;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100DCA0D4()
{
  v1 = v0[57];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[38];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DCA178()
{
  v39 = v0;
  v1 = *(v0 + 408);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000015, 0x8000000101370EC0, v38);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Discovered FindMy services and Config characteristic.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v0 + 408);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38[0] = v12;
    *v11 = 136446210;
    *(v0 + 208) = xmmword_1013AAD90;
    *(v0 + 224) = 0;
    *(v0 + 232) = 0;
    *(v0 + 240) = xmmword_10139BF70;
    v13 = String.init<A>(describing:)();
    v15 = sub_1000136BC(v13, v14, v38);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending .unpair command: %{public}s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  v16 = *(v0 + 488);
  v17 = *(v0 + 328);
  *(v0 + 16) = xmmword_1013AAD90;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_10139BF70;
  sub_10067C1D4();
  *(v0 + 496) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 504) = v18;
  if (v16)
  {
    v19 = *(v0 + 480);
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);

    (*(v25 + 8))(v23, v24);
    (*(v21 + 8))(v20, v22);
    v26 = *(v0 + 400);
    v27 = *(v0 + 376);
    v28 = *(v0 + 352);
    v29 = *(v0 + 328);
    v30 = *(v0 + 304);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v33 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
    v34 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v35 = swift_task_alloc();
    *(v0 + 512) = v35;
    *v35 = v0;
    v35[1] = sub_100DCA5D4;
    v36 = *(v0 + 480);
    v37 = *(v0 + 464);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v37, v33);
  }
}

uint64_t sub_100DCA530()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[38];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DCA5D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  v4[65] = v1;

  v7 = v4[35];
  if (v1)
  {
    v8 = sub_100DCA968;
  }

  else
  {
    v4[66] = a1;
    v8 = sub_100DCA710;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DCA710()
{
  v1 = v0[66];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[60];
  v5 = fragment(data:mtu:)();
  v6 = swift_allocObject();
  v0[67] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = async function pointer to withTimeout<A>(_:block:)[1];

  v8 = swift_task_alloc();
  v0[68] = v8;
  *v8 = v0;
  v8[1] = sub_100DCA820;

  return withTimeout<A>(_:block:)(v0 + 32, 0x40AAD21B3B700000, 3, &unk_1013E89B8, v6, &type metadata for Data);
}

uint64_t sub_100DCA820()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 536);
  v6 = *(v2 + 280);

  if (v0)
  {
    v7 = sub_100DCB90C;
  }

  else
  {
    v7 = sub_100DCAA64;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DCA968()
{
  v1 = v0[60];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = v0[37];
  sub_100016590(v0[62], v0[63]);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[65];
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[41];
  v13 = v0[38];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DCAA64()
{
  v176 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v175[0] = v7;
    *(v0 + 160) = xmmword_1013AAD90;
    *v6 = 136446210;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = xmmword_10139BF70;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, v175);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sent command: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 408);
  sub_100017D5C(v2, v3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_100016590(v2, v3);
    goto LABEL_16;
  }

  v14 = swift_slowAlloc();
  result = swift_slowAlloc();
  v16 = result;
  v175[0] = result;
  *v14 = 134218242;
  v17 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v18) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_15;
  }

  if (v17)
  {
    goto LABEL_12;
  }

  v18 = BYTE6(v3);
LABEL_15:
  *(v14 + 4) = v18;
  sub_100016590(v2, v3);
  *(v14 + 12) = 2082;
  v22 = Data.hexString.getter();
  v24 = sub_1000136BC(v22, v23, v175);

  *(v14 + 14) = v24;
  _os_log_impl(&_mh_execute_header, v12, v13, "Length: %ld received response: %{public}s", v14, 0x16u);
  sub_100007BAC(v16);

LABEL_16:

  v25 = *(v0 + 552);
  v26 = *(v0 + 304);
  sub_10067C180();
  BinaryDecoder.decode<A>(_:from:)();
  if (!v25)
  {
    v35 = *(v0 + 64);
    v34 = *(v0 + 72);
    v37 = *(v0 + 80);
    v36 = *(v0 + 88);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v168 = v2;
    v169 = v3;
    v166 = v34;
    v167 = v39;
    v172 = v36;
    v174 = v38;
    v170 = v35;
    v171 = v37;
    if (((v38 >> 58) & 0xC | (v34 >> 60) & 3) != 1)
    {
      v56 = *(v0 + 408);
      v57 = *(v0 + 272);
      swift_retain_n();
      sub_100DD9FC8(v35, v34, v37, v36, v38, v39, sub_100017D5C);
      v58 = v34;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      v61 = v35;
      v62 = v60;
      sub_100DD9FC8(v61, v58, v37, v36, v38, v39, sub_100016590);
      if (os_log_type_enabled(v59, v62))
      {
        v151 = *(v0 + 424);
        logc = *(v0 + 432);
        v63 = *(v0 + 392);
        v64 = *(v0 + 400);
        v65 = *(v0 + 384);
        v66 = *(v0 + 272);
        v67 = swift_slowAlloc();
        v175[0] = swift_slowAlloc();
        *v67 = 136446723;
        *(v0 + 112) = v170;
        *(v0 + 120) = v58;
        *(v0 + 128) = v171;
        *(v0 + 136) = v172;
        *(v0 + 144) = v174;
        *(v0 + 152) = v39;
        sub_100DD9FC8(v170, v58, v171, v172, v174, v39, sub_100017D5C);
        v68 = String.init<A>(describing:)();
        v70 = sub_1000136BC(v68, v69, v175);

        *(v67 + 4) = v70;
        *(v67 + 12) = 2160;
        *(v67 + 14) = 1752392040;
        *(v67 + 22) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();

        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;

        (*(v63 + 8))(v64, v65);
        v74 = sub_1000136BC(v71, v73, v175);

        *(v67 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v59, v62, "Invalid response %{public}s Peripheral %{private,mask.hash}s", v67, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v90 = *(v0 + 272);
      }

      v92 = *(v0 + 496);
      v91 = *(v0 + 504);
      v93 = *(v0 + 480);
      v94 = *(v0 + 320);
      v95 = *(v0 + 304);
      loge = *(v0 + 312);
      v163 = *(v0 + 328);
      v97 = *(v0 + 288);
      v96 = *(v0 + 296);
      sub_100500BC4();
      swift_allocError();
      *v98 = xmmword_10139D990;
      *(v98 + 16) = 3;
      swift_willThrow();
      sub_100016590(v92, v91);
      sub_100DD9FC8(v170, v166, v171, v172, v174, v167, sub_100016590);
      sub_100016590(v168, v169);

      (*(v96 + 8))(v95, v97);
      (*(v94 + 8))(v163, loge);
      goto LABEL_39;
    }

    sub_100017D5C(v35, v34 & 0xCFFFFFFFFFFFFFFFLL);
    sub_100017D5C(v37, v36);
    v40 = sub_10041C094(v35, v34 & 0xCFFFFFFFFFFFFFFFLL, v37, v36);
    if ((v40 & 0xFF0000) == 0x60000)
    {
      v41 = *(v0 + 408);
      v42 = *(v0 + 272);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = *(v0 + 432);
        logb = *(v0 + 424);
        v46 = *(v0 + 392);
        v47 = *(v0 + 400);
        v48 = *(v0 + 384);
        v49 = *(v0 + 272);
        v50 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v175[0] = v161;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v51 = v48;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;

        (*(v46 + 8))(v47, v51);
        v55 = sub_1000136BC(v52, v54, v175);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v43, v44, "Invalid commandResponse for %{private,mask.hash}s.", v50, 0x16u);
        sub_100007BAC(v161);

LABEL_37:
        v120 = *(v0 + 496);
        v119 = *(v0 + 504);
        v121 = *(v0 + 480);
        v122 = *(v0 + 320);
        v123 = *(v0 + 304);
        loga = *(v0 + 312);
        v164 = *(v0 + 328);
        v125 = *(v0 + 288);
        v124 = *(v0 + 296);
        sub_100500BC4();
        swift_allocError();
        *v126 = xmmword_1013AC380;
        v127 = 3;
LABEL_38:
        *(v126 + 16) = v127;
        swift_willThrow();
        sub_100016590(v120, v119);
        sub_100DD9FC8(v170, v166, v171, v172, v174, v167, sub_100016590);
        sub_100016590(v168, v169);

        (*(v124 + 8))(v123, v125);
        (*(v122 + 8))(v164, loga);
        goto LABEL_39;
      }

      v99 = *(v0 + 272);
    }

    else
    {
      v75 = v40;
      v76 = *(v0 + 272);
      v77 = sub_10030F9A4(v40);

      v78 = *(v0 + 408);
      if (v77 != 23)
      {
        v100 = *(v0 + 272);

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v149 = *(v0 + 424);
          v150 = *(v0 + 432);
          v103 = *(v0 + 392);
          v104 = *(v0 + 400);
          v153 = *(v0 + 384);
          v105 = *(v0 + 272);
          v106 = swift_slowAlloc();
          v175[0] = swift_slowAlloc();
          *v106 = 136315907;
          v107 = sub_10030E868(v77);
          log = v101;
          v109 = sub_1000136BC(v107, v108, v175);

          *(v106 + 4) = v109;
          *(v106 + 12) = 2082;
          if (BYTE2(v75))
          {
            v110 = HIWORD(v75);
          }

          else
          {
            v110 = 6;
          }

          v111 = sub_10041B9C8(v110);
          v113 = sub_1000136BC(v111, v112, v175);

          *(v106 + 14) = v113;
          *(v106 + 22) = 2160;
          *(v106 + 24) = 1752392040;
          *(v106 + 32) = 2081;
          dispatch thunk of PeripheralProtocol.id.getter();

          sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
          v114 = dispatch thunk of CustomStringConvertible.description.getter();
          v116 = v115;

          (*(v103 + 8))(v104, v153);
          v117 = sub_1000136BC(v114, v116, v175);

          *(v106 + 34) = v117;
          v101 = log;
          _os_log_impl(&_mh_execute_header, log, v102, "Opcode: %s. Status %{public}s. Peripheral %{private,mask.hash}s", v106, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v134 = *(v0 + 272);
        }

        v135 = BYTE2(v75);
        if (!v135)
        {
          v137 = *(v0 + 408);
          v138 = Logger.logObject.getter();
          v139 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            *v140 = 0;
            _os_log_impl(&_mh_execute_header, v138, v139, "RX unpair succeeded", v140, 2u);
          }

          v141 = *(v0 + 480);
          v142 = *(v0 + 400);
          logf = *(v0 + 376);
          v165 = *(v0 + 352);
          v143 = *(v0 + 320);
          v144 = *(v0 + 328);
          v145 = *(v0 + 304);
          v146 = *(v0 + 312);
          v148 = *(v0 + 288);
          v147 = *(v0 + 296);
          sub_100016590(*(v0 + 496), *(v0 + 504));

          sub_100DD9FC8(v170, v166, v171, v172, v174, v167, sub_100016590);
          sub_100016590(v168, v169);

          (*(v147 + 8))(v145, v148);
          (*(v143 + 8))(v144, v146);

          v133 = *(v0 + 8);
          goto LABEL_40;
        }

        v120 = *(v0 + 496);
        v119 = *(v0 + 504);
        v136 = *(v0 + 480);
        v122 = *(v0 + 320);
        v123 = *(v0 + 304);
        loga = *(v0 + 312);
        v164 = *(v0 + 328);
        v125 = *(v0 + 288);
        v124 = *(v0 + 296);
        sub_100500BC4();
        swift_allocError();
        *v126 = v135;
        *(v126 + 8) = 0;
        v127 = 2;
        goto LABEL_38;
      }

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v152 = *(v0 + 424);
        logd = *(v0 + 432);
        v81 = *(v0 + 392);
        v82 = *(v0 + 400);
        v83 = *(v0 + 384);
        v84 = *(v0 + 272);
        v85 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v175[0] = v162;
        *v85 = 33686275;
        *(v85 + 4) = v75;
        *(v85 + 6) = 2160;
        *(v85 + 8) = 1752392040;
        *(v85 + 16) = 2081;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;

        (*(v81 + 8))(v82, v83);
        v89 = sub_1000136BC(v86, v88, v175);

        *(v85 + 18) = v89;
        _os_log_impl(&_mh_execute_header, v79, v80, "Invalid opcode: %{public}hu. Peripheral %{private,mask.hash}s", v85, 0x1Au);
        sub_100007BAC(v162);

        goto LABEL_37;
      }

      v118 = *(v0 + 272);
    }

    goto LABEL_37;
  }

  v27 = *(v0 + 480);
  v173 = *(v0 + 328);
  v28 = v2;
  v30 = *(v0 + 312);
  v29 = *(v0 + 320);
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  sub_100016590(*(v0 + 496), *(v0 + 504));
  sub_100016590(v28, v3);

  (*(v31 + 8))(v32, v33);
  (*(v29 + 8))(v173, v30);
LABEL_39:
  v128 = *(v0 + 400);
  v129 = *(v0 + 376);
  v130 = *(v0 + 352);
  v131 = *(v0 + 328);
  v132 = *(v0 + 304);

  v133 = *(v0 + 8);
LABEL_40:

  return v133();
}

uint64_t sub_100DCB90C()
{
  v1 = v0[60];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = v0[37];
  sub_100016590(v0[62], v0[63]);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[69];
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[41];
  v13 = v0[38];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DCBA08(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100DCBBA8, 0, 0);
}

uint64_t sub_100DCBBA8()
{
  v1 = v0[10];
  v22 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = type metadata accessor for ConnectUseCase();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10138BBE0;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  static Peripheral.ConnectionOptions.shouldSkipUnpair.getter();
  v0[2] = v10;
  sub_100D97688(&qword_101697288, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = type metadata accessor for LongTermKey();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v13 = type metadata accessor for Peripheral.Options();
  (*(*(v13 - 8) + 56))(v22, 0, 1, v13);
  v14 = type metadata accessor for Peripheral();
  v15 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v16 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_100DCBED4;
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[3];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v19, v18, v14, v15);
}

uint64_t sub_100DCBED4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[12] = v0;

  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {

    return _swift_task_switch(sub_100DCC0A0, 0, 0);
  }

  else
  {
    v7 = v5[9];
    v6 = v5[10];
    v8 = v5[8];
    v9 = v5[4];
    v10 = v5[5];

    v11 = v5[1];

    return v11();
  }
}

uint64_t sub_100DCC0A0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_100DCC134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Characteristic();
  v6 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
  v7 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a3, v5, v6);
}

uint64_t sub_100DCC228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_100DCC2BC;

  return sub_100DCC6EC();
}

uint64_t sub_100DCC2BC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v3;
  v4[1] = sub_100DCC414;
  v5 = v1[3];
  v6 = v1[2];

  return sub_100DCCF98(v5);
}

uint64_t sub_100DCC414()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100DCC548, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100DCC548()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016BB490);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registration failed - %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100DCC6EC()
{
  v1[92] = v0;
  v2 = type metadata accessor for PencilPairingLockAckResponse();
  v1[93] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();

  return _swift_task_switch(sub_100DCC798, v0, 0);
}

uint64_t sub_100DCC798()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 776) = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ackPairing...", v4, 2u);
  }

  v5 = *(v0 + 736);

  v6 = *(v5 + 160);

  sub_100D66FA0(v0 + 496);

  v7 = *(v0 + 704);
  *(v0 + 448) = *(v0 + 688);
  *(v0 + 464) = v7;
  *(v0 + 480) = *(v0 + 720);
  v8 = *(v0 + 640);
  *(v0 + 384) = *(v0 + 624);
  *(v0 + 400) = v8;
  v9 = *(v0 + 672);
  *(v0 + 416) = *(v0 + 656);
  *(v0 + 432) = v9;
  v10 = *(v0 + 576);
  *(v0 + 320) = *(v0 + 560);
  *(v0 + 336) = v10;
  v11 = *(v0 + 608);
  *(v0 + 352) = *(v0 + 592);
  *(v0 + 368) = v11;
  v12 = *(v0 + 512);
  *(v0 + 256) = *(v0 + 496);
  *(v0 + 272) = v12;
  v13 = *(v0 + 544);
  *(v0 + 288) = *(v0 + 528);
  *(v0 + 304) = v13;
  if (sub_1001010A8(v0 + 256) == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, " Unable to generate ack data!", v16, 2u);
    }

    v17 = *(v0 + 768);
    v18 = *(v0 + 760);
    v19 = *(v0 + 752);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 736);
    v23 = *(v0 + 464);
    *(v0 + 208) = *(v0 + 448);
    *(v0 + 224) = v23;
    *(v0 + 240) = *(v0 + 480);
    v24 = *(v0 + 400);
    *(v0 + 144) = *(v0 + 384);
    *(v0 + 160) = v24;
    v25 = *(v0 + 432);
    *(v0 + 176) = *(v0 + 416);
    *(v0 + 192) = v25;
    v26 = *(v0 + 336);
    *(v0 + 80) = *(v0 + 320);
    *(v0 + 96) = v26;
    v27 = *(v0 + 368);
    *(v0 + 112) = *(v0 + 352);
    *(v0 + 128) = v27;
    v28 = *(v0 + 272);
    *(v0 + 16) = *(v0 + 256);
    *(v0 + 32) = v28;
    v29 = *(v0 + 304);
    *(v0 + 48) = *(v0 + 288);
    *(v0 + 64) = v29;
    v30 = *(v22 + 136);
    v31 = swift_task_alloc();
    *(v0 + 784) = v31;
    *v31 = v0;
    v31[1] = sub_100DCCA70;
    v32 = *(v0 + 768);

    return sub_1004F8EC4(v32, v0 + 16);
  }
}

uint64_t sub_100DCCA70()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = *(v2 + 736);
  if (v0)
  {
    v6 = sub_100DCCDE8;
  }

  else
  {
    v6 = sub_100DCCB9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DCCB9C()
{
  v21 = v0;
  v1 = v0[97];
  sub_100DD9284(v0[96], v0[95], type metadata accessor for PencilPairingLockAckResponse);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[96];
  v6 = v0[95];
  if (v4)
  {
    v7 = v0[94];
    v8 = v0[93];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    sub_100DD9284(v6, v7, type metadata accessor for PencilPairingLockAckResponse);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100DD92EC(v6, type metadata accessor for PencilPairingLockAckResponse);
    v14 = sub_1000136BC(v11, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, " Ack register was success. %{public}s", v9, 0xCu);
    sub_100007BAC(v10);

    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);
  }

  else
  {
    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);

    sub_100DD92EC(v6, type metadata accessor for PencilPairingLockAckResponse);
  }

  sub_100DD92EC(v5, type metadata accessor for PencilPairingLockAckResponse);
  v15 = v0[96];
  v16 = v0[95];
  v17 = v0[94];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100DCCDE8()
{
  v1 = v0[99];
  v2 = v0[97];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[99];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, " Ack register failed with error - %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);
  }

  else
  {
    sub_10000B3A8((v0 + 62), &qword_1016BB898, &qword_1013E88F8);
  }

  v10 = v0[96];
  v11 = v0[95];
  v12 = v0[94];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DCCF98(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for PeripheralState();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v8 = *(v7 + 64) + 15;
  v2[32] = swift_task_alloc();
  v9 = type metadata accessor for LocalFindableAccessoryRecord();
  v2[33] = v9;
  v10 = *(v9 - 8);
  v2[34] = v10;
  v11 = *(v10 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v12 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_100DCD154, v1, 0);
}

uint64_t sub_100DCD154()
{
  v32 = v0;
  v1 = (*(v0[25] + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v2 = *v1;
  v0[38] = *v1;
  v3 = v1[1];
  v0[39] = v3;
  if (v3 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[18] = v2;
  v0[19] = v3;
  sub_100017D5C(v2, v3);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v2, v3);
LABEL_4:
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016BB490);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Invalid serial number.", v7, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v8 = xmmword_1013E84F0;
    *(v8 + 16) = 3;
    swift_willThrow();
    v10 = v0[36];
    v9 = v0[37];
    v11 = v0[35];
    v12 = v0[32];
    v14 = v0[28];
    v13 = v0[29];

    v15 = v0[1];

    return v15();
  }

  v17 = Data.trimmed.getter();
  v19 = v18;
  v0[40] = v17;
  v0[41] = v18;
  sub_100017D5C(v17, v18);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v0[42] = v20;
  sub_1000076D4(v20, qword_10177C418);
  sub_100017D5C(v17, v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_100016590(v17, v19);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 141558275;
    *(v24 + 4) = 1752392040;
    *(v24 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v26 = String.init(data:encoding:)();
    if (!v27)
    {
      v26 = Data.hexString.getter();
    }

    v28 = sub_1000136BC(v26, v27, &v31);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting registration through FMFD %{private,mask.hash}s", v24, 0x16u);
    sub_100007BAC(v25);
  }

  v29 = async function pointer to daemon.getter[1];
  v30 = swift_task_alloc();
  v0[43] = v30;
  *v30 = v0;
  v30[1] = sub_100DCD54C;

  return daemon.getter();
}

uint64_t sub_100DCD54C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v12 = *v1;
  *(v3 + 352) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 360) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DCD728;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DCD728(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v6 = *v2;
  v4[46] = a1;
  v4[47] = v1;

  v7 = v4[44];
  if (v1)
  {
    v8 = v4[25];
    sub_100016590(v4[40], v4[41]);

    v9 = sub_100DCDE34;
    v10 = v8;
  }

  else
  {

    v9 = sub_100DCD88C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100DCD88C()
{
  v1 = *(v0[46] + 128);
  v2 = swift_task_alloc();
  v0[48] = v2;
  *v2 = v0;
  v2[1] = sub_100DCD928;
  v4 = v0[40];
  v3 = v0[41];

  return sub_100C580A0(v4, v3);
}

uint64_t sub_100DCD928(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v9 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = v3[25];
    sub_100016590(v3[40], v3[41]);
    v6 = sub_100DCDD68;
    v7 = v5;
  }

  else
  {
    v7 = v3[25];
    v6 = sub_100DCDA50;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100DCDA50()
{
  v1 = v0[49];
  if (*(v1 + 16))
  {
    v3 = v0[35];
    v2 = v0[36];
    v5 = v0[31];
    v4 = v0[32];
    v6 = v0[30];
    v7 = *(v0[34] + 80);
    sub_100DD9284(v1 + ((v7 + 32) & ~v7), v3, type metadata accessor for LocalFindableAccessoryRecord);

    sub_100DD921C(v3, v2, type metadata accessor for LocalFindableAccessoryRecord);
    v0[51] = [objc_opt_self() sharedInstance];
    (*(v5 + 16))(v4, v2, v6);
    v8 = type metadata accessor for Peripheral();
    v9 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
    v10 = async function pointer to dispatch thunk of PeripheralProtocol.state.getter[1];
    v11 = swift_task_alloc();
    v0[52] = v11;
    *v11 = v0;
    v11[1] = sub_100DCDEF4;
    v12 = v0[29];
    v13 = v0[24];

    return dispatch thunk of PeripheralProtocol.state.getter(v12, v8, v9);
  }

  else
  {
    sub_100016590(v0[40], v0[41]);

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[42], qword_1016BB490);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[46];
    v19 = v0[40];
    v18 = v0[41];
    v21 = v0[38];
    v20 = v0[39];
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Invalid record!", v22, 2u);
    }

    sub_100006654(v21, v20);

    sub_100016590(v19, v18);
    v24 = v0[36];
    v23 = v0[37];
    v25 = v0[35];
    v26 = v0[32];
    v28 = v0[28];
    v27 = v0[29];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_100DCDD68()
{
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  sub_100006654(v0[38], v0[39]);

  sub_100016590(v3, v2);
  v4 = v0[50];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[32];
  v10 = v0[28];
  v9 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100DCDE34()
{
  v1 = v0[38];
  v2 = v0[39];
  sub_100016590(v0[40], v0[41]);
  sub_100006654(v1, v2);
  v3 = v0[47];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DCDEF4()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_100DCE004, v2, 0);
}

uint64_t sub_100DCE004()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[37];
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[27];
  (*(v7 + 104))(v5, enum case for PeripheralState.connected(_:), v6);
  sub_100D97688(&qword_1016BB890, &type metadata accessor for PeripheralState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v7 + 8);
  v0[53] = v8;
  v0[54] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v6);
  v9 = v0[22] == v0[23];
  v10 = objc_allocWithZone(FMDLocalFindableAccessory);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithIdentifier:isa name:v12 connected:v9];
  v0[55] = v13;

  sub_100017D5C(v2, v1);
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  v15 = v14;
  sub_100016590(v2, v1);
  v16 = v0[40];
  v17 = v0[41];
  if (!v15)
  {
    v18 = v0[40];
    v19 = v0[41];
    Data.hexString.getter();
    v16 = v18;
    v17 = v19;
  }

  sub_100016590(v16, v17);
  v20 = v0[36];
  v21 = v0[33];
  v22 = String._bridgeToObjectiveC()();

  [v13 setSerialNumber:v22];

  v23 = (v20 + *(v21 + 32));
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    v25 = *v23;
    v0[20] = *v23;
    v0[21] = v24;
    sub_100017D5C(v25, v24);
    sub_100DD8D18();
    RawRepresentable<>.hexString.getter();
    v26 = String._bridgeToObjectiveC()();

    [v13 setAlternateSerialNumber:v26];

    sub_100006654(v25, v24);
  }

  v45 = v0[51];
  v27 = v0[36];
  v28 = v0[33];
  v44 = v0[32];
  v29 = v27 + v28[13];
  v30 = (v29 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
  v31 = *v30;
  v32 = v30[1];
  v33 = Data._bridgeToObjectiveC()().super.isa;
  [v13 setIrkData:v33];

  MACAddress.hexString.getter();
  v34 = String._bridgeToObjectiveC()();

  [v13 setBtAddress:v34];

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_101385D80;
  v36 = *(v27 + v28[10]);
  *(v35 + 56) = &type metadata for Int;
  *(v35 + 64) = &protocol witness table for Int;
  *(v35 + 32) = v36;
  String.init(format:_:)();
  v37 = String._bridgeToObjectiveC()();

  [v13 setVendorId:v37];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_101385D80;
  v39 = *(v27 + v28[11]);
  *(v38 + 56) = &type metadata for Int;
  *(v38 + 64) = &protocol witness table for Int;
  *(v38 + 32) = v39;
  String.init(format:_:)();
  v40 = String._bridgeToObjectiveC()();

  [v13 setProductId:v40];

  v41 = UUID._bridgeToObjectiveC()().super.isa;
  [v13 setBaUUID:v41];

  v0[2] = v0;
  v0[3] = sub_100DCE510;
  v42 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100DDDDE4;
  v0[13] = &unk_101650CB0;
  v0[14] = v42;
  [v45 didAddLocalFindableAccessory:v13 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100DCE510()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 448) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_100DCE784;
  }

  else
  {
    v5 = sub_100DCE630;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DCE630()
{
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v22 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v9 = *(v0 + 208);

  sub_100016590(v4, v3);
  sub_100006654(v6, v5);
  v20(v8, v9);
  (*(v7 + 8))(v19, v18);
  sub_100DD92EC(v22, type metadata accessor for LocalFindableAccessoryRecord);
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v15 = *(v0 + 224);
  v14 = *(v0 + 232);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100DCE784()
{
  v2 = v0[55];
  v1 = v0[56];
  v23 = v0[53];
  v24 = v0[54];
  v3 = v0[51];
  v4 = v0[46];
  v6 = v0[40];
  v5 = v0[41];
  v19 = v0[38];
  v20 = v0[39];
  v25 = v0[36];
  v7 = v0[31];
  v8 = v0[29];
  v21 = v0[30];
  v22 = v0[32];
  v9 = v0[26];
  swift_willThrow();

  sub_100016590(v6, v5);
  sub_100006654(v19, v20);
  v23(v8, v9);
  (*(v7 + 8))(v22, v21);
  sub_100DD92EC(v25, type metadata accessor for LocalFindableAccessoryRecord);
  v10 = v0[56];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v14 = v0[32];
  v16 = v0[28];
  v15 = v0[29];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100DCE8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v9 = type metadata accessor for Characteristic();
  v10 = sub_100D97688(&qword_1016972C0, &type metadata accessor for Characteristic);
  v11 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v12 = swift_task_alloc();
  v3[6] = v12;
  *v12 = v3;
  v12[1] = sub_1000EFFFC;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v8, a3, v9, v10);
}

uint64_t sub_100DCEA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[425] = v3;
  v4[424] = a3;
  v4[423] = a2;
  v4[422] = a1;
  v5 = *(*(type metadata accessor for LocalFindableAccessoryRecord() - 8) + 64) + 15;
  v4[426] = swift_task_alloc();
  v4[427] = swift_task_alloc();
  v4[428] = swift_task_alloc();

  return _swift_task_switch(sub_100DCEB00, v3, 0);
}

uint64_t sub_100DCEB00()
{
  v221 = v0;
  sub_1001011C0(*(v0 + 3392), v0 + 3040);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v128 = *(v0 + 3392);
    v129 = type metadata accessor for Logger();
    sub_1000076D4(v129, qword_1016BB490);
    sub_1001011C0(v128, v0 + 3088);
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v220[0] = v133;
      *v132 = 136446210;
      sub_1001011C0(v0 + 3088, v0 + 3136);
      v134 = String.init<A>(describing:)();
      v136 = v135;
      sub_100007BAC((v0 + 3088));
      v137 = sub_1000136BC(v134, v136, v220);

      *(v132 + 4) = v137;
      _os_log_impl(&_mh_execute_header, v130, v131, "Invalid command from payload %{public}s", v132, 0xCu);
      sub_100007BAC(v133);
    }

    else
    {

      sub_100007BAC((v0 + 3088));
    }

    sub_100500BC4();
    swift_allocError();
    *v138 = xmmword_10139D990;
    *(v138 + 16) = 3;
    swift_willThrow();
    goto LABEL_50;
  }

  v1 = (v0 + 1456);
  v2 = *(v0 + 560);
  *(v0 + 1552) = *(v0 + 544);
  *(v0 + 1568) = v2;
  *(v0 + 1584) = *(v0 + 576);
  v3 = *(v0 + 496);
  *(v0 + 1488) = *(v0 + 480);
  *(v0 + 1504) = v3;
  v4 = *(v0 + 528);
  *(v0 + 1520) = *(v0 + 512);
  *(v0 + 1536) = v4;
  v5 = *(v0 + 464);
  *(v0 + 1456) = *(v0 + 448);
  *(v0 + 1472) = v5;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 3432) = v6;
  sub_1000076D4(v6, qword_1016BB490);
  sub_100DD93E8(v0 + 1456, v0 + 592);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100DD9444(v0 + 1456);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v220[0] = v10;
    *v9 = 136446210;
    v11 = *(v0 + 1568);
    *(v0 + 2992) = *(v0 + 1552);
    *(v0 + 3008) = v11;
    *(v0 + 3024) = *(v0 + 1584);
    v12 = *(v0 + 1504);
    *(v0 + 2928) = *(v0 + 1488);
    *(v0 + 2944) = v12;
    v13 = *(v0 + 1536);
    *(v0 + 2960) = *(v0 + 1520);
    *(v0 + 2976) = v13;
    v14 = *(v0 + 1472);
    *(v0 + 2896) = *v1;
    *(v0 + 2912) = v14;
    sub_100DD93E8(v0 + 1456, v0 + 160);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000136BC(v15, v16, v220);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received command: %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v18 = *(v0 + 1568);
  *(v0 + 112) = *(v0 + 1552);
  *(v0 + 128) = v18;
  *(v0 + 144) = *(v0 + 1584);
  v19 = *(v0 + 1504);
  *(v0 + 48) = *(v0 + 1488);
  *(v0 + 64) = v19;
  v20 = *(v0 + 1536);
  *(v0 + 80) = *(v0 + 1520);
  *(v0 + 96) = v20;
  v21 = *(v0 + 1472);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v21;
  v22 = sub_10027EE64(v0 + 16);
  if (v22 != 3)
  {
    if (v22 != 1)
    {
      sub_100DD93E8(v0 + 1456, v0 + 880);
      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();
      sub_100DD9444(v0 + 1456);
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v220[0] = v160;
        *v159 = 136446210;
        v161 = *(v0 + 1568);
        *(v0 + 1120) = *(v0 + 1552);
        *(v0 + 1136) = v161;
        *(v0 + 1152) = *(v0 + 1584);
        v162 = *(v0 + 1504);
        *(v0 + 1056) = *(v0 + 1488);
        *(v0 + 1072) = v162;
        v163 = *(v0 + 1536);
        *(v0 + 1088) = *(v0 + 1520);
        *(v0 + 1104) = v163;
        v164 = *(v0 + 1472);
        *(v0 + 1024) = *v1;
        *(v0 + 1040) = v164;
        sub_100DD93E8(v0 + 1456, v0 + 1168);
        v165 = String.init<A>(describing:)();
        v167 = sub_1000136BC(v165, v166, v220);

        *(v159 + 4) = v167;
        _os_log_impl(&_mh_execute_header, v157, v158, "Received unexpected command %{public}s", v159, 0xCu);
        sub_100007BAC(v160);
      }

      sub_100500BC4();
      swift_allocError();
      v169 = xmmword_10139D990;
      goto LABEL_48;
    }

    sub_10004F9D4(v0 + 16);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, " Received pairing data!!", v25, 2u);
    }

    sub_10027EBC4((v0 + 3264));
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v26 = *(v0 + 1712);
      *(v0 + 1984) = *(v0 + 1696);
      *(v0 + 2000) = v26;
      *(v0 + 2016) = *(v0 + 1728);
      v27 = *(v0 + 1648);
      *(v0 + 1920) = *(v0 + 1632);
      *(v0 + 1936) = v27;
      v28 = *(v0 + 1680);
      *(v0 + 1952) = *(v0 + 1664);
      *(v0 + 1968) = v28;
      v29 = *(v0 + 1616);
      *(v0 + 1888) = *(v0 + 1600);
      *(v0 + 1904) = v29;
      sub_100DD98E0(v0 + 1888, v0 + 2032);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v220[0] = v33;
        *v32 = 136315138;
        v34 = *(v0 + 1888);
        v35 = *(v0 + 1896);
        v36 = Data.hexString.getter();
        v38 = sub_1000136BC(v36, v37, v220);

        *(v32 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v30, v31, "AuthNonce: %s", v32, 0xCu);
        sub_100007BAC(v33);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2176);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v220[0] = v42;
        *v41 = 136315138;
        v43 = *(v0 + 1904);
        v44 = *(v0 + 1912);
        v45 = Data.hexString.getter();
        v47 = sub_1000136BC(v45, v46, v220);

        *(v41 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v39, v40, "SerialNumber: %s", v41, 0xCu);
        sub_100007BAC(v42);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2320);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v220[0] = v51;
        *v50 = 136315138;
        v52 = *(v0 + 1920);
        v53 = *(v0 + 1928);
        v54 = Data.hexString.getter();
        v56 = sub_1000136BC(v54, v55, v220);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Alternate SerialNumber: %s", v50, 0xCu);
        sub_100007BAC(v51);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2464);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v220[0] = v60;
        *v59 = 136315138;
        v61 = *(v0 + 1936);
        v62 = *(v0 + 1944);
        v63 = Data.hexString.getter();
        v65 = sub_1000136BC(v63, v64, v220);

        *(v59 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v57, v58, "seed: %s", v59, 0xCu);
        sub_100007BAC(v60);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2608);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v220[0] = v69;
        *v68 = 136315138;
        v70 = *(v0 + 1968);
        v71 = *(v0 + 1976);
        v72 = Data.hexString.getter();
        v74 = sub_1000136BC(v72, v73, v220);

        *(v68 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v67, "Certs: %s", v68, 0xCu);
        sub_100007BAC(v69);
      }

      sub_100DD98E0(v0 + 1888, v0 + 2752);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      sub_10027FD08(v0 + 1888);
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v220[0] = v78;
        *v77 = 136315138;
        v79 = *(v0 + 1952);
        v80 = *(v0 + 1960);
        v81 = Data.hexString.getter();
        v83 = sub_1000136BC(v81, v82, v220);

        *(v77 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v75, v76, "Attestation: %s", v77, 0xCu);
        sub_100007BAC(v78);
      }

      v84 = *(v0 + 3400);
      *(v84 + 152) = 3;
      v85 = *(v0 + 1888);
      v86 = *(v0 + 1896);
      v87 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
      v88 = *v87;
      v89 = v87[1];
      *v87 = v85;
      v87[1] = v86;

      sub_100017D5C(v85, v86);
      sub_100006654(v88, v89);

      v90 = *(v0 + 1904);
      v91 = *(v0 + 1912);
      v92 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v93 = *v92;
      v94 = v92[1];
      *v92 = v90;
      v92[1] = v91;

      sub_100017D5C(v90, v91);
      sub_100006654(v93, v94);

      v95 = *(v0 + 1920);
      v96 = *(v0 + 1928);
      v97 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
      v98 = *v97;
      v99 = v97[1];
      *v97 = v95;
      v97[1] = v96;

      sub_100017D5C(v95, v96);
      sub_100006654(v98, v99);

      v100 = *(v0 + 1936);
      v101 = *(v0 + 1944);
      v102 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
      v103 = *v102;
      v104 = v102[1];
      *v102 = v100;
      v102[1] = v101;

      sub_100017D5C(v100, v101);
      sub_100006654(v103, v104);

      v105 = *(v0 + 1968);
      v106 = *(v0 + 1976);
      v107 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
      v108 = *v107;
      v109 = v107[1];
      *v107 = v105;
      v107[1] = v106;

      sub_100017D5C(v105, v106);
      sub_100006654(v108, v109);

      v110 = *(v0 + 1952);
      v111 = *(v0 + 1960);
      v112 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_attestation);
      v113 = *v112;
      v114 = v112[1];
      *v112 = v110;
      v112[1] = v111;

      sub_100017D5C(v110, v111);
      sub_100006654(v113, v114);

      v115 = *(v0 + 1984);
      v116 = *(v0 + 1992);
      v117 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
      v118 = *v117;
      v119 = v117[1];
      *v117 = v115;
      v117[1] = v116;

      sub_100017D5C(v115, v116);
      sub_100006654(v118, v119);

      v120 = *(v0 + 2000);
      v121 = *(v0 + 2008);
      v122 = (*(v84 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySignature);
      v123 = *v122;
      v124 = v122[1];
      *v122 = v120;
      v122[1] = v121;

      sub_100017D5C(v120, v121);
      sub_100006654(v123, v124);

      v125 = swift_task_alloc();
      *(v0 + 3440) = v125;
      *v125 = v0;
      v125[1] = sub_100DD0138;
      v126 = *(v0 + 3400);

      return sub_100DBE2D8(v0 + 304);
    }

    sub_100DD93E8(v0 + 1456, v0 + 1744);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v220[0] = v173;
      *v172 = 136446210;
      sub_10027EBC4((v0 + 3304));
      v174 = String.init<A>(describing:)();
      v176 = sub_1000136BC(v174, v175, v220);

      *(v172 + 4) = v176;
      v177 = "Invalid sendPairingData payload %{public}s";
LABEL_46:
      _os_log_impl(&_mh_execute_header, v170, v171, v177, v172, 0xCu);
      sub_100007BAC(v173);

      goto LABEL_47;
    }

    goto LABEL_47;
  }

  sub_10004F9D4(v0 + 16);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&_mh_execute_header, v139, v140, "Received pairing status.", v141, 2u);
  }

  v142 = *(v0 + 3400);

  *(v142 + 152) = 5;
  sub_10027EBC4((v0 + 3184));
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_100DD93E8(v0 + 1456, v0 + 1312);
    v170 = Logger.logObject.getter();
    v171 = static os_log_type_t.error.getter();
    sub_100DD9444(v0 + 1456);
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v220[0] = v173;
      *v172 = 136446210;
      sub_10027EBC4((v0 + 3224));
      v178 = String.init<A>(describing:)();
      v180 = sub_1000136BC(v178, v179, v220);

      *(v172 + 4) = v180;
      v177 = " Invalid sendPairingStatus payload %{public}s";
      goto LABEL_46;
    }

LABEL_47:

    sub_100500BC4();
    swift_allocError();
    v169 = xmmword_10139D9A0;
LABEL_48:
    *v168 = v169;
    *(v168 + 16) = 3;
    swift_willThrow();
LABEL_49:
    sub_100DD9444(v0 + 1456);
LABEL_50:
    v181 = *(v0 + 3424);
    v182 = *(v0 + 3416);
    v183 = *(v0 + 3408);

    v184 = *(v0 + 8);

    return v184();
  }

  v143 = *(v0 + 3344);
  *(v0 + 3456) = v143;
  v144 = *(v0 + 3352);
  *(v0 + 3464) = v144;
  v145 = *(v0 + 3360);
  *(v0 + 3472) = v145;
  v146 = *(v0 + 3368);
  *(v0 + 3480) = v146;
  sub_100017D5C(v143, v144);
  v147 = sub_1008CDF88(v143, v144);
  if (v147)
  {
    v218 = v144;
    v148 = v147;
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v220[0] = v152;
      *v151 = 136446210;
      v153 = sub_1008CDD10(v148);
      v155 = sub_1000136BC(v153, v154, v220);

      *(v151 + 4) = v155;
      _os_log_impl(&_mh_execute_header, v149, v150, " Pairing failed with status %{public}s", v151, 0xCu);
      sub_100007BAC(v152);
    }

    sub_100500BC4();
    swift_allocError();
    *v156 = xmmword_1013AC380;
    *(v156 + 16) = 3;
    swift_willThrow();
    sub_100016590(v143, v218);
    sub_100016590(v145, v146);
    goto LABEL_49;
  }

  v185 = *(v0 + 3400);
  v186 = (*(v185 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v187 = *v186;
  v188 = v186[1];
  *v186 = v143;
  v186[1] = v144;
  sub_100017D5C(v143, v144);

  sub_100006654(v187, v188);

  v189 = (*(v185 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v190 = *v189;
  v191 = v189[1];
  *v189 = v145;
  v189[1] = v146;

  sub_100017D5C(v145, v146);
  sub_100006654(v190, v191);

  v192 = Logger.logObject.getter();
  v193 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v192, v193))
  {
    buf = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v220[0] = v219;
    *buf = 136446210;
    v194 = sub_1008CDD10(0);
    v196 = v144;
    v197 = v143;
    v198 = v146;
    v199 = v145;
    v200 = sub_1000136BC(v194, v195, v220);

    *(buf + 4) = v200;
    v145 = v199;
    v146 = v198;
    v143 = v197;
    v144 = v196;
    _os_log_impl(&_mh_execute_header, v192, v193, "status: %{public}s", buf, 0xCu);
    sub_100007BAC(v219);
  }

  sub_100017D5C(v143, v144);
  sub_100017D5C(v145, v146);
  v201 = Logger.logObject.getter();
  v202 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v201, v202))
  {
    v203 = swift_slowAlloc();
    result = swift_slowAlloc();
    v204 = result;
    v220[0] = result;
    *v203 = 134218242;
    v205 = v146 >> 62;
    if ((v146 >> 62) > 1)
    {
      if (v205 != 2)
      {
        v206 = 0;
        goto LABEL_67;
      }

      v208 = *(v145 + 16);
      v207 = *(v145 + 24);
      v209 = __OFSUB__(v207, v208);
      v206 = v207 - v208;
      if (!v209)
      {
        goto LABEL_67;
      }

      __break(1u);
    }

    else if (!v205)
    {
      v206 = BYTE6(v146);
LABEL_67:
      *(v203 + 4) = v206;
      sub_100016590(v143, v144);
      sub_100016590(v145, v146);
      *(v203 + 12) = 2080;
      v210 = Data.hexString.getter();
      v212 = sub_1000136BC(v210, v211, v220);

      *(v203 + 14) = v212;
      _os_log_impl(&_mh_execute_header, v201, v202, "S4 count %ld: %s", v203, 0x16u);
      sub_100007BAC(v204);

      goto LABEL_68;
    }

    LODWORD(v206) = HIDWORD(v145) - v145;
    if (__OFSUB__(HIDWORD(v145), v145))
    {
      __break(1u);
      return result;
    }

    v206 = v206;
    goto LABEL_67;
  }

  sub_100016590(v143, v144);
  sub_100016590(v145, v146);
LABEL_68:

  v213 = swift_task_alloc();
  *(v0 + 3488) = v213;
  *v213 = v0;
  v213[1] = sub_100DD03C4;
  v214 = *(v0 + 3424);
  v215 = *(v0 + 3400);
  v216 = *(v0 + 3384);

  return sub_100DD0A2C(v214, v216);
}

uint64_t sub_100DD0138()
{
  v2 = *v1;
  v3 = *(*v1 + 3440);
  v11 = *v1;
  *(*v1 + 3448) = v0;

  v4 = *(v2 + 3400);
  if (v0)
  {
    v5 = sub_100DD0330;
  }

  else
  {
    v6 = *(v2 + 416);
    *(v2 + 832) = *(v2 + 400);
    *(v2 + 848) = v6;
    *(v2 + 864) = *(v2 + 432);
    v7 = *(v2 + 352);
    *(v2 + 768) = *(v2 + 336);
    *(v2 + 784) = v7;
    v8 = *(v2 + 384);
    *(v2 + 800) = *(v2 + 368);
    *(v2 + 816) = v8;
    v9 = *(v2 + 320);
    *(v2 + 736) = *(v2 + 304);
    *(v2 + 752) = v9;
    v5 = sub_100DD0278;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD0278()
{
  sub_10027FD08(v0 + 1888);
  sub_100DD9444(v0 + 1456);
  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = *(v0 + 3408);
  v4 = *(v0 + 3376);
  v5 = *(v0 + 864);
  v7 = *(v0 + 816);
  v6 = *(v0 + 832);
  v4[7] = *(v0 + 848);
  v4[8] = v5;
  v4[5] = v7;
  v4[6] = v6;
  v8 = *(v0 + 800);
  v10 = *(v0 + 752);
  v9 = *(v0 + 768);
  v4[3] = *(v0 + 784);
  v4[4] = v8;
  v4[1] = v10;
  v4[2] = v9;
  *v4 = *(v0 + 736);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100DD0330()
{
  sub_10027FD08((v0 + 236));
  sub_100DD9444((v0 + 182));
  v1 = v0[431];
  v2 = v0[428];
  v3 = v0[427];
  v4 = v0[426];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100DD03C4()
{
  v2 = *v1;
  v3 = *(*v1 + 3488);
  v4 = *v1;
  *(*v1 + 3496) = v0;

  v5 = *(v2 + 3400);
  if (v0)
  {
    v6 = sub_100DD0980;
  }

  else
  {
    v6 = sub_100DD04F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD04F0()
{
  v44 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = *(v0 + 3408);
  sub_1000076D4(*(v0 + 3432), qword_10177C418);
  sub_100DD9284(v1, v2, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v1, v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 3416);
  v8 = *(v0 + 3408);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v9 = 136315651;
    v10 = sub_100158AA8();
    v12 = v11;
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
    v13 = sub_1000136BC(v10, v12, v43);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    type metadata accessor for UUID();
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100DD92EC(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v17 = sub_1000136BC(v14, v16, v43);

    *(v9 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Created beacon: %s. BeaconId: %{private,mask.hash}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100DD92EC(v8, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v18 = *(v0 + 3496);
  *(*(v0 + 3400) + 152) = 9;
  v19 = static Data.random(bytes:)();
  v21 = v20;
  sub_100017D5C(v19, v20);
  sub_100D53EA4();
  BinaryDecodable.init(data:)();
  v22 = *(v0 + 3480);
  v23 = *(v0 + 3472);
  v24 = *(v0 + 3464);
  v25 = *(v0 + 3456);
  v26 = *(v0 + 3424);
  if (v18)
  {

    sub_100500BC4();
    swift_allocError();
    *v27 = xmmword_10139D9A0;
    *(v27 + 16) = 3;
    swift_willThrow();
    sub_100DD9444(v0 + 1456);
    sub_100016590(v19, v21);
    sub_100016590(v25, v24);
    sub_100016590(v23, v22);
    sub_100DD92EC(v26, type metadata accessor for LocalFindableAccessoryRecord);
    v28 = *(v0 + 3424);
    v29 = *(v0 + 3416);
    v30 = *(v0 + 3408);
  }

  else
  {
    sub_100016590(v19, v21);
    sub_100016590(v25, v24);
    sub_100016590(v23, v22);
    sub_100DD9444(v0 + 1456);
    sub_100DD92EC(v26, type metadata accessor for LocalFindableAccessoryRecord);
    sub_10028067C(v0 + 736);
    v32 = *(v0 + 3424);
    v33 = *(v0 + 3416);
    v34 = *(v0 + 3408);
    v35 = *(v0 + 3376);
    v36 = *(v0 + 800);
    v38 = *(v0 + 752);
    v37 = *(v0 + 768);
    v35[3] = *(v0 + 784);
    v35[4] = v36;
    v35[1] = v38;
    v35[2] = v37;
    v39 = *(v0 + 864);
    v41 = *(v0 + 816);
    v40 = *(v0 + 832);
    v35[7] = *(v0 + 848);
    v35[8] = v39;
    v35[5] = v41;
    v35[6] = v40;
    *v35 = *(v0 + 736);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100DD0980()
{
  v1 = v0[435];
  v2 = v0[434];
  sub_100016590(v0[432], v0[433]);
  sub_100016590(v2, v1);
  sub_100DD9444((v0 + 182));
  v3 = v0[437];
  v4 = v0[428];
  v5 = v0[427];
  v6 = v0[426];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DD0A2C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for CloudKitCoordinator.Database();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = *(*(type metadata accessor for LocalFindableAccessoryRecord() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v3[22] = v13;
  v14 = *(v13 - 8);
  v3[23] = v14;
  v3[24] = *(v14 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_10169B558, &qword_1013E8940) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v16 = type metadata accessor for PeripheralPairingInfo();
  v3[28] = v16;
  v17 = *(v16 - 8);
  v3[29] = v17;
  v18 = *(v17 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_1016BB858, &unk_1013E87B8) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v20 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_100DD0DC0, v2, 0);
}

uint64_t sub_100DD0DC0()
{
  v55 = v0;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v1 = qword_10177C218;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 BOOLForKey:v4];

    if (v5)
    {
      if (qword_101694EA0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016BB490);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v54[0] = v10;
        *v9 = 136446210;
        *(v9 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, v54);
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s SimulateLocalFindablePairingFailure defaults set. Failing beacon creation!", v9, 0xCu);
        sub_100007BAC(v10);
      }

      v11 = 20;
LABEL_18:
      sub_100500BC4();
      swift_allocError();
      *v19 = v11;
      *(v19 + 8) = 0;
      *(v19 + 16) = 3;
      swift_willThrow();
      v21 = v0[34];
      v20 = v0[35];
      v23 = v0[32];
      v22 = v0[33];
      v25 = v0[30];
      v24 = v0[31];
      v26 = v0[26];
      v27 = v0[27];
      v28 = v0[25];
      v29 = v0[21];
      v48 = v0[18];
      v49 = v0[17];
      v50 = v0[16];
      v51 = v0[15];
      v52 = v0[14];
      v53 = v0[11];

      v30 = v0[1];

      return v30();
    }
  }

  v12 = (*(v0[9] + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v13 = *v12;
  v0[36] = *v12;
  v14 = v12[1];
  v0[37] = v14;
  if (v14 >> 60 == 15)
  {
LABEL_13:
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016BB490);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid serial number.", v18, 2u);
    }

    v11 = 8;
    goto LABEL_18;
  }

  v0[5] = v13;
  v0[6] = v14;
  sub_100017D5C(v13, v14);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v13, v14);
    goto LABEL_13;
  }

  v32 = Data.trimmed.getter();
  v34 = v33;
  v0[38] = v32;
  v0[39] = v33;
  sub_100017D5C(v32, v33);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v0[40] = v35;
  sub_1000076D4(v35, qword_10177C418);
  sub_100017D5C(v32, v34);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[35];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54[0] = v40;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v41 = String.init(data:encoding:)();
    if (!v42)
    {
      v41 = Data.hexString.getter();
    }

    v43 = v41;
    v44 = v42;
    sub_100016590(v32, v34);
    v45 = sub_1000136BC(v43, v44, v54);

    *(v39 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Creating beacon for %{private,mask.hash}s", v39, 0x16u);
    sub_100007BAC(v40);
  }

  else
  {
    sub_100016590(v32, v34);
  }

  v46 = async function pointer to daemon.getter[1];
  v47 = swift_task_alloc();
  v0[41] = v47;
  *v47 = v0;
  v47[1] = sub_100DD142C;

  return daemon.getter();
}

uint64_t sub_100DD142C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v12 = *v1;
  *(v3 + 336) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 344) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DD1608;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DD1608(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v10 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = v3[9];
    v6 = sub_100DD1958;
  }

  else
  {
    v7 = v3[42];
    v8 = v3[9];

    v6 = sub_100DD1730;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD1730()
{
  v1 = v0[44];
  v2 = v0[10];
  v3 = swift_allocObject();
  v0[46] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_100DD1830;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1013E8950, v3, &type metadata for () + 8);
}

uint64_t sub_100DD1830()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_100DD1CD8;
  }

  else
  {
    v6 = *(v2 + 368);
    v7 = *(v2 + 72);

    v5 = sub_100DD1AB4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD1958()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];

  sub_100016590(v2, v3);
  sub_100006654(v5, v4);
  v24 = v0[45];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[26];
  v13 = v0[27];
  v14 = v0[25];
  v15 = v0[21];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DD1AB4()
{
  v1 = type metadata accessor for Peripheral();
  v0[49] = v1;
  v2 = sub_100D97688(&qword_1016972A0, &type metadata accessor for Peripheral);
  v0[50] = v2;
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.pairingInfo.getter[1];
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_100DD1BAC;
  v5 = v0[32];
  v6 = v0[8];

  return dispatch thunk of PeripheralProtocol.pairingInfo.getter(v5, v1, v2);
}

uint64_t sub_100DD1BAC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_100DD2248;
  }

  else
  {
    v6 = sub_100DD1E3C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD1CD8()
{
  v1 = v0[46];
  v2 = v0[44];
  v4 = v0[38];
  v3 = v0[39];
  sub_100006654(v0[36], v0[37]);
  sub_100016590(v4, v3);

  v23 = v0[48];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[26];
  v12 = v0[27];
  v13 = v0[25];
  v14 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100DD1E3C()
{
  v49 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v0[53] = sub_1000076D4(v0[40], qword_1016BB490);
  v47 = *(v4 + 16);
  v47(v1, v2, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v11 = 136315138;
    sub_100D97688(&qword_1016BB8B0, &type metadata accessor for PeripheralPairingInfo);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v43 = v6;
    v15 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16 = v9;
    v17 = *(v10 + 8);
    v17(v8, v16);
    v18 = sub_1000136BC(v12, v14, &v48);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v5, v43, "Peripheral pairing info: %s", v11, 0xCu);
    sub_100007BAC(v45);
  }

  else
  {

    v15 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19 = v9;
    v17 = *(v10 + 8);
    v17(v8, v19);
  }

  v20 = v17;
  v0[54] = v17;
  v41 = v0[49];
  v42 = v0[50];
  v21 = v0[30];
  v23 = v0[27];
  v22 = v0[28];
  v24 = v0[21];
  v39 = v0[19];
  v40 = v0[26];
  v44 = v0[20];
  v46 = v0[9];
  v38 = v0[8];
  v25 = *(v46 + 160);
  v47(v21, v0[32], v22);

  PeripheralPairingInfo.remoteAddress.getter();
  v26 = PeripheralPairingInfo.remoteIRK.getter();
  v28 = v27;
  v0[55] = v15;
  v20(v21, v22);
  v29 = type metadata accessor for PeripheralConnectionMaterial(0);
  v30 = (v23 + *(v29 + 20));
  *v30 = v26;
  v30[1] = v28;
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
  swift_beginAccess();
  sub_10002311C(v23, v25 + v31, &qword_10169B558, &qword_1013E8940);
  swift_endAccess();

  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();
  (*(v44 + 8))(v24, v39);
  v32 = *(v46 + 160);
  v0[56] = v32;

  v33 = swift_task_alloc();
  v0[57] = v33;
  *v33 = v0;
  v33[1] = sub_100DD23A0;
  v34 = v0[26];
  v35 = v0[18];
  v36 = v0[9];

  return sub_100DD3F60(v35, v34, v32);
}

uint64_t sub_100DD2248()
{
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  sub_100006654(v0[36], v0[37]);
  sub_100016590(v3, v2);

  v22 = v0[52];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DD23A0()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  v2[58] = v0;

  v5 = v2[56];
  if (v0)
  {
    v6 = v2[9];

    v7 = sub_100DD26AC;
  }

  else
  {
    v6 = v2[44];

    v7 = sub_100DD24E0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100DD24E0()
{
  v1 = *(v0[44] + 128);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_100DD2580;
  v3 = v0[26];
  v4 = v0[15];

  return sub_100C57B00(v4, v3);
}

uint64_t sub_100DD2580()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_100DD2ABC;
  }

  else
  {
    v6 = sub_100DD2848;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD26AC()
{
  v28 = v0[54];
  v30 = v0[55];
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[22];
  v10 = v0[23];

  sub_100016590(v2, v3);
  sub_100006654(v5, v4);
  (*(v10 + 8))(v8, v9);
  v28(v6, v7);
  v31 = v0[58];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[21];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v27 = v0[14];
  v29 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100DD2848()
{
  v1 = v0[44];
  v2 = v0[18];
  v3 = v0[15];
  v4 = swift_task_alloc();
  v0[61] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return _swift_task_switch(sub_100DD28CC, v1, 0);
}

uint64_t sub_100DD28CC()
{
  v1 = *(v0[44] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_100DD2994;
  v4 = v0[61];
  v5 = v0[33];

  return v7(v5, &unk_1013E8968, v4);
}

uint64_t sub_100DD2994()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v9 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = sub_100DD2F3C;
  }

  else
  {
    v6 = v2[61];
    v7 = v2[9];

    v5 = sub_100DD2C7C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD2ABC()
{
  v29 = v0[54];
  v31 = v0[55];
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[22];
  v10 = v0[23];
  v27 = v0[18];

  sub_100016590(v2, v3);
  sub_100006654(v5, v4);
  (*(v10 + 8))(v8, v9);
  v29(v6, v7);
  sub_100DD92EC(v27, type metadata accessor for LocalFindableAccessoryRecord);
  v32 = v0[60];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[21];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v28 = v0[14];
  v30 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100DD2C7C()
{
  v24 = v0;
  v1 = v0[53];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_1000D2AD8(v0[33], v0[34], &qword_1016BB858, &unk_1013E87B8);
  sub_100DD9284(v2, v3, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v2, v4, type metadata accessor for LocalFindableAccessoryRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[22];
    v8 = v0[16];
    v7 = v0[17];
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_100158AA8();
    v12 = v11;
    sub_100DD92EC(v7, type metadata accessor for LocalFindableAccessoryRecord);
    v13 = sub_1000136BC(v10, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100DD92EC(v8, type metadata accessor for LocalFindableAccessoryRecord);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Saving new %s %{public}s to CK.", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[16];
    v18 = v0[17];

    sub_100DD92EC(v19, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100DD92EC(v18, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v20 = v0[44];
  (*(v0[13] + 104))(v0[14], enum case for CloudKitCoordinator.Database.private(_:), v0[12]);

  return _swift_task_switch(sub_100DD3188, v20, 0);
}

uint64_t sub_100DD2F3C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100DD2FA8, v2, 0);
}

uint64_t sub_100DD2FA8()
{
  v28 = v0[54];
  v30 = v0[55];
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[26];
  v9 = v0[22];
  v10 = v0[23];
  v32 = v0[18];
  v26 = v0[15];

  sub_100016590(v2, v3);
  sub_100006654(v5, v4);
  (*(v10 + 8))(v8, v9);
  v28(v6, v7);
  sub_10000B3A8(v26, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v32, type metadata accessor for LocalFindableAccessoryRecord);
  v33 = v0[63];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[21];
  v23 = v0[18];
  v24 = v0[17];
  v25 = v0[16];
  v27 = v0[15];
  v29 = v0[14];
  v31 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100DD3188()
{
  v1 = *(v0[44] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_100DD323C;
  v4 = v0[34];
  v5 = v0[14];

  return v7(v4, v5);
}

uint64_t sub_100DD323C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v8 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = sub_100DD36EC;
  }

  else
  {
    v6 = v2[9];
    (*(v2[13] + 8))(v2[14], v2[12]);
    v5 = sub_100DD3374;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD3374()
{
  v28 = v0[54];
  v29 = v0[55];
  v17 = v0[44];
  v18 = v0[38];
  v21 = v0[37];
  v19 = v0[39];
  v20 = v0[36];
  v26 = v0[34];
  v30 = v0[35];
  v31 = v0[33];
  v24 = v0[32];
  v32 = v0[31];
  v33 = v0[30];
  v23 = v0[28];
  v34 = v0[27];
  v1 = v0[25];
  v2 = v0[26];
  v16 = v2;
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v35 = v0[21];
  v25 = v0[18];
  v36 = v0[17];
  v37 = v0[16];
  v27 = v0[15];
  v38 = v0[14];
  v6 = v0[11];
  v15 = v0[10];
  v7 = v0[9];
  v22 = v0[7];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v3 + 16))(v1, v2, v5);
  v9 = sub_100D97688(&qword_1016BB850, type metadata accessor for PencilPairingService);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v9;
  *(v12 + 4) = v7;
  (*(v3 + 32))(&v12[v10], v1, v5);
  *&v12[v11] = v15;
  swift_retain_n();
  sub_10025EDD4(0, 0, v6, &unk_1013E8978, v12);

  sub_100016590(v18, v19);
  sub_100006654(v20, v21);
  (*(v3 + 8))(v16, v5);
  v28(v24, v23);
  sub_10000B3A8(v26, &qword_1016BB858, &unk_1013E87B8);
  sub_100DD9284(v25, v22, type metadata accessor for LocalFindableAccessoryRecord);
  sub_10000B3A8(v27, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v25, type metadata accessor for LocalFindableAccessoryRecord);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100DD36EC()
{
  v1 = v0[9];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_100DD3768, v1, 0);
}

uint64_t sub_100DD3768()
{
  v29 = v0[54];
  v31 = v0[55];
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[32];
  v7 = v0[28];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v33 = v0[18];
  v25 = v0[34];
  v27 = v0[15];

  sub_100016590(v2, v3);
  sub_100006654(v5, v4);
  (*(v9 + 8))(v8, v10);
  v29(v6, v7);
  sub_10000B3A8(v25, &qword_1016BB858, &unk_1013E87B8);
  sub_10000B3A8(v27, &qword_1016A9A30, &unk_1013BD120);
  sub_100DD92EC(v33, type metadata accessor for LocalFindableAccessoryRecord);
  v34 = v0[65];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[26];
  v18 = v0[27];
  v19 = v0[25];
  v20 = v0[21];
  v23 = v0[18];
  v24 = v0[17];
  v26 = v0[16];
  v28 = v0[15];
  v30 = v0[14];
  v32 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100DD3964(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100DD3A24, 0, 0);
}

uint64_t sub_100DD3A24()
{
  v9 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_1000076D4(v1, qword_1016BB490);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available... %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100DD3BC8, v6, 0);
}

uint64_t sub_100DD3BC8()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100DD3C78;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100DD3C78()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_100DD3EE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_100DD3DAC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD3DAC()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101370D70, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DD3EE8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_100DDDDD0, 0, 0);
}

uint64_t sub_100DD3F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a2;
  v4[17] = a3;
  v4[15] = a1;
  v5 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169B558, &qword_1013E8940) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for PeripheralConnectionMaterial(0);
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v4[25] = v12;
  v13 = *(v12 - 8);
  v4[26] = v13;
  v14 = *(v13 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_100DD416C, v3, 0);
}

uint64_t sub_100DD416C()
{
  v99 = v0;
  v1 = (*(v0 + 136) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v3 = *v1;
  *(v0 + 88) = *v1;
  *(v0 + 96) = v2;
  sub_100017D5C(v3, v2);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v2);
  }

  else
  {
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);
    v7 = *(v0 + 136);
    v8 = Data.trimmed.getter();
    v10 = v9;
    v11 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();
    sub_1000D2A70(v7 + v11, v6, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v4 + 48))(v6, 1, v5) == 1)
    {
      v12 = *(v0 + 192);
      sub_100006654(v3, v2);
      sub_100016590(v8, v10);
      v13 = &qword_1016980D0;
      v14 = &unk_10138F3B0;
      v15 = v12;
    }

    else
    {
      v94 = v3;
      v95 = v8;
      v16 = *(v0 + 136);
      v17 = *(*(v0 + 208) + 32);
      v17(*(v0 + 232), *(v0 + 192), *(v0 + 200));
      if (*(v16 + 112) >> 60 == 15)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
        sub_100006654(v3, v2);
        sub_100016590(v8, v10);
        goto LABEL_9;
      }

      v90 = v17;
      v92 = v10;
      v93 = *(v16 + 112);
      v33 = *(v16 + 104);
      v34 = *(v0 + 168);
      v35 = *(v0 + 176);
      v36 = *(v0 + 160);
      v37 = *(v0 + 136);
      v38 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_peripheralConnectionMaterial;
      swift_beginAccess();
      sub_1000D2A70(v37 + v38, v36, &qword_10169B558, &qword_1013E8940);
      if ((*(v35 + 48))(v36, 1, v34) != 1)
      {
        v43 = *(v0 + 136);
        sub_100DD921C(*(v0 + 160), *(v0 + 184), type metadata accessor for PeripheralConnectionMaterial);
        v44 = (v43 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
        v45 = *(v43 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
        v46 = v0;
        if (v45 >> 60 == 15)
        {
          sub_100017D5C(v33, v93);
          v97 = 0;
          v89 = 0xF000000000000000;
        }

        else
        {
          v47 = *v44;
          *(v0 + 104) = *v44;
          *(v0 + 112) = v45;
          sub_10002E98C(v33, v93);
          sub_10002E98C(v47, v45);
          if (DataProtocol.isNull.getter())
          {
            sub_100006654(v47, v45);
            v97 = 0;
            v89 = 0xF000000000000000;
          }

          else
          {
            v97 = Data.trimmed.getter();
            v89 = v48;
            sub_100006654(v47, v45);
          }

          v46 = v0;
        }

        v49 = v46[28];
        v50 = v46;
        v51 = v46[25];
        v52 = v46[26];
        v53 = v46[19];
        v54 = v50[17];
        v81 = *(v52 + 16);
        (v81)(v49, v50[16], v51);
        v55 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
        swift_beginAccess();
        sub_1000D2A70(v54 + v55, v53, &qword_101697268, &qword_101394FE0);
        v56 = type metadata accessor for AccessoryProductInfo();
        v57 = (*(*(v56 - 8) + 48))(v53, 1, v56);
        v58 = v50[19];
        if (v57)
        {
          v87 = 0xE000000000000000;
          v88 = 0;
        }

        else
        {
          v59 = (v58 + *(v56 + 52));
          v87 = v59[1];
          v88 = *v59;
        }

        v60 = *(v0 + 136);
        sub_10000B3A8(v58, &qword_101697268, &qword_101394FE0);
        v75 = *(v0 + 136);
        if (*(v60 + 96))
        {
          v83 = *(v60 + 96);
          v84 = *(*(v0 + 136) + 88);
        }

        else
        {
          v83 = 0xE000000000000000;
          v84 = 0;
        }

        v61 = *(v0 + 232);
        v79 = *(v0 + 224);
        v80 = *(v0 + 216);
        v62 = *(v0 + 200);
        v77 = v61;
        v78 = *(v0 + 208);
        v73 = *(v0 + 184);
        v85 = *(v0 + 192);
        v86 = *(v0 + 160);
        v91 = *(v0 + 152);
        v63 = *(v0 + 144);
        v64 = *(v0 + 120);
        v81();

        v82 = sub_100313A28(v33, v93);
        sub_100313B54(v33, v93);
        static Endianness.current.getter();
        sub_10012BF24();
        FixedWidthInteger.init(data:ofEndianness:)();
        if (*(v0 + 244))
        {
          v65 = 0;
        }

        else
        {
          v65 = *(v0 + 240);
        }

        v74 = v65;
        v76 = *(v75 + 32);
        v66 = type metadata accessor for LocalFindableAccessoryRecord();
        sub_100DD9284(v73, v64 + v66[13], type metadata accessor for PeripheralConnectionMaterial);
        v67 = v64 + v66[14];
        static P256PrivateKey.random()();
        v68 = v64 + v66[15];
        static SymmetricKey256.random()();
        sub_100006654(v33, v93);
        sub_100006654(v94, v2);
        sub_100DD92EC(v73, type metadata accessor for PeripheralConnectionMaterial);
        (*(v78 + 8))(v77, v62);
        v90(v64, v79, v62);
        v69 = (v64 + v66[5]);
        *v69 = v88;
        v69[1] = v87;
        v70 = (v64 + v66[6]);
        *v70 = v84;
        v70[1] = v83;
        v71 = (v64 + v66[7]);
        *v71 = v95;
        v71[1] = v92;
        v72 = (v64 + v66[8]);
        *v72 = v97;
        v72[1] = v89;
        v90(v64 + v66[9], v80, v62);
        *(v64 + v66[10]) = v82;
        *(v64 + v66[11]) = v74;
        *(v64 + v66[12]) = v76;

        v31 = *(v0 + 8);
        goto LABEL_14;
      }

      v39 = *(v0 + 232);
      v41 = *(v0 + 200);
      v40 = *(v0 + 208);
      v42 = *(v0 + 160);
      sub_100017D5C(v33, v93);
      (*(v40 + 8))(v39, v41);
      sub_100006654(v94, v2);
      sub_100016590(v95, v92);
      sub_100006654(v33, v93);
      v13 = &qword_10169B558;
      v14 = &qword_1013E8940;
      v15 = v42;
    }

    sub_10000B3A8(v15, v13, v14);
  }

LABEL_9:
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_1016BB490);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v98 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000136BC(0xD00000000000002ELL, 0x8000000101370DE0, &v98);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s Invalid parameters!", v21, 0xCu);
    sub_100007BAC(v22);
  }

  v23 = *(v0 + 224);
  v24 = *(v0 + 232);
  v25 = *(v0 + 216);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  v96 = *(v0 + 144);
  sub_100500BC4();
  swift_allocError();
  *v30 = xmmword_10139D9A0;
  *(v30 + 16) = 3;
  swift_willThrow();

  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

uint64_t sub_100DD4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for LocalFindableAccessoryRecord();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100DD4B38, 0, 0);
}

uint64_t sub_100DD4B38()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1000D2A70(v0[3], v3, &qword_1016A9A30, &unk_1013BD120);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[5], &qword_1016A9A30, &unk_1013BD120);
    v4 = async function pointer to CloudKitChangeSet.Adaptor.create<A>(record:)[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    v6 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord);
    *v5 = v0;
    v5[1] = sub_100DD4D78;
    v7 = v0[6];
    v8 = v0[4];
    v9 = v0[2];

    return CloudKitChangeSet.Adaptor.create<A>(record:)(v8, v7, v6);
  }

  else
  {
    v10 = v0[4];
    sub_100DD921C(v0[5], v0[8], type metadata accessor for LocalFindableAccessoryRecord);
    v11 = swift_task_alloc();
    v0[10] = v11;
    *(v11 + 16) = v10;
    v12 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
    v13 = swift_task_alloc();
    v0[11] = v13;
    v14 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord);
    *v13 = v0;
    v13[1] = sub_100DD4EAC;
    v15 = v0[8];
    v16 = v0[6];
    v17 = v0[2];

    return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v15, sub_100DD9EA4, v11, v16, v14);
  }
}

uint64_t sub_100DD4D78()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v7 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 40);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100DD4EAC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100DD5068;
  }

  else
  {
    v4 = sub_100DD4FDC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100DD4FDC()
{
  sub_100DD92EC(v0[8], type metadata accessor for LocalFindableAccessoryRecord);
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100DD5068()
{
  sub_100DD92EC(v0[8], type metadata accessor for LocalFindableAccessoryRecord);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DD50F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_100DD5194;

  return sub_100DD546C(a5);
}

uint64_t sub_100DD5194()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100DD52C8, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100DD52C8()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016BB490);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed saveProductInfoRecord: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100DD546C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(type metadata accessor for BeaconProductInfoRecord() - 8);
  v2[10] = v6;
  v2[11] = *(v6 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryProductInfo();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100DD5638, v1, 0);
}

uint64_t sub_100DD5638()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = *(v0[6] + 160);
  v5 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v4 + v5, v3, &qword_101697268, &qword_101394FE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[14], &qword_101697268, &qword_101394FE0);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016BB490);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing product info!", v9, 2u);
    }

    sub_100500BC4();
    swift_allocError();
    *v10 = xmmword_1013E84D0;
    *(v10 + 16) = 3;
    swift_willThrow();
    v12 = v0[17];
    v11 = v0[18];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[12];
    v16 = v0[9];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[13];
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = v0[5];
    sub_100DD921C(v0[14], v20, type metadata accessor for AccessoryProductInfo);
    sub_100DD9284(v20, v19, type metadata accessor for AccessoryProductInfo);
    (*(v23 + 16))(v22, v25, v24);
    sub_10083B3C8(v19, v22, v21);
    v26 = async function pointer to daemon.getter[1];
    v27 = swift_task_alloc();
    v0[19] = v27;
    *v27 = v0;
    v27[1] = sub_100DD594C;

    return daemon.getter();
  }
}

uint64_t sub_100DD594C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100DD5B28;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DD5B28(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 168);
  v7 = *v2;

  v8 = *(v4 + 160);
  if (v1)
  {
    a1 = *(v5 + 48);

    v9 = sub_100DD607C;
  }

  else
  {

    *(v5 + 176) = a1;
    v9 = sub_100DD5C80;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_100DD5C80()
{
  v1 = v0[22];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  sub_100DD9284(v0[13], v2, type metadata accessor for BeaconProductInfoRecord);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v0[23] = v7;
  *(v7 + 16) = v1;
  sub_100DD921C(v2, v7 + v5, type metadata accessor for BeaconProductInfoRecord);
  v8 = (v7 + v6);
  *v8 = sub_100DD885C;
  v8[1] = 0;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_100DD5E00;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100DD9D2C, v7, &type metadata for () + 8);
}

uint64_t sub_100DD5E00()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return _swift_task_switch(sub_100DD5F2C, v3, 0);
}

uint64_t sub_100DD5F2C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100DD5F98, v2, 0);
}

uint64_t sub_100DD5F98()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  sub_100DD92EC(v0[13], type metadata accessor for BeaconProductInfoRecord);
  sub_100DD92EC(v2, type metadata accessor for AccessoryProductInfo);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100DD607C()
{
  v1 = v0[18];
  v2 = v0[13];
  sub_100500BC4();
  swift_allocError();
  *v3 = xmmword_1013E84B0;
  *(v3 + 16) = 3;
  swift_willThrow();
  sub_100DD92EC(v2, type metadata accessor for BeaconProductInfoRecord);
  sub_100DD92EC(v1, type metadata accessor for AccessoryProductInfo);
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100DD61A4(uint64_t a1, uint64_t a2, char a3)
{
  v3[2] = a2;
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_100DD62C8;

  return sub_100DC1228(a2, a3);
}

uint64_t sub_100DD62C8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100DD665C;
  }

  else
  {
    v3 = sub_100DD63DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100DD63DC()
{
  v22 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016BB490);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, &v21);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s succeeded for %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[5];
  v17 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100DD665C()
{
  v30 = v0;
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016BB490);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v28 = v0[8];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101370BB0, v29);
    *(v12 + 12) = 2082;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, v29);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s failed for %{public}s. Error %{public}@", v12, 0x20u);
    sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[8];
  v23 = v0[5];
  v24 = v0[6];
  swift_willThrow();

  v25 = v0[1];
  v26 = v0[8];

  return v25();
}

uint64_t sub_100DD6964()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = *(v0 + v4);
  v7 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_100DD61A4(v5, v0 + v3, v6);
}

uint64_t sub_100DD6A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingService.AttachedLocalFindableAccessory(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100DD6AEC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v3[17] = v4;
  v5 = *(v4 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v3[21] = v7;
  *v7 = v3;
  v7[1] = sub_100DD6BF4;

  return daemon.getter();
}

uint64_t sub_100DD6BF4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100D97688(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D97688(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100DD6DD0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100DD6DD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(*v2 + 128);
  v6 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v7 = sub_100DD7A48;
  }

  else
  {
    v8 = v3[22];

    v7 = sub_100DD6F10;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100DD6F10()
{
  *(v0 + 96) = *(v0 + 112);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016BB490);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Invalid serial number.", v4, 2u);
    }

    v5 = *(v0 + 192);

    sub_100500BC4();
    swift_allocError();
    *v6 = xmmword_10139D9A0;
    *(v6 + 16) = 3;
    swift_willThrow();

    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 144);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    *(v0 + 208) = Data.trimmed.getter();
    *(v0 + 216) = v15;

    return _swift_task_switch(sub_100DD70F8, v12, 0);
  }
}

uint64_t sub_100DD70F8()
{
  v1 = *(v0[24] + 128);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_100DD7194;
  v4 = v0[26];
  v3 = v0[27];

  return sub_100C580A0(v4, v3);
}

uint64_t sub_100DD7194(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_100DD7648;
  }

  else
  {
    v8 = sub_100DD72C8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100DD72C8()
{
  v35 = v0;
  v1 = v0[29];
  if (!*(v1 + 16))
  {
    v10 = v0[29];

    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v12 = v0[14];
    v11 = v0[15];
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016BB490);
    sub_100017D5C(v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_100016590(v12, v11);
    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[14];
      v16 = v0[15];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v20 = Data.description.getter();
      v22 = sub_1000136BC(v20, v21, &v34);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing record for %{private,mask.hash}s!", v18, 0x16u);
      sub_100007BAC(v19);
    }

    v24 = v0[26];
    v23 = v0[27];
    v25 = v0[24];
    sub_100500BC4();
    swift_allocError();
    *v26 = xmmword_1013AC380;
    *(v26 + 16) = 3;
    swift_willThrow();
    sub_100016590(v24, v23);

    goto LABEL_9;
  }

  v2 = v0[30];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = *(v0[17] + 80);
  sub_100DD9284(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for LocalFindableAccessoryRecord);

  sub_100DD921C(v3, v4, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100DD9284(v4, v5, type metadata accessor for LocalFindableAccessoryRecord);
  sub_1004FFC10(v5, (v0 + 2));
  if (v2)
  {
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[24];
    sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

    sub_100016590(v8, v7);
LABEL_9:
    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];

    v30 = v0[1];

    return v30();
  }

  v32 = *(v0[16] + 136);
  v33 = swift_task_alloc();
  v0[31] = v33;
  *v33 = v0;
  v33[1] = sub_100DD76E0;

  return sub_1004FA514((v0 + 2));
}

uint64_t sub_100DD7648()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];

  sub_100016590(v1, v2);
  v4 = v0[30];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100DD76E0()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {
    v4 = v3[16];
    sub_100DD8CC4((v3 + 2));

    return _swift_task_switch(sub_100DD7AD0, v4, 0);
  }

  else
  {
    sub_100DD8CC4((v3 + 2));
    v5 = swift_task_alloc();
    v3[33] = v5;
    *v5 = v3;
    v5[1] = sub_100DD7868;
    v6 = v3[16];
    v7 = v3[20];

    return sub_100DD7F30(v7);
  }
}

uint64_t sub_100DD7868()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_100DD7B84;
  }

  else
  {
    v6 = sub_100DD7994;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100DD7994()
{
  v1 = v0[24];
  sub_100016590(v0[26], v0[27]);

  v2 = v0[19];
  v3 = v0[18];
  sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DD7A48()
{
  v1 = v0[22];

  v2 = v0[25];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100DD7AD0()
{
  v1 = v0[24];
  v2 = v0[20];
  sub_100016590(v0[26], v0[27]);

  sub_100DD92EC(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v3 = v0[32];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100DD7B84()
{
  if (qword_101694EA0 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016BB490);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[24];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to unregister device: %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100016590(v8, v7);
  }

  else
  {
    v13 = v0[24];

    sub_100016590(v8, v7);
  }

  v14 = v0[19];
  v15 = v0[18];
  sub_100DD92EC(v0[20], type metadata accessor for LocalFindableAccessoryRecord);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100DD7DA0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.delete<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for LocalFindableAccessoryRecord();
  v7 = sub_100D97688(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord);
  *v5 = v2;
  v5[1] = sub_100014650;

  return CloudKitChangeSet.Adaptor.delete<A>(record:)(a2, v6, v7);
}

uint64_t sub_100DD7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100014744;

  return sub_100DB7E38(a3);
}

uint64_t sub_100DD7F30(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_100DD7F50, v1, 0);
}

uint64_t sub_100DD7F50()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v1[18];
  v4 = v1[19];
  v34 = [objc_opt_self() sharedInstance];
  v1[20] = v34;
  v5 = objc_allocWithZone(FMDLocalFindableAccessory);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithIdentifier:isa name:v7 connected:0];
  v1[21] = v8;

  v9 = (*(v4 + 160) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  v10 = *v9;
  v11 = v9[1];

  v12 = String._bridgeToObjectiveC()();

  [v8 setSerialNumber:v12];

  v13 = type metadata accessor for LocalFindableAccessoryRecord();
  v14 = (v3 + v13[8]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    v16 = *v14;
    v1[10] = *v14;
    v1[11] = v15;
    sub_100017D5C(v16, v15);
    sub_100DD8D18();
    RawRepresentable<>.hexString.getter();
    v17 = String._bridgeToObjectiveC()();

    [v8 setAlternateSerialNumber:v17];

    sub_100006654(v16, v15);
  }

  v18 = v1[18];
  v19 = v18 + v13[13];
  v20 = (v19 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
  v21 = *v20;
  v22 = v20[1];
  v23 = Data._bridgeToObjectiveC()().super.isa;
  [v8 setIrkData:v23];

  MACAddress.bluetoothAddress.getter();
  v24 = String._bridgeToObjectiveC()();

  [v8 setBtAddress:v24];

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  v26 = *(v18 + v13[10]);
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v26;
  String.init(format:_:)();
  v27 = String._bridgeToObjectiveC()();

  [v8 setVendorId:v27];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  v29 = *(v18 + v13[11]);
  *(v28 + 56) = &type metadata for Int;
  *(v28 + 64) = &protocol witness table for Int;
  *(v28 + 32) = v29;
  String.init(format:_:)();
  v30 = String._bridgeToObjectiveC()();

  [v8 setProductId:v30];

  v31 = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setBaUUID:v31];

  v1[2] = v1;
  v1[3] = sub_100DD8384;
  v32 = swift_continuation_init();
  v1[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100DDDDE4;
  v1[13] = &unk_101650B48;
  v1[14] = v32;
  [v34 didRemoveLocalFindableAccessory:v8 completion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100DD8384()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_100DD850C;
  }

  else
  {
    v5 = sub_100DD84A4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100DD84A4()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DD850C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_100DD8584(uint64_t a1, void *a2)
{
  v3 = sub_1000035D0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100DD8630(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100DD7DA0(a1, v4);
}

uint64_t sub_100DD86CC(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100DD7E94(a1, v6, v1 + v5);
}

uint64_t sub_100DD87BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100BAF6A4;

  return sub_100DDABD0(a2, a3);
}

void sub_100DD885C(uint64_t a1)
{
  v2 = type metadata accessor for BeaconProductInfoRecord();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  v9 = sub_1000BC4D4(&qword_1016B5490, &unk_1013D67E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v29 - v11);
  sub_1000D2A70(a1, &v29 - v11, &qword_1016B5490, &unk_1013D67E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_1016BB490);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save BeaconProductInfoRecord %{public}@", v17, 0xCu);
      sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    sub_100DD921C(v12, v8, type metadata accessor for BeaconProductInfoRecord);
    if (qword_101694EA0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016BB490);
    sub_100DD9284(v8, v6, type metadata accessor for BeaconProductInfoRecord);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446210;
      type metadata accessor for UUID();
      sub_100D97688(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100DD92EC(v6, type metadata accessor for BeaconProductInfoRecord);
      v28 = sub_1000136BC(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Successfully saved BeaconProductInfoRecord %{public}s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    else
    {

      sub_100DD92EC(v6, type metadata accessor for BeaconProductInfoRecord);
    }

    sub_100DD92EC(v8, type metadata accessor for BeaconProductInfoRecord);
  }
}

unint64_t sub_100DD8D18()
{
  result = qword_1016BB868;
  if (!qword_1016BB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB868);
  }

  return result;
}

uint64_t sub_100DD8D78()
{
  v2 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100D97B2C(v7, v0 + v3, v0 + v6, v8);
}

uint64_t sub_100DD8EFC(uint64_t a1, char a2)
{
  v6 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100DA7C50(a1, a2 & 1, v2 + v7, v2 + v10);
}

uint64_t sub_100DD9088(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_10169A060, &unk_10139DB00) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100D980A8(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_100DD921C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DD9284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DD92EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100DD934C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100DCBA08(a1, v1);
}

unint64_t sub_100DD9498()
{
  result = qword_1016BB878;
  if (!qword_1016BB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB878);
  }

  return result;
}

uint64_t sub_100DD94EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100DCE8DC(a1, v5, v4);
}

unint64_t sub_100DD9598()
{
  result = qword_1016BB888;
  if (!qword_1016BB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB888);
  }

  return result;
}

uint64_t sub_100DD95EC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v22 = (a18 >> 59) & 6 | ((a16 & 0x2000000000000000) != 0);
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
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
      sub_100016590(a15, a16 & 0xDFFFFFFFFFFFFFFFLL);
      v25 = a18 & 0xCFFFFFFFFFFFFFFFLL;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v22 == 2)
  {
LABEL_8:
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    a17 = a5;
    v25 = a6;
    goto LABEL_9;
  }

  if (v22 != 3)
  {
    return result;
  }

  sub_100016590(result, a2);
  a17 = a3;
  v25 = a4;
LABEL_9:

  return sub_100016590(a17, v25);
}