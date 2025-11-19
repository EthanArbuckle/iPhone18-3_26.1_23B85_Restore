uint64_t sub_10016F9D4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 616) = v3;
  v4 = *(v1 + 576);
  if (v3)
  {
    v5 = sub_100170B48;
  }

  else
  {
    v5 = sub_10016FAF4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10016FAF4()
{
  v56 = v0;
  v1 = v0[76];
  v2 = v0[72];
  v3 = v0[50];
  v4 = v0[51];
  v0[78] = v3;
  v0[79] = v4;
  v5 = v0[52];
  v0[80] = v5;

  v0[81] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;

  sub_10006A2BC(v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_10006A2D0(v3, v4);
  v8 = v4 >> 60;
  if (os_log_type_enabled(v6, v7))
  {
    v51 = v7;
    v9 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v9 = 136315394;
    if (v4 >> 60 == 15)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      sub_100069E2C(v3, v4);
      sub_100288640(4, v3, v4, &v54);
      v48 = v55;
      v49 = v54;
      v0[68] = sub_100288788(v54, v55);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v10 = BidirectionalCollection<>.joined(separator:)();
      v11 = v12;
      sub_10006A178(v49, v48);
      v8 = v4 >> 60;
    }

    v0[62] = v10;
    v0[63] = v11;
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v13 = String.init<A>(describing:)();
    v15 = sub_1002FFA0C(v13, v14, &v53);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    if (v5 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v6, v51, "Got local KC peer identifier %s and %ld other peers", v9, 0x16u);
    sub_1000752F4(v50);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v0[82] = 0;
  v17 = v0[71];
  v18 = *v17;
  v0[83] = *v17;
  v19 = v17[1];
  v0[84] = v19;
  if (v8 <= 0xE)
  {
    if (v19 >> 60 != 15)
    {
      sub_10006A2BC(v3, v4);
      sub_100069E2C(v18, v19);
      sub_10006A2BC(v3, v4);
      sub_100069E2C(v18, v19);
      v29 = sub_10008FB4C(v3, v4, v18, v19);
      sub_10006A178(v18, v19);
      sub_10006A2D0(v3, v4);
      sub_10006A2D0(v18, v19);
      sub_10006A2D0(v3, v4);
      if (v29)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v19 >> 60 == 15)
  {
    sub_100069E2C(v18, v19);
LABEL_16:
    sub_10006A2D0(v3, v4);
    v30 = v0[80];
    v31 = v0[74];

    v32 = v0[1];

    return v32(v30);
  }

  sub_10006A2BC(v3, v4);
  sub_100069E2C(v18, v19);
  sub_10006A2D0(v3, v4);
  sub_10006A2D0(v18, v19);
  if (v8 <= 0xE)
  {
LABEL_19:
    v40 = v0 + 18;
    v34 = v0[75];
    v35 = v0[70];
    v36 = v0[69];
    sub_100069E2C(v3, v4);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[85] = isa;
    v38 = Data._bridgeToObjectiveC()().super.isa;
    v0[86] = v38;
    v0[18] = v0;
    v0[19] = sub_10017024C;
    v39 = swift_continuation_init();
    v0[49] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1001E95B0;
    v0[45] = &unk_1004C9598;
    v0[46] = v39;
    [v34 removeLocalSEPeerIdentity:isa altDSID:v38 completion:v0 + 42];
    goto LABEL_20;
  }

  v20 = v0[73];
  v21 = v0[71];
  v22 = Data._bridgeToObjectiveC()().super.isa;
  v23 = type metadata accessor for PropertyListEncoder();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;

  v40 = v0 + 10;
  v52 = v0[75];
  v41 = v0[70];
  v42 = v0[69];
  v43 = objc_opt_self();
  v44 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v26, v28);
  v45 = [v43 withPeerIdentifier:v22 peerData:v44];
  v0[88] = v45;

  v46 = Data._bridgeToObjectiveC()().super.isa;
  v0[89] = v46;
  v0[10] = v0;
  v0[11] = sub_100170814;
  v47 = swift_continuation_init();
  v0[41] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_1001E95B0;
  v0[37] = &unk_1004C9570;
  v0[38] = v47;
  [v52 addLocalSEPeerIdentity:v45 altDSID:v46 completion:v0 + 34];
LABEL_20:

  return _swift_continuation_await(v40);
}

uint64_t sub_10017024C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 696) = v3;
  if (v3)
  {
    v4 = v1[80];
    v5 = v1[72];
    sub_10006A2D0(v1[78], v1[79]);

    v6 = sub_100170D04;
    v7 = v5;
  }

  else
  {
    v7 = v1[72];
    v6 = sub_100170384;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100170384()
{
  v50 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 576);

  sub_100069E2C(v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_10006A2D0(v4, v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 656);
    v44 = v7;
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v41 = v10;
    v42 = v9;
    v45 = *(v0 + 568);
    v11 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47 = v43;
    *v11 = 136315138;
    sub_100069E2C(v10, v9);
    sub_100288640(4, v10, v9, &v48);
    v13 = v48;
    v12 = v49;
    *(v0 + 536) = sub_100288788(v48, v49);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;
    sub_10006A178(v13, v12);

    v17 = sub_1002FFA0C(v14, v16, &v47);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v44, "Removed local SE Peer Identifier %s)", v11, 0xCu);
    sub_1000752F4(v43);

    sub_10006A2D0(v41, v42);

    v19 = v45;
    v18 = v45 + 1;
  }

  else
  {
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);

    sub_10006A2D0(v21, v20);
    v18 = (v0 + 672);
    v19 = (v0 + 664);
    v8 = *(v0 + 656);
  }

  v22 = *v19;
  v23 = *v18;
  v24 = *(v0 + 584);
  v25 = *(v0 + 568);
  v26.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v27 = type metadata accessor for PropertyListEncoder();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData);
  v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v32 = v31;

  if (v8)
  {

    return swift_unexpectedError();
  }

  else
  {
    v46 = *(v0 + 600);
    v34 = *(v0 + 560);
    v35 = *(v0 + 552);
    v36 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v30, v32);
    v38 = [v36 withPeerIdentifier:v26.super.isa peerData:isa];
    *(v0 + 704) = v38;

    v39 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 712) = v39;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_100170814;
    v40 = swift_continuation_init();
    *(v0 + 328) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1001E95B0;
    *(v0 + 296) = &unk_1004C9570;
    *(v0 + 304) = v40;
    [v46 addLocalSEPeerIdentity:v38 altDSID:v39 completion:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100170814()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 720) = v3;
  if (v3)
  {
    v4 = *(v1 + 640);
    v5 = *(v1 + 576);

    v6 = sub_100170ED8;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 576);
    v6 = sub_10017093C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10017093C()
{
  v24 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);

  sub_10018D04C(v4, v2, type metadata accessor for SESPeerIdentityData);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 704);
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);
  v11 = *(v0 + 592);
  if (v7)
  {
    v22 = *(v0 + 704);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_100289B6C(v13);
    v16 = v15;
    sub_10018CE30(v11, type metadata accessor for SESPeerIdentityData);
    v17 = sub_1002FFA0C(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "KeySyncManager: Added identity to Keychain Successfully : %s", v12, 0xCu);
    sub_1000752F4(v13);

    sub_10006A2D0(v10, v9);
  }

  else
  {
    sub_10006A2D0(*(v0 + 624), *(v0 + 632));

    sub_10018CE30(v11, type metadata accessor for SESPeerIdentityData);
  }

  v18 = *(v0 + 640);
  v19 = *(v0 + 592);

  v20 = *(v0 + 8);

  return v20(v18);
}

uint64_t sub_100170B48()
{
  v20 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 576);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 616);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 424);
    v9 = *(v0 + 432);
    v11 = *(v0 + 440);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1002FFA0C(v12, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get SE Peer Identity Info %s", v7, 0xCu);
    sub_1000752F4(v8);
  }

  v15 = *(v0 + 616);
  *(v0 + 728) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v16 = *(v0 + 592);

  v17 = *(v0 + 8);

  return v17(20);
}

uint64_t sub_100170D04()
{
  v24 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 648);
  v5 = *(v0 + 576);
  swift_willThrow();

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 696);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 472);
    v11 = *(v0 + 480);
    v13 = *(v0 + 488);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v23);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove local SE Peer Identifier %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = *(v0 + 696);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  *(v0 + 730) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v19, v18);

  v20 = *(v0 + 592);

  v21 = *(v0 + 8);

  return v21(20);
}

uint64_t sub_100170ED8()
{
  v24 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 648);
  v4 = *(v0 + 576);
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 720);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    v12 = *(v0 + 464);
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to add local SE Peer Identity %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v16 = *(v0 + 720);
  v17 = *(v0 + 704);
  v18 = *(v0 + 632);
  v19 = *(v0 + 624);
  *(v0 + 729) = 21;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  sub_10006A2D0(v19, v18);
  v20 = *(v0 + 592);

  v21 = *(v0 + 8);

  return v21(21);
}

uint64_t sub_1001710AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[45] = v5;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  v7 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v6[46] = v7;
  v8 = *(v7 - 8);
  v6[47] = v8;
  v9 = *(v8 + 64) + 15;
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_100171180, v5, 0);
}

uint64_t sub_100171180()
{
  v45 = v0;
  v1 = [*(v0 + 328) currentTLK];
  *(v0 + 392) = v1;
  v2 = *(v0 + 360);
  v3 = *(v0 + 320);
  if (v1)
  {
    v4 = v1;
    v6 = *v3;
    v5 = v3[1];
    v7 = [v1 tlkUUID];
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_1001F5640(v6, v5);
    sub_10006A178(v8, v10);
    sub_10018C898(v3, v0 + 184);
    v11 = v4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    sub_10018CF6C(v3);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v5;
      v17 = v6;
      v18 = swift_slowAlloc();
      v44 = v18;
      *v14 = 136315394;
      *(v14 + 4) = sub_1002FFA0C(v17, v16, &v44);
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v4;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "View %s already has TLK %@", v14, 0x16u);
      sub_100075768(v15, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v18);
      v6 = v17;
      v5 = v16;
    }

    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v24 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    (*(v21 + 16))(v20, v23 + v24, v22);
    UserDefaultBacked.wrappedValue.getter();
    (*(v21 + 8))(v20, v22);
    if (*(v0 + 178) == 1)
    {
      v25 = *(v0 + 320);
      sub_10018C898(v25, v0 + 224);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      sub_10018CF6C(v25);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1002FFA0C(v6, v5, &v44);
        _os_log_impl(&_mh_execute_header, v26, v27, "Forcibly deleting TLK for %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      v30 = swift_task_alloc();
      *(v0 + 400) = v30;
      *v30 = v0;
      v30[1] = sub_1001716E8;
      v31 = *(v0 + 360);

      return sub_10016C130();
    }

    else
    {

      v42 = *(v0 + 384);

      v43 = *(v0 + 8);

      return v43(0);
    }
  }

  else
  {
    *(v0 + 424) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    sub_10018C898(v3, v0 + 144);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    sub_10018CF6C(v3);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 320);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1002FFA0C(*v35, *(v35 + 8), &v44);
      _os_log_impl(&_mh_execute_header, v33, v34, "Creating TLK and self share for view %s", v36, 0xCu);
      sub_1000752F4(v37);
    }

    v38 = swift_task_alloc();
    *(v0 + 432) = v38;
    *v38 = v0;
    v38[1] = sub_1001718FC;
    v39 = *(v0 + 360);
    v40 = *(v0 + 336);
    v41 = *(v0 + 320);

    return sub_1001810DC(v41, v40);
  }
}

uint64_t sub_1001716E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 416) = v1;

  v7 = *(v3 + 360);
  if (v1)
  {
    v8 = sub_100171D70;
  }

  else
  {
    v8 = sub_10017181C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10017181C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = [*(v0 + 392) tlkUUID];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1001A4668(v2, v4, v6);
  v7 = *(v0 + 408);
  v8 = *(v0 + 392);
  if (v1)
  {
  }

  sub_10006A178(v4, v6);
  v9 = *(v0 + 384);

  v10 = *(v0 + 8);

  return v10(1);
}

uint64_t sub_1001718FC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 432);
  v7 = *v3;
  v5[55] = a1;
  v5[56] = a2;

  if (v2)
  {
    v8 = v5[48];

    v9 = *(v7 + 8);

    return v9(a1);
  }

  else
  {
    v11 = v5[45];

    return _swift_task_switch(sub_100171A58, v11, 0);
  }
}

uint64_t sub_100171A58()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[44];
  v4 = v0[43];
  v5 = v0[40];
  v6 = *(v0[45] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v7 = *v5;
  v8 = v5[1];
  v9 = String._bridgeToObjectiveC()();
  v0[57] = v9;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[58] = isa;
  v0[2] = v0;
  v0[3] = sub_100171BC8;
  v11 = swift_continuation_init();
  v0[17] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001E95B0;
  v0[13] = &unk_1004C9520;
  v0[14] = v11;
  [v6 proposeTLKForView:v9 record:v2 selfShare:v1 altDSID:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100171BC8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 472) = v3;
  v4 = *(v1 + 360);
  if (v3)
  {
    v5 = sub_100171DE4;
  }

  else
  {
    v5 = sub_100171CE8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100171CE8()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);

  v4 = *(v0 + 384);

  v5 = *(v0 + 8);

  return v5(1);
}

uint64_t sub_100171D70()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 408);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100171DE4()
{
  v24 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 456);
  v4 = *(v0 + 424);
  v5 = *(v0 + 360);
  swift_willThrow();

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 472);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 280);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v23);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to propose TLK : %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = *(v0 + 472);
  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  *(v0 + 177) = 22;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v20 = *(v0 + 384);

  v21 = *(v0 + 8);

  return v21(22);
}

uint64_t sub_100171FB0(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;

  return _swift_task_switch(sub_100172044, v2, 0);
}

uint64_t sub_100172044(__n128 a1)
{
  v205 = v1;
  v2 = *(v1[40] + 16);
  v1[43] = v2;
  if (!v2)
  {
LABEL_290:
    v156 = v1[1];

    return v156(0);
  }

  v3 = 0;
  v200 = v1 + 19;
  v182 = v1 + 34;
  v1[44] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  a1.n128_u64[0] = 136315138;
  v176 = a1;
  v4 = &selRef_retrievePeripheralsWithIdentifiers_;
  while (1)
  {
    v1[45] = v3;
    v5 = (v1[40] + 48 * v3);
    v6 = v5[4];
    v7 = v5[5];
    v1[46] = v7;
    v8 = v5[6];
    v1[47] = v8;
    v9 = v5[7];
    v1[48] = v9;
    v10 = v5[9];
    v1[49] = v10;

    sub_100069E2C(v8, v9);
    v186 = v10;
    v11 = [v186 currentTLK];
    v1[50] = v11;
    v195 = v11;
    if (!v11)
    {
      v147 = v1[44];
      v148 = v1[42];

      sub_100069E2C(v8, v9);
      v149 = Logger.logObject.getter();
      v150 = v8;
      v151 = static os_log_type_t.error.getter();

      sub_10006A178(v150, v9);
      if (os_log_type_enabled(v149, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v204[0] = v153;
        *v152 = v176.n128_u32[0];

        v154 = sub_1002FFA0C(v6, v7, v204);

        *(v152 + 4) = v154;
        _os_log_impl(&_mh_execute_header, v149, v151, "View %s doesn't have a TLK?", v152, 0xCu);
        sub_1000752F4(v153);

        sub_10006A178(v150, v9);
      }

      else
      {

        sub_10006A178(v150, v9);
      }

      v1 = v199;
      goto LABEL_5;
    }

    v194 = *(v1[41] + 16);
    if (v194)
    {
      v12 = 0;
      v190 = _swiftEmptyArrayStorage;
      v191 = v8;
      v192 = v9;
      while (1)
      {
        v198 = v12;
        v15 = v1[41] + 72 * v12;
        *(v1 + 5) = *(v15 + 32);
        v17 = *(v15 + 64);
        v16 = *(v15 + 80);
        v18 = *(v15 + 48);
        *(v1 + 144) = *(v15 + 96);
        *(v1 + 7) = v17;
        *(v1 + 8) = v16;
        *(v1 + 6) = v18;
        v20 = v1[10];
        v19 = v1[11];
        sub_10018C628((v1 + 10), v200);
        v21 = [v195 v4[105]];
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v201 = v20;
        v202 = v19;
        v25 = v19 >> 62;
        v26 = v24 >> 62;
        if (v19 >> 62 == 3)
        {
          v27 = 0;
          if (!v20 && v19 == 0xC000000000000000 && v24 >> 62 == 3)
          {
            v27 = 0;
            if (!v22 && v24 == 0xC000000000000000)
            {
              v1 = v199;
              sub_10018C684(v199 + 80);
              v13 = 0;
              v14 = 0xC000000000000000;
LABEL_10:
              sub_10006A178(v13, v14);
LABEL_11:
              v4 = &selRef_retrievePeripheralsWithIdentifiers_;
LABEL_12:
              v9 = v192;
              goto LABEL_13;
            }
          }
        }

        else if (v25 > 1)
        {
          if (v25 == 2)
          {
            v29 = *(v20 + 16);
            v28 = *(v20 + 24);
            v30 = __OFSUB__(v28, v29);
            v27 = v28 - v29;
            if (v30)
            {
              goto LABEL_317;
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else if (v25)
        {
          LODWORD(v27) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_316;
          }

          v27 = v27;
        }

        else
        {
          v27 = BYTE6(v19);
        }

        v203 = v19 >> 62;
        if (v26 > 1)
        {
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_9:
              v1 = v199;
              sub_10018C684(v199 + 80);
              v13 = v22;
              v14 = v24;
              goto LABEL_10;
            }

LABEL_52:
            sub_10006A178(v22, v24);
            v40 = v20;
            goto LABEL_53;
          }

          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          v30 = __OFSUB__(v31, v32);
          v33 = v31 - v32;
          if (v30)
          {
            goto LABEL_308;
          }

          if (v27 != v33)
          {
            goto LABEL_52;
          }
        }

        else if (v26)
        {
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_307;
          }

          if (v27 != HIDWORD(v22) - v22)
          {
            goto LABEL_52;
          }
        }

        else if (v27 != BYTE6(v24))
        {
          goto LABEL_52;
        }

        if (v27 < 1)
        {
          goto LABEL_9;
        }

        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v97 = *(v20 + 16);
            v98 = __DataStorage._bytes.getter();
            if (v98)
            {
              v99 = __DataStorage._offset.getter();
              if (__OFSUB__(v97, v99))
              {
                goto LABEL_324;
              }

              v98 += v97 - v99;
            }

            __DataStorage._length.getter();
            v8 = v191;
            if (v26 == 2)
            {
              v127 = *(v22 + 16);
              v128 = *(v22 + 24);
              v100 = __DataStorage._bytes.getter();
              if (v100)
              {
                v129 = __DataStorage._offset.getter();
                if (__OFSUB__(v127, v129))
                {
                  goto LABEL_339;
                }

                v100 += v127 - v129;
              }

              v30 = __OFSUB__(v128, v127);
              v130 = v128 - v127;
              if (v30)
              {
                goto LABEL_334;
              }

              v131 = __DataStorage._length.getter();
              if (v131 >= v130)
              {
                v103 = v130;
              }

              else
              {
                v103 = v131;
              }

              if (!v98)
              {
                goto LABEL_358;
              }

              v40 = v201;
              if (!v100)
              {
                goto LABEL_357;
              }

              goto LABEL_269;
            }

            if (v26 == 1)
            {
              if (v22 >> 32 < v22)
              {
                goto LABEL_330;
              }

              v100 = __DataStorage._bytes.getter();
              if (v100)
              {
                v101 = __DataStorage._offset.getter();
                if (__OFSUB__(v22, v101))
                {
                  goto LABEL_340;
                }

                v100 += v22 - v101;
              }

              v102 = __DataStorage._length.getter();
              if (v102 >= (v22 >> 32) - v22)
              {
                v103 = (v22 >> 32) - v22;
              }

              else
              {
                v103 = v102;
              }

              if (!v98)
              {
                goto LABEL_367;
              }

              v40 = v20;
              if (!v100)
              {
                goto LABEL_366;
              }

LABEL_269:
              if (v98 == v100)
              {
                v1 = v199;
                sub_10018C684(v199 + 80);
                sub_10006A178(v22, v24);
                goto LABEL_277;
              }

              v137 = memcmp(v98, v100, v103);
              sub_10006A178(v22, v24);
              v8 = v191;
              if (!v137)
              {
                goto LABEL_275;
              }

              goto LABEL_53;
            }

            *(v199 + 152) = v22;
            *(v199 + 160) = v24;
            *(v199 + 162) = BYTE2(v24);
            *(v199 + 163) = BYTE3(v24);
            *(v199 + 164) = BYTE4(v24);
            *(v199 + 165) = BYTE5(v24);
            v40 = v20;
            if (!v98)
            {
              goto LABEL_356;
            }

            goto LABEL_274;
          }

          *(v182 + 6) = 0;
          *v182 = 0;
          if (v26)
          {
            if (v26 == 2)
            {
              v109 = *(v22 + 16);
              v110 = *(v22 + 24);
              v38 = __DataStorage._bytes.getter();
              if (v38)
              {
                v111 = __DataStorage._offset.getter();
                if (__OFSUB__(v109, v111))
                {
                  goto LABEL_338;
                }

                v38 += v109 - v111;
              }

              v30 = __OFSUB__(v110, v109);
              v112 = v110 - v109;
              if (v30)
              {
                goto LABEL_331;
              }

              v113 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_362;
              }
            }

            else
            {
              v112 = (v22 >> 32) - v22;
              if (v22 >> 32 < v22)
              {
                goto LABEL_328;
              }

              v123 = __DataStorage._bytes.getter();
              if (!v123)
              {
                goto LABEL_368;
              }

              v124 = v123;
              v125 = __DataStorage._offset.getter();
              if (__OFSUB__(v22, v125))
              {
                goto LABEL_332;
              }

              v38 = (v22 - v125 + v124);
              v113 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_369;
              }
            }

            if (v113 >= v112)
            {
              v121 = v112;
            }

            else
            {
              v121 = v113;
            }

            v122 = v182;
            goto LABEL_246;
          }

          *(v199 + 152) = v22;
          *(v199 + 160) = v24;
          *(v199 + 162) = BYTE2(v24);
          *(v199 + 163) = BYTE3(v24);
          *(v199 + 164) = BYTE4(v24);
          v114 = BYTE6(v24);
          *(v199 + 165) = BYTE5(v24);
          v115 = v182;
          v116 = v200;
        }

        else
        {
          if (v25)
          {
            if (v20 > v20 >> 32)
            {
              goto LABEL_323;
            }

            v98 = __DataStorage._bytes.getter();
            if (v98)
            {
              v106 = __DataStorage._offset.getter();
              if (__OFSUB__(v20, v106))
              {
                goto LABEL_325;
              }

              v98 += v20 - v106;
            }

            __DataStorage._length.getter();
            v8 = v191;
            if (v26 == 2)
            {
              v132 = *(v22 + 16);
              v133 = *(v22 + 24);
              v100 = __DataStorage._bytes.getter();
              if (v100)
              {
                v134 = __DataStorage._offset.getter();
                if (__OFSUB__(v132, v134))
                {
                  goto LABEL_341;
                }

                v100 += v132 - v134;
              }

              v30 = __OFSUB__(v133, v132);
              v135 = v133 - v132;
              if (v30)
              {
                goto LABEL_336;
              }

              v136 = __DataStorage._length.getter();
              if (v136 >= v135)
              {
                v103 = v135;
              }

              else
              {
                v103 = v136;
              }

              if (!v98)
              {
                goto LABEL_360;
              }

              v40 = v201;
              if (!v100)
              {
                goto LABEL_359;
              }

              goto LABEL_269;
            }

            if (v26 == 1)
            {
              if (v22 >> 32 < v22)
              {
                goto LABEL_335;
              }

              v100 = __DataStorage._bytes.getter();
              if (v100)
              {
                v107 = __DataStorage._offset.getter();
                if (__OFSUB__(v22, v107))
                {
                  goto LABEL_342;
                }

                v100 += v22 - v107;
              }

              v108 = __DataStorage._length.getter();
              if (v108 >= (v22 >> 32) - v22)
              {
                v103 = (v22 >> 32) - v22;
              }

              else
              {
                v103 = v108;
              }

              if (!v98)
              {
                goto LABEL_371;
              }

              v40 = v20;
              if (!v100)
              {
                goto LABEL_370;
              }

              goto LABEL_269;
            }

            *(v199 + 152) = v22;
            *(v199 + 160) = v24;
            *(v199 + 162) = BYTE2(v24);
            *(v199 + 163) = BYTE3(v24);
            *(v199 + 164) = BYTE4(v24);
            *(v199 + 165) = BYTE5(v24);
            v40 = v20;
            if (!v98)
            {
              goto LABEL_365;
            }

LABEL_274:
            v138 = memcmp(v98, v200, BYTE6(v24));
            sub_10006A178(v22, v24);
            if (!v138)
            {
LABEL_275:
              v1 = v199;
              sub_10018C684(v199 + 80);
              goto LABEL_11;
            }

            goto LABEL_53;
          }

          *(v199 + 152) = v20;
          *(v199 + 160) = v19;
          *(v199 + 162) = BYTE2(v19);
          *(v199 + 163) = BYTE3(v19);
          *(v199 + 164) = BYTE4(v19);
          *(v199 + 165) = BYTE5(v19);
          if (v26)
          {
            if (v26 == 1)
            {
              v34 = (v22 >> 32) - v22;
              if (v22 >> 32 < v22)
              {
                goto LABEL_327;
              }

              v35 = __DataStorage._bytes.getter();
              if (!v35)
              {
                goto LABEL_363;
              }

              v36 = v35;
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v22, v37))
              {
                goto LABEL_333;
              }

              v38 = (v22 - v37 + v36);
              v39 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_364;
              }
            }

            else
            {
              v118 = *(v22 + 16);
              v119 = *(v22 + 24);
              v38 = __DataStorage._bytes.getter();
              if (v38)
              {
                v120 = __DataStorage._offset.getter();
                if (__OFSUB__(v118, v120))
                {
                  goto LABEL_337;
                }

                v38 += v118 - v120;
              }

              v30 = __OFSUB__(v119, v118);
              v34 = v119 - v118;
              if (v30)
              {
                goto LABEL_329;
              }

              v39 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_361;
              }
            }

            if (v39 >= v34)
            {
              v121 = v34;
            }

            else
            {
              v121 = v39;
            }

            v122 = v200;
