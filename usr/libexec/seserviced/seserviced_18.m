uint64_t sub_10017EC78()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1136) = v3;
  if (v3)
  {
    v4 = *(v1 + 856);
    v5 = sub_10017F17C;
  }

  else
  {
    v6 = *(v1 + 1096);
    v7 = *(v1 + 856);

    v5 = sub_10017EDEC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10017EDEC()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1104);

  v4 = *(v0 + 936);
  v5 = *(v0 + 928);
  v6 = *(v0 + 912);
  v7 = *(v0 + 904);
  v8 = *(v0 + 896);
  v9 = *(v0 + 888);
  v10 = *(v0 + 864);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10017EEFC()
{
  v1 = v0[122];
  sub_10018C6D8();
  swift_allocError();
  *v2 = v1;
  v3 = v0[117];
  v4 = v0[116];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[111];
  v9 = v0[108];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10017F010()
{
  v1 = v0[135];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[130];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[113];
  sub_10018C6D8();
  swift_allocError();
  *v8 = v1;

  sub_10006A178(v3, v2);
  sub_10006A178(v6, v5);
  sub_10018CE30(v7, type metadata accessor for SESPeerIdentityData);
  v9 = v0[117];
  v10 = v0[116];
  v11 = v0[114];
  v12 = v0[113];
  v13 = v0[112];
  v14 = v0[111];
  v15 = v0[108];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10017F17C()
{
  v35 = v0;
  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[138];
  v6 = v0[120];
  v7 = v0[107];
  swift_willThrow();

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[142];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[52];
    v13 = v0[53];
    v15 = v0[54];
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, &v34);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to modifyTLKShares %s", v11, 0xCu);
    sub_1000752F4(v12);
  }

  v19 = v0[137];
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v0[137];
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v0[142];
  v22 = v0[107];

  if (v20)
  {
    v23 = 23;
  }

  else
  {
    v23 = 24;
  }

  sub_100180988(v23, 0);

  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[114];
  v27 = v0[113];
  v28 = v0[112];
  v29 = v0[111];
  v30 = v0[108];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10017F3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = *(*(type metadata accessor for SEKeySyncRecovery.RecoveryRecord() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();

  return _swift_task_switch(sub_10017F48C, v7, 0);
}

uint64_t sub_10017F48C()
{
  sub_1001F3488(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), (v0 + 152), *(v0 + 120));
  sub_10018CE30(*(v0 + 120), type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017F644(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 112);
  if (v1)
  {
    v8 = sub_10017F968;
  }

  else
  {
    v8 = sub_10017F778;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10017F778()
{
  v19 = v0;
  v1 = *(v0 + 144);
  sub_1001F60C4(*(v0 + 136), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 104));

  if (v1)
  {
    v2 = *(v0 + 112);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v8 = *(v0 + 16);
      v7 = *(v0 + 24);
      v9 = *(v0 + 32);
      v10 = Error.localizedDescription.getter();
      v12 = sub_1002FFA0C(v10, v11, &v18);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to store recovery record : %s", v5, 0xCu);
      sub_1000752F4(v6);
    }

    v13 = *(v0 + 112);
    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 153);
    }

    else
    {
      v14 = 28;
    }

    sub_100180988(v14, 0);
  }

  v15 = *(v0 + 120);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10017F968()
{
  v21 = v0;
  v1 = *(v0 + 136);
  sub_10018C6D8();
  v2 = swift_allocError();
  *v3 = v1;
  v4 = *(v0 + 112);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to store recovery record : %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = *(v0 + 112);
  *(v0 + 40) = v2;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 153);
  }

  else
  {
    v16 = 28;
  }

  sub_100180988(v16, 0);

  v17 = *(v0 + 120);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10017FB60(void *a1)
{
  result = sub_100180F6C(a1);
  if (v1)
  {
    return result;
  }

  if (v4 >> 60 == 15)
  {
    sub_1001A38C8(a1);
    result = sub_100180F6C(a1);
    if (v5 >> 60 == 15)
    {
      LOBYTE(v6) = 27;
      sub_10018C6D8();
      swift_willThrowTypedImpl();
      LOBYTE(result) = 27;
      return result;
    }
  }

  return result;
}

uint64_t sub_10017FD44@<X0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  result = sub_100180F6C(a1);
  if (v3)
  {
    v9 = result;
  }

  else
  {
    if (v8 >> 60 != 15)
    {
      v27 = result;
      v28 = v8;
      v10 = sub_1001A3F58(a1);
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = sub_1003AF3C4(a1, v11);
      v18 = [v17 casdCertificate];

      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = type metadata accessor for SESPeerIdentityData(0);
      v23 = *(v22 + 32);
      static Date.now.getter();
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(&a3[v23], 0, 1, v24);
      v25 = *(v22 + 36);
      sub_1001C5FF8(&a3[v25]);
      v26 = type metadata accessor for CreationMetadata(0);
      result = (*(*(v26 - 8) + 56))(&a3[v25], 0, 1, v26);
      *a3 = v27;
      *(a3 + 1) = v28;
      *(a3 + 2) = v10;
      *(a3 + 3) = v12;
      *(a3 + 4) = v14;
      *(a3 + 5) = v16;
      *(a3 + 6) = v19;
      *(a3 + 7) = v21;
      return result;
    }

    v9 = 27;
    LOBYTE(v29) = 27;
    sub_10018C6D8();
    result = swift_willThrowTypedImpl();
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100180030(void *a1, NSObject *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v75 = a2;
  v72 = a4;
  v73 = a5;
  v74 = a3;
  v6 = type metadata accessor for SHA256();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[2];
  v17 = a1[3];
  sub_10026CE44(v82);
  v86 = v16;
  v87 = v17;
  sub_100069E2C(v16, v17);
  v18 = sub_1001A93E0(&v86, v82);
  v68 = v10;
  v69 = v7;
  v70 = v15;
  v71 = v12;
  v19 = v74;
  v20 = v75;
  v101 = v83;
  v102 = v84;
  sub_10018C454(&v101);
  v100 = v85;
  sub_100075768(&v100, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v86, v87);
  sub_10026DA04(v18, &v86);
  v23 = a1[4];
  v22 = a1[5];
  sub_10026CE44(v89);
  *&v77 = v23;
  *(&v77 + 1) = v22;
  sub_100069E2C(v23, v22);
  v24 = sub_1001A93E0(&v77, v89);
  v98 = v90;
  v99 = v91;
  v25 = v24;
  sub_10018C454(&v98);
  v97 = v92;
  sub_100075768(&v97, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v77, *(&v77 + 1));
  sub_10026DA04(v25, v93);
  v96 = v88;
  v80 = v88;
  v95 = v94;
  v77 = v94;
  v78 = &type metadata for Data;
  v79 = &protocol witness table for Data;
  v26 = sub_1000752B0(&v77, &type metadata for Data);
  v28 = *v26;
  v27 = v26[1];
  sub_10018CFF0(&v96, v81);
  sub_10018CFF0(&v95, v81);
  sub_10008E4C8(v28, v27);
  v67 = 0;
  sub_1000752F4(&v77);
  v30 = *(&v80 + 1);
  v29 = v80;
  v81[0] = v80;
  v78 = &type metadata for Data;
  v79 = &protocol witness table for Data;
  *&v77 = v20;
  *(&v77 + 1) = v19;
  v31 = sub_1000752B0(&v77, &type metadata for Data);
  v33 = *v31;
  v32 = v31[1];
  sub_100069E2C(v29, v30);
  sub_100069E2C(v20, v19);
  sub_10008E4C8(v33, v32);
  sub_10006A178(v29, v30);
  sub_1000752F4(&v77);
  v35 = *(&v81[0] + 1);
  v34 = *&v81[0];
  sub_100188AF0(&qword_100503000, &type metadata accessor for SHA256);
  v36 = v68;
  v37 = v6;
  dispatch thunk of HashFunction.init()();
  v38 = v35;
  sub_100069E2C(v34, v35);
  sub_100357FC4(v34, v35);
  sub_10006A178(v34, v35);
  v39 = v70;
  dispatch thunk of HashFunction.finalize()();
  (*(v69 + 8))(v36, v37);
  v78 = v11;
  v79 = sub_100188AF0(&qword_100503008, &type metadata accessor for SHA256Digest);
  v40 = sub_1000B9634(&v77);
  v41 = v71;
  (*(v71 + 16))(v40, v39, v11);
  sub_1000752B0(&v77, v78);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v41 + 8))(v39, v11);
  v42 = *(&v80 + 1);
  v43 = v80;
  sub_1000752F4(&v77);
  sub_10006A178(v34, v38);
  v44 = v74;
  v45 = v75;
  sub_100069E2C(v75, v74);
  v47 = v72;
  v46 = v73;
  sub_100069E2C(v72, v73);
  sub_100069E2C(v43, v42);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  sub_10006A178(v45, v44);
  sub_10006A178(v47, v46);
  sub_10006A178(v43, v42);
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    LODWORD(v71) = v49;
    v51 = v50;
    v76 = swift_slowAlloc();
    *&v77 = v76;
    *v51 = 136315650;
    *&v81[0] = sub_100288788(v45, v44);
    v75 = v48;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v52 = BidirectionalCollection<>.joined(separator:)();
    v53 = v43;
    v55 = v54;

    v56 = sub_1002FFA0C(v52, v55, &v77);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2080;
    *&v81[0] = sub_100288788(v72, v73);
    v57 = BidirectionalCollection<>.joined(separator:)();
    v59 = v58;

    v60 = sub_1002FFA0C(v57, v59, &v77);
    v43 = v53;

    *(v51 + 14) = v60;
    *(v51 + 22) = 2080;
    *&v81[0] = sub_100288788(v53, v42);
    v47 = v72;
    v61 = BidirectionalCollection<>.joined(separator:)();
    v63 = v62;

    v64 = sub_1002FFA0C(v61, v63, &v77);
    v46 = v73;

    *(v51 + 24) = v64;
    v65 = v75;
    _os_log_impl(&_mh_execute_header, v75, v71, "For DSID %s expected %s got %s", v51, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v66 = sub_10008FB4C(v43, v42, v47, v46);
  sub_10006A178(v43, v42);
  sub_10018CF9C(v93);
  sub_10018CF9C(&v86);
  return v66 & 1;
}

void sub_100180988(char a1, char a2)
{
  v5 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  v31[0] = sub_100285E10(a1);
  v31[1] = v12;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 1;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC20(v10, isa);

  if ((a2 & 1) == 0)
  {
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 isAlarmSet:v15];

    if ((v16 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) & 1) == 0)
    {
      v17 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      v18 = v6[2];
      v30 = v17;
      v29 = v18;
      v18(v9, v2 + v17, v5);
      UserDefaultBacked.wrappedValue.getter();
      v28 = v6[1];
      v28(v9, v5);
      v19 = v31[0];
      if (v31[0] >= 6)
      {
        v19 = 6;
      }

      v20 = *(&off_1004C40A8 + (v19 & ~(v19 >> 63)) + 4);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134218240;
        v29(v9, v2 + v30, v5);
        UserDefaultBacked.wrappedValue.getter();
        v28(v9, v5);
        *(v23 + 4) = v31[0];

        *(v23 + 12) = 2048;
        *(v23 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "KeySyncManager: Retrying count %ld in %f seconds", v23, 0x16u);
      }

      else
      {
      }

      v24 = String._bridgeToObjectiveC()();
      [v14 setAlarm:v24 secondsFromNow:v20];

      swift_beginAccess();
      v25 = UserDefaultBacked.wrappedValue.modify();
      if (__OFADD__(*v26, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v26;
        v25(v31, 0);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100180E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      v11 = a2;
      v12 = a3;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v16 = a3;
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    sub_10009393C(0, &qword_100504F70, SESPeerIdentity_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(*(v7 + 64) + 40);
    *v18 = v13;
    v18[1] = v15;
    v18[2] = v17;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_100180F6C(void *a1)
{
  result = sub_1001A3680(a1);
  if (v1)
  {
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_1002FFA0C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to query device identity hash %s", v5, 0xCu);
      sub_1000752F4(v6);
    }

    LOBYTE(v10) = 31;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    return 31;
  }

  return result;
}

uint64_t sub_1001810DC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(type metadata accessor for SESPeerIdentityData(0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for SESTLKShareData(0);
  v3[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for SESTLKRecordData(0);
  v3[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[19] = v9;
  *v9 = v3;
  v9[1] = sub_1001811FC;

  return sub_10016C130();
}

uint64_t sub_1001811FC(uint64_t a1)
{
  v4 = *(*v2 + 152);
  v5 = *v2;
  v5[20] = a1;
  v5[21] = v1;

  if (v1)
  {
    v6 = v5[18];
    v7 = v5[16];
    v8 = v5[14];

    v9 = v5[1];

    return v9(a1);
  }

  else
  {
    v11 = v5[13];

    return _swift_task_switch(sub_100181368, v11, 0);
  }
}

uint64_t sub_100181368()
{
  v92 = v0;
  v1 = *(v0 + 168);
  sub_1001A4854(*(v0 + 160), *(*(v0 + 88) + 16), *(*(v0 + 88) + 24), *(*(v0 + 88) + 32), v89);
  if (v1)
  {
    v2 = *(v0 + 104);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v89[0] = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v8 = *(v0 + 16);
      v7 = *(v0 + 24);
      v9 = *(v0 + 32);
      v10 = Error.localizedDescription.getter();
      v12 = sub_1002FFA0C(v10, v11, v89);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to createTLK on SE %s", v5, 0xCu);
      sub_1000752F4(v6);
    }

    v13 = *(v0 + 160);
    *(v0 + 176) = 10;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    v14 = *(v0 + 144);
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);

    v17 = *(v0 + 8);

    return v17(10);
  }

  else
  {
    v75 = v89[0];
    v76 = v89[1];
    v20 = v89[2];
    v19 = v89[3];
    v79 = v89[4];
    v80 = v89[5];
    v81 = v89[6];
    v82 = v89[7];
    v83 = v89[9];
    v84 = v89[11];
    v85 = v89[12];
    v86 = v89[13];
    v87 = v89[14];
    v88 = v89[10];
    v22 = v90;
    v21 = v91;
    v23 = *(v0 + 144);
    v24 = *(v0 + 88);
    v25 = *(*(v0 + 136) + 20);
    sub_100069E2C(v90, v91);
    sub_1001C5FF8((v23 + v25));
    v26 = type metadata accessor for CreationMetadata(0);
    v68 = *(*(v26 - 8) + 56);
    v68(v23 + v25, 0, 1, v26);
    v74 = v22;
    *v23 = v22;
    v23[1] = v21;
    v27 = v21;
    v28 = v24[1];
    v69 = *v24;
    v72 = String._bridgeToObjectiveC()();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v77 = v20;
    v78 = v19;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v30 = type metadata accessor for PropertyListEncoder();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100188AF0(&qword_100504F60, type metadata accessor for SESTLKRecordData);
    v33 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v35 = v34;

    v63 = v26;
    v64 = v28;
    v65 = *(v0 + 160);
    v66 = *(v0 + 96);
    v67 = v27;
    v36 = objc_opt_self();
    v37 = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v33, v35);
    v38 = [v36 withView:v72 tlkUUID:isa parentTLKUUID:v29 recordData:v37];

    v39 = [v38 tlkUUID];
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_1001A57D8(v65, v40, v42, v66);
    v45 = v44;
    v46 = v42;
    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    v49 = *(v0 + 96);
    sub_10018D04C(v49, v47, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v49, v47 + v48[5], type metadata accessor for SESPeerIdentityData);
    v50 = v48[7];
    sub_100069E2C(v43, v45);
    sub_1001C5FF8((v47 + v50));
    v68(v47 + v50, 0, 1, v63);
    v51 = v48[6];
    v52 = v46;
    v53 = (v47 + v51);
    *v53 = v43;
    v53[1] = v45;
    v73 = sub_1001C89E8(v69, v28, v40, v46, v47);
    v54 = *(v0 + 160);
    v71 = *(v0 + 96);
    sub_10018CE30(*(v0 + 128), type metadata accessor for SESTLKShareData);
    sub_10006A178(v43, v45);
    sub_10006A178(v40, v52);
    v55 = [v38 tlkUUID];
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    sub_1001F60C4(v54, v69, v64, v56, v58, v71);
    v59 = *(v0 + 160);
    v60 = *(v0 + 128);
    v61 = *(v0 + 112);
    sub_10018CE30(*(v0 + 144), type metadata accessor for SESTLKRecordData);
    sub_10006A178(v74, v67);
    sub_10006A178(v56, v58);

    sub_10006A178(v75, v76);
    sub_10006A178(v77, v78);
    sub_10006A178(v79, v80);
    sub_10006A178(v81, v82);
    sub_10006A2D0(v83, v88);
    sub_10006A2D0(v84, v85);
    sub_10006A2D0(v86, v87);

    v62 = *(v0 + 8);

    return v62(v38, v73);
  }
}

uint64_t sub_100182150(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 view];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == *a2 && v9 == a2[1])
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = [v5 targetPeerIdentifier];
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = sub_10008FB4C(v14, v16, *a3, *(a3 + 8));
  sub_10006A178(v14, v16);
  return v17 & 1;
}

