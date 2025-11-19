uint64_t sub_1003CF118()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_1003CF240, v3, 0);
}

uint64_t sub_1003CF240()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003CF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CE9D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1003CF378(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  v10 = a3[1];
  v14 = (a5 + *a5);
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100003690;

  return v14(v7, v8, v9, v10, a4);
}

uint64_t sub_1003CF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1003CF594, 0, 0);
}

uint64_t sub_1003CF594()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100005F04(v0[5], v3, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];
    sub_100002CE0(v0[7], &qword_1005B3360, &unk_1004C6AA0);
    v8 = *(v4 + qword_1005B3258);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v5;

    v11 = v6;
    sub_100005F6C(v7, v5);
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v12 = v0[10];
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_1003CF7CC;
    v17 = v0[10];
    v18 = v0[6];
    v19 = v0[3];
    v20 = v0[4];
    v21 = v0[2];

    return sub_1003D6578(v20, v17, v21, v19);
  }
}

uint64_t sub_1003CF7CC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1003CF8C8, 0, 0);
}

uint64_t sub_1003CF8C8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003CF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for UUID();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v11 = type metadata accessor for MessagingOptions();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();
  v14 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v6[16] = v14;
  v15 = *(v14 - 8);
  v6[17] = v15;
  v16 = *(v15 + 64) + 15;
  v6[18] = swift_task_alloc();
  v17 = type metadata accessor for FindingConfigEnvelopeV1(0);
  v6[19] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v19 = type metadata accessor for Handle();
  v6[23] = v19;
  v20 = *(v19 - 8);
  v6[24] = v20;
  v21 = *(v20 + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1003CFBC0, v5, 0);
}

uint64_t sub_1003CFBC0()
{
  v24 = v0;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_10000A6F0(v5, qword_1005E0BF0);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending config data to handle %{private,mask.hash}s over IDS.", v13, 0x16u);
    sub_100004984(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_1003CFE54;

  return daemon.getter();
}

uint64_t sub_1003CFE54(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  *(v3 + 256) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 264) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_10005A3CC();
  *v6 = v12;
  v6[1] = sub_1003D000C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003D000C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = sub_1003D0E80;
  }

  else
  {
    v7 = v3[32];
    v8 = v3[8];

    v6 = sub_1003D0134;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003D0134()
{
  v65 = v0;
  v63 = *(v0 + 216);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24);
  v7 = [*(v0 + 40) rawToken];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100005F04(v4, v1 + *(v3 + 24), &qword_1005B3360, &unk_1004C6AA0);
  *v1 = v6;
  v1[1] = v5;
  v1[2] = v8;
  v1[3] = v10;
  sub_1003DA15C(v1, v2, type metadata accessor for FindingConfigEnvelopeV1);
  sub_100005F6C(v6, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v64[0] = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = sub_1002E8304();
    v19 = v18;
    sub_1003DA1C4(v14, type metadata accessor for FindingConfigEnvelopeV1);
    v20 = sub_10000D01C(v17, v19, v64);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending config data envelope %{private,mask.hash}s over IDS.", v15, 0x16u);
    sub_100004984(v16);
  }

  else
  {

    sub_1003DA1C4(v14, type metadata accessor for FindingConfigEnvelopeV1);
  }

  v21 = *(v0 + 280);
  v22 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);
  v25 = *(v0 + 144);
  *(v0 + 304) = 4;
  sub_1003DA15C(v22, v24, type metadata accessor for FindingConfigEnvelopeV1);
  sub_10006DFA4();
  sub_1003DA8C4(&qword_1005B3208, type metadata accessor for FindingConfigEnvelopeV1);
  sub_1003DA8C4(&qword_1005B3210, type metadata accessor for FindingConfigEnvelopeV1);
  Message.init<A>(type:version:payload:)();
  if (v21)
  {
    v26 = *(v0 + 272);
    sub_1003DA1C4(*(v0 + 176), type metadata accessor for FindingConfigEnvelopeV1);

    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 240);
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v35 = *(v0 + 184);
    if (v31)
    {
      v62 = v30;
      v36 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v36 = 141558531;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v32(v33, v35);
      v40 = sub_10000D01C(v37, v39, v64);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2082;
      *(v0 + 16) = v21;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v41 = String.init<A>(describing:)();
      v43 = sub_10000D01C(v41, v42, v64);

      *(v36 + 24) = v43;
      _os_log_impl(&_mh_execute_header, v29, v62, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v36, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v32(v33, v35);
    }

    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v52 = *(v0 + 168);
    v51 = *(v0 + 176);
    v53 = *(v0 + 160);
    v54 = *(v0 + 144);
    v55 = *(v0 + 120);
    v57 = *(v0 + 88);
    v56 = *(v0 + 96);

    v58 = *(v0 + 8);

    return v58();
  }

  else
  {
    v44 = *(v0 + 48);
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v45 = *(type metadata accessor for Destination() - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    v48 = Handle.isPhoneNumber.getter();
    Handle.identifier.getter();
    if (v48)
    {
      Destination.init(phoneNumber:)();
    }

    else
    {
      Destination.init(email:)();
    }

    v60 = *(v0 + 272);
    v61 = *(v0 + 120);
    (*(*(v0 + 80) + 56))(*(v0 + 96), 1, 1, *(v0 + 72));
    sub_100293190(_swiftEmptyArrayStorage);
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

    return _swift_task_switch(sub_1003D0828, v60, 0);
  }
}

uint64_t sub_1003D0828()
{
  v1 = *(v0[34] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1003D08D0;
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[11];

  return InternetMessaging.send(message:messageOptions:)(v6, v4, v5);
}

uint64_t sub_1003D08D0()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_1003D0B34;
  }

  else
  {
    v6 = v2[8];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_1003D0A04;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003D0A04()
{
  v1 = v0[34];
  v2 = v0[22];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_1003DA1C4(v2, type metadata accessor for FindingConfigEnvelopeV1);
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = v0[18];
  v15 = v0[15];
  v17 = v0[11];
  v16 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003D0B34()
{
  v42 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 176);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_1003DA1C4(v2, type metadata accessor for FindingConfigEnvelopeV1);
  v9 = *(v0 + 296);
  v10 = *(v0 + 232);
  v11 = *(v0 + 216);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 200);
    v39 = *(v0 + 192);
    v40 = *(v0 + 240);
    v15 = *(v0 + 184);
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v40(v14, v15);
    v20 = sub_10000D01C(v17, v19, &v41);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    *(v0 + 16) = v9;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000D01C(v21, v22, &v41);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 240);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 184);

    v24(v25, v27);
  }

  v29 = *(v0 + 200);
  v28 = *(v0 + 208);
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  v32 = *(v0 + 160);
  v33 = *(v0 + 144);
  v34 = *(v0 + 120);
  v36 = *(v0 + 88);
  v35 = *(v0 + 96);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1003D0E80()
{
  v35 = v0;
  v1 = *(v0 + 256);

  v2 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 200);
    v32 = *(v0 + 192);
    v33 = *(v0 + 240);
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v33(v7, v8);
    v13 = sub_10000D01C(v10, v12, &v34);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2082;
    *(v0 + 16) = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, &v34);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sending configData to handle %{private,mask.hash}s\nfailed: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 240);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);

    v17(v18, v20);
  }

  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v24 = *(v0 + 168);
  v23 = *(v0 + 176);
  v25 = *(v0 + 160);
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1003D1170(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_10004B564(&qword_1005B0F30, &qword_1004D3308);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for SharedSecretKey();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v14 = type metadata accessor for FriendSharedSecretsRecord();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = type metadata accessor for Handle();
  v2[24] = v18;
  v19 = *(v18 - 8);
  v2[25] = v19;
  v20 = *(v19 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  v2[30] = v21;
  v22 = *(v21 - 8);
  v2[31] = v22;
  v23 = *(v22 + 64) + 15;
  v2[32] = swift_task_alloc();
  v24 = type metadata accessor for Friend();
  v2[33] = v24;
  v25 = *(v24 - 8);
  v2[34] = v25;
  v26 = *(v25 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v27 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v28 = async function pointer to daemon.getter[1];
  v29 = swift_task_alloc();
  v2[40] = v29;
  *v29 = v2;
  v29[1] = sub_1003D15F8;

  return daemon.getter();
}

uint64_t sub_1003D15F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  v3[41] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[42] = v6;
  v7 = type metadata accessor for Daemon();
  v3[43] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[44] = v9;
  v10 = sub_1003DA8C4(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003D17D8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003D17D8(uint64_t a1)
{
  v3 = *(*v2 + 336);
  v4 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D40E0, 0, 0);
  }

  else
  {
    v5 = v4[41];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[47] = v7;
    *v7 = v4;
    v7[1] = sub_1003D194C;

    return daemon.getter();
  }
}

uint64_t sub_1003D194C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *v1;
  v3[48] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[49] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1003DA8C4(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1003D1B00;
  v10 = v3[44];
  v11 = v3[43];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003D1B00(uint64_t a1)
{
  v3 = *(*v2 + 392);
  v4 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D44F4, 0, 0);
  }

  else
  {
    v5 = v4[48];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[52] = v7;
    *v7 = v4;
    v7[1] = sub_1003D1C74;

    return daemon.getter();
  }
}

uint64_t sub_1003D1C74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[54] = v7;
  v8 = type metadata accessor for NITokenService();
  v9 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService);
  *v7 = v5;
  v7[1] = sub_1003D1E28;
  v10 = v3[44];
  v11 = v3[43];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003D1E28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v10 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  if (v1)
  {
    v5 = sub_1003D4914;
    v6 = 0;
  }

  else
  {
    v7 = v3[53];
    v8 = v3[45];

    v5 = sub_1003D1F50;
    v6 = v8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1003D1F50()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[57] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_1003D20B4;
  v7 = v0[45];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1003D20B4(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1003D21D4, 0, 0);
}

uint64_t sub_1003D21D4()
{
  v100 = v0;
  v1 = v0[59];
  v2 = v0[56];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[4];
  *(swift_task_alloc() + 16) = v7;
  sub_10044FE2C(sub_1003DA13C, v1, v3);

  sub_100005F04(v3, v4, &qword_1005A9188, &unk_1004D80D0);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[38];
  if (v8 == 1)
  {
    sub_100002CE0(v0[38], &qword_1005A9188, &unk_1004D80D0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[25];
    v13 = v0[4];
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0BF0);
    (*(v12 + 16))(v10, v13, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[55];
    v19 = v0[50];
    v20 = v0[45];
    v21 = v0[39];
    v22 = v0[27];
    v24 = v0[24];
    v23 = v0[25];
    if (!v17)
    {
      v61 = v0[55];

      (*(v23 + 8))(v22, v24);
      v60 = v21;
      goto LABEL_17;
    }

    v95 = v0[55];
    v25 = swift_slowAlloc();
    v97 = v21;
    v26 = swift_slowAlloc();
    v99[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = Handle.identifier.getter();
    v29 = v28;
    (*(v23 + 8))(v22, v24);
    v30 = sub_10000D01C(v27, v29, v99);

    *(v25 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v15, v16, "Findee has no such follower with peer %{private,mask.hash}s", v25, 0x16u);
    sub_100004984(v26);

LABEL_11:
    v60 = v97;
LABEL_17:
    sub_100002CE0(v60, &qword_1005A9188, &unk_1004D80D0);
    v70 = v0[3];
    v71 = type metadata accessor for DiscoveryToken(0);
    (*(*(v71 - 8) + 56))(v70, 1, 1, v71);
    v73 = v0[38];
    v72 = v0[39];
    v75 = v0[36];
    v74 = v0[37];
    v76 = v0[35];
    v77 = v0[32];
    v79 = v0[28];
    v78 = v0[29];
    v80 = v0[26];
    v81 = v0[27];
    v83 = v0[23];
    v84 = v0[22];
    v85 = v0[21];
    v86 = v0[18];
    v87 = v0[17];
    v88 = v0[14];
    v89 = v0[13];
    v90 = v0[12];
    v92 = v0[9];
    v94 = v0[8];
    v96 = v0[7];
    v98 = v0[6];

    v82 = v0[1];

    return v82();
  }

  v31 = v0[30];
  v32 = v0[31];
  v33 = v0[29];
  v34 = v0[24];
  v35 = v0[25];
  v36 = v0[23];
  (*(v0[34] + 32))(v0[37], v0[38], v0[33]);
  Friend.handle.getter();
  Handle.peerID.getter();
  v37 = *(v35 + 8);
  v0[60] = v37;
  v0[61] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v33, v34);
  if ((*(v32 + 48))(v36, 1, v31) == 1)
  {
    sub_100002CE0(v0[23], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v38 = v0[37];
    v40 = v0[34];
    v39 = v0[35];
    v41 = v0[33];
    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005E0BF0);
    (*(v40 + 16))(v39, v38, v41);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[55];
    v47 = v0[50];
    v48 = v0[45];
    v49 = v0[39];
    v50 = v0[37];
    v52 = v0[34];
    v51 = v0[35];
    v53 = v0[33];
    if (!v45)
    {
      v68 = v0[55];

      v69 = *(v52 + 8);
      v69(v51, v53);
      v69(v50, v53);
      v60 = v49;
      goto LABEL_17;
    }

    v93 = v0[55];
    v54 = swift_slowAlloc();
    v97 = v49;
    v99[0] = swift_slowAlloc();
    *v54 = 136446723;
    *(v54 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v99);
    *(v54 + 12) = 2160;
    *(v54 + 14) = 1752392040;
    *(v54 + 22) = 2081;
    sub_1003DA8C4(&qword_1005AA720, &type metadata accessor for Friend);
    v91 = v50;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = *(v52 + 8);
    v58(v51, v53);
    v59 = sub_10000D01C(v55, v57, v99);

    *(v54 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s", v54, 0x20u);
    swift_arrayDestroy();

    v58(v91, v53);
    goto LABEL_11;
  }

  v62 = v0[50];
  (*(v0[31] + 32))(v0[32], v0[23], v0[30]);
  v63 = *(v62 + 128);
  v64 = swift_task_alloc();
  v0[62] = v64;
  *v64 = v0;
  v64[1] = sub_1003D2A38;
  v65 = v0[32];
  v66 = v0[18];

  return sub_1001C4430(v66, v65);
}

uint64_t sub_1003D2A38()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_1003D3C58;
  }

  else
  {
    v3 = sub_1003D2B4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003D2B4C()
{
  v203 = v0;
  v1 = v0[19];
  v2 = v0[18];
  if ((*(v0[20] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v3 = v0[37];
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0BF0);
    (*(v5 + 16))(v4, v3, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[55];
    v12 = v0[50];
    v13 = v0[45];
    v14 = v0[39];
    v15 = v0[37];
    v17 = v0[34];
    v16 = v0[35];
    v18 = v0[33];
    if (!v10)
    {
      v32 = v0[55];

      v33 = *(v17 + 8);
      v33(v16, v18);
      v33(v15, v18);
      v34 = v14;
LABEL_17:
      sub_100002CE0(v34, &qword_1005A9188, &unk_1004D80D0);
LABEL_18:
      v60 = v0[3];
      v61 = type metadata accessor for DiscoveryToken(0);
      (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
      goto LABEL_19;
    }

    v19 = swift_slowAlloc();
    v199 = v14;
    v202[0] = swift_slowAlloc();
    *v19 = 136446723;
    *(v19 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v202);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    sub_1003DA8C4(&qword_1005AA720, &type metadata accessor for Friend);
    v186 = v15;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = *(v17 + 8);
    v23(v16, v18);
    v24 = sub_10000D01C(v20, v22, v202);

    *(v19 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();

    v23(v186, v18);
LABEL_16:
    v34 = v199;
    goto LABEL_17;
  }

  v25 = v0[22];
  v26 = v0[15];
  v27 = v0[16];
  v28 = v0[14];
  sub_1003DA6F4(v2, v25, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v25 + *(v1 + 32), v28, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v27 + 48))(v28, 1, v26) == 1)
  {
    v29 = v0[14];
    v30 = &qword_1005AEB98;
    v31 = &unk_1004D07C0;
LABEL_11:
    sub_100002CE0(v29, v30, v31);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v41 = v0[21];
    v42 = v0[22];
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005E0BF0);
    sub_1003DA15C(v42, v41, type metadata accessor for FriendSharedSecretsRecord);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[55];
    v195 = v0[50];
    v199 = v0[39];
    v48 = v0[37];
    v49 = v0[33];
    v50 = v0[34];
    v52 = v0[31];
    v51 = v0[32];
    v53 = v0[30];
    v54 = v0[21];
    v187 = v0[45];
    v191 = v0[22];
    if (v46)
    {
      v181 = v0[33];
      v55 = swift_slowAlloc();
      v202[0] = swift_slowAlloc();
      *v55 = 136446466;
      *(v55 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E97C0, v202);
      *(v55 + 12) = 2082;
      sub_1003DA8C4(&qword_1005A92C0, &type metadata accessor for UUID);
      v163 = v53;
      v168 = v48;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      sub_1003DA1C4(v54, type metadata accessor for FriendSharedSecretsRecord);
      v59 = sub_10000D01C(v56, v58, v202);

      *(v55 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s  No incomingSharedSecret for %{public}s", v55, 0x16u);
      swift_arrayDestroy();

      sub_1003DA1C4(v191, type metadata accessor for FriendSharedSecretsRecord);
      (*(v52 + 8))(v51, v163);
      (*(v50 + 8))(v168, v181);
    }

    else
    {

      sub_1003DA1C4(v54, type metadata accessor for FriendSharedSecretsRecord);
      sub_1003DA1C4(v191, type metadata accessor for FriendSharedSecretsRecord);
      (*(v52 + 8))(v51, v53);
      (*(v50 + 8))(v48, v49);
    }

    goto LABEL_16;
  }

  v35 = v0[22];
  v36 = v0[19];
  v37 = v0[10];
  v38 = v0[11];
  v39 = v0[9];
  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  sub_100005F04(v35 + *(v36 + 36), v39, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    v40 = v0[9];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v30 = &unk_1005AE5B0;
    v31 = &qword_1004C32F0;
    v29 = v40;
    goto LABEL_11;
  }

  v74 = v0[63];
  v75 = v0[55];
  v76 = v0[17];
  v78 = v0[12];
  v77 = v0[13];
  v79 = v0[8];
  (*(v0[11] + 32))(v77, v0[9], v0[10]);
  static Date.trustedNow.getter(v78);
  sub_10042E958(v76, v77, v78, v79);
  if (v74)
  {
    v80 = v0[55];
    v81 = v0[50];
    v82 = v0[45];
    v197 = v0[39];
    v201 = v74;
    v83 = v0[34];
    v189 = v0[33];
    v193 = v0[37];
    v84 = v0[31];
    v183 = v0[32];
    v174 = v0[22];
    v178 = v0[30];
    v85 = v0[16];
    v165 = v0[15];
    v170 = v0[17];
    v87 = v0[12];
    v86 = v0[13];
    v89 = v0[10];
    v88 = v0[11];

    v90 = *(v88 + 8);
    v90(v87, v89);
    v90(v86, v89);
    (*(v85 + 8))(v170, v165);
    sub_1003DA1C4(v174, type metadata accessor for FriendSharedSecretsRecord);
    (*(v84 + 8))(v183, v178);
    (*(v83 + 8))(v193, v189);
    sub_100002CE0(v197, &qword_1005A9188, &unk_1004D80D0);
    if (qword_1005A8520 != -1)
    {
      swift_once();
    }

    v92 = v0[25];
    v91 = v0[26];
    v93 = v0[24];
    v94 = v0[4];
    v95 = type metadata accessor for Logger();
    sub_10000A6F0(v95, qword_1005E0BF0);
    (*(v92 + 16))(v91, v94, v93);
    swift_errorRetain();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();

    v98 = os_log_type_enabled(v96, v97);
    v100 = v0[25];
    v99 = v0[26];
    v101 = v0[24];
    if (v98)
    {
      v102 = swift_slowAlloc();
      v202[0] = swift_slowAlloc();
      *v102 = 141558531;
      *(v102 + 4) = 1752392040;
      *(v102 + 12) = 2081;
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      (*(v100 + 8))(v99, v101);
      v106 = sub_10000D01C(v103, v105, v202);

      *(v102 + 14) = v106;
      *(v102 + 22) = 2082;
      v0[2] = v201;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v107 = String.init<A>(describing:)();
      v109 = sub_10000D01C(v107, v108, v202);

      *(v102 + 24) = v109;
      _os_log_impl(&_mh_execute_header, v96, v97, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v102, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v100 + 8))(v99, v101);
    }

    goto LABEL_18;
  }

  v198 = *(v0[11] + 8);
  v198(v0[12], v0[10]);
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v110 = v0[36];
  v111 = v0[37];
  v112 = v0[33];
  v113 = v0[34];
  v115 = v0[7];
  v114 = v0[8];
  v116 = type metadata accessor for Logger();
  sub_10000A6F0(v116, qword_1005E0BF0);
  sub_100005F04(v114, v115, &qword_1005B0F30, &qword_1004D3308);
  (*(v113 + 16))(v110, v111, v112);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.default.getter();
  v194 = v117;
  if (os_log_type_enabled(v117, v118))
  {
    v148 = v0[60];
    v149 = v0[61];
    v161 = v0[50];
    v152 = v0[55];
    v153 = v0[45];
    v184 = v0[37];
    v190 = v0[39];
    v146 = v0[34];
    v147 = v0[33];
    v175 = v0[30];
    v179 = v0[32];
    v119 = v0[28];
    v144 = v0[36];
    v145 = v0[24];
    v166 = v0[22];
    v171 = v0[31];
    v154 = v0[16];
    v156 = v0[15];
    v158 = v0[17];
    v150 = v0[10];
    v151 = v0[13];
    v121 = v0[6];
    v120 = v0[7];
    v122 = v0[5];
    v123 = swift_slowAlloc();
    v202[0] = swift_slowAlloc();
    *v123 = 141558787;
    *(v123 + 4) = 1752392040;
    *(v123 + 12) = 2081;
    sub_100005F04(v120, v121, &qword_1005B0F30, &qword_1004D3308);
    v124 = String.init<A>(describing:)();
    v126 = v125;
    sub_100002CE0(v120, &qword_1005B0F30, &qword_1004D3308);
    v127 = sub_10000D01C(v124, v126, v202);

    *(v123 + 14) = v127;
    *(v123 + 22) = 2160;
    *(v123 + 24) = 1752392040;
    *(v123 + 32) = 2081;
    Friend.handle.getter();
    v128 = Handle.identifier.getter();
    v130 = v129;
    v148(v119, v145);
    v131 = *(v146 + 8);
    v131(v144, v147);
    v132 = sub_10000D01C(v128, v130, v202);

    *(v123 + 34) = v132;
    _os_log_impl(&_mh_execute_header, v194, v118, "Findee found Local discovery token: %{private,mask.hash}s for follower: %{private,mask.hash}s.", v123, 0x2Au);
    swift_arrayDestroy();

    v198(v151, v150);
    (*(v154 + 8))(v158, v156);
    sub_1003DA1C4(v166, type metadata accessor for FriendSharedSecretsRecord);
    (*(v171 + 8))(v179, v175);
    v131(v184, v147);
  }

  else
  {
    v133 = v0[55];
    v134 = v0[50];
    v135 = v0[45];
    v136 = v0[36];
    v185 = v0[37];
    v190 = v0[39];
    v138 = v0[33];
    v137 = v0[34];
    v139 = v0[31];
    v176 = v0[30];
    v180 = v0[32];
    v140 = v0[16];
    v167 = v0[17];
    v172 = v0[22];
    v159 = v0[13];
    v162 = v0[15];
    v141 = v0[10];
    v142 = v0[7];

    v143 = *(v137 + 8);
    v143(v136, v138);
    sub_100002CE0(v142, &qword_1005B0F30, &qword_1004D3308);
    v198(v159, v141);
    (*(v140 + 8))(v167, v162);
    sub_1003DA1C4(v172, type metadata accessor for FriendSharedSecretsRecord);
    (*(v139 + 8))(v180, v176);
    v143(v185, v138);
  }

  sub_100002CE0(v190, &qword_1005A9188, &unk_1004D80D0);
  sub_1002CE81C(v0[8], v0[3]);
LABEL_19:
  v63 = v0[38];
  v62 = v0[39];
  v65 = v0[36];
  v64 = v0[37];
  v66 = v0[35];
  v67 = v0[32];
  v69 = v0[28];
  v68 = v0[29];
  v70 = v0[26];
  v71 = v0[27];
  v155 = v0[23];
  v157 = v0[22];
  v160 = v0[21];
  v164 = v0[18];
  v169 = v0[17];
  v173 = v0[14];
  v177 = v0[13];
  v182 = v0[12];
  v188 = v0[9];
  v192 = v0[8];
  v196 = v0[7];
  v200 = v0[6];

  v72 = v0[1];

  return v72();
}

uint64_t sub_1003D3C58()
{
  v58 = v0;
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[45];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  sub_100002CE0(v4, &qword_1005A9188, &unk_1004D80D0);
  v11 = v0[63];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v15 = v0[4];
  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005E0BF0);
  (*(v13 + 16))(v12, v15, v14);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  v19 = os_log_type_enabled(v17, v18);
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[24];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v23 = 141558531;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    v27 = sub_10000D01C(v24, v26, &v57);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2082;
    v0[2] = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000D01C(v28, v29, &v57);

    *(v23 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  v31 = v0[3];
  v32 = type metadata accessor for DiscoveryToken(0);
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v34 = v0[38];
  v33 = v0[39];
  v36 = v0[36];
  v35 = v0[37];
  v37 = v0[35];
  v38 = v0[32];
  v40 = v0[28];
  v39 = v0[29];
  v41 = v0[26];
  v42 = v0[27];
  v45 = v0[23];
  v46 = v0[22];
  v47 = v0[21];
  v48 = v0[18];
  v49 = v0[17];
  v50 = v0[14];
  v51 = v0[13];
  v52 = v0[12];
  v53 = v0[9];
  v54 = v0[8];
  v55 = v0[7];
  v56 = v0[6];

  v43 = v0[1];

  return v43();
}

uint64_t sub_1003D40E0()
{
  v49 = v0;
  v1 = v0[41];

  v2 = v0[46];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[4];
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0BF0);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_10000D01C(v15, v17, &v48);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10000D01C(v19, v20, &v48);

    *(v14 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[3];
  v23 = type metadata accessor for DiscoveryToken(0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v25 = v0[38];
  v24 = v0[39];
  v27 = v0[36];
  v26 = v0[37];
  v28 = v0[35];
  v29 = v0[32];
  v31 = v0[28];
  v30 = v0[29];
  v32 = v0[26];
  v33 = v0[27];
  v36 = v0[23];
  v37 = v0[22];
  v38 = v0[21];
  v39 = v0[18];
  v40 = v0[17];
  v41 = v0[14];
  v42 = v0[13];
  v43 = v0[12];
  v44 = v0[9];
  v45 = v0[8];
  v46 = v0[7];
  v47 = v0[6];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1003D44F4()
{
  v50 = v0;
  v1 = v0[48];
  v2 = v0[45];

  v3 = v0[51];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[4];
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0BF0);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_10000D01C(v16, v18, &v49);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2082;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, &v49);

    *(v15 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v23 = v0[3];
  v24 = type metadata accessor for DiscoveryToken(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v26 = v0[38];
  v25 = v0[39];
  v28 = v0[36];
  v27 = v0[37];
  v29 = v0[35];
  v30 = v0[32];
  v32 = v0[28];
  v31 = v0[29];
  v33 = v0[26];
  v34 = v0[27];
  v37 = v0[23];
  v38 = v0[22];
  v39 = v0[21];
  v40 = v0[18];
  v41 = v0[17];
  v42 = v0[14];
  v43 = v0[13];
  v44 = v0[12];
  v45 = v0[9];
  v46 = v0[8];
  v47 = v0[7];
  v48 = v0[6];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1003D4914()
{
  v51 = v0;
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[45];

  v4 = v0[56];
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0BF0);
  (*(v6 + 16))(v5, v8, v7);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v16 = 141558531;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_10000D01C(v17, v19, &v50);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000D01C(v21, v22, &v50);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "Unable to generate discovery token for %{private,mask.hash}s. Error: %{public}s.", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[3];
  v25 = type metadata accessor for DiscoveryToken(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v27 = v0[38];
  v26 = v0[39];
  v29 = v0[36];
  v28 = v0[37];
  v30 = v0[35];
  v31 = v0[32];
  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[26];
  v35 = v0[27];
  v38 = v0[23];
  v39 = v0[22];
  v40 = v0[21];
  v41 = v0[18];
  v42 = v0[17];
  v43 = v0[14];
  v44 = v0[13];
  v45 = v0[12];
  v46 = v0[9];
  v47 = v0[8];
  v48 = v0[7];
  v49 = v0[6];

  v36 = v0[1];

  return v36();
}

uint64_t sub_1003D4D40()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v5 = static Handle.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1003D4E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B31F8, &qword_1004D8018) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003D4F38, a4, 0);
}

uint64_t sub_1003D4F38()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B31F8, &qword_1004D8018);

  return _swift_task_switch(sub_1003DA9A8, 0, 0);
}

uint64_t sub_1003D4FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B31F8, &qword_1004D8018) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003D50EC, a4, 0);
}

