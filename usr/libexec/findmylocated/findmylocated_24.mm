uint64_t sub_100255C44()
{
  v52 = v0;
  v0[2] = v0[18];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v1 = v0[3];
    v0[5] = v1;
    v2 = v0[16];
    v0[19] = v1;
    sub_100009488(&qword_1005A8858, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    v3 = sub_10021B7D0(v0[6], v2);

    if (v3)
    {
      v4 = v0[18];

      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000A6F0(v5, qword_1005DFF88);
      v6 = v1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[15];
        v10 = swift_slowAlloc();
        v51[0] = swift_slowAlloc();
        *v10 = 136446722;
        *(v10 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, v51);
        *(v10 + 12) = 2082;
        v11 = v6;
        v12 = related decl 'e' for CKErrorCode.description.getter();
        v14 = v13;

        v15 = sub_10000D01C(v12, v14, v51);

        *(v10 + 14) = v15;
        *(v10 + 22) = 2048;
        *(v10 + 24) = v9;
        _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s accept fence failed with unrecoverable error: %{public}s; attempt #%ld. The invitation will be removed.", v10, 0x20u);
        swift_arrayDestroy();
      }

      v16 = v0[15];
      v17 = v0[11];
      v18 = v0[9];
      v19 = v6;
      v20 = sub_10004CBC0(v16, 0, v6, 1);
      v22 = v21;
      v24 = v23;

      sub_10001157C(v20, v22, v24);

      v25 = swift_task_alloc();
      v0[20] = v25;
      *(v25 + 16) = v17;
      *(v25 + 24) = v18;
      v26 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v27 = swift_task_alloc();
      v0[21] = v27;
      *v27 = v0;
      v27[1] = sub_100255A3C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257FA0, v25, &type metadata for () + 8);
    }
  }

  else
  {
    v28 = v0[16];
  }

  v29 = v0[2];

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v30 = v0[18];
  v31 = type metadata accessor for Logger();
  sub_10000A6F0(v31, qword_1005DFF88);
  swift_errorRetain();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0[18];
    v35 = v0[15];
    v36 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v36 = 136446978;
    *(v36 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, v51);
    *(v36 + 12) = 2082;
    v0[4] = v34;
    swift_errorRetain();
    v37 = String.init<A>(describing:)();
    v39 = sub_10000D01C(v37, v38, v51);

    *(v36 + 14) = v39;
    *(v36 + 22) = 2048;
    *(v36 + 24) = v35;
    *(v36 + 32) = 1024;
    *(v36 + 34) = v35 < 5;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s accept fence failed with error: %{public}s; attempt #%ld, will retry again: %{BOOL}d", v36, 0x26u);
    swift_arrayDestroy();
  }

  v40 = v0[18];
  v41 = v0[15];
  swift_errorRetain();
  v42 = sub_10004CBC0(v41, v41 < 5, v40, 1);
  v44 = v43;
  v46 = v45;

  sub_10001157C(v42, v44, v46);

  swift_willThrow();
  v47 = v0[18];
  v48 = v0[14];

  v49 = v0[1];

  return v49();
}

uint64_t sub_100256250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100256344, v4, 0);
}

uint64_t sub_100256344()
{
  v21 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000040, 0x80000001004DEBA0, &v20);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v13 = Handle.identifier.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v20);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s to handle %{private,mask.hash}s!", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_1002565F0;

  return daemon.getter();
}

uint64_t sub_1002565F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CommandManager();
  v9 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009488(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_1002567F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002567F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v10 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100256D50;
  }

  else
  {
    v7 = v3[12];
    v8 = v3[7];

    v6 = sub_10025696C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10025696C()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = Data.base64EncodedString(options:)(0);
    *(v0 + 128) = v8._object;
    sub_1000049D0(v5, v7);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_100256B48;
    v10 = *(v0 + 112);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);

    return sub_100077FD4(v8._countAndFlagsBits, v8._object, v13, v11, v12);
  }

  else
  {
    v15 = *(v0 + 112);
    v16 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100256B48()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100256DE8;
  }

  else
  {
    v6 = sub_100256CA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100256CA0()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100256D50()
{
  v1 = v0[12];

  v2 = v0[15];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100256DE8()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[18];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100256E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v8 = *(type metadata accessor for ShareInvitationRecord() - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100256FA0, a4, 0);
}

uint64_t sub_100256FA0()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v35 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v34 = *(v3 + 72);
    v33 = (v4 + 40) & ~v4;
    v32 = (*(v0 + 120) + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v31 = *(v7 + 56);
    v30 = (v7 + 48);
    v29 = (v7 + 8);
    do
    {
      v37 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 96);
      v36 = *(v0 + 104);
      v14 = *(v0 + 88);
      v31(v10, 1, 1, v6);
      sub_100257DA4(v5, v12);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v14;
      sub_100257E08(v12, v15 + v33);
      *(v15 + v32) = v13;
      *(v15 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
      sub_10007CE68(v10, v11);
      LODWORD(v11) = (*v30)(v11, 1, v6);

      v17 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_100002CE0(*(v0 + 136), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v29)(v17, v6);
      }

      if (*v16)
      {
        v18 = v15[3];
        v19 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = &unk_1004D2670;
      *(v23 + 24) = v15;

      if (v22 | v20)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v35;
      swift_task_create();

      sub_100002CE0(v9, &qword_1005A9690, &qword_1004C2A00);
      v5 += v34;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v26 = *(v0 + 128);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100257320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_100257344, 0, 0);
}

uint64_t sub_100257344()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for ShareInvitationRecord() + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_100257400;
  v7 = v0[2];
  v6 = v0[3];

  return sub_100253F44(v6, v4, v3);
}

uint64_t sub_100257400()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100257928;
  }

  else
  {
    v3 = sub_100257514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100257514()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_100257604;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257FA0, v1, &type metadata for () + 8);
}

uint64_t sub_100257604()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_100257720;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1000161BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100257720()
{
  v13 = v0;
  v1 = v0[7];

  v2 = v0[9];
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failure: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100257928()
{
  v12 = v0;
  v1 = *(v0 + 48);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failure: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_100257B3C()
{
  result = qword_1005B0AD0;
  if (!qword_1005B0AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B0AD0);
  }

  return result;
}

uint64_t sub_100257B88(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100003690;

  return sub_1002554BC(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_100257CDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100003690;

  return sub_100256E8C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100257DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareInvitationRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareInvitationRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257E6C()
{
  v2 = *(type metadata accessor for ShareInvitationRecord() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v4);
  v9 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000368C;

  return sub_100257320(v5, v6, v7, v0 + v3, v8);
}

uint64_t sub_100257FA4()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v49 = *(v0 - 8);
  v50 = v0;
  v1 = *(v49 + 64);
  __chkstk_darwin(v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaceMark();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = Fence.label.getter();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    return Fence.label.getter();
  }

  v47 = v9;
  v48 = v12;
  v46 = v3;
  Fence.placemark.getter();
  v23 = PlaceMark.streetAddress.getter();
  v25 = v24;
  v26 = *(v5 + 8);
  v26(v17, v4);
  v27 = v4;
  if (v25)
  {
    v28 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v28 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      return v23;
    }
  }

  Fence.placemark.getter();
  v23 = PlaceMark.streetName.getter();
  v30 = v29;
  v26(v15, v4);
  v31 = v48;
  if (v30)
  {
    v32 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v32 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      return v23;
    }
  }

  Fence.placemark.getter();
  v23 = PlaceMark.locality.getter();
  v34 = v33;
  v26(v31, v4);
  v35 = v47;
  if (v34)
  {
    v36 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v36 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      return v23;
    }
  }

  Fence.placemark.getter();
  v23 = PlaceMark.administrativeArea.getter();
  v38 = v37;
  v26(v35, v27);
  v39 = v38;
  v41 = v49;
  v40 = v50;
  v42 = v46;
  if (!v39)
  {
LABEL_27:
    (*(v41 + 104))(v42, enum case for LocalizationUtility.Table.default(_:), v40);
    v44 = static LocalizationUtility.localizedString(key:table:)();
    (*(v41 + 8))(v42, v40);
    return v44;
  }

  v43 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v43 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_27;
  }

  return v23;
}

uint64_t sub_100258360(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10025887C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = [v12 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

void *sub_10025854C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1002393DC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_1002393DC((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_1000588B8();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_100010BD4(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100258648(uint64_t a1)
{
  v2 = type metadata accessor for PublicKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_1002397C4(0, v11, 0);
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v22;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v19 = *(v13 + 56);
    v20 = v14;
    do
    {
      v20(v6, v15, v2);
      swift_dynamicCast();
      v22 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_1002397C4(v16 > 1, v17 + 1, 1);
        v12 = v22;
      }

      v12[2] = v17 + 1;
      sub_100260160(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_10025887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = type metadata accessor for Date();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v18 = *(v6 - 8);
  v19 = v6;
  v7 = *(v18 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0B10, &qword_1004D26B0);
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C2300;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, enum case for Calendar.Component.era(_:), v10);
  v16(v15 + v12, enum case for Calendar.Component.year(_:), v10);
  v16(v15 + 2 * v12, enum case for Calendar.Component.month(_:), v10);
  v16(v15 + 3 * v12, enum case for Calendar.Component.day(_:), v10);
  v16(v15 + 4 * v12, enum case for Calendar.Component.hour(_:), v10);
  v16(v15 + 5 * v12, enum case for Calendar.Component.minute(_:), v10);
  sub_10025A52C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:)();

  (*(v2 + 8))(v5, v22);
  result = Fence.TimeOfDay.hour.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    DateComponents.hour.setter();
    result = Fence.TimeOfDay.minute.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      DateComponents.minute.setter();
      Calendar.date(from:)();
      return (*(v18 + 8))(v9, v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100258BFC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LocalizationUtility.Table();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Participant();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for Destination();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for PersonHandle();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for Fence.ID();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v18 = type metadata accessor for Fence();
  v2[20] = v18;
  v19 = *(v18 - 8);
  v2[21] = v19;
  v20 = *(v19 + 64) + 15;
  v2[22] = swift_task_alloc();
  v21 = type metadata accessor for Fence.TriggerPosition();
  v2[23] = v21;
  v22 = *(v21 - 8);
  v2[24] = v22;
  v23 = *(v22 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100258EF0, 0, 0);
}

uint64_t sub_100258EF0()
{
  v57 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for Fence.TriggerPosition.inside(_:);
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[2];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    if (v13)
    {
      v50 = v0[20];
      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[17];
      v20 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v20 = 136446210;
      v52 = v12;
      Fence.id.getter();
      sub_100260118(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v18, v19);
      (*(v15 + 8))(v14, v50);
      v24 = sub_10000D01C(v21, v23, &v56);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v52, "Invalid position inside for leaving fence with id %{public}s", v20, 0xCu);
      sub_100004984(v54);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  v25 = v0[2];
  v26 = Fence.others.getter();
  if (*(v26 + 16))
  {
    v27 = v0[13];
    (*(v0[15] + 16))(v0[16], v26 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)), v0[14]);

    sub_100279044();
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = sub_1002594A0;
    v29 = v0[13];

    return sub_1004559B4(0);
  }

  else
  {

    v48 = v0[25];
    v49 = v0[22];
    v51 = v0[19];
    v53 = v0[16];
    v55 = v0[13];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[7];
    v34 = v0[8];
    v35 = v0[5];
    v47 = v0[6];
    v36 = v0[4];
    v37 = v0[2];
    Fence.findee.getter();
    (*(v34 + 104))(v32, enum case for Fence.Participant.me(_:), v33);
    static Fence.Participant.== infix(_:_:)();
    v38 = *(v34 + 8);
    v38(v32, v33);
    v38(v31, v33);
    (*(v35 + 104))(v47, enum case for LocalizationUtility.Table.default(_:), v36);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v35 + 8))(v47, v36);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1004C2310;
    *(v39 + 56) = &type metadata for String;
    v40 = sub_1000588B8();
    *(v39 + 64) = v40;
    *(v39 + 32) = 0;
    *(v39 + 40) = 0xE000000000000000;
    v41 = sub_100257FA4();
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = v40;
    *(v39 + 72) = v41;
    *(v39 + 80) = v42;
    v43 = String.init(format:arguments:)();
    v45 = v44;

    v46 = v0[1];

    return v46(v43, v45);
  }
}

uint64_t sub_1002594A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 88);
  v9 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_100259600, 0, 0);
}

uint64_t sub_100259600()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[13];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v18 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  Fence.findee.getter();
  (*(v4 + 104))(v2, enum case for Fence.Participant.me(_:), v3);
  static Fence.Participant.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  (*(v5 + 104))(v18, enum case for LocalizationUtility.Table.default(_:), v6);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v5 + 8))(v18, v6);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C2310;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_1000588B8();
  *(v9 + 64) = v10;
  *(v9 + 32) = v19;
  *(v9 + 40) = v20;
  v11 = sub_100257FA4();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  v13 = String.init(format:arguments:)();
  v15 = v14;

  v16 = v0[1];

  return v16(v13, v15);
}

uint64_t sub_100259894(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LocalizationUtility.Table();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Participant();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for Destination();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for PersonHandle();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for Fence.ID();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v18 = type metadata accessor for Fence();
  v2[20] = v18;
  v19 = *(v18 - 8);
  v2[21] = v19;
  v20 = *(v19 + 64) + 15;
  v2[22] = swift_task_alloc();
  v21 = type metadata accessor for Fence.TriggerPosition();
  v2[23] = v21;
  v22 = *(v21 - 8);
  v2[24] = v22;
  v23 = *(v22 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100259B88, 0, 0);
}

uint64_t sub_100259B88()
{
  v57 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for Fence.TriggerPosition.outside(_:);
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[2];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    if (v13)
    {
      v50 = v0[20];
      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[17];
      v20 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v20 = 136446210;
      v52 = v12;
      Fence.id.getter();
      sub_100260118(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v18, v19);
      (*(v15 + 8))(v14, v50);
      v24 = sub_10000D01C(v21, v23, &v56);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v52, "Invalid position outside for arriving fence with id %{public}s", v20, 0xCu);
      sub_100004984(v54);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  v25 = v0[2];
  v26 = Fence.others.getter();
  if (*(v26 + 16))
  {
    v27 = v0[13];
    (*(v0[15] + 16))(v0[16], v26 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)), v0[14]);

    sub_100279044();
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = sub_10025A138;
    v29 = v0[13];

    return sub_1004559B4(0);
  }

  else
  {

    v48 = v0[25];
    v49 = v0[22];
    v51 = v0[19];
    v53 = v0[16];
    v55 = v0[13];
    v32 = v0[9];
    v31 = v0[10];
    v33 = v0[7];
    v34 = v0[8];
    v35 = v0[5];
    v47 = v0[6];
    v36 = v0[4];
    v37 = v0[2];
    Fence.findee.getter();
    (*(v34 + 104))(v32, enum case for Fence.Participant.me(_:), v33);
    static Fence.Participant.== infix(_:_:)();
    v38 = *(v34 + 8);
    v38(v32, v33);
    v38(v31, v33);
    (*(v35 + 104))(v47, enum case for LocalizationUtility.Table.default(_:), v36);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v35 + 8))(v47, v36);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1004C2310;
    *(v39 + 56) = &type metadata for String;
    v40 = sub_1000588B8();
    *(v39 + 64) = v40;
    *(v39 + 32) = 0;
    *(v39 + 40) = 0xE000000000000000;
    v41 = sub_100257FA4();
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = v40;
    *(v39 + 72) = v41;
    *(v39 + 80) = v42;
    v43 = String.init(format:arguments:)();
    v45 = v44;

    v46 = v0[1];

    return v46(v43, v45);
  }
}

uint64_t sub_10025A138(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 88);
  v9 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10025A298, 0, 0);
}

uint64_t sub_10025A298()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v19 = v0[27];
  v20 = v0[28];
  v21 = v0[25];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[16];
  v25 = v0[13];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v18 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  Fence.findee.getter();
  (*(v4 + 104))(v2, enum case for Fence.Participant.me(_:), v3);
  static Fence.Participant.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  (*(v5 + 104))(v18, enum case for LocalizationUtility.Table.default(_:), v6);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v5 + 8))(v18, v6);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C2310;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_1000588B8();
  *(v9 + 64) = v10;
  *(v9 + 32) = v19;
  *(v9 + 40) = v20;
  v11 = sub_100257FA4();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v10;
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  v13 = String.init(format:arguments:)();
  v15 = v14;

  v16 = v0[1];

  return v16(v13, v15);
}