LABEL_246:
            v126 = memcmp(v122, v38, v121);
            sub_10006A178(v22, v24);
            v8 = v191;
            v40 = v20;
            if (!v126)
            {
              goto LABEL_275;
            }

            goto LABEL_53;
          }

          *(v199 + 272) = v22;
          *(v199 + 280) = v24;
          *(v199 + 282) = BYTE2(v24);
          *(v199 + 283) = BYTE3(v24);
          *(v199 + 284) = BYTE4(v24);
          v114 = BYTE6(v24);
          *(v199 + 285) = BYTE5(v24);
          v115 = v200;
          v116 = v182;
        }

        v117 = memcmp(v115, v116, v114);
        sub_10006A178(v22, v24);
        v40 = v20;
        if (!v117)
        {
          goto LABEL_275;
        }

LABEL_53:
        v41 = [v186 previousTLKs];
        sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
        v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v4 = &selRef_retrievePeripheralsWithIdentifiers_;
        if (v42 >> 62)
        {
          v43 = _CocoaArrayWrapper.endIndex.getter();
          v1 = v43;
          if (!v43)
          {
LABEL_280:

            v139 = v190;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v199 + 288) = v190;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10019F684(0, v190[2] + 1, 1);
              v139 = *(v199 + 288);
            }

            v8 = v191;
            v9 = v192;
            v142 = v139[2];
            v141 = v139[3];
            if (v142 >= v141 >> 1)
            {
              sub_10019F684((v141 > 1), v142 + 1, 1);
              v139 = *(v199 + 288);
            }

            v139[2] = v142 + 1;
            v190 = v139;
            v143 = &v139[9 * v142];
            v1 = v199;
            *(v143 + 2) = *(v199 + 80);
            v144 = *(v199 + 96);
            v145 = *(v199 + 112);
            v146 = *(v199 + 128);
            *(v143 + 96) = *(v199 + 144);
            *(v143 + 4) = v145;
            *(v143 + 5) = v146;
            *(v143 + 3) = v144;
            goto LABEL_13;
          }
        }

        else
        {
          v1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_280;
          }
        }

        v44 = 0;
        v193 = v40;
        v183 = (v40 >> 32) - v40;
        v184 = v40 >> 32;
        v185 = HIDWORD(v40);
        v45 = __OFSUB__(HIDWORD(v40), v40);
        v197 = v45;
        v196 = HIDWORD(v40) - v40;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_294;
            }

            v43 = *(v42 + 8 * v44 + 32);
          }

          v46 = v43;
          v47 = (v44 + 1);
          if (__OFADD__(v44, 1))
          {
            __break(1u);
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v48 = [v43 v4[105]];
          v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = v51 >> 62;
          if (v51 >> 62 == 3)
          {
            break;
          }

          v54 = v203;
          if (v52 > 1)
          {
            if (v52 == 2)
            {
              v59 = *(v49 + 16);
              v58 = *(v49 + 24);
              v30 = __OFSUB__(v58, v59);
              v53 = v58 - v59;
              if (v30)
              {
                goto LABEL_302;
              }

LABEL_80:
              if (v54 <= 1)
              {
                goto LABEL_81;
              }

              goto LABEL_74;
            }

            v53 = 0;
            if (v203 <= 1)
            {
              goto LABEL_81;
            }
          }

          else if (v52)
          {
            LODWORD(v53) = HIDWORD(v49) - v49;
            if (__OFSUB__(HIDWORD(v49), v49))
            {
              goto LABEL_303;
            }

            v53 = v53;
            if (v203 <= 1)
            {
LABEL_81:
              v57 = BYTE6(v202);
              if (v54)
              {
                v57 = v196;
                if (v197)
                {
                  goto LABEL_301;
                }
              }

              goto LABEL_83;
            }
          }

          else
          {
            v53 = BYTE6(v51);
            if (v203 <= 1)
            {
              goto LABEL_81;
            }
          }

LABEL_74:
          if (v54 != 2)
          {
            if (!v53)
            {
              goto LABEL_197;
            }

LABEL_60:

            v43 = sub_10006A178(v49, v51);
            goto LABEL_61;
          }

          v56 = *(v40 + 16);
          v55 = *(v40 + 24);
          v30 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v30)
          {
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __DataStorage._length.getter();
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
LABEL_354:
            __break(1u);
LABEL_355:
            __break(1u);
LABEL_356:
            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __DataStorage._length.getter();
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __DataStorage._length.getter();
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
          }

LABEL_83:
          if (v53 != v57)
          {
            goto LABEL_60;
          }

          if (v53 < 1)
          {
            goto LABEL_197;
          }

          if (v52 <= 1)
          {
            if (!v52)
            {
              *(v199 + 152) = v49;
              *(v199 + 160) = v51;
              *(v199 + 162) = BYTE2(v51);
              *(v199 + 163) = BYTE3(v51);
              *(v199 + 164) = BYTE4(v51);
              *(v199 + 165) = BYTE5(v51);
              sub_10019F024(v200, v40, v202, v204);
              v40 = v201;

              v43 = sub_10006A178(v49, v51);
              if (v204[0])
              {
                goto LABEL_224;
              }

              goto LABEL_61;
            }

            if (v49 > v49 >> 32)
            {
              goto LABEL_304;
            }

            v64 = __DataStorage._bytes.getter();
            if (v64)
            {
              v65 = v64;
              v66 = __DataStorage._offset.getter();
              if (__OFSUB__(v49, v66))
              {
                goto LABEL_306;
              }

              __s1a = (v49 - v66 + v65);
            }

            else
            {
              __s1a = 0;
            }

            __DataStorage._length.getter();
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            v40 = v201;
            if (v203 == 2)
            {
              v178 = *(v201 + 24);
              v181 = *(v201 + 16);
              v73 = __DataStorage._bytes.getter();
              if (v73)
              {
                v86 = __DataStorage._offset.getter();
                v87 = v181;
                if (__OFSUB__(v181, v86))
                {
                  goto LABEL_321;
                }

                v73 += v181 - v86;
              }

              else
              {
                v87 = v181;
              }

              v94 = v178 - v87;
              if (__OFSUB__(v178, v87))
              {
                goto LABEL_315;
              }

              v95 = __DataStorage._length.getter();
              if (v95 >= v94)
              {
                v76 = v94;
              }

              else
              {
                v76 = v95;
              }

              v77 = __s1a;
              if (!__s1a)
              {
                goto LABEL_351;
              }

              v40 = v201;
              if (!v73)
              {
                goto LABEL_350;
              }
            }

            else
            {
              if (v203 != 1)
              {
                v82 = __s1a;
                *(v199 + 152) = v201;
                *(v199 + 156) = v185;
                *(v199 + 157) = *(&v201 + 5);
                *(v199 + 159) = HIBYTE(v201);
                *(v199 + 160) = v202;
                *(v199 + 164) = WORD2(v202);
                if (!__s1a)
                {
                  goto LABEL_352;
                }

LABEL_148:
                v83 = v200;
LABEL_149:
                v88 = memcmp(v82, v83, BYTE6(v202));

                v43 = sub_10006A178(v49, v51);
                if (!v88)
                {
                  goto LABEL_224;
                }

                goto LABEL_61;
              }

              if (v184 < v193)
              {
                goto LABEL_314;
              }

              v73 = __DataStorage._bytes.getter();
              if (v73)
              {
                v78 = __DataStorage._offset.getter();
                if (__OFSUB__(v193, v78))
                {
                  goto LABEL_322;
                }

                v73 += v193 - v78;
              }

              v79 = __DataStorage._length.getter();
              v76 = v183;
              if (v79 < v183)
              {
                v76 = v79;
              }

              v40 = v201;
              v77 = __s1a;
              if (!__s1a)
              {
                goto LABEL_354;
              }

              if (!v73)
              {
                goto LABEL_353;
              }
            }

            goto LABEL_174;
          }

          if (v52 == 2)
          {
            v60 = *(v49 + 16);
            v61 = __DataStorage._bytes.getter();
            if (v61)
            {
              v62 = v61;
              v63 = __DataStorage._offset.getter();
              if (__OFSUB__(v60, v63))
              {
                goto LABEL_305;
              }

              __s1 = (v60 - v63 + v62);
            }

            else
            {
              __s1 = 0;
            }

            __DataStorage._length.getter();
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            v40 = v201;
            if (v203 == 2)
            {
              v177 = *(v201 + 24);
              v180 = *(v201 + 16);
              v73 = __DataStorage._bytes.getter();
              if (v73)
              {
                v84 = __DataStorage._offset.getter();
                v85 = v180;
                if (__OFSUB__(v180, v84))
                {
                  goto LABEL_319;
                }

                v73 += v180 - v84;
              }

              else
              {
                v85 = v180;
              }

              v92 = v177 - v85;
              if (__OFSUB__(v177, v85))
              {
                goto LABEL_313;
              }

              v93 = __DataStorage._length.getter();
              if (v93 >= v92)
              {
                v76 = v92;
              }

              else
              {
                v76 = v93;
              }

              v77 = __s1;
              if (!__s1)
              {
                goto LABEL_345;
              }

              v40 = v201;
              if (!v73)
              {
                goto LABEL_346;
              }
            }

            else
            {
              if (v203 != 1)
              {
                v82 = __s1;
                *(v199 + 152) = v201;
                *(v199 + 156) = v185;
                *(v199 + 157) = *(&v201 + 5);
                *(v199 + 159) = HIBYTE(v201);
                *(v199 + 160) = v202;
                *(v199 + 164) = WORD2(v202);
                if (!__s1)
                {
                  goto LABEL_347;
                }

                goto LABEL_148;
              }

              if (v184 < v193)
              {
                goto LABEL_311;
              }

              v73 = __DataStorage._bytes.getter();
              if (v73)
              {
                v74 = __DataStorage._offset.getter();
                if (__OFSUB__(v193, v74))
                {
                  goto LABEL_320;
                }

                v73 += v193 - v74;
              }

              v75 = __DataStorage._length.getter();
              v76 = v183;
              if (v75 < v183)
              {
                v76 = v75;
              }

              v40 = v201;
              v77 = __s1;
              if (!__s1)
              {
                goto LABEL_348;
              }

              if (!v73)
              {
                goto LABEL_349;
              }
            }

LABEL_174:
            if (v77 == v73)
            {

              v1 = v199;
              sub_10018C684(v199 + 80);
              sub_10006A178(v49, v51);
LABEL_277:
              v4 = &selRef_retrievePeripheralsWithIdentifiers_;
LABEL_278:
              v8 = v191;
              goto LABEL_12;
            }

            v96 = memcmp(v77, v73, v76);

            v43 = sub_10006A178(v49, v51);
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            if (!v96)
            {
LABEL_224:

              v1 = v199;
              sub_10018C684(v199 + 80);
              goto LABEL_278;
            }

            goto LABEL_61;
          }

          *(v200 + 6) = 0;
          *v200 = 0;
          if (v54 == 2)
          {
            __s1b = *(v40 + 16);
            v179 = *(v40 + 24);
            v70 = __DataStorage._bytes.getter();
            if (v70)
            {
              v80 = __DataStorage._offset.getter();
              v81 = __s1b;
              if (__OFSUB__(__s1b, v80))
              {
                goto LABEL_318;
              }

              v70 = &__s1b[v70 - v80];
            }

            else
            {
              v81 = __s1b;
            }

            v89 = v179 - v81;
            if (__OFSUB__(v179, v81))
            {
              goto LABEL_310;
            }

            v90 = __DataStorage._length.getter();
            if (!v70)
            {
              goto LABEL_355;
            }

            if (v90 >= v89)
            {
              v72 = v89;
            }

            else
            {
              v72 = v90;
            }
          }

          else
          {
            if (v54 != 1)
            {
              *(v199 + 272) = v40;
              *(v199 + 274) = BYTE2(v40);
              *(v199 + 275) = BYTE3(v40);
              *(v199 + 276) = v185;
              *(v199 + 277) = BYTE5(v40);
              *(v199 + 278) = BYTE6(v40);
              *(v199 + 279) = HIBYTE(v40);
              *(v199 + 280) = v202;
              *(v199 + 284) = WORD2(v202);
              v82 = v200;
              v83 = v182;
              goto LABEL_149;
            }

            if (v184 < v193)
            {
              goto LABEL_309;
            }

            v67 = __DataStorage._bytes.getter();
            if (!v67)
            {
              goto LABEL_343;
            }

            v68 = v67;
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v193, v69))
            {
              goto LABEL_312;
            }

            v70 = (v193 - v69 + v68);
            v71 = __DataStorage._length.getter();
            if (!v70)
            {
              goto LABEL_344;
            }

            if (v71 >= v183)
            {
              v72 = v183;
            }

            else
            {
              v72 = v71;
            }
          }

          v91 = memcmp(v200, v70, v72);

          v43 = sub_10006A178(v49, v51);
          v4 = &selRef_retrievePeripheralsWithIdentifiers_;
          v40 = v201;
          if (!v91)
          {
            goto LABEL_224;
          }

LABEL_61:
          ++v44;
          if (v47 == v1)
          {
            goto LABEL_280;
          }
        }

        v53 = 0;
        v54 = v203;
        if (v203 != 3 || v49 || v51 != 0xC000000000000000)
        {
          goto LABEL_80;
        }

        v49 = 0;
        if (v40)
        {
LABEL_197:
          v8 = v191;
          v9 = v192;
        }

        else
        {
          v8 = v191;
          v9 = v192;
          if (v202 == 0xC000000000000000)
          {

            v1 = v199;
            sub_10018C684(v199 + 80);

            v104 = 0;
            v105 = 0xC000000000000000;
            goto LABEL_199;
          }
        }

        v1 = v199;
        sub_10018C684(v199 + 80);

        v104 = v49;
        v105 = v51;
LABEL_199:
        sub_10006A178(v104, v105);
LABEL_13:
        v12 = v198 + 1;
        if (v198 + 1 == v194)
        {
          goto LABEL_288;
        }
      }
    }

    v190 = _swiftEmptyArrayStorage;
LABEL_288:
    v43 = v190;
    v1[51] = v190;
    v155 = v190[2];
    v1[52] = v155;
    if (v155)
    {
      break;
    }

    sub_10006A178(v8, v9);
LABEL_5:
    v3 = v1[45] + 1;
    if (v3 == v1[43])
    {
      goto LABEL_290;
    }
  }

LABEL_295:
  v158 = v1[44];
  v159 = v1[42];
  v160 = v43;

  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v204[0] = v164;
    *v163 = v176.n128_u32[0];
    v165 = Array.description.getter();
    v167 = sub_1002FFA0C(v165, v166, v204);

    *(v163 + 4) = v167;
    _os_log_impl(&_mh_execute_header, v161, v162, "Removing stale TLKs %s", v163, 0xCu);
    sub_1000752F4(v164);
  }

  v168 = objc_opt_self();
  *(v199 + 424) = v168;
  if (!v160[2])
  {
    goto LABEL_326;
  }

  v169 = v168;
  *(v199 + 432) = 0;
  *(v199 + 440) = 0;
  v170 = *(v199 + 408);
  *(v199 + 80) = *(v170 + 32);
  v172 = *(v170 + 64);
  v171 = *(v170 + 80);
  v173 = *(v170 + 48);
  *(v199 + 144) = *(v170 + 96);
  *(v199 + 112) = v172;
  *(v199 + 128) = v171;
  *(v199 + 96) = v173;
  sub_10018C628(v199 + 80, v200);
  v174 = String._bridgeToObjectiveC()();
  *(v199 + 448) = v174;
  *(v199 + 16) = v199;
  *(v199 + 56) = v182;
  *(v199 + 24) = sub_1001738C8;
  v175 = swift_continuation_init();
  *(v199 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
  *(v199 + 152) = _NSConcreteStackBlock;
  *(v199 + 160) = 1107296256;
  *(v199 + 168) = sub_1001861F4;
  *(v199 + 176) = &unk_1004C94F8;
  *(v199 + 184) = v175;
  sub_1003AF710(v169, v174, v200);

  return _swift_continuation_await(v199 + 16);
}

uint64_t sub_1001738C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 456) = v3;
  v4 = *(v1 + 336);
  if (v3)
  {
    v5 = sub_100175660;
  }

  else
  {
    *(v1 + 464) = *(v1 + 80);
    v5 = sub_100173A10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100173A10()
{
  v252 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 272);

  v3 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
  *(v0 + 176) = v3;
  v4 = sub_100075C60(&qword_100504F58, &qword_100504F50, &qword_1004146C0);
  *(v0 + 152) = &off_1004C4100;
  *(v0 + 184) = v4;
  v5 = sub_1000752B0((v0 + 152), v3);
  sub_10008E434((*v5 + 32), (*v5 + 32 + *(*v5 + 16)), (v0 + 272));
  if (v1)
  {
  }

  v226 = (v0 + 272);
  v7 = v0 + 80;
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  sub_1000752F4((v0 + 152));
  *(v0 + 288) = v10;
  *(v0 + 296) = v11;
  *(v0 + 176) = &type metadata for Data;
  *(v0 + 184) = &protocol witness table for Data;
  *(v0 + 152) = v9;
  *(v0 + 160) = v8;
  v12 = sub_1000752B0((v0 + 152), &type metadata for Data);
  __s2 = (v0 + 152);
  v13 = *v12;
  v14 = v12[1];
  sub_100069E2C(v10, v11);
  sub_100069E2C(v9, v8);
  sub_10008E4C8(v13, v14);
  sub_10006A178(v10, v11);
  sub_1000752F4((v0 + 152));
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  if (qword_100501A38 != -1)
  {
    goto LABEL_322;
  }

  while (2)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = sub_1003AF1FC(v2, isa);

    if (v18)
    {
      goto LABEL_7;
    }

    v32 = Data._bridgeToObjectiveC()().super.isa;
    *__s2 = 0;
    v33 = sub_1003AEB5C(v2, v32, __s2);

    v34 = *__s2;
    if (!v33)
    {
      v209 = v34;
      _convertNSErrorToError(_:)();

LABEL_7:
      swift_willThrow();
      sub_10006A178(v16, v15);

      v19 = *(v0 + 352);
      v20 = *(v0 + 336);
      swift_errorRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v251[0] = v24;
        *v23 = 136315138;
        swift_getErrorValue();
        v26 = *(v0 + 248);
        v25 = *(v0 + 256);
        v27 = *(v0 + 264);
        v28 = Error.localizedDescription.getter();
        v30 = sub_1002FFA0C(v28, v29, v251);

        *(v23 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to delete stale TLK : %s", v23, 0xCu);
        sub_1000752F4(v24);
      }

      v31 = *(v0 + 336);
      sub_100180988(32, 0);
      sub_10018C684(v7);

      goto LABEL_12;
    }

    v35 = v34;

    sub_10006A178(v16, v15);
    sub_10018C684(v7);

LABEL_12:
    v36 = *(v0 + 440) + 1;
    v37 = *(v0 + 408);
    if (v36 != *(v0 + 416))
    {
      v44 = (v0 + 152);
      if (v36 < *(v37 + 16))
      {
        v45 = *(v0 + 424);
        goto LABEL_19;
      }

LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 376);
    v40 = *(v0 + 384);
    v41 = *(v0 + 368);

    sub_10006A178(v39, v40);
    v42 = *(v0 + 360) + 1;
    if (v42 == *(v0 + 344))
    {
LABEL_14:
      v43 = *(v0 + 8);

      return v43(1);
    }

    v225 = v7;
    while (1)
    {
      *(v0 + 360) = v42;
      v58 = (*(v0 + 320) + 48 * v42);
      v59 = v58[4];
      v60 = v58[5];
      *(v0 + 368) = v60;
      v16 = v58[6];
      *(v0 + 376) = v16;
      v61 = v58[7];
      *(v0 + 384) = v61;
      v62 = v58[9];
      *(v0 + 392) = v62;

      sub_100069E2C(v16, v61);
      v245 = v62;
      v63 = [v245 currentTLK];
      *(v0 + 400) = v63;
      if (!v63)
      {
        v64 = *(v0 + 352);
        v65 = *(v0 + 336);

        sub_100069E2C(v16, v61);
        v66 = Logger.logObject.getter();
        v67 = v61;
        v68 = static os_log_type_t.error.getter();

        sub_10006A178(v16, v67);
        if (os_log_type_enabled(v66, v68))
        {
          v53 = v16;
          v54 = swift_slowAlloc();
          v55 = v60;
          v56 = swift_slowAlloc();
          v251[0] = v56;
          *v54 = 136315138;

          v57 = sub_1002FFA0C(v59, v55, v251);

          *(v54 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v66, v68, "View %s doesn't have a TLK?", v54, 0xCu);
          sub_1000752F4(v56);

          sub_10006A178(v53, v67);
        }

        else
        {

          sub_10006A178(v16, v67);
        }

        goto LABEL_24;
      }

      v69 = v63;
      v237 = *(*(v0 + 328) + 16);
      if (v237)
      {
        break;
      }

      v233 = _swiftEmptyArrayStorage;
LABEL_309:
      v102 = v233;
      *(v0 + 408) = v233;
      v208 = v233[2];
      *(v0 + 416) = v208;
      if (v208)
      {
        goto LABEL_314;
      }

      sub_10006A178(v16, v61);
LABEL_24:
      v42 = *(v0 + 360) + 1;
      if (v42 == *(v0 + 344))
      {
        goto LABEL_14;
      }
    }

    v70 = 0;
    v233 = _swiftEmptyArrayStorage;
    v71 = v0 + 152;
    v241 = v16;
    v234 = v63;
    v235 = v61;
    while (1)
    {
      v240 = v70;
      v75 = *(v0 + 328) + 72 * v70;
      *v7 = *(v75 + 32);
      v77 = *(v75 + 64);
      v76 = *(v75 + 80);
      v78 = *(v75 + 48);
      *(v7 + 64) = *(v75 + 96);
      *(v7 + 32) = v77;
      *(v7 + 48) = v76;
      *(v7 + 16) = v78;
      v80 = *(v0 + 80);
      v79 = *(v0 + 88);
      sub_10018C628(v7, v71);
      v81 = [v69 tlkUUID];
      v82 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      v244 = v79;
      v85 = v79 >> 62;
      v86 = v84 >> 62;
      v246 = v80;
      if (v79 >> 62 == 3)
      {
        v87 = 0;
        if (!v80 && v79 == 0xC000000000000000 && v84 >> 62 == 3)
        {
          v87 = 0;
          if (!v82 && v84 == 0xC000000000000000)
          {
            sub_10018C684(v7);
            v72 = 0;
            v73 = 0xC000000000000000;
LABEL_31:
            sub_10006A178(v72, v73);
LABEL_32:
            v71 = v0 + 152;
            v16 = v241;
            v61 = v235;
            goto LABEL_33;
          }
        }
      }

      else if (v85 > 1)
      {
        if (v85 == 2)
        {
          v89 = *(v80 + 16);
          v88 = *(v80 + 24);
          v90 = __OFSUB__(v88, v89);
          v87 = v88 - v89;
          if (v90)
          {
            goto LABEL_336;
          }
        }

        else
        {
          v87 = 0;
        }
      }

      else if (v85)
      {
        LODWORD(v87) = HIDWORD(v80) - v80;
        if (__OFSUB__(HIDWORD(v80), v80))
        {
          goto LABEL_335;
        }

        v87 = v87;
      }

      else
      {
        v87 = BYTE6(v79);
      }

      v250 = v79 >> 62;
      if (v86 <= 1)
      {
        break;
      }

      if (v86 != 2)
      {
        if (v87)
        {
          goto LABEL_73;
        }

LABEL_30:
        sub_10018C684(v7);
        v72 = v82;
        v73 = v84;
        goto LABEL_31;
      }

      v92 = *(v82 + 16);
      v91 = *(v82 + 24);
      v90 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v90)
      {
        goto LABEL_325;
      }

      if (v87 != v93)
      {
        goto LABEL_73;
      }

LABEL_62:
      if (v87 < 1)
      {
        goto LABEL_30;
      }

      if (v85 > 1)
      {
        if (v85 != 2)
        {
          *(v0 + 278) = 0;
          *v226 = 0;
          if (!v86)
          {
            *(v0 + 152) = v82;
            *(v0 + 160) = v84;
            *(v0 + 162) = BYTE2(v84);
            *(v0 + 163) = BYTE3(v84);
            *(v0 + 164) = BYTE4(v84);
            v175 = BYTE6(v84);
            *(v0 + 165) = BYTE5(v84);
            v176 = (v0 + 272);
            v177 = (v0 + 152);
            goto LABEL_269;
          }

          if (v86 == 2)
          {
            v170 = *(v82 + 16);
            v171 = *(v82 + 24);
            v98 = __DataStorage._bytes.getter();
            if (v98)
            {
              v172 = __DataStorage._offset.getter();
              if (__OFSUB__(v170, v172))
              {
                goto LABEL_355;
              }

              v98 += v170 - v172;
            }

            v90 = __OFSUB__(v171, v170);
            v173 = v171 - v170;
            if (v90)
            {
              goto LABEL_348;
            }

            v174 = __DataStorage._length.getter();
            if (!v98)
            {
              goto LABEL_387;
            }
          }

          else
          {
            v173 = (v82 >> 32) - v82;
            if (v82 >> 32 < v82)
            {
              goto LABEL_345;
            }

            v181 = __DataStorage._bytes.getter();
            if (!v181)
            {
              goto LABEL_385;
            }

            v182 = v181;
            v183 = __DataStorage._offset.getter();
            if (__OFSUB__(v82, v183))
            {
              goto LABEL_351;
            }

            v98 = v82 - v183 + v182;
            v174 = __DataStorage._length.getter();
            if (!v98)
            {
              goto LABEL_386;
            }
          }

          if (v174 >= v173)
          {
            v175 = v173;
          }

          else
          {
            v175 = v174;
          }

          v176 = (v0 + 272);
LABEL_268:
          v177 = v98;
LABEL_269:
          v184 = memcmp(v176, v177, v175);
          sub_10006A178(v82, v84);
          v99 = v244;
          if (v184)
          {
            goto LABEL_74;
          }

LABEL_298:
          sub_10018C684(v7);
          goto LABEL_32;
        }

        v157 = *(v80 + 16);
        v158 = __DataStorage._bytes.getter();
        if (v158)
        {
          v159 = __DataStorage._offset.getter();
          if (__OFSUB__(v157, v159))
          {
            goto LABEL_343;
          }

          v158 += v157 - v159;
        }

        __DataStorage._length.getter();
        if (v86 != 2)
        {
          if (v86 == 1)
          {
            if (v82 >> 32 < v82)
            {
              goto LABEL_349;
            }

            v160 = __DataStorage._bytes.getter();
            if (v160)
            {
              v161 = __DataStorage._offset.getter();
              if (__OFSUB__(v82, v161))
              {
                goto LABEL_359;
              }

              v160 += v82 - v161;
            }

            v162 = __DataStorage._length.getter();
            if (v162 >= (v82 >> 32) - v82)
            {
              v163 = (v82 >> 32) - v82;
            }

            else
            {
              v163 = v162;
            }

            if (!v158)
            {
              goto LABEL_376;
            }

            v99 = v244;
            if (!v160)
            {
              goto LABEL_375;
            }

            goto LABEL_292;
          }

          *(v0 + 152) = v82;
          *(v0 + 160) = v84;
          *(v0 + 162) = BYTE2(v84);
          *(v0 + 163) = BYTE3(v84);
          *(v0 + 164) = BYTE4(v84);
          *(v0 + 165) = BYTE5(v84);
          v99 = v244;
          if (!v158)
          {
            goto LABEL_374;
          }

LABEL_297:
          v198 = memcmp(v158, __s2, BYTE6(v84));
          sub_10006A178(v82, v84);
          if (v198)
          {
            goto LABEL_74;
          }

          goto LABEL_298;
        }

        v185 = *(v82 + 16);
        v186 = *(v82 + 24);
        v160 = __DataStorage._bytes.getter();
        if (v160)
        {
          v187 = __DataStorage._offset.getter();
          if (__OFSUB__(v185, v187))
          {
            goto LABEL_357;
          }

          v160 += v185 - v187;
        }

        v90 = __OFSUB__(v186, v185);
        v188 = v186 - v185;
        if (v90)
        {
          goto LABEL_352;
        }

        v189 = __DataStorage._length.getter();
        if (v189 >= v188)
        {
          v163 = v188;
        }

        else
        {
          v163 = v189;
        }

        if (!v158)
        {
          goto LABEL_378;
        }

        v99 = v244;
        if (!v160)
        {
          goto LABEL_377;
        }
      }

      else
      {
        if (!v85)
        {
          *(v0 + 152) = v80;
          *(v0 + 160) = v79;
          *(v0 + 162) = BYTE2(v79);
          *(v0 + 163) = BYTE3(v79);
          *(v0 + 164) = BYTE4(v79);
          *(v0 + 165) = BYTE5(v79);
          if (!v86)
          {
            *(v0 + 272) = v82;
            *(v0 + 280) = v84;
            *(v0 + 282) = BYTE2(v84);
            *(v0 + 283) = BYTE3(v84);
            *(v0 + 284) = BYTE4(v84);
            v175 = BYTE6(v84);
            *(v0 + 285) = BYTE5(v84);
            v176 = (v0 + 152);
            v177 = (v0 + 272);
            goto LABEL_269;
          }

          if (v86 == 1)
          {
            v94 = (v82 >> 32) - v82;
            if (v82 >> 32 < v82)
            {
              goto LABEL_346;
            }

            v95 = __DataStorage._bytes.getter();
            if (!v95)
            {
              goto LABEL_388;
            }

            v96 = v95;
            v97 = __DataStorage._offset.getter();
            if (__OFSUB__(v82, v97))
            {
              goto LABEL_350;
            }

            v98 = v82 - v97 + v96;
            v52 = __DataStorage._length.getter();
            if (!v98)
            {
              goto LABEL_389;
            }
          }

          else
          {
            v178 = *(v82 + 16);
            v179 = *(v82 + 24);
            v98 = __DataStorage._bytes.getter();
            if (v98)
            {
              v180 = __DataStorage._offset.getter();
              if (__OFSUB__(v178, v180))
              {
                goto LABEL_356;
              }

              v98 += v178 - v180;
            }

            v90 = __OFSUB__(v179, v178);
            v94 = v179 - v178;
            if (v90)
            {
              goto LABEL_347;
            }

            v52 = __DataStorage._length.getter();
            if (!v98)
            {
              goto LABEL_384;
            }
          }

          if (v52 >= v94)
          {
            v175 = v94;
          }

          else
          {
            v175 = v52;
          }

          v176 = (v0 + 152);
          goto LABEL_268;
        }

        if (v80 > v80 >> 32)
        {
          goto LABEL_342;
        }

        v158 = __DataStorage._bytes.getter();
        if (v158)
        {
          v167 = __DataStorage._offset.getter();
          if (__OFSUB__(v80, v167))
          {
            goto LABEL_344;
          }

          v158 += v80 - v167;
        }

        __DataStorage._length.getter();
        if (v86 == 2)
        {
          v190 = *(v82 + 16);
          v191 = *(v82 + 24);
          v160 = __DataStorage._bytes.getter();
          if (v160)
          {
            v192 = __DataStorage._offset.getter();
            if (__OFSUB__(v190, v192))
            {
              goto LABEL_358;
            }

            v160 += v190 - v192;
          }

          v90 = __OFSUB__(v191, v190);
          v193 = v191 - v190;
          if (v90)
          {
            goto LABEL_354;
          }

          v194 = __DataStorage._length.getter();
          if (v194 >= v193)
          {
            v163 = v193;
          }

          else
          {
            v163 = v194;
          }

          if (!v158)
          {
            goto LABEL_383;
          }

          v99 = v244;
          if (!v160)
          {
            goto LABEL_382;
          }
        }

        else
        {
          if (v86 != 1)
          {
            *(v0 + 152) = v82;
            *(v0 + 160) = v84;
            *(v0 + 162) = BYTE2(v84);
            *(v0 + 163) = BYTE3(v84);
            *(v0 + 164) = BYTE4(v84);
            *(v0 + 165) = BYTE5(v84);
            v99 = v244;
            if (!v158)
            {
              goto LABEL_379;
            }

            goto LABEL_297;
          }

          if (v82 >> 32 < v82)
          {
            goto LABEL_353;
          }

          v160 = __DataStorage._bytes.getter();
          if (v160)
          {
            v168 = __DataStorage._offset.getter();
            if (__OFSUB__(v82, v168))
            {
              goto LABEL_360;
            }

            v160 += v82 - v168;
          }

          v169 = __DataStorage._length.getter();
          if (v169 >= (v82 >> 32) - v82)
          {
            v163 = (v82 >> 32) - v82;
          }

          else
          {
            v163 = v169;
          }

          if (!v158)
          {
            goto LABEL_381;
          }

          v99 = v244;
          if (!v160)
          {
            goto LABEL_380;
          }
        }
      }

LABEL_292:
      if (v158 != v160)
      {
        v197 = memcmp(v158, v160, v163);
        sub_10006A178(v82, v84);
        if (v197)
        {
          goto LABEL_74;
        }

        goto LABEL_298;
      }

      sub_10018C684(v7);
      v195 = v82;
      v196 = v84;
LABEL_300:
      sub_10006A178(v195, v196);
      v71 = v0 + 152;
      v16 = v241;
LABEL_301:
      v61 = v235;
LABEL_33:
      v69 = v234;
      v74 = v240;
LABEL_34:
      v70 = v74 + 1;
      if (v70 == v237)
      {
        goto LABEL_309;
      }
    }

    if (!v86)
    {
      if (v87 != BYTE6(v84))
      {
        goto LABEL_73;
      }

      goto LABEL_62;
    }

    if (__OFSUB__(HIDWORD(v82), v82))
    {
      goto LABEL_326;
    }

    if (v87 == HIDWORD(v82) - v82)
    {
      goto LABEL_62;
    }