uint64_t sub_100182254(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 tlkUUID];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(a3) = sub_10008FB4C(v9, v11, a2, a3);
  sub_10006A178(v9, v11);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v12 = [v7 sourcePeerIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v7 targetPeerIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10008FB4C(v13, v15, v17, v19);
  sub_10006A178(v17, v19);
  sub_10006A178(v13, v15);
  if (v16)
  {
    return 0;
  }

  v21 = [v7 targetPeerIdentifier];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_10008FB4C(v22, v24, *a4, *(a4 + 8));
  sub_10006A178(v22, v24);
  return v25 & 1;
}

uint64_t sub_1001823DC(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 tlkUUID];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  LOBYTE(a3) = sub_10008FB4C(v9, v11, a2, a3);
  sub_10006A178(v9, v11);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v12 = [v7 sourcePeerIdentifier];
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v7 targetPeerIdentifier];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  LOBYTE(v16) = sub_10008FB4C(v13, v15, v17, v19);
  sub_10006A178(v17, v19);
  sub_10006A178(v13, v15);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v20 = [v7 targetPeerIdentifier];
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = sub_10008FB4C(v21, v23, *a4, *(a4 + 8));
  sub_10006A178(v21, v23);
  return v24 & 1;
}

BOOL sub_100182564(uint64_t *a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = [a2 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v8;
  v13[5] = a5;
  v11 = sub_1002FB068(sub_10018C874, v13, v10);

  return (v11 & 1) == 0;
}

uint64_t sub_100182648(id *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [*a1 tlkUUID];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  LOBYTE(a3) = sub_10008FB4C(v11, v13, a2, a3);
  sub_10006A178(v11, v13);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v14 = [v9 targetPeerIdentifier];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a4 peerIdentifier];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  LOBYTE(v18) = sub_10008FB4C(v15, v17, v19, v21);
  sub_10006A178(v19, v21);
  sub_10006A178(v15, v17);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v22 = [v9 sourcePeerIdentifier];
  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [v9 targetPeerIdentifier];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  LOBYTE(v26) = sub_10008FB4C(v23, v25, v27, v29);
  sub_10006A178(v27, v29);
  sub_10006A178(v23, v25);
  if (v26)
  {
    return 1;
  }

  v31 = [v9 sourcePeerIdentifier];
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = sub_10008FB4C(v32, v34, *a5, *(a5 + 8));
  sub_10006A178(v32, v34);
  return v35 & 1;
}

uint64_t sub_100182868(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v184 = a5;
  v190 = a4;
  v10 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v182 = &v168 - v12;
  v187 = type metadata accessor for Date();
  v13 = *(v187 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v187);
  v183 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v168 - v17;
  v19 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v20 = *(v19 - 8);
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = &v168 - v22;
  v24 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_recoveryPending;
  swift_beginAccess();
  v25 = *(v6 + v24);

  v185 = a1;
  LOBYTE(a1) = sub_1000C6B9C(a1, a2, v25);

  if (a1)
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v202 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1002FFA0C(v185, a2, &v202);
      _os_log_impl(&_mh_execute_header, v26, v27, "Recovery for view %s is already in flight ... ", v28, 0xCu);
      sub_1000752F4(v29);
    }

    return 0;
  }

  v181 = a2;
  v179 = v18;
  v178 = v13;
  v31 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
  swift_beginAccess();
  v32 = v20[2];
  v32(v23, v6 + v31, v19);
  UserDefaultBacked.wrappedValue.getter();
  v33 = v20[1];
  v33(v23, v19);
  if (v201 == 1)
  {
    v34 = v181;

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v201 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1002FFA0C(v185, v34, &v201);
      _os_log_impl(&_mh_execute_header, v35, v36, "Forcing recovery for view %s", v37, 0xCu);
      sub_1000752F4(v38);
    }

    LOBYTE(__s1[0]) = 0;
    swift_beginAccess();
    UserDefaultBacked.wrappedValue.setter();
    swift_endAccess();
    return 1;
  }

  v39 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
  swift_beginAccess();
  v32(v23, v6 + v39, v19);
  UserDefaultBacked.wrappedValue.getter();
  v33(v23, v19);
  if (__s1[0])
  {
    return 1;
  }

  v40 = [a3 tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    goto LABEL_225;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v43 = v187;
    v44 = v190;
    if (!v42)
    {
LABEL_197:

      v138 = v181;

      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        __s1[0] = v142;
        *v141 = 136315138;
        *(v141 + 4) = sub_1002FFA0C(v185, v138, __s1);
        _os_log_impl(&_mh_execute_header, v139, v140, "Recovery is required because view %s doesn't have any trusted peer with a self share", v141, 0xCu);
        sub_1000752F4(v142);
      }

      return 1;
    }

    v45 = 0;
    v171 = 0;
    v177 = v41 & 0xC000000000000001;
    v176 = v41 & 0xFFFFFFFFFFFFFF8;
    v175 = v41 + 32;
    v46 = v190 & 0xFFFFFFFFFFFFFF8;
    v191 = v190 & 0xFFFFFFFFFFFFFF8;
    if (v190 < 0)
    {
      v46 = v190;
    }

    v168 = v46;
    v189 = v190 & 0xC000000000000001;
    v173 = v190 >> 62;
    v188 = v6;
    v172 = v41;
    v170 = v42;
    while (1)
    {
      if (v177)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v176 + 16))
        {
          goto LABEL_219;
        }

        v47 = *(v175 + 8 * v45);
      }

      v192 = v47;
      v48 = __OFADD__(v45, 1);
      v49 = v45 + 1;
      if (v48)
      {
        goto LABEL_218;
      }

      v180 = v49;
      v50 = v192;
      v51 = [v192 sourcePeerIdentifier];
      v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = [v50 targetPeerIdentifier];
      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = v54 >> 62;
      v60 = v58 >> 62;
      if (v54 >> 62 == 3)
      {
        v61 = 0;
        if (!v52 && v54 == 0xC000000000000000 && v58 >> 62 == 3)
        {
          v61 = 0;
          if (!v56 && v58 == 0xC000000000000000)
          {
            sub_10006A178(0, 0xC000000000000000);
            v62 = 0;
            v63 = 0xC000000000000000;
            goto LABEL_51;
          }
        }
      }

      else if (v59)
      {
        if (v59 == 1)
        {
          LODWORD(v61) = HIDWORD(v52) - v52;
          if (__OFSUB__(HIDWORD(v52), v52))
          {
            goto LABEL_231;
          }

          v61 = v61;
        }

        else
        {
          v65 = *(v52 + 16);
          v64 = *(v52 + 24);
          v48 = __OFSUB__(v64, v65);
          v61 = v64 - v65;
          if (v48)
          {
            goto LABEL_230;
          }
        }
      }

      else
      {
        v61 = BYTE6(v54);
      }

      if (v60 > 1)
      {
        if (v60 != 2)
        {
          if (!v61)
          {
            break;
          }

LABEL_18:

          sub_10006A178(v56, v58);
          sub_10006A178(v52, v54);
          goto LABEL_19;
        }

        v67 = *(v56 + 16);
        v66 = *(v56 + 24);
        v48 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v48)
        {
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
        }

        if (v61 != v68)
        {
          goto LABEL_18;
        }
      }

      else if (v60)
      {
        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_227;
        }

        if (v61 != HIDWORD(v56) - v56)
        {
          goto LABEL_18;
        }
      }

      else if (v61 != BYTE6(v58))
      {
        goto LABEL_18;
      }

      if (v61 < 1)
      {
        break;
      }

      sub_100069E2C(v56, v58);
      v69 = v171;
      v70 = sub_10008C678(v52, v54, v56, v58);
      v171 = v69;
      sub_10006A178(v52, v54);
      sub_10006A178(v56, v58);
      if (v70)
      {
        v44 = v190;
        goto LABEL_52;
      }

      v44 = v190;
LABEL_19:
      v45 = v180;
      if (v180 == v42)
      {
        goto LABEL_197;
      }
    }

    sub_10006A178(v56, v58);
    v62 = v52;
    v63 = v54;
LABEL_51:
    sub_10006A178(v62, v63);
LABEL_52:
    if (!v173)
    {
      v71 = *(v191 + 16);
      if (v71)
      {
        goto LABEL_54;
      }

      goto LABEL_196;
    }

    v71 = _CocoaArrayWrapper.endIndex.getter();
    if (!v71)
    {
LABEL_196:

      v41 = v172;
      v42 = v170;
      goto LABEL_19;
    }

LABEL_54:
    v72 = 0;
    v186 = v71;
LABEL_58:
    if (v189)
    {
      v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v72 >= *(v191 + 16))
      {
        goto LABEL_217;
      }

      v73 = *(v44 + 8 * v72 + 32);
    }

    v74 = v73;
    v75 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      v42 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v76 = [v192 sourcePeerIdentifier];
  v77 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v78;

  v193 = v74;
  v79 = [v74 peerIdentifier];
  v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  v83 = v6 >> 62;
  v41 = v82 >> 62;
  if (v6 >> 62 == 3)
  {
    v84 = 0;
    if (!v77 && v6 == 0xC000000000000000 && v82 >> 62 == 3)
    {
      v84 = 0;
      if (!v80 && v82 == 0xC000000000000000)
      {

        sub_10006A178(0, 0xC000000000000000);
        v143 = 0;
        v144 = 0xC000000000000000;
        goto LABEL_202;
      }
    }

LABEL_78:
    if (v41 <= 1)
    {
      goto LABEL_79;
    }

LABEL_72:
    if (v41 == 2)
    {
      v86 = *(v80 + 16);
      v85 = *(v80 + 24);
      v48 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v48)
      {
        goto LABEL_220;
      }

LABEL_81:
      if (v84 == v87)
      {
        goto LABEL_85;
      }
    }

    else if (!v84)
    {
      goto LABEL_200;
    }

LABEL_56:

    sub_10006A178(v80, v82);
    sub_10006A178(v77, v6);
LABEL_57:
    ++v72;
    v6 = v188;
    if (v75 == v186)
    {
      goto LABEL_196;
    }

    goto LABEL_58;
  }

  if (v83 <= 1)
  {
    if (v83)
    {
      LODWORD(v84) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
        goto LABEL_222;
      }

      v84 = v84;
      if (v41 <= 1)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v84 = BYTE6(v6);
      if (v41 <= 1)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_72;
  }

  if (v83 == 2)
  {
    v89 = *(v77 + 16);
    v88 = *(v77 + 24);
    v48 = __OFSUB__(v88, v89);
    v84 = v88 - v89;
    if (v48)
    {
      goto LABEL_223;
    }

    goto LABEL_78;
  }

  v84 = 0;
  if (v41 > 1)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (!v41)
  {
    v87 = BYTE6(v82);
    goto LABEL_81;
  }

  if (__OFSUB__(HIDWORD(v80), v80))
  {
    goto LABEL_221;
  }

  if (v84 != HIDWORD(v80) - v80)
  {
    goto LABEL_56;
  }