void *sub_10025A52C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10004B564(&qword_1005B0B18, &qword_1004D26B8);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100260118(&qword_1005B0B20, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100260118(&qword_1005B0B28, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10025A84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_10004B564(&qword_1005B0AF8, &qword_1004D2698);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for LocalizationUtility.Table();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Participant();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B0B00, &qword_1004D26A0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v14 = sub_10004B564(&qword_1005B0B08, &qword_1004D26A8);
  v4[18] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v16 = type metadata accessor for Destination();
  v4[20] = v16;
  v17 = *(v16 - 8);
  v4[21] = v17;
  v18 = *(v17 + 64) + 15;
  v4[22] = swift_task_alloc();
  v19 = type metadata accessor for PersonHandle();
  v4[23] = v19;
  v20 = *(v19 - 8);
  v4[24] = v20;
  v21 = *(v20 + 64) + 15;
  v4[25] = swift_task_alloc();
  v22 = type metadata accessor for Fence.DaysOfWeek();
  v4[26] = v22;
  v23 = *(v22 - 8);
  v4[27] = v23;
  v24 = *(v23 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v25 = type metadata accessor for Fence.TimeOfDay();
  v4[30] = v25;
  v26 = *(v25 - 8);
  v4[31] = v26;
  v27 = *(v26 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v28 = type metadata accessor for Date();
  v4[34] = v28;
  v29 = *(v28 - 8);
  v4[35] = v29;
  v30 = *(v29 + 64) + 15;
  v4[36] = swift_task_alloc();
  v31 = type metadata accessor for Calendar();
  v4[37] = v31;
  v32 = *(v31 - 8);
  v4[38] = v32;
  v33 = *(v32 + 64) + 15;
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10025AC80, 0, 0);
}

uint64_t sub_10025AC80()
{
  v305 = v0;
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v272 = v0[30];
  v284 = v0[29];
  v7 = v0[27];
  v292 = v0[26];
  v8 = v0[4];
  v261 = v0[3];
  v298 = v0[2];
  static Calendar.current.getter();
  v9 = objc_opt_self();
  sub_1002787C8(v3);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = v3;
  v12 = v0;
  (*(v2 + 8))(v11, v4);
  v13 = [v9 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v0[40] = v14;
  v0[41] = v16;
  Fence.Schedule.start.getter();
  v0[42] = sub_100258360(v1);
  v0[43] = v17;
  v18 = *(v6 + 8);
  v0[44] = v18;
  v0[45] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v5, v272);
  Fence.Schedule.end.getter();
  v0[46] = sub_100258360(v1);
  v0[47] = v19;
  v18(v5, v272);
  Fence.Schedule.daysOfWeek.getter();
  v0[48] = sub_100057620(v1);
  v0[49] = v20;
  v21 = *(v7 + 8);
  v0[50] = v21;
  v0[51] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v284, v292);
  v0[52] = sub_100257FA4();
  v0[53] = v22;
  v23 = Fence.others.getter();
  if (*(v23 + 16))
  {
    v24 = v0[22];
    (*(v12[24] + 16))(v12[25], v23 + ((*(v12[24] + 80) + 32) & ~*(v12[24] + 80)), v12[23]);

    sub_100279044();
    v25 = swift_task_alloc();
    v12[54] = v25;
    *v25 = v12;
    v25[1] = sub_10025C45C;
    v26 = v12[22];

    return sub_1004559B4(0);
  }

  v28 = v0[19];
  v30 = v0[4];
  v29 = v12[5];
  v31 = *(v12[18] + 48);
  v32 = type metadata accessor for Fence.TriggerPosition();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v28, v30, v32);
  sub_10025EBA8(v29, v28 + v31);
  v34 = *(v33 + 88);
  v35 = v34(v28, v32);
  v36 = v35;
  v37 = enum case for Fence.TriggerPosition.inside(_:);
  if (v35 != enum case for Fence.TriggerPosition.inside(_:))
  {
    if (v35 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v55 = (*(v33 + 48))(v28 + v31, 1, v32);
      v56 = v28;
      if (v55 == 1)
      {
        goto LABEL_10;
      }

      v89 = v12 + 17;
      v132 = v12[17];
      v293 = v56;
      sub_10025EBA8(v56 + v31, v132);
      v133 = v34(v132, v32);
      if (v133 == v37)
      {
        v299 = v31;
        v134 = v12[49];
        v135 = v12[47];
        v136 = v12[43];
        v137 = v12[14];
        v138 = v12[15];
        v139 = v12[11];
        v140 = v12[12];
        v141 = v12[9];
        v280 = v12[10];
        v289 = v12[17];
        v268 = v12[8];
        v242 = v12[2];

        v251 = *(v33 + 8);
        v142 = v289;
        v285 = v32;
        v251(v142, v32);
        Fence.findee.getter();
        (*(v140 + 104))(v137, enum case for Fence.Participant.me(_:), v139);
        static Fence.Participant.== infix(_:_:)();
        v143 = *(v140 + 8);
        v143(v137, v139);
        v143(v138, v139);
        (*(v141 + 104))(v280, enum case for LocalizationUtility.Table.default(_:), v268);
        v144 = (v141 + 8);
        v145 = v12[52];
        v146 = v12[53];
        v269 = v12[40];
        v281 = v12[41];
        v147 = v12[38];
        v148 = v12[37];
        v235 = v148;
        v243 = v12[39];
        v149 = v12[10];
        v150 = v12[8];
        goto LABEL_35;
      }

      if (v133 == v36)
      {
        v299 = v31;
        v91 = v12 + 43;
        v92 = v12 + 47;
        v175 = v12[53];
        v176 = v12[41];

        v177 = v12[49];
        goto LABEL_16;
      }

      v195 = enum case for Fence.TriggerPosition.undetermined(_:);
      v196 = v133;
      (*(v33 + 8))(*v89, v32);
      v56 = v293;
      if (v196 == v195)
      {
LABEL_10:
        v58 = v12[44];
        v57 = v12[45];
        v59 = v32;
        v61 = v12[32];
        v60 = v12[33];
        v62 = v12;
        v63 = v12[30];
        v64 = v62[27];
        v263 = v62[28];
        v286 = v62[26];
        v65 = v62[19];
        v238 = v62[13];
        v66 = v31;
        v67 = v62[12];
        v275 = v62[11];
        v294 = v62[7];
        v254 = v62[6];
        v300 = v62;
        v68 = v62[3];
        v232 = v62[2];
        sub_100002CE0(v56 + v66, &qword_1005B0B00, &qword_1004D26A0);
        (*(v33 + 8))(v65, v59);
        Fence.Schedule.start.getter();
        Fence.Schedule.end.getter();
        v69 = static Fence.TimeOfDay.== infix(_:_:)();
        v58(v61, v63);
        v58(v60, v63);
        Fence.findee.getter();
        Fence.Schedule.daysOfWeek.getter();
        v70 = v294 + *(v254 + 48);
        v71 = *(v254 + 64);
        (*(v67 + 32))(v70, v238, v275);
        (*(v64 + 32))(v294 + v71, v263, v286);
        v248 = v70;
        v72 = (*(v67 + 88))(v70, v275);
        if (v72 == enum case for Fence.Participant.me(_:))
        {
          v73 = v300[41];

          v75 = v300[50];
          v74 = v300[51];
          v233 = v71;
          if (v69)
          {
            v76 = v300[47];
            v77 = v300[29];
            v78 = v300[26];
            v80 = v300[9];
            v79 = v300[10];
            v81 = v300[8];

            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v75(v77, v78);
            (*(v80 + 104))(v79, enum case for LocalizationUtility.Table.default(_:), v81);
            v82 = v300[52];
            v276 = v300[49];
            v287 = v300[51];
            v255 = v300[50];
            v264 = v300[48];
            v83 = v300[42];
            v217 = v300[43];
            v220 = v300[53];
            v84 = v300[38];
            v223 = v300[37];
            v227 = v300[39];
            v239 = v300[26];
            v85 = v300[12];
            v86 = v300[10];
            v87 = v300[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*(v80 + 8))(v86, v87);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v197 = swift_allocObject();
            *(v197 + 16) = xmmword_1004C0BB0;
            *(v197 + 56) = &type metadata for String;
            v198 = sub_1000588B8();
            *(v197 + 32) = 0;
            *(v197 + 40) = 0xE000000000000000;
            *(v197 + 96) = &type metadata for String;
            *(v197 + 104) = v198;
            *(v197 + 64) = v198;
            *(v197 + 72) = v82;
            *(v197 + 80) = v220;
            *(v197 + 136) = &type metadata for String;
            *(v197 + 144) = v198;
            *(v197 + 112) = v83;
            *(v197 + 120) = v217;
            *(v197 + 176) = &type metadata for String;
            *(v197 + 184) = v198;
            *(v197 + 152) = v264;
            *(v197 + 160) = v276;
            v199 = String.init(format:arguments:)();
            v267 = v200;
            v279 = v199;

            (*(v84 + 8))(v227, v223);
            v255(v294 + v233, v239);
            v129 = *(v85 + 8);
          }

          else
          {
            v178 = v300[29];
            v179 = v300[26];
            v181 = v300[9];
            v180 = v300[10];
            v182 = v300[8];
            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v75(v178, v179);
            (*(v181 + 104))(v180, enum case for LocalizationUtility.Table.default(_:), v182);
            v183 = (v181 + 8);
            v184 = v300[52];
            v283 = v300[49];
            v291 = v300[51];
            v259 = v300[50];
            v271 = v300[48];
            v222 = v300[47];
            v216 = v300[53];
            v219 = v300[46];
            v185 = v300[42];
            v186 = v300[43];
            v187 = v300[38];
            v226 = v300[37];
            v230 = v300[39];
            v245 = v300[26];
            v188 = v300[12];
            v189 = v300[10];
            v190 = v300[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v183)(v189, v190);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v201 = swift_allocObject();
            *(v201 + 16) = xmmword_1004C0BC0;
            *(v201 + 56) = &type metadata for String;
            v202 = sub_1000588B8();
            *(v201 + 32) = 0;
            *(v201 + 40) = 0xE000000000000000;
            *(v201 + 96) = &type metadata for String;
            *(v201 + 104) = v202;
            *(v201 + 64) = v202;
            *(v201 + 72) = v184;
            *(v201 + 80) = v216;
            *(v201 + 136) = &type metadata for String;
            *(v201 + 144) = v202;
            *(v201 + 112) = v185;
            *(v201 + 120) = v186;
            *(v201 + 176) = &type metadata for String;
            *(v201 + 184) = v202;
            *(v201 + 152) = v219;
            *(v201 + 160) = v222;
            *(v201 + 216) = &type metadata for String;
            *(v201 + 224) = v202;
            *(v201 + 192) = v271;
            *(v201 + 200) = v283;
            v203 = String.init(format:arguments:)();
            v267 = v204;
            v279 = v203;

            (*(v187 + 8))(v230, v226);
            v259(v294 + v233, v245);
            v129 = *(v188 + 8);
          }

          v131 = v300;
          v285 = v300[11];
          v130 = v248;
          goto LABEL_38;
        }

        if (v72 == enum case for Fence.Participant.other(_:))
        {
          v270 = v300[52];
          v282 = v300[53];
          v290 = v300[51];
          v244 = v300[50];
          v163 = v300[49];
          v164 = v300[47];
          v215 = v300[42];
          v218 = v300[43];
          v165 = v300[41];
          v166 = v71;
          v167 = v300[38];
          v221 = v300[37];
          v225 = v300[39];
          v229 = v300[26];
          v258 = v300[12];
          v168 = v300[9];
          v169 = v300[10];
          v170 = v300[8];

          (*(v168 + 104))(v169, enum case for LocalizationUtility.Table.default(_:), v170);
          static LocalizationUtility.localizedString(key:table:)();
          (*(v168 + 8))(v169, v170);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v171 = swift_allocObject();
          *(v171 + 16) = xmmword_1004C0BD0;
          *(v171 + 56) = &type metadata for String;
          v172 = sub_1000588B8();
          *(v171 + 32) = 0;
          *(v171 + 40) = 0xE000000000000000;
          *(v171 + 96) = &type metadata for String;
          *(v171 + 104) = v172;
          *(v171 + 64) = v172;
          *(v171 + 72) = v270;
          *(v171 + 80) = v282;
          *(v171 + 136) = &type metadata for String;
          *(v171 + 144) = v172;
          *(v171 + 112) = v215;
          *(v171 + 120) = v218;
          v173 = String.init(format:arguments:)();
          v267 = v174;
          v279 = v173;

          (*(v167 + 8))(v225, v221);
          v131 = v300;
          v244(v294 + v166, v229);
          v130 = v248;
          v129 = *(v258 + 8);
          v285 = v300[11];
          goto LABEL_38;
        }
      }
    }

    else if (v35 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v278 = v12[53];
      v285 = v32;
      v114 = v12[49];
      v115 = v12[47];
      v266 = v12[43];
      v241 = v12[42];
      v250 = v12[52];
      v116 = v12[41];
      v117 = v12[38];
      v296 = v12[39];
      v257 = v12[37];
      v302 = v31;
      v118 = v12[9];
      v119 = v12[10];
      v120 = v12[8];

      (*(v118 + 104))(v119, enum case for LocalizationUtility.Table.default(_:), v120);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v118 + 8))(v119, v120);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1004C0BD0;
      *(v121 + 56) = &type metadata for String;
      v122 = sub_1000588B8();
      *(v121 + 32) = 0;
      *(v121 + 40) = 0xE000000000000000;
      *(v121 + 96) = &type metadata for String;
      *(v121 + 104) = v122;
      *(v121 + 64) = v122;
      *(v121 + 72) = v250;
      *(v121 + 80) = v278;
      *(v121 + 136) = &type metadata for String;
      *(v121 + 144) = v122;
      *(v121 + 112) = v241;
      *(v121 + 120) = v266;
      v123 = String.init(format:arguments:)();
      v267 = v124;
      v279 = v123;

      (*(v117 + 8))(v296, v257);
      v131 = v12;
      sub_100002CE0(v28 + v302, &qword_1005B0B00, &qword_1004D26A0);
      v129 = *(v33 + 8);
      v130 = v12[19];
      goto LABEL_38;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v38 = v12[49];
  v299 = v31;
  v39 = v12[47];
  v40 = v12[43];

  v293 = v28;
  if ((*(v33 + 48))(v28 + v299, 1, v32) == 1)
  {
LABEL_7:
    v42 = v12[14];
    v41 = v12[15];
    v44 = v12[11];
    v43 = v12[12];
    v273 = v12[10];
    v285 = v32;
    v45 = v12;
    v46 = v12[9];
    v47 = v45[8];
    v48 = v45[2];
    Fence.findee.getter();
    (*(v43 + 104))(v42, enum case for Fence.Participant.me(_:), v44);
    static Fence.Participant.== infix(_:_:)();
    v49 = *(v43 + 8);
    v49(v42, v44);
    v49(v41, v44);
    (*(v46 + 104))(v273, enum case for LocalizationUtility.Table.default(_:), v47);
    v50 = (v46 + 8);
    v51 = v45[52];
    v262 = v45[40];
    v274 = v45[41];
    v52 = v45[38];
    v253 = v45[39];
    v237 = v45[53];
    v247 = v45[37];
    v53 = v45[10];
    v54 = v45[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*v50)(v53, v54);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_1004C0BD0;
    *(v125 + 56) = &type metadata for String;
    v126 = sub_1000588B8();
    *(v125 + 32) = 0;
    *(v125 + 40) = 0xE000000000000000;
    *(v125 + 96) = &type metadata for String;
    *(v125 + 104) = v126;
    *(v125 + 64) = v126;
    *(v125 + 72) = v51;
    *(v125 + 80) = v237;
    *(v125 + 136) = &type metadata for String;
    *(v125 + 144) = v126;
    *(v125 + 112) = v262;
    *(v125 + 120) = v274;
    v127 = String.init(format:arguments:)();
    v267 = v128;
    v279 = v127;

    (*(v52 + 8))(v253, v247);
    sub_100002CE0(v293 + v299, &qword_1005B0B00, &qword_1004D26A0);
    v129 = *(v33 + 8);
    v130 = v45[19];
    v131 = v45;
LABEL_38:
    v205 = v131[39];
    v206 = v131[36];
    v208 = v131[32];
    v207 = v131[33];
    v210 = v131[28];
    v209 = v131[29];
    v211 = v131[25];
    v212 = v131[22];
    v213 = v131[19];
    v231 = v131[17];
    v236 = v131[16];
    v246 = v131[15];
    v252 = v131[14];
    v260 = v131[13];
    v297 = v131[10];
    v303 = v131[7];
    v129(v130, v285);

    v214 = v131[1];

    return v214(v279, v267);
  }

  v89 = v12 + 16;
  v88 = v12[16];
  sub_10025EBA8(v293 + v299, v88);
  v90 = v34(v88, v32);
  if (v90 != v36)
  {
    v151 = v90;
    v152 = enum case for Fence.TriggerPosition.outside(_:);
    v251 = *(v33 + 8);
    v251(*v89, v32);
    if (v151 != v152)
    {
      goto LABEL_7;
    }

    v285 = v32;
    v154 = v12[14];
    v153 = v12[15];
    v156 = v12[11];
    v155 = v12[12];
    v157 = v12[9];
    v158 = v12[10];
    v159 = v12[8];
    v160 = v12[2];
    Fence.findee.getter();
    (*(v155 + 104))(v154, enum case for Fence.Participant.me(_:), v156);
    static Fence.Participant.== infix(_:_:)();
    v161 = *(v155 + 8);
    v161(v154, v156);
    v161(v153, v156);
    (*(v157 + 104))(v158, enum case for LocalizationUtility.Table.default(_:), v159);
    v144 = (v157 + 8);
    v145 = v12[52];
    v146 = v12[53];
    v269 = v12[40];
    v281 = v12[41];
    v147 = v12[38];
    v162 = v12[37];
    v235 = v162;
    v243 = v12[39];
    v149 = v12[10];
    v150 = v12[8];
LABEL_35:
    static LocalizationUtility.localizedString(key:table:)();
    (*v144)(v149, v150);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_1004C0BD0;
    *(v191 + 56) = &type metadata for String;
    v192 = sub_1000588B8();
    *(v191 + 32) = 0;
    *(v191 + 40) = 0xE000000000000000;
    *(v191 + 96) = &type metadata for String;
    *(v191 + 104) = v192;
    *(v191 + 64) = v192;
    *(v191 + 72) = v145;
    *(v191 + 80) = v146;
    *(v191 + 136) = &type metadata for String;
    *(v191 + 144) = v192;
    *(v191 + 112) = v269;
    *(v191 + 120) = v281;
    v193 = String.init(format:arguments:)();
    v267 = v194;
    v279 = v193;

    (*(v147 + 8))(v243, v235);
    sub_100002CE0(v293 + v299, &qword_1005B0B00, &qword_1004D26A0);
    v130 = v12[19];
    v131 = v12;
    v129 = v251;
    goto LABEL_38;
  }

  v91 = v12 + 41;
  v92 = v12 + 53;
LABEL_16:
  v93 = *v89;
  v94 = *v91;
  v95 = *v92;
  v96 = v12[19];

  v97 = *(v33 + 8);
  v97(v93, v32);
  sub_100002CE0(v293 + v299, &qword_1005B0B00, &qword_1004D26A0);
  v97(v96, v32);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_10000A6F0(v98, qword_1005DFF88);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v304 = v102;
    *v101 = 136446210;
    *(v101 + 4) = sub_10000D01C(0xD00000000000004DLL, 0x80000001004E5FF0, &v304);
    _os_log_impl(&_mh_execute_header, v99, v100, "%{public}s Trying to trigger scheduled fence with same placement twice", v101, 0xCu);
    sub_100004984(v102);
  }

  v103 = v12[38];
  v104 = v12[39];
  v105 = v12;
  v108 = v12 + 36;
  v107 = v12[36];
  v106 = v108[1];
  v109 = v105[32];
  v110 = v105[33];
  v111 = v105[29];
  v224 = v105[28];
  v228 = v105[25];
  v234 = v105[22];
  v240 = v105[19];
  v249 = v105[17];
  v256 = v105[16];
  v265 = v105[15];
  v277 = v105[14];
  v288 = v105[13];
  v295 = v105[10];
  v301 = v105[7];
  sub_10005CF04();
  swift_allocError();
  *v112 = 6;
  swift_willThrow();
  (*(v103 + 8))(v104, v106);

  v113 = v105[1];

  return v113();
}

uint64_t sub_10025C45C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  v7 = *(*v2 + 160);
  v9 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10025C5BC, 0, 0);
}