uint64_t sub_1003D50EC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B31F8, &qword_1004D8018);

  return _swift_task_switch(sub_1003D5194, 0, 0);
}

uint64_t sub_1003D5194()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_100002CE0(v1, &qword_1005B31F8, &qword_1004D8018);
    v4 = 1;
  }

  else
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[6];
    (*(v3 + 16))(v5, v1, v2);
    sub_100002CE0(v1, &qword_1005B31F8, &qword_1004D8018);
    v0[5] = v6;
    v8 = v6;
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
    v4 = 0;
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[6];
  v12 = sub_10004B564(&qword_1005B3200, &qword_1004D8020);
  (*(*(v12 - 8) + 56))(v11, v4, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003D532C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CF94C(a1, a2, a3, a4, a5);
}

void sub_1003D5498(unint64_t a1)
{
  v3 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (a1 < 2)
  {
    return;
  }

  if (a1 == 3)
  {
    v7 = qword_1005B3268;
    goto LABEL_6;
  }

  if (a1 == 2)
  {
    v7 = qword_1005B3260;
LABEL_6:
    swift_beginAccess();
    v8 = type metadata accessor for RangingConfigDataSession();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v1 + v7, 1, v8))
    {
      [*(v1 + v7) invalidate];
    }

    (*(v9 + 56))(v6, 1, 1, v8);
    swift_beginAccess();
    sub_1003D92E0(v6, v1 + v7);
    swift_endAccess();
    return;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0C08);
  v15 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v15, v11, "Unknow NIFindingRole", v12, 2u);
  }

  v13 = v15;
}

uint64_t sub_1003D56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for RangingConfigDataSession();
  v4[19] = v7;
  v8 = *(v7 - 8);
  v4[20] = v8;
  v9 = *(v8 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003D5840, 0, 0);
}

uint64_t sub_1003D5840()
{
  v70 = v0;
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v3 = Strong;
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v3 + v7, v6, &unk_1005B3430, &qword_1004D8210);
  v8 = *(v4 + 48);
  if (v8(v6, 1, v5) == 1)
  {
    sub_100002CE0(v0[18], &unk_1005B3430, &qword_1004D8210);
LABEL_11:
    v23 = v0[19];
    v24 = v0[17];
    v67 = v7;
    sub_100005F04(v3 + v7, v24, &unk_1005B3430, &qword_1004D8210);
    LODWORD(v23) = v8(v24, 1, v23);
    sub_100002CE0(v24, &unk_1005B3430, &qword_1004D8210);
    if (v23 != 1)
    {
      sub_1003D60A4();
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v25 = v0[12];
      v26 = type metadata accessor for Logger();
      sub_10000A6F0(v26, qword_1005E0C08);
      v27 = v25;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = v0[12];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v69 = v33;
        *v31 = 141558531;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        *(v31 + 14) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E96C0, &v69);
        *(v31 + 22) = 2114;
        *(v31 + 24) = v30;
        *v32 = v30;
        v34 = v30;
        _os_log_impl(&_mh_execute_header, v28, v29, "%{private,mask.hash}s\nreceive finder trigger with new token: %{public}@\nshould stop the previous one", v31, 0x20u);
        sub_100002CE0(v32, &qword_1005A9670, &unk_1004C2480);

        sub_100004984(v33);
      }
    }

    v35 = v0[21];
    v68 = v3;
    v36 = v0[19];
    v37 = v0[15];
    v65 = v0[20];
    v66 = v0[16];
    v38 = v0[14];
    v64 = v0[13];
    v62 = v0[12];
    v63 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:2 discoveryToken:v62 preferredUpdateRate:2];
    v39 = type metadata accessor for Handle();
    v40 = *(v39 - 8);
    v41 = *(v40 + 16);
    v41(v37, v38, v39);
    (*(v40 + 56))(v37, 0, 1, v39);
    v42 = [objc_allocWithZone(NISession) init];
    [v42 setDelegate:v68];
    v41(v35 + v36[5], v64, v39);
    v43 = v37;
    sub_100005F04(v37, v35 + v36[6], &qword_1005B3360, &unk_1004C6AA0);
    *v35 = v42;
    *(v35 + v36[7]) = v62;
    *(v35 + v36[8]) = 2;
    *(v35 + v36[9]) = v63;
    sub_1003DA15C(v35, v66, type metadata accessor for RangingConfigDataSession);
    (*(v65 + 56))(v66, 0, 1, v36);
    swift_beginAccess();
    v44 = v62;
    v45 = v42;
    v46 = v63;
    sub_1003D92E0(v66, v68 + v67);
    swift_endAccess();
    [v45 runWithConfiguration:v46];

    sub_1003DA1C4(v35, type metadata accessor for RangingConfigDataSession);
    sub_100002CE0(v43, &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_10000A6F0(v47, qword_1005E0C08);
    v48 = v46;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2113;
      *(v51 + 14) = v48;
      *v52 = v63;
      v53 = v48;
      _os_log_impl(&_mh_execute_header, v49, v50, "startFinderRangingSession with config %{private,mask.hash}@", v51, 0x16u);
      sub_100002CE0(v52, &qword_1005A9670, &unk_1004C2480);
    }

    else
    {
    }

    goto LABEL_22;
  }

  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[12];
  sub_1003DA6F4(v0[18], v9, type metadata accessor for RangingConfigDataSession);
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  v12 = *(v9 + *(v10 + 28));
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003DA1C4(v0[22], type metadata accessor for RangingConfigDataSession);
    goto LABEL_11;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v13 = v0[12];
  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0C08);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[12];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, v17, "Already has Finder additional configData session\nfor token: %{public}@ running", v19, 0xCu);
    sub_100002CE0(v20, &qword_1005A9670, &unk_1004C2480);
  }

  v22 = v0[22];

  sub_1003DA1C4(v22, type metadata accessor for RangingConfigDataSession);
LABEL_22:
  v55 = v0[21];
  v54 = v0[22];
  v57 = v0[17];
  v56 = v0[18];
  v59 = v0[15];
  v58 = v0[16];

  v60 = v0[1];

  return v60();
}

void sub_1003D60A4()
{
  v1 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for RangingConfigDataSession();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v0 + v13, v4, &unk_1005B3430, &qword_1004D8210);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005B3430, &qword_1004D8210);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0C08);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E9700, &v29);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s no active finder session", v17, 0xCu);
      sub_100004984(v18);
    }
  }

  else
  {
    sub_1003DA6F4(v4, v12, type metadata accessor for RangingConfigDataSession);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0C08);
    sub_1003DA15C(v12, v10, type metadata accessor for RangingConfigDataSession);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v5 + 20);
      type metadata accessor for Handle();
      sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1003DA1C4(v10, type metadata accessor for RangingConfigDataSession);
      v28 = sub_10000D01C(v25, v27, &v29);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Finder Stop and clear configData session\nwith peerHandle: %{private,mask.hash}s", v22, 0x16u);
      sub_100004984(v23);
    }

    else
    {

      sub_1003DA1C4(v10, type metadata accessor for RangingConfigDataSession);
    }

    sub_1003D5498(*&v12[*(v5 + 32)]);
    sub_1003DA1C4(v12, type metadata accessor for RangingConfigDataSession);
  }
}

uint64_t sub_1003D6578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Handle();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003D66B0, 0, 0);
}

uint64_t sub_1003D66B0()
{
  v10 = v0;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = sub_10000A6F0(v1, qword_1005E0C08);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1003D6860;

  return daemon.getter();
}

uint64_t sub_1003D6860(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService();
  v9 = sub_1003DA8C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1003DA8C4(&qword_1005AD548, type metadata accessor for NITokenService);
  *v6 = v12;
  v6[1] = sub_1003D6A3C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003D6A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D6F98, 0, 0);
  }

  else
  {
    v7 = v4[19];

    v8 = swift_task_alloc();
    v4[23] = v8;
    *v8 = v6;
    v8[1] = sub_1003D6BC4;

    return sub_100436154();
  }
}

uint64_t sub_1003D6BC4(char a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1003D6CC4, 0, 0);
}

uint64_t sub_1003D6CC4()
{
  v23 = v0;
  if (*(v0 + 200) <= 2u && !*(v0 + 200))
  {
    v18 = *(v0 + 168);

    goto LABEL_11;
  }

  v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v1)
  {
    v2 = *(v0 + 168);
LABEL_11:

    type metadata accessor for NIRangingService();
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    *v19 = v0;
    v19[1] = sub_1003D71A8;
    v20 = *(v0 + 128);
    v21 = *(v0 + 32);

    return sub_1003D1170(v20, v21);
  }

  v3 = *(v0 + 136);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v22);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s should not start Findee configData session.", v8, 0xCu);
    sub_100004984(v9);
  }

  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1003D6F98()
{
  v21 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v20);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v20);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s\nchecking Findee device failed: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[22];
  }

  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1003D71A8()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(sub_1003D72A4, 0, 0);
}

uint64_t sub_1003D72A4()
{
  v68 = v0;
  v1 = v0[15];
  sub_100005F04(v0[16], v1, &qword_1005B0F30, &qword_1004D3308);
  v2 = type metadata accessor for DiscoveryToken(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[15];
  if (v4 == 1)
  {
    sub_100002CE0(v0[15], &qword_1005B0F30, &qword_1004D3308);
  }

  else
  {
    v6 = v0[3];
    v7 = *v5;
    sub_1003DA1C4(v5, type metadata accessor for DiscoveryToken);
    sub_1000545A4(0, &qword_1005B33E0, NIDiscoveryToken_ptr);
    v8 = v6;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = v0[12];
      v11 = v0[9];
      v62 = v0[10];
      v12 = v0[8];
      v14 = v0[5];
      v13 = v0[6];
      v15 = v0[3];
      v16 = v0[4];
      v63 = *(v0[7] + qword_1005B3258);
      loga = v0[16];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(v10, v16, v12);
      v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
      v19 = swift_allocObject();
      *(v19 + 2) = v17;
      *(v19 + 3) = v15;
      *(v19 + 4) = v14;
      *(v19 + 5) = v13;
      (*(v11 + 32))(&v19[v18], v10, v12);
      v20 = v15;

      sub_100005F6C(v14, v13);
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100002CE0(loga, &qword_1005B0F30, &qword_1004D3308);

      goto LABEL_12;
    }
  }

  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[3];
  (*(v0[9] + 16))(v0[11], v0[4], v0[8]);
  sub_100005F04(v21, v23, &qword_1005B0F30, &qword_1004D3308);
  v25 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v64 = v27;
    log = v26;
    v59 = v0[13];
    v60 = v0[14];
    v28 = v0[11];
    v30 = v0[8];
    v29 = v0[9];
    v31 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v31 = 136447235;
    *(v31 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E9780, &v67);
    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v29 + 8))(v28, v30);
    v35 = sub_10000D01C(v32, v34, &v67);

    *(v31 + 24) = v35;
    *(v31 + 32) = 2082;
    sub_100005F04(v60, v59, &qword_1005B0F30, &qword_1004D3308);
    v36 = v3(v59, 1, v2);
    v37 = v0[13];
    if (v36 == 1)
    {
      sub_100002CE0(v0[13], &qword_1005B0F30, &qword_1004D3308);
      v38 = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      v38 = sub_10042EABC();
      v39 = v46;
      sub_1003DA1C4(v37, type metadata accessor for DiscoveryToken);
    }

    v47 = v0[16];
    v48 = v0[3];
    sub_100002CE0(v0[14], &qword_1005B0F30, &qword_1004D3308);
    v49 = sub_10000D01C(v38, v39, &v67);

    *(v31 + 34) = v49;
    *(v31 + 42) = 2114;
    *(v31 + 44) = v48;
    *v61 = v48;
    v50 = v48;
    _os_log_impl(&_mh_execute_header, log, v64, "%{public}s from %{private,mask.hash}s\nlocal peerToken: %{public}s doesn't match with recieved peerToken: %{public}@, ignore it", v31, 0x34u);
    sub_100002CE0(v61, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();

    v45 = v47;
  }

  else
  {
    v40 = v0[16];
    v41 = v0[14];
    v42 = v0[11];
    v43 = v0[8];
    v44 = v0[9];

    sub_100002CE0(v41, &qword_1005B0F30, &qword_1004D3308);
    (*(v44 + 8))(v42, v43);
    v45 = v40;
  }

  sub_100002CE0(v45, &qword_1005B0F30, &qword_1004D3308);
