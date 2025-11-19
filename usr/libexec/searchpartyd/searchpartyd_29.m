uint64_t sub_1003004F4()
{
  v63 = v0;
  v1 = *(v0 + 240);
  if (v1)
  {
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v61 = (v0 + 80);
      v10 = *(v0 + 352);
      v11 = *(v0 + 360);
      v13 = *(v0 + 336);
      v12 = *(v0 + 344);
      v14 = *(v0 + 328);
      (*(*(v0 + 296) + 16))(*(v0 + 312), *(v0 + 320), *(v0 + 288));
      (*(v13 + 16))(v12, v10, v14);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v19 = *(v0 + 336);
      v18 = *(v0 + 344);
      v20 = *(v0 + 328);
      v21 = *(v0 + 312);
      if (v17)
      {
        v59 = v16;
        v22 = *(v0 + 296);
        v23 = *(v0 + 304);
        v55 = *(v0 + 328);
        v24 = *(v0 + 272);
        v25 = *(v0 + 280);
        v52 = *(v0 + 288);
        v53 = *(v0 + 264);
        buf = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62 = v57;
        *buf = 136315138;
        ContinuousClock.now.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1003024E4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v50 = static Duration.description<A>(_:_:units:)();
        log = v15;
        v27 = v26;
        (*(v24 + 8))(v25, v53);
        v28 = *(v22 + 8);
        v28(v23, v52);
        v29 = *(v19 + 8);
        v29(v18, v55);
        v28(v21, v52);
        v30 = sub_1000136BC(v50, v27, &v62);

        *(buf + 4) = v30;
        _os_log_impl(&_mh_execute_header, log, v59, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
        sub_100007BAC(v57);
      }

      else
      {
        v31 = *(v0 + 288);
        v32 = *(v0 + 296);

        v29 = *(v19 + 8);
        v29(v18, v20);
        v28 = *(v32 + 8);
        v28(v21, v31);
      }

      sub_10030252C(v1, *(v0 + 368), v61);
      v33 = *(v0 + 352);
      v43 = *(v0 + 336);
      v42 = *(v0 + 344);
      v44 = *(v0 + 328);
      v56 = *(v0 + 312);
      v58 = *(v0 + 304);
      v60 = *(v0 + 280);
      v45 = *(v0 + 248);
      v46 = *(v0 + 296) + 8;
      v28(*(v0 + 320), *(v0 + 288));
      v29(v33, v44);
      *v45 = *v61;
      v47 = *(v0 + 96);
      v48 = *(v0 + 112);
      v49 = *(v0 + 144);
      v45[3] = *(v0 + 128);
      v45[4] = v49;
      v45[1] = v47;
      v45[2] = v48;

      v40 = *(v0 + 8);
      goto LABEL_10;
    }

    v2 = *(v0 + 368);
  }

  else
  {
  }

  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  sub_100302490();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
  swift_willThrow();
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 304);
  v39 = *(v0 + 280);

  v40 = *(v0 + 8);
LABEL_10:

  return v40();
}

uint64_t sub_100300998()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[40];
  v7 = v0[36];
  v8 = v0[37];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[47];
  v11 = v0[43];
  v10 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[38];
  v15 = v0[35];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100300A9C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock();
  v2[31] = v9;
  v10 = *(v9 - 8);
  v2[32] = v10;
  v11 = *(v10 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_100300C38, v1, 0);
}

uint64_t sub_100300C38()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = 0x7365547265646E75;
  *(v0 + 152) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 304))
  {
    v1 = type metadata accessor for GenericError();
    sub_1003024E4(&qword_1016978C0, 255, &type metadata accessor for GenericError);
    swift_allocError();
    *v2 = 0xD00000000000001ELL;
    v2[1] = 0x8000000101350B00;
    (*(*(v1 - 8) + 104))(v2, enum case for GenericError.error(_:), v1);
    swift_willThrow();
LABEL_14:
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 224);
    v25 = *(v0 + 200);

    v26 = *(v0 + 8);

    return v26();
  }

  v3 = *(v0 + 272);
  ContinuousClock.init()();
  if (qword_101694540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 280) = sub_1000076D4(v4, qword_10177A8A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Retrieving searchpartyAccount info...", v7, 2u);
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 240);

  ContinuousClock.now.getter();
  v10 = [objc_opt_self() defaultStore];
  *(v0 + 288) = v10;
  if (!v10)
  {
    v13 = *(v0 + 272);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 240);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    sub_100302490();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    (*(v15 + 8))(v13, v14);
    goto LABEL_14;
  }

  v11 = v10;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_100301090;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100C70FE4;
  *(v0 + 104) = &unk_101617C00;
  *(v0 + 112) = v12;
  [v11 aa_primaryAppleAccountWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100301090()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 296) = v3;
  v4 = *(v1 + 176);
  if (v3)
  {
    v5 = sub_10030161C;
  }

  else
  {
    v5 = sub_1003011B0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003011B0()
{
  v58 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v11 = *(v0 + 272);
      v10 = *(v0 + 280);
      v13 = *(v0 + 256);
      v12 = *(v0 + 264);
      v14 = *(v0 + 248);
      (*(*(v0 + 216) + 16))(*(v0 + 232), *(v0 + 240), *(v0 + 208));
      (*(v13 + 16))(v12, v11, v14);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v19 = *(v0 + 256);
      v18 = *(v0 + 264);
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      if (v17)
      {
        v52 = *(v0 + 248);
        v55 = v16;
        v22 = *(v0 + 216);
        v23 = *(v0 + 224);
        v24 = *(v0 + 200);
        log = v15;
        v25 = *(v0 + 192);
        v49 = *(v0 + 208);
        v50 = *(v0 + 184);
        buf = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *buf = 136315138;
        ContinuousClock.now.getter();
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_1003024E4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
        v48 = static Duration.description<A>(_:_:units:)();
        v27 = v26;
        (*(v25 + 8))(v24, v50);
        v28 = *(v22 + 8);
        v28(v23, v49);
        v29 = *(v19 + 8);
        v29(v18, v52);
        v28(v21, v49);
        v30 = sub_1000136BC(v48, v27, &v57);

        *(buf + 4) = v30;
        _os_log_impl(&_mh_execute_header, log, v55, "aa_primaryAppleAccount fetch duration: %s", buf, 0xCu);
        sub_100007BAC(v53);
      }

      else
      {
        v32 = *(v0 + 208);
        v31 = *(v0 + 216);

        v29 = *(v19 + 8);
        v29(v18, v20);
        v28 = *(v31 + 8);
        v28(v21, v32);
      }

      sub_100301720(*(v0 + 288), v1, *(v0 + 168));
      v33 = *(v0 + 272);
      v43 = *(v0 + 256);
      v42 = *(v0 + 264);
      v44 = *(v0 + 248);
      v45 = *(v0 + 224);
      v46 = *(v0 + 232);
      v56 = *(v0 + 200);
      v47 = *(v0 + 216) + 8;
      v28(*(v0 + 240), *(v0 + 208));
      v29(v33, v44);

      v40 = *(v0 + 8);
      goto LABEL_10;
    }

    v2 = *(v0 + 288);
  }

  else
  {
  }

  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  sub_100302490();
  swift_allocError();
  *v9 = 0;
  v9[1] = 0;
  swift_willThrow();
  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v37 = *(v0 + 232);
  v36 = *(v0 + 240);
  v38 = *(v0 + 224);
  v39 = *(v0 + 200);

  v40 = *(v0 + 8);
LABEL_10:

  return v40();
}

uint64_t sub_10030161C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[26];
  v8 = v0[27];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[37];
  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v15 = v0[25];

  v16 = v0[1];

  return v16();
}

void sub_100301720(id a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 aa_personID];
  if (!v18)
  {
    goto LABEL_7;
  }

  v62 = v14;
  v63 = v13;
  v19 = v18;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [a2 username];
  if (!v22)
  {

LABEL_7:
    sub_100302490();
    swift_allocError();
    v30 = xmmword_10139AE20;
LABEL_21:
    *v29 = v30;
    swift_willThrow();

LABEL_22:
    return;
  }

  v68 = v21;
  v23 = v22;
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = [a2 dataclassProperties];
  if (!v26)
  {

    v66 = 0u;
    v67 = 0u;
LABEL_18:
    sub_10000B3A8(&v66, &unk_1016A0B10, &qword_10139BF40);
LABEL_20:
    sub_100302490();
    swift_allocError();
    v30 = xmmword_10139AE10;
    goto LABEL_21;
  }

  v27 = v26;
  v58 = a3;
  v60 = a1;
  *&v64 = 0xD00000000000001FLL;
  *(&v64 + 1) = 0x8000000101350B20;
  v28 = [v26 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (!*(&v65 + 1))
  {

    a1 = v60;
    goto LABEL_18;
  }

  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    a1 = v60;
    goto LABEL_20;
  }

  v31 = v64;
  if (!*(v64 + 16) || (v32 = sub_100771D58(0xD000000000000017, 0x8000000101350B40), (v33 & 1) == 0) || (sub_100013894(*(v31 + 56) + 32 * v32, &v66), (swift_dynamicCast() & 1) == 0))
  {

    sub_100302490();
    swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x8000000101350B40;
    goto LABEL_24;
  }

  v57 = 0x8000000101350B40;
  URL.init(string:)();

  v34 = v62;
  if ((*(v62 + 48))(v12, 1, v63) == 1)
  {

    sub_10000B3A8(v12, &unk_101696AC0, &qword_101390A60);
    sub_100302490();
    swift_allocError();
    *v35 = 0xD000000000000017;
    v35[1] = v57;
LABEL_24:
    swift_willThrow();

    goto LABEL_22;
  }

  v38 = *(v34 + 32);
  v37 = v34 + 32;
  v57 = v38;
  v38(v17, v12, v63);
  if (*(v31 + 16))
  {
    v39 = sub_100771D58(0x755F656369766564, 0xEA00000000006C72);
    v40 = v68;
    if (v41)
    {
      sub_100013894(*(v31 + 56) + 32 * v39, &v66);

      if (swift_dynamicCast())
      {
        URL.init(string:)();

        v42 = v60;
        goto LABEL_33;
      }
    }

    else
    {
    }

    v42 = v60;
    v43 = v62;
  }

  else
  {

    v42 = v60;
    v43 = v62;
    v40 = v68;
  }

  (*(v43 + 56))(v10, 1, 1, v63);
LABEL_33:
  v44 = [v42 credentialForAccount:a2];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 credentialItemForKey:ACSearchPartyTokenKey];
    if (v46)
    {
      v62 = v37;
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v10;
      v49 = v40;
      v50 = v48;
      v60 = v51;

      v52 = v58;
      *v58 = v59;
      v52[1] = v25;
      v53 = v60;
      v52[2] = v61;
      v52[3] = v49;
      v52[4] = v50;
      v52[5] = v53;
      v54 = type metadata accessor for SearchpartyAccount();
      v57(v52 + *(v54 + 28), v17, v63);
      sub_1000D55F0(v68, v52 + *(v54 + 32));
      return;
    }
  }

  else
  {
  }

  sub_100302490();
  swift_allocError();
  *v55 = xmmword_10139AE00;
  swift_willThrow();

  sub_10000B3A8(v10, &unk_101696AC0, &qword_101390A60);
  (*(v62 + 8))(v17, v63);
}

uint64_t sub_100301E60(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100301F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AccountService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100301FCC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100302074(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_10030211C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AccountService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1003021C4()
{
  v1 = *v0;
  type metadata accessor for AccountService();
  sub_1003024E4(&qword_101697890, v2, type metadata accessor for AccountService);
  return ActorServiceProtocol.description.getter();
}

unint64_t sub_1003022BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD000000000000016;
    }

    if (a2 == 1)
    {
      return 0xD000000000000013;
    }

    goto LABEL_13;
  }

  if (a2 == 2)
  {
    return 0xD00000000000001BLL;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      return 0xD000000000000013;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    return 0xD00000000000001ALL;
  }

  return 0xD000000000000013;
}

uint64_t sub_10030240C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A8B8);
  sub_1000076D4(v0, qword_10177A8B8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100302490()
{
  result = qword_10169D468;
  if (!qword_10169D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D468);
  }

  return result;
}

uint64_t sub_1003024E4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10030252C(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 aa_personID];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a1 username];
  if (!v11)
  {

LABEL_7:
    sub_100302490();
    swift_allocError();
    v20 = 1;
LABEL_24:
    *v19 = 0;
    v19[1] = v20;
    swift_willThrow();

    return;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 dataclassProperties];
  if (!v16)
  {

    v44 = 0u;
    v45 = 0u;
LABEL_21:
    sub_10000B3A8(&v44, &unk_1016A0B10, &qword_10139BF40);
LABEL_23:
    sub_100302490();
    swift_allocError();
    v20 = 2;
    goto LABEL_24;
  }

  v17 = v16;
  v41 = v13;
  v46 = v8;
  *&v42 = 0xD000000000000021;
  *(&v42 + 1) = 0x8000000101350B60;
  v18 = [v16 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {

    goto LABEL_21;
  }

  sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  if (!*(v42 + 16) || (v21 = sub_100771D58(0x6E74736F48707061, 0xEB00000000656D61), (v22 & 1) == 0))
  {

    goto LABEL_26;
  }

  sub_100013894(*(v42 + 56) + 32 * v21, &v44);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:

    sub_100302490();
    swift_allocError();
    v20 = 3;
    goto LABEL_24;
  }

  v23 = [a1 aa_fmipAccount];
  if (!v23)
  {
LABEL_29:

    sub_100302490();
    swift_allocError();
    v20 = 4;
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [a2 credentialForAccount:v23];
  if (!v25)
  {
LABEL_28:

    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 credentialItemForKey:ACFindMyiPhoneAppTokenKey];
  if (!v27)
  {

    v24 = v26;
    goto LABEL_28;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v30;
  v40 = v29;

  v31 = [a1 aa_authToken];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v34;
    v38 = v33;

    v36 = v37;
    v35 = v38;
  }

  else
  {

    v35 = 0;
    v36 = 0;
  }

  *a3 = v41;
  *(a3 + 8) = v15;
  *(a3 + 16) = v46;
  *(a3 + 24) = v10;
  *(a3 + 32) = v35;
  *(a3 + 40) = v36;
  *(a3 + 48) = v40;
  *(a3 + 56) = v39;
  *(a3 + 64) = v42;
}

uint64_t sub_100302990(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003029A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100302A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_100302A50(void *result, int a2)
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

__n128 sub_100302A88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100302AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100302AEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100302B50()
{
  v1 = type metadata accessor for Endianness();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v0 + *(v7 + 56), v6, &qword_1016A62A0, &unk_101396E10);
  v8 = type metadata accessor for AccessoryMetadata(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
    return 0;
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = v10[1];
    sub_100017D5C(*v10, v12);
    sub_100309338(v6, type metadata accessor for AccessoryMetadata);
    v13 = sub_100313A28(v11, v12);
    sub_100313B54(v11, v12);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v17)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16[2];
    }

    v9 = sub_100E0EA64(v13, v14);
    sub_100016590(v11, v12);
  }

  return v9;
}

unint64_t sub_100302D58@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100309E04(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100302E5C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100309E14(*a1);
  *a2 = result;
  return result;
}

void sub_100302E8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6465726F6E6769;
  if (v2 != 6)
  {
    v6 = 0x7265766F63736964;
    v5 = 0xEA00000000006465;
  }

  v7 = 0x6465676174736E75;
  if (v2 != 4)
  {
    v7 = 0x7761726468746977;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  v8 = 0x796669746F6ELL;
  if (v2 != 2)
  {
    v8 = 0x657461647075;
  }

  if (*v1)
  {
    v4 = 0x646567617473;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100303030(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169D770, &qword_10139B810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100309F08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v16[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v16[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for WildModeTrackingLocation(0) + 28);
    v16[12] = 3;
    type metadata accessor for Date();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10030326C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for WildModeTrackingLocation(0) + 28);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100303344()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(type metadata accessor for WildModeTrackingLocation(0) + 28);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030343C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169D750, &qword_10139B808);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for WildModeTrackingLocation(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v17 = a1[4];
  v33 = a1;
  sub_1000035D0(a1, v16);
  sub_100309F08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = v7;
    v37 = 0;
    v19 = v31;
    KeyedDecodingContainer.decode(_:forKey:)();
    *v15 = v20;
    v36 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v19;
    v15[1] = v22;
    v35 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v15;
    v15[2] = v25;
    v34 = 3;
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date);
    v26 = v18;
    v27 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v11, v27);
    (*(v29 + 32))(v24 + *(v12 + 28), v26, v4);
    sub_100309398(v24, v30, type metadata accessor for WildModeTrackingLocation);
  }

  return sub_100007BAC(v33);
}