uint64_t sub_10025C5BC()
{
  v286 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[55];
  v278 = v0[56];
  v2 = v0[19];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0[18] + 48);
  v6 = type metadata accessor for Fence.TriggerPosition();
  v7 = *(v6 - 8);
  v8 = v4;
  v9 = v5;
  (*(v7 + 16))(v2, v8, v6);
  sub_10025EBA8(v3, v2 + v5);
  v10 = *(v7 + 88);
  v11 = v10(v2, v6);
  v12 = v11;
  v13 = enum case for Fence.TriggerPosition.inside(_:);
  v281 = v9;
  if (v11 != enum case for Fence.TriggerPosition.inside(_:))
  {
    if (v11 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v31 = (*(v7 + 48))(v2 + v9, 1, v6);
      v32 = v2;
      v33 = v9;
      if (v31 == 1)
      {
        goto LABEL_6;
      }

      v66 = v0 + 17;
      v108 = v0[17];
      v273 = v32;
      sub_10025EBA8(v32 + v33, v108);
      v109 = v10(v108, v6);
      if (v109 == v13)
      {
        v264 = v1;
        v110 = v0[49];
        v111 = v0[47];
        v112 = v0[43];
        v270 = v0[17];
        v113 = v0[14];
        v114 = v0[15];
        v116 = v0[11];
        v115 = v0[12];
        v117 = v0[9];
        v227 = v0[8];
        v237 = v0[10];
        v217 = v0[2];

        v246 = *(v7 + 8);
        v118 = v270;
        v266 = v6;
        v246(v118, v6);
        Fence.findee.getter();
        (*(v115 + 104))(v113, enum case for Fence.Participant.me(_:), v116);
        static Fence.Participant.== infix(_:_:)();
        v119 = *(v115 + 8);
        v119(v113, v116);
        v119(v114, v116);
        (*(v117 + 104))(v237, enum case for LocalizationUtility.Table.default(_:), v227);
        v120 = (v117 + 8);
        v121 = v0[52];
        v122 = v0[53];
        v210 = v0[40];
        v218 = v0[41];
        v123 = v0[38];
        v124 = v0[37];
        v228 = v124;
        v238 = v0[39];
        v125 = v0[10];
        v126 = v0[8];
        static LocalizationUtility.localizedString(key:table:)();
        (*v120)(v125, v126);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_1004C0BD0;
        *(v175 + 56) = &type metadata for String;
        v176 = sub_1000588B8();
        *(v175 + 32) = v264;
        *(v175 + 40) = v278;
        *(v175 + 96) = &type metadata for String;
        *(v175 + 104) = v176;
        *(v175 + 64) = v176;
        *(v175 + 72) = v121;
        *(v175 + 80) = v122;
        goto LABEL_31;
      }

      if (v109 == v12)
      {
        v156 = v0[53];
        v157 = v0[41];

        v158 = v0[49];
        v68 = 43;
        v69 = 47;
        goto LABEL_12;
      }

      v178 = enum case for Fence.TriggerPosition.undetermined(_:);
      v179 = v109;
      (*(v7 + 8))(*v66, v6);
      v32 = v273;
      v33 = v281;
      if (v179 == v178)
      {
LABEL_6:
        v260 = v1;
        v207 = v0[44];
        v213 = v0[45];
        v35 = v0[32];
        v34 = v0[33];
        v36 = v0[30];
        v37 = v0[27];
        v267 = v0[26];
        v38 = v0[19];
        v39 = v0[12];
        v223 = v0[13];
        v242 = v0[28];
        v252 = v0[11];
        v274 = v0[7];
        v233 = v0[6];
        v40 = v0[3];
        v203 = v0[2];
        sub_100002CE0(v32 + v33, &qword_1005B0B00, &qword_1004D26A0);
        (*(v7 + 8))(v38, v6);
        Fence.Schedule.start.getter();
        Fence.Schedule.end.getter();
        v41 = static Fence.TimeOfDay.== infix(_:_:)();
        v207(v35, v36);
        v207(v34, v36);
        Fence.findee.getter();
        Fence.Schedule.daysOfWeek.getter();
        v42 = v274 + *(v233 + 48);
        v43 = *(v233 + 64);
        (*(v39 + 32))(v42, v223, v252);
        (*(v37 + 32))(v274 + v43, v242, v267);
        v282 = v42;
        v44 = (*(v39 + 88))(v42, v252);
        if (v44 == enum case for Fence.Participant.me(_:))
        {
          v45 = v0[41];

          v47 = v0[50];
          v46 = v0[51];
          v48 = v0;
          v234 = v43;
          if (v41)
          {
            v49 = v0[47];
            v50 = v0[29];
            v51 = v0[26];
            v52 = v0[9];
            v53 = v48[10];
            v54 = v48[8];

            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v47(v50, v51);
            (*(v52 + 104))(v53, enum case for LocalizationUtility.Table.default(_:), v54);
            v55 = (v52 + 8);
            v56 = v48[52];
            v57 = v48[50];
            v268 = v48[51];
            v58 = v48[49];
            v200 = v48[53];
            v204 = v48[48];
            v59 = v48[42];
            v198 = v48[43];
            v224 = v48[39];
            v60 = v48;
            v61 = v48[38];
            v208 = v58;
            v214 = v60[37];
            v243 = v60[26];
            v253 = v57;
            v62 = v60[12];
            v63 = v60[10];
            v64 = v60[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v55)(v63, v64);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v180 = swift_allocObject();
            *(v180 + 16) = xmmword_1004C0BB0;
            *(v180 + 56) = &type metadata for String;
            v181 = sub_1000588B8();
            *(v180 + 32) = v260;
            *(v180 + 40) = v278;
            *(v180 + 96) = &type metadata for String;
            *(v180 + 104) = v181;
            *(v180 + 64) = v181;
            *(v180 + 72) = v56;
            *(v180 + 80) = v200;
            *(v180 + 136) = &type metadata for String;
            *(v180 + 144) = v181;
            *(v180 + 112) = v59;
            *(v180 + 120) = v198;
            *(v180 + 176) = &type metadata for String;
            *(v180 + 184) = v181;
            *(v180 + 152) = v204;
            *(v180 + 160) = v208;
            v280 = String.init(format:arguments:)();
            v263 = v182;

            (*(v61 + 8))(v224, v214);
            v253(v274 + v234, v243);
            v105 = *(v62 + 8);
          }

          else
          {
            v159 = v0[29];
            v160 = v0[26];
            v161 = v0[9];
            v162 = v48[10];
            v163 = v48[8];
            v164 = v48[29];
            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v47(v159, v160);
            (*(v161 + 104))(v162, enum case for LocalizationUtility.Table.default(_:), v163);
            v165 = (v161 + 8);
            v166 = v48[52];
            v167 = v48[50];
            v272 = v48[51];
            v206 = v48[48];
            v212 = v48[49];
            v202 = v48[47];
            v197 = v48[53];
            v199 = v48[46];
            v168 = v48[42];
            v169 = v48[43];
            v170 = v48[39];
            v60 = v48;
            v171 = v48[38];
            v220 = v60[37];
            v230 = v170;
            v248 = v60[26];
            v257 = v167;
            v172 = v60[12];
            v173 = v60[10];
            v174 = v60[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v165)(v173, v174);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v183 = swift_allocObject();
            *(v183 + 16) = xmmword_1004C0BC0;
            *(v183 + 56) = &type metadata for String;
            v184 = sub_1000588B8();
            *(v183 + 32) = v260;
            *(v183 + 40) = v278;
            *(v183 + 96) = &type metadata for String;
            *(v183 + 104) = v184;
            *(v183 + 64) = v184;
            *(v183 + 72) = v166;
            *(v183 + 80) = v197;
            *(v183 + 136) = &type metadata for String;
            *(v183 + 144) = v184;
            *(v183 + 112) = v168;
            *(v183 + 120) = v169;
            *(v183 + 176) = &type metadata for String;
            *(v183 + 184) = v184;
            *(v183 + 152) = v199;
            *(v183 + 160) = v202;
            *(v183 + 216) = &type metadata for String;
            *(v183 + 224) = v184;
            *(v183 + 192) = v206;
            *(v183 + 200) = v212;
            v280 = String.init(format:arguments:)();
            v263 = v185;

            (*(v171 + 8))(v230, v220);
            v257(v274 + v234, v248);
            v105 = *(v172 + 8);
          }

          v266 = v60[11];
          v106 = v282;
          v107 = v60;
          goto LABEL_34;
        }

        if (v44 == enum case for Fence.Participant.other(_:))
        {
          v201 = v0[52];
          v205 = v0[53];
          v271 = v0[51];
          v144 = v0[49];
          v145 = v0[47];
          v146 = v0[42];
          v147 = v0[43];
          v148 = v0[41];
          v149 = v0[38];
          v211 = v0[37];
          v219 = v0[39];
          v229 = v0[26];
          v239 = v43;
          v247 = v0[50];
          v256 = v0[12];
          v150 = v0[9];
          v151 = v0[10];
          v152 = v0[8];

          (*(v150 + 104))(v151, enum case for LocalizationUtility.Table.default(_:), v152);
          static LocalizationUtility.localizedString(key:table:)();
          v107 = v0;
          (*(v150 + 8))(v151, v152);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v153 = swift_allocObject();
          *(v153 + 16) = xmmword_1004C0BD0;
          *(v153 + 56) = &type metadata for String;
          v154 = sub_1000588B8();
          *(v153 + 32) = v260;
          *(v153 + 40) = v278;
          *(v153 + 96) = &type metadata for String;
          *(v153 + 104) = v154;
          *(v153 + 64) = v154;
          *(v153 + 72) = v201;
          *(v153 + 80) = v205;
          *(v153 + 136) = &type metadata for String;
          *(v153 + 144) = v154;
          *(v153 + 112) = v146;
          *(v153 + 120) = v147;
          v280 = String.init(format:arguments:)();
          v263 = v155;

          (*(v149 + 8))(v219, v211);
          v247(v274 + v239, v229);
          v105 = *(v256 + 8);
          v266 = v0[11];
          v106 = v282;
          goto LABEL_34;
        }
      }
    }

    else if (v11 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v262 = v0[53];
      v266 = v6;
      v90 = v0[49];
      v91 = v0[47];
      v226 = v0[52];
      v236 = v0[43];
      v216 = v0[42];
      v92 = v0[41];
      v93 = v0[38];
      v245 = v0[37];
      v255 = v0[39];
      v94 = v0;
      v95 = v1;
      v276 = v2;
      v96 = v0[9];
      v97 = v0[10];
      v98 = v0[8];

      (*(v96 + 104))(v97, enum case for LocalizationUtility.Table.default(_:), v98);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v96 + 8))(v97, v98);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1004C0BD0;
      *(v99 + 56) = &type metadata for String;
      v100 = sub_1000588B8();
      *(v99 + 32) = v95;
      *(v99 + 40) = v278;
      *(v99 + 96) = &type metadata for String;
      *(v99 + 104) = v100;
      *(v99 + 64) = v100;
      *(v99 + 72) = v226;
      *(v99 + 80) = v262;
      *(v99 + 136) = &type metadata for String;
      *(v99 + 144) = v100;
      *(v99 + 112) = v216;
      *(v99 + 120) = v236;
      v280 = String.init(format:arguments:)();
      v263 = v101;
      v107 = v94;

      (*(v93 + 8))(v255, v245);
      sub_100002CE0(v276 + v281, &qword_1005B0B00, &qword_1004D26A0);
      v105 = *(v7 + 8);
      v106 = v94[19];
      goto LABEL_34;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v14 = v0[49];
  v15 = v0[47];
  v16 = v0[43];

  v273 = v2;
  if ((*(v7 + 48))(v2 + v281, 1, v6) == 1)
  {
LABEL_3:
    v259 = v1;
    v266 = v6;
    v18 = v0[14];
    v17 = v0[15];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[9];
    v250 = v0[10];
    v22 = v0[8];
    v23 = v0[2];
    Fence.findee.getter();
    (*(v19 + 104))(v18, enum case for Fence.Participant.me(_:), v20);
    static Fence.Participant.== infix(_:_:)();
    v24 = *(v19 + 8);
    v24(v18, v20);
    v24(v17, v20);
    (*(v21 + 104))(v250, enum case for LocalizationUtility.Table.default(_:), v22);
    v25 = v0[52];
    v26 = v0[53];
    v222 = v0[40];
    v232 = v0[41];
    v27 = v0[38];
    v28 = v0[37];
    v241 = v28;
    v251 = v0[39];
    v29 = v0[10];
    v30 = v0[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*(v21 + 8))(v29, v30);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1004C0BD0;
    *(v102 + 56) = &type metadata for String;
    v103 = sub_1000588B8();
    *(v102 + 32) = v259;
    *(v102 + 40) = v278;
    *(v102 + 96) = &type metadata for String;
    *(v102 + 104) = v103;
    *(v102 + 64) = v103;
    *(v102 + 72) = v25;
    *(v102 + 80) = v26;
    *(v102 + 136) = &type metadata for String;
    *(v102 + 144) = v103;
    *(v102 + 112) = v222;
    *(v102 + 120) = v232;
    v280 = String.init(format:arguments:)();
    v263 = v104;

    (*(v27 + 8))(v251, v241);
    sub_100002CE0(v273 + v281, &qword_1005B0B00, &qword_1004D26A0);
    v105 = *(v7 + 8);
    v106 = v0[19];
    v107 = v0;
LABEL_34:
    v186 = v107[39];
    v187 = v107;
    v188 = v107[36];
    v189 = v107[32];
    v190 = v107[33];
    v191 = v107[29];
    v192 = v187[28];
    v193 = v187[25];
    v194 = v187[22];
    v195 = v187[19];
    v221 = v187[17];
    v231 = v187[16];
    v240 = v187[15];
    v249 = v187[14];
    v258 = v187[13];
    v277 = v187[10];
    v284 = v187[7];
    v105(v106, v266);

    v196 = v187[1];

    return v196(v280, v263);
  }

  v66 = v0 + 16;
  v65 = v0[16];
  sub_10025EBA8(v273 + v281, v65);
  v67 = v10(v65, v6);
  if (v67 != v12)
  {
    v127 = v67;
    v128 = enum case for Fence.TriggerPosition.outside(_:);
    v246 = *(v7 + 8);
    v246(*v66, v6);
    if (v127 != v128)
    {
      goto LABEL_3;
    }

    v265 = v1;
    v266 = v6;
    v130 = v0[14];
    v129 = v0[15];
    v132 = v0[11];
    v131 = v0[12];
    v133 = v0[9];
    v134 = v0[10];
    v135 = v0[8];
    v136 = v0[2];
    Fence.findee.getter();
    (*(v131 + 104))(v130, enum case for Fence.Participant.me(_:), v132);
    static Fence.Participant.== infix(_:_:)();
    v137 = *(v131 + 8);
    v137(v130, v132);
    v137(v129, v132);
    (*(v133 + 104))(v134, enum case for LocalizationUtility.Table.default(_:), v135);
    v138 = (v133 + 8);
    v139 = v0[52];
    v140 = v0[53];
    v210 = v0[40];
    v218 = v0[41];
    v123 = v0[38];
    v141 = v0[37];
    v228 = v141;
    v238 = v0[39];
    v142 = v0[10];
    v143 = v0[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*v138)(v142, v143);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v175 = swift_allocObject();
    *(v175 + 16) = xmmword_1004C0BD0;
    *(v175 + 56) = &type metadata for String;
    v176 = sub_1000588B8();
    *(v175 + 32) = v265;
    *(v175 + 40) = v278;
    *(v175 + 96) = &type metadata for String;
    *(v175 + 104) = v176;
    *(v175 + 64) = v176;
    *(v175 + 72) = v139;
    *(v175 + 80) = v140;
LABEL_31:
    *(v175 + 136) = &type metadata for String;
    *(v175 + 144) = v176;
    *(v175 + 112) = v210;
    *(v175 + 120) = v218;
    v280 = String.init(format:arguments:)();
    v263 = v177;

    (*(v123 + 8))(v238, v228);
    sub_100002CE0(v273 + v281, &qword_1005B0B00, &qword_1004D26A0);
    v106 = v0[19];
    v107 = v0;
    v105 = v246;
    goto LABEL_34;
  }

  v68 = 41;
  v69 = 53;
LABEL_12:
  v70 = *v66;
  v71 = v0[v68];
  v72 = v0[v69];
  v73 = v0[19];

  v74 = *(v7 + 8);
  v74(v70, v6);
  sub_100002CE0(v273 + v281, &qword_1005B0B00, &qword_1004D26A0);
  v74(v73, v6);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000A6F0(v75, qword_1005DFF88);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v285 = v79;
    *v78 = 136446210;
    *(v78 + 4) = sub_10000D01C(0xD00000000000004DLL, 0x80000001004E5FF0, &v285);
    _os_log_impl(&_mh_execute_header, v76, v77, "%{public}s Trying to trigger scheduled fence with same placement twice", v78, 0xCu);
    sub_100004984(v79);
  }

  v80 = v0[38];
  v81 = v0[39];
  v82 = v0[36];
  v83 = v0[37];
  v85 = v0[32];
  v84 = v0[33];
  v86 = v0[29];
  v209 = v0[28];
  v215 = v0[25];
  v225 = v0[22];
  v235 = v0[19];
  v244 = v0[17];
  v254 = v0[16];
  v261 = v0[15];
  v269 = v0[14];
  v275 = v0[13];
  v279 = v0[10];
  v283 = v0[7];
  sub_10005CF04();
  swift_allocError();
  *v87 = 6;
  swift_willThrow();
  (*(v80 + 8))(v81, v83);

  v88 = v0[1];

  return v88();
}

uint64_t sub_10025DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Fence.Schedule();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Fence.TriggerPosition();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Variant();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10025DDC8, 0, 0);
}

uint64_t sub_10025DDC8()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[2];
  Fence.variant.getter();
  v5 = (*(v3 + 88))(v1, v2);
  if (v5 == enum case for Fence.Variant.oneTime(_:))
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0 + 16;
    v9 = v0[12];
    v10 = v0[13];
  }

  else
  {
    if (v5 != enum case for Fence.Variant.recurring(_:))
    {
      if (v5 == enum case for Fence.Variant.scheduled(_:))
      {
        v27 = v0[13];
        v26 = v0[14];
        v28 = v0[12];
        v30 = v0[6];
        v29 = v0[7];
        v31 = v0[5];
        (*(v27 + 16))(v26, v0[17], v28);
        (*(v27 + 96))(v26, v28);
        (*(v30 + 32))(v29, v26, v31);
        v32 = swift_task_alloc();
        v0[20] = v32;
        *v32 = v0;
        v32[1] = sub_10025E888;
        v33 = v0[7];
        v34 = v0[3];
        v35 = v0[4];
        v36 = v0[2];

        return sub_10025A84C(v36, v33, v34, v35);
      }

LABEL_24:
      v42 = v0[17];
      v43 = v0[12];
      v44 = v0[13];
      v45 = v0[2];
      type metadata accessor for FenceServiceClient.Failure(0);
      sub_100260118(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
      swift_allocError();
      Fence.variant.getter();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v44 + 8))(v42, v43);
      goto LABEL_25;
    }

    v8 = v0 + 15;
    v7 = v0[15];
    v6 = v0[17];
    v9 = v0[12];
    v10 = v0[13];
  }

  (*(v10 + 16))(v7, v6, v9);
  (*(v10 + 96))(v7, v9);
  v11 = type metadata accessor for Fence.Trigger();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(v7, v11);
  if (v13 == enum case for Fence.Trigger.arriving(_:))
  {
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];
    v17 = v0[3];
    (*(v0[13] + 8))(v0[17], v0[12]);
    (*(v15 + 16))(v14, v17, v16);
    v18 = (*(v15 + 88))(v14, v16);
    if (v18 != enum case for Fence.TriggerPosition.inside(_:) && v18 != enum case for Fence.TriggerPosition.outside(_:))
    {
      if (v18 == enum case for Fence.TriggerPosition.undetermined(_:))
      {
        (*(v0[9] + 8))(v0[10], v0[8]);
        sub_10005CF04();
        swift_allocError();
        v20 = 5;
LABEL_15:
        *v19 = v20;
        swift_willThrow();
LABEL_25:
        v47 = v0[16];
        v46 = v0[17];
        v49 = v0[14];
        v48 = v0[15];
        v51 = v0[10];
        v50 = v0[11];
        v52 = v0[7];

        v53 = v0[1];

        return v53();
      }

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v38 = v0[10];
    (*(v0[9] + 96))(v38, v0[8]);

    v39 = swift_task_alloc();
    v0[19] = v39;
    *v39 = v0;
    v39[1] = sub_10025E69C;
    v41 = v0[2];
    v40 = v0[3];

    return sub_100259894(v41, v40);
  }

  if (v13 != enum case for Fence.Trigger.leaving(_:))
  {
    (*(v12 + 8))(*v8, v11);
    goto LABEL_24;
  }

  v21 = v0[11];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[3];
  (*(v0[13] + 8))(v0[17], v0[12]);
  (*(v23 + 16))(v21, v24, v22);
  v25 = (*(v23 + 88))(v21, v22);
  if (v25 != enum case for Fence.TriggerPosition.inside(_:) && v25 != enum case for Fence.TriggerPosition.outside(_:))
  {
    if (v25 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      (*(v0[9] + 8))(v0[11], v0[8]);
      sub_10005CF04();
      swift_allocError();
      v20 = 4;
      goto LABEL_15;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v54 = v0[11];
  (*(v0[9] + 96))(v54, v0[8]);

  v55 = swift_task_alloc();
  v0[18] = v55;
  *v55 = v0;
  v55[1] = sub_10025E4B0;
  v57 = v0[2];
  v56 = v0[3];

  return sub_100258BFC(v57, v56);
}

uint64_t sub_10025E4B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 144);
  v16 = *v2;

  v7 = v5[17];
  v8 = v5[16];
  v9 = v5[15];
  v10 = v5[14];
  v11 = v5[11];
  v12 = v5[10];
  v13 = v5[7];

  v14 = *(v16 + 8);

  return v14(a1, a2);
}

uint64_t sub_10025E69C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 152);
  v16 = *v2;

  v7 = v5[17];
  v8 = v5[16];
  v9 = v5[15];
  v10 = v5[14];
  v11 = v5[11];
  v12 = v5[10];
  v13 = v5[7];

  v14 = *(v16 + 8);

  return v14(a1, a2);
}

uint64_t sub_10025E888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v9 = sub_10025EAB8;
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;
    v9 = sub_10025E9BC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10025E9BC()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[7];

  v13 = v0[1];

  return v13(v5, v4);
}

uint64_t sub_10025EAB8()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10025EBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10025EC18(uint64_t a1)
{
  v2 = type metadata accessor for MessagingCapability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10004B564(&qword_1005B0B40, &qword_1004D26C8);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100260118(&qword_1005B0B48, &type metadata accessor for MessagingCapability);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100260118(&qword_1005B0B50, &type metadata accessor for MessagingCapability);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_10025EF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B04F0, &qword_1004D1E18);
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

Swift::Int sub_10025F0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0B38, &qword_1004D26C0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
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
        while (*(v18 + 8 * v14) != v10)
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
        *(v18 + 8 * v14) = v10;
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

