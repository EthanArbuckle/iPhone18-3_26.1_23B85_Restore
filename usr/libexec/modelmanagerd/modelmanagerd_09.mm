uint64_t sub_1000D1110()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 504);
  *v4 = *v2;
  *(v3 + 512) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 256);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[62];
  v16 = v14[42];
  v17 = v14[43];
  v19 = v14[33];
  v18 = v14[34];
  v20 = v14[30];
  sub_100005C78();
  sub_1000192DC(v20 + v17, v18);
  *(v18 + *(v19 + 24)) = 1;
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v18, v20 + v17);
  swift_endAccess();

  swift_errorRetain();
  v21 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100046BD0();

  if (sub_1000DAF70())
  {
    v22 = v14[62];
    v23 = v14[30];
    sub_100002F10();
    swift_slowAlloc();
    v24 = sub_10003A5EC();
    sub_1000033D0();
    swift_slowAlloc();
    sub_1000265BC();
    *v15 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    sub_100011B14(v25, v26);
    v27 = sub_100014A18();
    sub_10000CB58(v27, v28, v29);
    sub_1000188B4();
    sub_1000DB3FC();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v30;
    *v24 = v30;
    sub_10001368C();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    sub_10000ED84(v24, &qword_1001B8F68);
    sub_100002BD0();

    sub_100003324(v20);
    sub_1000039CC();

    sub_100002BD0();
  }

  v36 = v14[62];
  swift_willThrow();
  v37 = v14[62];
  sub_100059A5C();
  v39 = v14[34];
  v38 = v14[35];

  sub_100001F00();
  sub_100003540();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000D142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v18 = *(v16 + 472);

  v19 = *(v16 + 488);
  *(v16 + 232) = v19;
  *(v16 + 496) = v19;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_10000D01C();
  if (swift_dynamicCast())
  {
    if (!*(v16 + 208))
    {
      v50 = *(v16 + 200);

      sub_1000DA26C();
      sub_100007894();
      swift_allocError();
      *v51 = v50;
      v51[1] = 0;
      swift_willThrow();
      v52 = *(v16 + 232);

      goto LABEL_12;
    }
  }

  v20 = *(v16 + 526);
  v21 = *(v16 + 232);

  if (v20 == 1)
  {
    sub_100019C80((*(v16 + 240) + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
    sub_10000302C();
    v61 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    v26 = sub_100035D54(v25);
    *v26 = v27;
    sub_10000A5FC(v26);
    sub_100003D04();

    return v32(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v61, a12, a13, a14, a15, a16);
  }

  sub_10003028C();
  swift_errorRetain();
  v37 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10000AC18();

  if (sub_100042D00())
  {
    v38 = *(v16 + 240);
    sub_100002F10();
    swift_slowAlloc();
    v39 = sub_1000039DC();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100026F60();
    *v17 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    sub_100011B14(v40, v41);
    v42 = sub_100014A18();
    sub_1000359D4(v42, v43, v44, v45, v46);
    sub_1000188B4();
    sub_1000191B8();
    swift_errorRetain();
    v47 = _swift_stdlib_bridgeErrorToNSError();
    sub_10003DDBC(v47);
    sub_10001852C(&_mh_execute_header, v48, v49, "Failed to move asset %s to dynamic mode: %@");
    sub_10000ED84(v39, &qword_1001B8F68);
    sub_100005864();

    sub_100002C88();
    sub_10000BFCC();
  }

  swift_willThrow();
LABEL_12:
  sub_1000358B0();

  sub_1000DABBC();
  sub_100003D04();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D1734()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[62];

  v2 = v0[64];
  sub_100059A5C();
  v4 = v0[34];
  v3 = v0[35];

  sub_100001F00();
  sub_100007BB8();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000D17CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 97) = a6;
  *(v6 + 96) = a5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  v8 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  *(v6 + 40) = swift_task_alloc();
  v9 = *(*(sub_100065020(&qword_1001BB408, &unk_100171DC0) - 8) + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001BB410, &unk_100172340) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;

  return _swift_task_switch(sub_1000D18EC, 0, 0);
}

uint64_t sub_1000D1B74()
{
  sub_100001ED0();
  sub_10000D554();
  v2 = v0[9];
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  sub_10000A9E0();
  v6 = *(v5 + 56);
  v7 = v0[6];
  v8 = v0[5];

  sub_10000778C();

  return v9();
}

uint64_t sub_1000D1CA8()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  sub_100002B9C();
  *v11 = v10;
  v3[11] = v0;

  sub_10000ED84(v9, &qword_1001BB3F8);
  sub_10000ED84(v8, &qword_1001BB408);
  sub_10000ED84(v7, &qword_1001BB410);
  if (v0)
  {
    sub_1000059F8();
    sub_100007BB8();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v17 = v3[6];
    v16 = v3[7];
    v18 = v3[5];

    sub_10000778C();
    sub_100007BB8();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1000D1E70()
{
  sub_100001ED0();
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  sub_100001F00();

  return v5();
}

uint64_t sub_1000D1EE8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a4;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  v6 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;

  return _swift_task_switch(sub_1000D1F90, 0, 0);
}

uint64_t sub_1000D21C8()
{
  sub_100001ED0();
  sub_10000D554();
  v2 = *(v0 + 48);
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  sub_10000A9E0();
  v6 = *(v5 + 32);

  sub_10000778C();

  return v7();
}

uint64_t sub_1000D22C4()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *(v5 + 32);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  *(v3 + 64) = v0;

  sub_10000ED84(v7, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 32);

    sub_100001F00();

    return v14();
  }
}

uint64_t sub_1000D2418()
{
  sub_100002BAC();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  sub_100001F00();

  return v3();
}

uint64_t sub_1000D2474()
{
  sub_100002BAC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D24F8()
{
  sub_100001ED0();
  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000641C(v1, qword_1001BB110);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = sub_100007648();
    sub_10000A240(v4);
    sub_100003DD0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_100002BD0();
  }

  v10 = v0[2];

  result = sub_10000E8DC(v10);
  v0[6] = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = v0[2];
      v0[7] = 0;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v12 + 32);
      }

      v0[8] = v13;
      v25 = v0[4];
      v26 = type metadata accessor for AuditToken();
      sub_100018DEC(v26);
      v27 = swift_task_alloc();
      v28 = sub_1000DB2F0(v27);
      *v28 = v29;
      sub_100003D54(v28);

      return sub_10002BA5C();
    }
  }

  else
  {
    v14 = v0[5];
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (sub_100002F80(v16))
    {
      v17 = sub_100007648();
      sub_10000A240(v17);
      sub_100003DD0();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      sub_100002BD0();
    }

    v23 = v0[4];

    sub_100001F00();

    return v24();
  }

  return result;
}

uint64_t sub_1000D26D8()
{
  sub_100001ED0();
  sub_100018E0C();
  v3 = *(v0 + 72);
  v4 = *v2;
  sub_100002B9C();
  *v5 = v4;

  sub_10000CC7C();
  v7 = *(v6 + 32);
  v8 = *(v0 + 24);
  if (v1)
  {
  }

  sub_10000ED84(v7, &qword_1001BB3F8);
  sub_10000CC50();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D283C()
{
  sub_100001ED0();
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];

  if (v3 + 1 == v4)
  {
    v5 = v1[5];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100002F80(v7))
    {
      v8 = sub_100007648();
      sub_10000A240(v8);
      sub_100003DD0();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_100002BD0();
    }

    v14 = v1[4];

    sub_100001F00();

    return v15();
  }

  else
  {
    v17 = v1[7] + 1;
    v1[7] = v17;
    v18 = v1[2];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      sub_100011174(v17, v18);
    }

    v1[8] = v0;
    v19 = v1[4];
    v20 = type metadata accessor for AuditToken();
    sub_100018DEC(v20);
    v21 = swift_task_alloc();
    v22 = sub_1000DB2F0(v21);
    *v22 = v23;
    sub_100003D54();

    return sub_10002BA5C();
  }
}

