uint64_t sub_10004B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 128) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10004B284, 0, 0);
}

uint64_t sub_10004B284()
{
  v1 = v0[4];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = v2;

  v3._object = 0x800000010006CB70;
  v3._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v3);

  v0[11] = v6;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v0[12] = v4;
  v0[13] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004B384, v4, 0);
}

uint64_t sub_10004B384()
{
  v1 = v0[12];
  v0[14] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[5], v0[13]);
  v0[15] = 0;
  v2 = v0[13];
  v3 = v0[11];

  return _swift_task_switch(sub_10004B428, 0, 0);
}

uint64_t sub_10004B428()
{
  v30 = v0;
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = v1;
    static RACAnalytics.sendInteractionPresented(_:isInline:)();
    v4(0);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v10 = type metadata accessor for Logger();
    sub_100002D00(v10, qword_100083AE0);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v17 = 136446723;
      *(v17 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v29);
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_1000049B8(v18, v20, &v29);

      *(v17 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s could not find Donation: %{private,mask.hash}s", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    sub_10001BF40();
    swift_allocError();
    *v24 = 13;
    v25 = _convertErrorToNSError(_:)();
    v23();
  }

  v26 = *(v0 + 80);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10004B6F8()
{
  v23 = v0;
  v0[2] = v0[15];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[15];
    v3 = v0[11];

    v4 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v22);
      *(v9 + 12) = 2080;
      v10 = v6;
      v11 = [v10 description];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1000049B8(v12, v14, &v22);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s error: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    v17 = v0[6];
    v16 = v0[7];
    v18 = v6;
    v17(v6);

    v19 = v0[2];

    v20 = v0[10];

    v21 = v0[1];

    return v21();
  }

  return result;
}

uint64_t sub_10004B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10004BA14, 0, 0);
}

uint64_t sub_10004BA14()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  static Strings.Daemon.bundleIdentifier.getter();

  v6._object = 0x800000010006CB70;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  static RACAnalytics.sendInteractionPresented(analyticsPayload:featureDomainEventName:)();
  v2(0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_10004BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 104) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = *(*(sub_100004F70(&qword_100082808, &qword_100068380) - 8) + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10004BD20, 0, 0);
}

uint64_t sub_10004BD20()
{
  static Strings.Daemon.bundleIdentifier.getter();

  v1._object = 0x800000010006CDA0;
  v1._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v1);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10004BE34;
  v3 = *(v0 + 80);
  v4 = *(v0 + 104);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return sub_10004C3A0(v3, v5, v4);
}

uint64_t sub_10004BE34()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10004C054;
  }

  else
  {
    v3 = sub_10004BF48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004BF48()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6(v4, 0);
  sub_1000071C8(v4, &qword_100082808, &qword_100068380);
  (*(v2 + 8))(v1, v3);
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10004C054()
{
  v19 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CD70, &v18);
    *(v6 + 12) = 2080;
    v0[2] = v5;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000049B8(v7, v8, &v18);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[12];
  v11 = v0[7];
  v12 = v0[5];
  (*(v0[9] + 56))(v11, 1, 1, v0[8]);
  v13 = _convertErrorToNSError(_:)();
  v12(v11, v13);

  sub_1000071C8(v11, &qword_100082808, &qword_100068380);
  v14 = v0[10];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

void sub_10004C2E0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_100013C98(v10, v12);
}

uint64_t sub_10004C3A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 216) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(sub_100004F70(&qword_100082808, &qword_100068380) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = *(*(sub_100004F70(&unk_100083BB0, &unk_100069420) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v7 = *(*(type metadata accessor for FBKSEvaluation.Action() - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  v11 = type metadata accessor for FBKSEvaluation.Subject();
  *(v4 + 104) = v11;
  v12 = *(v11 - 8);
  *(v4 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10004C584, 0, 0);
}

uint64_t sub_10004C584()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  FBKSEvaluation.subject.getter();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    (*(*(v0 + 112) + 96))(v6, *(v0 + 104));
    (*(v9 + 32))(v7, v6, v8);
    v12 = *(v9 + 16);
    *(v0 + 136) = v12;
    *(v0 + 144) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v11, v7, v8);
    v13 = *(v10 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
    *(v0 + 152) = v13;
    *(v0 + 160) = [objc_allocWithZone(BMSQLDatabase) init];
    v14 = sub_10004C8CC;
    v15 = v13;
LABEL_11:

    return _swift_task_switch(v14, v15, 0);
  }

  if (v5 == enum case for FBKSEvaluation.Subject.interaction(_:))
  {
    v16 = *(v0 + 128);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 40);
    (*(*(v0 + 112) + 96))(v16, *(v0 + 104));
    v20 = *v16;
    dispatch thunk of FBKSInteraction.evaluationID.getter();
    if ((*(v18 + 48))(v19, 1, v17) == 1)
    {
      v21 = *(v0 + 16);
      sub_1000071C8(*(v0 + 40), &qword_100082808, &qword_100068380);
      UUID.init()();
      dispatch thunk of FBKSInteraction.setEvaluationID(_:)();
    }

    else
    {
      v31 = *(v0 + 64);
      v32 = *(v0 + 72);
      v33 = *(v0 + 40);
      v34 = *(v0 + 16);

      (*(v32 + 32))(v34, v33, v31);
    }

    v35 = *(v0 + 24);
    v36 = *(v0 + 32);
    *(v0 + 184) = 0;
    *(v0 + 192) = v35;
    v37 = *(v0 + 216);
    v38 = v35;
    static RACAnalytics.sendEvaluation(_:isInline:)();

    v15 = *(v36 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    *(v0 + 200) = v15;
    v14 = sub_10004CCB0;
    goto LABEL_11;
  }

  v22 = *(v0 + 112);
  sub_100015E58(0xD00000000000001FLL, 0x800000010006CAF0);
  swift_willThrow();
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v39 = *(v0 + 40);
  (*(v22 + 8))(*(v0 + 128), *(v0 + 104));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10004C8CC()
{
  v1 = v0[20];
  v0[21] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[12], v1);
  v0[22] = 0;

  return _swift_task_switch(sub_10004C964, 0, 0);
}

uint64_t sub_10004C964()
{
  v41 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 24);
    *v3 = v1;
    (*(v2 + 104))(v3, enum case for FBKSEvaluation.Subject.interaction(_:), v4);
    v11 = v1;
    FBKSEvaluation.action.getter();
    FBKSEvaluation.formResponse.getter();
    v12 = objc_allocWithZone(type metadata accessor for FBKSEvaluation());
    v13 = FBKSEvaluation.init(subject:action:formResponse:)();

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v18 = *(v0 + 64);
    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083AE0);
    v15(v16, v17, v18);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    if (v22)
    {
      v39 = *(v0 + 96);
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v27 = 136446723;
      *(v27 + 4) = sub_1000049B8(0xD000000000000027, 0x800000010006CB10, &v40);
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v23, v26);
      v32 = sub_1000049B8(v28, v30, &v40);

      *(v27 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s could not find Donation: %{private,mask.hash}s", v27, 0x20u);
      swift_arrayDestroy();

      v31(v39, v26);
    }

    else
    {

      v33 = *(v25 + 8);
      v33(v23, v26);
      v33(v24, v26);
    }

    v13 = *(v0 + 24);
  }

  *(v0 + 184) = *(v0 + 176);
  *(v0 + 192) = v13;
  v34 = *(v0 + 32);
  v35 = *(v0 + 216);
  v36 = v13;
  static RACAnalytics.sendEvaluation(_:isInline:)();

  v37 = *(v34 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
  *(v0 + 200) = v37;

  return _swift_task_switch(sub_10004CCB0, v37, 0);
}

uint64_t sub_10004CCB0()
{
  v1 = v0[23];
  v2 = v0[3];
  sub_100008714(0, &qword_100082D50, BMFeedbackEvaluationResponse_ptr);
  v3 = sub_1000308C0(v2);
  v0[26] = v1;
  if (v1)
  {
    v4 = sub_10004D018;
  }

  else
  {
    v5 = v3;
    [*(v0[25] + 112) sendEvent:v3];

    v4 = sub_10004CD7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004CD7C()
{
  v30 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100083AE0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v8)
  {
    v28 = *(v0 + 192);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446210;
    sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000049B8(v14, v16, &v29);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluation recorded with ID: %{public}s", v12, 0xCu);
    sub_100005ED8(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  v22 = *(v0 + 80);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  v25 = *(v0 + 40);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10004D018()
{
  v1 = *(v0 + 72);

  v12 = *(v0 + 208);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  (*(v1 + 8))(*(v0 + 16), *(v0 + 64));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10004D110()
{
  v1 = *(v0[9] + 8);
  v1(v0[12], v0[8]);
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];
  v11 = v0[22];
  v1(v0[2], v0[8]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10004D210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, &v30);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v18, 0xCu);
    sub_100005ED8(v19);

    a1 = v17;
    v4 = v27;
  }

  static TaskPriority.userInitiated.getter();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v4;
  (*(v7 + 32))(&v22[v21], &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v23 = &v22[(v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v24 = v29;
  *v23 = v28;
  *(v23 + 1) = v24;
  v25 = v4;

  sub_100059484(0, 0, v12, &unk_100069B80, v22);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for UUID();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004D61C, 0, 0);
}

uint64_t sub_10004D61C()
{
  v1 = v0[5];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = v2;

  v3._object = 0x800000010006CAD0;
  v3._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v3);

  v0[12] = v6;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v0[13] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004D718, v4, 0);
}

uint64_t sub_10004D718()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  sub_100005A2C();
  *(v0 + 112) = v3;
  *(v0 + 120) = 0;

  return _swift_task_switch(sub_10004D7B0, 0, 0);
}

uint64_t sub_10004D7B0()
{
  v51 = v0;
  if (!v0[14])
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, v50);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_1000049B8(v13, v15, v50);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s could not find Evaluation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  v17 = v0[14];
  v18 = v0[15];
  v19 = type metadata accessor for JSONEncoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v17;
  sub_100004F70(&qword_100083B90, &qword_100069B88);
  sub_100055BBC();
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = v0[14];
  if (v18)
  {

    v0[2] = v18;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v26 = v0[12];

    v27 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100002D00(v28, qword_100083AE0);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, v50);
      *(v32 + 12) = 2080;
      v33 = v29;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_1000049B8(v35, v37, v50);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s error: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    v40 = v0[7];
    v39 = v0[8];
    v41 = v29;
    v40(0, 0xF000000000000000, v29);

    v42 = v0[2];
  }

  else
  {
    v43 = v0[12];
    v45 = v0[7];
    v44 = v0[8];
    v46 = v22;
    v47 = v23;

    sub_100013D40(v46, v47);
    v45(v46, v47, 0);
    sub_100013C98(v46, v47);
    sub_100013C98(v46, v47);
  }

  v48 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_10004DD14()
{
  v22 = v0;
  v0[2] = v0[15];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[12];

    v3 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000049B8(0xD000000000000029, 0x800000010006CAA0, &v21);
      *(v8 + 12) = 2080;
      v9 = v5;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000049B8(v11, v13, &v21);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v5;
    v16(0, 0xF000000000000000, v5);

    v18 = v0[2];

    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }

  return result;
}

uint64_t sub_10004E010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = a1;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, &v30);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v18, 0xCu);
    sub_100005ED8(v19);

    a1 = v17;
    v4 = v27;
  }

  static TaskPriority.userInitiated.getter();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v4;
  (*(v7 + 32))(&v22[v21], &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v23 = &v22[(v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v24 = v29;
  *v23 = v28;
  *(v23 + 1) = v24;
  v25 = v4;

  sub_100059484(0, 0, v12, &unk_100069B68, v22);

  return sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for UUID();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004E41C, 0, 0);
}

uint64_t sub_10004E41C()
{
  v1 = v0[5];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = v2;

  v3._object = 0x800000010006CA80;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);

  v0[12] = v6;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v0[13] = v4;
  v0[14] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_10004E51C, v4, 0);
}

uint64_t sub_10004E51C()
{
  v1 = v0[13];
  v0[15] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[6], v0[14]);
  v0[16] = 0;

  return _swift_task_switch(sub_10004E5B4, 0, 0);
}

uint64_t sub_10004E5B4()
{
  v51 = v0;
  if (!v0[15])
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[9];
    v4 = v0[6];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    (*(v2 + 16))(v1, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, v50);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = UUID.uuidString.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_1000049B8(v13, v15, v50);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s could not find Donation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }
  }

  v17 = v0[15];
  v18 = v0[16];
  v19 = type metadata accessor for JSONEncoder();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v17;
  sub_100004F70(&qword_100083B80, &qword_100069B70);
  sub_1000558E8();
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = v0[15];
  if (v18)
  {

    v0[2] = v18;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v26 = v0[12];

    v27 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100002D00(v28, qword_100083AE0);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, v50);
      *(v32 + 12) = 2080;
      v33 = v29;
      v34 = [v33 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_1000049B8(v35, v37, v50);

      *(v32 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s error: %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    v40 = v0[7];
    v39 = v0[8];
    v41 = v29;
    v40(0, 0xF000000000000000, v29);

    v42 = v0[2];
  }

  else
  {
    v43 = v0[12];
    v45 = v0[7];
    v44 = v0[8];
    v46 = v22;
    v47 = v23;

    sub_100013D40(v46, v47);
    v45(v46, v47, 0);
    sub_100013C98(v46, v47);
    sub_100013C98(v46, v47);
  }

  v48 = v0[11];

  v49 = v0[1];

  return v49();
}