LABEL_73:
    sub_10006A178(v82, v84);
    v99 = v79;
LABEL_74:
    v100 = [v245 previousTLKs];
    sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
    v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v241;
    if (v101 >> 62)
    {
      v102 = _CocoaArrayWrapper.endIndex.getter();
      v103 = v102;
      v104 = v246;
      if (!v102)
      {
LABEL_303:

        v199 = v233;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v0 + 152;
        *(v0 + 288) = v233;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F684(0, v233[2] + 1, 1);
          v71 = v0 + 152;
          v199 = *(v0 + 288);
        }

        v7 = v225;
        v69 = v234;
        v61 = v235;
        v74 = v240;
        v202 = v199[2];
        v201 = v199[3];
        if (v202 >= v201 >> 1)
        {
          v207 = v71;
          sub_10019F684((v201 > 1), v202 + 1, 1);
          v71 = v207;
          v74 = v240;
          v199 = *(v207 + 136);
        }

        v199[2] = v202 + 1;
        v233 = v199;
        v203 = &v199[9 * v202];
        *(v203 + 2) = *v225;
        v204 = *(v225 + 16);
        v205 = *(v225 + 32);
        v206 = *(v225 + 48);
        *(v203 + 96) = *(v225 + 64);
        *(v203 + 4) = v205;
        *(v203 + 5) = v206;
        *(v203 + 3) = v204;
        goto LABEL_34;
      }
    }

    else
    {
      v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v104 = v246;
      if (!v103)
      {
        goto LABEL_303;
      }
    }

    v15 = 0;
    v248 = v101 & 0xFFFFFFFFFFFFFF8;
    v249 = v101 & 0xC000000000000001;
    __n = BYTE6(v99);
    v236 = v104;
    v227 = (v104 >> 32) - v104;
    v228 = v104 >> 32;
    v229 = HIDWORD(v104);
    v90 = __OFSUB__(HIDWORD(v104), v104);
    v105 = HIDWORD(v104) - v104;
    v106 = v90;
    v239 = v106;
    v238 = v105;
    v247 = v101;
LABEL_83:
    if (v249)
    {
      v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v248 + 16))
      {
        goto LABEL_313;
      }

      v102 = *(v101 + 8 * v15 + 32);
    }

    v107 = v102;
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      v210 = *(v0 + 352);
      v211 = *(v0 + 336);
      v212 = v102;

      v213 = Logger.logObject.getter();
      v214 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v251[0] = v216;
        *v215 = 136315138;
        v217 = Array.description.getter();
        v219 = sub_1002FFA0C(v217, v218, v251);

        *(v215 + 4) = v219;
        _os_log_impl(&_mh_execute_header, v213, v214, "Removing stale TLKs %s", v215, 0xCu);
        sub_1000752F4(v216);
      }

      v220 = objc_opt_self();
      *(v0 + 424) = v220;
      v44 = (v0 + 152);
      if (v212[2])
      {
        v45 = v220;
        v36 = 0;
        v37 = *(v0 + 408);
LABEL_19:
        *(v0 + 432) = 0;
        *(v0 + 440) = v36;
        v46 = v37 + 72 * v36;
        *v7 = *(v46 + 32);
        v47 = *(v46 + 48);
        v48 = *(v46 + 64);
        v49 = *(v46 + 80);
        *(v7 + 64) = *(v46 + 96);
        *(v7 + 32) = v48;
        *(v7 + 48) = v49;
        *(v7 + 16) = v47;
        sub_10018C628(v7, v44);
        v50 = String._bridgeToObjectiveC()();
        *(v0 + 448) = v50;
        *(v0 + 16) = v0;
        *(v0 + 56) = v226;
        *(v0 + 24) = sub_1001738C8;
        v51 = swift_continuation_init();
        *(v0 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
        *(v0 + 152) = _NSConcreteStackBlock;
        *(v0 + 160) = 1107296256;
        *(v0 + 168) = sub_1001861F4;
        *(v0 + 176) = &unk_1004C94F8;
        *(v0 + 184) = v51;
        sub_1003AF710(v45, v50, v44);
        v52 = v0 + 16;

        return _swift_continuation_await(v52);
      }

      goto LABEL_327;
    }

    v2 = [v102 tlkUUID];
    v108 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;

    v111 = v110 >> 62;
    if (v110 >> 62 == 3)
    {
      v112 = 0;
      v113 = v250;
      if (v250 == 3 && !v108 && v110 == 0xC000000000000000)
      {
        v108 = 0;
        if (v246)
        {
LABEL_221:
          v164 = v0 + 152;
          v7 = v225;
          v69 = v234;
          v61 = v235;
        }

        else
        {
          v164 = v0 + 152;
          v7 = v225;
          v69 = v234;
          v61 = v235;
          if (v99 == 0xC000000000000000)
          {

            sub_10018C684(v225);

            v165 = 0;
            v166 = 0xC000000000000000;
LABEL_223:
            sub_10006A178(v165, v166);
            v74 = v240;
            v71 = v164;
            goto LABEL_34;
          }
        }

        sub_10018C684(v7);

        v165 = v108;
        v166 = v110;
        goto LABEL_223;
      }

LABEL_101:
      if (v113 <= 1)
      {
        goto LABEL_102;
      }

LABEL_95:
      if (v113 != 2)
      {
        if (!v112)
        {
          goto LABEL_221;
        }

LABEL_81:

        v102 = sub_10006A178(v108, v110);
        goto LABEL_82;
      }

      v115 = *(v246 + 16);
      v114 = *(v246 + 24);
      v90 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v90)
      {
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        swift_once();
        continue;
      }
    }

    else
    {
      v113 = v250;
      if (v111 <= 1)
      {
        if (v111)
        {
          LODWORD(v112) = HIDWORD(v108) - v108;
          if (__OFSUB__(HIDWORD(v108), v108))
          {
            goto LABEL_320;
          }

          v112 = v112;
          if (v250 <= 1)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v112 = BYTE6(v110);
          if (v250 <= 1)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_95;
      }

      if (v111 == 2)
      {
        v118 = *(v108 + 16);
        v117 = *(v108 + 24);
        v90 = __OFSUB__(v117, v118);
        v112 = v117 - v118;
        if (v90)
        {
          goto LABEL_319;
        }

        goto LABEL_101;
      }

      v112 = 0;
      if (v250 > 1)
      {
        goto LABEL_95;
      }

LABEL_102:
      v116 = __n;
      if (v113)
      {
        v116 = v238;
        if (v239)
        {
          goto LABEL_318;
        }
      }
    }

    break;
  }

  if (v112 != v116)
  {
    goto LABEL_81;
  }

  if (v112 < 1)
  {
    goto LABEL_221;
  }

  if (v111 <= 1)
  {
    if (!v111)
    {
      *(v0 + 152) = v108;
      *(v0 + 160) = v110;
      *(v0 + 162) = BYTE2(v110);
      *(v0 + 163) = BYTE3(v110);
      *(v0 + 164) = BYTE4(v110);
      *(v0 + 165) = BYTE5(v110);
      sub_10019F024(__s2, v246, v99, v251);

      v102 = sub_10006A178(v108, v110);
      v99 = v244;
      if (v251[0])
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    if (v108 > v108 >> 32)
    {
      goto LABEL_321;
    }

    v123 = __DataStorage._bytes.getter();
    if (v123)
    {
      v124 = v123;
      v125 = __DataStorage._offset.getter();
      if (__OFSUB__(v108, v125))
      {
        goto LABEL_324;
      }

      __s1a = (v108 - v125 + v124);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    v16 = v241;
    v99 = v244;
    if (v250 != 2)
    {
      if (v250 == 1)
      {
        if (v228 < v236)
        {
          goto LABEL_333;
        }

        v129 = __DataStorage._bytes.getter();
        if (v129)
        {
          v136 = __DataStorage._offset.getter();
          if (__OFSUB__(v236, v136))
          {
            goto LABEL_341;
          }

          v129 += v236 - v136;
        }

        v137 = __DataStorage._length.getter();
        v135 = v227;
        if (v137 < v227)
        {
          v135 = v137;
        }

        v132 = __s1a;
        if (!__s1a)
        {
          goto LABEL_367;
        }

        if (!v129)
        {
          goto LABEL_366;
        }

        goto LABEL_156;
      }

      v141 = __s1a;
      *(v0 + 152) = v246;
      *(v0 + 156) = v229;
      *(v0 + 157) = *(&v246 + 5);
      *(v0 + 159) = HIBYTE(v246);
      *(v0 + 160) = v244;
      *(v0 + 164) = WORD2(v244);
      if (!__s1a)
      {
        goto LABEL_371;
      }

LABEL_171:
      v142 = (v0 + 152);
LABEL_172:
      v147 = memcmp(v141, v142, __n);

      v102 = sub_10006A178(v108, v110);
      if (!v147)
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    v221 = *(v246 + 24);
    v224 = *(v246 + 16);
    v129 = __DataStorage._bytes.getter();
    if (v129)
    {
      v145 = __DataStorage._offset.getter();
      v146 = v224;
      if (__OFSUB__(v224, v145))
      {
        goto LABEL_339;
      }

      v129 += v224 - v145;
    }

    else
    {
      v146 = v224;
    }

    v154 = v221 - v146;
    if (__OFSUB__(v221, v146))
    {
      goto LABEL_334;
    }

    v155 = __DataStorage._length.getter();
    if (v155 >= v154)
    {
      v135 = v154;
    }

    else
    {
      v135 = v155;
    }

    v132 = __s1a;
    if (!__s1a)
    {
      goto LABEL_373;
    }

    if (!v129)
    {
      goto LABEL_372;
    }

LABEL_197:
    v99 = v244;
    if (v132 != v129)
    {
      goto LABEL_198;
    }

LABEL_299:

    v7 = v225;
    sub_10018C684(v225);
    v195 = v108;
    v196 = v110;
    goto LABEL_300;
  }

  if (v111 == 2)
  {
    v119 = *(v108 + 16);
    v120 = __DataStorage._bytes.getter();
    if (v120)
    {
      v121 = v120;
      v122 = __DataStorage._offset.getter();
      if (__OFSUB__(v119, v122))
      {
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      __s1 = (v119 - v122 + v121);
    }

    else
    {
      __s1 = 0;
    }

    __DataStorage._length.getter();
    v16 = v241;
    v99 = v244;
    if (v250 != 2)
    {
      if (v250 != 1)
      {
        v141 = __s1;
        *(v0 + 152) = v246;
        *(v0 + 156) = v229;
        *(v0 + 157) = *(&v246 + 5);
        *(v0 + 159) = HIBYTE(v246);
        *(v0 + 160) = v244;
        *(v0 + 164) = WORD2(v244);
        if (!__s1)
        {
          goto LABEL_363;
        }

        goto LABEL_171;
      }

      if (v228 < v236)
      {
        goto LABEL_330;
      }

      v129 = __DataStorage._bytes.getter();
      if (v129)
      {
        v133 = __DataStorage._offset.getter();
        if (__OFSUB__(v236, v133))
        {
          goto LABEL_340;
        }

        v129 += v236 - v133;
      }

      v134 = __DataStorage._length.getter();
      v135 = v227;
      if (v134 < v227)
      {
        v135 = v134;
      }

      v132 = __s1;
      if (!__s1)
      {
        goto LABEL_370;
      }

      if (!v129)
      {
        goto LABEL_369;
      }

LABEL_156:
      if (v132 == v129)
      {
        goto LABEL_299;
      }

LABEL_198:
      v131 = v135;
LABEL_199:
      v156 = memcmp(v132, v129, v131);

      v102 = sub_10006A178(v108, v110);
      v16 = v241;
      if (!v156)
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    v221 = *(v246 + 24);
    v223 = *(v246 + 16);
    v129 = __DataStorage._bytes.getter();
    if (v129)
    {
      v143 = __DataStorage._offset.getter();
      v144 = v223;
      if (__OFSUB__(v223, v143))
      {
        goto LABEL_338;
      }

      v129 += v223 - v143;
    }

    else
    {
      v144 = v223;
    }

    v152 = v221 - v144;
    if (__OFSUB__(v221, v144))
    {
      goto LABEL_332;
    }

    v153 = __DataStorage._length.getter();
    if (v153 >= v152)
    {
      v135 = v152;
    }

    else
    {
      v135 = v153;
    }

    v132 = __s1;
    if (!__s1)
    {
      goto LABEL_365;
    }

    if (!v129)
    {
      goto LABEL_364;
    }

    goto LABEL_197;
  }

  *(v0 + 158) = 0;
  *__s2 = 0;
  if (v113 == 2)
  {
    __s1b = *(v246 + 16);
    v222 = *(v246 + 24);
    v138 = __DataStorage._bytes.getter();
    if (v138)
    {
      v139 = __DataStorage._offset.getter();
      v140 = __s1b;
      if (__OFSUB__(__s1b, v139))
      {
        goto LABEL_337;
      }

      v138 = &__s1b[v138 - v139];
    }

    else
    {
      v140 = __s1b;
    }

    v148 = v222 - v140;
    if (__OFSUB__(v222, v140))
    {
      goto LABEL_329;
    }

    v149 = __DataStorage._length.getter();
    if (!v138)
    {
      goto LABEL_368;
    }

    if (v149 >= v148)
    {
      v150 = v148;
    }

    else
    {
      v150 = v149;
    }

    v151 = memcmp(__s2, v138, v150);

    v102 = sub_10006A178(v108, v110);
    v16 = v241;
    v99 = v244;
    if (!v151)
    {
LABEL_248:

      v7 = v225;
      sub_10018C684(v225);
      v71 = v0 + 152;
      goto LABEL_301;
    }

LABEL_82:
    ++v15;
    v101 = v247;
    if (v7 == v103)
    {
      goto LABEL_303;
    }

    goto LABEL_83;
  }

  if (v113 != 1)
  {
    *(v0 + 272) = v246;
    *(v0 + 276) = v229;
    *(v0 + 277) = *(&v246 + 5);
    *(v0 + 279) = HIBYTE(v246);
    *(v0 + 280) = v99;
    *(v0 + 282) = BYTE2(v99);
    *(v0 + 283) = BYTE3(v99);
    *(v0 + 284) = BYTE4(v99);
    *(v0 + 285) = BYTE5(v99);
    v141 = (v0 + 152);
    v142 = (v0 + 272);
    goto LABEL_172;
  }

  if (v228 < v236)
  {
    goto LABEL_328;
  }

  v126 = __DataStorage._bytes.getter();
  if (v126)
  {
    v127 = v126;
    v128 = __DataStorage._offset.getter();
    if (__OFSUB__(v236, v128))
    {
      goto LABEL_331;
    }

    v129 = (v236 - v128 + v127);
    v130 = __DataStorage._length.getter();
    if (!v129)
    {
      goto LABEL_362;
    }

    if (v130 >= v227)
    {
      v131 = v227;
    }

    else
    {
      v131 = v130;
    }

    v132 = (v0 + 152);
    goto LABEL_199;
  }

  __DataStorage._length.getter();
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __DataStorage._length.getter();
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  v52 = __DataStorage._length.getter();
LABEL_389:
  __break(1u);
  return _swift_continuation_await(v52);
}

uint64_t sub_100175660()
{
  v245 = v0;
  __s2 = (v0 + 152);
  v1 = *(v0 + 448);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 456);
  swift_willThrow();

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 456);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v244[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 240);
    v13 = Error.localizedDescription.getter();
    v15 = sub_1002FFA0C(v13, v14, v244);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get SE : %s", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v220 = (v0 + 272);
  v16 = *(v0 + 456);
  *(v0 + 152) = 4;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  swift_allocError();
  *v17 = 4;
  v18 = *(v0 + 352);
  v19 = *(v0 + 336);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v244[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 264);
    v27 = Error.localizedDescription.getter();
    v29 = sub_1002FFA0C(v27, v28, v244);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to delete stale TLK : %s", v22, 0xCu);
    sub_1000752F4(v23);
  }

  v30 = *(v0 + 336);
  sub_100180988(32, 0);
  sub_10018C684(v0 + 80);

  v31 = *(v0 + 440) + 1;
  v32 = *(v0 + 408);
  if (v31 != *(v0 + 416))
  {
    if (v31 < *(v32 + 16))
    {
      v40 = 0;
      v41 = *(v0 + 424);
      goto LABEL_12;
    }

LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    __break(1u);
LABEL_339:
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
  }

  v33 = *(v0 + 392);
  v34 = *(v0 + 376);
  v35 = *(v0 + 384);
  v36 = *(v0 + 368);

  sub_10006A178(v34, v35);
  v37 = *(v0 + 360) + 1;
  if (v37 == *(v0 + 344))
  {
LABEL_7:
    v38 = *(v0 + 8);

    return v38(1);
  }

  v40 = 0;
  while (1)
  {
    *(v0 + 360) = v37;
    v53 = (*(v0 + 320) + 48 * v37);
    v54 = v53[4];
    v55 = v53[5];
    *(v0 + 368) = v55;
    v56 = v53[6];
    *(v0 + 376) = v56;
    v57 = v53[7];
    *(v0 + 384) = v57;
    v58 = v53[9];
    *(v0 + 392) = v58;

    sub_100069E2C(v56, v57);
    v240 = v58;
    v59 = [v240 currentTLK];
    *(v0 + 400) = v59;
    if (v59)
    {
      break;
    }

    v60 = *(v0 + 352);
    v61 = *(v0 + 336);

    sub_100069E2C(v56, v57);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    sub_10006A178(v56, v57);
    if (!os_log_type_enabled(v62, v63))
    {

LABEL_21:

      sub_10006A178(v56, v57);
      goto LABEL_17;
    }

    v49 = v56;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v244[0] = v51;
    *v50 = 136315138;

    v52 = sub_1002FFA0C(v54, v55, v244);

    *(v50 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v62, v63, "View %s doesn't have a TLK?", v50, 0xCu);
    sub_1000752F4(v51);

    sub_10006A178(v49, v57);

LABEL_17:
    v37 = *(v0 + 360) + 1;
    if (v37 == *(v0 + 344))
    {
      goto LABEL_7;
    }
  }

  v64 = v59;
  v230 = *(*(v0 + 328) + 16);
  if (!v230)
  {
    v227 = _swiftEmptyArrayStorage;
LABEL_301:
    v95 = v227;
    *(v0 + 408) = v227;
    v202 = v227[2];
    *(v0 + 416) = v202;
    if (v202)
    {
      goto LABEL_305;
    }

    goto LABEL_21;
  }

  v65 = 0;
  v227 = _swiftEmptyArrayStorage;
  v239 = v57;
  v228 = v56;
  v219 = v59;
  while (1)
  {
    v234 = v40;
    v233 = v65;
    v69 = *(v0 + 328) + 72 * v65;
    *(v0 + 80) = *(v69 + 32);
    v71 = *(v69 + 64);
    v70 = *(v69 + 80);
    v72 = *(v69 + 48);
    *(v0 + 144) = *(v69 + 96);
    *(v0 + 112) = v71;
    *(v0 + 128) = v70;
    *(v0 + 96) = v72;
    v74 = *(v0 + 80);
    v73 = *(v0 + 88);
    sub_10018C628(v0 + 80, __s2);
    v75 = [v64 tlkUUID];
    v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v238 = v73;
    v79 = v73 >> 62;
    v80 = v78 >> 62;
    if (v73 >> 62 == 3)
    {
      v81 = 0;
      if (!v74 && v73 == 0xC000000000000000 && v78 >> 62 == 3)
      {
        v81 = 0;
        if (!v76 && v78 == 0xC000000000000000)
        {
          sub_10018C684(v0 + 80);
          v66 = 0;
          v67 = 0xC000000000000000;
          goto LABEL_25;
        }
      }
    }

    else if (v79 > 1)
    {
      if (v79 == 2)
      {
        v83 = *(v74 + 16);
        v82 = *(v74 + 24);
        v84 = __OFSUB__(v82, v83);
        v81 = v82 - v83;
        if (v84)
        {
          goto LABEL_326;
        }
      }

      else
      {
        v81 = 0;
      }
    }

    else if (v79)
    {
      LODWORD(v81) = HIDWORD(v74) - v74;
      if (__OFSUB__(HIDWORD(v74), v74))
      {
        goto LABEL_325;
      }

      v81 = v81;
    }

    else
    {
      v81 = BYTE6(v73);
    }

    v237 = v74;
    v243 = v73 >> 62;
    if (v80 <= 1)
    {
      if (!v80)
      {
        if (v81 == BYTE6(v78))
        {
          goto LABEL_56;
        }

        goto LABEL_67;
      }

      if (__OFSUB__(HIDWORD(v76), v76))
      {
        goto LABEL_316;
      }

      if (v81 != HIDWORD(v76) - v76)
      {
        goto LABEL_67;
      }

LABEL_56:
      if (v81 < 1)
      {
        goto LABEL_24;
      }

      if (v79 > 1)
      {
        if (v79 != 2)
        {
          *(v0 + 278) = 0;
          *v220 = 0;
          if (!v80)
          {
            *(v0 + 152) = v76;
            *(v0 + 160) = v78;
            *(v0 + 162) = BYTE2(v78);
            *(v0 + 163) = BYTE3(v78);
            *(v0 + 164) = BYTE4(v78);
            v170 = BYTE6(v78);
            *(v0 + 165) = BYTE5(v78);
            v171 = (v0 + 272);
            v172 = (v0 + 152);
            goto LABEL_263;
          }

          if (v80 == 2)
          {
            v165 = *(v76 + 16);
            v166 = *(v76 + 24);
            v92 = __DataStorage._bytes.getter();
            if (v92)
            {
              v167 = __DataStorage._offset.getter();
              if (__OFSUB__(v165, v167))
              {
                goto LABEL_345;
              }

              v92 += v165 - v167;
            }

            v84 = __OFSUB__(v166, v165);
            v168 = v166 - v165;
            if (v84)
            {
              goto LABEL_338;
            }

            v169 = __DataStorage._length.getter();
            if (!v92)
            {
              goto LABEL_377;
            }
          }

          else
          {
            v168 = (v76 >> 32) - v76;
            if (v76 >> 32 < v76)
            {
              goto LABEL_335;
            }

            v176 = __DataStorage._bytes.getter();
            if (!v176)
            {
              goto LABEL_375;
            }

            v177 = v176;
            v178 = __DataStorage._offset.getter();
            if (__OFSUB__(v76, v178))
            {
              goto LABEL_341;
            }

            v92 = v76 - v178 + v177;
            v169 = __DataStorage._length.getter();
            if (!v92)
            {
              goto LABEL_376;
            }
          }

          if (v169 >= v168)
          {
            v170 = v168;
          }

          else
          {
            v170 = v169;
          }

          v171 = (v0 + 272);
LABEL_262:
          v172 = v92;
LABEL_263:
          v179 = memcmp(v171, v172, v170);
          sub_10006A178(v76, v78);
          v93 = v238;
          if (!v179)
          {
            goto LABEL_291;
          }

          goto LABEL_68;
        }

        v242 = *(v74 + 16);
        v153 = __DataStorage._bytes.getter();
        if (v153)
        {
          v154 = __DataStorage._offset.getter();
          if (__OFSUB__(v242, v154))
          {
            goto LABEL_333;
          }

          v153 += v242 - v154;
        }

        __DataStorage._length.getter();
        if (v80 == 2)
        {
          v180 = *(v76 + 16);
          v181 = *(v76 + 24);
          v155 = __DataStorage._bytes.getter();
          if (v155)
          {
            v182 = __DataStorage._offset.getter();
            if (__OFSUB__(v180, v182))
            {
              goto LABEL_347;
            }

            v155 += v180 - v182;
          }

          v84 = __OFSUB__(v181, v180);
          v183 = v181 - v180;
          if (v84)
          {
            goto LABEL_342;
          }

          v184 = __DataStorage._length.getter();
          if (v184 >= v183)
          {
            v158 = v183;
          }

          else
          {
            v158 = v184;
          }

          v57 = v239;
          if (!v153)
          {
            goto LABEL_368;
          }

          v93 = v238;
          if (!v155)
          {
            goto LABEL_367;
          }

          goto LABEL_286;
        }

        if (v80 == 1)
        {
          if (v76 >> 32 < v76)
          {
            goto LABEL_339;
          }

          v155 = __DataStorage._bytes.getter();
          if (v155)
          {
            v156 = __DataStorage._offset.getter();
            if (__OFSUB__(v76, v156))
            {
              goto LABEL_349;
            }

            v155 += v76 - v156;
          }

          v57 = v239;
          v157 = __DataStorage._length.getter();
          if (v157 >= (v76 >> 32) - v76)
          {
            v158 = (v76 >> 32) - v76;
          }

          else
          {
            v158 = v157;
          }

          if (!v153)
          {
            goto LABEL_366;
          }

          v93 = v238;
          if (!v155)
          {
            goto LABEL_365;
          }

LABEL_286:
          if (v153 != v155)
          {
            v190 = v158;
            v191 = v153;
            v192 = v155;
LABEL_290:
            v193 = memcmp(v191, v192, v190);
            sub_10006A178(v76, v78);
            if (v193)
            {
              goto LABEL_68;
            }

LABEL_291:
            sub_10018C684(v0 + 80);
LABEL_26:
            v40 = v234;
            v56 = v228;
            goto LABEL_27;
          }

LABEL_24:
          sub_10018C684(v0 + 80);
          v66 = v76;
          v67 = v78;
LABEL_25:
          sub_10006A178(v66, v67);
          goto LABEL_26;
        }

        *(v0 + 152) = v76;
        *(v0 + 160) = v78;
        *(v0 + 162) = BYTE2(v78);
        *(v0 + 163) = BYTE3(v78);
        *(v0 + 164) = BYTE4(v78);
        *(v0 + 165) = BYTE5(v78);
        v93 = v238;
        if (!v153)
        {
          goto LABEL_364;
        }
      }

      else
      {
        if (!v79)
        {
          *(v0 + 152) = v74;
          *(v0 + 160) = v73;
          *(v0 + 162) = BYTE2(v73);
          *(v0 + 163) = BYTE3(v73);
          *(v0 + 164) = BYTE4(v73);
          *(v0 + 165) = BYTE5(v73);
          if (!v80)
          {
            *(v0 + 272) = v76;
            *(v0 + 280) = v78;
            *(v0 + 282) = BYTE2(v78);
            *(v0 + 283) = BYTE3(v78);
            *(v0 + 284) = BYTE4(v78);
            v170 = BYTE6(v78);
            *(v0 + 285) = BYTE5(v78);
            v171 = (v0 + 152);
            v172 = (v0 + 272);
            goto LABEL_263;
          }

          if (v80 == 1)
          {
            v88 = (v76 >> 32) - v76;
            if (v76 >> 32 < v76)
            {
              goto LABEL_336;
            }

            v89 = __DataStorage._bytes.getter();
            if (!v89)
            {
              goto LABEL_378;
            }

            v90 = v89;
            v91 = __DataStorage._offset.getter();
            if (__OFSUB__(v76, v91))
            {
              goto LABEL_340;
            }

            v92 = v76 - v91 + v90;
            v48 = __DataStorage._length.getter();
            if (!v92)
            {
              goto LABEL_379;
            }
          }

          else
          {
            v173 = *(v76 + 16);
            v174 = *(v76 + 24);
            v92 = __DataStorage._bytes.getter();
            if (v92)
            {
              v175 = __DataStorage._offset.getter();
              if (__OFSUB__(v173, v175))
              {
                goto LABEL_346;
              }

              v92 += v173 - v175;
            }

            v84 = __OFSUB__(v174, v173);
            v88 = v174 - v173;
            if (v84)
            {
              goto LABEL_337;
            }

            v48 = __DataStorage._length.getter();
            if (!v92)
            {
              goto LABEL_374;
            }
          }

          if (v48 >= v88)
          {
            v170 = v88;
          }

          else
          {
            v170 = v48;
          }

          v171 = (v0 + 152);
          goto LABEL_262;
        }

        if (v74 > v74 >> 32)
        {
          goto LABEL_332;
        }

        v153 = __DataStorage._bytes.getter();
        if (v153)
        {
          v162 = __DataStorage._offset.getter();
          if (__OFSUB__(v74, v162))
          {
            goto LABEL_334;
          }

          v153 += v74 - v162;
        }

        __DataStorage._length.getter();
        if (v80 == 2)
        {
          v185 = *(v76 + 16);
          v186 = *(v76 + 24);
          v155 = __DataStorage._bytes.getter();
          if (v155)
          {
            v187 = __DataStorage._offset.getter();
            if (__OFSUB__(v185, v187))
            {
              goto LABEL_348;
            }

            v155 += v185 - v187;
          }

          v84 = __OFSUB__(v186, v185);
          v188 = v186 - v185;
          if (v84)
          {
            goto LABEL_344;
          }

          v189 = __DataStorage._length.getter();
          if (v189 >= v188)
          {
            v158 = v188;
          }

          else
          {
            v158 = v189;
          }

          v57 = v239;
          if (!v153)
          {
            goto LABEL_373;
          }

          v93 = v238;
          if (!v155)
          {
            goto LABEL_372;
          }

          goto LABEL_286;
        }

        if (v80 == 1)
        {
          if (v76 >> 32 < v76)
          {
            goto LABEL_343;
          }

          v155 = __DataStorage._bytes.getter();
          if (v155)
          {
            v163 = __DataStorage._offset.getter();
            if (__OFSUB__(v76, v163))
            {
              goto LABEL_350;
            }

            v155 += v76 - v163;
          }

          v57 = v239;
          v164 = __DataStorage._length.getter();
          if (v164 >= (v76 >> 32) - v76)
          {
            v158 = (v76 >> 32) - v76;
          }

          else
          {
            v158 = v164;
          }

          if (!v153)
          {
            goto LABEL_371;
          }

          v93 = v238;
          if (!v155)
          {
            goto LABEL_370;
          }

          goto LABEL_286;
        }

        *(v0 + 152) = v76;
        *(v0 + 160) = v78;
        *(v0 + 162) = BYTE2(v78);
        *(v0 + 163) = BYTE3(v78);
        *(v0 + 164) = BYTE4(v78);
        *(v0 + 165) = BYTE5(v78);
        v93 = v238;
        if (!v153)
        {
          goto LABEL_369;
        }
      }

      v190 = BYTE6(v78);
      v191 = v153;
      v192 = (v0 + 152);
      goto LABEL_290;
    }

    if (v80 == 2)
    {
      v86 = *(v76 + 16);
      v85 = *(v76 + 24);
      v84 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v84)
      {
        goto LABEL_315;
      }

      if (v81 == v87)
      {
        goto LABEL_56;
      }
    }

    else if (!v81)
    {
      goto LABEL_24;
    }

LABEL_67:
    sub_10006A178(v76, v78);
    v93 = v73;
LABEL_68:
    v94 = [v240 previousTLKs];
    sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v40 >> 62)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
      v96 = v95;
      if (!v95)
      {
LABEL_295:

        v194 = v227;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 288) = v227;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F684(0, v227[2] + 1, 1);
          v194 = *(v0 + 288);
        }

        v40 = v234;
        v56 = v228;
        v64 = v219;
        v68 = v233;
        v197 = v194[2];
        v196 = v194[3];
        if (v197 >= v196 >> 1)
        {
          sub_10019F684((v196 > 1), v197 + 1, 1);
          v68 = v233;
          v194 = *(v0 + 288);
        }

        v194[2] = v197 + 1;
        v227 = v194;
        v198 = &v194[9 * v197];
        *(v198 + 2) = *(v0 + 80);
        v199 = *(v0 + 96);
        v200 = *(v0 + 112);
        v201 = *(v0 + 128);
        *(v198 + 96) = *(v0 + 144);
        *(v198 + 4) = v200;
        *(v198 + 5) = v201;
        *(v198 + 3) = v199;
        goto LABEL_28;
      }
    }

    else
    {
      v96 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v96)
      {
        goto LABEL_295;
      }
    }

    v97 = v74;
    v98 = 0;
    __n = BYTE6(v93);
    v229 = v97;
    v221 = (v97 >> 32) - v97;
    v222 = v97 >> 32;
    v223 = HIDWORD(v97);
    v84 = __OFSUB__(HIDWORD(v97), v97);
    v99 = HIDWORD(v97) - v97;
    v100 = v84;
    v232 = v100;
    v231 = v99;
    v241 = v96;