uint64_t sub_1000D2988()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 376);
  *v4 = *v2;
  *(v3 + 384) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 264);
  if (v1)
  {
  }

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000D2AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v19 = v16[48];
  v20 = v16[45];
  v21 = v16[46];
  v22 = v16[41];
  v23 = v16[36];
  v24 = v16[37];

  v25 = sub_100001F70();
  v21(v25);
  v26 = v16[30];
  do
  {
    sub_1000DAC20();

    sub_10002D91C();
    sub_100032848();
    sub_10005D750(v27);
    if (v28)
    {
      if (*(v23 + 16))
      {
LABEL_17:
        sub_100037EA8();
        sub_100002EE0();
        v52 = swift_allocObject();
        sub_1000127B8(v52);
        goto LABEL_19;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

    v29 = v16[45];
    sub_1000DABCC();

    sub_10002D91C();
    sub_100032848();
    sub_1000192B0(v30);
    if (v28)
    {
      if (!*(v23 + 16))
      {
        goto LABEL_10;
      }

LABEL_18:
      sub_100037EA8();
      sub_100002EE0();
      v53 = swift_allocObject();
      sub_100004BD8(v53);
LABEL_19:

      sub_1000059F8();
      sub_100003D04();

      return _swift_task_switch(v54, v55, v56);
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }

LABEL_10:

    sub_1000DADA8();
    if (!v29)
    {
      v58 = sub_1000134FC();
      v16[59] = v58;
      if (!v19)
      {
        if (v58)
        {
          v37 = async function pointer to Task.value.getter[1];

          v114 = swift_task_alloc();
          sub_1000DB0F8(v114);
          sub_100065020(&qword_1001B8F60, &unk_100171260);
          sub_10001E520();
          *v37 = v115;
          sub_10000EE90();
          goto LABEL_40;
        }

        sub_100019B9C();
        sub_100005C78();
        v116 = sub_10000D01C();
        sub_1000192DC(v116, v117);
        sub_1000456B4();
        v118 = sub_100007660();
        sub_10003DA78(v118, v119);
        swift_endAccess();
        sub_100053B98();
        v120 = sub_1000189DC();
        v121(v120);

        sub_10000CB84();

        sub_100002F54();
        goto LABEL_35;
      }

      sub_10005B648();
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      if (sub_100060B04())
      {
        if (!v16[26])
        {
          sub_1000DB1DC();
          sub_1000DA26C();
          sub_100007894();
          v122 = swift_allocError();
          sub_100057664(v122, v123);
          v124 = v16[29];

LABEL_34:
          sub_10004D130();

          sub_100001F00();
LABEL_35:
          sub_100003D04();

          return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16);
        }
      }

      v59 = v16[29];
      v60 = v16[30];

      sub_100019C80((v60 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
      sub_10000302C();
      v126 = v61 + *v61;
      v63 = *(v62 + 4);
      v64 = swift_task_alloc();
      v65 = sub_100035D54(v64);
      *v65 = v66;
      sub_100003B98(v65);
      sub_100003D04();

      return v71(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, v126, a12, a13, a14, a15, a16);
    }

    if (v31 == 100)
    {
      if (qword_1001B8930 != -1)
      {
        sub_100005154();
        swift_once();
      }

      v75 = sub_100053B80();
      sub_10000641C(v75, qword_1001BB110);
      sub_10000D0E8();

      v76 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100019920();

      if (sub_10000A384())
      {
        v77 = v16[30];
        sub_10000A05C();
        swift_slowAlloc();
        sub_10000A45C();
        swift_slowAlloc();
        sub_100006030();
        LODWORD(enum case for LoadState.dynamicMode(_:)) = 136315138;
        v78 = sub_100027434();
        sub_1000359D4(v78, v79, v80, v81, v82);
        sub_100007BA0();
        *(&enum case for LoadState.dynamicMode(_:) + 4) = v17;
        sub_1000033FC();
        _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
        sub_100003324(v26);
        sub_1000039CC();

        sub_10000BFCC();
      }

      type metadata accessor for ModelManagerError();
      sub_1000113B0();
      sub_100011B14(v88, v89);
      sub_100013D58();
      v90 = swift_allocError();
      sub_10002AB60(v90, v91);
      sub_1000076C8();
      (*(v92 + 104))();
      swift_willThrow();
      goto LABEL_34;
    }

    sub_100013AC4();
  }

  while (!v23);
  v33 = sub_10001922C(v32);
  v18(v33);
  v34 = qword_1001B8930;

  if (v34 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v35 = sub_10001CF88();
  sub_10000641C(v35, qword_1001BB110);
  v36 = sub_100012D9C();
  v18(v36);

  v37 = v17;
  v38 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAFD0();
  sub_100011230();
  sub_100004D58();
  if (v39)
  {
    LODWORD(a11) = v17;
    v37 = v16[30];
    sub_100002F10();
    v40 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    sub_100013FE8();
    *v40 = 136315394;
    v41 = sub_100027434();
    sub_1000359D4(v41, v42, v43, v44, v45);
    sub_1000DAEC4();
    sub_100031678();
    sub_100002D0C();
    sub_100011B14(v46, v47);
    sub_100060720();
    v48 = sub_100009DA0();
    enum case for LoadState.dynamicMode(_:)(v48);
    v49 = sub_1000037BC();
    sub_100004A3C(v49, v50, v51);
    sub_10000A08C();

    *(v40 + 14) = v37;
    sub_100018CCC(&_mh_execute_header, "unloadAsset for %s found pendingTransitionTask to %s", v17);
    sub_100057A54();
    sub_100061AD8();

    sub_1000039CC();
  }

  else
  {

    v101 = sub_10001992C();
    enum case for LoadState.dynamicMode(_:)(v101);
  }

  v16[46] = &enum case for LoadState.dynamicMode(_:);
  v102 = async function pointer to Task.value.getter[1];
  v103 = swift_task_alloc();
  sub_1000DAD8C(v103);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_10001E520();
  *v37 = v104;
  sub_10000A8B8();
LABEL_40:
  v37[1] = v105;
  sub_100006308();
  sub_100003D04();

  return Task.value.getter(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D3190()
{
  sub_100001ED0();
  v1 = v0[50];
  v2 = swift_task_alloc();
  v0[51] = v2;
  sub_1000DB098(v2);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_1000D3270;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000D3270()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 424) = v0;

  if (!v0)
  {
    v9 = *(v3 + 408);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000D3370()
{
  sub_100002BAC();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[33];

  v4 = sub_10000C634();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D33D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v21 = v17[53];
  while (1)
  {
    sub_1000DABCC();

    sub_10002D91C();
    sub_100032848();
    sub_1000192B0(v22);
    if (v23)
    {
      if (*(v16 + 16))
      {
LABEL_13:
        sub_100037EA8();
        sub_100002EE0();
        v28 = swift_allocObject();
        sub_100004BD8(v28);
LABEL_26:

        sub_1000059F8();
        sub_100003D04();

        return _swift_task_switch(v76, v77, v78);
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_13;
    }

    sub_1000DADA8();
    if (v24 == 100)
    {
      break;
    }

    sub_100013AC4();
    if (v16)
    {
      v56 = sub_10001922C(v25);
      v20(v56);
      v57 = qword_1001B8930;

      if (v57 != -1)
      {
        sub_100005154();
        swift_once();
      }

      v58 = sub_10001CF88();
      sub_10000641C(v58, qword_1001BB110);
      v59 = sub_100012D9C();
      v20(v59);

      v60 = v19;
      v61 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000DAFD0();
      sub_100011230();
      sub_100004D58();
      if (v62)
      {
        LODWORD(a11) = v19;
        v60 = v17[30];
        sub_100002F10();
        v63 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_100013FE8();
        *v63 = 136315394;
        v64 = sub_100027434();
        sub_1000359D4(v64, v65, v66, v67, v68);
        sub_1000DAEC4();
        sub_100031678();
        sub_100002D0C();
        sub_100011B14(v69, v70);
        sub_100060720();
        v71 = sub_100009DA0();
        enum case for LoadState.loaded(_:)(v71);
        v72 = sub_1000037BC();
        sub_100004A3C(v72, v73, v74);
        sub_10000A08C();

        *(v63 + 14) = v60;
        sub_100018CCC(&_mh_execute_header, "unloadAsset for %s found pendingTransitionTask to %s", v19);
        sub_100057A54();
        sub_100061AD8();

        sub_1000039CC();
      }

      else
      {

        v80 = sub_10001992C();
        enum case for LoadState.loaded(_:)(v80);
      }

      v17[46] = &enum case for LoadState.loaded(_:);
      v81 = async function pointer to Task.value.getter[1];
      v82 = swift_task_alloc();
      sub_1000DAD8C(v82);
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_10001E520();
      *v60 = v83;
      sub_10000A8B8();
      v60[1] = v84;
      sub_100006308();
      sub_100003D04();

      return Task.value.getter(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_1000DAC20();

    sub_10002D91C();
    sub_100032848();
    sub_10005D750(v26);
    if (v23)
    {
      if (MEMORY[0x10])
      {
LABEL_25:
        sub_100037EA8();
        sub_100002EE0();
        v75 = swift_allocObject();
        sub_1000127B8(v75);
        goto LABEL_26;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_25;
    }

    v27 = v17[45];
    sub_100053B5C();
  }

  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v29 = sub_100053B80();
  sub_10000641C(v29, qword_1001BB110);
  sub_10000D0E8();

  v30 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v31 = v17[30];
    sub_10000A05C();
    swift_slowAlloc();
    sub_10000A45C();
    swift_slowAlloc();
    sub_100006030();
    LODWORD(enum case for LoadState.loaded(_:)) = 136315138;
    v32 = sub_100027434();
    sub_1000359D4(v32, v33, v34, v35, v36);
    sub_100007BA0();
    *(&enum case for LoadState.loaded(_:) + 4) = v19;
    sub_1000033FC();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    sub_100003324(v18);
    sub_1000039CC();

    sub_10000BFCC();
  }

  type metadata accessor for ModelManagerError();
  sub_1000113B0();
  sub_100011B14(v42, v43);
  sub_100013D58();
  v44 = swift_allocError();
  sub_10002AB60(v44, v45);
  sub_1000076C8();
  (*(v46 + 104))();
  swift_willThrow();
  sub_10004D130();

  sub_100001F00();
  sub_100003D04();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D3AA8()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];

  v4 = v0[53];
  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000D3B44()
{
  sub_100001ED0();
  v1 = v0[55];
  v2 = swift_task_alloc();
  v0[56] = v2;
  sub_1000DB098(v2);
  v3 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_1000D3C24;
  sub_1000DB08C(&type metadata for ());
  sub_1000194B4();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000D3C24()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v3 + 464) = v0;

  if (!v0)
  {
    v9 = *(v3 + 448);
  }

  sub_1000059F8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000D3D24()
{
  sub_100002BAC();
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[33];

  v4 = sub_10000C634();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D3D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v21 = v17[58];
  while (1)
  {
    sub_1000DADA8();
    if (v22 == 100)
    {
      break;
    }

    sub_100013AC4();
    if (v16)
    {
      v55 = sub_10001922C(v23);
      v20(v55);
      v56 = qword_1001B8930;

      if (v56 != -1)
      {
        sub_100005154();
        swift_once();
      }

      v57 = sub_10001CF88();
      sub_10000641C(v57, qword_1001BB110);
      v58 = sub_100012D9C();
      v20(v58);

      v59 = v19;
      v60 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000DAFD0();
      sub_100011230();
      sub_100004D58();
      if (v61)
      {
        LODWORD(a11) = v19;
        v59 = v17[30];
        sub_100002F10();
        v62 = swift_slowAlloc();
        sub_100011828();
        swift_slowAlloc();
        sub_100013FE8();
        *v62 = 136315394;
        v63 = sub_100027434();
        sub_1000359D4(v63, v64, v65, v66, v67);
        sub_1000DAEC4();
        sub_100031678();
        sub_100002D0C();
        sub_100011B14(v68, v69);
        sub_100060720();
        v70 = sub_100009DA0();
        enum case for LoadState.dynamicMode(_:)(v70);
        v71 = sub_1000037BC();
        sub_100004A3C(v71, v72, v73);
        sub_10000A08C();

        *(v62 + 14) = v59;
        sub_100018CCC(&_mh_execute_header, "unloadAsset for %s found pendingTransitionTask to %s", v19);
        sub_100057A54();
        sub_100061AD8();

        sub_1000039CC();
      }

      else
      {

        v80 = sub_10001992C();
        enum case for LoadState.dynamicMode(_:)(v80);
      }

      v17[46] = &enum case for LoadState.dynamicMode(_:);
      v81 = async function pointer to Task.value.getter[1];
      v82 = swift_task_alloc();
      sub_1000DAD8C(v82);
      sub_100065020(&qword_1001B8F60, &unk_100171260);
      sub_10001E520();
      *v59 = v83;
      sub_10000A8B8();
      v59[1] = v84;
      sub_100006308();
      sub_100003D04();

      return Task.value.getter(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_1000DAC20();

    sub_10002D91C();
    sub_100032848();
    sub_10005D750(v24);
    if (v25)
    {
      if (MEMORY[0x10])
      {
LABEL_24:
        sub_100037EA8();
        sub_100002EE0();
        v74 = swift_allocObject();
        sub_1000127B8(v74);
LABEL_26:

        sub_1000059F8();
        sub_100003D04();

        return _swift_task_switch(v76, v77, v78);
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_24;
    }

    v26 = v17[45];
    sub_100053B5C();
    sub_1000DABCC();

    sub_10002D91C();
    sub_100032848();
    sub_1000192B0(v27);
    if (v25)
    {
      if (MEMORY[0x10])
      {
LABEL_25:
        sub_100037EA8();
        sub_100002EE0();
        v75 = swift_allocObject();
        sub_100004BD8(v75);
        goto LABEL_26;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_25;
    }
  }

  if (qword_1001B8930 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v28 = sub_100053B80();
  sub_10000641C(v28, qword_1001BB110);
  sub_10000D0E8();

  v29 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    v30 = v17[30];
    sub_10000A05C();
    swift_slowAlloc();
    sub_10000A45C();
    swift_slowAlloc();
    sub_100006030();
    LODWORD(enum case for LoadState.dynamicMode(_:)) = 136315138;
    v31 = sub_100027434();
    sub_1000359D4(v31, v32, v33, v34, v35);
    sub_100007BA0();
    *(&enum case for LoadState.dynamicMode(_:) + 4) = v19;
    sub_1000033FC();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    sub_100003324(v18);
    sub_1000039CC();

    sub_10000BFCC();
  }

  type metadata accessor for ModelManagerError();
  sub_1000113B0();
  sub_100011B14(v41, v42);
  sub_100013D58();
  v43 = swift_allocError();
  sub_10002AB60(v43, v44);
  sub_1000076C8();
  (*(v45 + 104))();
  swift_willThrow();
  sub_10004D130();

  sub_100001F00();
  sub_100003D04();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D445C()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];

  v4 = v0[58];
  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000D44F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v19 = v16[45];
  v20 = v16[46];
  v21 = v16[41];
  v22 = v16[36];
  v23 = v16[37];

  v24 = sub_100001F70();
  v20(v24);
  v25 = v16[30];
  do
  {
    sub_1000DAC20();

    sub_10002D91C();
    sub_100032848();
    sub_10005D750(v26);
    if (v27)
    {
      if (*(v22 + 16))
      {
LABEL_17:
        sub_100037EA8();
        sub_100002EE0();
        v51 = swift_allocObject();
        sub_1000127B8(v51);
        goto LABEL_19;
      }
    }

    else if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

    v28 = v16[45];
    sub_1000DABCC();

    sub_10002D91C();
    sub_100032848();
    sub_1000192B0(v29);
    if (v27)
    {
      if (!*(v22 + 16))
      {
        goto LABEL_10;
      }

LABEL_18:
      sub_100037EA8();
      sub_100002EE0();
      v52 = swift_allocObject();
      sub_100004BD8(v52);
LABEL_19:

      sub_1000059F8();
      sub_100003D04();

      return _swift_task_switch(v53, v54, v55);
    }

    if (__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }

LABEL_10:

    sub_1000DADA8();
    if (!v28)
    {
      v57 = sub_1000134FC();
      v16[59] = v57;
      if (v57)
      {
        v36 = async function pointer to Task.value.getter[1];

        v97 = swift_task_alloc();
        sub_1000DB0F8(v97);
        sub_100065020(&qword_1001B8F60, &unk_100171260);
        sub_10001E520();
        *v36 = v98;
        sub_10000EE90();
        goto LABEL_33;
      }

      sub_100019B9C();
      sub_100005C78();
      v99 = sub_10000D01C();
      sub_1000192DC(v99, v100);
      sub_1000456B4();
      v101 = sub_100007660();
      sub_10003DA78(v101, v102);
      swift_endAccess();
      sub_100053B98();
      v103 = sub_1000189DC();
      v104(v103);

      sub_10000CB84();

      sub_100002F54();
      goto LABEL_28;
    }

    if (v30 == 100)
    {
      if (qword_1001B8930 != -1)
      {
        sub_100005154();
        swift_once();
      }

      v58 = sub_100053B80();
      sub_10000641C(v58, qword_1001BB110);
      sub_10000D0E8();

      v59 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_100019920();

      if (sub_10000A384())
      {
        v60 = v16[30];
        sub_10000A05C();
        swift_slowAlloc();
        sub_10000A45C();
        swift_slowAlloc();
        sub_100006030();
        LODWORD(enum case for LoadState.dynamicMode(_:)) = 136315138;
        v61 = sub_100027434();
        sub_1000359D4(v61, v62, v63, v64, v65);
        sub_100007BA0();
        *(&enum case for LoadState.dynamicMode(_:) + 4) = v17;
        sub_1000033FC();
        _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
        sub_100003324(v25);
        sub_1000039CC();

        sub_10000BFCC();
      }

      type metadata accessor for ModelManagerError();
      sub_1000113B0();
      sub_100011B14(v71, v72);
      sub_100013D58();
      v73 = swift_allocError();
      sub_10002AB60(v73, v74);
      sub_1000076C8();
      (*(v75 + 104))();
      swift_willThrow();
      sub_10004D130();

      sub_100001F00();
LABEL_28:
      sub_100003D04();

      return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_100013AC4();
  }

  while (!v22);
  v32 = sub_10001922C(v31);
  v18(v32);
  v33 = qword_1001B8930;

  if (v33 != -1)
  {
    sub_100005154();
    swift_once();
  }

  v34 = sub_10001CF88();
  sub_10000641C(v34, qword_1001BB110);
  v35 = sub_100012D9C();
  v18(v35);

  v36 = v17;
  v37 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000DAFD0();
  sub_100011230();
  sub_100004D58();
  if (v38)
  {
    LODWORD(a11) = v17;
    v36 = v16[30];
    sub_100002F10();
    v39 = swift_slowAlloc();
    sub_100011828();
    swift_slowAlloc();
    sub_100013FE8();
    *v39 = 136315394;
    v40 = sub_100027434();
    sub_1000359D4(v40, v41, v42, v43, v44);
    sub_1000DAEC4();
    sub_100031678();
    sub_100002D0C();
    sub_100011B14(v45, v46);
    sub_100060720();
    v47 = sub_100009DA0();
    enum case for LoadState.dynamicMode(_:)(v47);
    v48 = sub_1000037BC();
    sub_100004A3C(v48, v49, v50);
    sub_10000A08C();

    *(v39 + 14) = v36;
    sub_100018CCC(&_mh_execute_header, "unloadAsset for %s found pendingTransitionTask to %s", v17);
    sub_100057A54();
    sub_100061AD8();

    sub_1000039CC();
  }

  else
  {

    v84 = sub_10001992C();
    enum case for LoadState.dynamicMode(_:)(v84);
  }

  v16[46] = &enum case for LoadState.dynamicMode(_:);
  v85 = async function pointer to Task.value.getter[1];
  v86 = swift_task_alloc();
  sub_1000DAD8C(v86);
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_10001E520();
  *v36 = v87;
  sub_10000A8B8();
LABEL_33:
  v36[1] = v88;
  sub_100006308();
  sub_100003D04();

  return Task.value.getter(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000D4BE4()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 504);
  *v4 = *v2;
  *(v3 + 512) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 264);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000D4CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v15 = v14[42];
  v16 = v14[38];
  v17 = v14[39];
  v18 = v14[36];
  v19 = v14[37];
  v20 = v14[30];
  sub_100004CBC();
  swift_beginAccess();
  (*(v19 + 16))(v17, v20 + v15, v18);
  (*(v19 + 104))(v16, enum case for LoadState.unloaded(_:), v18);
  v21 = sub_100001F70();
  v23 = sub_100116D68(v21, v22);
  v25 = *(v19 + 8);
  v24 = v19 + 8;
  v26 = sub_1000060A4();
  v25(v26);
  v27 = sub_100007660();
  v25(v27);
  if (v23)
  {
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v28 = v14[62];
    v29 = sub_100053B80();
    sub_10000641C(v29, qword_1001BB110);
    sub_10000D0E8();

    swift_errorRetain();
    v30 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_10000AC18();

    v31 = os_log_type_enabled(v30, v24);
    v32 = v14[62];
    if (v31)
    {
      v33 = v14[30];
      sub_100002F10();
      swift_slowAlloc();
      v34 = sub_1000039DC();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v23 = 136315394;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100008428();
      sub_100011B14(v35, v36);
      v37 = sub_100014A18();
      sub_10000CB58(v37, v38, v39);
      sub_1000188B4();
      sub_1000191B8();
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DDBC(v40);
      sub_1000057CC(&_mh_execute_header, v41, v42, "Unload for %s suceeded, ignoring non-impacting error: %@");
      sub_10000ED84(v34, &qword_1001B8F68);
      sub_100005864();

      sub_100002C88();
      sub_10000BFCC();
    }

    else
    {
    }

    sub_100025014();
    v67 = v14[35];

    sub_100002F54();
  }

  else
  {
    v43 = v14[42];
    v45 = v14[34];
    v44 = v14[35];
    v46 = v14[30];
    sub_100005C78();
    sub_10002ED80();
    *(v44 + *(v45 + 24)) = 1;
    sub_100002D24();
    swift_beginAccess();
    sub_1000DB104();
    swift_endAccess();
    if (qword_1001B8930 != -1)
    {
      sub_100005154();
      swift_once();
    }

    v47 = v14[62];
    v48 = v14[30];
    v49 = type metadata accessor for Logger();
    sub_100002FD0(v49, qword_1001BB110);

    swift_errorRetain();
    v50 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100046BD0();

    if (sub_1000DAF70())
    {
      v51 = v14[62];
      v52 = v14[30];
      sub_100002F10();
      swift_slowAlloc();
      v53 = sub_10003A5EC();
      sub_1000033D0();
      swift_slowAlloc();
      sub_1000265BC();
      *v47 = 136315394;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100008428();
      sub_100011B14(v54, v55);
      v56 = sub_100014A18();
      sub_10000CB58(v56, v57, v58);
      sub_1000188B4();
      sub_1000DB3FC();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 14) = v59;
      *v53 = v59;
      sub_10001368C();
      _os_log_impl(v60, v61, v62, v63, v64, 0x16u);
      sub_10000ED84(v53, &qword_1001B8F68);
      sub_100002BD0();

      sub_100003324(v48);
      sub_1000039CC();

      sub_100002BD0();
    }

    v65 = v14[62];
    swift_willThrow();
    v66 = v14[62];
    sub_10004D130();

    sub_100001F00();
  }

  sub_100003540();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000D514C()
{
  sub_10000636C();
  v1 = v0[59];

  v2 = v0[61];
  v0[29] = v2;
  v0[62] = v2;
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (!swift_dynamicCast())
  {
LABEL_4:
    v3 = v0[29];
    v4 = v0[30];

    sub_100019C80((v4 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
    v5 = v0[42];
    sub_100004B94();
    v19 = (v6 + *v6);
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = sub_100035D54(v9);
    *v10 = v11;
    v12 = sub_100003B98(v10);

    return v19(v12);
  }

  if (v0[26])
  {

    goto LABEL_4;
  }

  v14 = v0[25];

  sub_1000DA26C();
  sub_100007894();
  v15 = swift_allocError();
  sub_100057664(v15, v16);
  v17 = v0[29];

  sub_10004D130();

  sub_100001F00();

  return v18();
}

uint64_t sub_1000D5348()
{
  sub_10000639C();
  sub_100003884();
  v1 = *(v0 + 496);

  v2 = *(v0 + 512);
  sub_10004D130();

  sub_100001F00();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D53D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v3[4] = v6;
  v3[5] = v7;

  return _swift_task_switch(sub_1000D5474, 0, 0);
}

uint64_t sub_1000D5620()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 32);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  *(v3 + 56) = v0;

  sub_10000ED84(v7, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 32);

    sub_100001F00();

    return v14();
  }
}

uint64_t sub_1000D5774()
{
  sub_100002BAC();
  v1 = *(v0 + 32);

  sub_100001F00();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1000D57D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v3[4] = v6;
  v3[5] = v7;

  return _swift_task_switch(sub_1000D5874, 0, 0);
}

uint64_t sub_1000D5A20()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *(v5 + 32);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  *(v3 + 56) = v0;

  sub_10000ED84(v7, &qword_1001BB3F8);
  if (v0)
  {
    sub_1000059F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 32);

    sub_100001F00();

    return v14();
  }
}

uint64_t sub_1000D5B74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100004B70(sub_1000D5B94, v2);
}

void sub_1000D5B94()
{
  sub_100002BAC();
  v2 = sub_10000E8DC(v1[2]);
  if (v2)
  {
    v3 = v1[2];
    v4 = __OFSUB__(v2, 1);
    v5 = v2 - 1;
    v1[5] = v5;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[6] = v0;
        v9 = swift_task_alloc();
        v1[7] = v9;
        *v9 = v1;
        v9[1] = sub_1000D5CA4;
        v10 = v1[3];
        v11 = v1[4];
        sub_10001E4B4();

        sub_10002BA5C();
        return;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_100007900(v5, v3);
        if (!v8)
        {
          sub_1000DB11C(v6, v7);
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_100001F00();

  v12();
}

uint64_t sub_1000D5CA4()
{
  sub_100001ED0();
  sub_100018E0C();
  v3 = *(v0 + 56);
  v4 = *v2;
  sub_100002B9C();
  *v5 = v4;

  sub_10000CC7C();
  v7 = *(v6 + 32);
  if (v1)
  {
  }

  sub_100007088();

  return _swift_task_switch(v8, v9, v10);
}

void sub_1000D5DC0()
{
  sub_100002BAC();
  v3 = v1[5];
  v2 = v1[6];

  if (v3)
  {
    v4 = v1[5];
    v5 = v4 - 1;
    v1[5] = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = v1[2];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        v1[6] = v0;
        v10 = swift_task_alloc();
        v1[7] = v10;
        *v10 = v1;
        v10[1] = sub_1000D5CA4;
        v11 = v1[3];
        v12 = v1[4];
        sub_10001E4B4();

        sub_10002BA5C();
        return;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_100007900(v5, v6);
        if (!v9)
        {
          sub_1000DB11C(v7, v8);
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_100001F00();

  v13();
}

void sub_1000D5ED4()
{
  if (!qword_1001BB160)
  {
    type metadata accessor for InferenceProviderAssetManager();
    sub_100011B14(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
    v0 = type metadata accessor for WorkQueue();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BB160);
    }
  }
}

uint64_t sub_1000D5F68()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000D5FB0()
{
  v1 = *(v0 + 16);
  sub_100065020(&qword_1001BB470, &qword_100171EB8);
  swift_arrayDestroy();
  sub_100002EE0();

  return _swift_deallocClassInstance(v2, v3, v4);
}

void *sub_1000D600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for InferenceProviderDescriptor();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v11 = sub_1000D62E8(a1, a2, a3);

    return v11;
  }

  v34 = v3;
  v11 = &_swiftEmptySetSingleton;
  v47 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v12 = (v7 + 8);
  while (1)
  {
    v13 = __CocoaSet.Iterator.next()();
    if (!v13)
    {
      break;
    }

    v36 = v13;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v15 = *(v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v14 = *(v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v45 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v15);
    (*(v14 + 8))(v15, v14);
    v16 = InferenceProviderDescriptor.id.getter();
    v18 = v17;
    (*v12)(v10, v35);
    if (v16 == a2 && v18 == a3)
    {

LABEL_11:
      v28 = v45;
      v29 = v11[2];
      if (v11[3] <= v29)
      {
        sub_100080444(v29 + 1, v21, v22, v23, v24, v25, v26, v27, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, vars0, vars8);
      }

      v11 = v47;
      v30 = v47[5];
      Hasher.init(_seed:)();
      sub_10001214C();
      Hasher._finalize()();
      v31 = -1 << *(v11 + 32);
      v32 = _HashTable.nextHole(atOrAfter:)();
      *(v11 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v32;
      *(v11[6] + 8 * v32) = v28;
      ++v11[2];
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_11;
      }
    }
  }

  swift_bridgeObjectRelease_n();

  return v11;
}

void *sub_1000D62E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v42 = v4;
    v40 = &v40;
    __chkstk_darwin(v14);
    v41 = v12;
    v43 = &v40 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v12, v43);
    v44 = 0;
    v19 = 0;
    v12 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 56);
    v23 = (v20 + 63) >> 6;
    v46 = (v8 + 8);
    v47 = a1;
    v48 = a2;
    v49 = a3;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v52 = (v22 - 1) & v22;
LABEL_12:
      v27 = v24 | (v19 << 6);
      v28 = *(a1 + 48);
      v45 = v27;
      v29 = *(v28 + 8 * v27);
      v30 = *(v29 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v31 = *(v29 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v29 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v30);
      v32 = *(v31 + 8);

      v4 = v50;
      v32(v30, v31);
      v13 = InferenceProviderDescriptor.id.getter();
      v8 = v33;
      (*v46)(v4, v51);
      a2 = v48;
      a3 = v49;
      if (v13 == v48 && v8 == v49)
      {

        a1 = v47;
        v22 = v52;
LABEL_19:
        *(v43 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_22:
          sub_1000120FC(v43, v41, v44, a1, v15, v16, v17, v18, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
          v37 = v36;
          swift_bridgeObjectRelease_n();
          return v37;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        a1 = v47;
        v22 = v52;
        if (v13)
        {
          goto LABEL_19;
        }
      }
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {
        goto LABEL_22;
      }

      v26 = *(v12 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v52 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();

  v37 = sub_1000D89D4(v39, v12, a1, a2, a3);

  swift_bridgeObjectRelease_n();
  return v37;
}

void sub_1000D66D4()
{
  sub_10000A274();
  v4 = v3;
  v50 = v5;
  v59 = v7;
  v60 = v6;
  v9 = v8;
  v52 = v10;
  State = type metadata accessor for LoadState();
  v12 = sub_100002BDC(State);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100002B8C();
  sub_1000281B0();
  v51 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v17 = sub_100002C00(v51);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100002B8C();
  sub_1000DB2B0();
  v53 = 0;
  v20 = 0;
  v61 = v9;
  v62 = v2;
  v22 = *(v9 + 56);
  v21 = v9 + 56;
  v23 = *(v21 - 24);
  sub_100002F28();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  HIDWORD(v57) = *v4;
  v55 = (v14 + 8);
  v56 = (v14 + 104);
  v58 = v1;
  while (v26)
  {
    v29 = __clz(__rbit64(v26));
    v71 = (v26 - 1) & v26;
LABEL_9:
    v54 = v29 | (v20 << 6);
    v33 = *(*(v61 + 48) + 8 * v54);
    v34 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_1000183F4();
    swift_beginAccess();
    sub_100005C78();
    sub_1000192DC(v34 + v33, v2);
    (*v56)(v1, HIDWORD(v57), State);
    sub_100002D0C();
    sub_100011B14(&dword_1001BA628, v35);
    sub_10001E4B4();

    sub_1000DAE34();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v36 = State;
    sub_1000DAE34();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v65 == v63 && v66 == v64)
    {
LABEL_20:

      goto LABEL_21;
    }

    sub_100012D24();
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
LABEL_21:
      v1 = v58;
      State = v36;
      (*v55)(v58, v36);
      sub_100008654();
      v2 = v62;
      sub_100019338();
LABEL_22:
      v42 = sub_10002D88C(v59);

      v26 = v71;
      if (v42)
      {
        sub_1000267BC();
        *(v52 + v43) |= v44;
        if (__OFADD__(v53++, 1))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v39 = v62 + *(v51 + 20);
      State = v36;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v65 == v63 && v66 == v64)
      {
        goto LABEL_20;
      }

      sub_100012D24();
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v55)(v58, State);
      sub_100008654();
      sub_100019338();
      v1 = v58;
      v2 = v62;
      if (v41)
      {
        goto LABEL_22;
      }

      v26 = v71;
    }
  }

  v30 = v20;
  while (1)
  {
    v20 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v20 >= v28)
    {

      sub_1000120FC(v52, v50, v53, v61, v46, v47, v48, v49, v50, v0, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);

      sub_100005874();
      return;
    }

    ++v30;
    if (*(v21 + 8 * v20))
    {
      sub_1000062A0();
      v71 = v32 & v31;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1000D6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v57 = a5;
  v58 = a4;
  v50 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(State);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = *(*(v49 - 8) + 64);
  result = __chkstk_darwin(v49);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = 0;
  v15 = 0;
  v59 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  HIDWORD(v55) = enum case for LoadState.unloaded(_:);
  v53 = (v7 + 8);
  v54 = (v7 + 104);
  v56 = v10;
  v60 = v14;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v69 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = *(v59 + 48);
    v52 = v26;
    v28 = *(v27 + 8 * v26);
    v29 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_1000192DC(v29 + v28, v14);
    (*v54)(v10, HIDWORD(v55), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

    dispatch thunk of RawRepresentable.rawValue.getter();
    v30 = State;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v63 == v61 && v64 == v62)
    {
LABEL_22:

      goto LABEL_23;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_23:
      v10 = v56;
      State = v30;
      (*v53)(v56, v30);
      v14 = v60;
      sub_100019338();
LABEL_24:
      v38 = sub_10002D88C(v28);

      v21 = v69;
      if (v38)
      {
        *(v50 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v51++, 1))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v33 = &v60[*(v49 + 20)];
      State = v30;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v34 = v56;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v63 == v61 && v64 == v62)
      {
        goto LABEL_22;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v53)(v34, State);
      v37 = v60;
      sub_100019338();
      v10 = v34;
      v14 = v37;
      if (v36)
      {
        goto LABEL_24;
      }

      v21 = v69;
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      v40 = v59;

      sub_1000120FC(v50, v47, v51, v40, v41, v42, v43, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v46 = v45;

      return v46;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v69 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D6F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v39 = a2;
  v42 = a1;
  State = type metadata accessor for LoadState();
  v5 = *(*(State - 8) + 64);
  v6 = __chkstk_darwin(State);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v52 = &v39 - v11;
  v12 = 0;
  v50 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v43 = 0;
  v44 = (v16 + 63) >> 6;
  v49 = (v10 + 16);
  HIDWORD(v48) = enum case for LoadState.dynamicMode(_:);
  v46 = (v10 + 8);
  v47 = (v10 + 104);
  while (v18)
  {
    v61 = (v18 - 1) & v18;
    v19 = __clz(__rbit64(v18)) | (v12 << 6);
    v20 = State;
    v21 = v52;
LABEL_11:
    v24 = *(v50 + 48);
    v45 = v19;
    v25 = *(v24 + 8 * v19);
    v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    (*v49)(v21, &v26[v25], v20);
    (*v47)(v8, HIDWORD(v48), v20);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v55 == v53 && v56 == v54)
    {

      v30 = *v46;
      (*v46)(v8, v20);
      v30(v21, v20);

      v18 = v61;
LABEL_18:
      *(v42 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_21:
        v32 = v50;

        sub_1000120FC(v42, v39, v43, v32, v33, v34, v35, v36, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, State, v52, v53, v54, v55, v56, v57, v58, v59, v60);
        v38 = v37;

        return v38;
      }
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = *v46;
      (*v46)(v8, v20);
      v29(v21, v20);

      v18 = v61;
      if (v28)
      {
        goto LABEL_18;
      }
    }
  }

  v22 = v12;
  v20 = State;
  v21 = v52;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v44)
    {
      goto LABEL_21;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v61 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D7310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a4;
  v60 = a2;
  v63 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(State);
  v70 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = *(*(v74 - 8) + 64);
  v11 = __chkstk_darwin(v74);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v73 = &v56 - v14;
  v69 = 0;
  v15 = 0;
  v75 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  HIDWORD(v67) = enum case for LoadState.loaded(_:);
  v66 = (v7 + 104);
  v65 = (v7 + 8);
  v64 = a5 & 0xC000000000000001;
  v23 = a5 & 0xFFFFFFFFFFFFFF8;
  if (a5 < 0)
  {
    v23 = a5;
  }

  v59 = v23;
  v82 = a5;
  v77 = a5 + 56;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v76 = (v21 - 1) & v21;
LABEL_14:
    v27 = v24 | (v15 << 6);
    v28 = *(v75 + 48);
    v72 = v27;
    v29 = *(v28 + 8 * v27);
    v30 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v31 = v73;
    sub_1000192DC(v30 + v29, v73);
    v32 = *(*(v31 + *(v74 + 48)) + 16);

    sub_100019338();
    if (v32)
    {
LABEL_15:

      v21 = v76;
    }

    else
    {
      sub_1000192DC(v30 + v29, v71);
      v33 = State;
      (*v66)(v70, HIDWORD(v67), State);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v78 == v80 && v79 == v81)
      {

        v36 = v70;
LABEL_28:
        (*v65)(v36, v33);
        sub_100019338();
        goto LABEL_29;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v36 = v70;
      if (v35)
      {
        goto LABEL_28;
      }

      v37 = v71 + *(v74 + 20);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v78 == v80 && v79 == v81)
      {

        goto LABEL_28;
      }

      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v65)(v36, v33);
      sub_100019338();
      if ((v58 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_29:
      if (!v64)
      {
        if (v82[2])
        {
          type metadata accessor for InferenceProviderAsset(0);
          v40 = v82;
          v41 = v82[5];
          Hasher.init(_seed:)();
          sub_10001214C();
          v42 = Hasher._finalize()();
          v43 = ~(-1 << *(v40 + 32));
          while (1)
          {
            v44 = v42 & v43;
            if (((*(v77 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
            {
              break;
            }

            v45 = *(v82[6] + 8 * v44);

            v47 = sub_100019CE4(v46, v29);

            v42 = v44 + 1;
            if (v47)
            {
              goto LABEL_15;
            }
          }
        }

        v21 = v76;
        goto LABEL_38;
      }

      v39 = __CocoaSet.contains(_:)();

      v21 = v76;
      if ((v39 & 1) == 0)
      {
LABEL_38:
        *(v63 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
        if (__OFADD__(v69++, 1))
        {
          goto LABEL_44;
        }
      }
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      v49 = v75;

      sub_1000120FC(v63, v60, v69, v49, v50, v51, v52, v53, v56, v57, v59, v60, v61, v62, v63, v64, v65, v66, v67, State, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
      v55 = v54;

      return v55;
    }

    v26 = *(v17 + 8 * v15);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v76 = (v26 - 1) & v26;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1000D7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v43 = a2;
  v46 = a1;
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(State);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = *(*(v53 - 8) + 64);
  result = __chkstk_darwin(v53);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v54 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v47 = 0;
  v48 = (v18 + 63) >> 6;
  HIDWORD(v52) = enum case for LoadState.loaded(_:);
  v50 = (v6 + 8);
  v51 = (v6 + 104);
  v21 = v9;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v65 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v14 << 6);
    v26 = *(v54 + 48);
    v49 = v25;
    v27 = *(v26 + 8 * v25);
    v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v27;
    swift_beginAccess();
    v55 = v28;
    sub_1000192DC(v28, v13);
    (*v51)(v21, HIDWORD(v52), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);
    v56 = v27;

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v59 == v57 && v60 == v58)
    {

      v20 = v65;
      goto LABEL_23;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v20 = v65;
    if (v30)
    {
LABEL_23:
      (*v50)(v21, State);
      sub_100019338();
LABEL_24:
      v34 = v55[*(v53 + 24)];

      if ((v34 & 1) == 0)
      {
        *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        if (__OFADD__(v47++, 1))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v31 = &v13[*(v53 + 20)];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v59 == v57 && v60 == v58)
      {

        goto LABEL_23;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v50)(v21, State);
      sub_100019338();
      if (v33)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v48)
    {
      v36 = v54;

      sub_1000120FC(v46, v43, v47, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v42 = v41;

      return v42;
    }

    v24 = *(v16 + 8 * v14);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v65 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D7E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v49 = a5;
  v50 = a4;
  v45 = a1;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(State);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = *(*(v51 - 8) + 64);
  result = __chkstk_darwin(v51);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v56 = a3;
  v16 = *(a3 + 56);
  v48 = a3 + 56;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v46 = 0;
  v47 = (v17 + 63) >> 6;
  HIDWORD(v55) = enum case for LoadState.loaded(_:);
  v53 = (v7 + 8);
  v54 = (v7 + 104);
  while (v19)
  {
    v20 = __clz(__rbit64(v19));
    v65 = (v19 - 1) & v19;
LABEL_11:
    v23 = v20 | (v15 << 6);
    v24 = *(v56 + 48);
    v52 = v23;
    v25 = *(v24 + 8 * v23);
    v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    sub_1000192DC(v26 + v25, v14);
    (*v54)(v10, HIDWORD(v55), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState);

    v27 = v14;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v28 = v10;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v59 == v57 && v60 == v58)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        v10 = v28;
        (*v53)(v28, State);
        v14 = v27;
        sub_100019338();
        goto LABEL_23;
      }
    }

    v31 = &v27[*(v51 + 20)];
    dispatch thunk of RawRepresentable.rawValue.getter();
    v10 = v28;
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v59 == v57 && v60 == v58)
    {

      (*v53)(v28, State);
      sub_100019338();
      v14 = v27;
LABEL_28:

      v19 = v65;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v53)(v28, State);
      sub_100019338();
      v14 = v27;
      if (v33)
      {
        goto LABEL_28;
      }

LABEL_23:
      v34 = sub_10002D88C(v25);

      v19 = v65;
      if (v34)
      {
        *(v45 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        if (__OFADD__(v46++, 1))
        {
          goto LABEL_31;
        }
      }
    }
  }

  v21 = v15;
  while (1)
  {
    v15 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v15 >= v47)
    {
      v36 = v56;

      sub_1000120FC(v45, v43, v46, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v42 = v41;

      return v42;
    }

    v22 = *(v48 + 8 * v15);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v65 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D8310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v46 = a1;
  v51 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(*(v51 - 8) + 64);
  result = __chkstk_darwin(v51);
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v12 = 0;
  v53 = a5;
  v54 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v49 = (v10 + 8);
  v52 = a4;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v56 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = *(v54 + 48);
    v48 = v23;
    v25 = *(v24 + 8 * v23);
    v26 = *(v25 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v27 = *(v25 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((v25 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v26);
    v28 = *(v27 + 8);

    v29 = v50;
    v28(v26, v27);
    v30 = InferenceProviderDescriptor.id.getter();
    v32 = v31;
    (*v49)(v29, v51);
    if (v30 == v52 && v32 == v53)
    {

      v18 = v56;
LABEL_18:
      *(v46 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
LABEL_21:
        v36 = v54;

        sub_1000120FC(v46, v44, v47, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        v42 = v41;

        return v42;
      }
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v56;
      if (v34)
      {
        goto LABEL_18;
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_21;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v56 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000D85CC(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10001E558();
    swift_retain_n();
    sub_1000DB0EC();
    swift_retain_n();
    sub_1000DB290();
    sub_1000D66D4();
    v3 = v2;
    sub_1000DB0EC();

    sub_10001E558();

    return v3;
  }

  return result;
}

void *sub_1000D8870(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10001E558();
    swift_retain_n();
    v10 = a5(v9, a2, a3, a4);
    sub_10001E558();

    return v10;
  }

  return result;
}

void sub_1000D8910(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10000A274();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    if (v3)
    {
      bzero(v2, 8 * v3);
    }

    sub_1000DB0EC();
    swift_retain_n();
    v10 = sub_1000DB3C4();
    v9(v10);
    v11 = sub_100005980();
    v7(v11);
    v12 = sub_1000DB3C4();
    v5(v12);
    sub_1000DB0EC();

    sub_100005874();
  }
}

void *sub_1000D89D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1000D8310(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void sub_1000D8A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v197 = v24;
  v26 = v25;
  v198 = v27;
  v211 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v28 = sub_100002C00(v211);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_100009C24();
  v221 = v31;
  sub_100002F1C();
  __chkstk_darwin(v32);
  sub_1000079F8();
  v220 = v33;
  sub_100002F1C();
  __chkstk_darwin(v34);
  sub_1000079F8();
  v206 = v35;
  sub_100002F1C();
  __chkstk_darwin(v36);
  sub_1000079F8();
  v205 = v37;
  sub_100002F1C();
  __chkstk_darwin(v38);
  sub_1000079F8();
  v195 = v39;
  sub_100002F1C();
  __chkstk_darwin(v40);
  sub_1000DB284();
  v194 = v41;
  v203 = v26;
  v42 = v26[1];
  if (v42 < 1)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_92:
    sub_1000DB29C();
    if (!v182)
    {
      goto LABEL_134;
    }

    v26 = v44;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v183 = v44;
    }

    else
    {
LABEL_128:
      v183 = sub_100147DF0(v26);
    }

    v26 = (v183 + 16);
    for (i = *(v183 + 2); i >= 2; *v26 = i)
    {
      sub_100016718();
      if (!*v186)
      {
        goto LABEL_131;
      }

      v187 = (v185 + 16 * i);
      v188 = *v187;
      v189 = &v26[2 * i];
      v190 = *v189;
      v191 = *(v189 + 1);
      sub_1000D9740();
      if (v23)
      {
        break;
      }

      if (v191 < v188)
      {
        goto LABEL_119;
      }

      if (i - 2 >= *v26)
      {
        goto LABEL_120;
      }

      *v187 = v188;
      v187[1] = v191;
      v192 = *v26 - i;
      if (*v26 < i)
      {
        goto LABEL_121;
      }

      i = *v26 - 1;
      sub_100147E04(v189 + 16, v192, v189);
    }

LABEL_103:

    sub_100005874();
    return;
  }

  v43 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (1)
  {
    v45 = v43 + 1;
    v199 = v43;
    if (v43 + 1 < v42)
    {
      v46 = v43;
      v196 = v44;
      sub_100016718();
      v48 = *v47;
      v49 = *(v48 + 8 * v45);
      v50 = (v48 + 8 * v46);
      v208 = 8 * v46;
      v52 = *v50;
      v51 = v50 + 2;
      v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      v210 = v54;
      swift_beginAccess();
      v207 = v45;
      sub_1000192DC(v53 + v49, v194);
      sub_100004CBC();
      swift_beginAccess();
      v26 = v195;
      sub_1000DACD0();
      sub_1000192DC(v55, v56);

      sub_1000C1814();
      LODWORD(v209) = v57;
      sub_100019338();
      v45 = v207;
      sub_100019338();

      v58 = v210;
      v59 = v46 + 2;
      while (1)
      {
        v60 = v59;
        v61 = v45 + 1;
        if (v61 >= v58)
        {
          break;
        }

        v219 = v51;
        v63 = *(v51 - 1);
        v62 = *v51;
        v64 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        sub_100004CBC();
        v222 = v65;
        swift_beginAccess();
        sub_100025AC4();
        v216 = v62;
        v66 = v205;
        v218 = v67;
        sub_1000192DC(v64 + v62, v205);
        v68 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        sub_100004CBC();
        swift_beginAccess();
        v215 = v63;
        sub_1000192DC(v68 + v63, v206);
        v69 = type metadata accessor for Date();
        v217 = &v193;
        v70 = sub_100002BDC(v69);
        v204 = v23;
        v72 = v71;
        v74 = *(v73 + 64);
        __chkstk_darwin(v70);
        sub_1000DB360();
        v76 = *(v75 - 256);
        v77 = *(v76 + 32);
        v78 = v66 + *(v76 + 36);
        v207 = v61;
        v212 = sub_10002B0EC();

        sub_1000DB224();
        v79 = *(v72 + 16);
        v80 = sub_1000DB380();
        v81 = v79(v80);
        v214 = &v193;
        __chkstk_darwin(v81);
        v83 = *(v76 + 32);
        v82 = *(v76 + 36);
        dispatch thunk of static Comparable.>= infix(_:_:)();
        v84 = sub_1000DB374();
        v79(v84);
        sub_1000DB0D4();
        v85 = static Date.< infix(_:_:)() & 1;
        v86 = *(v72 + 8);
        v87 = sub_1000062B0();
        v86(v87);
        v88 = sub_1000DB38C();
        v86(v88);
        v45 = v207;
        v23 = v204;
        sub_1000DB020(&a14);
        sub_1000DB020(&a17);
        v26 = v218;
        sub_100019338();
        sub_100019338();

        v60 = v222;
        v51 = v219 + 1;
        v59 = v222 + 1;
        v58 = v210;
        if ((v209 & 1) != v85)
        {
          goto LABEL_10;
        }
      }

      v45 = v58;
      if ((v209 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_10:
      v89 = v199;
      if (v45 < v199)
      {
        goto LABEL_125;
      }

      if (v199 < v45)
      {
        if (v58 >= v60)
        {
          v90 = v60;
        }

        else
        {
          v90 = v58;
        }

        v91 = 8 * v90 - 8;
        v92 = v45;
        v44 = v196;
        v93 = v208;
        do
        {
          if (v89 != --v92)
          {
            v94 = *v203;
            if (!*v203)
            {
              goto LABEL_132;
            }

            v95 = *(v94 + v93);
            *(v94 + v93) = *(v94 + v91);
            *(v94 + v91) = v95;
          }

          ++v89;
          v91 -= 8;
          v93 += 8;
        }

        while (v89 < v92);
      }

      else
      {
LABEL_22:
        v44 = v196;
      }
    }

    sub_100016718();
    v98 = *(v97 + 8);
    if (v45 >= v98)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v45, v199))
    {
      goto LABEL_124;
    }

    if (v45 - v199 >= v96)
    {
LABEL_39:
      v100 = v199;
      goto LABEL_40;
    }

    if (__OFADD__(v199, v96))
    {
      goto LABEL_126;
    }

    if (v199 + v96 >= v98)
    {
      v99 = v98;
    }

    else
    {
      v99 = v199 + v96;
    }

    if (v99 < v199)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v100 = v199;
    if (v45 != v99)
    {
      break;
    }

LABEL_40:
    if (v45 < v100)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = v44[2];
      sub_10013FB2C();
      v44 = v180;
    }

    v134 = v44[2];
    v135 = v134 + 1;
    if (v134 >= v44[3] >> 1)
    {
      sub_10013FB2C();
      v44 = v181;
    }

    v44[2] = v135;
    v26 = v44 + 4;
    v136 = &v44[2 * v134 + 4];
    *v136 = v199;
    v136[1] = v45;
    sub_1000DB29C();
    if (!v137)
    {
      goto LABEL_133;
    }

    v207 = v45;
    if (v134)
    {
      while (1)
      {
        v138 = v135 - 1;
        v139 = &v26[2 * v135 - 2];
        v140 = &v44[2 * v135];
        if (v135 >= 4)
        {
          break;
        }

        if (v135 == 3)
        {
          v141 = v44[4];
          v142 = v44[5];
          v151 = __OFSUB__(v142, v141);
          v143 = v142 - v141;
          v144 = v151;
LABEL_60:
          if (v144)
          {
            goto LABEL_110;
          }

          v156 = *v140;
          v155 = v140[1];
          v157 = __OFSUB__(v155, v156);
          v158 = v155 - v156;
          v159 = v157;
          if (v157)
          {
            goto LABEL_113;
          }

          v160 = v139[1];
          v161 = v160 - *v139;
          if (__OFSUB__(v160, *v139))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v158, v161))
          {
            goto LABEL_118;
          }

          if (v158 + v161 >= v143)
          {
            if (v143 < v161)
            {
              v138 = v135 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v135 < 2)
        {
          goto LABEL_112;
        }

        v163 = *v140;
        v162 = v140[1];
        v151 = __OFSUB__(v162, v163);
        v158 = v162 - v163;
        v159 = v151;
LABEL_75:
        if (v159)
        {
          goto LABEL_115;
        }

        v165 = *v139;
        v164 = v139[1];
        v151 = __OFSUB__(v164, v165);
        v166 = v164 - v165;
        if (v151)
        {
          goto LABEL_117;
        }

        if (v166 < v158)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v138 - 1 >= v135)
        {
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
          goto LABEL_127;
        }

        sub_100016718();
        if (!*v171)
        {
          goto LABEL_130;
        }

        v172 = &v26[2 * v170];
        v173 = *v172;
        v174 = &v26[2 * v138];
        v175 = *v174;
        v176 = *(v174 + 1);
        sub_1000D9740();
        if (v23)
        {
          goto LABEL_103;
        }

        if (v176 < v173)
        {
          goto LABEL_105;
        }

        v177 = v44[2];
        if (v138 > v177)
        {
          goto LABEL_106;
        }

        *v172 = v173;
        v172[1] = v176;
        if (v138 >= v177)
        {
          goto LABEL_107;
        }

        v135 = v177 - 1;
        sub_100147E04(v174 + 16, v177 - 1 - v138, &v26[2 * v138]);
        v44[2] = v177 - 1;
        if (v177 <= 2)
        {
          goto LABEL_89;
        }
      }

      v145 = &v26[2 * v135];
      v146 = *(v145 - 8);
      v147 = *(v145 - 7);
      v151 = __OFSUB__(v147, v146);
      v148 = v147 - v146;
      if (v151)
      {
        goto LABEL_108;
      }

      v150 = *(v145 - 6);
      v149 = *(v145 - 5);
      v151 = __OFSUB__(v149, v150);
      v143 = v149 - v150;
      v144 = v151;
      if (v151)
      {
        goto LABEL_109;
      }

      v152 = v140[1];
      v153 = v152 - *v140;
      if (__OFSUB__(v152, *v140))
      {
        goto LABEL_111;
      }

      v151 = __OFADD__(v143, v153);
      v154 = v143 + v153;
      if (v151)
      {
        goto LABEL_114;
      }

      if (v154 >= v148)
      {
        v168 = *v139;
        v167 = v139[1];
        v151 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v151)
        {
          goto LABEL_122;
        }

        if (v143 < v169)
        {
          v138 = v135 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    sub_100016718();
    v42 = *(v178 + 8);
    v43 = v207;
    if (v207 >= v42)
    {
      goto LABEL_92;
    }
  }

  v196 = v44;
  v204 = v23;
  v101 = v199;
  sub_100016718();
  v103 = *v102;
  v208 = type metadata accessor for Date();
  v209 = v208 - 8;
  v210 = v103;
  v104 = v103 + 8 * v45 - 8;
  v105 = v101 - v45;
  v200 = v99;
LABEL_33:
  v207 = v45;
  v106 = *(v210 + 8 * v45);
  v201 = v105;
  v202 = v104;
  v107 = v104;
  while (1)
  {
    v212 = v105;
    v108 = *v107;
    v109 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v110 = v106;
    sub_1000183F4();
    swift_beginAccess();
    sub_100018C50();
    v111 = v220;
    v219 = v112;
    sub_1000192DC(v109 + v110, v220);
    v113 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v217 = v108;
    v114 = sub_1000192DC(v113 + v108, v221);
    v218 = &v193;
    v115 = v208;
    v214 = *(v208 - 8);
    v116 = v214;
    v117 = v214[8];
    __chkstk_darwin(v114);
    sub_1000DB360();
    v119 = *(v118 - 256);
    v120 = v111;
    v121 = v111 + *(v119 + 36);
    v122 = v120 + *(v119 + 32);
    v213 = sub_10002B0EC();

    sub_100005980();
    sub_1000DB224();
    v123 = v116[2];
    v124 = sub_1000DB380();
    v125 = v123(v124);
    v216 = &v193;
    __chkstk_darwin(v125);
    v127 = *(v119 + 32);
    v126 = *(v119 + 36);
    sub_100005980();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v128 = sub_1000DB374();
    v123(v128);
    v129 = v99;
    sub_1000DB0D4();
    v99 = static Date.< infix(_:_:)();
    v130 = v214[1];
    v131 = sub_1000062B0();
    v130(v131);
    (v130)(v129, v115);
    sub_1000DB020(&a16);
    sub_1000DB020(&a18);
    v26 = v219;
    sub_100019338();
    sub_100019338();

    if ((v99 & 1) == 0)
    {
LABEL_37:
      v45 = v207 + 1;
      v104 = v202 + 8;
      v105 = v201 - 1;
      v99 = v200;
      if (v207 + 1 == v200)
      {
        v45 = v200;
        v23 = v204;
        v44 = v196;
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    v132 = v212;
    if (!v210)
    {
      break;
    }

    v133 = *v107;
    v106 = v107[1];
    *v107 = v106;
    v107[1] = v133;
    --v107;
    v105 = v132 + 1;
    if (v132 == -1)
    {
      goto LABEL_37;
    }
  }

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
}

void sub_1000D9740()
{
  sub_10000A274();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v93 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = sub_100002C00(v93);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100009C24();
  v92 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000079F8();
  v91 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  sub_1000079F8();
  v95 = v15;
  sub_100002F1C();
  __chkstk_darwin(v16);
  sub_1000DB284();
  v94 = v17;
  v18 = v5 - v7;
  v19 = v3 - v5;
  if (v18 < v19)
  {
    sub_100060E68(v7);
    v20 = &v1[v18];
    v96 = v20;
    for (i = v3; ; v3 = i)
    {
      if (v1 >= v20 || v5 >= v3)
      {
        v5 = v7;
        goto LABEL_33;
      }

      v98 = v7;
      v99 = v1;
      v22 = *v1;
      v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      v24 = *v5;
      sub_1000183F4();
      swift_beginAccess();
      sub_100018C50();
      v90 = v24;
      v25 = v94;
      v92 = v26;
      sub_1000192DC(v23 + v24, v94);
      v27 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004CBC();
      swift_beginAccess();
      v89 = v22;
      sub_1000192DC(v27 + v22, v95);
      v28 = type metadata accessor for Date();
      v91 = &v83;
      v29 = sub_100002BDC(v28);
      v31 = v30;
      v100 = v5;
      v33 = *(v32 + 64);
      __chkstk_darwin(v29);
      v87 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v93;
      v35 = v25 + *(v93 + 36);
      v36 = v25 + *(v93 + 32);
      v86 = sub_10002B0EC();

      sub_10000D154();
      dispatch thunk of static Comparable.>= infix(_:_:)();
      v37 = *(v31 + 16);
      v38 = sub_1000DB380();
      v39 = v37(v38);
      v88 = &v83;
      __chkstk_darwin(v39);
      v41 = *(v34 + 32);
      v40 = *(v34 + 36);
      sub_1000DB074();
      dispatch thunk of static Comparable.>= infix(_:_:)();
      v42 = sub_1000DB374();
      v37(v42);
      sub_1000DB0D4();
      LOBYTE(v33) = static Date.< infix(_:_:)();
      v43 = *(v31 + 8);
      v44 = sub_1000062B0();
      v43(v44);
      v45 = sub_1000DB38C();
      v43(v45);
      sub_100019338();
      sub_100019338();

      if ((v33 & 1) == 0)
      {
        break;
      }

      v46 = v100;
      v5 = v100 + 1;
      v47 = v98;
      v1 = v99;
      if (v98 != v100)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 = (v47 + 1);
      v20 = v96;
    }

    v47 = v98;
    v46 = v99;
    v1 = v99 + 1;
    v5 = v100;
    if (v98 == v99)
    {
      goto LABEL_12;
    }

LABEL_11:
    *v47 = *v46;
    goto LABEL_12;
  }

  v48 = sub_10004EF18();
  sub_100060E68(v48);
  v20 = &v1[v19];
  v98 = v7;
  v99 = v1;
LABEL_14:
  v49 = v5 - 1;
  v50 = v3 - 1;
  v101 = v5;
  for (j = v5 - 1; v20 > v1 && v5 > v7; v49 = j)
  {
    i = v50;
    v52 = v20 - 1;
    v53 = *v49;
    v54 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v95 = *(v20 - 1);
    v55 = v95;
    v96 = v20;
    sub_1000183F4();
    swift_beginAccess();
    sub_100025AC4();
    v56 = v91;
    v90 = v57;
    sub_1000192DC(v54 + v55, v91);
    v58 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    v88 = v53;
    sub_1000192DC(v58 + v53, v92);
    v59 = type metadata accessor for Date();
    v89 = &v83;
    v60 = sub_100002BDC(v59);
    v94 = v61;
    v63 = *(v62 + 64);
    __chkstk_darwin(v60);
    v86 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
    v64 = &v83 - v86;
    v65 = v93;
    v66 = v56 + *(v93 + 36);
    v67 = v56 + *(v93 + 32);
    v85 = sub_10002B0EC();

    sub_100019678();
    v68 = sub_1000DB224();
    v69 = *(v94 + 16);
    if (v68)
    {
      v70 = v67;
    }

    else
    {
      v70 = v66;
    }

    v71 = v69(v64, v70, v59);
    v87 = &v83;
    __chkstk_darwin(v71);
    v72 = &v83 - v86;
    v73 = v92 + *(v65 + 36);
    v74 = v92 + *(v65 + 32);
    sub_100019678();
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      v75 = v74;
    }

    else
    {
      v75 = v73;
    }

    v69(v72, v75, v59);
    v76 = static Date.< infix(_:_:)();
    v77 = *(v94 + 8);
    v78 = sub_10000CDA4();
    v77(v78);
    (v77)(v64, v59);
    sub_1000DB38C();
    sub_100019338();
    sub_100019338();

    if (v76)
    {
      v3 = i;
      v7 = v98;
      v80 = j;
      v5 = j;
      v1 = v99;
      v20 = v96;
      if (i + 1 != v101)
      {
        *i = *j;
        v5 = v80;
      }

      goto LABEL_14;
    }

    v79 = i;
    v5 = v101;
    if (v96 != i + 1)
    {
      *i = *v52;
    }

    v50 = v79 - 1;
    v20 = v52;
    v7 = v98;
    v1 = v99;
  }

LABEL_33:
  v81 = v20 - v1;
  if (v5 != v1 || v5 >= &v1[v81])
  {
    memmove(v5, v1, 8 * v81);
  }

  sub_100005874();
}

uint64_t sub_1000D9DB4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_100019334(a1, v6, v7, v8, v9);
    }

    while (1)
    {
      sub_1000588F0(v17);

      v8 = v15;
      v9 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v17 = v18;
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      return sub_100019334(a1, v6, v7, v8, v9);
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      v9 = 0;
      return sub_100019334(a1, v6, v7, v8, v9);
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D9FEC()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000D0A0(v3);
  *v4 = v5;
  v6 = sub_1000071DC(v4);

  return sub_1000D53D0(v6, v7, v1);
}

uint64_t sub_1000DA080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006F558;

  return sub_1000C0078(a1, a2, v10, a4, a5);
}

uint64_t sub_1000DA148()
{
  sub_10001881C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100001FE0(v1);
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DA1D8()
{
  sub_100001ED0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000D0A0(v3);
  *v4 = v5;
  v6 = sub_1000071DC(v4);

  return sub_1000D57D0(v6, v7, v1);
}

unint64_t sub_1000DA26C()
{
  result = qword_1001BB3F0;
  if (!qword_1001BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB3F0);
  }

  return result;
}

uint64_t sub_1000DA2C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1000C0624(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1000DA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v15 = swift_task_alloc();
  v16 = sub_100004B00(v15);
  *v16 = v17;
  v16[1] = sub_10006FA64;
  sub_100036708();
  sub_10000CD38();
  sub_100006378();

  return v24(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1000DA444()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = swift_task_alloc();
  v7 = sub_10000D0A0(v6);
  *v7 = v8;
  sub_1000071DC(v7);
  sub_10000CD38();
  sub_100007BB8();

  return sub_1000D17CC(v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000DA4EC()
{
  sub_100001ED0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_10000D0A0(v4);
  *v5 = v6;
  v7 = sub_1000071DC(v5);

  return sub_1000D1EE8(v7, v8, v2, v3);
}

uint64_t sub_1000DA588()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;

  return sub_1000CCB8C();
}

uint64_t sub_1000DA628()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10000D154();

  return sub_1000CCC34(v3, v4);
}

uint64_t sub_1000DA6C4(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa_0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DA744()
{
  sub_1000033DC();
  v1 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F44(v1);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F44(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F44(v11);
  v13 = v12;
  v15 = v14;
  v16 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v21 = (v0 + v16 + *(v15 + 64));
  LOBYTE(v3) = *v21;
  v22 = v21[1];
  v23 = swift_task_alloc();
  v24 = sub_10000D0A0(v23);
  *v24 = v25;
  v24[1] = sub_10006FA64;
  sub_10000CD38();
  sub_1000062BC();

  return sub_1000C4BA0(v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_1000DA93C()
{
  sub_10001881C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100001FE0(v1);
  sub_100007BB8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DA9CC()
{
  sub_10000639C();
  sub_100003884();
  sub_1000063B0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100003D20();

  return sub_1000C1CF0(v3, v4, v5, v6);
}

uint64_t sub_1000DAA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DAAC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000DAB14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1000DAB2C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000DABBC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000DABCC()
{
  v2 = v0[30];
  v3 = *(v0[33] + v0[43]);
}

void sub_1000DABF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000DAC10()
{
  result = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  return result;
}

uint64_t sub_1000DAC20()
{
  v2 = *(*(v0 + 264) + *(v0 + 344));
}

uint64_t sub_1000DAC40()
{
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
}

void sub_1000DAC70()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 525);
  v3 = *(v0 + 240);
}

uint64_t sub_1000DAC80(uint64_t result)
{
  *(result + 8) = sub_1000443AC;
  v2 = *(v1 + 56);
  return result;
}

uint64_t sub_1000DACA8(uint64_t result)
{
  *(result + 8) = sub_1000266C4;
  v2 = *(v1 + 192);
  v3 = *(v1 + 176);
  return result;
}

uint64_t sub_1000DAD00()
{
  v2 = v0[16];
  v3 = v0[6];
  v4 = v0[2];

  return swift_task_alloc();
}

uint64_t sub_1000DAD20()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[14];

  return type metadata accessor for Logger();
}

uint64_t sub_1000DAD40()
{
  v2 = *(v0 + 112) + *(v0 + 288);

  return type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
}

uint64_t sub_1000DAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 32) = v19;

  return sub_10000E8DC();
}

void sub_1000DADB8()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[30] + 8;
}

uint64_t sub_1000DADD4@<X0>(uint64_t a1@<X8>)
{
  result = v3 + a1;
  *(v2 + 368) = *(v3 + a1 + *(v1 + 28));
  return result;
}

void sub_1000DADE8()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[23];
  v6 = v0[24];

  sub_10003E244();
}

uint64_t sub_1000DAE0C()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000DAE40()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000DAE5C(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = 0;

  return swift_willThrow();
}

uint64_t sub_1000DAE78()
{
  result = v0[115];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[110];
  v5 = v0[107];
  v6 = v0[106];
  v7 = v0[104];
  return result;
}

uint64_t sub_1000DAEA4()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_1000DAEC4()
{
}

uint64_t sub_1000DAF0C()
{
  v3 = v1[37] + v1[38] + *(v1[30] + 60);

  return sub_100007130(v3, v0 - 80);
}

uint64_t *sub_1000DAF50@<X0>(uint64_t a1@<X8>)
{
  result = sub_100003370((a1 + v1), *(a1 + v1 + 24));
  v3 = *result;
  return result;
}

BOOL sub_1000DAF70()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000DAF88()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_1000DAFC0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t sub_1000DAFD0()
{
}

uint64_t sub_1000DAFF8()
{
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 348);
  v5 = *(v0 + 248);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
}

uint64_t sub_1000DB02C()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  result = v0[39];
  v5 = v0[37];
  v6 = v0[23];
  return result;
}

uint64_t sub_1000DB044()
{
  result = v2[41];
  v4 = v2[42];
  v5 = v2[36];
  v6 = *(v2[37] + 16);
  v7 = v0 + *(v1 + 20);
  return result;
}

uint64_t sub_1000DB05C(uint64_t result)
{
  *(*(v1 + 48) + 8 * result) = v2;
  ++*(v1 + 16);
  return result;
}

void *sub_1000DB098(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v3;
  return result;
}

uint64_t sub_1000DB0B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  result = v0[9];
  v5 = v0[7];
  v6 = v0[5];
  return result;
}

uint64_t sub_1000DB104()
{

  return sub_10003DA78(v1, v2 + v0);
}

uint64_t sub_1000DB11C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);
}

uint64_t sub_1000DB138()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[16];

  return sub_1000286AC(v8);
}

void sub_1000DB15C()
{
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[23];
  v6 = v0[24];

  sub_10003E244();
}

uint64_t sub_1000DB180()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
}

uint64_t sub_1000DB19C()
{
  v2 = v0[30];
  v3 = v0[37] + v0[38];

  return swift_willThrow();
}

uint64_t sub_1000DB1C0()
{
  v4 = v2 + *(v0 + 60);

  return sub_100007130(v4, v1 + 16);
}

uint64_t sub_1000DB1DC()
{
  v2 = *(v0 + 200);
}

uint64_t sub_1000DB1F4()
{
}

uint64_t sub_1000DB20C()
{
  v2 = *(v0 + 200);
}

uint64_t sub_1000DB224()
{

  return dispatch thunk of static Comparable.>= infix(_:_:)();
}

uint64_t sub_1000DB23C()
{

  return swift_allocObject();
}

uint64_t sub_1000DB254()
{
  v2 = *(v0 + 526);
  v3 = *(v0 + 232);
}

uint64_t sub_1000DB26C()
{
  v2 = *(v0 + 200);

  return type metadata accessor for AuditToken();
}

uint64_t sub_1000DB334()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

char *sub_1000DB3DC(uint64_t a1)
{

  return sub_100038E28(a1, v2, v1, v3);
}

uint64_t sub_1000DB3FC()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_1000DB41C()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];

  return type metadata accessor for Logger();
}

uint64_t sub_1000DB43C()
{
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[2];

  return type metadata accessor for Logger();
}

uint64_t sub_1000DB45C()
{
}

void sub_1000DB474(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_100080444(a8 + 1, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1000DB48C(float a1)
{
  *v1 = a1;
}

uint64_t sub_1000DB4A4()
{

  return sub_100004A04((v0 + 96), v0 + 56);
}

uint64_t sub_1000DB4BC()
{

  return swift_allocObject();
}

uint64_t sub_1000DB4D4(void *a1)
{
  v2 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = *a1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  type metadata accessor for Session();
  LOBYTE(v7) = static UUIDIdentifier.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1000DB5F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = type metadata accessor for AssetCost();
  v3 = sub_100002BDC(v29);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  v11 = type metadata accessor for Date();
  v25 = v11;
  v27 = *(v11 - 8);
  v12 = v27;
  v13 = *(v27 + 64);
  __chkstk_darwin(v11);
  v28 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v24 - v28;
  v15 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v2;
  swift_beginAccess();
  v16 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v17 = *(v16 + 32);
  v26 = *(v12 + 16);
  v26(v14, &v15[v17], v11);
  v18 = InferenceProviderAssetDescriptor.identifier.getter();
  v24[1] = v19;
  v24[2] = v18;
  (*(v5 + 16))(v10, v2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost, v29);
  v20 = InferenceProviderAssetDescriptor.version.getter();
  v21 = *(*&v15[*(v16 + 44)] + 16);
  __chkstk_darwin(v20);
  v22 = v25;
  v26(v24 - v28, v14, v25);
  AssetInfo.init(identifier:cost:version:hasForegroundSession:timeLastRequestEnded:)();
  return (*(v27 + 8))(v14, v22);
}

uint64_t sub_1000DB870()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB478);
  sub_10000641C(v0, qword_1001BB478);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DB8D4()
{
  sub_1000E00E8(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_weakManagerWrapper, v3);
  Strong = swift_weakLoadStrong();
  sub_1000E0120(v3);
  return Strong;
}

uint64_t sub_1000DB924()
{
  sub_100002BAC();
  v3 = v2;
  v1[16] = v2;
  v1[17] = v0;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[18] = v4;
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  v1[19] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v1[20] = sub_100002C58();
  v10 = sub_100065020(&qword_1001BB408, &unk_100171DC0);
  sub_100002F04(v10);
  v12 = *(v11 + 64);
  v1[21] = sub_100002C58();
  v13 = sub_100065020(&qword_1001BB410, &unk_100172340);
  sub_100002F04(v13);
  v15 = *(v14 + 64);
  v1[22] = sub_100002C58();
  v16 = type metadata accessor for InferenceProviderDescriptor();
  v1[23] = v16;
  sub_100002F44(v16);
  v1[24] = v17;
  v19 = *(v18 + 64);
  v1[25] = sub_100002C58();
  v20 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[26] = v20;
  sub_100002F44(v20);
  v1[27] = v21;
  v23 = *(v22 + 64);
  v1[28] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[29] = State;
  sub_100002F44(State);
  v1[30] = v25;
  v27 = *(v26 + 64);
  v1[31] = sub_10000BF98();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBB2C, v3, 0);
}

uint64_t sub_1000DBB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = v18[17];
  v18[33] = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  sub_10002B088();
  if (!v16)
  {
    v32 = sub_100010BD4();
    v33(v32);
    v34 = sub_10000E724();
    v20(v34);
    sub_100013814();
    sub_100011B5C(v35, v36);
    sub_100001F70();
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v19 + 8);
    v39 = sub_1000060A4();
    v38(v39);
    if (v37)
    {
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v40 = v18[17];
      v41 = type metadata accessor for Logger();
      sub_10000641C(v41, qword_1001BB478);
      sub_100001F0C();

      v42 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      v43 = sub_100019C50();
      v44 = v18[32];
      v45 = v18[29];
      if (!v43)
      {

        v175 = sub_100007660();
        v38(v175);
LABEL_17:
        sub_100018404();

        sub_100001F00();
        sub_100011190();

        __asm { BRAA            X1, X16 }
      }

      v47 = v18[24];
      v46 = v18[25];
      v253 = v18[23];
      v48 = v18[17];
      v257 = v38;
      v49 = sub_1000267F8();
      sub_1000080A4();
      *v49 = 136315394;
      v256 = v44;
      v50 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v255 = v45;
      v51 = type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v52, v53);
      v54 = v48 + v50;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001127C(v55, v56);
      sub_10001E4A8();

      *(v49 + 4) = v51;
      *(v49 + 12) = 2080;
      v57 = (v48 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v58 = *(v48 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v59 = *(v48 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v57, v58);
      sub_100003048();
      v60 = sub_100003754();
      v61(v60);
      sub_10000866C();
      sub_100011B5C(v62, v63);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v64 = sub_10000C738();
      v65(v64);
      v66 = sub_10001993C();
      sub_100004A3C(v66, v58, v67);
      sub_100001F0C();

      *(v49 + 14) = v54;
      sub_10003DD68();
      _os_log_impl(v68, v69, v70, v71, v49, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v73 = v255;
      v72 = v256;
    }

    else
    {
      sub_100018630();
      UUIDIdentifier.init()();
      sub_100011880(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
      v74 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v75 = sub_100012E48();
      v83 = sub_10000A7B8(v75, v76, v77, v78, v79, v80, v81, v82, v179, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219);
      v17(v83);
      v84 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      v216 = v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
      sub_100013D6C((v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
      v85 = sub_10000A868();
      v86(v85, v84);
      v87 = v223;
      InferenceProviderDescriptor.id.getter();
      sub_1000031D4();
      v88 = sub_100004CE8();
      v89(v88);
      v90 = 1;
      v91 = v229;
      sub_100003978();
      sub_100009BFC(v92, v93, v94, v251);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v95 = v241;
      sub_100003978();
      sub_100009BFC(v96, v97, v98, v99);
      type metadata accessor for AuditToken();
      v100 = v245;
      sub_100003978();
      v252 = v101;
      v105 = sub_100009BFC(v102, v103, v104, v101);
      v113 = sub_100019A94(v105, v106, v107, v108, v109, v110, v111, v112, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220, v223, v226, v229, v232, v235, v238, v241, v243, v245, v247, v249);
      v114(v113);

      sub_10000ECD8(v100, &qword_1001BB3F8, &qword_100171D50);
      sub_10000ECD8(v95, &qword_1001BB408, &unk_100171DC0);
      sub_10000ECD8(v91, &qword_1001BB410, &unk_100172340);
      v257(v74);
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v115 = v18[17];
      v116 = type metadata accessor for Logger();
      sub_10000641C(v116, qword_1001BB478);
      sub_100003170();

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = v18[25];
        v120 = v18[23];
        v90 = sub_1000267F8();
        sub_1000080A4();
        sub_1000195F8(4.8151e-34);
        sub_100005168();
        sub_100011B5C(v121, v122);
        v123 = sub_10003F858();
        v125 = sub_10001127C(v123, v124);

        *(v90 + 4) = v125;
        sub_1000265C8();
        v126 = v217[3];
        v127 = v217[4];
        sub_100013D6C(v217, v126);
        v128 = sub_100019498();
        v129(v128, v127);
        sub_10000866C();
        sub_100011B5C(v130, v131);
        v87 = v119;
        dispatch thunk of CustomStringConvertible.description.getter();
        v132 = sub_1000070B8();
        v133(v132);
        v134 = sub_10001993C();
        sub_100004A3C(v134, v126, v135);
        sub_100019498();

        *(v90 + 14) = v119;
        sub_1000E0154(&_mh_execute_header, v136, v137, "Marking asset %s unloaded from %s by termination");
        swift_arrayDestroy();
        sub_100002BD0();

        sub_1000039CC();
      }

      sub_100008244();
      v138 = v18[6];
      sub_100003370(v18 + 2, v18[5]);
      v139 = *(v138 + 32);
      v140 = sub_100019498();
      v141(v140, v138);
      sub_100003324(v18 + 2);
      v142 = sub_100019244();
      (v117)(v142);
      v143 = sub_100002CBC();
      sub_10001938C(v143, v144);
      v145 = sub_100031688();
      v87(v145);
      sub_100002D24();
      swift_beginAccess();
      v146 = sub_1000060A4();
      sub_10003DA78(v146, v147);
      swift_endAccess();
      (v117)(v90, v138, v118);
      v148 = sub_100002CBC();
      v150 = sub_10001938C(v148, v149);
      v158 = sub_10000C644(v150, v151, v152, v153, v154, v155, v156, v157, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v224, v227, v230, v233, v236);
      v87(v158);
      sub_100002D24();
      swift_beginAccess();
      v159 = sub_1000060A4();
      sub_10003DA78(v159, v160);
      swift_endAccess();
      sub_1000037C8();
      InferenceProviderAssetDescriptor.version.getter();
      AssetCost.onDeviceMemory.getter();
      v161 = v244;
      sub_100003978();
      v165 = sub_100009BFC(v162, v163, v164, v252);
      v173 = sub_1000088CC(v165, v166, v167, v168, v169, v170, v171, v172, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v225, v228, v231, v234, v237, v239, v242, v244, v246);
      v174(v173);

      sub_10000ECD8(v161, &qword_1001BB3F8, &qword_100171D50);
      (*(v248 + 8))(v118, v250);
      v72 = v254;
      v73 = v240;
    }

    (v257)(v72, v73);
    goto LABEL_17;
  }

  v22 = async function pointer to Task.value.getter[1];

  v23 = swift_task_alloc();
  v18[35] = v23;
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v23 = v18;
  sub_10000BFDC();
  sub_100019260();
  sub_100011190();

  return Task.value.getter(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DC3BC()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 128);
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000DC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = v18[34];

  sub_10002B088();
  if (!v16)
  {
    v33 = sub_100010BD4();
    v34(v33);
    v35 = sub_10000E724();
    v20(v35);
    sub_100013814();
    sub_100011B5C(v36, v37);
    sub_100001F70();
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = *(v19 + 8);
    v40 = sub_1000060A4();
    v39(v40);
    if (v38)
    {
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v41 = v18[17];
      v42 = type metadata accessor for Logger();
      sub_10000641C(v42, qword_1001BB478);
      sub_100001F0C();

      v43 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      v44 = sub_100019C50();
      v45 = v18[32];
      v46 = v18[29];
      if (!v44)
      {

        v176 = sub_100007660();
        v39(v176);
LABEL_17:
        sub_100018404();

        sub_100001F00();
        sub_100011190();

        __asm { BRAA            X1, X16 }
      }

      v48 = v18[24];
      v47 = v18[25];
      v254 = v18[23];
      v49 = v18[17];
      v258 = v39;
      v50 = sub_1000267F8();
      sub_1000080A4();
      *v50 = 136315394;
      v257 = v45;
      v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      v256 = v46;
      v52 = type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v53, v54);
      v55 = v49 + v51;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_10001127C(v56, v57);
      sub_10001E4A8();

      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      v58 = (v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v59 = *(v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v60 = *(v49 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v58, v59);
      sub_100003048();
      v61 = sub_100003754();
      v62(v61);
      sub_10000866C();
      sub_100011B5C(v63, v64);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v65 = sub_10000C738();
      v66(v65);
      v67 = sub_10001993C();
      sub_100004A3C(v67, v59, v68);
      sub_100001F0C();

      *(v50 + 14) = v55;
      sub_10003DD68();
      _os_log_impl(v69, v70, v71, v72, v50, 0x16u);
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();

      v74 = v256;
      v73 = v257;
    }

    else
    {
      sub_100018630();
      UUIDIdentifier.init()();
      sub_100011880(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager);
      v75 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
      InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v76 = sub_100012E48();
      v84 = sub_10000A7B8(v76, v77, v78, v79, v80, v81, v82, v83, v180, v184, v188, v192, v196, v200, v204, v208, v212, v216, v220);
      v17(v84);
      v85 = *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      v217 = v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection;
      sub_100013D6C((v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v20 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
      v86 = sub_10000A868();
      v87(v86, v85);
      v88 = v224;
      InferenceProviderDescriptor.id.getter();
      sub_1000031D4();
      v89 = sub_100004CE8();
      v90(v89);
      v91 = 1;
      v92 = v230;
      sub_100003978();
      sub_100009BFC(v93, v94, v95, v252);
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      v96 = v242;
      sub_100003978();
      sub_100009BFC(v97, v98, v99, v100);
      type metadata accessor for AuditToken();
      v101 = v246;
      sub_100003978();
      v253 = v102;
      v106 = sub_100009BFC(v103, v104, v105, v102);
      v114 = sub_100019A94(v106, v107, v108, v109, v110, v111, v112, v113, v181, v185, v189, v193, v197, v201, v205, v209, v213, v217, v221, v224, v227, v230, v233, v236, v239, v242, v244, v246, v248, v250);
      v115(v114);

      sub_10000ECD8(v101, &qword_1001BB3F8, &qword_100171D50);
      sub_10000ECD8(v96, &qword_1001BB408, &unk_100171DC0);
      sub_10000ECD8(v92, &qword_1001BB410, &unk_100172340);
      v258(v75);
      if (qword_1001B8938 != -1)
      {
        sub_100005C90();
        swift_once();
      }

      v116 = v18[17];
      v117 = type metadata accessor for Logger();
      sub_10000641C(v117, qword_1001BB478);
      sub_100003170();

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = v18[25];
        v121 = v18[23];
        v91 = sub_1000267F8();
        sub_1000080A4();
        sub_1000195F8(4.8151e-34);
        sub_100005168();
        sub_100011B5C(v122, v123);
        v124 = sub_10003F858();
        v126 = sub_10001127C(v124, v125);

        *(v91 + 4) = v126;
        sub_1000265C8();
        v127 = v218[3];
        v128 = v218[4];
        sub_100013D6C(v218, v127);
        v129 = sub_100019498();
        v130(v129, v128);
        sub_10000866C();
        sub_100011B5C(v131, v132);
        v88 = v120;
        dispatch thunk of CustomStringConvertible.description.getter();
        v133 = sub_1000070B8();
        v134(v133);
        v135 = sub_10001993C();
        sub_100004A3C(v135, v127, v136);
        sub_100019498();

        *(v91 + 14) = v120;
        sub_1000E0154(&_mh_execute_header, v137, v138, "Marking asset %s unloaded from %s by termination");
        swift_arrayDestroy();
        sub_100002BD0();

        sub_1000039CC();
      }

      sub_100008244();
      v139 = v18[6];
      sub_100003370(v18 + 2, v18[5]);
      v140 = *(v139 + 32);
      v141 = sub_100019498();
      v142(v141, v139);
      sub_100003324(v18 + 2);
      v143 = sub_100019244();
      (v118)(v143);
      v144 = sub_100002CBC();
      sub_10001938C(v144, v145);
      v146 = sub_100031688();
      v88(v146);
      sub_100002D24();
      swift_beginAccess();
      v147 = sub_1000060A4();
      sub_10003DA78(v147, v148);
      swift_endAccess();
      (v118)(v91, v139, v119);
      v149 = sub_100002CBC();
      v151 = sub_10001938C(v149, v150);
      v159 = sub_10000C644(v151, v152, v153, v154, v155, v156, v157, v158, v182, v186, v190, v194, v198, v202, v206, v210, v214, v218, v222, v225, v228, v231, v234, v237);
      v88(v159);
      sub_100002D24();
      swift_beginAccess();
      v160 = sub_1000060A4();
      sub_10003DA78(v160, v161);
      swift_endAccess();
      sub_1000037C8();
      InferenceProviderAssetDescriptor.version.getter();
      AssetCost.onDeviceMemory.getter();
      v162 = v245;
      sub_100003978();
      v166 = sub_100009BFC(v163, v164, v165, v253);
      v174 = sub_1000088CC(v166, v167, v168, v169, v170, v171, v172, v173, v183, v187, v191, v195, v199, v203, v207, v211, v215, v219, v223, v226, v229, v232, v235, v238, v240, v243, v245, v247);
      v175(v174);

      sub_10000ECD8(v162, &qword_1001BB3F8, &qword_100171D50);
      (*(v249 + 8))(v119, v251);
      v73 = v255;
      v74 = v241;
    }

    (v258)(v73, v74);
    goto LABEL_17;
  }

  v22 = async function pointer to Task.value.getter[1];

  v23 = swift_task_alloc();
  v18[35] = v23;
  v24 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v23 = v18;
  sub_10000BFDC(v24);
  sub_100019260();
  sub_100011190();

  return Task.value.getter(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DCD78()
{
  v24 = v0;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BB478);

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v7, v8);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100004A3C(v9, v10, &v23);

    *(v5 + 4) = v11;
    sub_1000033FC();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_100003324(v6);
    sub_1000039CC();

    sub_100002BD0();
  }

  v17 = v0[2];
  v18 = sub_1000DB8D4();
  v0[3] = v18;
  if (v18)
  {
    v19 = swift_task_alloc();
    v0[4] = v19;
    *v19 = v0;
    v19[1] = sub_1000DCFA0;
    v20 = v0[2];

    return sub_1000DB924();
  }

  else
  {
    sub_100001F00();

    return v22();
  }
}

uint64_t sub_1000DCFA0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_1000DD08C, 0, 0);
}

uint64_t sub_1000DD08C()
{
  sub_100002BAC();
  v1 = *(v0 + 24);

  sub_100001F00();

  return v2();
}

uint64_t sub_1000DD0E4()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
  v2 = type metadata accessor for InferenceProviderAssetDescriptor();
  sub_100002C00(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_path + 8);

  v5 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost;
  v6 = type metadata accessor for AssetCost();
  sub_100002C00(v6);
  (*(v7 + 8))(v0 + v5);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection));
  sub_1000193F0(OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0);
  sub_100003324((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager));
  v8 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_neuralEngine);

  sub_1000E0120(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_weakManagerWrapper);
  v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_connectionTerminationIdentifier;
  v10 = type metadata accessor for UUID();
  sub_100002C00(v10);
  (*(v11 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_1000DD210()
{
  sub_1000DD0E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000DD270()
{
  result = type metadata accessor for InferenceProviderAssetDescriptor();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for AssetCost();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(319);
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for UUID();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000DD3EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DD40C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_1000DD46C()
{
  type metadata accessor for LoadState();
  if (v0 <= 0x3F)
  {
    sub_1000DD5C8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1000BC108();
        if (v3 <= 0x3F)
        {
          sub_1000DD62C(319, &qword_1001BB618, &qword_1001B94F0, &unk_100172060, &qword_1001B9500);
          if (v4 <= 0x3F)
          {
            sub_1000DD62C(319, &unk_1001BB620, &qword_1001B94D0, &unk_100171E80, &qword_1001B94E0);
            if (v5 <= 0x3F)
            {
              sub_1000BB98C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000DD5C8()
{
  if (!qword_1001BB610)
  {
    sub_10006A614(&qword_1001B8F70, &qword_10016FB88);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BB610);
    }
  }
}

void sub_1000DD62C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10006A614(a3, a4);
    sub_100013074(a5, a3, a4);
    v9 = type metadata accessor for Set();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000DD6FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_1000DCD5C();
}

uint64_t sub_1000DD788()
{
  v1 = v0;
  v0[5] = v0[51];
  v2 = (v0 + 5);
  v3 = v0[27];
  v4 = v0[24];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_100013E7C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v12 = v0 + 6;
    v13 = v0[20];
    v14 = v0[51];
    v15 = v0[23];
    v16 = v0[5];

    v0[6] = v14;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v17 = v0 + 21;
      v18 = (*(v0[21] + 88))(v0[23], v0[20]);
      v19 = v0 + 20;
      if (v18 == enum case for ModelManagerError.inferenceError(_:))
      {
        v17 = v0 + 25;
        v20 = v0[25];
        v22 = v0[23];
        v21 = v0[24];
        (*(v0[21] + 96))(v22, v0[20]);
        v23 = (*(v20 + 88))(v22, v21);
        v19 = v0 + 24;
        if (v23 == enum case for InferenceError.alreadyLoaded(_:))
        {
          v24 = v0[51];
          v25 = v0[24];
          v26 = v1[25];
          v7 = v1[23];

          (*(v26 + 8))(v7, v25);
          goto LABEL_9;
        }
      }

      (*(*v17 + 8))(v0[23], *v19);
    }

    v144 = v0 + 24;
    v71 = v0[51];
    v72 = v0[40];
    v73 = v0[16];
    v74 = v0[6];

    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v165 = v0[51];
      v156 = v0[45];
      v159 = v0[46];
      v77 = v0[44];
      v78 = v0[38];
      v154 = v0[36];
      v79 = (v0[16] + v0[41]);
      sub_1000033D0();
      v80 = swift_slowAlloc();
      v162 = sub_100003788();
      sub_1000080A4();
      sub_1000195F8(4.8152e-34);
      sub_100005168();
      sub_100011B5C(v81, v82);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = sub_10001127C(v83, v84);

      *(v80 + 4) = v85;
      sub_1000265C8();
      v86 = v79[4];
      sub_100003370(v79, v79[3]);
      v87 = *(v86 + 8);
      v88 = sub_10000A868();
      v89(v88, v86);
      sub_10000866C();
      sub_100011B5C(v90, v91);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v156(v78, v154);
      v95 = sub_10001993C();
      sub_100004A3C(v95, v94, v96);
      sub_100001F0C();

      *(v80 + 14) = v92;
      *(v80 + 22) = 2112;
      swift_errorRetain();
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 24) = v97;
      *v162 = v97;
      sub_10000CD44(&_mh_execute_header, v98, v99, "Failed to load asset %s into %s: %@");
      sub_10000ECD8(v162, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      swift_arrayDestroy();
      sub_100002BD0();

      sub_1000039CC();
    }

    v100 = v0 + 26;
    v166 = v1[26];
    v101 = v1[51];
    v102 = v1[44];
    v157 = v1[35];
    v160 = v1[47];
    v163 = v1[24];
    v104 = v1[18];
    v103 = v1[19];
    v146 = v1[17];
    v152 = v1[15];
    v105 = (v1[16] + v1[43]);
    v107 = v105[3];
    v106 = v105[4];
    sub_100003370(v105, v107);
    v108 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
    v148 = v109;
    v150 = v108;
    v110 = InferenceProviderAssetDescriptor.version.getter();
    v112 = v111;
    static AssetCost.zero.getter();
    v113 = AssetCost.onDeviceMemory.getter();
    (*(v104 + 8))(v103, v146);
    v114 = *(v106 + 48);
    swift_errorRetain();
    v114(v157, v150, v148, v110, v112, v113, 0, v160, v101, v152, v107, v106);

    v1[7] = v101;
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v115 = 25;
      v116 = v144;
    }

    else
    {
      v100 = v1 + 22;
      v117 = v1[22];
      v118 = v1[20];
      v1[8] = v1[51];
      swift_errorRetain();
      if (!swift_dynamicCast())
      {
        v121 = v1[51];
        v122 = v1[47];
        v123 = v1[24];
        v124 = v1[25];
        sub_100003450();
        sub_100011B5C(v125, v126);
        swift_allocError();
        v128 = v127;
        swift_getErrorValue();
        v130 = v1[2];
        v129 = v1[3];
        v131 = v1[4];
        Error.localizedDescription.getter();
        sub_1000031D4();
        Dictionary.init(dictionaryLiteral:)();
        sub_100008004();
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
        (*(v124 + 104))(v128, enum case for InferenceError.loadFailed(_:), v123);
        swift_willThrow();

        goto LABEL_23;
      }

      v115 = 21;
      v116 = v1 + 20;
    }

    (*(v1[v115] + 8))(*v100, *v116);
    v119 = v1[51];
    v120 = v1[47];
    swift_willThrow();

    v172 = v1[51];
LABEL_23:
    v133 = v1[38];
    v132 = v1[39];
    v134 = v1[32];
    v136 = v1[30];
    v135 = v1[31];
    v138 = v1[26];
    v137 = v1[27];
    v139 = v1[23];
    v167 = v1[22];
    v170 = v1[19];
    (*(v1[34] + 8))(v1[35], v1[33]);

    v70 = v1[1];
    goto LABEL_24;
  }

  if ((*(v0[25] + 88))(v0[27], v0[24]) != enum case for InferenceError.alreadyLoaded(_:))
  {
    (*(v0[25] + 8))(v0[27], v0[24]);
    goto LABEL_5;
  }

  v5 = v0[51];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];

  v9 = *(v8 + 8);
  v10 = sub_100007660();
  v11(v10);
  v12 = v2;
LABEL_9:
  v27 = *v12;

  v28 = v1[40];
  v29 = v1[16];

  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (os_log_type_enabled(v30, v7))
  {
    sub_10000CDB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    sub_100011B5C(v31, v32);
    v33 = sub_1000060D8();
    sub_10001127C(v33, v34);
    sub_100013E7C();

    v35 = sub_1000113C8();
    v36(v35, v2);
    sub_10000866C();
    sub_100011B5C(v37, v38);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_10000588C();
    v168(v39);
    v40 = sub_10001993C();
    sub_100004A3C(v40, v2, v41);
    sub_10000A868();

    *(v29 + 14) = v28;
    sub_100018E18(&_mh_execute_header, v42, v43, "Asset %s already loaded into %s");
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v44 = v1[40];
  v45 = v1[16];

  v46 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (os_log_type_enabled(v46, v7))
  {
    sub_10000CDB0();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    sub_100011B5C(v47, v48);
    v49 = sub_1000060D8();
    sub_10001127C(v49, v50);
    sub_100013E7C();

    v51 = sub_1000113C8();
    v52(v51, v2);
    sub_10000866C();
    sub_100011B5C(v53, v54);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v55 = sub_10000588C();
    v168(v55);
    v56 = sub_10001993C();
    sub_100004A3C(v56, v2, v57);
    sub_10000A868();

    *(v45 + 14) = v44;
    sub_100018E18(&_mh_execute_header, v58, v59, "Finished loading asset %s into %s");
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v60 = v1[44];
  v147 = v1[39];
  v149 = v1[38];
  v61 = v1[34];
  v142 = v1[35];
  v143 = v1[47];
  v145 = v1[33];
  v151 = v1[32];
  v153 = v1[31];
  v155 = v1[30];
  v158 = v1[27];
  v161 = v1[26];
  v164 = v1[23];
  v169 = v1[22];
  v171 = v1[19];
  v141 = v1[15];
  v62 = (v1[16] + v1[43]);
  v63 = v62[4];
  sub_100003370(v62, v62[3]);
  InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  InferenceProviderAssetDescriptor.version.getter();
  AssetCost.onDeviceMemory.getter();
  v64 = *(v63 + 48);
  sub_10001360C();
  v69(v65, v66, v67, v68);

  (*(v61 + 8))(v142, v145);

  v70 = v1[1];
LABEL_24:

  return v70();
}

uint64_t sub_1000DE2F0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 488);
  v3 = *(v1 + 232);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  *(v24 + 208) = *(v24 + 472);
  v27 = (v24 + 208);
  v28 = *(v24 + 320);
  v30 = (v24 + 304);
  v29 = *(v24 + 304);
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  sub_1000062B0();
  if (swift_dynamicCast())
  {
    v31 = (*(*(v24 + 312) + 88))(*(v24 + 320), *(v24 + 304));
    if (v31 == enum case for InferenceError.alreadyLoaded(_:))
    {
      v32 = v31;
      v34 = *(v24 + 336);
      v33 = *(v24 + 344);
      v36 = *(v24 + 320);
      v35 = *(v24 + 328);
      v37 = *(v24 + 304);
      v38 = *(v24 + 312);
LABEL_9:
      (*(v38 + 96))(v36, v37);
      v49 = *(v34 + 32);
      v49(v33, v36, v35);
      v50 = *v27;

      *(v24 + 496) = v49;
      *(v24 + 520) = v32;
      v51 = *(v24 + 480);
      v52 = *(v24 + 224);

      v53 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      sub_1000089B8();
      v54 = &unk_1001BE000;
      if (sub_10000A384())
      {
        v56 = *(v24 + 360);
        v55 = *(v24 + 368);
        v108 = *(v24 + 352);
        v57 = *(v24 + 224);
        sub_1000267F8();
        a12 = sub_1000062D8();
        *v52 = 136315394;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100005168();
        sub_100011B5C(v58, v59);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = sub_100004A3C(v60, v61, &a12);

        *(v52 + 4) = v62;
        *(v52 + 12) = 2080;
        v63 = (v57 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
        v64 = *(v57 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v65 = *(v57 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100013D6C(v63, v64);
        v66 = sub_100005974();
        v67(v66, v65);
        sub_10000866C();
        sub_100011B5C(v68, v69);
        sub_1000035E8();
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        (*(v56 + 8))(v55, v108);
        sub_100004A3C(v70, v72, &a12);
        sub_100005974();

        *(v52 + 14) = v70;
        v54 = &unk_1001BE000;
        sub_1000033FC();
        _os_log_impl(v73, v74, v75, v76, v77, 0x16u);
        sub_10002A110();
        sub_1000039CC();

        sub_100002BD0();
      }

      v78 = (*(v24 + 224) + v54[261]);
      v79 = v78[4];
      sub_100003370(v78, v78[3]);
      v80 = *(v79 + 136);
      sub_100004B94();
      v109 = v81 + *v81;
      v83 = *(v82 + 4);
      v84 = swift_task_alloc();
      *(v24 + 504) = v84;
      *v84 = v24;
      v84[1] = sub_1000DE928;
      sub_100003D04();

      return v89(v85, v86, v87, v88, v89, v90, v91, v92, a9, v79 + 136, v109, a12, a13, a14, a15, a16);
    }

    (*(*(v24 + 312) + 8))(*(v24 + 320), *(v24 + 304));
  }

  v27 = (v24 + 216);
  v39 = *(v24 + 472);
  v40 = *(v24 + 296);
  v41 = *(v24 + 280);
  v42 = *(v24 + 208);

  *(v24 + 216) = v39;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if ((*(*(v24 + 288) + 88))(*(v24 + 296), *(v24 + 280)) == enum case for ModelManagerError.inferenceError(_:))
    {
      v43 = *(v24 + 304);
      v44 = *(v24 + 312);
      (*(*(v24 + 288) + 96))(*(v24 + 296), *(v24 + 280));
      v45 = *(v44 + 88);
      v46 = sub_100002CBC();
      v48 = v47(v46);
      if (v48 == enum case for InferenceError.alreadyLoaded(_:))
      {
        v32 = v48;
        v34 = *(v24 + 336);
        v33 = *(v24 + 344);
        v35 = *(v24 + 328);
        v37 = *(v24 + 304);
        v38 = *(v24 + 312);
        v36 = *(v24 + 296);
        goto LABEL_9;
      }

      v94 = v24 + 312;
    }

    else
    {
      v30 = (v24 + 280);
      v94 = v24 + 288;
    }

    (*(*v94 + 8))(*(v24 + 296), *v30);
  }

  v95 = *(v24 + 472);
  v96 = *(v24 + 216);

  swift_willThrow();
  v97 = *(v24 + 472);
  v98 = sub_1000056DC();
  v99(v98);

  sub_100001F00();
  sub_100003D04();

  return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000DE928()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[64] = v0;

  if (v0)
  {
    v9 = v3[29];
    (*(v3[42] + 8))(v3[43], v3[41]);
    v10 = sub_1000DEECC;
    v11 = v9;
  }

  else
  {
    v11 = v3[29];
    v10 = sub_1000DEA4C;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1000DEA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = *(v14 + 496);
  v17 = *(v14 + 520);
  v37 = *(v14 + 472);
  v19 = *(v14 + 336);
  v18 = *(v14 + 344);
  v20 = *(v14 + 328);
  v22 = *(v14 + 304);
  v21 = *(v14 + 312);
  sub_100003450();
  sub_100011B5C(v23, v24);
  swift_allocError();
  sub_1000031D4();
  v16(v25, v18, v20);
  (*(v21 + 104))(v15, v17, v22);
  swift_willThrow();

  v26 = sub_1000056DC();
  v27(v26);

  sub_100001F00();
  sub_100003540();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12, a13, a14);
}

uint64_t sub_1000DEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v27;
  a24 = v28;
  sub_100005EA4();
  a22 = v24;
  v29 = v24[50];
  v30 = sub_10004868C(v24[55]);
  sub_1000480AC(v30, (v24 + 7));
  v31 = v24[11];
  sub_100003370(v24 + 7, v24[10]);
  v32 = *(v31 + 32);
  v33 = sub_1000060A4();
  v34(v33);
  sub_100003324(v24 + 7);
  v24[59] = v24[57];
  v35 = v24[54];
  v36 = v24[55];
  v37 = v24[52];
  v38 = v24[53];
  sub_10000CC88();
  v39 = sub_100010C80();
  v40(v39);
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v25, v26 + v36);
  swift_endAccess();
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v41 = v24[28];
  v42 = type metadata accessor for Logger();
  v24[60] = sub_10000641C(v42, qword_1001BB478);

  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v24[45];
    v46 = v24[46];
    v68 = v24[44];
    v47 = v24[28];
    sub_1000033D0();
    v48 = swift_slowAlloc();
    v69 = sub_100003788();
    a13 = sub_1000080A4();
    *v48 = 136315650;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v49, v50);
    v51 = sub_100013430();
    v53 = v52;
    sub_100004A3C(v51, v52, &a13);
    sub_100013E7C();

    sub_100006534();
    v54 = (v47 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v56 = *(v47 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v55 = *(v47 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v54, v56);
    sub_100003048();
    v57(v56, v55);
    sub_10000866C();
    sub_100011B5C(v58, v59);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v60 = sub_10000F148();
    v61(v60);
    sub_100004A3C(v53, v55, &a13);
    sub_100019498();

    sub_100011DD8();
    swift_errorRetain();
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 24) = v62;
    *v69 = v62;
    _os_log_impl(&_mh_execute_header, v43, v44, "Failed to load asset %s into %s: %@", v48, 0x20u);
    sub_10000ECD8(v69, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8();
    sub_100002BD0();

    sub_100002BD0();
  }

  v63 = swift_task_alloc();
  v24[61] = v63;
  *v63 = v24;
  sub_100007E40(v63);
  sub_100003D04();

  return sub_100041158(v64, v65);
}

uint64_t sub_1000DEECC()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 512);
  v3 = sub_1000056DC();
  v4(v3);

  sub_100001F00();

  return v5();
}