uint64_t sub_10004EB18()
{
  v22 = v0;
  v0[2] = v0[16];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[12];

    v3 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006CA50, &v21);
      *(v8 + 12) = 2080;
      v9 = v5;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000049B8(v11, v13, &v21);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v5;
    v16(0, 0xF000000000000000, v5);

    v18 = v0[2];

    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }

  return result;
}

uint64_t sub_10004EE14(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a1;
  a7(v15, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10004EF58(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083AE0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v4;
    v18 = a4;
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = v17;
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CA20, &v33);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v22, 0xCu);
    sub_100005ED8(v23);

    a3 = v21;
    a2 = v20;
    a1 = v19;
    a4 = v18;
    v5 = v32;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v33);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s", v26, 0xCu);
    sub_100005ED8(v27);
  }

  static TaskPriority.userInitiated.getter();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v5;
  *(v29 + 40) = a1;
  *(v29 + 44) = a2 & 1;
  *(v29 + 48) = _swiftEmptyArrayStorage;
  *(v29 + 56) = a3;
  *(v29 + 64) = a4;
  v30 = v5;

  sub_100059484(0, 0, v13, &unk_100069B58, v29);

  return sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004F378(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100002D00(v16, qword_100083AE0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = a3;
    v32 = v20;
    v21 = a5;
    v22 = v6;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v32);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
    sub_100005ED8(v26);
    a4 = v25;
    a2 = v24;
    a1 = v23;
    v6 = v22;
    a5 = v21;
    a3 = v31;
  }

  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v6;
  *(v28 + 40) = a1;
  *(v28 + 44) = a2 & 1;
  *(v28 + 48) = a3;
  *(v28 + 56) = a4;
  *(v28 + 64) = a5;

  v29 = v6;
  sub_100059484(0, 0, v15, &unk_100069B48, v28);

  return sub_1000071C8(v15, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10004F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v10;
  *(v8 + 116) = a6;
  *(v8 + 112) = a5;
  *(v8 + 40) = a4;
  *(v8 + 48) = a7;
  return _swift_task_switch(sub_10004F660, 0, 0);
}

uint64_t sub_10004F660()
{
  v1 = *(v0 + 40);
  static Strings.Daemon.bundleIdentifier.getter();
  v11 = v2;

  v3._countAndFlagsBits = 0x6F4468637465662ELL;
  v3._object = 0xEF736E6F6974616ELL;
  String.append(_:)(v3);

  *(v0 + 72) = v11;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v5 = [objc_allocWithZone(BMSQLDatabase) init];
  *(v0 + 80) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_10004F7AC;
  v7 = *(v0 + 48);
  v8 = *(v0 + 116);
  v9 = *(v0 + 112);

  return CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(v9, v8, v7, v5);
}

uint64_t sub_10004F7AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_10004FD90;
  }

  else
  {

    v5 = sub_10004F8C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004F8C8()
{
  v41 = v0;
  v1 = v0[12];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  if (v1 < 0)
  {
    v39 = v0[12];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002D00(v2, qword_100083AE0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v40[0] = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, v40);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s could not find any donations", v5, 0xCu);
      sub_100005ED8(v6);
    }
  }

LABEL_8:
  v7 = v0[12];
  v8 = v0[13];
  v9 = type metadata accessor for JSONEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[4] = v7;
  sub_100004F70(&qword_100083B68, &qword_100069B50);
  sub_1000556A4();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v0[12];
  if (v8)
  {

    v0[2] = v8;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v16 = v0[9];

    v17 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002D00(v18, qword_100083AE0);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, v40);
      *(v22 + 12) = 2080;
      v23 = v19;
      v24 = [v23 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_1000049B8(v25, v27, v40);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s error: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    v30 = v0[7];
    v29 = v0[8];
    v31 = v19;
    v30(0, 0xF000000000000000, v19);

    v32 = v0[2];
  }

  else
  {
    v33 = v0[8];
    v34 = v0[9];
    v35 = v0[7];
    v36 = v12;
    v37 = v13;

    sub_100013D40(v36, v37);
    v35(v36, v37, 0);
    sub_100013C98(v36, v37);
    sub_100013C98(v36, v37);
  }

  v38 = v0[1];

  return v38();
}

uint64_t sub_10004FD90()
{
  v21 = v0;

  *(v0 + 16) = *(v0 + 104);
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 72);

    v3 = *(v0 + 24);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006C9D0, &v20);
      *(v8 + 12) = 2080;
      v9 = v5;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000049B8(v11, v13, &v20);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = v5;
    v16(0, 0xF000000000000000, v5);

    v18 = *(v0 + 16);

    v19 = *(v0 + 8);

    return v19();
  }

  return result;
}

uint64_t sub_1000500A8(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100002D00(v16, qword_100083AE0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = a3;
    v32 = v20;
    v21 = a5;
    v22 = v6;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, &v32);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
    sub_100005ED8(v26);
    a4 = v25;
    a2 = v24;
    a1 = v23;
    v6 = v22;
    a5 = v21;
    a3 = v31;
  }

  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v6;
  *(v28 + 40) = a1;
  *(v28 + 44) = a2 & 1;
  *(v28 + 48) = a3;
  *(v28 + 56) = a4;
  *(v28 + 64) = a5;

  v29 = v6;
  sub_100059484(0, 0, v15, &unk_100069B30, v28);

  return sub_1000071C8(v15, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_10005035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 100) = a6;
  *(v8 + 96) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a7;
  return _swift_task_switch(sub_100050390, 0, 0);
}

uint64_t sub_100050390()
{
  v1 = v0[4];
  static Strings.Daemon.bundleIdentifier.getter();
  v6 = v2;

  v3._countAndFlagsBits = 0x6F4468637465662ELL;
  v3._object = 0xEF736E6F6974616ELL;
  String.append(_:)(v3);

  v0[8] = v6;
  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
  v0[9] = [objc_allocWithZone(BMSQLDatabase) init];

  return _swift_task_switch(sub_100050494, v4, 0);
}

uint64_t sub_100050494()
{
  *(v0 + 80) = sub_100005FD0(*(v0 + 96), *(v0 + 100), *(v0 + 40), *(v0 + 72));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_100050534, 0, 0);
}

uint64_t sub_100050534()
{
  v39 = v0;
  if (!*(v0[10] + 16))
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100002D00(v1, qword_100083AE0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v38[0] = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, v38);
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s could not find any donations", v4, 0xCu);
      sub_100005ED8(v5);
    }
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = type metadata accessor for JSONEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v6;
  sub_100004F70(&qword_100083B50, &qword_100069B38);
  sub_1000554FC();
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v0[10];
  if (v7)
  {

    v0[2] = v7;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    sub_100008714(0, &qword_100082D08, NSError_ptr);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v15 = v0[8];

    v16 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002D00(v17, qword_100083AE0);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, v38);
      *(v21 + 12) = 2080;
      v22 = v18;
      v23 = [v22 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1000049B8(v24, v26, v38);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s error: %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v29 = v0[6];
    v28 = v0[7];
    v30 = v18;
    v29(0, 0xF000000000000000, v18);

    v31 = v0[2];
  }

  else
  {
    v32 = v0[7];
    v33 = v0[8];
    v34 = v0[6];
    v35 = v11;
    v36 = v12;

    sub_100013D40(v35, v36);
    v34(v35, v36, 0);
    sub_100013C98(v35, v36);
    sub_100013C98(v35, v36);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000509D8()
{
  v21 = v0;
  v0[2] = v0[11];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = v0[8];

    v3 = v0[3];
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000049B8(0xD000000000000045, 0x800000010006C980, &v20);
      *(v8 + 12) = 2080;
      v9 = v5;
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = sub_1000049B8(v11, v13, &v20);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[6];
    v15 = v0[7];
    v17 = v5;
    v16(0, 0xF000000000000000, v5);

    v18 = v0[2];

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_100050CE8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, int a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  if (a5)
  {
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a1;
  a9(a3, a4, a5, a8, v15);
}

uint64_t sub_100050DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for FBKSRemoteAlertRequest();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v12 = type metadata accessor for FBKSRemoteEvaluationRequest();
  v8[11] = v12;
  v13 = *(v12 - 8);
  v8[12] = v13;
  v14 = *(v13 + 64) + 15;
  v8[13] = swift_task_alloc();
  v15 = *(*(sub_100004F70(&unk_100083BB0, &unk_100069420) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v16 = *(*(type metadata accessor for FBKSEvaluation.Action() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v17 = type metadata accessor for Failure();
  v8[16] = v17;
  v18 = *(v17 - 8);
  v8[17] = v18;
  v19 = *(v18 + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v8[20] = v20;
  v21 = *(v20 - 8);
  v8[21] = v21;
  v22 = *(v21 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v23 = type metadata accessor for FBKSEvaluation.Subject();
  v8[26] = v23;
  v24 = *(v23 - 8);
  v8[27] = v24;
  v25 = *(v24 + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v26 = type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation();
  v8[30] = v26;
  v27 = *(v26 - 8);
  v8[31] = v27;
  v28 = *(v27 + 64) + 15;
  v8[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000510F0, 0, 0);
}

uint64_t sub_1000510F0()
{
  v106 = v0;
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[3];
  v3 = v0[4];
  v105[0] = static Strings.Daemon.bundleIdentifier.getter();
  v105[1] = v5;

  v6._countAndFlagsBits = 0x4565746F6D65722ELL;
  v6._object = 0xEF657461756C6176;
  String.append(_:)(v6);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  sub_100058B7C(&unk_100083BF0, &type metadata accessor for FBKSEvaluation.Subject.RemoteEvaluation);
  static JSONCodable.decode(from:)();
  v0[33] = 0;
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  FBKSEvaluation.Subject.RemoteEvaluation.subject.getter();
  v11 = (*(v10 + 88))(v8, v9);
  if (v11 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    v12 = v0[29];
    v13 = v0[25];
    v14 = v0[20];
    v15 = v0[21];
    (*(v0[27] + 96))(v12, v0[26]);
    (*(v15 + 32))(v13, v12, v14);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[20];
    v19 = v0[21];
    v20 = type metadata accessor for Logger();
    v0[34] = sub_100002D00(v20, qword_100083AE0);
    v21 = *(v19 + 16);
    v0[35] = v21;
    v0[36] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v16, v17, v18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[24];
    v26 = v0[20];
    v27 = v0[21];
    if (v24)
    {
      v28 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v105[0] = v101;
      *v28 = 136446210;
      sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = *(v27 + 8);
      v32(v25, v26);
      v33 = sub_1000049B8(v29, v31, v105);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Fetching donation for donationId %{public}s", v28, 0xCu);
      sub_100005ED8(v101);
    }

    else
    {

      v32 = *(v27 + 8);
      v32(v25, v26);
    }

    v0[37] = v32;
    v53 = *(v0[5] + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
    v0[38] = v53;
    v0[39] = [objc_allocWithZone(BMSQLDatabase) init];

    return _swift_task_switch(sub_100051C40, v53, 0);
  }

  else if (v11 == enum case for FBKSEvaluation.Subject.interaction(_:))
  {
    v34 = v11;
    v35 = v0[29];
    (*(v0[27] + 96))(v35, v0[26]);
    v36 = *v35;
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100002D00(v37, qword_100083AE0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Using Interaction", v40, 2u);
    }

    v0[42] = v36;
    v41 = v0[32];
    if (FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter())
    {
      v42 = v0[32];
      v43 = v0[15];
      v44 = v0[12];
      v45 = v0[13];
      v46 = v0[10];
      v47 = v0[11];
      v48 = v0[9];
      v102 = v0[8];
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v49 = v36;
      FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter();
      FBKSEvaluation.Subject.RemoteEvaluation.associateWithAppleAccount.getter();
      FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)();
      type metadata accessor for LaunchController();
      swift_initStaticObject();
      (*(v44 + 16))(v46, v45, v47);
      (*(v48 + 104))(v46, enum case for FBKSRemoteAlertRequest.evaluation(_:), v102);
      v50 = swift_task_alloc();
      v0[47] = v50;
      *v50 = v0;
      v50[1] = sub_100052890;
      v51 = v0[10];

      return sub_10003C914(v51);
    }

    else
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      sub_100002D00(v37, qword_100083AE0);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Client doesn't now want to show feedback form. Will record evaluation now and exit", v73, 2u);
      }

      v74 = v0[32];
      v76 = v0[27];
      v75 = v0[28];
      v77 = v0[26];
      v79 = v0[14];
      v78 = v0[15];

      *v75 = v36;
      (*(v76 + 104))(v75, v34, v77);
      v80 = v36;
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v81 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v81 - 8) + 56))(v79, 1, 1, v81);
      v82 = type metadata accessor for FBKSEvaluation();
      v0[43] = v82;
      v83 = objc_allocWithZone(v82);
      v84 = FBKSEvaluation.init(subject:action:formResponse:)();
      v0[44] = v84;
      v85 = swift_task_alloc();
      v0[45] = v85;
      *v85 = v0;
      v85[1] = sub_1000524A4;
      v86 = v0[22];
      v87 = v0[5];

      return sub_10004C3A0(v86, v84, 1);
    }
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100002D00(v54, qword_100083AE0);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v105[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, v105);
      _os_log_impl(&_mh_execute_header, v55, v56, "Unknown default in %s", v57, 0xCu);
      sub_100005ED8(v58);
    }

    v59 = v0[18];
    v60 = v0[6];
    Failure.init(message:)();
    v62 = v0[31];
    v61 = v0[32];
    v63 = v0[30];
    v65 = v0[17];
    v64 = v0[18];
    v66 = v0[16];
    if (v60)
    {
      v103 = v0[32];
      v67 = v0[6];
      v68 = v0[7];
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure);
      swift_allocError();
      (*(v65 + 16))(v69, v64, v66);
      v70 = _convertErrorToNSError(_:)();
      v67(0, 0xF000000000000000, v70);

      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v103, v63);
    }

    else
    {
      (*(v65 + 8))(v0[18], v0[16]);
      (*(v62 + 8))(v61, v63);
    }

    (*(v0[27] + 8))(v0[29], v0[26]);
    v88 = v0[32];
    v89 = v0[28];
    v90 = v0[29];
    v92 = v0[24];
    v91 = v0[25];
    v94 = v0[22];
    v93 = v0[23];
    v96 = v0[18];
    v95 = v0[19];
    v97 = v0[15];
    v99 = v0[14];
    v100 = v0[13];
    v104 = v0[10];

    v98 = v0[1];

    return v98();
  }
}