LABEL_85:
  if (v84 < 1)
  {
    goto LABEL_200;
  }

  if (v83 > 1)
  {
    if (v83 != 2)
    {
      memset(__s1, 0, 14);
      if (!v41)
      {
LABEL_116:
        __s2 = v80;
        v195 = v82;
        v196 = BYTE2(v82);
        v197 = BYTE3(v82);
        v198 = BYTE4(v82);
        v199 = BYTE5(v82);
        v107 = memcmp(__s1, &__s2, BYTE6(v82));

        sub_10006A178(v77, v6);
        sub_10006A178(v80, v82);
        if (!v107)
        {
          goto LABEL_201;
        }

        goto LABEL_57;
      }

      if (v41 == 2)
      {
        v102 = *(v80 + 16);
        v103 = *(v80 + 24);
        v104 = __DataStorage._bytes.getter();
        if (v104)
        {
          v105 = __DataStorage._offset.getter();
          if (__OFSUB__(v102, v105))
          {
            goto LABEL_242;
          }

          v104 += v102 - v105;
        }

        v48 = __OFSUB__(v103, v102);
        v41 = v103 - v102;
        if (v48)
        {
          goto LABEL_235;
        }

        v106 = __DataStorage._length.getter();
        v43 = v187;
        if (!v104)
        {
          goto LABEL_250;
        }

LABEL_137:
        if (v106 >= v41)
        {
          v118 = v41;
        }

        else
        {
          v118 = v106;
        }

        v119 = memcmp(__s1, v104, v118);

        sub_10006A178(v77, v6);
        v120 = v80;
        v121 = v82;
LABEL_190:
        sub_10006A178(v120, v121);
        v44 = v190;
        if (!v119)
        {
          goto LABEL_201;
        }

        goto LABEL_57;
      }

      v41 = v80;
      v90 = (v80 >> 32) - v80;
      if (v80 >> 32 < v80)
      {
        goto LABEL_233;
      }

      v122 = __DataStorage._bytes.getter();
      if (!v122)
      {
        goto LABEL_260;
      }

      v123 = v122;
      v124 = __DataStorage._offset.getter();
      if (__OFSUB__(v80, v124))
      {
        goto LABEL_237;
      }

      v94 = (v80 - v124 + v123);
      result = __DataStorage._length.getter();
      if (!v94)
      {
        goto LABEL_261;
      }

LABEL_145:
      if (result >= v90)
      {
        v125 = v90;
      }

      else
      {
        v125 = result;
      }

      v126 = memcmp(__s1, v94, v125);

      sub_10006A178(v77, v6);
      sub_10006A178(v80, v82);
      v44 = v190;
      v43 = v187;
      if (v126)
      {
        goto LABEL_57;
      }

LABEL_201:

      goto LABEL_203;
    }

    v95 = *(v77 + 16);
    v96 = __DataStorage._bytes.getter();
    if (v96)
    {
      v97 = v96;
      v98 = __DataStorage._offset.getter();
      if (__OFSUB__(v95, v98))
      {
        goto LABEL_228;
      }

      v174 = (v95 - v98 + v97);
    }

    else
    {
      v174 = 0;
    }

    __DataStorage._length.getter();
    if (v41 == 2)
    {
      v127 = *(v80 + 16);
      v169 = *(v80 + 24);
      v111 = __DataStorage._bytes.getter();
      if (v111)
      {
        v128 = __DataStorage._offset.getter();
        if (__OFSUB__(v127, v128))
        {
          goto LABEL_244;
        }

        v111 += v127 - v128;
      }

      v48 = __OFSUB__(v169, v127);
      v41 = v169 - v127;
      if (v48)
      {
        goto LABEL_239;
      }

      v129 = __DataStorage._length.getter();
      if (v129 >= v41)
      {
        v130 = v41;
      }

      else
      {
        v130 = v129;
      }

      result = v174;
      if (!v174)
      {
        goto LABEL_263;
      }

      v43 = v187;
      if (!v111)
      {
        goto LABEL_262;
      }

      goto LABEL_188;
    }

    if (v41 == 1)
    {
      v41 = (v80 >> 32) - v80;
      if (v80 >> 32 < v80)
      {
        goto LABEL_236;
      }

      v108 = __DataStorage._bytes.getter();
      if (v108)
      {
        v109 = v108;
        v110 = __DataStorage._offset.getter();
        if (__OFSUB__(v80, v110))
        {
          goto LABEL_245;
        }

        v111 = (v80 - v110 + v109);
      }

      else
      {
        v111 = 0;
      }

      v136 = __DataStorage._length.getter();
      if (v136 >= v41)
      {
        v130 = (v80 >> 32) - v80;
      }

      else
      {
        v130 = v136;
      }

      result = v174;
      if (!v174)
      {
        goto LABEL_259;
      }

      v43 = v187;
      if (!v111)
      {
        goto LABEL_258;
      }

LABEL_188:
      if (result != v111)
      {
        v119 = memcmp(result, v111, v130);

        sub_10006A178(v80, v82);
        v120 = v77;
        v121 = v6;
        goto LABEL_190;
      }

LABEL_200:

      sub_10006A178(v80, v82);
      v143 = v77;
      v144 = v6;
LABEL_202:
      sub_10006A178(v143, v144);
LABEL_203:
      v145 = v184;
      v146 = type metadata accessor for SESPeerIdentityData(0);
      v147 = v182;
      sub_1000938D4(v145 + *(v146 + 32), v182, &qword_1005031F0, &unk_10040C4C0);
      v148 = v178;
      v149 = *(v178 + 48);
      v150 = v149(v147, 1, v43);
      v151 = v183;
      if (v150 == 1)
      {
        v152 = v179;
        static Date.now.getter();
        if (v149(v147, 1, v43) != 1)
        {
          sub_100075768(v147, &qword_1005031F0, &unk_10040C4C0);
        }
      }

      else
      {
        v152 = v179;
        (*(v148 + 32))(v179, v147, v43);
      }

      Date.timeIntervalSinceNow.getter();
      v154 = fabs(v153);
      (*(v148 + 16))(v151, v152, v43);
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        __s1[0] = v158;
        *v157 = 136315394;
        sub_100188AF0(&qword_100504F38, &type metadata accessor for Date);
        v159 = dispatch thunk of CustomStringConvertible.description.getter();
        v161 = v160;
        v162 = *(v148 + 8);
        v162(v151, v43);
        v163 = sub_1002FFA0C(v159, v161, __s1);

        *(v157 + 4) = v163;
        *(v157 + 12) = 2048;
        *(v157 + 14) = v154;
        _os_log_impl(&_mh_execute_header, v155, v156, "Identity has existed since %s with delta %f", v157, 0x16u);
        sub_1000752F4(v158);
      }

      else
      {

        v162 = *(v148 + 8);
        v162(v151, v43);
      }

      if (v154 <= 86400.0)
      {
        v164 = objc_opt_self();
        v165 = String._bridgeToObjectiveC()();
        v166 = [v164 isAlarmSet:v165];

        if ((v166 & 1) == 0)
        {
          v167 = String._bridgeToObjectiveC()();
          [v164 setAlarm:v167 secondsFromNow:86400.0 - v154 + 300.0];
        }

        v162(v179, v43);
        return 0;
      }

      v162(v179, v43);
      return 1;
    }

    v44 = v190;
    v131 = v174;
    __s1[0] = v80;
    LOWORD(__s1[1]) = v82;
    BYTE2(__s1[1]) = BYTE2(v82);
    BYTE3(__s1[1]) = BYTE3(v82);
    BYTE4(__s1[1]) = BYTE4(v82);
    BYTE5(__s1[1]) = BYTE5(v82);
    v43 = v187;
    if (!v174)
    {
      goto LABEL_254;
    }

LABEL_173:
    v135 = memcmp(v131, __s1, BYTE6(v82));

    sub_10006A178(v80, v82);
    sub_10006A178(v77, v6);
    if (!v135)
    {
      goto LABEL_201;
    }

    goto LABEL_57;
  }

  if (v83)
  {
    if (v77 > v77 >> 32)
    {
      goto LABEL_224;
    }

    v99 = __DataStorage._bytes.getter();
    if (v99)
    {
      v100 = v99;
      v101 = __DataStorage._offset.getter();
      if (__OFSUB__(v77, v101))
      {
        goto LABEL_229;
      }

      v174 = (v77 - v101 + v100);
    }

    else
    {
      v174 = 0;
    }

    __DataStorage._length.getter();
    if (v41 == 2)
    {
      v132 = *(v80 + 16);
      v169 = *(v80 + 24);
      v111 = __DataStorage._bytes.getter();
      if (v111)
      {
        v133 = __DataStorage._offset.getter();
        if (__OFSUB__(v132, v133))
        {
          goto LABEL_246;
        }

        v111 += v132 - v133;
      }

      v48 = __OFSUB__(v169, v132);
      v41 = v169 - v132;
      if (v48)
      {
        goto LABEL_241;
      }

      v134 = __DataStorage._length.getter();
      if (v134 >= v41)
      {
        v130 = v41;
      }

      else
      {
        v130 = v134;
      }

      result = v174;
      if (!v174)
      {
        goto LABEL_253;
      }

      v43 = v187;
      if (!v111)
      {
        goto LABEL_252;
      }

      goto LABEL_188;
    }

    if (v41 == 1)
    {
      v41 = (v80 >> 32) - v80;
      if (v80 >> 32 < v80)
      {
        goto LABEL_240;
      }

      v112 = __DataStorage._bytes.getter();
      if (v112)
      {
        v113 = v112;
        v114 = __DataStorage._offset.getter();
        if (__OFSUB__(v80, v114))
        {
          goto LABEL_247;
        }

        v111 = (v80 - v114 + v113);
      }

      else
      {
        v111 = 0;
      }

      v137 = __DataStorage._length.getter();
      if (v137 >= v41)
      {
        v130 = (v80 >> 32) - v80;
      }

      else
      {
        v130 = v137;
      }

      result = v174;
      if (!v174)
      {
        goto LABEL_257;
      }

      v43 = v187;
      if (!v111)
      {
        goto LABEL_256;
      }

      goto LABEL_188;
    }

    v44 = v190;
    v131 = v174;
    __s1[0] = v80;
    LOWORD(__s1[1]) = v82;
    BYTE2(__s1[1]) = BYTE2(v82);
    BYTE3(__s1[1]) = BYTE3(v82);
    BYTE4(__s1[1]) = BYTE4(v82);
    BYTE5(__s1[1]) = BYTE5(v82);
    v43 = v187;
    if (!v174)
    {
      goto LABEL_249;
    }

    goto LABEL_173;
  }

  __s1[0] = v77;
  LOWORD(__s1[1]) = v6;
  BYTE2(__s1[1]) = BYTE2(v6);
  BYTE3(__s1[1]) = BYTE3(v6);
  BYTE4(__s1[1]) = BYTE4(v6);
  BYTE5(__s1[1]) = BYTE5(v6);
  if (!v41)
  {
    goto LABEL_116;
  }

  if (v41 != 1)
  {
    v115 = *(v80 + 16);
    v116 = *(v80 + 24);
    v104 = __DataStorage._bytes.getter();
    if (v104)
    {
      v117 = __DataStorage._offset.getter();
      if (__OFSUB__(v115, v117))
      {
        goto LABEL_243;
      }

      v104 += v115 - v117;
    }

    v48 = __OFSUB__(v116, v115);
    v41 = v116 - v115;
    if (v48)
    {
      goto LABEL_234;
    }

    v106 = __DataStorage._length.getter();
    v43 = v187;
    if (!v104)
    {
      goto LABEL_251;
    }

    goto LABEL_137;
  }

  v41 = v80;
  v90 = (v80 >> 32) - v80;
  if (v80 >> 32 < v80)
  {
    goto LABEL_232;
  }

  v91 = __DataStorage._bytes.getter();
  if (v91)
  {
    v92 = v91;
    v93 = __DataStorage._offset.getter();
    if (__OFSUB__(v80, v93))
    {
      goto LABEL_238;
    }

    v94 = (v80 - v93 + v92);
    result = __DataStorage._length.getter();
    if (!v94)
    {
      goto LABEL_255;
    }

    goto LABEL_145;
  }

  __DataStorage._length.getter();
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  result = __DataStorage._length.getter();
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
  return result;
}

BOOL sub_100183F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v57 - v7;
  v9 = sub_100068FC4(&qword_100504F08, &unk_10040DE20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v57 - v11);
  v13 = type metadata accessor for SESTLKRecordData(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = v57 - v18;
  sub_1001C5D54(v17);
  sub_10018CF04(v17, v19, type metadata accessor for SESTLKRecordData);
  sub_1000938D4(&v19[*(v13 + 20)], v12, &qword_100504F08, &unk_10040DE20);
  v20 = type metadata accessor for CreationMetadata(0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_100075768(v12, &qword_100504F08, &unk_10040DE20);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v12;
    v22 = v12[1];

    sub_10018CE30(v12, type metadata accessor for CreationMetadata);
  }

  v59 = v8;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v57[1] = v3;
    v58 = v19;
    v26 = v25;
    v27 = swift_slowAlloc();
    v57[0] = a2;
    v28 = v27;
    v60[0] = v27;
    *v26 = 136315138;
    v29 = v21;
    if (v22)
    {
      v30 = v21;
    }

    else
    {
      v30 = 0x3E6C696E3CLL;
    }

    if (v22)
    {
      v31 = v22;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = sub_1002FFA0C(v30, v31, v60);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "TLK was created on version %s", v26, 0xCu);
    sub_1000752F4(v28);
    a2 = v57[0];

    v19 = v58;

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v29 = v21;

    if (!v22)
    {
      goto LABEL_30;
    }
  }

  v33 = sub_1001850D4();
  if (v35)
  {
    if (v33 >= 22)
    {

LABEL_17:

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v29;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v60[0] = v40;
        *v39 = 136315138;
        v41 = sub_1002FFA0C(v38, v22, v60);

        *(v39 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v36, v37, "Not forcing recovery of TLK created on newer version %s", v39, 0xCu);
        sub_1000752F4(v40);
      }

      else
      {
      }

      sub_100180988(17, 0);
      sub_10018CE30(v19, type metadata accessor for SESTLKRecordData);
      return 0;
    }

    if (v33 != 21 || (v34 == 66 ? (v42 = v35 == 0xE100000000000000) : (v42 = 0), v42))
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v43)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_30:
  if (qword_100501D60 != -1)
  {
    swift_once();
  }

  v44 = sub_10031F8AC();
  v45 = v59;
  v47 = v44;
  v48 = type metadata accessor for SESPeerIdentityData(0);
  sub_1000938D4(a2 + *(v48 + 32), v45, &qword_1005031F0, &unk_10040C4C0);
  v49 = type metadata accessor for Date();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v45, 1, v49) == 1)
  {
    sub_100075768(v45, &qword_1005031F0, &unk_10040C4C0);
    v51 = 0.0;
  }

  else
  {
    Date.timeIntervalSinceNow.getter();
    v51 = v52;
    (*(v50 + 8))(v45, v49);
  }

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 67109376;
    *(v55 + 4) = v47;
    *(v55 + 8) = 2048;
    *(v55 + 10) = v51;
    _os_log_impl(&_mh_execute_header, v53, v54, "Recovery blob haveFidoKeys %{BOOL}d identityAge %f", v55, 0x12u);
  }

  sub_10018CE30(v19, type metadata accessor for SESTLKRecordData);
  v56 = 172800.0;
  if (v47)
  {
    v56 = 1209600.0;
  }

  return v56 < fabs(v51);
}

