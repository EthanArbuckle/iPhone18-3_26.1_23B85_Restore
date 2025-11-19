uint64_t sub_1000A2DBC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1128);
  sub_10000403C(v0, qword_1003A1128);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint8_t *SecureElementTransceiver.getData(tag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v54 = a3;
  v46 = a2;
  v7 = type metadata accessor for TLVTag();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = TLVTag.rawValue.getter() >> 8;
  v13 = TLVTag.rawValue.getter();
  LOWORD(v50) = -13696;
  BYTE2(v50) = v12;
  HIBYTE(v50) = v13;
  v51 = 0;
  v52 = xmmword_1002BDC30;
  v53 = 0;
  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A1128);
  (*(v8 + 16))(v11, a1, v7);
  sub_10000BC94(&v50, v47);
  v45[3] = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v50);
  v18 = os_log_type_enabled(v16, v17);
  v45[2] = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45[1] = v5;
    v47[0] = v20;
    *v19 = 136315394;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1002C1660;
    v22 = TLVTag.rawValue.getter();
    *(v21 + 56) = &type metadata for UInt;
    *(v21 + 64) = &protocol witness table for UInt;
    *(v21 + 32) = v22;
    v23 = String.init(format:_:)();
    v25 = v24;
    (*(v8 + 8))(v11, v7);
    v26 = sub_100008F6C(v23, v25, v47);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_100170F04(v50 | (v51 << 32), v52, *(&v52 + 1), v53);
    v29 = v28;
    v30 = Data.hexString()();
    sub_100009548(v27, v29);
    v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, v47);

    *(v19 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v16, v17, "CAPDU (GET DATA for tag %s): %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_1000A1EB0(v50 | (v51 << 32), v52, *(&v52 + 1), v53, 1, v46, v54, v48);
  v32 = v48[0];
  v33 = v48[1];
  v34 = v49;
  v35 = Logger.logObject.getter();
  if (v33 >> 60 == 15)
  {
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Error from transceive", v32, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v38 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v39 = 136315138;
    v41 = Data.hexString()();
    v42 = sub_100008F6C(v41._countAndFlagsBits, v41._object, v47);

    *(v39 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v38, "RAPDU: %s", v39, 0xCu);
    sub_10000959C(v40);
  }

  if (v34 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v43 = v34;
    swift_willThrow();
    sub_10000BD44(v48, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_15:
    sub_10000BCF0(&v50);
    return v32;
  }

  sub_10000BCF0(&v50);
  sub_1000094F4(v32, v33);
  sub_10000BD44(v48, &qword_10039E2C0, &unk_1002BFEB0);
  return v32;
}

uint64_t sub_1000A33BC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002C3C70;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  v4 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  aBlock[4] = sub_1000A38FC;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100159FB0;
  aBlock[3] = &unk_100382398;
  v7 = _Block_copy(aBlock);

  [v4 transceiveWithCapdu:isa reply:v7];
  _Block_release(v7);

  swift_beginAccess();
  if (*(v2 + 16))
  {
    v8 = *v3;
    swift_willThrow();
    swift_errorRetain();

    return v3;
  }

  swift_beginAccess();
  if (*(v1 + 24) >> 60 != 15)
  {
    v3 = *(v1 + 16);
    sub_1000094F4(v3, *(v1 + 24));

    return v3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A3604(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_10001A3E8(a1, a2);
  sub_10001A074(v10, v11);
  swift_beginAccess();
  v12 = *(a5 + 16);
  *(a5 + 16) = a3;
  swift_errorRetain();
}

uint64_t sub_1000A36B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3710()
{
  v1 = *v0;
  v2._countAndFlagsBits = 0x203A79786F7270;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v4 = *(v1 + 16);
  sub_100004074(&qword_1003A1208, &unk_1002C53D0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

unint64_t sub_1000A37C0(uint64_t a1)
{
  result = sub_1000A37E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A37E8()
{
  result = qword_1003A1200;
  if (!qword_1003A1200)
  {
    type metadata accessor for SecureElementTransceiverAdaptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1200);
  }

  return result;
}

uint64_t sub_1000A383C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100009548(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3884()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A38BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A3904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A391C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1210);
  sub_10000403C(v0, qword_1003A1210);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3978()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1228);
  sub_10000403C(v0, qword_1003A1228);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

Swift::Void __swiftcall SecureElementTransceiver.cancelPIN()()
{
  v2 = v1;
  v3 = v0;
  v35 = 62592;
  v36 = 0;
  v37 = xmmword_1002BDC30;
  v38 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A1240);
  sub_10000BC94(&v35, v33);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v35);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v7 = 136315138;
    v8 = sub_100170F04(v35 | (v36 << 32), v37, *(&v37 + 1), v38);
    v10 = v9;
    v11 = Data.hexString()();
    sub_100009548(v8, v10);
    v12 = sub_100008F6C(v11._countAndFlagsBits, v11._object, v33);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "C-APDU (CANCEL): %s", v7, 0xCu);
    sub_10000959C(v31);
  }

  sub_1000A1EB0(v35 | (v36 << 32), v37, *(&v37 + 1), v38, 1, v3, v2, v33);
  if (v33[1] >> 60 == 15)
  {
    sub_10000BCF0(&v35);
    return;
  }

  v13 = v34;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315138;
    v18 = Data.hexString()();
    v19 = sub_100008F6C(v18._countAndFlagsBits, v18._object, &v32);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "R-APDU: %s", v16, 0xCu);
    sub_10000959C(v17);
  }

  v20 = Logger.logObject.getter();
  if (v13 != 36864)
  {
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v20, v29, "failed to cleared persistent storage in SE", v30, 2u);
    }

    sub_10000BCF0(&v35);

    goto LABEL_24;
  }

  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "cleared persistent storage in SE", v22, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v23 = static GlobalState.shared;
  [*(static GlobalState.shared + 88) lock];
  v24 = *(v23 + 104);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 104) = v26;
    while (*(v23 + 96) > 0 || *(v23 + 112) == 1)
    {
      [*(v23 + 88) wait];
    }

    v27 = *(v23 + 104);
    v25 = __OFSUB__(v27, 1);
    v28 = v27 - 1;
    if (!v25)
    {
      *(v23 + 104) = v28;
      *(v23 + 112) = 1;
      [*(v23 + 88) unlock];
      *(v23 + 57) = 0;
      sub_100173040();
      [*(v23 + 88) lock];
      *(v23 + 112) = 0;
      [*(v23 + 88) broadcast];
      [*(v23 + 88) unlock];
      sub_10000BCF0(&v35);
LABEL_24:
      sub_1000A3F14(v33);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1000A3EB8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1240);
  sub_10000403C(v0, qword_1003A1240);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3F14(uint64_t a1)
{
  v2 = sub_100004074(&qword_10039E2C0, &unk_1002BFEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3F7C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1258);
  sub_10000403C(v0, qword_1003A1258);
  sub_100023B24();
  return static SPRLogger.secureElement.getter();
}

uint64_t sub_1000A3FD8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1270);
  sub_10000403C(v0, qword_1003A1270);
  sub_100023B24();
  return static SPRLogger.feedbackFramework.getter();
}

uint64_t sub_1000A4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  return _swift_task_switch(sub_1000A4058, 0, 0);
}

uint64_t sub_1000A4058()
{
  v37 = v0;
  if (qword_10039D4C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = sub_10000403C(v2, qword_1003A1270);
  sub_10000CCE4(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_10000BE18((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    sub_10000959C((v0 + 16));
    v12 = sub_100008F6C(v9, v11, &v36);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempting to launch NFC/SE Tap-To-Pay Feedback Form for %s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {

    sub_10000959C((v0 + 16));
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 144);
  v13 = *(v0 + 120);
  v35 = *(v0 + 128);
  v14 = type metadata accessor for FBKSForm.Question();
  v15 = *(v14 - 8);
  v32 = v15[8] + 15;
  v16 = swift_task_alloc();
  *v16 = 0x656C7469743ALL;
  v16[1] = 0xE600000000000000;
  v31 = v15[13];
  v31();
  v17 = v13[3];
  v18 = v13[4];
  sub_10000BE18(v13, v17);
  (*(v18 + 16))(v17, v18);
  dispatch thunk of FBKSForm.prefill(question:answer:)();

  v19 = v15[1];
  v19(v16, v14);

  v20 = swift_task_alloc();
  *v20 = 0x745F65757373693ALL;
  v20[1] = 0xEB00000000657079;
  v31();
  v21 = v13[3];
  v22 = v13[4];
  sub_10000BE18(v13, v21);
  (*(v22 + 8))(v21, v22);
  dispatch thunk of FBKSForm.prefill(question:answer:)();

  v19(v20, v14);

  dispatch thunk of FBKSForm.authenticationMethod.setter();
  dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
  type metadata accessor for FeedbackFrameworkString();
  static FeedbackFrameworkString.promptTitle.getter();
  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
  static FeedbackFrameworkString.promptMessage.getter();
  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();
  dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.setter();
  v23 = *(v34 + 72);
  if (v23)
  {
    v24 = *(v34 + 80);
    sub_10000BE18((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
    type metadata accessor for DefaultManagedDictionary();

    sub_10017A944();
    if (*(v0 + 112))
    {
      sub_100019D3C((v0 + 88), (v0 + 56));
    }

    else
    {
      *(v0 + 80) = &type metadata for Bool;
      *(v0 + 56) = 0;
    }

    v23(*(v0 + 128), *(v0 + 136), v0 + 56);
    sub_1000048A0(v23);
    sub_10000959C((v0 + 56));
  }

  v25 = *(v0 + 144);
  type metadata accessor for FBKSFeedbackCount();
  v26 = *(v25 + 56);
  *(v0 + 160) = v26;
  v27 = *(v25 + 64);
  *(v0 + 168) = v27;
  v28 = async function pointer to static FBKSFeedbackCount.fetchCountsForForm(identifier:)[1];
  v29 = swift_task_alloc();
  *(v0 + 176) = v29;
  *v29 = v0;
  v29[1] = sub_1000A4580;

  return static FBKSFeedbackCount.fetchCountsForForm(identifier:)(v26, v27);
}

uint64_t sub_1000A4580(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v7 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v5 = sub_1000A4AB0;
  }

  else
  {
    v5 = sub_1000A4694;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A4694()
{
  v29 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100008F6C(v9, v8, &v28);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Current Feedback Count for %s: %@\n", v10, 0x16u);
    sub_100041D90(v11);

    sub_10000959C(v12);
  }

  v14 = *(v0 + 152);
  v15 = *(v0 + 184);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 184);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = FBKSFeedbackCount.declineCount.getter();

    _os_log_impl(&_mh_execute_header, v16, v17, "User has declined this form %ld times", v19, 0xCu);
  }

  else
  {

    v16 = *(v0 + 184);
  }

  v21 = *(v0 + 128);
  v20 = *(v0 + 136);

  v22 = objc_allocWithZone(type metadata accessor for FBKSDraftLauncher());
  v23 = v21;
  *(v0 + 200) = FBKSDraftLauncher.init(feedbackForm:)();
  v24 = *(&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + 1);
  v27 = (&async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:) + async function pointer to dispatch thunk of FBKSDraftLauncher.collectFeedback(launchConfiguration:));
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_1000A4934;

  return v27(v20);
}

uint64_t sub_1000A4934()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1000A4BFC;
  }

  else
  {
    v3 = sub_1000A4A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A4A48()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A4AB0()
{
  v1 = v0[24];
  v2 = v0[19];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while creating and launching Feedback Form: %@", v5, 0xCu);
    sub_100041D90(v6);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A4BFC()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Encountered error while creating and launching Feedback Form: %@", v6, 0xCu);
    sub_100041D90(v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A4D58()
{
  sub_10000959C(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];
  sub_1000048A0(v0[9]);

  return swift_deallocClassInstance();
}

uint64_t *sub_1000A4DC4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v25 = type metadata accessor for DefaultManagedDictionary();
  v26 = &off_100386190;
  *&v24 = a1;
  a2[7] = 0xD000000000000014;
  a2[8] = 0x800000010034A640;
  a2[9] = 0;
  a2[10] = 0;
  if (qword_10039D4C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A1270);
  sub_10000CCE4(&v24, v22);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    v13 = v23;
    v14 = sub_10000BE18(v22, v23);
    *(v12 + 56) = v13;
    v15 = sub_10000BE5C((v12 + 32));
    (*(*(v13 - 8) + 16))(v15, v14, v13);
    v16 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034A660, v12);
    v18 = v17;

    sub_10000959C(v22);
    v19 = sub_100008F6C(v16, v18, &v21);

    *(v8 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v22);
  }

  sub_100029790(&v24, (a2 + 2));
  return a2;
}

uint64_t *sub_1000A50A0()
{
  sub_1000E972C(v21);
  if (!v1)
  {
    sub_10000CCE4(v21, v19);
    v2 = v20;
    v3 = sub_100022438(v19, v20);
    v4 = *(*(v2 - 8) + 64);
    __chkstk_darwin(v3);
    v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for DefaultManagedDictionary();
    v18[3] = v9;
    v18[4] = &off_100386190;
    v18[0] = v8;
    type metadata accessor for LaunchFeedbackFramework();
    v10 = swift_allocObject();
    v11 = sub_100022438(v18, v9);
    v12 = *(*(v9 - 8) + 64);
    __chkstk_darwin(v11);
    v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v0 = sub_1000A4DC4(*v14, v10);
    sub_10000959C(v21);
    sub_10000959C(v18);
    sub_10000959C(v19);
  }

  return v0;
}

uint64_t sub_1000A5298()
{
  type metadata accessor for ConfigurationError(0);
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError);
  _BridgedStoredNSError.code.getter();
  if (v1 > 2022)
  {
    if (v1 > 2028)
    {
      switch(v1)
      {
        case 2029:
          return 0x206E776F6E6B6E55;
        case 2030:
          return 0xD000000000000014;
        case 2033:
          return 0xD000000000000016;
      }
    }

    else
    {
      switch(v1)
      {
        case 2023:
          return 0xD000000000000014;
        case 2024:
          return 0xD000000000000019;
        case 2027:
          return 0x2064696C61766E49;
      }
    }
  }

  else if (v1 > 2014)
  {
    switch(v1)
    {
      case 2015:
        return 0xD00000000000001CLL;
      case 2016:
        return 0xD000000000000014;
      case 2017:
        return 0xD000000000000018;
    }
  }

  else if (v1 != 2000 && (v1 == 2009 || v1 == 2010))
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000012;
}

unint64_t sub_1000A54EC()
{
  type metadata accessor for ConfigurationError(0);
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError);
  _BridgedStoredNSError.code.getter();
  v0 = 0x206E776F6E6B6E55;
  if (v3 <= 2022)
  {
    if (v3 <= 2014)
    {
      if (v3 == 2010)
      {
        v0 = 0xD000000000000034;
      }

      if (v3 == 2009)
      {
        v0 = 0xD000000000000034;
      }

      if (v3 == 2000)
      {
        return 0xD00000000000002CLL;
      }

      else
      {
        return v0;
      }
    }

    if (v3 == 2017)
    {
      v0 = 0xD000000000000032;
    }

    if (v3 == 2016)
    {
      v0 = 0xD00000000000002ELL;
    }

    v2 = v3 == 2015;
LABEL_21:
    if (v2)
    {
      return 0xD000000000000033;
    }

    else
    {
      return v0;
    }
  }

  if (v3 <= 2028)
  {
    if (v3 == 2027)
    {
      v0 = 0xD000000000000026;
    }

    if (v3 == 2024)
    {
      v0 = 0xD000000000000033;
    }

    v2 = v3 == 2023;
    goto LABEL_21;
  }

  if (v3 == 2033)
  {
    v0 = 0xD000000000000030;
  }

  if (v3 == 2030)
  {
    v0 = 0xD00000000000002CLL;
  }

  if (v3 == 2029)
  {
    return 0xD000000000000027;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000A5748()
{
  v3 = *v0;
  sub_1000A5CD0(&qword_10039DC00, type metadata accessor for ConfigurationError);
  _BridgedStoredNSError.code.getter();
  return ((v2 - 2000) < 0x22) & (0x269838601uLL >> (v2 + 48));
}

unint64_t sub_1000A57E4()
{
  v5 = *v0;
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError);
  _BridgedStoredNSError.code.getter();
  v1 = 0x6873617243;
  v2 = 0xD000000000000012;
  if (v4 == 4013)
  {
    v2 = 0xD000000000000014;
  }

  if (v4 != 4024)
  {
    v1 = v2;
  }

  if (v4 == 4005)
  {
    return 0xD000000000000014;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A58D8()
{
  v4 = *v0;
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError);
  _BridgedStoredNSError.code.getter();
  v1 = 0x206E776F6E6B6E55;
  if (v3 == 4013)
  {
    v1 = 0xD000000000000015;
  }

  if (v3 == 4024)
  {
    v1 = 0xD000000000000022;
  }

  if (v3 == 4005)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A59E0()
{
  v3 = *v0;
  sub_1000A5CD0(&qword_10039DA08, type metadata accessor for ReadError);
  _BridgedStoredNSError.code.getter();
  return ((v2 - 4005) < 0x14) & (0x80101u >> (v2 + 91));
}

unint64_t sub_1000A5A78()
{
  v4 = *v0;
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError);
  _BridgedStoredNSError.code.getter();
  if (v3 == 5010)
  {
    v1 = 0xD000000000000019;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  if (v3 == 5009)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A5B58()
{
  v4 = *v0;
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError);
  _BridgedStoredNSError.code.getter();
  v1 = 0x206E776F6E6B6E55;
  if (v3 == 5009)
  {
    v1 = 0xD000000000000035;
  }

  if (v3 == 5010)
  {
    return 0xD000000000000030;
  }

  else
  {
    return v1;
  }
}

BOOL sub_1000A5C44()
{
  v3 = *v0;
  sub_1000A5CD0(&qword_10039D9D0, type metadata accessor for SecureChannelError);
  _BridgedStoredNSError.code.getter();
  return (v2 - 5009) < 2;
}

uint64_t sub_1000A5CD0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000A5D28(void *a1, uint64_t a2)
{
  sub_10000CCE4(a2, v19);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    v6 = sub_1000A62C8();
LABEL_9:
    a1[4] = v6;
    return _swiftEmptyArrayStorage;
  }

  if (v18 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002C1670;
    *(v7 + 56) = &type metadata for MPOCMonitorManagerAction;
    v8 = sub_1000A63C4();
    result = v7;
    *(v7 + 32) = v17;
    *(v7 + 40) = 0;
    *(v7 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v7 + 104) = v8;
    *(v7 + 64) = v8;
    *(v7 + 72) = 0;
    *(v7 + 80) = 1;
    return result;
  }

  if (v17 > 4)
  {
    if (v17 <= 7)
    {
      if (v17 == 5)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1002C1660;
        *(v13 + 56) = &type metadata for MPOCMonitorManagerAction;
        v14 = sub_1000A63C4();
        result = v13;
        *(v13 + 64) = v14;
        *(v13 + 32) = 0;
        *(v13 + 40) = 1;
        return result;
      }

      if (v17 != 6)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        *(v3 + 32) = 4;
        *(v3 + 40) = 1;
        *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_26:
        *(v3 + 104) = v4;
        *(v3 + 64) = v4;
        *(v3 + 72) = 0;
        goto LABEL_27;
      }

      goto LABEL_15;
    }

    if (v17 != 9)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1002C1790;
      *(v9 + 56) = &type metadata for MPOCMonitorManagerAction;
      v10 = sub_1000A63C4();
      result = v9;
      *(v9 + 32) = 0;
      *(v9 + 40) = 1;
      *(v9 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v9 + 104) = v10;
      v11 = 4;
      goto LABEL_19;
    }

    a1[3] = &type metadata for RetriedSameBatchState;
    a1[4] = sub_1000A631C();
    *a1 = 1;
    return _swiftEmptyArrayStorage;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      a1[3] = &type metadata for AttemptedSendBatchState;
      a1[4] = sub_1000A62C8();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1002C1670;
      *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
      v4 = sub_1000A63C4();
      result = v3;
      *(v3 + 32) = 7;
      *(v3 + 40) = 1;
      *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
      goto LABEL_26;
    }

    a1[3] = &type metadata for FinalState;
    v6 = sub_1000A6418();
    goto LABEL_9;
  }

  if (v17 != 2)
  {
    if (v17 != 3)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1002C1790;
      *(v15 + 56) = &type metadata for MPOCMonitorManagerAction;
      v16 = sub_1000A63C4();
      result = v15;
      *(v15 + 32) = 3;
      *(v15 + 40) = 1;
      *(v15 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v15 + 104) = v16;
      *(v15 + 64) = v16;
      *(v15 + 72) = 5;
      *(v15 + 80) = 1;
      *(v15 + 136) = &type metadata for MPOCMonitorManagerAction;
      *(v15 + 144) = v16;
      *(v15 + 112) = 0;
      *(v15 + 120) = 1;
      return result;
    }