uint64_t sub_100051C40()
{
  v1 = v0[38];
  v2 = v0[33];
  v0[40] = CFBBiomeReader.fetchDonation(donationID:database:)(v0[25], v0[39]);
  v0[41] = v2;

  if (v2)
  {
    v3 = sub_100052C18;
  }

  else
  {
    v3 = sub_100051CD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051CD8()
{
  v85 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 168) + 8;
    (*(v0 + 296))(*(v0 + 200), *(v0 + 160));
    *(v0 + 336) = v1;
    v3 = *(v0 + 256);
    if (FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter())
    {
      v4 = *(v0 + 256);
      v5 = *(v0 + 120);
      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);
      v9 = *(v0 + 88);
      v10 = *(v0 + 72);
      v80 = *(v0 + 64);
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v11 = v1;
      FBKSEvaluation.Subject.RemoteEvaluation.showFeedbackForm.getter();
      FBKSEvaluation.Subject.RemoteEvaluation.associateWithAppleAccount.getter();
      FBKSRemoteEvaluationRequest.init(action:interaction:showFeedbackForm:associateWithAppleAccount:)();
      type metadata accessor for LaunchController();
      swift_initStaticObject();
      (*(v6 + 16))(v8, v7, v9);
      (*(v10 + 104))(v8, enum case for FBKSRemoteAlertRequest.evaluation(_:), v80);
      v12 = swift_task_alloc();
      *(v0 + 376) = v12;
      *v12 = v0;
      v12[1] = sub_100052890;
      v13 = *(v0 + 80);

      return sub_10003C914(v13);
    }

    else
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100002D00(v29, qword_100083AE0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Client doesn't now want to show feedback form. Will record evaluation now and exit", v32, 2u);
      }

      v33 = *(v0 + 256);
      v35 = *(v0 + 216);
      v34 = *(v0 + 224);
      v36 = *(v0 + 208);
      v38 = *(v0 + 112);
      v37 = *(v0 + 120);

      *v34 = v1;
      (*(v35 + 104))(v34, enum case for FBKSEvaluation.Subject.interaction(_:), v36);
      v39 = v1;
      FBKSEvaluation.Subject.RemoteEvaluation.action.getter();
      v40 = type metadata accessor for FBKSEvaluation.FormResponse();
      (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
      v41 = type metadata accessor for FBKSEvaluation();
      *(v0 + 344) = v41;
      v42 = objc_allocWithZone(v41);
      v43 = FBKSEvaluation.init(subject:action:formResponse:)();
      *(v0 + 352) = v43;
      v44 = swift_task_alloc();
      *(v0 + 360) = v44;
      *v44 = v0;
      v44[1] = sub_1000524A4;
      v45 = *(v0 + 176);
      v46 = *(v0 + 40);

      return sub_10004C3A0(v45, v43, 1);
    }
  }

  else
  {
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    (*(v0 + 280))(*(v0 + 184), *(v0 + 200), *(v0 + 160));
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 296);
    v21 = *(v0 + 184);
    v23 = *(v0 + 160);
    v22 = *(v0 + 168);
    if (v19)
    {
      v24 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v24 = 136446723;
      *(v24 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v83);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2081;
      v25 = UUID.uuidString.getter();
      v27 = v26;
      v20(v21, v23);
      v28 = sub_1000049B8(v25, v27, &v83);

      *(v24 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s could not find Donation: %{private,mask.hash}s", v24, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v20(v21, v23);
    }

    v47 = *(v0 + 200);
    v48 = *(v0 + 152);
    v49 = *(v0 + 160);
    v50 = *(v0 + 48);
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v83 = 0xD000000000000020;
    v84 = 0x800000010006CD40;
    sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID);
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    Failure.init(message:)();
    v52 = *(v0 + 296);
    v53 = *(v0 + 248);
    v54 = *(v0 + 256);
    v55 = *(v0 + 240);
    v56 = *(v0 + 200);
    v78 = *(v0 + 168);
    v81 = *(v0 + 160);
    v57 = *(v0 + 152);
    v59 = *(v0 + 128);
    v58 = *(v0 + 136);
    if (v50)
    {
      v76 = *(v0 + 256);
      v60 = *(v0 + 56);
      v75 = *(v0 + 48);
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure);
      swift_allocError();
      (*(v58 + 16))(v61, v57, v59);
      v74 = v55;
      v62 = _convertErrorToNSError(_:)();
      v75(0, 0xF000000000000000, v62);

      (*(v58 + 8))(v57, v59);
      v52(v56, v81);
      (*(v53 + 8))(v76, v74);
    }

    else
    {
      (*(v58 + 8))(*(v0 + 152), *(v0 + 128));
      v52(v56, v81);
      (*(v53 + 8))(v54, v55);
    }

    v63 = *(v0 + 256);
    v64 = *(v0 + 224);
    v65 = *(v0 + 232);
    v67 = *(v0 + 192);
    v66 = *(v0 + 200);
    v69 = *(v0 + 176);
    v68 = *(v0 + 184);
    v71 = *(v0 + 144);
    v70 = *(v0 + 152);
    v72 = *(v0 + 120);
    v77 = *(v0 + 112);
    v79 = *(v0 + 104);
    v82 = *(v0 + 80);

    v73 = *(v0 + 8);

    return v73();
  }
}

uint64_t sub_1000524A4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = sub_100052DA0;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v4 = sub_1000525D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000525D0()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[46];
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[7];
    v6 = type metadata accessor for JSONEncoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();

    JSONEncoder.init()();
    v0[2] = v3;
    sub_100058B7C(&unk_100083BA0, &type metadata accessor for FBKSEvaluation);
    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v2;
    v12 = v0[44];
    v38 = v0[42];
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[30];
    v17 = v0[6];
    v16 = v0[7];
    if (v11)
    {
      (*(v14 + 8))(v0[32], v0[30]);

      sub_100047508(v17);

      v18 = _convertErrorToNSError(_:)();
      v1(0, 0xF000000000000000, v18);
    }

    else
    {
      v21 = v9;
      v22 = v10;
      v36 = v0[32];

      sub_100013D40(v21, v22);
      v1(v21, v22, 0);

      sub_100047508(v17);
      sub_100013C98(v21, v22);
      sub_100013C98(v21, v22);

      (*(v14 + 8))(v36, v15);
    }
  }

  else
  {
    v19 = v0[44];
    v20 = v0[42];
    (*(v0[31] + 8))(v0[32], v0[30]);
  }

  v23 = v0[32];
  v24 = v0[28];
  v25 = v0[29];
  v27 = v0[24];
  v26 = v0[25];
  v29 = v0[22];
  v28 = v0[23];
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[15];
  v35 = v0[14];
  v37 = v0[13];
  v39 = v0[10];

  v33 = v0[1];

  return v33();
}

uint64_t sub_100052890()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_100052F1C;
  }

  else
  {
    v5 = sub_1000529F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000529F8()
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083AE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did finish launching hidden app", v4, 2u);
  }

  v5 = *(v0 + 48);

  if (v5)
  {
    v6 = *(v0 + 56);
    (*(v0 + 48))(0, 0xF000000000000000, 0);
  }

  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 240);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);

  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  v13 = *(v0 + 256);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100052C18()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 168) + 8;
  (*(v0 + 296))(*(v0 + 200), *(v0 + 160));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 328);
  v6 = *(v0 + 48);
  if (v6)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 328);
    v9 = _convertErrorToNSError(_:)();
    v6(0, 0xF000000000000000, v9);
  }

  else
  {
    v10 = *(v0 + 328);
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v20 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100052DA0()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 368);
  v6 = *(v0 + 48);
  if (v6)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 368);
    v9 = _convertErrorToNSError(_:)();
    v6(0, 0xF000000000000000, v9);
  }

  else
  {
    v10 = *(v0 + 368);
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  v20 = *(v0 + 120);
  v23 = *(v0 + 112);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100052F1C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 384);
  v8 = *(v0 + 48);
  if (v8)
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 384);
    v11 = _convertErrorToNSError(_:)();
    v8(0, 0xF000000000000000, v11);
  }

  else
  {
    v12 = *(v0 + 384);
  }

  v13 = *(v0 + 256);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

void sub_100053208()
{
  v1 = type metadata accessor for FeedbackFeatureFlags();
  v14 = v1;
  v15 = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags);
  v2 = sub_100019A2C(v13);
  (*(*(v1 - 8) + 104))(v2, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005ED8(v13);
  if (v1)
  {
    v3 = [objc_opt_self() sharedScheduler];
    static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v15 = sub_100055294;
    v16 = v5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100054838;
    v14 = &unk_10007E870;
    v6 = _Block_copy(v13);
    v7 = v0;

    [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100002D00(v8, qword_100083AE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C940, v13);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s not registering background task because BatchEvaluation is disabled.", v11, 0xCu);
      sub_100005ED8(v12);
    }
  }
}

uint64_t sub_1000534E0(void *a1, void *a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083AE0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    v13 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v15 = sub_1000049B8(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Registering task %{public}s) with feedbackd.", v11, 0xCu);
    sub_100005ED8(v12);
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a2;
  v18 = a1;
  v19 = a2;
  v20 = sub_100059788(0, 0, v7, &unk_100069B18, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000553FC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100059744;
  aBlock[3] = &unk_10007E8E8;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v23 setExpirationHandler:v22];
  _Block_release(v22);
}

uint64_t sub_1000537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_1000537F4, 0, 0);
}

uint64_t sub_1000537F4()
{
  *(v0 + 72) = 0;
  if (static Task<>.isCancelled.getter())
  {
    sub_100054244((v0 + 72), *(v0 + 24));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_1000538D0;
    v4 = *(v0 + 32);

    return sub_1000548A0();
  }
}

uint64_t sub_1000538D0(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 73) = a1;

  return _swift_task_switch(sub_1000539D0, 0, 0);
}

uint64_t sub_1000539D0()
{
  if (*(v0 + 73) == 1)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 48) = sub_100002D00(v1, qword_100083AE0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Triggering notification for batch evaluation", v4, 2u);
    }

    if (qword_1000825C0 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_100053CD0;

    return sub_100008A14();
  }

  else
  {
    *(v0 + 72) = 1;
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 24);
    v8 = type metadata accessor for Logger();
    sub_100002D00(v8, qword_100083AE0);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 24);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "Setting %{public}@ completed", v13, 0xCu);
      sub_1000071C8(v14, &qword_100082708, &qword_100068320);
    }

    v16 = *(v0 + 24);

    [v16 setTaskCompleted];
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100053CD0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100053F80;
  }

  else
  {
    v3 = sub_100053DE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100053DE4()
{
  *(v0 + 72) = 1;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Setting %{public}@ completed", v7, 0xCu);
    sub_1000071C8(v8, &qword_100082708, &qword_100068320);
  }

  v10 = *(v0 + 24);

  [v10 setTaskCompleted];
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100053F80()
{
  v25 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000049B8(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Post notification error: %{public}s", v6, 0xCu);
    sub_100005ED8(v7);
  }

  else
  {
    v11 = *(v0 + 64);
  }

  *(v0 + 72) = 1;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 24);
  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083AE0);
  v14 = v12;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 24);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v17;
    *v19 = v17;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setting %{public}@ completed", v18, 0xCu);
    sub_1000071C8(v19, &qword_100082708, &qword_100068320);
  }

  v21 = *(v0 + 24);

  [v21 setTaskCompleted];
  v22 = *(v0 + 8);

  return v22();
}