uint64_t sub_1003037AC(uint64_t a1)
{
  v2 = sub_100309F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003037E8(uint64_t a1)
{
  v2 = sub_100309F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10030385C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v2[1];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = v2[2];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(a2 + 28);
  type metadata accessor for Date();
  sub_100306A50(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100303950@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100303A20()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 11)
  {
    Hasher._combine(_:)(1uLL);
  }

  else if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_100017D5C(v1, v2);
    Data.hash(into:)();
    sub_100308D64(v1, v2);
  }

  return Hasher._finalize()();
}

void sub_100303AC4()
{
  v1 = v0[1];
  if (v1 >> 60 == 11)
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (v1 >> 60 == 15)
  {
    v2 = 0;
LABEL_5:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *v0;
  Hasher._combine(_:)(2uLL);
  sub_100017D5C(v3, v1);
  Data.hash(into:)();

  sub_100308D64(v3, v1);
}

Swift::Int sub_100303B6C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 11)
  {
    Hasher._combine(_:)(1uLL);
  }

  else if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(2uLL);
    sub_100017D5C(v1, v2);
    Data.hash(into:)();
    sub_100308D64(v1, v2);
  }

  return Hasher._finalize()();
}

BOOL sub_100303C0C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 >> 60 == 11)
  {
    return v3 >> 60 == 11;
  }

  if (v2 >> 60 == 15)
  {
    return v3 >> 60 == 15;
  }

  if (((v3 >> 60) | 4) == 0xF)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  sub_100309400(*a1, v2);
  sub_100309400(v6, v3);
  v7 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v2, v6, v3);
  sub_100308D64(v6, v3);
  sub_100308D64(v5, v2);
  return v7 & 1;
}

uint64_t sub_100303CE4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177A8D0);
  sub_1000076D4(v0, qword_10177A8D0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

void sub_100303E40(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryProductInfo();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  __chkstk_darwin(v4);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v72 = &v64 - v9;
  v10 = type metadata accessor for AccessoryMetadata(0);
  v70 = *(v10 - 8);
  v71 = v10;
  v11 = *(v70 + 64);
  __chkstk_darwin(v10);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v68 = &v64 - v15;
  v77 = type metadata accessor for Date();
  v79 = *(v77 - 8);
  v16 = *(v79 + 64);
  __chkstk_darwin(v77);
  v78 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v75 = &v64 - v23;
  __chkstk_darwin(v22);
  v67 = &v64 - v24;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v64 - v32;
  sub_100306A50(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v34 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v1 + v34[5], v33, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v26 + 32))(v29, v33, v25);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v26 + 8))(v29, v25);
  }

  Hasher._combine(_:)(*(v1 + v34[6]));
  v35 = v34[7];
  type metadata accessor for MACAddress();
  sub_100306A50(&unk_1016BC080, &type metadata accessor for MACAddress);
  dispatch thunk of Hashable.hash(into:)();
  sub_10083C550(a1, *(v2 + v34[8]));
  Hasher._combine(_:)(*(v2 + v34[9]));
  v36 = v34[10];
  sub_100306A50(&unk_101698070, &type metadata accessor for Date);
  v37 = v77;
  dispatch thunk of Hashable.hash(into:)();
  v38 = v67;
  sub_1000D2A70(v2 + v34[11], v67, &unk_101696900, &unk_10138B1E0);
  v39 = v79;
  v40 = *(v79 + 48);
  v69 = v79 + 48;
  if (v40(v38, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = v78;
    (*(v39 + 32))(v78, v38, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v39 + 8))(v41, v37);
  }

  v42 = (v2 + v34[12]);
  if (*(v42 + 2))
  {
    v43 = *(v42 + 1);
    v44 = *v42;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v44);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v45 = *(v2 + v34[13]);
  if (v45 == 4)
  {
    LOBYTE(v45) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v45);
  v46 = v68;
  sub_1000D2A70(v2 + v34[14], v68, &qword_1016A62A0, &unk_101396E10);
  if ((*(v70 + 48))(v46, 1, v71) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = v65;
    sub_100309398(v46, v65, type metadata accessor for AccessoryMetadata);
    Hasher._combine(_:)(1u);
    sub_10022FDD4();
    sub_100309338(v47, type metadata accessor for AccessoryMetadata);
  }

  v48 = v72;
  sub_1000D2A70(v2 + v34[15], v72, &qword_101697268, &qword_101394FE0);
  if ((*(v73 + 48))(v48, 1, v74) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v49 = v66;
    sub_100309398(v48, v66, type metadata accessor for AccessoryProductInfo);
    Hasher._combine(_:)(1u);
    sub_10119D1BC(a1);
    sub_100309338(v49, type metadata accessor for AccessoryProductInfo);
  }

  v50 = *(v2 + v34[16]);
  if (v50 == 8)
  {
    Hasher._combine(_:)(0);
    v51 = v79;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v51 = v79;
    String.hash(into:)();
  }

  sub_100E11110(a1, *(v2 + v34[17]));
  v52 = v75;
  sub_1000D2A70(v2 + v34[18], v75, &unk_101696900, &unk_10138B1E0);
  if (v40(v52, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v78;
    (*(v51 + 32))(v78, v52, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v51 + 8))(v53, v37);
  }

  v54 = v76;
  sub_1000D2A70(v2 + v34[19], v76, &unk_101696900, &unk_10138B1E0);
  if (v40(v54, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = v78;
    (*(v51 + 32))(v78, v54, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v51 + 8))(v55, v37);
  }

  v56 = (v2 + v34[20]);
  v57 = v56[1];
  if (v57 >> 60 == 11)
  {
    v58 = 1;
    goto LABEL_32;
  }

  if (v57 >> 60 == 15)
  {
    v58 = 0;
LABEL_32:
    Hasher._combine(_:)(v58);
    goto LABEL_34;
  }

  v59 = *v56;
  Hasher._combine(_:)(2uLL);
  sub_100017D5C(v59, v57);
  Data.hash(into:)();
  sub_100308D64(v59, v57);
LABEL_34:
  v60 = *(v2 + v34[21]);
  if (v60 == 2)
  {
    v61 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v61 = v60 & 1;
  }

  Hasher._combine(_:)(v61);
  v62 = (v2 + v34[22]);
  if (v62[1])
  {
    v63 = 0;
  }

  else
  {
    v63 = *v62;
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v63);
}