LABEL_15:
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    a1[4] = sub_1000A6370();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C1790;
    *(v9 + 56) = &type metadata for MPOCMonitorManagerAction;
    v10 = sub_1000A63C4();
    result = v9;
    *(v9 + 32) = 0;
    *(v9 + 40) = 1;
    *(v9 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v9 + 104) = v10;
    v11 = 6;
LABEL_19:
    *(v9 + 64) = v10;
    *(v9 + 72) = v11;
    *(v9 + 80) = 1;
    *(v9 + 136) = &type metadata for MPOCMonitorManagerAction;
    *(v9 + 144) = v10;
    *(v9 + 112) = 5;
    *(v9 + 120) = 1;
    return result;
  }

  a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
  a1[4] = sub_1000A6370();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C1670;
  *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
  v12 = sub_1000A63C4();
  result = v3;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
  *(v3 + 104) = v12;
  *(v3 + 64) = v12;
  *(v3 + 72) = 5;
LABEL_27:
  *(v3 + 80) = 1;
  return result;
}

unint64_t sub_1000A624C(uint64_t a1)
{
  result = sub_1000A6274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6274()
{
  result = qword_1003A1370;
  if (!qword_1003A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1370);
  }

  return result;
}

unint64_t sub_1000A62C8()
{
  result = qword_1003A1380;
  if (!qword_1003A1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1380);
  }

  return result;
}

unint64_t sub_1000A631C()
{
  result = qword_1003A1388;
  if (!qword_1003A1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1388);
  }

  return result;
}

unint64_t sub_1000A6370()
{
  result = qword_1003A1390;
  if (!qword_1003A1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1390);
  }

  return result;
}

unint64_t sub_1000A63C4()
{
  result = qword_1003A1398;
  if (!qword_1003A1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1398);
  }

  return result;
}

unint64_t sub_1000A6418()
{
  result = qword_1003A13A0;
  if (!qword_1003A13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13A0);
  }

  return result;
}

void *sub_1000A648C(void *a1, uint64_t a2)
{
  sub_10000CCE4(a2, v15);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    v7 = sub_1000A6370();
LABEL_9:
    a1[4] = v7;
    return _swiftEmptyArrayStorage;
  }

  if (v14 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002C1670;
    *(v8 + 56) = &type metadata for MPOCMonitorManagerAction;
    v9 = sub_1000A63C4();
    result = v8;
    *(v8 + 32) = v13;
    *(v8 + 40) = 0;
    *(v8 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = 0;
    *(v8 + 80) = 1;
    return result;
  }

  if (v13 > 5)
  {
    if (v13 <= 7)
    {
      if (v13 != 6)
      {
        a1[3] = &type metadata for AttemptedSendBatchState;
        a1[4] = sub_1000A62C8();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        v6 = 4;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    if (v13 != 9)
    {
LABEL_18:
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      v10 = sub_1000A6370();
      goto LABEL_19;
    }

    a1[3] = &type metadata for RetriedSameBatchState;
    a1[4] = sub_1000A631C();
    *a1 = 1;
    return _swiftEmptyArrayStorage;
  }

  if (v13 > 1)
  {
    if ((v13 - 2) >= 2)
    {
      if (v13 == 4)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1002C1670;
        *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
        v4 = sub_1000A63C4();
        result = v3;
        v6 = 3;
LABEL_22:
        *(v3 + 32) = v6;
        *(v3 + 40) = 1;
        *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
        goto LABEL_23;
      }

      a1[3] = &type metadata for AttemptedSendBatchState;
      v10 = sub_1000A62C8();
LABEL_19:
      a1[4] = v10;
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1002C1660;
      *(v11 + 56) = &type metadata for MPOCMonitorManagerAction;
      v12 = sub_1000A63C4();
      result = v11;
      *(v11 + 64) = v12;
      *(v11 + 32) = 0;
      *(v11 + 40) = 1;
      return result;
    }

    goto LABEL_18;
  }

  if (!v13)
  {
    a1[3] = &type metadata for FinalState;
    v7 = sub_1000A6418();
    goto LABEL_9;
  }

  a1[3] = &type metadata for AttemptedSendBatchState;
  a1[4] = sub_1000A62C8();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C1670;
  *(v3 + 56) = &type metadata for MPOCMonitorManagerAction;
  v4 = sub_1000A63C4();
  result = v3;
  *(v3 + 32) = 7;
  *(v3 + 40) = 1;
  *(v3 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_23:
  *(v3 + 104) = v4;
  *(v3 + 64) = v4;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  return result;
}

uint64_t sub_1000A67FC()
{
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1670;
  *(v0 + 56) = &type metadata for MPOCMonitorManagerAction;
  v1 = sub_1000A63C4();
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  *(v0 + 96) = &type metadata for MPOCMonitorManagerAction;
  *(v0 + 104) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = 2;
  *(v0 + 80) = 1;
  return v0;
}

void *sub_1000A6898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10000CCE4(a2, v21);
  sub_100004074(&qword_1003A1378, &unk_1002C5510);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  if (v20 != 1)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002C1670;
    *(v8 + 56) = &type metadata for MPOCMonitorManagerAction;
    v9 = sub_1000A63C4();
    result = v8;
    *(v8 + 32) = v19;
    *(v8 + 40) = 0;
    *(v8 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = 0;
    *(v8 + 80) = 1;
    return result;
  }

  if (v19 <= 4)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1002C1670;
        *(v13 + 56) = &type metadata for MPOCMonitorManagerAction;
        v14 = sub_1000A63C4();
        result = v13;
        *(v13 + 32) = 0;
        *(v13 + 40) = 1;
        *(v13 + 96) = &type metadata for MPOCMonitorManagerAction;
        *(v13 + 104) = v14;
        *(v13 + 64) = v14;
        *(v13 + 72) = 5;
        *(v13 + 80) = 1;
        return result;
      }

      if (v19 != 3)
      {
        a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
        a1[4] = sub_1000A6370();
        sub_100004074(&qword_10039FE70, &qword_1002C3738);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1002C1790;
        *(v17 + 56) = &type metadata for MPOCMonitorManagerAction;
        v18 = sub_1000A63C4();
        result = v17;
        *(v17 + 32) = 3;
        *(v17 + 40) = 1;
        *(v17 + 96) = &type metadata for MPOCMonitorManagerAction;
        *(v17 + 104) = v18;
        *(v17 + 64) = v18;
        *(v17 + 72) = 5;
        *(v17 + 80) = 1;
        *(v17 + 136) = &type metadata for MPOCMonitorManagerAction;
        *(v17 + 144) = v18;
        *(v17 + 112) = 0;
        *(v17 + 120) = 1;
        return result;
      }

      goto LABEL_12;
    }

    if (v19)
    {
      a1[3] = &type metadata for AttemptedSendBatchState;
      a1[4] = sub_1000A62C8();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1002C1670;
      *(v5 + 56) = &type metadata for MPOCMonitorManagerAction;
      v6 = sub_1000A63C4();
      result = v5;
      *(v5 + 32) = 7;
      *(v5 + 40) = 1;
      *(v5 + 96) = &type metadata for MPOCMonitorManagerAction;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (v19 > 7)
  {
    if (v19 != 9)
    {
      a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
      a1[4] = sub_1000A6370();
      sub_100004074(&qword_10039FE70, &qword_1002C3738);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1002C1790;
      *(v10 + 56) = &type metadata for MPOCMonitorManagerAction;
      v11 = sub_1000A63C4();
      result = v10;
      *(v10 + 32) = 0;
      *(v10 + 40) = 1;
      *(v10 + 96) = &type metadata for MPOCMonitorManagerAction;
      *(v10 + 104) = v11;
      v12 = 4;
      goto LABEL_19;
    }

    if (a3 <= 0)
    {
      ++a3;
LABEL_16:
      a1[3] = &type metadata for RetriedSameBatchState;
      a1[4] = sub_1000A631C();
      *a1 = a3;
      return _swiftEmptyArrayStorage;
    }

LABEL_21:
    a1[3] = &type metadata for FinalState;
    a1[4] = sub_1000A6418();
    return _swiftEmptyArrayStorage;
  }

  if (v19 == 5)
  {
    a1[3] = &type metadata for AttemptedSendBatchState;
    a1[4] = sub_1000A62C8();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    *(v15 + 56) = &type metadata for MPOCMonitorManagerAction;
    v16 = sub_1000A63C4();
    result = v15;
    *(v15 + 64) = v16;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    return result;
  }

  if (v19 == 6)
  {
LABEL_12:
    a1[3] = &type metadata for StoredCompleteAttestationAttemptedSendBatchState;
    a1[4] = sub_1000A6370();
    sub_100004074(&qword_10039FE70, &qword_1002C3738);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1790;
    *(v10 + 56) = &type metadata for MPOCMonitorManagerAction;
    v11 = sub_1000A63C4();
    result = v10;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    *(v10 + 96) = &type metadata for MPOCMonitorManagerAction;
    *(v10 + 104) = v11;
    v12 = 6;
LABEL_19:
    *(v10 + 64) = v11;
    *(v10 + 72) = v12;
    *(v10 + 80) = 1;
    *(v10 + 136) = &type metadata for MPOCMonitorManagerAction;
    *(v10 + 144) = v11;
    *(v10 + 112) = 5;
    *(v10 + 120) = 1;
    return result;
  }

  a1[3] = &type metadata for AttemptedSendBatchState;
  a1[4] = sub_1000A62C8();
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002C1670;
  *(v5 + 56) = &type metadata for MPOCMonitorManagerAction;
  v6 = sub_1000A63C4();
  result = v5;
  *(v5 + 32) = 4;
  *(v5 + 40) = 1;
  *(v5 + 96) = &type metadata for MPOCMonitorManagerAction;
LABEL_26:
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  return result;
}

uint64_t sub_1000A6D94()
{
  sub_100004074(&qword_10039FE70, &qword_1002C3738);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C1660;
  *(v0 + 56) = &type metadata for MPOCMonitorManagerAction;
  *(v0 + 64) = sub_1000A63C4();
  *(v0 + 32) = 2;
  *(v0 + 40) = 1;
  return v0;
}

unint64_t sub_1000A6E2C(uint64_t a1)
{
  result = sub_1000A6E54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6E54()
{
  result = qword_1003A13A8;
  if (!qword_1003A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13A8);
  }

  return result;
}

unint64_t sub_1000A6EA8(uint64_t a1)
{
  result = sub_1000A6ED0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A6ED0()
{
  result = qword_1003A13B0;
  if (!qword_1003A13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13B0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MPOCMonitorManagerAction(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MPOCMonitorManagerAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MPOCMonitorManagerAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000A6F8C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6FA8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1000A6FF4(uint64_t a1)
{
  result = sub_1000A701C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A701C()
{
  result = qword_1003A13B8;
  if (!qword_1003A13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13B8);
  }

  return result;
}

BOOL sub_1000A7070(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return (a4 & 1) != 0 && a3 == 6;
      }

      return (a4 & 1) != 0 && a3 > 6;
    }

    else
    {
      if (a1 == 4)
      {
        return (a4 & 1) != 0 && a3 == 4;
      }

      return (a4 & 1) != 0 && a3 == 5;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (*&a1 == 0.0)
      {
        return (a4 & 1) != 0 && *&a3 == 0.0;
      }

      return (a4 & 1) != 0 && a3 == 1;
    }

    if (a1 == 2)
    {
      return (a4 & 1) != 0 && a3 == 2;
    }

    return (a4 & 1) != 0 && a3 == 3;
  }
}

uint64_t sub_1000A7168(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1 <= 4)
    {
      v9 = 0x48435441425F4F4ELL;
      v10 = 0xD000000000000015;
      v11 = 0x5F44494C41564E49;
      if (a1 == 3)
      {
        v11 = 0xD000000000000012;
      }

      if (a1 != 2)
      {
        v10 = v11;
      }

      if (a1)
      {
        v9 = 0xD000000000000012;
      }

      if (a1 <= 1)
      {
        return v9;
      }

      else
      {
        return v10;
      }
    }

    else
    {
      v2 = 0xD000000000000010;
      v3 = 0x455F524556524553;
      if (a1 != 9)
      {
        v3 = 0x555145525F444142;
      }

      if (a1 != 8)
      {
        v2 = v3;
      }

      v4 = 0x455F544E45494C43;
      v5 = 0xD000000000000010;
      if (a1 != 6)
      {
        v5 = 0x455F454349564544;
      }

      if (a1 != 5)
      {
        v4 = v5;
      }

      if (a1 <= 7)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);
    v7._countAndFlagsBits = 0xD000000000000013;
    v7._object = 0x800000010034AC60;
    String.append(_:)(v7);
    Double.write<A>(to:)();
    v8._countAndFlagsBits = 29481;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    return 0;
  }
}

unint64_t sub_1000A73D0(uint64_t a1)
{
  result = sub_1000A73F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A73F8()
{
  result = qword_1003A13C0;
  if (!qword_1003A13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A13C0);
  }

  return result;
}

BOOL sub_1000A744C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (*&a1 == 0.0)
      {
        if ((a4 & 1) != 0 && *&a3 == 0.0)
        {
          return 1;
        }
      }

      else if ((a4 & 1) != 0 && a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if ((a4 & 1) != 0 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if ((a4 & 1) != 0 && a3 == 3)
      {
        return 1;
      }
    }

    else if ((a4 & 1) != 0 && a3 == 4)
    {
      return 1;
    }

    return 0;
  }

  if (a1 <= 7)
  {
    if (a1 == 5)
    {
      if ((a4 & 1) != 0 && a3 == 5)
      {
        return 1;
      }
    }

    else
    {
      if (a1 == 6)
      {
        return (a4 & 1) != 0 && a3 == 6;
      }

      if ((a4 & 1) != 0 && a3 == 7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a1 == 8)
  {
    return (a4 & 1) != 0 && a3 == 8;
  }

  if (a1 == 9)
  {
    return (a4 & 1) != 0 && a3 == 9;
  }

  return (a4 & 1) != 0 && a3 > 9;
}

unint64_t sub_1000A7598(uint64_t a1, char a2)
{
  if (a2)
  {
    result = 0x4D52455020544F4ELL;
    switch(a1)
    {
      case 1:
      case 2:
        result = 0xD000000000000014;
        break;
      case 3:
      case 10:
        result = 0xD000000000000013;
        break;
      case 4:
        result = 0x4520524556524553;
        break;
      case 5:
        result = 0xD000000000000018;
        break;
      case 6:
        result = 0x5551455220444142;
        break;
      case 7:
        result = 0x4554544120544F4ELL;
        break;
      case 8:
        result = 0xD000000000000010;
        break;
      case 9:
        result = 0xD000000000000010;
        break;
      case 11:
        result = 0xD000000000000012;
        break;
      case 12:
      case 14:
        result = 0xD000000000000011;
        break;
      case 13:
        result = 0x204C4147454C4C49;
        break;
      default:
        return result;
    }
  }

  else
  {
    _StringGuts.grow(_:)(16);
    v4._countAndFlagsBits = 0x4220454349564544;
    v4._object = 0xEE002044454E4E41;
    String.append(_:)(v4);
    Double.write<A>(to:)();
    return 0;
  }

  return result;
}

BOOL sub_1000A7848(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if ((a4 & 1) == 0 || a3 != 8)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if ((a4 & 1) == 0 || a3 != 9)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if ((a4 & 1) == 0 || a3 != 10)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if ((a4 & 1) == 0 || a3 != 11)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if ((a4 & 1) == 0 || a3 != 12)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if ((a4 & 1) == 0 || a3 != 13)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if ((a4 & 1) == 0 || a3 <= 0xD)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if ((a4 & 1) == 0 || *&a3 != 0.0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return result;
}

uint64_t sub_1000A79F8(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002C57C0[result];
  }

  return result;
}

uint64_t sub_1000A7A20()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A13C8);
  sub_10000403C(v0, qword_1003A13C8);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000A7A8C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A13E0);
  v1 = sub_10000403C(v0, qword_1003A13E0);
  if (qword_10039D748 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A7B54()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B88 = v5;
    unk_1003A6B90 = v7;
  }

  return result;
}

uint64_t sub_1000A7C64()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6B98 = v5;
    unk_1003A6BA0 = v7;
  }

  return result;
}

uint64_t *sub_1000A7E9C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A13C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = v4;
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100008F6C(v18, v19, aBlock);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v23 = sub_100008F6C(v21, v22, aBlock);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
    v4 = v35;

    v3 = v36;
  }

  v24 = v1[4];
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100382840;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_1000039BC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v25);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v37);
  v26 = v1[4];
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((v1[2] & 1) == 0)
  {
    v27 = v1[4];
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v28 = v1[4];
  swift_unknownObjectRelease();
  v29 = v1[5];

  sub_10000959C(v1 + 9);
  sub_10000959C(v1 + 14);
  sub_10000959C(v1 + 19);
  v30 = v1[24];
  swift_unknownObjectRelease();
  sub_10000959C(v1 + 26);
  sub_10000959C(v1 + 31);
  sub_10000959C(v1 + 36);
  v31 = v1[41];

  sub_10000959C(v1 + 42);
  v32 = v1[47];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000A8318()
{
  sub_1000A7E9C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A8370()
{
  v1 = *v0;
  v2 = v0[3];
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000A83EC()
{
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A13C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v10);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0x73676F4C646E6573, 0xEA00000000002928, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v10);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000A8878();
}

uint64_t sub_1000A85A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 24);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1000B42DC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100382818;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