id sub_100054244(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083AE0);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, v6, "Setting %{public}@ completed", v7, 0xCu);
      sub_1000071C8(v8, &qword_100082708, &qword_100068320);
    }

    return [v4 setTaskCompleted];
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083AE0);
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Task %{public}@ was cancelled", v15, 0xCu);
      sub_1000071C8(v16, &qword_100082708, &qword_100068320);
    }

    v26 = 0;
    if ([v12 setTaskExpiredWithRetryAfter:&v26 error:300.0])
    {

      return _objc_retain_x1();
    }

    else
    {
      v18 = v26;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136446210;
        swift_errorRetain();
        sub_100004F70(&unk_1000833F0, &unk_100068F00);
        v23 = String.init<A>(describing:)();
        v25 = sub_1000049B8(v23, v24, &v26);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to expire background system task with error: %{public}s", v21, 0xCu);
        sub_100005ED8(v22);
      }

      [v12 setTaskCompleted];
    }
  }
}

void sub_1000546C4(void *a1)
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Notification task %{public}@ expired", v6, 0xCu);
    sub_1000071C8(v7, &qword_100082708, &qword_100068320);
  }

  Task.cancel()();
}

void sub_100054838(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000548C0()
{
  v16 = v0;
  v1 = type metadata accessor for FeedbackFeatureFlags();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags);
  v2 = sub_100019A2C((v0 + 16));
  (*(*(v1 - 8) + 104))(v2, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005ED8((v0 + 16));
  if (v1)
  {
    if (qword_1000826A0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = dword_100083AFC;
    *(v0 + 112) = dword_100083AFC;
    v5 = *(v3 + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeReader);
    v6 = [objc_allocWithZone(BMSQLDatabase) init];
    *(v0 + 80) = v6;
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_100054BC4;

    return CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(v4, 0, 0, v6);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100002D00(v9, qword_100083AE0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000049B8(0xD000000000000015, 0x800000010006C920, &v15);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s returns false because BatchEvaluation is disabled.", v12, 0xCu);
      sub_100005ED8(v13);
    }

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_100054BC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_100054F10;
  }

  else
  {

    v5 = sub_100054CE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100054CE0()
{
  v23 = v0;
  v1 = *(v0 + 96);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 96);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 112);
  if (v2 < v3)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v6 = type metadata accessor for Logger();
    sub_100002D00(v6, qword_100083AE0);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v9 = 136315394;
      v10 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v12 = sub_1000049B8(v10, v11, &v22);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      if (v1 >> 62)
      {
        v15 = *(v0 + 96);
        if (v1 < 0)
        {
          v16 = *(v0 + 96);
        }

        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = *(v0 + 96);

      *(v9 + 14) = v13;

      _os_log_impl(&_mh_execute_header, v7, v8, "%s Do not have enough donations to trigger notification. %ld", v9, 0x16u);
      sub_100005ED8(v21);
    }

    else
    {
      v14 = *(v0 + 96);
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v4 = *(v0 + 96);
  }

  v18 = *(v0 + 8);

  return v18(v2 >= v3);
}

uint64_t sub_100054F10()
{
  v21 = v0;
  v1 = *(v0 + 104);

  *(v0 + 56) = v1;
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v0 + 64);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002D00(v4, qword_100083AE0);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v11 = sub_1000049B8(v9, v10, &v20);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = v5;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1000049B8(v14, v16, &v20);

      *(v8 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v18 = *(v0 + 56);

    v19 = *(v0 + 8);

    return v19(0);
  }

  return result;
}

id sub_1000551A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CentralizedFeedbackDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005525C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005529C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000552B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000552FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_1000537D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000553BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055408(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002E084;

  return sub_10005035C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000554FC()
{
  result = qword_100083B58;
  if (!qword_100083B58)
  {
    sub_100005F88(&qword_100083B50, &qword_100069B38);
    sub_100058B7C(&qword_100083B60, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B58);
  }

  return result;
}

uint64_t sub_1000555B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002E084;

  return sub_10004F62C(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000556A4()
{
  result = qword_100083B70;
  if (!qword_100083B70)
  {
    sub_100005F88(&qword_100083B68, &qword_100069B50);
    sub_100058B7C(&qword_100083B78, &type metadata accessor for FBKSDonation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B70);
  }

  return result;
}

uint64_t sub_100055758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000557AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000BEA0;

  return sub_10004E358(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_1000558E8()
{
  result = qword_100083B88;
  if (!qword_100083B88)
  {
    sub_100005F88(&qword_100083B80, &qword_100069B70);
    sub_100058B7C(&qword_100083B78, &type metadata accessor for FBKSDonation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B88);
  }

  return result;
}

uint64_t sub_10005599C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100055A80(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002E084;

  return sub_10004D558(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_100055BBC()
{
  result = qword_100083B98;
  if (!qword_100083B98)
  {
    sub_100005F88(&qword_100083B90, &qword_100069B88);
    sub_100058B7C(&unk_100083BA0, &type metadata accessor for FBKSEvaluation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B98);
  }

  return result;
}

uint64_t sub_100055C70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100055D54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002E084;

  return sub_10004B1BC(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_100055EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_100049F20(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100055F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100055FE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100013C98(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100056034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_100048FC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100056110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E084;

  return sub_100048844(a1, v4, v5, v6);
}

void sub_100056204()
{
  v0 = type metadata accessor for FeedbackFeatureFlags();
  v64[3] = v0;
  v64[4] = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags);
  v1 = sub_100019A2C(v64);
  (*(*(v0 - 8) + 104))(v1, enum case for FeedbackFeatureFlags.BatchEvaluation(_:), v0);
  LOBYTE(v0) = isFeatureEnabled(_:)();
  sub_100005ED8(v64);
  if (v0)
  {
    v2 = static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedScheduler];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 taskRequestForIdentifier:v7];

    if (v8)
    {
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100002D00(v9, qword_100083AE0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v64[0] = v13;
        *v12 = 136315138;
        v14 = sub_1000049B8(v2, v4, v64);

        *(v12 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Task request %s already exists", v12, 0xCu);
        sub_100005ED8(v13);
      }

      else
      {
      }

      v35 = v8;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v64[0] = v39;
        *v38 = 136315138;
        v40 = [v35 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = sub_1000049B8(v41, v43, v64);

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "Existing BGST.taskRequest: %s", v38, 0xCu);
        sub_100005ED8(v39);
      }

      else
      {
      }
    }

    else
    {
      static Strings.Daemon.CheckDonationsTaskIdentifier.getter();
      v20 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 initWithIdentifier:v21];

      v23 = v22;
      [v23 setPriority:2];
      [v23 setRequiresNetworkConnectivity:0];
      [v23 setRequiresExternalPower:0];

      if (qword_1000826A8 != -1)
      {
        swift_once();
      }

      [v23 setInterval:*&qword_100083B00];
      if (qword_100082680 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100002D00(v24, qword_100083AE0);

      v25 = v23;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v64[0] = v30;
        *v28 = 136315394;
        *(v28 + 4) = sub_1000049B8(v2, v4, v64);
        *(v28 + 12) = 2112;
        *(v28 + 14) = v25;
        *v29 = v25;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Task %s has no request, submitting request: %@", v28, 0x16u);
        sub_1000071C8(v29, &qword_100082708, &qword_100068320);

        sub_100005ED8(v30);
      }

      v32 = [v5 sharedScheduler];
      v64[0] = 0;
      v33 = [v32 submitTaskRequest:v25 error:v64];

      if (v33)
      {
        v34 = v64[0];

        return;
      }

      v45 = v64[0];
      v46 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v64[0] = v46;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      type metadata accessor for BGSystemTaskSchedulerError(0);
      if (swift_dynamicCast())
      {

        v47 = v62;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v50 = 136315394;
          v51 = sub_1000049B8(v2, v4, &v63);

          *(v50 + 4) = v51;
          *(v50 + 12) = 2080;
          sub_100058B7C(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);
          _BridgedStoredNSError.code.getter();
          type metadata accessor for Code(0);
          v52 = String.init<A>(describing:)();
          v54 = sub_1000049B8(v52, v53, &v63);

          *(v50 + 14) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Task %s schedule request failed: %s", v50, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      else
      {

        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v64[0] = v59;
          *v57 = 136315394;
          v60 = sub_1000049B8(v2, v4, v64);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2112;
          swift_errorRetain();
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 14) = v61;
          *v58 = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Task %s schedule request failed: %@", v57, 0x16u);
          sub_1000071C8(v58, &qword_100082708, &qword_100068320);

          sub_100005ED8(v59);

          return;
        }
      }
    }
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002D00(v15, qword_100083AE0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006CBF0, v64);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s not submitting background task because BatchEvaluation is disabled.", v18, 0xCu);
      sub_100005ED8(v19);
    }
  }
}

uint64_t sub_100056CD8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FeedbackFeatureFlags();
  v32 = v4;
  v33 = sub_100058B7C(&qword_100083B48, &type metadata accessor for FeedbackFeatureFlags);
  v5 = sub_100019A2C(&v29);
  (*(*(v4 - 8) + 104))(v5, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100005ED8(&v29);
  if ((v4 & 1) == 0)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083AE0);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = [v12 processIdentifier];

      _os_log_impl(&_mh_execute_header, v13, v14, "Centralized Feedback feature disabled. Rejecting XPC connection from: %{public}d", v15, 8u);
    }

    else
    {
    }

    return 0;
  }

  if ((sub_10004824C(&static Strings.XPC.CentralizedFeedback.entitlement.getter) & 1) == 0 && (sub_10004824C(&static Strings.XPC.CentralizedFeedback.draftingEntitlement.getter) & 1) == 0 && (sub_10004824C(&static Strings.XPC.CentralizedFeedback.remoteEvaluationEntitlement.getter) & 1) == 0)
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100083AE0);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67240192;
      *(v28 + 4) = [v25 processIdentifier];

      _os_log_impl(&_mh_execute_header, v26, v27, "Process %{public}d is not entitled to use this service. Refusing connection.", v28, 8u);
    }

    else
    {

      v26 = v25;
    }

    [v25 invalidate];
    return 0;
  }

  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002D00(v6, qword_100083AE0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = [v7 processIdentifier];

    _os_log_impl(&_mh_execute_header, v8, v9, "Accepting a new XPC connection from: %{public}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  v33 = sub_100058BC4;
  v34 = v17;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100059744;
  v32 = &unk_10007ECD0;
  v18 = _Block_copy(&v29);
  v19 = v7;

  [v19 setInterruptionHandler:v18];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v33 = sub_100058BE8;
  v34 = v20;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100059744;
  v32 = &unk_10007ED20;
  v21 = _Block_copy(&v29);
  v22 = v19;

  [v22 setInvalidationHandler:v21];
  _Block_release(v21);
  v23 = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemonInterface()) init];
  [v22 setExportedInterface:v23];

  [v22 setExportedObject:v2];
  [v22 resume];
  return 1;
}

uint64_t sub_100057294(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = type metadata accessor for FBKSDonation.DonationError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004F70(&qword_100082808, &qword_100068380);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082698 != -1)
  {
    swift_once();
  }

  if (byte_100083AF8 == 1)
  {
    sub_100049CA4(a1, a2, sub_100058C5C, v19);
  }

  else
  {
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v32 = v8;
    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083AE0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Donation not enabled", v24, 2u);
    }

    v25 = type metadata accessor for UUID();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v18, 1, 1, v25);
    v27 = v32;
    (*(v32 + 104))(v11, enum case for FBKSDonation.DonationError.unsupported(_:), v7);
    sub_100058B7C(&unk_100083C10, &type metadata accessor for FBKSDonation.DonationError);
    swift_allocError();
    (*(v27 + 32))(v28, v11, v7);
    v29 = _convertErrorToNSError(_:)();
    sub_100058868(v18, v16);
    isa = 0;
    if ((*(v26 + 48))(v16, 1, v25) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v26 + 8))(v16, v25);
    }

    (a4)[2](a4, isa, v29);

    sub_1000071C8(v18, &qword_100082808, &qword_100068380);
  }
}