LABEL_12:
  v52 = v0[15];
  v51 = v0[16];
  v54 = v0[13];
  v53 = v0[14];
  v56 = v0[11];
  v55 = v0[12];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1003D78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for RangingConfigDataSession();
  v5[19] = v8;
  v9 = *(v8 - 8);
  v5[20] = v9;
  v10 = *(v9 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return _swift_task_switch(sub_1003D7A38, 0, 0);
}

uint64_t sub_1003D7A38()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v3 = Strong;
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = qword_1005B3268;
  swift_beginAccess();
  sub_100005F04(&v3[v7], v6, &unk_1005B3430, &qword_1004D8210);
  v8 = *(v5 + 48);
  if (v8(v6, 1, v4) == 1)
  {
    v72 = v8;
    v73 = v7;
    v9 = v3;
    sub_100002CE0(v0[18], &unk_1005B3430, &qword_1004D8210);
LABEL_13:
    v33 = v0[20];
    v34 = v0[21];
    v35 = v0[19];
    v36 = v0[16];
    v71 = v0[17];
    v68 = v0[12];
    v69 = v0[15];
    v37 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:3 discoveryToken:v68 preferredUpdateRate:2];
    v38 = type metadata accessor for Handle();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v36, 1, 1, v38);
    v40 = [objc_allocWithZone(NISession) init];
    [v40 setDelegate:v9];
    (*(v39 + 16))(&v34[v35[5]], v69, v38);
    sub_100005F04(v36, &v34[v35[6]], &qword_1005B3360, &unk_1004C6AA0);
    *v34 = v40;
    *&v34[v35[7]] = v68;
    *&v34[v35[8]] = 3;
    *&v34[v35[9]] = v37;
    sub_1003DA15C(v34, v71, type metadata accessor for RangingConfigDataSession);
    (*(v33 + 56))(v71, 0, 1, v35);
    swift_beginAccess();
    v41 = v68;
    v42 = v9;
    v43 = v40;
    v70 = v37;
    v44 = v37;
    sub_1003D92E0(v71, &v9[v73]);
    swift_endAccess();
    [v43 runWithConfiguration:v44];

    sub_1003DA1C4(v34, type metadata accessor for RangingConfigDataSession);
    sub_100002CE0(v36, &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000A6F0(v45, qword_1005E0C08);
    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2113;
      *(v49 + 14) = v46;
      *v50 = v70;
      v51 = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "Findee session started and notifyDiscoveredNearbyObject\nwith config: %{private,mask.hash}@", v49, 0x16u);
      sub_100002CE0(v50, &qword_1005A9670, &unk_1004C2480);
    }

    v52 = v0[19];

    if (!v72(&v9[v73], 1, v52))
    {
      v54 = v0[13];
      v53 = v0[14];
      v55 = v0[12];
      v56 = [*&v9[v73] findingNotifier];
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v56 notifyDiscoveredNearbyObjectWithToken:v55 sharedConfigurationData:isa];
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Findee addtional configData session notify end", v60, 2u);
    }

    goto LABEL_22;
  }

  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[12];
  sub_1003DA6F4(v0[18], v10, type metadata accessor for RangingConfigDataSession);
  sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
  v13 = *(v10 + *(v11 + 28));
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v72 = v8;
    v73 = v7;
    v9 = v3;
    sub_1003DA1C4(v0[22], type metadata accessor for RangingConfigDataSession);
    goto LABEL_13;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v14 = v0[12];
  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0C08);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[12];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&_mh_execute_header, v17, v18, "Already has Findee addtional configData session\nfor token: %{public}@ running, just notifyDiscoveredNearbyObject", v20, 0xCu);
    sub_100002CE0(v21, &qword_1005A9670, &unk_1004C2480);
  }

  v23 = v0[22];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];

  v27 = [*v23 findingNotifier];
  v28 = Data._bridgeToObjectiveC()().super.isa;
  [v27 notifyDiscoveredNearbyObjectWithToken:v26 sharedConfigurationData:v28];

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Findee addtional configData session notify end", v31, 2u);
  }

  v32 = v0[22];

  sub_1003DA1C4(v32, type metadata accessor for RangingConfigDataSession);
LABEL_22:
  v62 = v0[21];
  v61 = v0[22];
  v64 = v0[17];
  v63 = v0[18];
  v65 = v0[16];

  v66 = v0[1];

  return v66();
}

uint64_t sub_1003D8238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for Handle();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = type metadata accessor for RangingConfigDataSession();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1003D83B4, 0, 0);
}

uint64_t sub_1003D83B4()
{
  v91 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[15];
    v7 = qword_1005B3268;
    swift_beginAccess();
    sub_100005F04(v3 + v7, v6, &unk_1005B3430, &qword_1004D8210);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_100002CE0(v0[15], &unk_1005B3430, &qword_1004D8210);
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000A6F0(v8, qword_1005E0C08);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "no active findee config data session", v11, 2u);
      }
    }

    else
    {
      v12 = v0[20];
      v13 = v0[16];
      v14 = v0[9];
      sub_1003DA6F4(v0[15], v12, type metadata accessor for RangingConfigDataSession);
      sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
      v15 = *(v12 + *(v13 + 28));
      if (static NSObject.== infix(_:_:)() & 1) != 0 || (v16 = v0[20], v17 = v0[16], v18 = v0[10], v19 = *(v17 + 20), (static Handle.== infix(_:_:)()))
      {
        if (qword_1005A8528 != -1)
        {
          swift_once();
        }

        v20 = v0[14];
        v21 = v0[11];
        v22 = v0[12];
        v23 = v0[10];
        v24 = type metadata accessor for Logger();
        sub_10000A6F0(v24, qword_1005E0C08);
        (*(v22 + 16))(v20, v23, v21);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        v27 = os_log_type_enabled(v25, v26);
        v28 = v0[14];
        v30 = v0[11];
        v29 = v0[12];
        if (v27)
        {
          v31 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v90 = v87;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
          v32 = dispatch thunk of CustomStringConvertible.description.getter();
          v34 = v33;
          (*(v29 + 8))(v28, v30);
          v35 = sub_10000D01C(v32, v34, &v90);

          *(v31 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v25, v26, "Findee Stop and clear configData session ranging\nfor peerHandle: %{private,mask.hash}s", v31, 0x16u);
          sub_100004984(v87);
        }

        else
        {

          (*(v29 + 8))(v28, v30);
        }

        v36 = v0[20];
        sub_1003D5498(*(v36 + *(v0[16] + 32)));

        v37 = v36;
      }

      else
      {
        v83 = v17;
        if (qword_1005A8528 != -1)
        {
          swift_once();
        }

        v39 = v0[19];
        v38 = v0[20];
        v40 = v0[18];
        v41 = v0[12];
        v42 = v0[10];
        v84 = v0[11];
        v86 = v0[13];
        v88 = v0[9];
        v43 = type metadata accessor for Logger();
        sub_10000A6F0(v43, qword_1005E0C08);
        sub_1003DA15C(v38, v39, type metadata accessor for RangingConfigDataSession);
        sub_1003DA15C(v38, v40, type metadata accessor for RangingConfigDataSession);
        (*(v41 + 16))(v86, v42, v84);
        v44 = v88;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        v47 = os_log_type_enabled(v45, v46);
        v49 = v0[18];
        v48 = v0[19];
        v51 = v0[12];
        v50 = v0[13];
        v52 = v0[11];
        if (v47)
        {
          v80 = v0[9];
          v85 = v0[13];
          v53 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v53 = 141559811;
          *(v53 + 4) = 1752392040;
          *(v53 + 12) = 2081;
          v54 = *(v48 + *(v13 + 28));
          v82 = v46;
          v55 = [v54 description];
          v79 = v52;
          v56 = v49;
          v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          log = v45;
          v59 = v58;

          sub_1003DA1C4(v48, type metadata accessor for RangingConfigDataSession);
          v60 = sub_10000D01C(v57, v59, &v90);

          *(v53 + 14) = v60;
          *(v53 + 22) = 2160;
          *(v53 + 24) = 1752392040;
          *(v53 + 32) = 2113;
          *(v53 + 34) = v80;
          *v89 = v80;
          *(v53 + 42) = 2160;
          *(v53 + 44) = 1752392040;
          *(v53 + 52) = 2081;
          v61 = *(v83 + 20);
          sub_1003DA8C4(&qword_1005B02C8, &type metadata accessor for Handle);
          v62 = v80;
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          sub_1003DA1C4(v56, type metadata accessor for RangingConfigDataSession);
          v66 = sub_10000D01C(v63, v65, &v90);

          *(v53 + 54) = v66;
          *(v53 + 62) = 2160;
          *(v53 + 64) = 1752392040;
          *(v53 + 72) = 2081;
          v67 = dispatch thunk of CustomStringConvertible.description.getter();
          v69 = v68;
          (*(v51 + 8))(v85, v79);
          v70 = sub_10000D01C(v67, v69, &v90);

          *(v53 + 74) = v70;
          _os_log_impl(&_mh_execute_header, log, v82, "Receivied unknown token, not stop configData session\npeerToken: %{private,mask.hash}s\ntoken: %{private,mask.hash}@\npeerHandle: %{private,mask.hash}s\nhandle: %{private,mask.hash}s", v53, 0x52u);
          sub_100002CE0(v89, &qword_1005A9670, &unk_1004C2480);

          swift_arrayDestroy();
        }

        else
        {

          (*(v51 + 8))(v50, v52);
          sub_1003DA1C4(v49, type metadata accessor for RangingConfigDataSession);
          sub_1003DA1C4(v48, type metadata accessor for RangingConfigDataSession);
        }

        v37 = v0[20];
      }

      sub_1003DA1C4(v37, type metadata accessor for RangingConfigDataSession);
    }
  }

  v72 = v0[19];
  v71 = v0[20];
  v73 = v0[18];
  v75 = v0[14];
  v74 = v0[15];
  v76 = v0[13];

  v77 = v0[1];

  return v77();
}

uint64_t sub_1003D8C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for RangingConfigDataSession();
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003D8D6C, 0, 0);
}

uint64_t sub_1003D8D6C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v3 = Strong;
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = qword_1005B3260;
  swift_beginAccess();
  sub_100005F04(v3 + v7, v6, &unk_1005B3430, &qword_1004D8210);
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v12 = v0[15];
    v13 = v0[13];
    v14 = v0[9];
    sub_1003DA6F4(v0[12], v12, type metadata accessor for RangingConfigDataSession);
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v15 = *(v12 + *(v13 + 28));
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000A6F0(v16, qword_1005E0C08);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Finder recieved configData from Findee, trying notifyDiscoveredNearbyObject", v19, 2u);
      }

      v20 = v0[15];
      v22 = v0[10];
      v21 = v0[11];
      v23 = v0[9];

      v24 = [*v20 findingNotifier];
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v24 notifyDiscoveredNearbyObjectWithToken:v23 sharedConfigurationData:isa];

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_20;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Finder session notifyDiscoveredNearbyObject end";
    }

    else
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000A6F0(v30, qword_1005E0C08);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_20;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Finder received different token than configSession is waiting for, ignore it";
    }

    _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

LABEL_20:
    v31 = v0[15];

    sub_1003DA1C4(v31, type metadata accessor for RangingConfigDataSession);
    goto LABEL_21;
  }

  sub_100002CE0(v0[12], &unk_1005B3430, &qword_1004D8210);
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0C08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "no active finder config data session", v11, 2u);
  }

LABEL_21:
  v32 = v0[15];
  v33 = v0[12];

  v34 = v0[1];

  return v34();
}

uint64_t sub_1003D91D0()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003D56E8(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1003D92E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1003D9350()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  *&v0[qword_1005B3250] = 0;
  v9 = qword_1005B3258;
  type metadata accessor for WorkItemQueue();
  v10 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  UUID.init()();
  *&v0[v9] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v11 = qword_1005B3260;
  v12 = type metadata accessor for RangingConfigDataSession();
  v13 = *(*(v12 - 8) + 56);
  v13(&v1[v11], 1, 1, v12);
  v13(&v1[qword_1005B3268], 1, 1, v12);
  swift_weakInit();
  swift_weakAssign();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

void sub_1003D956C()
{
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005E0BF0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v4 = String.init<A>(describing:)();
    v6 = sub_10000D01C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "didFailWithError: %{public}s", v2, 0xCu);
    sub_100004984(v3);
  }

  else
  {
  }
}

uint64_t sub_1003D9710(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0BF0);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2113;
    *(v12 + 14) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "didDiscover: %{private,mask.hash}@", v12, 0x16u);
    sub_100002CE0(v13, &qword_1005A9670, &unk_1004C2480);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  v16[5] = v9;
  v17 = v9;

  sub_1001D8850(0, 0, v7, &unk_1004D8030, v16);
}

uint64_t sub_1003D9958(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0BF0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
    v13 = Array.description.getter();
    v15 = sub_10000D01C(v13, v14, &v22);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "didUpdate: %{private,mask.hash}s", v11, 0x16u);
    sub_100004984(v12);
  }

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(a1 + 32);
  }

  v18 = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v20[5] = v18;

  sub_1001D8850(0, 0, v7, &unk_1004D8010, v20);
}

uint64_t sub_1003D9C30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1003D4FE0(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D9CF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003D9D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1003D4E2C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003D9DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10000368C;

  return sub_1003CF2B0(a1, a2, a3, a4, a5);
}

uint64_t sub_1003D9EC0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100003690;

  return sub_1003CF378(a1, a2, a3, a4, v11);
}

uint64_t sub_1003D9FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_1003D8C70(v2, v3, v5, v4);
}

uint64_t sub_1003DA04C()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003D78E8(v4, v5, v6, v7, v0 + v3);
}

uint64_t sub_1003DA15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DA1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DA224()
{
  v2 = *(type metadata accessor for Handle() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003D8238(v4, v5, v0 + v3);
}

uint64_t sub_1003DA300(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005B3228, &qword_1004D8100) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_1003CC270(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_1003DA464()
{
  v1 = sub_10004B564(&qword_1005B3228, &qword_1004D8100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1003DA558(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005B3228, &qword_1004D8100) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_1003CCB54(a1, v8, v9, v1 + v6, v10);
}

unint64_t sub_1003DA6A0()
{
  result = qword_1005B3238;
  if (!qword_1005B3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B3238);
  }

  return result;
}

uint64_t sub_1003DA6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DA75C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003C775C();
}

uint64_t sub_1003DA810()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1003C8A68();
}

uint64_t sub_1003DA8C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DA90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003C721C();
}

void sub_1003DA9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0BF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(0xD000000000000044, 0x80000001004E9930, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100004984(v12);
  }

  v13 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_1003DB408(a2, v4 + v13);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_1003DB408(a3, v4 + v14);
  swift_endAccess();
  v15 = *(v4 + 128);
  if (v15)
  {
    v16 = v15;
    sub_1003DB028(a1);
  }
}

uint64_t sub_1003DAB8C()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v30 = &v30 - v5;
  v6 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  if (qword_1005A8520 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005E0BF0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E9910, &v31);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
    sub_100004984(v20);
  }

  v21 = *(v1 + 128);
  if (v21)
  {
    v22 = v21;
    sub_1003DB214();
  }

  v23 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  swift_beginAccess();
  sub_1003DB328(v1 + v23, v15);
  v24 = *(v3 + 48);
  if (v24(v15, 1, v2))
  {
    sub_100002CE0(v15, &qword_1005B31F8, &qword_1004D8018);
  }

  else
  {
    v25 = v30;
    (*(v3 + 16))(v30, v15, v2);
    sub_100002CE0(v15, &qword_1005B31F8, &qword_1004D8018);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v25, v2);
  }

  v26 = OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation;
  swift_beginAccess();
  sub_1003DB328(v1 + v26, v13);
  if (v24(v13, 1, v2))
  {
    sub_100002CE0(v13, &qword_1005B31F8, &qword_1004D8018);
  }

  else
  {
    v27 = v30;
    (*(v3 + 16))(v30, v13, v2);
    sub_100002CE0(v13, &qword_1005B31F8, &qword_1004D8018);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v27, v2);
  }

  v28 = *(v3 + 56);
  v28(v10, 1, 1, v2);
  swift_beginAccess();
  sub_1003DB398(v10, v1 + v23);
  swift_endAccess();
  v28(v10, 1, 1, v2);
  swift_beginAccess();
  sub_1003DB398(v10, v1 + v26);
  return swift_endAccess();
}

void sub_1003DB028(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_allocWithZone(NIFindingConfiguration) initWithRole:0 discoveryToken:a1 preferredUpdateRate:2];
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C08);
  v12 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2113;
    *(v7 + 14) = v12;
    *v8 = v12;
    v9 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Start ranging with %{private,mask.hash}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = [objc_allocWithZone(NISession) init];
  v11 = *(v2 + qword_1005B3250);
  *(v2 + qword_1005B3250) = v10;

  [v10 runWithConfiguration:v12];
}

void sub_1003DB214()
{
  v1 = v0;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stop ranging", v5, 2u);
  }

  v6 = qword_1005B3250;
  v7 = *(v1 + qword_1005B3250);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

uint64_t sub_1003DB328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DB408(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B31F8, &qword_1004D8018);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1003DB478()
{
  sub_1003DECDC(319, &qword_1005B3358, type metadata accessor for RangingConfigDataSession);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_1003DB548(unint64_t a1)
{
  v3 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (a1 < 2)
  {
    return;
  }

  if (a1 == 3)
  {
    v7 = qword_1005B3268;
    goto LABEL_6;
  }

  if (a1 == 2)
  {
    v7 = qword_1005B3260;
LABEL_6:
    swift_beginAccess();
    v8 = type metadata accessor for RangingConfigDataSession();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v1 + v7, 1, v8))
    {
      [*(v1 + v7) invalidate];
    }

    (*(v9 + 56))(v6, 1, 1, v8);
    swift_beginAccess();
    sub_1003D92E0(v6, v1 + v7);
    swift_endAccess();
    return;
  }

  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005E0C08);
  v15 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v15, v11, "Unknow NIFindingRole", v12, 2u);
  }

  v13 = v15;
}

void sub_1003DB798()
{
  v1 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for RangingConfigDataSession();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = qword_1005B3260;
  swift_beginAccess();
  sub_1003DED98(v0 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005B3430, &qword_1004D8210);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0C08);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E9700, &v29);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s no active finder session", v17, 0xCu);
      sub_100004984(v18);
    }
  }

  else
  {
    sub_1003DEE08(v4, v12);
    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0C08);
    sub_1003DEE6C(v12, v10);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v5 + 20);
      type metadata accessor for Handle();
      sub_1003DEF2C();
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1003DEED0(v10);
      v28 = sub_10000D01C(v25, v27, &v29);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Finder Stop and clear configData session\nwith peerHandle: %{private,mask.hash}s", v22, 0x16u);
      sub_100004984(v23);
    }

    else
    {

      sub_1003DEED0(v10);
    }

    sub_1003DB548(*&v12[*(v5 + 32)]);
    sub_1003DEED0(v12);
  }
}