void sub_1000A8878()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  if (*(v2 + 48))
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000403C(v20, qword_1003A13C8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot send logs when device is not online.", v23, 2u);
    }

    sub_1000B3E4C();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 1;
    swift_willThrow();
    return;
  }

  v40 = v4;
  v41 = v17;
  sub_1000A8D1C(v17);
  if (v1)
  {
    v44 = v1;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {

      v25 = v42;
      v26 = v43;
      v27 = *(v2 + 328);
      sub_100025A34(&off_10037E690);
      sub_1000B3E4C();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v26;
    }

    else
    {

      v44 = v1;
      swift_errorRetain();
      if (!swift_dynamicCast())
      {
LABEL_16:

        return;
      }

      v31 = v42;
      v32 = v43;
      v33 = *(v2 + 328);
      sub_100025A34(&off_10037E6B8);
      v34 = sub_1000A79F8(v31, v32);
      LOBYTE(v33) = v35;
      sub_1000B3E4C();
      swift_allocError();
      *v36 = v34;
      *(v36 + 8) = v33 & 1;
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (*(v2 + 16) == 1)
  {
    v39 = *(v2 + 32);
    swift_getObjectType();
    static DispatchTime.now()();
    + infix(_:_:)();
    v38 = *(v12 + 8);
    v38(v16, v41);
    sub_100146FDC(v10);
    sub_100147050(v8);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v29 = *(v40 + 8);
    v29(v8, v3);
    v29(v10, v3);
    v38(v19, v41);
  }

  v30 = *(v2 + 328);
  sub_100025A34(&off_10037E668);
}

void sub_1000A8D1C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v389 = v2;
  v3 = v1;
  v340 = *v1;
  v349 = type metadata accessor for OSSignpostError();
  v383 = *(v349 - 8);
  v4 = v383[8];
  __chkstk_darwin(v349);
  v348 = &v337 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for OSSignpostID();
  v382 = *(v369 - 8);
  v6 = *(v382 + 64);
  v7 = __chkstk_darwin(v369);
  v360 = &v337 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v354 = &v337 - v10;
  __chkstk_darwin(v9);
  v368 = &v337 - v11;
  v12 = type metadata accessor for TLV();
  v13 = *(v12 - 8);
  isa = v13[8].isa;
  __chkstk_darwin(v12);
  v371 = &v337 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MPOCMonitorBatch();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v363 = &v337 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v367 = &v337 - v22;
  __chkstk_darwin(v21);
  v346 = &v337 - v23;
  v24 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v366 = &v337 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v345 = &v337 - v29;
  __chkstk_darwin(v28);
  v31 = &v337 - v30;
  v32 = sub_100004074(&qword_1003A1640, &qword_1002C5980);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v365 = &v337 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v364 = &v337 - v37;
  v38 = __chkstk_darwin(v36);
  v352 = &v337 - v39;
  v40 = __chkstk_darwin(v38);
  v390 = &v337 - v41;
  __chkstk_darwin(v40);
  v43 = (&v337 - v42);
  v375 = v17;
  v44 = *(v17 + 56);
  v377 = v16;
  v44(&v337 - v42, 1, 1, v16);
  v378 = v13;
  v45 = v13[7].isa;
  v376 = v31;
  v386 = v12;
  v361 = v45;
  v362 = v13 + 7;
  v45(v31, 1, 1, v12);
  sub_1000B4034(v425);
  sub_1000B3E14(v426);
  memcpy(v418, v426, sizeof(v418));
  countAndFlagsBits = v427;
  v47 = v428;
  v380 = v429;
  v417 = v430;
  v48 = v3[7];
  v387 = v3;
  object = v3[5];
  v50 = *(object + 56);
  os_unfair_lock_lock((v50 + 56));
  v51 = v389;
  sub_1000B406C((v50 + 16), v416);
  if (v51)
  {
    os_unfair_lock_unlock((v50 + 56));
    __break(1u);
    return;
  }

  v384 = v47;
  v385 = 0;
  os_unfair_lock_unlock((v50 + 56));
  v389 = v416[0];
  if (qword_10039D4D0 != -1)
  {
LABEL_228:
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_10000403C(v52, qword_1003A13C8);

  v388 = v53;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = os_log_type_enabled(v54, v55);
  v379 = v43;
  v353 = object;
  v381 = countAndFlagsBits;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v415[0] = v58;
    *v57 = 136315138;
    v59 = *(object + 56);
    os_unfair_lock_lock(v59 + 14);
    sub_10000CCE4(&v59[4], v416);
    os_unfair_lock_unlock(v59 + 14);
    v60 = v416[3];
    v61 = v416[4];
    sub_10000BE18(v416, v416[3]);
    v62 = (*(v61 + 32))(v60, v61);
    v64 = v63;
    sub_10000959C(v416);
    v65 = sub_100008F6C(v62, v64, v415);

    *(v57 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v54, v55, "MonitorManager is at the %s state", v57, 0xCu);
    sub_10000959C(v58);

    v43 = v379;
  }

  v66 = v387[29];
  v67 = v387[30];
  sub_10000BE18(v387 + 26, v66);
  v68 = v385;
  v69 = (*(v67 + 24))(v66, v67);
  if (v68)
  {

    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Could not read the monitoring file %@.\nAttempting to remove the stored files.", v72, 0xCu);
      sub_10000BD44(v73, &unk_10039E220, &qword_1002C3D60);
    }

    v75 = v387;
    v76 = v387[29];
    v77 = v387[30];
    sub_10000BE18(v387 + 26, v76);
    (*(v77 + 40))(v76, v77);
    v78 = v384;
    v79 = sub_100183EFC(_swiftEmptyArrayStorage);
    v80 = *sub_10000BE18(v75 + 36, v75[39]);
    sub_100033A6C(206);
    v82 = v81;
    v83 = v75[29];
    v84 = v75[30];
    sub_10000BE18(v75 + 26, v83);
    (*(v84 + 8))(4326145, v82, v79, v83, v84);

    sub_1000B3E4C();
    swift_allocError();
    *v291 = 11;
    *(v291 + 8) = 1;
    swift_willThrow();

    sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v379, &qword_1003A1640, &qword_1002C5980);
    v292 = v78;
LABEL_191:
    memcpy(v416, v418, 0x110uLL);
    v416[34] = v381;
    v416[35] = v292;
    LOBYTE(v416[36]) = v380;
    BYTE1(v416[36]) = v417;
    sub_10000BD44(v416, &qword_1003A1620, &unk_1002C5960);
    return;
  }

  v85 = v69;
  v385 = 0;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 134217984;
    *(v88 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v86, v87, "There are %ld batch(s) in the monitoring file.", v88, 0xCu);
  }

  v89 = v389;
  if (!*(v389 + 16))
  {

    memcpy(v416, v425, sizeof(v416));
    v274 = v384;
LABEL_188:
    v293 = Logger.logObject.getter();
    v294 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v293, v294))
    {
      v295 = swift_slowAlloc();
      *v295 = 0;
      _os_log_impl(&_mh_execute_header, v293, v294, "No monitoring events to send.", v295, 2u);
    }

    sub_1000B3E4C();
    swift_allocError();
    *v296 = 1;
    *(v296 + 8) = 1;
    swift_willThrow();
    sub_10000BD44(v416, &qword_1003A1648, &qword_1002C5988);
    sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v43, &qword_1003A1640, &qword_1002C5980);
    v292 = v274;
    goto LABEL_191;
  }

  memcpy(v415, v425, sizeof(v415));
  v370 = 0;
  v375 += 6;
  v344 = v378 + 4;
  v343 = (v382 + 16);
  v358 = (v382 + 8);
  v359 = v378 + 6;
  v339 = (v383 + 11);
  v338 = enum case for OSSignpostError.doubleEnd(_:);
  v337 = (v383 + 1);
  v342 = v378 + 1;
  v356 = v85 + 5;
  v91 = __OFADD__(v85, 5);
  v357 = v91;
  countAndFlagsBits = *(v389 + 16);
  *&v90 = 138412290;
  v347 = v90;
  *&v90 = 136315138;
  v350 = v90;
  v351 = _swiftEmptyArrayStorage;
  v43 = v384;
  v92 = v386;
  v93 = v390;
  if (!countAndFlagsBits)
  {

    memcpy(v414, v415, sizeof(v414));
    v89 = _swiftEmptyArrayStorage;
    countAndFlagsBits = _swiftEmptyArrayStorage[2];
    if (!countAndFlagsBits)
    {
      goto LABEL_178;
    }

LABEL_176:
    memcpy(v415, v414, sizeof(v415));
  }

  memcpy(v413, v415, sizeof(v413));
  if (!v89[2])
  {
LABEL_186:
    __break(1u);
LABEL_187:
    v274 = v43;

    memcpy(v416, v414, sizeof(v416));
    v43 = v379;
    goto LABEL_188;
  }

  v94 = 0;
  v373 = 0;
  v374 = 0;
  object = (v89 + 4);
  LODWORD(v378) = 1;
  v389 = v89;
  v382 = countAndFlagsBits;
  v383 = v89 + 4;
  while (1)
  {
    sub_10000CCE4(object + 40 * v94, &v411);
    sub_100004074(&qword_10039FE68, &qword_1002C3730);
    if (!swift_dynamicCast())
    {
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        v99 = v97;
        v100 = v96;
        v101 = "Invalid action";
        goto LABEL_27;
      }

LABEL_28:

      memcpy(v412, v413, sizeof(v412));
      v89 = v389;
      goto LABEL_31;
    }

    if (LOBYTE(v410[1]) != 1)
    {
      sub_1000B2B84(*v410);
LABEL_30:
      memcpy(v412, v413, sizeof(v412));
      goto LABEL_31;
    }

    if (v410[0] <= 3)
    {
      if (v410[0] <= 1)
      {
        if (v410[0])
        {
          if (v357)
          {
            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          if (v370 >= v356)
          {
            v194 = v376;
            sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
            v361(v194, 1, 1, v92);
            goto LABEL_30;
          }

          v384 = v43;
          v106 = v379;
          v107 = v387[29];
          v108 = v387[30];
          sub_10000BE18(v387 + 26, v107);
          v109 = v385;
          (*(v108 + 16))(v107, v108);
          v385 = v109;
          if (v109)
          {

            swift_errorRetain();
            v297 = Logger.logObject.getter();
            v298 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v297, v298))
            {
              v299 = swift_slowAlloc();
              v300 = swift_slowAlloc();
              *v299 = v347;
              swift_errorRetain();
              v301 = _swift_stdlib_bridgeErrorToNSError();
              *(v299 + 4) = v301;
              *v300 = v301;
              _os_log_impl(&_mh_execute_header, v297, v298, "Could not readBatch from store: %@.\nAttempting to remove the stored files.", v299, 0xCu);
              sub_10000BD44(v300, &unk_10039E220, &qword_1002C3D60);
            }

            v302 = v387;
            v303 = v387[29];
            v304 = v387[30];
            sub_10000BE18(v387 + 26, v303);
            (*(v304 + 40))(v303, v304);
            v305 = sub_100183EFC(_swiftEmptyArrayStorage);
            v306 = *sub_10000BE18(v302 + 36, v302[39]);
            sub_100033A6C(206);
            v308 = v307;
            v309 = v302[29];
            v310 = v302[30];
            sub_10000BE18(v302 + 26, v309);
            (*(v310 + 8))(4326145, v308, v305, v309, v310);

            sub_1000B3E4C();
            swift_allocError();
            *v336 = 11;
            *(v336 + 8) = 1;
            swift_willThrow();

            sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
            sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
            sub_10000BD44(v379, &qword_1003A1640, &qword_1002C5980);
            goto LABEL_223;
          }

          sub_10000BD44(v106, &qword_1003A1640, &qword_1002C5980);
          sub_1000829AC(v93, v106, &qword_1003A1640, &qword_1002C5980);
          v110 = v352;
          sub_100065074(v106, v352, &qword_1003A1640, &qword_1002C5980);
          if ((*v375)(v110, 1, v377) == 1)
          {
            v111 = v376;
            sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
            sub_10000BD44(v110, &qword_1003A1640, &qword_1002C5980);
            v92 = v386;
            v361(v111, 1, 1, v386);
          }

          else
          {
            v202 = v110;
            v203 = v346;
            sub_1000B4088(v202, v346);
            v204 = v345;
            v205 = v385;
            sub_1000ACE38(v203, v345);
            v385 = v205;
            v92 = v386;
            if (v205)
            {

              swift_errorRetain();
              v321 = Logger.logObject.getter();
              v322 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v321, v322))
              {
                v323 = swift_slowAlloc();
                v324 = swift_slowAlloc();
                v390 = swift_slowAlloc();
                v410[0] = v390;
                *v323 = 136315650;
                v325 = _typeName(_:qualified:)();
                v327 = sub_100008F6C(v325, v326, v410);
                v106 = v379;

                *(v323 + 4) = v327;
                v292 = v384;
                *(v323 + 12) = 2080;
                *(v323 + 14) = sub_100008F6C(0xD000000000000014, 0x800000010034B120, v410);
                *(v323 + 22) = 2112;
                swift_errorRetain();
                v328 = _swift_stdlib_bridgeErrorToNSError();
                *(v323 + 24) = v328;
                *v324 = v328;
                _os_log_impl(&_mh_execute_header, v321, v322, "%s.%s: Could not create request payload: %@", v323, 0x20u);
                sub_10000BD44(v324, &unk_10039E220, &qword_1002C3D60);

                swift_arrayDestroy();

                v329 = v346;
              }

              else
              {

                v329 = v346;
                v292 = v384;
              }

              sub_1000B3E4C();
              swift_allocError();
              *v330 = 3;
              *(v330 + 8) = 1;
              swift_willThrow();

              sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
              sub_1000B40EC(v329);
              sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
              sub_10000BD44(v106, &qword_1003A1640, &qword_1002C5980);
              goto LABEL_191;
            }

            ++v370;
            sub_1000B40EC(v203);
            v206 = v376;
            sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
            v361(v204, 0, 1, v92);
            sub_1000829AC(v204, v206, &unk_10039E210, &unk_1002C65B0);
          }

LABEL_98:
          memcpy(v412, v413, sizeof(v412));
          v89 = v389;
          countAndFlagsBits = v382;
          object = v383;
          goto LABEL_99;
        }

        v95 = v364;
        sub_100065074(v379, v364, &qword_1003A1640, &qword_1002C5980);
        if ((*v375)(v95, 1, v377) == 1)
        {
          sub_10000BD44(v95, &qword_1003A1640, &qword_1002C5980);
          object = v383;
        }

        else
        {
          v127 = v367;
          sub_1000B4088(v95, v367);
          v128 = v387[29];
          v129 = v387[30];
          sub_10000BE18(v387 + 26, v128);
          v130 = v385;
          (*(v129 + 32))(v127, v128, v129);
          if (v130)
          {
            v385 = 0;
            swift_errorRetain();
            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              *v133 = v347;
              swift_errorRetain();
              v135 = _swift_stdlib_bridgeErrorToNSError();
              *(v133 + 4) = v135;
              *v134 = v135;
              _os_log_impl(&_mh_execute_header, v131, v132, "Could not remove batch: %@", v133, 0xCu);
              sub_10000BD44(v134, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }
          }

          else
          {
            v385 = 0;
          }

          v92 = v386;
          object = v383;
          sub_1000B40EC(v367);
          v89 = v389;
        }

        memcpy(v412, v413, sizeof(v412));
        countAndFlagsBits = v382;
        goto LABEL_31;
      }

      v103 = v92;
      if (v410[0] != 2)
      {
        v124 = v365;
        sub_100065074(v379, v365, &qword_1003A1640, &qword_1002C5980);
        if ((*v375)(v124, 1, v377) == 1)
        {
          sub_10000BD44(v124, &qword_1003A1640, &qword_1002C5980);
          object = v383;
          v92 = v103;
        }

        else
        {
          v384 = v43;
          sub_1000B4088(v124, v363);
          sub_100004074(&unk_1003A3C10, &unk_1002C3760);
          v162 = swift_allocObject();
          v162[2]._countAndFlagsBits = 1635017060;
          v43 = v162 + 2;
          v162[2]._object = 0xE400000000000000;
          v163 = TLV.dataRepresentation.getter();
          v165 = v164;
          v166 = Data.hexString()();
          sub_100009548(v163, v165);
          v162[3] = v166;
          sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
          v167 = static _DictionaryStorage.allocate(capacity:)();

          countAndFlagsBits = v162[2]._countAndFlagsBits;
          object = v162[2]._object;
          v372 = v162[3]._countAndFlagsBits;
          v168 = v162[3]._object;

          v169 = sub_1000F5A28(countAndFlagsBits, object);
          if (v170)
          {
            goto LABEL_226;
          }

          v167[(v169 >> 6) + 8] |= 1 << v169;
          v171 = (v167[6] + 16 * v169);
          *v171 = countAndFlagsBits;
          v171[1] = object;
          v172 = (v167[7] + 16 * v169);
          *v172 = v372;
          v172[1] = v168;
          v173 = v167[2];
          v174 = __OFADD__(v173, 1);
          v175 = v173 + 1;
          if (v174)
          {
            goto LABEL_227;
          }

          v167[2] = v175;

          swift_setDeallocating();
          sub_10000BD44(v43, &qword_10039FE90, &unk_1002C5970);
          swift_deallocClassInstance();
          v176 = v387;
          v177 = *sub_10000BE18(v387 + 36, v387[39]);
          sub_100033A6C(0);
          v179 = v178;
          v180 = v176[29];
          v181 = v176[30];
          sub_10000BE18(v176 + 26, v180);
          v182 = v385;
          (*(v181 + 8))(2753281, v179, v167, v180, v181);
          v385 = v182;
          if (v182)
          {

            v183 = sub_100183EFC(&off_10037E628);
            sub_10000BD44(&unk_10037E648, &qword_10039FE90, &unk_1002C5970);
            v184 = *sub_10000BE18(v176 + 36, v176[39]);
            sub_100033A6C(0);
            v186 = v185;
            v187 = v176[29];
            v188 = v176[30];
            sub_10000BE18(v176 + 26, v187);
            (*(v188 + 8))(2753281, v186, v183, v187, v188);
            v43 = v384;

            swift_errorRetain();
            v189 = Logger.logObject.getter();
            v190 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              *v191 = v347;
              swift_errorRetain();
              v193 = _swift_stdlib_bridgeErrorToNSError();
              *(v191 + 4) = v193;
              *v192 = v193;
              _os_log_impl(&_mh_execute_header, v189, v190, "Failed to store rewrap logs in log flush event: %@", v191, 0xCu);
              sub_10000BD44(v192, &unk_10039E220, &qword_1002C3D60);
            }

            else
            {
            }

            sub_1000B40EC(v363);
            v385 = 0;
          }

          else
          {
            sub_1000B40EC(v363);

            v43 = v384;
          }

          v92 = v386;
          v89 = v389;
          countAndFlagsBits = v382;
          object = v383;
        }

        goto LABEL_30;
      }

      v384 = v43;
      v104 = v366;
      sub_100065074(v376, v366, &unk_10039E210, &unk_1002C65B0);
      if ((v359->isa)(v104, 1, v92) == 1)
      {
        sub_10000BD44(v104, &unk_10039E210, &unk_1002C65B0);
        memcpy(v412, v413, sizeof(v412));
        v374 = 0;
        LODWORD(v378) = 0;
        v373 = 1;
        object = v383;
        v43 = v384;
        goto LABEL_31;
      }

      (v344->isa)(v371, v104, v92);
      if (qword_10039D4D8 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for OSSignposter();
      sub_10000403C(v136, qword_1003A13E0);
      v137 = v368;
      static OSSignpostID.exclusive.getter();
      v138 = OSSignposter.logHandle.getter();
      v139 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        v141 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v138, v139, v141, "monitor-send-logs", "begin send monitoring logs", v140, 2u);
        countAndFlagsBits = v382;
        v137 = v368;
      }

      v142 = v369;
      (*v343)(v354, v137, v369);
      v143 = type metadata accessor for OSSignpostIntervalState();
      v144 = *(v143 + 48);
      v145 = *(v143 + 52);
      swift_allocObject();
      v146 = OSSignpostIntervalState.init(id:isOpen:)();
      v147 = v137;
      v148 = *v358;
      (*v358)(v147, v142);
      sub_1000ACACC(v371, v419);
      v149 = OSSignposter.logHandle.getter();
      v150 = v360;
      OSSignpostIntervalState.signpostID.getter();
      v151 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        v152 = v348;
        checkForErrorAndConsumeState(state:)();

        v153 = (*v339)(v152, v349);
        v154 = "[Error] Interval already ended";
        if (v153 != v338)
        {
          (*v337)(v348, v349);
          v154 = "end send monitoring logs";
        }

        v155 = swift_slowAlloc();
        *v155 = 0;
        v156 = v360;
        v157 = OSSignpostID.rawValue.getter();
        v158 = v154;
        v150 = v156;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v149, v151, v157, "monitor-send-logs", v158, v155, 2u);

        countAndFlagsBits = v382;
      }

      v355 = v146;

      v148(v150, v369);
      v374 = v421;
      v373 = v422;
      memcpy(v409, v419, sizeof(v409));
      memcpy(v410, v419, sizeof(v410));
      if (sub_1000B4148(v410) == 1)
      {
        memcpy(v406, v413, sizeof(v406));
        object = v383;
        v43 = v384;
        v92 = v386;
        v89 = v389;
        v159 = v420;
        if (v420)
        {
LABEL_76:
          *v404 = v159;
          swift_errorRetain();
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v160 = v159;
          if (swift_dynamicCast())
          {
            v372 = v159;
            if (BYTE8(v405[0]) == 1)
            {
              if (*&v405[0] > 7)
              {
                if (*&v405[0] > 10)
                {
                  LODWORD(v378) = 1;
                  if ((*&v405[0] - 12) >= 4)
                  {
                    v161 = 6;
                  }

                  else
                  {
                    v161 = 4;
                  }
                }

                else if (*&v405[0] == 8)
                {
                  LODWORD(v378) = 1;
                  v161 = 10;
                }

                else
                {
                  LODWORD(v378) = 1;
                  if (*&v405[0] == 9)
                  {
                    v161 = 13;
                  }

                  else
                  {
                    v161 = 14;
                  }
                }

                goto LABEL_156;
              }

              if (*&v405[0] <= 2)
              {
                if (*&v405[0] >= 2uLL)
                {
                  LODWORD(v378) = 1;
                  v161 = 12;
                  goto LABEL_156;
                }
              }

              else if ((*&v405[0] - 3) >= 3)
              {
                LODWORD(v378) = 1;
                if (*&v405[0] == 6)
                {
                  v161 = 8;
                }

                else
                {
                  v161 = 9;
                }

                goto LABEL_156;
              }

              LODWORD(v378) = 1;
              v161 = 5;
LABEL_156:
              v384 = v161;
              goto LABEL_157;
            }

            v384 = *&v405[0];
            LODWORD(v378) = 0;
LABEL_157:
            v238 = Logger.logObject.getter();
            v239 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v238, v239))
            {
              v240 = swift_slowAlloc();
              v241 = swift_slowAlloc();
              *&v405[0] = v241;
              *v240 = v350;
              v242 = sub_1000A7598(v384, v378);
              v243 = v43;
              v245 = sub_100008F6C(v242, v244, v405);

              *(v240 + 4) = v245;
              v43 = v243;
              _os_log_impl(&_mh_execute_header, v238, v239, "Monitor Manager got an error during sendLogs: %s", v240, 0xCu);
              sub_10000959C(v241);
              countAndFlagsBits = v382;

              object = v383;
            }

            v246 = v351;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v246 = sub_10004E0BC(0, *(v246 + 2) + 1, 1, v246);
            }

            v248 = *(v246 + 2);
            v247 = *(v246 + 3);
            v351 = v246;
            if (v248 >= v247 >> 1)
            {
              v351 = sub_10004E0BC((v247 > 1), v248 + 1, 1, v351);
            }

            sub_1000B416C(v419);

            v249 = v386;
            (v342->isa)(v371, v386);
            v250 = v351;
            *(v351 + 2) = v248 + 1;
            v251 = &v250[16 * v248];
            v92 = v249;
            *(v251 + 4) = v384;
            v251[40] = v378;
            v89 = v389;
            goto LABEL_164;
          }

          *v404 = v159;
          swift_errorRetain();
          if (swift_dynamicCast())
          {
            v372 = v159;
            v384 = *&v405[0];
            LODWORD(v378) = BYTE8(v405[0]);
            goto LABEL_157;
          }

          swift_errorRetain();
          v378 = Logger.logObject.getter();
          v209 = static os_log_type_t.error.getter();

          LODWORD(v341) = v209;
          v210 = v209;
          v211 = v378;
          if (os_log_type_enabled(v378, v210))
          {
            v212 = swift_slowAlloc();
            v384 = v43;
            v213 = v212;
            v214 = swift_slowAlloc();
            *&v405[0] = v214;
            *v213 = v350;
            swift_getErrorValue();
            v372 = v160;
            v215 = Error.localizedDescription.getter();
            v217 = sub_100008F6C(v215, v216, v405);

            *(v213 + 4) = v217;
            countAndFlagsBits = v382;
            v89 = v389;
            _os_log_impl(&_mh_execute_header, v211, v341, "Faild to map the underlying error: %s", v213, 0xCu);
            sub_10000959C(v214);
            object = v383;

            v43 = v384;

            sub_1000B416C(v419);
          }

          else
          {

            sub_1000B416C(v419);
          }

          v92 = v386;
          (v342->isa)(v371, v386);