uint64_t sub_10018485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v13;
  *(v8 + 56) = v12;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = *(*(type metadata accessor for SEKeySyncRecovery.RecoveryRecord() - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100184908, 0, 0);
}

uint64_t sub_100184908()
{
  v1 = [*(v0 + 32) currentTLK];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = [v1 tlkUUID];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v0 + 88) = v12;
    *(v0 + 96) = v14;
    v15 = [v7 isProd];
    sub_1001F3488(v10, v9, v12, v14, v8, v6, (v0 + 128), v5);
    v16 = swift_task_alloc();
    *(v0 + 104) = v16;
    *v16 = v0;
    v16[1] = sub_100184B00;
    v17 = *(v0 + 80);
    v18 = *(v0 + 40);

    return sub_1001F8290(v17, v18, v15);
  }

  else
  {
    __break(1u);
    return _swift_task_switch(0, v2, v3);
  }
}

uint64_t sub_100184B00()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100184CA0;
  }

  else
  {
    v3 = sub_100184C14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100184C14()
{
  v1 = v0[10];
  sub_10006A178(v0[11], v0[12]);
  sub_10018CE30(v1, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v0[15] = 0;
  v2 = v0[9];

  return _swift_task_switch(sub_100184D30, v2, 0);
}

uint64_t sub_100184CA0()
{
  v1 = v0[10];
  sub_10006A178(v0[11], v0[12]);
  sub_10018CE30(v1, type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
  v0[15] = v0[14];
  v2 = v0[9];

  return _swift_task_switch(sub_100184D30, v2, 0);
}

uint64_t sub_100184D30()
{
  v1 = v0[9];
  sub_100184E0C(v0[2], v0[3], v0[15]);

  return _swift_task_switch(sub_100184DA0, 0, 0);
}

uint64_t sub_100184DA0()
{
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100184E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  swift_beginAccess();
  sub_10010E7A0(a1, a2);
  swift_endAccess();

  if (a3)
  {
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_1002FFA0C(v14, v15, v23);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to recover : %s", v12, 0xCu);
      sub_1000752F4(v13);
    }

    v23[0] = a3;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if (swift_dynamicCast())
    {
      v17 = v22;
    }

    else
    {
      v17 = 28;
    }

    sub_100180988(v17, 0);
  }

  else
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_1001608B4(0, 0, v9, &unk_10040C4B8, v20);

    return sub_100075768(v9, &qword_100504250, &qword_10040D610);
  }
}

unsigned __int8 *sub_1001850D4()
{
  v0 = sub_100068FC4(&qword_100504F10, &qword_10040C4D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_100068FC4(&qword_100504F18, &qword_10040C4D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_100068FC4(&qword_100504F20, &qword_10040C4E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  sub_100068FC4(&qword_100504F28, &qword_10040C4E8);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v3, v4);
    Regex.Match.output.getter();
    v15 = v26;
    v16 = v27;
    v24 = v28;
    v25 = v29;

    if ((v16 ^ v15) >> 14)
    {
      v17 = sub_100189EEC(v15, v16, v24, v25, 10);
      if ((v18 & 0x100) != 0)
      {
        v20 = sub_1001894E0(v15, v16, v24, v25, 10);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
LABEL_11:
          Regex.Match.output.getter();

          Substring.uppercased()();

          (*(v5 + 8))(v8, v4);
          (*(v10 + 8))(v13, v9);
          return v20;
        }
      }

      else
      {
        v19 = v18;
        v20 = v17;

        if ((v19 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  (*(v10 + 8))(v13, v9);
  sub_100075768(v3, &qword_100504F10, &qword_10040C4D0);
  return 0;
}

uint64_t sub_100185508()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = sub_1000B3934(&off_1004C4768);
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1001855E4;

  return sub_10015F214(v1);
}

uint64_t sub_1001855E4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001856F4()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100185784;

  return sub_10016C130();
}

uint64_t sub_100185784(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }

  else
  {
    v9 = v4[6];

    return _swift_task_switch(sub_1001858D8, v9, 0);
  }
}

uint64_t sub_1001858D8()
{
  v20 = v0;
  v1 = *(v0 + 72);
  v2 = sub_1001A2ED8(*(v0 + 64));
  if (v1)
  {
    v3 = *(v0 + 48);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      v10 = *(v0 + 32);
      v11 = Error.localizedDescription.getter();
      v13 = sub_1002FFA0C(v11, v12, &v19);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to list TLKS : %s", v6, 0xCu);
      sub_1000752F4(v7);
    }

    v14 = *(v0 + 64);
    *(v0 + 80) = 12;
    sub_10018C6D8();
    swift_willThrowTypedImpl();

    v15 = *(v0 + 8);
    v16 = 12;
  }

  else
  {
    v17 = v2;

    v15 = *(v0 + 8);
    v16 = v17;
  }

  return v15(v16);
}

uint64_t sub_100185AA8(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  return _swift_task_switch(sub_100185ACC, v2, 0);
}

uint64_t sub_100185ACC()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  *(v0 + 280) = v2;
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    *(v0 + 288) = v1;
    *(v0 + 112) = 0x4354502D4553;
    *(v0 + 120) = 0xE600000000000000;
    *(v0 + 128) = v1;
    *(v0 + 136) = v2;
    *(v0 + 144) = 1;
    v5 = v1;
    v6 = v2;
    v7 = objc_opt_self();

    sub_100069E2C(v5, v6);
    v8 = [v7 sharedInstance];
    *(v0 + 296) = v8;
    v9 = String._bridgeToObjectiveC()();
    *(v0 + 304) = v9;
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 312) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 240;
    *(v0 + 24) = sub_100185CDC;
    v11 = swift_continuation_init();
    *(v0 + 208) = sub_100068FC4(&qword_100504F88, &qword_10040C528);
    *(v0 + 152) = _NSConcreteStackBlock;
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_1001861F4;
    *(v0 + 176) = &unk_1004C95C0;
    *(v0 + 184) = v11;
    [v8 fetchCachedContentForSEView:v9 altDSID:isa completion:v0 + 152];
    v1 = v0 + 16;
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100185CDC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 48);
  *(*v0 + 320) = v4;
  v5 = *(v1 + 272);
  if (v4)
  {
    sub_10018CF6C(v2 + 112);

    v6 = sub_100185F34;
  }

  else
  {
    v6 = sub_100185E14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100185E14()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[30];
  swift_unknownObjectRelease();

  v5 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10012F78C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_10012F78C((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = v0[35];
  v8 = v0[36];
  v5[2] = v7 + 1;
  v10 = &v5[6 * v7];
  v10[4] = 0x4354502D4553;
  v10[5] = 0xE600000000000000;
  v10[6] = v8;
  v10[7] = v9;
  *(v10 + 64) = 1;
  v10[9] = v4;
  sub_10018CF6C((v0 + 14));
  v11 = v0[1];

  return v11(v5);
}

uint64_t sub_100185F34()
{
  v25 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100069E2C(v5, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  sub_10006A178(v5, v6);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 320);
    v11 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v11 = 136315394;

    v12 = sub_1002FFA0C(0x4354502D4553, 0xE600000000000000, v24);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = Error.localizedDescription.getter();
    v18 = sub_1002FFA0C(v16, v17, v24);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch view %s : %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 320);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  *(v0 + 152) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  sub_10006A178(v20, v21);
  v22 = *(v0 + 8);

  return v22(20);
}

uint64_t sub_10018618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);

  *(a1 + 16) = a2;
  v7 = *(a1 + 24);

  *(a1 + 24) = a3;
  return result;
}

uint64_t sub_1001861F4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000752B0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001862CC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = *sub_1000752B0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = a3;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v15 = *(*(v7 + 64) + 40);
    *v15 = a2;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_1001863D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v4 = *(*(sub_100068FC4(&qword_100504250, &qword_10040D610) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_100186480, 0, 0);
}

uint64_t sub_100186480()
{
  v1 = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 352);
    *(v0 + 48) = 0x4354502D4553;
    *(v0 + 56) = 0xE600000000000000;
    *(v0 + 64) = v1;
    *(v0 + 72) = v2;
    *(v0 + 80) = 1;
    v6 = *v4;
    v7 = *(v0 + 64);
    *(v0 + 88) = *(v0 + 48);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    *(v0 + 104) = v7;
    *(v0 + 120) = *(v0 + 80);
    v10 = type metadata accessor for TaskPriority();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v13 = (v12 + 16);
    *(v12 + 24) = 0;
    *(v12 + 32) = v5;
    v14 = *(v0 + 64);
    *(v12 + 40) = *(v0 + 48);
    *(v12 + 56) = v14;
    *(v12 + 72) = *(v0 + 80);
    sub_1000938D4(v9, v8, &qword_100504250, &qword_10040D610);
    v15 = (*(v11 + 48))(v8, 1, v10);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    if (v15 == 1)
    {
      sub_10018C898(v0 + 88, v0 + 128);
      sub_10018C898(v0 + 88, v0 + 168);

      sub_100075768(v16, &qword_100504250, &qword_10040D610);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      sub_10018C898(v0 + 88, v0 + 208);
      sub_10018C898(v0 + 88, v0 + 248);

      TaskPriority.rawValue.getter();
      (*(v11 + 8))(v16, v10);
      if (*v13)
      {
        v20 = *(v12 + 24);
        v21 = *v13;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }
    }

    v23 = swift_allocObject();
    *(v23 + 16) = &unk_10040C5C8;
    *(v23 + 24) = v12;

    if (v19 | v18)
    {
      v24 = v0 + 288;
      *(v0 + 288) = 0;
      *(v0 + 296) = 0;
      *(v0 + 304) = v18;
      *(v0 + 312) = v19;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(v0 + 368);
    *(v0 + 320) = 1;
    *(v0 + 328) = v24;
    *(v0 + 336) = v6;
    swift_task_create();

    sub_10018CF6C(v0 + 88);
    sub_100075768(v25, &qword_100504250, &qword_10040D610);
    sub_10018CF6C(v0 + 48);
    v26 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    v3 = sub_100068FC4(&qword_100504FC0, &qword_10040C5D8);
    *v27 = v0;
    v27[1] = sub_10018683C;
    v28 = *(v0 + 344);
    v1 = 0;
    v2 = 0;
  }

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v1, v2, v3);
}

uint64_t sub_10018683C()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100186968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[35] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper;
  return _swift_task_switch(sub_100186994, a4, 0);
}

uint64_t sub_1001869C0()
{
  v1 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100186ADC;
  v2 = swift_continuation_init();
  v0[25] = sub_100068FC4(&qword_100504F90, &qword_10040C538);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001862CC;
  v0[21] = &unk_1004C9728;
  v0[22] = v2;
  [v1 canSyncSEKeys:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100186ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_100186EFC;
  }

  else
  {
    v3 = sub_100186BEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100186BEC()
{
  v1 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 216);
  *(v0 + 312) = v1;
  if (v1 >> 60 == 15)
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_100186C30, 0, 0);
  }
}