uint64_t sub_10025F1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = a2;
  v4 = type metadata accessor for Fence.DaysOfWeek();
  v115 = *(v4 - 8);
  v116 = v4;
  v5 = *(v115 + 64);
  v6 = __chkstk_darwin(v4);
  v112 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v114 = &v101 - v8;
  v9 = type metadata accessor for Calendar();
  v113 = *(v9 - 8);
  v10 = *(v113 + 64);
  __chkstk_darwin(v9);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Fence.TimeOfDay();
  v110 = *(v12 - 8);
  v111 = v12;
  v13 = *(v110 + 64);
  v14 = __chkstk_darwin(v12);
  v108 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v109 = &v101 - v16;
  v119 = type metadata accessor for Fence.Schedule();
  v17 = *(v119 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v119);
  v118 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Fence.Variant();
  v20 = *(v125 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v125);
  v106 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v107 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v101 - v27;
  __chkstk_darwin(v26);
  v124 = &v101 - v29;
  v30 = type metadata accessor for LocalizationUtility.Table();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v31;
  v123 = v33;
  v121 = v36;
  if (a3)
  {
    v37 = a3;
  }

  else
  {
    v38 = v17;
    v39 = v20;
    v40 = v34;
    (*(v31 + 104))(v36, enum case for LocalizationUtility.Table.default(_:), v34);
    v126 = static LocalizationUtility.localizedString(key:table:)();
    v41 = v31;
    v37 = v42;
    v43 = v40;
    v20 = v39;
    v17 = v38;
    (*(v41 + 8))(v36, v43);
  }

  v120 = sub_100257FA4();
  v45 = v44;
  v46 = v124;
  Fence.variant.getter();
  v47 = v125;
  v48 = (*(v20 + 88))(v46, v125);
  if (v48 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v20 + 16))(v28, v46, v47);
    (*(v20 + 96))(v28, v47);
    v49 = type metadata accessor for Fence.Trigger();
    v50 = *(v49 - 8);
    v51 = (*(v50 + 88))(v28, v49);
    if (v51 == enum case for Fence.Trigger.arriving(_:) || v51 == enum case for Fence.Trigger.leaving(_:))
    {
LABEL_17:
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1004C2310;
      *(v69 + 32) = v126;
      *(v69 + 40) = v37;
      *(v69 + 48) = v120;
      *(v69 + 56) = v45;
LABEL_25:
      (*(v20 + 8))(v46, v47);
      v97 = v121;
      v96 = v122;
      v98 = v123;
      (*(v122 + 104))(v121, enum case for LocalizationUtility.Table.default(_:), v123);
      static LocalizationUtility.localizedString(key:table:)();

      (*(v96 + 8))(v97, v98);
      sub_10025854C(v69);

      v99 = String.init(format:arguments:)();

      return v99;
    }

    goto LABEL_26;
  }

  if (v48 == enum case for Fence.Variant.recurring(_:))
  {
    v28 = v107;
    (*(v20 + 16))(v107, v46, v47);
    (*(v20 + 96))(v28, v47);
    v49 = type metadata accessor for Fence.Trigger();
    v50 = *(v49 - 8);
    v52 = (*(v50 + 88))(v28, v49);
    if (v52 == enum case for Fence.Trigger.arriving(_:) || v52 == enum case for Fence.Trigger.leaving(_:))
    {
      goto LABEL_17;
    }

LABEL_26:
    (*(v50 + 8))(v28, v49);
    goto LABEL_27;
  }

  v107 = v9;
  v105 = v37;
  v103 = v45;
  if (v48 == enum case for Fence.Variant.scheduled(_:))
  {
    v53 = v106;
    (*(v20 + 16))(v106, v46, v47);
    (*(v20 + 96))(v53, v47);
    v104 = v17;
    v54 = v118;
    (*(v17 + 32))(v118, v53, v119);
    v55 = v109;
    Fence.Schedule.start.getter();
    v56 = v117;
    static Calendar.current.getter();
    v102 = sub_100258360(v56);
    v106 = v57;
    v113 = *(v113 + 8);
    (v113)(v56, v107);
    v58 = v111;
    v59 = *(v110 + 8);
    v59(v55, v111);
    Fence.Schedule.start.getter();
    v60 = v108;
    Fence.Schedule.end.getter();
    v61 = v58;
    LOBYTE(v58) = static Fence.TimeOfDay.== infix(_:_:)();
    v59(v60, v61);
    v59(v55, v61);
    if (v58)
    {
      v62 = v114;
      Fence.Schedule.daysOfWeek.getter();
      v63 = v112;
      static Fence.DaysOfWeek.all.getter();
      sub_100260118(&qword_1005B0B30, &type metadata accessor for Fence.DaysOfWeek);
      v64 = v116;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v65 = v54;
      v66 = *(v115 + 8);
      v66(v63, v64);
      v66(v62, v64);
      if (v128 == v127)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v67 = swift_allocObject();
        v68 = v65;
        v69 = v67;
        *(v67 + 16) = xmmword_1004C0BD0;
        v70 = v105;
        *(v67 + 32) = v126;
        *(v67 + 40) = v70;
        v71 = v103;
        *(v67 + 48) = v120;
        *(v67 + 56) = v71;
        v72 = v106;
        *(v67 + 64) = v102;
        *(v67 + 72) = v72;
      }

      else
      {
        Fence.Schedule.daysOfWeek.getter();
        v82 = v117;
        static Calendar.current.getter();
        v115 = sub_100057620(v82);
        v84 = v83;
        (v113)(v82, v107);
        v66(v62, v64);
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v85 = swift_allocObject();
        v68 = v65;
        v69 = v85;
        *(v85 + 16) = xmmword_1004C0BB0;
        v86 = v105;
        *(v85 + 32) = v126;
        *(v85 + 40) = v86;
        v87 = v103;
        *(v85 + 48) = v120;
        *(v85 + 56) = v87;
        v88 = v106;
        *(v85 + 64) = v102;
        *(v85 + 72) = v88;
        *(v85 + 80) = v115;
        *(v85 + 88) = v84;
      }

      v46 = v124;
      v47 = v125;
    }

    else
    {
      Fence.Schedule.end.getter();
      static Calendar.current.getter();
      v108 = sub_100258360(v56);
      v110 = v73;
      (v113)(v56, v107);
      v59(v55, v61);
      v74 = v114;
      Fence.Schedule.daysOfWeek.getter();
      v75 = v112;
      static Fence.DaysOfWeek.all.getter();
      sub_100260118(&qword_1005B0B30, &type metadata accessor for Fence.DaysOfWeek);
      v76 = v116;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v77 = *(v115 + 8);
      v77(v75, v76);
      v77(v74, v76);
      if (v130 == v129)
      {
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1004C0BB0;
        v78 = v105;
        *(v69 + 32) = v126;
        *(v69 + 40) = v78;
        v79 = v103;
        *(v69 + 48) = v120;
        *(v69 + 56) = v79;
        v80 = v106;
        *(v69 + 64) = v102;
        *(v69 + 72) = v80;
        v81 = v110;
        *(v69 + 80) = v108;
        *(v69 + 88) = v81;
      }

      else
      {
        Fence.Schedule.daysOfWeek.getter();
        static Calendar.current.getter();
        v89 = sub_100057620(v56);
        v91 = v90;
        (v113)(v56, v107);
        v77(v74, v76);
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1004C0BC0;
        v92 = v105;
        *(v69 + 32) = v126;
        *(v69 + 40) = v92;
        v93 = v103;
        *(v69 + 48) = v120;
        *(v69 + 56) = v93;
        v94 = v106;
        *(v69 + 64) = v102;
        *(v69 + 72) = v94;
        v95 = v110;
        *(v69 + 80) = v108;
        *(v69 + 88) = v95;
        *(v69 + 96) = v89;
        *(v69 + 104) = v91;
      }

      v46 = v124;
      v47 = v125;
      v68 = v118;
    }

    (*(v104 + 8))(v68, v119);
    goto LABEL_25;
  }

LABEL_27:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100260118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100260160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1002601D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0B58, &qword_1004D26D0);
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

BOOL sub_100260454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_1000094D0(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10026055C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1002605F4;

  return sub_10026FAF8(a2);
}

uint64_t sub_1002605F4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100260898, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[6] = v5;
    *v5 = v3;
    v5[1] = sub_100260764;
    v6 = v3[3];
    v7 = v3[2];

    return sub_10027C184(v7);
  }
}

uint64_t sub_100260764()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100260A8C, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100260898()
{
  v12 = v0;
  v1 = *(v0 + 40);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E6560, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100260A8C()
{
  v12 = v0;
  v1 = *(v0 + 56);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E6560, &v11);
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v5, 0x16u);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v7);
  }

  swift_willThrow();
  v9 = *(v0 + 8);

  return v9();
}

void *sub_100260C80(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Fence();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v34 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v31 = &v27 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = *(v14 + 72);
  v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a3 + v28;
  v32 = (v14 + 32);
  v33 = (v14 + 48);
  v19 = &_swiftEmptyArrayStorage;
  v29 = v10;
  v30 = a1;
  v27 = v17;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_100002CE0(v9, &qword_1005B09D0, &unk_1004D2380);
    }

    else
    {
      v20 = v31;
      v21 = *v32;
      (*v32)(v31, v9, v10);
      v21(v34, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1001FD464(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_1001FD464(v22 > 1, v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      v24 = v27;
      v25 = v19 + v28 + v23 * v27;
      v10 = v29;
      v21(v25, v34, v29);
      v17 = v24;
      a1 = v30;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_100260F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v6 = type metadata accessor for PersonHandle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for Fence();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v65 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v54 = &v46 - v18;
  v53 = *(a1 + 16);
  if (v53)
  {
    v48 = a3;
    v49 = v3;
    v19 = 0;
    v47 = v14;
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v20 = v22;
    v72 = (v7 + 8);
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = (v21 - 8);
    v25 = *(v21 + 56);
    v26 = v54;
    v61 = v7 + 16;
    v62 = v21;
    v56 = v7;
    v57 = v13;
    v64 = v12;
    v70 = v22;
    v60 = (v21 - 8);
    v52 = v23;
    v51 = v25;
    while (1)
    {
      v20(v26, v23 + v25 * v19, v13);
      result = Fence.others.getter();
      v28 = *(result + 16);
      v55 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69 = v28;
      if (v28)
      {
        break;
      }

      v44 = *v24;
LABEL_15:
      ++v19;
      v44(v26, v13);
      v23 = v52;
      v20 = v70;
      v25 = v51;
      if (v19 == v53)
      {
        v45 = 1;
        a3 = v48;
        v14 = v47;
        return (*(v14 + 56))(a3, v45, 1, v13);
      }
    }

    v50 = v19;
    v29 = 0;
    v59 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = result + v59;
    v68 = result;
    v30 = v12;
    while (v29 < *(result + 16))
    {
      v31 = v67 + *(v7 + 72) * v29;
      v32 = v7;
      v33 = v13;
      v34 = *(v32 + 16);
      v34(v30, v31, v6);
      v71 = PersonHandle.id.getter();
      v73 = v35;
      v36 = v65;
      v70(v65, v66, v33);
      v37 = Fence.others.getter();
      v63 = *v24;
      v63(v36, v33);
      if (*(v37 + 16))
      {
        v38 = v58;
        v34(v58, v37 + v59, v6);

        v39 = PersonHandle.id.getter();
        v41 = v40;
        v42 = *v72;
        (*v72)(v38, v6);
        if (v71 == v39 && v73 == v41)
        {

          v42(v64, v6);
          v13 = v57;
LABEL_19:

          v14 = v47;
          a3 = v48;
          (*(v47 + 32))(v48, v54, v13);
          v45 = 0;
          return (*(v14 + 56))(a3, v45, 1, v13);
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v30 = v64;
        v42(v64, v6);
        v7 = v56;
        v13 = v57;
        if (v43)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v30 = v64;
        (*v72)(v64, v6);
        v13 = v33;
        v7 = v32;
      }

      ++v29;
      result = v68;
      v24 = v60;
      if (v69 == v29)
      {
        v12 = v30;

        v26 = v54;
        v19 = v50;
        v44 = v63;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = 1;
    return (*(v14 + 56))(a3, v45, 1, v13);
  }

  return result;
}

uint64_t sub_100261468(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = *v2;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[51] = swift_task_alloc();
  v5 = type metadata accessor for Fence.AcceptanceStatus();
  v3[52] = v5;
  v6 = *(v5 - 8);
  v3[53] = v6;
  v7 = *(v6 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B0B60, &qword_1004D26E8);
  v3[56] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A9148, &qword_1004D2370) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v11 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v3[61] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v13 = type metadata accessor for PersonHandle();
  v3[63] = v13;
  v14 = *(v13 - 8);
  v3[64] = v14;
  v15 = *(v14 + 64) + 15;
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v16 = type metadata accessor for Date();
  v3[67] = v16;
  v17 = *(v16 - 8);
  v3[68] = v17;
  v18 = *(v17 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v20 = type metadata accessor for Fence.Participant();
  v3[78] = v20;
  v21 = *(v20 - 8);
  v3[79] = v21;
  v22 = *(v21 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v23 = type metadata accessor for Fence();
  v3[82] = v23;
  v24 = *(v23 - 8);
  v3[83] = v24;
  v3[84] = *(v24 + 64);
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v25 = type metadata accessor for Fence.MonitorRegion();
  v3[90] = v25;
  v26 = *(v25 - 8);
  v3[91] = v26;
  v27 = *(v26 + 64) + 15;
  v3[92] = swift_task_alloc();
  v28 = type metadata accessor for Fence.ID();
  v3[93] = v28;
  v29 = *(v28 - 8);
  v3[94] = v29;
  v30 = *(v29 + 64) + 15;
  v3[95] = swift_task_alloc();
  v31 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v32 = async function pointer to daemon.getter[1];
  v33 = swift_task_alloc();
  v3[102] = v33;
  *v33 = v3;
  v33[1] = sub_100261A08;

  return daemon.getter();
}

uint64_t sub_100261A08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 816);
  v12 = *v1;
  *(v3 + 824) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 832) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100261BE4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100261BE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v10 = *v2;
  v3[105] = a1;
  v3[106] = v1;

  if (v1)
  {
    v5 = v3[49];
    v6 = sub_100265058;
  }

  else
  {
    v7 = v3[103];
    v8 = v3[49];

    v6 = sub_100261D10;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100261D10()
{
  v1 = v0[95];
  v2 = v0[48];
  Fence.id.getter();
  v3 = swift_task_alloc();
  v0[107] = v3;
  *v3 = v0;
  v3[1] = sub_100261DB8;
  v4 = v0[105];
  v5 = v0[101];
  v6 = v0[95];

  return sub_10020ED50(v5, v6);
}

uint64_t sub_100261DB8()
{
  v1 = *v0;
  v2 = *(*v0 + 856);
  v3 = *(*v0 + 760);
  v4 = *(*v0 + 752);
  v5 = *(*v0 + 744);
  v6 = *(*v0 + 392);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 864) = v7;
  *(v1 + 872) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return _swift_task_switch(sub_100261F3C, v6, 0);
}

uint64_t sub_100261F3C()
{
  v202 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 384);
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v5 = *(v2 + 8);
  *(v0 + 880) = v5;
  *(v0 + 888) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (static Fence.isAllowed(at:)())
  {
    v6 = *(v0 + 808);
    v7 = *(v0 + 704);
    v8 = *(v0 + 664);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    v14 = *(v0 + 384);
    v15 = *(v8 + 48);
    *(v0 + 896) = v15;
    *(v0 + 904) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v16 = v15(v6, 1, v9);
    *(v0 + 1008) = v16;
    v17 = *(v8 + 16);
    *(v0 + 912) = v17;
    *(v0 + 920) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v7, v14, v9);
    Fence.finder.getter();
    (*(v12 + 104))(v11, enum case for Fence.Participant.me(_:), v13);
    LOBYTE(v7) = static Fence.Participant.== infix(_:_:)();
    v18 = *(v12 + 8);
    v18(v11, v13);
    v18(v10, v13);
    if (v7)
    {
      v19 = *(v0 + 704);
      v20 = *(v0 + 616);
      v21 = *(v0 + 544);
      v22 = *(v0 + 536);
      Fence.muteEndDate.getter();
      v23 = *(v21 + 48);
      *(v0 + 928) = v23;
      *(v0 + 936) = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      LODWORD(v19) = v23(v20, 1, v22);
      sub_100002CE0(v20, &unk_1005AE5B0, &qword_1004C32F0);
      if (v19 == 1 && v16 == 1)
      {
        v24 = swift_task_alloc();
        *(v0 + 944) = v24;
        *v24 = v0;
        v24[1] = sub_1002630B8;
        v25 = *(v0 + 840);

        return sub_100006424();
      }
    }

    v53 = *(v0 + 704);
    v54 = Fence.others.getter();
    if (!*(v54 + 16))
    {

LABEL_31:
      v106 = *(v0 + 888);
      v107 = *(v0 + 880);
      v108 = *(v0 + 736);
      v109 = *(v0 + 720);
      v110 = *(v0 + 704);
      Fence.region.getter();
      Fence.MonitorRegion.radius.getter();
      v112 = v111;
      v107(v108, v109);
      static Fence.MonitorRegion.minimumRadius.getter();
      if (v112 < v113)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        sub_10000A6F0(v114, qword_1005DFF88);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v186 = *(v0 + 880);
          v189 = *(v0 + 888);
          v195 = *(v0 + 864);
          v199 = *(v0 + 872);
          v117 = *(v0 + 760);
          v192 = *(v0 + 744);
          v118 = *(v0 + 736);
          v183 = *(v0 + 720);
          v119 = *(v0 + 704);
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v201[0] = v121;
          *v120 = 134349314;
          swift_beginAccess();
          Fence.region.getter();
          swift_endAccess();
          Fence.MonitorRegion.radius.getter();
          v123 = v122;
          v186(v118, v183);
          *(v120 + 4) = v123;
          *(v120 + 12) = 2082;
          Fence.id.getter();
          sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          v195(v117, v192);
          v127 = sub_10000D01C(v124, v126, v201);

          *(v120 + 14) = v127;
          _os_log_impl(&_mh_execute_header, v115, v116, "    Fence radius %{public}f for %{public}s capped to min", v120, 0x16u);
          sub_100004984(v121);
        }

        v128 = *(v0 + 704);
        static Fence.MonitorRegion.minimumRadius.getter();
        v130 = v129;
        swift_beginAccess();
        v131 = Fence.region.modify();
        Fence.MonitorRegion.updateRadius(_:)(v130);
        v131(v0 + 176, 0);
        swift_endAccess();
      }

      v132 = *(v0 + 888);
      v133 = *(v0 + 880);
      v134 = *(v0 + 736);
      v135 = *(v0 + 720);
      v136 = *(v0 + 704);
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v138 = v137;
      v133(v134, v135);
      static Fence.MonitorRegion.maximumRadius.getter();
      if (v139 < v138)
      {
        if (qword_1005A80E8 != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        sub_10000A6F0(v140, qword_1005DFF88);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v187 = *(v0 + 880);
          v190 = *(v0 + 888);
          v196 = *(v0 + 864);
          v200 = *(v0 + 872);
          v143 = *(v0 + 760);
          v193 = *(v0 + 744);
          v144 = *(v0 + 736);
          v184 = *(v0 + 720);
          v145 = *(v0 + 704);
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v201[0] = v147;
          *v146 = 134349314;
          swift_beginAccess();
          Fence.region.getter();
          swift_endAccess();
          Fence.MonitorRegion.radius.getter();
          v149 = v148;
          v187(v144, v184);
          *(v146 + 4) = v149;
          *(v146 + 12) = 2082;
          Fence.id.getter();
          sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
          v150 = dispatch thunk of CustomStringConvertible.description.getter();
          v152 = v151;
          v196(v143, v193);
          v153 = sub_10000D01C(v150, v152, v201);

          *(v146 + 14) = v153;
          _os_log_impl(&_mh_execute_header, v141, v142, "    Fence radius %{public}f for %{public}s capped to max", v146, 0x16u);
          sub_100004984(v147);
        }

        v154 = *(v0 + 704);
        static Fence.MonitorRegion.maximumRadius.getter();
        v156 = v155;
        swift_beginAccess();
        v157 = Fence.region.modify();
        Fence.MonitorRegion.updateRadius(_:)(v156);
        v157(v0 + 144, 0);
        swift_endAccess();
      }

      v158 = *(v0 + 920);
      (*(v0 + 912))(*(v0 + 688), *(v0 + 704), *(v0 + 656));
      v159 = swift_task_alloc();
      *(v0 + 976) = v159;
      *v159 = v0;
      v159[1] = sub_10026467C;
      v160 = *(v0 + 696);
      v161 = *(v0 + 688);
      v162 = *(v0 + 392);

      return sub_100269ECC(v160, v161);
    }

    v197 = *(v0 + 904);
    v55 = *(v0 + 896);
    v56 = *(v0 + 808);
    v57 = *(v0 + 784);
    v58 = *(v0 + 656);
    v59 = *(v0 + 528);
    v60 = *(v0 + 520);
    v61 = *(v0 + 504);
    v62 = *(v0 + 512);
    (*(v62 + 16))(v60, v54 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v61);

    (*(v62 + 32))(v59, v60, v61);
    sub_100005F04(v56, v57, &qword_1005B09D0, &unk_1004D2380);
    v63 = v55(v57, 1, v58);
    v64 = *(v0 + 784);
    if (v63 == 1)
    {
      v65 = *(v0 + 592);
      v66 = *(v0 + 544);
      v67 = *(v0 + 536);
      sub_100002CE0(*(v0 + 784), &qword_1005B09D0, &unk_1004D2380);
      (*(v66 + 56))(v65, 1, 1, v67);
    }

    else
    {
      v68 = *(v0 + 664);
      v69 = *(v0 + 656);
      v70 = *(v0 + 592);
      Fence.muteEndDate.getter();
      (*(v68 + 8))(v64, v69);
    }

    v71 = *(v0 + 704);
    v72 = *(v0 + 592);
    v73 = *(v0 + 584);
    v74 = *(v0 + 544);
    v75 = *(v0 + 536);
    v77 = *(v0 + 488);
    v76 = *(v0 + 496);
    Fence.muteEndDate.getter();
    v78 = *(v77 + 48);
    sub_100005F04(v72, v76, &unk_1005AE5B0, &qword_1004C32F0);
    sub_100005F04(v73, v76 + v78, &unk_1005AE5B0, &qword_1004C32F0);
    v79 = *(v74 + 48);
    v80 = v79(v76, 1, v75);
    v81 = *(v0 + 536);
    if (v80 == 1)
    {
      v82 = *(v0 + 592);
      sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v82, &unk_1005AE5B0, &qword_1004C32F0);
      if (v79(v76 + v78, 1, v81) == 1)
      {
        sub_100002CE0(*(v0 + 496), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_30:
        (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
        goto LABEL_31;
      }
    }

    else
    {
      sub_100005F04(*(v0 + 496), *(v0 + 576), &unk_1005AE5B0, &qword_1004C32F0);
      v83 = v79(v76 + v78, 1, v81);
      v84 = *(v0 + 592);
      v85 = *(v0 + 584);
      v86 = *(v0 + 576);
      if (v83 != 1)
      {
        v101 = *(v0 + 552);
        v102 = *(v0 + 544);
        v103 = *(v0 + 536);
        v198 = *(v0 + 496);
        (*(v102 + 32))(v101, v76 + v78, v103);
        sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date);
        v104 = dispatch thunk of static Equatable.== infix(_:_:)();
        v105 = *(v102 + 8);
        v105(v101, v103);
        sub_100002CE0(v85, &unk_1005AE5B0, &qword_1004C32F0);
        sub_100002CE0(v84, &unk_1005AE5B0, &qword_1004C32F0);
        v105(v86, v103);
        sub_100002CE0(v198, &unk_1005AE5B0, &qword_1004C32F0);
        if (v104)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      v87 = *(v0 + 544);
      v88 = *(v0 + 536);
      sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
      sub_100002CE0(v84, &unk_1005AE5B0, &qword_1004C32F0);
      (*(v87 + 8))(v86, v88);
    }

    sub_100002CE0(*(v0 + 496), &qword_1005AAE00, &qword_1004C4A18);
LABEL_26:
    v89 = *(v0 + 920);
    v90 = *(v0 + 912);
    v91 = *(v0 + 776);
    v92 = *(v0 + 704);
    v93 = *(v0 + 664);
    v94 = *(v0 + 656);
    v95 = *(v0 + 568);
    Fence.muteEndDate.getter();
    v90(v91, v92, v94);
    (*(v93 + 56))(v91, 0, 1, v94);
    v96 = swift_task_alloc();
    *(v0 + 960) = v96;
    *v96 = v0;
    v96[1] = sub_100263EC8;
    v97 = *(v0 + 776);
    v98 = *(v0 + 568);
    v99 = *(v0 + 528);
    v100 = *(v0 + 392);

    return sub_1002695FC(v99, v98, v97);
  }

  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C2310;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001004E64B0;
  *(inited + 80) = 11;
  *(inited + 112) = &type metadata for Bool;
  *(inited + 120) = &off_10058C3C8;
  *(inited + 88) = 0;
  v28 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
  swift_arrayDestroy();
  v29 = sub_10004C68C(2u, v28);
  v31 = v30;
  v33 = v32;

  sub_10001157C(v29, v31, v33);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A6F0(v34, qword_1005DFF88);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v201[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_10000D01C(0x6E65662865766173, 0xEC000000293A6563, v201);
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s: Fence's region is not allowed!", v37, 0xCu);
    sub_100004984(v38);
  }

  v39 = *(v0 + 840);
  v40 = *(v0 + 808);
  sub_10005CF04();
  swift_allocError();
  *v41 = 7;
  swift_willThrow();

  sub_100002CE0(v40, &qword_1005B09D0, &unk_1004D2380);
  v42 = *(v0 + 808);
  v43 = *(v0 + 800);
  v44 = *(v0 + 792);
  v45 = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v48 = *(v0 + 760);
  v49 = *(v0 + 736);
  v50 = *(v0 + 712);
  v51 = *(v0 + 704);
  v163 = *(v0 + 696);
  v164 = *(v0 + 688);
  v165 = *(v0 + 680);
  v166 = *(v0 + 648);
  v167 = *(v0 + 640);
  v168 = *(v0 + 616);
  v169 = *(v0 + 608);
  v170 = *(v0 + 600);
  v171 = *(v0 + 592);
  v172 = *(v0 + 584);
  v173 = *(v0 + 576);
  v174 = *(v0 + 568);
  v175 = *(v0 + 560);
  v176 = *(v0 + 552);
  v177 = *(v0 + 528);
  v178 = *(v0 + 520);
  v179 = *(v0 + 496);
  v180 = *(v0 + 480);
  v181 = *(v0 + 472);
  v182 = *(v0 + 464);
  v185 = *(v0 + 456);
  v188 = *(v0 + 440);
  v191 = *(v0 + 432);
  v194 = *(v0 + 408);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1002630B8(uint64_t a1)
{
  v2 = *(*v1 + 944);
  v3 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 952) = a1;

  return _swift_task_switch(sub_1002631D0, v3, 0);
}

uint64_t sub_1002631D0()
{
  v154 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 848);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 656);
  sub_100260F54(*(v0 + 952), *(v0 + 704), v4);

  sub_100005F04(v4, v5, &qword_1005B09D0, &unk_1004D2380);
  if (v2(v5, 1, v6) == 1)
  {
    v7 = *(v0 + 792);
    v8 = *(v0 + 608);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    sub_100002CE0(*(v0 + 800), &qword_1005B09D0, &unk_1004D2380);
    sub_100002CE0(v7, &qword_1005B09D0, &unk_1004D2380);
    (*(v9 + 56))(v8, 1, 1, v10);
LABEL_5:
    v20 = *(v0 + 608);
    v21 = &unk_1005AE5B0;
    v22 = &qword_1004C32F0;
    goto LABEL_7;
  }

  v11 = *(v0 + 936);
  v12 = *(v0 + 928);
  v13 = *(v0 + 792);
  v14 = *(v0 + 664);
  v15 = *(v0 + 656);
  v16 = *(v0 + 608);
  v17 = *(v0 + 536);
  Fence.muteEndDate.getter();
  (*(v14 + 8))(v13, v15);
  v18 = v12(v16, 1, v17);
  v19 = *(v0 + 800);
  if (v18 == 1)
  {
    sub_100002CE0(*(v0 + 800), &qword_1005B09D0, &unk_1004D2380);
    goto LABEL_5;
  }

  v23 = *(v0 + 704);
  v24 = *(v0 + 600);
  v25 = *(v0 + 560);
  v26 = *(v0 + 544);
  v27 = *(v0 + 536);
  (*(v26 + 32))(v25, *(v0 + 608), v27);
  (*(v26 + 16))(v24, v25, v27);
  (*(v26 + 56))(v24, 0, 1, v27);
  Fence.update(muteEndDate:)();
  sub_100002CE0(v24, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v26 + 8))(v25, v27);
  v21 = &qword_1005B09D0;
  v22 = &unk_1004D2380;
  v20 = v19;