LABEL_164:
          memcpy(v412, v406, sizeof(v412));
          LODWORD(v378) = 0;
          goto LABEL_31;
        }

LABEL_135:

        sub_1000B416C(v419);
        (v342->isa)(v371, v92);
        goto LABEL_164;
      }

      memcpy(v424, v410, sizeof(v424));
      memcpy(v405, v409, 0x128uLL);
      sub_100065074(v409, v404, &qword_1003A1648, &qword_1002C5988);
      sub_1000B419C(v405, v404);
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.default.getter();
      sub_10000BD44(v409, &qword_1003A1648, &qword_1002C5988);
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *v404 = v198;
        *v197 = v350;
        v199 = sub_1000B51FC();
        v201 = sub_100008F6C(v199, v200, v404);

        *(v197 + 4) = v201;
        _os_log_impl(&_mh_execute_header, v195, v196, "A&M Backend Response: %s", v197, 0xCu);
        sub_10000959C(v198);
        countAndFlagsBits = v382;
      }

      sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);

      object = v383;
      v43 = v384;
      memcpy(v404, v410, sizeof(v404));
      nullsub_1(v404);
      v341 = v410[36];
      v89 = v389;
      if (v410[36])
      {
        memcpy(v408, v418, 0x110uLL);
        v207 = v417;
        v408[34] = v381;
        v408[35] = v43;
        LOBYTE(v408[36]) = v380;
        BYTE1(v408[36]) = v417;
        if (sub_1000B4148(v408) == 1)
        {
          sub_100031B14(v391);
          memcpy(v407, v391, sizeof(v407));
          v208 = v341;

          sub_10000BD44(v407, &qword_10039F268, &qword_1002C2730);
          LOBYTE(v398[0]) = 1;
          memcpy(v392, v391, 0x110uLL);
          *&v392[272] = v208;
          *&v392[280] = 0;
          v392[288] = 0;
          v392[289] = 1;
          memcpy(v393, v391, sizeof(v393));
          v394 = v208;
          v395 = 0;
          v396 = 0;
          v397 = 1;
          v89 = v389;
          sub_100031B40(v392, v399);
          sub_100031B78(v393);
          memcpy(v398, v392, 0x122uLL);
          nullsub_1(v398);
          memcpy(v399, v418, sizeof(v399));
          v400 = v381;
          v401 = v43;
          v402 = v380;
          v403 = v207;
          sub_10000BD44(v399, &qword_1003A1620, &unk_1002C5960);
          memcpy(v418, v398, sizeof(v418));
          v381 = v398[34];
          v43 = v398[35];
          v380 = LOBYTE(v398[36]);
          v417 = BYTE1(v398[36]);
        }

        else
        {
          memcpy(v399, v418, sizeof(v399));
          v400 = v381;
          v401 = v43;
          v402 = v380;
          v403 = v207;
          v218 = _swiftEmptyArrayStorage;
          if (sub_1000B4148(v399) != 1 && v381)
          {
            v218 = v381;
          }

          v219 = *(v341 + 16);
          if (v219)
          {

            v221 = (isUniquelyReferenced_nonNull_native + 64);
            v222 = v218;
            do
            {
              v223 = *(v221 - 3);
              v224 = *(v221 - 2);
              v225 = *(v221 - 1);
              v226 = *v221;
              v378 = *(v221 - 4);
              v398[0] = v378;
              v398[1] = v223;
              v372 = v224;
              v398[2] = v224;
              v398[3] = v225;
              v398[4] = v226;
              __chkstk_darwin(isUniquelyReferenced_nonNull_native);
              *(&v337 - 2) = v398;

              v227 = v385;
              v228 = sub_10011DADC(sub_1000B41F8, (&v337 - 4), v222);
              v385 = v227;
              if (v228)
              {
              }

              else
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = sub_10004E1BC(0, *(v222 + 16) + 1, 1, v222);
                  v222 = isUniquelyReferenced_nonNull_native;
                }

                v230 = *(v222 + 16);
                v229 = *(v222 + 24);
                v231 = v222;
                if (v230 >= v229 >> 1)
                {
                  isUniquelyReferenced_nonNull_native = sub_10004E1BC((v229 > 1), v230 + 1, 1, v222);
                  v231 = isUniquelyReferenced_nonNull_native;
                }

                *(v231 + 16) = v230 + 1;
                v222 = v231;
                v232 = (v231 + 40 * v230);
                v232[4] = v378;
                v232[5] = v223;
                v232[6] = v372;
                v232[7] = v225;
                v232[8] = v226;
              }

              v221 += 5;
              --v219;
            }

            while (v219);
            v218 = v222;

            v207 = v417;
            v43 = v384;
            v89 = v389;
            countAndFlagsBits = v382;
          }

          memcpy(v398, v418, 0x110uLL);
          v398[34] = v381;
          v398[35] = v43;
          LOBYTE(v398[36]) = v380;
          BYTE1(v398[36]) = v207;
          v235 = sub_1000B4148(v398);
          object = v383;
          if (v235 != 1)
          {

            memcpy(v406, v404, sizeof(v406));
            v381 = v218;
LABEL_134:
            v92 = v386;
            v159 = v420;
            if (v420)
            {
              goto LABEL_76;
            }

            goto LABEL_135;
          }
        }
      }

      memcpy(v406, v404, sizeof(v406));
      goto LABEL_134;
    }

    if (v410[0] > 5)
    {
      if (v410[0] == 6)
      {
        v96 = Logger.logObject.getter();
        v105 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v96, v105))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          v99 = v105;
          v100 = v96;
          v101 = "Time sync failed";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v100, v99, v101, v98, 2u);
          v92 = v386;
        }

        goto LABEL_28;
      }

      memcpy(v410, v413, sizeof(v410));
      if (sub_1000B4148(v410) == 1)
      {
        goto LABEL_30;
      }

      memcpy(v399, v410, sizeof(v399));
      if (sub_100031A30(v399) == 1 || LOBYTE(v410[35]) == 1)
      {
        goto LABEL_30;
      }

      v384 = v43;
      v125 = v410[34] + -300.0;
      sub_100065074(v413, v409, &qword_1003A1648, &qword_1002C5988);
      sub_100065074(v410, v409, &qword_10039F268, &qword_1002C2730);
      sub_1000B2B84(v125);
      if (v126)
      {
        sub_10000BD44(v410, &qword_10039F268, &qword_1002C2730);
        sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
        goto LABEL_98;
      }

      memcpy(v409, v418, 0x110uLL);
      v233 = v417;
      *&v409[272] = v381;
      v234 = v384;
      *&v409[280] = v384;
      v409[288] = v380;
      v409[289] = v417;
      if (sub_1000B4148(v409) == 1)
      {
        memcpy(v407, v399, sizeof(v407));
        nullsub_1(v407);
        sub_100031B14(v392);
        memcpy(v393, v392, sizeof(v393));
        memcpy(v398, v410, 0x110uLL);
        sub_100034958(v398, v406);
        sub_10000BD44(v393, &qword_10039F268, &qword_1002C2730);
        LOBYTE(v405[0]) = 1;
        memcpy(v408, v407, 0x110uLL);
        v408[34] = 0;
        v408[35] = 0;
        LOWORD(v408[36]) = 256;
        memcpy(v404, v407, 0x110uLL);
        memset(&v404[272], 0, 17);
        v404[289] = 1;
        v92 = v386;
        sub_100031B40(v408, v406);
        sub_100031B78(v404);
        memcpy(v405, v408, 0x122uLL);
        nullsub_1(v405);
        memcpy(v406, v418, 0x110uLL);
        v406[34] = v381;
        v406[35] = v234;
        LOBYTE(v406[36]) = v380;
        BYTE1(v406[36]) = v233;
        sub_10000BD44(v406, &qword_1003A1620, &unk_1002C5960);
        memcpy(v418, v405, sizeof(v418));
        v384 = *(&v405[17] + 1);
        v381 = *&v405[17];
        v380 = LOBYTE(v405[18]);
        v417 = BYTE1(v405[18]);
        countAndFlagsBits = v382;
        object = v383;
      }

      else
      {
        memcpy(v406, v418, 0x110uLL);
        v406[34] = v381;
        v406[35] = v234;
        LOBYTE(v406[36]) = v380;
        BYTE1(v406[36]) = v233;
        v236 = sub_1000B4148(v406);
        countAndFlagsBits = v382;
        object = v383;
        if (v236 != 1)
        {
          memcpy(v408, v399, 0x110uLL);
          nullsub_1(v408);
          memcpy(v404, v418, 0x110uLL);
          memcpy(v405, v410, 0x110uLL);
          sub_100034958(v405, v398);
          sub_10000BD44(v404, &qword_10039F268, &qword_1002C2730);
          memcpy(v418, v408, sizeof(v418));
        }
      }

      v237 = v385;
      sub_1000B2850();
      v385 = v237;
      if (v237)
      {

        sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
        sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
        sub_10000BD44(v410, &qword_10039F268, &qword_1002C2730);
        sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
        sub_10000BD44(v379, &qword_1003A1640, &qword_1002C5980);

LABEL_223:
        v292 = v384;
        goto LABEL_191;
      }

      sub_10000BD44(v410, &qword_10039F268, &qword_1002C2730);
      sub_10000BD44(v413, &qword_1003A1648, &qword_1002C5988);
      memcpy(v412, v413, sizeof(v412));
      v89 = v389;
LABEL_99:
      v43 = v384;
      goto LABEL_31;
    }

    if (v410[0] == 4)
    {
      memcpy(v410, v418, 0x110uLL);
      v102 = v417;
      v410[34] = v381;
      v410[35] = v43;
      LOBYTE(v410[36]) = v380;
      BYTE1(v410[36]) = v417;
      if (sub_1000B4148(v410) != 1)
      {
        memcpy(v409, v418, 0x110uLL);
        *&v409[272] = v381;
        *&v409[280] = v43;
        v409[288] = v380;
        v409[289] = v102;
        if (sub_1000B4148(v409) != 1)
        {
          sub_100031B14(v405);
          memcpy(v406, v418, 0x110uLL);
          sub_10000BD44(v406, &qword_10039F268, &qword_1002C2730);
          memcpy(v418, v405, sizeof(v418));
        }

        goto LABEL_30;
      }

      if (qword_10039D340 != -1)
      {
        swift_once();
      }

      memcpy(v405, &unk_1003A6940, 0x122uLL);
      memcpy(v406, &unk_1003A6940, 0x122uLL);
      nullsub_1(v406);
      memcpy(v409, v418, 0x110uLL);
      *&v409[272] = v381;
      *&v409[280] = v43;
      v409[288] = v380;
      v409[289] = v102;
      sub_100031B40(v405, v404);
      sub_10000BD44(v409, &qword_1003A1620, &unk_1002C5960);
      memcpy(v418, v406, sizeof(v418));
      v381 = v406[34];
      v43 = v406[35];
      v380 = LOBYTE(v406[36]);
      v417 = BYTE1(v406[36]);
      memcpy(v412, v413, sizeof(v412));
      object = v383;
    }

    else
    {
      v384 = v43;
      v112 = v387;
      v113 = *sub_10000BE18(v387 + 36, v387[39]);
      sub_100033A6C(222);
      v115 = v114;
      v116 = v112[29];
      v117 = v112[30];
      sub_10000BE18(v112 + 26, v116);
      v118 = v385;
      (*(v117 + 8))(3736321, v115, &_swiftEmptyDictionarySingleton, v116, v117);
      if (v118)
      {
        swift_errorRetain();
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *v121 = v347;
          swift_errorRetain();
          v123 = _swift_stdlib_bridgeErrorToNSError();
          *(v121 + 4) = v123;
          *v122 = v123;
          _os_log_impl(&_mh_execute_header, v119, v120, "Failed to store complete attestation event: %@", v121, 0xCu);
          sub_10000BD44(v122, &unk_10039E220, &qword_1002C3D60);
          object = v383;
        }

        else
        {
        }

        memcpy(v412, v413, sizeof(v412));
        v385 = 0;
      }

      else
      {
        v385 = 0;
        memcpy(v412, v413, sizeof(v412));
      }

      v92 = v386;
      v43 = v384;
      v89 = v389;
      countAndFlagsBits = v382;
    }

LABEL_31:
    if (++v94 == countAndFlagsBits)
    {
      break;
    }

    memcpy(v413, v412, sizeof(v413));
    v93 = v390;
    if (v94 >= v89[2])
    {
      goto LABEL_186;
    }
  }

  if (v378)
  {
    memcpy(v414, v412, sizeof(v414));
    v89 = _swiftEmptyArrayStorage;
    v93 = v390;
    countAndFlagsBits = _swiftEmptyArrayStorage[2];
    if (countAndFlagsBits)
    {
      goto LABEL_176;
    }
  }

  else
  {
    v252 = Logger.logObject.getter();
    v253 = static os_log_type_t.default.getter();
    v254 = os_log_type_enabled(v252, v253);
    v384 = v43;
    if (v254)
    {
      v255 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v410[0] = v256;
      *v255 = v350;
      v257 = v373 & 1;
      v258 = v374;
      v259 = sub_1000A7168(v374, v373 & 1);
      v261 = sub_100008F6C(v259, v260, v410);

      *(v255 + 4) = v261;
      _os_log_impl(&_mh_execute_header, v252, v253, "MonitorManager got a %s event", v255, 0xCu);
      sub_10000959C(v256);

      v262 = v353;
    }

    else
    {

      v257 = v373 & 1;
      v262 = v353;
      v258 = v374;
    }

    v389 = sub_1000B3C54(v258, v257, v262);

    v263 = Logger.logObject.getter();
    v264 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v263, v264))
    {
      v265 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      *v409 = v266;
      *v265 = v350;
      v267 = *(v262 + 56);
      os_unfair_lock_lock(v267 + 14);
      sub_10000CCE4(&v267[4], v410);
      os_unfair_lock_unlock(v267 + 14);
      v268 = v410[3];
      v269 = v410[4];
      sub_10000BE18(v410, v410[3]);
      v270 = (*(v269 + 32))(v268, v269);
      v272 = v271;
      sub_10000959C(v410);
      v273 = sub_100008F6C(v270, v272, v409);

      *(v265 + 4) = v273;
      _os_log_impl(&_mh_execute_header, v263, v264, "MonitorManager is at the %s state", v265, 0xCu);
      sub_10000959C(v266);
    }

    memcpy(v414, v412, sizeof(v414));
    v43 = v384;
    v92 = v386;
    v89 = v389;
    v93 = v390;
    countAndFlagsBits = *(v389 + 16);
    if (countAndFlagsBits)
    {
      goto LABEL_176;
    }
  }