uint64_t sub_100186C30()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[34];
  v5 = *v4;
  v6 = v4[1];
  v7 = String._bridgeToObjectiveC()();
  v0[40] = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[41] = isa;
  v0[10] = v0;
  v0[11] = sub_100186D80;
  v9 = swift_continuation_init();
  v0[25] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001E95B0;
  v0[21] = &unk_1004C9750;
  v0[22] = v9;
  [v3 syncContentsForSEView:v7 altDSID:isa completion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100186D80()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_1001870C8;
  }

  else
  {
    v3 = sub_100186E90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100186E90()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_10006A2D0(v0[38], v0[39]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100186EFC()
{
  v17 = v0;
  v1 = v0[37];
  swift_willThrow();
  v2 = v0[37];
  v3 = v0[34];
  sub_10018C898(v3, (v0 + 18));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_10018CF6C(v3);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[34];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1002FFA0C(*v6, *(v6 + 8), v16);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = v0[29];
    v8 = v0[30];
    v10 = v0[31];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1002FFA0C(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to sync view %s : %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001870C8()
{
  v21 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  swift_willThrow();
  sub_10006A2D0(v5, v3);

  v6 = v0[42];
  v7 = v0[34];
  sub_10018C898(v7, (v0 + 18));
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10018CF6C(v7);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[34];
    v11 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_1002FFA0C(*v10, *(v10 + 8), v20);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[31];
    v15 = Error.localizedDescription.getter();
    v17 = sub_1002FFA0C(v15, v16, v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to sync view %s : %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001872B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 56) = a4;
  return _swift_task_switch(sub_1001872D4, 0, 0);
}

uint64_t sub_1001872D4()
{
  v1 = *(v0 + 49);
  sub_100068FC4(&qword_100504ED0, &qword_10040C3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  *(inited + 32) = v1;
  v3 = sub_1000B3934(inited);
  *(v0 + 64) = v3;
  swift_setDeallocating();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1001873B0;
  v5 = *(v0 + 56);

  return sub_10015F214(v3);
}

uint64_t sub_1001873B0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

Swift::Int sub_1001875D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_100187654()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v5);
}

Swift::Int sub_1001876A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100187724(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {
    if (sub_10008FB4C(v2, v3, v5, v6))
    {
      return v4 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001877B8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v4 = 0x6552746E65696C63;
    v5 = 0x797265766F636572;
    if (a1 != 10)
    {
      v5 = 0x74656C65446B6C74;
    }

    if (a1 != 9)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000017;
    v7 = 0x6F6F427473726966;
    if (a1 != 7)
    {
      v7 = 0x616C417972746572;
    }

    if (a1 != 6)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6C6F686B636F7473;
    if (a1 == 4)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000012;
    if (a1 != 1)
    {
      v2 = 0xD000000000000017;
    }

    if (!a1)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10018796C()
{
  v0 = sub_1000917B0(&off_1004C3E28);
  sub_100068FC4(&qword_100504FC8, &qword_10040C5F0);
  result = swift_arrayDestroy();
  off_100504D60 = v0;
  return result;
}

uint64_t sub_1001879D0()
{
  v1[25] = v0;
  v2 = sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[29] = v5;
  *v5 = v1;
  v5[1] = sub_100187ACC;

  return sub_10016BBF8(0);
}

uint64_t sub_100187ACC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 232);
  v7 = *v3;
  v5[30] = a1;
  v5[31] = a2;

  if (v2)
  {
    v8 = v5[28];

    v9 = *(v7 + 8);

    return v9(a1);
  }

  else
  {
    v11 = v5[25];

    return _swift_task_switch(sub_100187C28, v11, 0);
  }
}

uint64_t sub_100187C28()
{
  v1 = v0[31] >> 60;
  if (v1 == 15)
  {
    v13 = v0[25] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No altDSID, reporting no peer changes", v16, 2u);
    }
  }

  else
  {
    v3 = v0[27];
    v2 = v0[28];
    v5 = v0[25];
    v4 = v0[26];
    v6 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastTrustedPeerIdentifiers;
    swift_beginAccess();
    (*(v3 + 16))(v2, v5 + v6, v4);
    UserDefaultBackedOptional.wrappedValue.getter();
    (*(v3 + 8))(v2, v4);
    v7 = v0[24];
    v0[32] = v7;
    if (v7)
    {
      v8 = v0[30];
      v9 = v0[31];
      v10 = *(v0[25] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v0[33] = isa;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_100187F44;
      v12 = swift_continuation_init();
      v0[17] = sub_100068FC4(&qword_100504F68, &unk_10040C4F8);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_100180E2C;
      v0[13] = &unk_1004C9660;
      v0[14] = v12;
      [v10 getSEPeerIdentityInfo:isa withCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v17 = v0[25] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    v14 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v14, v18);
    v21 = v0[30];
    v20 = v0[31];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v14, v18, "No stored peer identifiers", v22, 2u);
    }

    sub_10006A2D0(v21, v20);
  }

  v23 = v0[28];

  v24 = v0[1];

  return v24(v1 < 0xF);
}

uint64_t sub_100187F44()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  if (v3)
  {
    v4 = *(v1 + 256);
    v5 = *(v1 + 200);

    v6 = sub_100188294;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 200);
    v6 = sub_10018806C;
  }

  return _swift_task_switch(v6, v7, 0);
}

char *sub_10018806C()
{
  v1 = v0[33];
  v2 = v0[23];
  sub_10006A2D0(v0[21], v0[22]);

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = sub_10019F4A4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = [v7 peerIdentifier];
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_10019F4A4((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v9;
    v14[5] = v11;
  }

  while (v3 != v5);
LABEL_13:

  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[30];
  v18 = sub_1000E0074(_swiftEmptyArrayStorage);

  v19 = sub_1000E0074(v15);

  v20 = sub_100223F84(v18, v19);

  sub_10006A2D0(v17, v16);
  v21 = v0[28];

  v22 = v0[1];

  return v22((v20 & 1) == 0);
}

uint64_t sub_100188294()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 200);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to query SE peer identities: %@", v7, 0xCu);
    sub_100075768(v8, &unk_100503F70, &unk_10040B2E0);
  }

  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);

  *(v0 + 280) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v12, v11);

  v13 = *(v0 + 224);

  v14 = *(v0 + 8);

  return v14(20);
}

uint64_t sub_100188440()
{
  v1 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_ptcViewName + 8);

  v4 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  swift_unknownObjectRelease();

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_recoveryPending);

  v6 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notificationTokens);

  v7 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
  v8 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryRequiredPref;
  v10 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v12 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  v13 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v11(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__didRecoverTLK, v10);
  v11(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce, v10);
  v11(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager__disableKeySync, v10);
  v14 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastTrustedPeerIdentifiers;
  v15 = sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastDSIDCanSync;
  v17 = sub_100068FC4(&qword_100504F98, &unk_10040C540);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);

  v19 = *(v0 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100188710()
{
  sub_100188440();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SEKeySyncManager()
{
  result = qword_100504E00;
  if (!qword_100504E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188790()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    sub_100188B9C(319, &qword_100504E10, &type metadata for Int, &type metadata accessor for UserDefaultBacked);
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      sub_100188B9C(319, &qword_100506E70, &type metadata for Bool, &type metadata accessor for UserDefaultBacked);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_100188A24();
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          sub_100188B38();
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_100188B9C(319, qword_100504E38, &type metadata for Data, &type metadata accessor for UserDefaultBackedOptional);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100188A24()
{
  if (!qword_100504E18)
  {
    type metadata accessor for SESPeerIdentityData(255);
    sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
    sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
    v0 = type metadata accessor for UserDefaultBackedCodableOptional();
    if (!v1)
    {
      atomic_store(v0, &qword_100504E18);
    }
  }
}

uint64_t sub_100188AF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100188B38()
{
  if (!qword_100504E30)
  {
    sub_1000692D8(&qword_100502458, &qword_10040C1F0);
    v0 = type metadata accessor for UserDefaultBackedOptional();
    if (!v1)
    {
      atomic_store(v0, &qword_100504E30);
    }
  }
}

void sub_100188B9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100188BEC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100188C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100188CB0, 0, 0);
}

uint64_t sub_100188CB0()
{
  v7 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  (*(v0 + 24))(&v6);
  *(v3 + 16) = v6;
  OS_dispatch_semaphore.signal()();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100188D34()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100188E0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100188E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100188ED8(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100188F28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_100188F7C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100188F94(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100188FC4()
{
  result = qword_100504EC0;
  if (!qword_100504EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504EC0);
  }

  return result;
}

uint64_t sub_100189038()
{
  if (qword_100501A08 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100189104;
  v2 = *(v0 + 16);

  return sub_10015F214(v2);
}

uint64_t sub_100189104()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001891F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10018DFB8;

  return v7(a1);
}

uint64_t sub_1001892F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001893E8;

  return v7(a1);
}

uint64_t sub_1001893E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unsigned __int8 *sub_1001894E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10018CE90();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100189A78();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100189A78()
{
  v0 = String.subscript.getter();
  v4 = sub_100189AF8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100189AF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1001AC648(v9, 0);
  v12 = sub_100189C50(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100189C50(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100189E70(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100189E70(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100189E70(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100189EEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10018B888(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100189FB8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_10018A070(void *a1, uint64_t *a2)
{
  result = [a1 currentTLK];
  if (!result)
  {
    return result;
  }

  v4 = *a2;
  v5 = *(*a2 + 16);
  v41 = v4;

  v39 = v5;
  if (!v5)
  {
LABEL_65:

    return 1;
  }

  v6 = 0;
  v7 = (v41 + 48);
  while (1)
  {
    if (v6 >= *(v41 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
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
    }

    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v11 = *v7;
    v10 = v7[1];
    v13 = v7[2];
    v12 = v7[3];
    v15 = v7[4];
    v14 = v7[5];
    sub_100069E2C(v8, v9);
    v44 = v10;
    sub_100069E2C(v11, v10);
    v45 = v13;
    v46 = v12;
    sub_100069E2C(v13, v12);
    sub_100069E2C(v15, v14);
    v16 = [a1 currentTLK];
    if (!v16)
    {
      v19 = 0;
      v21 = 0xF000000000000000;
      if (v9 >> 60 == 15)
      {
LABEL_66:
        sub_100069E2C(v8, v9);

        sub_10006A2D0(v19, v21);
        sub_10006A178(v8, v9);
        sub_10006A178(v11, v10);
        sub_10006A178(v45, v46);
        sub_10006A178(v15, v14);
        return 0;
      }

      goto LABEL_13;
    }

    v42 = v15;
    v43 = v14;
    v17 = v16;
    v18 = [v16 tlkUUID];

    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v21 >> 60 == 15)
    {
      v15 = v42;
      v14 = v43;
      if (v9 >> 60 == 15)
      {
        goto LABEL_66;
      }

      goto LABEL_13;
    }

    if (v9 >> 60 == 15)
    {
      v15 = v42;
      v14 = v43;
LABEL_13:
      sub_100069E2C(v8, v9);
      sub_10006A2D0(v19, v21);
      v22 = v8;
      v23 = v9;
LABEL_14:
      sub_10006A2D0(v22, v23);
      sub_10006A178(v8, v9);
      sub_10006A178(v11, v10);
      sub_10006A178(v45, v46);
      sub_10006A178(v15, v14);
      goto LABEL_15;
    }

    v24 = v21 >> 62;
    v25 = v9 >> 62;
    v15 = v42;
    v14 = v43;
    if (v21 >> 62 == 3)
    {
      v26 = 0;
      if (!v19 && v21 == 0xC000000000000000 && v9 >> 62 == 3)
      {
        v26 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          sub_100069E2C(0, 0xC000000000000000);
          sub_10006A2D0(0, 0xC000000000000000);
          v8 = 0;
          v19 = 0;
          goto LABEL_68;
        }
      }

LABEL_34:
      if (v25 <= 1)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }

    if (v24 <= 1)
    {
      if (!v24)
      {
        v26 = BYTE6(v21);
        if (v25 <= 1)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }

      LODWORD(v26) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_75;
      }

      v26 = v26;
      goto LABEL_34;
    }

    if (v24 == 2)
    {
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_76;
      }

      goto LABEL_34;
    }

    v26 = 0;
    if (v25 <= 1)
    {
LABEL_35:
      if (v25)
      {
        LODWORD(v30) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_74;
        }

        v30 = v30;
      }

      else
      {
        v30 = BYTE6(v9);
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v25 != 2)
    {
      break;
    }

    v32 = *(v8 + 16);
    v31 = *(v8 + 24);
    v29 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (v29)
    {
      goto LABEL_73;
    }

LABEL_42:
    if (v26 != v30)
    {
      goto LABEL_48;
    }

    if (v26 < 1)
    {
      goto LABEL_67;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v33 = *(v19 + 16);
        v38 = *(v19 + 24);
        sub_100069E2C(v8, v9);
        sub_100069E2C(v8, v9);
        sub_10006A2BC(v19, v21);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v35 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v35))
          {
            goto LABEL_79;
          }

          v34 += v33 - v35;
        }

        if (__OFSUB__(v38, v33))
        {
          goto LABEL_78;
        }

        goto LABEL_60;
      }

      memset(v48, 0, 14);
      sub_100069E2C(v8, v9);
      sub_100069E2C(v8, v9);
      sub_10006A2BC(v19, v21);
    }

    else
    {
      if (v24)
      {
        if (v19 >> 32 < v19)
        {
          goto LABEL_77;
        }

        sub_100069E2C(v8, v9);
        sub_100069E2C(v8, v9);
        sub_10006A2BC(v19, v21);
        v34 = __DataStorage._bytes.getter();
        if (v34)
        {
          v36 = __DataStorage._offset.getter();
          if (__OFSUB__(v19, v36))
          {
            goto LABEL_80;
          }

          v34 += v19 - v36;
        }

LABEL_60:
        __DataStorage._length.getter();
        sub_10019F024(v34, v8, v9, v48);
        sub_10006A178(v8, v9);
        sub_10006A2D0(v19, v21);
        sub_10006A2D0(v8, v9);
        v37 = v48[0];
        goto LABEL_63;
      }

      v48[0] = v19;
      LOWORD(v48[1]) = v21;
      BYTE2(v48[1]) = BYTE2(v21);
      BYTE3(v48[1]) = BYTE3(v21);
      BYTE4(v48[1]) = BYTE4(v21);
      BYTE5(v48[1]) = BYTE5(v21);
      sub_100069E2C(v8, v9);
      sub_100069E2C(v8, v9);
      sub_10006A2BC(v19, v21);
    }

    sub_10019F024(v48, v8, v9, &v47);
    sub_10006A178(v8, v9);
    sub_10006A2D0(v19, v21);
    sub_10006A2D0(v8, v9);
    v37 = v47;
LABEL_63:
    sub_10006A2D0(v19, v21);
    sub_10006A178(v8, v9);
    sub_10006A178(v11, v44);
    sub_10006A178(v45, v46);
    sub_10006A178(v42, v43);
    if (v37)
    {
      goto LABEL_69;
    }

LABEL_15:
    ++v6;
    v7 += 9;
    if (v39 == v6)
    {
      goto LABEL_65;
    }
  }

  if (v26)
  {
LABEL_48:
    sub_100069E2C(v8, v9);
    sub_10006A2D0(v8, v9);
    v22 = v19;
    v23 = v21;
    goto LABEL_14;
  }

LABEL_67:
  sub_100069E2C(v8, v9);
  sub_10006A2D0(v8, v9);
LABEL_68:
  sub_10006A2D0(v19, v21);
  sub_10006A178(v8, v9);
  sub_10006A178(v11, v10);
  sub_10006A178(v45, v46);
  sub_10006A178(v42, v43);
LABEL_69:

  return 0;
}

uint64_t sub_10018A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = type metadata accessor for SESTLKShareData(0);
  v4[45] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_10018A7C0, v3, 0);
}

uint64_t sub_10018A7C0()
{
  v37 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = [*(v0 + 336) tlkShares];
  sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v6 = sub_10033322C(sub_10018CEE4, v5, v4);
  *(v0 + 384) = v6;

  if (v6 >> 62)
  {
    goto LABEL_11;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 392) = v7;
  if (v7)
  {
    while (1)
    {
      *(v0 + 400) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
      v8 = *(v0 + 384);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_11:
      v25 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 392) = v25;
      if (!v25)
      {
        goto LABEL_12;
      }
    }

    v9 = *(v8 + 32);
LABEL_7:
    v10 = v9;
    *(v0 + 408) = v9;
    *(v0 + 416) = 1;
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);
    v13 = type metadata accessor for PropertyListDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v16 = [v10 shareData];
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v21 = *(v0 + 368);
    v20 = *(v0 + 376);
    sub_10006A178(v17, v19);

    sub_10018CF04(v21, v20, type metadata accessor for SESTLKShareData);
    v22 = swift_task_alloc();
    *(v0 + 424) = v22;
    *v22 = v0;
    v22[1] = sub_10018AE44;
    v23 = *(v0 + 352);

    return sub_10016C130();
  }

  else
  {
LABEL_12:
    v26 = *(v0 + 352);
    v27 = *(v0 + 328);

    sub_10018C898(v27, v0 + 224);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    sub_10018CF6C(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 328);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1002FFA0C(*v30, *(v30 + 8), &v36);
      _os_log_impl(&_mh_execute_header, v28, v29, "No eligible shares for view %s", v31, 0xCu);
      sub_1000752F4(v32);
    }

    v34 = *(v0 + 368);
    v33 = *(v0 + 376);

    v35 = *(v0 + 8);

    return v35(0);
  }
}