uint64_t sub_1000576F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083AE0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD000000000000049, 0x800000010006CDC0, &v23);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
    sub_100005ED8(v18);
  }

  static TaskPriority.userInitiated.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = a5;

  sub_100059484(0, 0, v13, &unk_100069C08, v20);

  return sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100057974(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v34 = a3;
  v5 = sub_100004F70(&qword_100082808, &qword_100068380);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v33 - v9;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100083AE0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v37 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CD70, &v37);
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s", v18, 0xCu);
    sub_100005ED8(v19);
  }

  v20 = [objc_opt_self() currentConnection];
  if (v20)
  {
    v21 = v20;
    v22 = sub_100048154();

    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for JSONDecoder();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSEvaluation();
  sub_100058B7C(&qword_100083C00, &type metadata accessor for FBKSEvaluation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v27 = v37;
  static TaskPriority.userInitiated.getter();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v30 = v34;
  *(v29 + 32) = v34;
  *(v29 + 40) = v27;
  *(v29 + 48) = v23 & 1;
  *(v29 + 56) = sub_100058860;
  *(v29 + 64) = v14;
  v31 = v30;

  sub_100059484(0, 0, v13, &unk_100069BF8, v29);

  sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}

void sub_10005805C(uint64_t a1, unint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v5 = v4;
  v51 = a1;
  v52 = a2;
  v8 = type metadata accessor for Failure();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v15 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v50 = &v49 - v17;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100002D00(v18, qword_100083AE0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = v5;
    v22 = v14;
    v23 = a3;
    v24 = v21;
    v25 = v9;
    v26 = v8;
    v27 = a4;
    v28 = swift_slowAlloc();
    v54 = v28;
    *v24 = 136446210;
    *(v24 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v54);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s", v24, 0xCu);
    sub_100005ED8(v28);
    a4 = v27;
    v8 = v26;
    v9 = v25;

    a3 = v23;
    v14 = v22;
    v5 = v49;
  }

  v29 = [objc_opt_self() currentConnection];
  if (v29)
  {
    v30 = v29;
    if (sub_10004824C(&static Strings.XPC.CentralizedFeedback.remoteEvaluationEntitlement.getter))
    {
      v31 = v50;
      static TaskPriority.userInitiated.getter();
      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v34 = v51;
      v35 = v52;
      v33[4] = v51;
      v33[5] = v35;
      v33[6] = v5;
      v33[7] = a3;
      v33[8] = a4;
      sub_100013D40(v34, v35);
      v36 = v5;
      sub_100045FB4(a3);
      sub_100059484(0, 0, v31, &unk_100069BE0, v33);

      sub_1000071C8(v31, &qword_1000833B0, &qword_100068D60);
      return;
    }

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v54 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1000049B8(0xD000000000000034, 0x800000010006CCB0, &v54);
      _os_log_impl(&_mh_execute_header, v43, v44, "Client not entitled to call %s", v45, 0xCu);
      sub_100005ED8(v46);
    }

    Failure.init(message:)();
    if (a3)
    {
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure);
      swift_allocError();
      (*(v9 + 16))(v47, v14, v8);
      v48 = _convertErrorToNSError(_:)();
      a3(0, 0xF000000000000000, v48);

      (*(v9 + 8))(v14, v8);
      goto LABEL_16;
    }

    (*(v9 + 8))(v14, v8);
  }

  else
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Current XPC connection is nil. Cannot check entitlements", v39, 2u);
    }

    v40 = v53;
    Failure.init(message:)();
    if (a3)
    {
      sub_100058B7C(&qword_100083BE8, &type metadata accessor for Failure);
      swift_allocError();
      (*(v9 + 16))(v41, v40, v8);
      v42 = _convertErrorToNSError(_:)();
      a3(0, 0xF000000000000000, v42);

      (*(v9 + 8))(v40, v8);
LABEL_16:

      return;
    }

    (*(v9 + 8))(v40, v8);
  }
}

uint64_t sub_10005872C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100013C98(*(v0 + 32), *(v0 + 40));

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_100050DBC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100058868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082808, &qword_100068380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000588D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_10004BC20(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100058A04()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058A50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100058AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002E084;

  return sub_10004B9EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100058B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for StorageError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100058DC4(char a1)
{
  result = 0x6E756F6620746F4ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000034;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000030;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      return result;
    case 14:
      result = 0xD00000000000002DLL;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD00000000000002CLL;
      break;
  }

  return result;
}

Swift::Int sub_100059024()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10005909C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_1000590E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005940C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005911C(uint64_t a1)
{
  v2 = sub_100059364();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100059158(uint64_t a1)
{
  v2 = sub_100059364();
  v3 = sub_1000593B8();
  v4 = sub_100007EA4();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_1000591DC()
{
  sub_1000593B8();
  sub_100007EA4();

  return CustomNSError<>.errorCode.getter();
}

unint64_t sub_100059234()
{
  v1 = *v0;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = sub_100058DC4(v1);
  *(inited + 40) = v3;
  sub_1000593B8();
  sub_100007EA4();
  v4 = CustomNSError<>.errorCode.getter();
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v4;
  v5 = sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  return v5;
}

unint64_t sub_100059310()
{
  result = qword_100083C20;
  if (!qword_100083C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C20);
  }

  return result;
}

unint64_t sub_100059364()
{
  result = qword_100083C28;
  if (!qword_100083C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C28);
  }

  return result;
}

unint64_t sub_1000593B8()
{
  result = qword_100083C30;
  if (!qword_100083C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083C30);
  }

  return result;
}

uint64_t sub_10005940C(uint64_t a1)
{
  if ((a1 - 1) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t SharedLog.unsafeMutableAddressor()
{
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100002D00(v0, SharedLog);
}

uint64_t sub_100059484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C0A0(a3, v27 - v11, &qword_1000833B0, &qword_100068D60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100059744(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100059788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C0A0(a3, v27 - v11, &qword_1000833B0, &qword_100068D60);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000071C8(v12, &qword_1000833B0, &qword_100068D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100059A88()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083C40);
  sub_100002D00(v0, qword_100083C40);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100059AEC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, SharedLog);
  v1 = sub_100002D00(v0, SharedLog);
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100059BB4()
{
  result = [objc_allocWithZone(type metadata accessor for FeedbackDaemon()) init];
  qword_100085E60 = result;
  return result;
}

id sub_100059BE4()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener] = 0;
  v17 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue;
  v16 = sub_100008714(0, &qword_100083480, OS_dispatch_queue_ptr);
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v10 = static Strings.Daemon.bundleIdentifier.getter();
  v12 = v11;

  v19 = v10;
  v20 = v12;
  v13._countAndFlagsBits = 0x636162646565662DLL;
  v13._object = 0xEF6E6F6D6561446BLL;
  String.append(_:)(v13);
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100062850(&qword_100083D18, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004F70(&qword_100083D20, &qword_100069DE8);
  sub_100062790();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_connectionDelegates] = &_swiftEmptyDictionarySingleton;
  v14 = type metadata accessor for FeedbackDaemon();
  v18.receiver = v0;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, "init");
}

void sub_100059EE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083C40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    v25[1] = ObjectType;
    *v10 = 136446210;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, v25);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Started %{public}s", v10, 0xCu);
    sub_100005ED8(v11);
  }

  static TaskPriority.utility.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v17 = v1;
  sub_100059484(0, 0, v6, &unk_100069D98, v16);

  sub_1000071C8(v6, &qword_1000833B0, &qword_100068D60);
  static Strings.XPC.machService.getter();
  v18 = objc_allocWithZone(NSXPCListener);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithMachServiceName:v19];

  v21 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener;
  v22 = *&v17[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener];
  *&v17[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_listener] = v20;
  v23 = v20;

  if (v23)
  {
    [v23 setDelegate:v17];

    v24 = *&v17[v21];
    if (v24)
    {
      [v24 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10005A20C()
{
  static Strings.Daemon.bundleIdentifier.getter();
  v1._countAndFlagsBits = 0x74726174732ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10005A32C;

  return sub_10002273C();
}

uint64_t sub_10005A32C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_10005A428, 0, 0);
}

uint64_t sub_10005A428()
{
  v1 = static Strings.Daemon.XPCActivityIdentifier.getter();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v0[6] = sub_10005BAFC;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10005B714;
  v0[5] = &unk_10007EE78;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  v7 = String.utf8CString.getter();

  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
  v8 = v0[1];

  return v8();
}

void sub_10005A570(void *a1)
{
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083C40);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = [v3 processIdentifier];

    _os_log_impl(&_mh_execute_header, oslog, v4, "XPC service connection interrupted: %{public}d", v5, 8u);

    v6 = oslog;
  }

  else
  {

    v6 = v3;
  }
}

uint64_t sub_10005A69C(void *a1, char *a2)
{
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083C40);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&_mh_execute_header, v6, v7, "XPC service connection invalidated: %{public}d", v8, 8u);
  }

  else
  {

    v6 = v5;
  }

  v9 = *&a2[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v5;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100062788;
  *(v11 + 24) = v10;
  v17[4] = sub_1000628BC;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005A960;
  v17[3] = &unk_10007F080;
  v12 = _Block_copy(v17);
  v13 = v5;
  v14 = a2;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A8F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_10005C6B8(a2);
  swift_endAccess();
}

uint64_t sub_10005A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_connectionDelegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if ((v7 & 0xC000000000000001) == 0)
  {
    v10 = *(a1 + v6);

    goto LABEL_8;
  }

  if (v7 < 0)
  {
    v8 = *(a1 + v6);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + v6) = sub_10005C804(v8, result + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    sub_10005E34C(a3, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v12;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_10005AAC8(uint64_t a1)
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v2 code] == 1)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100002D00(v10, qword_100083C40);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_20;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to unlock device for app launch", v13, 2u);
    goto LABEL_19;
  }

LABEL_13:
  v23 = a1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if ((swift_dynamicCast() & 1) != 0 && v22 == 8)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083C40);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    v18 = sub_100015668(8u);
    v20 = sub_1000049B8(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v15, "[%{public}s]", v16, 0xCu);
    sub_100005ED8(v17);

LABEL_19:

LABEL_20:

    return 1;
  }

  return 0;
}

void sub_10005ADC8(_xpc_activity_s *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002D00(v15, qword_100083C40);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000049B8(a2, a3, &v30);
      _os_log_impl(&_mh_execute_header, v16, v17, "Activity %{public}s: RUN", v18, 0xCu);
      sub_100005ED8(v19);
    }

    v20 = xpc_activity_set_state(a1, 4);

    v21 = Logger.logObject.getter();
    if (v20)
    {
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_1000049B8(a2, a3, &v30);
        v25 = "Activity %{public}s: CONTINUE";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, v22, v25, v23, 0xCu);
        sub_100005ED8(v24);
      }
    }

    else
    {
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_1000049B8(a2, a3, &v30);
        v25 = "Failed to set activity %{public}s to CONTINUE";
        goto LABEL_19;
      }
    }

    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v20;
    *(v28 + 40) = a1;
    *(v28 + 48) = a2;
    *(v28 + 56) = a3;

    swift_unknownObjectRetain();
    sub_100059788(0, 0, v9, &unk_100069DC8, v28);

    return;
  }

  if (!state)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002D00(v11, qword_100083C40);

    v29 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000049B8(a2, a3, &v30);
      _os_log_impl(&_mh_execute_header, v29, v12, "Activity %{public}s: CHECK_IN", v13, 0xCu);
      sub_100005ED8(v14);
    }

    else
    {
      v26 = v29;
    }
  }
}

uint64_t sub_10005B2C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_10005B2E8, 0, 0);
}

uint64_t sub_10005B2E8()
{
  if (qword_1000825D0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10005B3AC;

  return sub_10000D0BC();
}

uint64_t sub_10005B3AC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10005B4A8, 0, 0);
}

uint64_t sub_10005B4A8()
{
  v17 = v0;
  if (*(v0 + 48) == 1)
  {
    if (xpc_activity_set_state(*(v0 + 16), 5))
    {
      if (qword_1000826B0 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 32);
      v2 = type metadata accessor for Logger();
      sub_100002D00(v2, qword_100083C40);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_12;
      }

      v6 = *(v0 + 24);
      v5 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000049B8(v6, v5, &v16);
      v9 = "Activity %{public}s: DONE";
    }

    else
    {
      if (qword_1000826B0 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 32);
      v11 = type metadata accessor for Logger();
      sub_100002D00(v11, qword_100083C40);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_12;
      }

      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000049B8(v13, v12, &v16);
      v9 = "Failed to set activity %{public}s to DONE";
    }

    _os_log_impl(&_mh_execute_header, v3, v4, v9, v7, 0xCu);
    sub_100005ED8(v8);

LABEL_12:
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10005B714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10005B774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackDaemon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005B828()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005B868()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002E084;

  return sub_10005A1F0();
}

uint64_t sub_10005B91C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B954(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002E084;

  return sub_10002A540(a1, v5);
}

uint64_t sub_10005BA0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BEA0;

  return sub_10002A540(a1, v5);
}