LABEL_7:
  sub_100002CE0(v20, v21, v22);
  v28 = *(v0 + 704);
  v29 = Fence.others.getter();
  if (!*(v29 + 16))
  {

LABEL_23:
    v82 = *(v0 + 888);
    v83 = *(v0 + 880);
    v84 = *(v0 + 736);
    v85 = *(v0 + 720);
    v86 = *(v0 + 704);
    Fence.region.getter();
    Fence.MonitorRegion.radius.getter();
    v88 = v87;
    v83(v84, v85);
    static Fence.MonitorRegion.minimumRadius.getter();
    if (v88 < v89)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_10000A6F0(v90, qword_1005DFF88);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v141 = *(v0 + 880);
        v143 = *(v0 + 888);
        v147 = *(v0 + 864);
        v151 = *(v0 + 872);
        v93 = *(v0 + 760);
        v145 = *(v0 + 744);
        v94 = *(v0 + 736);
        v139 = *(v0 + 720);
        v95 = *(v0 + 704);
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v153[0] = v97;
        *v96 = 134349314;
        swift_beginAccess();
        Fence.region.getter();
        swift_endAccess();
        Fence.MonitorRegion.radius.getter();
        v99 = v98;
        v141(v94, v139);
        *(v96 + 4) = v99;
        *(v96 + 12) = 2082;
        Fence.id.getter();
        sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v147(v93, v145);
        v103 = sub_10000D01C(v100, v102, v153);

        *(v96 + 14) = v103;
        _os_log_impl(&_mh_execute_header, v91, v92, "    Fence radius %{public}f for %{public}s capped to min", v96, 0x16u);
        sub_100004984(v97);
      }

      v104 = *(v0 + 704);
      static Fence.MonitorRegion.minimumRadius.getter();
      v106 = v105;
      swift_beginAccess();
      v107 = Fence.region.modify();
      Fence.MonitorRegion.updateRadius(_:)(v106);
      v107(v0 + 176, 0);
      swift_endAccess();
    }

    v108 = *(v0 + 888);
    v109 = *(v0 + 880);
    v110 = *(v0 + 736);
    v111 = *(v0 + 720);
    v112 = *(v0 + 704);
    swift_beginAccess();
    Fence.region.getter();
    swift_endAccess();
    Fence.MonitorRegion.radius.getter();
    v114 = v113;
    v109(v110, v111);
    static Fence.MonitorRegion.maximumRadius.getter();
    if (v115 < v114)
    {
      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      sub_10000A6F0(v116, qword_1005DFF88);
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v117, v118))
      {
        v142 = *(v0 + 880);
        v144 = *(v0 + 888);
        v148 = *(v0 + 864);
        v152 = *(v0 + 872);
        v119 = *(v0 + 760);
        v146 = *(v0 + 744);
        v120 = *(v0 + 736);
        v140 = *(v0 + 720);
        v121 = *(v0 + 704);
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v153[0] = v123;
        *v122 = 134349314;
        swift_beginAccess();
        Fence.region.getter();
        swift_endAccess();
        Fence.MonitorRegion.radius.getter();
        v125 = v124;
        v142(v120, v140);
        *(v122 + 4) = v125;
        *(v122 + 12) = 2082;
        Fence.id.getter();
        sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
        v126 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v127;
        v148(v119, v146);
        v129 = sub_10000D01C(v126, v128, v153);

        *(v122 + 14) = v129;
        _os_log_impl(&_mh_execute_header, v117, v118, "    Fence radius %{public}f for %{public}s capped to max", v122, 0x16u);
        sub_100004984(v123);
      }

      v130 = *(v0 + 704);
      static Fence.MonitorRegion.maximumRadius.getter();
      v132 = v131;
      swift_beginAccess();
      v133 = Fence.region.modify();
      Fence.MonitorRegion.updateRadius(_:)(v132);
      v133(v0 + 144, 0);
      swift_endAccess();
    }

    v134 = *(v0 + 920);
    (*(v0 + 912))(*(v0 + 688), *(v0 + 704), *(v0 + 656));
    v135 = swift_task_alloc();
    *(v0 + 976) = v135;
    *v135 = v0;
    v135[1] = sub_10026467C;
    v136 = *(v0 + 696);
    v137 = *(v0 + 688);
    v138 = *(v0 + 392);

    return sub_100269ECC(v136, v137);
  }

  v149 = *(v0 + 904);
  v30 = *(v0 + 896);
  v31 = *(v0 + 808);
  v32 = *(v0 + 784);
  v33 = *(v0 + 656);
  v34 = *(v0 + 528);
  v35 = *(v0 + 520);
  v36 = *(v0 + 504);
  v37 = *(v0 + 512);
  (*(v37 + 16))(v35, v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v36);

  (*(v37 + 32))(v34, v35, v36);
  sub_100005F04(v31, v32, &qword_1005B09D0, &unk_1004D2380);
  v38 = v30(v32, 1, v33);
  v39 = *(v0 + 784);
  if (v38 == 1)
  {
    v40 = *(v0 + 592);
    v41 = *(v0 + 544);
    v42 = *(v0 + 536);
    sub_100002CE0(*(v0 + 784), &qword_1005B09D0, &unk_1004D2380);
    (*(v41 + 56))(v40, 1, 1, v42);
  }

  else
  {
    v43 = *(v0 + 664);
    v44 = *(v0 + 656);
    v45 = *(v0 + 592);
    Fence.muteEndDate.getter();
    (*(v43 + 8))(v39, v44);
  }

  v46 = *(v0 + 704);
  v47 = *(v0 + 592);
  v48 = *(v0 + 584);
  v49 = *(v0 + 544);
  v50 = *(v0 + 536);
  v52 = *(v0 + 488);
  v51 = *(v0 + 496);
  Fence.muteEndDate.getter();
  v53 = *(v52 + 48);
  sub_100005F04(v47, v51, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v48, v51 + v53, &unk_1005AE5B0, &qword_1004C32F0);
  v54 = *(v49 + 48);
  v55 = v54(v51, 1, v50);
  v56 = *(v0 + 536);
  if (v55 == 1)
  {
    v57 = *(v0 + 592);
    sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v57, &unk_1005AE5B0, &qword_1004C32F0);
    if (v54(v51 + v53, 1, v56) == 1)
    {
      sub_100002CE0(*(v0 + 496), &unk_1005AE5B0, &qword_1004C32F0);
LABEL_22:
      (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  sub_100005F04(*(v0 + 496), *(v0 + 576), &unk_1005AE5B0, &qword_1004C32F0);
  v58 = v54(v51 + v53, 1, v56);
  v59 = *(v0 + 592);
  v60 = *(v0 + 584);
  v61 = *(v0 + 576);
  if (v58 == 1)
  {
    v62 = *(v0 + 544);
    v63 = *(v0 + 536);
    sub_100002CE0(*(v0 + 584), &unk_1005AE5B0, &qword_1004C32F0);
    sub_100002CE0(v59, &unk_1005AE5B0, &qword_1004C32F0);
    (*(v62 + 8))(v61, v63);
LABEL_17:
    sub_100002CE0(*(v0 + 496), &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_18;
  }

  v77 = *(v0 + 552);
  v78 = *(v0 + 544);
  v79 = *(v0 + 536);
  v150 = *(v0 + 496);
  (*(v78 + 32))(v77, v51 + v53, v79);
  sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date);
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = *(v78 + 8);
  v81(v77, v79);
  sub_100002CE0(v60, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v59, &unk_1005AE5B0, &qword_1004C32F0);
  v81(v61, v79);
  sub_100002CE0(v150, &unk_1005AE5B0, &qword_1004C32F0);
  if (v80)
  {
    goto LABEL_22;
  }

LABEL_18:
  v64 = *(v0 + 920);
  v65 = *(v0 + 912);
  v66 = *(v0 + 776);
  v67 = *(v0 + 704);
  v68 = *(v0 + 664);
  v69 = *(v0 + 656);
  v70 = *(v0 + 568);
  Fence.muteEndDate.getter();
  v65(v66, v67, v69);
  (*(v68 + 56))(v66, 0, 1, v69);
  v71 = swift_task_alloc();
  *(v0 + 960) = v71;
  *v71 = v0;
  v71[1] = sub_100263EC8;
  v72 = *(v0 + 776);
  v73 = *(v0 + 568);
  v74 = *(v0 + 528);
  v75 = *(v0 + 392);

  return sub_1002695FC(v74, v73, v72);
}

uint64_t sub_100263EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *v1;
  *(*v1 + 968) = v0;

  v5 = v2[97];
  v6 = v2[71];
  v7 = v2[49];
  sub_100002CE0(v5, &qword_1005B09D0, &unk_1004D2380);
  sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
  if (v0)
  {
    v8 = sub_10026529C;
  }

  else
  {
    v8 = sub_10026404C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10026404C()
{
  v72 = v0;
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 736);
  v4 = *(v0 + 720);
  v5 = *(v0 + 704);
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v7 = v6;
  v2(v3, v4);
  static Fence.MonitorRegion.minimumRadius.getter();
  if (v7 < v8)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFF88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v61 = *(v0 + 880);
      v63 = *(v0 + 888);
      v67 = *(v0 + 864);
      v69 = *(v0 + 872);
      v12 = *(v0 + 760);
      v65 = *(v0 + 744);
      v13 = *(v0 + 736);
      v59 = *(v0 + 720);
      v14 = *(v0 + 704);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v71 = v16;
      *v15 = 134349314;
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v18 = v17;
      v61(v13, v59);
      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      Fence.id.getter();
      sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v67(v12, v65);
      v22 = sub_10000D01C(v19, v21, &v71);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "    Fence radius %{public}f for %{public}s capped to min", v15, 0x16u);
      sub_100004984(v16);
    }

    v23 = *(v0 + 704);
    static Fence.MonitorRegion.minimumRadius.getter();
    v25 = v24;
    swift_beginAccess();
    v26 = Fence.region.modify();
    Fence.MonitorRegion.updateRadius(_:)(v25);
    v26(v0 + 176, 0);
    swift_endAccess();
  }

  v27 = *(v0 + 888);
  v28 = *(v0 + 880);
  v29 = *(v0 + 736);
  v30 = *(v0 + 720);
  v31 = *(v0 + 704);
  swift_beginAccess();
  Fence.region.getter();
  swift_endAccess();
  Fence.MonitorRegion.radius.getter();
  v33 = v32;
  v28(v29, v30);
  static Fence.MonitorRegion.maximumRadius.getter();
  if (v34 < v33)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFF88);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v62 = *(v0 + 880);
      v64 = *(v0 + 888);
      v68 = *(v0 + 864);
      v70 = *(v0 + 872);
      v38 = *(v0 + 760);
      v66 = *(v0 + 744);
      v39 = *(v0 + 736);
      v60 = *(v0 + 720);
      v40 = *(v0 + 704);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v71 = v42;
      *v41 = 134349314;
      swift_beginAccess();
      Fence.region.getter();
      swift_endAccess();
      Fence.MonitorRegion.radius.getter();
      v44 = v43;
      v62(v39, v60);
      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      Fence.id.getter();
      sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v68(v38, v66);
      v48 = sub_10000D01C(v45, v47, &v71);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v36, v37, "    Fence radius %{public}f for %{public}s capped to max", v41, 0x16u);
      sub_100004984(v42);
    }

    v49 = *(v0 + 704);
    static Fence.MonitorRegion.maximumRadius.getter();
    v51 = v50;
    swift_beginAccess();
    v52 = Fence.region.modify();
    Fence.MonitorRegion.updateRadius(_:)(v51);
    v52(v0 + 144, 0);
    swift_endAccess();
  }

  v53 = *(v0 + 920);
  (*(v0 + 912))(*(v0 + 688), *(v0 + 704), *(v0 + 656));
  v54 = swift_task_alloc();
  *(v0 + 976) = v54;
  *v54 = v0;
  v54[1] = sub_10026467C;
  v55 = *(v0 + 696);
  v56 = *(v0 + 688);
  v57 = *(v0 + 392);

  return sub_100269ECC(v55, v56);
}

uint64_t sub_10026467C()
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *v1;
  v2[123] = v0;

  v5 = v2[86];
  v6 = v2[83];
  v7 = v2[82];
  v8 = v2[49];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v5, v7);
    v12 = sub_1002655E8;
  }

  else
  {
    v2[124] = v10;
    v2[125] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);
    v12 = sub_100264814;
  }

  return _swift_task_switch(v12, v8, 0);
}

uint64_t sub_100264814()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 808);
  v4 = *(v0 + 768);
  v5 = *(v0 + 656);
  v103 = *(*(v0 + 664) + 32);
  v103(*(v0 + 712), *(v0 + 696), v5);
  sub_100005F04(v3, v4, &qword_1005B09D0, &unk_1004D2380);
  if (v2(v4, 1, v5) == 1)
  {
    sub_100002CE0(*(v0 + 768), &qword_1005B09D0, &unk_1004D2380);
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 1000);
    v8 = *(v0 + 992);
    v9 = *(v0 + 768);
    v10 = *(v0 + 656);
    v11 = *(v0 + 480);
    Fence.acceptanceStatus.getter();
    v8(v9, v10);
    v6 = 0;
  }

  v13 = *(v0 + 472);
  v12 = *(v0 + 480);
  v15 = *(v0 + 448);
  v14 = *(v0 + 456);
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);
  v18 = v17[7];
  v18(v12, v6, 1, v16);
  v100 = enum case for Fence.AcceptanceStatus.accepted(_:);
  v98 = v17[13];
  v98(v13);
  v18(v13, 0, 1, v16);
  v19 = *(v15 + 48);
  sub_100005F04(v12, v14, &qword_1005A9148, &qword_1004D2370);
  sub_100005F04(v13, v14 + v19, &qword_1005A9148, &qword_1004D2370);
  v20 = v17[6];
  if (v20(v14, 1, v16) == 1)
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 416);
    sub_100002CE0(*(v0 + 472), &qword_1005A9148, &qword_1004D2370);
    sub_100002CE0(v21, &qword_1005A9148, &qword_1004D2370);
    if (v20(v14 + v19, 1, v22) == 1)
    {
      sub_100002CE0(*(v0 + 456), &qword_1005A9148, &qword_1004D2370);
      goto LABEL_13;
    }
  }

  else
  {
    v23 = *(v0 + 416);
    sub_100005F04(*(v0 + 456), *(v0 + 464), &qword_1005A9148, &qword_1004D2370);
    v24 = v20(v14 + v19, 1, v23);
    v26 = *(v0 + 472);
    v25 = *(v0 + 480);
    v27 = *(v0 + 464);
    if (v24 != 1)
    {
      v96 = *(v0 + 456);
      v49 = *(v0 + 440);
      v51 = *(v0 + 416);
      v50 = *(v0 + 424);
      (*(v50 + 32))(v49, v14 + v19, v51);
      sub_1000094D0(&qword_1005B0B68, &type metadata accessor for Fence.AcceptanceStatus);
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *(v50 + 8);
      v52(v49, v51);
      sub_100002CE0(v26, &qword_1005A9148, &qword_1004D2370);
      sub_100002CE0(v25, &qword_1005A9148, &qword_1004D2370);
      v52(v27, v51);
      sub_100002CE0(v96, &qword_1005A9148, &qword_1004D2370);
      if (v94)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v28 = *(v0 + 416);
    v29 = *(v0 + 424);
    sub_100002CE0(*(v0 + 472), &qword_1005A9148, &qword_1004D2370);
    sub_100002CE0(v25, &qword_1005A9148, &qword_1004D2370);
    (*(v29 + 8))(v27, v28);
  }

  sub_100002CE0(*(v0 + 456), &qword_1005B0B60, &qword_1004D26E8);
LABEL_10:
  v30 = *(v0 + 712);
  v32 = *(v0 + 432);
  v31 = *(v0 + 440);
  v33 = *(v0 + 416);
  v34 = *(v0 + 424);
  Fence.acceptanceStatus.getter();
  (v98)(v32, v100, v33);
  LOBYTE(v30) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v35 = *(v34 + 8);
  v35(v32, v33);
  v35(v31, v33);
  if (v30)
  {
    v36 = *(v0 + 920);
    v37 = *(v0 + 912);
    v38 = *(v0 + 712);
    v39 = *(v0 + 680);
    v40 = *(v0 + 672);
    v41 = *(v0 + 664);
    v42 = *(v0 + 656);
    v43 = *(v0 + 408);
    v101 = *(v0 + 400);
    v44 = *(v0 + 392);
    v45 = type metadata accessor for TaskPriority();
    (*(*(v45 - 8) + 56))(v43, 1, 1, v45);
    v37(v39, v38, v42);
    v46 = sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService);
    v47 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v44;
    *(v48 + 3) = v46;
    *(v48 + 4) = v44;
    v103(&v48[v47], v39, v42);
    *&v48[(v40 + v47 + 7) & 0xFFFFFFFFFFFFFFF8] = v101;
    swift_retain_n();
    sub_1001D7F30(0, 0, v43, &unk_1004D2708, v48);
  }