uint64_t sub_1003DBBC8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for RangingConfigDataSession();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003DBCC0, 0, 0);
}

uint64_t sub_1003DBCC0()
{
  v23 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[11];
    v5 = v0[12];
    v6 = v0[10];
    v7 = qword_1005B3260;
    swift_beginAccess();
    sub_1003DED98(v3 + v7, v6);
    if ((*(v5 + 48))(v6, 1, v4) == 1)
    {
      sub_100002CE0(v0[10], &unk_1005B3430, &qword_1004D8210);
    }

    else
    {
      v8 = v0[13];
      v9 = v0[9];
      sub_1003DEE08(v0[10], v8);
      sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
      v10 = *v8;
      v11 = static NSObject.== infix(_:_:)();
      v12 = v0[13];
      if (v11)
      {
        sub_1003DB798();

        sub_1003DEED0(v12);
        goto LABEL_12;
      }

      sub_1003DEED0(v0[13]);
    }

    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005E0C08);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9AB0, &v22);
      _os_log_impl(&_mh_execute_header, v14, v15, " %{public}s ignore, when its not Finder session", v16, 0xCu);
      sub_100004984(v17);
    }
  }

LABEL_12:
  v18 = v0[13];
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

void sub_1003DBF4C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DEF84(v4);
}

uint64_t sub_1003DBFB4(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0C08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = *(v2 + qword_1005B3258);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *(v4 + 80);
  v12[3] = *(v4 + 88);
  v12[4] = v11;
  v12[5] = a1;

  v13 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DC1E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1003DC200, 0, 0);
}

uint64_t sub_1003DC200()
{
  v33 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + qword_1005B3260);
    swift_beginAccess();
    v5 = type metadata accessor for RangingConfigDataSession();
    v6 = *(*(v5 - 8) + 48);
    if (v6(v4, 1, v5))
    {
      goto LABEL_5;
    }

    v7 = *(v0 + 96);
    v8 = *v4;
    sub_1000545A4(0, &unk_1005B33D0, NISession_ptr);
    v9 = v8;
    v10 = v7;
    v11 = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0 || v6(v4, 1, v5) || (v27 = *(v4 + *(v5 + 36))) == 0)
    {
LABEL_5:
      v12 = &v3[qword_1005B3268];
      swift_beginAccess();
      if (v6(v12, 1, v5))
      {
        goto LABEL_20;
      }

      v13 = *(v0 + 96);
      v14 = *v12;
      sub_1000545A4(0, &unk_1005B33D0, NISession_ptr);
      v15 = v13;
      v16 = v14;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_20;
      }

      if (v6(v12, 1, v5))
      {
        goto LABEL_20;
      }

      v18 = *(v12 + *(v5 + 36));
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = qword_1005A8528;
      v20 = v18;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005E0C08);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v22, v23))
      {
LABEL_19:

        [*(v0 + 96) runWithConfiguration:v20];
LABEL_20:

        goto LABEL_21;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v32);
      v26 = "%{public}s re-run Findee config session";
    }

    else
    {
      v28 = qword_1005A8528;
      v20 = v27;
      if (v28 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000A6F0(v29, qword_1005E0C08);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_19;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E9A90, &v32);
      v26 = "%{public}s re-run Finder config session";
    }

    _os_log_impl(&_mh_execute_header, v22, v23, v26, v24, 0xCu);
    sub_100004984(v25);

    goto LABEL_19;
  }

LABEL_21:
  v30 = *(v0 + 8);

  return v30();
}

void sub_1003DC638(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003DBFB4(v4);
}

uint64_t sub_1003DC6A0(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for RangingConfigDataSession();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003DC798, 0, 0);
}

uint64_t sub_1003DC798()
{
  v38 = v0;
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[14];
    v5 = v0[15];
    v6 = qword_1005B3260;
    swift_beginAccess();
    v7 = *(v5 + 48);
    if (v7(&v3[v6], 1, v4))
    {
      goto LABEL_9;
    }

    v8 = v0[12];
    v9 = *&v3[v6];
    sub_1000545A4(0, &unk_1005B33D0, NISession_ptr);
    v10 = v9;
    v11 = v8;
    v12 = static NSObject.== infix(_:_:)();

    if ((v12 & 1) == 0)
    {
LABEL_9:
      v19 = v0[13];
      v18 = v0[14];
      v20 = qword_1005B3268;
      swift_beginAccess();
      sub_1003DED98(&v3[v20], v19);
      if (v7(v19, 1, v18) == 1)
      {
        v21 = v0[13];

        sub_100002CE0(v21, &unk_1005B3430, &qword_1004D8210);
      }

      else
      {
        v22 = v0[16];
        v23 = v0[12];
        sub_1003DEE08(v0[13], v22);
        sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
        v24 = *v22;
        if (static NSObject.== infix(_:_:)())
        {
          if (qword_1005A8528 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000A6F0(v25, qword_1005E0C08);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v37 = v29;
            *v28 = 136446210;
            *(v28 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v37);
            _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s invalidate Findee config session", v28, 0xCu);
            sub_100004984(v29);
          }

          v30 = v0[16];
          sub_1003DB548(*(v30 + *(v0[14] + 32)));

          v31 = v30;
        }

        else
        {
          v32 = v0[16];

          v31 = v32;
        }

        sub_1003DEED0(v31);
      }
    }

    else
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000A6F0(v13, qword_1005E0C08);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v37);
        _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s invalidate Finder config session", v16, 0xCu);
        sub_100004984(v17);
      }

      sub_1003DB798();
    }
  }

  v33 = v0[16];
  v34 = v0[13];

  v35 = v0[1];

  return v35();
}

void sub_1003DCBE0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_1003DF1B0(v6);
}

uint64_t sub_1003DCC50(uint64_t a1, uint64_t a2)
{
  v5 = swift_isaMask & *v2;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C08);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "didFailWithError: %{public}s", v9, 0xCu);
    sub_100004984(v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v5 + 88) + 24))(a1, a2, *(v5 + 80));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003DCE54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_1003DCC50(v6, v8);
}

uint64_t sub_1003DCEC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = swift_isaMask & *v3;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0C08);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "didDiscover: %@", v11, 0xCu);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v6 + 88) + 32))(a1, v8, *(v6 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003DD0B4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1003DCEC8(v6, v7);
}

uint64_t sub_1003DD130(uint64_t a1, uint64_t a2)
{
  v5 = swift_isaMask & *v2;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0C08);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
    v11 = Array.description.getter();
    v13 = sub_10000D01C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "didUpdate: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v5 + 88) + 40))(a1, a2, *(v5 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003DD35C(void *a1, uint64_t a2, void *a3)
{
  sub_1000545A4(0, &qword_1005B31F0, NINearbyObject_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_1003DD130(v6, v5);
}

uint64_t sub_1003DD3EC(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v10 = swift_isaMask & *v4;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C08);
  v12 = a4;
  sub_100005F6C(a2, a3);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  sub_1000049D0(a2, a3);
  if (os_log_type_enabled(v13, v14))
  {
    v26 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136447235;
    *(v15 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v27);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2113;
    *(v15 + 24) = v12;
    *v16 = v12;
    *(v15 + 32) = 2160;
    *(v15 + 34) = 1752392040;
    *(v15 + 42) = 2081;
    v17 = v12;
    v18 = Data.description.getter();
    v20 = sub_10000D01C(v18, v19, &v27);

    *(v15 + 44) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s\nfor object: %{private,mask.hash}@\nshareableConfigurationData: %{private,mask.hash}s", v15, 0x34u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();

    a1 = v26;
  }

  v21 = *(v5 + qword_1005B3258);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = *(v10 + 80);
  v23[3] = *(v10 + 88);
  v23[4] = v22;
  v23[5] = a1;
  v23[6] = a2;
  v23[7] = a3;
  sub_100005F6C(a2, a3);

  v24 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&unk_1005B3430, &qword_1004D8210) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for RangingConfigDataSession();
  v6[20] = v9;
  v10 = *(v9 - 8);
  v6[21] = v10;
  v6[22] = *(v10 + 64);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_1003DD8AC, 0, 0);
}

uint64_t sub_1003DD8AC()
{
  v98 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v3 = Strong;
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = qword_1005B3260;
  swift_beginAccess();
  sub_1003DED98(v3 + v7, v6);
  v8 = *(v5 + 48);
  if (v8(v6, 1, v4) == 1)
  {
    sub_100002CE0(*(v0 + 152), &unk_1005B3430, &qword_1004D8210);
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 96);
    sub_1003DEE08(*(v0 + 152), v9);
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v11 = *v9;
    if (static NSObject.== infix(_:_:)())
    {
      if (qword_1005A8528 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v14 = *(v0 + 216);
      v15 = type metadata accessor for Logger();
      sub_10000A6F0(v15, qword_1005E0C08);
      sub_1003DEE6C(v12, v13);
      sub_1003DEE6C(v12, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 216);
      v20 = *(v0 + 224);
      if (v18)
      {
        v21 = *(v0 + 160);
        v22 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v22 = 136447235;
        *(v22 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v97);
        *(v22 + 12) = 2160;
        *(v22 + 14) = 1752392040;
        *(v22 + 22) = 2081;
        v23 = *(v21 + 20);
        type metadata accessor for Handle();
        sub_1003DEF2C();
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        sub_1003DEED0(v20);
        v27 = sub_10000D01C(v24, v26, &v97);

        *(v22 + 24) = v27;
        *(v22 + 32) = 2160;
        *(v22 + 34) = 1752392040;
        *(v22 + 42) = 2113;
        v28 = *(v19 + *(v21 + 28));
        sub_1003DEED0(v19);
        *(v22 + 44) = v28;
        *v93 = v28;
        _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s,\nFinder trying send to peer: %{private,mask.hash}s\nwith token: %{private,mask.hash}@", v22, 0x34u);
        sub_100002CE0(v93, &qword_1005A9670, &unk_1004C2480);

        swift_arrayDestroy();
      }

      else
      {

        sub_1003DEED0(v19);
        sub_1003DEED0(v20);
      }

      v62 = *(v0 + 232);
      v63 = *(v0 + 208);
      v65 = *(v0 + 168);
      v64 = *(v0 + 176);
      v66 = *(v0 + 136);
      v68 = *(v0 + 104);
      v67 = *(v0 + 112);
      v69 = type metadata accessor for TaskPriority();
      v95 = *(v0 + 120);
      (*(*(v69 - 8) + 56))(v66, 1, 1, v69);
      sub_1003DEE6C(v62, v63);
      v70 = (*(v65 + 80) + 72) & ~*(v65 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v71 + 32) = v95;
      *(v71 + 48) = v3;
      *(v71 + 56) = v68;
      *(v71 + 64) = v67;
      sub_1003DEE08(v63, v71 + v70);
      v72 = v3;
      sub_100005F6C(v68, v67);
      v73 = &unk_1004D8240;
      goto LABEL_27;
    }

    sub_1003DEED0(*(v0 + 232));
  }

  v29 = *(v0 + 160);
  v30 = *(v0 + 144);
  v31 = qword_1005B3268;
  swift_beginAccess();
  sub_1003DED98(v3 + v31, v30);
  if (v8(v30, 1, v29) != 1)
  {
    v32 = *(v0 + 200);
    v33 = *(v0 + 96);
    sub_1003DEE08(*(v0 + 144), v32);
    sub_1000545A4(0, &qword_1005B3440, NSObject_ptr);
    v34 = *v32;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1003DEED0(*(v0 + 200));
      goto LABEL_18;
    }

    if (qword_1005A8528 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 192);
    v35 = *(v0 + 200);
    v37 = *(v0 + 184);
    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005E0C08);
    sub_1003DEE6C(v35, v36);
    sub_1003DEE6C(v35, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 184);
    v43 = *(v0 + 192);
    if (v41)
    {
      v44 = *(v0 + 160);
      v45 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v45 = 136447235;
      *(v45 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v97);
      *(v45 + 12) = 2160;
      *(v45 + 14) = 1752392040;
      *(v45 + 22) = 2081;
      v46 = *(v44 + 20);
      type metadata accessor for Handle();
      sub_1003DEF2C();
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_1003DEED0(v43);
      v50 = sub_10000D01C(v47, v49, &v97);

      *(v45 + 24) = v50;
      *(v45 + 32) = 2160;
      *(v45 + 34) = 1752392040;
      *(v45 + 42) = 2113;
      v51 = *(v42 + *(v44 + 28));
      sub_1003DEED0(v42);
      *(v45 + 44) = v51;
      *v94 = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s,\nFindee trying send to peer: %{private,mask.hash}s\nwith token: %{private,mask.hash}@", v45, 0x34u);
      sub_100002CE0(v94, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      sub_1003DEED0(v42);
      sub_1003DEED0(v43);
    }

    v62 = *(v0 + 200);
    v74 = *(v0 + 208);
    v76 = *(v0 + 168);
    v75 = *(v0 + 176);
    v66 = *(v0 + 136);
    v78 = *(v0 + 104);
    v77 = *(v0 + 112);
    v79 = type metadata accessor for TaskPriority();
    v96 = *(v0 + 120);
    (*(*(v79 - 8) + 56))(v66, 1, 1, v79);
    sub_1003DEE6C(v62, v74);
    v80 = (*(v76 + 80) + 72) & ~*(v76 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = 0;
    *(v71 + 32) = v96;
    *(v71 + 48) = v3;
    *(v71 + 56) = v78;
    *(v71 + 64) = v77;
    sub_1003DEE08(v74, v71 + v80);
    v72 = v3;
    sub_100005F6C(v78, v77);
    v73 = &unk_1004D8230;
LABEL_27:
    sub_1001D8B64(0, 0, v66, v73, v71);

    sub_1003DEED0(v62);
    goto LABEL_28;
  }

  sub_100002CE0(*(v0 + 144), &unk_1005B3430, &qword_1004D8210);
LABEL_18:
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 96);
  v53 = type metadata accessor for Logger();
  sub_10000A6F0(v53, qword_1005E0C08);
  v54 = v52;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = *(v0 + 96);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v97 = v60;
    *v58 = 136446723;
    *(v58 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E9A30, &v97);
    *(v58 + 12) = 2160;
    *(v58 + 14) = 1752392040;
    *(v58 + 22) = 2113;
    *(v58 + 24) = v57;
    *v59 = v57;
    v61 = v57;
    _os_log_impl(&_mh_execute_header, v55, v56, "%{public}s current session %{private,mask.hash}@\nis not waiting for shareConfigation data, privacy: .public)", v58, 0x20u);
    sub_100002CE0(v59, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v60);
  }

LABEL_28:
  v82 = *(v0 + 224);
  v81 = *(v0 + 232);
  v84 = *(v0 + 208);
  v83 = *(v0 + 216);
  v86 = *(v0 + 192);
  v85 = *(v0 + 200);
  v87 = *(v0 + 184);
  v89 = *(v0 + 144);
  v88 = *(v0 + 152);
  v90 = *(v0 + 136);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_1003DE310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = swift_isaMask & *a4;
  return _swift_task_switch(sub_1003DE370, 0, 0);
}

uint64_t sub_1003DE370()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = type metadata accessor for RangingConfigDataSession();
    v6 = v5[6];
    v7 = *(v4 + v5[7]);
    v8 = v5[5];
    v11 = v3 + 80;
    v10 = *(v3 + 80);
    v9 = *(v11 + 8);
    v18 = (*(v9 + 8) + **(v9 + 8));
    v12 = *(*(v9 + 8) + 4);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1003DE528;
    v14 = *(v0 + 40);
    v15 = *(v0 + 32);

    return v18(v15, v14, v7, v4 + v8, v4 + v6, v10, v9);
  }

  else
  {
    **(v0 + 16) = 1;
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1003DE528()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003DFAB4, 0, 0);
}

uint64_t sub_1003DE640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = swift_isaMask & *a4;
  return _swift_task_switch(sub_1003DE6A0, 0, 0);
}

uint64_t sub_1003DE6A0()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = type metadata accessor for RangingConfigDataSession();
    v6 = v5[6];
    v7 = *(v4 + v5[7]);
    v8 = v5[5];
    v11 = v3 + 80;
    v10 = *(v3 + 80);
    v9 = *(v11 + 8);
    v18 = (*(v9 + 8) + **(v9 + 8));
    v12 = *(*(v9 + 8) + 4);
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1003DE858;
    v14 = *(v0 + 40);
    v15 = *(v0 + 32);

    return v18(v15, v14, v7, v4 + v8, v4 + v6, v10, v9);
  }

  else
  {
    **(v0 + 16) = 1;
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1003DE858()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003DE970, 0, 0);
}

void sub_1003DE998(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1003DD3EC(v8, v11, v13, v10);
  sub_1000049D0(v11, v13);
}

void sub_1003DEA4C(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_1003DF3DC();
}

uint64_t sub_1003DEA8C(uint64_t a1)
{
  v2 = *(a1 + qword_1005B3258);

  sub_100002CE0(a1 + qword_1005B3260, &unk_1005B3430, &qword_1004D8210);
  sub_100002CE0(a1 + qword_1005B3268, &unk_1005B3430, &qword_1004D8210);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RangingConfigDataSession()
{
  result = qword_1005B33C0;
  if (!qword_1005B33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003DEBBC()
{
  sub_1000545A4(319, &unk_1005B33D0, NISession_ptr);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Handle();
    if (v1 <= 0x3F)
    {
      sub_1003DECDC(319, &qword_1005AE910, &type metadata accessor for Handle);
      if (v2 <= 0x3F)
      {
        sub_1000545A4(319, &qword_1005B33E0, NIDiscoveryToken_ptr);
        if (v3 <= 0x3F)
        {
          type metadata accessor for NIFindingRole(319);
          if (v4 <= 0x3F)
          {
            sub_1003DED30();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1003DECDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003DED30()
{
  if (!qword_1005B33E8)
  {
    sub_1000545A4(255, &unk_1005B33F0, NIConfiguration_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B33E8);
    }
  }
}

uint64_t sub_1003DED98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005B3430, &qword_1004D8210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangingConfigDataSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangingConfigDataSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003DEED0(uint64_t a1)
{
  v2 = type metadata accessor for RangingConfigDataSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003DEF2C()
{
  result = qword_1005B02C8;
  if (!qword_1005B02C8)
  {
    type metadata accessor for Handle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B02C8);
  }

  return result;
}

uint64_t sub_1003DEF84(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0C08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E9AB0, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = *(v2 + qword_1005B3258);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *(v4 + 80);
  v12[3] = *(v4 + 88);
  v12[4] = v11;
  v12[5] = a1;

  v13 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DF1B0(void *a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  if (qword_1005A8528 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0C08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E9A70, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = *(v2 + qword_1005B3258);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = *(v4 + 80);
  v12[3] = *(v4 + 88);
  v12[4] = v11;
  v12[5] = a1;

  v13 = a1;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1003DF40C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_1003DD718(v4, v5, v7, v6, v2, v3);
}

uint64_t sub_1003DF4CC(uint64_t a1)
{
  v4 = *(type metadata accessor for RangingConfigDataSession() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1003DE640(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1003DF5D8()
{
  v1 = type metadata accessor for RangingConfigDataSession();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v12 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000049D0(*(v0 + 56), *(v0 + 64));
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = type metadata accessor for Handle();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = v1[6];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v5 + v10, v7);
  }

  return _swift_deallocObject(v0, v3 + v12, v2 | 7);
}

uint64_t sub_1003DF764(uint64_t a1)
{
  v4 = *(type metadata accessor for RangingConfigDataSession() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1003DE310(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1003DF870()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003DC6A0(v5, v4);
}

uint64_t sub_1003DF91C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_1003DC1E0(v5, v4);
}

uint64_t sub_1003DF9C8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003DFA08()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003DBBC8(v5, v4);
}

uint64_t sub_1003DFAB8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0C30);
  v1 = sub_10000A6F0(v0, qword_1005E0C30);
  if (qword_1005A8558 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0C60);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DFB80()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005B34B0);
  sub_10000A6F0(v0, qword_1005B34B0);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_1003DFBF0()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_10004F154(v0, qword_1005E0C48);
  v1 = sub_10000A6F0(v0, qword_1005E0C48);
  if (qword_1005A8538 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005B34B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003DFCB8()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10004F154(v5, qword_1005B34C8);
  sub_10000A6F0(v5, qword_1005B34C8);
  if (qword_1005A8540 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005E0C48);
  (*(v1 + 16))(v4, v6, v0);
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003DFE28()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005B02D8, &qword_1004D1868);
  sub_10004F154(v5, qword_1005B34E0);
  sub_10000A6F0(v5, qword_1005B34E0);
  if (qword_1005A8540 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A6F0(v0, qword_1005E0C48);
  (*(v1 + 16))(v4, v6, v0);
  type metadata accessor for Date();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_1003DFF9C()
{
  v1[527] = v0;
  v2 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[533] = v2;
  v3 = *(v2 - 8);
  v1[539] = v3;
  v4 = *(v3 + 64) + 15;
  v1[545] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[551] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B3708, &qword_1004D83F0);
  v1[557] = v6;
  v7 = *(v6 - 8);
  v1[563] = v7;
  v8 = *(v7 + 64) + 15;
  v1[569] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005B3710, &qword_1004D83F8) - 8) + 64) + 15;
  v1[575] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B3718, &qword_1004D8400);
  v1[581] = v10;
  v11 = *(v10 - 8);
  v1[587] = v11;
  v12 = *(v11 + 64) + 15;
  v1[593] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B3720, &qword_1004D8408) - 8) + 64) + 15;
  v1[599] = swift_task_alloc();
  v14 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[605] = v14;
  v15 = *(v14 - 8);
  v1[611] = v15;
  v16 = *(v15 + 64) + 15;
  v1[617] = swift_task_alloc();
  v17 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[623] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B3728, &qword_1004D8410) - 8) + 64) + 15;
  v1[629] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v1[635] = swift_task_alloc();
  v20 = type metadata accessor for UUID();
  v1[641] = v20;
  v21 = *(v20 - 8);
  v1[647] = v21;
  v22 = *(v21 + 64) + 15;
  v1[653] = swift_task_alloc();
  v23 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[659] = swift_task_alloc();
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  v1[665] = v25;
  *v25 = v1;
  v25[1] = sub_1003E03A8;

  return daemon.getter();
}