LABEL_77:
    if ((v40 & 0xC000000000000001) != 0)
    {
      v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v98 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_304;
      }

      v95 = *(v40 + 8 * v98 + 32);
    }

    v101 = v95;
    v102 = (v98 + 1);
    if (__OFADD__(v98, 1))
    {
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      v203 = *(v0 + 352);
      v204 = *(v0 + 336);
      v205 = v95;

      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v244[0] = v209;
        *v208 = 136315138;
        v210 = Array.description.getter();
        v212 = sub_1002FFA0C(v210, v211, v244);

        *(v208 + 4) = v212;
        _os_log_impl(&_mh_execute_header, v206, v207, "Removing stale TLKs %s", v208, 0xCu);
        sub_1000752F4(v209);
      }

      v213 = objc_opt_self();
      *(v0 + 424) = v213;
      if (v205[2])
      {
        v41 = v213;
        v31 = 0;
        v32 = *(v0 + 408);
LABEL_12:
        *(v0 + 432) = v40;
        *(v0 + 440) = v31;
        v42 = v32 + 72 * v31;
        *(v0 + 80) = *(v42 + 32);
        v43 = *(v42 + 48);
        v44 = *(v42 + 64);
        v45 = *(v42 + 80);
        *(v0 + 144) = *(v42 + 96);
        *(v0 + 112) = v44;
        *(v0 + 128) = v45;
        *(v0 + 96) = v43;
        sub_10018C628(v0 + 80, __s2);
        v46 = String._bridgeToObjectiveC()();
        *(v0 + 448) = v46;
        *(v0 + 16) = v0;
        *(v0 + 56) = v220;
        *(v0 + 24) = sub_1001738C8;
        v47 = swift_continuation_init();
        *(v0 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
        *(v0 + 152) = _NSConcreteStackBlock;
        *(v0 + 160) = 1107296256;
        *(v0 + 168) = sub_1001861F4;
        *(v0 + 176) = &unk_1004C94F8;
        *(v0 + 184) = v47;
        sub_1003AF710(v41, v46, __s2);
        v48 = v0 + 16;

        return _swift_continuation_await(v48);
      }

      goto LABEL_317;
    }

    v103 = [v95 tlkUUID];
    v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v107 = v106 >> 62;
    if (v106 >> 62 == 3)
    {
      v108 = 0;
      v109 = v243;
      if (v243 == 3 && !v104 && v106 == 0xC000000000000000)
      {
        v104 = 0;
        if (v237)
        {
LABEL_215:
          v159 = v234;
          v56 = v228;
          v64 = v219;
        }

        else
        {
          v159 = v234;
          v56 = v228;
          v64 = v219;
          if (v93 == 0xC000000000000000)
          {

            sub_10018C684(v0 + 80);

            v160 = 0;
            v161 = 0xC000000000000000;
LABEL_217:
            sub_10006A178(v160, v161);
            v57 = v239;
            v68 = v233;
            v40 = v159;
            goto LABEL_28;
          }
        }

        sub_10018C684(v0 + 80);

        v160 = v104;
        v161 = v106;
        goto LABEL_217;
      }

LABEL_95:
      if (v109 <= 1)
      {
        goto LABEL_96;
      }

      goto LABEL_89;
    }

    v109 = v243;
    if (v107 > 1)
    {
      if (v107 == 2)
      {
        v114 = *(v104 + 16);
        v113 = *(v104 + 24);
        v84 = __OFSUB__(v113, v114);
        v108 = v113 - v114;
        if (v84)
        {
          goto LABEL_310;
        }

        goto LABEL_95;
      }

      v108 = 0;
      if (v243 <= 1)
      {
        goto LABEL_96;
      }
    }

    else if (v107)
    {
      LODWORD(v108) = HIDWORD(v104) - v104;
      if (__OFSUB__(HIDWORD(v104), v104))
      {
        goto LABEL_311;
      }

      v108 = v108;
      if (v243 <= 1)
      {
LABEL_96:
        v112 = __n;
        if (v109)
        {
          v112 = v231;
          if (v232)
          {
            goto LABEL_309;
          }
        }

        goto LABEL_98;
      }
    }

    else
    {
      v108 = BYTE6(v106);
      if (v243 <= 1)
      {
        goto LABEL_96;
      }
    }

LABEL_89:
    if (v109 != 2)
    {
      if (!v108)
      {
        goto LABEL_215;
      }

LABEL_75:

      v95 = sub_10006A178(v104, v106);
      goto LABEL_76;
    }

    v111 = *(v237 + 16);
    v110 = *(v237 + 24);
    v84 = __OFSUB__(v110, v111);
    v112 = v110 - v111;
    if (v84)
    {
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

LABEL_98:
    if (v108 != v112)
    {
      goto LABEL_75;
    }

    if (v108 < 1)
    {
      goto LABEL_215;
    }

    if (v107 > 1)
    {
      break;
    }

    if (!v107)
    {
      *(v0 + 152) = v104;
      *(v0 + 160) = v106;
      *(v0 + 162) = BYTE2(v106);
      *(v0 + 163) = BYTE3(v106);
      *(v0 + 164) = BYTE4(v106);
      *(v0 + 165) = BYTE5(v106);
      sub_10019F024(__s2, v237, v93, v244);

      v95 = sub_10006A178(v104, v106);
      v93 = v238;
      if (v244[0])
      {
        goto LABEL_242;
      }

      goto LABEL_76;
    }

    if (v104 > v104 >> 32)
    {
      goto LABEL_312;
    }

    v119 = __DataStorage._bytes.getter();
    if (v119)
    {
      v120 = v119;
      v121 = __DataStorage._offset.getter();
      if (__OFSUB__(v104, v121))
      {
        goto LABEL_314;
      }

      __s1a = (v104 - v121 + v120);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    v93 = v238;
    if (v243 != 2)
    {
      if (v243 == 1)
      {
        if (v222 < v229)
        {
          goto LABEL_323;
        }

        v125 = __DataStorage._bytes.getter();
        if (v125)
        {
          v132 = __DataStorage._offset.getter();
          if (__OFSUB__(v229, v132))
          {
            goto LABEL_331;
          }

          v125 += v229 - v132;
        }

        v133 = __DataStorage._length.getter();
        v131 = v221;
        if (v133 < v221)
        {
          v131 = v133;
        }

        v128 = __s1a;
        if (!__s1a)
        {
          goto LABEL_357;
        }

        if (!v125)
        {
          goto LABEL_356;
        }

LABEL_150:
        if (v128 == v125)
        {
          goto LABEL_292;
        }

LABEL_192:
        v127 = v131;
LABEL_193:
        v152 = memcmp(v128, v125, v127);

        v95 = sub_10006A178(v104, v106);
        if (!v152)
        {
          goto LABEL_242;
        }

        goto LABEL_76;
      }

      v137 = __s1a;
      *(v0 + 152) = v237;
      *(v0 + 156) = v223;
      *(v0 + 157) = *(&v237 + 5);
      *(v0 + 159) = HIBYTE(v237);
      *(v0 + 160) = v238;
      *(v0 + 164) = WORD2(v238);
      if (!__s1a)
      {
        goto LABEL_361;
      }

LABEL_165:
      v138 = (v0 + 152);
LABEL_166:
      v143 = memcmp(v137, v138, __n);

      v95 = sub_10006A178(v104, v106);
      if (!v143)
      {
        goto LABEL_242;
      }

      goto LABEL_76;
    }

    v215 = *(v237 + 24);
    v218 = *(v237 + 16);
    v125 = __DataStorage._bytes.getter();
    if (v125)
    {
      v141 = __DataStorage._offset.getter();
      v142 = v218;
      if (__OFSUB__(v218, v141))
      {
        goto LABEL_329;
      }

      v125 += v218 - v141;
    }

    else
    {
      v142 = v218;
    }

    v150 = v215 - v142;
    if (__OFSUB__(v215, v142))
    {
      goto LABEL_324;
    }

    v151 = __DataStorage._length.getter();
    if (v151 >= v150)
    {
      v131 = v150;
    }

    else
    {
      v131 = v151;
    }

    v128 = __s1a;
    if (!__s1a)
    {
      goto LABEL_363;
    }

    if (!v125)
    {
      goto LABEL_362;
    }

LABEL_191:
    v93 = v238;
    if (v128 != v125)
    {
      goto LABEL_192;
    }

LABEL_292:

    sub_10018C684(v0 + 80);
    sub_10006A178(v104, v106);
    v40 = v234;
LABEL_293:
    v56 = v228;
    v57 = v239;
    v64 = v219;
LABEL_27:
    v68 = v233;
LABEL_28:
    v65 = v68 + 1;
    if (v65 == v230)
    {
      goto LABEL_301;
    }
  }

  if (v107 == 2)
  {
    v115 = *(v104 + 16);
    v116 = __DataStorage._bytes.getter();
    if (v116)
    {
      v117 = v116;
      v118 = __DataStorage._offset.getter();
      if (__OFSUB__(v115, v118))
      {
        goto LABEL_313;
      }

      __s1 = (v115 - v118 + v117);
    }

    else
    {
      __s1 = 0;
    }

    __DataStorage._length.getter();
    v93 = v238;
    if (v243 != 2)
    {
      if (v243 == 1)
      {
        if (v222 < v229)
        {
          goto LABEL_320;
        }

        v125 = __DataStorage._bytes.getter();
        if (v125)
        {
          v129 = __DataStorage._offset.getter();
          if (__OFSUB__(v229, v129))
          {
            goto LABEL_330;
          }

          v125 += v229 - v129;
        }

        v130 = __DataStorage._length.getter();
        v131 = v221;
        if (v130 < v221)
        {
          v131 = v130;
        }

        v128 = __s1;
        if (!__s1)
        {
          goto LABEL_360;
        }

        if (!v125)
        {
          goto LABEL_359;
        }

        goto LABEL_150;
      }

      v137 = __s1;
      *(v0 + 152) = v237;
      *(v0 + 156) = v223;
      *(v0 + 157) = *(&v237 + 5);
      *(v0 + 159) = HIBYTE(v237);
      *(v0 + 160) = v238;
      *(v0 + 164) = WORD2(v238);
      if (!__s1)
      {
        goto LABEL_353;
      }

      goto LABEL_165;
    }

    v214 = *(v237 + 24);
    v217 = *(v237 + 16);
    v125 = __DataStorage._bytes.getter();
    if (v125)
    {
      v139 = __DataStorage._offset.getter();
      v140 = v217;
      if (__OFSUB__(v217, v139))
      {
        goto LABEL_328;
      }

      v125 += v217 - v139;
    }

    else
    {
      v140 = v217;
    }

    v148 = v214 - v140;
    if (__OFSUB__(v214, v140))
    {
      goto LABEL_322;
    }

    v149 = __DataStorage._length.getter();
    if (v149 >= v148)
    {
      v131 = v148;
    }

    else
    {
      v131 = v149;
    }

    v128 = __s1;
    if (!__s1)
    {
      goto LABEL_355;
    }

    if (!v125)
    {
      goto LABEL_354;
    }

    goto LABEL_191;
  }

  *(v0 + 158) = 0;
  *__s2 = 0;
  if (v109 == 2)
  {
    __s1b = *(v237 + 16);
    v216 = *(v237 + 24);
    v134 = __DataStorage._bytes.getter();
    if (v134)
    {
      v135 = __DataStorage._offset.getter();
      v136 = __s1b;
      if (__OFSUB__(__s1b, v135))
      {
        goto LABEL_327;
      }

      v134 = &__s1b[v134 - v135];
    }

    else
    {
      v136 = __s1b;
    }

    v144 = v216 - v136;
    if (__OFSUB__(v216, v136))
    {
      goto LABEL_319;
    }

    v145 = __DataStorage._length.getter();
    if (!v134)
    {
      goto LABEL_358;
    }

    if (v145 >= v144)
    {
      v146 = v144;
    }

    else
    {
      v146 = v145;
    }

    v147 = memcmp(__s2, v134, v146);

    v95 = sub_10006A178(v104, v106);
    v93 = v238;
    if (!v147)
    {
LABEL_242:

      sub_10018C684(v0 + 80);
      v40 = v234;
      goto LABEL_293;
    }

LABEL_76:
    ++v98;
    v57 = v239;
    if (v102 == v241)
    {
      goto LABEL_295;
    }

    goto LABEL_77;
  }

  if (v109 != 1)
  {
    *(v0 + 272) = v237;
    *(v0 + 276) = v223;
    *(v0 + 277) = *(&v237 + 5);
    *(v0 + 279) = HIBYTE(v237);
    *(v0 + 280) = v93;
    *(v0 + 282) = BYTE2(v93);
    *(v0 + 283) = BYTE3(v93);
    *(v0 + 284) = BYTE4(v93);
    *(v0 + 285) = BYTE5(v93);
    v137 = (v0 + 152);
    v138 = (v0 + 272);
    goto LABEL_166;
  }

  if (v222 < v229)
  {
    goto LABEL_318;
  }

  v122 = __DataStorage._bytes.getter();
  if (v122)
  {
    v123 = v122;
    v124 = __DataStorage._offset.getter();
    if (__OFSUB__(v229, v124))
    {
      goto LABEL_321;
    }

    v125 = (v229 - v124 + v123);
    v126 = __DataStorage._length.getter();
    if (!v125)
    {
      goto LABEL_352;
    }

    if (v126 >= v221)
    {
      v127 = v221;
    }

    else
    {
      v127 = v126;
    }

    v128 = (v0 + 152);
    goto LABEL_193;
  }

  __DataStorage._length.getter();
LABEL_352:
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __DataStorage._length.getter();
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  v48 = __DataStorage._length.getter();
LABEL_379:
  __break(1u);
  return _swift_continuation_await(v48);
}