LABEL_13:
  v53 = *(v0 + 712);
  if (*(v0 + 1008) == 1)
  {
    v54 = sub_10004CD78(v53, 0, 0);
  }

  else
  {
    v54 = sub_10004DD70(v53, 0, 0);
  }

  v57 = *(v0 + 992);
  v58 = *(v0 + 840);
  v59 = *(v0 + 808);
  v66 = *(v0 + 1000);
  v67 = *(v0 + 800);
  v68 = *(v0 + 792);
  v69 = *(v0 + 784);
  v70 = *(v0 + 776);
  v71 = *(v0 + 768);
  v72 = *(v0 + 760);
  v73 = *(v0 + 736);
  v60 = *(v0 + 712);
  v61 = *(v0 + 704);
  v74 = *(v0 + 696);
  v75 = *(v0 + 688);
  v62 = *(v0 + 656);
  v76 = *(v0 + 680);
  v77 = *(v0 + 648);
  v78 = *(v0 + 640);
  v79 = *(v0 + 616);
  v80 = *(v0 + 608);
  v81 = *(v0 + 600);
  v82 = *(v0 + 592);
  v83 = *(v0 + 584);
  v84 = *(v0 + 576);
  v85 = *(v0 + 568);
  v86 = *(v0 + 560);
  v87 = *(v0 + 552);
  v88 = *(v0 + 528);
  v89 = *(v0 + 520);
  v90 = *(v0 + 496);
  v91 = *(v0 + 480);
  v92 = *(v0 + 472);
  v93 = *(v0 + 464);
  v95 = *(v0 + 456);
  v97 = *(v0 + 440);
  v99 = *(v0 + 432);
  v102 = *(v0 + 408);
  v63 = *(v0 + 376);
  sub_10001157C(v54, v55, v56);

  sub_100002CE0(v59, &qword_1005B09D0, &unk_1004D2380);
  v103(v63, v60, v62);
  v57(v61, v62);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100265058()
{
  v1 = v0[103];

  v38 = v0[106];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[76];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];
  v24 = v0[72];
  v25 = v0[71];
  v26 = v0[70];
  v27 = v0[69];
  v28 = v0[66];
  v29 = v0[65];
  v30 = v0[62];
  v31 = v0[60];
  v32 = v0[59];
  v33 = v0[58];
  v34 = v0[57];
  v35 = v0[55];
  v36 = v0[54];
  v37 = v0[51];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10026529C()
{
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  v1 = *(v0 + 968);
  v2 = *(v0 + 704);
  if (*(v0 + 1008) == 1)
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004CD78(v2, v1, 1);
  }

  else
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004DD70(v2, v1, 1);
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = *(v0 + 840);
  v10 = *(v0 + 808);
  v11 = *(v0 + 704);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);

  sub_10001157C(v6, v7, v8);

  swift_willThrow();

  sub_100002CE0(v10, &qword_1005B09D0, &unk_1004D2380);
  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  v19 = *(v0 + 768);
  v20 = *(v0 + 760);
  v21 = *(v0 + 736);
  v22 = *(v0 + 712);
  v23 = *(v0 + 704);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  v29 = *(v0 + 648);
  v30 = *(v0 + 640);
  v31 = *(v0 + 616);
  v32 = *(v0 + 608);
  v33 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 584);
  v36 = *(v0 + 576);
  v37 = *(v0 + 568);
  v38 = *(v0 + 560);
  v39 = *(v0 + 552);
  v40 = *(v0 + 528);
  v41 = *(v0 + 520);
  v42 = *(v0 + 496);
  v43 = *(v0 + 480);
  v44 = *(v0 + 472);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 440);
  v48 = *(v0 + 432);
  v49 = *(v0 + 408);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1002655E8()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 704);
  if (*(v0 + 1008) == 1)
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004CD78(v2, v1, 1);
  }

  else
  {
    swift_beginAccess();
    swift_errorRetain();
    v3 = sub_10004DD70(v2, v1, 1);
  }

  v6 = v3;
  v7 = v4;
  v8 = v5;
  v9 = *(v0 + 840);
  v10 = *(v0 + 808);
  v11 = *(v0 + 704);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);

  sub_10001157C(v6, v7, v8);

  swift_willThrow();

  sub_100002CE0(v10, &qword_1005B09D0, &unk_1004D2380);
  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 792);
  v17 = *(v0 + 784);
  v18 = *(v0 + 776);
  v19 = *(v0 + 768);
  v20 = *(v0 + 760);
  v21 = *(v0 + 736);
  v22 = *(v0 + 712);
  v23 = *(v0 + 704);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 680);
  v29 = *(v0 + 648);
  v30 = *(v0 + 640);
  v31 = *(v0 + 616);
  v32 = *(v0 + 608);
  v33 = *(v0 + 600);
  v34 = *(v0 + 592);
  v35 = *(v0 + 584);
  v36 = *(v0 + 576);
  v37 = *(v0 + 568);
  v38 = *(v0 + 560);
  v39 = *(v0 + 552);
  v40 = *(v0 + 528);
  v41 = *(v0 + 520);
  v42 = *(v0 + 496);
  v43 = *(v0 + 480);
  v44 = *(v0 + 472);
  v45 = *(v0 + 464);
  v46 = *(v0 + 456);
  v47 = *(v0 + 440);
  v48 = *(v0 + 432);
  v49 = *(v0 + 408);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10026591C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for Fence.Participant();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v2[32] = v7;
  v8 = *(v7 - 8);
  v2[33] = v8;
  v9 = *(v8 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[37] = v11;
  v12 = *(v11 - 8);
  v2[38] = v12;
  v2[39] = *(v12 + 64);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v13 = type metadata accessor for Handle();
  v2[42] = v13;
  v14 = *(v13 - 8);
  v2[43] = v14;
  v15 = *(v14 + 64) + 15;
  v2[44] = swift_task_alloc();
  v16 = type metadata accessor for PersonHandle();
  v2[45] = v16;
  v17 = *(v16 - 8);
  v2[46] = v17;
  v18 = *(v17 + 64) + 15;
  v2[47] = swift_task_alloc();
  v19 = type metadata accessor for Fence();
  v2[48] = v19;
  v20 = *(v19 - 8);
  v2[49] = v20;
  v21 = *(v20 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v23 = async function pointer to daemon.getter[1];
  v24 = swift_task_alloc();
  v2[57] = v24;
  *v24 = v2;
  v24[1] = sub_100265D10;

  return daemon.getter();
}

uint64_t sub_100265D10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 456);
  v12 = *v1;
  v3[58] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[59] = v6;
  v7 = type metadata accessor for Daemon();
  v3[60] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[61] = v9;
  v10 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100265EF0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100265EF0(uint64_t a1)
{
  v3 = *(*v2 + 472);
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  if (v1)
  {
    v5 = v4[25];

    return _swift_task_switch(sub_100267E04, v5, 0);
  }

  else
  {
    v6 = v4[58];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[64] = v8;
    *v8 = v4;
    v8[1] = sub_100266064;

    return daemon.getter();
  }
}

uint64_t sub_100266064(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v5 = *v1;
  v3[65] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[66] = v7;
  v8 = type metadata accessor for CommandManager();
  v9 = sub_1000094D0(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v7 = v5;
  v7[1] = sub_100266218;
  v10 = v3[61];
  v11 = v3[60];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100266218(uint64_t a1)
{
  v3 = *(*v2 + 528);
  v4 = *v2;
  v4[67] = a1;
  v4[68] = v1;

  if (v1)
  {
    v5 = v4[25];

    return _swift_task_switch(sub_100267F50, v5, 0);
  }

  else
  {
    v6 = v4[65];
    v7 = v4[48];

    v4[69] = swift_allocBox();
    v4[70] = v8;
    v9 = swift_task_alloc();
    v4[71] = v9;
    *v9 = v4;
    v9[1] = sub_1002663B0;
    v10 = v4[62];
    v11 = v4[56];
    v12 = v4[24];

    return sub_10020ED50(v11, v12);
  }
}

uint64_t sub_1002663B0()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_1002664C0, v2, 0);
}

uint64_t sub_1002664C0()
{
  v1 = v0[56];
  v2 = v0[48];
  v3 = v0[49];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[69];
    v5 = v0[67];
    v6 = v0[62];
    v7 = v0[32];
    v8 = v0[33];
    v9 = v0[24];
    sub_100002CE0(v1, &qword_1005B09D0, &unk_1004D2380);
    swift_deallocBox();
    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    inited = swift_initStackObject();
    *(inited + 32) = 6;
    *(inited + 16) = xmmword_1004C2310;
    *(inited + 64) = &type metadata for String;
    *(inited + 72) = &off_10058C398;
    strcpy((inited + 40), "NoFenceFound");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    *(inited + 80) = 17;
    *(inited + 112) = &type metadata for Bool;
    *(inited + 120) = &off_10058C3C8;
    *(inited + 88) = 0;
    v11 = sub_1000105C0(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
    swift_arrayDestroy();
    v12 = sub_10004C68C(4u, v11);
    v14 = v13;
    v16 = v15;

    sub_10001157C(v12, v14, v16);

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000094D0(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    (*(v8 + 16))(v17, v9, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_3:

    v19 = v0[55];
    v18 = v0[56];
    v21 = v0[53];
    v20 = v0[54];
    v23 = v0[51];
    v22 = v0[52];
    v24 = v0[50];
    v25 = v0[47];
    v26 = v0[44];
    v27 = v0[41];
    v114 = v0[40];
    v116 = v0[36];
    v120 = v0[35];
    v122 = v0[34];
    v124 = v0[31];
    v127 = v0[30];
    v130 = v0[27];

    v28 = v0[1];

    return v28();
  }

  v30 = v0[70];
  v31 = v0[55];
  (*(v3 + 32))(v30, v1, v2);
  Fence.shouldDeleteFence.setter();
  v32 = *(v3 + 16);
  v0[72] = v32;
  v0[73] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v31, v30, v2);
  v33 = Fence.others.getter();
  v34 = *(v3 + 8);
  v0[74] = v34;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v125 = v34;
  v34(v31, v2);
  v35 = *(v33 + 16);
  if (v35)
  {
    v117 = v32;
    v36 = v0[46];
    v37 = v0[43];
    v39 = *(v36 + 16);
    v38 = v36 + 16;
    v40 = v33 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v131 = *(v38 + 56);
    v134 = v39;
    v41 = &_swiftEmptyArrayStorage;
    do
    {
      v42 = v0[47];
      v43 = v0[45];
      v134(v42, v40, v43);
      PersonHandle.id.getter();
      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
      (*(v38 - 8))(v42, v43);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1001FCA0C(0, v41[2] + 1, 1, v41);
      }

      v45 = v41[2];
      v44 = v41[3];
      if (v45 >= v44 >> 1)
      {
        v41 = sub_1001FCA0C(v44 > 1, v45 + 1, 1, v41);
      }

      v46 = v0[44];
      v47 = v0[42];
      v41[2] = v45 + 1;
      (*(v37 + 32))(v41 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v46, v47);
      v40 += v131;
      --v35;
    }

    while (v35);

    v32 = v117;
  }

  else
  {

    v41 = &_swiftEmptyArrayStorage;
  }

  v48 = v0[54];
  v49 = v0[48];
  v32(v48, v0[70], v49);
  v50 = sub_100249754();
  v125(v48, v49);
  if (v50)
  {
    v51 = v0[53];
    v52 = v0[48];
    v53 = v0[38];
    v135 = v0[37];
    v54 = v0[36];
    v32(v51, v0[70], v52);
    Fence.ckRecordIdentifier.getter();
    v125(v51, v52);
    v55 = (*(v53 + 48))(v54, 1, v135);
    v56 = v0[70];
    v57 = v0[54];
    v58 = v0[48];
    if (v55 == 1)
    {
      v59 = v0[36];

      sub_100002CE0(v59, &qword_1005A96E0, &qword_1004C2A80);
      v32(v57, v56, v58);
      v60 = sub_10004CD88();
      v62 = v61;
      v64 = v63;
      v125(v57, v58);
      sub_10001157C(v60, v62, v64);

      sub_10005CF04();
      v65 = swift_allocError();
      *v66 = 8;
      swift_willThrow();
      v67 = v0[74];
      v68 = v0[73];
      v69 = v0[72];
      v70 = v0[70];
      v132 = v0[69];
      v136 = v0[75];
      v71 = v0[67];
      v72 = v0[62];
      v73 = v0[54];
      v74 = v0[48];
      swift_beginAccess();
      v69(v73, v70, v74);
      swift_errorRetain();
      v75 = sub_10004D0B4(v73, v65, 1);
      v77 = v76;
      v79 = v78;

      v67(v73, v74);
      sub_10001157C(v75, v77, v79);

      swift_willThrow();

      goto LABEL_3;
    }

    v80 = v0[35];
    v81 = v0[33];
    v118 = v0[70];
    v121 = v0[32];
    v112 = v0[31];
    v113 = v0[30];
    v82 = v0[29];
    v137 = (v0[38] + 32);
    v128 = v0[28];
    v133 = *v137;
    (*v137)(v0[41], v0[36], v0[37]);
    v32(v57, v118, v58);
    Fence.id.getter();
    v125(v57, v58);
    v111 = Fence.ID.uuidString.getter();
    v115 = v83;
    (*(v81 + 8))(v80, v121);
    v84 = v118;
    v119 = v32;
    v32(v57, v84, v58);
    Fence.createdBy.getter();
    v125(v57, v58);
    (*(v82 + 104))(v113, enum case for Fence.Participant.other(_:), v128);
    LOBYTE(v80) = static Fence.Participant.== infix(_:_:)();
    v85 = *(v82 + 8);
    v85(v113, v128);
    v85(v112, v128);
    v87 = v0[40];
    v86 = v0[41];
    v89 = v0[38];
    v88 = v0[39];
    v90 = v0[37];
    v91 = v0[27];
    v126 = v91;
    v129 = v0[26];
    v123 = v86;
    if (v80)
    {
      v92 = v0[67];
      v93 = type metadata accessor for TaskPriority();
      (*(*(v93 - 8) + 56))(v91, 1, 1, v93);
      (*(v89 + 16))(v87, v86, v90);
      v94 = (*(v89 + 80) + 56) & ~*(v89 + 80);
      v95 = (v88 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      *(v96 + 2) = 0;
      *(v96 + 3) = 0;
      *(v96 + 4) = v92;
      *(v96 + 5) = v111;
      *(v96 + 6) = v115;
      v133(&v96[v94], v87, v90);
      *&v96[v95] = v41;
      *&v96[(v95 + 15) & 0xFFFFFFFFFFFFFFF8] = v129;

      v97 = &unk_1004D27C0;
    }

    else
    {
      v98 = v0[69];
      v99 = v0[27];
      v100 = v0[25];

      v101 = type metadata accessor for TaskPriority();
      (*(*(v101 - 8) + 56))(v99, 1, 1, v101);
      (*(v89 + 16))(v87, v86, v90);
      v102 = sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService);
      v103 = (*(v89 + 80) + 48) & ~*(v89 + 80);
      v96 = swift_allocObject();
      *(v96 + 2) = v100;
      *(v96 + 3) = v102;
      *(v96 + 4) = v100;
      *(v96 + 5) = v98;
      v133(&v96[v103], v87, v90);
      *&v96[(v88 + v103 + 7) & 0xFFFFFFFFFFFFFFF8] = v129;
      swift_retain_n();

      v97 = &unk_1004D27B0;
    }

    sub_1001D7F30(0, 0, v126, v97, v96);

    (*(v89 + 8))(v123, v90);
    v32 = v119;
  }

  else
  {
  }

  v104 = v0[70];
  v105 = v0[51];
  v106 = v0[48];
  swift_beginAccess();
  v32(v105, v104, v106);
  v107 = swift_task_alloc();
  v0[76] = v107;
  *v107 = v0;
  v107[1] = sub_1002670F0;
  v108 = v0[67];
  v110 = v0[51];
  v109 = v0[52];

  return sub_10005A5B8(v109, v110);
}

uint64_t sub_1002670F0()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  v2[77] = v0;

  v5 = v2[75];
  v6 = v2[74];
  if (v0)
  {
    v7 = v2[25];
    v6(v2[51], v2[48]);
    v8 = sub_1002680A8;
    v9 = v7;
  }

  else
  {
    v10 = v2[51];
    v11 = v2[52];
    v12 = v2[48];
    v13 = v2[25];
    v6(v10, v12);
    v6(v11, v12);
    v8 = sub_100267278;
    v9 = v13;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100267278()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 624) = v2;
  *v2 = v0;
  v2[1] = sub_100267308;

  return daemon.getter();
}

uint64_t sub_100267308(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *v1;
  v3[79] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[80] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000094D0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_1002674BC;
  v10 = v3[61];
  v11 = v3[60];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002674BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 640);
  v10 = *v2;
  v3[81] = a1;
  v3[82] = v1;

  if (v1)
  {
    v5 = v3[25];
    v6 = sub_1002682AC;
  }

  else
  {
    v7 = v3[79];
    v8 = v3[25];

    v6 = sub_1002675E8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002675E8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 400);
  v6 = *(v0 + 384);
  v7 = *(v0 + 272);
  (*(v0 + 576))(v5, *(v0 + 560), v6);
  Fence.id.getter();
  v3(v5, v6);

  return _swift_task_switch(sub_10026769C, v1, 0);
}

uint64_t sub_10026769C()
{
  v1 = v0[81];
  v2 = v0[34];
  v3 = sub_1000094D0(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[83] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[84] = v6;
  *v6 = v0;
  v6[1] = sub_1002677D4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0xD000000000000017, 0x80000001004E65A0, sub_100274A64, v4, &type metadata for () + 8);
}