uint64_t sub_1003E03A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5320);
  v12 = *v1;
  v3[671] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[677] = v6;
  v7 = type metadata accessor for Daemon();
  v3[683] = v7;
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_1003F50C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[689] = v9;
  v10 = sub_10005A3CC();
  *v6 = v12;
  v6[1] = sub_1003E0564;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003E0564(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 5416);
  v10 = *v2;
  v3[695] = a1;
  v3[701] = v1;

  if (v1)
  {
    v5 = v3[527];
    v6 = sub_1003E2C3C;
  }

  else
  {
    v7 = v3[671];
    v8 = v3[527];

    v6 = sub_1003E0690;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003E0690()
{
  if (sub_1003F399C())
  {
    v1 = v0[659];
    v2 = v0[527];
    type metadata accessor for XPCActivity();
    static DispatchQoS.utility.getter();
    v3 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];
    swift_retain_n();
    v4 = swift_task_alloc();
    v0[707] = v4;
    *v4 = v0;
    v4[1] = sub_1003E0824;
    v5 = v0[659];
    v6 = v0[527];

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD00000000000002ALL, 0x80000001004E9C00, v5, &unk_1004D8478, v6, &unk_1004D8480, v6);
  }

  else
  {
    v7 = v0[695];
    v0[719] = sub_1003F50C4(&qword_1005B3730, type metadata accessor for NITokenService);

    return _swift_task_switch(sub_1003E09F4, v7, 0);
  }
}

uint64_t sub_1003E0824(uint64_t a1)
{
  v2 = *(*v1 + 5656);
  v3 = *(*v1 + 4216);
  v5 = *v1;
  *(*v1 + 5704) = a1;

  return _swift_task_switch(sub_1003E093C, v3, 0);
}

uint64_t sub_1003E093C()
{
  v1 = v0[527];
  v2 = *(v1 + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity);
  *(v1 + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity) = v0[713];

  v3 = v0[695];
  v0[719] = sub_1003F50C4(&qword_1005B3730, type metadata accessor for NITokenService);

  return _swift_task_switch(sub_1003E09F4, v3, 0);
}

uint64_t sub_1003E09F4()
{
  v1 = v0[695];
  v2 = v0[653];
  v3 = v0[647];
  v4 = v0[641];
  v5 = v0[527];
  sub_100458A94(v0[719], v2);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1003E0AA0, v5, 0);
}

uint64_t sub_1003E0AA0()
{
  v1 = swift_task_alloc();
  v0[725] = v1;
  *v1 = v0;
  v1[1] = sub_1003E0B38;
  v2 = v0[635];
  v3 = v0[527];

  return sub_100437A14(v2);
}

uint64_t sub_1003E0B38()
{
  v1 = *(*v0 + 5800);
  v2 = *(*v0 + 5080);
  v3 = *(*v0 + 4216);
  v5 = *v0;

  sub_100002CE0(v2, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003E0C74, v3, 0);
}

uint64_t sub_1003E0C74()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 5848) = v2;
  *v2 = v0;
  v2[1] = sub_1003E0D04;

  return daemon.getter();
}

uint64_t sub_1003E0D04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5848);
  v5 = *v1;
  v3[737] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[743] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1003F50C4(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1003E0EB8;
  v10 = v3[689];
  v11 = v3[683];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003E0EB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 5944);
  v6 = *v2;
  v4[744] = a1;
  v4[745] = v1;

  if (v1)
  {
    v7 = v4[527];
    v8 = sub_1003E2D74;
  }

  else
  {
    v9 = v4[737];

    v8 = sub_1003E0FF4;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003E0FF4()
{
  *(v0 + 5968) = *(*(v0 + 5952) + 136);
  type metadata accessor for CloudKitStorage();
  sub_1003F50C4(&qword_1005B3738, &type metadata accessor for CloudKitStorage);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003E10B4, v2, v1);
}

uint64_t sub_1003E10B4()
{
  v1 = v0[746];
  v2 = v0[629];
  v3 = v0[527];
  dispatch thunk of CloudKitStorage.stateStream()();

  return _swift_task_switch(sub_1003E1124, v3, 0);
}

uint64_t sub_1003E1124()
{
  v1 = v0[629];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3728, &qword_1004D8410);
  swift_endAccess();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[747] = v6;
  *v6 = v0;
  v6[1] = sub_1003E1254;

  return daemon.getter();
}

uint64_t sub_1003E1254(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 5976);
  v5 = *v1;
  v3[748] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[749] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1003F50C4(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_1003E1408;
  v10 = v3[689];
  v11 = v3[683];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003E1408(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 5992);
  v6 = *v2;
  v4[750] = a1;
  v4[751] = v1;

  if (v1)
  {
    v7 = v4[527];
    v8 = sub_1003E2EB8;
  }

  else
  {
    v9 = v4[748];

    v8 = sub_1003E1544;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003E1544()
{
  v1 = *(v0 + 6000);
  v2 = *(v0 + 4984);
  v3 = *(v0 + 4936);
  v4 = *(v0 + 4888);
  v5 = *(v0 + 4840);
  v6 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  *(v0 + 6176) = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v4 + 104))(v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E1660, v6, 0);
}

uint64_t sub_1003E1660()
{
  v1 = v0[623];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[752] = v6;
  *v6 = v0;
  v6[1] = sub_1003E178C;

  return daemon.getter();
}

uint64_t sub_1003E178C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 6016);
  v5 = *v1;
  v3[753] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[754] = v7;
  v8 = type metadata accessor for LocationMonitor();
  v9 = sub_1003F50C4(&qword_1005AD538, type metadata accessor for LocationMonitor);
  *v7 = v5;
  v7[1] = sub_1003E1940;
  v10 = v3[689];
  v11 = v3[683];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003E1940(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 6032);
  v6 = *v2;
  v4[755] = a1;
  v4[756] = v1;

  if (v1)
  {
    v7 = v4[527];
    v8 = sub_1003E3008;
  }

  else
  {
    v9 = v4[753];

    v8 = sub_1003E1A7C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003E1A7C()
{
  v1 = *(v0 + 6040);
  v2 = *(v0 + 6176);
  v3 = *(v0 + 4792);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4696);
  v6 = *(v0 + 4648);
  v7 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v4, v2, v6);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E1B88, v7, 0);
}

uint64_t sub_1003E1B88()
{
  v1 = v0[599];
  v2 = v0[527];
  v3 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3720, &qword_1004D8408);
  swift_endAccess();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[757] = v6;
  *v6 = v0;
  v6[1] = sub_1003E1CB4;

  return daemon.getter();
}

uint64_t sub_1003E1CB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 6056);
  v5 = *v1;
  v3[758] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[759] = v7;
  v8 = type metadata accessor for AppDeletionService();
  v9 = sub_1003F50C4(&qword_1005AD540, type metadata accessor for AppDeletionService);
  *v7 = v5;
  v7[1] = sub_1003E1E68;
  v10 = v3[689];
  v11 = v3[683];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003E1E68(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 6072);
  v6 = *v2;
  v4[760] = a1;
  v4[761] = v1;

  if (v1)
  {
    v7 = v4[527];
    v8 = sub_1003E3164;
  }

  else
  {
    v9 = v4[758];

    v8 = sub_1003E1FA4;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003E1FA4()
{
  v1 = *(v0 + 6080);
  v2 = *(v0 + 6176);
  v3 = *(v0 + 4600);
  v4 = *(v0 + 4552);
  v5 = *(v0 + 4504);
  v6 = *(v0 + 4456);
  v7 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v4, v2, v6);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E20B0, v7, 0);
}

uint64_t sub_1003E20B0()
{
  v1 = v0[575];
  v2 = v0[527];
  v3 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B3710, &qword_1004D83F8);
  swift_endAccess();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[762] = v6;
  *v6 = v0;
  v6[1] = sub_1003E21DC;

  return daemon.getter();
}

uint64_t sub_1003E21DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 6096);
  v5 = *v1;
  v3[763] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[764] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1003F50C4(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_1003E2390;
  v10 = v3[689];
  v11 = v3[683];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003E2390(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 6112);
  v6 = *v2;
  v4[765] = a1;
  v4[766] = v1;

  if (v1)
  {
    v7 = v4[527];
    v8 = sub_1003E32CC;
  }

  else
  {
    v9 = v4[763];

    v8 = sub_1003E24CC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003E24CC()
{
  v1 = *(v0 + 6120);
  v2 = *(v0 + 6176);
  v3 = *(v0 + 4408);
  v4 = *(v0 + 4360);
  v5 = *(v0 + 4312);
  v6 = *(v0 + 4264);
  v7 = *(v0 + 4216);
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for AccountService.State(0);
  (*(v5 + 104))(v4, v2, v6);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1003E25E0, v7, 0);
}

uint64_t sub_1003E25E0()
{
  v1 = *(v0 + 4408);
  v2 = *(v0 + 4216);
  v3 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B02F8, &qword_1004D1870);
  swift_endAccess();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 3216);
}

uint64_t sub_1003E2808(uint64_t a1, uint64_t a2)
{
  *(v3 + 6136) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3440, v3 + 4224);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 16);
  }
}

uint64_t sub_1003E2850(uint64_t a1, uint64_t a2)
{
  *(v3 + 6144) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3734, v3 + 4560);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 2576);
  }
}

uint64_t sub_1003E2898(uint64_t a1, uint64_t a2)
{
  *(v3 + 6152) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3A28, v3 + 4896);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1936);
  }
}

uint64_t sub_1003E28E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 6160) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003E3D1C, v3 + 5232);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 1296, a2, sub_1003E2928, v3 + 5520);
  }
}

uint64_t sub_1003E2948(uint64_t a1, uint64_t a2)
{
  *(v3 + 6168) = v2;
  if (v2)
  {
    v4 = sub_1003E4010;
    v5 = v3 + 656;
    v6 = v3 + 5616;
  }

  else
  {
    v4 = sub_1003E298C;
    v5 = v3 + 656;
    v6 = v3 + 3920;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_1003E2AC8()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[659];
  v8 = v0[653];
  v9 = v0[635];
  v13 = v0[629];
  v14 = v0[623];
  v15 = v0[617];
  v16 = v0[599];
  v17 = v0[593];
  v18 = v0[575];
  v19 = v0[569];
  v20 = v0[551];
  v21 = v0[545];
  v10 = v0[527];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003E2C3C()
{
  v1 = v0[671];

  v2 = v0[659];
  v3 = v0[653];
  v4 = v0[635];
  v5 = v0[629];
  v6 = v0[623];
  v7 = v0[617];
  v8 = v0[599];
  v9 = v0[593];
  v10 = v0[575];
  v13 = v0[569];
  v14 = v0[551];
  v15 = v0[545];
  v16 = v0[701];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003E2D74()
{
  v1 = v0[737];
  v2 = v0[695];

  v3 = v0[659];
  v4 = v0[653];
  v5 = v0[635];
  v6 = v0[629];
  v7 = v0[623];
  v8 = v0[617];
  v9 = v0[599];
  v10 = v0[593];
  v11 = v0[575];
  v14 = v0[569];
  v15 = v0[551];
  v16 = v0[545];
  v17 = v0[745];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003E2EB8()
{
  v1 = v0[748];
  v2 = v0[744];
  v3 = v0[695];

  v4 = v0[659];
  v5 = v0[653];
  v6 = v0[635];
  v7 = v0[629];
  v8 = v0[623];
  v9 = v0[617];
  v10 = v0[599];
  v11 = v0[593];
  v12 = v0[575];
  v15 = v0[569];
  v16 = v0[551];
  v17 = v0[545];
  v18 = v0[751];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003E3008()
{
  v1 = v0[753];
  v2 = v0[750];
  v3 = v0[744];
  v4 = v0[695];

  v5 = v0[659];
  v6 = v0[653];
  v7 = v0[635];
  v8 = v0[629];
  v9 = v0[623];
  v10 = v0[617];
  v11 = v0[599];
  v12 = v0[593];
  v13 = v0[575];
  v16 = v0[569];
  v17 = v0[551];
  v18 = v0[545];
  v19 = v0[756];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003E3164()
{
  v1 = v0[758];
  v2 = v0[755];
  v3 = v0[750];
  v4 = v0[744];
  v5 = v0[695];

  v6 = v0[659];
  v7 = v0[653];
  v8 = v0[635];
  v9 = v0[629];
  v10 = v0[623];
  v11 = v0[617];
  v12 = v0[599];
  v13 = v0[593];
  v14 = v0[575];
  v17 = v0[569];
  v18 = v0[551];
  v19 = v0[545];
  v20 = v0[761];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003E32CC()
{
  v1 = v0[763];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];

  v7 = v0[659];
  v8 = v0[653];
  v9 = v0[635];
  v10 = v0[629];
  v11 = v0[623];
  v12 = v0[617];
  v13 = v0[599];
  v14 = v0[593];
  v15 = v0[575];
  v18 = v0[569];
  v19 = v0[551];
  v20 = v0[545];
  v21 = v0[766];
  sub_100037FC8(0);
  sub_100037FC8(0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003E3588()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[527];

  v8 = v0[527];
  v9 = v0[659];
  v10 = v0[653];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[623];
  v14 = v0[617];
  v15 = v0[599];
  v16 = v0[593];
  v19 = v0[575];
  v20 = v0[569];
  v21 = v0[551];
  v22 = v0[545];
  v23 = v0[767];
  sub_100037FC8(&unk_1004D8460);
  sub_100037FC8(&unk_1004D8470);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E387C()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[527];

  v8 = v0[527];
  v9 = v0[659];
  v10 = v0[653];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[623];
  v14 = v0[617];
  v15 = v0[599];
  v16 = v0[593];
  v19 = v0[575];
  v20 = v0[569];
  v21 = v0[551];
  v22 = v0[545];
  v23 = v0[768];
  sub_100037FC8(&unk_1004D8460);
  sub_100037FC8(&unk_1004D8470);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E3B70()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[527];

  v8 = v0[527];
  v9 = v0[659];
  v10 = v0[653];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[623];
  v14 = v0[617];
  v15 = v0[599];
  v16 = v0[593];
  v19 = v0[575];
  v20 = v0[569];
  v21 = v0[551];
  v22 = v0[545];
  v23 = v0[769];
  sub_100037FC8(&unk_1004D8460);
  sub_100037FC8(&unk_1004D8470);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E3E64()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[527];

  v8 = v0[527];
  v9 = v0[659];
  v10 = v0[653];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[623];
  v14 = v0[617];
  v15 = v0[599];
  v16 = v0[593];
  v19 = v0[575];
  v20 = v0[569];
  v21 = v0[551];
  v22 = v0[545];
  v23 = v0[770];
  sub_100037FC8(&unk_1004D8460);
  sub_100037FC8(&unk_1004D8470);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E4158()
{
  v1 = v0[765];
  v2 = v0[760];
  v3 = v0[755];
  v4 = v0[750];
  v5 = v0[744];
  v6 = v0[695];
  v7 = v0[527];

  v8 = v0[527];
  v9 = v0[659];
  v10 = v0[653];
  v11 = v0[635];
  v12 = v0[629];
  v13 = v0[623];
  v14 = v0[617];
  v15 = v0[599];
  v16 = v0[593];
  v19 = v0[575];
  v20 = v0[569];
  v21 = v0[551];
  v22 = v0[545];
  v23 = v0[771];
  sub_100037FC8(&unk_1004D8460);
  sub_100037FC8(&unk_1004D8470);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1003E4304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E4394();
}

uint64_t sub_1003E4394()
{
  v1[263] = v0;
  v2 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  v1[269] = v2;
  v3 = *(v2 - 8);
  v1[275] = v3;
  v4 = *(v3 + 64) + 15;
  v1[281] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[287] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[293] = swift_task_alloc();
  v7 = type metadata accessor for CloudKitStorage.State();
  v1[299] = v7;
  v8 = *(v7 - 8);
  v1[300] = v8;
  v9 = *(v8 + 64) + 15;
  v1[301] = swift_task_alloc();
  v1[302] = swift_task_alloc();
  v1[303] = swift_task_alloc();
  v1[304] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B3758, &qword_1004D8580) - 8) + 64) + 15;
  v1[305] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B3760, &qword_1004D8588);
  v1[306] = v11;
  v12 = *(v11 - 8);
  v1[307] = v12;
  v13 = *(v12 + 64) + 15;
  v1[308] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005B3728, &qword_1004D8410) - 8) + 64) + 15;
  v1[309] = swift_task_alloc();
  v15 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  v1[310] = v15;
  v16 = *(v15 - 8);
  v1[311] = v16;
  v17 = *(v16 + 64) + 15;
  v1[312] = swift_task_alloc();

  return _swift_task_switch(sub_1003E465C, v0, 0);
}

uint64_t sub_1003E465C()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 2496);
    v2 = *(v0 + 2472);
    v3 = *(v0 + 2464);
    v4 = *(v0 + 2440);
    v5 = *(v0 + 2432);
    v6 = *(v0 + 2424);
    v7 = *(v0 + 2416);
    v8 = *(v0 + 2408);
    v9 = *(v0 + 2344);
    v10 = *(v0 + 2248);

    v11 = *(v0 + 8);