uint64_t sub_10018AE44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v10 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v5 = v3[48];
    v6 = v3[44];

    v7 = sub_10018B7B8;
    v8 = v6;
  }

  else
  {
    v8 = v3[44];
    v7 = sub_10018AF6C;
  }

  return _swift_task_switch(v7, v8, 0);
}

id sub_10018AF6C()
{
  v60 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 376);
  v3 = v2 + *(*(v0 + 360) + 24);
  sub_1001A66F8(*(v0 + 432), *v3, *(v3 + 8), v2);
  v58 = v1;
  if (!v1)
  {
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    v25 = *(v0 + 384);
    v26 = *(v0 + 352);

    v27 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 408);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&_mh_execute_header, v28, v29, "KeySyncManager: Successfully imported TLK from %@", v31, 0xCu);
      sub_100075768(v32, &unk_100503F70, &unk_10040B2E0);
    }

    v34 = *(v0 + 432);
    v35 = *(v0 + 408);
    v36 = *(v0 + 376);

    v37 = objc_opt_self();
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(v0 + 304) = 0x726F706D496B6C74;
    *(v0 + 312) = 0xEB00000000646574;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 1;
    sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10004DC20(v37, isa);

    sub_10018CE30(v36, type metadata accessor for SESTLKShareData);
    goto LABEL_9;
  }

  v4 = *(v0 + 400);
  v5 = *(v0 + 352);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v59 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v59);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to import TLK - %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v18 = *(v0 + 376);
  v19 = *(v0 + 352);
  sub_100180988(15, 0);

  result = sub_10018CE30(v18, type metadata accessor for SESTLKShareData);
  v21 = *(v0 + 416);
  if (v21 == *(v0 + 392))
  {
    v22 = *(v0 + 384);

LABEL_9:
    v41 = *(v0 + 368);
    v40 = *(v0 + 376);

    v42 = *(v0 + 8);

    return v42(v58 == 0);
  }

  v43 = *(v0 + 384);
  if ((v43 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v21 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    result = *(v43 + 8 * v21 + 32);
  }

  v44 = result;
  *(v0 + 408) = result;
  *(v0 + 416) = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v45 = *(v0 + 360);
  v46 = *(v0 + 368);
  v47 = type metadata accessor for PropertyListDecoder();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  v50 = [v44 shareData];
  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v55 = *(v0 + 368);
  v54 = *(v0 + 376);
  sub_10006A178(v51, v53);

  sub_10018CF04(v55, v54, type metadata accessor for SESTLKShareData);
  v56 = swift_task_alloc();
  *(v0 + 424) = v56;
  *v56 = v0;
  v56[1] = sub_10018AE44;
  v57 = *(v0 + 352);

  return sub_10016C130();
}

uint64_t sub_10018B7B8()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[46];
  v4 = v0[47];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v1;

  sub_10018CE30(v4, type metadata accessor for SESTLKShareData);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_10018B888(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_100189E70(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_100189E70(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_100189E70(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10018BCF4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);

  v35 = v3;
  if (!v3)
  {
LABEL_64:

    return 0;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
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
    }

    v39[0] = *(v2 + v5);
    v6 = *(v2 + v5 + 16);
    v7 = *(v2 + v5 + 32);
    v8 = *(v2 + v5 + 48);
    v40 = *(v2 + v5 + 64);
    v39[3] = v8;
    v39[1] = v6;
    v39[2] = v7;
    v9 = *(&v39[0] + 1);
    v10 = *&v39[0];
    sub_10018C628(v39, v38);
    sub_100069E2C(v10, v9);
    v11 = [a1 currentTLK];
    if (!v11)
    {
      if (v9 >> 60 == 15)
      {
        sub_10018C684(v39);
LABEL_66:

        sub_10006A2D0(v10, v9);
        return 1;
      }

      v14 = 0;
      v16 = 0xF000000000000000;
LABEL_11:
      sub_10018C684(v39);
      goto LABEL_12;
    }

    v12 = v11;
    v13 = [v11 tlkUUID];

    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v9 >> 60 == 15)
    {
      sub_10018C684(v39);
      if (v16 >> 60 == 15)
      {
        goto LABEL_66;
      }

LABEL_12:
      sub_10006A2D0(v10, v9);
      v17 = v14;
      v18 = v16;
LABEL_13:
      sub_10006A2D0(v17, v18);
      goto LABEL_14;
    }

    if (v16 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v19 = v9 >> 62;
    v20 = v16 >> 62;
    if (v9 >> 62 == 3)
    {
      v21 = 0;
      if (!v10 && v9 == 0xC000000000000000 && v16 >> 62 == 3)
      {
        v21 = 0;
        if (!v14 && v16 == 0xC000000000000000)
        {
          sub_100069E2C(0, 0xC000000000000000);
          sub_10006A2BC(0, 0xC000000000000000);
          sub_10006A2D0(0, 0xC000000000000000);
          sub_10018C684(v39);
          sub_10006A2D0(0, 0xC000000000000000);
          sub_10006A178(0, 0xC000000000000000);
          v10 = 0;
          goto LABEL_68;
        }
      }

LABEL_33:
      if (v20 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        v21 = BYTE6(v9);
        if (v20 <= 1)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }

      LODWORD(v21) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_74;
      }

      v21 = v21;
      goto LABEL_33;
    }

    if (v19 == 2)
    {
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        goto LABEL_75;
      }

      goto LABEL_33;
    }

    v21 = 0;
    if (v20 <= 1)
    {
LABEL_34:
      if (v20)
      {
        LODWORD(v25) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_73;
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v16);
      }

      goto LABEL_41;
    }

LABEL_39:
    if (v20 != 2)
    {
      break;
    }

    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    v24 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v24)
    {
      goto LABEL_72;
    }

LABEL_41:
    if (v21 != v25)
    {
      goto LABEL_47;
    }

    if (v21 < 1)
    {
      goto LABEL_67;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v28 = *(v10 + 16);
        v34 = *(v10 + 24);
        sub_100069E2C(v10, v9);
        sub_10006A2BC(v14, v16);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(v28, v30))
          {
            goto LABEL_78;
          }

          v29 += v28 - v30;
        }

        if (__OFSUB__(v34, v28))
        {
          goto LABEL_77;
        }

        goto LABEL_59;
      }

      *&v38[6] = 0;
      *v38 = 0;
      sub_100069E2C(v10, v9);
      sub_10006A2BC(v14, v16);
    }

    else
    {
      if (v19)
      {
        if (v10 >> 32 < v10)
        {
          goto LABEL_76;
        }

        sub_100069E2C(v10, v9);
        sub_10006A2BC(v14, v16);
        v29 = __DataStorage._bytes.getter();
        if (v29)
        {
          v31 = __DataStorage._offset.getter();
          if (__OFSUB__(v10, v31))
          {
            goto LABEL_79;
          }

          v29 += v10 - v31;
        }

LABEL_59:
        __DataStorage._length.getter();
        sub_10019F024(v29, v14, v16, v38);
        sub_10018C684(v39);
        sub_10006A2D0(v14, v16);
        sub_10006A178(v10, v9);
        sub_10006A2D0(v14, v16);
        v32 = v38[0];
        goto LABEL_62;
      }

      *v38 = v10;
      *&v38[8] = v9;
      v38[10] = BYTE2(v9);
      v38[11] = BYTE3(v9);
      v38[12] = BYTE4(v9);
      v38[13] = BYTE5(v9);
      sub_100069E2C(v10, v9);
      sub_10006A2BC(v14, v16);
    }

    sub_10019F024(v38, v14, v16, &v37);
    sub_10018C684(v39);
    sub_10006A2D0(v14, v16);
    sub_10006A178(v10, v9);
    sub_10006A2D0(v14, v16);
    v32 = v37;
LABEL_62:
    sub_10006A2D0(v10, v9);
    if (v32)
    {
      goto LABEL_69;
    }

LABEL_14:
    ++v4;
    v5 += 72;
    if (v35 == v4)
    {
      goto LABEL_64;
    }
  }

  if (v21)
  {
LABEL_47:
    sub_100069E2C(v10, v9);
    sub_10006A2BC(v14, v16);
    sub_10006A2D0(v14, v16);
    sub_10018C684(v39);
    sub_10006A2D0(v14, v16);
    sub_10006A178(v10, v9);
    v17 = v10;
    v18 = v9;
    goto LABEL_13;
  }

LABEL_67:
  sub_100069E2C(v10, v9);
  sub_10006A2BC(v14, v16);
  sub_10006A2D0(v14, v16);
  sub_10018C684(v39);
  sub_10006A2D0(v14, v16);
  sub_10006A178(v10, v9);
LABEL_68:
  sub_10006A2D0(v10, v9);
LABEL_69:

  return 1;
}

uint64_t sub_10018C318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100068FC4(&qword_100504FB8, &qword_10040C598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004098F0;
  result = sub_10013044C(0xD000000000000018, 0x8000000100464E20);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v8;
    v11 = 0x4354502D4553;
    *(inited + 32) = 0x4354502D4553;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = result;
    *(inited + 56) = v8;
    *(inited + 64) = 1;
    if (a1 == 0x4354502D4553 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = 0xE600000000000000;

      sub_100069E2C(v9, v10);
      v13 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v13 = 0;
    }

    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v9;
    *(a3 + 24) = v10;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t sub_10018C518(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001872B0(a1, v4, v5, v6, v7);
}

uint64_t sub_10018C5DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 16);

  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_10018C6D8()
{
  result = qword_100504ED8;
  if (!qword_100504ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504ED8);
  }

  return result;
}

uint64_t sub_10018C72C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_100069E2C(v4, v3);
  result = sub_10006A2D0(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_10018C8D0()
{
  v1 = type metadata accessor for SESPeerIdentityData(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  sub_10006A178(*(v0 + v3), *(v0 + v3 + 8));
  sub_10006A178(*(v7 + 16), *(v7 + 24));
  sub_10006A178(*(v7 + 32), *(v7 + 40));
  sub_10006A178(*(v7 + 48), *(v7 + 56));
  v8 = *(v1 + 32);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v7 + *(v1 + 36);
  v12 = type metadata accessor for CreationMetadata(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v13 = *(v11 + 8);

    (*(v10 + 8))(v11 + v12[5], v9);
    v14 = *(v11 + v12[6] + 8);

    v15 = *(v11 + v12[7] + 8);

    v16 = *(v11 + v12[8] + 8);

    v17 = *(v11 + v12[9] + 8);
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10006A178(*(v0 + v18), *(v0 + v18 + 8));

  v21 = *(v0 + v20);

  return _swift_deallocObject(v0, v20 + 8, v2 | 7);
}

uint64_t sub_10018CB20(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for SESPeerIdentityData(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = v1[2];
  v8 = v1[4];
  v18 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = (v1 + v6);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v1 + v7);
  v15 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10012E598;

  return sub_10018485C(a1, v19, v18, v8, v9, v10, v1 + v5, v13);
}

uint64_t sub_10018CC94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10012E598;

  return sub_1001891F8(a1, v5);
}

uint64_t sub_10018CD4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018CD84()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10012E598;

  return sub_1001854EC();
}

uint64_t sub_10018CE30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10018CE90()
{
  result = qword_100504F30;
  if (!qword_100504F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504F30);
  }

  return result;
}

uint64_t sub_10018CF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018D04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10018D0EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100189018(a1, v4, v5, v6);
}

double sub_10018D1A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[4];
  *&result = sub_100160EF0(a1, v2[2], v2[3], a2).n128_u64[0];
  return result;
}

uint64_t sub_10018D1DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_100161B88();
}

uint64_t sub_10018D290(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10012E598;

  return sub_1001863D8(a1, a2, v2);
}

uint64_t sub_10018D33C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_10006A178(v0[7], v0[8]);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10018D38C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_100186968(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10018D44C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018D484(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000C288C;

  return sub_1001892F0(a1, v5);
}

void sub_10018D53C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    sub_100069E2C(a3, a4);

    v8 = a6;
  }
}

void sub_10018D59C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {

    sub_10006A178(a3, a4);
  }
}

uint64_t sub_10018D5FC(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10018D658(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_1001607B4(a1, v4, v5, v6, v7);
}

uint64_t sub_10018D71C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018D754()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_10015D4A8();
}

uint64_t sub_10018D810(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018D830()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018D868()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10018D8B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10012E598;

  return sub_10015F01C(a1, v4, v5, v7, v6);
}

uint64_t sub_10018D970()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10018D9B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10015EE24(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10018DA80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10015E1CC();
  *a1 = result;
  return result;
}

uint64_t sub_10018DAA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10018DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000C288C;

  return sub_100188C8C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10018DBCC()
{
  result = qword_100504FE8;
  if (!qword_100504FE8)
  {
    sub_10009393C(255, &qword_100504FE0, NSDictionary_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504FE8);
  }

  return result;
}

__n128 sub_10018DC90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10018DCA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10018DCEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEKeySyncManager.SyncTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEKeySyncManager.SyncTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10018DE94()
{
  result = qword_100504FF8;
  if (!qword_100504FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504FF8);
  }

  return result;
}