uint64_t sub_1002677D4()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v9 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = *(v2 + 648);
    v5 = sub_100267B64;
  }

  else
  {
    v6 = *(v2 + 664);
    v7 = *(v2 + 648);

    v5 = sub_1002678FC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002678FC()
{
  v1 = v0[25];
  (*(v0[33] + 8))(v0[34], v0[32]);

  return _swift_task_switch(sub_100267978, v1, 0);
}

uint64_t sub_100267978()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[67];
  v18 = v0[62];
  v19 = v0[56];
  v9 = v0[54];
  v20 = v0[55];
  v21 = v0[53];
  v22 = v0[52];
  v23 = v0[51];
  v10 = v0[48];
  v24 = v0[50];
  v25 = v0[47];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[31];
  v33 = v0[30];
  v34 = v0[27];

  v5(v9, v6, v10);
  v11 = sub_10004D0B4(v9, 0, 0);
  v13 = v12;
  v15 = v14;
  v3(v9, v10);
  sub_10001157C(v11, v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100267B64()
{
  v1 = v0[83];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[25];

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100267BF8, v5, 0);
}

uint64_t sub_100267BF8()
{
  v1 = v0[81];

  v2 = v0[85];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[70];
  v8 = v0[69];
  v33 = v0[67];
  v35 = v0[62];
  v9 = v0[54];
  v10 = v0[48];
  swift_beginAccess();
  v6(v9, v7, v10);
  swift_errorRetain();
  v11 = sub_10004D0B4(v9, v2, 1);
  v13 = v12;
  v15 = v14;

  v4(v9, v10);
  sub_10001157C(v11, v13, v15);

  swift_willThrow();

  v17 = v0[55];
  v16 = v0[56];
  v19 = v0[53];
  v18 = v0[54];
  v21 = v0[51];
  v20 = v0[52];
  v22 = v0[50];
  v23 = v0[47];
  v24 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[31];
  v34 = v0[30];
  v36 = v0[27];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100267E04()
{
  v1 = v0[58];

  v21 = v0[63];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[50];
  v9 = v0[47];
  v10 = v0[44];
  v11 = v0[41];
  v14 = v0[40];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[27];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100267F50()
{
  v1 = v0[65];
  v2 = v0[62];

  v22 = v0[68];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v12 = v0[41];
  v15 = v0[40];
  v16 = v0[36];
  v17 = v0[35];
  v18 = v0[34];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[27];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002680A8()
{
  v1 = v0[77];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[70];
  v7 = v0[69];
  v32 = v0[67];
  v34 = v0[62];
  v8 = v0[54];
  v9 = v0[48];
  swift_beginAccess();
  v5(v8, v6, v9);
  swift_errorRetain();
  v10 = sub_10004D0B4(v8, v1, 1);
  v12 = v11;
  v14 = v13;

  v3(v8, v9);
  sub_10001157C(v10, v12, v14);

  swift_willThrow();

  v16 = v0[55];
  v15 = v0[56];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v21 = v0[50];
  v22 = v0[47];
  v23 = v0[44];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[36];
  v29 = v0[35];
  v30 = v0[34];
  v31 = v0[31];
  v33 = v0[30];
  v35 = v0[27];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1002682AC()
{
  v1 = v0[79];

  v2 = v0[82];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[70];
  v8 = v0[69];
  v33 = v0[67];
  v35 = v0[62];
  v9 = v0[54];
  v10 = v0[48];
  swift_beginAccess();
  v6(v9, v7, v10);
  swift_errorRetain();
  v11 = sub_10004D0B4(v9, v2, 1);
  v13 = v12;
  v15 = v14;

  v4(v9, v10);
  sub_10001157C(v11, v13, v15);

  swift_willThrow();

  v17 = v0[55];
  v16 = v0[56];
  v19 = v0[53];
  v18 = v0[54];
  v21 = v0[51];
  v20 = v0[52];
  v22 = v0[50];
  v23 = v0[47];
  v24 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[31];
  v34 = v0[30];
  v36 = v0[27];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002684B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for Fence.AcceptanceStatus();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B09D0, &unk_1004D2380) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v3[26] = v8;
  v9 = *(v8 - 8);
  v3[27] = v9;
  v10 = *(v9 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[30] = v12;
  *v12 = v3;
  v12[1] = sub_100268658;

  return daemon.getter();
}

uint64_t sub_100268658(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 240);
  v12 = *v1;
  *(v3 + 248) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 256) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100268834;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100268834(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = a1;
  v4[34] = v1;

  if (v1)
  {
    v7 = v4[20];

    return _swift_task_switch(sub_10026942C, v7, 0);
  }

  else
  {
    v8 = v4[31];

    v9 = swift_task_alloc();
    v4[35] = v9;
    *v9 = v6;
    v9[1] = sub_1002689C4;
    v10 = v4[25];
    v11 = v4[19];

    return sub_10020ED50(v10, v11);
  }
}

uint64_t sub_1002689C4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100268AD4, v2, 0);
}

uint64_t sub_100268AD4()
{
  v68 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[33];
    v5 = v0[19];
    sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
    sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
    inited = swift_initStackObject();
    *(inited + 32) = 26;
    *(inited + 16) = xmmword_1004C2310;
    *(inited + 64) = &type metadata for String;
    *(inited + 72) = &off_10058C398;
    strcpy((inited + 40), "NoFenceFound");
    *(inited + 53) = 0;
    *(inited + 54) = -5120;
    *(inited + 80) = 27;
    *(inited + 112) = &type metadata for Bool;
    *(inited + 120) = &off_10058C3C8;
    *(inited + 88) = 0;
    v7 = sub_1000105C0(inited);
    swift_setDeallocating();
    sub_10004B564(&qword_1005A8790, &qword_1004C0EB0);
    swift_arrayDestroy();
    v8 = sub_10004C68C(1u, v7);
    v10 = v9;
    v12 = v11;

    sub_10001157C(v8, v10, v12);

    type metadata accessor for FenceServiceClient.Failure(0);
    sub_1000094D0(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    v14 = v13;
    v15 = type metadata accessor for Fence.ID();
    (*(*(v15 - 8) + 16))(v14, v5, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = v0[28];
    v16 = v0[29];
    v19 = v0[24];
    v18 = v0[25];
    v20 = v0[23];

    v21 = v0[1];
LABEL_9:

    return v21();
  }

  v22 = v0[29];
  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[21];
  v26 = v0[22];
  v27 = *(v2 + 32);
  v0[36] = v27;
  v0[37] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v65 = v27;
  v27(v22, v3, v1);
  Fence.acceptanceStatus.getter();
  v28 = enum case for Fence.AcceptanceStatus.accepted(_:);
  v29 = *(v26 + 104);
  v29(v24, enum case for Fence.AcceptanceStatus.accepted(_:), v25);
  v30 = static Fence.AcceptanceStatus.== infix(_:_:)();
  v31 = v24;
  v32 = *(v26 + 8);
  v32(v31, v25);
  v32(v23, v25);
  if (v30)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000A6F0(v33, qword_1005DFF88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[33];
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E65C0, v67);
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Fence is already accepted.", v38, 0xCu);
      sub_100004984(v39);
    }

    v65(v0[18], v0[29], v0[26]);
    v41 = v0[28];
    v40 = v0[29];
    v43 = v0[24];
    v42 = v0[25];
    v44 = v0[23];

    v21 = v0[1];
    goto LABEL_9;
  }

  v66 = v28;
  v46 = v0[29];
  v48 = v0[23];
  v47 = v0[24];
  v49 = v32;
  v50 = v0[21];
  Fence.acceptanceStatus.getter();
  v29(v48, enum case for Fence.AcceptanceStatus.pendingHidden(_:), v50);
  LOBYTE(v46) = static Fence.AcceptanceStatus.== infix(_:_:)();
  v49(v48, v50);
  v51 = v50;
  v52 = v49;
  v49(v47, v51);
  if (v46)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000A6F0(v53, qword_1005DFF88);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004E65C0, v67);
      _os_log_impl(&_mh_execute_header, v54, v55, "%{public}s: Accepting a hidden fence should not be done from UI", v56, 0xCu);
      sub_100004984(v57);
      v52 = v49;
    }
  }

  v58 = v0[29];
  v59 = v0[24];
  v60 = v0[21];
  v29(v59, v66, v60);
  Fence.update(acceptanceStatus:)();
  v52(v59, v60);
  v61 = swift_task_alloc();
  v0[38] = v61;
  *v61 = v0;
  v61[1] = sub_1002691FC;
  v62 = v0[28];
  v63 = v0[29];
  v64 = v0[20];

  return sub_100261468(v62, v63);
}

uint64_t sub_1002691FC()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_1002694D0;
  }

  else
  {
    v6 = sub_100269328;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100269328()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  (*(v0 + 288))(*(v0 + 144), *(v0 + 224), v4);
  v6 = sub_10004CD68(v3, 0, 0);
  sub_10001157C(v6, v7, v8);

  (*(v5 + 8))(v3, v4);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v13 = *(v0 + 184);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10026942C()
{
  v1 = v0[31];

  v2 = v0[34];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002694D0()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  swift_errorRetain();
  v6 = sub_10004CD68(v3, v1, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  swift_willThrow();

  (*(v5 + 8))(v3, v4);
  v11 = v0[39];
  v13 = v0[28];
  v12 = v0[29];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002695FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_1002696BC;

  return daemon.getter();
}

uint64_t sub_1002696BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100269898;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100269898(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v7 = v4[5];

    return _swift_task_switch(sub_100253CC8, v7, 0);
  }

  else
  {
    v8 = v4[8];

    v9 = swift_task_alloc();
    v4[12] = v9;
    *v9 = v6;
    v9[1] = sub_100269A20;

    return sub_100006424();
  }
}

uint64_t sub_100269A20(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100269B38, v3, 0);
}

uint64_t sub_100269B38()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 16);
  *(v6 + 32) = v5;
  v7 = sub_100260C80(sub_10027465C, v6, v1);
  *(v0 + 112) = v7;

  sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v8[2] = v7;
  v8[3] = v3;
  v8[4] = v4;
  v9 = async function pointer to withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_100269CC0;

  return withThrowingDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100269CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_100269E54;
  }

  else
  {
    v6 = v2[14];
    v7 = v2[15];
    v8 = v2[5];

    v5 = sub_100269DF0;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100269DF0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100269E54()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100269ECC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for Fence.Participant();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = type metadata accessor for FenceRecord();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v17 = type metadata accessor for Fence();
  v3[23] = v17;
  v18 = *(v17 - 8);
  v3[24] = v18;
  v19 = *(v18 + 64) + 15;
  v3[25] = swift_task_alloc();
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  v3[26] = v21;
  *v21 = v3;
  v21[1] = sub_10026A1D8;

  return daemon.getter();
}

uint64_t sub_10026A1D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  v3[27] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[28] = v6;
  v7 = type metadata accessor for Daemon();
  v3[29] = v7;
  v8 = type metadata accessor for CommandManager();
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_1000094D0(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_10026A3B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026A3B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_10026B6EC;
  }

  else
  {
    v7 = v3[27];
    v8 = v3[4];

    v6 = sub_10026A4E0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026A4E0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v0[24] + 16))(v0[25], v0[3], v0[23]);
  sub_100249D6C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v0[18], &qword_1005AE720, &qword_1004CA2F0);
LABEL_8:
    v12 = swift_task_alloc();
    v0[45] = v12;
    *v12 = v0;
    v12[1] = sub_10026B4A4;
    v13 = v0[31];
    v14 = v0[25];
    v15 = v0[2];

    return sub_10005A5B8(v15, v14);
  }

  v4 = v0[25];
  v5 = v0[17];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  sub_100274934(v0[18], v0[22], type metadata accessor for FenceRecord);
  Fence.createdBy.getter();
  (*(v7 + 104))(v6, enum case for Fence.Participant.me(_:), v8);
  LOBYTE(v4) = static Fence.Participant.== infix(_:_:)();
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  if ((v4 & 1) == 0)
  {
    sub_100274A04(v0[22], type metadata accessor for FenceRecord);
    goto LABEL_8;
  }

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_10026A724;

  return daemon.getter();
}

uint64_t sub_10026A724(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_10026A8D8;
  v10 = v3[30];
  v11 = v3[29];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10026A8D8(uint64_t a1)
{
  v3 = *(*v2 + 280);
  v4 = *(*v2 + 272);
  v5 = *v2;
  v5[36] = a1;
  v5[37] = v1;

  if (v1)
  {
    v6 = v5[4];

    return _swift_task_switch(sub_10026B7E8, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v5[38] = v7;
    *v7 = v5;
    v7[1] = sub_10026AA78;
    v8 = v5[21];
    v9 = v5[22];
    v10 = v5[4];

    return sub_10026C414(v8, v9);
  }
}

uint64_t sub_10026AA78()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10026B920;
  }

  else
  {
    v6 = sub_10026ABA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026ABA4()
{
  v1 = v0[25];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v7 = v0[7];
  (*(v7 + 16))(v2, v0[21], v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  Fence.ckRecordIdentifier.getter();
  v8 = *(v5 + 48);
  sub_100005F04(v2, v4, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v3, v4 + v8, &qword_1005A96E0, &qword_1004C2A80);
  v9 = *(v7 + 48);
  if (v9(v4, 1, v6) == 1)
  {
    v10 = v0[13];
    v11 = v0[6];
    sub_100002CE0(v0[12], &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v10, &qword_1005A96E0, &qword_1004C2A80);
    if (v9(v4 + v8, 1, v11) == 1)
    {
      sub_100002CE0(v0[10], &qword_1005A96E0, &qword_1004C2A80);
LABEL_11:
      v27 = v0[36];
      sub_100274A04(v0[22], type metadata accessor for FenceRecord);

      sub_100274A04(v0[21], type metadata accessor for FenceRecord);
      v28 = swift_task_alloc();
      v0[45] = v28;
      *v28 = v0;
      v28[1] = sub_10026B4A4;
      v29 = v0[31];
      v30 = v0[25];
      v31 = v0[2];

      return sub_10005A5B8(v31, v30);
    }

    goto LABEL_6;
  }

  v12 = v0[6];
  sub_100005F04(v0[10], v0[11], &qword_1005A96E0, &qword_1004C2A80);
  v13 = v9(v4 + v8, 1, v12);
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[11];
  if (v13 == 1)
  {
    v17 = v0[6];
    v18 = v0[7];
    sub_100002CE0(v0[12], &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v14, &qword_1005A96E0, &qword_1004C2A80);
    (*(v18 + 8))(v16, v17);
LABEL_6:
    sub_100002CE0(v0[10], &qword_1005B0B70, &qword_1004D6B30);
    goto LABEL_7;
  }

  v32 = v0[10];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  (*(v23 + 32))(v22, v4 + v8, v24);
  sub_1000094D0(&qword_1005A9FC8, &type metadata accessor for UUID);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v23 + 8);
  v26(v22, v24);
  sub_100002CE0(v15, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v14, &qword_1005A96E0, &qword_1004C2A80);
  v26(v16, v24);
  sub_100002CE0(v32, &qword_1005A96E0, &qword_1004C2A80);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_7:
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_10026AFD0;
  v20 = v0[36];

  return sub_1001BA3B8();
}

uint64_t sub_10026AFD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  v4[41] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_10026BA64;
  }

  else
  {
    v4[42] = a1;
    v8 = sub_10026B10C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10026B10C()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = [v1 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Fence.update(ckRecordIdentifier:owner:)();

  sub_1000094D0(&qword_1005AF4A8, type metadata accessor for FenceService);
  v9 = swift_task_alloc();
  v0[43] = v9;
  v9[2] = v7;
  v9[3] = v2;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v6;
  v10 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v11 = swift_task_alloc();
  v0[44] = v11;
  *v11 = v0;
  v11[1] = sub_10026B2A4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_10026B2A4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_10026B3D0, v3, 0);
}

uint64_t sub_10026B3D0()
{
  v1 = v0[36];
  v2 = v0[22];

  sub_100274A04(v2, type metadata accessor for FenceRecord);
  sub_100274A04(v0[21], type metadata accessor for FenceRecord);
  v3 = swift_task_alloc();
  v0[45] = v3;
  *v3 = v0;
  v3[1] = sub_10026B4A4;
  v4 = v0[31];
  v5 = v0[25];
  v6 = v0[2];

  return sub_10005A5B8(v6, v5);
}

uint64_t sub_10026B4A4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10026BBBC;
  }

  else
  {
    v6 = sub_10026B5D0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026B5D0()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[8];

  (*(v3 + 8))(v2, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026B6EC()
{
  v1 = v0[27];

  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v14 = v0[8];
  v15 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10026B7E8()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];

  sub_100274A04(v5, type metadata accessor for FenceRecord);
  (*(v3 + 8))(v2, v4);
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v18 = v0[8];
  v19 = v0[37];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10026B920()
{
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];

  sub_100274A04(v6, type metadata accessor for FenceRecord);
  (*(v4 + 8))(v3, v5);
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  v19 = v0[8];
  v20 = v0[39];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10026BA64()
{
  v1 = v0[36];
  v2 = v0[31];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  sub_100274A04(v6, type metadata accessor for FenceRecord);
  (*(v4 + 8))(v3, v5);
  sub_100274A04(v7, type metadata accessor for FenceRecord);
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  v20 = v0[8];
  v21 = v0[41];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10026BBBC()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  (*(v3 + 8))(v2, v4);
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[10];
  v14 = v0[11];
  v17 = v0[8];
  v18 = v0[46];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10026BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Fence.ID();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = type metadata accessor for Fence();
  v5[7] = v10;
  v11 = *(v10 - 8);
  v5[8] = v11;
  v12 = *(v11 + 64) + 15;
  v5[9] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B09C8, &qword_1004D2378) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v5[10] = v14;
  v15 = swift_task_alloc();
  v5[11] = v15;
  *v15 = v5;
  v15[1] = sub_10026BE78;

  return sub_1002790EC(v14, a5);
}

uint64_t sub_10026BE78()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10026C0A4;
  }

  else
  {
    v4 = sub_10026BFA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026BFA0()
{
  v1 = v0[10];
  v2 = type metadata accessor for Fence.TriggerID();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_100002CE0(v1, &qword_1005B09C8, &qword_1004D2378);
  if (v3 != 1)
  {
    v4 = sub_10004D4C8(v0[3], 0, 0);
    sub_10001157C(v4, v5, v6);
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10026C0A4()
{
  v41 = v0;
  v1 = v0[12];
  v2 = v0[3];
  swift_errorRetain();
  v3 = sub_10004D4C8(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v12 = v0[3];
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  (*(v10 + 16))(v9, v12, v11);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[7];
  if (v16)
  {
    v39 = v15;
    v20 = v0[5];
    v21 = v0[6];
    v22 = v0[4];
    v37 = v0[12];
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v23 = 136446466;
    v35 = v14;
    Fence.id.getter();
    sub_1000094D0(&qword_1005AE800, &type metadata accessor for Fence.ID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v20 + 8))(v21, v22);
    (*(v17 + 8))(v18, v19);
    v27 = sub_10000D01C(v24, v26, &v40);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v28;
    *v36 = v28;
    _os_log_impl(&_mh_execute_header, v35, v39, "Error triggering accepted fence id: %{public}s, error: %{public}@", v23, 0x16u);
    sub_100002CE0(v36, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v38);
  }

  else
  {
    v29 = v0[12];

    (*(v17 + 8))(v18, v19);
  }

  v31 = v0[9];
  v30 = v0[10];
  v32 = v0[6];

  v33 = v0[1];

  return v33();
}

uint64_t sub_10026C414(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = type metadata accessor for FenceRecord();
  v3[30] = v5;
  v6 = *(v5 - 8);
  v3[31] = v6;
  v7 = *(v6 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v3[34] = v9;
  *v9 = v3;
  v9[1] = sub_10026C54C;

  return daemon.getter();
}

uint64_t sub_10026C54C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v12 = *v1;
  *(v3 + 280) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 288) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_10026C728;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026C728(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v9 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[28];
    v6 = sub_10026D128;
  }

  else
  {
    v7 = v3[35];

    v6 = sub_10026C84C;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026C84C()
{
  v1 = *(v0[37] + 128);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_10026C8EC;
  v3 = v0[29];
  v4 = v0[27];

  return sub_1001C3C00(v3, v4);
}

uint64_t sub_10026C8EC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = *(v2 + 224);
  if (v0)
  {

    v6 = sub_10026CBDC;
  }

  else
  {
    v6 = sub_10026CA24;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026CA24()
{
  v1 = v0[29];
  if ((*(v0[31] + 48))(v1, 1, v0[30]) == 1)
  {
    sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
LABEL_7:
    v13 = swift_task_alloc();
    v0[40] = v13;
    *v13 = v0;
    v13[1] = sub_10026CCA8;
    v14 = v0[27];
    v15 = v0[28];

    return sub_10026FAF8(v14);
  }

  v2 = v0[33];
  v3 = v0[27];
  sub_100274934(v1, v2, type metadata accessor for FenceRecord);
  v4 = sub_1001A4BD0(v2, v3);
  sub_100274A04(v2, type metadata accessor for FenceRecord);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = v0[37];
  v6 = v0[26];
  v7 = v0[27];

  sub_10027499C(v7, v6, type metadata accessor for FenceRecord);
  v9 = v0[32];
  v8 = v0[33];
  v10 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10026CBDC()
{
  (*(v0[31] + 56))(v0[29], 1, 1, v0[30]);
  sub_100002CE0(v0[29], &qword_1005AE720, &qword_1004CA2F0);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_10026CCA8;
  v2 = v0[27];
  v3 = v0[28];

  return sub_10026FAF8(v2);
}

uint64_t sub_10026CCA8()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_10026D1B0;
  }

  else
  {
    v4 = sub_10026CDD0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026CDD0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  UUID.init()();
  v4 = (v3 + v2[5]);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v3 + v2[6]);
  v8 = *(v3 + v2[7]);
  sub_100005F04(v3 + v2[8], v1 + v2[8], &qword_1005AE5C0, &unk_1004D06D0);
  sub_100005F04(v3 + v2[9], v1 + v2[9], &unk_1005AE5B0, &qword_1004C32F0);
  v9 = (v3 + v2[10]);
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[5];
  *(v0 + 80) = v9[4];
  *(v0 + 96) = v12;
  *(v0 + 48) = v10;
  *(v0 + 64) = v11;
  v13 = v9[1];
  *(v0 + 16) = *v9;
  *(v0 + 32) = v13;
  v14 = (v1 + v2[5]);
  *v14 = v6;
  v14[1] = v5;
  *(v1 + v2[6]) = v7;
  *(v1 + v2[7]) = v8;
  v15 = (v1 + v2[10]);
  v16 = *(v0 + 32);
  *v15 = *(v0 + 16);
  v15[1] = v16;
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  v15[4] = *(v0 + 80);
  v15[5] = v19;
  v15[2] = v17;
  v15[3] = v18;

  v20 = v7;
  sub_1001A6A68(v0 + 16, v0 + 112);
  v21 = swift_task_alloc();
  *(v0 + 336) = v21;
  *v21 = v0;
  v21[1] = sub_10026CF60;
  v22 = *(v0 + 256);
  v23 = *(v0 + 224);
  v24 = *(v0 + 208);

  return sub_100272914(v24, v22);
}

uint64_t sub_10026CF60()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_10026D4D4;
  }

  else
  {
    v4 = sub_10026D088;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10026D088()
{
  v1 = v0[37];
  v2 = v0[32];

  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10026D128()
{
  v1 = v0[35];

  v2 = v0[38];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10026D1B0()
{
  v37 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 328);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E64F0, &v36);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
  v13 = *(v0 + 216);
  UUID.init()();
  v14 = (v13 + v12[5]);
  v16 = *v14;
  v15 = v14[1];
  v17 = *(v13 + v12[6]);
  v18 = *(v13 + v12[7]);
  sub_100005F04(v13 + v12[8], v11 + v12[8], &qword_1005AE5C0, &unk_1004D06D0);
  sub_100005F04(v13 + v12[9], v11 + v12[9], &unk_1005AE5B0, &qword_1004C32F0);
  v19 = (v13 + v12[10]);
  v20 = v19[2];
  v21 = v19[3];
  v22 = v19[5];
  *(v0 + 80) = v19[4];
  *(v0 + 96) = v22;
  *(v0 + 48) = v20;
  *(v0 + 64) = v21;
  v23 = v19[1];
  *(v0 + 16) = *v19;
  *(v0 + 32) = v23;
  v24 = (v11 + v12[5]);
  *v24 = v16;
  v24[1] = v15;
  *(v11 + v12[6]) = v17;
  *(v11 + v12[7]) = v18;
  v25 = (v11 + v12[10]);
  v26 = *(v0 + 32);
  *v25 = *(v0 + 16);
  v25[1] = v26;
  v27 = *(v0 + 48);
  v28 = *(v0 + 64);
  v29 = *(v0 + 96);
  v25[4] = *(v0 + 80);
  v25[5] = v29;
  v25[2] = v27;
  v25[3] = v28;

  v30 = v17;
  sub_1001A6A68(v0 + 16, v0 + 112);
  v31 = swift_task_alloc();
  *(v0 + 336) = v31;
  *v31 = v0;
  v31[1] = sub_10026CF60;
  v32 = *(v0 + 256);
  v33 = *(v0 + 224);
  v34 = *(v0 + 208);

  return sub_100272914(v34, v32);
}

uint64_t sub_10026D4D4()
{
  v1 = v0[37];
  v2 = v0[32];

  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v3 = v0[43];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10026D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v9 = type metadata accessor for Fence();
  v7[15] = v9;
  v10 = *(v9 - 8);
  v7[16] = v10;
  v7[17] = *(v10 + 64);
  v7[18] = swift_task_alloc();
  v11 = *(type metadata accessor for FenceRecord() - 8);
  v7[19] = v11;
  v7[20] = *(v11 + 64);
  v7[21] = swift_task_alloc();
  v12 = type metadata accessor for PersonHandle();
  v7[22] = v12;
  v13 = *(v12 - 8);
  v7[23] = v13;
  v7[24] = *(v13 + 64);
  v7[25] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_10026D758, a6, 0);
}

uint64_t sub_10026D758()
{
  v1 = *(v0 + 80);
  v2 = Fence.others.getter();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 184);
    v50 = *(v0 + 152);
    v48 = **(v0 + 72);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v2 + v5;
    v46 = (v4 + 16);
    v47 = v5;
    v45 = (*(v0 + 192) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = *(v4 + 72);
    v43 = *(v0 + 160) + 7;
    v41 = (v4 + 32);
    v42 = *(v0 + 136) + 7;
    v49 = *(v0 + 128);
    v7 = type metadata accessor for TaskPriority();
    v8 = *(v7 - 8);
    v39 = *(v8 + 56);
    v38 = (v8 + 48);
    v37 = (v8 + 8);
    v40 = v7;
    do
    {
      v59 = v3;
      v11 = *(v0 + 216);
      v57 = *(v0 + 208);
      v12 = *(v0 + 200);
      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v51 = v14;
      v55 = v11;
      v56 = *(v0 + 112);
      v17 = *(v0 + 96);
      v54 = *(v0 + 104);
      v18 = *(v0 + 80);
      v52 = v15;
      v53 = *(v0 + 88);
      v39();
      v58 = v6;
      (*v46)(v12, v6, v13);
      sub_10027499C(v17, v14, type metadata accessor for FenceRecord);
      (*(v49 + 16))(v15, v18, v16);
      v19 = (v45 + 8 + *(v50 + 80)) & ~*(v50 + 80);
      v20 = (v43 + v19) & 0xFFFFFFFFFFFFFFF8;
      v21 = (*(v49 + 80) + v20 + 8) & ~*(v49 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      v23 = (v22 + 16);
      *(v22 + 24) = 0;
      (*v41)(v22 + v47, v12, v13);
      *(v22 + v45) = v53;
      sub_100274934(v51, v22 + v19, type metadata accessor for FenceRecord);
      *(v22 + v20) = v54;
      (*(v49 + 32))(v22 + v21, v52, v16);
      *(v22 + ((v42 + v21) & 0xFFFFFFFFFFFFFFF8)) = v56;
      sub_100005F04(v55, v57, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v19) = (*v38)(v57, 1, v40);

      v24 = *(v0 + 208);
      if (v19 == 1)
      {
        sub_100002CE0(*(v0 + 208), &qword_1005A9690, &qword_1004C2A00);
        if (*v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v37)(v24, v40);
        if (*v23)
        {
LABEL_9:
          v27 = *(v22 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = dispatch thunk of Actor.unownedExecutor.getter();
          v26 = v28;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v25 = 0;
      v26 = 0;
LABEL_10:
      v29 = swift_allocObject();
      *(v29 + 16) = &unk_1004D2738;
      *(v29 + 24) = v22;

      if (v26 | v25)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v25;
        *(v0 + 40) = v26;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 216);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v48;
      swift_task_create();

      sub_100002CE0(v10, &qword_1005A9690, &qword_1004C2A00);
      v6 = v58 + v44;
      v3 = v59 - 1;
    }

    while (v59 != 1);
  }

  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 200);
  v33 = *(v0 + 168);
  v34 = *(v0 + 144);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10026DC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  v8 = type metadata accessor for URL();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v13 = *(v12 + 64) + 15;
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10026DD68, 0, 0);
}

uint64_t sub_10026DD68()
{
  v1 = v0[12];
  v2 = v0[2];
  PersonHandle.id.getter();
  sub_1002743D4(_swiftEmptyArrayStorage);
  Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_10026DE64;
  v4 = v0[12];
  v5 = v0[9];
  v7 = v0[3];
  v6 = v0[4];

  return sub_1001BEE94(v5, v6, v4);
}

uint64_t sub_10026DE64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10026E200, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[16] = v7;
    *v7 = v6;
    v7[1] = sub_10026DFF0;
    v8 = v4[12];
    v9 = v4[9];
    v10 = v4[4];
    v11 = v4[5];

    return sub_100256250(a1, v8, v9, v10);
  }
}

uint64_t sub_10026DFF0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_10026E47C;
  }

  else
  {
    v3 = sub_10026E104;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E104()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = sub_10004D4B8(v0[6], 0, 0);
  sub_10001157C(v8, v9, v10);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10026E200()
{
  v20 = v0;
  v1 = v0[15];
  v2 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_errorRetain();
  v3 = sub_10004D4B8(v2, v1, 1);
  v5 = v4;
  v7 = v6;

  sub_10001157C(v3, v5, v7);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFF88);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E64D0, &v19);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: Failed to share CK record: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);
  }

  else
  {
  }

  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10026E47C()
{
  v23 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  swift_errorRetain();
  v6 = sub_10004D4B8(v5, v4, 1);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF88);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E64D0, &v22);
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Failed to share CK record: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  else
  {
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10026E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_task_alloc();
  *(v8 + 224) = v13;
  *v13 = v8;
  v13[1] = sub_10026E7E8;

  return sub_1000790BC(a5, a6, a7, a8);
}