LABEL_11:

    return v11();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 2504) = sub_10000A6F0(v12, qword_1005E0C30);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Monitoring CloudKit AccountState stream", v15, 2u);
  }

  v16 = *(v0 + 2488);
  v17 = *(v0 + 2480);
  v18 = *(v0 + 2472);
  v19 = *(v0 + 2104);

  v20 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  swift_beginAccess();
  sub_100005F04(v19 + v20, v18, &qword_1005B3728, &qword_1004D8410);
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    sub_100002CE0(*(v0 + 2472), &qword_1005B3728, &qword_1004D8410);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "cloudKitAccountStateStream should be available by now!", v23, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    v25 = *(v0 + 2496);
    v26 = *(v0 + 2472);
    v27 = *(v0 + 2464);
    v28 = *(v0 + 2440);
    v29 = *(v0 + 2432);
    v30 = *(v0 + 2424);
    v31 = *(v0 + 2416);
    v32 = *(v0 + 2408);
    v33 = *(v0 + 2344);
    v43 = *(v0 + 2248);

    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  v35 = *(v0 + 2464);
  (*(*(v0 + 2488) + 32))(*(v0 + 2496), *(v0 + 2472), *(v0 + 2480));
  AsyncStream.makeAsyncIterator()();
  v36 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  *(v0 + 2512) = v36;
  *(v0 + 2600) = enum case for CloudKitStorage.State.unknown(_:);
  *(v0 + 2604) = enum case for CloudKitStorage.State.unavailable(_:);
  *(v0 + 2608) = enum case for CloudKitStorage.State.noAccount(_:);
  *(v0 + 2612) = enum case for CloudKitStorage.State.loading(_:);
  *(v0 + 2616) = enum case for CloudKitStorage.State.rebuilding(_:);
  *(v0 + 2620) = enum case for CloudKitStorage.State.available(_:);
  *(v0 + 2624) = enum case for CloudKitStorage.State.apnsConnected(_:);
  *(v0 + 2520) = 0u;
  *(v0 + 2536) = 0u;
  *(v0 + 2552) = 0u;
  *(v0 + 2568) = 0;
  v37 = *(v0 + 2104);
  v38 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v39 = swift_task_alloc();
  *(v0 + 2576) = v39;
  *v39 = v0;
  v39[1] = sub_1003E4B3C;
  v40 = *(v0 + 2464);
  v41 = *(v0 + 2448);
  v42 = *(v0 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v42, v37, v36, v41);
}

uint64_t sub_1003E4B3C()
{
  v1 = *(*v0 + 2576);
  v2 = *(*v0 + 2104);
  v4 = *v0;

  return _swift_task_switch(sub_1003E4C4C, v2, 0);
}

uint64_t sub_1003E4C4C()
{
  v116 = v0;
  v1 = *(v0 + 2440);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2392);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 2568);
    v5 = *(v0 + 2560);
    v6 = *(v0 + 2552);
    v7 = *(v0 + 2544);
    v8 = *(v0 + 2536);
    v9 = *(v0 + 2528);
    v10 = *(v0 + 2496);
    v11 = *(v0 + 2488);
    v12 = *(v0 + 2480);
    (*(*(v0 + 2456) + 8))(*(v0 + 2464), *(v0 + 2448));
    (*(v11 + 8))(v10, v12);
    sub_100037FC8(v9);
    sub_100037FC8(v7);
    sub_100037FC8(v5);
    v13 = *(v0 + 2496);
    v14 = *(v0 + 2472);
    v15 = *(v0 + 2464);
    v16 = *(v0 + 2440);
    v17 = *(v0 + 2432);
    v18 = *(v0 + 2424);
    v19 = *(v0 + 2416);
    v20 = *(v0 + 2408);
    v21 = *(v0 + 2344);
    v22 = *(v0 + 2248);

    v23 = *(v0 + 8);
LABEL_5:

    return v23();
  }

  v24 = *(v0 + 2520);
  (*(v2 + 32))(*(v0 + 2432), v1, v3);
  static Task<>.checkCancellation()();
  *(v0 + 2584) = v24;
  if (v24)
  {
    v107 = *(v0 + 2560);
    v110 = *(v0 + 2568);
    v104 = *(v0 + 2544);
    v105 = *(v0 + 2552);
    v25 = *(v0 + 2536);
    v26 = *(v0 + 2528);
    v27 = *(v0 + 2496);
    v28 = *(v0 + 2488);
    v29 = *(v0 + 2480);
    v30 = *(v0 + 2464);
    v31 = *(v0 + 2456);
    v32 = *(v0 + 2448);
    (*(*(v0 + 2400) + 8))(*(v0 + 2432), *(v0 + 2392));
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    sub_100037FC8(v26);
    sub_100037FC8(v104);
    sub_100037FC8(v107);
    v33 = *(v0 + 2496);
    v34 = *(v0 + 2472);
    v35 = *(v0 + 2464);
    v36 = *(v0 + 2440);
    v37 = *(v0 + 2432);
    v38 = *(v0 + 2424);
    v39 = *(v0 + 2416);
    v40 = *(v0 + 2408);
    v41 = *(v0 + 2344);
    v111 = *(v0 + 2248);

    v23 = *(v0 + 8);
    goto LABEL_5;
  }

  v43 = *(v0 + 2504);
  v44 = *(*(v0 + 2400) + 16);
  v44(*(v0 + 2424), *(v0 + 2432), *(v0 + 2392));
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 2424);
  v49 = *(v0 + 2400);
  v50 = *(v0 + 2392);
  if (v47)
  {
    v51 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v115[0] = v108;
    *v51 = 136315138;
    sub_1003F50C4(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State);
    v106 = v46;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v44;
    v54 = v53;
    v55 = *(v49 + 8);
    v55(v48, v50);
    v56 = sub_10000D01C(v52, v54, v115);
    v44 = v112;

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v45, v106, "cloudKitAccountStateStream event: %s", v51, 0xCu);
    sub_100004984(v108);
  }

  else
  {

    v55 = *(v49 + 8);
    v55(v48, v50);
  }

  *(v0 + 2592) = v55;
  v57 = *(v0 + 2616);
  v58 = *(v0 + 2416);
  v59 = *(v0 + 2400);
  v60 = *(v0 + 2392);
  v113 = *(v0 + 2600);
  v44(v58, *(v0 + 2432), v60);
  v61 = (*(v59 + 88))(v58, v60);
  if ((vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v61), v113))) & 1) != 0 || v61 == v57)
  {
    goto LABEL_20;
  }

  if (v61 == *(v0 + 2620))
  {
    v62 = *(v0 + 2504);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "CK account is available", v65, 2u);
    }

    v114 = *(v0 + 2568);
    v66 = *(v0 + 2560);
    v67 = *(v0 + 2552);
    v68 = *(v0 + 2544);
    v69 = *(v0 + 2536);
    v70 = *(v0 + 2528);
    v71 = *(v0 + 2344);
    v72 = *(v0 + 2296);
    v73 = *(v0 + 2104);

    sub_100037FC8(v70);
    swift_asyncLet_begin();

    sub_100037FC8(v68);
    swift_asyncLet_begin();

    sub_100037FC8(v66);
    swift_asyncLet_begin();

    return _swift_asyncLet_get(v0 + 16, v74, sub_1003E55DC, v0 + 1936);
  }

  if (v61 == *(v0 + 2624))
  {
LABEL_20:
    v75 = *(v0 + 2504);
    v44(*(v0 + 2408), *(v0 + 2432), *(v0 + 2392));
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 2432);
    v80 = *(v0 + 2408);
    v81 = *(v0 + 2400);
    v82 = *(v0 + 2392);
    if (v78)
    {
      v109 = *(v0 + 2432);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v115[0] = v84;
      *v83 = 136315138;
      sub_1003F50C4(&qword_1005B3768, &type metadata accessor for CloudKitStorage.State);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v55(v80, v82);
      v88 = sub_10000D01C(v85, v87, v115);

      *(v83 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v76, v77, "Ignoring %s", v83, 0xCu);
      sub_100004984(v84);

      v55(v109, v82);
    }

    else
    {

      v55(v80, v82);
      v55(v79, v82);
    }
  }

  else
  {
    v89 = *(v0 + 2504);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unknown CloudKitStorage.State!", v92, 2u);
    }

    v93 = *(v0 + 2432);
    v94 = *(v0 + 2416);
    v95 = *(v0 + 2400);
    v96 = *(v0 + 2392);

    v55(v93, v96);
    v55(v94, v96);
  }

  *(v0 + 2520) = *(v0 + 2584);
  v97 = *(v0 + 2512);
  v98 = *(v0 + 2104);
  v99 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v100 = swift_task_alloc();
  *(v0 + 2576) = v100;
  *v100 = v0;
  v100[1] = sub_1003E4B3C;
  v101 = *(v0 + 2464);
  v102 = *(v0 + 2448);
  v103 = *(v0 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v103, v98, v97, v102);
}

uint64_t sub_1003E5634()
{
  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2248);
  v2 = *(v0 + 2200);
  v3 = *(v0 + 2152);
  v4 = sub_10000A6F0(v3, qword_1005B34C8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  ManagedDefault.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 2628);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    v7 = sub_1003E592C;
    v8 = v0 + 1296;
    v9 = v0 + 2112;
  }

  else
  {
    v10 = *(v0 + 2104);
    sub_100438FC0();
    v7 = sub_1003E5774;
    v8 = v0 + 1296;
    v9 = v0 + 2256;
  }

  return _swift_asyncLet_finish(v8, v5, v7, v9);
}

uint64_t sub_1003E5804()
{
  v1 = *(v0 + 2400) + 8;
  (*(v0 + 2592))(*(v0 + 2432), *(v0 + 2392));
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2584);
  *(v0 + 2568) = v2;
  *(v0 + 2560) = &unk_1004D85B8;
  *(v0 + 2552) = v2;
  *(v0 + 2544) = &unk_1004D85A8;
  *(v0 + 2536) = v2;
  *(v0 + 2528) = &unk_1004D8598;
  *(v0 + 2520) = v3;
  v4 = *(v0 + 2512);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 2576) = v6;
  *v6 = v0;
  v6[1] = sub_1003E4B3C;
  v7 = *(v0 + 2464);
  v8 = *(v0 + 2448);
  v9 = *(v0 + 2440);

  return AsyncStream.Iterator.next(isolation:)(v9, v2, v4, v8);
}

uint64_t sub_1003E59BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E5A4C();
}

uint64_t sub_1003E5A4C()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v1[17] = *(v4 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = type metadata accessor for HandleType();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v9 = type metadata accessor for Friend();
  v1[27] = v9;
  v10 = *(v9 - 8);
  v1[28] = v10;
  v1[29] = *(v10 + 64);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B3750, &qword_1004D84E8) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v13 = type metadata accessor for DataManager.State(0);
  v1[44] = v13;
  v14 = *(v13 - 8);
  v1[45] = v14;
  v15 = *(v14 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v17 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[51] = v17;
  v18 = *(v17 - 8);
  v1[52] = v18;
  v19 = *(v18 + 64) + 15;
  v1[53] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[54] = swift_task_alloc();
  v21 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[55] = v21;
  v22 = *(v21 - 8);
  v1[56] = v22;
  v23 = *(v22 + 64) + 15;
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_1003E5F44, v0, 0);
}

uint64_t sub_1003E5F44()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 456);
    v3 = *(v0 + 424);
    v2 = *(v0 + 432);
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v8 = *(v0 + 368);
    v9 = *(v0 + 336);
    v10 = *(v0 + 344);
    v46 = *(v0 + 328);
    v48 = *(v0 + 320);
    v50 = *(v0 + 312);
    v52 = *(v0 + 304);
    v54 = *(v0 + 296);
    v56 = *(v0 + 288);
    v58 = *(v0 + 280);
    v60 = *(v0 + 272);
    v62 = *(v0 + 264);
    v64 = *(v0 + 256);
    v66 = *(v0 + 248);
    v68 = *(v0 + 240);
    v70 = *(v0 + 208);
    v72 = *(v0 + 200);
    v74 = *(v0 + 192);
    v76 = *(v0 + 168);
    v78 = *(v0 + 160);
    v80 = *(v0 + 152);
    v82 = *(v0 + 144);
    v84 = *(v0 + 112);

    v11 = *(v0 + 8);
LABEL_11:

    return v11();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 464) = sub_10000A6F0(v12, qword_1005E0C30);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Monitoring DataManager stream", v15, 2u);
  }

  v16 = *(v0 + 440);
  v17 = *(v0 + 448);
  v18 = *(v0 + 432);
  v19 = *(v0 + 96);

  v20 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v19 + v20, v18, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100002CE0(*(v0 + 432), &qword_1005B0F00, &qword_1004D2F00);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "dataManagerStateStream should be available by now!", v23, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v24 = 7;
    swift_willThrow();
    v25 = *(v0 + 456);
    v27 = *(v0 + 424);
    v26 = *(v0 + 432);
    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    v31 = *(v0 + 376);
    v30 = *(v0 + 384);
    v32 = *(v0 + 368);
    v34 = *(v0 + 336);
    v33 = *(v0 + 344);
    v45 = *(v0 + 328);
    v47 = *(v0 + 320);
    v49 = *(v0 + 312);
    v51 = *(v0 + 304);
    v53 = *(v0 + 296);
    v55 = *(v0 + 288);
    v57 = *(v0 + 280);
    v59 = *(v0 + 272);
    v61 = *(v0 + 264);
    v63 = *(v0 + 256);
    v65 = *(v0 + 248);
    v67 = *(v0 + 240);
    v69 = *(v0 + 208);
    v71 = *(v0 + 200);
    v73 = *(v0 + 192);
    v75 = *(v0 + 168);
    v77 = *(v0 + 160);
    v79 = *(v0 + 152);
    v81 = *(v0 + 144);
    v83 = *(v0 + 112);

    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  v36 = *(v0 + 424);
  (*(*(v0 + 448) + 32))(*(v0 + 456), *(v0 + 432), *(v0 + 440));
  AsyncStream.makeAsyncIterator()();
  v37 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v38 = OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity;
  *(v0 + 472) = v37;
  *(v0 + 480) = v38;
  *(v0 + 600) = enum case for HandleType.follower(_:);
  *(v0 + 604) = enum case for HandleType.following(_:);
  *(v0 + 488) = 0;
  v39 = *(v0 + 96);
  v40 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v41 = swift_task_alloc();
  *(v0 + 496) = v41;
  *v41 = v0;
  v41[1] = sub_1003E6588;
  v42 = *(v0 + 424);
  v43 = *(v0 + 400);
  v44 = *(v0 + 408);

  return AsyncStream.Iterator.next(isolation:)(v43, v39, v37, v44);
}

uint64_t sub_1003E6588()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003E6698, v2, 0);
}

uint64_t sub_1003E6698()
{
  v305 = v0;
  v1 = *(v0 + 400);
  if ((*(*(v0 + 360) + 48))(v1, 1, *(v0 + 352)) == 1)
  {
    v3 = *(v0 + 448);
    v2 = *(v0 + 456);
    v4 = *(v0 + 440);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v3 + 8))(v2, v4);
    v5 = *(v0 + 456);
    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
    v9 = *(v0 + 392);
    v8 = *(v0 + 400);
    v11 = *(v0 + 376);
    v10 = *(v0 + 384);
    v12 = *(v0 + 368);
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    v229 = *(v0 + 328);
    v231 = *(v0 + 320);
    v233 = *(v0 + 312);
    v236 = *(v0 + 304);
    v239 = *(v0 + 296);
    v242 = *(v0 + 288);
    v244 = *(v0 + 280);
    v248 = *(v0 + 272);
    v252 = *(v0 + 264);
    v256 = *(v0 + 256);
    v259 = *(v0 + 248);
    v262 = *(v0 + 240);
    v266 = *(v0 + 208);
    v270 = *(v0 + 200);
    buf = *(v0 + 192);
    v277 = *(v0 + 168);
    v283 = *(v0 + 160);
    v289 = *(v0 + 152);
    v294 = *(v0 + 144);
    v299 = *(v0 + 112);

    v15 = *(v0 + 8);