LABEL_178:

  if (v370 <= 0)
  {
    goto LABEL_187;
  }

  v384 = v43;
  v275 = v379;
  v276 = sub_100183EFC(_swiftEmptyArrayStorage);
  v277 = v387;
  v278 = *sub_10000BE18(v387 + 36, v387[39]);
  sub_100033A6C(222);
  v280 = v279;
  v281 = v277[29];
  v282 = v277[30];
  sub_10000BE18(v277 + 26, v281);
  v283 = v385;
  (*(v282 + 8))(3736321, v280, v276, v281, v282);
  if (v283)
  {

    swift_errorRetain();
    v284 = Logger.logObject.getter();
    v285 = static os_log_type_t.default.getter();
    v390 = v283;

    if (os_log_type_enabled(v284, v285))
    {
      v286 = swift_slowAlloc();
      v287 = swift_slowAlloc();
      *v286 = v347;
      swift_errorRetain();
      v288 = _swift_stdlib_bridgeErrorToNSError();
      *(v286 + 4) = v288;
      *v287 = v288;
      _os_log_impl(&_mh_execute_header, v284, v285, "Could not store complete attestation event: %@", v286, 0xCu);
      sub_10000BD44(v287, &unk_10039E220, &qword_1002C3D60);
    }

    memcpy(v413, v418, 0x110uLL);
    v289 = v417;
    v413[34] = v381;
    v292 = v384;
    v413[35] = v384;
    LOBYTE(v413[36]) = v380;
    BYTE1(v413[36]) = v417;
    v290 = v275;
    if (sub_1000B4148(v413) == 1)
    {
      if (qword_10039D340 != -1)
      {
        swift_once();
      }

      memcpy(v409, &unk_1003A6940, 0x122uLL);
      memcpy(v410, &unk_1003A6940, 0x122uLL);
      nullsub_1(v410);
      memcpy(v412, v418, 0x110uLL);
      v412[34] = v381;
      v412[35] = v384;
      LOBYTE(v412[36]) = v380;
      BYTE1(v412[36]) = v289;
      sub_100031B40(v409, v406);
      sub_10000BD44(v412, &qword_1003A1620, &unk_1002C5960);
      memcpy(v418, v410, sizeof(v418));
      v381 = v410[34];
      v292 = v410[35];
      v380 = LOBYTE(v410[36]);
      v417 = BYTE1(v410[36]);
    }

    else
    {
      memcpy(v412, v418, 0x110uLL);
      v412[34] = v381;
      v412[35] = v292;
      LOBYTE(v412[36]) = v380;
      BYTE1(v412[36]) = v289;
      if (sub_1000B4148(v412) != 1)
      {
        sub_100031B14(v409);
        memcpy(v410, v418, 0x110uLL);
        sub_10000BD44(v410, &qword_10039F268, &qword_1002C2730);
        memcpy(v418, v409, sizeof(v418));
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v351 = sub_10004E0BC(0, *(v351 + 2) + 1, 1, v351);
    }

    v313 = *(v351 + 2);
    v312 = *(v351 + 3);
    if (v313 >= v312 >> 1)
    {
      v351 = sub_10004E0BC((v312 > 1), v313 + 1, 1, v351);
    }

    v311 = v351;
    *(v351 + 2) = v313 + 1;
    v314 = &v311[16 * v313];
    *(v314 + 4) = 7;
    v314[40] = 1;
  }

  else
  {

    v290 = v275;
    v292 = v384;
    v311 = v351;
  }

  v315 = v311 + 16;
  v316 = *(v311 + 2);
  if (!v316)
  {
    goto LABEL_210;
  }

  memcpy(v413, v418, 0x110uLL);
  v317 = v417;
  v413[34] = v381;
  v413[35] = v292;
  LOBYTE(v413[36]) = v380;
  BYTE1(v413[36]) = v417;
  if (sub_1000B4148(v413) == 1)
  {
    v318 = &v315[16 * v316];
    v319 = *v318;
    v320 = v318[8];

    sub_100031B14(v404);
    memcpy(v405, v404, 0x110uLL);
    sub_10000BD44(v405, &qword_10039F268, &qword_1002C2730);
    LOBYTE(v410[0]) = 0;
    memcpy(v406, v404, 0x110uLL);
    v406[34] = 0;
    v406[35] = v319;
    LOWORD(v406[36]) = v320;
    memcpy(v409, v404, 0x110uLL);
    *&v409[272] = 0;
    *&v409[280] = v319;
    v409[288] = v320;
    v409[289] = 0;
    sub_100031B40(v406, v412);
    sub_100031B78(v409);
    memcpy(v410, v406, 0x122uLL);
    nullsub_1(v410);
    memcpy(v412, v418, 0x110uLL);
    v412[34] = v381;
    v412[35] = v292;
    LOBYTE(v412[36]) = v380;
    BYTE1(v412[36]) = v417;
    sub_10000BD44(v412, &qword_1003A1620, &unk_1002C5960);
    memcpy(v418, v410, sizeof(v418));
    v381 = v410[34];
    v292 = v410[35];
    v380 = LOBYTE(v410[36]);
    v417 = BYTE1(v410[36]);
    goto LABEL_216;
  }

  memcpy(v412, v418, 0x110uLL);
  v412[34] = v381;
  v412[35] = v292;
  LOBYTE(v412[36]) = v380;
  BYTE1(v412[36]) = v317;
  if (sub_1000B4148(v412) != 1)
  {
    memcpy(v410, v418, 0x110uLL);
    if (sub_100031A30(v410) != 1)
    {
      goto LABEL_210;
    }
  }

  memcpy(v410, v418, 0x110uLL);
  v410[34] = v381;
  v410[35] = v292;
  LOBYTE(v410[36]) = v380;
  BYTE1(v410[36]) = v317;
  if (sub_1000B4148(v410) != 1)
  {
    v331 = &v315[16 * v316];
    v332 = *v331;
    v380 = v331[8];
    v292 = v332;

    v417 = 0;
  }

  else
  {
LABEL_210:
  }

LABEL_216:
  memcpy(v412, v418, 0x110uLL);
  v412[34] = v381;
  v412[35] = v292;
  LOBYTE(v412[36]) = v380;
  v333 = v417;
  BYTE1(v412[36]) = v417;
  memcpy(v413, v412, 0x122uLL);
  if (sub_1000B4148(v413) != 1)
  {
    memcpy(v423, v413, 0x122uLL);
    v334 = *sub_10000BE18(v387 + 36, v387[39]);
    memcpy(v410, v412, 0x122uLL);
    sub_100031B40(v410, v409);
    sub_10003385C(v423);
    sub_10000BD44(v412, &qword_1003A1620, &unk_1002C5960);
  }

  memcpy(v410, v418, 0x110uLL);
  v410[34] = v381;
  v410[35] = v292;
  LOBYTE(v410[36]) = v380;
  BYTE1(v410[36]) = v333;
  if (sub_1000B4148(v410) != 1 && (v333 & 1) == 0)
  {
    sub_1000B3E4C();
    swift_allocError();
    *v335 = v292;
    *(v335 + 8) = v380 & 1;
    swift_willThrow();
    sub_10000BD44(v414, &qword_1003A1648, &qword_1002C5988);
    sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
    sub_10000BD44(v290, &qword_1003A1640, &qword_1002C5980);
    goto LABEL_191;
  }

  sub_10000BD44(v414, &qword_1003A1648, &qword_1002C5988);
  sub_10000BD44(v376, &unk_10039E210, &unk_1002C65B0);
  sub_10000BD44(v290, &qword_1003A1640, &qword_1002C5980);
  memcpy(v409, v418, 0x110uLL);
  *&v409[272] = v381;
  *&v409[280] = v292;
  v409[288] = v380;
  v409[289] = v333;
  sub_10000BD44(v409, &qword_1003A1620, &unk_1002C5960);
}

void *sub_1000ACACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v3[34];
  v7 = v3[35];
  sub_10000BE18(v3 + 31, v6);
  (*(v7 + 8))(__src, a1, v6, v7);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100031A30(__dst) == 1 || (__src[35] & 1) != 0 || (sub_1000B2B84(__src[34] + -300.0), (v8 & 1) != 0))
  {
    memcpy(v13, __src, sizeof(v13));
    nullsub_1(v13);
    sub_1000B3E4C();
    v9 = swift_allocError();
    *v10 = 7;
    *(v10 + 8) = 1;
    memcpy(v16, v13, sizeof(v16));
    v11 = 2;
  }

  else
  {
    memcpy(v13, __src, sizeof(v13));
    nullsub_1(v13);
    memcpy(v16, v13, sizeof(v16));
    v9 = 0;
    v11 = 1;
  }

  v13[0] = 1;
  result = memcpy(a2, v16, 0x128uLL);
  *(a2 + 296) = v9;
  *(a2 + 304) = v11;
  *(a2 + 312) = v13[0];
  return result;
}

id sub_1000ACE38@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v3 = v2;
  v103 = a2;
  v4 = type metadata accessor for TLVTag();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v104 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v105 = v92 - v9;
  v10 = __chkstk_darwin(v8);
  v113 = v92 - v11;
  v12 = __chkstk_darwin(v10);
  v114 = v92 - v13;
  __chkstk_darwin(v12);
  AssociatedTypeWitness = v92 - v14;
  v115 = type metadata accessor for TLV();
  v111 = *(v115 - 8);
  v15 = *(v111 + 64);
  v16 = __chkstk_darwin(v115);
  v18 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v110 = v92 - v19;
  v20 = type metadata accessor for OSSignpostID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v92 - v26;
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v102 = v18;
  v28 = type metadata accessor for OSSignposter();
  sub_10000403C(v28, qword_1003A13E0);
  static OSSignpostID.exclusive.getter();
  v29 = OSSignposter.logHandle.getter();
  v30 = static os_signpost_type_t.begin.getter();
  v31 = OS_os_log.signpostsEnabled.getter();
  v109 = v3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v33, "monitor-sign-logs", "begin signing monitoring logs", v32, 2u);
    v3 = v109;
  }

  (*(v21 + 16))(v25, v27, v20);
  v34 = type metadata accessor for OSSignpostIntervalState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v21 + 8))(v27, v20);
  result = [*(*sub_10000BE18(v3 + 19 v3[22]) + 16)];
  if (result)
  {
    v39 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = Data.init(hexString:)();
    if (v41 >> 60 == 15)
    {
      if (qword_10039D4D0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000403C(v42, qword_1003A13C8);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Could not get secure element serial number", v45, 2u);
      }

      sub_1000B3E4C();
      swift_allocError();
      *v46 = 2;
      *(v46 + 8) = 1;
      swift_willThrow();
      goto LABEL_16;
    }

    v47 = v40;
    v48 = v41;
    static TLVTag.asn1Sequence.getter();
    v49 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v50 = v111;
    v51 = *(v111 + 72);
    v52 = *(v111 + 80);
    v53 = (v52 + 32) & ~v52;
    v98 = 3 * v51;
    v95 = v52;
    v96 = v49;
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1002C1790;
    v112 = v53;
    v55 = v54 + v53;
    sub_1000094F4(v47, v48);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    v56 = *(v50 + 16);
    v57 = v106;
    v106 = (v50 + 16);
    v97 = v56;
    v56(&v51[v55], v57, v115);
    static TLVTag.asn1IA5String.getter();
    v58 = v109;
    v59 = *sub_10000BE18(v109 + 36, v109[39]);
    sub_100034704(v117);
    memcpy(v118, v117, 0x110uLL);
    v60 = sub_100031A30(v118);
    v100 = v48;
    v101 = v37;
    v99 = v47;
    if (v60 != 1)
    {
    }

    v94 = 2 * v51;
    TLV.init(tag:string:)();
    TLV.init(tag:children:)();
    v61 = v58;
    v62 = v58[24];
    v113 = v51;
    v63 = v61[25];
    ObjectType = swift_getObjectType();
    v65 = TLV.dataRepresentation.getter();
    v67 = v66;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v109 = v92;
    v68 = *(AssociatedTypeWitness - 1);
    v69 = *(v68 + 64);
    __chkstk_darwin(AssociatedTypeWitness);
    v71 = v107;
    v72 = sub_100155D44(v92 - v70, v65, v67, 1u, ObjectType, v63);
    if (v71)
    {
      (*(v111 + 8))(v110, v115);
      sub_10001A074(v99, v100);
      sub_100009548(v65, v67);
LABEL_16:
      sub_1000AD8D0();
    }

    v92[1] = 0;
    v93 = v72;
    v107 = v73;
    sub_100009548(v65, v67);
    v74 = AssociatedTypeWitness;
    v116[3] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v116[4] = AssociatedConformanceWitness;
    sub_10000BE5C(v116);
    v76 = v74;
    (*(v68 + 32))();
    static TLVTag.asn1Sequence.getter();
    v77 = v112;
    v78 = v113;
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1002C1680;
    v109 = v79;
    v80 = v79 + v77;
    v119 = 1;
    static TLVTag.asn1Integer.getter();
    sub_10000A114();
    sub_1000B3FE0();
    TLV.init<A>(tag:integer:)();
    v81 = v110;
    v97(&v78[v80], v110, v115);
    (*(AssociatedConformanceWitness + 48))(v76, AssociatedConformanceWitness);
    static TLVTag.asn1OctetString.getter();
    v106 = v80;
    TLV.init(tag:octetString:)();
    static TLVTag.asn1Sequence.getter();
    v82 = (*(AssociatedConformanceWitness + 56))(v76, AssociatedConformanceWitness);
    v83 = *(v82 + 16);
    if (v83)
    {
      v119 = _swiftEmptyArrayStorage;
      sub_10004E380(0, v83, 0);
      v84 = v119;
      v85 = (v111 + 32);
      AssociatedTypeWitness = v82;
      v86 = (v82 + 40);
      v87 = v102;
      do
      {
        sub_1000094F4(*(v86 - 1), *v86);
        static TLVTag.asn1OctetString.getter();
        TLV.init(tag:octetString:)();
        v119 = v84;
        v89 = *(v84 + 16);
        v88 = *(v84 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_10004E380(v88 > 1, v89 + 1, 1);
          v84 = v119;
        }

        v86 += 2;
        *(v84 + 16) = v89 + 1;
        (*v85)(v84 + v112 + v89 * v113, v87, v115);
        --v83;
      }

      while (v83);

      v81 = v110;
    }

    else
    {
    }

    TLV.init(tag:children:)();
    v90 = v93;
    v91 = v107;
    sub_1000094F4(v93, v107);
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:octetString:)();
    TLV.init(tag:children:)();
    sub_100009548(v90, v91);
    sub_10001A074(v99, v100);
    (*(v111 + 8))(v81, v115);
    sub_10000959C(v116);
    sub_1000AD8D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AD8D0()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A13E0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end signing monitoring logs";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "monitor-sign-logs", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000ADB5C(char a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A13C8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_1000A7D74();
    v11 = sub_100008F6C(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1002C1660;
    *(v12 + 56) = &type metadata for MPOCOperationMode;
    *(v12 + 32) = a1 & 1;
    v13 = showFunction(signature:_:)(0x6F4D686374697773, 0xEF293A6F74286564, v12);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v20);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = v2[3];
  __chkstk_darwin(v17);
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000ADE18(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  if (*(a1 + 48) == (a2 & 1))
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A13C8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100008F6C(v26, v27, &v33);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      if (a2)
      {
        v29 = 0x656E696C66666FLL;
      }

      else
      {
        v29 = 0x656E696C6E6FLL;
      }

      if (a2)
      {
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE600000000000000;
      }

      v31 = sub_100008F6C(v29, v30, &v33);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Already in %s mode.", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    *(a1 + 48) = v3;
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    sub_10000BE18((a1 + 72), v5);
    if (qword_10039D4E0 != -1)
    {
      swift_once();
    }

    v7 = qword_1003A6B88;
    v8 = unk_1003A6B90;
    sub_100004074(&qword_10039E2E0, &qword_1002C1720);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C1660;
    *(v9 + 32) = v3;
    v10 = sub_10014B8C8(v9);
    v32 = v3;
    v12 = v11;

    (*(v6 + 40))(v7, v8, v10, v12, v5, v6);
    sub_100009548(v10, v12);
    if (!v2)
    {
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      *(inited + 32) = 1701080941;
      *(inited + 40) = 0xE400000000000000;
      LOBYTE(v33) = *(a1 + 48);
      sub_1000B3F8C();
      *(inited + 48) = BinaryInteger.description.getter();
      *(inited + 56) = v14;
      v15 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
      v16 = *sub_10000BE18((a1 + 288), *(a1 + 312));
      sub_100033A6C(206);
      v18 = v17;
      v19 = *(a1 + 232);
      v20 = *(a1 + 240);
      sub_10000BE18((a1 + 208), v19);
      (*(v20 + 8))(3801857, v18, v15, v19, v20);

      *(*(a1 + 328) + 64) = v32;
    }
  }
}

void sub_1000AE1FC()
{
  v1 = v0;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v70 - 8);
  isa = v72[8].isa;
  __chkstk_darwin(v70);
  v69 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v68 = *(v71 - 8);
  v4 = *(v68 + 64);
  __chkstk_darwin(v71);
  v67 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v61 - v12;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A13C8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v65 = v7;
    v19 = v18;
    aBlock = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_1000A7D74();
    v22 = sub_100008F6C(v20, v21, &aBlock);
    v64 = v0;
    v23 = v13;
    v24 = v11;
    v25 = v6;
    v26 = v15;
    v27 = v22;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    v28 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v30 = sub_100008F6C(v28, v29, &aBlock);

    *(v19 + 14) = v30;
    v15 = v26;
    v6 = v25;
    v11 = v24;
    v13 = v23;
    v1 = v64;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();

    v7 = v65;
  }

  if (*(v1 + 16))
  {
    v72 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v72, v31, "Background process already started", v32, 2u);
    }

    v33 = v72;
  }

  else
  {
    *(v1 + 16) = 1;
    if (qword_10039D4D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSSignposter();
    sub_10000403C(v34, qword_1003A13E0);
    static OSSignpostID.exclusive.getter();
    v35 = OSSignposter.logHandle.getter();
    v36 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v38, "start-monitoring", "begin start monitoring", v37, 2u);
    }

    (*(v7 + 16))(v11, v13, v6);
    v39 = type metadata accessor for OSSignpostIntervalState();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v65 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v7 + 8))(v13, v6);
    v42 = sub_100183EFC(_swiftEmptyArrayStorage);
    v43 = *sub_10000BE18((v1 + 288), *(v1 + 312));
    sub_100033A6C(222);
    v45 = v44;
    v46 = *(v1 + 232);
    v47 = *(v1 + 240);
    sub_10000BE18((v1 + 208), v46);
    (*(v47 + 8))(3736321, v45, v42, v46, v47);
    v66 = v15;

    v48 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v50 = swift_allocObject();
    swift_weakInit();
    v78 = sub_1000B5120;
    v79 = v50;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100003974;
    v77 = &unk_1003827A0;
    v51 = _Block_copy(&aBlock);

    v52 = v67;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
    v53 = v69;
    sub_1000039BC();
    v63 = ObjectType;
    v64 = v48;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v51);
    v54 = v72[1].isa;
    ++v72;
    v62 = v54;
    v55 = v70;
    (v54)(v53, v70);
    v68 = *(v68 + 8);
    (v68)(v52, v71);

    v61[1] = *(v1 + 24);
    v56 = swift_allocObject();
    swift_weakInit();
    v78 = sub_1000B3F4C;
    v79 = v56;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100003974;
    v77 = &unk_1003827C8;
    v57 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v73 = _swiftEmptyArrayStorage;
    sub_1000B4F88(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10000BEC0(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v57);
    v62(v53, v55);
    (v68)(v52, v71);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Background process started", v60, 2u);
    }

    OS_dispatch_source.resume()();
    sub_1000AEC40();
  }
}

uint64_t sub_1000AEC40()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A13E0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end start monitoring";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "start-monitoring", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000AEECC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000AFA74();
  }

  return result;
}

void sub_1000AEF24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000403C(v16, qword_1003A13C8);

  v60 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = v3;
    aBlock[0] = v21;
    *v20 = 136315394;
    v22 = sub_1000A7D74();
    v24 = sub_100008F6C(v22, v23, aBlock);
    v53 = v1;
    v25 = v15;
    v26 = v13;
    v27 = v6;
    v28 = v2;
    v29 = v24;

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    v30 = showFunction(signature:_:)(0x2928706F7473, 0xE600000000000000, _swiftEmptyArrayStorage);
    v32 = sub_100008F6C(v30, v31, aBlock);

    *(v20 + 14) = v32;
    v2 = v28;
    v6 = v27;
    v13 = v26;
    v15 = v25;
    v1 = v53;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
    v3 = v54;
  }

  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
    if (qword_10039D4D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for OSSignposter();
    sub_10000403C(v33, qword_1003A13E0);
    static OSSignpostID.exclusive.getter();
    v34 = OSSignposter.logHandle.getter();
    v35 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v35, v37, "stop-monitoring", "begin stop monitoring", v36, 2u);
    }

    v39 = v55;
    v38 = v56;
    (*(v55 + 16))(v13, v15, v56);
    v40 = type metadata accessor for OSSignpostIntervalState();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    (*(v39 + 8))(v15, v38);
    v43 = *(v1 + 32);
    swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100382750;
    v44 = _Block_copy(aBlock);
    v45 = v57;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
    v46 = v59;
    sub_1000039BC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v44);
    (*(v3 + 8))(v46, v2);
    (*(v58 + 8))(v45, v6);
    OS_dispatch_source.suspend()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Background process stopped", v49, 2u);
    }

    sub_1000AF5E4();
  }

  else
  {
    v60 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v60, v50, "Background process already stopped", v51, 2u);
    }

    v52 = v60;
  }
}

uint64_t sub_1000AF5E4()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A13E0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end stop monitoring";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "stop-monitoring", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000AF870()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A13C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000010, 0x800000010034B070, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[3];
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000AFA74()
{
  v1 = v0;
  if (qword_10039D768 != -1)
  {
    swift_once();
  }

  if ((*(static Terminator.shared + 16) & 1) == 0)
  {
    v5 = sub_100183EFC(_swiftEmptyArrayStorage);
    v6 = *sub_10000BE18((v0 + 288), *(v0 + 312));
    sub_100033A6C(206);
    v8 = v7;
    v9 = *(v1 + 232);
    v10 = *(v1 + 240);
    sub_10000BE18((v1 + 208), v9);
    (*(v10 + 8))(1311489, v8, v5, v9, v10);

    if (*(v1 + 48) == 1)
    {
      if ((sub_1000B04D8() & 1) == 0)
      {
        return;
      }
    }

    else if ((sub_1000AFEF8() & 1) == 0)
    {
      return;
    }

    v11 = sub_100183EFC(_swiftEmptyArrayStorage);
    v12 = *sub_10000BE18((v1 + 288), *(v1 + 312));
    sub_100033A6C(206);
    v14 = v13;
    v15 = *(v1 + 232);
    v16 = *(v1 + 240);
    sub_10000BE18((v1 + 208), v15);
    (*(v16 + 8))(1377025, v14, v11, v15, v16);

    return;
  }

  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Attestation cancelled: shutdown in progress", v4, 2u);
  }
}