uint64_t sub_10005BAC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BB1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005BB64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BEA0;

  return sub_10005B2C0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10005BC3C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10005BC6C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005BF4C(a1, v4);
}

unint64_t sub_10005BCB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10005C014(a1, a2, v6);
}

unint64_t sub_10005BD28(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100062850(&unk_100083D40, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10005C0CC(a1, v4);
}

unint64_t sub_10005BDDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for FBKSForm.Question();
  sub_100062850(&qword_100083D80, &type metadata accessor for FBKSForm.Question);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10005C1D8(a1, v5);
}

unint64_t sub_10005BE74(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10005C398(a1, v4);
}

unint64_t sub_10005BF08(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005C49C(a1, v4);
}

unint64_t sub_10005BF4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000627F4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006FC4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10005C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10005C0CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100062850(&unk_100083D40, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10005C1D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for FBKSForm.Question();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100062850(&qword_100083D88, &type metadata accessor for FBKSForm.Question);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10005C398(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10005C49C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_10005C570@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10005BC6C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005E5B0();
      v11 = v13;
    }

    sub_100006FC4(*(v11 + 48) + 40 * v8);
    sub_100007274((*(v11 + 56) + 32 * v8), a2);
    sub_10005DBD0(v8, v11);
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

double sub_10005C614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10005BCB0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005E754();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100007274((*(v12 + 56) + 32 * v9), a3);
    sub_10005DD74(v9, v12);
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

uint64_t sub_10005C6B8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10005BF08(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10005DF24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10005EF10();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10005C804(v4, v7);

  v9 = sub_10005BF08(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10005DF24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10005C804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100004F70(&unk_100083D08, &qword_100069DE0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for FeedbackDaemonDelegate();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10005D960(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10005CA38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004F70(&unk_100083D30, &qword_100069138);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100007274((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_1000627F4(v24, &v37);
        sub_100007018(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100007274(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10005CCF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004F70(&qword_100082E38, &qword_100069128);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100007274(v25, v37);
      }

      else
      {
        sub_100007018(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100007274(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10005CFA8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormLaunchConfiguration();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100004F70(&unk_100083D60, &qword_100069E10);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10000F8C8(v31, v45);
      }

      else
      {
        sub_10000F92C(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_10000F8C8(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10005D2E4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FBKSForm.Question();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100004F70(&qword_100083D78, &qword_100069E20);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_100062850(&qword_100083D80, &type metadata accessor for FBKSForm.Question);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10005D6C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004F70(&qword_100083D70, &qword_100069E18);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005D960(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004F70(&unk_100083D08, &qword_100069DE0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005DBD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_1000627F4(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100006FC4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005DD74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10005DF24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_10005E0B0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10005BC6C(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10005E5B0();
      goto LABEL_7;
    }

    sub_10005CA38(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10005BC6C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000627F4(a2, v22);
      return sub_10005E4C8(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005ED8(v17);

  return sub_100007274(a1, v17);
}

_OWORD *sub_10005E1FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10005BCB0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10005E754();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10005CCF0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10005BCB0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100005ED8(v23);

    return sub_100007274(a1, v23);
  }

  else
  {
    sub_10005E544(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10005E34C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10005BF08(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10005D960(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10005BF08(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100008714(0, &qword_100083D00, NSXPCConnection_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10005EF10();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

_OWORD *sub_10005E4C8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100007274(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_10005E544(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100007274(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10005E5B0()
{
  v1 = v0;
  sub_100004F70(&unk_100083D30, &qword_100069138);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1000627F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100007018(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100007274(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005E754()
{
  v1 = v0;
  sub_100004F70(&qword_100082E38, &qword_100069128);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100007018(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100007274(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10005E8F8()
{
  v1 = v0;
  v2 = type metadata accessor for FormLaunchConfiguration();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004F70(&unk_100083D60, &qword_100069E10);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10000F92C(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10000F8C8(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_10005EB28()
{
  v1 = v0;
  v34 = type metadata accessor for FBKSForm.Question();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004F70(&qword_100083D78, &qword_100069E20);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10005EDA8()
{
  v1 = v0;
  sub_100004F70(&qword_100083D70, &qword_100069E18);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005EF10()
{
  v1 = v0;
  sub_100004F70(&unk_100083D08, &qword_100069DE0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = type metadata accessor for FormLaunchConfiguration();
  v3[53] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_10005F118, 0, 0);
}

uint64_t sub_10005F118()
{
  v75 = v0;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083C40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    v7 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006D420, &v74);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000049B8(v6, v5, &v74);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s [%s]", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = *(v0 + 416);
  *(v0 + 368) = *(v0 + 408);
  *(v0 + 376) = v8;
  *(v0 + 384) = 0xD000000000000013;
  *(v0 + 392) = 0x800000010006D400;
  sub_1000070C4();
  if (StringProtocol.contains<A>(_:)())
  {
    v9 = *(v0 + 424);
    v10 = *(*(v0 + 400) + *(v9 + 40));
    if (qword_100082670 != -1)
    {
      swift_once();
    }

    v11 = qword_100083AC0;

    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 integerForKey:v13];

    if (v14 < v10)
    {
      sub_10000F92C(*(v0 + 400), *(v0 + 440));
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 440);
      if (v17)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v74 = v20;
        *v19 = 136446466;
        v21 = *v18;
        v22 = v18[1];

        sub_10000F990(v18);
        v23 = sub_1000049B8(v21, v22, &v74);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2050;
        v24 = qword_100083AC0;

        v25 = v24;
        v26 = String._bridgeToObjectiveC()();
        v27 = [v25 integerForKey:v26];

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "Form [%{public}s] has been snoozed more than [%{public}ld]. Marking it as declined", v19, 0x16u);
        sub_100005ED8(v20);
      }

      else
      {

        sub_10000F990(v18);
      }

      if (qword_100082620 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    v48 = *(v0 + 424);
    v49 = *(v0 + 432);
    v50 = *(v0 + 400);
    v51 = v50[1];
    v52 = v50[3];
    v71 = v50[2];
    v73 = *v50;
    v53 = *(v50 + 3);
    *(v0 + 192) = *(v50 + 2);
    *(v0 + 208) = v53;
    v55 = *(v50 + 5);
    v54 = *(v50 + 6);
    v56 = *(v50 + 4);
    *(v0 + 272) = *(v50 + 112);
    *(v0 + 240) = v55;
    *(v0 + 256) = v54;
    *(v0 + 224) = v56;
    v57 = *(v48 + 32);
    v58 = type metadata accessor for Date();
    v59 = *(*(v58 - 8) + 56);
    v59(v49 + v57, 1, 1, v58);
    v60 = __OFADD__(v10, 1);
    v61 = v10 + 1;
    if (v60)
    {
      __break(1u);
LABEL_25:
      swift_once();
LABEL_20:
      v69 = *(v0 + 400);
      v46 = qword_100085E18;
      *(v0 + 448) = qword_100085E18;
      *(v0 + 456) = *v69;
      *(v0 + 464) = v69[1];
      v47 = sub_10005F814;
      goto LABEL_21;
    }

    v63 = *(v0 + 424);
    v62 = *(v0 + 432);
    v59(v62 + v63[9], 1, 1, v58);
    v64 = v63[6];

    sub_10000FA5C(v0 + 192, v0 + 280);
    Date.init()();
    *v62 = v73;
    *(v62 + 8) = v51;
    *(v62 + 16) = v71;
    *(v62 + 24) = v52;
    v65 = *(v0 + 208);
    *(v62 + 32) = *(v0 + 192);
    *(v62 + 48) = v65;
    v66 = *(v0 + 224);
    v67 = *(v0 + 240);
    v68 = *(v0 + 256);
    *(v62 + 112) = *(v0 + 272);
    *(v62 + 80) = v67;
    *(v62 + 96) = v68;
    *(v62 + 64) = v66;
    *(v62 + v63[7]) = 0;
    *(v62 + *(v9 + 40)) = v61;
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v46 = qword_100085DF0;
    v47 = sub_10005F988;
  }

  else
  {
    v29 = *(v0 + 424);
    v28 = *(v0 + 432);
    v30 = *(v0 + 400);
    v31 = v30[1];
    v72 = *v30;
    v33 = v30[2];
    v32 = v30[3];
    v34 = *(v30 + 3);
    *(v0 + 16) = *(v30 + 2);
    *(v0 + 32) = v34;
    v36 = *(v30 + 5);
    v35 = *(v30 + 6);
    v37 = *(v30 + 4);
    *(v0 + 96) = *(v30 + 112);
    *(v0 + 64) = v36;
    *(v0 + 80) = v35;
    *(v0 + 48) = v37;
    v38 = v29[8];
    v39 = type metadata accessor for Date();
    v40 = *(*(v39 - 8) + 56);
    v40(v28 + v38, 1, 1, v39);
    v40(v28 + v29[9], 1, 1, v39);
    v41 = v29[6];

    sub_10000FA5C(v0 + 16, v0 + 104);
    Date.init()();
    *v28 = v72;
    *(v28 + 8) = v31;
    *(v28 + 16) = v33;
    *(v28 + 24) = v32;
    v42 = *(v0 + 32);
    *(v28 + 32) = *(v0 + 16);
    *(v28 + 48) = v42;
    v43 = *(v0 + 48);
    v44 = *(v0 + 64);
    v45 = *(v0 + 80);
    *(v28 + 112) = *(v0 + 96);
    *(v28 + 80) = v44;
    *(v28 + 96) = v45;
    *(v28 + 64) = v43;
    *(v28 + v29[7]) = 0;
    *(v28 + v29[10]) = 1;
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v46 = qword_100085DF0;
    v47 = sub_10005F988;
  }

LABEL_21:

  return _swift_task_switch(v47, v46, 0);
}

uint64_t sub_10005F814()
{
  v1 = *(v0 + 448);
  sub_100034A7C(*(v0 + 456), *(v0 + 464));

  return _swift_task_switch(sub_10005F880, 0, 0);
}

uint64_t sub_10005F880()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_10005F914, v0, 0);
}

uint64_t sub_10005F914()
{
  sub_100020464(v0[51], v0[52]);
  v2 = v0[54];
  v1 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005F988()
{
  sub_100021900(*(v0 + 432));

  return _swift_task_switch(sub_10005F9F8, 0, 0);
}

uint64_t sub_10005F9F8()
{
  sub_10000F990(v0[54]);
  v2 = v0[54];
  v1 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005FA68(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_100004F70(&qword_1000830F0, &qword_100069410) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for User();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10005FB60, 0, 0);
}

uint64_t sub_10005FB60()
{
  v1 = v0[5];
  if (v1 == 1)
  {
    goto LABEL_11;
  }

  if (v1 != 2)
  {
    if (v1 != 3)
    {
      _StringGuts.grow(_:)(37);

      v9._countAndFlagsBits = FBKSForm.AuthenticationMethod.description.getter();
      String.append(_:)(v9);

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v2 = *(v0[6] + 65);
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_19;
    }

    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083C40);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Forcing to use hidden app as configured by client", v6, 2u);
    }

LABEL_11:
    v7 = 1;
LABEL_19:
    v10 = v0[10];
    v11 = v0[7];

    v12 = v0[1];

    return v12(v7);
  }

  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v8 = qword_100085E68;
  v0[11] = qword_100085E68;

  return _swift_task_switch(sub_10005FDD8, v8, 0);
}

uint64_t sub_10005FDD8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  sub_100063510();
  sub_100063510();
  v5 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10000C0A0(v1 + v5, v4, &qword_1000830F0, &qword_100069410);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000071C8(*(v0 + 56), &qword_1000830F0, &qword_100069410);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8(1);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    (*(v11 + 32))(v10, *(v0 + 56), v12);
    *(v0 + 96) = User.isUnauthenticated.getter() & 1;
    (*(v11 + 8))(v10, v12);

    return _swift_task_switch(sub_10005FF68, 0, 0);
  }
}

uint64_t sub_10005FF68()
{
  if (*(v0 + 96))
  {
LABEL_2:
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(*(v0 + 48) + 65);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    if (qword_1000826B0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100002D00(v3, qword_100083C40);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Forcing to use hidden app as configured by client", v6, 2u);
    }

    goto LABEL_2;
  }

  v1 = 0;
LABEL_11:
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_1000600C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v9 = type metadata accessor for FBKSRemoteAlertRequest();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[10] = v12;
  *v12 = v6;
  v12[1] = sub_1000601C4;

  return sub_10005FA68(a3, a5);
}

uint64_t sub_1000601C4(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000602C4, 0, 0);
}

uint64_t sub_1000602C4()
{
  if (*(v0 + 112) == 1)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    type metadata accessor for LaunchController();
    swift_initStaticObject();
    *v1 = sub_100014430(v7, v6, v5, v4);
    (*(v2 + 104))(v1, enum case for FBKSRemoteAlertRequest.form(_:), v3);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_100060480;
    v9 = *(v0 + 72);

    return sub_10003C914(v9);
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_100060718;
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    return (sub_10003E868)(v16, v14, v15, v12, v13);
  }
}

uint64_t sub_100060480()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000606B4;
  }

  else
  {
    v6 = sub_1000605F0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000605F0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  [v5 logFeedbackdLaunchedFeedbackWithForm:v6 usedAlertPrompt:1 usedNotificationPrompt:0 usedHiddenApp:v1];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000606B4()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100060718()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_1000628B8, 0, 0);
  }
}

uint64_t sub_100060864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[78] = a4;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = type metadata accessor for FormLaunchConfiguration();
  v4[79] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[80] = swift_task_alloc();
  v7 = *(*(sub_100004F70(&qword_100082CA8, &unk_100069A60) - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v8 = type metadata accessor for FormItem();
  v4[82] = v8;
  v9 = *(v8 - 8);
  v4[83] = v9;
  v10 = *(v9 + 64) + 15;
  v4[84] = swift_task_alloc();

  return _swift_task_switch(sub_100060998, 0, 0);
}

uint64_t sub_100060998()
{
  v22 = v0;
  v1 = *(v0 + 600);
  v2 = *v1;
  *(v0 + 680) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 688) = v3;
  v4 = *(v1 + 16);
  *(v0 + 696) = v4;
  v5 = *(v1 + 24);
  *(v0 + 704) = v5;
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  *(v0 + 96) = *(v1 + 112);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  v9 = *(v1 + 48);
  *(v0 + 16) = *(v1 + 32);
  *(v0 + 32) = v9;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  *(v0 + 712) = sub_100002D00(v10, qword_100083C40);

  sub_10000FA5C(v0 + 16, v0 + 104);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_100045FC4(v0 + 16);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446722;
    *(v13 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000049B8(v2, v3, &v21);
    *(v13 + 22) = 2080;
    v14 = *(v0 + 16);
    *(v0 + 544) = v14;
    *(v0 + 560) = v14;
    sub_10000C0A0(v0 + 544, v0 + 576, &unk_100083D50, &qword_100068FE0);
    sub_100004F70(&unk_100083D50, &qword_100068FE0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000049B8(v15, v16, &v21);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s form: %s prompt title: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  type metadata accessor for SeedPortal();
  *(v0 + 720) = static SeedPortal.shared.getter();
  v18 = swift_task_alloc();
  *(v0 + 728) = v18;
  *v18 = v0;
  v18[1] = sub_100060C98;
  v19 = *(v0 + 648);

  return sub_10001A628(v19, v2, v3, v4, v5, 0);
}

uint64_t sub_100060C98()
{
  v2 = *(*v1 + 728);
  v3 = *(*v1 + 720);
  v6 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v4 = sub_100061020;
  }

  else
  {
    v4 = sub_100060DC8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060DC8()
{
  v15 = v0;
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[89];
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed to launch because form item is no longer available", v7, 0xCu);
      sub_100005ED8(v8);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v9 = qword_100085E18;
    v0[95] = qword_100085E18;
    sub_10000BCE0();
    v0[96] = swift_allocError();
    *v10 = 1;
    v0[97] = _convertErrorToNSError(_:)();
    v11 = sub_1000618B4;
    v12 = v9;
  }

  else
  {
    (*(v1 + 32))(v0[84], v3, v2);
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v12 = qword_100085DF0;
    v11 = sub_10006127C;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100061020()
{
  v14 = v0;
  v1 = v0[92];
  v0[98] = v1;
  if (sub_10005AAC8(v1))
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v2 = qword_100085DF0;
    v3 = sub_100061A5C;
  }

  else
  {
    v4 = v0[89];
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v13);
      *(v7 + 12) = 2080;
      v0[74] = v1;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v8 = String.init<A>(describing:)();
      v10 = sub_1000049B8(v8, v9, &v13);

      *(v7 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v11 = qword_100085E18;
    v0[100] = qword_100085E18;
    v0[101] = _convertErrorToNSError(_:)();
    v3 = sub_100061E60;
    v2 = v11;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10006127C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v27 = *(v0 + 680);
  v28 = *(v0 + 696);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 600);
  v6 = *(v5 + 48);
  *(v0 + 368) = *(v5 + 32);
  *(v0 + 384) = v6;
  v8 = *(v5 + 80);
  v7 = *(v5 + 96);
  v9 = *(v5 + 64);
  *(v0 + 448) = *(v5 + 112);
  *(v0 + 416) = v8;
  *(v0 + 432) = v7;
  *(v0 + 400) = v9;
  v10 = v4[8];
  v26 = *(v5 + v4[7]);

  sub_10000FA5C(v0 + 368, v0 + 456);
  Date.init()();
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 0, 1, v11);
  v13 = *(v5 + v4[10]);
  v12(v3 + v4[9], 1, 1, v11);
  v14 = v3 + v4[6];
  Date.init()();
  *v3 = v27;
  *(v3 + 8) = v2;
  *(v3 + 16) = v28;
  *(v3 + 24) = v1;
  v15 = *(v0 + 384);
  *(v3 + 32) = *(v0 + 368);
  *(v3 + 48) = v15;
  v16 = *(v0 + 400);
  v17 = *(v0 + 416);
  v18 = *(v0 + 432);
  *(v3 + 112) = *(v0 + 448);
  *(v3 + 80) = v17;
  *(v3 + 96) = v18;
  *(v3 + 64) = v16;
  *(v3 + v4[7]) = v26;
  *(v3 + v4[10]) = v13;
  sub_10001FA24(v3);

  sub_10000F990(v3);
  v19 = swift_task_alloc();
  *(v0 + 744) = v19;
  *v19 = v0;
  v19[1] = sub_100061494;
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 680);
  v24 = *(v0 + 672);

  return sub_1000600C0(v23, v22, v21, v20, v0 + 16, v24);
}

uint64_t sub_100061494()
{
  v2 = *(*v1 + 744);
  v5 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v3 = sub_10006163C;
  }

  else
  {
    v3 = sub_1000615A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000615A8()
{
  (*(v0[83] + 8))(v0[84], v0[82]);
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[80];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10006163C()
{
  v14 = v0;
  (*(v0[83] + 8))(v0[84], v0[82]);
  v1 = v0[94];
  v0[98] = v1;
  if (sub_10005AAC8(v1))
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v2 = qword_100085DF0;
    v3 = sub_100061A5C;
  }

  else
  {
    v4 = v0[89];
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000004BLL, 0x800000010006D3B0, &v13);
      *(v7 + 12) = 2080;
      v0[74] = v1;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v8 = String.init<A>(describing:)();
      v10 = sub_1000049B8(v8, v9, &v13);

      *(v7 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v11 = qword_100085E18;
    v0[100] = qword_100085E18;
    v0[101] = _convertErrorToNSError(_:)();
    v3 = sub_100061E60;
    v2 = v11;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000618B4()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  sub_100033994(*(v0 + 680), *(v0 + 688));

  return _swift_task_switch(sub_100061944, 0, 0);
}

uint64_t sub_100061944()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_1000619D8, v0, 0);
}

uint64_t sub_1000619D8()
{
  sub_10002096C(v0[76], v0[77]);
  v1 = v0[84];
  v2 = v0[81];
  v3 = v0[80];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100061A5C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v21 = *(v0 + 680);
  v22 = *(v0 + 696);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 600);
  v6 = *(v5 + 48);
  *(v0 + 192) = *(v5 + 32);
  *(v0 + 208) = v6;
  v8 = *(v5 + 80);
  v7 = *(v5 + 96);
  v9 = *(v5 + 64);
  *(v0 + 272) = *(v5 + 112);
  *(v0 + 240) = v8;
  *(v0 + 256) = v7;
  *(v0 + 224) = v9;
  v10 = v4[8];
  v20 = *(v5 + v4[7]);
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 56);
  v12(v3 + v10, 1, 1, v11);
  v13 = *(v5 + v4[10]);
  v12(v3 + v4[9], 1, 1, v11);
  v14 = v4[6];

  sub_10000FA5C(v0 + 192, v0 + 280);
  Date.init()();
  *v3 = v21;
  *(v3 + 8) = v2;
  *(v3 + 16) = v22;
  *(v3 + 24) = v1;
  v15 = *(v0 + 208);
  *(v3 + 32) = *(v0 + 192);
  *(v3 + 48) = v15;
  v16 = *(v0 + 224);
  v17 = *(v0 + 240);
  v18 = *(v0 + 256);
  *(v3 + 112) = *(v0 + 272);
  *(v3 + 80) = v17;
  *(v3 + 96) = v18;
  *(v3 + 64) = v16;
  *(v3 + v4[7]) = v20;
  *(v3 + v4[10]) = v13;
  sub_10001FA24(v3);

  return _swift_task_switch(sub_100061C08, 0, 0);
}

uint64_t sub_100061C08()
{
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[99] = v1;
  *v1 = v0;
  v1[1] = sub_100061CD8;
  v2 = v0[80];
  v3 = v0[78];

  return sub_1000273F4(v2, v3);
}

uint64_t sub_100061CD8()
{
  v1 = *(*v0 + 792);
  v3 = *v0;

  return _swift_task_switch(sub_100061DD4, 0, 0);
}

uint64_t sub_100061DD4()
{
  v1 = v0[98];
  v2 = v0[80];

  sub_10000F990(v2);
  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[80];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100061E60()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  sub_100033994(*(v0 + 680), *(v0 + 688));

  return _swift_task_switch(sub_100061EDC, 0, 0);
}

uint64_t sub_100061EDC()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_100061F70, v0, 0);
}

uint64_t sub_100061F70()
{
  sub_10002096C(*(v0 + 608), *(v0 + 616));

  return _swift_task_switch(sub_100061FDC, 0, 0);
}

uint64_t sub_100061FDC()
{
  v1 = v0[98];

  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[80];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10006205C(void *a1)
{
  v2 = v1;
  if (qword_1000826B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083C40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1000049B8(0xD000000000000026, 0x800000010006D320, &v32);
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  v9 = sub_100039614();
  v10 = a1;
  v11 = Logger.logObject.getter();
  if (v9 == 2)
  {
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67240192;
      *(v15 + 4) = [v10 processIdentifier];

      _os_log_impl(&_mh_execute_header, v11, v14, "Process %{public}d is not entitled to use this service. Refusing connection.", v15, 8u);
    }

    else
    {

      v11 = v10;
    }

    [v10 invalidate];
    return v9 != 2;
  }

  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "Accepting a new XPC connection from: %{public}d", v13, 8u);
  }

  else
  {

    v11 = v10;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v36 = sub_10006267C;
  v37 = v16;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100059744;
  v35 = &unk_10007EF40;
  v17 = _Block_copy(&v32);
  v18 = v10;

  [v18 setInterruptionHandler:v17];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v2;
  v36 = sub_1000626C4;
  v37 = v19;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100059744;
  v35 = &unk_10007EF90;
  v20 = _Block_copy(&v32);
  v21 = v18;
  v22 = v2;

  [v21 setInvalidationHandler:v20];
  _Block_release(v20);
  type metadata accessor for FeedbackDaemonDelegate();
  v23 = swift_allocObject();
  *(v23 + 16) = v9;
  v24 = *&v22[OBJC_IVAR____TtC9feedbackd14FeedbackDaemon_syncQueue];
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v21;
  v25[4] = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_100062714;
  *(v26 + 24) = v25;
  v36 = sub_100062730;
  v37 = v26;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10005A960;
  v35 = &unk_10007F008;
  v27 = _Block_copy(&v32);
  v28 = v21;
  v29 = v22;

  sub_100062758(v9);

  dispatch_sync(v24, v27);
  _Block_release(v27);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    if (v9)
    {
      v31 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonInterface()) init];
      sub_100062778(v9);
    }

    else
    {
      v31 = [objc_allocWithZone(type metadata accessor for FeedbackDaemonAdminInterface()) init];
    }

    [v28 setExportedInterface:v31];

    [v28 setExportedObject:v23];
    [v28 resume];

    return v9 != 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100062644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062684()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000626CC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100062758(unint64_t result)
{
  if (result != 2)
  {
    return sub_100062768(result);
  }

  return result;
}

unint64_t sub_100062768(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100062778(unint64_t result)
{
  if (result != 2)
  {
    return sub_100045BF4(result);
  }

  return result;
}

unint64_t sub_100062790()
{
  result = qword_100083D28;
  if (!qword_100083D28)
  {
    sub_100005F88(&qword_100083D20, &qword_100069DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D28);
  }

  return result;
}

uint64_t sub_100062850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000628D4()
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  v0 = *(v40 + 64);
  __chkstk_darwin(v38);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v37);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v28 = v6;
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10000BC7C();
  v35 = enum case for DispatchQoS.QoSClass.userInitiated(_:);
  v34 = v7[13];
  v34(v10);
  v27 = static OS_dispatch_queue.global(qos:)();
  v33 = v7[1];
  v33(v10, v6);
  v46 = sub_100062D9C;
  v47 = 0;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v32 = &v44;
  v44 = sub_100059744;
  v45 = &unk_10007F0A8;
  v11 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  v30 = sub_100062EF0();
  v29 = sub_100004F70(&qword_100083D98, &unk_100069E28);
  v31 = sub_100062F48();
  v12 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v2;
  v13 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  v14 = *(v40 + 8);
  v40 += 8;
  v27 = v14;
  v14(v2, v12);
  v15 = *(v39 + 8);
  v39 += 8;
  v26 = v15;
  v16 = v5;
  v17 = v37;
  v15(v5, v37);
  v18 = v28;
  (v34)(v10, v35, v28);
  v19 = static OS_dispatch_queue.global(qos:)();
  v33(v10, v18);
  v46 = sub_100062DD4;
  v47 = 0;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100059744;
  v45 = &unk_10007F0D0;
  v20 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  v21 = v25;
  v22 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  v27(v21, v22);
  return v26(v16, v17);
}

uint64_t sub_100062E0C(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a2 = v5;
    a3 = v6;
  }

  v3 = *a2;
  return a3();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_1000628D4();
  objc_autoreleasePoolPop(v3);
  v4 = [objc_opt_self() currentRunLoop];
  [v4 run];

  return 0;
}

uint64_t sub_100062ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100062EF0()
{
  result = qword_100083D90;
  if (!qword_100083D90)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083D90);
  }

  return result;
}

unint64_t sub_100062F48()
{
  result = qword_100083DA0;
  if (!qword_100083DA0)
  {
    sub_100005F88(&qword_100083D98, &unk_100069E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083DA0);
  }

  return result;
}

uint64_t sub_100062FB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100063060()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083DA8);
  sub_100002D00(v0, qword_100083DA8);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000630C0()
{
  v0 = type metadata accessor for Authentication();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  v5 = type metadata accessor for User();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens) = &_swiftEmptyArrayStorage;
  qword_100085E68 = v3;
  return result;
}

uint64_t sub_10006315C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedUserDefaults];
  v3 = [v2 integerForKey:FBKSLastSuccessfulUserIDKey];

  if (v3 < 1)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002D00(v19, qword_100083DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "No user id found in preferences";
    goto LABEL_12;
  }

  v4 = objc_opt_self();
  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v3).super.super.isa;
  v6 = [v4 fetchDeviceTokenForParticipantID:isa];

  if (!v6)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100002D00(v20, qword_100083DA8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v21, v22, "No device token found for user: %{public}ld", v23, 0xCu);
    }

    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens;
  v11 = swift_beginAccess();
  v12 = *(v1 + v10);
  v26[0] = v7;
  v26[1] = v9;
  __chkstk_darwin(v11);
  v25[2] = v26;

  v13 = sub_100062FB4(sub_1000660C8, v25, v12);

  if (v13)
  {

    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_13;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Device token is invalid";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_13:

    return 0;
  }

  return v7;
}

uint64_t sub_100063510()
{
  v1 = v0;
  v2 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v17[-v7];
  v9 = type metadata accessor for User();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_10001B984(v1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001B9F4(v8);
    return 0;
  }

  (*(v10 + 32))(v13, v8, v9);
  v15 = User.hasExpiredSession.getter();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    (*(v10 + 56))(v6, 1, 1, v9);
    swift_beginAccess();
    sub_100065958(v6, v1 + v14);
    swift_endAccess();
    return 0;
  }

  return 1;
}

uint64_t sub_100063734(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 80) = a1;
  v3 = *(*(sub_100004F70(&qword_1000830F0, &qword_100069410) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1000637D4, v1, 0);
}

uint64_t sub_1000637D4()
{
  v28 = v0;
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000028, 0x800000010006D4C0, &v27);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (*(v0 + 80) == 1)
  {
    v6 = *(v0 + 64);
    v7 = sub_10006315C();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Adding token to deny list", v13, 2u);
      }

      v14 = *(v0 + 64);

      v15 = OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens;
      swift_beginAccess();
      v16 = *(v14 + v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + v15) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_100065BA0(0, *(v16 + 2) + 1, 1, v16);
        *(v14 + v15) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_100065BA0((v18 > 1), v19 + 1, 1, v16);
      }

      *(v16 + 2) = v19 + 1;
      v20 = &v16[16 * v19];
      *(v20 + 4) = v9;
      *(v20 + 5) = v10;
      *(v14 + v15) = v16;
      swift_endAccess();
    }
  }

  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = type metadata accessor for User();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v22, v21 + v24);
  swift_endAccess();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100063B00(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for User();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = *(*(sub_100004F70(&qword_1000830F0, &qword_100069410) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100063C38, v2, 0);
}

uint64_t sub_100063C38()
{
  v1 = v0[14];
  v2 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v2 == FBKSForm.AuthenticationMethod.rawValue.getter())
  {
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_100063EE0;
    v4 = v0[24];
LABEL_3:
    v5 = v0[15];

    return sub_100065000(v4);
  }

  v7 = v0[15];
  v8 = sub_10006315C();
  v0[27] = v9;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    type metadata accessor for SeedPortal();
    v0[28] = static SeedPortal.shared.getter();
    v12 = *(&async function pointer to dispatch thunk of SeedPortal.loginWithDeviceToken(token:) + 1);
    v27 = (&async function pointer to dispatch thunk of SeedPortal.loginWithDeviceToken(token:) + async function pointer to dispatch thunk of SeedPortal.loginWithDeviceToken(token:));
    v13 = swift_task_alloc();
    v0[29] = v13;
    *v13 = v0;
    v13[1] = sub_100064184;
    v14 = v0[19];

    return v27(v14, v10, v11);
  }

  else
  {
    v15 = v0[14];
    v16 = FBKSForm.AuthenticationMethod.rawValue.getter();
    if (v16 != FBKSForm.AuthenticationMethod.rawValue.getter())
    {
      v26 = swift_task_alloc();
      v0[31] = v26;
      *v26 = v0;
      v26[1] = sub_10006458C;
      v4 = v0[21];
      goto LABEL_3;
    }

    sub_10000BCE0();
    swift_allocError();
    *v17 = 3;
    swift_willThrow();
    v19 = v0[23];
    v18 = v0[24];
    v21 = v0[21];
    v20 = v0[22];
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100063EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_100064830;
  }

  else
  {
    v6 = sub_10006400C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006400C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v2, v5 + v6);
  swift_endAccess();
  sub_100063510();
  sub_10001B984(v5 + v6, v1);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];
  if (v7 == 1)
  {
    sub_10001B9F4(v0[23]);
    v11 = 1;
  }

  else
  {
    (*(v9 + 32))(v0[13], v0[23], v0[16]);
    v11 = 0;
  }

  (*(v9 + 56))(v10, v11, 1, v8);
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100064184()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[15];

  if (v0)
  {
    v8 = sub_1000649A0;
  }

  else
  {
    v8 = sub_1000642E8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000642E8()
{
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100083DA8);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = User.id.getter();
    (*(v11 + 8))(v10, v12);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Logged in as user %ld", v13, 0xCu);
  }

  else
  {
    (*(v11 + 8))(v0[18], v0[16]);
  }

  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[13];

  v6(v15, v16, v17);
  v21 = *(v18 + 56);
  v21(v15, 0, 1, v17);
  v22 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v15, v19 + v22);
  swift_endAccess();
  (*(v18 + 32))(v20, v16, v17);
  v21(v20, 0, 1, v17);
  v24 = v0[23];
  v23 = v0[24];
  v26 = v0[21];
  v25 = v0[22];
  v28 = v0[19];
  v27 = v0[20];
  v29 = v0[18];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10006458C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1000648E8;
  }

  else
  {
    v6 = sub_1000646B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000646B8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v2, v5 + v6);
  swift_endAccess();
  sub_100063510();
  sub_10001B984(v5 + v6, v1);
  v7 = (*(v4 + 48))(v1, 1, v3);
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[13];
  if (v7 == 1)
  {
    sub_10001B9F4(v0[20]);
    v11 = 1;
  }

  else
  {
    (*(v9 + 32))(v0[13], v0[20], v0[16]);
    v11 = 0;
  }

  (*(v9 + 56))(v10, v11, 1, v8);
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100064830()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000648E8()
{
  v1 = v0[32];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000649A0()
{
  v0[11] = v0[30];
  v1 = v0 + 11;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  if (!swift_dynamicCast())
  {
    v15 = v0[11];

    v16 = v0[30];
    goto LABEL_15;
  }

  v2 = v0[30];

  v3 = v0[12];
  v0[33] = v3;
  v4 = v3;
  v5 = _convertErrorToNSError(_:)();

  v6 = FBKSErrorContainsSP2ErrorCode();
  if (!v6)
  {
    if (qword_1000826C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002D00(v17, qword_100083DA8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Login failed", v20, 2u);
    }

    swift_willThrow();
    v21 = *v1;

    goto LABEL_15;
  }

  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083DA8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Device token is no longer valid", v10, 2u);
  }

  v11 = v0[14];

  v12 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v12 == FBKSForm.AuthenticationMethod.rawValue.getter())
  {
    sub_10000BCE0();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();

    v14 = *v1;

LABEL_15:
    v23 = v0[23];
    v22 = v0[24];
    v25 = v0[21];
    v24 = v0[22];
    v27 = v0[19];
    v26 = v0[20];
    v28 = v0[18];

    v29 = v0[1];

    return v29();
  }

  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = sub_100064D4C;
  v32 = v0[15];
  v33 = v0[13];

  return sub_100065000(v33);
}

uint64_t sub_100064D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_100064F38;
  }

  else
  {
    v6 = sub_100064E78;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100064E78()
{
  v1 = *(v0 + 88);

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100064F38()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 280);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100065000(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_100004F70(&qword_1000830F0, &qword_100069410) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for User();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100065104, v1, 0);
}