unint64_t sub_1003049F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x746176726573626FLL;
      break;
    case 3:
      result = 0x7369747265766461;
      break;
    case 4:
      result = 0x73736572646461;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x6574617473;
      break;
    case 7:
      result = 0x4472656767697274;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x656C646E6168;
      break;
    case 10:
      result = 0x7954656369766564;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0x49746375646F7270;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0x6C62755065746164;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x68736F507369;
      break;
    case 18:
      result = 0x496B726F7774656ELL;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_100304C30()
{
  Hasher.init(_seed:)();
  sub_100303E40(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100304C74()
{
  Hasher.init(_seed:)();
  sub_100303E40(v1);
  return Hasher._finalize()();
}

uint64_t sub_100304CB4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1003049F4(*a1);
  v5 = v4;
  if (v3 == sub_1003049F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100304D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003049F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100304DA0()
{
  sub_1003049F4(*v0);
  String.hash(into:)();
}

Swift::Int sub_100304DF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003049F4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100304E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100309E60();
  *a2 = result;
  return result;
}

unint64_t sub_100304E84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003049F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100304ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100309E60();
  *a1 = result;
  return result;
}

uint64_t sub_100304F00(uint64_t a1)
{
  v2 = sub_100308D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100304F3C(uint64_t a1)
{
  v2 = sub_100308D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100304F78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v102 = a2;
  v2 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v105 = v101 - v4;
  v5 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v106 = v101 - v7;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v103 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v104 = v101 - v13;
  __chkstk_darwin(v12);
  v110 = v101 - v14;
  v15 = type metadata accessor for Date();
  v127 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v107 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v109 = v101 - v21;
  v114 = type metadata accessor for MACAddress();
  v112 = *(v114 - 8);
  v22 = *(v112 + 64);
  __chkstk_darwin(v114);
  v108 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v113 = v101 - v26;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v116 = v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_10169D480, &qword_10139B0D8);
  v117 = *(v31 - 8);
  v118 = v31;
  v32 = *(v117 + 64);
  __chkstk_darwin(v31);
  v129 = v101 - v33;
  v34 = type metadata accessor for WildModeAssociationRecord(0);
  v35 = *(*(v34 - 1) + 64);
  v36 = __chkstk_darwin(v34);
  v38 = v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v36 + 20);
  v115 = v28;
  v40 = *(v28 + 56);
  v126 = v39;
  v119 = v27;
  v40(&v38[v39], 1, 1, v27);
  v41 = v34[11];
  v111 = v16;
  v42 = *(v16 + 56);
  v125 = v41;
  v42(&v38[v41], 1, 1, v15);
  v43 = v34[14];
  v44 = type metadata accessor for AccessoryMetadata(0);
  v45 = *(*(v44 - 8) + 56);
  v124 = v43;
  v45(&v38[v43], 1, 1, v44);
  v46 = v34[15];
  v47 = type metadata accessor for AccessoryProductInfo();
  (*(*(v47 - 8) + 56))(&v38[v46], 1, 1, v47);
  v123 = sub_100908B38(_swiftEmptyArrayStorage);
  v48 = v34[18];
  static Date.trustedNow.getter(&v38[v48]);
  v122 = v48;
  v49 = v127;
  v42(&v38[v48], 0, 1, v127);
  v120 = v34;
  v50 = v34[19];
  v128 = v38;
  v42(&v38[v50], 1, 1, v49);
  v51 = v130[4];
  sub_1000035D0(v130, v130[3]);
  sub_100308D10();
  v52 = v121;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v52)
  {
    sub_100007BAC(v130);
    v55 = v128;
    sub_10000B3A8(&v128[v126], &qword_1016980D0, &unk_10138F3B0);
    v56 = 0;
    goto LABEL_4;
  }

  v101[2] = v44;
  v101[1] = v47;
  v121 = v46;
  LOBYTE(v131) = 0;
  sub_100306A50(&qword_101698300, &type metadata accessor for UUID);
  v53 = v116;
  v54 = v119;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = v128;
  (*(v115 + 32))(v128, v53, v54);
  LOBYTE(v131) = 1;
  v59 = v113;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002311C(v59, &v58[v126], &qword_1016980D0, &unk_10138F3B0);
  v133 = 2;
  sub_100308D7C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60 = v114;
  v61 = v120;
  v58[v120[6]] = v131 & 1;
  v133 = 3;
  sub_1002E6E38();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v116 = 0;
  v65 = *(&v131 + 1);
  v66 = &v58[v61[20]];
  if (*(&v131 + 1) >> 60 == 15)
  {
    *v66 = xmmword_10138BBF0;
    LOBYTE(v131) = 4;
    sub_100306A50(&qword_1016A41D0, &type metadata accessor for MACAddress);
    v67 = v108;
    v68 = v118;
    v69 = v129;
    v70 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v116 = v70;
    v71 = v110;
    if (v70)
    {
      (*(v117 + 8))(v69, v68);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v56 = 1;
      goto LABEL_7;
    }

    v78 = v127;
    v77 = v112;
  }

  else
  {
    v75 = v131;
    *v66 = v131;
    *(v66 + 1) = v65;
    sub_10002E98C(v75, v65);
    sub_100017D5C(v75, v65);
    v76 = static MACAddress.length.getter();
    sub_10002EA98(v76, v75, v65, &v131);
    v67 = v109;
    MACAddress.init(data:type:)();
    v77 = v112;
    result = (*(v112 + 48))(v67, 1, v60);
    v78 = v127;
    v69 = v129;
    v71 = v110;
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_100006654(v75, v65);
    v61 = v120;
  }

  v79 = v128;
  (*(v77 + 32))(&v128[v61[7]], v67, v60);
  sub_1000BC4D4(&qword_10169D498, &qword_10139B0E0);
  v133 = 5;
  sub_1003090E4(&qword_10169D4A0, &qword_10169D4A8);
  v80 = v118;
  v81 = v116;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v81)
  {
    v116 = v81;
    (*(v117 + 8))(v69, v80);
    v73 = 0;
    v74 = 0;
    v72 = 1;
    v56 = 1;
  }

  else
  {
    *&v79[v61[8]] = v131;
    v133 = 6;
    sub_100308DF0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v79[v61[9]] = v131;
    LOBYTE(v131) = 7;
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date);
    v82 = v78;
    v83 = v107;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v111 + 32))(&v128[v120[10]], v83, v82);
    LOBYTE(v131) = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002311C(v71, &v128[v125], &unk_101696900, &unk_10138B1E0);
    v133 = 9;
    sub_100157E1C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v116 = 0;
    v84 = &v128[v120[12]];
    v85 = v132;
    *v84 = v131;
    *(v84 + 2) = v85;
    v133 = 10;
    sub_100308E44();
    v86 = v116;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v116 = v86;
    if (!v86)
    {
      v128[v120[13]] = v131;
      LOBYTE(v131) = 11;
      sub_100306A50(&qword_10169D4C0, type metadata accessor for AccessoryMetadata);
      v87 = v116;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v116 = v87;
      if (!v87)
      {
        sub_10002311C(v106, &v128[v124], &qword_1016A62A0, &unk_101396E10);
        LOBYTE(v131) = 12;
        sub_100306A50(&qword_10169D4C8, type metadata accessor for AccessoryProductInfo);
        v88 = v116;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v116 = v88;
        if (!v88)
        {
          sub_10002311C(v105, &v128[v121], &qword_101697268, &qword_101394FE0);
          LOBYTE(v131) = 14;
          v89 = v116;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v116 = v89;
          if (!v89)
          {
            sub_10002311C(v104, &v128[v50], &unk_101696900, &unk_10138B1E0);
            v133 = 15;
            sub_100308E98();
            v90 = v116;
            KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
            v116 = v90;
            if (!v90)
            {
              v128[v120[16]] = v131;
              sub_1000BC4D4(&qword_10169D4D8, &qword_10139B0E8);
              v133 = 16;
              sub_100308EEC();
              v91 = v116;
              KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
              v116 = v91;
              if (!v91)
              {
                v92 = v131;
                if (!v131)
                {
                  v92 = sub_100908B38(_swiftEmptyArrayStorage);
                }

                v123 = v92;
                *&v128[v120[17]] = v92;
                LOBYTE(v131) = 13;
                v93 = v116;
                KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
                v116 = v93;
                if (!v93)
                {
                  sub_10002311C(v103, &v128[v122], &unk_101696900, &unk_10138B1E0);
                  LOBYTE(v131) = 17;
                  v94 = v116;
                  v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                  v116 = v94;
                  if (!v94)
                  {
                    v128[v120[21]] = v95;
                    LOBYTE(v131) = 18;
                    v96 = v116;
                    v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                    v116 = v96;
                    if (!v96)
                    {
                      v98 = v97;
                      v99 = v128;
                      v100 = &v128[v120[22]];
                      (*(v117 + 8))(v129, v118);
                      *v100 = v98;
                      v100[1] = HIBYTE(v98) & 1;
                      sub_100308FA8(v99, v102);
                      sub_100007BAC(v130);
                      return sub_100309338(v99, type metadata accessor for WildModeAssociationRecord);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    (*(v117 + 8))(v129, v118);
    v72 = 1;
    v73 = 1;
    v74 = 1;
    v56 = 1;
    v60 = v114;
  }

LABEL_7:
  sub_100007BAC(v130);
  v62 = v128;
  (*(v115 + 8))(v128, v119);
  v55 = v62;
  sub_10000B3A8(&v62[v126], &qword_1016980D0, &unk_10138F3B0);
  if (v72)
  {
    v63 = v120;
    (*(v112 + 8))(&v62[v120[7]], v60);
    if ((v73 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    v64 = *&v62[v63[8]];

    if ((v74 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v63 = v120;
  if (v73)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v74)
  {
LABEL_10:
    (*(v111 + 8))(&v62[v63[10]], v127);
  }

LABEL_11:
  v46 = v121;
LABEL_4:
  sub_10000B3A8(&v55[v125], &unk_101696900, &unk_10138B1E0);

  sub_10000B3A8(&v55[v124], &qword_1016A62A0, &unk_101396E10);
  sub_10000B3A8(&v55[v46], &qword_101697268, &qword_101394FE0);

  sub_10000B3A8(&v55[v122], &unk_101696900, &unk_10138B1E0);
  result = sub_10000B3A8(&v55[v50], &unk_101696900, &unk_10138B1E0);
  if (v56)
  {
    return sub_100308D64(*&v55[v120[20]], *&v55[v120[20] + 8]);
  }

  return result;
}

uint64_t sub_100306204(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169D4E8, &qword_10139B0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100308D10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v30) = 0;
  type metadata accessor for UUID();
  sub_100306A50(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for WildModeAssociationRecord(0);
    v12 = v11[5];
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = *(v3 + v11[6]);
    v32 = 2;
    sub_10030900C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v11[7];
    LOBYTE(v30) = 4;
    type metadata accessor for MACAddress();
    sub_100306A50(&qword_10169B550, &type metadata accessor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3 + v11[20];
    v15 = *(v14 + 8);
    if (((v15 >> 60) | 4) == 0xF)
    {
      v16 = 0;
      v15 = 0xF000000000000000;
    }

    else
    {
      v16 = *v14;
      sub_100017D5C(*v14, *(v14 + 8));
    }

    *&v30 = v16;
    *(&v30 + 1) = v15;
    v32 = 3;
    sub_1000BC4D4(&qword_10169D4F8, &unk_10139B0F8);
    sub_100309060();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100006654(v30, *(&v30 + 1));
    *&v30 = *(v3 + v11[8]);
    v32 = 5;
    sub_1000BC4D4(&qword_10169D498, &qword_10139B0E0);
    sub_1003090E4(&qword_10169D508, &qword_10169D510);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v30) = *(v3 + v11[9]);
    v32 = 6;
    sub_100309180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11[10];
    LOBYTE(v30) = 7;
    type metadata accessor for Date();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v11[11];
    LOBYTE(v30) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v11[12]);
    v20 = *(v19 + 2);
    v30 = *v19;
    v31 = v20;
    v32 = 9;
    sub_100157F84();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = *(v3 + v11[13]);
    v32 = 10;
    sub_1003091D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = v11[14];
    LOBYTE(v30) = 11;
    type metadata accessor for AccessoryMetadata(0);
    sub_100306A50(&qword_10169D528, type metadata accessor for AccessoryMetadata);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = v11[15];
    LOBYTE(v30) = 12;
    type metadata accessor for AccessoryProductInfo();
    sub_100306A50(&qword_10169D530, type metadata accessor for AccessoryProductInfo);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = v11[19];
    LOBYTE(v30) = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = *(v3 + v11[16]);
    v32 = 15;
    sub_100309228();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v30 = *(v3 + v11[17]);
    v32 = 16;
    sub_1000BC4D4(&qword_10169D4D8, &qword_10139B0E8);
    sub_10030927C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = v11[18];
    LOBYTE(v30) = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = *(v3 + v11[21]);
    LOBYTE(v30) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v11[22]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v30) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1003069CC(uint64_t a1)
{
  *(a1 + 8) = sub_100306A50(&qword_10169D470, type metadata accessor for WildModeAssociationRecord);
  result = sub_100306A50(&qword_10169D478, type metadata accessor for WildModeAssociationRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100306A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100306A98()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v81 - v3;
  v5 = type metadata accessor for AccessoryMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v81 - v12;
  v14 = type metadata accessor for LocalizationUtility.Table();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WildModeAssociationRecord(0);
  v20 = v19;
  if (*(v0 + v19[13]) - 2 >= 3)
  {
    v26 = v0 + v19[12];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v26 + 8);
      v29 = *v26;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_101385D80;
      v31 = sub_100EB3708(v29, v28, v27);
      v32 = [v31 description];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_1010E09D0(v33, v35, 0);
      v38 = v37;

      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100008C00();
      *(v30 + 32) = v36;
      *(v30 + 40) = v38;
    }

    goto LABEL_20;
  }

  v85 = v14;
  sub_1000D2A70(v0 + v19[15], v13, &qword_101697268, &qword_101394FE0);
  v21 = type metadata accessor for AccessoryProductInfo();
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) != 1)
  {
    v39 = &v13[*(v21 + 52)];
    v41 = *v39;
    v40 = v39[1];

    v42 = type metadata accessor for AccessoryProductInfo;
    v43 = v13;
    goto LABEL_9;
  }

  sub_10000B3A8(v13, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v0 + v20[14], v4, &qword_1016A62A0, &unk_101396E10);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_100309398(v4, v9, type metadata accessor for AccessoryMetadata);
    v65 = sub_100302B50();
    v66 = &v9[*(v5 + 28)];
    v14 = v85;
    if (!v65)
    {
      v41 = *v66;
      v40 = v66[1];

      sub_100309338(v9, type metadata accessor for AccessoryMetadata);
      goto LABEL_10;
    }

    v67 = v66[1];
    if (v67)
    {
      v68 = *v66;
      v86 = 0;
      v87 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v86 = 0xD00000000000001DLL;
      v87 = 0x800000010134F730;
      v69._countAndFlagsBits = v68;
      v69._object = v67;
      String.append(_:)(v69);
      v70 = v86;
      v71 = v87;
    }

    else
    {
      v71 = 0x800000010134F6E0;
      v70 = 0xD00000000000001CLL;
    }

    v74 = v15[13];
    v84 = enum case for LocalizationUtility.Table.default(_:);
    v83 = v74;
    v81[1] = v15 + 13;
    v74(v18);
    v75 = static LocalizationUtility.localizedString(key:table:)();
    v40 = v76;

    v82 = v15[1];
    v82(v18, v14);
    v77 = v75 == v70;
    v41 = v75;
    if (v77 && v40 == v71)
    {

LABEL_28:

      v79 = v85;
      v83(v18, v84, v85);
      v41 = static LocalizationUtility.localizedString(key:table:)();
      v40 = v80;
      v82(v18, v79);
      v14 = v79;
      sub_100309338(v9, type metadata accessor for AccessoryMetadata);
LABEL_10:
      v44 = v0 + v20[12];
      v23 = *(v44 + 16);
      if (v23)
      {
        v24 = *(v44 + 8);
        v25 = *v44;
        if (!v40)
        {
          goto LABEL_14;
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10138BBE0;
        v46 = sub_100EB3708(v25, v24, v23);
        v47 = [v46 description];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = sub_1010E09D0(v48, v50, 0);
        v53 = v52;

        *(v45 + 56) = &type metadata for String;
        v54 = sub_100008C00();
        *(v45 + 32) = v51;
        *(v45 + 40) = v53;
        *(v45 + 96) = &type metadata for String;
        *(v45 + 104) = v54;
        *(v45 + 64) = v54;
        *(v45 + 72) = v41;
        *(v45 + 80) = v40;
      }

      else if (v40)
      {
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_101385D80;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = sub_100008C00();
        *(v64 + 32) = v41;
        *(v64 + 40) = v40;
      }

      goto LABEL_20;
    }

    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v78)
    {
      goto LABEL_28;
    }

    v42 = type metadata accessor for AccessoryMetadata;
    v43 = v9;
LABEL_9:
    sub_100309338(v43, v42);
    v14 = v85;
    goto LABEL_10;
  }

  sub_10000B3A8(v4, &qword_1016A62A0, &unk_101396E10);
  v22 = v0 + v20[12];
  v23 = *(v22 + 16);
  v14 = v85;
  if (v23)
  {
    v24 = *(v22 + 8);
    v25 = *v22;
LABEL_14:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_101385D80;
    v56 = sub_100EB3708(v25, v24, v23);
    v57 = [v56 description];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = sub_1010E09D0(v58, v60, 0);
    v63 = v62;

    *(v55 + 56) = &type metadata for String;
    *(v55 + 64) = sub_100008C00();
    *(v55 + 32) = v61;
    *(v55 + 40) = v63;
  }

LABEL_20:
  (v15[13])(v18, enum case for LocalizationUtility.Table.default(_:), v14);
  static LocalizationUtility.localizedString(key:table:)();

  (v15[1])(v18, v14);
  v72 = String.init(format:arguments:)();

  return v72;
}

uint64_t sub_1003073D8()
{
  v1 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AccessoryProductInfo();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WildModeAssociationRecord(0);
  sub_1000D2A70(v0 + *(v14 + 60), v8, &qword_101697268, &qword_101394FE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_101697268, &qword_101394FE0);
    sub_1000D2A70(v0 + *(v14 + 56), v4, &qword_1016A62A0, &unk_101396E10);
    v15 = type metadata accessor for AccessoryMetadata(0);
    if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
    {
      sub_10000B3A8(v4, &qword_1016A62A0, &unk_101396E10);
      return 0;
    }

    else
    {
      v18 = &v4[*(v15 + 52)];
      v19 = *v18;
      v20 = v18[4];
      sub_100309338(v4, type metadata accessor for AccessoryMetadata);
      if (v20)
      {
        return 0;
      }

      else
      {
        return (v19 >> 8) & 1;
      }
    }
  }

  else
  {
    sub_100309398(v8, v13, type metadata accessor for AccessoryProductInfo);
    v17 = *&v13[*(v9 + 88)];
    sub_100309338(v13, type metadata accessor for AccessoryProductInfo);
    return (v17 >> 8) & 1;
  }
}

uint64_t sub_10030769C()
{
  v1 = type metadata accessor for WildModeAssociationRecord(0);
  v2 = *(v0 + v1[21]);
  v3 = (v0 + v1[22]);
  if (v3[1] != 1)
  {
    if (*(v0 + v1[21]))
    {
      if (*v3 == 1)
      {
        return 5;
      }

      return 6;
    }

    return *(v0 + v1[13]);
  }

  if ((*(v0 + v1[21]) & 1) == 0)
  {
    return *(v0 + v1[13]);
  }

  return 6;
}

uint64_t sub_100307708@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = *(v1 + v3[21]);
  v5 = (v1 + v3[22]);
  if ((v5[1] & 1) == 0)
  {
    if ((*(v1 + v3[21]) & 1) == 0)
    {
      goto LABEL_7;
    }

    if (*v5 == 1)
    {
      goto LABEL_12;
    }

LABEL_6:
    v6 = v3[7];
    v7 = type metadata accessor for MACAddress();
    v15 = *(v7 - 8);
    (*(v15 + 16))(a1, v1 + v6, v7);
    v8 = *(v15 + 56);
    v9 = a1;
    v10 = 0;
    v11 = v7;
LABEL_9:

    return v8(v9, v10, 1, v11);
  }

  if (*(v1 + v3[21]))
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*(v1 + v3[13]) == 4)
  {
    v12 = type metadata accessor for MACAddress();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a1;
    v10 = 1;
    goto LABEL_9;
  }

LABEL_12:
  v14 = v1 + v3[7];
  MACAddress.data.getter();

  return MACAddress.init(addressToSanitize:type:)();
}

uint64_t sub_10030788C(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v3 = *(type metadata accessor for WildModeTrackingLocation(0) + 28);

  return static Date.== infix(_:_:)();
}

BOOL sub_10030790C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryProductInfo();
  v161 = *(v4 - 8);
  v162 = v4;
  v5 = *(v161 + 64);
  __chkstk_darwin(v4);
  v157 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v159 = &v147 - v9;
  v160 = sub_1000BC4D4(&qword_10169D548, &qword_10139B108);
  v10 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v164 = &v147 - v11;
  v12 = type metadata accessor for AccessoryMetadata(0);
  v166 = *(v12 - 8);
  v167 = v12;
  v13 = *(v166 + 64);
  __chkstk_darwin(v12);
  v158 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v163 = &v147 - v17;
  v165 = sub_1000BC4D4(&qword_10169D550, &qword_10139B110);
  v18 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v168 = &v147 - v19;
  v20 = type metadata accessor for Date();
  v171 = *(v20 - 8);
  v21 = *(v171 + 64);
  __chkstk_darwin(v20);
  v169 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v153 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v154 = &v147 - v28;
  __chkstk_darwin(v27);
  v170 = &v147 - v29;
  v172 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v30 = *(*(v172 - 8) + 64);
  v31 = __chkstk_darwin(v172);
  v155 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v156 = &v147 - v34;
  __chkstk_darwin(v33);
  v36 = &v147 - v35;
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v147 - v44;
  v46 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v49 = &v147 - v48;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v150 = v20;
  v50 = type metadata accessor for WildModeAssociationRecord(0);
  v173 = a2;
  v152 = v50;
  v51 = *(v50 + 20);
  v52 = *(v46 + 48);
  v151 = a1;
  sub_1000D2A70(a1 + v51, v49, &qword_1016980D0, &unk_10138F3B0);
  v53 = v173 + v51;
  v54 = v173;
  sub_1000D2A70(v53, &v49[v52], &qword_1016980D0, &unk_10138F3B0);
  v55 = *(v38 + 48);
  if (v55(v49, 1, v37) == 1)
  {
    if (v55(&v49[v52], 1, v37) == 1)
    {
      sub_10000B3A8(v49, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_10;
    }

LABEL_7:
    v56 = &qword_1016AF880;
    v57 = &unk_10138CE20;
    v58 = v49;
LABEL_8:
    sub_10000B3A8(v58, v56, v57);
    return 0;
  }

  sub_1000D2A70(v49, v45, &qword_1016980D0, &unk_10138F3B0);
  if (v55(&v49[v52], 1, v37) == 1)
  {
    (*(v38 + 8))(v45, v37);
    goto LABEL_7;
  }

  (*(v38 + 32))(v41, &v49[v52], v37);
  sub_100306A50(&qword_1016984A0, &type metadata accessor for UUID);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v38 + 8);
  v60(v41, v37);
  v60(v45, v37);
  sub_10000B3A8(v49, &qword_1016980D0, &unk_10138F3B0);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v61 = v152;
  v62 = v151;
  if (*(v151 + v152[6]) != *(v54 + v152[6]))
  {
    return 0;
  }

  v63 = v152[7];
  if ((static MACAddress.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_10038F40C(*(v62 + v61[8]), *(v54 + v61[8])) & 1) == 0)
  {
    return 0;
  }

  if (*(v62 + v61[9]) != *(v54 + v61[9]))
  {
    return 0;
  }

  v64 = v61[10];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v65 = v61[11];
  v66 = *(v172 + 48);
  sub_1000D2A70(v62 + v65, v36, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v54 + v65, &v36[v66], &unk_101696900, &unk_10138B1E0);
  v67 = v171;
  v69 = v171 + 48;
  v68 = *(v171 + 48);
  v70 = v150;
  if (v68(v36, 1, v150) == 1)
  {
    if (v68(&v36[v66], 1, v70) == 1)
    {
      v148 = v69;
      v149 = v68;
      sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
      goto LABEL_23;
    }

LABEL_20:
    v56 = &unk_1016B1660;
    v57 = &unk_10138CE10;
LABEL_21:
    v58 = v36;
    goto LABEL_8;
  }

  v71 = v170;
  sub_1000D2A70(v36, v170, &unk_101696900, &unk_10138B1E0);
  if (v68(&v36[v66], 1, v70) == 1)
  {
    (*(v67 + 8))(v71, v70);
    goto LABEL_20;
  }

  v148 = v69;
  v149 = v68;
  v72 = v169;
  (*(v67 + 32))(v169, &v36[v66], v70);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v74 = *(v67 + 8);
  v75 = v72;
  v61 = v152;
  v74(v75, v70);
  v74(v71, v70);
  sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v76 = v61[12];
  v77 = (v62 + v76);
  v78 = *(v62 + v76 + 16);
  v79 = (v54 + v76);
  v80 = v79[2];
  if (v78)
  {
    if (!v80 || *v79 != *v77 || (v77[1] != v79[1] || v78 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  v81 = v61[13];
  v82 = *(v62 + v81);
  v83 = *(v54 + v81);
  if (v82 == 4)
  {
    if (v83 != 4)
    {
      return 0;
    }
  }

  else if (v82 != v83)
  {
    return 0;
  }

  v84 = v61[14];
  v85 = *(v165 + 48);
  v86 = v168;
  sub_1000D2A70(v62 + v84, v168, &qword_1016A62A0, &unk_101396E10);
  v87 = v173 + v84;
  v88 = v86;
  sub_1000D2A70(v87, v86 + v85, &qword_1016A62A0, &unk_101396E10);
  v89 = v167;
  v90 = *(v166 + 48);
  if (v90(v86, 1, v167) == 1)
  {
    if (v90(v86 + v85, 1, v89) == 1)
    {
      sub_10000B3A8(v86, &qword_1016A62A0, &unk_101396E10);
      goto LABEL_42;
    }

LABEL_40:
    v56 = &qword_10169D550;
    v57 = &qword_10139B110;
    v58 = v88;
    goto LABEL_8;
  }

  v91 = v163;
  sub_1000D2A70(v88, v163, &qword_1016A62A0, &unk_101396E10);
  if (v90(v88 + v85, 1, v89) == 1)
  {
    sub_100309338(v91, type metadata accessor for AccessoryMetadata);
    goto LABEL_40;
  }

  v92 = v88 + v85;
  v93 = v158;
  sub_100309398(v92, v158, type metadata accessor for AccessoryMetadata);
  v94 = sub_10022F898(v91, v93);
  sub_100309338(v93, type metadata accessor for AccessoryMetadata);
  sub_100309338(v91, type metadata accessor for AccessoryMetadata);
  sub_10000B3A8(v88, &qword_1016A62A0, &unk_101396E10);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  v95 = v61[15];
  v96 = *(v160 + 48);
  v36 = v164;
  sub_1000D2A70(v62 + v95, v164, &qword_101697268, &qword_101394FE0);
  sub_1000D2A70(v173 + v95, &v36[v96], &qword_101697268, &qword_101394FE0);
  v97 = v162;
  v98 = *(v161 + 48);
  if (v98(v36, 1, v162) == 1)
  {
    if (v98(&v36[v96], 1, v97) == 1)
    {
      sub_10000B3A8(v36, &qword_101697268, &qword_101394FE0);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  sub_1000D2A70(v36, v159, &qword_101697268, &qword_101394FE0);
  if (v98(&v36[v96], 1, v97) == 1)
  {
    sub_100309338(v159, type metadata accessor for AccessoryProductInfo);
    v36 = v164;
LABEL_47:
    v56 = &qword_10169D548;
    v57 = &qword_10139B108;
    goto LABEL_21;
  }

  v99 = v164;
  v100 = &v164[v96];
  v101 = v157;
  sub_100309398(v100, v157, type metadata accessor for AccessoryProductInfo);
  v102 = v159;
  v103 = sub_10119C5C8(v159, v101);
  sub_100309338(v101, type metadata accessor for AccessoryProductInfo);
  sub_100309338(v102, type metadata accessor for AccessoryProductInfo);
  sub_10000B3A8(v99, &qword_101697268, &qword_101394FE0);
  if ((v103 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  v104 = v152[16];
  v105 = *(v151 + v104);
  v106 = *(v173 + v104);
  if (v105 == 8)
  {
    if (v106 != 8)
    {
      return 0;
    }
  }

  else if (v106 == 8 || (sub_10076C2AC(v105, v106) & 1) == 0)
  {
    return 0;
  }

  if ((sub_100DE6A68(*(v151 + v152[17]), *(v173 + v152[17])) & 1) == 0)
  {
    return 0;
  }

  v107 = v152[18];
  v108 = *(v172 + 48);
  v109 = v156;
  sub_1000D2A70(v151 + v107, v156, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v173 + v107, v109 + v108, &unk_101696900, &unk_10138B1E0);
  if (v149(v109, 1, v150) == 1)
  {
    if (v149(v156 + v108, 1, v150) == 1)
    {
      sub_10000B3A8(v156, &unk_101696900, &unk_10138B1E0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v110 = v156;
  sub_1000D2A70(v156, v154, &unk_101696900, &unk_10138B1E0);
  if (v149(v110 + v108, 1, v150) == 1)
  {
    (*(v171 + 8))(v154, v150);
LABEL_60:
    v56 = &unk_1016B1660;
    v57 = &unk_10138CE10;
    v58 = v156;
    goto LABEL_8;
  }

  v111 = v171;
  v112 = v156;
  v113 = v169;
  v114 = v150;
  (*(v171 + 32))(v169, v156 + v108, v150);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date);
  v115 = v154;
  v116 = dispatch thunk of static Equatable.== infix(_:_:)();
  v117 = *(v111 + 8);
  v117(v113, v114);
  v117(v115, v114);
  sub_10000B3A8(v112, &unk_101696900, &unk_10138B1E0);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v118 = v152[19];
  v119 = *(v172 + 48);
  v120 = v155;
  sub_1000D2A70(v151 + v118, v155, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v173 + v118, v120 + v119, &unk_101696900, &unk_10138B1E0);
  if (v149(v120, 1, v150) == 1)
  {
    if (v149(v155 + v119, 1, v150) == 1)
    {
      sub_10000B3A8(v155, &unk_101696900, &unk_10138B1E0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v121 = v155;
  sub_1000D2A70(v155, v153, &unk_101696900, &unk_10138B1E0);
  if (v149(v121 + v119, 1, v150) == 1)
  {
    (*(v171 + 8))(v153, v150);
LABEL_67:
    v56 = &unk_1016B1660;
    v57 = &unk_10138CE10;
    v58 = v155;
    goto LABEL_8;
  }

  v122 = v171;
  v123 = v155;
  v124 = v155 + v119;
  v125 = v169;
  v126 = v150;
  (*(v171 + 32))(v169, v124, v150);
  sub_100306A50(&qword_101698290, &type metadata accessor for Date);
  v127 = v153;
  v128 = dispatch thunk of static Equatable.== infix(_:_:)();
  v129 = *(v122 + 8);
  v129(v125, v126);
  v129(v127, v126);
  sub_10000B3A8(v123, &unk_101696900, &unk_10138B1E0);
  if ((v128 & 1) == 0)
  {
    return 0;
  }

LABEL_69:
  v130 = v152[20];
  v131 = v151 + v130;
  v132 = *(v151 + v130 + 8);
  v133 = (v173 + v130);
  v134 = v133[1];
  if (v132 >> 60 == 11)
  {
    if (v134 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v132 >> 60 == 15)
  {
    if (v134 >> 60 != 15)
    {
      return 0;
    }
  }

  else
  {
    if (((v134 >> 60) | 4) == 0xF)
    {
      return 0;
    }

    v135 = *v131;
    v136 = *v133;
    sub_100309400(*v131, *(v131 + 8));
    sub_100309400(v136, v134);
    v137 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v135, v132, v136, v134);
    sub_100308D64(v136, v134);
    sub_100308D64(v135, v132);
    if ((v137 & 1) == 0)
    {
      return 0;
    }
  }

  v138 = v152[21];
  v139 = *(v151 + v138);
  v140 = *(v173 + v138);
  if (v139 == 2)
  {
    if (v140 != 2)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = 0;
  if (v140 != 2 && ((v140 ^ v139) & 1) == 0)
  {
LABEL_82:
    v142 = v152[22];
    v143 = (v151 + v142);
    v144 = *(v151 + v142 + 1);
    v145 = (v173 + v142);
    v146 = *(v173 + v142 + 1);
    if ((v144 & 1) == 0)
    {
      if (*v143 != *v145)
      {
        v146 = 1;
      }

      return (v146 & 1) == 0;
    }

    return (v146 & 1) != 0;
  }

  return result;
}

unint64_t sub_100308D10()
{
  result = qword_10169D488;
  if (!qword_10169D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D488);
  }

  return result;
}

uint64_t sub_100308D64(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100016590(a1, a2);
  }

  return a1;
}

unint64_t sub_100308D7C()
{
  result = qword_10169D490;
  if (!qword_10169D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D490);
  }

  return result;
}

unint64_t sub_100308DF0()
{
  result = qword_10169D4B0;
  if (!qword_10169D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4B0);
  }

  return result;
}

unint64_t sub_100308E44()
{
  result = qword_10169D4B8;
  if (!qword_10169D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4B8);
  }

  return result;
}

unint64_t sub_100308E98()
{
  result = qword_10169D4D0;
  if (!qword_10169D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4D0);
  }

  return result;
}

unint64_t sub_100308EEC()
{
  result = qword_10169D4E0;
  if (!qword_10169D4E0)
  {
    sub_1000BC580(&qword_10169D4D8, &qword_10139B0E8);
    sub_100308E98();
    sub_100306A50(&qword_101697F40, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4E0);
  }

  return result;
}

uint64_t sub_100308FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WildModeAssociationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10030900C()
{
  result = qword_10169D4F0;
  if (!qword_10169D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D4F0);
  }

  return result;
}

unint64_t sub_100309060()
{
  result = qword_10169D500;
  if (!qword_10169D500)
  {
    sub_1000BC580(&qword_10169D4F8, &unk_10139B0F8);
    sub_1002E6EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D500);
  }

  return result;
}

uint64_t sub_1003090E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169D498, &qword_10139B0E0);
    sub_100306A50(a2, type metadata accessor for WildModeTrackingLocation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100309180()
{
  result = qword_10169D518;
  if (!qword_10169D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D518);
  }

  return result;
}

unint64_t sub_1003091D4()
{
  result = qword_10169D520;
  if (!qword_10169D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D520);
  }

  return result;
}

unint64_t sub_100309228()
{
  result = qword_10169D538;
  if (!qword_10169D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D538);
  }

  return result;
}

unint64_t sub_10030927C()
{
  result = qword_10169D540;
  if (!qword_10169D540)
  {
    sub_1000BC580(&qword_10169D4D8, &qword_10139B0E8);
    sub_100309228();
    sub_100306A50(&unk_101697F60, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D540);
  }

  return result;
}

uint64_t sub_100309338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100309398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100309400(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100017D5C(a1, a2);
  }

  return a1;
}

uint64_t sub_100309418(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100309440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 16))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030949C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *sub_1003094F0(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WildModeAssociationRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WildModeAssociationRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1003096B0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1003099C0(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MACAddress();
      if (v2 <= 0x3F)
      {
        sub_1003099C0(319, &qword_10169D5C0, type metadata accessor for WildModeTrackingLocation, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            sub_1003099C0(319, &qword_1016BA040, &type metadata accessor for Date, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &qword_10169D5C8);
              if (v6 <= 0x3F)
              {
                sub_1002359B8(319, &qword_10169D5D0);
                if (v7 <= 0x3F)
                {
                  sub_1003099C0(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1003099C0(319, &qword_10169AC10, type metadata accessor for AccessoryProductInfo, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_1002359B8(319, &qword_10169D5D8);
                      if (v10 <= 0x3F)
                      {
                        sub_100309A24();
                        if (v11 <= 0x3F)
                        {
                          sub_1002359B8(319, &qword_10169D5F0);
                          if (v12 <= 0x3F)
                          {
                            sub_1002359B8(319, &qword_10169C548);
                            if (v13 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_1003099C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100309A24()
{
  if (!qword_10169D5E0)
  {
    type metadata accessor for Date();
    sub_100309A90();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_10169D5E0);
    }
  }
}

unint64_t sub_100309A90()
{
  result = qword_10169D5E8;
  if (!qword_10169D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D5E8);
  }

  return result;
}

unint64_t sub_100309B58()
{
  result = qword_10169D708;
  if (!qword_10169D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D708);
  }

  return result;
}

unint64_t sub_100309BB0()
{
  result = qword_10169D710;
  if (!qword_10169D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D710);
  }

  return result;
}

unint64_t sub_100309C08()
{
  result = qword_10169D718;
  if (!qword_10169D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D718);
  }

  return result;
}

unint64_t sub_100309C60()
{
  result = qword_10169D720;
  if (!qword_10169D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D720);
  }

  return result;
}

unint64_t sub_100309CB8()
{
  result = qword_10169D728;
  if (!qword_10169D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D728);
  }

  return result;
}

unint64_t sub_100309D58()
{
  result = qword_10169D738;
  if (!qword_10169D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D738);
  }

  return result;
}

unint64_t sub_100309DB0()
{
  result = qword_10169D740;
  if (!qword_10169D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D740);
  }

  return result;
}

unint64_t sub_100309E04(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_100309E14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101608750, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100309E60()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100309EB4()
{
  result = qword_10169D748;
  if (!qword_10169D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D748);
  }

  return result;
}

unint64_t sub_100309F08()
{
  result = qword_10169D758;
  if (!qword_10169D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D758);
  }

  return result;
}

unint64_t sub_100309F5C()
{
  result = qword_10169D760;
  if (!qword_10169D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D760);
  }

  return result;
}

unint64_t sub_100309FB0()
{
  result = qword_10169D768;
  if (!qword_10169D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D768);
  }

  return result;
}

unint64_t sub_10030A018()
{
  result = qword_10169D778;
  if (!qword_10169D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D778);
  }

  return result;
}