uint64_t sub_1000DEF8C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 352);
  v3 = *(v1 + 64);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[42];
  v18 = v16[37];
  v20 = v16[28];
  v19 = v16[29];
  v22 = v16[26];
  v21 = v16[27];
  v23 = v16[25];
  v24 = v16[22];
  v25 = v16[19];
  v36 = v16[18];
  v37 = v16[17];
  v38 = v16[14];
  v39 = v16[11];
  swift_willThrow();

  (*(v20 + 8))(v19, v21);

  sub_100001F00();
  v26 = v16[42];
  sub_100003D04();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, a13, a14, a15, a16);
}

uint64_t sub_1000DF17C()
{
  v120 = v0;
  v0[2] = v0[42];
  v1 = v0 + 2;
  v3 = v0 + 11;
  v2 = v0[11];
  v4 = v0[9];
  swift_errorRetain();
  sub_100065020(&qword_1001B8F60, &unk_100171260);
  if (swift_dynamicCast())
  {
    if ((*(v0[10] + 88))(v0[11], v0[9]) == enum case for InferenceError.notLoaded(_:))
    {
LABEL_7:
      v16 = v0[42];
      v17 = *v3;
      v18 = v0[9];
      v19 = v0[10];

      v20 = *(v19 + 8);
      v21 = sub_1000060A4();
      v22(v21);
      v23 = *v1;

      v24 = v0[40];
      v25 = v0[4];

      v26 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1000089B8();
      if (sub_10000A384())
      {
        sub_100012DB0();
        v119 = sub_1000062D8();
        sub_100012BB4(4.8151e-34);
        sub_100005168();
        sub_100011B5C(v27, v28);
        v29 = sub_1000060D8();
        sub_100036E38(v29, v30);
        sub_100013E7C();

        v31 = sub_1000113C8();
        v32(v31, v0 + 9);
        sub_10000866C();
        sub_100011B5C(v33, v34);
        sub_1000035E8();
        dispatch thunk of CustomStringConvertible.description.getter();
        v35 = sub_10000588C();
        v115(v35);
        v36 = sub_100008004();
        sub_100004A3C(v36, v37, v38);
        sub_10000A868();

        *(v25 + 14) = v24;
        sub_1000033FC();
        _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
        sub_10002A110();
        sub_1000039CC();

        sub_100002BD0();
      }

      sub_100013AE4();
      InferenceProviderAssetDescriptor.version.getter();
      v44 = AssetCost.onDeviceMemory.getter();
      v52 = sub_100007910(v44, v45, v46, v47, v48, v49, v50, v51, v101, v102, v103, v104, v105, v106);
      v53(v52);

      (v115)(v108, v113);
      v54 = swift_task_alloc();
      v0[43] = v54;
      *v54 = v0;
      sub_100002008(v54);
      goto LABEL_15;
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v3 = v0 + 17;
  v5 = v0[17];
  v1 = v0 + 3;
  v6 = v0[42];
  v8 = v0 + 15;
  v7 = v0[15];
  v9 = v0[2];

  v0[3] = v6;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v10 = v0 + 16;
    if ((*(v0[16] + 88))(v0[17], v0[15]) == enum case for ModelManagerError.inferenceError(_:))
    {
      v10 = v0 + 10;
      v11 = v0[10];
      v12 = v0[9];
      (*(v0[16] + 96))(v0[17], v0[15]);
      v13 = *(v11 + 88);
      v14 = sub_1000060A4();
      if (v15(v14) == enum case for InferenceError.notLoaded(_:))
      {
        goto LABEL_7;
      }

      v8 = v0 + 9;
    }

    (*(*v10 + 8))(*v3, *v8);
  }

  v56 = v0[42];
  v57 = v0[40];
  v58 = v0[3];
  v59 = v0[4];

  swift_errorRetain();
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v114 = v0[36];
    v116 = v0[42];
    v62 = v0[31];
    v63 = v0[22];
    v109 = v0[20];
    v111 = v0[35];
    v64 = (v0[4] + v0[34]);
    sub_1000033D0();
    v65 = swift_slowAlloc();
    v66 = sub_100003788();
    v119 = sub_1000080A4();
    *v65 = 136315650;
    v67 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v68, v69);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100036E38(v70, v71);
    sub_100013E7C();

    *(v65 + 4) = v67;
    *(v65 + 12) = 2080;
    v73 = v64[3];
    v72 = v64[4];
    sub_100003370(v64, v73);
    sub_100003048();
    v74(v73, v72);
    sub_10000866C();
    sub_100011B5C(v75, v76);
    sub_100003E14();
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    v111(v63, v109);
    sub_100004A3C(v77, v79, &v119);
    sub_10000E86C();

    *(v65 + 14) = v77;
    *(v65 + 22) = 2112;
    swift_errorRetain();
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v65 + 24) = v80;
    *v66 = v80;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to unload asset %s from %s: %@", v65, 0x20u);
    sub_10000ECD8(v66, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8();
    sub_100002BD0();

    sub_100002BD0();
  }

  v81 = v0[42];
  v82 = v0[31];
  v117 = v0[29];
  v118 = v0[37];
  v84 = v0[13];
  v83 = v0[14];
  v107 = v0[12];
  v112 = v0[7];
  v85 = (v0[4] + v0[30]);
  v87 = v85[3];
  v86 = v85[4];
  sub_100003370(v85, v87);
  v110 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v89 = v88;
  v90 = InferenceProviderAssetDescriptor.version.getter();
  v92 = v91;
  static AssetCost.zero.getter();
  v93 = AssetCost.onDeviceMemory.getter();
  (*(v84 + 8))(v83, v107);
  v94 = *(v86 + 48);
  swift_errorRetain();
  v94(v117, v110, v89, v90, v92, v93, 0, v118, v81, v112, v87, v86);

  v95 = swift_task_alloc();
  v0[44] = v95;
  *v95 = v0;
  v95[1] = sub_1000DEF8C;
  v55 = v0[8];
  v96 = v0[5];