uint64_t sub_1000AFEF8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = __chkstk_darwin(v3);
  v48 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v47 = &v45 - v7;
  v8 = type metadata accessor for DispatchTime();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A13C8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100008F6C(v19, v20, v51);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD00000000000001ALL, 0x800000010034B050, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, v51);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v25 = v1[7];
  v26 = sub_100183EFC(_swiftEmptyArrayStorage);
  v27 = *sub_10000BE18(v1 + 36, v1[39]);
  sub_100033A6C(222);
  v29 = v28;
  v30 = v1[29];
  v31 = v1[30];
  sub_10000BE18(v1 + 26, v30);
  (*(v31 + 8))(3736321, v29, v26, v30, v31);

  sub_1000A8D1C(v32);
  if (v1[47])
  {
    v42 = v1[48];
    v43 = v1[47];
    ObjectType = swift_getObjectType();
    (*(v42 + 8))(0, ObjectType, v42);
  }

  v33 = v1[4];
  swift_getObjectType();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v45 + 8);
  v35 = v12;
  v36 = v46;
  v34(v35, v46);
  v37 = v47;
  sub_100146FDC(v47);
  v38 = v48;
  sub_100147050(v48);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v39 = v50;
  v40 = *(v49 + 8);
  v40(v38, v50);
  v40(v37, v39);
  v34(v14, v36);
  return 1;
}

uint64_t sub_1000B04D8()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  v4 = __chkstk_darwin(v2);
  v63 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v62 = &v58 - v6;
  v7 = type metadata accessor for DispatchTime();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v58 - v12;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A13C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_100008F6C(v17, v18, v74);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034B030, _swiftEmptyArrayStorage);
    v22 = sub_100008F6C(v20, v21, v74);

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000B3E14(v73);
  v23 = v67;
  v24 = *sub_10000BE18(v67 + 36, v67[39]);
  sub_100033A6C(222);
  v26 = v25;
  v27 = v23[29];
  v28 = v23[30];
  sub_10000BE18(v23 + 26, v27);
  v29 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(v28 + 8))(3736321, v26, v29, v27, v28);
  v66 = 1;

  memcpy(v72, v73, 0x122uLL);
  v30 = v67;
  v31 = *sub_10000BE18(v30 + 36, v30[39]);
  if (sub_100032BAC(v26, v30[8]))
  {
    v58 = 0;
    memcpy(v74, v72, 0x122uLL);
    if (sub_1000B4148(v74) == 1)
    {
      v32 = v72;
      goto LABEL_15;
    }

    v38 = v74[36];
    v39 = BYTE1(v74[36]);
    v40 = v74[35];
    v41 = v74[34];
    memcpy(v71, v72, 0x122uLL);
    sub_100031B40(v71, v69);
    memcpy(v69, v72, 0x122uLL);
    memcpy(v70, v74, sizeof(v70));
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Offline attestation failed to validate complete attestation data, clearing attestation token", v35, 2u);
    }

    if (qword_10039D340 != -1)
    {
      swift_once();
    }

    memcpy(v71, &unk_1003A6940, 0x122uLL);
    sub_100031B40(v71, v74);
    sub_10000BD44(v72, &qword_1003A1620, &unk_1002C5960);
    memcpy(v74, v71, 0x122uLL);
    nullsub_1(v74);
    sub_1000B3E4C();
    v36 = swift_allocError();
    *v37 = 7;
    *(v37 + 8) = 1;

    v38 = v71[36];
    v39 = BYTE1(v71[36]);
    v40 = v71[35];
    v41 = v71[34];
    sub_100031B40(v71, v69);
    memcpy(v69, v74, 0x122uLL);
    memcpy(v70, v71, sizeof(v70));
    v66 = 0;
    v58 = v36;
  }

  memcpy(v68, v70, 0x110uLL);
  v68[34] = v41;
  v68[35] = v40;
  LOBYTE(v68[36]) = v38;
  BYTE1(v68[36]) = v39;
  memcpy(v74, v68, 0x122uLL);
  v42 = *sub_10000BE18(v30 + 36, v30[39]);
  sub_10003385C(v74);
  sub_100031B78(v68);
  v32 = v69;
LABEL_15:
  memcpy(v71, v32, 0x122uLL);
  v43 = v30[4];
  swift_getObjectType();
  static DispatchTime.now()();
  v44 = v30[7];
  v45 = v59;
  + infix(_:_:)();
  v46 = *(v60 + 8);
  v47 = v11;
  v48 = v61;
  v46(v47, v61);
  v49 = v62;
  sub_100146FDC(v62);
  v50 = v63;
  sub_100147050(v63);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v51 = v65;
  v52 = *(v64 + 8);
  v52(v50, v65);
  v52(v49, v51);
  v46(v45, v48);
  v53 = v58;
  if (v67[47])
  {
    v54 = v67[48];
    v55 = v67[47];
    ObjectType = swift_getObjectType();
    (*(v54 + 8))(v53, ObjectType, v54);
  }

  sub_10000BD44(v71, &qword_1003A1620, &unk_1002C5960);

  return v66;
}

uint64_t sub_1000B0D18()
{
  v1 = v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1000A7D74();
    v8 = sub_100008F6C(v6, v7, &v23);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD00000000000002ELL, 0x800000010034B000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v23);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 48);
  v13 = *sub_10000BE18((v0 + 288), *(v0 + 312));
  if (v12)
  {
    sub_100033A6C(222);
    v15 = v14;
    v16 = *sub_10000BE18(v1 + 36, v1[39]);
    v17 = sub_100032BAC(v15, v1[8]);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v17 & 1;
      v21 = "isOfflineAttested(): %{BOOL}d";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 8u);
    }
  }

  else
  {
    v17 = sub_100032448();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v17 & 1;
      v21 = "isOnlineAttested(): %{BOOL}d";
      goto LABEL_10;
    }
  }

  return v17 & 1;
}

uint64_t sub_1000B100C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  sub_10000403C(v15, qword_1003A13E0);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    v30 = v6;
    v19 = a1;
    v20 = v18;
    *v18 = 0;
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v21, "attestation-checkpoint", "begin attestation checkpoint", v20, 2u);
    a1 = v19;
    v6 = v30;
  }

  (*(v8 + 16))(v12, v14, v7);
  v22 = type metadata accessor for OSSignpostIntervalState();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v25 = (*(v8 + 8))(v14, v7);
  v26 = v2[3];
  __chkstk_darwin(v25);
  *(&v29 - 4) = v3;
  *(&v29 - 3) = a2;
  *(&v29 - 2) = a1;
  *(&v29 - 1) = v6;
  OS_dispatch_queue.sync<A>(execute:)();
  v27 = v31;
  sub_1000B12D8();

  return v27;
}

uint64_t sub_1000B12D8()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A13E0);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end attestation checkpoint";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "attestation-checkpoint", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000B1564(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v50 = a3;
  v5 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1000B0D18() & 1) == 0)
  {
    sub_100065074(a2, v8, &qword_1003A0178, &unk_1002C3BB0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10000BD44(v8, &qword_1003A0178, &unk_1002C3BB0);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v18 = *sub_10000BE18((a1 + 288), *(a1 + 312));
      sub_100034704(v57);
      v19 = &unk_10039D000;
      if (*(a1 + 48) == 1 && (memcpy(v64, v57, sizeof(v64)), sub_100031A30(v64) == 1))
      {
        sub_100031B40(v57, v63);
        if ((sub_1000B2448() & 1) == 0)
        {
          if (qword_10039D4D0 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          v21 = sub_10000403C(v20, qword_1003A13C8);
          v22 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v49))
          {
            v23 = swift_slowAlloc();
            v47 = v21;
            v24 = v23;
            v46 = swift_slowAlloc();
            v63[0] = v46;
            *v24 = 136315394;
            v25 = _typeName(_:qualified:)();
            v27 = sub_100008F6C(v25, v26, v63);
            v48 = v22;
            v28 = v27;
            v19 = &unk_10039D000;

            *(v24 + 4) = v28;
            *(v24 + 12) = 2080;
            *(v24 + 14) = sub_100008F6C(0xD000000000000035, 0x800000010034AFC0, v63);
            _os_log_impl(&_mh_execute_header, v48, v49, "%s.%s: MPOCOperationMode: offline, Attestation Token: nil, No reboot. Attempt recovery...", v24, 0x16u);
            swift_arrayDestroy();

            v21 = v47;
          }

          else
          {
          }

          v33 = *sub_10000BE18((a1 + 336), *(a1 + 360));
          sub_10003D678(v13, v58);
          v61[0] = v58[0];
          v61[1] = v58[1];
          *v62 = v58[2];
          *&v62[16] = v59;
          sub_100065074(v61, v63, &qword_1003A1618, &unk_1002C5950);
          sub_100041D1C(v58);
          if (*(&v61[0] + 1))
          {
            v65 = *&v62[8];
            sub_100065074(&v65, v63, &qword_1003A0410, &unk_1002C3DA0);
            sub_10000BD44(v61, &qword_1003A1618, &unk_1002C5950);
            if (*(&v65 + 1))
            {
              v34 = v51;
              sub_100176DD8(v65, *(&v65 + 1), v60);
              if (v34)
              {

                v51 = 0;
              }

              else
              {
                v51 = 0;
                memcpy(v56, v60, sizeof(v56));
                v35 = Logger.logObject.getter();
                v49 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v35, v49))
                {
                  v36 = swift_slowAlloc();
                  v47 = v21;
                  v37 = v36;
                  v48 = swift_slowAlloc();
                  v63[0] = v48;
                  *v37 = 136315394;
                  v38 = _typeName(_:qualified:)();
                  v46 = v35;
                  v40 = sub_100008F6C(v38, v39, v63);

                  *(v37 + 4) = v40;
                  *(v37 + 12) = 2080;
                  *(v37 + 14) = sub_100008F6C(0xD000000000000035, 0x800000010034AFC0, v63);
                  v35 = v46;
                  _os_log_impl(&_mh_execute_header, v46, v49, "%s.%s: Found persisted attestation token, checkAttestationState again...", v37, 0x16u);
                  swift_arrayDestroy();
                }

                memcpy(v53, v57, sizeof(v53));
                memcpy(v54, v56, sizeof(v54));
                nullsub_1(v54);
                memcpy(v55, v53, sizeof(v55));
                sub_100031B40(v57, v63);
                sub_10000BD44(v55, &qword_10039F268, &qword_1002C2730);
                memcpy(v53, v54, 0x110uLL);
                v41 = sub_10000BE18((a1 + 288), *(a1 + 312));
                memcpy(v63, v53, 0x122uLL);
                v42 = *v41;
                sub_10003385C(v63);
                if (sub_1000B0D18())
                {
                  v43 = Logger.logObject.getter();
                  v44 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v43, v44))
                  {
                    v45 = swift_slowAlloc();
                    *v45 = 0;
                    _os_log_impl(&_mh_execute_header, v43, v44, "checkAttestationState: persisted attestation token is valid", v45, 2u);

                    sub_100031B78(v57);
                  }

                  else
                  {
                    sub_100031B78(v57);
                  }

                  (*(v10 + 8))(v13, v9);
                  *v50 = 1;
                  memcpy(v52, v53, 0x122uLL);
                  sub_100031B78(v52);
                  return;
                }

                memcpy(v52, v53, 0x122uLL);
                sub_100031B78(v52);
              }
            }
          }
        }
      }

      else
      {
        sub_100031B40(v57, v63);
      }

      if (v19[154] != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000403C(v29, qword_1003A13C8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "checkAttestationState: false (not attested)", v32, 2u);

        sub_100031B78(v57);
      }

      else
      {
        sub_100031B78(v57);
      }

      (*(v10 + 8))(v13, v9);
    }

    *v50 = 0;
    return;
  }

  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A13C8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "checkAttestationState: true (attested)", v17, 2u);
  }

  *v50 = 1;
}

uint64_t sub_1000B1E44()
{
  v1 = *v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A13C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v32);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x55746F6F42746567, 0xED00002928444955, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v32);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v33 = xmmword_1002C3C70;
  v30 = 37;
  v12 = swift_slowAlloc();
  if (!sysctlbyname("kern.bootsessionuuid", v12, &v30, 0, 0))
  {
    if (__OFSUB__(v30, 1))
    {
      __break(1u);
    }

    v13 = sub_100146EDC(v12, v12 + v30 - 1);
    v15 = v14;
    sub_10001A074(v33, *(&v33 + 1));
    *&v33 = v13;
    *(&v33 + 1) = v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      swift_beginAccess();
      countAndFlagsBits = 0;
      object = 0;
      v22 = *(&v33 + 1);
      if (*(&v33 + 1) >> 60 != 15)
      {
        v23 = v33;
        sub_1000094F4(v33, *(&v33 + 1));
        v24 = Data.hexString()();
        countAndFlagsBits = v24._countAndFlagsBits;
        object = v24._object;
        sub_10001A074(v23, v22);
      }

      v32[0] = countAndFlagsBits;
      v32[1] = object;
      sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100008F6C(v25, v26, &v31);

      *(v18 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "bootUUID data: %s", v18, 0xCu);
      sub_10000959C(v19);
    }
  }

  swift_beginAccess();
  v28 = v33;
  sub_10001A3E8(v33, *(&v33 + 1));
  sub_10001A074(v28, *(&v28 + 1));
  return v28;
}

uint64_t sub_1000B2244()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A13C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD00000000000001BLL, 0x800000010034AF60, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[3];
  OS_dispatch_queue.sync<A>(execute:)();
  return LOBYTE(v15[0]);
}

uint64_t sub_1000B2448()
{
  v1 = sub_1000B1E44();
  if (v2 >> 60 == 15)
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A13C8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Need boot UUID", v6, 2u);
    }

LABEL_19:
    v17 = 1;
    goto LABEL_20;
  }

  v7 = v1;
  v8 = v2;
  v9 = v0[12];
  v10 = v0[13];
  sub_10000BE18(v0 + 9, v9);
  if (qword_10039D4E8 != -1)
  {
    swift_once();
  }

  v11 = (*(v10 + 32))(qword_1003A6B98, unk_1003A6BA0, v9, v10);
  v13 = v12;
  if ((sub_10017688C(v7, v8, v11, v12) & 1) == 0)
  {
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000403C(v18, qword_1003A13C8);
    v4 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v4, v19, "Device reboot detected", v20, 2u);
    }

    sub_100009548(v11, v13);
    sub_10001A074(v7, v8);
    goto LABEL_19;
  }

  sub_100009548(v11, v13);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A13C8);
  v4 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v4, v15, "Got previousBootUUID, no reboot detected", v16, 2u);
  }

  sub_10001A074(v7, v8);
  v17 = 0;
LABEL_20:

  return v17;
}

uint64_t sub_1000B2850()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A13C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v23);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x6F6F4265726F7473, 0xEF29284449555574, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v23);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = sub_1000B1E44();
  if (v14 >> 60 == 15)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not getBootUUID to storeBootUUID", v17, 2u);
    }

    sub_100020148(2035, 0x6F6F62206465654ELL, 0xEE00444955552074, 0);
    return swift_willThrow();
  }

  else
  {
    v19 = v14;
    v20 = v13;
    v21 = v1[12];
    v22 = v1[13];
    sub_10000BE18(v1 + 9, v21);
    if (qword_10039D4E8 != -1)
    {
      swift_once();
    }

    (*(v22 + 40))(qword_1003A6B98, unk_1003A6BA0, v20, v19, v21, v22);
    return sub_10001A074(v20, v19);
  }
}

uint64_t sub_1000B2B84(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v43 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A13C8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v13;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43[1] = v15;
    v45 = v20;
    *v19 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v45);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034AF40, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, &v45);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();

    v13 = v44;
  }

  v27 = *sub_10000BE18(v2 + 14, *(v2 + 17));
  sub_100043268(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000BD44(v8, &unk_1003A3BE0, &qword_1002C36F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not calculate secure now, using default send rate", v30, 2u);
    }

    v31 = v2[7];
LABEL_9:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "Using send rate: %f", v34, 0xCu);
    }

    return *&v31;
  }

  (*(v10 + 32))(v13, v8, v9);
  Date.timeIntervalSince1970.getter();
  v31 = a1 - v36;
  if (v31 > 0.0)
  {
    (*(v10 + 8))(v13, v9);
    v37 = v2[7];
    if (v31 > v37)
    {
      v38 = *(v2 + 7);
      if ((*&v37 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v39 = v31;
      }

      else
      {
        v39 = v2[7];
      }

      if ((~*&v37 & 0x7FF0000000000000) != 0)
      {
        v31 = v2[7];
      }

      else
      {
        v31 = v39;
      }
    }

    goto LABEL_9;
  }

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Deadline already passed", v42, 2u);
  }

  (*(v10 + 8))(v13, v9);
  return 0;
}

uint64_t sub_1000B3098()
{
  v1 = *(*v0 + 24);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

BOOL sub_1000B3194(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1000B3224(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v83 = a6;
  v85 = a3;
  v84 = a10;
  v71 = *a16;
  v79 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for OS_dispatch_queue.Attributes();
  v25 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v72 = *(v27 - 8);
  v28 = *(v72 + 64);
  __chkstk_darwin(v27);
  v74 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v73 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92[3] = type metadata accessor for DefaultSecureTimeKeeper();
  v92[4] = &off_100384E70;
  v92[0] = a4;
  v91[3] = type metadata accessor for SecureElement();
  v91[4] = &off_1003849A0;
  v91[0] = a5;
  v90[3] = type metadata accessor for MPOCDefaultAttestationManager();
  v90[4] = &off_100380AA8;
  v90[0] = a11;
  v89[3] = type metadata accessor for ProfileManager();
  v89[4] = &off_100380E88;
  v89[0] = a13;
  *(a16 + 16) = 0;
  type metadata accessor for DefaultStateMachine();
  v33 = swift_allocObject();
  v87 = &type metadata for AttemptedSendBatchState;
  v88 = sub_1000A62C8();
  sub_10000CCE4(&v86, v33 + 16);
  sub_100004074(&qword_1003A1660, &unk_1002C5998);
  v34 = swift_allocObject();
  *(v34 + 56) = 0;
  sub_100029790(&v86, v34 + 16);
  *(v33 + 56) = v34;
  a16[5] = v33;
  if (qword_10039D4D0 != -1)
  {
    swift_once();
  }

  v35 = a15;
  v82 = a14;
  v81 = a12;
  v36 = type metadata accessor for Logger();
  v70 = sub_10000403C(v36, qword_1003A13C8);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v80 = a8;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v68 = a15;
    v41 = v40;
    v42 = swift_slowAlloc();
    v69 = a2;
    v67 = a7;
    *&v86 = v42;
    *v41 = 136315394;
    v43 = _typeName(_:qualified:)();
    v44 = a1;
    v45 = v27;
    v47 = sub_100008F6C(v43, v46, &v86);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v48 = showFunction(signature:_:)(0xD0000000000000BBLL, 0x800000010034B1A0, _swiftEmptyArrayStorage);
    v50 = sub_100008F6C(v48, v49, &v86);

    *(v41 + 14) = v50;
    v27 = v45;
    a1 = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s.%s", v41, 0x16u);
    swift_arrayDestroy();
    a7 = v67;
    a2 = v69;
    a8 = v80;

    v35 = v68;
  }

  LODWORD(v71) = a1 & 1;
  *(a16 + 48) = a1 & 1;
  *(a16 + 7) = a9;
  a16[8] = a2;
  v51 = v85;
  sub_10000CCE4(v85, (a16 + 9));
  sub_10000CCE4(v92, (a16 + 14));
  sub_10000CCE4(v91, (a16 + 19));
  a16[24] = v83;
  a16[25] = a7;
  sub_10000CCE4(a8, (a16 + 26));
  sub_10000CCE4(v84, (a16 + 31));
  sub_10000CCE4(v90, (a16 + 36));
  a16[41] = v81;
  sub_10000CCE4(v89, (a16 + 42));
  a16[47] = v82;
  a16[48] = v35;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  static DispatchQoS.background.getter();
  (*(v72 + 104))(v74, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v27);
  *&v86 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_10000BEC0(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a16[3] = v52;
  sub_10000411C(0, &qword_10039D7E8, OS_dispatch_source_ptr);
  *&v86 = _swiftEmptyArrayStorage;
  sub_1000B4F88(&qword_1003A1668, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v53 = v52;
  sub_100004074(&qword_1003A1670, &qword_1002C59A8);
  sub_10000BEC0(&qword_1003A1678, &qword_1003A1670, &qword_1002C59A8);
  v54 = v77;
  v55 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v56 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v78 + 8))(v54, v55);
  a16[4] = v56;
  v57 = v51[3];
  v58 = v51[4];
  sub_10000BE18(v51, v57);
  if (qword_10039D4E0 != -1)
  {
    swift_once();
  }

  v59 = qword_1003A6B88;
  v60 = unk_1003A6B90;
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1002C1660;
  *(v61 + 32) = v71;
  v62 = sub_10014B8C8(v61);
  v64 = v63;

  (*(v58 + 40))(v59, v60, v62, v64, v57, v58);
  sub_100009548(v62, v64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v65 = v80;
  sub_10000959C(v84);
  sub_10000959C(v65);
  sub_10000959C(v89);
  sub_10000959C(v90);
  sub_10000959C(v91);
  sub_10000959C(v92);
  sub_10000959C(v85);
  return a16;
}

uint64_t sub_1000B3C54(uint64_t a1, char a2, uint64_t a3)
{
  v20 = &type metadata for MPOCMonitorManagerEvent;
  v21 = sub_1000B4248();
  v18 = a1;
  v19 = a2 & 1;
  v6 = *(a3 + 56);
  os_unfair_lock_lock((v6 + 56));
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  sub_10000BE18((v6 + 16), v7);
  v9 = (*(v8 + 24))(v16, &v18, v7, v8);
  sub_10000959C((v6 + 16));
  v17 = v9;
  sub_100065074(v16, v15, &qword_1003A1658, &qword_1002C5990);

  sub_100029790(v15, v6 + 16);
  v10 = *(v6 + 40);
  v11 = *(v6 + 48);
  sub_10000BE18((v6 + 16), v10);
  v12 = (*(v11 + 16))(v10, v11);
  *&v15[0] = v9;

  sub_100043754(v12);
  v13 = *&v15[0];
  sub_10000BD44(v16, &qword_1003A1658, &qword_1002C5990);
  os_unfair_lock_unlock((v6 + 56));
  sub_10000959C(&v18);
  return v13;
}

uint64_t sub_1000B3DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B2448();
  *a1 = result & 1;
  return result;
}

double sub_1000B3DF0@<D0>(_BYTE *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[5];
  sub_1000B1564(v1[2], v1[4], a1);
  return result;
}

double sub_1000B3E14(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1002C4E30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

unint64_t sub_1000B3E4C()
{
  result = qword_1003A1628;
  if (!qword_1003A1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1628);
  }

  return result;
}

uint64_t sub_1000B3EA0()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_10000BE18(v0 + 26, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1000B3EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B3F14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000B3F8C()
{
  result = qword_1003A1630;
  if (!qword_1003A1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1630);
  }

  return result;
}

unint64_t sub_1000B3FE0()
{
  result = qword_1003A1638;
  if (!qword_1003A1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1638);
  }

  return result;
}