unint64_t sub_10030A070()
{
  result = qword_10169D780;
  if (!qword_10169D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D780);
  }

  return result;
}

unint64_t sub_10030A0C8()
{
  result = qword_10169D788;
  if (!qword_10169D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D788);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AdvInfo(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AdvInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[5])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AdvInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10030A1F8()
{
  result = qword_10169D790;
  if (!qword_10169D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D790);
  }

  return result;
}

unint64_t sub_10030A24C(void *a1, int a2)
{
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (a2 == 2 || (a2 & 0x10000) != 0)
  {
    sub_10015049C(v6, v7);
    sub_1000198E8();
LABEL_8:
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    if (!v2)
    {
      sub_10015049C(v6, v7);
      sub_1000198E8();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_10015049C(v6, v7);
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    }

    return sub_100007BAC(v6);
  }

  sub_10015049C(v6, v7);
  sub_1000198E8();
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (v2)
  {
    return sub_100007BAC(v6);
  }

  result = Bool.intValue.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_10015049C(v6, v7);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030A440(void *a1, int a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_1000BC4D4(&qword_10169D7B0, &qword_10139BAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10030B354();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[12] = v3;
    v12[11] = 2;
    sub_10028E9F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[10] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10030A648()
{
  v1 = 0x656E774F7261656ELL;
  v2 = 0x79654B6172747865;
  if (*v0 != 2)
  {
    v2 = 1953393000;
  }

  if (*v0)
  {
    v1 = 0x6465767265736572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10030A6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10030AFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10030A6F0(uint64_t a1)
{
  v2 = sub_10030B354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030A72C(uint64_t a1)
{
  v2 = sub_10030B354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10030A7EC@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result) & 1;
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

BOOL sub_10030A904(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    if ((a2 & 0x10000) == 0)
    {
      return 0;
    }
  }

  else if ((a2 & 0x10000) != 0 || BYTE1(a1) != BYTE1(a2))
  {
    return 0;
  }

  if (BYTE3(a1) != BYTE3(a2))
  {
    return 0;
  }

  return BYTE4(a1) == BYTE4(a2);
}

int64_t sub_10030A98C(int64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) == 0 || BYTE6(a2) > 4uLL)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (result == result >> 32)
    {
      goto LABEL_25;
    }
  }

  if (v2 == 2)
  {
    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 > 4)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_30;
  }

  if (HIDWORD(result) - result > 4)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v7 = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v8 = v7;
        if (v7 == 2)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      goto LABEL_31;
    }

    v8 = BYTE6(a2);
    if (BYTE6(a2) == 2)
    {
LABEL_27:
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

LABEL_23:
    if (v8 == 3)
    {
      v11 = Data._Representation.subscript.getter();
      v12 = 0;
      v13 = (Data._Representation.subscript.getter() & 0xFE) << 8;
      v8 = v11 & 1;
LABEL_28:
      v14 = Data._Representation.subscript.getter();
      return v8 | v13 | (v14 << 24) | (Data._Representation.subscript.getter() << 32) | (v12 << 16);
    }

LABEL_25:
    sub_10030AF5C();
    swift_allocError();
    return swift_willThrow();
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v8 = v9 - v10;
  if (!__OFSUB__(v9, v10))
  {
    if (v8 == 2)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10030AB94(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v45, v46);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    sub_1000E0A3C();
    DataProtocol.intValue.getter();
    sub_10015049C(v45, v46);
    *&v44 = v6;
    *(&v44 + 1) = v7;
    v42 = &type metadata for Data;
    v43 = &protocol witness table for Data;
    *&v41 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    *(&v41 + 1) = v8;
    v9 = v41;
    v10 = v8;
    v11 = sub_1000035D0(&v41, &type metadata for Data);
    v12 = *v11;
    v13 = v11[1];
    sub_100017D5C(v6, v7);
    v38 = v10;
    sub_100017D5C(v9, v10);
    sub_100017DB0(v12, v13);
    sub_100007BAC(&v41);
    v42 = &type metadata for Data;
    v43 = &protocol witness table for Data;
    v41 = v44;
    v14 = sub_1000035D0(&v41, &type metadata for Data);
    v15 = *v14;
    v16 = v14[1];
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v39, 0, 14);
        v19 = v39;
        v18 = v39;
        goto LABEL_25;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = __DataStorage._bytes.getter();
      if (v22)
      {
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v21, v23))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v22 += v21 - v23;
      }

      v24 = __OFSUB__(v20, v21);
      v25 = v20 - v21;
      if (!v24)
      {
        v26 = __DataStorage._length.getter();
        if (v26 >= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

LABEL_20:
        v33 = (v27 + v22);
        if (v22)
        {
          v18 = v33;
        }

        else
        {
          v18 = 0;
        }

        v19 = v22;
        goto LABEL_25;
      }
    }

    else
    {
      if (!v17)
      {
        v39[0] = *v14;
        LOWORD(v39[1]) = v16;
        BYTE2(v39[1]) = BYTE2(v16);
        BYTE3(v39[1]) = BYTE3(v16);
        BYTE4(v39[1]) = BYTE4(v16);
        BYTE5(v39[1]) = BYTE5(v16);
        v18 = v39 + BYTE6(v16);
        v19 = v39;
LABEL_25:
        sub_100267F80(v19, v18, v40);
        v34 = v40[0];
        v35 = v40[1];
        sub_100007BAC(&v41);
        v36 = sub_10030A98C(v34, v35);
        sub_100016590(v34, v35);
        sub_100016590(v9, v38);
        sub_100016590(v6, v7);
        sub_100007BAC(v45);
        sub_100007BAC(a1);
        LOBYTE(v45[0]) = BYTE2(v36) & 1;
        return v36 & 0xFFFF00FFFFLL | ((BYTE2(v36) & 1) << 16);
      }

      v28 = v15;
      v29 = v15 >> 32;
      v30 = v29 - v28;
      if (v29 >= v28)
      {
        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
          goto LABEL_17;
        }

        v31 = __DataStorage._offset.getter();
        if (!__OFSUB__(v28, v31))
        {
          v22 += v28 - v31;
LABEL_17:
          v32 = __DataStorage._length.getter();
          if (v32 >= v30)
          {
            v27 = v30;
          }

          else
          {
            v27 = v32;
          }

          goto LABEL_20;
        }

LABEL_30:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_100007BAC(v45);
  return sub_100007BAC(a1);
}