LABEL_5:

    return v15();
  }

  v16 = *(v0 + 488);
  sub_1003F4D30(v1, *(v0 + 392), type metadata accessor for DataManager.State);
  static Task<>.checkCancellation()();
  *(v0 + 504) = v16;
  if (v16)
  {
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);
    v19 = *(v0 + 440);
    v21 = *(v0 + 416);
    v20 = *(v0 + 424);
    v22 = *(v0 + 408);
    sub_1003F4E48(*(v0 + 392), type metadata accessor for DataManager.State);
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v23 = *(v0 + 456);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);
    v27 = *(v0 + 392);
    v26 = *(v0 + 400);
    v28 = *(v0 + 376);
    v29 = *(v0 + 384);
    v30 = *(v0 + 368);
    v31 = *(v0 + 344);
    v228 = *(v0 + 336);
    v230 = *(v0 + 328);
    v232 = *(v0 + 320);
    v234 = *(v0 + 312);
    v237 = *(v0 + 304);
    v240 = *(v0 + 296);
    v243 = *(v0 + 288);
    v245 = *(v0 + 280);
    v249 = *(v0 + 272);
    v253 = *(v0 + 264);
    v257 = *(v0 + 256);
    v260 = *(v0 + 248);
    v263 = *(v0 + 240);
    v267 = *(v0 + 208);
    v271 = *(v0 + 200);
    bufa = *(v0 + 192);
    v278 = *(v0 + 168);
    v284 = *(v0 + 160);
    v290 = *(v0 + 152);
    v295 = *(v0 + 144);
    v300 = *(v0 + 112);

    v15 = *(v0 + 8);
    goto LABEL_5;
  }

  v33 = *(v0 + 464);
  sub_1003F4254(*(v0 + 392), *(v0 + 384), type metadata accessor for DataManager.State);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 384);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v304[0] = v39;
    *v38 = 136315138;
    v40 = sub_1001DA250(v39);
    v42 = v41;
    sub_1003F4E48(v37, type metadata accessor for DataManager.State);
    v43 = sub_10000D01C(v40, v42, v304);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "dataManagerStateStream event: %s", v38, 0xCu);
    sub_100004984(v39);
  }

  else
  {

    sub_1003F4E48(v37, type metadata accessor for DataManager.State);
  }

  v44 = *(v0 + 352);
  sub_1003F4254(*(v0 + 392), *(v0 + 376), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) < 4)
    {
      v67 = *(v0 + 464);
      sub_1003F4254(*(v0 + 392), *(v0 + 368), type metadata accessor for DataManager.State);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 392);
      v72 = *(v0 + 368);
      if (v70)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v304[0] = v74;
        *v73 = 136315138;
        v75 = sub_1001DA250(v74);
        v77 = v76;
        sub_1003F4E48(v72, type metadata accessor for DataManager.State);
        v78 = sub_10000D01C(v75, v77, v304);

        *(v73 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v68, v69, "Ignoring %s", v73, 0xCu);
        sub_100004984(v74);
      }

      else
      {

        sub_1003F4E48(v72, type metadata accessor for DataManager.State);
      }

      v79 = v71;
      goto LABEL_74;
    }

    v114 = *(v0 + 464);
    v115 = **(v0 + 376);
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v304[0] = v119;
      *v118 = 136315138;
      if (v115)
      {
        v120 = 0x64656C62616E65;
      }

      else
      {
        v120 = 0x64656C6261736964;
      }

      if (v115)
      {
        v121 = 0xE700000000000000;
      }

      else
      {
        v121 = 0xE800000000000000;
      }

      v122 = sub_10000D01C(v120, v121, v304);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "Sharing my location is %s", v118, 0xCu);
      sub_100004984(v119);
    }

    if (v115)
    {
      if (qword_1005A8548 != -1)
      {
        swift_once();
      }

      v123 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
      sub_10000A6F0(v123, qword_1005B34C8);
      *(v0 + 608) = 0;
      swift_beginAccess();
      ManagedDefault.wrappedValue.setter();
      swift_endAccess();
      v124 = swift_task_alloc();
      *(v0 + 584) = v124;
      *v124 = v0;
      v124[1] = sub_1003E8D88;
      v125 = *(v0 + 112);
      v126 = *(v0 + 96);

      return sub_100437A14(v125);
    }

    else
    {
      v144 = swift_task_alloc();
      *(v0 + 592) = v144;
      *v144 = v0;
      v144[1] = sub_1003E8FA4;
      v145 = *(v0 + 96);

      return sub_1004383C4();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v46 = *(v0 + 600);
        v48 = *(v0 + 200);
        v47 = *(v0 + 208);
        v49 = *(v0 + 176);
        v50 = *(v0 + 184);
        v51 = *(*(v0 + 224) + 32);
        v51(*(v0 + 296), *(v0 + 376), *(v0 + 216));
        Friend.type.getter();
        (*(v50 + 104))(v48, v46, v49);
        v52 = static HandleType.== infix(_:_:)();
        v53 = *(v50 + 8);
        v53(v48, v49);
        v53(v47, v49);
        if ((v52 & 1) == 0)
        {
          v127 = *(v0 + 392);
          (*(*(v0 + 224) + 8))(*(v0 + 296), *(v0 + 216));
LABEL_71:
          v79 = v127;
          goto LABEL_74;
        }

        v296 = v51;
        v54 = *(v0 + 464);
        v285 = *(*(v0 + 224) + 16);
        v285(*(v0 + 288), *(v0 + 296), *(v0 + 216));
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        v57 = os_log_type_enabled(v55, v56);
        v58 = *(v0 + 288);
        v60 = *(v0 + 216);
        v59 = *(v0 + 224);
        if (v57)
        {
          v61 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          v304[0] = v279;
          *v61 = 141558275;
          *(v61 + 4) = 1752392040;
          *(v61 + 12) = 2081;
          sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = v63;
          v65 = *(v59 + 8);
          v65(v58, v60);
          v66 = sub_10000D01C(v62, v64, v304);

          *(v61 + 14) = v66;
          _os_log_impl(&_mh_execute_header, v55, v56, "Added a follower: %{private,mask.hash}s", v61, 0x16u);
          sub_100004984(v279);
        }

        else
        {

          v65 = *(v59 + 8);
          v65(v58, v60);
        }

        *(v0 + 536) = v65;
        v154 = *(v0 + 296);
        v155 = *(v0 + 280);
        v156 = *(v0 + 224);
        v157 = *(v0 + 216);
        v264 = *(v0 + 272);
        v268 = *(v0 + 168);
        v159 = *(v0 + 96);
        v158 = *(v0 + 104);
        v160 = *(v0 + 232) + 7;
        v254 = v160;
        v258 = v154;
        bufb = *(v159 + 128);
        v280 = *(v0 + 480);
        type metadata accessor for WorkItemQueue.WorkItem();
        v285(v155, v154, v157);
        v161 = *(v156 + 80);
        v162 = (v161 + 24) & ~v161;
        v163 = swift_allocObject();
        *(v163 + 16) = v159;
        v296(v163 + v162, v155, v157);
        *(v163 + ((v162 + v160) & 0xFFFFFFFFFFFFFFF8)) = v158;
        v285(v264, v258, v157);
        v164 = (v161 + 16) & ~v161;
        v165 = swift_allocObject();
        v296(v165 + v164, v264, v157);
        *(v165 + ((v164 + v254) & 0xFFFFFFFFFFFFFFF8)) = v158;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        v166 = *(v159 + v280);
        *(v0 + 544) = v166;
        if (v166)
        {
          v167 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
          v302 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

          v168 = swift_task_alloc();
          *(v0 + 552) = v168;
          *v168 = v0;
          v168[1] = sub_1003E8868;
          v169 = *(v0 + 312);
LABEL_63:

          return v302(v169);
        }

        v200 = *(v0 + 536);
        v127 = *(v0 + 392);
        v201 = *(v0 + 312);
        v202 = *(v0 + 296);
      }

      else
      {
        v96 = *(v0 + 600);
        v98 = *(v0 + 184);
        v97 = *(v0 + 192);
        v99 = *(v0 + 176);
        (*(*(v0 + 224) + 32))(*(v0 + 264), *(v0 + 376), *(v0 + 216));
        Friend.type.getter();
        v100 = (*(v98 + 88))(v97, v99);
        if (v100 != v96)
        {
          v128 = *(v0 + 216);
          v129 = *(*(v0 + 224) + 16);
          v130 = *(v0 + 464);
          v131 = *(v0 + 264);
          if (v100 != *(v0 + 604))
          {
            v129(*(v0 + 240), v131, v128);
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.default.getter();
            v186 = os_log_type_enabled(v184, v185);
            v303 = *(v0 + 392);
            v187 = *(v0 + 264);
            v188 = *(v0 + 240);
            v189 = *(v0 + 216);
            v190 = *(v0 + 224);
            if (v186)
            {
              v191 = *(v0 + 208);
              v287 = *(v0 + 216);
              v193 = *(v0 + 176);
              v192 = *(v0 + 184);
              bufc = swift_slowAlloc();
              v298 = swift_slowAlloc();
              v304[0] = v298;
              *bufc = 136315138;
              v281 = v185;
              Friend.type.getter();
              sub_1003F50C4(&qword_1005A9198, &type metadata accessor for HandleType);
              v194 = dispatch thunk of CustomStringConvertible.description.getter();
              v293 = v187;
              v196 = v195;
              v197 = *(v192 + 8);
              v197(v191, v193);
              v198 = *(v190 + 8);
              v198(v188, v287);
              v199 = sub_10000D01C(v194, v196, v304);

              *(bufc + 4) = v199;
              _os_log_impl(&_mh_execute_header, v184, v281, "Ignoring removal of type: %s", bufc, 0xCu);
              sub_100004984(v298);

              v198(v293, v287);
              sub_1003F4E48(v303, type metadata accessor for DataManager.State);
            }

            else
            {
              v225 = *(v0 + 184);

              v226 = *(v190 + 8);
              v226(v188, v189);
              v226(v187, v189);
              sub_1003F4E48(v303, type metadata accessor for DataManager.State);
              v197 = *(v225 + 8);
            }

            v227 = *(v0 + 184) + 8;
            v197(*(v0 + 192), *(v0 + 176));
            goto LABEL_75;
          }

          v129(*(v0 + 248), v131, v128);
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();
          v134 = os_log_type_enabled(v132, v133);
          v135 = *(v0 + 248);
          v136 = *(v0 + 216);
          v137 = *(v0 + 224);
          if (v134)
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v304[0] = v139;
            *v138 = 141558275;
            *(v138 + 4) = 1752392040;
            *(v138 + 12) = 2081;
            sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
            v140 = dispatch thunk of CustomStringConvertible.description.getter();
            v142 = v141;
            v291 = *(v137 + 8);
            v291(v135, v136);
            v143 = sub_10000D01C(v140, v142, v304);

            *(v138 + 14) = v143;
            _os_log_impl(&_mh_execute_header, v132, v133, "Removed a following: %{private,mask.hash}s", v138, 0x16u);
            sub_100004984(v139);
          }

          else
          {

            v291 = *(v137 + 8);
            v291(v135, v136);
          }

          v288 = *(v0 + 392);
          v206 = *(v0 + 264);
          v207 = *(v0 + 224);
          v282 = *(v0 + 216);
          v208 = *(v0 + 160);
          v209 = *(v0 + 152);
          v210 = *(v0 + 128);
          v211 = *(v0 + 136);
          v212 = *(v0 + 120);
          v241 = v212;
          v213 = *(v0 + 96);
          v251 = *(v0 + 104);
          v255 = *(v0 + 144);
          Friend.handle.getter();
          v272 = *(v213 + 128);
          type metadata accessor for WorkItemQueue.WorkItem();
          v247 = *(v210 + 16);
          v247(v209, v208, v212);
          v238 = (*(v210 + 80) + 16) & ~*(v210 + 80);
          v214 = (v211 + v238 + 7) & 0xFFFFFFFFFFFFFFF8;
          v215 = (v214 + 15) & 0xFFFFFFFFFFFFFFF8;
          v216 = swift_allocObject();
          v235 = *(v210 + 32);
          v235(v216 + v238, v209, v241);
          *(v216 + v214) = 2;
          *(v216 + v215) = v213;
          *(v216 + ((v215 + 15) & 0xFFFFFFFFFFFFFFF8)) = v251;
          v247(v255, v208, v241);
          v217 = swift_allocObject();
          v235(v217 + v238, v255, v241);
          *(v217 + v214) = v251;

          UUID.init()();
          WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
          dispatch thunk of WorkItemQueue.enqueue(_:)();

          (*(v210 + 8))(v208, v241);
          v291(v206, v282);
          v79 = v288;
LABEL_74:
          sub_1003F4E48(v79, type metadata accessor for DataManager.State);
LABEL_75:
          *(v0 + 488) = *(v0 + 504);
          v218 = *(v0 + 472);
          v219 = *(v0 + 96);
          v220 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
          v221 = swift_task_alloc();
          *(v0 + 496) = v221;
          *v221 = v0;
          v221[1] = sub_1003E6588;
          v222 = *(v0 + 424);
          v223 = *(v0 + 400);
          v224 = *(v0 + 408);

          return AsyncStream.Iterator.next(isolation:)(v223, v219, v218, v224);
        }

        v101 = *(v0 + 464);
        (*(*(v0 + 224) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 216));
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        v104 = os_log_type_enabled(v102, v103);
        v105 = *(v0 + 256);
        v106 = *(v0 + 216);
        v107 = *(v0 + 224);
        if (v104)
        {
          v108 = swift_slowAlloc();
          v301 = swift_slowAlloc();
          v304[0] = v301;
          *v108 = 141558275;
          *(v108 + 4) = 1752392040;
          *(v108 + 12) = 2081;
          sub_1003F50C4(&qword_1005AA720, &type metadata accessor for Friend);
          v109 = dispatch thunk of CustomStringConvertible.description.getter();
          v111 = v110;
          v112 = *(v107 + 8);
          v112(v105, v106);
          v113 = sub_10000D01C(v109, v111, v304);

          *(v108 + 14) = v113;
          _os_log_impl(&_mh_execute_header, v102, v103, "Removed a follower: %{private,mask.hash}s", v108, 0x16u);
          sub_100004984(v301);
        }

        else
        {

          v112 = *(v107 + 8);
          v112(v105, v106);
        }

        *(v0 + 560) = v112;
        v292 = *(v0 + 480);
        v170 = *(v0 + 264);
        v171 = *(v0 + 160);
        v172 = *(v0 + 152);
        v173 = *(v0 + 128);
        v174 = *(v0 + 136);
        v175 = *(v0 + 120);
        v176 = *(v0 + 96);
        v265 = *(v0 + 104);
        v269 = *(v0 + 144);
        v297 = v176;
        Friend.handle.getter();
        v286 = *(v176 + 128);
        type metadata accessor for WorkItemQueue.WorkItem();
        v261 = *(v173 + 16);
        v261(v172, v171, v175);
        v250 = (*(v173 + 80) + 16) & ~*(v173 + 80);
        v177 = (v174 + v250 + 7) & 0xFFFFFFFFFFFFFFF8;
        v178 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
        v179 = swift_allocObject();
        v246 = *(v173 + 32);
        v246(v179 + v250, v172, v175);
        *(v179 + v177) = 1;
        *(v179 + v178) = v297;
        *(v179 + ((v178 + 15) & 0xFFFFFFFFFFFFFFF8)) = v265;
        v261(v269, v171, v175);
        v180 = swift_allocObject();
        v246(v180 + v250, v269, v175);
        *(v180 + v177) = v265;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        (*(v173 + 8))(v171, v175);
        v181 = *(v297 + v292);
        *(v0 + 568) = v181;
        if (v181)
        {
          v182 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
          v302 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

          v183 = swift_task_alloc();
          *(v0 + 576) = v183;
          *v183 = v0;
          v183[1] = sub_1003E8AF8;
          v169 = *(v0 + 304);
          goto LABEL_63;
        }

        v200 = *(v0 + 560);
        v127 = *(v0 + 392);
        v201 = *(v0 + 304);
        v202 = *(v0 + 264);
      }

      v203 = *(v0 + 216);
      v204 = *(v0 + 224) + 8;
      v205 = type metadata accessor for XPCActivity.State();
      (*(*(v205 - 8) + 56))(v201, 1, 1, v205);
      sub_100002CE0(v201, &qword_1005B3750, &qword_1004D84E8);
      v200(v202, v203);
      goto LABEL_71;
    }

    v80 = *(v0 + 464);
    v82 = *(v0 + 336);
    v81 = *(v0 + 344);
    sub_1000176A8(*(v0 + 376), v81, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v81, v82, &qword_1005AA718, &qword_1004C4370);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 336);
    if (v85)
    {
      v87 = *(v0 + 328);
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *(v0 + 88) = v89;
      *v88 = 136315138;
      sub_100005F04(v86, v87, &qword_1005AA718, &qword_1004C4370);
      v90 = type metadata accessor for Device();
      v91 = *(v90 - 8);
      v92 = (*(v91 + 48))(v87, 1, v90);
      v93 = *(v0 + 328);
      if (v92 == 1)
      {
        sub_100002CE0(*(v0 + 328), &qword_1005AA718, &qword_1004C4370);
        v94 = 0xE300000000000000;
        v95 = 7104878;
      }

      else
      {
        v146 = *(v0 + 328);
        v95 = Device.description.getter();
        v94 = v147;
        (*(v91 + 8))(v93, v90);
      }

      sub_100002CE0(*(v0 + 336), &qword_1005AA718, &qword_1004C4370);
      v148 = sub_10000D01C(v95, v94, (v0 + 88));

      *(v88 + 4) = v148;
      _os_log_impl(&_mh_execute_header, v83, v84, "Me Device change: %s", v88, 0xCu);
      sub_100004984(v89);
    }

    else
    {

      sub_100002CE0(v86, &qword_1005AA718, &qword_1004C4370);
    }

    if (qword_1005A8548 != -1)
    {
      swift_once();
    }

    v149 = *(v0 + 96);
    v150 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
    sub_10000A6F0(v150, qword_1005B34C8);
    *(v0 + 609) = 0;
    swift_beginAccess();
    ManagedDefault.wrappedValue.setter();
    swift_endAccess();
    sub_100438FC0();
    v151 = swift_task_alloc();
    *(v0 + 512) = v151;
    *v151 = v0;
    v151[1] = sub_1003E82E0;
    v152 = *(v0 + 344);
    v153 = *(v0 + 96);

    return sub_1003ED788(v152);
  }
}

uint64_t sub_1003E82E0()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003E83F0, v2, 0);
}

uint64_t sub_1003E83F0()
{
  v1 = *(v0[12] + v0[60]);
  v0[65] = v1;
  if (v1)
  {
    v2 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v17 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v3 = swift_task_alloc();
    v0[66] = v3;
    *v3 = v0;
    v3[1] = sub_1003E85E8;
    v4 = v0[40];

    return v17(v4);
  }

  else
  {
    v6 = v0[49];
    v7 = v0[43];
    v8 = v0[40];
    v9 = type metadata accessor for XPCActivity.State();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_100002CE0(v8, &qword_1005B3750, &qword_1004D84E8);
    sub_100002CE0(v7, &qword_1005AA718, &qword_1004C4370);
    sub_1003F4E48(v6, type metadata accessor for DataManager.State);
    v0[61] = v0[63];
    v10 = v0[59];
    v11 = v0[12];
    v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v13 = swift_task_alloc();
    v0[62] = v13;
    *v13 = v0;
    v13[1] = sub_1003E6588;
    v14 = v0[53];
    v15 = v0[50];
    v16 = v0[51];

    return AsyncStream.Iterator.next(isolation:)(v15, v11, v10, v16);
  }
}

uint64_t sub_1003E85E8()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1003E8714, v3, 0);
}

uint64_t sub_1003E8714()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[40];
  v4 = type metadata accessor for XPCActivity.State();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  sub_100002CE0(v2, &qword_1005AA718, &qword_1004C4370);
  sub_1003F4E48(v1, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v5 = v0[59];
  v6 = v0[12];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_1003E6588;
  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v10, v6, v5, v11);
}

uint64_t sub_1003E8868()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1003E8994, v3, 0);
}

uint64_t sub_1003E8994()
{
  v1 = v0[67];
  v2 = v0[49];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[27];
  v6 = v0[28] + 8;
  v7 = type metadata accessor for XPCActivity.State();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  v1(v4, v5);
  sub_1003F4E48(v2, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v8 = v0[59];
  v9 = v0[12];
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[62] = v11;
  *v11 = v0;
  v11[1] = sub_1003E6588;
  v12 = v0[53];
  v13 = v0[50];
  v14 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v13, v9, v8, v14);
}

uint64_t sub_1003E8AF8()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_1003E8C24, v3, 0);
}

uint64_t sub_1003E8C24()
{
  v1 = v0[70];
  v2 = v0[49];
  v3 = v0[38];
  v4 = v0[33];
  v5 = v0[27];
  v6 = v0[28] + 8;
  v7 = type metadata accessor for XPCActivity.State();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  sub_100002CE0(v3, &qword_1005B3750, &qword_1004D84E8);
  v1(v4, v5);
  sub_1003F4E48(v2, type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v8 = v0[59];
  v9 = v0[12];
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[62] = v11;
  *v11 = v0;
  v11[1] = sub_1003E6588;
  v12 = v0[53];
  v13 = v0[50];
  v14 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v13, v9, v8, v14);
}

uint64_t sub_1003E8D88()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 96);
  v5 = *v0;

  sub_100002CE0(v2, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003E8EC4, v3, 0);
}

uint64_t sub_1003E8EC4()
{
  v1 = v0[12];
  sub_100438FC0();
  sub_1003F4E48(v0[49], type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v2 = v0[59];
  v3 = v0[12];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[62] = v5;
  *v5 = v0;
  v5[1] = sub_1003E6588;
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_1003E8FA4()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1003E90B4, v2, 0);
}

uint64_t sub_1003E90B4()
{
  sub_1003F4E48(v0[49], type metadata accessor for DataManager.State);
  v0[61] = v0[63];
  v1 = v0[59];
  v2 = v0[12];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_1003E6588;
  v5 = v0[53];
  v6 = v0[50];
  v7 = v0[51];

  return AsyncStream.Iterator.next(isolation:)(v6, v2, v1, v7);
}

uint64_t sub_1003E918C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003E921C();
}

uint64_t sub_1003E921C()
{
  v1[13] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B3748, &qword_1004D84D8);
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B3720, &qword_1004D8408) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v9 = *(v8 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003E93C0, v0, 0);
}

uint64_t sub_1003E93C0()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = v0[21];
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[14];

    v5 = v0[1];
LABEL_11:

    return v5();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[22] = sub_10000A6F0(v6, qword_1005E0C30);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Monitoring LocationServicesToggle stream", v9, 2u);
  }

  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  v13 = v0[13];

  v14 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  swift_beginAccess();
  sub_100005F04(v13 + v14, v12, &qword_1005B3720, &qword_1004D8408);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_100002CE0(v0[18], &qword_1005B3720, &qword_1004D8408);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "locationServicesToggleStream should be available by now!", v17, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = v0[21];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[14];

    v5 = v0[1];
    goto LABEL_11;
  }

  v24 = v0[17];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  AsyncStream.makeAsyncIterator()();
  v25 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v0[23] = v25;
  v0[24] = 0;
  v26 = v0[13];
  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_1003E9768;
  v29 = v0[17];
  v30 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 29, v26, v25, v30);
}

uint64_t sub_1003E9768()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1003E9878, v2, 0);
}

uint64_t sub_1003E9F94()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  sub_100002CE0(v2, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EA0D0, v3, 0);
}

uint64_t sub_1003EA0D0()
{
  v1 = v0[13];
  sub_100438FC0();
  v0[24] = v0[26];
  v2 = v0[23];
  v3 = v0[13];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1003E9768;
  v6 = v0[17];
  v7 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 29, v3, v2, v7);
}

uint64_t sub_1003EA198()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *v0;

  v1[24] = v1[26];
  v4 = v1[23];
  v5 = v1[13];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[25] = v7;
  *v7 = v3;
  v7[1] = sub_1003E9768;
  v8 = v1[17];
  v9 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v5, v4, v9);
}

uint64_t sub_1003EA348()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EA3D8();
}

uint64_t sub_1003EA3D8()
{
  v1[13] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005B3740, &qword_1004D84C8);
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B3710, &qword_1004D83F8) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v9 = *(v8 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1003EA57C, v0, 0);
}

uint64_t sub_1003EA57C()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = v0[21];
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[14];

    v5 = v0[1];