double sub_1000B4034(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1002C4E30;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  return result;
}

uint64_t sub_1000B4088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MPOCMonitorBatch();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B40EC(uint64_t a1)
{
  v2 = type metadata accessor for MPOCMonitorBatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B4148(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

BOOL sub_1000B41F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  return sub_1000B3194(v6, v8);
}

unint64_t sub_1000B4248()
{
  result = qword_1003A1650;
  if (!qword_1003A1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1650);
  }

  return result;
}

uint64_t sub_1000B429C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B42DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1000A8878();
  v1(0);
}

void sub_1000B4340()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000A83EC();
}

void sub_1000B435C(uint64_t a1)
{
  sub_1000E9D90(v111);
  if (v1)
  {

    return;
  }

  sub_1000E5EA8(v108);
  v3 = v109;
  v4 = v110;
  sub_10000BE18(v108, v109);
  sub_1000C7DD8(v3, v4);
  v5 = v106;
  v6 = v107;
  sub_10000BE18(v105, v106);
  if (qword_10039D4E0 != -1)
  {
    swift_once();
  }

  v7 = (*(v6 + 32))(qword_1003A6B88, unk_1003A6B90, v5, v6);
  v9 = v7;
  v10 = v8;
  v11 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(v7 + 16);
    v13 = *(v7 + 24);
LABEL_12:
    if (v12 != v13)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (qword_10039D4D0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A13C8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not load MPOCOperation mode from persistence. Using .online", v18, 2u);
    }

    sub_100009548(v9, v10);

    goto LABEL_21;
  }

  if (v11)
  {
    v12 = v7;
    v13 = v7 >> 32;
    goto LABEL_12;
  }

  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v14 = Data._Representation.subscript.getter();
  if (v14 == 1)
  {
    sub_100009548(v9, v10);
    v19 = 1;
    goto LABEL_22;
  }

  if (v14)
  {
    goto LABEL_16;
  }

  sub_100009548(v9, v10);
LABEL_21:
  v19 = 0;
LABEL_22:
  v20 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
  v21 = type metadata accessor for Settings();
  v22 = *(v20 + *(v21 + 28));
  v23 = *(v20 + *(v21 + 32));
  sub_10000CCE4(v105, v104);
  sub_1000E4518(v102);
  sub_1000E5844(v100);
  v24 = *(*sub_10000BE18(v111, v111[3]) + 296);
  os_unfair_lock_lock((v24 + 24));
  sub_1000B4F6C((v24 + 16), v99);
  os_unfair_lock_unlock((v24 + 24));
  v25 = v99[0];
  v26 = v99[1];
  sub_1000EC3E8(v99);
  sub_1000ECA4C(v98);
  sub_1000E8A64(v96);
  sub_1000ED0B0();
  v83 = v27;
  sub_1000E8400(v94);
  v28 = v103;
  v29 = sub_100022438(v102, v103);
  v82 = v72;
  v30 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v29);
  v78 = (v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))();
  v33 = v101;
  v34 = sub_100022438(v100, v101);
  v81 = v72;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v34);
  v77 = (v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))();
  v38 = v97;
  v39 = sub_100022438(v96, v97);
  v80 = v72;
  v40 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v39);
  v76 = (v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))();
  v43 = v95;
  v44 = sub_100022438(v94, v95);
  v79 = v72;
  v45 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v44);
  v47 = (v72 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v78;
  v75 = *v77;
  v50 = *v47;
  v77 = *v76;
  v78 = v50;
  v51 = type metadata accessor for DefaultSecureTimeKeeper();
  v93[3] = v51;
  v93[4] = &off_100384E70;
  v93[0] = v49;
  v91 = type metadata accessor for SecureElement();
  v92 = &off_1003849A0;
  v90[0] = v75;
  v88 = type metadata accessor for MPOCDefaultAttestationManager();
  v89 = &off_100380AA8;
  v87[0] = v77;
  v85 = type metadata accessor for ProfileManager();
  v86 = &off_100380E88;
  v84[0] = v78;
  type metadata accessor for MPOCDefaultMonitorManager();
  v76 = swift_allocObject();
  v52 = sub_100022438(v93, v51);
  v78 = v72;
  v53 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v52);
  v74 = (v72 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))();
  v56 = v91;
  v57 = sub_100022438(v90, v91);
  v77 = v72;
  v58 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v57);
  v73 = (v72 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))();
  v61 = v88;
  v62 = sub_100022438(v87, v88);
  v75 = v72;
  v63 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v62);
  v72[0] = v72 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v65 + 16))();
  v66 = v85;
  v67 = sub_100022438(v84, v85);
  v72[1] = v72;
  v68 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = (v72 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_1000B3224(v19, v23, v104, *v74, *v73, v25, v26, v99, v22, v98, *v72[0], v83, *v70, 0, 0, v76);

  sub_10000959C(v84);
  sub_10000959C(v87);
  sub_10000959C(v90);
  sub_10000959C(v93);
  sub_10000959C(v94);
  sub_10000959C(v96);
  sub_10000959C(v100);
  sub_10000959C(v102);
  sub_10000959C(v105);
  sub_10000959C(v108);
  sub_10000959C(v111);
}

uint64_t sub_1000B4F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B4FD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B4FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 313))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 296);
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

uint64_t sub_1000B5058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 296) = a2;
    }
  }

  return result;
}

void *sub_1000B5158@<X0>(uint64_t a1@<X8>)
{
  result = sub_100176DD8(0xD0000000000001CALL, 0x800000010034B290, __src);
  if (!v1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    result = nullsub_1(__dst);
    v4 = __src[13];
    if ((__src[13] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      result = memcpy(a1, __dst, 0x110uLL);
      *(a1 + 272) = v4;
      *(a1 + 280) = v6;
      *(a1 + 288) = 0;
    }
  }

  return result;
}

uint64_t sub_1000B53BC(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A1798, &qword_1002C5FB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v17, v3, 0x110uLL);
  memcpy(v16, v3, sizeof(v16));
  v17[295] = 0;
  sub_10003237C(v17, v15);
  sub_1000B752C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    memcpy(v15, v16, sizeof(v15));
    sub_10000BD44(v15, &qword_10039F268, &qword_1002C2730);
  }

  else
  {
    memcpy(v15, v16, sizeof(v15));
    sub_10000BD44(v15, &qword_10039F268, &qword_1002C2730);
    v11 = *(v3 + 272);
    v12 = *(v3 + 280);
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 288);
    v17[294] = 2;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    sub_1000B7580(&qword_1003A17A8, sub_100065230);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000B5638()
{
  v1 = 0x7078456E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1000B56A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B6FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B56D8(uint64_t a1)
{
  v2 = sub_1000B7454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5714(uint64_t a1)
{
  v2 = sub_1000B7454();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000B5754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B6C6C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x128uLL);
  }

  return result;
}

BOOL sub_1000B57B8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1000B5FE8(v4, __dst);
}

uint64_t sub_1000B5810(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A17B0, &qword_1002C5FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7358();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v18 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[4];
    v16[15] = 2;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    sub_1000B7580(&qword_1003A17A8, sub_100065230);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B5A38(uint64_t a1)
{
  v2 = sub_1000B7358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5A74(uint64_t a1)
{
  v2 = sub_1000B7358();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B5AB0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B7100(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000B5B10()
{
  _StringGuts.grow(_:)(54);
  v1._countAndFlagsBits = 0xD000000000000016;
  v1._object = 0x80000001002C5D60;
  String.append(_:)(v1);
  v2._object = 0x800000010034B4A0;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 0x3A65756C6176202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(v0[1]);
  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x800000010034B4C0;
  String.append(_:)(v4);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_1000B5C2C(void *a1)
{
  v3 = v1;
  v5 = sub_100004074(&qword_1003A1770, &qword_1002C5FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7400();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000B5DCC()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x7461636572706564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636572706564;
  }
}

uint64_t sub_1000B5E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B75F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B5E54(uint64_t a1)
{
  v2 = sub_1000B7400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5E90(uint64_t a1)
{
  v2 = sub_1000B7400();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B5ED0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B771C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_1000B5F30(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000B5FE8(uint64_t *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v104, a2, sizeof(v104));
  v4 = *(__src + 12);
  v5 = *(__src + 10);
  v100 = *(__src + 11);
  v101 = v4;
  v6 = *(__src + 12);
  v7 = *(__src + 14);
  v102 = *(__src + 13);
  v103 = v7;
  v8 = *(__src + 8);
  v9 = *(__src + 6);
  v96 = *(__src + 7);
  v97 = v8;
  v10 = *(__src + 8);
  v11 = *(__src + 10);
  v98 = *(__src + 9);
  v99 = v11;
  v12 = *(__src + 4);
  v92 = *(__src + 3);
  v93 = v12;
  v13 = *(__src + 6);
  v15 = *(__src + 3);
  v14 = *(__src + 4);
  v94 = *(__src + 5);
  v95 = v13;
  v91 = *(__src + 16);
  v117 = v100;
  v118 = v6;
  v16 = *(__src + 14);
  v119 = v102;
  v120 = v16;
  v113 = v96;
  v114 = v10;
  v115 = v98;
  v116 = v5;
  v109 = v15;
  v110 = v14;
  v17 = __dst[0];
  v18 = __dst[1];
  v19 = __dst[2];
  v20 = __dst[3];
  v21 = __dst[4];
  v22 = __dst[5];
  v23 = __dst[30];
  v24 = __dst[31];
  v111 = v94;
  v112 = v9;
  v123 = *(__src + 16);
  v108[0] = __dst[0];
  v108[1] = __dst[1];
  v108[2] = __dst[2];
  v108[3] = __dst[3];
  v108[4] = __dst[4];
  v108[5] = __dst[5];
  v121 = __dst[30];
  v122 = __dst[31];
  if (sub_100031A30(v108) == 1)
  {
    memcpy(v89, a2, sizeof(v89));
    if (sub_100031A30(v89) == 1)
    {
      *&v88[0] = v17;
      *(&v88[0] + 1) = v18;
      *&v88[1] = v19;
      *(&v88[1] + 1) = v20;
      *&v88[2] = v21;
      *(&v88[2] + 1) = v22;
      v25 = *(__src + 12);
      v88[11] = *(__src + 11);
      v88[12] = v25;
      v26 = *(__src + 14);
      v88[13] = *(__src + 13);
      v88[14] = v26;
      v27 = *(__src + 8);
      v88[7] = *(__src + 7);
      v88[8] = v27;
      v28 = *(__src + 10);
      v88[9] = *(__src + 9);
      v88[10] = v28;
      v29 = *(__src + 4);
      v88[3] = *(__src + 3);
      v88[4] = v29;
      v30 = *(__src + 6);
      v88[5] = *(__src + 5);
      v88[6] = v30;
      *&v88[15] = v23;
      *(&v88[15] + 1) = v24;
      v88[16] = *(__src + 16);
      sub_10003237C(__dst, &v67);
      sub_10003237C(v104, &v67);
      sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  memcpy(v89, a2, sizeof(v89));
  if (sub_100031A30(v89) == 1)
  {
LABEL_8:
    *&v89[0] = v17;
    *(&v89[0] + 1) = v18;
    *&v89[1] = v19;
    *(&v89[1] + 1) = v20;
    *&v89[2] = v21;
    *(&v89[2] + 1) = v22;
    v32 = *(__src + 12);
    v89[11] = *(__src + 11);
    v89[12] = v32;
    v33 = *(__src + 14);
    v89[13] = *(__src + 13);
    v89[14] = v33;
    v34 = *(__src + 8);
    v89[7] = *(__src + 7);
    v89[8] = v34;
    v35 = *(__src + 10);
    v89[9] = *(__src + 9);
    v89[10] = v35;
    v36 = *(__src + 4);
    v89[3] = *(__src + 3);
    v89[4] = v36;
    v37 = *(__src + 6);
    v89[5] = *(__src + 5);
    v89[6] = v37;
    *&v89[15] = v23;
    *(&v89[15] + 1) = v24;
    v89[16] = *(__src + 16);
    memcpy(v90, a2, sizeof(v90));
    sub_10003237C(__dst, v88);
    sub_10003237C(v104, v88);
    v38 = &unk_10039F270;
    v39 = &unk_1002C5FC0;
    v40 = v89;
LABEL_31:
    sub_10000BD44(v40, v38, v39);
    return 0;
  }

  memcpy(v88, a2, sizeof(v88));
  v41 = v88[1];
  v65 = v88[2];
  v63 = *(&v88[15] + 1);
  v64 = *&v88[15];
  if (__PAIR128__(v18, v17) != v88[0] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || __PAIR128__(v20, v19) != v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (!v22)
  {
    if (!*(&v65 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    sub_10003237C(__dst, &v67);
    sub_10003237C(v104, &v67);
    sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
    v67 = v17;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = v21;
    v72 = v22;
    v81 = v100;
    v82 = v101;
    v83 = v102;
    v84 = v103;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v80 = v99;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v76 = v95;
    v85 = v23;
    v86 = v24;
    v87 = v91;
    v40 = &v67;
    v38 = &qword_10039F268;
    v39 = &qword_1002C2730;
    goto LABEL_31;
  }

  if (!*(&v65 + 1) || __PAIR128__(v22, v21) != v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  v44 = *(__src + 12);
  v106[8] = *(__src + 11);
  v106[9] = v44;
  v45 = *(__src + 14);
  v106[10] = *(__src + 13);
  v106[11] = v45;
  v46 = *(__src + 8);
  v106[4] = *(__src + 7);
  v106[5] = v46;
  v47 = *(__src + 10);
  v106[6] = *(__src + 9);
  v106[7] = v47;
  v48 = *(__src + 4);
  v106[0] = *(__src + 3);
  v106[1] = v48;
  v49 = *(__src + 6);
  v106[2] = *(__src + 5);
  v106[3] = v49;
  v50 = *(a2 + 192);
  v107[8] = *(a2 + 176);
  v107[9] = v50;
  v51 = *(a2 + 224);
  v107[10] = *(a2 + 208);
  v107[11] = v51;
  v52 = *(a2 + 128);
  v107[4] = *(a2 + 112);
  v107[5] = v52;
  v53 = *(a2 + 160);
  v107[6] = *(a2 + 144);
  v107[7] = v53;
  v54 = *(a2 + 64);
  v107[0] = *(a2 + 48);
  v107[1] = v54;
  v55 = *(a2 + 96);
  v107[2] = *(a2 + 80);
  v107[3] = v55;
  if (!sub_1001769F4(v106, v107))
  {
    goto LABEL_30;
  }

  sub_10003237C(__dst, &v67);
  sub_10003237C(v104, &v67);
  v66 = sub_10017688C(v23, v24, v64, v63);
  sub_10000BD44(v88, &qword_10039F268, &qword_1002C2730);
  v67 = v17;
  v68 = v18;
  v69 = v19;
  v70 = v20;
  v71 = v21;
  v72 = v22;
  v56 = *(__src + 12);
  v81 = *(__src + 11);
  v82 = v56;
  v57 = *(__src + 14);
  v83 = *(__src + 13);
  v84 = v57;
  v58 = *(__src + 8);
  v77 = *(__src + 7);
  v78 = v58;
  v59 = *(__src + 10);
  v79 = *(__src + 9);
  v80 = v59;
  v60 = *(__src + 4);
  v73 = *(__src + 3);
  v74 = v60;
  v61 = *(__src + 6);
  v75 = *(__src + 5);
  v76 = v61;
  v85 = v23;
  v86 = v24;
  v87 = *(__src + 16);
  sub_10000BD44(&v67, &qword_10039F268, &qword_1002C2730);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v31 = *(a2 + 280);
  if (__src[35])
  {
    if (!*(a2 + 280))
    {
      return 0;
    }
  }

  else
  {
    if (__src[34] != *(a2 + 272))
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v42 = __src[36];
  v43 = *(a2 + 288);
  if (!v42)
  {
    return !v43;
  }

  return v43 && (sub_10015149C(v42, v43) & 1) != 0;
}

BOOL sub_1000B6608(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if ((a4 & 1) == 0 || a3 != 8)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if ((a4 & 1) == 0 || a3 != 9)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if ((a4 & 1) == 0 || a3 != 10)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if ((a4 & 1) == 0 || a3 != 11)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if ((a4 & 1) == 0 || a3 != 12)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if ((a4 & 1) == 0 || a3 != 13)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if ((a4 & 1) == 0 || a3 != 14)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if ((a4 & 1) == 0 || a3 <= 0xE)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if ((a4 & 1) == 0 || *&a3 != 0.0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (a4 & 1) == 0 && *&a1 == *&a3;
  }

  return result;
}

void *sub_1000B67D0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000B6924();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
  }

  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  sub_100031B14(v15);
  if (v8)
  {
    sub_100176DD8(v7, v8, __src);
    memcpy(__dst, __src, sizeof(__dst));
    nullsub_1(__dst);
    v12 = __dst;
  }

  else
  {
    v12 = v15;
  }

  memcpy(v14, v12, sizeof(v14));
  __dst[0] = v10;
  result = memcpy(a1, v14, 0x110uLL);
  *(a1 + 272) = v9;
  *(a1 + 280) = __dst[0];
  *(a1 + 288) = v11;
  return result;
}

unint64_t sub_1000B6924()
{
  result = qword_1003A1738;
  if (!qword_1003A1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1738);
  }

  return result;
}

unint64_t sub_1000B6978()
{
  result = qword_1003A1740;
  if (!qword_1003A1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1740);
  }

  return result;
}

uint64_t sub_1000B69D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000B6A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1000B6AE0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B6AF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000B6B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B6BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B6C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000B6C6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = sub_100004074(&qword_1003A1780, &unk_1002C5FA8);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17);
  v8 = &v16 - v7;
  sub_100031B14(v28);
  memcpy(v27, v28, sizeof(v27));
  v29 = 1;
  v9 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7454();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000959C(a1);
    memcpy(v23, v27, sizeof(v23));
    v24 = 0;
    v25 = v29;
    v26 = 0;
    return sub_1000B74A8(v23);
  }

  else
  {
    v10 = v5;
    v31 = 0;
    sub_1000B74D8();
    v11 = v17;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v20, v22, sizeof(v20));
    memcpy(v21, v27, sizeof(v21));
    sub_10000BD44(v21, &qword_10039F268, &qword_1002C2730);
    memcpy(v27, v20, sizeof(v27));
    v23[0] = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v13 & 1;
    sub_100004074(&qword_1003A1758, &qword_1002C5F98);
    v30 = 2;
    sub_1000B7580(&qword_1003A1760, sub_1000B73AC);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v10 + 8))(v8, v11);
    v14 = v19;
    memcpy(v18, v20, 0x110uLL);
    v18[34] = v12;
    LOBYTE(v11) = v29;
    LOBYTE(v18[35]) = v29;
    v18[36] = v19;
    sub_1000B419C(v18, v23);
    sub_10000959C(a1);
    memcpy(v23, v20, sizeof(v23));
    v24 = v12;
    v25 = v11;
    v26 = v14;
    sub_1000B74A8(v23);
    return memcpy(a2, v18, 0x128uLL);
  }
}

uint64_t sub_1000B6FD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100347C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7078456E656B6F74 && a2 == 0xEF6E6F6974617269 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010034B4E0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B7100@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A1748, &qword_1002C5F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7358();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v23 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v16;
  v19[0] = v15;
  sub_100004074(&qword_1003A1758, &qword_1002C5F98);
  v21 = 2;
  sub_1000B7580(&qword_1003A1760, sub_1000B73AC);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v19[1];
  result = sub_10000959C(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19[0];
  *(a2 + 24) = v20 & 1;
  *(a2 + 32) = v17;
  return result;
}

unint64_t sub_1000B7358()
{
  result = qword_1003A1750;
  if (!qword_1003A1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1750);
  }

  return result;
}

unint64_t sub_1000B73AC()
{
  result = qword_1003A1768;
  if (!qword_1003A1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1768);
  }

  return result;
}

unint64_t sub_1000B7400()
{
  result = qword_1003A1778;
  if (!qword_1003A1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1778);
  }

  return result;
}

unint64_t sub_1000B7454()
{
  result = qword_1003A1788;
  if (!qword_1003A1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1788);
  }

  return result;
}