unint64_t sub_10030AF5C()
{
  result = qword_10169D798;
  if (!qword_10169D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D798);
  }

  return result;
}

uint64_t sub_10030AFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E774F7261656ELL && a2 == 0xE900000000000072;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6172747865 && a2 == 0xEC00000073746942 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393000 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_10030B120(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_10169D7A0, &qword_10139BAC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10030B354();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v19 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = 2;
  sub_10028E8A4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17;
  v15 = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100007BAC(a1);
  return (v14 << 24) | (v11 << 32) | ((HIBYTE(v10) & 1) << 16) | (v10 << 8) | v9;
}

unint64_t sub_10030B354()
{
  result = qword_10169D7A8;
  if (!qword_10169D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7A8);
  }

  return result;
}

unint64_t sub_10030B3BC()
{
  result = qword_10169D7B8;
  if (!qword_10169D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7B8);
  }

  return result;
}

unint64_t sub_10030B414()
{
  result = qword_10169D7C0;
  if (!qword_10169D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7C0);
  }

  return result;
}

unint64_t sub_10030B46C()
{
  result = qword_10169D7C8;
  if (!qword_10169D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7C8);
  }

  return result;
}

uint64_t sub_10030B570@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10030B64C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10030B64C(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10030B660(double a1)
{
  if (a1 >= 0.0 && a1 < 65.0)
  {
    return 3;
  }

  if (a1 >= 65.0 && a1 < 400.0)
  {
    return 2;
  }

  if (a1 <= 9.22337204e18)
  {
    return a1 >= 400.0;
  }

  return 0;
}

unint64_t sub_10030B6E4()
{
  result = qword_10169D7D0;
  if (!qword_10169D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7D0);
  }

  return result;
}

unint64_t sub_10030B73C()
{
  result = qword_10169D7D8;
  if (!qword_10169D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7D8);
  }

  return result;
}

unint64_t sub_10030B790()
{
  result = qword_10169D7E0;
  if (!qword_10169D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7E0);
  }

  return result;
}

unint64_t sub_10030B7E4()
{
  result = qword_10169D7E8;
  if (!qword_10169D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D7E8);
  }

  return result;
}

uint64_t type metadata accessor for PencilUnpairEndPoint()
{
  result = qword_10169D848;
  if (!qword_10169D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030B8BC()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x8000000101350D70;
  String.append(_:)(v3);
  v2(&v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

unint64_t sub_10030BAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_u64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_u64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_u64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_u64(v10, v9.u64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_10030BB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_100249260(&qword_1016C9070);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030BDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v41 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v42 = a2;
    v45 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v46 = v9;
    result = sub_10030E62C(v45, &v41 - v10);
    if (v12 == 1)
    {
LABEL_3:
      v14 = v42;
      sub_10030E69C(v11, v42);
      return (*(v46 + 56))(v14, 0, 1, v4);
    }

    v16 = 1;
    v43 = v12;
    v44 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      sub_10030E62C(v45 + *(v46 + 72) * v16, v8);
      v18 = &v8[*(v4 + 40)];
      v20 = *(v18 + 3);
      v19 = *(v18 + 4);
      sub_1000035D0(v18, v20);
      v21 = (*(v19 + 16))(v20, v19);
      v22 = v11;
      v23 = v4;
      v24 = &v22[*(v4 + 40)];
      v25 = *(v24 + 3);
      v26 = *(v24 + 4);
      sub_1000035D0(v24, v25);
      if (v21 == (*(v26 + 16))(v25, v26) || (v27 = *(v18 + 3), v28 = *(v18 + 4), sub_1000035D0(v18, v27), v29 = (*(v28 + 8))(v27, v28), v30 = *(v24 + 3), v31 = *(v24 + 4), sub_1000035D0(v24, v30), v29 == (*(v31 + 8))(v30, v31)))
      {
        v4 = v23;
        v32 = *(v23 + 36);
        v11 = v44;
        v33 = static Date.> infix(_:_:)();
        v34 = v43;
        if (v33)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = *(v18 + 3);
        v36 = *(v18 + 4);
        sub_1000035D0(v18, v35);
        v37 = (*(v36 + 8))(v35, v36);
        v38 = *(v24 + 3);
        v39 = *(v24 + 4);
        sub_1000035D0(v24, v38);
        v40 = (*(v39 + 8))(v38, v39);
        v4 = v23;
        v34 = v43;
        v11 = v44;
        if (v37 < v40)
        {
LABEL_16:
          sub_10000B3A8(v11, &qword_101697DE0, &qword_101393190);
          result = sub_10030E69C(v8, v11);
          goto LABEL_9;
        }
      }

      result = sub_10000B3A8(v8, &qword_101697DE0, &qword_101393190);
LABEL_9:
      ++v16;
      if (v17 == v34)
      {
        goto LABEL_3;
      }
    }
  }

  v15 = *(v9 + 56);

  return v15(a2, 1, 1, v4);
}

uint64_t sub_10030C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeaconEstimatedLocation();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = v9;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    result = sub_100034D9C(v13, &v19 - v10, type metadata accessor for BeaconEstimatedLocation);
    if (v12 == 1)
    {
LABEL_3:
      sub_1000292E8(v11, a2, type metadata accessor for BeaconEstimatedLocation);
      return (*(v20 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_100034D9C(v13 + *(v20 + 72) * v16, v8, type metadata accessor for BeaconEstimatedLocation);
        v18 = *(v4 + 40);
        if (static Date.< infix(_:_:)())
        {
          sub_10030E70C(v11, type metadata accessor for BeaconEstimatedLocation);
          result = sub_1000292E8(v8, v11, type metadata accessor for BeaconEstimatedLocation);
        }

        else
        {
          result = sub_10030E70C(v8, type metadata accessor for BeaconEstimatedLocation);
        }

        ++v16;
        if (v17 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v15 = *(v9 + 56);

    return v15(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030C400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BeaconObservation();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v20 = v9;
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    result = sub_100034D9C(v13, &v19 - v10, type metadata accessor for BeaconObservation);
    if (v12 == 1)
    {
LABEL_3:
      sub_1000292E8(v11, a2, type metadata accessor for BeaconObservation);
      return (*(v20 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_100034D9C(v13 + *(v20 + 72) * v16, v8, type metadata accessor for BeaconObservation);
        v18 = *(v4 + 20);
        if (static Date.< infix(_:_:)())
        {
          sub_10030E70C(v11, type metadata accessor for BeaconObservation);
          result = sub_1000292E8(v8, v11, type metadata accessor for BeaconObservation);
        }

        else
        {
          result = sub_10030E70C(v8, type metadata accessor for BeaconObservation);
        }

        ++v16;
        if (v17 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v15 = *(v9 + 56);

    return v15(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10030C694(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_10030E450(sub_10030E76C);
  a3();
}

uint64_t sub_10030C704@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v86 = a1;
  v87 = a2;
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v78 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v85 = v78 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v78 - v18;
  v20 = __chkstk_darwin(v17);
  v84 = v78 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v78 - v23;
  v25 = __chkstk_darwin(v22);
  v83 = v78 - v26;
  __chkstk_darwin(v25);
  v28 = v78 - v27;
  v29 = sub_10030E450(sub_10030E76C);
  sub_10030BB60(v29, v8);

  v30 = *(v10 + 48);
  if (v30(v8, 1, v9) == 1)
  {
    v6 = v8;
LABEL_5:
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    v33 = v85;
    Date.init()();
    if (qword_101694420 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177A470);
    (*(v10 + 16))(v14, v33, v9);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v14;
      v38 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v38 = 136446466;
      v39 = 0x5779726574746162;
      v40 = 0xEB00000000694669;
      if (v86 != 2)
      {
        v39 = 0x4379726574746162;
        v40 = 0xEB000000006C6C65;
      }

      v41 = 0x6C65437265776F70;
      v42 = 0xE90000000000006CLL;
      if (!v86)
      {
        v41 = 0x4669577265776F70;
        v42 = 0xE900000000000069;
      }

      if (v86 <= 1u)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      if (v86 <= 1u)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      v45 = sub_1000136BC(v43, v44, &v88);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      sub_100249260(&qword_1016969A0);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v10 + 8))(v37, v9);
      v49 = sub_1000136BC(v46, v48, &v88);

      *(v38 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v35, v36, "nextFinderPublishDate: powerMode: %{public}s, now: %{public}s (first publish).", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    return (*(v10 + 32))(v87, v33, v9);
  }

  v81 = v14;
  v82 = v19;
  v31 = *(v10 + 32);
  v31(v28, v8, v9);
  v32 = sub_10030E450(sub_10030E76C);
  sub_1012BAD7C(v32, v6);

  if (v30(v6, 1, v9) == 1)
  {
    (*(v10 + 8))(v28, v9);
    v14 = v81;
    goto LABEL_5;
  }

  v51 = v83;
  v85 = v31;
  v31(v83, v6, v9);
  sub_10030DFC4(v86);
  if (v52 <= 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52;
  }

  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  v55 = v54;
  v81 = *(v10 + 8);
  (v81)(v24, v9);
  v79 = v53;
  v56 = v55 / v53;
  v57 = v84;
  Date.addingTimeInterval(_:)();
  v80 = v28;
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000076D4(v58, qword_10177A470);
  v59 = v82;
  (*(v10 + 16))(v82, v57, v9);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v78[1] = v10 + 32;
    v62 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v62 = 136447234;
    v63 = 0x5779726574746162;
    v64 = 0xEB00000000694669;
    if (v86 != 2)
    {
      v63 = 0x4379726574746162;
      v64 = 0xEB000000006C6C65;
    }

    v65 = 0x6C65437265776F70;
    v66 = 0xE90000000000006CLL;
    if (!v86)
    {
      v65 = 0x4669577265776F70;
      v66 = 0xE900000000000069;
    }

    if (v86 <= 1u)
    {
      v67 = v65;
    }

    else
    {
      v67 = v63;
    }

    if (v86 <= 1u)
    {
      v68 = v66;
    }

    else
    {
      v68 = v64;
    }

    v69 = sub_1000136BC(v67, v68, &v88);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2082;
    sub_100249260(&qword_1016969A0);
    v70 = v82;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = v70;
    v75 = v81;
    (v81)(v74, v9);
    v76 = sub_1000136BC(v71, v73, &v88);

    *(v62 + 14) = v76;
    *(v62 + 22) = 2048;
    *(v62 + 24) = v55;
    *(v62 + 32) = 2048;
    *(v62 + 34) = v79;
    *(v62 + 42) = 2048;
    *(v62 + 44) = v56;
    _os_log_impl(&_mh_execute_header, v60, v61, "nextFinderPublishDate: powerMode, %{public}s, next publish date: %{public}s, remaining time: %f, available publish count: %ld, interval: %f.", v62, 0x34u);
    swift_arrayDestroy();

    (v75)(v51, v9);
    (v75)(v80, v9);
    v57 = v84;
  }

  else
  {

    v77 = v81;
    (v81)(v59, v9);
    (v77)(v51, v9);
    (v77)(v80, v9);
  }

  return (v85)(v87, v57, v9);
}

uint64_t sub_10030D038@<X0>(unsigned int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a1;
  v93 = a4;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v84 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v94 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v91 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v84 - v21;
  v22 = __chkstk_darwin(v20);
  v88 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v84 - v25;
  v27 = __chkstk_darwin(v24);
  v89 = &v84 - v28;
  __chkstk_darwin(v27);
  v30 = &v84 - v29;
  v31 = *(a3 + 24);
  v90 = a2;
  v31(a2, a3);
  v32 = *(v14 + 48);
  if (v32(v12, 1, v13) == 1)
  {
    v10 = v12;
LABEL_5:
    v35 = v13;
    sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
    v36 = v91;
    Date.init()();
    v37 = v94;
    if (qword_101694420 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177A470);
    (*(v14 + 16))(v37, v36, v35);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v41 = 136446466;
      v42 = 0x5779726574746162;
      v43 = 0xEB00000000694669;
      if (v92 != 2)
      {
        v42 = 0x4379726574746162;
        v43 = 0xEB000000006C6C65;
      }

      v44 = 0x6C65437265776F70;
      v45 = 0xE90000000000006CLL;
      if (!v92)
      {
        v44 = 0x4669577265776F70;
        v45 = 0xE900000000000069;
      }

      if (v92 <= 1u)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }

      if (v92 <= 1u)
      {
        v47 = v45;
      }

      else
      {
        v47 = v43;
      }

      v48 = sub_1000136BC(v46, v47, &v95);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2082;
      sub_100249260(&qword_1016969A0);
      v49 = v94;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v14 + 8))(v49, v35);
      v53 = sub_1000136BC(v50, v52, &v95);

      *(v41 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v39, v40, "nextFinderPublishDate: powerMode: %{public}s, now: %{public}s (first publish).", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v37, v35);
    }

    return (*(v14 + 32))(v93, v36, v35);
  }

  v86 = v14;
  v34 = *(v14 + 32);
  v33 = (v14 + 32);
  v85 = v34;
  v34(v30, v12, v13);
  (*(a3 + 8))(v90, a3);
  if (v32(v10, 1, v13) == 1)
  {
    v14 = v86;
    (*(v86 + 8))(v30, v13);
    goto LABEL_5;
  }

  v91 = v33;
  v55 = v85;
  v85(v89, v10, v13);
  v56 = (*(a3 + 72))(v92, v90, a3);
  if (v56 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v94 = v30;
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSince(_:)();
  v59 = v58;
  v60 = v86;
  v90 = *(v86 + 8);
  v90(v26, v13);
  v84 = v57;
  v61 = v59 / v57;
  v62 = v88;
  Date.addingTimeInterval(_:)();
  v63 = v13;
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_1000076D4(v64, qword_10177A470);
  v65 = *(v60 + 16);
  v66 = v87;
  v65(v87, v62, v13);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v69 = 136447234;
    v70 = 0x5779726574746162;
    v71 = 0xEB00000000694669;
    if (v92 != 2)
    {
      v70 = 0x4379726574746162;
      v71 = 0xEB000000006C6C65;
    }

    v72 = 0x6C65437265776F70;
    v73 = 0xE90000000000006CLL;
    if (!v92)
    {
      v72 = 0x4669577265776F70;
      v73 = 0xE900000000000069;
    }

    if (v92 <= 1u)
    {
      v74 = v72;
    }

    else
    {
      v74 = v70;
    }

    if (v92 <= 1u)
    {
      v75 = v73;
    }

    else
    {
      v75 = v71;
    }

    v76 = sub_1000136BC(v74, v75, &v95);

    *(v69 + 4) = v76;
    *(v69 + 12) = 2082;
    sub_100249260(&qword_1016969A0);
    v77 = v87;
    v78 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v79;
    v81 = v90;
    v90(v77, v63);
    v82 = sub_1000136BC(v78, v80, &v95);

    *(v69 + 14) = v82;
    *(v69 + 22) = 2048;
    *(v69 + 24) = v59;
    *(v69 + 32) = 2048;
    *(v69 + 34) = v84;
    *(v69 + 42) = 2048;
    *(v69 + 44) = v61;
    _os_log_impl(&_mh_execute_header, v67, v68, "nextFinderPublishDate: powerMode, %{public}s, next publish date: %{public}s, remaining time: %f, available publish count: %ld, interval: %f.", v69, 0x34u);
    swift_arrayDestroy();

    v81(v89, v63);
    v81(v94, v63);
    return v85(v93, v88, v63);
  }

  else
  {

    v83 = v90;
    v90(v66, v13);
    v83(v89, v13);
    v83(v94, v13);
    return v55(v93, v62, v13);
  }
}

uint64_t sub_10030D994@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

double sub_10030DB90(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v3 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010743A0(v8);
    }

    else
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v5 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_1010743AC(v8);
    }
  }

  else if (a1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v4 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074394(v8);
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v1 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074388(v8);
  }

  v6 = v2;

  return v6;
}

void sub_10030DD9C(unsigned __int8 a1)
{
  v2 = sub_100052278();
  v3 = 0.0;
  v4 = 0.0;
  if (*(v2 + 16))
  {
    v5 = sub_100771D58(0x4669577265776F70, 0xE900000000000069);
    if (v6)
    {
      v4 = *(*(*(v2 + 56) + 8 * v5) + 16);
    }
  }

  v7 = v4 / sub_10030DB90(0);
  if (*(v2 + 16))
  {
    v8 = sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
    if (v9)
    {
      v3 = *(*(*(v2 + 56) + 8 * v8) + 16);
    }
  }

  v10 = v7 + v3 / sub_10030DB90(1u);
  v11 = 0.0;
  if (*(v2 + 16))
  {
    v12 = sub_100771D58(0x5779726574746162, 0xEB00000000694669);
    if (v13)
    {
      v11 = *(*(*(v2 + 56) + 8 * v12) + 16);
    }
  }

  v14 = v10 + v11 / sub_10030DB90(2u);
  if (*(v2 + 16) && (v15 = sub_100771D58(0x4379726574746162, 0xEB000000006C6C65), (v16 & 1) != 0))
  {
    v17 = *(*(v2 + 56) + 8 * v15);

    v18 = *(v17 + 16);

    v19 = v18;
  }

  else
  {

    v19 = 0.0;
  }

  v20 = 24.0 - (v14 + v19 / sub_10030DB90(3u));
  v21 = sub_10030DB90(a1) * v20;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
  }
}