LABEL_15:
  v97 = v0[4];
  v98 = sub_1000031B8(v55);

  return sub_100041158(v98, v99);
}

uint64_t sub_1000DF89C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 464);
  v3 = *(v1 + 168);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DF994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v18 = v16[56];
  v17 = v16[57];
  v20 = v16[41];
  v19 = v16[42];
  v22 = v16[39];
  v21 = v16[40];
  v23 = v16[38];
  v24 = v16[34];
  v25 = v16[35];
  v36 = v16[31];
  v37 = v16[28];
  v38 = v16[27];
  v39 = v16[26];
  swift_willThrow();

  sub_10000ECD8(v19, &qword_1001BB410, &unk_100172340);

  sub_100001F00();
  v26 = v16[56];
  sub_100003D04();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, a13, a14, a15, a16);
}

uint64_t sub_1000DFA94()
{
  v1 = v0[44];
  v2 = v0[20] + v0[43];
  (*(v0[37] + 8))(v0[39], v0[36]);
  sub_1000480AC(v2 + *(v1 + 60), (v0 + 7));
  v3 = v0[11];
  sub_100003370(v0 + 7, v0[10]);
  v4 = *(v3 + 32);
  v5 = sub_1000060A4();
  v6(v5);
  sub_100003324(v0 + 7);
  v7 = v0[54];
  v8 = v0[50];
  v0[56] = v7;
  v0[57] = v8;
  if (qword_1001B8938 != -1)
  {
    sub_100005C90();
    swift_once();
  }

  v9 = v0[20];
  v10 = type metadata accessor for Logger();
  sub_10000641C(v10, qword_1001BB478);
  sub_100001F0C();

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[30];
    v14 = v0[31];
    v66 = v0[29];
    v15 = v0[20];
    sub_1000033D0();
    v70 = v8;
    v16 = swift_slowAlloc();
    v67 = sub_100003788();
    sub_1000080A4();
    *v16 = 136315650;
    v17 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100005168();
    sub_100011B5C(v18, v19);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_100036E38(v20, v21);
    sub_10001E4A8();

    *(v16 + 4) = v17;
    sub_1000265C8();
    v22 = (v15 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v23 = *(v15 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v24 = *(v15 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v22, v23);
    v25 = *(v24 + 8);
    v26 = sub_100001F0C();
    v27(v26, v24);
    sub_10000866C();
    sub_100011B5C(v28, v29);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v13 + 8))(v14, v66);
    v31 = sub_100007660();
    sub_100004A3C(v31, v32, v33);
    sub_100001F0C();

    *(v16 + 14) = v30;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v34;
    *v67 = v34;
    sub_10000CD44(&_mh_execute_header, v35, v36, "Failed to move asset %s to dynamic mode in %s: %@");
    sub_10000ECD8(v67, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BD0();

    sub_10000BEE8();
    sub_100002BD0();

    v8 = v70;
    sub_100002BD0();
  }

  if (v8)
  {
    v37 = v0[40];
    v38 = v0[36];
    sub_10001E72C(v0[42], v37, &qword_1001BB410, &unk_100172340);
    v39 = sub_10000C6C0(v37, 1, v38);
    v40 = v0[40];
    if (v39 == 1)
    {
      sub_10000ECD8(v0[40], &qword_1001BB410, &unk_100172340);
    }

    else
    {
      v68 = v0[38];
      v71 = v0[37];
      v69 = v0[36];
      v41 = v0[26];
      v42 = v8;
      v43 = v0[25];
      v64 = v0[24];
      v65 = v0[27];
      v44 = v0[20];
      (*(v71 + 32))();
      v46 = *(v44 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager + 24);
      v45 = *(v44 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager + 32);
      sub_100003370((v44 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager), v46);

      v47 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
      v62 = v48;
      v63 = v47;
      v61 = InferenceProviderAssetDescriptor.version.getter();
      v50 = v49;
      static AssetCost.zero.getter();
      v51 = AssetCost.onDeviceMemory.getter();
      (*(v43 + 8))(v41, v64);
      type metadata accessor for AuditToken();
      sub_100003978();
      sub_100009BFC(v52, v53, v54, v55);
      v56 = *(v45 + 48);
      swift_errorRetain();
      v56(v68, v63, v62, v61, v50, v51, 0, v42, v7, v65, v46, v45);

      sub_10000ECD8(v65, &qword_1001BB3F8, &qword_100171D50);
      (*(v71 + 8))(v68, v69);
    }
  }

  v57 = swift_task_alloc();
  v0[58] = v57;
  *v57 = v0;
  v58 = sub_10000A8D4(v57);

  return sub_100041158(v58, v59);
}