LABEL_11:

    return v5();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[22] = sub_10000A6F0(v6, qword_1005E0C30);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Monitoring AppDeletionService stream", v9, 2u);
  }

  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  v13 = v0[13];

  v14 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  swift_beginAccess();
  sub_100005F04(v13 + v14, v12, &qword_1005B3710, &qword_1004D83F8);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_100002CE0(v0[18], &qword_1005B3710, &qword_1004D83F8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "appDeletionStream should be available by now!", v17, 2u);
    }

    sub_1003DA6A0();
    swift_allocError();
    *v18 = 9;
    swift_willThrow();
    v19 = v0[21];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[14];

    v5 = v0[1];
    goto LABEL_11;
  }

  v24 = v0[17];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  AsyncStream.makeAsyncIterator()();
  v25 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v0[23] = v25;
  v0[24] = 0;
  v26 = v0[13];
  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_1003EA924;
  v29 = v0[17];
  v30 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 29, v26, v25, v30);
}

uint64_t sub_1003EA924()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1003EAA34, v2, 0);
}

uint64_t sub_1003EB13C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  sub_100002CE0(v2, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EB278, v3, 0);
}

uint64_t sub_1003EB278()
{
  v1 = v0[13];
  sub_100438FC0();
  v0[24] = v0[26];
  v2 = v0[23];
  v3 = v0[13];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1003EA924;
  v6 = v0[17];
  v7 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 29, v3, v2, v7);
}

uint64_t sub_1003EB340()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *v0;

  v1[24] = v1[26];
  v4 = v1[23];
  v5 = v1[13];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[25] = v7;
  *v7 = v3;
  v7[1] = sub_1003EA924;
  v8 = v1[17];
  v9 = v1[15];

  return AsyncStream.Iterator.next(isolation:)(v1 + 29, v5, v4, v9);
}

uint64_t sub_1003EB4F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_10044D004();
}

uint64_t sub_1003EB580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003EB610();
}

uint64_t sub_1003EB610()
{
  v1[275] = v0;
  v2 = sub_10004B564(&qword_1005B1C88, &qword_1004D5E68);
  v1[281] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[287] = swift_task_alloc();
  v4 = type metadata accessor for Account();
  v1[288] = v4;
  v5 = *(v4 - 8);
  v1[289] = v5;
  v6 = *(v5 + 64) + 15;
  v1[290] = swift_task_alloc();
  v7 = type metadata accessor for AccountService.State(0);
  v1[291] = v7;
  v8 = *(v7 - 8);
  v1[292] = v8;
  v9 = *(v8 + 64) + 15;
  v1[293] = swift_task_alloc();
  v1[294] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v1[296] = swift_task_alloc();
  v1[297] = swift_task_alloc();
  v1[298] = swift_task_alloc();
  v1[299] = swift_task_alloc();
  v1[300] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0) - 8) + 64) + 15;
  v1[301] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[302] = v11;
  v12 = *(v11 - 8);
  v1[303] = v12;
  v13 = *(v12 + 64) + 15;
  v1[304] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005B02F8, &qword_1004D1870) - 8) + 64) + 15;
  v1[305] = swift_task_alloc();
  v15 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v1[306] = v15;
  v16 = *(v15 - 8);
  v1[307] = v16;
  v17 = *(v16 + 64) + 15;
  v1[308] = swift_task_alloc();

  return _swift_task_switch(sub_1003EB8FC, v0, 0);
}

uint64_t sub_1003EB8FC()
{
  if (static SystemInfo.underTest.getter())
  {
LABEL_10:
    v13 = v0[308];
    v14 = v0[305];
    v15 = v0[304];
    v16 = v0[301];
    v17 = v0[300];
    v18 = v0[299];
    v19 = v0[298];
    v20 = v0[297];
    v21 = v0[296];
    v22 = v0[295];
    v33 = v0[294];
    v34 = v0[293];
    v35 = v0[290];
    v36 = v0[287];

    v23 = v0[1];

    return v23();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[309] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Monitoring AccountState stream", v4, 2u);
  }

  v5 = v0[307];
  v6 = v0[306];
  v7 = v0[305];
  v8 = v0[275];

  v9 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  swift_beginAccess();
  sub_100005F04(v8 + v9, v7, &qword_1005B02F8, &qword_1004D1870);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_100002CE0(v0[305], &qword_1005B02F8, &qword_1004D1870);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "accountStateStream should be available by now!", v12, 2u);
    }

    goto LABEL_10;
  }

  v25 = v0[304];
  (*(v0[307] + 32))(v0[308], v0[305], v0[306]);
  AsyncStream.makeAsyncIterator()();
  v26 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v0[310] = v26;
  v0[311] = 0;
  v27 = v0[275];
  v28 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v29 = swift_task_alloc();
  v0[312] = v29;
  *v29 = v0;
  v29[1] = sub_1003EBCE0;
  v30 = v0[304];
  v31 = v0[302];
  v32 = v0[301];

  return AsyncStream.Iterator.next(isolation:)(v32, v27, v26, v31);
}

uint64_t sub_1003EBCE0()
{
  v1 = *(*v0 + 2496);
  v2 = *(*v0 + 2200);
  v4 = *v0;

  return _swift_task_switch(sub_1003EBDF0, v2, 0);
}

uint64_t sub_1003EBDF0()
{
  v1 = v0[301];
  if ((*(v0[292] + 48))(v1, 1, v0[291]) == 1)
  {
    v2 = v0[308];
    v3 = v0[307];
    v4 = v0[306];
    (*(v0[303] + 8))(v0[304], v0[302]);
    (*(v3 + 8))(v2, v4);
    v5 = v0[308];
    v6 = v0[305];
    v7 = v0[304];
    v8 = v0[301];
    v9 = v0[300];
    v10 = v0[299];
    v11 = v0[298];
    v12 = v0[297];
    v13 = v0[296];
    v14 = v0[295];
    v89 = v0[294];
    v91 = v0[293];
    v93 = v0[290];
    v96 = v0[287];

    v15 = v0[1];
LABEL_5:

    return v15();
  }

  v16 = v0[311];
  sub_1003F4D30(v1, v0[300], type metadata accessor for AccountService.State);
  static Task<>.checkCancellation()();
  v0[313] = v16;
  if (v16)
  {
    v17 = v0[308];
    v18 = v0[307];
    v19 = v0[306];
    v20 = v0[305];
    v21 = v0[304];
    v22 = v0[303];
    v23 = v0[302];
    v83 = v0[301];
    v84 = v0[299];
    v85 = v0[298];
    v86 = v0[297];
    v87 = v0[296];
    v88 = v0[295];
    v90 = v0[294];
    v92 = v0[293];
    v94 = v0[290];
    v97 = v0[287];
    sub_1003F4E48(v0[300], type metadata accessor for AccountService.State);
    (*(v22 + 8))(v21, v23);
    (*(v18 + 8))(v17, v19);

    v15 = v0[1];
    goto LABEL_5;
  }

  v25 = v0[309];
  sub_1003F4254(v0[300], v0[299], type metadata accessor for AccountService.State);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[299];
  if (v28)
  {
    v30 = v0[298];
    v31 = v0[297];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v0[269] = v33;
    *v32 = 136315138;
    sub_1003F4254(v29, v30, type metadata accessor for AccountService.State);
    sub_1003F4254(v30, v31, type metadata accessor for AccountService.State);
    v34 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
    v35 = (*(*(v34 - 8) + 48))(v31, 3, v34);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v42 = 0x6C696176616E752ELL;
      }

      else
      {
        v42 = 0x756F6363416F6E2ELL;
      }

      if (v35 == 2)
      {
        v43 = 0xEC000000656C6261;
      }

      else
      {
        v43 = 0xEA0000000000746ELL;
      }
    }

    else if (v35)
    {
      v42 = 0x6E776F6E6B6E752ELL;
      v43 = 0xE800000000000000;
    }

    else
    {
      v36 = v0[290];
      v37 = v0[289];
      v38 = v0[288];
      (*(v37 + 32))(v36, v0[297], v38);
      v0[261] = 0;
      v0[262] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      v39 = v0[262];
      v0[259] = v0[261];
      v0[260] = v39;
      v40._object = 0x80000001004E5490;
      v40._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v40);
      _print_unlocked<A, B>(_:_:)();
      v41._countAndFlagsBits = 41;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      v42 = v0[259];
      v43 = v0[260];
      (*(v37 + 8))(v36, v38);
    }

    v44 = v0[299];
    sub_1003F4E48(v0[298], type metadata accessor for AccountService.State);
    sub_1003F4E48(v44, type metadata accessor for AccountService.State);
    v45 = sub_10000D01C(v42, v43, v0 + 269);

    *(v32 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v26, v27, "accountStateStream event: %s", v32, 0xCu);
    sub_100004984(v33);
  }

  else
  {

    sub_1003F4E48(v29, type metadata accessor for AccountService.State);
  }

  v46 = v0[296];
  sub_1003F4254(v0[300], v46, type metadata accessor for AccountService.State);
  v47 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
  v48 = *(*(v47 - 8) + 48);
  v49 = v48(v46, 3, v47);
  if ((v49 - 1) < 2)
  {
    goto LABEL_24;
  }

  if (!v49)
  {
    (*(v0[289] + 8))(v0[296], v0[288]);
LABEL_24:
    v50 = v0[309];
    sub_1003F4254(v0[300], v0[295], type metadata accessor for AccountService.State);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v98 = v52;
      v53 = v0[295];
      v54 = v0[294];
      v55 = v0[293];
      v56 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v0[263] = v95;
      *v56 = 136315138;
      sub_1003F4254(v53, v54, type metadata accessor for AccountService.State);
      sub_1003F4254(v54, v55, type metadata accessor for AccountService.State);
      v57 = v48(v55, 3, v47);
      if (v57 > 1)
      {
        if (v57 == 2)
        {
          v64 = 0x6C696176616E752ELL;
        }

        else
        {
          v64 = 0x756F6363416F6E2ELL;
        }

        if (v57 == 2)
        {
          v65 = 0xEC000000656C6261;
        }

        else
        {
          v65 = 0xEA0000000000746ELL;
        }
      }

      else if (v57)
      {
        v64 = 0x6E776F6E6B6E752ELL;
        v65 = 0xE800000000000000;
      }

      else
      {
        v58 = v0[290];
        v59 = v0[289];
        v60 = v0[288];
        (*(v59 + 32))(v58, v0[293], v60);
        v0[257] = 0;
        v0[258] = 0xE000000000000000;
        _StringGuts.grow(_:)(23);
        v61 = v0[258];
        v0[255] = v0[257];
        v0[256] = v61;
        v62._object = 0x80000001004E5490;
        v62._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v62);
        _print_unlocked<A, B>(_:_:)();
        v63._countAndFlagsBits = 41;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        v64 = v0[255];
        v65 = v0[256];
        (*(v59 + 8))(v58, v60);
      }

      v73 = v0[300];
      v74 = v0[295];
      sub_1003F4E48(v0[294], type metadata accessor for AccountService.State);
      sub_1003F4E48(v74, type metadata accessor for AccountService.State);
      v75 = sub_10000D01C(v64, v65, v0 + 263);

      *(v56 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v51, v98, "Ignoring %s", v56, 0xCu);
      sub_100004984(v95);

      v68 = v73;
    }

    else
    {
      v66 = v0[300];
      v67 = v0[295];

      sub_1003F4E48(v67, type metadata accessor for AccountService.State);
      v68 = v66;
    }

    sub_1003F4E48(v68, type metadata accessor for AccountService.State);
    v0[311] = v0[313];
    v76 = v0[310];
    v77 = v0[275];
    v78 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v79 = swift_task_alloc();
    v0[312] = v79;
    *v79 = v0;
    v79[1] = sub_1003EBCE0;
    v80 = v0[304];
    v81 = v0[302];
    v82 = v0[301];

    return AsyncStream.Iterator.next(isolation:)(v82, v77, v76, v81);
  }

  v69 = v0[287];
  v70 = v0[281];
  v71 = v0[275];
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v72 = v0[287];

  return _swift_asyncLet_get(v0 + 2, v72, sub_1003EC8C4, v0 + 242);
}

uint64_t sub_1003EC9A8()
{
  sub_1003F4E48(v0[300], type metadata accessor for AccountService.State);
  v0[311] = v0[313];
  v1 = v0[310];
  v2 = v0[275];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[312] = v4;
  *v4 = v0;
  v4[1] = sub_1003EBCE0;
  v5 = v0[304];
  v6 = v0[302];
  v7 = v0[301];

  return AsyncStream.Iterator.next(isolation:)(v7, v2, v1, v6);
}

uint64_t sub_1003ECAA0()
{
  v10 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E9BE0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (qword_1005A8548 != -1)
  {
    swift_once();
  }

  v6 = sub_10004B564(&qword_1005AFFF0, &qword_1004D1520);
  sub_10000A6F0(v6, qword_1005B34C8);
  *(v0 + 40) = 0;
  swift_beginAccess();
  ManagedDefault.wrappedValue.setter();
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1003ECC9C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream, &qword_1005B02F8, &qword_1004D1870);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream, &qword_1005B3728, &qword_1004D8410);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream, &qword_1005B3720, &qword_1004D8408);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream, &qword_1005B3710, &qword_1004D83F8);
  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NITokenService()
{
  result = qword_1005B3548;
  if (!qword_1005B3548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ECDE0()
{
  sub_1001AE28C(319, &qword_1005AFB10, &unk_1005AFB18, &qword_1004D12E8);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1001AE28C(319, &qword_1005B3558, &qword_1005B3560, &qword_1004D82E8);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1001AE28C(319, &qword_1005B0D40, &qword_1005AA710, &qword_1004D2BA0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1001AE28C(319, &qword_1005B3568, &qword_1005B3570, &qword_1004D82F0);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1001AE28C(319, &qword_1005B3578, &unk_1005B3580, &qword_1004D82F8);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1003ED000()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  swift_defaultActor_initialize();
  strcpy((v0 + 112), "NITokenService");
  *(v0 + 127) = -18;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  *(v0 + 128) = WorkItemQueue.__allocating_init(identifier:)();
  v4 = OBJC_IVAR____TtC13findmylocated14NITokenService_accountStateStream;
  v5 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13findmylocated14NITokenService_cloudKitAccountStateStream;
  v7 = sub_10004B564(&qword_1005B3560, &qword_1004D82E8);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC13findmylocated14NITokenService_dataManagerStateStream;
  v9 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC13findmylocated14NITokenService_locationServicesToggleStream;
  v11 = sub_10004B564(&qword_1005B3570, &qword_1004D82F0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC13findmylocated14NITokenService_appDeletionStream;
  v13 = sub_10004B564(&unk_1005B3580, &qword_1004D82F8);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC13findmylocated14NITokenService_tokenRequestActivity) = 0;
  return v1;
}

uint64_t sub_1003ED274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003ECA84();
}

uint64_t sub_1003ED300(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for NITokenService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1003ED3AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1003DFF9C();
}

uint64_t sub_1003ED438()
{
  v1 = *v0;
  type metadata accessor for NITokenService();
  sub_1003F50C4(&qword_1005AD548, type metadata accessor for NITokenService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1003ED534(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003788;

  return sub_100437A14(a1);
}

uint64_t sub_1003ED5D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1004383C4();
}

uint64_t sub_1003ED67C()
{
  v1 = *(v0 + 16);
  sub_100440F28(86400.0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003ED6EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003784;

  return sub_100437A14(a1);
}

uint64_t sub_1003ED788(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_10004B564(&qword_1005B1C88, &qword_1004D5E68) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003ED890, v1, 0);
}

uint64_t sub_1003ED890()
{
  v23 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v3, qword_1005E0C30);
  sub_100005F04(v2, v1, &qword_1005AA718, &qword_1004C4370);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v22);
    *(v9 + 12) = 2080;
    sub_100005F04(v7, v8, &qword_1005AA718, &qword_1004C4370);
    v10 = type metadata accessor for Device();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v8, 1, v10);
    v13 = v0[6];
    if (v12 == 1)
    {
      sub_100002CE0(v0[6], &qword_1005AA718, &qword_1004C4370);
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v16 = v0[6];
      v14 = Device.description.getter();
      v15 = v17;
      (*(v11 + 8))(v13, v10);
    }

    sub_100002CE0(v0[7], &qword_1005AA718, &qword_1004C4370);
    v18 = sub_10000D01C(v14, v15, &v22);

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s meDevice: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100002CE0(v7, &qword_1005AA718, &qword_1004C4370);
  }

  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_1003EDBB8;
  v20 = v0[3];

  return sub_100405674();
}

uint64_t sub_1003EDBB8(char a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    v6 = v5[3];

    return _swift_task_switch(sub_1003EEC44, v6, 0);
  }

  else if (a1)
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v5[11] = v8;
    *v8 = v5;
    v8[1] = sub_1003EDD88;

    return daemon.getter();
  }

  else
  {
    v10 = v5[6];
    v9 = v5[7];
    v11 = v5[5];

    v12 = v5[1];

    return v12();
  }
}

uint64_t sub_1003EDD88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  v3[12] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  v7 = type metadata accessor for Daemon();
  v3[14] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1003F50C4(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[15] = v9;
  v10 = sub_1003F50C4(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003EDF68;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003EDF68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v10 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1003EEE1C;
  }

  else
  {
    v7 = v3[12];
    v8 = v3[3];

    v6 = sub_1003EE090;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003EE090()
{
  v1 = v0[8];
  v2 = sub_1003F399C();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Eligible to generate token and is finding capable. Checking if we need to generate tokens.", v6, 2u);
    }

    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_1003EE82C;
    v8 = v0[5];
    v9 = v0[3];

    return sub_100437A14(v8);
  }

  else
  {
    if (v5)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Eligible to generate token, but not finding capable. Revoking all tokens.", v11, 2u);
    }

    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_1003EE268;

    return daemon.getter();
  }
}

uint64_t sub_1003EE268(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;
  v3[19] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[20] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1003F50C4(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1003EE41C;
  v10 = v3[15];
  v11 = v3[14];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1003EE41C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1003EEFFC;
  }

  else
  {
    v7 = v3[19];
    v8 = v3[3];

    v6 = sub_1003EE544;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003EE544()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[3];
  v4 = v0[4];
  sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v5 = swift_task_alloc();
  v0[23] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  v5[5] = v4;
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1003EE67C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1003EE67C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1003EF1E8;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 24);

    v5 = sub_1003EE7A4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003EE7A4()
{
  v1 = v0[21];
  v2 = v0[16];

  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003EE82C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v5 = *v0;

  sub_100002CE0(v2, &qword_1005B1C88, &qword_1004D5E68);

  return _swift_task_switch(sub_1003EE968, v3, 0);
}

uint64_t sub_1003EE968()
{
  v1 = v0[16];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_1003F50C4(&qword_1005B3700, type metadata accessor for NITokenService);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_1003EEA9C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v7, &type metadata for () + 8, &type metadata for () + 8, v2, v4, &unk_1004D8540, v5, &type metadata for () + 8);
}

uint64_t sub_1003EEA9C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1003EEBC8, v3, 0);
}

uint64_t sub_1003EEBC8()
{
  v1 = v0[16];

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003EEC44()
{
  v15 = v0;
  v1 = v0[10];
  v2 = v0[8];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v14);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003EEE1C()
{
  v16 = v0;
  v1 = v0[12];

  v2 = v0[17];
  v3 = v0[8];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v15);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003EEFFC()
{
  v17 = v0;
  v1 = v0[19];
  v2 = v0[16];

  v3 = v0[22];
  v4 = v0[8];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s error %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003EF1E8()
{
  v18 = v0;
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[16];

  v4 = v0[25];
  v5 = v0[8];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E9C70, &v17);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s error %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
  }

  else
  {
  }

  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003EF3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = *(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8);
  v6[16] = v9;
  v6[17] = *(v9 + 64);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v11 = type metadata accessor for FriendSharedSecretsRecord();
  v6[21] = v11;
  v12 = *(v11 - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v15 = type metadata accessor for Handle();
  v6[25] = v15;
  v16 = *(v15 - 8);
  v6[26] = v16;
  v17 = *(v16 + 64) + 15;
  v6[27] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v6[28] = v18;
  v19 = *(v18 - 8);
  v6[29] = v19;
  v6[30] = *(v19 + 64);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v20 = type metadata accessor for Friend();
  v6[33] = v20;
  v21 = *(v20 - 8);
  v6[34] = v21;
  v6[35] = *(v21 + 64);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return _swift_task_switch(sub_1003EF738, a3, 0);
}