uint64_t sub_10026E7E8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10026EA64;
  }

  else
  {
    v3 = sub_10026E8FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10026E8FC()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 37;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 216));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10026EA64()
{
  v1 = *(v0 + 232);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 32) = 37;
  *(inited + 16) = xmmword_1004C1900;
  *(v0 + 176) = v1;
  *(v0 + 184) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 208));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 232);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 232);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Task got error while sending CK share delete notification: %{public}@", v18, 0xCu);
    sub_100002CE0(v19, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10026ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a4;
  v6[58] = a6;
  v8 = type metadata accessor for Fence.ID();
  v6[59] = v8;
  v9 = *(v8 - 8);
  v6[60] = v9;
  v10 = *(v9 + 64) + 15;
  v6[61] = swift_task_alloc();
  v11 = type metadata accessor for Fence();
  v6[62] = v11;
  v12 = *(v11 - 8);
  v6[63] = v12;
  v13 = *(v12 + 64) + 15;
  v6[64] = swift_task_alloc();
  v6[65] = swift_projectBox();

  return _swift_task_switch(sub_10026EE50, a4, 0);
}

uint64_t sub_10026EE50()
{
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v4);
  Fence.id.getter();
  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  v0[66] = v6;
  *v6 = v0;
  v6[1] = sub_10026EF5C;
  v7 = v0[61];
  v8 = v0[57];

  return sub_10027C184(v7);
}

uint64_t sub_10026EF5C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 488);
  v5 = *(*v1 + 480);
  v6 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 536) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 456);
  if (v0)
  {
    v9 = sub_10026F530;
  }

  else
  {
    v9 = sub_10026F0E4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10026F0E4()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 35;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 448));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = swift_task_alloc();
  *(v0 + 544) = v11;
  *v11 = v0;
  v11[1] = sub_10026F288;
  v13 = *(v0 + 456);
  v12 = *(v0 + 464);

  return sub_10026FAF8(v12);
}

uint64_t sub_10026F288()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 456);
  if (v0)
  {
    v6 = sub_10026F828;
  }

  else
  {
    v6 = sub_10026F3B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10026F3B4()
{
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 36;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v2 = sub_10004C9A8(*(v0 + 440));
  v4 = v3;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v2;
  *(inited + 48) = v4;
  v5 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v6 = sub_10004C68C(4u, v5);
  v8 = v7;
  v10 = v9;

  sub_10001157C(v6, v8, v10);

  v11 = *(v0 + 512);
  v12 = *(v0 + 488);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10026F530()
{
  v1 = *(v0 + 536);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 35;
  *(v0 + 360) = v1;
  *(v0 + 368) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 424));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 536);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 536);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Got an error while deleting fence trigger: %{public}@", v18, 0xCu);
    sub_100002CE0(v19, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v21 = swift_task_alloc();
  *(v0 + 544) = v21;
  *v21 = v0;
  v21[1] = sub_10026F288;
  v23 = *(v0 + 456);
  v22 = *(v0 + 464);

  return sub_10026FAF8(v22);
}

uint64_t sub_10026F828()
{
  v1 = *(v0 + 552);
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  *(inited + 32) = 36;
  *(v0 + 376) = v1;
  *(v0 + 384) = 1;
  swift_errorRetain();
  sub_10004B564(&qword_1005A8800, &qword_1004C0EC0);
  Result.error.getter();
  v3 = sub_10004C9A8(*(v0 + 432));
  v5 = v4;

  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &off_10058C398;
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  v6 = sub_1000105C0(inited);
  swift_setDeallocating();
  sub_100002CE0(inited + 32, &qword_1005A8790, &qword_1004C0EB0);
  v7 = sub_10004C68C(4u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 552);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF88);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 552);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Got an error while deleting CK share: %{public}@", v18, 0xCu);
    sub_100002CE0(v19, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v21 = *(v0 + 512);
  v22 = *(v0 + 488);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10026FAF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CloudKitCoordinator.Database();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = type metadata accessor for FenceRecord();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v2[15] = v15;
  *v15 = v2;
  v15[1] = sub_10026FD10;

  return daemon.getter();
}

uint64_t sub_10026FD10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000094D0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000094D0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_10026FEEC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10026FEEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v9 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1002712FC;
  }

  else
  {
    v7 = v3[16];

    v6 = sub_100270010;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100270010()
{
  v1 = *(v0[18] + 128);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1002700B0;
  v3 = v0[11];
  v4 = v0[2];

  return sub_1001C3C00(v3, v4);
}

uint64_t sub_1002700B0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10027051C;
  }

  else
  {
    v4 = sub_1002701D8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002701D8()
{
  v32 = v0;
  v1 = v0[11];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    sub_100002CE0(v1, &qword_1005AE720, &qword_1004CA2F0);
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = v0[2];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFF88);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[18];
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    if (v9)
    {
      v30 = v0[18];
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E6530, &v31);
      *(v14 + 12) = 2082;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_10000D01C(v15, v17, &v31);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: No fence with ckRecordIdentifier: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v22 = v0[18];

      (*(v12 + 8))(v11, v13);
    }

    v23 = v0[14];
    v24 = v0[10];
    v25 = v0[11];
    v26 = v0[9];
    v27 = v0[6];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v19 = v0[18];
    v20 = v0[14];
    sub_100274934(v1, v20, type metadata accessor for FenceRecord);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *(v21 + 16) = v20;

    return _swift_task_switch(sub_1002705C4, v19, 0);
  }
}

uint64_t sub_10027051C()
{
  v1 = v0[18];

  v2 = v0[21];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002705C4()
{
  v1 = *(v0[18] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_10027068C;
  v4 = v0[22];
  v5 = v0[10];

  return v7(v5, &unk_1004D2768, v4);
}

uint64_t sub_10027068C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_100270A24;
  }

  else
  {
    v6 = v2[22];
    v7 = v2[3];

    v5 = sub_1002707B4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002707B4()
{
  v1 = v0[18];
  (*(v0[8] + 104))(v0[9], enum case for CloudKitCoordinator.Database.private(_:), v0[7]);

  return _swift_task_switch(sub_10027083C, v1, 0);
}

uint64_t sub_10027083C()
{
  v1 = *(v0[18] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_1002708EC;
  v4 = v0[9];
  v5 = v0[10];

  return v7(v5, v4);
}

uint64_t sub_1002708EC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_10027119C;
  }

  else
  {
    v6 = v2[3];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v5 = sub_100270B58;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100270A24()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_100270A90, v2, 0);
}

uint64_t sub_100270A90()
{
  v1 = v0[18];
  v2 = v0[14];

  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v3 = v0[24];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100270B58()
{
  v1 = v0[18];
  v2 = v0[14];
  sub_1002744D8();
  v3._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4._object = v5;
  v6._countAndFlagsBits = 0x2D65636E6546;
  v6._object = 0xE600000000000000;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v6, v4).super.isa;
  v8 = [(objc_class *)isa zoneName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v0[27] = v9;
  v0[28] = v11;

  return _swift_task_switch(sub_100270C6C, v1, 0);
}

uint64_t sub_100270C6C()
{
  v17 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFE80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting CloudKit zone: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = *(v0[18] + 136);
  v10 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
  v15 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_100270E48;
  v13 = v0[27];
  v12 = v0[28];

  return v15(v13, v12);
}

uint64_t sub_100270E48()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_10027104C;
  }

  else
  {
    v6 = v2[28];
    v7 = v2[3];

    v5 = sub_100270F70;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100270F70()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];

  sub_100002CE0(v3, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10027104C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1002710B8, v2, 0);
}

uint64_t sub_1002710B8()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];

  sub_100002CE0(v3, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v4 = v0[30];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10027119C()
{
  v1 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return _swift_task_switch(sub_100271218, v1, 0);
}

uint64_t sub_100271218()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];

  sub_100002CE0(v3, &qword_1005AF228, &unk_1004D0440);
  sub_100274A04(v2, type metadata accessor for FenceRecord);
  v4 = v0[26];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002712FC()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002713A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a4;
  v82 = a3;
  v84 = a5;
  v79 = type metadata accessor for Fence.ID();
  v83 = *(v79 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin(v79);
  v72 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10004B564(&qword_1005B0B78, &qword_1004D2790);
  v9 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v78 = &v71 - v10;
  v11 = sub_10004B564(&qword_1005B09D0, &unk_1004D2380);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v74 = &v71 - v13;
  v14 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v80 = &v71 - v19;
  __chkstk_darwin(v18);
  v77 = &v71 - v20;
  v21 = type metadata accessor for Date();
  v81 = *(v21 - 8);
  v22 = *(v81 + 64);
  __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v71 - v27;
  v29 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v71 - v34;
  if ((sub_10024AAD4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v36 = Fence.others.getter();
  v37 = sub_100260454(a2, v36, &type metadata accessor for PersonHandle, &qword_1005B04E0, &type metadata accessor for PersonHandle);

  if (!v37)
  {
    goto LABEL_23;
  }

  v71 = a1;
  Fence.muteEndDate.getter();
  v38 = *(v25 + 48);
  sub_100005F04(v35, v28, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v82, &v28[v38], &unk_1005AE5B0, &qword_1004C32F0);
  v39 = v81;
  v40 = *(v81 + 48);
  if (v40(v28, 1, v21) != 1)
  {
    sub_100005F04(v28, v33, &unk_1005AE5B0, &qword_1004C32F0);
    if (v40(&v28[v38], 1, v21) != 1)
    {
      (*(v39 + 32))(v24, &v28[v38], v21);
      sub_1000094D0(&qword_1005AE5D0, &type metadata accessor for Date);
      v62 = v39;
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v64 = *(v62 + 8);
      v64(v24, v21);
      sub_100002CE0(v35, &unk_1005AE5B0, &qword_1004C32F0);
      v64(v33, v21);
      sub_100002CE0(v28, &unk_1005AE5B0, &qword_1004C32F0);
      if (v63)
      {
        goto LABEL_23;
      }

LABEL_9:
      v44 = v77;
      Fence.id.getter();
      v45 = *(v83 + 56);
      v46 = v79;
      v45(v44, 0, 1, v79);
      v47 = v74;
      sub_100005F04(v75, v74, &qword_1005B09D0, &unk_1004D2380);
      v48 = type metadata accessor for Fence();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 48))(v47, 1, v48);
      v81 = v48;
      v75 = v49;
      if (v50 == 1)
      {
        sub_100002CE0(v47, &qword_1005B09D0, &unk_1004D2380);
        v51 = 1;
        v52 = v78;
        v53 = v80;
      }

      else
      {
        v53 = v80;
        Fence.id.getter();
        (*(v49 + 8))(v47, v48);
        v51 = 0;
        v52 = v78;
      }

      v45(v53, v51, 1, v46);
      v54 = *(v76 + 48);
      sub_100005F04(v44, v52, &qword_1005A9150, &qword_1004C2608);
      sub_100005F04(v53, v52 + v54, &qword_1005A9150, &qword_1004C2608);
      v55 = *(v83 + 48);
      if (v55(v52, 1, v46) == 1)
      {
        sub_100002CE0(v53, &qword_1005A9150, &qword_1004C2608);
        sub_100002CE0(v44, &qword_1005A9150, &qword_1004C2608);
        if (v55(v52 + v54, 1, v46) == 1)
        {
          v41 = &qword_1005A9150;
          v42 = &qword_1004C2608;
          v43 = v52;
          goto LABEL_15;
        }
      }

      else
      {
        v56 = v73;
        sub_100005F04(v52, v73, &qword_1005A9150, &qword_1004C2608);
        if (v55(v52 + v54, 1, v46) != 1)
        {
          v65 = v83;
          v66 = v52 + v54;
          v67 = v72;
          (*(v83 + 32))(v72, v66, v46);
          sub_1000094D0(&qword_1005B0B80, &type metadata accessor for Fence.ID);
          v68 = dispatch thunk of static Equatable.== infix(_:_:)();
          v69 = *(v65 + 8);
          v69(v67, v46);
          sub_100002CE0(v80, &qword_1005A9150, &qword_1004C2608);
          sub_100002CE0(v44, &qword_1005A9150, &qword_1004C2608);
          v69(v56, v46);
          sub_100002CE0(v52, &qword_1005A9150, &qword_1004C2608);
          v57 = v71;
          if (v68)
          {
            goto LABEL_23;
          }

LABEL_19:
          v58 = v75;
          v59 = v84;
          v60 = v81;
          (*(v75 + 16))(v84, v57, v81);
          Fence.update(muteEndDate:)();
          return (*(v58 + 56))(v59, 0, 1, v60);
        }

        sub_100002CE0(v80, &qword_1005A9150, &qword_1004C2608);
        sub_100002CE0(v44, &qword_1005A9150, &qword_1004C2608);
        (*(v83 + 8))(v56, v46);
      }

      sub_100002CE0(v52, &qword_1005B0B78, &qword_1004D2790);
      v57 = v71;
      goto LABEL_19;
    }

    sub_100002CE0(v35, &unk_1005AE5B0, &qword_1004C32F0);
    (*(v39 + 8))(v33, v21);
LABEL_8:
    sub_100002CE0(v28, &qword_1005AAE00, &qword_1004C4A18);
    goto LABEL_9;
  }

  sub_100002CE0(v35, &unk_1005AE5B0, &qword_1004C32F0);
  if (v40(&v28[v38], 1, v21) != 1)
  {
    goto LABEL_8;
  }

  v41 = &unk_1005AE5B0;
  v42 = &qword_1004C32F0;
  v43 = v28;
LABEL_15:
  sub_100002CE0(v43, v41, v42);
LABEL_23:
  v70 = type metadata accessor for Fence();
  return (*(*(v70 - 8) + 56))(v84, 1, 1, v70);
}

uint64_t sub_100271DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v7 = type metadata accessor for Fence();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v5[15] = *(v8 + 64);
  v5[16] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_100271ECC, a4, 0);
}

uint64_t sub_100271ECC()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v36 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v34 = (v3 + 16);
    v35 = *(v3 + 72);
    v33 = (v4 + 40) & ~v4;
    v31 = (v3 + 32);
    v32 = (*(v0 + 120) + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v30 = *(v7 + 56);
    v29 = (v7 + 48);
    v28 = (v7 + 8);
    do
    {
      v38 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 104);
      v37 = *(v0 + 96);
      v14 = *(v0 + 88);
      v30(v10, 1, 1, v6);
      (*v34)(v12, v5, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v14;
      (*v31)(v15 + v33, v12, v13);
      *(v15 + v32) = v37;
      sub_100005F04(v10, v11, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v11) = (*v29)(v11, 1, v6);

      v17 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_100002CE0(*(v0 + 136), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v28)(v17, v6);
      }

      if (*v16)
      {
        v18 = v15[3];
        v19 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = dispatch thunk of Actor.unownedExecutor.getter();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      if (v22 | v20)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v36;
      swift_task_create();

      sub_100002CE0(v9, &qword_1005A9690, &qword_1004C2A00);
      v5 += v35;
      v2 = v38 - 1;
    }

    while (v38 != 1);
  }

  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);

  v26 = *(v0 + 8);

  return v26();
}