uint64_t sub_100177110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[32] = a8;
  v9[33] = v8;
  v9[30] = a6;
  v9[31] = a7;
  v9[28] = a4;
  v9[29] = a5;
  v9[26] = a2;
  v9[27] = a3;
  v9[25] = a1;
  v10 = *(type metadata accessor for SESPeerIdentityData(0) - 8);
  v9[34] = v10;
  v9[35] = *(v10 + 64);
  v9[36] = swift_task_alloc();
  v11 = *(*(sub_100068FC4(&qword_100504250, &qword_10040D610) - 8) + 64) + 15;
  v9[37] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SEKeySyncRecovery.RecoveryRecord() - 8) + 64) + 15;
  v9[38] = swift_task_alloc();

  return _swift_task_switch(sub_100177248, v8, 0);
}

uint64_t sub_100177248()
{
  v58 = v0;
  v1 = [*(v0 + 216) currentTLK];
  *(v0 + 312) = v1;
  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = v1;
    if (sub_100182868(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232)))
    {
      v4 = [*(v0 + 216) currentTLK];
      if (!v4)
      {
        __break(1u);
        return _swift_continuation_await(0);
      }

      v5 = v4;
      v6 = *(v0 + 304);
      v8 = *(v0 + 248);
      v7 = *(v0 + 256);
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = [v4 tlkUUID];

      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      sub_1001F3488(v10, v9, v12, v14, v8, v7, (v0 + 353), v6);
      v18 = *(v0 + 264);
      v19 = *(v0 + 208);
      sub_10018CE30(*(v0 + 304), type metadata accessor for SEKeySyncRecovery.RecoveryRecord);
      sub_10006A178(v12, v14);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v24 = *(v0 + 200);
        v23 = *(v0 + 208);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v57 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1002FFA0C(v24, v23, &v57);
        _os_log_impl(&_mh_execute_header, v20, v21, "Detaching a recovery request for view %s", v25, 0xCu);
        sub_1000752F4(v26);
      }

      v28 = *(v0 + 288);
      v27 = *(v0 + 296);
      v49 = *(v0 + 272);
      v50 = *(v0 + 280);
      v54 = *(v0 + 248);
      v55 = *(v0 + 240);
      v56 = *(v0 + 256);
      v29 = *(v0 + 232);
      v30 = *(v0 + 208);
      v52 = v27;
      v53 = *(v0 + 216);
      v31 = *(v0 + 200);
      v51 = *(v0 + 264);
      swift_beginAccess();

      sub_1000D78B8(&v57, v31, v30);
      swift_endAccess();

      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
      sub_10018D04C(v29, v28, type metadata accessor for SESPeerIdentityData);
      v33 = (*(v49 + 80) + 56) & ~*(v49 + 80);
      v34 = (v50 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v31;
      v36[5] = v30;
      v36[6] = v53;
      sub_10018CF04(v28, v36 + v33, type metadata accessor for SESPeerIdentityData);
      v37 = (v36 + v34);
      *v37 = v54;
      v37[1] = v56;
      *(v36 + v35) = v55;
      *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;

      v38 = v53;
      sub_100069E2C(v54, v56);
      v39 = v55;

      sub_1001608B4(0, 0, v52, &unk_10040C490, v36);

      sub_100075768(v52, &qword_100504250, &qword_10040D610);
    }

    else
    {
    }

    v41 = *(v0 + 296);
    v40 = *(v0 + 304);
    v42 = *(v0 + 288);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Recovery but TLK is not set?", v17, 2u);
    }

    *(v0 + 352) = 27;
    sub_10018C6D8();
    swift_willThrowTypedImpl();
    v46 = *(v0 + 296);
    v45 = *(v0 + 304);
    v47 = *(v0 + 288);

    v48 = *(v0 + 8);

    return v48(27);
  }
}

uint64_t sub_1001779E8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 264);
  if (v3)
  {
    v5 = sub_100177C10;
  }

  else
  {
    v5 = sub_100177B08;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100177B08()
{
  v14 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 264);

  v3 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState;
  if (*(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState))
  {
    v12 = *(v2 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);

    sub_1000D7BA4(&v13, 11);
    v4 = v12;
  }

  else
  {
    v4 = sub_1000B3934(&off_1004C4650);
  }

  v5 = *(v2 + v3);
  *(v2 + v3) = v4;

  v6 = *(v0 + 312);
  *(v0 + 354) = 17;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 288);

  v10 = *(v0 + 8);

  return v10(17);
}

uint64_t sub_100177C10()
{
  v25 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 264);
  swift_willThrow();

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = Error.localizedDescription.getter();
    v16 = sub_1002FFA0C(v14, v15, &v24);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete SE View? %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v17 = *(v0 + 344);
  v18 = *(v0 + 312);
  *(v0 + 355) = 34;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v20 = *(v0 + 296);
  v19 = *(v0 + 304);
  v21 = *(v0 + 288);

  v22 = *(v0 + 8);

  return v22(34);
}

void sub_100177DE4(id a1@<X1>, uint64_t a2@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v65 = *(a2 + 32);
  v67 = [a1 currentTLK];
  if (!v67)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_59;
  }

  v55 = v10;
  v57 = v9;
  v59 = v8;
  v61 = v7;
  v63 = a1;
  v66 = a4;
  v11 = *a3;
  v12 = *(*a3 + 16);

  v13 = v67;
  v69 = v12;
  if (!v12)
  {
LABEL_53:

    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    a4 = v66;
    goto LABEL_59;
  }

  v14 = 0;
  v68 = 0;
  v15 = 32;
  v16 = &selRef_retrievePeripheralsWithIdentifiers_;
  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v72[0] = *(v11 + v15);
    v17 = *(v11 + v15 + 16);
    v18 = *(v11 + v15 + 32);
    v19 = *(v11 + v15 + 48);
    v73 = *(v11 + v15 + 64);
    v72[3] = v19;
    v72[1] = v17;
    v72[2] = v18;
    v20 = *(&v72[0] + 1);
    v21 = *&v72[0];
    sub_10018C628(v72, v71);
    v22 = [v13 v16[105]];
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = v20 >> 62;
    v27 = v25 >> 62;
    if (v20 >> 62 == 3)
    {
      v28 = 0;
      if (!v21 && v20 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v28 = 0;
        if (!v23 && v25 == 0xC000000000000000)
        {

          v50 = 0;
          v51 = 0xC000000000000000;
          goto LABEL_57;
        }
      }

LABEL_25:
      if (v27 <= 1)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        v28 = BYTE6(v20);
        if (v27 <= 1)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      LODWORD(v28) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_63;
      }

      v28 = v28;
      goto LABEL_25;
    }

    if (v26 == 2)
    {
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v31)
      {
        goto LABEL_64;
      }

      goto LABEL_25;
    }

    v28 = 0;
    if (v27 <= 1)
    {
LABEL_26:
      if (v27)
      {
        LODWORD(v32) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_62;
        }

        v32 = v32;
      }

      else
      {
        v32 = BYTE6(v25);
      }

      goto LABEL_33;
    }

LABEL_31:
    if (v27 != 2)
    {
      if (!v28)
      {
        goto LABEL_55;
      }

      goto LABEL_5;
    }

    v34 = *(v23 + 16);
    v33 = *(v23 + 24);
    v31 = __OFSUB__(v33, v34);
    v32 = v33 - v34;
    if (v31)
    {
      goto LABEL_61;
    }

LABEL_33:
    if (v28 == v32)
    {
      break;
    }

LABEL_5:
    sub_10006A178(v23, v25);
    sub_10018C684(v72);
LABEL_6:
    ++v14;
    v15 += 72;
    if (v69 == v14)
    {
      goto LABEL_53;
    }
  }

  if (v28 >= 1)
  {
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        *&v71[6] = 0;
        *v71 = 0;
        goto LABEL_51;
      }

      v36 = *(v21 + 16);
      v35 = *(v21 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v38))
        {
          goto LABEL_67;
        }

        v37 += v36 - v38;
      }

      if (__OFSUB__(v35, v36))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!v26)
      {
        *v71 = v21;
        *&v71[8] = v20;
        v71[10] = BYTE2(v20);
        v71[11] = BYTE3(v20);
        v71[12] = BYTE4(v20);
        v71[13] = BYTE5(v20);
LABEL_51:
        v41 = v68;
        sub_10019F024(v71, v23, v25, &v70);
        sub_10006A178(v23, v25);
        sub_10018C684(v72);
        if (v70)
        {
LABEL_56:

          v16 = &selRef_retrievePeripheralsWithIdentifiers_;
          goto LABEL_58;
        }

LABEL_52:
        v68 = v41;
        v16 = &selRef_retrievePeripheralsWithIdentifiers_;
        goto LABEL_6;
      }

      v39 = v21;
      if (v21 >> 32 < v21)
      {
        goto LABEL_65;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v39, v40))
        {
          goto LABEL_68;
        }

        v37 += v39 - v40;
      }
    }

    __DataStorage._length.getter();
    v41 = v68;
    sub_10019F024(v37, v23, v25, v71);
    sub_10006A178(v23, v25);
    sub_10018C684(v72);
    v13 = v67;
    if (v71[0])
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_55:

  v50 = v23;
  v51 = v25;
LABEL_57:
  sub_10006A178(v50, v51);
  sub_10018C684(v72);
LABEL_58:
  v52 = [v13 v16[105]];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v53;

  sub_10018C898(a2, v71);
  v48 = v63;
  v54 = v63;
  a4 = v66;
  v49 = v65 & 1;
  v45 = v60;
  v44 = v62;
  v47 = v56;
  v46 = v58;
LABEL_59:
  *a4 = v42;
  a4[1] = v43;
  a4[2] = v44;
  a4[3] = v45;
  a4[4] = v46;
  a4[5] = v47;
  a4[6] = v49;
  a4[7] = v48;
}

uint64_t sub_100178310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[107] = v8;
  v9[106] = a8;
  v9[105] = a7;
  v9[104] = a6;
  v9[103] = a5;
  v9[102] = a4;
  v9[101] = a3;
  v9[100] = a2;
  v9[99] = a1;
  v10 = *(*(sub_100068FC4(&qword_100504EF0, &unk_10040C470) - 8) + 64) + 15;
  v9[108] = swift_task_alloc();
  v11 = type metadata accessor for SESPeerIdentityData(0);
  v9[109] = v11;
  v12 = *(v11 - 8);
  v9[110] = v12;
  v13 = *(v12 + 64) + 15;
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v9[114] = swift_task_alloc();
  v14 = type metadata accessor for SESTLKShareData(0);
  v9[115] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();

  return _swift_task_switch(sub_1001784BC, v8, 0);
}

uint64_t sub_1001784BC()
{
  v235 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = [v3 tlkShares];
  *(v0 + 944) = sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v2;
  v9 = v7;
  v10 = 0;
  *(v0 + 952) = sub_10033322C(sub_10018C788, v8, v9);

  *(v0 + 752) = _swiftEmptyArrayStorage;
  v11 = [v3 tlkShares];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = swift_task_alloc();
  v13[2] = v5;
  v13[3] = v4;
  v13[4] = v2;
  v14 = sub_1002FB068(sub_10018C7AC, v13, v12);

  *(v0 + 960) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  sub_100069E2C(v5, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  sub_10006A178(v5, v4);
  if (os_log_type_enabled(v15, v16))
  {
    v229 = v16;
    v17 = *(v0 + 816);
    v18 = *(v0 + 808);
    v19 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v232 = v227;
    *v19 = 136315394;
    sub_100069E2C(v18, v17);
    sub_100288640(4, v18, v17, &v233);
    v2 = v233;
    v20 = v234;
    *(v0 + 624) = sub_100288788(v233, v234);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v21 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;
    sub_10006A178(v2, v20);

    v24 = sub_1002FFA0C(v21, v23, &v232);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v14 & 1;
    _os_log_impl(&_mh_execute_header, v15, v229, "Self share for %s present? %{BOOL}d", v19, 0x12u);
    sub_1000752F4(v227);
  }

  v25 = _swiftEmptyArrayStorage;
  if ((v14 & 1) == 0)
  {
    v30 = swift_task_alloc();
    *(v0 + 968) = v30;
    *v30 = v0;
    v31 = sub_10017A310;
    goto LABEL_6;
  }

  v26 = *(v0 + 840);
  v28 = *(v26 + 48);
  v27 = *(v26 + 56);
  sub_10029FE40(v0 + 272);
  v233 = v28;
  v234 = v27;
  sub_100069E2C(v28, v27);
  v29 = sub_1001A93E0(&v233, (v0 + 272));
  *(v0 + 520) = *(v0 + 288);
  *(v0 + 536) = *(v0 + 304);
  v34 = v29;
  sub_10018C454(v0 + 520);
  *(v0 + 776) = *(v0 + 312);
  sub_100075768(v0 + 776, &qword_100504EC8, &qword_10040C3B0);
  sub_10006A178(v233, v234);
  sub_1002A0074(v34, (v0 + 144));
  v35 = *(v0 + 848);
  v36 = *(v0 + 840);
  v37 = *(v0 + 832);
  v38 = *(v0 + 816);
  v39 = *(v0 + 808);
  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  *(v0 + 992) = v40;
  *(v0 + 1000) = v41;
  sub_100069E2C(v40, v41);
  sub_10018C7D0(v0 + 144);
  v42 = swift_task_alloc();
  *(v42 + 16) = v37;
  *(v42 + 24) = v39;
  *(v42 + 32) = v38;
  *(v42 + 40) = v36;

  v43 = sub_10033322C(sub_10018C824, v42, v35);
  *(v0 + 1008) = v43;

  if (v43 >> 62)
  {
    goto LABEL_168;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 1016) = v44;
  if (!v44)
  {
LABEL_169:
    *(v0 + 1096) = _swiftEmptyArrayStorage;
    v172 = *(v0 + 1008);
    v173 = *(v0 + 1000);
    v174 = *(v0 + 992);

    sub_10006A178(v174, v173);
    if (_swiftEmptyArrayStorage >> 62)
    {
      v199 = _CocoaArrayWrapper.endIndex.getter();
      v175 = *(v0 + 952);
      if (v199)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v175 = *(v0 + 952);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_173:
        v176 = *(v0 + 960);
        v177 = *(v0 + 856);

        v178 = Logger.logObject.getter();
        v179 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          *v180 = 134218240;
          if (_swiftEmptyArrayStorage >> 62)
          {
            v181 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v181 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v182 = *(v0 + 952);
          *(v180 + 4) = v181;

          *(v180 + 12) = 2048;
          if (v182 >> 62)
          {
            if (*(v0 + 952) < 0)
            {
              v200 = *(v0 + 952);
            }

            v183 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v183 = *((v182 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v184 = *(v0 + 952);
          *(v180 + 14) = v183;

          _os_log_impl(&_mh_execute_header, v178, v179, "Adding %ld shares and removing %ld shares", v180, 0x16u);
        }

        else
        {
          v185 = *(v0 + 952);
        }

        v186 = *(v0 + 952);
        v187 = *(v0 + 944);
        v188 = *(v0 + 824);
        v189 = *(v0 + 800);
        v190 = *(v0 + 792);
        v191 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
        v192 = *v188;
        v193 = v188[1];
        v194 = String._bridgeToObjectiveC()();
        *(v0 + 1104) = v194;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 1112) = isa;
        v196 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1120) = v196;
        v197 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1128) = v197;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10017EC78;
        v198 = swift_continuation_init();
        *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 208) = _NSConcreteStackBlock;
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1001E95B0;
        *(v0 + 232) = &unk_1004C9408;
        *(v0 + 240) = v198;
        [v191 modifyTLKSharesForView:v194 altDSID:isa addingShares:v196 removingShares:v197 completion:v0 + 208];
        v44 = (v0 + 16);

        return _swift_continuation_await(v44);
      }
    }

    if (v175 >> 62)
    {
      v201 = _CocoaArrayWrapper.endIndex.getter();
      v202 = *(v0 + 952);
      if (v201)
      {
        goto LABEL_173;
      }
    }

    else if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_173;
    }

    v203 = *(v0 + 936);
    v204 = *(v0 + 928);
    v205 = *(v0 + 912);
    v206 = *(v0 + 904);
    v207 = *(v0 + 896);
    v208 = *(v0 + 888);
    v209 = *(v0 + 864);

    v210 = *(v0 + 8);

    return v210();
  }

  while (2)
  {
    v45 = 0;
    v224 = (v0 + 640);
    v230 = (v0 + 656);
    v212 = (v0 + 760);
    v226 = 0x8000000100464D80;
    v225 = 9;
    while (1)
    {
      *(v0 + 1032) = _swiftEmptyArrayStorage;
      *(v0 + 1024) = _swiftEmptyArrayStorage;
      v46 = *(v0 + 1008);
      if ((v46 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_130;
        }

        v44 = *(v46 + 8 * v45 + 32);
      }

      v47 = v44;
      *(v0 + 1040) = v44;
      *(v0 + 1048) = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_116;
      }

      v48 = *(v0 + 872);
      v49 = *(v0 + 864);
      v50 = type metadata accessor for PropertyListDecoder();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      v53 = [v47 peerData];
      v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      if (v10)
      {
        v57 = *(v0 + 880);
        v58 = *(v0 + 872);
        v39 = *(v0 + 864);

        sub_10006A178(v54, v56);

        v59 = *(v57 + 56);
        v2 = v57 + 56;
        v59(v39, 1, 1, v58);
        sub_100075768(v39, &qword_100504EF0, &unk_10040C470);
        v67 = *(v0 + 856) + *(v0 + 960);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Failed to decode peer data", v70, 2u);
        }

        v71 = objc_opt_self();
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1004098F0;
        strcpy((v0 + 560), "decodingError");
        *(v0 + 574) = -4864;
        AnyHashable.init<A>(_:)();
        *(v72 + 96) = &type metadata for Int;
        *(v72 + 72) = 1;
        sub_100090BC4(v72);
        swift_setDeallocating();
        sub_100075768(v72 + 32, &qword_100502C48, &qword_10040B2D0);
        swift_deallocClassInstance();
        v42 = Dictionary._bridgeToObjectiveC()().super.isa;

        sub_10004DC20(v71, v42);

        goto LABEL_26;
      }

      v60 = *(v0 + 904);
      v61 = *(v0 + 880);
      v62 = *(v0 + 872);
      v63 = *(v0 + 864);
      sub_10006A178(v54, v56);

      (*(v61 + 56))(v63, 0, 1, v62);
      v25 = _swiftEmptyArrayStorage;
      sub_10018CF04(v63, v60, type metadata accessor for SESPeerIdentityData);
      v64 = *(v60 + 48);
      v2 = *(v60 + 56);
      sub_100068FC4(&qword_100504F00, &qword_10040C480);
      v65 = swift_allocObject();
      *(v65 + 109) = 0;
      *(v65 + 110) = -5120;
      *(v65 + 16) = xmmword_10040C130;
      strcpy((v65 + 32), "serialNumber");
      *(v65 + 45) = 0;
      *(v65 + 46) = -5120;
      *(v65 + 48) = 147;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0u;
      *(v65 + 80) = -64;
      *(v65 + 88) = _swiftEmptyArrayStorage;
      strcpy((v65 + 96), "caIdentifier");
      *(v65 + 112) = 66;
      *(v65 + 120) = 0;
      *(v65 + 128) = 0u;
      *(v65 + 144) = -64;
      *(v65 + 152) = _swiftEmptyArrayStorage;
      *(v65 + 160) = 0xD000000000000011;
      *(v65 + 168) = 0x8000000100464D60;
      *(v65 + 176) = 24352;
      *(v65 + 184) = 0;
      *(v65 + 192) = 0u;
      *(v65 + 208) = -64;
      *(v65 + 216) = _swiftEmptyArrayStorage;
      *(v65 + 224) = 0x656761735579656BLL;
      *(v65 + 232) = 0xE800000000000000;
      *(v65 + 240) = 149;
      *(v65 + 248) = 0;
      *(v65 + 256) = 0u;
      *(v65 + 272) = -64;
      *(v65 + 280) = _swiftEmptyArrayStorage;
      strcpy((v65 + 288), "effectiveDate");
      *(v65 + 302) = -4864;
      *(v65 + 304) = 37;
      *(v65 + 312) = 256;
      *(v65 + 320) = 0u;
      *(v65 + 336) = -64;
      *(v65 + 344) = _swiftEmptyArrayStorage;
      strcpy((v65 + 352), "expirationDate");
      *(v65 + 367) = -18;
      *(v65 + 368) = 24356;
      *(v65 + 376) = 256;
      *(v65 + 384) = 0u;
      *(v65 + 400) = -64;
      *(v65 + 408) = _swiftEmptyArrayStorage;
      *(v65 + 416) = 0x4E4944536163;
      *(v65 + 424) = 0xE600000000000000;
      *(v65 + 432) = 69;
      *(v65 + 440) = 0;
      *(v65 + 448) = 0u;
      *(v65 + 464) = -64;
      *(v65 + 472) = _swiftEmptyArrayStorage;
      *(v65 + 480) = 0xD000000000000011;
      *(v65 + 488) = 0x8000000100464D80;
      *(v65 + 496) = 83;
      *(v65 + 504) = 0;
      *(v65 + 512) = 0u;
      *(v65 + 528) = -64;
      *(v65 + 536) = _swiftEmptyArrayStorage;
      *(v65 + 544) = 0x654B63696C627570;
      *(v65 + 552) = 0xE900000000000079;
      *(v65 + 560) = 32585;
      *(v65 + 568) = 0;
      *(v65 + 576) = 0u;
      *(v65 + 592) = -64;
      *(v65 + 600) = _swiftEmptyArrayStorage;
      *(v0 + 320) = 32545;
      *(v0 + 328) = 0;
      *(v0 + 336) = v65;
      *(v0 + 344) = 0;
      *(v0 + 352) = 64;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 576) = v64;
      *(v0 + 584) = v2;
      sub_100069E2C(v64, v2);
      v66 = sub_1001A93E0((v0 + 576), (v0 + 320));

      sub_10006A178(*(v0 + 576), *(v0 + 584));
      sub_1002A0074(v66, (v0 + 80));
      v73 = *(v0 + 1000);
      v74 = *(v0 + 992);
      v10 = *(v0 + 96);
      v42 = *(v0 + 104);
      *(v0 + 1056) = v10;
      *(v0 + 1064) = v42;
      sub_100069E2C(v10, v42);
      sub_10018C7D0(v0 + 80);
      if (sub_10008FB4C(v10, v42, v74, v73))
      {
        v138 = *(v0 + 960);
        v139 = *(v0 + 856);
        v140 = *(v0 + 816);
        v141 = *(v0 + 808);
        sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
        sub_100069E2C(v141, v140);
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.info.getter();
        sub_10006A178(v141, v140);
        if (os_log_type_enabled(v142, v143))
        {
          v144 = *(v0 + 816);
          v145 = *(v0 + 808);
          v146 = swift_slowAlloc();
          *(v0 + 744) = swift_slowAlloc();
          *v146 = 136315394;
          sub_100069E2C(v145, v144);
          v44 = sub_100288640(4, v145, v144, (v0 + 544));
          v25 = *(v0 + 544);
          v39 = *(v0 + 552);
          v42 = v39 >> 62;
          v226 = HIDWORD(v25);
          v219 = v142;
          LOBYTE(v218) = v143;
          v217 = v146;
          if ((v39 >> 62) <= 1)
          {
            if (!v42)
            {
              v10 = BYTE6(v39);
              goto LABEL_122;
            }

LABEL_120:
            if (__OFSUB__(v226, v25))
            {
              goto LABEL_210;
            }

            v10 = v226 - v25;
            goto LABEL_122;
          }

LABEL_116:
          if (v42 == 2)
          {
            v149 = *(v25 + 16);
            v148 = *(v25 + 24);
            v10 = v148 - v149;
            if (__OFSUB__(v148, v149))
            {
              __break(1u);
              goto LABEL_120;
            }

LABEL_122:
            v2 = _swiftEmptyArrayStorage;
            if (v10)
            {
              *v212 = _swiftEmptyArrayStorage;
              v44 = sub_10019F3C0(0, v10 & ~(v10 >> 63), 0);
              v2 = *v212;
              v225 = v25;
              if (v42 != 2)
              {
                if (v42 == 1)
                {
                  v150 = v25;
                  goto LABEL_131;
                }

LABEL_133:
                if (v10 < 0)
                {
                  goto LABEL_211;
                }

                v150 = 0;
                goto LABEL_135;
              }

LABEL_130:
              v150 = *(v25 + 16);
LABEL_131:
              if (v10 < 0)
              {
                __break(1u);
                goto LABEL_133;
              }

LABEL_135:
              v223 = v25 >> 32;
              v221 = v25 >> 16;
              v222 = v25 >> 8;
              v220 = v25 >> 24;
              v228 = v42;
              v231 = v25;
              while (2)
              {
                if (!v10)
                {
                  __break(1u);
                  goto LABEL_192;
                }

                if (v42 != 2)
                {
                  if (v42 == 1)
                  {
                    if (v150 < v225 || v150 >= v223)
                    {
                      goto LABEL_201;
                    }

                    v44 = __DataStorage._bytes.getter();
                    if (!v44)
                    {
                      goto LABEL_212;
                    }

                    v161 = v44;
                    v162 = __DataStorage._offset.getter();
                    v163 = v150 - v162;
                    if (__OFSUB__(v150, v162))
                    {
                      goto LABEL_203;
                    }

LABEL_149:
                    v165 = v161[v163];
                  }

                  else
                  {
                    if (v150 >= BYTE6(v39))
                    {
                      goto LABEL_199;
                    }

                    *(v0 + 471) = v25;
                    *(v0 + 472) = v222;
                    *(v0 + 473) = v221;
                    *(v0 + 474) = v220;
                    *(v0 + 475) = v226;
                    *(v0 + 476) = BYTE5(v25);
                    *(v0 + 477) = BYTE6(v25);
                    *(v0 + 478) = HIBYTE(v25);
                    *(v0 + 479) = v39;
                    *(v0 + 481) = BYTE2(v39);
                    *(v0 + 482) = BYTE3(v39);
                    *(v0 + 483) = BYTE4(v39);
                    *(v0 + 484) = BYTE5(v39);
                    v165 = *(v0 + 471 + v150);
                  }

                  sub_100068FC4(&qword_100502440, &unk_10040B240);
                  v166 = swift_allocObject();
                  *(v166 + 16) = xmmword_1004098F0;
                  *(v166 + 56) = &type metadata for UInt8;
                  *(v166 + 64) = &protocol witness table for UInt8;
                  *(v166 + 32) = v165;
                  v42 = String.init(format:_:)();
                  v168 = v167;
                  *v212 = v2;
                  v170 = *(v2 + 16);
                  v169 = *(v2 + 24);
                  if (v170 >= v169 >> 1)
                  {
                    sub_10019F3C0((v169 > 1), v170 + 1, 1);
                    v2 = *v212;
                  }

                  *(v2 + 16) = v170 + 1;
                  v171 = v2 + 16 * v170;
                  *(v171 + 32) = v42;
                  *(v171 + 40) = v168;
                  ++v150;
                  --v10;
                  LODWORD(v42) = v228;
                  v25 = v231;
                  if (!v10)
                  {
                    goto LABEL_127;
                  }

                  continue;
                }

                break;
              }

              if (v150 < *(v25 + 16))
              {
                goto LABEL_200;
              }

              if (v150 >= *(v25 + 24))
              {
                goto LABEL_202;
              }

              v44 = __DataStorage._bytes.getter();
              if (!v44)
              {
                goto LABEL_213;
              }

              v161 = v44;
              v164 = __DataStorage._offset.getter();
              v163 = v150 - v164;
              if (__OFSUB__(v150, v164))
              {
                goto LABEL_204;
              }

              goto LABEL_149;
            }
          }

          else
          {
            v2 = _swiftEmptyArrayStorage;
          }

LABEL_127:
          v151 = *(v0 + 896);
          *(v0 + 768) = v2;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v152 = BidirectionalCollection<>.joined(separator:)();
          v154 = v153;
          sub_10006A178(v25, v39);

          v155 = sub_1002FFA0C(v152, v154, (v0 + 744));

          *(v217 + 1) = v155;
          *(v217 + 6) = 2080;
          v157 = sub_100289B6C(v156);
          v159 = v158;
          sub_10018CE30(v151, type metadata accessor for SESPeerIdentityData);
          v160 = sub_1002FFA0C(v157, v159, (v0 + 744));

          *(v217 + 14) = v160;
          _os_log_impl(&_mh_execute_header, v219, v218, "KeySyncManager: Sharing TLK %s to %s)", v217, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v147 = *(v0 + 896);

          sub_10018CE30(v147, type metadata accessor for SESPeerIdentityData);
        }

        v30 = swift_task_alloc();
        *(v0 + 1072) = v30;
        *v30 = v0;
        v31 = sub_10017C65C;
LABEL_6:
        v30[1] = v31;
        v32 = *(v0 + 856);

        return sub_10016C130();
      }

      v75 = *(v0 + 1000);
      v76 = *(v0 + 992);
      v77 = *(v0 + 960);
      v78 = *(v0 + 856);
      sub_100069E2C(v76, v75);
      sub_100069E2C(v10, v42);
      v79 = v47;
      v39 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      sub_10006A178(v76, v75);
      sub_10006A178(v10, v42);

      if (os_log_type_enabled(v39, v80))
      {
        break;
      }

      v85 = *(v0 + 904);
      sub_10006A178(v10, v42);

      v86 = v85;
LABEL_84:
      v44 = sub_10018CE30(v86, type metadata accessor for SESPeerIdentityData);
LABEL_26:
      v10 = 0;
      v45 = *(v0 + 1048);
      if (v45 == *(v0 + 1016))
      {
        goto LABEL_169;
      }
    }

    v214 = v80;
    v81 = *(v0 + 1000) >> 62;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *(v0 + 672) = swift_slowAlloc();
    v217 = v82;
    *v82 = 136315650;
    v215 = v79;
    log = v39;
    v213 = v83;
    if (v81 > 1)
    {
      if (v81 != 2)
      {
LABEL_44:
        v94 = _swiftEmptyArrayStorage;
LABEL_69:
        *(v0 + 648) = v94;
        v39 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v113 = BidirectionalCollection<>.joined(separator:)();
        v115 = v114;

        v116 = sub_1002FFA0C(v113, v115, (v0 + 672));

        *(v217 + 1) = v116;
        *(v217 + 6) = 2080;
        v117 = v42 >> 62;
        if ((v42 >> 62) > 1)
        {
          if (v117 != 2)
          {
LABEL_82:
            v120 = _swiftEmptyArrayStorage;
LABEL_83:
            v2 = *(v0 + 904);
            *(v0 + 736) = v120;
            v121 = BidirectionalCollection<>.joined(separator:)();
            v123 = v122;

            v124 = sub_1002FFA0C(v121, v123, (v0 + 672));

            *(v217 + 14) = v124;
            *(v217 + 11) = 2112;
            *(v217 + 3) = v215;
            *v213 = v215;
            v125 = v215;
            _os_log_impl(&_mh_execute_header, log, v214, "Cannot export from my CA %s) to CA %s for peer %@", v217, 0x20u);
            sub_100075768(v213, &unk_100503F70, &unk_10040B2E0);

            swift_arrayDestroy();

            sub_10006A178(v10, v42);
            v86 = v2;
            goto LABEL_84;
          }

          v119 = *(v10 + 16);
          v118 = *(v10 + 24);
          v2 = v118 - v119;
          if (__OFSUB__(v118, v119))
          {
            goto LABEL_196;
          }
        }

        else if (v117)
        {
          if (__OFSUB__(HIDWORD(v10), v10))
          {
            goto LABEL_197;
          }

          v2 = HIDWORD(v10) - v10;
        }

        else
        {
          v2 = BYTE6(v42);
        }

        if (v2)
        {
          *v224 = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
          v120 = *v224;
          if (v117 != 2)
          {
            if (v117 == 1)
            {
              v39 = v10;
              goto LABEL_86;
            }

            if ((v2 & 0x8000000000000000) == 0)
            {
              v39 = 0;
              goto LABEL_90;
            }

LABEL_205:
            __break(1u);
          }

          v39 = *(v10 + 16);
LABEL_86:
          if (v2 < 0)
          {
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

LABEL_90:
          v218 = v10 >> 32;
          v219 = BYTE6(v42);
          while (2)
          {
            if (v117 == 2)
            {
              if (v39 < *(v10 + 16))
              {
                goto LABEL_162;
              }

              if (v39 >= *(v10 + 24))
              {
                goto LABEL_165;
              }

              v44 = __DataStorage._bytes.getter();
              if (!v44)
              {
                goto LABEL_209;
              }

              v126 = v44;
              v129 = __DataStorage._offset.getter();
              v128 = v39 - v129;
              if (__OFSUB__(v39, v129))
              {
                goto LABEL_167;
              }

LABEL_103:
              v130 = v126[v128];
            }

            else
            {
              if (v117 == 1)
              {
                if (v39 < v10 || v39 >= v218)
                {
                  goto LABEL_164;
                }

                v44 = __DataStorage._bytes.getter();
                if (!v44)
                {
                  goto LABEL_208;
                }

                v126 = v44;
                v127 = __DataStorage._offset.getter();
                v128 = v39 - v127;
                if (__OFSUB__(v39, v127))
                {
                  goto LABEL_166;
                }

                goto LABEL_103;
              }

              if (v39 >= BYTE6(v42))
              {
                goto LABEL_163;
              }

              *(v0 + 457) = v10;
              *(v0 + 465) = v42;
              *(v0 + 467) = BYTE2(v42);
              *(v0 + 468) = BYTE3(v42);
              *(v0 + 469) = BYTE4(v42);
              *(v0 + 470) = BYTE5(v42);
              v130 = *(v0 + 457 + v39);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v131 = swift_allocObject();
            *(v131 + 16) = xmmword_1004098F0;
            *(v131 + 56) = &type metadata for UInt8;
            *(v131 + 64) = &protocol witness table for UInt8;
            *(v131 + 32) = v130;
            v132 = String.init(format:_:)();
            *v224 = v120;
            v135 = v120[2];
            v134 = v120[3];
            if (v135 >= v134 >> 1)
            {
              v211 = v132;
              v137 = v133;
              sub_10019F3C0((v134 > 1), v135 + 1, 1);
              v133 = v137;
              v132 = v211;
              v120 = *v224;
            }

            v120[2] = v135 + 1;
            v136 = &v120[2 * v135];
            v136[4] = v132;
            v136[5] = v133;
            ++v39;
            --v2;
            v25 = _swiftEmptyArrayStorage;
            if (!v2)
            {
              goto LABEL_83;
            }

            continue;
          }
        }

        goto LABEL_82;
      }

      v87 = *(*(v0 + 992) + 16);
      v88 = *(*(v0 + 992) + 24);
      v84 = v88 - v87;
      if (__OFSUB__(v88, v87))
      {
        goto LABEL_195;
      }
    }

    else if (v81)
    {
      v89 = *(v0 + 992);
      v90 = *(v0 + 996);
      v91 = __OFSUB__(v90, v89);
      v92 = v90 - v89;
      if (v91)
      {
        goto LABEL_194;
      }

      v84 = v92;
    }

    else
    {
      v84 = *(v0 + 1006);
    }

    if (!v84)
    {
      goto LABEL_44;
    }

    v93 = *(v0 + 1000) >> 62;
    *(v0 + 656) = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v84 & ~(v84 >> 63), 0);
    v94 = *(v0 + 656);
    if (!v93)
    {
      if ((v84 & 0x8000000000000000) == 0)
      {
        v39 = 0;
        goto LABEL_49;
      }

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
      goto LABEL_205;
    }

    if (v93 == 2)
    {
      v39 = *(*(v0 + 992) + 16);
    }

    else
    {
      v39 = *(v0 + 992);
    }

    if (v84 < 0)
    {
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

LABEL_49:
    v97 = *(v0 + 1000);
    if (v97 >> 62 == 2)
    {
      v104 = *(v0 + 992);
      if (v39 < *(v104 + 16))
      {
        goto LABEL_157;
      }

      if (v39 >= *(v104 + 24))
      {
        goto LABEL_159;
      }

      v44 = __DataStorage._bytes.getter();
      if (!v44)
      {
        goto LABEL_207;
      }

      v100 = v44;
      v105 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
      v106 = __DataStorage._offset.getter();
      v103 = v39 - v106;
      if (__OFSUB__(v39, v106))
      {
        goto LABEL_161;
      }

LABEL_63:
      v107 = v100[v103];
      goto LABEL_66;
    }

    if (v97 >> 62 != 1)
    {
      if (v39 >= BYTE6(v97))
      {
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        v44 = _CocoaArrayWrapper.endIndex.getter();
        *(v0 + 1016) = v44;
        if (!v44)
        {
          goto LABEL_169;
        }

        continue;
      }

      *(v0 + 499) = *(v0 + 992);
      *(v0 + 507) = v97;
      *(v0 + 509) = BYTE2(v97);
      *(v0 + 510) = BYTE3(v97);
      *(v0 + 511) = BYTE4(v97);
      *(v0 + 512) = BYTE5(v97);
      v107 = *(v0 + 499 + v39);
LABEL_66:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_1004098F0;
      *(v108 + 56) = &type metadata for UInt8;
      *(v108 + 64) = &protocol witness table for UInt8;
      *(v108 + 32) = v107;
      v109 = String.init(format:_:)();
      *v230 = v94;
      v2 = v94[2];
      v111 = v94[3];
      if (v2 >= v111 >> 1)
      {
        v95 = v109;
        v96 = v110;
        sub_10019F3C0((v111 > 1), v2 + 1, 1);
        v110 = v96;
        v25 = _swiftEmptyArrayStorage;
        v109 = v95;
        v94 = *v230;
      }

      v94[2] = v2 + 1;
      v112 = &v94[2 * v2];
      v112[4] = v109;
      v112[5] = v110;
      ++v39;
      if (!--v84)
      {
        goto LABEL_69;
      }

      goto LABEL_49;
    }

    break;
  }

  v98 = *(v0 + 992);
  if (v39 >= v98 >> 32 || v39 < v98)
  {
    goto LABEL_158;
  }

  v44 = __DataStorage._bytes.getter();
  if (v44)
  {
    v100 = v44;
    v101 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
    v102 = __DataStorage._offset.getter();
    v103 = v39 - v102;
    if (__OFSUB__(v39, v102))
    {
      goto LABEL_160;
    }

    goto LABEL_63;
  }

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
  return _swift_continuation_await(v44);
}