Swift::Int sub_1000DFFB4()
{
  Hasher.init(_seed:)();
  sub_10001214C();
  return Hasher._finalize()();
}

Swift::Int sub_1000E003C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10001214C();
  return Hasher._finalize()();
}

void sub_1000E0154(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0x16u);
}

uint64_t sub_1000E0174()
{
  sub_100002BAC();
  *(v1 + 16) = v0;
  v2 = *(*(sub_100065020(&qword_1001BB050, &qword_10016F6E0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000E0204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[2];
  v16 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask;
  v17 = *(v15 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask);
  v14[4] = v17;
  if (v17)
  {
    v18 = async function pointer to Task<>.value.getter[1];

    v24 = swift_task_alloc();
    v14[5] = v24;
    *v24 = v14;
    v24[1] = sub_1000E03DC;
    v25 = (v14 + 65);
  }

  else
  {
    v26 = v14[3];
    v27 = type metadata accessor for TaskPriority();
    sub_100009BFC(v26, 1, 1, v27);
    v28 = sub_1000E0D80();
    v29 = swift_allocObject();
    v29[2] = v15;
    v29[3] = v28;
    v29[4] = v15;
    swift_retain_n();
    sub_100065530();
    v17 = v30;
    v14[6] = v30;
    v31 = *(v15 + v16);
    *(v15 + v16) = v30;

    v32 = async function pointer to Task<>.value.getter[1];
    v33 = swift_task_alloc();
    v14[7] = v33;
    *v33 = v14;
    v33[1] = sub_1000E0540;
    v25 = v14 + 8;
  }

  return Task<>.value.getter(v25, v17, &type metadata for Bool, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000E03DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E04D4()
{
  sub_100002BAC();
  v1 = *(v0 + 32);

  v2 = *(v0 + 65);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1000E0540()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E0638()
{
  sub_100002BAC();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1000E06A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1000E06C4, a4, 0);
}

uint64_t sub_1000E06C4()
{
  sub_100002BAC();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager;
  v3 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_assetManager;
  v0[4] = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager;
  v0[5] = v3;
  v0[6] = 0;
  v4 = *(v1 + v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  sub_100005CA4(v5);

  return sub_10012B4A4();
}

uint64_t sub_1000E0750()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E0848()
{
  sub_100002BAC();
  v1 = *(v0[3] + v0[5]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000E08DC;

  return sub_1000E56F8();
}

uint64_t sub_1000E08DC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;
  *(v7 + 72) = v6;

  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000E09DC()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 24) + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = 1;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = "Successfully forced an asset version switch";
LABEL_7:
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, v5, v8, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v0 + 48) + 1;
  *(v0 + 48) = v6;
  if (v6 == 10)
  {
    v7 = *(v0 + 24) + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = 0;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = "Failed to force an asset version switch, multiple attempts to quiesce requests & asssets failed";
      goto LABEL_7;
    }

LABEL_8:
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    *v10 = v4;
    v11 = *(v9 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask);
    *(v9 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask) = 0;

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(*(v0 + 24) + *(v0 + 32));
  v15 = swift_task_alloc();
  *(v0 + 56) = v15;
  *v15 = v0;
  sub_100005CA4();

  return sub_10012B4A4();
}

uint64_t sub_1000E0B98()
{
  v1 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_assetManager);

  sub_100003324((v0 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_modelCatalog));
  v4 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager);

  v5 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000E0C40()
{
  sub_1000E0B98();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s20AssetVersionSwitcherCMa()
{
  result = qword_1001BB700;
  if (!qword_1001BB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0CC0()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000E0D80()
{
  result = qword_1001BB7D0;
  if (!qword_1001BB7D0)
  {
    _s20AssetVersionSwitcherCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB7D0);
  }

  return result;
}

uint64_t sub_1000E0DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006A7E4;

  return sub_1000E06A4(a1, v4, v5, v6);
}

uint64_t _s6PolicyVMa()
{
  result = qword_1001BB848;
  if (!qword_1001BB848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E0F00()
{
  type metadata accessor for RequestPriority();
  if (v0 <= 0x3F)
  {
    sub_1000BC108();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E0F9C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB7D8);
  sub_10000641C(v0, qword_1001BB7D8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E1010()
{
  v9 = *(v0 + *(_s6PolicyVMa() + 28));

  sub_100065020(&qword_1001B9F78, &qword_100171DF0);
  sub_1000082D4(&qword_1001BB888, &qword_1001B9F78, &qword_100171DF0);
  sub_1000E17B4();
  v1 = Sequence<>.joined(separator:)();

  v2._countAndFlagsBits = 10272;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);

  v3 = RequestPriority.rawValue.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  return v1;
}

uint64_t sub_1000E1170(void *a1, uint64_t a2)
{
  v4 = v3;
  v68 = a2;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = sub_100002BDC(v6);
  v65 = v8;
  v66 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v64 = &v61 - v11;
  v12 = _s6PolicyVMa();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100002B8C();
  v16 = v15 - v14;
  v17 = type metadata accessor for InferenceProviderDescriptor();
  v18 = sub_100002BDC(v17);
  v69 = v19;
  v70 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100002B8C();
  v24 = v23 - v22;
  v25 = type metadata accessor for RequestPriority();
  v26 = sub_100002BDC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_100002B8C();
  v33 = v32 - v31;
  v34 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  sub_100002B8C();
  v38 = v37 - v36;
  v39 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100008684();
  v62 = v39;
  sub_1000E1860(a1 + v39, v38, v40);
  InferenceProviderRequestConfiguration.requestPriority.getter();
  sub_100059E18(v38, v2);
  sub_1000E1808();
  v67 = v4;
  v41 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v42 = *(v28 + 8);
  v63 = v28 + 8;
  v42(v33, v25);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  v61 = v16;
  v43 = a1[7];
  v44 = a1[8];
  sub_100003370(a1 + 4, v43);
  (*(v44 + 8))(v43, v44);
  LOBYTE(v43) = InferenceProviderDescriptor.hostedOnServer.getter();
  (v69[1].isa)(v24, v70);
  if (v43)
  {
    return 0;
  }

  v46 = a1;
  if (qword_1001B8940 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10000641C(v47, qword_1001BB7D8);
  v48 = v61;
  sub_1000E1860(v67, v61, _s6PolicyVMa);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = v70;
    *v51 = 136315650;
    v69 = v49;
    LODWORD(v68) = v50;
    v52 = v64;
    RequestMetadata.id.getter();
    sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
    v67 = v42;
    v53 = v66;
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v65 + 8))(v52, v53);
    v54 = sub_100002D30();

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    sub_100008684();
    sub_1000E1860(v46 + v62, v38, v55);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_100059E18(v38, v54);
    RequestPriority.rawValue.getter();
    v67(v33, v25);
    v56 = sub_100002D30();

    *(v51 + 14) = v56;
    *(v51 + 22) = 2080;
    RequestPriority.rawValue.getter();
    sub_100005180();
    sub_100059E18(v48, v57);
    v58 = sub_100002D30();

    *(v51 + 24) = v58;
    v59 = v69;
    _os_log_impl(&_mh_execute_header, v69, v68, "Request %s should be cancelled: priority %s <= %s and it is not using a server IP", v51, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005180();
    sub_100059E18(v48, v60);
  }

  return 1;
}

void sub_1000E1724(uint64_t a1, uint64_t a2)
{
  if (sub_100116BA4(a1, a2))
  {
    v4 = _s6PolicyVMa();
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      v5 = v4[7];
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_10007B664();
    }
  }
}

unint64_t sub_1000E17B4()
{
  result = qword_1001BB890;
  if (!qword_1001BB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BB890);
  }

  return result;
}

unint64_t sub_1000E1808()
{
  result = qword_1001B9428;
  if (!qword_1001B9428)
  {
    type metadata accessor for RequestPriority();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9428);
  }

  return result;
}

uint64_t sub_1000E1860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E18C8()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BB898);
  sub_10000641C(v0, qword_1001BB898);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(sub_100065020(&qword_1001BA600, &unk_100172720) - 8) + 64);
  v6[18] = sub_100002C58();
  v8 = *(*(sub_100065020(&qword_1001BA5F0, &qword_100171290) - 8) + 64);
  v6[19] = sub_100002C58();
  v9 = type metadata accessor for ClientData();
  v6[20] = v9;
  sub_100002F44(v9);
  v6[21] = v10;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v13 = type metadata accessor for RemoteInterfaceInformation();
  v6[24] = v13;
  sub_100002F44(v13);
  v6[25] = v14;
  v16 = *(v15 + 64);
  v6[26] = sub_100002C58();
  v17 = type metadata accessor for InferenceProviderRequestResult();
  v6[27] = v17;
  sub_100002F44(v17);
  v6[28] = v18;
  v20 = *(v19 + 64);
  v6[29] = sub_100002C58();

  return _swift_task_switch(sub_1000E1B00, v5, 0);
}