void sub_10030DFC4(unsigned __int8 a1)
{
  v2 = sub_100052278();
  v3 = 0.0;
  if (*(v2 + 16))
  {
    v4 = sub_100771D58(0x4669577265776F70, 0xE900000000000069);
    if (v5)
    {
      v3 = *(*(*(v2 + 56) + 8 * v4) + 16);
    }
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v7 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074388(v34);
  v9 = v8;

  v10 = 0.0;
  v11 = 0.0;
  v12 = v3 / v9;
  if (*(v2 + 16))
  {
    v13 = sub_100771D58(0x6C65437265776F70, 0xE90000000000006CLL);
    if (v14)
    {
      v11 = *(*(*(v2 + 56) + 8 * v13) + 16);
    }
  }

  v15 = *(v6 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074394(v34);
  v17 = v16;

  v18 = v12 + v11 / v17;
  if (*(v2 + 16))
  {
    v19 = sub_100771D58(0x5779726574746162, 0xEB00000000694669);
    if (v20)
    {
      v10 = *(*(*(v2 + 56) + 8 * v19) + 16);
    }
  }

  v21 = *(v6 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743A0(v34);
  v23 = v22;

  v24 = v18 + v10 / v23;
  if (*(v2 + 16) && (v25 = sub_100771D58(0x4379726574746162, 0xEB000000006C6C65), (v26 & 1) != 0))
  {
    v27 = *(*(v2 + 56) + 8 * v25);

    v28 = *(v27 + 16);

    v29 = v28;
  }

  else
  {

    v29 = 0.0;
  }

  v30 = *(v6 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010743AC(v34);
  v32 = v31;

  v33 = sub_10030DB90(a1) * (24.0 - (v24 + v29 / v32));
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
  }
}

unint64_t sub_10030E308()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1000BC4D4(&qword_10169D880, qword_10139BF48);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000B3A8(v7, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_100907BD8(_swiftEmptyArrayStorage);
}

uint64_t sub_10030E450(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v6)
  {
LABEL_10:
    v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v13 = *(*(v2 + 56) + v12);
    v14 = *(v13 + 16);
    v15 = v10[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_24;
    }

    v17 = *(*(v2 + 56) + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v16 > v10[3] >> 1)
    {
      if (v15 <= v16)
      {
        v19 = v15 + v14;
      }

      else
      {
        v19 = v15;
      }

      v10 = sub_100A5B6F8(isUniquelyReferenced_nonNull_native, v19, 1, v10);
    }

    v6 &= v6 - 1;
    if (*(v13 + 16))
    {
      v20 = (v10[3] >> 1) - v10[2];
      result = type metadata accessor for Date();
      v21 = *(result - 8);
      if (v20 < v14)
      {
        goto LABEL_26;
      }

      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = *(v21 + 72);
      swift_arrayInitWithCopy();

      if (v14)
      {
        v24 = v10[2];
        v25 = __OFADD__(v24, v14);
        v26 = v24 + v14;
        if (v25)
        {
          goto LABEL_27;
        }

        v10[2] = v26;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10030E62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030E69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030E70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

ValueMetadata *sub_10030E774(char a1)
{
  switch(a1)
  {
    case 7:
      v1 = &type metadata for AccessorySetMaxConnectionsPayload;
      sub_100310214();
      break;
    case 9:
      v1 = &type metadata for AccessoryKeyrollIndicationPayload;
      sub_10030FF20();
      break;
    case 10:
      v1 = &type metadata for AccessoryCommandResponsePayload;
      sub_1003101C0();
      break;
    case 11:
      v1 = &type metadata for AccessoryMultistatusResponsePayload;
      sub_10030FECC();
      break;
    case 13:
      v1 = &type metadata for AccessoryLatchSeparatedKeyResponsePayload;
      sub_10030FFC8();
      break;
    case 14:
      v1 = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
      sub_10031016C();
      break;
    case 17:
      v1 = &type metadata for AccessoryTXPowerResponsePayload;
      sub_100310118();
      break;
    case 20:
      v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
      sub_1003100C4();
      break;
    case 21:
      v1 = &type metadata for AccessoryKeyAlignmentConfigPayload;
      sub_100310070();
      break;
    case 22:
      v1 = &type metadata for AccessoryKeyAlignmentConfigResponsePayload;
      sub_10031001C();
      break;
    default:
      v1 = &type metadata for AccessoryGenericPayload;
      sub_10030FF74();
      break;
  }

  return v1;
}

unint64_t sub_10030E868(char a1)
{
  result = 0x7453646E756F732ELL;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x726961706E752ELL;
      break;
    case 5:
    case 20:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD000000000000014;
      break;
    case 7:
    case 9:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x4354557465732ELL;
      break;
    case 10:
    case 18:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6F43646E756F732ELL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0x585468637465662ELL;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 19:
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10030EAD0()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = (v2 >> 58) & 0xC | (v1 >> 60) & 3;
  if (v3 <= 4)
  {
    if (v3 == 3)
    {
      v6 = 17;
    }

    else
    {
      v6 = 20;
    }

    if (v3 == 2)
    {
      v7 = 14;
    }

    else
    {
      v7 = v6;
    }

    if (v3)
    {
      v8 = 10;
    }

    else
    {
      v8 = 7;
    }

    if (v3 <= 1)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else if (v3 > 7)
  {
    if (v3 == 8)
    {
      return 11;
    }

    else if (v3 == 9)
    {
      return 13;
    }

    else
    {
      v9 = *v0;
      v10 = v0[5];
      if (v10 || v2 != 0x2000000000000000 || v1 != 0x2000000000000000 || v0[2] | v0[3] | v9)
      {
        if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 1 && *(v0 + 1) == 0)
        {
          return 1;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 2 && *(v0 + 1) == 0)
        {
          return 4;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 3 && *(v0 + 1) == 0)
        {
          return 12;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 4 && *(v0 + 1) == 0)
        {
          return 15;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 5 && *(v0 + 1) == 0)
        {
          return 16;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 6 && *(v0 + 1) == 0)
        {
          return 18;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 7 && *(v0 + 1) == 0)
        {
          return 19;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 8 && *(v0 + 1) == 0)
        {
          return 2;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 9 && *(v0 + 1) == 0)
        {
          return 3;
        }

        else if (!v10 && v2 == 0x2000000000000000 && v1 == 0x2000000000000000 && v9 == 10 && *(v0 + 1) == 0)
        {
          return 5;
        }

        else if (*(v0 + 1) == 0 && v9 == 11 && v1 == 0x2000000000000000 && v2 == 0x2000000000000000 && v10 == 0)
        {
          return 6;
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 == 6)
    {
      v4 = 22;
    }

    else
    {
      v4 = 9;
    }

    if (v3 == 5)
    {
      return 21;
    }

    else
    {
      return v4;
    }
  }
}

unint64_t sub_10030ED88@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = (v7 >> 58) & 0xC | (v3 >> 60) & 3;
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v18 = v3 & 0xCFFFFFFFFFFFFFFFLL;
        *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
        *(a1 + 32) = sub_1003101C0();
        v19 = swift_allocObject();
        *a1 = v19;
        v19[2] = v4;
        v19[3] = v18;
        v19[4] = v6;
        v19[5] = v5;
        sub_100017D5C(v4, v18);
        v16 = v6;
        v17 = v5;
        goto LABEL_24;
      }

      *(a1 + 24) = &type metadata for AccessorySetMaxConnectionsPayload;
      result = sub_100310214();
    }

    else
    {
      if (v8 == 2)
      {
        *(a1 + 24) = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
        result = sub_10031016C();
        *(a1 + 32) = result;
        *a1 = v4;
        return result;
      }

      if (v8 != 3)
      {
        *(a1 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        result = sub_1003100C4();
        *(a1 + 32) = result;
        *a1 = v4;
        *(a1 + 2) = BYTE2(v4);
        *(a1 + 3) = BYTE3(v4);
        return result;
      }

      *(a1 + 24) = &type metadata for AccessoryTXPowerResponsePayload;
      result = sub_100310118();
    }

LABEL_18:
    *(a1 + 32) = result;
    *a1 = v4;
    return result;
  }

  v9 = v1[5];
  if (v8 > 7)
  {
    if (v8 != 8)
    {
      if (v8 != 9)
      {
        *(a1 + 24) = &type metadata for AccessoryGenericPayload;
        result = sub_10030FF74();
        *(a1 + 32) = result;
        return result;
      }

      v10 = v3 & 0xCFFFFFFFFFFFFFFFLL;
      *(a1 + 24) = &type metadata for AccessoryLatchSeparatedKeyResponsePayload;
      v13 = sub_10030FFC8();
      goto LABEL_22;
    }

    *(a1 + 24) = &type metadata for AccessoryMultistatusResponsePayload;
    result = sub_10030FECC();
    goto LABEL_18;
  }

  v10 = v3 & 0xCFFFFFFFFFFFFFFFLL;
  if (v8 != 5)
  {
    if (v8 == 6)
    {
      *(a1 + 24) = &type metadata for AccessoryKeyAlignmentConfigResponsePayload;
      *(a1 + 32) = sub_10031001C();
      v11 = swift_allocObject();
      *a1 = v11;
      *(v11 + 16) = v4;
      *(v11 + 24) = v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v5;
LABEL_23:
      v16 = v4;
      v17 = v10;
      goto LABEL_24;
    }

    *(a1 + 24) = &type metadata for AccessoryKeyrollIndicationPayload;
    v13 = sub_10030FF20();
LABEL_22:
    *(a1 + 32) = v13;
    *a1 = v4;
    *(a1 + 8) = v10;
    goto LABEL_23;
  }

  v14 = v7 & 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = &type metadata for AccessoryKeyAlignmentConfigPayload;
  *(a1 + 32) = sub_100310070();
  v15 = swift_allocObject();
  *a1 = v15;
  v15[2] = v4;
  v15[3] = v10;
  v15[4] = v6;
  v15[5] = v5;
  v15[6] = v14;
  v15[7] = v9;
  sub_100017D5C(v4, v10);
  v16 = v5;
  v17 = v14;
LABEL_24:

  return sub_100017D5C(v16, v17);
}

uint64_t sub_10030F1C0(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = sub_10030EAD0();
  LOWORD(v22) = word_10139C4A6[v9];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  LOWORD(v22) = v18;
  sub_10015049C(v25, v26);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    switch(v9)
    {
      case 7u:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v18) = v22;
        sub_10015049C(v25, v26);
        sub_10030FE78();
        goto LABEL_27;
      case 9u:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v11 = v22;
        v12 = v23;
        v18 = v22;
        *&v19 = v23;
        sub_10015049C(v25, v26);
        sub_10030FE24();
        goto LABEL_21;
      case 0xAu:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v10 = v22;
        v11 = *(&v23 + 1);
        v13 = v23;
        v12 = v24;
        v18 = v22;
        v19 = v23;
        v20 = v24;
        sub_10015049C(v25, v26);
        sub_10030FDD0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v10, v13);
        goto LABEL_22;
      case 0xBu:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v18) = v22;
        sub_10015049C(v25, v26);
        sub_10030FD7C();
        goto LABEL_27;
      case 0xDu:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v11 = v22;
        v12 = v23;
        v18 = v22;
        *&v19 = v23;
        sub_10015049C(v25, v26);
        sub_10030FD28();
        goto LABEL_21;
      case 0xEu:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LODWORD(v18) = v22;
        sub_10015049C(v25, v26);
        sub_10030FCD4();
        goto LABEL_27;
      case 0x11u:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LOBYTE(v18) = v22;
        sub_10015049C(v25, v26);
        sub_10030FC80();
        goto LABEL_27;
      case 0x14u:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        LODWORD(v18) = v22;
        sub_10015049C(v25, v26);
        sub_10030FC2C();
        goto LABEL_27;
      case 0x15u:
        sub_10030ED88(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v14 = v18;
        v11 = v20;
        v12 = v21;
        v17 = v19;
        sub_10015049C(v25, v26);
        sub_10030FBD8();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v14, v17);
        goto LABEL_22;
      case 0x16u:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_28;
        }

        v11 = v22;
        v12 = v23;
        v18 = v22;
        *&v19 = v23;
        BYTE8(v19) = BYTE8(v23);
        v20 = v24;
        sub_10015049C(v25, v26);
        sub_1002470E0();
LABEL_21:
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
LABEL_22:
        sub_100016590(v11, v12);
        break;
      default:
        sub_10030ED88(&v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v25, v26);
          sub_10030FB84();
LABEL_27:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_28:
          sub_10030FB30();
          swift_allocError();
          *v15 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v25);
}

double sub_10030F948@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100310BDC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_10030F9A4(__int16 a1)
{
  if ((a1 - 512) > 0x2Cu)
  {
    return 23;
  }

  else
  {
    return byte_10139C4D4[(a1 - 512)];
  }
}

uint64_t sub_10030F9D0(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_10030F9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 6 && *(a1 + 48))
  {
    return (*a1 + 6);
  }

  v3 = ((*(a1 + 32) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3) ^ 0xF;
  if (v3 >= 5)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10030FA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 5)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 6;
    if (a3 >= 6)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 6)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-a2 << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