unint64_t sub_10018DEEC()
{
  result = qword_100505000;
  if (!qword_100505000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505000);
  }

  return result;
}

id sub_10018DFC0()
{
  result = [objc_allocWithZone(type metadata accessor for SESBootScopedStorage()) init];
  qword_10051B348 = result;
  return result;
}

id sub_10018E04C()
{
  v1 = [objc_opt_self() getBootUUID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_bootUUID];
  *v6 = v3;
  v6[1] = v5;
  v7 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_defaultSuite];
  *v7 = 0xD000000000000014;
  *(v7 + 1) = 0x8000000100461170;
  v8 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_uuidKey];
  *v8 = 1684632949;
  *(v8 + 1) = 0xE400000000000000;
  v9 = &v0[OBJC_IVAR____TtC10seserviced20SESBootScopedStorage_valueKey];
  *v9 = 0x65756C6176;
  *(v9 + 1) = 0xE500000000000000;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SESBootScopedStorage();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_10018E298()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESBootScopedStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10018E36C(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.uuidString.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10019F3C0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000937D4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018E674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_10018E884(*a1, v7);
  v10 = v9;
  if (v7 == 1)
  {
    v11 = v6 | a2;
  }

  else
  {
    v11 = a2;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6 | a2;
  }

  if (v7)
  {
    v13 = v7 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v14 = v7 != 1;
  }

  else
  {
    v14 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  v15 = sub_10018E884(v12, v13);
  v17 = v16;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_1002FFA0C(*(a3 + qword_1005048B8), *(a3 + qword_1005048B8 + 8), &v24);
    *(v20 + 12) = 2080;
    v21 = sub_1002FFA0C(v8, v10, &v24);

    *(v20 + 14) = v21;
    *(v20 + 22) = 2080;
    v22 = sub_1002FFA0C(v15, v17, &v24);

    *(v20 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "runTask scheduling for %s from %s to %s", v20, 0x20u);
    swift_arrayDestroy();
    v14 = v14;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_10018E884(uint64_t a1, char a2)
{
  if (!a2)
  {
    v2 = 0x656C756465686373;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v2 = 0x6572676F72506E69;
LABEL_5:
    v5 = v2;
    sub_1001937D0();
    v3._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v3);

    return v5;
  }

  return 0x6576697463616E69;
}

uint64_t sub_10018E968()
{
  v1 = v0[4];
  v2 = qword_1005048C0;
  v3 = qword_1005048B8;
  v0[5] = qword_1005048B0;
  v0[6] = v3;
  v4 = *(v1 + v2);
  v0[7] = v4;
  os_unfair_lock_lock(v4 + 7);
  sub_1001937A0(&v4[4], v0 + 3);
  v0[8] = 0;
  os_unfair_lock_unlock((v0[7] + 28));
  v5 = v0[3];
  v0[2] = v5;
  if (v5)
  {
    v6 = v0[4];
    v7 = *(v6 + 24);
    v12 = (*(v6 + 16) + **(v6 + 16));
    v8 = *(*(v6 + 16) + 4);
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_10018EB24;

    return v12(v0 + 2);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10018EB24()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_10018EC20, 0, 0);
}

void sub_10018EC20()
{
  v20 = v0;
  v2 = v0[4];
  v1 = v0[5];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4] + v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1002FFA0C(*v5, *(v5 + 8), &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Handler completed for %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[4];
  os_unfair_lock_lock(v8 + 7);
  sub_1001937A0(&v8[4], v0 + 3);
  if (v9)
  {
    v11 = (v0[7] + 28);

    os_unfair_lock_unlock(v11);
  }

  else
  {
    v0[8] = 0;
    os_unfair_lock_unlock((v0[7] + 28));
    v12 = v0[3];
    v0[2] = v12;
    if (v12)
    {
      v13 = v0[4];
      v14 = *(v13 + 24);
      v18 = (*(v13 + 16) + **(v13 + 16));
      v15 = *(*(v13 + 16) + 4);
      v16 = swift_task_alloc();
      v0[9] = v16;
      *v16 = v0;
      v16[1] = sub_10018EB24;

      v18(v0 + 2);
    }

    else
    {
      v17 = v0[1];

      v17();
    }
  }
}

uint64_t sub_10018EE9C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_10018E884(*a1, v5);
  v8 = v7;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  v15 = v6;
  v11 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  *v11 = 136315394;
  *(v11 + 4) = sub_1002FFA0C(*(a2 + qword_1005048B8), *(a2 + qword_1005048B8 + 8), &v16);
  *(v11 + 12) = 2080;
  v12 = sub_1002FFA0C(v15, v8, &v16);

  *(v11 + 14) = v12;
  _os_log_impl(&_mh_execute_header, v9, v10, "runTask running for %s in state %s", v11, 0x16u);
  swift_arrayDestroy();

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v5 != 1)
  {
    return 0;
  }

  *a1 = 0;
  if (v4)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

LABEL_9:
  *(a1 + 8) = v13;
  return v4;
}

id sub_10018F070()
{
  result = [objc_allocWithZone(type metadata accessor for SECNotificationListener()) init];
  qword_10051B350 = result;
  return result;
}

char *sub_10018F18C()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  __chkstk_darwin(v1);
  v75 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v65 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for Logger();
  v69 = *(v71 - 8);
  v7 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  __chkstk_darwin(v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v61 = OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue;
  sub_10006928C();
  static DispatchQoS.default.getter();
  (*(v12 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v70 = v19;
  v21 = v61;
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v62;
  *&v62[v21] = v22;
  *&v23[OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask] = 0;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v60 = 0x8000000100465290;
  v24 = v71;
  v64 = sub_1000958E4(v71, qword_100505050);
  v25 = v69;
  v63 = *(v69 + 16);
  v26 = v68;
  v63(v68, v64, v24);
  v27 = *&v23[v21];
  v28 = v65;
  *v65 = 1;
  v30 = v66;
  v29 = v67;
  (*(v66 + 104))(v28, enum case for DispatchTimeInterval.seconds(_:), v67);
  v31 = sub_100068FC4(&qword_1005051F0, &qword_10040CA40);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = &v34[*(*v34 + 136)];
  *v35 = 0;
  v35[8] = 1;
  *(v34 + 2) = 0xD000000000000017;
  *(v34 + 3) = v60;
  *(v34 + 4) = v27;
  (*(v30 + 32))(&v34[qword_100509D18], v28, v29);
  v36 = &v34[qword_100509D20];
  *v36 = sub_100191FF0;
  v36[1] = 0;
  v37 = *(v25 + 32);
  v37(&v34[qword_100509D28], v26, v24);
  *&v23[OBJC_IVAR____TtC10seserviced23SECNotificationListener_coealescer] = v34;
  v38 = ObjectType;
  v80.receiver = v23;
  v80.super_class = ObjectType;
  v39 = v27;
  v40 = objc_msgSendSuper2(&v80, "init");
  v63(v26, v64, v24);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  v42 = sub_100068FC4(&qword_1005051F8, &qword_10040CA58);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  v46 = qword_1005048C0;
  sub_100068FC4(&qword_100505200, &qword_10040CA60);
  v47 = swift_allocObject();
  *(v47 + 28) = 0;
  *(v47 + 16) = 0;
  *(v47 + 24) = 2;
  *(v45 + v46) = v47;
  v48 = (v45 + qword_1005048B8);
  *v48 = 0xD000000000000017;
  v48[1] = 0x800000010040C800;
  v37((v45 + qword_1005048B0), v26, v24);
  *(v45 + 16) = &unk_10040CA50;
  *(v45 + 24) = v41;
  v49 = *&v40[OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask];
  *&v40[OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask] = v45;
  v50 = v40;

  v51 = *&v50[OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue];
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  aBlock[4] = sub_1001936E0;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9B38;
  v53 = _Block_copy(aBlock);
  v54 = v50;
  v55 = v51;
  v56 = v70;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  v57 = v75;
  v58 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);

  (*(v76 + 8))(v57, v58);
  (*(v73 + 8))(v56, v74);

  return v54;
}

void sub_10018FA78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_100505050);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received notification %ld", v11, 0xCu);
  }

  if (a1)
  {
    sub_100192058();
    v12 = *(v2 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask);
    if (v12)
    {
      v13 = *(v12 + qword_1005048C0);

      os_unfair_lock_lock(v13 + 7);
      v14 = sub_10018E674(&v13[4], a1, v12);
      os_unfair_lock_unlock(v13 + 7);
      if (v14)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v12;

        sub_1001F9BE8(0, 0, v7, &unk_10040CA88, v16);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10018FCEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000C288C;

  return sub_1001923D8(v2);
}

void sub_10018FD80(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100505050);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting SECNotificationListener", v9, 2u);
  }

  sub_100192058();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 registerDelegate:a1 forEvent:v11];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v10 registerDelegate:a1 forEvent:v13];

  v15 = String._bridgeToObjectiveC()();
  [v10 registerDelegate:a1 forEvent:v15];

  v16 = String._bridgeToObjectiveC()();
  [v10 registerDelegate:a1 forEvent:v16];

  v17 = String._bridgeToObjectiveC()();
  [v10 registerDelegate:a1 forEvent:v17];

  v18 = String._bridgeToObjectiveC()();
  [v10 registerDelegate:a1 forEvent:v18];

  if (v12)
  {
    if (v14)
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }

LABEL_11:
    v20 = *(a1 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask);
    if (v20)
    {
      v21 = *(v20 + qword_1005048C0);
      v22 = *(a1 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_reconciliationTask);

      os_unfair_lock_lock(v21 + 7);
      v23 = sub_10018E674(&v21[4], v19, v20);
      os_unfair_lock_unlock(v21 + 7);
      if (v23)
      {
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v25[4] = v20;

        sub_1001F9BE8(0, 0, v5, &unk_10040CA70, v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v14)
  {
    v19 = 2;
    goto LABEL_11;
  }

  v29 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v29, v26, "No pending notifications", v27, 2u);
  }

  v28 = v29;
}

void sub_100190238(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100505050);
    swift_errorRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v7 = 138412546;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      swift_beginAccess();
      v11 = *(a3 + 16);

      sub_10018E36C(v12);

      v13 = Array.description.getter();
      v15 = v14;

      v16 = sub_1002FFA0C(v13, v15, &v29);

      *(v7 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error %@ encountered while deleting credentials %s", v7, 0x16u);
      sub_100075768(v8, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000958E4(v18, qword_100505050);

    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315394;
      swift_beginAccess();
      v22 = *(a3 + 16);

      sub_10018E36C(v23);

      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_1002FFA0C(v24, v26, &v29);

      *(v20 + 4) = v27;
      *(v20 + 12) = 1024;
      *(v20 + 14) = a1 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Credentials %s deleted %{BOOL}d", v20, 0x12u);
      sub_1000752F4(v21);
    }

    else
    {
    }
  }
}

void sub_100190660(uint64_t a1, unint64_t a2)
{

  v5 = sub_1001933B0(a1, a2);
  if (v6)
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000958E4(v7, qword_100505050);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1002FFA0C(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v8, "Ignoring unexpected darwin event %s", v9, 0xCu);
      sub_1000752F4(v10);
    }
  }

  else
  {
    v11 = *(v2 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_coealescer);
    sub_1001907F8(v5);
  }
}

uint64_t sub_1001907F8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1001935D0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9A98;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_100190B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_1001922C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C9A20;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

void sub_100190DF4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31[-1] - v8;
  if (a1 == 0xD000000000000019 && 0x8000000100465250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = XPC_EVENT_KEY_NAME.getter();
    string = xpc_dictionary_get_string(a3, v10);
    if (string)
    {
      v12 = string;
      v13 = String.utf8CString.getter();
      LODWORD(v12) = strcmp(v12, (v13 + 32));

      if (!v12)
      {
        if (qword_100501A28 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_1000958E4(v14, qword_100505050);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v31[0] = v18;
          *v17 = 136315138;
          *(v17 + 4) = sub_1002FFA0C(0xD000000000000016, 0x8000000100465270, v31);
          _os_log_impl(&_mh_execute_header, v15, v16, "Handling SE Content Change upon receiving %s event", v17, 0xCu);
          sub_1000752F4(v18);
        }

        if (qword_100501A20 != -1)
        {
          swift_once();
        }

        v19 = (qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_delegate);
        swift_beginAccess();
        v20 = v19[3];
        if (v20)
        {
          v21 = *sub_1000752B0(v19, v20);
          v22 = type metadata accessor for TaskPriority();
          (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
          v23 = swift_allocObject();
          v23[2] = 0;
          v23[3] = 0;
          v23[4] = v21;
          v24 = v21;
          sub_1001F9BE8(0, 0, v9, &unk_10040CA30, v23);
        }
      }
    }
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_100505050);

    v30 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1002FFA0C(a1, a2, v31);
      _os_log_impl(&_mh_execute_header, v30, v26, "Ignoring stream %s", v27, 0xCu);
      sub_1000752F4(v28);
    }

    else
    {
      v29 = v30;
    }
  }
}

BOOL sub_10019131C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10019134C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100191378@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100191464@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10024F2A4();

  *a1 = v2;
  return result;
}

unint64_t sub_100191558()
{
  result = qword_100505170;
  if (!qword_100505170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505170);
  }

  return result;
}

unint64_t sub_1001915B0()
{
  result = qword_100505178;
  if (!qword_100505178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505178);
  }

  return result;
}

unint64_t sub_100191608()
{
  result = qword_100505180;
  if (!qword_100505180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505180);
  }

  return result;
}

unint64_t sub_100191660()
{
  result = qword_100505188;
  if (!qword_100505188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505188);
  }

  return result;
}

uint64_t sub_1001916B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100505050);
  sub_1000958E4(v0, qword_100505050);
  return Logger.init(subsystem:category:)();
}