uint64_t sub_1000E1B00()
{
  v20 = v0;
  if (qword_1001B8948 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BB898);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004A3C(v6, v5, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Entering RemoteManager.executeStreamingRequestV0 [deprecated] for %s", v7, 0xCu);
    sub_100003324(v8);
  }

  v9 = v0[26];
  static RemoteInterfaceInformation.unknownInterface.getter();
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1000E1CDC;
  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[16];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];

  return sub_1000F55C0();
}

uint64_t sub_1000E1CDC(uint64_t a1)
{
  v4 = *v2;
  sub_100004B40();
  *v5 = v4;
  v7 = *(v6 + 240);
  v8 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v9 = v4[17];
    (*(v4[25] + 8))(v4[26], v4[24]);

    return _swift_task_switch(sub_1000E2578, v9, 0);
  }

  else
  {
    (*(v4[25] + 8))(v4[26], v4[24]);
    v10 = swift_task_alloc();
    v4[33] = v10;
    *v10 = v8;
    v10[1] = sub_1000E1E94;
    v11 = v4[29];
    v12 = v4[17];

    return sub_1000F8D48();
  }
}

uint64_t sub_1000E1E94()
{
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 264);
  *v4 = *v1;
  *(v3 + 272) = v0;

  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_1000E2608;
  }

  else
  {
    v7 = sub_1000E1FB8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000E1FB8()
{
  sub_100003884();
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_100003370(v0 + 2, v1);
  v4 = *(v1 - 8);
  v5 = *(v4 + 64);
  v6 = sub_100002C58();
  (*(v4 + 16))(v6, v3, v1);
  v7 = *(v2 + 8);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v0[35] = _swiftEmptyArrayStorage;
  v8 = v0[11];
  sub_100016494((v0 + 7), v0[10]);
  v9 = *(v8 + 8);
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  v0[36] = v11;
  *v11 = v0;
  v12 = sub_100005198(v11);

  return dispatch thunk of AsyncIteratorProtocol.next()(v12);
}

uint64_t sub_1000E2148()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 288);
  v11 = *v1;
  v2[37] = v0;

  if (v0)
  {
    v6 = v2[35];
    v7 = v2[17];

    v8 = sub_1000E26C0;
    v9 = v7;
  }

  else
  {
    v9 = v2[17];
    v8 = sub_1000E2268;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1000E2268()
{
  v2 = v0[19];
  v1 = v0[20];
  if (sub_10000C6C0(v2, 1, v1) == 1)
  {
    v3 = v0[35];
    v4 = v0[31];
    v5 = v0[28];
    v6 = v0[29];
    v7 = v0[27];
    v8 = v0[24];
    v36 = v0[26];
    v37 = v0[23];
    v38 = v0[22];
    v9 = v0[18];
    v10 = v0[12];
    sub_1000E2788(v2);
    sub_100009BFC(v9, 1, 1, v8);
    v11 = *(*(sub_100065020(&qword_1001B9060, &unk_10016FCD0) - 8) + 64);
    v12 = sub_100002C58();
    v13 = type metadata accessor for UUID();
    sub_100009BFC(v12, 1, 1, v13);
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    (*(v5 + 8))(v6, v7);

    sub_100003324(v0 + 7);
    sub_100003324(v0 + 2);

    sub_100001F00();

    return v14();
  }

  else
  {
    v16 = v0[35];
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[21];
    v20 = *(v19 + 32);
    v20(v17, v2, v1);
    (*(v19 + 16))(v18, v17, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = *(v22 + 16);
      v33 = v0[35];
      sub_10013FFE4();
      v22 = v34;
    }

    v23 = *(v22 + 16);
    if (v23 >= *(v22 + 24) >> 1)
    {
      sub_10013FFE4();
      v22 = v35;
    }

    v24 = v0[22];
    v25 = v0[20];
    v26 = v0[21];
    (*(v26 + 8))(v0[23], v25);
    *(v22 + 16) = v23 + 1;
    v20(v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, v24, v25);
    v0[35] = v22;
    v27 = v0[11];
    sub_100016494((v0 + 7), v0[10]);
    v28 = *(v27 + 8);
    v29 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v30 = swift_task_alloc();
    v0[36] = v30;
    *v30 = v0;
    v31 = sub_100005198();

    return dispatch thunk of AsyncIteratorProtocol.next()(v31);
  }
}

uint64_t sub_1000E2578()
{
  sub_100003884();
  v1 = *(v0 + 256);
  sub_10000869C();

  sub_100001F00();

  return v2();
}

uint64_t sub_1000E2608()
{
  sub_100003884();
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  (*(v3 + 8))(v2, v4);
  v5 = v0[34];
  sub_10000869C();

  sub_100001F00();

  return v6();
}

uint64_t sub_1000E26C0()
{
  sub_100003884();
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];

  (*(v3 + 8))(v2, v4);
  sub_100003324(v0 + 7);
  sub_100003324(v0 + 2);
  v5 = v0[37];
  sub_10000869C();

  sub_100001F00();

  return v6();
}