uint64_t sub_10030FABC(uint64_t result)
{
  v1 = *(result + 32) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 32) = v1;
  return result;
}

void *sub_10030FAD8(void *result, unsigned int a2)
{
  if (a2 < 0xA)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 2) & 3) << 60);
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    result[4] = v2;
  }

  else
  {
    *result = a2 - 10;
    result[1] = 0x2000000000000000;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_10139BF70;
  }

  return result;
}

unint64_t sub_10030FB30()
{
  result = qword_10169D888;
  if (!qword_10169D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D888);
  }

  return result;
}

unint64_t sub_10030FB84()
{
  result = qword_10169D890;
  if (!qword_10169D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D890);
  }

  return result;
}

unint64_t sub_10030FBD8()
{
  result = qword_10169D898;
  if (!qword_10169D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D898);
  }

  return result;
}

unint64_t sub_10030FC2C()
{
  result = qword_10169D8A0;
  if (!qword_10169D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8A0);
  }

  return result;
}

unint64_t sub_10030FC80()
{
  result = qword_10169D8A8;
  if (!qword_10169D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8A8);
  }

  return result;
}

unint64_t sub_10030FCD4()
{
  result = qword_10169D8B0;
  if (!qword_10169D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8B0);
  }

  return result;
}

unint64_t sub_10030FD28()
{
  result = qword_10169D8B8;
  if (!qword_10169D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8B8);
  }

  return result;
}

unint64_t sub_10030FD7C()
{
  result = qword_10169D8C0;
  if (!qword_10169D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8C0);
  }

  return result;
}

unint64_t sub_10030FDD0()
{
  result = qword_10169D8C8;
  if (!qword_10169D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8C8);
  }

  return result;
}

unint64_t sub_10030FE24()
{
  result = qword_10169D8D0;
  if (!qword_10169D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8D0);
  }

  return result;
}

unint64_t sub_10030FE78()
{
  result = qword_10169D8D8;
  if (!qword_10169D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8D8);
  }

  return result;
}

unint64_t sub_10030FECC()
{
  result = qword_10169D8E0;
  if (!qword_10169D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8E0);
  }

  return result;
}

unint64_t sub_10030FF20()
{
  result = qword_10169D8E8;
  if (!qword_10169D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8E8);
  }

  return result;
}

unint64_t sub_10030FF74()
{
  result = qword_10169D8F0;
  if (!qword_10169D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8F0);
  }

  return result;
}

unint64_t sub_10030FFC8()
{
  result = qword_10169D8F8;
  if (!qword_10169D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D8F8);
  }

  return result;
}

unint64_t sub_10031001C()
{
  result = qword_10169D900;
  if (!qword_10169D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D900);
  }

  return result;
}

unint64_t sub_100310070()
{
  result = qword_10169D908;
  if (!qword_10169D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D908);
  }

  return result;
}

unint64_t sub_1003100C4()
{
  result = qword_10169D910;
  if (!qword_10169D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D910);
  }

  return result;
}

unint64_t sub_100310118()
{
  result = qword_10169D918;
  if (!qword_10169D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D918);
  }

  return result;
}

unint64_t sub_10031016C()
{
  result = qword_10169D920;
  if (!qword_10169D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D920);
  }

  return result;
}

unint64_t sub_1003101C0()
{
  result = qword_10169D928;
  if (!qword_10169D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D928);
  }

  return result;
}

unint64_t sub_100310214()
{
  result = qword_10169D930;
  if (!qword_10169D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D930);
  }

  return result;
}

uint64_t sub_100310268@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10030E774(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    switch(a1)
    {
      case 1:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 1;
        goto LABEL_49;
      case 2:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 8;
        goto LABEL_49;
      case 3:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 9;
        goto LABEL_49;
      case 4:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 2;
        goto LABEL_49;
      case 5:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 10;
        goto LABEL_49;
      case 6:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 11;
        goto LABEL_49;
      case 7:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        goto LABEL_50;
      case 8:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 12;
        goto LABEL_49;
      case 9:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v14 = v21;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v14 | 0x3000000000000000;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      case 10:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v16 = v21;
        v9 = v22;
        v10 = v23;
        result = sub_100007BAC(a2);
        v13 = 0;
        v11 = 0;
        v12 = v16 | 0x1000000000000000;
        goto LABEL_50;
      case 11:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_49;
      case 12:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 3;
        goto LABEL_49;
      case 13:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v15 = v21;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v15 | 0x1000000000000000;
        goto LABEL_49;
      case 14:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        goto LABEL_50;
      case 15:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 4;
        goto LABEL_49;
      case 16:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 5;
        goto LABEL_49;
      case 17:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v13 = 0;
        v11 = 0;
        v12 = 0x3000000000000000;
        goto LABEL_50;
      case 18:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 6;
        goto LABEL_49;
      case 19:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0x2000000000000000;
        v8 = 7;
        goto LABEL_49;
      case 20:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        result = sub_100007BAC(a2);
        v12 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      case 21:
        sub_10001F280(a2, &v20);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v19[0];
        v9 = v19[2];
        v10 = v19[3];
        v11 = v19[5];
        result = sub_100007BAC(a2);
        v12 = v19[1] | 0x1000000000000000;
        v13 = v19[4] | 0x1000000000000000;
        goto LABEL_50;
      case 22:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_51;
        }

        v8 = v20;
        v17 = v21;
        v9 = v22;
        v10 = v23;
        result = sub_100007BAC(a2);
        v11 = 0;
        v12 = v17 | 0x2000000000000000;
        v13 = 0x1000000000000000;
        goto LABEL_50;
      default:
        sub_10001F280(a2, v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0x2000000000000000;
LABEL_49:
          v13 = 0x2000000000000000;
LABEL_50:
          *a3 = v8;
          a3[1] = v12;
          a3[2] = v9;
          a3[3] = v10;
          a3[4] = v13;
          a3[5] = v11;
        }

        else
        {
LABEL_51:
          sub_10030FB30();
          swift_allocError();
          *v18 = 0;
          swift_willThrow();
          result = sub_100007BAC(a2);
        }

        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100310BDC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v24, v24[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v10 = v21;
    v26 = v22[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v11 = sub_10030F9A4(v23[0]);
    if (v11 != 23)
    {
      v13 = v11;
      v14 = sub_10030E774(v11);
      v16 = v15;
      sub_10001F280(a1, v22);
      v23[3] = v14;
      v23[4] = v16;
      sub_1000280DC(v23);
      v17 = *(v16 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v23, v22);
      sub_100310268(v13, v22, v25);
      sub_100007BAC(v23);
      sub_100007BAC(v24);
      result = sub_100007BAC(a1);
      v19 = v25[1];
      *v10 = v25[0];
      v10[1] = v19;
      v10[2] = v25[2];
      return result;
    }

    sub_10030FB30();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v24);
  return sub_100007BAC(a1);
}

unint64_t sub_100310E78()
{
  result = qword_10169D938;
  if (!qword_10169D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D938);
  }

  return result;
}

void sub_100310ECC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for PeerCommunicationIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v79 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v64 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x65655072656E774FLL && v15 == 0xEE00747375725472)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      sub_100312F10();
      swift_allocError();
      *v26 = 0;
      goto LABEL_16;
    }
  }

  v17 = [a1 recordID];
  v18 = [v17 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v76 = *(v11 + 32);
    v76(v14, v9, v10);
    v20 = [a1 encryptedValues];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 objectForKeyedSubscript:v21];

    if (v22)
    {
      v80 = v22;
      v23 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
      if (swift_dynamicCast())
      {
        if (!v82)
        {
          v75 = v23;
          v74 = 0;
LABEL_20:
          v27 = String._bridgeToObjectiveC()();
          v28 = [v20 objectForKeyedSubscript:v27];

          if (v28)
          {
            v82 = v28;
            if (swift_dynamicCast())
            {
              v29 = v81;
              v73 = v80;
              v30 = type metadata accessor for PropertyListDecoder();
              v31 = *(v30 + 48);
              v32 = *(v30 + 52);
              swift_allocObject();
              PropertyListDecoder.init()();
              sub_1003139D0(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier);
              v33 = v78;
              v72 = v29;
              dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
              if (v33)
              {
                (*(v11 + 8))(v14, v10);

                sub_100016590(v73, v72);
                swift_unknownObjectRelease();
                goto LABEL_17;
              }

              v34 = String._bridgeToObjectiveC()();
              v35 = [v20 objectForKeyedSubscript:v34];

              v36 = v72;
              if (!v35 || (v82 = v35, (swift_dynamicCast() & 1) == 0))
              {
                sub_100312F10();
                swift_allocError();
                *v44 = 4;
                swift_willThrow();
                sub_100016590(v73, v36);
                swift_unknownObjectRelease();

                v45 = v79;
LABEL_36:
                sub_10031317C(v45, type metadata accessor for PeerCommunicationIdentifier);
                goto LABEL_14;
              }

              v71 = v80;
              v78 = v81;
              v37 = String._bridgeToObjectiveC()();
              v38 = [v20 objectForKeyedSubscript:v37];

              if (v38)
              {
                v82 = v38;
                v39 = swift_dynamicCast();
                v40 = v72;
                if ((v39 & 1) == 0)
                {

                  v43 = v79;
                  goto LABEL_34;
                }

                v42 = v80;
                v41 = v81;
                sub_100017D5C(v80, v81);
                sub_1004A4740(v42, v41);
                if (v81 >> 60 != 15)
                {
                  v67 = v42;
                  v68 = v41;
                  v69 = v80;
                  v70 = v81;
                  v47 = String._bridgeToObjectiveC()();
                  v48 = [v20 objectForKeyedSubscript:v47];

                  if (v48)
                  {
                    v80 = v48;
                    v49 = swift_dynamicCast();
                    v50 = v72;
                    if (v49)
                    {
                      v75 = v82;
                      if (v82 < 3)
                      {
                        v66 = objc_autoreleasePoolPush();
                        v51 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                        [a1 encodeSystemFieldsWithCoder:v51];
                        [v51 finishEncoding];
                        v52 = v50;
                        v53 = [v51 encodedData];
                        v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                        v64 = v55;
                        v65 = v54;

                        objc_autoreleasePoolPop(v66);
                        sub_100016590(v73, v52);
                        sub_100016590(v67, v68);
                        swift_unknownObjectRelease();

                        v56 = v77;
                        v57 = v64;
                        *v77 = v65;
                        v56[1] = v57;
                        v58 = type metadata accessor for OwnerPeerTrust();
                        v76(v56 + v58[5], v14, v10);
                        *(v56 + v58[6]) = v74;
                        sub_100312F64(v79, v56 + v58[7]);
                        v59 = (v56 + v58[8]);
                        v60 = v78;
                        *v59 = v71;
                        v59[1] = v60;
                        v61 = (v56 + v58[9]);
                        v62 = v70;
                        *v61 = v69;
                        v61[1] = v62;
                        *(v56 + v58[10]) = v75;
                        return;
                      }
                    }

                    v43 = v79;
                  }

                  else
                  {

                    v43 = v79;
                    v50 = v72;
                  }

                  sub_100312F10();
                  swift_allocError();
                  *v63 = 6;
                  swift_willThrow();
                  sub_100016590(v73, v50);
                  sub_100006654(v69, v70);
                  swift_unknownObjectRelease();

                  sub_100016590(v67, v68);
                  goto LABEL_35;
                }

                sub_100016590(v42, v41);
              }

              v43 = v79;
              v40 = v72;
LABEL_34:
              sub_100312F10();
              swift_allocError();
              *v46 = 5;
              swift_willThrow();
              sub_100016590(v73, v40);
              swift_unknownObjectRelease();

LABEL_35:
              v45 = v43;
              goto LABEL_36;
            }
          }

          sub_100312F10();
          swift_allocError();
          v25 = 3;
LABEL_13:
          *v24 = v25;
          swift_willThrow();
          swift_unknownObjectRelease();

LABEL_14:
          (*(v11 + 8))(v14, v10);
          return;
        }

        if (v82 == 1)
        {
          v75 = v23;
          v74 = 1;
          goto LABEL_20;
        }
      }
    }

    sub_100312F10();
    swift_allocError();
    v25 = 2;
    goto LABEL_13;
  }

  sub_1002EA198(v9);
  sub_100312F10();
  swift_allocError();
  *v19 = 1;
LABEL_16:
  swift_willThrow();
LABEL_17:
}

void sub_100311870()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = IDSCopyIDForEmailAddress();

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    byte_10177A8E8 = 0;
    qword_10177A8F0 = v2;
    qword_10177A8F8 = v4;
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1003118F4()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for OwnerPeerTrust();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v4[6]));
  v6 = v1 + v4[7];
  sub_10098A0BC();
  v7 = (v1 + v4[8]);
  v8 = *v7;
  v9 = v7[1];
  String.hash(into:)();
  v10 = (v1 + v4[9]);
  v11 = *v10;
  v12 = v10[1];
  sub_100017D5C(*v10, v12);
  Data.hash(into:)();
  sub_100016590(v11, v12);
  Hasher._combine(_:)(*(v1 + v4[10]));
  return Hasher._finalize()();
}

uint64_t sub_100311A20()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_10177A900);
  sub_1000076D4(v0, qword_10177A900);
  return UUID.init(uuid:)();
}

unint64_t sub_100311A98()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696669746E656469;
    if (v1 != 1)
    {
      v5 = 1701869940;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x6574617473;
    }

    v3 = 0xD000000000000011;
    if (v1 == 3)
    {
      v3 = 0xD000000000000018;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100311B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100313728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100311BB0(uint64_t a1)
{
  v2 = sub_100312FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100311BEC(uint64_t a1)
{
  v2 = sub_100312FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100311C2C(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[6]));
  v8 = v4 + a2[7];
  sub_10098A0BC();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();
  sub_100016590(v13, v14);
  Hasher._combine(_:)(*(v4 + a2[10]));
}

Swift::Int sub_100311D3C(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_1003139D0(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + a2[6]));
  v8 = v4 + a2[7];
  sub_10098A0BC();
  v9 = (v4 + a2[8]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v4 + a2[9]);
  v13 = *v12;
  v14 = v12[1];
  sub_100017D5C(*v12, v14);
  Data.hash(into:)();
  sub_100016590(v13, v14);
  Hasher._combine(_:)(*(v4 + a2[10]));
  return Hasher._finalize()();
}

uint64_t *sub_100311E60@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100311F28()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177A918);
  sub_1000076D4(v0, qword_10177A918);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10031208C(id *a1)
{
  v2 = *a1;
  [*a1 encryptedValues];
  swift_getObjectType();
  static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = v2;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = type metadata accessor for OwnerPeerTrust();
  v16 = *(v1 + v9[6]);
  CKRecordKeyValueSetting.subscript.setter();
  v10 = type metadata accessor for PropertyListEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v13 = v9[7];
  type metadata accessor for PeerCommunicationIdentifier();
  sub_1003139D0(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();
  v14 = (v1 + v9[8]);
  v17 = *v14;
  v19 = v14[1];

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v1 + v9[9]), *(v1 + v9[9] + 8));
  CKRecordKeyValueSetting.subscript.setter();
  v18 = *(v1 + v9[10]);
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_100312404(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_10169D9A8, &qword_10139C598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100312FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v22 = 0;
  sub_100017D5C(v23, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v23, v24);
  }

  else
  {
    sub_100016590(v23, v24);
    v12 = type metadata accessor for OwnerPeerTrust();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    type metadata accessor for UUID();
    sub_1003139D0(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[6]);
    v22 = 2;
    sub_1003131DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[7];
    LOBYTE(v23) = 3;
    type metadata accessor for PeerCommunicationIdentifier();
    sub_1003139D0(&qword_10169D978, type metadata accessor for PeerCommunicationIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v12[9]);
    v19 = v18[1];
    v23 = *v18;
    v24 = v19;
    v22 = 5;
    sub_100017D5C(v23, v19);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v23, v24);
    LOBYTE(v23) = *(v3 + v12[10]);
    v22 = 6;
    sub_100313284();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100312770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for PeerCommunicationIdentifier();
  v3 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169D980, &qword_10139C590);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  __chkstk_darwin(v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for OwnerPeerTrust();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v36 = a1;
  sub_1000035D0(a1, v18);
  sub_100312FC8();
  v34 = v13;
  v20 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100007BAC(v36);
  }

  v35 = v5;
  v21 = v31;
  v38 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v37;
  LOBYTE(v37) = 1;
  sub_1003139D0(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28[1] = v6;
  (*(v21 + 32))(&v17[v14[5]], v9, v6);
  v38 = 2;
  sub_10031301C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17[v14[6]] = v37;
  LOBYTE(v37) = 3;
  sub_1003139D0(&qword_10169D970, type metadata accessor for PeerCommunicationIdentifier);
  v22 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v32;
  sub_100312F64(v22, v14[7]);
  LOBYTE(v37) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v14[8];
  *v25 = v24;
  v25[1] = v26;
  v38 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v14[9] = v37;
  v38 = 6;
  sub_1003130C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v34, v33);
  *v14[10] = v37;
  sub_100313118(0, v29);
  sub_100007BAC(v36);
  return sub_10031317C(0, type metadata accessor for OwnerPeerTrust);
}