uint64_t sub_10017A310(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 968);
  v10 = *v2;
  v3[122] = a1;
  v3[123] = v1;

  if (v1)
  {
    v5 = v3[119];
    v6 = v3[107];

    v7 = sub_10017EEFC;
    v8 = v6;
  }

  else
  {
    v8 = v3[107];
    v7 = sub_10017A488;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10017A488()
{
  v270 = v0;
  v1 = *(v0 + 984);
  v2 = sub_1001A57D8(*(v0 + 976), *(v0 + 808), *(v0 + 816), *(v0 + 840));
  v4 = v1;
  v5 = *(v0 + 816);
  v6 = *(v0 + 808);
  if (!v4)
  {
    v33 = v2;
    v34 = v3;
    v35 = *(v0 + 936);
    v4 = *(v0 + 920);
    v36 = *(v0 + 840);
    v37 = *(v0 + 824);
    sub_10018D04C(v36, v35, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v36, v35 + *(v4 + 20), type metadata accessor for SESPeerIdentityData);
    v38 = *(v4 + 28);
    sub_100069E2C(v33, v34);
    sub_1001C5FF8((v35 + v38));
    v39 = type metadata accessor for CreationMetadata(0);
    (*(*(v39 - 8) + 56))(v35 + v38, 0, 1, v39);
    v40 = (v35 + *(v4 + 24));
    *v40 = v33;
    v40[1] = v34;
    sub_1001C89E8(*v37, v37[1], v6, v5, v35);
    v41 = *(v0 + 936);
    sub_10018CE30(*(v0 + 936), type metadata accessor for SESTLKShareData);
    sub_10006A178(v33, v34);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_167;
    }

    goto LABEL_14;
  }

  v7 = *(v0 + 960);
  v8 = *(v0 + 856);
  sub_10018D04C(*(v0 + 840), *(v0 + 912), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v6, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  sub_10006A178(v6, v5);

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 912);
  if (v11)
  {
    v265 = v10;
    v13 = *(v0 + 816);
    v14 = *(v0 + 808);
    v15 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    *v15 = 136315650;
    v16 = v14;
    v17 = 0;
    *(v0 + 632) = sub_100288788(v16, v13);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v18 = BidirectionalCollection<>.joined(separator:)();
    v20 = v19;

    v21 = sub_1002FFA0C(v18, v20, &v268);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v23 = sub_100289B6C(v22);
    v25 = v24;
    sub_10018CE30(v12, type metadata accessor for SESPeerIdentityData);
    v26 = sub_1002FFA0C(v23, v25, &v268);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2080;
    swift_getErrorValue();
    v28 = *(v0 + 368);
    v27 = *(v0 + 376);
    v29 = *(v0 + 384);
    v30 = Error.localizedDescription.getter();
    v32 = sub_1002FFA0C(v30, v31, &v268);

    *(v15 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v9, v265, "Failed to export TLK %s to peer %s : %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018CE30(v12, type metadata accessor for SESPeerIdentityData);
    v17 = 0;
  }

  *(v0 + 515) = 14;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v42 = *(v0 + 960);
  v43 = *(v0 + 856);
  v44 = *(v0 + 816);
  v45 = *(v0 + 808);
  sub_100069E2C(v45, v44);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  sub_10006A178(v45, v44);
  if (os_log_type_enabled(v46, v47))
  {
    v266 = v47;
    v48 = *(v0 + 816);
    v49 = *(v0 + 808);
    v50 = swift_slowAlloc();
    v267 = swift_slowAlloc();
    *v50 = 136315394;
    sub_100069E2C(v49, v48);
    sub_100288640(4, v49, v48, &v268);
    v51 = v268;
    v52 = v269;
    v4 = sub_100288788(v268, v269);
    *(v0 + 784) = v4;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v53 = BidirectionalCollection<>.joined(separator:)();
    v55 = v54;
    sub_10006A178(v51, v52);

    v56 = sub_1002FFA0C(v53, v55, &v267);

    *(v50 + 4) = v56;
    *(v50 + 12) = 2080;
    *(v0 + 514) = 14;
    sub_10018C6D8();
    v57 = Error.localizedDescription.getter();
    v59 = sub_1002FFA0C(v57, v58, &v267);

    *(v50 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v46, v266, "Failed to create self-share for tlk %s : %s", v50, 0x16u);
    swift_arrayDestroy();
  }

  v60 = *(v0 + 976);
  v61 = *(v0 + 856);
  sub_100180988(13, 0);

  for (i = _swiftEmptyArrayStorage; ; i = *(v0 + 752))
  {
    v63 = *(v0 + 840);
    v64 = *(v63 + 48);
    v65 = *(v63 + 56);
    sub_10029FE40(v0 + 272);
    v268 = v64;
    v269 = v65;
    sub_100069E2C(v64, v65);
    v66 = sub_1001A93E0(&v268, (v0 + 272));
    *(v0 + 520) = *(v0 + 288);
    *(v0 + 536) = *(v0 + 304);
    v67 = v66;
    sub_10018C454(v0 + 520);
    *(v0 + 776) = *(v0 + 312);
    sub_100075768(v0 + 776, &qword_100504EC8, &qword_10040C3B0);
    sub_10006A178(v268, v269);
    sub_1002A0074(v67, (v0 + 144));
    v70 = *(v0 + 848);
    v71 = *(v0 + 840);
    v72 = *(v0 + 832);
    v73 = *(v0 + 816);
    v74 = *(v0 + 808);
    v75 = *(v0 + 160);
    v76 = *(v0 + 168);
    *(v0 + 992) = v75;
    *(v0 + 1000) = v76;
    sub_100069E2C(v75, v76);
    sub_10018C7D0(v0 + 144);
    v77 = swift_task_alloc();
    v77[2] = v72;
    v77[3] = v74;
    v77[4] = v73;
    v77[5] = v71;

    v78 = sub_10033322C(sub_10018C824, v77, v70);
    *(v0 + 1008) = v78;

    if (!(v78 >> 62))
    {
      v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v79;
      if (!v79)
      {
        goto LABEL_169;
      }

      goto LABEL_17;
    }

    v79 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 1016) = v79;
    if (!v79)
    {
LABEL_169:
      *(v0 + 1096) = i;
      v204 = *(v0 + 1008);
      v205 = *(v0 + 1000);
      v206 = *(v0 + 992);

      sub_10006A178(v206, v205);
      if (i >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_173;
        }
      }

      else if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_173:
        v208 = *(v0 + 960);
        v209 = *(v0 + 952);
        v210 = *(v0 + 856);

        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 134218240;
          if (i >> 62)
          {
            v214 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v214 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v215 = *(v0 + 952);
          *(v213 + 4) = v214;

          *(v213 + 12) = 2048;
          if (v215 >> 62)
          {
            if (*(v0 + 952) < 0)
            {
              v232 = *(v0 + 952);
            }

            v216 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v216 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v217 = *(v0 + 952);
          *(v213 + 14) = v216;

          _os_log_impl(&_mh_execute_header, v211, v212, "Adding %ld shares and removing %ld shares", v213, 0x16u);
        }

        else
        {
          v218 = *(v0 + 952);
        }

        v219 = *(v0 + 952);
        v220 = *(v0 + 944);
        v221 = *(v0 + 824);
        v222 = *(v0 + 800);
        v223 = *(v0 + 792);
        v224 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
        v225 = *v221;
        v226 = v221[1];
        v227 = String._bridgeToObjectiveC()();
        *(v0 + 1104) = v227;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 1112) = isa;
        v229 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1120) = v229;
        v230 = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 1128) = v230;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10017EC78;
        v231 = swift_continuation_init();
        *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 208) = _NSConcreteStackBlock;
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1001E95B0;
        *(v0 + 232) = &unk_1004C9408;
        *(v0 + 240) = v231;
        [v224 modifyTLKSharesForView:v227 altDSID:isa addingShares:v229 removingShares:v230 completion:v0 + 208];
        v79 = (v0 + 16);

        return _swift_continuation_await(v79);
      }

      v207 = *(v0 + 952);
      if (v207 >> 62)
      {
        if (v207 < 0)
        {
          v233 = *(v0 + 952);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_173;
        }
      }

      else if (*((v207 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_173;
      }

      v234 = *(v0 + 952);

      v235 = *(v0 + 936);
      v236 = *(v0 + 928);
      v237 = *(v0 + 912);
      v238 = *(v0 + 904);
      v239 = *(v0 + 896);
      v240 = *(v0 + 888);
      v241 = *(v0 + 864);

      v242 = *(v0 + 8);

      return v242();
    }

LABEL_17:
    v80 = 0;
    v257 = (v0 + 640);
    v261 = (v0 + 656);
    v244 = (v0 + 760);
    v259 = 0x8000000100464D80;
    v260 = 0x8000000100464D60;
    v263 = i;
    while (1)
    {
      *(v0 + 1032) = i;
      *(v0 + 1024) = i;
      v81 = *(v0 + 1008);
      if ((v81 & 0xC000000000000001) != 0)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v80 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          goto LABEL_129;
        }

        v79 = *(v81 + 8 * v80 + 32);
      }

      v74 = v79;
      *(v0 + 1040) = v79;
      *(v0 + 1048) = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
        goto LABEL_113;
      }

      v82 = *(v0 + 872);
      v83 = *(v0 + 864);
      v84 = type metadata accessor for PropertyListDecoder();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      PropertyListDecoder.init()();
      v87 = [v74 peerData];
      v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v91 = *(v0 + 904);
      v92 = *(v0 + 880);
      v93 = *(v0 + 872);
      v4 = *(v0 + 864);
      sub_10006A178(v88, v90);

      (*(v92 + 56))(v4, 0, 1, v93);
      sub_10018CF04(v4, v91, type metadata accessor for SESPeerIdentityData);
      v94 = *(v91 + 48);
      v95 = *(v91 + 56);
      sub_100068FC4(&qword_100504F00, &qword_10040C480);
      v96 = swift_allocObject();
      *(v96 + 109) = 0;
      *(v96 + 110) = -5120;
      *(v96 + 16) = xmmword_10040C130;
      strcpy((v96 + 32), "serialNumber");
      *(v96 + 45) = 0;
      *(v96 + 46) = -5120;
      *(v96 + 48) = 147;
      *(v96 + 56) = 0;
      *(v96 + 64) = 0u;
      *(v96 + 80) = -64;
      *(v96 + 88) = _swiftEmptyArrayStorage;
      strcpy((v96 + 96), "caIdentifier");
      *(v96 + 112) = 66;
      *(v96 + 120) = 0;
      *(v96 + 128) = 0u;
      *(v96 + 144) = -64;
      *(v96 + 152) = _swiftEmptyArrayStorage;
      *(v96 + 160) = 0xD000000000000011;
      *(v96 + 168) = 0x8000000100464D60;
      *(v96 + 176) = 24352;
      *(v96 + 184) = 0;
      *(v96 + 192) = 0u;
      *(v96 + 208) = -64;
      *(v96 + 216) = _swiftEmptyArrayStorage;
      *(v96 + 224) = 0x656761735579656BLL;
      *(v96 + 232) = 0xE800000000000000;
      *(v96 + 240) = 149;
      *(v96 + 248) = 0;
      *(v96 + 256) = 0u;
      *(v96 + 272) = -64;
      *(v96 + 280) = _swiftEmptyArrayStorage;
      strcpy((v96 + 288), "effectiveDate");
      *(v96 + 302) = -4864;
      *(v96 + 304) = 37;
      *(v96 + 312) = 256;
      *(v96 + 320) = 0u;
      *(v96 + 336) = -64;
      *(v96 + 344) = _swiftEmptyArrayStorage;
      strcpy((v96 + 352), "expirationDate");
      *(v96 + 367) = -18;
      *(v96 + 368) = 24356;
      *(v96 + 376) = 256;
      *(v96 + 384) = 0u;
      *(v96 + 400) = -64;
      *(v96 + 408) = _swiftEmptyArrayStorage;
      *(v96 + 416) = 0x4E4944536163;
      *(v96 + 424) = 0xE600000000000000;
      *(v96 + 432) = 69;
      *(v96 + 440) = 0;
      *(v96 + 448) = 0u;
      *(v96 + 464) = -64;
      *(v96 + 472) = _swiftEmptyArrayStorage;
      *(v96 + 480) = 0xD000000000000011;
      *(v96 + 488) = 0x8000000100464D80;
      *(v96 + 496) = 83;
      *(v96 + 504) = 0;
      *(v96 + 512) = 0u;
      *(v96 + 528) = -64;
      *(v96 + 536) = _swiftEmptyArrayStorage;
      *(v96 + 544) = 0x654B63696C627570;
      *(v96 + 552) = 0xE900000000000079;
      *(v96 + 560) = 32585;
      *(v96 + 568) = 0;
      *(v96 + 576) = 0u;
      *(v96 + 592) = -64;
      *(v96 + 600) = _swiftEmptyArrayStorage;
      *(v0 + 320) = 32545;
      *(v0 + 328) = 0;
      *(v0 + 336) = v96;
      *(v0 + 344) = 0;
      *(v0 + 352) = 64;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 576) = v94;
      *(v0 + 584) = v95;
      sub_100069E2C(v94, v95);
      v97 = sub_1001A93E0((v0 + 576), (v0 + 320));

      sub_10006A178(*(v0 + 576), *(v0 + 584));
      sub_1002A0074(v97, (v0 + 80));
      i = v263;
      v98 = *(v0 + 1000);
      v99 = *(v0 + 992);
      v100 = *(v0 + 96);
      v101 = *(v0 + 104);
      *(v0 + 1056) = v100;
      *(v0 + 1064) = v101;
      sub_100069E2C(v100, v101);
      sub_10018C7D0(v0 + 80);
      v102 = sub_10008FB4C(v100, v101, v99, v98);
      if (v102)
      {
        v168 = *(v0 + 960);
        v169 = *(v0 + 856);
        v170 = *(v0 + 816);
        v171 = *(v0 + 808);
        sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
        sub_100069E2C(v171, v170);
        v172 = Logger.logObject.getter();
        v173 = static os_log_type_t.info.getter();
        sub_10006A178(v171, v170);
        if (os_log_type_enabled(v172, v173))
        {
          v174 = *(v0 + 816);
          v175 = *(v0 + 808);
          v176 = swift_slowAlloc();
          *(v0 + 744) = swift_slowAlloc();
          *v176 = 136315394;
          sub_100069E2C(v175, v174);
          v79 = sub_100288640(4, v175, v174, (v0 + 544));
          v4 = *(v0 + 544);
          v74 = *(v0 + 552);
          v71 = (v74 >> 62);
          v260 = HIDWORD(v4);
          v253 = v172;
          v252 = v173;
          v251 = v176;
          if ((v74 >> 62) <= 1)
          {
            if (!v71)
            {
              v17 = BYTE6(v74);
              goto LABEL_119;
            }

LABEL_117:
            if (__OFSUB__(v260, v4))
            {
              goto LABEL_212;
            }

            v17 = v260 - v4;
            goto LABEL_119;
          }

LABEL_113:
          if (v71 == 2)
          {
            v179 = *(v4 + 16);
            v178 = *(v4 + 24);
            v17 = v178 - v179;
            if (__OFSUB__(v178, v179))
            {
              __break(1u);
              goto LABEL_117;
            }

LABEL_119:
            i = _swiftEmptyArrayStorage;
            if (v17)
            {
              *v244 = _swiftEmptyArrayStorage;
              v79 = sub_10019F3C0(0, v17 & ~(v17 >> 63), 0);
              i = *v244;
              v259 = v4;
              if (v71 != 2)
              {
                if (v71 == 1)
                {
                  v180 = v4;
                  goto LABEL_130;
                }

LABEL_132:
                if (v17 < 0)
                {
                  goto LABEL_213;
                }

                v180 = 0;
                goto LABEL_134;
              }

LABEL_129:
              v180 = *(v4 + 16);
LABEL_130:
              if (v17 < 0)
              {
                __break(1u);
                goto LABEL_132;
              }

LABEL_134:
              v258 = v4 >> 32;
              v255 = v4 >> 16;
              v256 = v4 >> 8;
              v254 = v4 >> 24;
              v262 = v71;
              v264 = v4;
              do
              {
                if (!v17)
                {
                  __break(1u);
                  goto LABEL_194;
                }

                if (v71 == 2)
                {
                  if (v180 < *(v4 + 16))
                  {
                    goto LABEL_202;
                  }

                  if (v180 >= *(v4 + 24))
                  {
                    goto LABEL_204;
                  }

                  v79 = __DataStorage._bytes.getter();
                  if (!v79)
                  {
                    goto LABEL_215;
                  }

                  v193 = v79;
                  v196 = __DataStorage._offset.getter();
                  v195 = v180 - v196;
                  if (__OFSUB__(v180, v196))
                  {
                    goto LABEL_206;
                  }
                }

                else
                {
                  if (v71 != 1)
                  {
                    if (v180 >= BYTE6(v74))
                    {
                      goto LABEL_201;
                    }

                    *(v0 + 471) = v4;
                    *(v0 + 472) = v256;
                    *(v0 + 473) = v255;
                    *(v0 + 474) = v254;
                    *(v0 + 475) = v260;
                    *(v0 + 476) = BYTE5(v4);
                    *(v0 + 477) = BYTE6(v4);
                    *(v0 + 478) = HIBYTE(v4);
                    *(v0 + 479) = v74;
                    *(v0 + 481) = BYTE2(v74);
                    *(v0 + 482) = BYTE3(v74);
                    *(v0 + 483) = BYTE4(v74);
                    *(v0 + 484) = BYTE5(v74);
                    v197 = *(v0 + 471 + v180);
                    goto LABEL_151;
                  }

                  if (v180 < v259 || v180 >= v258)
                  {
                    goto LABEL_203;
                  }

                  v79 = __DataStorage._bytes.getter();
                  if (!v79)
                  {
                    goto LABEL_214;
                  }

                  v193 = v79;
                  v194 = __DataStorage._offset.getter();
                  v195 = v180 - v194;
                  if (__OFSUB__(v180, v194))
                  {
                    goto LABEL_205;
                  }
                }

                v197 = v193[v195];
LABEL_151:
                sub_100068FC4(&qword_100502440, &unk_10040B240);
                v198 = swift_allocObject();
                *(v198 + 16) = xmmword_1004098F0;
                *(v198 + 56) = &type metadata for UInt8;
                *(v198 + 64) = &protocol witness table for UInt8;
                *(v198 + 32) = v197;
                v71 = String.init(format:_:)();
                v200 = v199;
                *v244 = i;
                v202 = *(i + 16);
                v201 = *(i + 24);
                if (v202 >= v201 >> 1)
                {
                  sub_10019F3C0((v201 > 1), v202 + 1, 1);
                  i = *v244;
                }

                *(i + 16) = v202 + 1;
                v203 = (i + 16 * v202);
                v203[4] = v71;
                v203[5] = v200;
                ++v180;
                --v17;
                LODWORD(v71) = v262;
                v4 = v264;
              }

              while (v17);
            }
          }

          else
          {
            i = _swiftEmptyArrayStorage;
          }

          v181 = *(v0 + 896);
          *(v0 + 768) = i;
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v182 = BidirectionalCollection<>.joined(separator:)();
          v184 = v183;
          sub_10006A178(v4, v74);

          v185 = sub_1002FFA0C(v182, v184, (v0 + 744));

          *(v251 + 4) = v185;
          *(v251 + 12) = 2080;
          v187 = sub_100289B6C(v186);
          v189 = v188;
          sub_10018CE30(v181, type metadata accessor for SESPeerIdentityData);
          v190 = sub_1002FFA0C(v187, v189, (v0 + 744));

          *(v251 + 14) = v190;
          _os_log_impl(&_mh_execute_header, v253, v252, "KeySyncManager: Sharing TLK %s to %s)", v251, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
          v177 = *(v0 + 896);

          sub_10018CE30(v177, type metadata accessor for SESPeerIdentityData);
        }

        v191 = swift_task_alloc();
        *(v0 + 1072) = v191;
        *v191 = v0;
        v191[1] = sub_10017C65C;
        v192 = *(v0 + 856);

        return sub_10016C130();
      }

      v103 = *(v0 + 1000);
      v104 = *(v0 + 992);
      v105 = *(v0 + 960);
      v106 = *(v0 + 856);
      sub_100069E2C(v104, v103);
      sub_100069E2C(v100, v101);
      v74 = v74;
      v71 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      sub_10006A178(v104, v103);
      sub_10006A178(v100, v101);

      if (os_log_type_enabled(v71, v107))
      {
        break;
      }

      v113 = *(v0 + 904);
      sub_10006A178(v100, v101);

      v79 = sub_10018CE30(v113, type metadata accessor for SESPeerIdentityData);
LABEL_24:
      v17 = 0;
      v80 = *(v0 + 1048);
      if (v80 == *(v0 + 1016))
      {
        goto LABEL_169;
      }
    }

    v247 = v107;
    v108 = *(v0 + 1000) >> 62;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *(v0 + 672) = v111;
    v250 = v109;
    *v109 = 136315650;
    v248 = v74;
    log = v71;
    v245 = v110;
    v246 = v111;
    if (v108 > 1)
    {
      if (v108 == 2)
      {
        v114 = *(*(v0 + 992) + 16);
        v115 = *(*(v0 + 992) + 24);
        v112 = v115 - v114;
        if (__OFSUB__(v115, v114))
        {
          goto LABEL_197;
        }

        goto LABEL_38;
      }

LABEL_42:
      v121 = _swiftEmptyArrayStorage;
LABEL_67:
      *(v0 + 648) = v121;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v141 = BidirectionalCollection<>.joined(separator:)();
      v143 = v142;

      v144 = sub_1002FFA0C(v141, v143, (v0 + 672));

      *(v250 + 1) = v144;
      *(v250 + 6) = 2080;
      v145 = v101 >> 62;
      if ((v101 >> 62) > 1)
      {
        if (v145 != 2)
        {
LABEL_80:
          v148 = _swiftEmptyArrayStorage;
LABEL_81:
          v150 = *(v0 + 904);
          *(v0 + 736) = v148;
          v151 = BidirectionalCollection<>.joined(separator:)();
          v153 = v152;

          v154 = sub_1002FFA0C(v151, v153, (v0 + 672));

          *(v250 + 14) = v154;
          *(v250 + 11) = 2112;
          *(v250 + 3) = v248;
          *v245 = v248;
          v155 = v248;
          LODWORD(v71) = log;
          _os_log_impl(&_mh_execute_header, log, v247, "Cannot export from my CA %s) to CA %s for peer %@", v250, 0x20u);
          sub_100075768(v245, &unk_100503F70, &unk_10040B2E0);

          v74 = v246;
          swift_arrayDestroy();

          sub_10006A178(v100, v101);
          v79 = sub_10018CE30(v150, type metadata accessor for SESPeerIdentityData);
          i = v263;
          goto LABEL_24;
        }

        v147 = *(v100 + 16);
        v146 = *(v100 + 24);
        v4 = v146 - v147;
        if (__OFSUB__(v146, v147))
        {
          goto LABEL_198;
        }
      }

      else if (v145)
      {
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          goto LABEL_199;
        }

        v4 = HIDWORD(v100) - v100;
      }

      else
      {
        v4 = BYTE6(v101);
      }

      if (v4)
      {
        *v257 = _swiftEmptyArrayStorage;
        sub_10019F3C0(0, v4 & ~(v4 >> 63), 0);
        v148 = *v257;
        v253 = v100;
        if (v145 != 2)
        {
          if (v145 == 1)
          {
            v149 = v100;
            goto LABEL_83;
          }

          if ((v4 & 0x8000000000000000) == 0)
          {
            v149 = 0;
            goto LABEL_87;
          }

LABEL_207:
          __break(1u);
        }

        v149 = *(v100 + 16);
LABEL_83:
        if ((v4 & 0x8000000000000000) != 0)
        {
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

LABEL_87:
        v251 = v100 >> 32;
        v252 = BYTE6(v101);
        while (2)
        {
          if (v145 == 2)
          {
            if (v149 < *(v100 + 16))
            {
              goto LABEL_161;
            }

            if (v149 >= *(v100 + 24))
            {
              goto LABEL_164;
            }

            v79 = __DataStorage._bytes.getter();
            if (!v79)
            {
              goto LABEL_211;
            }

            v156 = v79;
            v159 = __DataStorage._offset.getter();
            v158 = v149 - v159;
            if (__OFSUB__(v149, v159))
            {
              goto LABEL_166;
            }

LABEL_100:
            v160 = v156[v158];
          }

          else
          {
            if (v145 == 1)
            {
              if (v149 < v100 || v149 >= v251)
              {
                goto LABEL_163;
              }

              v79 = __DataStorage._bytes.getter();
              if (!v79)
              {
                goto LABEL_210;
              }

              v156 = v79;
              v157 = __DataStorage._offset.getter();
              v158 = v149 - v157;
              if (__OFSUB__(v149, v157))
              {
                goto LABEL_165;
              }

              goto LABEL_100;
            }

            if (v149 >= BYTE6(v101))
            {
              goto LABEL_162;
            }

            *(v0 + 457) = v100;
            *(v0 + 465) = v101;
            *(v0 + 467) = BYTE2(v101);
            *(v0 + 468) = BYTE3(v101);
            *(v0 + 469) = BYTE4(v101);
            *(v0 + 470) = BYTE5(v101);
            v160 = *(v0 + 457 + v149);
          }

          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v161 = swift_allocObject();
          *(v161 + 16) = xmmword_1004098F0;
          *(v161 + 56) = &type metadata for UInt8;
          *(v161 + 64) = &protocol witness table for UInt8;
          *(v161 + 32) = v160;
          v162 = String.init(format:_:)();
          *v257 = v148;
          v165 = v148[2];
          v164 = v148[3];
          if (v165 >= v164 >> 1)
          {
            v243 = v162;
            v167 = v163;
            sub_10019F3C0((v164 > 1), v165 + 1, 1);
            v163 = v167;
            v162 = v243;
            v148 = *v257;
          }

          v148[2] = v165 + 1;
          v166 = &v148[2 * v165];
          v166[4] = v162;
          v166[5] = v163;
          ++v149;
          if (!--v4)
          {
            goto LABEL_81;
          }

          continue;
        }
      }

      goto LABEL_80;
    }

    if (v108)
    {
      v116 = *(v0 + 992);
      v117 = *(v0 + 996);
      v118 = __OFSUB__(v117, v116);
      v119 = v117 - v116;
      if (v118)
      {
        goto LABEL_196;
      }

      v112 = v119;
    }

    else
    {
      v112 = *(v0 + 1006);
    }