uint64_t sub_1000E2788(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2800()
{
  v2 = v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_execRequestPostString;
  *v2 = "Execute Request";
  *(v2 + 8) = 15;
  *(v2 + 16) = 2;
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_queueRequestPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_assetTransitionPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_addSessionPostString);
  sub_10000CDEC(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_removeSessionPostString);
  v3 = v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_preWarmPostString;
  *v3 = "Prewarm Request";
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  v6 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_logHandle;
  subsystemName.getter();
  Logger.init(subsystem:category:)();
  v7 = type metadata accessor for OSSignposter();
  v8 = sub_100002BDC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002B8C();
  sub_100004BF4();
  v13 = type metadata accessor for Logger();
  v14 = sub_100002BDC(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  (*(v19 + 16))(v18 - v17, v0 + v6);
  OSSignposter.init(logger:)();
  (*(v10 + 32))(v0 + OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster, v1, v7);
  return v0;
}

void sub_1000E2A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, int a24, int a25, unsigned __int8 a26, unsigned __int8 a27)
{
  sub_1000055B0();
  v122 = v29;
  v123 = v30;
  v108 = v31;
  v109 = v32;
  v116 = v34;
  v117 = v33;
  v107 = v35;
  v120 = v36;
  v124 = a21;
  v125 = a23;
  v37 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_100004B1C();
  __chkstk_darwin(v42);
  sub_100004BF4();
  v43 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  sub_100004B1C();
  __chkstk_darwin(v48);
  sub_100018A10();
  sub_100003058(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_execRequestPostString);
  v121 = v49;
  LODWORD(v110) = *(v50 + 16);
  v51 = type metadata accessor for OSSignpostID();
  v52 = sub_100002BDC(v51);
  v114 = v53;
  v115 = v52;
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  v112 = v56;
  v57 = &v104 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.logHandle.getter();
  v113 = v57;
  OSSignpostID.init(log:)();
  v118 = v45;
  v119 = v43;
  v58 = *(v45 + 16);
  v59 = v116;
  v58(v28, v120, v43);
  v111 = v39;
  v60 = *(v39 + 16);
  v120 = v27;
  v61 = v117;
  v117 = v37;
  v60(v27, v61, v37);
  sub_100016624();

  sub_100001F70();
  v62 = sub_100013554();
  v65 = sub_100009C8C(v62, v63, v64);
  sub_100016484(v65);
  sub_100001F70();
  v66 = sub_100013554();
  v69 = sub_100009C8C(v66, v67, v68);
  sub_100016484(v69);
  v70 = OSSignposter.logHandle.getter();
  v71 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v72 = v28;
  v74 = v118;
  v73 = v119;
  v28 = v120;
  v106 = v70;
  v105 = v71;
  if ((v110 & 1) == 0)
  {

    if (!v121)
    {
      __break(1u);
LABEL_5:

      (*(v111 + 8))(v120, v117);
      v75 = (*(v118 + 8))(v28, v119);
      v76 = v113;
LABEL_23:
      __chkstk_darwin(v75);
      sub_100002D4C();
      v96 = v114;
      v95 = v115;
      v97 = sub_100009DB8();
      v98(v97, v76, v95);
      v99 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v99);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v100 = *(v96 + 8);
      v101 = sub_100005FEC();
      v102(v101);
      type metadata accessor for TelemetryIntervalState();
      v103 = sub_1000126B4();
      sub_10003533C(v103);
      sub_100002EEC();
      return;
    }

LABEL_10:
    LODWORD(v119) = a27;
    LODWORD(v116) = a26;
    LODWORD(v118) = a25;
    v110 = a22;
    v78 = swift_slowAlloc();
    v126[0] = swift_slowAlloc();
    *v78 = 136448770;
    v79 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v79, v80, v126);
    sub_100003170();

    *(v78 + 4) = v72;
    (*(v74 + 8))(v72, v73);
    *(v78 + 12) = 2082;
    v81 = UUIDIdentifier.uuidString.getter();
    sub_100004A3C(v81, v82, v126);
    sub_100003170();

    *(v78 + 14) = v28;
    v83 = *(v111 + 8);
    v84 = sub_100005FEC();
    v85(v84);
    *(v78 + 22) = 2082;
    *(v78 + 24) = sub_100004A3C(v107, v122, v126);
    *(v78 + 32) = 2082;
    *(v78 + 34) = sub_100004A3C(v108, v59, v126);
    *(v78 + 42) = 2082;
    *(v78 + 44) = sub_100004A3C(v109, v123, v126);
    *(v78 + 52) = 2082;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_10002EA34(&qword_1001B94B8, &type metadata accessor for InferenceProviderAssetDescriptor);
    v86 = Set.description.getter();
    sub_100004A3C(v86, v87, v126);
    sub_100003170();

    *(v78 + 54) = v28;
    *(v78 + 62) = 2082;
    *(v78 + 64) = sub_100004A3C(v110, v125, v126);
    *(v78 + 72) = 1026;
    *(v78 + 74) = a24;
    *(v78 + 78) = 1026;
    v88 = (v116 & 1) == 0;
    if (v116)
    {
      v89 = 1702195828;
    }

    else
    {
      v89 = 0x65736C6166;
    }

    *(v78 + 80) = v118;
    if (v88)
    {
      v90 = 0xE500000000000000;
    }

    else
    {
      v90 = 0xE400000000000000;
    }

    *(v78 + 84) = 2082;
    sub_100004A3C(v89, v90, v126);
    sub_100003170();

    *(v78 + 86) = v28;
    *(v78 + 94) = 2082;
    if (v119)
    {
      v91 = 1702195828;
    }

    else
    {
      v91 = 0x65736C6166;
    }

    if (v119)
    {
      v92 = 0xE400000000000000;
    }

    else
    {
      v92 = 0xE500000000000000;
    }

    sub_100004A3C(v91, v92, v126);
    sub_100003170();

    *(v78 + 96) = v28;
    v76 = v113;
    v93 = OSSignpostID.rawValue.getter();
    v94 = v106;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v105, v93, v121, "requestIdentifier: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s,\nrequestLoggingIdentifier: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\nmodelBundleID: %{public, signpost.description=attribute,public}s,\nassetDescriptors: %{public, signpost.description=attribute,public}s,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\ncreatedByPID: %{public, signpost.description=attribute,public}d,\nonBehalfOfPID: %{public, signpost.description=attribute,public}d,\noneShot: %{public, signpost.description=attribute,public}s,\nisFallbackRequest: %{public, signpost.description=attribute,public}s", v78, 0x68u);
    swift_arrayDestroy();
    sub_100012A9C();
    sub_100002BB8();

    goto LABEL_23;
  }

  if (v121 >> 32)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_100011408();
  if (!v88)
  {
    sub_100005704();
    if (!(!v88 & v77))
    {

      v121 = v126;
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
}

void sub_1000E30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  sub_1000055B0();
  v94 = v23;
  v83 = v24;
  v84 = v25;
  v96 = v26;
  v28 = v27;
  v82 = v29;
  v90 = v30;
  v92 = v31;
  v32 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v32);
  v95 = v33;
  v35 = *(v34 + 64);
  sub_100004B1C();
  __chkstk_darwin(v36);
  sub_10000BFFC();
  v37 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  sub_100004B1C();
  __chkstk_darwin(v42);
  sub_100004BF4();
  sub_100003058(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_queueRequestPostString);
  v93 = v43;
  v85 = *(v44 + 16);
  v45 = type metadata accessor for OSSignpostID();
  v46 = sub_100002BDC(v45);
  v88 = v47;
  v89 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v46);
  v86 = v50;
  v51 = &v80 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.logHandle.getter();
  v87 = v51;
  OSSignpostID.init(log:)();
  v52 = *(v39 + 16);
  v91 = v37;
  v52(v21, v92, v37);
  v53 = *(v95 + 16);
  v92 = v22;
  v54 = v32;
  v53(v22, v90, v32);

  v55 = OSSignposter.logHandle.getter();
  v56 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v95 + 8))(v92, v32);
    v61 = (*(v39 + 8))(v21, v91);
    v62 = v87;