uint64_t sub_100312DE8(uint64_t a1)
{
  *(a1 + 8) = sub_1003139D0(&qword_10169D940, type metadata accessor for OwnerPeerTrust);
  result = sub_1003139D0(&qword_10169D948, type metadata accessor for OwnerPeerTrust);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for OwnerPeerTrust()
{
  result = qword_10169DA20;
  if (!qword_10169DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100312EB8(uint64_t a1)
{
  result = sub_1003139D0(&unk_10169D950, type metadata accessor for OwnerPeerTrust);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100312F10()
{
  result = qword_10169D960;
  if (!qword_10169D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D960);
  }

  return result;
}

uint64_t sub_100312F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCommunicationIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100312FC8()
{
  result = qword_10169D988;
  if (!qword_10169D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D988);
  }

  return result;
}

unint64_t sub_10031301C()
{
  result = qword_10169D990;
  if (!qword_10169D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D990);
  }

  return result;
}

unint64_t sub_100313070()
{
  result = qword_1016BB0D0;
  if (!qword_1016BB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB0D0);
  }

  return result;
}

unint64_t sub_1003130C4()
{
  result = qword_10169D9A0;
  if (!qword_10169D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9A0);
  }

  return result;
}

uint64_t sub_100313118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerPeerTrust();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031317C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003131DC()
{
  result = qword_10169D9B0;
  if (!qword_10169D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9B0);
  }

  return result;
}

unint64_t sub_100313230()
{
  result = qword_1016BDAE0;
  if (!qword_1016BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDAE0);
  }

  return result;
}

unint64_t sub_100313284()
{
  result = qword_10169D9C0;
  if (!qword_10169D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169D9C0);
  }

  return result;
}

BOOL sub_1003132D8(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OwnerPeerTrust();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || (sub_10098BFC0(a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[9];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *v14;
  v16 = v14[1];
  sub_100017D5C(v12, v13);
  sub_100017D5C(v15, v16);
  v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13, v15, v16);
  sub_100016590(v15, v16);
  sub_100016590(v12, v13);
  return (v17 & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]);
}

uint64_t sub_100313470()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PeerCommunicationIdentifier();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100313574()
{
  result = qword_10169DA78;
  if (!qword_10169DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA78);
  }

  return result;
}

unint64_t sub_1003135CC()
{
  result = qword_10169DA80;
  if (!qword_10169DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA80);
  }

  return result;
}

unint64_t sub_100313624()
{
  result = qword_10169DA88;
  if (!qword_10169DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA88);
  }

  return result;
}

unint64_t sub_10031367C()
{
  result = qword_10169DA90;
  if (!qword_10169DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA90);
  }

  return result;
}

unint64_t sub_1003136D4()
{
  result = qword_10169DA98;
  if (!qword_10169DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DA98);
  }

  return result;
}

uint64_t sub_100313728(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101351010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101351050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_10031397C()
{
  result = qword_10169DAA0;
  if (!qword_10169DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAA0);
  }

  return result;
}

uint64_t sub_1003139D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100313A28(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_15;
    }

    v11 = v11;
LABEL_10:
    if (v11 >= -1)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_11:
  Data.subdata(in:)();
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_100313B54(uint64_t result, unint64_t a2)
{
  v2 = BYTE6(a2);
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return Data.subdata(in:)();
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v4 = v5 - v6;
    if (__OFSUB__(v5, v6))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    result = v4 / 2;
LABEL_9:
    if (v4 >= result)
    {
      return Data.subdata(in:)();
    }

    __break(1u);
    goto LABEL_13;
  }

  if (!v3)
  {
    v4 = BYTE6(a2);
    result = v2 >> 1;
    goto LABEL_9;
  }

  v7 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v4 = v7;
    result = (v7 + (v7 >> 31)) >> 1;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100313BD8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v10 & 1) == 0 && v9 < 0)
  {
    return 0;
  }

  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (v8)
  {
    result = 0;
  }

  else
  {
    result = v7;
  }

  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100313D58(uint64_t a1, unint64_t a2)
{
  v24 = type metadata accessor for UUID();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Endianness();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v10._countAndFlagsBits = 0x49726F646E65763CLL;
  v10._object = 0xEB00000000203A64;
  String.append(_:)(v10);
  *&v26 = sub_100313A28(a1, a2);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0xEC000000203A6449;
  v12._countAndFlagsBits = 0x746375646F727020;
  String.append(_:)(v12);
  sub_100313B54(a1, a2);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  v13 = v26;
  if (BYTE4(v26))
  {
    v13 = 0;
  }

  *&v26 = v13;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x756C615677617220;
  v15._object = 0xEB00000000203A65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = Data.hexString.getter();
  String.append(_:)(v16);

  v17._object = 0xEE00203A44495555;
  v17._countAndFlagsBits = 0x746375646F727020;
  String.append(_:)(v17);
  if (qword_101694570 != -1)
  {
    swift_once();
  }

  v26 = xmmword_10169DAA8;
  sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
  Data.append(_:)();
  v18 = v26;
  v25 = v26;
  sub_100017D5C(v26, *(&v26 + 1));
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v18, *(&v18 + 1));
  sub_100016590(v18, *(&v18 + 1));
  sub_1002FFBAC();
  v19 = v24;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  (*(v4 + 8))(v7, v19);
  v21._countAndFlagsBits = 62;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  return v27;
}

uint64_t sub_1003140C8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_10169DAE8, &qword_10139CAA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100314A74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100314230(uint64_t a1)
{
  v2 = sub_100314A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031426C(uint64_t a1)
{
  v2 = sub_100314A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003142A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100314594(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_1003142D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100314900(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10031432C()
{
  result = qword_10169DAD0;
  if (!qword_10169DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAD0);
  }

  return result;
}

uint64_t sub_100314380()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuid:)();
  v5 = UUID.data.getter();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_10169DAA8 = v5;
  unk_10169DAB0 = v7;
  return result;
}

uint64_t sub_100314498()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169DAB8);
  sub_1000076D4(v0, qword_10169DAB8);
  return Logger.init(subsystem:category:)();
}

void *sub_10031451C(_BYTE **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_100314564@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100314594(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_10:
    if (v3 == 8)
    {
      return result;
    }
  }

  sub_100016590(result, a2);
  return 0;
}

uint64_t sub_100314604(uint64_t a1, uint64_t a2)
{
  if (a1 != a1)
  {
    if (qword_101694FA8 == -1)
    {
LABEL_6:
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if ((v18 & 1) == 0)
      {
        if (qword_101694578 != -1)
        {
          swift_once();
        }

        v4 = type metadata accessor for Logger();
        sub_1000076D4(v4, qword_10169DAB8);
        v5 = Logger.logObject.getter();
        v6 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 134218240;
          *(v7 + 4) = a1;
          *(v7 + 12) = 2048;
          *(v7 + 14) = a2;
          _os_log_impl(&_mh_execute_header, v5, v6, "Invalid vendorId: %ld productId: %ld", v7, 0x16u);
        }
      }

      return 0;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  if (a2 != a2)
  {
    if (qword_101694FA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_10012BF24();
  v19 = FixedWidthInteger.data.getter();
  v20 = v8;
  v9 = FixedWidthInteger.data.getter();
  v11 = v10;
  Data.append(_:)();
  sub_100016590(v9, v11);
  result = v19;
  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_22;
    }

    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 == 8)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_100016590(v19, v20);
      return 0;
    }

    __break(1u);
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(v20) != 8)
      {
        goto LABEL_22;
      }

LABEL_19:
      sub_100017D5C(v19, v20);
      sub_100016590(v19, v20);
      return v19;
    }

    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      if (HIDWORD(v19) - v19 == 8)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void *sub_100314900(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_10169DAD8, &qword_10139CAA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_100314A74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_100314A74()
{
  result = qword_10169DAE0;
  if (!qword_10169DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAE0);
  }

  return result;
}

unint64_t sub_100314ADC()
{
  result = qword_10169DAF0;
  if (!qword_10169DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAF0);
  }

  return result;
}

unint64_t sub_100314B34()
{
  result = qword_10169DAF8;
  if (!qword_10169DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DAF8);
  }

  return result;
}

unint64_t sub_100314B8C()
{
  result = qword_10169DB00;
  if (!qword_10169DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DB00);
  }

  return result;
}

uint64_t sub_100314BE4(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v47 = &v36 - v11;
  __chkstk_darwin(v10);
  v42 = &v36 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v45 = v5 + 16;
  v40 = v5 + 32;
  v41 = v15;
  v43 = a2 + 7;
  v21 = (v5 + 8);

  v46 = a2;

  v23 = 0;
  v37 = v20;
  v38 = v16;
  v39 = v5;
  while (v19)
  {
LABEL_18:
    v25 = v42;
    v26 = v41[6];
    v44 = *(v5 + 72);
    v27 = *(v5 + 16);
    v27(v42, v26 + v44 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
    (*(v5 + 32))(v47, v25, v4);
    if (v46[2])
    {
      v28 = v46;
      v29 = v46[5];
      sub_100315A3C(&qword_1016967B0, &type metadata accessor for UUID);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v27(v9, v46[6] + v32 * v44, v4);
          sub_100315A3C(&qword_1016984A0, &type metadata accessor for UUID);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v21;
          (*v21)(v9, v4);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v35(v47, v4);
        return 0;
      }
    }

LABEL_12:
    v19 &= v19 - 1;
    result = (*v21)(v47, v4);
    v16 = v38;
    v5 = v39;
    v20 = v37;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_100314FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnerSharingCircle();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177A560);
  sub_1003158CC(a1, v14);
  (*(v7 + 16))(v10, a3, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v3;
    v19 = v18;
    v30 = swift_slowAlloc();
    v33 = v30;
    *v19 = 134350083;
    *(v19 + 4) = v32;
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    LODWORD(v32) = v17;
    v20 = *(v11 + 20);
    sub_100315A3C(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100315930(v14);
    v24 = sub_1000136BC(v21, v23, &v33);

    *(v19 + 24) = v24;
    *(v19 + 32) = 2160;
    *(v19 + 34) = 1752392040;
    *(v19 + 42) = 2081;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v10, v6);
    v28 = sub_1000136BC(v25, v27, &v33);

    *(v19 + 44) = v28;
    _os_log_impl(&_mh_execute_header, v16, v32, "Deleting circle of type: %{public}ld\ncircle: %{private,mask.hash}s,\nfor beacon:%{private,mask.hash}s.", v19, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_100315930(v14);
  }
}

unint64_t *sub_100315334(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100315A84(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1003153D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0) + 48);
  v5 = *(sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510) + 48);
  LOBYTE(v4) = *(a1 + v4);
  v6 = type metadata accessor for UUID();
  result = (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v4;
  return result;
}

BOOL sub_100315470(uint64_t a1)
{
  v5 = type metadata accessor for OwnerSharingCircle();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v40 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v36[-v10];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = v41;
  v14 = sub_101074A20(v41);

  v15 = v14 != 0;
  v16 = v14 - 1;
  if (v15)
  {
    v17 = 0;
    v2 = *(a1 + 16);
    while (1)
    {
      v3 = v17;
      if (v2 == v17)
      {
        break;
      }

      ++v17;
      v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;
      v1 = *(*(v13 + v5[8]) + 16);
      if (v1 && v16 < v1)
      {
        if (qword_101694480 != -1)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    __break(1u);
LABEL_14:
    swift_once();
LABEL_10:
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    sub_1003158CC(v13, v11);
    v19 = v40;
    sub_1003158CC(v13, v40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v22 = 134219267;
      *(v22 + 4) = v1;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v16;
      *(v22 + 22) = 2160;
      *(v22 + 24) = 1752392040;
      *(v22 + 32) = 2081;
      v38 = v20;
      v23 = v5[6];
      type metadata accessor for UUID();
      sub_100315A3C(&qword_101696930, &type metadata accessor for UUID);
      v37 = v21;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100315930(v11);
      v27 = sub_1000136BC(v24, v26, &v41);

      *(v22 + 34) = v27;
      *(v22 + 42) = 2160;
      *(v22 + 44) = 1752392040;
      *(v22 + 52) = 2081;
      v28 = v40;
      v29 = &v40[v5[5]];
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100315930(v28);
      v33 = sub_1000136BC(v30, v32, &v41);

      *(v22 + 54) = v33;
      v34 = v38;
      _os_log_impl(&_mh_execute_header, v38, v37, "BeaconSharingService: cannot create new circle. memberCount: %ld > maxCircleMembers: %lu.\nBeaconIdentifier: %{private,mask.hash}s,\nShareId: %{private,mask.hash}s.", v22, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {

      sub_100315930(v19);
      sub_100315930(v11);
    }
  }

  return v2 == v3;
}

uint64_t sub_1003158CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100315930(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharingCircle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10031598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BeaconSharingCircleTransformer.Error()
{
  result = qword_10169DBA0;
  if (!qword_10169DBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100315A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100315A84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v47 = a4;
  v40 = a1;
  v46 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
  v5 = *(*(v46 - 8) + 64);
  v6 = __chkstk_darwin(v46);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v38 - v8;
  v52 = type metadata accessor for UUID();
  v9 = *(*(v52 - 8) + 64);
  result = __chkstk_darwin(v52);
  v51 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v49 = a3;
  v14 = *(a3 + 64);
  v41 = 0;
  v42 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v43 = v11 + 16;
  v44 = v11;
  v48 = (v11 + 8);
  v19 = v51;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v50 = (v17 - 1) & v17;
LABEL_11:
    v23 = v20 | (v13 << 6);
    v24 = v49;
    v25 = *(v44 + 16);
    v26 = v52;
    v25(v19, v49[6] + *(v44 + 72) * v23, v52);
    v27 = v23;
    LOBYTE(v24) = *(v24[7] + v23);
    v28 = v53;
    v25(v53, v19, v26);
    *(v28 + *(v46 + 48)) = v24;
    v29 = v45;
    sub_1000D2A70(v28, v45, &qword_1016BBEE0, &unk_10139CBF0);
    if (*(v47 + 16) && (sub_1000210EC(v29), (v30 & 1) != 0))
    {
      sub_10000B3A8(v53, &qword_1016BBEE0, &unk_10139CBF0);
      v31 = v29;
      v32 = *v48;
      v33 = v52;
      (*v48)(v31, v52);
      result = (v32)(v51, v33);
      v17 = v50;
    }

    else
    {
      sub_10000B3A8(v53, &qword_1016BBEE0, &unk_10139CBF0);
      v34 = v29;
      v35 = *v48;
      v36 = v52;
      (*v48)(v34, v52);
      result = (v35)(v51, v36);
      *(v40 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v37 = __OFADD__(v41++, 1);
      v17 = v50;
      if (v37)
      {
        __break(1u);
        return sub_10061C234(v40, v39, v41, v49);
      }
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return sub_10061C234(v40, v39, v41, v49);
    }

    v22 = *(v42 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v50 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100315DFC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_100315334(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100315A84((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}