LABEL_38:
    if (!v112)
    {
      goto LABEL_42;
    }

    v120 = *(v0 + 1000) >> 62;
    *(v0 + 656) = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v112 & ~(v112 >> 63), 0);
    v121 = *(v0 + 656);
    if (!v120)
    {
      if ((v112 & 0x8000000000000000) == 0)
      {
        v122 = 0;
        goto LABEL_47;
      }

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
      goto LABEL_207;
    }

    if (v120 == 2)
    {
      v122 = *(*(v0 + 992) + 16);
    }

    else
    {
      v122 = *(v0 + 992);
    }

    if (v112 < 0)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

LABEL_47:
    while (2)
    {
      v125 = *(v0 + 1000);
      if (v125 >> 62 == 2)
      {
        v132 = *(v0 + 992);
        if (v122 < *(v132 + 16))
        {
          goto LABEL_156;
        }

        if (v122 >= *(v132 + 24))
        {
          goto LABEL_158;
        }

        v79 = __DataStorage._bytes.getter();
        if (!v79)
        {
          goto LABEL_209;
        }

        v128 = v79;
        v133 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
        v134 = __DataStorage._offset.getter();
        v131 = v122 - v134;
        if (__OFSUB__(v122, v134))
        {
          goto LABEL_160;
        }

LABEL_61:
        v135 = v128[v131];
LABEL_64:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_1004098F0;
        *(v136 + 56) = &type metadata for UInt8;
        *(v136 + 64) = &protocol witness table for UInt8;
        *(v136 + 32) = v135;
        v137 = String.init(format:_:)();
        *v261 = v121;
        v4 = v121[2];
        v139 = v121[3];
        if (v4 >= v139 >> 1)
        {
          v123 = v137;
          v124 = v138;
          sub_10019F3C0((v139 > 1), v4 + 1, 1);
          v138 = v124;
          v137 = v123;
          v121 = *v261;
        }

        v121[2] = v4 + 1;
        v140 = &v121[2 * v4];
        v140[4] = v137;
        v140[5] = v138;
        ++v122;
        if (!--v112)
        {
          goto LABEL_67;
        }

        continue;
      }

      break;
    }

    if (v125 >> 62 == 1)
    {
      break;
    }

    if (v122 < BYTE6(v125))
    {
      *(v0 + 499) = *(v0 + 992);
      *(v0 + 507) = v125;
      *(v0 + 509) = BYTE2(v125);
      *(v0 + 510) = BYTE3(v125);
      *(v0 + 511) = BYTE4(v125);
      *(v0 + 512) = BYTE5(v125);
      v135 = *(v0 + 499 + v122);
      goto LABEL_64;
    }

    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_14:
    v69 = *(v0 + 976);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v17 = 0;
  }

  v126 = *(v0 + 992);
  if (v122 >= v126 >> 32 || v122 < v126)
  {
    goto LABEL_157;
  }

  v79 = __DataStorage._bytes.getter();
  if (v79)
  {
    v128 = v79;
    v129 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
    v130 = __DataStorage._offset.getter();
    v131 = v122 - v130;
    if (__OFSUB__(v122, v130))
    {
      goto LABEL_159;
    }

    goto LABEL_61;
  }

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
  return _swift_continuation_await(v79);
}

uint64_t sub_10017C65C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1072);
  v12 = *v2;
  v3[135] = a1;
  v3[136] = v1;

  if (v1)
  {
    v5 = v3[128];
    v6 = v3[126];
    v7 = v3[119];
    v8 = v3[107];

    v9 = sub_10017F010;
    v10 = v8;
  }

  else
  {
    v10 = v3[107];
    v9 = sub_10017C7F4;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_10017C7F4()
{
  v284 = v0;
  v1 = *(v0 + 1088);
  v2 = sub_1001A57D8(*(v0 + 1080), *(v0 + 808), *(v0 + 816), *(v0 + 904));
  if (!v1)
  {
    v30 = v2;
    v31 = v3;
    v32 = *(v0 + 928);
    v33 = *(v0 + 920);
    v34 = *(v0 + 904);
    v35 = *(v0 + 824);
    v281 = *(v0 + 816);
    v36 = *(v0 + 808);
    v37 = type metadata accessor for SESPeerIdentityData;
    sub_10018D04C(*(v0 + 840), v32, type metadata accessor for SESPeerIdentityData);
    sub_10018D04C(v34, v32 + *(v33 + 20), type metadata accessor for SESPeerIdentityData);
    v38 = *(v33 + 28);
    sub_100069E2C(v30, v31);
    sub_1001C5FF8((v32 + v38));
    v39 = type metadata accessor for CreationMetadata(0);
    (*(*(v39 - 8) + 56))(v32 + v38, 0, 1, v39);
    v40 = (v32 + *(v33 + 24));
    *v40 = v30;
    v40[1] = v31;
    sub_1001C89E8(*v35, v35[1], v36, v281, v32);
    v41 = *(v0 + 928);
    goto LABEL_15;
  }

  v4 = *(v0 + 960);
  v5 = *(v0 + 856);
  v6 = *(v0 + 816);
  v7 = *(v0 + 808);
  sub_10018D04C(*(v0 + 904), *(v0 + 888), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  sub_10006A178(v7, v6);

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 888);
  if (v10)
  {
    v280 = v9;
    v12 = *(v0 + 816);
    v13 = *(v0 + 808);
    v14 = swift_slowAlloc();
    v283[0] = swift_slowAlloc();
    *v14 = 136315650;
    v262 = OS_LOG_TYPE_DEFAULT;
    *(v0 + 712) = sub_100288788(v13, v12);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    v18 = sub_1002FFA0C(v15, v17, v283);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v20 = sub_100289B6C(v19);
    v22 = v21;
    sub_10018CE30(v11, type metadata accessor for SESPeerIdentityData);
    v23 = sub_1002FFA0C(v20, v22, v283);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    swift_getErrorValue();
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);
    v26 = *(v0 + 408);
    v27 = Error.localizedDescription.getter();
    v29 = sub_1002FFA0C(v27, v28, v283);

    *(v14 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v8, v280, "Failed to export TLK %s to peer %s : %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10018CE30(v11, type metadata accessor for SESPeerIdentityData);
    v262 = OS_LOG_TYPE_DEFAULT;
  }

  v33 = 14;
  *(v0 + 518) = 14;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v42 = *(v0 + 1040);
  v43 = *(v0 + 960);
  v44 = *(v0 + 856);
  v45 = *(v0 + 816);
  v46 = *(v0 + 808);
  sub_100069E2C(v46, v45);
  v47 = v42;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  sub_10006A178(v46, v45);

  if (!os_log_type_enabled(v36, v37))
  {

    goto LABEL_25;
  }

  v48 = *(v0 + 816);
  v49 = *(v0 + 808);
  v50 = swift_slowAlloc();
  v255 = swift_slowAlloc();
  *(v0 + 664) = swift_slowAlloc();
  *v50 = 136315650;
  sub_100069E2C(v49, v48);
  sub_100288640(4, v49, v48, (v0 + 592));
  v30 = *(v0 + 592);
  v51 = *(v0 + 600);
  v41 = v51 >> 62;
  v272 = HIDWORD(v30);
  LODWORD(v261) = 14;
  v258 = v50;
  log = v36;
  v257 = v37;
  if ((v51 >> 62) <= 1)
  {
    if (v41)
    {
      if (__OFSUB__(HIDWORD(v30), v30))
      {
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
        goto LABEL_246;
      }

      v31 = HIDWORD(v30) - v30;
    }

    else
    {
      v31 = BYTE6(v51);
    }

LABEL_19:
    v60 = _swiftEmptyArrayStorage;
    if (v31)
    {
      *(v0 + 680) = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v31 & ~(v31 >> 63), 0);
      v282 = (v0 + 680);
      v60 = *(v0 + 680);
      v271 = v30;
      if (v41 == 2)
      {
        v61 = *(v30 + 16);
      }

      else
      {
        if (v41 != 1)
        {
LABEL_135:
          if ((v31 & 0x8000000000000000) == 0)
          {
            v61 = 0;
            goto LABEL_137;
          }

LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        v61 = v30;
      }

      if ((v31 & 0x8000000000000000) == 0)
      {
LABEL_137:
        v268 = v30 >> 32;
        v263 = (v30 >> 16);
        v264 = v30 >> 8;
        v278 = v30;
        while (v41 != 2)
        {
          if (v41 == 1)
          {
            if (v61 < v271 || v61 >= v268)
            {
              goto LABEL_209;
            }

            v188 = __DataStorage._bytes.getter();
            if (!v188)
            {
              goto LABEL_255;
            }

            v189 = v188;
            v190 = __DataStorage._offset.getter();
            v191 = v61 - v190;
            if (__OFSUB__(v61, v190))
            {
              goto LABEL_211;
            }

            goto LABEL_150;
          }

          if (v61 >= BYTE6(v51))
          {
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
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_29;
            }

            goto LABEL_31;
          }

          *(v0 + 485) = v30;
          *(v0 + 486) = v264;
          *(v0 + 487) = v263;
          *(v0 + 488) = BYTE3(v30);
          *(v0 + 489) = v272;
          *(v0 + 490) = BYTE5(v30);
          *(v0 + 491) = BYTE6(v30);
          *(v0 + 492) = HIBYTE(v30);
          *(v0 + 493) = v51;
          *(v0 + 495) = BYTE2(v51);
          *(v0 + 496) = BYTE3(v51);
          *(v0 + 497) = BYTE4(v51);
          *(v0 + 498) = BYTE5(v51);
          v194 = *(v0 + 485 + v61);
LABEL_153:
          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v195 = swift_allocObject();
          *(v195 + 16) = xmmword_1004098F0;
          *(v195 + 56) = &type metadata for UInt8;
          *(v195 + 64) = &protocol witness table for UInt8;
          *(v195 + 32) = v194;
          v196 = String.init(format:_:)();
          v198 = v197;
          *v282 = v60;
          v200 = v60[2];
          v199 = v60[3];
          if (v200 >= v199 >> 1)
          {
            sub_10019F3C0((v199 > 1), v200 + 1, 1);
            v60 = *v282;
          }

          v60[2] = v200 + 1;
          v201 = &v60[2 * v200];
          v201[4] = v196;
          v201[5] = v198;
          ++v61;
          --v31;
          v41 = v51 >> 62;
          v30 = v278;
          if (!v31)
          {
            goto LABEL_24;
          }
        }

        if (v61 < *(v30 + 16))
        {
          goto LABEL_208;
        }

        if (v61 >= *(v30 + 24))
        {
          goto LABEL_210;
        }

        v192 = __DataStorage._bytes.getter();
        if (!v192)
        {
          goto LABEL_256;
        }

        v189 = v192;
        v193 = __DataStorage._offset.getter();
        v191 = v61 - v193;
        if (__OFSUB__(v61, v193))
        {
          goto LABEL_212;
        }

LABEL_150:
        v194 = *(v189 + v191);
        goto LABEL_153;
      }

      __break(1u);
      goto LABEL_135;
    }

    goto LABEL_24;
  }

  if (v41 == 2)
  {
    v53 = *(v30 + 16);
    v52 = *(v30 + 24);
    v31 = v52 - v53;
    if (!__OFSUB__(v52, v53))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_15:
    sub_10018CE30(v41, type metadata accessor for SESTLKShareData);
    sub_10006A178(v30, v31);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 752) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_238;
    }

    goto LABEL_16;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_24:
  v62 = v30;
  v63 = *(v0 + 1040);
  *(v0 + 688) = v60;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v64 = BidirectionalCollection<>.joined(separator:)();
  v66 = v65;
  sub_10006A178(v62, v51);

  v67 = sub_1002FFA0C(v64, v66, (v0 + 664));

  *(v258 + 1) = v67;
  *(v258 + 6) = 2112;
  *(v258 + 14) = v63;
  v255->isa = v63;
  *(v258 + 11) = 2080;
  v33 = 14;
  *(v0 + 516) = 14;
  sub_10018C6D8();
  v68 = v63;
  v69 = Error.localizedDescription.getter();
  v71 = sub_1002FFA0C(v69, v70, (v0 + 664));

  *(v258 + 3) = v71;
  _os_log_impl(&_mh_execute_header, log, v257, "Couldn't share TLK %s to peer %@ : %s", v258, 0x20u);
  sub_100075768(v255, &unk_100503F70, &unk_10040B2E0);

  swift_arrayDestroy();