uint64_t sub_100065104()
{
  v12 = v0;
  if (qword_1000826C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_100002D00(v1, qword_100083DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000016, 0x800000010006D4A0, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  type metadata accessor for SeedPortal();
  v0[15] = static SeedPortal.shared.getter();
  v6 = *(&async function pointer to dispatch thunk of SeedPortal.unauthenticatedLogin() + 1);
  v10 = (&async function pointer to dispatch thunk of SeedPortal.unauthenticatedLogin() + async function pointer to dispatch thunk of SeedPortal.unauthenticatedLogin());
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1000652E4;
  v8 = v0[13];

  return v10(v8);
}

uint64_t sub_1000652E4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_100065630;
  }

  else
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 64);

    v5 = sub_10006540C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10006540C()
{
  v1 = v0[14];
  v2 = *(v0[11] + 16);
  v2(v0[12], v0[13], v0[10]);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = User.id.getter();
    (*(v7 + 8))(v6, v8);
    *(v9 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Logged in as user %ld", v9, 0xCu);
  }

  else
  {
    (*(v7 + 8))(v0[12], v0[10]);
  }

  v11 = v0[13];
  v21 = v0[12];
  v12 = v0[10];
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v16 = v0[7];

  v2(v14, v11, v12);
  v17 = *(v13 + 56);
  v17(v14, 0, 1, v12);
  v18 = OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser;
  swift_beginAccess();
  sub_100065958(v14, v15 + v18);
  swift_endAccess();
  (*(v13 + 32))(v16, v11, v12);
  v17(v16, 0, 1, v12);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100065630()
{
  v1 = v0[17];
  v2 = v0[15];

  v0[5] = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100008714(0, &qword_100082D08, NSError_ptr);
  v3 = swift_dynamicCast();
  v4 = v0[17];
  if (v3)
  {
    v5 = v0[14];
    v6 = v0[17];

    v7 = v0[6];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Login failed", v10, 2u);
    }

    swift_willThrow();
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[9];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000657B4()
{
  sub_10001B9F4(v0 + OBJC_IVAR____TtC9feedbackd14Authentication__loggedInUser);
  v1 = *(v0 + OBJC_IVAR____TtC9feedbackd14Authentication_invalidTokens);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Authentication()
{
  result = qword_100083DF8;
  if (!qword_100083DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100065858()
{
  sub_100065900();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100065900()
{
  if (!qword_100083E08)
  {
    type metadata accessor for User();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100083E08);
    }
  }
}

uint64_t sub_100065958(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000830F0, &qword_100069410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_1000659C8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004F70(&unk_100083F20, &qword_100069EC8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100065BA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004F70(&qword_100082838, &qword_1000683A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100065CAC(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100004F70(&qword_100083F10, &qword_100069EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004F70(&qword_100083F18, &qword_100069EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100065E38(size_t result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004F70(a5, a6);
  v16 = *(sub_100004F70(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = (2 * ((result - v18) / v17));
LABEL_19:
  v21 = *(sub_100004F70(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100066020(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100066040@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100066070(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000660C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

Swift::String __swiftcall FBKSLocalizedString(key:)(Swift::String key)
{
  v1 = FBKSLocalizedString(key:)(key._countAndFlagsBits, key._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}