void sub_100191734(void (*a1)(void, void))
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v39 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2[4];
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v40 = v4;
    v41 = v3;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v39[1] = v22;
    if (v26)
    {
      v27 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_1002FFA0C(v2[2], v2[3], aBlock);
      *(v27 + 12) = 2080;
      v28 = *(v2 + *(*v2 + 136) + 8);

      if (v28)
      {
        v29 = 1819047278;
      }

      else
      {
        v29 = 0x676E6974696177;
      }

      if (v28)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE700000000000000;
      }

      v31 = sub_1002FFA0C(v29, v30, aBlock);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Notify for client %s in state %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v32 = v2 + *(*v2 + 136);
    if (v32[8] == 1)
    {
      *v32 = v48;
      v32[8] = 0;
      static DispatchTime.now()();
      DispatchTime.advanced(by:)();
      v48 = *(v42 + 8);
      v33 = v13;
      v34 = v43;
      (v48)(v33, v43);
      aBlock[4] = sub_1001935F8;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C9AC0;
      v35 = _Block_copy(aBlock);

      v36 = v44;
      static DispatchQoS.unspecified.getter();
      v49 = _swiftEmptyArrayStorage;
      sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
      v37 = v46;
      v38 = v41;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v35);
      (*(v40 + 8))(v37, v38);
      (*(v45 + 8))(v36, v47);
      (v48)(v15, v34);
    }

    else
    {
      *v32 |= v48;
      v32[8] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100191D70()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[4];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1002FFA0C(v1[2], v1[3], &v17);
      _os_log_impl(&_mh_execute_header, v9, v10, "Firing %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    v13 = v1 + *(*v1 + 136);
    if ((v13[8] & 1) == 0)
    {
      v17 = *v13;
      v14 = *(v1 + qword_100509D20 + 8);
      result = (*(v1 + qword_100509D20))(&v17);
      *v13 = 0;
      v13[8] = 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100191FF0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_100501A20 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  sub_10018FA78(v1);
}

uint64_t sub_100192058()
{
  v0 = type metadata accessor for SECDefaultAppReconciler();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_allocWithZone(type metadata accessor for TCCContext()) init];
  *v4 = v5;
  v6 = *(v1 + 28);
  v7 = v5;
  Logger.init(subsystem:category:)();
  sub_100278B3C();
  v8 = type metadata accessor for SECSettingsPaneReconciler();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v11 + 16) = v7;
  *(v11 + 24) = sub_100328518();
  sub_1001B2A18();
  swift_setDeallocating();

  v12 = *(v11 + 24);

  v13 = OBJC_IVAR____TtC10seserviced25SECSettingsPaneReconciler_logger;
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 8))(v11 + v13, v14);
  v15 = *(*v11 + 48);
  v16 = *(*v11 + 52);
  swift_deallocClassInstance();
  return sub_100192224(v4);
}

uint64_t sub_100192224(uint64_t a1)
{
  v2 = type metadata accessor for SECDefaultAppReconciler();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192280()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001922CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001922E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100192324()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10012E598;

  return sub_100218BFC();
}

uint64_t sub_1001923F8()
{
  v26 = v0;
  v1 = v0[12];
  v2 = swift_allocObject();
  v0[13] = v2;
  *(v2 + 16) = &_swiftEmptySetSingleton;
  if (v1)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_1001927F8;

    return sub_10032AD34();
  }

  else if ((v1 & 2) != 0)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v18 = swift_task_alloc();
    v0[17] = v18;
    *v18 = v0;
    v18[1] = sub_100192C5C;

    return sub_10032B4E4();
  }

  else
  {
    if (qword_100501A28 != -1)
    {
      swift_once();
      v24 = v0[13];
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_100505050);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[13];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      swift_beginAccess();
      v10 = *(v7 + 16);

      sub_10018E36C(v11);

      v12 = Array.description.getter();
      v14 = v13;

      v15 = sub_1002FFA0C(v12, v14, &v25);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "All credentials to MFD %s", v8, 0xCu);
      sub_1000752F4(v9);
    }

    else
    {
    }

    v19 = v0[13];
    swift_beginAccess();
    v20 = v0[13];
    if (*(*(v19 + 16) + 16))
    {
      type metadata accessor for SECServer();

      sub_100143E08(v21, 0, sub_10019385C, v20);
    }

    else
    {
      v22 = v0[13];
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1001927F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_100193010;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_100192920;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100192920()
{
  v25 = v0;
  v1 = *(v0 + 104) + 16;
  sub_1002A3450(*(v0 + 128));
  if ((*(v0 + 96) & 2) != 0)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_100192C5C;

    return sub_10032B4E4();
  }

  else
  {
    v2 = *(v0 + 120);
    if (qword_100501A28 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 104);
    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_100505050);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 104);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      swift_beginAccess();
      v11 = *(v8 + 16);

      sub_10018E36C(v12);

      v13 = Array.description.getter();
      v15 = v14;

      v16 = sub_1002FFA0C(v13, v15, &v24);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "All credentials to MFD %s", v9, 0xCu);
      sub_1000752F4(v10);
    }

    else
    {
    }

    v19 = *(v0 + 104);
    swift_beginAccess();
    v20 = *(v0 + 104);
    if (*(*(v19 + 16) + 16))
    {
      type metadata accessor for SECServer();

      sub_100143E08(v21, 0, sub_10019385C, v20);
    }

    else
    {
      v22 = *(v0 + 104);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100192C5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1001931E0;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_100192D84;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100192D84()
{
  v24 = v0;
  v1 = v0[13] + 16;
  sub_1002A3450(v0[19]);
  v2 = v0[18];
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100505050);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_beginAccess();
    v11 = *(v8 + 16);

    sub_10018E36C(v12);

    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_1002FFA0C(v13, v15, &v23);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "All credentials to MFD %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  else
  {
  }

  v17 = v0[13];
  swift_beginAccess();
  v18 = v0[13];
  if (*(*(v17 + 16) + 16))
  {
    type metadata accessor for SECServer();

    sub_100143E08(v19, 0, sub_10019385C, v18);
  }

  else
  {
    v20 = v0[13];
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100193010()
{
  v18 = v0;
  v1 = v0[15];
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100505050);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %s encountered when handling pending notifications", v7, 0xCu);
    sub_1000752F4(v8);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001931E0()
{
  v18 = v0;
  v1 = v0[18];
  if (qword_100501A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_100505050);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error %s encountered when handling pending notifications", v7, 0xCu);
    sub_1000752F4(v8);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001933B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x8000000100465300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 1;
LABEL_5:

    return v4;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000100465330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002ELL && 0x8000000100465350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002FLL && 0x8000000100465380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 8;
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000030 && 0x80000001004653B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (a1 == 0xD00000000000002FLL && 0x80000001004653F0 == a2)
  {
    v4 = 32;
    goto LABEL_5;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100193598()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001935D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_100191734(v1);
}

uint64_t sub_10019360C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10012E598;

  return sub_10018FCEC(a1);
}

uint64_t sub_1001936A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001936EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10012E598;

  return sub_10018E948(a1, v4, v5, v6);
}

uint64_t sub_1001937A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10018EE9C(a1, v2);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001937D0()
{
  result = qword_100505208;
  if (!qword_100505208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505208);
  }

  return result;
}

uint64_t sub_100193824()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100193864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001938A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C288C;

  return sub_10018E948(a1, v4, v5, v6);
}

uint64_t sub_100193978(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void sub_1001939C8(int a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v59) = a1;
  v5 = type metadata accessor for UUID();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v54 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v57 = v53 - v10;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v55 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v53 - v16;
  __chkstk_darwin(v15);
  v19 = v53 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v25 = qword_10051B7F0;
  *v24 = qword_10051B7F0;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v27 = *(v3 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
  v28 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v29 = Logger.logObject.getter();
  if (v27 == 1)
  {
    v53[1] = v28;
    v56 = a2;
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Queuing SE request", v31, 2u);
    }

    if ((v59 & 1) == 0 || (v32 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, swift_beginAccess(), sub_1000938D4(v3 + v32, v19, &unk_10050BE80, &unk_10040B360), v59 = *(v58 + 48), v33 = v59(v19, 1, v5), sub_100075768(v19, &unk_10050BE80, &unk_10040B360), v33 == 1))
    {
LABEL_9:
      v34 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v3 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_10:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        sub_100197634();
        return;
      }

LABEL_29:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_10;
    }

    v37 = *(v56 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    if (v37)
    {
      v38 = v58;
      (*(v58 + 16))(v17, v37 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v5);
      v39 = 0;
      v40 = v57;
    }

    else
    {
      v39 = 1;
      v40 = v57;
      v38 = v58;
    }

    (*(v38 + 56))(v17, v39, 1, v5);
    v41 = *(v8 + 48);
    sub_1000938D4(v17, v40, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v3 + v32, v40 + v41, &unk_10050BE80, &unk_10040B360);
    v42 = v59;
    if (v59(v40, 1, v5) == 1)
    {
      sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
      if (v42(v40 + v41, 1, v5) == 1)
      {
        sub_100075768(v40, &unk_10050BE80, &unk_10040B360);
        goto LABEL_9;
      }
    }

    else
    {
      v43 = v55;
      sub_1000938D4(v40, v55, &unk_10050BE80, &unk_10040B360);
      if (v42(v40 + v41, 1, v5) != 1)
      {
        v48 = v58;
        v49 = v40 + v41;
        v50 = v54;
        (*(v58 + 32))(v54, v49, v5);
        sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        v52 = *(v48 + 8);
        v52(v50, v5);
        sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
        v52(v43, v5);
        sub_100075768(v40, &unk_10050BE80, &unk_10040B360);
        if (v51)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }

      sub_100075768(v17, &unk_10050BE80, &unk_10040B360);
      (*(v58 + 8))(v43, v5);
    }

    sub_100075768(v40, &qword_1005031D0, &unk_100413B20);
LABEL_23:
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "SE is busy for another client", v46, 2u);
    }

    v47 = *(v56 + 40);
    (*(v56 + 32))(3, 1);
    return;
  }

  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v29, v35, "Not running", v36, 2u);
  }
}

void sub_1001941C0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v22 = OBJC_IVAR____TtC10seserviced5DSKSE_isRunning;
    v23 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
    v24 = Logger.logObject.getter();
    if (v23)
    {
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "DSKSE is already running", v26, 2u);
      }
    }

    else
    {
      v27 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v27, "Starting DSKSE", v28, 2u);
      }

      *(v1 + v22) = 1;
      sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
      (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v8);
      DispatchQoS.init(qosClass:relativePriority:)();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001A1F6C(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100068FC4(&unk_100501E60, &qword_100408C30);
      sub_1001A1FB4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v35 + 104))(v34, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
      v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v30 = objc_allocWithZone(SESTimer);
      aBlock[4] = sub_1001A2018;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C9D70;
      v31 = _Block_copy(aBlock);

      v32 = sub_1003AE50C(v30, v29, v31);

      _Block_release(v31);

      v24 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
      *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = v32;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100194774(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v69 = &v62 - v9;
  v10 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v68 = &v62 - v15;
  v16 = __chkstk_darwin(v14);
  v70 = &v62 - v17;
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = (&v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v25 = qword_10051B7F0;
  *v24 = qword_10051B7F0;
  v26 = v21[13];
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v74 = v26;
  v26(v24);
  v72 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v73 = v21[1];
  v73(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning) != 1)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_12:

      return;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Not running";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

    goto LABEL_12;
  }

  if (a1)
  {

    sub_1001990A4(v27);

    v66 = (v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
    if (!*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle))
    {
      return;
    }

    v28 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    swift_beginAccess();
    v63 = v28;
    sub_1000938D4(v2 + v28, v19, &unk_10050BE80, &unk_10040B360);
    v64 = *(v76 + 48);
    v29 = v64(v19, 1, v4);
    v65 = v4;
    v30 = v29;
    sub_100075768(v19, &unk_10050BE80, &unk_10040B360);
    if (v30 == 1)
    {
      v4 = v65;
      goto LABEL_14;
    }

    v48 = v76;
    v49 = a1 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v50 = v70;
    v51 = v65;
    (*(v76 + 16))(v70, v49, v65);
    (*(v48 + 56))(v50, 0, 1, v51);
    v52 = *(v7 + 48);
    v53 = v69;
    sub_1000938D4(v50, v69, &unk_10050BE80, &unk_10040B360);
    v54 = v2 + v63;
    v63 = v52;
    sub_1000938D4(v54, v53 + v52, &unk_10050BE80, &unk_10040B360);
    v55 = v64(v53, 1, v51);
    v56 = v76;
    if (v55 == 1)
    {
      sub_100075768(v50, &unk_10050BE80, &unk_10040B360);
      v4 = v65;
      if (v64((v53 + v63), 1, v65) == 1)
      {
        sub_100075768(v53, &unk_10050BE80, &unk_10040B360);
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    v57 = v68;
    sub_1000938D4(v53, v68, &unk_10050BE80, &unk_10040B360);
    v58 = v63;
    if (v64((v53 + v63), 1, v65) == 1)
    {
      sub_100075768(v70, &unk_10050BE80, &unk_10040B360);
      (*(v56 + 8))(v57, v65);
LABEL_30:
      sub_100075768(v53, &qword_1005031D0, &unk_100413B20);
LABEL_31:
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_12;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Not releasing SE because the client is not the owner";
      goto LABEL_11;
    }

    v59 = v67;
    v60 = v65;
    (*(v56 + 32))(v67, v53 + v58, v65);
    sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
    LODWORD(v64) = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = *(v56 + 8);
    v61(v59, v60);
    sub_100075768(v70, &unk_10050BE80, &unk_10040B360);
    v61(v68, v60);
    sub_100075768(v53, &unk_10050BE80, &unk_10040B360);
    v4 = v60;
    if ((v64 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v66 = (v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
    if (!*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle))
    {
      return;
    }
  }

LABEL_14:
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Releasing the SE", v37, 2u);
  }

  v38 = v72;
  *v24 = v72;
  v74(v24, v75, v20);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v73(v24, v20);
  v40 = v76;
  if ((v38 & 1) == 0)
  {
    goto LABEL_36;
  }

  v41 = *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v41)
  {
    v42 = v41;
    if (sub_1003AE7DC(v42))
    {
      sub_1003AE754(v42);
    }
  }

  v43 = *v66;
  *v66 = 0;

  v44 = *(v40 + 56);
  v45 = v71;
  v44(v71, 1, 1, v4);
  v46 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v45, v2 + v46);
  swift_endAccess();
  v44(v45, 1, 1, v4);
  v47 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v45, v2 + v47);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (*(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) == 1)
  {
    *(v2 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
    sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
  }

  sub_100197634();
}