LABEL_25:
  v37 = *(v0 + 1080);
  v72 = *(v0 + 1064);
  v55 = *(v0 + 1056);
  v36 = *(v0 + 1040);
  v73 = objc_opt_self();
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1004098F0;
  *(v0 + 608) = sub_100285E10(14);
  *(v0 + 616) = v75;
  AnyHashable.init<A>(_:)();
  *(v74 + 96) = &type metadata for Int;
  *(v74 + 72) = 1;
  sub_100090BC4(v74);
  swift_setDeallocating();
  sub_100075768(v74 + 32, &qword_100502C48, &qword_10040B2D0);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10004DC20(v73, isa);

  sub_10006A178(v55, v72);
  v41 = *(v0 + 1032);
  v59 = *(v0 + 1024);
  v58 = 0;
LABEL_26:
  sub_10018CE30(*(v0 + 904), type metadata accessor for SESPeerIdentityData);
  v77 = *(v0 + 1048);
  if (v77 == *(v0 + 1016))
  {
LABEL_27:
    *(v0 + 1096) = v41;
    v78 = *(v0 + 1008);
    v79 = *(v0 + 1000);
    v80 = *(v0 + 992);

    sub_10006A178(v80, v79);
    if (v59 >> 62)
    {
      goto LABEL_225;
    }

    if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      v81 = *(v0 + 952);
      if (v81 >> 62)
      {
        if (v81 < 0)
        {
          v240 = *(v0 + 952);
        }

        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_31;
        }
      }

      else if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v241 = *(v0 + 952);

      v242 = *(v0 + 936);
      v243 = *(v0 + 928);
      v244 = *(v0 + 912);
      v245 = *(v0 + 904);
      v246 = *(v0 + 896);
      v247 = *(v0 + 888);
      v248 = *(v0 + 864);

      v249 = *(v0 + 8);

      return v249();
    }

LABEL_31:
    v82 = *(v0 + 960);
    v83 = *(v0 + 952);
    v84 = *(v0 + 856);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 134218240;
      if (v41 >> 62)
      {
        v88 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v88 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v89 = *(v0 + 952);
      *(v87 + 4) = v88;

      *(v87 + 12) = 2048;
      if (v89 >> 62)
      {
        if (*(v0 + 952) < 0)
        {
          v239 = *(v0 + 952);
        }

        v90 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v91 = *(v0 + 952);
      *(v87 + 14) = v90;

      _os_log_impl(&_mh_execute_header, v85, v86, "Adding %ld shares and removing %ld shares", v87, 0x16u);
    }

    else
    {
      v173 = *(v0 + 952);
    }

    v174 = *(v0 + 952);
    v175 = *(v0 + 944);
    v176 = *(v0 + 824);
    v177 = *(v0 + 800);
    v178 = *(v0 + 792);
    v179 = *(*(v0 + 856) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
    v180 = *v176;
    v181 = v176[1];
    v182 = String._bridgeToObjectiveC()();
    *(v0 + 1104) = v182;
    v183 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 1112) = v183;
    v184 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 1120) = v184;
    v185 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 1128) = v185;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10017EC78;
    v186 = swift_continuation_init();
    *(v0 + 264) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1001E95B0;
    *(v0 + 232) = &unk_1004C9408;
    *(v0 + 240) = v186;
    [v179 modifyTLKSharesForView:v182 altDSID:v183 addingShares:v184 removingShares:v185 completion:v0 + 208];
    v187 = v0 + 16;

    return _swift_continuation_await(v187);
  }

  v267 = (v0 + 640);
  v274 = (v0 + 656);
  v251 = (v0 + 760);
  v273 = 0x8000000100464D80;
  v275 = v59;
  v277 = v41;
  while (1)
  {
    *(v0 + 1032) = v41;
    *(v0 + 1024) = v59;
    v92 = *(v0 + 1008);
    if ((v92 & 0xC000000000000001) != 0)
    {
      v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v77 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v93 = *(v92 + 8 * v77 + 32);
    }

    v33 = v93;
    *(v0 + 1040) = v93;
    *(v0 + 1048) = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
      goto LABEL_163;
    }

    v94 = *(v0 + 872);
    v95 = *(v0 + 864);
    v96 = type metadata accessor for PropertyListDecoder();
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v99 = [v33 peerData];
    v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    sub_100188AF0(&qword_100504E20, type metadata accessor for SESPeerIdentityData);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v103 = *(v0 + 904);
    v104 = *(v0 + 880);
    v105 = *(v0 + 872);
    v106 = *(v0 + 864);
    sub_10006A178(v100, v102);

    (*(v104 + 56))(v106, 0, 1, v105);
    sub_10018CF04(v106, v103, type metadata accessor for SESPeerIdentityData);
    v107 = *(v103 + 48);
    v108 = *(v103 + 56);
    sub_100068FC4(&qword_100504F00, &qword_10040C480);
    v109 = swift_allocObject();
    *(v109 + 109) = 0;
    *(v109 + 110) = -5120;
    *(v109 + 16) = xmmword_10040C130;
    strcpy((v109 + 32), "serialNumber");
    *(v109 + 45) = 0;
    *(v109 + 46) = -5120;
    *(v109 + 48) = 147;
    *(v109 + 56) = 0;
    *(v109 + 64) = 0u;
    *(v109 + 80) = -64;
    *(v109 + 88) = _swiftEmptyArrayStorage;
    strcpy((v109 + 96), "caIdentifier");
    *(v109 + 112) = 66;
    *(v109 + 120) = 0;
    *(v109 + 128) = 0u;
    *(v109 + 144) = -64;
    *(v109 + 152) = _swiftEmptyArrayStorage;
    *(v109 + 160) = 0xD000000000000011;
    *(v109 + 168) = 0x8000000100464D60;
    *(v109 + 176) = 24352;
    *(v109 + 184) = 0;
    *(v109 + 192) = 0u;
    *(v109 + 208) = -64;
    *(v109 + 216) = _swiftEmptyArrayStorage;
    *(v109 + 224) = 0x656761735579656BLL;
    *(v109 + 232) = 0xE800000000000000;
    *(v109 + 240) = 149;
    *(v109 + 248) = 0;
    *(v109 + 256) = 0u;
    *(v109 + 272) = -64;
    *(v109 + 280) = _swiftEmptyArrayStorage;
    strcpy((v109 + 288), "effectiveDate");
    *(v109 + 302) = -4864;
    *(v109 + 304) = 37;
    *(v109 + 312) = 256;
    *(v109 + 320) = 0u;
    *(v109 + 336) = -64;
    *(v109 + 344) = _swiftEmptyArrayStorage;
    strcpy((v109 + 352), "expirationDate");
    *(v109 + 367) = -18;
    *(v109 + 368) = 24356;
    *(v109 + 376) = 256;
    *(v109 + 384) = 0u;
    *(v109 + 400) = -64;
    *(v109 + 408) = _swiftEmptyArrayStorage;
    *(v109 + 416) = 0x4E4944536163;
    *(v109 + 424) = 0xE600000000000000;
    *(v109 + 432) = 69;
    *(v109 + 440) = 0;
    *(v109 + 448) = 0u;
    *(v109 + 464) = -64;
    *(v109 + 472) = _swiftEmptyArrayStorage;
    *(v109 + 480) = 0xD000000000000011;
    *(v109 + 488) = 0x8000000100464D80;
    *(v109 + 496) = 83;
    *(v109 + 504) = 0;
    *(v109 + 512) = 0u;
    *(v109 + 528) = -64;
    *(v109 + 536) = _swiftEmptyArrayStorage;
    *(v109 + 544) = 0x654B63696C627570;
    *(v109 + 552) = 0xE900000000000079;
    *(v109 + 560) = 32585;
    *(v109 + 568) = 0;
    *(v109 + 576) = 0u;
    *(v109 + 592) = -64;
    *(v109 + 600) = _swiftEmptyArrayStorage;
    *(v0 + 320) = 32545;
    *(v0 + 328) = 0;
    *(v0 + 336) = v109;
    *(v0 + 344) = 0;
    *(v0 + 352) = 64;
    *(v0 + 360) = _swiftEmptyArrayStorage;
    *(v0 + 576) = v107;
    *(v0 + 584) = v108;
    sub_100069E2C(v107, v108);
    v110 = sub_1001A93E0((v0 + 576), (v0 + 320));

    sub_10006A178(*(v0 + 576), *(v0 + 584));
    sub_1002A0074(v110, (v0 + 80));
    v111 = *(v0 + 1000);
    v112 = *(v0 + 992);
    v58 = *(v0 + 96);
    v113 = *(v0 + 104);
    *(v0 + 1056) = v58;
    *(v0 + 1064) = v113;
    sub_100069E2C(v58, v113);
    sub_10018C7D0(v0 + 80);
    if (sub_10008FB4C(v58, v113, v112, v111))
    {
      break;
    }

    v55 = *(v0 + 1000);
    v114 = *(v0 + 992);
    v115 = *(v0 + 960);
    v116 = *(v0 + 856);
    sub_100069E2C(v114, v55);
    sub_100069E2C(v58, v113);
    v36 = v33;
    v117 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    sub_10006A178(v114, v55);
    sub_10006A178(v58, v113);

    if (os_log_type_enabled(v117, v37))
    {
      v118 = *(v0 + 1000) >> 62;
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *(v0 + 672) = swift_slowAlloc();
      v259 = v119;
      *v119 = 136315650;
      v254 = v36;
      v256 = v117;
      v253 = v37;
      v252 = v120;
      if (v118 > 1)
      {
        if (v118 == 2)
        {
          v123 = *(*(v0 + 992) + 16);
          v124 = *(*(v0 + 992) + 24);
          v41 = v124 - v123;
          if (__OFSUB__(v124, v123))
          {
            goto LABEL_243;
          }

          if (v41)
          {
            goto LABEL_56;
          }
        }
      }

      else if (v118)
      {
        v125 = *(v0 + 992);
        v126 = *(v0 + 996);
        v127 = __OFSUB__(v126, v125);
        v128 = v126 - v125;
        if (v127)
        {
          goto LABEL_242;
        }

        v41 = v128;
        if (v128)
        {
LABEL_56:
          v55 = *(v0 + 1000) >> 62;
          *(v0 + 656) = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v41 & ~(v41 >> 63), 0);
          v33 = *(v0 + 656);
          if (v55)
          {
            if (v55 == 2)
            {
              v36 = *(*(v0 + 992) + 16);
              if ((v41 & 0x8000000000000000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_239;
            }

            v36 = *(v0 + 992);
            if (v41 < 0)
            {
LABEL_239:
              __break(1u);
              goto LABEL_240;
            }

LABEL_66:
            while (2)
            {
              if (!v41)
              {
                goto LABEL_179;
              }

              v131 = *(v0 + 1000);
              if (v131 >> 62 == 2)
              {
                v139 = *(v0 + 992);
                if (v36 < *(v139 + 16))
                {
                  goto LABEL_214;
                }

                if (v36 >= *(v139 + 24))
                {
                  goto LABEL_216;
                }

                v140 = __DataStorage._bytes.getter();
                if (!v140)
                {
                  goto LABEL_258;
                }

                v135 = v140;
                v141 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
                v142 = __DataStorage._offset.getter();
                v138 = v36 - v142;
                if (__OFSUB__(v36, v142))
                {
                  goto LABEL_218;
                }

LABEL_81:
                v143 = *(v135 + v138);
              }

              else
              {
                if (v131 >> 62 == 1)
                {
                  v132 = *(v0 + 992);
                  if (v36 >= v132 >> 32 || v36 < v132)
                  {
                    goto LABEL_215;
                  }

                  v134 = __DataStorage._bytes.getter();
                  if (!v134)
                  {
                    goto LABEL_257;
                  }

                  v135 = v134;
                  v136 = *(v0 + 1000) & 0x3FFFFFFFFFFFFFFFLL;
                  v137 = __DataStorage._offset.getter();
                  v138 = v36 - v137;
                  if (__OFSUB__(v36, v137))
                  {
                    goto LABEL_217;
                  }

                  goto LABEL_81;
                }

                if (v36 >= BYTE6(v131))
                {
                  goto LABEL_213;
                }

                *(v0 + 499) = *(v0 + 992);
                *(v0 + 507) = v131;
                *(v0 + 509) = BYTE2(v131);
                *(v0 + 510) = BYTE3(v131);
                *(v0 + 511) = BYTE4(v131);
                *(v0 + 512) = BYTE5(v131);
                v143 = *(v0 + 499 + v36);
              }

              sub_100068FC4(&qword_100502440, &unk_10040B240);
              v144 = swift_allocObject();
              *(v144 + 16) = xmmword_1004098F0;
              *(v144 + 56) = &type metadata for UInt8;
              *(v144 + 64) = &protocol witness table for UInt8;
              *(v144 + 32) = v143;
              v145 = String.init(format:_:)();
              *v274 = v33;
              v37 = *(v33 + 16);
              v147 = *(v33 + 24);
              v55 = v37 + 1;
              if (v37 >= v147 >> 1)
              {
                v129 = v145;
                v130 = v146;
                sub_10019F3C0((v147 > 1), v37 + 1, 1);
                v146 = v130;
                v145 = v129;
                v33 = *v274;
              }

              *(v33 + 16) = v55;
              v148 = v33 + 16 * v37;
              *(v148 + 32) = v145;
              *(v148 + 40) = v146;
              ++v36;
              if (!--v41)
              {
                goto LABEL_87;
              }

              continue;
            }
          }

          if ((v41 & 0x8000000000000000) == 0)
          {
            v36 = 0;
            goto LABEL_66;
          }

LABEL_247:
          __break(1u);
LABEL_248:
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
          goto LABEL_254;
        }
      }

      else
      {
        v41 = *(v0 + 1006);
        if (*(v0 + 1006))
        {
          goto LABEL_56;
        }
      }

      v33 = _swiftEmptyArrayStorage;
LABEL_87:
      *(v0 + 648) = v33;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v149 = BidirectionalCollection<>.joined(separator:)();
      v55 = v150;

      v151 = sub_1002FFA0C(v149, v55, (v0 + 672));

      *(v259 + 1) = v151;
      *(v259 + 6) = 2080;
      v41 = v113 >> 62;
      v263 = HIDWORD(v58);
      if ((v113 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v153 = *(v58 + 16);
          v152 = *(v58 + 24);
          v37 = v152 - v153;
          if (__OFSUB__(v152, v153))
          {
            goto LABEL_244;
          }

          if (v37)
          {
            goto LABEL_94;
          }
        }
      }

      else if (v41)
      {
        v154 = HIDWORD(v58) - v58;
        if (__OFSUB__(HIDWORD(v58), v58))
        {
          goto LABEL_245;
        }

        v37 = v154;
        if (v154)
        {
LABEL_94:
          *v267 = _swiftEmptyArrayStorage;
          sub_10019F3C0(0, v37 & ~(v37 >> 63), 0);
          v33 = *v267;
          v262 = v58;
          if (v41 != 2)
          {
            if (v41 == 1)
            {
              v36 = v58;
              goto LABEL_103;
            }

            if ((v37 & 0x8000000000000000) == 0)
            {
              v36 = 0;
              goto LABEL_107;
            }

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
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
          }

          v36 = *(v58 + 16);
LABEL_103:
          if (v37 < 0)
          {
LABEL_240:
            __break(1u);
            goto LABEL_241;
          }

LABEL_107:
          v261 = BYTE6(v113);
          while (2)
          {
            if (!v37)
            {
              goto LABEL_180;
            }

            if (v41 == 2)
            {
              if (v36 < *(v58 + 16))
              {
                goto LABEL_219;
              }

              if (v36 >= *(v58 + 24))
              {
                goto LABEL_222;
              }

              v163 = __DataStorage._bytes.getter();
              if (!v163)
              {
                goto LABEL_260;
              }

              v160 = v163;
              v164 = __DataStorage._offset.getter();
              v162 = v36 - v164;
              if (__OFSUB__(v36, v164))
              {
                goto LABEL_224;
              }

LABEL_121:
              v165 = *(v160 + v162);
            }

            else
            {
              if (v41 == 1)
              {
                if (v36 < v58 || v36 >= v58 >> 32)
                {
                  goto LABEL_221;
                }

                v159 = __DataStorage._bytes.getter();
                if (!v159)
                {
                  goto LABEL_259;
                }

                v160 = v159;
                v161 = __DataStorage._offset.getter();
                v162 = v36 - v161;
                if (__OFSUB__(v36, v161))
                {
                  goto LABEL_223;
                }

                goto LABEL_121;
              }

              if (v36 >= BYTE6(v113))
              {
                goto LABEL_220;
              }

              *(v0 + 457) = v58;
              *(v0 + 465) = v113;
              *(v0 + 467) = BYTE2(v113);
              *(v0 + 468) = BYTE3(v113);
              *(v0 + 469) = BYTE4(v113);
              *(v0 + 470) = BYTE5(v113);
              v165 = *(v0 + 457 + v36);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v166 = swift_allocObject();
            *(v166 + 16) = xmmword_1004098F0;
            *(v166 + 56) = &type metadata for UInt8;
            *(v166 + 64) = &protocol witness table for UInt8;
            *(v166 + 32) = v165;
            v167 = String.init(format:_:)();
            *v267 = v33;
            v170 = *(v33 + 16);
            v169 = *(v33 + 24);
            v55 = v170 + 1;
            if (v170 >= v169 >> 1)
            {
              v250 = v167;
              v172 = v168;
              sub_10019F3C0((v169 > 1), v170 + 1, 1);
              v168 = v172;
              v167 = v250;
              v33 = *v267;
            }

            *(v33 + 16) = v55;
            v171 = v33 + 16 * v170;
            *(v171 + 32) = v167;
            *(v171 + 40) = v168;
            ++v36;
            if (!--v37)
            {
              goto LABEL_100;
            }

            continue;
          }
        }
      }

      else
      {
        v37 = BYTE6(v113);
        if (BYTE6(v113))
        {
          goto LABEL_94;
        }
      }

      v33 = _swiftEmptyArrayStorage;
LABEL_100:
      v36 = *(v0 + 904);
      *(v0 + 736) = v33;
      v155 = BidirectionalCollection<>.joined(separator:)();
      v55 = v156;

      v157 = sub_1002FFA0C(v155, v55, (v0 + 672));

      *(v259 + 14) = v157;
      *(v259 + 11) = 2112;
      *(v259 + 3) = v254;
      *v252 = v254;
      v158 = v254;
      LODWORD(v55) = v256;
      _os_log_impl(&_mh_execute_header, v256, v253, "Cannot export from my CA %s) to CA %s for peer %@", v259, 0x20u);
      sub_100075768(v252, &unk_100503F70, &unk_10040B2E0);

      swift_arrayDestroy();

      sub_10006A178(v58, v113);
      v122 = v36;
    }

    else
    {
      v121 = *(v0 + 904);
      sub_10006A178(v58, v113);

      v122 = v121;
    }

    sub_10018CE30(v122, type metadata accessor for SESPeerIdentityData);
    v59 = v275;
    v41 = v277;
    v58 = 0;
    v77 = *(v0 + 1048);
    if (v77 == *(v0 + 1016))
    {
      goto LABEL_27;
    }
  }

  v202 = *(v0 + 960);
  v203 = *(v0 + 856);
  v204 = *(v0 + 816);
  v205 = *(v0 + 808);
  sub_10018D04C(*(v0 + 904), *(v0 + 896), type metadata accessor for SESPeerIdentityData);
  sub_100069E2C(v205, v204);
  v206 = Logger.logObject.getter();
  v207 = static os_log_type_t.info.getter();
  sub_10006A178(v205, v204);
  if (!os_log_type_enabled(v206, v207))
  {
    v211 = *(v0 + 896);

    sub_10018CE30(v211, type metadata accessor for SESPeerIdentityData);
    goto LABEL_175;
  }

  v208 = *(v0 + 816);
  v209 = *(v0 + 808);
  v210 = swift_slowAlloc();
  *(v0 + 744) = swift_slowAlloc();
  *v210 = 136315394;
  sub_100069E2C(v209, v208);
  sub_100288640(4, v209, v208, (v0 + 544));
  v33 = *(v0 + 544);
  v36 = *(v0 + 552);
  v55 = v36 >> 62;
  v274 = HIDWORD(v33);
  v263 = v206;
  v262 = v207;
  v261 = v210;
  if ((v36 >> 62) <= 1)
  {
    if (!v55)
    {
      v58 = BYTE6(v36);
      goto LABEL_169;
    }

LABEL_167:
    if (__OFSUB__(v274, v33))
    {
      goto LABEL_261;
    }

    v58 = v274 - v33;
    goto LABEL_169;
  }

LABEL_163:
  if (v55 != 2)
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_174:
    v215 = *(v0 + 896);
    *(v0 + 768) = v37;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v216 = BidirectionalCollection<>.joined(separator:)();
    v218 = v217;
    sub_10006A178(v33, v36);

    v219 = sub_1002FFA0C(v216, v218, (v0 + 744));

    *(v261 + 1) = v219;
    *(v261 + 6) = 2080;
    v221 = sub_100289B6C(v220);
    v223 = v222;
    sub_10018CE30(v215, type metadata accessor for SESPeerIdentityData);
    v224 = sub_1002FFA0C(v221, v223, (v0 + 744));

    *(v261 + 14) = v224;
    _os_log_impl(&_mh_execute_header, v263, v262, "KeySyncManager: Sharing TLK %s to %s)", v261, 0x16u);
    swift_arrayDestroy();

LABEL_175:
    v225 = swift_task_alloc();
    *(v0 + 1072) = v225;
    *v225 = v0;
    v225[1] = sub_10017C65C;
    v226 = *(v0 + 856);

    return sub_10016C130();
  }

  v213 = *(v33 + 16);
  v212 = *(v33 + 24);
  v58 = v212 - v213;
  if (__OFSUB__(v212, v213))
  {
    __break(1u);
    __break(1u);
    goto LABEL_167;
  }

LABEL_169:
  v37 = _swiftEmptyArrayStorage;
  if (!v58)
  {
    goto LABEL_174;
  }

  *v251 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v58 & ~(v58 >> 63), 0);
  v37 = *v251;
  v273 = v33;
  if (v55 != 2)
  {
    if (v55 == 1)
    {
      v214 = v33;
      goto LABEL_182;
    }

LABEL_184:
    if (v58 < 0)
    {
      goto LABEL_262;
    }

    v214 = 0;
    goto LABEL_186;
  }

LABEL_181:
  v214 = *(v33 + 16);
LABEL_182:
  if (v58 < 0)
  {
    __break(1u);
    goto LABEL_184;
  }

LABEL_186:
  v270 = v33 >> 32;
  v266 = v33 >> 16;
  v269 = v33 >> 8;
  v265 = v33 >> 24;
  v276 = v55;
  v279 = v33;
  while (1)
  {
    if (!v58)
    {
      __break(1u);
LABEL_238:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
      v54 = *(v0 + 1080);
      v55 = *(v0 + 1064);
      v56 = *(v0 + 1056);
      v57 = *(v0 + 1040);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_10006A178(v56, v55);
      v58 = 0;
      v59 = *(v0 + 752);
      v41 = v59;
      goto LABEL_26;
    }

    if (v55 == 2)
    {
      if (v214 < *(v33 + 16))
      {
        goto LABEL_249;
      }

      if (v214 >= *(v33 + 24))
      {
        goto LABEL_251;
      }

      v187 = __DataStorage._bytes.getter();
      if (!v187)
      {
        goto LABEL_264;
      }

      v228 = v187;
      v231 = __DataStorage._offset.getter();
      v230 = v214 - v231;
      if (__OFSUB__(v214, v231))
      {
        goto LABEL_253;
      }

      goto LABEL_200;
    }

    if (v55 != 1)
    {
      if (v214 >= BYTE6(v36))
      {
        goto LABEL_248;
      }

      *(v0 + 471) = v33;
      *(v0 + 472) = v269;
      *(v0 + 473) = v266;
      *(v0 + 474) = v265;
      *(v0 + 475) = v274;
      *(v0 + 476) = BYTE5(v33);
      *(v0 + 477) = BYTE6(v33);
      *(v0 + 478) = HIBYTE(v33);
      *(v0 + 479) = v36;
      *(v0 + 481) = BYTE2(v36);
      *(v0 + 482) = BYTE3(v36);
      *(v0 + 483) = BYTE4(v36);
      *(v0 + 484) = BYTE5(v36);
      v232 = *(v0 + 471 + v214);
      goto LABEL_203;
    }

    if (v214 < v273 || v214 >= v270)
    {
      goto LABEL_250;
    }

    v187 = __DataStorage._bytes.getter();
    if (!v187)
    {
      break;
    }

    v228 = v187;
    v229 = __DataStorage._offset.getter();
    v230 = v214 - v229;
    if (__OFSUB__(v214, v229))
    {
      goto LABEL_252;
    }

LABEL_200:
    v232 = *(v228 + v230);
LABEL_203:
    sub_100068FC4(&qword_100502440, &unk_10040B240);
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_1004098F0;
    *(v233 + 56) = &type metadata for UInt8;
    *(v233 + 64) = &protocol witness table for UInt8;
    *(v233 + 32) = v232;
    v55 = String.init(format:_:)();
    v235 = v234;
    *v251 = v37;
    v237 = *(v37 + 16);
    v236 = *(v37 + 24);
    if (v237 >= v236 >> 1)
    {
      sub_10019F3C0((v236 > 1), v237 + 1, 1);
      v37 = *v251;
    }

    *(v37 + 16) = v237 + 1;
    v238 = v37 + 16 * v237;
    *(v238 + 32) = v55;
    *(v238 + 40) = v235;
    ++v214;
    --v58;
    LODWORD(v55) = v276;
    v33 = v279;
    if (!v58)
    {
      goto LABEL_174;
    }
  }

  __break(1u);
LABEL_264:
  __break(1u);
  return _swift_continuation_await(v187);
}