LABEL_17:
    __chkstk_darwin(v61);
    sub_100002D4C();
    v75 = v88;
    v74 = v89;
    v76 = sub_100009DB8();
    v77(v76, v62, v74);
    v78 = type metadata accessor for OSSignpostIntervalState();
    sub_1000038EC(v78);
    sub_100003170();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v75 + 8))(v62, v74);
    type metadata accessor for TelemetryIntervalState();
    v79 = sub_1000126B4();
    sub_10003533C(v79);
    sub_100002EEC();
    return;
  }

  v81 = v55;
  v57 = v91;
  v58 = v92;
  LODWORD(v90) = v56;
  if ((v85 & 1) == 0)
  {

    if (v93)
    {
      v59 = v28;
      v60 = v39;
LABEL_10:
      LODWORD(v91) = a21;
      v65 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v65 = 136447490;
      v66 = UUIDIdentifier.uuidString.getter();
      sub_10001127C(v66, v67);
      sub_1000188B4();
      *(v65 + 4) = v28;
      (*(v60 + 8))(v21, v57);
      *(v65 + 12) = 2082;
      v68 = UUIDIdentifier.uuidString.getter();
      sub_100004A3C(v68, v69, &v97);
      sub_100003170();

      *(v65 + 14) = v58;
      (*(v95 + 8))(v58, v54);
      *(v65 + 22) = 2082;
      *(v65 + 24) = sub_100004A3C(v82, v59, &v97);
      *(v65 + 32) = 2082;
      *(v65 + 34) = sub_100004A3C(v83, v96, &v97);
      *(v65 + 42) = 2082;
      *(v65 + 44) = sub_100004A3C(v84, v94, &v97);
      *(v65 + 52) = 2082;
      if (v91)
      {
        v70 = 1702195828;
      }

      else
      {
        v70 = 0x65736C6166;
      }

      if (v91)
      {
        v71 = 0xE400000000000000;
      }

      else
      {
        v71 = 0xE500000000000000;
      }

      sub_100004A3C(v70, v71, &v97);
      sub_100003170();

      *(v65 + 54) = v58;
      v62 = v87;
      v72 = OSSignpostID.rawValue.getter();
      v73 = v81;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, v90, v72, v93, "requestIdentifier: %{public, signpost.description=attribute,public}s,\nsessionIdentifier: %{public, signpost.description=attribute,public}s,\nrequestLoggingIdentifier: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\ninferenceProviderIdentifier: %{public, signpost.description=attribute,public}s,\noneShot: %{public, signpost.description=attribute,public}s", v65, 0x3Eu);
      swift_arrayDestroy();
      sub_100002BB8();
      sub_100002BB8();

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v93 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_100011408();
  if (!v63)
  {
    sub_100005704();
    if (!(!v63 & v64))
    {
      v60 = v39;

      v93 = &v97;
      v59 = v28;
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
}

void sub_1000E3650()
{
  sub_1000055B0();
  sub_100007C98(v1, v2, v3, v4);
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004B1C();
  __chkstk_darwin(v10);
  sub_10000BFFC();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_queueRequestPostString);
  v12 = sub_1000127E0(v11);
  v13(v12);

  swift_errorRetain();
  v14 = OSSignposter.logHandle.getter();
  v15 = type metadata accessor for OSSignpostID();
  v16 = sub_100002BDC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100002B8C();
  sub_100004BF4();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v21 = sub_100019BCC();
    v22(v21, v15);
    (*(v7 + 8))(v0, v5);
LABEL_19:
    sub_100002EEC();
    return;
  }

  if ((v52 & 1) == 0)
  {

    if (v53)
    {
      sub_10000631C();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000A46C();
  if (v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011408();
  if (!v24)
  {
    sub_100005704();
    if (!(!v24 & v25))
    {
      sub_100013B50();

      sub_10001382C();
LABEL_10:
      v26 = type metadata accessor for OSSignpostError();
      v27 = sub_100002BDC(v26);
      v29 = v28;
      v31 = *(v30 + 64);
      __chkstk_darwin(v27);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v32 = *(v29 + 88);
      v33 = sub_100001F70();
      v34(v33);
      if (!&enum case for OSSignpostError.doubleEnd(_:) || (sub_100003468(&enum case for OSSignpostError.doubleEnd(_:)), !v24))
      {
        v35 = *(v29 + 8);
        v36 = sub_100001F70();
        v37(v36);
      }

      sub_1000031E0();
      v38 = sub_100013E88();
      v39 = sub_100007A5C(v38);
      sub_10001127C(v39, v40);
      sub_1000188B4();
      v41 = sub_100019948();
      v42(v41);
      v43 = sub_1000035F4();
      sub_1000071F0(v43);
      v45 = v44 | 0x65750000u;
      if (v24)
      {
        v46 = 0x65736C6166;
      }

      else
      {
        v46 = v45;
      }

      sub_10000CF80(v46);

      v47 = OSSignpostID.rawValue.getter();
      sub_100002030(&_mh_execute_header, v48, v49, v47);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      v50 = sub_100005A74();
      v51(v50);
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1000E3A00()
{
  v1 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_signPoster;
  v2 = type metadata accessor for OSSignposter();
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_logHandle;
  v5 = type metadata accessor for Logger();
  sub_1000055EC(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for TelemetrySignposter()
{
  result = qword_1001BB8D8;
  if (!qword_1001BB8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E3B18()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000E3E08(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3E20()
{
  sub_100002BAC();
  v1 = v0[7];
  sub_100011418();
  v2 = *(v1 + 16);
  if (*(v2 + 16) && (v3 = sub_1000236F4(v0[5], v0[6]), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1000E3EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3ED0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v11 = v0[5];
  v12 = v0[6];

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v3;
  v5._object = v1;
  String.append(_:)(v5);
  sub_100011418();
  v6 = sub_100072D40(v11, v12, *(v2 + 32));
  v8 = v7;
  swift_endAccess();

  v9 = v0[1];

  return v9(v6, v8 & 1);
}

uint64_t sub_1000E3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_1000051C8();
}

uint64_t sub_1000E3FC4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_100011418();
  v4 = sub_100072C40(v2, v3, *(v1 + 40));
  swift_endAccess();
  if (v4)
  {
    sub_100016484(v4);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v6;
    swift_beginAccess();

    v11 = *(v1 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 40);
    sub_10011778C(&unk_1001723C0, v10, v9, v8, isUniquelyReferenced_nonNull_native);
    *(v1 + 40) = v14;
    swift_endAccess();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000E4164(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F254;

  return v6();
}

void *sub_1000E424C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_1000E4284()
{
  sub_1000E424C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000E42DC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100013EFC;

  return sub_1000E3E08(a1, a2);
}

uint64_t sub_1000E4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000E4444;

  return sub_1000E3EB4(a1, a2, a3, a4);
}

uint64_t sub_1000E4444()
{
  sub_100002BAC();
  v2 = v1;
  v4 = v3;
  sub_100001EF4();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(v4, v2 & 1);
}

uint64_t sub_1000E4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006A7E4;

  return sub_1000E3FA8(a1, a2, a3, a4);
}

uint64_t sub_1000E45F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006A7E4;

  return sub_1000E4164(a1, v5);
}

uint64_t sub_1000E46B0(uint64_t a1)
{
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  sub_100007CB0();
  v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  sub_10001938C(v6 + a1, v1);
  *(v1 + *(v4 + 60)) = 1;
  sub_100002D24();
  swift_beginAccess();
  sub_10003DA78(v1, v6 + a1);
  swift_endAccess();
  sub_100002D24();
  swift_beginAccess();
  sub_1000588F0(a1);
  swift_endAccess();
}

uint64_t sub_1000E47B0()
{
  sub_100002BAC();
  *(v1 + 304) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v0;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 200) = v4;
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  *(v1 + 208) = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E4830()
{
  v64 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v4 = *&v3[v1];

  v6 = sub_1000EC068(v5, v2);
  if (sub_1000453EC(v6))
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002FD0(v7, qword_1001BBA68);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100003A34(v9))
    {
      v10 = sub_100007648();
      sub_10000BF10(v10);
      sub_100008348();
      sub_100013624(v11, v12, v13, v14);
      sub_100002BD0();
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    sub_1000EE39C(v15, v16);
    sub_10000CE64();
    v6 = v0[2];
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[5];
    v20 = v0[6];
  }

  else
  {
    v19 = 0;
    v21 = -1;
    v22 = -1 << *(v6 + 32);
    v17 = (v6 + 56);
    v18 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v21 = ~(-1 << v23);
    }

    v20 = v21 & *(v6 + 56);
  }

  v0[28] = v17;
  v0[29] = v18;
  v0[27] = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v30 = __CocoaSet.Iterator.next()();
    if (!v30)
    {
      goto LABEL_29;
    }

    v0[22] = v30;
    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v29 = v0[21];
    v25 = v19;
    v28 = v20;
  }

  else
  {
    v24 = v20;
    v25 = v19;
    if (!v20)
    {
      v26 = (v18 + 64) >> 6;
      v27 = v19;
      while (1)
      {
        v25 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v25 >= v26)
        {
          goto LABEL_29;
        }

        v24 = v17[v25];
        ++v27;
        if (v24)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_18:
    v28 = (v24 - 1) & v24;
    v29 = *(*(v6 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
  }

  v0[31] = v25;
  v0[32] = v28;
  v0[30] = v29;
  if (v29)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v0[33] = sub_100002FD0(v31, qword_1001BBA68);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      sub_100007698();
      v34 = sub_10000359C();
      v63 = v34;
      LODWORD(selRef_addUpdateHandlerForNamespaceName_usingBlock_) = 136315138;

      v35 = sub_100027434();
      v37 = v36;

      v38 = sub_100004A3C(v35, v37, &v63);

      *(&selRef_addUpdateHandlerForNamespaceName_usingBlock_ + 4) = v38;
      sub_10001344C(&_mh_execute_header, v32, v33, "Checking asset update availability for %s");
      sub_100003324(v34);
      sub_100002BD0();

      sub_100002BD0();
    }

    v39 = v0[25];
    v40 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v0[34] = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v41 = &v40[v29];
    sub_100004BA0();
    sub_1000480AC(&v41[*(v39 + 60)], (v0 + 7));
    sub_1000191D4();
    v62 = (v42 + *v42);
    v43 = v42[1];
    v44 = swift_task_alloc();
    v45 = sub_100009B6C(v44);
    *v45 = v46;
    v47 = sub_10000A478(v45);

    return v62(v47);
  }

LABEL_29:
  sub_100018D00();
  if (qword_1001B8950 != -1)
  {
LABEL_36:
    sub_1000051D8();
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100002FD0(v49, qword_1001BBA68);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (sub_10000320C(v51))
  {
    v52 = sub_100007648();
    sub_10000A240(v52);
    sub_10000EDF4(&_mh_execute_header, v53, v54, "Updating assets that are not currently loaded...");
    sub_100002BD0();
  }

  v55 = v0[24];

  v56 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v57 = swift_task_alloc();
  v0[36] = v57;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_1000060CC();
  *v57 = v58;
  sub_100013748();
  v67 = &protocol witness table for Never;
  v66 = &type metadata for Never;
  sub_10000A638();
  sub_100019AD8();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v59, v60, v61);
}

uint64_t sub_1000E4DAC()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 280);
  v3 = *(v1 + 192);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;
  *(v7 + 305) = v6;

  v8 = sub_100002C10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000E4EAC()
{
  v61 = v1;
  v2 = *(v1 + 305);
  v3 = *(v1 + 304);
  sub_100003324((v1 + 56));
  if (v2 & 1) != 0 || (v3)
  {
    v4 = *(v1 + 264);
    v5 = *(v1 + 240);

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_1000089B8();
    if (os_log_type_enabled(v6, v0))
    {
      v7 = *(v1 + 240);
      v8 = sub_100007698();
      v9 = sub_1000031E0();
      v60 = v9;
      *v8 = 136315138;

      v10 = sub_100027434();
      v12 = v11;

      v13 = sub_100004A3C(v10, v12, &v60);

      *(v8 + 4) = v13;
      sub_100005EB0(&_mh_execute_header, v6, v0, "Marking asset update available for %s");
      sub_100003324(v9);
      sub_100002BD0();

      sub_100002BD0();
    }

    v14 = *(v1 + 272);
    v15 = *(v1 + 240);
    v17 = *(v1 + 200);
    v16 = *(v1 + 208);
    sub_10001938C(v15 + v14, v16);
    *(v16 + *(v17 + 56)) = 1;
    sub_100002D24();
    swift_beginAccess();
    sub_10003DA78(v16, v15 + v14);
    swift_endAccess();
  }

  v18 = *(v1 + 240);

  v19 = *(v1 + 248);
  v20 = *(v1 + 256);
  v21 = *(v1 + 216);
  if (v21 < 0)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27)
    {
      goto LABEL_23;
    }

    *(v1 + 176) = v27;
    type metadata accessor for InferenceProviderAsset(0);
    sub_100009E64();
    v26 = *(v1 + 168);
    v23 = v19;
    v25 = v20;
  }

  else
  {
    v22 = *(v1 + 256);
    v23 = *(v1 + 248);
    if (!v20)
    {
      v24 = *(v1 + 248);
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= ((*(v1 + 232) + 64) >> 6))
        {
          goto LABEL_23;
        }

        v22 = *(*(v1 + 224) + 8 * v23);
        ++v24;
        if (v22)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_12:
    v25 = (v22 - 1) & v22;
    v26 = *(*(v21 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  }

  *(v1 + 248) = v23;
  *(v1 + 256) = v25;
  *(v1 + 240) = v26;
  if (v26)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    *(v1 + 264) = sub_100002FD0(v28, qword_1001BBA68);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      sub_100007698();
      v31 = sub_10000359C();
      v60 = v31;
      *v25 = 136315138;

      v32 = sub_100027434();
      v34 = v33;

      v35 = sub_100004A3C(v32, v34, &v60);

      *(v25 + 4) = v35;
      sub_10001344C(&_mh_execute_header, v29, v30, "Checking asset update availability for %s");
      sub_100003324(v31);
      sub_100002BD0();

      sub_100002BD0();
    }

    v36 = *(v1 + 200);
    v37 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    *(v1 + 272) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v38 = &v37[v26];
    sub_100004BA0();
    sub_1000480AC(&v38[*(v36 + 60)], v1 + 56);
    sub_1000191D4();
    v59 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    v42 = sub_100009B6C(v41);
    *v42 = v43;
    v44 = sub_10000A478();

    return v59(v44);
  }

LABEL_23:
  sub_100018D00();
  if (qword_1001B8950 != -1)
  {
LABEL_30:
    sub_1000051D8();
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100002FD0(v46, qword_1001BBA68);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (sub_10000320C(v48))
  {
    v49 = sub_100007648();
    sub_10000A240(v49);
    sub_10000EDF4(&_mh_execute_header, v50, v51, "Updating assets that are not currently loaded...");
    sub_100002BD0();
  }

  v52 = *(v1 + 192);

  v53 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v54 = swift_task_alloc();
  *(v1 + 288) = v54;
  sub_100065020(&qword_1001BB430, &qword_100171E18);
  sub_1000060CC();
  *v54 = v55;
  sub_100013748();
  v64 = &protocol witness table for Never;
  v63 = &type metadata for Never;
  sub_10000A638();
  sub_100019AD8();

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v56, v57, v58);
}

uint64_t sub_1000E542C()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 192);

    v11 = sub_100002C10();

    return _swift_task_switch(v11, v12, v13);
  }

  return result;
}

uint64_t sub_1000E5528()
{
  sub_100002BAC();
  v1 = v0[24];
  if (sub_100019684())
  {
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_1000E55F4;
    v3 = v0[24];

    return sub_1000440E8();
  }

  else
  {
    v5 = v0[26];

    sub_100001F00();

    return v6();
  }
}

uint64_t sub_1000E55F4()
{
  sub_100002BAC();
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v1 + 208);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1000E56F8()
{
  sub_100002BAC();
  v1[31] = v0;
  v2 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v2);
  v4 = *(v3 + 64);
  v1[32] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[33] = State;
  sub_100002F44(State);
  v1[34] = v6;
  v8 = *(v7 + 64);
  v1[35] = sub_100002C58();
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[36] = v9;
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  v1[37] = sub_100002C58();
  v12 = sub_100002C10();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000E57EC()
{
  v112 = v0;
  v1 = v0[31];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  v0[38] = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v106 = v2;
  v108 = v1;
  v3 = *&v2[v1];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    sub_1000EE39C(v4, v5);
    sub_10000CE64();
    v3 = v0[2];
    v6 = v0[3];
    v1 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v10 = *(v3 + 56);
    sub_100018A20();
    v8 = v11 & v12;

    v7 = 0;
  }

  v13 = v0[36];
  v105 = v1;
  v14 = (v1 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v15 = v7;
    v16 = v7;
    if (!v8)
    {
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {
          v8 = 0;
          goto LABEL_16;
        }

        ++v15;
        if (*(v6 + 8 * v16))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_9:
    sub_1000062A0();
    v19 = v18 & v17;
    v21 = *(*(v3 + 48) + ((v16 << 9) | (8 * v20)));

    if (!v21)
    {
      break;
    }

    while (1)
    {
      v23 = v0[37];
      v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100004BA0();
      sub_10001938C(v24 + v21, v23);
      *(v23 + *(v13 + 56)) = 1;
      sub_100002D24();
      swift_beginAccess();
      sub_10003DA78(v23, v24 + v21);
      swift_endAccess();

      v7 = v16;
      v8 = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      v22 = __CocoaSet.Iterator.next()();
      if (v22)
      {
        v0[30] = v22;
        type metadata accessor for InferenceProviderAsset(0);
        sub_100009E64();
        v21 = v0[29];
        v16 = v7;
        v19 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_16:
  sub_100019334(v3, v6, v105, v7, v8);
  if (qword_1001B8950 == -1)
  {
    goto LABEL_17;
  }

LABEL_54:
  sub_1000051D8();
  swift_once();
LABEL_17:
  v25 = type metadata accessor for Logger();
  v0[39] = sub_10000641C(v25, qword_1001BBA68);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (sub_100002F80(v27))
  {
    v28 = sub_100007648();
    sub_10000A240(v28);
    sub_1000059D8(&_mh_execute_header, v29, v30, "Unloading assets for forced version change");
    sub_100002BD0();
  }

  if ((*&v106[v108] & 0xC000000000000001) != 0)
  {
    v109 = v0[36];
    v31 = v0[34];
    v32 = v0[31];
    v33 = &_swiftEmptySetSingleton;
    v110 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    v107 = __CocoaSet.makeIterator()();
    LODWORD(v105) = enum case for LoadState.loaded(_:);
    v34 = (v31 + 104);
    v35 = (v31 + 8);
    while (1)
    {
      v36 = __CocoaSet.Iterator.next()();
      if (!v36)
      {
        v70 = v0[31];

        sub_1000464C0();
        v71 = 0;
        goto LABEL_42;
      }

      v37 = v0[35];
      v38 = v0[33];
      v0[28] = v36;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100009E64();
      v39 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0[27];
      sub_100002D24();
      swift_beginAccess();
      (*v34)(v37, v105, v38);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v40);
      sub_1000486A0();
      sub_1000486A0();
      if (v0[19] == v0[21] && v0[20] == v0[22])
      {
        break;
      }

      v42 = v0[20];
      v43 = v0[22];
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        goto LABEL_34;
      }

      v45 = v0[35];
      v46 = v0[33];
      v47 = &v39[*(v109 + 20)];
      sub_1000486A0();
      sub_1000486A0();
      if (v0[23] == v0[25] && v0[24] == v0[26])
      {
        break;
      }

      v49 = v0[35];
      v50 = v0[33];
      v51 = v0[24];
      v52 = v0[26];
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v35)(v49, v50);
      if ((v53 & 1) == 0)
      {
        swift_endAccess();
        goto LABEL_36;
      }

LABEL_35:
      v54 = *(*&v39[*(v109 + 48)] + 16);
      swift_endAccess();
      if (v54)
      {
LABEL_36:
        v62 = v0[27];
      }

      else
      {
        v63 = v0[27];
        v64 = *(v33 + 2);
        if (*(v33 + 3) <= v64)
        {
          sub_100080444(v64 + 1, v55, v56, v57, v58, v59, v60, v61, v105, v107, v109, v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v111[15], v111[16], v112, v113, v114);
          v33 = v110;
        }

        v65 = *(v33 + 5);
        Hasher.init(_seed:)();
        sub_10001214C();
        v66 = Hasher._finalize()();
        sub_100012804(v66, *(v33 + 32));
        v67 = _HashTable.nextHole(atOrAfter:)();
        v68 = sub_100004C00(v67);
        *(v69 + 8 * v68) = v63;
        ++*(v33 + 2);
      }
    }

LABEL_34:
    (*v35)(v0[35], v0[33]);
    goto LABEL_35;
  }

  v72 = v0[31];

  v71 = 0;
  v33 = sub_100011E30(v73, v72, sub_1000C11B0, 0);
LABEL_42:
  v111[0] = sub_100011CBC(v33);
  sub_1000ECFAC(v111, sub_1000C12DC);
  v74 = v0[31];

  sub_10002B918(v111[0]);
  sub_10002B524();
  v76 = v75;
  v0[40] = v75;

  if (!(v76 >> 62))
  {
    v79 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79)
    {
      goto LABEL_44;
    }

LABEL_56:
    v95 = v0[39];
    v94 = v0[40];

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (sub_10000320C(v97))
    {
      v98 = sub_100007648();
      sub_10000A240(v98);
      sub_10000EDF4(&_mh_execute_header, v99, v100, "Finished unloading assets for forced version change");
      sub_100002BD0();
    }

    v101 = v0[31];

    v102 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v103 = swift_task_alloc();
    v0[44] = v103;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v103 = v104;
    sub_10001250C();
    v116 = &protocol witness table for Never;
    v115 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v81, v77, v78);
  }

  sub_100012BCC();
  v79 = _CocoaArrayWrapper.endIndex.getter();
  if (!v79)
  {
    goto LABEL_56;
  }

LABEL_44:
  v80 = __OFSUB__(v79, 1);
  v81 = v79 - 1;
  v0[41] = v81;
  if (v80)
  {
    __break(1u);
    goto LABEL_62;
  }

  v77 = v0[40];
  if ((v77 & 0xC000000000000001) == 0)
  {
    if ((v81 & 0x8000000000000000) == 0)
    {
      sub_100007900(v81, v77);
      if (!v82)
      {
        sub_100011174(v81, v77);
        goto LABEL_50;
      }

      goto LABEL_63;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v81, v77, v78);
  }

  v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_50:
  v0[42] = v71;
  v83 = v0[32];
  type metadata accessor for AuditToken();
  v84 = sub_100007A04();
  sub_100009BFC(v84, v85, v86, v87);
  v88 = swift_task_alloc();
  v89 = sub_1000080CC(v88);
  *v89 = v90;
  v89[1] = sub_1000E6034;
  v92 = v0[31];
  v91 = v0[32];
  sub_100003A68();

  return sub_10002BA5C();
}