unint64_t sub_1000B74D8()
{
  result = qword_1003A1790;
  if (!qword_1003A1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1790);
  }

  return result;
}

unint64_t sub_1000B752C()
{
  result = qword_1003A17A0;
  if (!qword_1003A17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17A0);
  }

  return result;
}

uint64_t sub_1000B7580(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000040BC(&qword_1003A1758, &qword_1002C5F98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B75F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7461636572706564 && a2 == 0xEF657079546E6F69;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEF656D69546E6F69)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000B771C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004074(&qword_1003A17B8, &qword_1002C5FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BE18(a1, a1[3]);
  sub_1000B7400();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000959C(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v22 = a2;
  v23 = v11;
  v25 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v15;
  v24 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000959C(a1);
  v18 = v22;
  *v22 = v23;
  v18[1] = v13;
  v19 = v21;
  v18[2] = v14;
  v18[3] = v19;
  v18[4] = v16;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureElementError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureElementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B7AE4()
{
  result = qword_1003A17C0;
  if (!qword_1003A17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17C0);
  }

  return result;
}

unint64_t sub_1000B7B3C()
{
  result = qword_1003A17C8;
  if (!qword_1003A17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17C8);
  }

  return result;
}

unint64_t sub_1000B7B94()
{
  result = qword_1003A17D0;
  if (!qword_1003A17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17D0);
  }

  return result;
}

unint64_t sub_1000B7BEC()
{
  result = qword_1003A17D8;
  if (!qword_1003A17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17D8);
  }

  return result;
}

unint64_t sub_1000B7C44()
{
  result = qword_1003A17E0;
  if (!qword_1003A17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17E0);
  }

  return result;
}

unint64_t sub_1000B7C9C()
{
  result = qword_1003A17E8;
  if (!qword_1003A17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17E8);
  }

  return result;
}

unint64_t sub_1000B7CF4()
{
  result = qword_1003A17F0;
  if (!qword_1003A17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17F0);
  }

  return result;
}

unint64_t sub_1000B7D4C()
{
  result = qword_1003A17F8;
  if (!qword_1003A17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A17F8);
  }

  return result;
}

unint64_t sub_1000B7DA4()
{
  result = qword_1003A1800;
  if (!qword_1003A1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1800);
  }

  return result;
}

uint64_t sub_1000B7E0C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1808);
  sub_10000403C(v0, qword_1003A1808);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

void *sub_1000B7E68(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v34 = *v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0xD000000000000011;
  v3[3] = 0x800000010034B550;
  if (qword_10039D4F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A1808);
  v14 = *(v9 + 16);
  v35 = a1;
  v14(v12, a1, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a2;
    v18 = v17;
    v32 = swift_slowAlloc();
    v36 = v32;
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    HIDWORD(v31) = v16;
    v21 = sub_100008F6C(v19, v20, &v36);
    v34 = a3;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1002C1660;
    *(v23 + 56) = v8;
    v24 = sub_10000BE5C((v23 + 32));
    v14(v24, v12, v8);
    v25 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034B570, v23);
    v27 = v26;

    (*(v9 + 8))(v12, v8);
    v28 = v25;
    a3 = v34;
    v29 = sub_100008F6C(v28, v27, &v36);

    *(v18 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v15, BYTE4(v31), "%s.%s", v18, 0x16u);
    swift_arrayDestroy();

    a2 = v33;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  (*(v9 + 32))(v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_url, v35, v8);
  sub_1000833F8(a2, v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel);
  *(v4 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_monitorAnalytics) = a3;
  return v4;
}

void *sub_1000B820C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v130 = a1;
  v122 = a2;
  v6 = *v2;
  v7 = type metadata accessor for URL.DirectoryHint();
  v127 = *(v7 - 8);
  v8 = *(v127 + 64);
  __chkstk_darwin(v7);
  v126 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v125 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLRequest();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  __chkstk_darwin(v13);
  v129 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4F0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v128 = sub_10000403C(v16, qword_1003A1808);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *&v133 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = sub_100008F6C(v20, v21, &v133);
    v121 = v7;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = showFunction(signature:_:)(0x293A5F28646E6573, 0xE800000000000000, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, &v133);

    *(v19 + 14) = v26;
    v4 = v3;
    v7 = v121;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v27 = *(v5 + 24);
  *&v133 = *(v5 + 16);
  *(&v133 + 1) = v27;
  v29 = v126;
  v28 = v127;
  (*(v127 + 104))(v126, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_10008AB88();

  URL.appending<A>(path:directoryHint:)();
  (*(v28 + 8))(v29, v7);

  v30 = v129;
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  TLV.dataRepresentation.getter();
  URLRequest.httpBody.setter();
  v133 = xmmword_1002C3C70;
  v31 = *(v5 + OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_monitorAnalytics);

  sub_10002F74C(v31, &v133, v5, v30);
  if (!v4)
  {

    v65 = *(&v133 + 1);
    if (*(&v133 + 1) >> 60 != 15)
    {
      v77 = v133;
      sub_10001A3E8(v133, *(&v133 + 1));
      sub_1000B67D0(v134);
      sub_10001A074(v77, v65);
      v81 = TLV.length.getter();
      sub_100025910(v81, 0);
      sub_10001A074(v77, v65);
      (*(v123 + 8))(v30, v124);
      return memcpy(v122, v134, 0x128uLL);
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Empty MPOC monitor backend returned response", v68, 2u);
    }

    sub_1000B9788();
    swift_allocError();
    *v69 = 15;
    *(v69 + 8) = 1;
    swift_willThrow();
    v70 = 0;
    goto LABEL_50;
  }

  v131[0] = v4;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  type metadata accessor for SPRHTTPError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_errorRetain();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      swift_errorRetain();
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&_mh_execute_header, v71, v72, "MPOC monitor backend returned error: %@", v73, 0xCu);
      sub_100041D90(v74);
    }

    sub_1000B9788();
    swift_allocError();
    *v76 = 14;
    *(v76 + 8) = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  v32 = v132;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  v35 = os_log_type_enabled(v33, v34);
  v126 = v4;
  v127 = v31;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v131[0] = swift_slowAlloc();
    *v36 = 136315650;
    v132 = v32;
    sub_1000B97DC(&qword_10039DE98);
    LODWORD(v125) = v34;
    v37 = Error.localizedDescription.getter();
    v39 = sub_100008F6C(v37, v38, v131);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v40 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v43 = sub_100008F6C(v40, v42, v131);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2080;
    v132 = v32;
    sub_1000B97DC(&qword_10039DF50);
    _BridgedStoredNSError.userInfo.getter();
    v44 = Dictionary.description.getter();
    v46 = v45;

    v47 = sub_100008F6C(v44, v46, v131);

    *(v36 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v33, v125, "MPOC monitor backend returned http error: %s, server code: %s, user info: %s", v36, 0x20u);
    swift_arrayDestroy();
  }

  v48 = v32;
  if ((related decl 'e' for SPRHTTPErrorCode.isClientError.getter() & 1) == 0)
  {
    v78 = related decl 'e' for SPRHTTPErrorCode.isServerError.getter();
    sub_1000B9788();
    swift_allocError();
    v30 = v129;
    if (v78)
    {
      v80 = 12;
    }

    else
    {
      v80 = 13;
    }

    *v79 = v80;
    *(v79 + 8) = 1;
    swift_willThrow();

LABEL_33:

    v70 = 0;
LABEL_50:
    v100 = TLV.length.getter();
    sub_100025910(v100, v70);
    sub_10001A074(v133, *(&v133 + 1));
    return (*(v123 + 8))(v30, v124);
  }

  v49 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
  if (!v50)
  {
    goto LABEL_44;
  }

  v131[0] = 45;
  v131[1] = 0xE100000000000000;
  __chkstk_darwin(v49);
  v119 = v131;
  v53 = sub_100187D7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002956C, (&v120 - 4), v51, v52, &v120);
  if (v53[2] != 2)
  {
LABEL_43:

    goto LABEL_44;
  }

  v54 = v32;
  v125 = 0;
  v55 = v53[4];
  v56 = v53[5];
  v58 = v53[6];
  v57 = v53[7];
  v59 = v53;

  v60 = Substring.init(_:)();
  if (!v57)
  {

    goto LABEL_41;
  }

  if (v58 == v62 && v57 == v63 && v55 >> 16 == v60 >> 16 && v56 >> 16 == v61 >> 16)
  {

    goto LABEL_35;
  }

  LOBYTE(v119) = 0;
  v82 = _stringCompareInternal(_:_:_:_:expecting:)();

  if ((v82 & 1) == 0)
  {
    v48 = v54;
    goto LABEL_43;
  }

LABEL_35:
  if (v59[2] >= 2uLL)
  {
    v83 = v59[8];
    v84 = v59[9];
    v86 = v59[10];
    v85 = v59[11];

    if ((v84 ^ v83) >> 14)
    {
      v87 = sub_1000B96BC(v83, v84, v86, v85, 10);
      if ((v88 & 0x100) != 0)
      {
        v70 = sub_1001882E8(v83, v84, v86, v85, 10);
        v102 = v101;

        v48 = v54;
        if ((v102 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v70 = v87;
        v89 = v88;

        v48 = v54;
        if ((v89 & 1) == 0)
        {
LABEL_52:
          if (v70 <= 4549)
          {
            v30 = v129;
            if (v70 > 4129)
            {
              switch(v70)
              {
                case 4130:
                  sub_1000B9788();
                  swift_allocError();
                  *v116 = 2;
                  *(v116 + 8) = 1;
                  swift_willThrow();

                  v70 = 4130;
                  goto LABEL_50;
                case 4444:
                  sub_1000B9788();
                  swift_allocError();
                  *v117 = 3;
                  *(v117 + 8) = 1;
                  swift_willThrow();

                  v70 = 4444;
                  goto LABEL_50;
                case 4500:
                  v106 = related decl 'e' for SPRHTTPErrorCode.atsBanExpirationTime.getter();
                  if (v107 && (v131[0] = 0, v108 = sub_10004F190(v106, v107), , v108))
                  {
                    v109 = *v131 / 1000.0;
                    sub_1000B9788();
                    swift_allocError();
                    *v110 = v109;
                  }

                  else
                  {
                    sub_1000B9788();
                    swift_allocError();
                    *v110 = 0x4014000000000000;
                  }

                  *(v110 + 8) = 0;
                  swift_willThrow();

                  v70 = 4500;
                  goto LABEL_50;
              }
            }

            else if ((v70 - 4000) < 3)
            {
              sub_1000B9788();
              swift_allocError();
              *v104 = 1;
              *(v104 + 8) = 1;
LABEL_81:
              swift_willThrow();

              goto LABEL_50;
            }
          }

          else
          {
            v30 = v129;
            if (v70 <= 4601)
            {
              switch(v70)
              {
                case 4550:
                  sub_1000B9788();
                  swift_allocError();
                  *v114 = 4;
                  *(v114 + 8) = 1;
                  swift_willThrow();

                  v70 = 4550;
                  goto LABEL_50;
                case 4600:
                  sub_1000B9788();
                  swift_allocError();
                  *v115 = 5;
                  *(v115 + 8) = 1;
                  swift_willThrow();

                  v70 = 4600;
                  goto LABEL_50;
                case 4601:
                  sub_1000B9788();
                  swift_allocError();
                  *v105 = 6;
                  *(v105 + 8) = 1;
                  swift_willThrow();

                  v70 = 4601;
                  goto LABEL_50;
              }
            }

            else if (v70 > 4699)
            {
              if (v70 == 4700)
              {
                sub_1000B9788();
                swift_allocError();
                *v113 = 9;
                *(v113 + 8) = 1;
                swift_willThrow();

                v70 = 4700;
                goto LABEL_50;
              }

              if (v70 == 4701)
              {
                sub_1000B9788();
                swift_allocError();
                *v111 = 10;
                *(v111 + 8) = 1;
                swift_willThrow();

                v70 = 4701;
                goto LABEL_50;
              }
            }

            else
            {
              if (v70 == 4602)
              {
                sub_1000B9788();
                swift_allocError();
                *v112 = 7;
                *(v112 + 8) = 1;
                swift_willThrow();

                v70 = 4602;
                goto LABEL_50;
              }

              if (v70 == 4603)
              {
                sub_1000B9788();
                swift_allocError();
                *v103 = 8;
                *(v103 + 8) = 1;
                swift_willThrow();

                v70 = 4603;
                goto LABEL_50;
              }
            }
          }

          sub_1000B9788();
          swift_allocError();
          *v118 = 11;
          *(v118 + 8) = 1;
          goto LABEL_81;
        }
      }

LABEL_44:
      v90 = v48;
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v131[0] = v94;
        *v93 = 136315138;
        v95 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
        if (v96)
        {
          v97 = v96;
        }

        else
        {
          v95 = 7104878;
          v97 = 0xE300000000000000;
        }

        v98 = sub_100008F6C(v95, v97, v131);

        *(v93 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v91, v92, "Invalid server code format: %s", v93, 0xCu);
        sub_10000959C(v94);
      }

      sub_1000B9788();
      swift_allocError();
      *v99 = 0;
      *(v99 + 8) = 1;
      swift_willThrow();

      v70 = 0;
      v30 = v129;
      goto LABEL_50;
    }

LABEL_41:

    v48 = v54;
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B9498()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_url;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_10000959C(&v0[OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_secureChannel]);
  v4 = *&v0[OBJC_IVAR____TtC14softposreaderd25MPOCDefaultMonitorBackend_monitorAnalytics];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MPOCDefaultMonitorBackend()
{
  result = qword_1003A1848;
  if (!qword_1003A1848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B95B0()
{
  result = type metadata accessor for URL();
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

void *sub_1000B9664@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = sub_1000B820C(a1, __src);
  if (!v3)
  {
    return memcpy(a2, __src, 0x128uLL);
  }

  return result;
}

uint64_t sub_1000B96BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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

  result = sub_100188CF4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1000B9788()
{
  result = qword_1003A1908;
  if (!qword_1003A1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1908);
  }

  return result;
}

uint64_t sub_1000B97DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPRHTTPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B9820(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_1000E3850(v20);
  if (v1)
  {
  }

  else
  {
    sub_1000EBD84(v19);
    v9 = sub_10000BE18(v20, v20[3]);
    (*(v4 + 16))(v7, *v9 + OBJC_IVAR____TtC14softposreaderd11Environment_backendURL, v3);
    v10 = *sub_10000BE18(v19, v19[3]);
    sub_100139628(v18);
    sub_1000ED0B0();
    v13 = v12;
    v14 = type metadata accessor for MPOCDefaultMonitorBackend();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v8 = swift_allocObject();
    sub_1000B7E68(v7, v18, v13);

    sub_10000959C(v19);
    sub_10000959C(v20);
  }

  return v8;
}

__n128 sub_1000B9A20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B9A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B9A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B9AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TLV();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B9B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TLV();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MPOCMonitorBatch()
{
  result = qword_1003A1968;
  if (!qword_1003A1968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B9C2C()
{
  result = type metadata accessor for TLV();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B9CA0(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v41 - v7;
  v51 = type metadata accessor for TLV();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v41 = v1;
  v60 = _swiftEmptyArrayStorage;
  v50 = v11;
  sub_10004E380(0, v12, 0);
  v13 = v60;
  v14 = a1 + 64;
  v15 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v17 = result;
  v18 = 0;
  v19 = *(a1 + 36);
  v48 = (v8 + 32);
  v42 = a1 + 72;
  v47 = xmmword_1002C1670;
  v43 = v12;
  v44 = v8;
  v49 = a1 + 64;
  v45 = v19;
  v46 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_22;
    }

    if (v19 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v55 = 1 << v17;
    v56 = v17 >> 6;
    v54 = v18;
    v22 = (*(a1 + 48) + 16 * v17);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + 16 * v17);
    v26 = *v25;
    v27 = v25[1];
    v57 = v23;
    v58 = v26;

    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v28 = *(v8 + 72);
    v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v30 = swift_allocObject();
    v59 = v13;
    *(v30 + 16) = v47;
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    v31 = v50;
    TLV.init(tag:string:)();
    v13 = v59;
    TLV.init(tag:children:)();

    v60 = v13;
    v33 = v13[2];
    v32 = v13[3];
    if (v33 >= v32 >> 1)
    {
      sub_10004E380(v32 > 1, v33 + 1, 1);
      v31 = v50;
      v13 = v60;
    }

    v13[2] = v33 + 1;
    result = (*v48)(v13 + v29 + v33 * v28, v31, v51);
    a1 = v46;
    v20 = 1 << *(v46 + 32);
    v14 = v49;
    if (v17 >= v20)
    {
      goto LABEL_24;
    }

    v34 = *(v49 + 8 * v56);
    if ((v34 & v55) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v19) = v45;
    if (v45 != *(v46 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v17 & 0x3F));
    if (v35)
    {
      v20 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v21 = v43;
    }

    else
    {
      v36 = v56 << 6;
      v37 = v56 + 1;
      v21 = v43;
      v38 = (v42 + 8 * v56);
      while (v37 < (v20 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_100064AB0(v17, v45, 0);
          v20 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v17, v45, 0);
    }

LABEL_4:
    v18 = v54 + 1;
    v17 = v20;
    v8 = v44;
    if (v54 + 1 == v21)
    {
      return v13;
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
LABEL_26:
  __break(1u);
  return result;
}