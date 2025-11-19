uint64_t sub_10001AE18()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for deletion to complete", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();
    v11 = *(v0 + 88);
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);

    v14 = *(v0 + 8);
    goto LABEL_8;
  }

  v9 = *(v0 + 24);
  v10 = sub_100018BA0(*(v0 + 32), 1u, 0x14uLL);
  *(v0 + 96) = v10;
  if (!v10)
  {
    v19 = *(v0 + 88);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);

    v14 = *(v0 + 8);
LABEL_8:

    return v14();
  }

  v16 = *(v0 + 56);
  static Clock<>.continuous.getter();
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  *v17 = v0;
  v17[1] = sub_10001B100;
  v18 = *(v0 + 56);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001B100()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_10001B55C;
  }

  else
  {
    v5 = sub_10001B268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001B268()
{
  v1 = *(v0 + 16);

  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100001F70(v2, static Logger.daemon);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Progress cancelled, stop waiting for deletion to complete", v5, 2u);
    }

    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v7 + 8))(v6, v8);
    swift_willThrow();
    goto LABEL_8;
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 24);
  v12 = sub_100018BA0(*(v0 + 32), 1u, 0x14uLL);
  *(v0 + 96) = v12;
  if (v10)
  {
LABEL_8:
    v13 = *(v0 + 88);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);

    v16 = *(v0 + 8);
LABEL_9:

    return v16();
  }

  if (!v12)
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 56);
    v23 = *(v0 + 64);

    v16 = *(v0 + 8);
    goto LABEL_9;
  }

  v18 = *(v0 + 56);
  static Clock<>.continuous.getter();
  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = sub_10001B100;
  v20 = *(v0 + 56);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001B55C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B5E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001B6F4, 0, 0);
}

uint64_t sub_10001B6F4()
{
  v42 = v0;
  if (*(v0[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = v0[10];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[11] = sub_100001F70(v5, static Logger.daemon);
    v40 = *(v3 + 16);
    v40(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    v11 = v0[6];
    v10 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v12 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_100020014(v13, v15, &v41);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Wait for upload to complete %s", v12, 0xCu);
      sub_10000EA28(v39);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v28 = v0[4];
    v27 = v0[5];
    v29 = v0[2];
    v30 = v0[3];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v40(v23, v29, v25);
    v32 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v30;
    *(v33 + 5) = v28;
    (*(v26 + 32))(&v33[v32], v23, v25);
    v34 = v30;

    v35 = sub_100022EC4(0, 0, v27, &unk_10002BBF8, v33);
    v0[12] = v35;
    v36 = async function pointer to Task.value.getter[1];
    v37 = swift_task_alloc();
    v0[13] = v37;
    v38 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v37 = v0;
    v37[1] = sub_10001BB24;

    return Task.value.getter(v38, v35, &type metadata for () + 8, v38, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[5];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10001BB24()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10001BD34;
  }

  else
  {
    v3 = sub_10001BC38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001BC38()
{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bundle upload complete", v4, 2u);
  }

  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001BD34()
{
  v1 = v0[12];

  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[23] = v7;
  v8 = *(v7 - 8);
  v6[24] = v8;
  v9 = *(v8 + 64) + 15;
  v6[25] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError();
  v6[27] = v11;
  v12 = *(v11 - 8);
  v6[28] = v12;
  v13 = *(v12 + 64) + 15;
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10001BF08, 0, 0);
}

void sub_10001BF08()
{
  v97 = v0;
  v1 = *(v0 + 160);
  v2 = [objc_opt_self() progressWithTotalUnitCount:100];
  *(v0 + 240) = v2;
  [v1 addChild:v2 withPendingUnitCount:40];
  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for upload to complete", v6, 2u);
    }

    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);
    v11 = *(v0 + 208);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_8;
  }

  *(v0 + 248) = NSMetadataItemURLKey;
  *(v0 + 256) = NSMetadataUbiquitousItemIsUploadedKey;
  *(v0 + 264) = NSMetadataUbiquitousItemIsUploadingKey;
  *(v0 + 272) = NSMetadataUbiquitousItemUploadingErrorKey;
  v12 = _NSProgressRemoteLocalizedDescriptionKey;
  *(v0 + 280) = NSMetadataUbiquitousItemPercentUploadedKey;
  *(v0 + 288) = v12;
  v13 = *(v0 + 168);
  v14 = sub_100018BA0(*(v0 + 176), 1u, 0x14uLL);
  *(v0 + 296) = v14;
  if (!v14)
  {
    v7 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v55 = 2;
    swift_willThrow();
LABEL_8:

    v15 = *(v0 + 232);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);

    v18 = *(v0 + 8);
LABEL_9:

    v18();
    return;
  }

  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v23 = *(v0 + 248);
  v24 = v14;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10002BAE0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  *(v25 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 56) = v27;
  *(v25 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 72) = v28;
  *(v25 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 88) = v29;
  *(v25 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 104) = v30;
  v7 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v7 valuesForAttributes:isa];

  if (!v32)
  {
    v56 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v57 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100001F70(v34, static Logger.daemon);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v96 = v38;
    *v37 = 136315138;
    v39 = Dictionary.description.getter();
    v41 = sub_100020014(v39, v40, &v96);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Item values: %s", v37, 0xCu);
    sub_10000EA28(v38);
  }

  v42 = *(v0 + 256);
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v33 + 16))
  {
    v45 = sub_1000104D0(v43, v44);
    v47 = v46;

    if (v47)
    {
      sub_10000E7A8(*(v33 + 56) + 32 * v45, v0 + 16);
      if (swift_dynamicCast())
      {
        if (*(v0 + 321))
        {

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Bundle uploaded", v50, 2u);
          }

          v52 = *(v0 + 232);
          v51 = *(v0 + 240);
          v54 = *(v0 + 200);
          v53 = *(v0 + 208);

          [v51 setCompletedUnitCount:100];

          v18 = *(v0 + 8);
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
  }

  v58 = *(v0 + 272);
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v33 + 16))
  {
    v61 = sub_1000104D0(v59, v60);
    v63 = v62;

    if (v63)
    {
      sub_10000E7A8(*(v33 + 56) + 32 * v61, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v64 = *(v0 + 152);

        v65 = v64;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v65;
          *v69 = v65;
          v70 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "Bundle upload error %@", v68, 0xCu);
          sub_100014CFC(v69, &qword_100039E40, &unk_10002BAC0);
        }

        v71 = *(v0 + 240);

        swift_willThrow();
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v72 = *(v0 + 264);
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v33 + 16))
  {
    v75 = sub_1000104D0(v73, v74);
    v77 = v76;

    if (v77)
    {
      sub_10000E7A8(*(v33 + 56) + 32 * v75, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 320))
      {
        v78 = *(v0 + 280);
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v33 + 16))
        {
          v81 = sub_1000104D0(v79, v80);
          v83 = v82;

          if (v83)
          {
            sub_10000E7A8(*(v33 + 56) + 32 * v81, v0 + 112);

            if (swift_dynamicCast())
            {
              v84 = *(v0 + 144);
              goto LABEL_52;
            }

LABEL_51:
            v84 = 0.0;
LABEL_52:
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = 134217984;
              *(v91 + 4) = v84;
              _os_log_impl(&_mh_execute_header, v89, v90, "Bundle upload progress %f", v91, 0xCu);
            }

            if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v84 > -9.22337204e18)
            {
              if (v84 < 9.22337204e18)
              {
                [*(v0 + 240) setCompletedUnitCount:v84];
                v92 = *(v0 + 288);
                v93 = *(v0 + 160);
                v94 = String._bridgeToObjectiveC()();
                [v93 setLocalizedDescription:v94];

                v95 = String._bridgeToObjectiveC()();
                [v93 setUserInfoObject:v95 forKey:v92];

                v85 = 0;
                goto LABEL_46;
              }

LABEL_60:
              __break(1u);
              return;
            }

            __break(1u);
            goto LABEL_60;
          }
        }

        else
        {
        }

        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v85 = 1;
LABEL_46:
  *(v0 + 322) = v85;
  v86 = *(v0 + 200);
  static Clock<>.continuous.getter();
  v87 = swift_task_alloc();
  *(v0 + 304) = v87;
  *v87 = v0;
  v87[1] = sub_10001CA4C;
  v88 = *(v0 + 200);

  sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001CA4C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v10 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[37];
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[23];

    (*(v6 + 8))(v5, v7);
    v8 = sub_10001D680;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v8 = sub_10001CBA8;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_10001CBA8()
{
  v97 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);

  if ([v2 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for upload to complete", v6, 2u);
    }

    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);
    v11 = *(v0 + 208);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_9;
  }

  v12 = *(v0 + 312);
  v13 = *(v0 + 322);
  v14 = *(v0 + 168);
  v15 = sub_100018BA0(*(v0 + 176), 1u, 0x14uLL);
  *(v0 + 296) = v15;
  if (v12)
  {
    v7 = *(v0 + 240);
LABEL_9:

    v16 = *(v0 + 232);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);

    v19 = *(v0 + 8);
LABEL_10:

    v19();
    return;
  }

  if (!v15)
  {
    v7 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v55 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v23 = *(v0 + 256);
  v22 = *(v0 + 264);
  v24 = *(v0 + 248);
  v25 = v15;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10002BAE0;
  *(v26 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 40) = v27;
  *(v26 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 56) = v28;
  *(v26 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 72) = v29;
  *(v26 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 88) = v30;
  *(v26 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 104) = v31;
  v7 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v7 valuesForAttributes:isa];

  if (!v33)
  {
    v56 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v57 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100001F70(v35, static Logger.daemon);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = v95;
    *v38 = 136315138;
    v39 = Dictionary.description.getter();
    v41 = sub_100020014(v39, v40, &v96);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "Item values: %s", v38, 0xCu);
    sub_10000EA28(v95);
  }

  v42 = *(v0 + 256);
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v34 + 16))
  {
    v45 = sub_1000104D0(v43, v44);
    v47 = v46;

    if (v47)
    {
      sub_10000E7A8(*(v34 + 56) + 32 * v45, v0 + 16);
      if (swift_dynamicCast())
      {
        if (*(v0 + 321))
        {

          v48 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Bundle uploaded", v50, 2u);
          }

          v52 = *(v0 + 232);
          v51 = *(v0 + 240);
          v54 = *(v0 + 200);
          v53 = *(v0 + 208);

          [v51 setCompletedUnitCount:100];

          v19 = *(v0 + 8);
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
  }

  v58 = *(v0 + 272);
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v34 + 16))
  {
    v61 = sub_1000104D0(v59, v60);
    v63 = v62;

    if (v63)
    {
      sub_10000E7A8(*(v34 + 56) + 32 * v61, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v64 = *(v0 + 152);

        v65 = v64;
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v65;
          *v69 = v65;
          v70 = v65;
          _os_log_impl(&_mh_execute_header, v66, v67, "Bundle upload error %@", v68, 0xCu);
          sub_100014CFC(v69, &qword_100039E40, &unk_10002BAC0);
        }

        v71 = *(v0 + 240);

        swift_willThrow();
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v72 = *(v0 + 264);
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v34 + 16))
  {
    v75 = sub_1000104D0(v73, v74);
    v77 = v76;

    if (v77)
    {
      sub_10000E7A8(*(v34 + 56) + 32 * v75, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 320))
      {
        v78 = *(v0 + 280);
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v34 + 16))
        {
          v81 = sub_1000104D0(v79, v80);
          v83 = v82;

          if (v83)
          {
            sub_10000E7A8(*(v34 + 56) + 32 * v81, v0 + 112);

            if (swift_dynamicCast())
            {
              v84 = *(v0 + 144);
              goto LABEL_53;
            }

LABEL_52:
            v84 = 0.0;
LABEL_53:
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              *v90 = 134217984;
              *(v90 + 4) = v84;
              _os_log_impl(&_mh_execute_header, v88, v89, "Bundle upload progress %f", v90, 0xCu);
            }

            if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v84 > -9.22337204e18)
            {
              if (v84 < 9.22337204e18)
              {
                [*(v0 + 240) setCompletedUnitCount:v84];
                if (v13)
                {
                  v91 = *(v0 + 288);
                  v92 = *(v0 + 160);
                  v93 = String._bridgeToObjectiveC()();
                  [v92 setLocalizedDescription:v93];

                  v94 = String._bridgeToObjectiveC()();
                  [v92 setUserInfoObject:v94 forKey:v91];

                  LOBYTE(v13) = 0;
                }

                goto LABEL_47;
              }

LABEL_62:
              __break(1u);
              return;
            }

            __break(1u);
            goto LABEL_62;
          }
        }

        else
        {
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
  }

LABEL_47:
  *(v0 + 322) = v13;
  v85 = *(v0 + 200);
  static Clock<>.continuous.getter();
  v86 = swift_task_alloc();
  *(v0 + 304) = v86;
  *v86 = v0;
  v86[1] = sub_10001CA4C;
  v87 = *(v0 + 200);

  sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001D680()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 312);
  v3 = *(v0 + 232);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001D710(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10000281C(&qword_100039D28, &qword_10002B900) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001D820, 0, 0);
}

uint64_t sub_10001D820()
{
  v42 = v0;
  if (*(v0[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = v0[10];
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    v0[11] = sub_100001F70(v5, static Logger.daemon);
    v40 = *(v3 + 16);
    v40(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    v11 = v0[6];
    v10 = v0[7];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v12 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_100020014(v13, v15, &v41);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Wait for download to complete %s", v12, 0xCu);
      sub_10000EA28(v39);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v28 = v0[4];
    v27 = v0[5];
    v29 = v0[2];
    v30 = v0[3];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v40(v23, v29, v25);
    v32 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v30;
    *(v33 + 5) = v28;
    (*(v26 + 32))(&v33[v32], v23, v25);
    v34 = v30;

    v35 = sub_100022EC4(0, 0, v27, &unk_10002BBC8, v33);
    v0[12] = v35;
    v36 = async function pointer to Task.value.getter[1];
    v37 = swift_task_alloc();
    v0[13] = v37;
    v38 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v37 = v0;
    v37[1] = sub_10001DC50;

    return Task.value.getter(v38, v35, &type metadata for () + 8, v38, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v19 = v0[9];
    v18 = v0[10];
    v20 = v0[5];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10001DC50()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100022018;
  }

  else
  {
    v3 = sub_10001DD64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001DD64()
{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Download complete", v4, 2u);
  }

  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

void sub_10001DE60()
{
  if (!qword_10003A570)
  {
    sub_10000E99C(&unk_10003A578, &unk_10002BBB0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10003A570);
    }
  }
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError();
  v6[30] = v11;
  v12 = *(v11 - 8);
  v6[31] = v12;
  v13 = *(v12 + 64) + 15;
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_10001E03C, 0, 0);
}

uint64_t sub_10001E03C()
{
  v118 = v0;
  v1 = *(v0 + 184);
  v2 = [objc_opt_self() progressWithTotalUnitCount:100];
  *(v0 + 264) = v2;
  [v1 addChild:v2 withPendingUnitCount:80];
  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for download to complete", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 232);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_8;
  }

  *(v0 + 272) = NSMetadataItemURLKey;
  *(v0 + 280) = NSMetadataUbiquitousItemDownloadingStatusKey;
  *(v0 + 288) = NSMetadataUbiquitousItemDownloadingErrorKey;
  *(v0 + 296) = NSMetadataUbiquitousItemIsDownloadingKey;
  *(v0 + 304) = NSMetadataUbiquitousItemPercentDownloadedKey;
  *(v0 + 312) = NSMetadataUbiquitousItemDownloadingStatusCurrent;
  *(v0 + 320) = _NSProgressRemoteLocalizedDescriptionKey;
  v12 = *(v0 + 192);
  v13 = sub_100018BA0(*(v0 + 200), 1u, 0x14uLL);
  *(v0 + 328) = v13;
  if (!v13)
  {
    v7 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v50 = 2;
    swift_willThrow();
LABEL_8:

    v14 = *(v0 + 256);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);

    v17 = *(v0 + 8);
LABEL_9:

    return v17();
  }

  v19 = *(v0 + 296);
  v20 = *(v0 + 304);
  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  v23 = *(v0 + 272);
  v24 = v13;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10002BAE0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  *(v25 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 56) = v27;
  *(v25 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 72) = v28;
  *(v25 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 88) = v29;
  *(v25 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 104) = v30;
  v7 = v24;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v7 valuesForAttributes:isa];

  if (!v32)
  {
    v51 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v52 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100001F70(v34, static Logger.daemon);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v117 = v38;
    *v37 = 136315138;
    v39 = Dictionary.description.getter();
    v41 = sub_100020014(v39, v40, &v117);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Item values: %s", v37, 0xCu);
    sub_10000EA28(v38);
  }

  v42 = *(v0 + 280);
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v33 + 16))
  {

LABEL_25:
    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_26;
  }

  v45 = sub_1000104D0(v43, v44);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_10000E7A8(*(v33 + 56) + 32 * v45, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = *(v0 + 144);
  v49 = *(v0 + 152);
LABEL_26:
  v53 = *(v0 + 312);
  if (v48 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v49 == v54)
  {

LABEL_30:

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Bundle is current", v58, 2u);
    }

    v60 = *(v0 + 256);
    v59 = *(v0 + 264);
    v62 = *(v0 + 224);
    v61 = *(v0 + 232);

    [v59 setCompletedUnitCount:100];

    v17 = *(v0 + 8);
    goto LABEL_9;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {
    goto LABEL_30;
  }

  v63 = *(v0 + 200);
  v64 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v65);
  v67 = v66;
  *(v0 + 160) = 0;
  v68 = [v64 startDownloadingUbiquitousItemAtURL:v66 error:v0 + 160];

  v69 = *(v0 + 160);
  if (!v68)
  {
    v86 = *(v0 + 264);
    v87 = v69;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  v70 = *(v0 + 288);
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;
  if (*(v33 + 16))
  {
    v74 = v71;
    v75 = v69;
    v76 = sub_1000104D0(v74, v73);
    LOBYTE(v74) = v77;

    if (v74)
    {
      sub_10000E7A8(*(v33 + 56) + 32 * v76, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v78 = *(v0 + 176);

        v79 = v78;
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          *(v82 + 4) = v79;
          *v83 = v79;
          v84 = v79;
          _os_log_impl(&_mh_execute_header, v80, v81, "Download error %@", v82, 0xCu);
          sub_100014CFC(v83, &qword_100039E40, &unk_10002BAC0);
        }

        v85 = *(v0 + 264);

        swift_willThrow();
        goto LABEL_8;
      }
    }
  }

  else
  {
    v88 = v69;
  }

  v89 = *(v0 + 296);
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v33 + 16))
  {
    v92 = sub_1000104D0(v90, v91);
    v94 = v93;

    if (v94)
    {
      sub_10000E7A8(*(v33 + 56) + 32 * v92, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 376))
      {

        v95 = 10;
        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "Item didn't start downloading yet", v98, 2u);
  }

  v95 = 9;
LABEL_51:
  *(v0 + 336) = v95;
  v99 = *(v0 + 304);
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v33 + 16))
  {

    goto LABEL_56;
  }

  v102 = sub_1000104D0(v100, v101);
  v104 = v103;

  if ((v104 & 1) == 0)
  {
LABEL_56:

    goto LABEL_57;
  }

  sub_10000E7A8(*(v33 + 56) + 32 * v102, v0 + 112);

  if (swift_dynamicCast())
  {
    v105 = *(v0 + 168);
    goto LABEL_58;
  }

LABEL_57:
  v105 = 0.0;
LABEL_58:
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 134217984;
    *(v108 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v106, v107, "Download progress %f", v108, 0xCu);
  }

  v109 = 0.0;
  if (v105 != 0.0)
  {
    v109 = v105;
  }

  *(v0 + 352) = v109;
  *(v0 + 344) = v105 == 0.0;
  if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v105 <= -9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  if (v105 >= 9.22337204e18)
  {
    goto LABEL_70;
  }

  [*(v0 + 264) setCompletedUnitCount:v105];
  v110 = *(v0 + 320);
  v111 = *(v0 + 184);
  v112 = String._bridgeToObjectiveC()();
  [v111 setLocalizedDescription:v112];

  v113 = String._bridgeToObjectiveC()();
  [v111 setUserInfoObject:v113 forKey:v110];

  v114 = *(v0 + 224);
  static Clock<>.continuous.getter();
  v115 = swift_task_alloc();
  *(v0 + 360) = v115;
  *v115 = v0;
  v115[1] = sub_10001ED8C;
  v116 = *(v0 + 224);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001ED8C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v10 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = v2[41];
    v6 = v2[27];
    v5 = v2[28];
    v7 = v2[26];

    (*(v6 + 8))(v5, v7);
    v8 = sub_10001FDCC;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v8 = sub_10001EF14;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001EF14()
{
  v131 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 184);

  if ([v2 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for download to complete", v6, 2u);
    }

    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = *(v0 + 232);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_9;
  }

  v12 = *(v0 + 368);
  v13 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = *(v0 + 344);
  v16 = *(v0 + 192);
  v17 = sub_100018BA0(*(v0 + 200), 1u, 0x14uLL);
  *(v0 + 328) = v17;
  if (v12)
  {
    v7 = *(v0 + 264);
LABEL_9:

    v18 = *(v0 + 256);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);

    v21 = *(v0 + 8);
LABEL_10:

    return v21();
  }

  if (!v17)
  {
    v7 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v46 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v23 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 280);
  v25 = *(v0 + 288);
  v27 = *(v0 + 272);
  v28 = v17;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10002BAE0;
  *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 40) = v30;
  *(v29 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 56) = v31;
  *(v29 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 72) = v32;
  *(v29 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 88) = v33;
  *(v29 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 104) = v34;
  v7 = v28;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = [v7 valuesForAttributes:isa];

  if (!v36)
  {
    v47 = *(v0 + 264);
    sub_100014E24();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100001F70(v38, static Logger.daemon);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  v129 = v14;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v130 = v128;
    *v41 = 136315138;
    v42 = Dictionary.description.getter();
    v44 = v15;
    v45 = sub_100020014(v42, v43, &v130);

    *(v41 + 4) = v45;
    v15 = v44;
    _os_log_impl(&_mh_execute_header, v39, v40, "Item values: %s", v41, 0xCu);
    sub_10000EA28(v128);
  }

  v49 = *(v0 + 280);
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v37 + 16))
  {

LABEL_26:
    v56 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_27;
  }

  v52 = sub_1000104D0(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_10000E7A8(*(v37 + 56) + 32 * v52, v0 + 16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v56 = *(v0 + 144);
  v55 = *(v0 + 152);
LABEL_27:
  v57 = *(v0 + 312);
  if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v58)
  {

LABEL_31:

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v60, v61))
    {
LABEL_34:
      v65 = *(v0 + 256);
      v64 = *(v0 + 264);
      v67 = *(v0 + 224);
      v66 = *(v0 + 232);

      [v64 setCompletedUnitCount:100];

      v21 = *(v0 + 8);
      goto LABEL_10;
    }

    v62 = "Bundle is current";
LABEL_33:
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, v62, v63, 2u);

    goto LABEL_34;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_31;
  }

  v68 = *(v0 + 200);
  v69 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v70);
  v72 = v71;
  *(v0 + 160) = 0;
  v73 = [v69 startDownloadingUbiquitousItemAtURL:v71 error:v0 + 160];

  v74 = *(v0 + 160);
  if (!v73)
  {
    v91 = *(v0 + 264);
    v92 = v74;

    _convertNSErrorToError(_:)();

LABEL_83:
    swift_willThrow();

    goto LABEL_9;
  }

  v75 = *(v0 + 288);
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;
  if (*(v37 + 16))
  {
    v79 = v76;
    v80 = v74;
    v81 = sub_1000104D0(v79, v78);
    LOBYTE(v79) = v82;

    if (v79)
    {
      sub_10000E7A8(*(v37 + 56) + 32 * v81, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v83 = *(v0 + 176);

        v84 = v83;
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v87 = 138412290;
          *(v87 + 4) = v84;
          *v88 = v84;
          v89 = v84;
          _os_log_impl(&_mh_execute_header, v85, v86, "Download error %@", v87, 0xCu);
          sub_100014CFC(v88, &qword_100039E40, &unk_10002BAC0);
        }

        v90 = *(v0 + 264);

        swift_willThrow();
        goto LABEL_9;
      }
    }
  }

  else
  {
    v93 = v74;
  }

  v94 = *(v0 + 296);
  v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v37 + 16))
  {
    v97 = sub_1000104D0(v95, v96);
    v99 = v98;

    if (v99)
    {
      sub_10000E7A8(*(v37 + 56) + 32 * v97, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 376))
      {

        v100 = v129;
        goto LABEL_54;
      }
    }
  }

  else
  {
  }

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&_mh_execute_header, v101, v102, "Item didn't start downloading yet", v103, 2u);
  }

  if (!v129)
  {

    if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v111)
    {
    }

    else
    {
      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v123 & 1) == 0)
      {
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v60, v61))
        {
          goto LABEL_34;
        }

        v62 = "Bundle is downloaded (but not current), completing";
        goto LABEL_33;
      }
    }

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v116, v117))
    {
      goto LABEL_82;
    }

    v118 = swift_slowAlloc();
    *v118 = 0;
    v119 = "Item didn't start downloading for 10 waiting iterations, throwing an error";
    goto LABEL_81;
  }

  v100 = v129 - 1;
  if (__OFSUB__(v129, 1))
  {
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_54:
  *(v0 + 336) = v100;
  v104 = *(v0 + 304);
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v37 + 16))
  {

    goto LABEL_62;
  }

  v107 = sub_1000104D0(v105, v106);
  v109 = v108;

  if ((v109 & 1) == 0)
  {
LABEL_62:

    goto LABEL_63;
  }

  sub_10000E7A8(*(v37 + 56) + 32 * v107, v0 + 112);

  if (swift_dynamicCast())
  {
    v110 = *(v0 + 168);
    goto LABEL_64;
  }

LABEL_63:
  v110 = 0.0;
LABEL_64:
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 134217984;
    *(v114 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v112, v113, "Download progress %f", v114, 0xCu);
  }

  if (v110 == v13)
  {
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_90;
    }

    if (v15 >= 100)
    {

      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v116, v117))
      {
LABEL_82:
        v124 = *(v0 + 256);
        v91 = *(v0 + 264);
        v125 = *(v0 + 240);
        v126 = *(v0 + 248);
        v127 = *(v0 + 232);

        static CocoaError.Code.ubiquitousFileUnavailable.getter();
        sub_100026FA8(_swiftEmptyArrayStorage);
        sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError);
        _BridgedStoredNSError.init(_:userInfo:)();
        CocoaError._nsError.getter();
        (*(v126 + 8))(v124, v125);
        goto LABEL_83;
      }

      v118 = swift_slowAlloc();
      *v118 = 0;
      v119 = "No progress for a while, throwing an error";
LABEL_81:
      _os_log_impl(&_mh_execute_header, v116, v117, v119, v118, 2u);

      goto LABEL_82;
    }
  }

  else
  {
    v13 = v110;
  }

  *(v0 + 352) = v13;
  *(v0 + 344) = v15;
  if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_87;
  }

  if (v110 <= -9.22337204e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v110 >= 9.22337204e18)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  [*(v0 + 264) setCompletedUnitCount:v110];
  v120 = *(v0 + 224);
  static Clock<>.continuous.getter();
  v121 = swift_task_alloc();
  *(v0 + 360) = v121;
  *v121 = v0;
  v121[1] = sub_10001ED8C;
  v122 = *(v0 + 224);

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001FDCC()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 368);
  v3 = *(v0 + 256);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001FE8C(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001DEC4(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10001FFB8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100020014(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100020014(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000200E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000E7A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EA28(v11);
  return v7;
}

unint64_t sub_1000200E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000201EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000201EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100020238(a1, a2);
  sub_100020368(&off_100034D88);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100020238(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100020454(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100020454(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100020368(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000204C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100020454(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000281C(&qword_10003A730, &qword_10002BBD8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000204C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000281C(&qword_10003A730, &qword_10002BBD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1000205C0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100020634(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10002086C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100020A5C(v21 + 1);
    }

    v19 = v8;
    sub_100020C84(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100020D08(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10002086C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000281C(&qword_10003A758, &qword_10002BC30);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100020A5C(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100020A5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_100020C84(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100020D08(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100020A5C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100020E78();
      goto LABEL_12;
    }

    sub_100020FC8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100020E78()
{
  v1 = v0;
  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100020FC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000281C(&qword_10003A758, &qword_10002BC30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000211DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021224(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001BDBC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100021328(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000EE44;

  return sub_10001ACCC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10002142C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100021500(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000296C;

  return sub_100019C70(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100021604()
{
  if (*(v0 + 40))
  {
    sub_10000EA28((v0 + 16));
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100021644()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002171C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100018FC0(v3, v0 + v2, v4);
}

uint64_t sub_1000217AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000217E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A740, &unk_10002BC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100021854()
{
  result = qword_10003A750;
  if (!qword_10003A750)
  {
    sub_10000E838(255, &qword_10003A748, NSMetadataItem_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A750);
  }

  return result;
}

void sub_1000218C4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10000281C(&qword_10003A758, &qword_10002BC30);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100021BB4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    sub_100021854();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100020634(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_100021CF4()
{
  result = qword_10003A778;
  if (!qword_10003A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A778);
  }

  return result;
}

uint64_t sub_100021D50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100021D98(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000296C;

  return sub_100018454(v6, a1, v4, v5, v8, v7);
}

uint64_t getEnumTagSinglePayload for ContainerObserverError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerObserverError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100021FB4()
{
  result = qword_10003A780;
  if (!qword_10003A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A780);
  }

  return result;
}

uint64_t sub_100022020(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100022100(__SecTask *a1)
{
  error = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = SecTaskCopyValueForEntitlement(a1, v2, &error);

  if (v3)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v16[0] = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Couldn't convert cloudServicesArray to Array of Strings", v14, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = error;
    v5 = error;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100020014(0xD000000000000023, 0x800000010002D3C0, v16);
      *(v8 + 12) = 2082;
      v16[2] = v4;
      sub_10000281C(qword_10003A830, &qword_10002BD58);
      v9 = Optional.debugDescription.getter();
      v11 = sub_100020014(v9, v10, v16);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Couldn't lookup %s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000228A8(__SecTask *a1)
{
  error = 0;
  v2 = String._bridgeToObjectiveC()();
  v3 = SecTaskCopyValueForEntitlement(a1, v2, &error);

  if (!v3)
  {
    v14 = error;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      sub_10000281C(qword_10003A830, &qword_10002BD58);
      v19 = Optional.debugDescription.getter();
      v21 = sub_100020014(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Couldn't lookup kSecEntitlementApplicationIdentifier: %{public}s", v17, 0xCu);
      sub_10000EA28(v18);
    }

    else
    {
    }

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 lastPathComponent];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (String.count.getter() >= 1)
    {
      v9 = v6 == 11822 && v8 == 0xE200000000000000;
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v6 != 46 || v8 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        swift_unknownObjectRelease();
        return v6;
      }
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Invalid application identifier.";
    goto LABEL_18;
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Couldn't convert application identifier to String";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
  }

LABEL_19:

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100022BF0(void *a1)
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

uint64_t sub_100022C4C(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_10000E99C(&qword_100039ED0, &unk_10002B940);
  type metadata accessor for CheckedContinuation();
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

id *sub_100022D28()
{
  v1 = *v0;

  v2 = *(*v0 + 13);
  v3 = v1[10];
  sub_10000E99C(&qword_100039ED0, &unk_10002B940);
  type metadata accessor for CheckedContinuation();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = (v0 + *(*v0 + 14));
  v6 = v5[1];
  sub_100022E84(*v5);
  return v0;
}

uint64_t sub_100022E14()
{
  sub_100022D28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100022E84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100022EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100014C94(a3, v24 - v10, &qword_100039D28, &qword_10002B900);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100014CFC(v11, &qword_100039D28, &qword_10002B900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100023170(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v5 = type metadata accessor for CocoaError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v42[1] = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CocoaError();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v42[0] = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v42 - v14;
  v16 = sub_10000281C(&qword_10003A9A0, &qword_10002BE50);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v45 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v47 = v42 - v21;
  __chkstk_darwin(v20);
  v48 = v42 - v22;
  v49 = a1[2];
  v23 = *(*a1 + 112);
  v24 = (a1 + v23);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  if (v25)
  {
    aBlock[4] = *(a1 + v23);
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002BBC;
    aBlock[3] = &unk_1000357B0;
    v27 = _Block_copy(aBlock);
    v46 = a1;
    sub_1000270D8(v25);
    sub_1000270D8(v25);
    a1 = v46;
  }

  else
  {
    v28 = *(a1 + v23 + 8);
    sub_1000270D8(0);
    v27 = 0;
  }

  [v49 setCancellationHandler:v27];
  _Block_release(v27);
  sub_100022E84(v25);
  v29 = *v24;
  v30 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  sub_100022E84(v29);
  v31 = (v12 + 48);
  v32 = v50;
  if (v50 != 1)
  {
    v36 = v48;
    sub_100014C94(a1 + *(*a1 + 104), v48, &qword_10003A9A0, &qword_10002BE50);
    if (!(*v31)(v36, 1, v11))
    {
      (*(v12 + 16))(v15, v36, v11);
      sub_100014CFC(v36, &qword_10003A9A0, &qword_10002BE50);
      aBlock[0] = v32;

      CheckedContinuation.resume(returning:)();
LABEL_16:
      (*(v12 + 8))(v15, v11);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v33 = a1 + *(*a1 + 104);
  if (!a3)
  {
    v36 = v45;
    sub_100014C94(v33, v45, &qword_10003A9A0, &qword_10002BE50);
    if (!(*v31)(v36, 1, v11))
    {
      (*(v12 + 16))(v15, v36, v11);
      sub_100014CFC(v36, &qword_10003A9A0, &qword_10002BE50);
      static CocoaError.Code.featureUnsupported.getter();
      sub_100026FA8(_swiftEmptyArrayStorage);
      sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
      v37 = v42[0];
      v38 = v44;
      _BridgedStoredNSError.init(_:userInfo:)();
      v39 = CocoaError._nsError.getter();
      (*(v43 + 8))(v37, v38);
      aBlock[0] = v39;
      goto LABEL_15;
    }

LABEL_11:
    v35 = v36;
    goto LABEL_12;
  }

  v34 = v47;
  sub_100014C94(v33, v47, &qword_10003A9A0, &qword_10002BE50);
  if (!(*v31)(v34, 1, v11))
  {
    (*(v12 + 16))(v15, v34, v11);
    swift_errorRetain();
    sub_100014CFC(v34, &qword_10003A9A0, &qword_10002BE50);
    aBlock[0] = a3;
LABEL_15:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_16;
  }

  v35 = v34;
LABEL_12:
  sub_100014CFC(v35, &qword_10003A9A0, &qword_10002BE50);
LABEL_17:
  v40 = *(*a1 + 104);
  sub_100014CFC(a1 + v40, &qword_10003A9A0, &qword_10002BE50);
  return (*(v12 + 56))(a1 + v40, 1, 1, v11);
}

uint64_t sub_1000237C0(void *a1, int a2, uint64_t a3)
{
  v49 = a2;
  v5 = type metadata accessor for CocoaError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CocoaError();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v41[0] = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v41 - v14;
  v16 = sub_10000281C(&qword_10003A9B8, &qword_10002BE88);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v44 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v46 = v41 - v21;
  __chkstk_darwin(v20);
  v47 = v41 - v22;
  v48 = a1[2];
  v23 = *(*a1 + 112);
  v24 = (a1 + v23);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  if (v25)
  {
    aBlock[4] = *(a1 + v23);
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002BBC;
    aBlock[3] = &unk_1000358A0;
    v27 = _Block_copy(aBlock);
    v45 = a1;
    sub_1000270D8(v25);
    sub_1000270D8(v25);
    a1 = v45;
  }

  else
  {
    v28 = *(a1 + v23 + 8);
    sub_1000270D8(0);
    v27 = 0;
  }

  [v48 setCancellationHandler:v27];
  _Block_release(v27);
  sub_100022E84(v25);
  v29 = *v24;
  v30 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  sub_100022E84(v29);
  v31 = (v12 + 48);
  if ((v49 & 1) == 0)
  {
    v35 = v47;
    sub_100014C94(a1 + *(*a1 + 104), v47, &qword_10003A9B8, &qword_10002BE88);
    if (!(*v31)(v35, 1, v11))
    {
      (*(v12 + 16))(v15, v35, v11);
      sub_100014CFC(v35, &qword_10003A9B8, &qword_10002BE88);
      CheckedContinuation.resume(returning:)();
LABEL_16:
      (*(v12 + 8))(v15, v11);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v32 = a1 + *(*a1 + 104);
  if (!a3)
  {
    v35 = v44;
    sub_100014C94(v32, v44, &qword_10003A9B8, &qword_10002BE88);
    if (!(*v31)(v35, 1, v11))
    {
      (*(v12 + 16))(v15, v35, v11);
      sub_100014CFC(v35, &qword_10003A9B8, &qword_10002BE88);
      static CocoaError.Code.featureUnsupported.getter();
      sub_100026FA8(_swiftEmptyArrayStorage);
      sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
      v36 = v41[0];
      v37 = v43;
      _BridgedStoredNSError.init(_:userInfo:)();
      v38 = CocoaError._nsError.getter();
      (*(v42 + 8))(v36, v37);
      aBlock[0] = v38;
      goto LABEL_15;
    }

LABEL_11:
    v34 = v35;
    goto LABEL_12;
  }

  v33 = v46;
  sub_100014C94(v32, v46, &qword_10003A9B8, &qword_10002BE88);
  if (!(*v31)(v33, 1, v11))
  {
    (*(v12 + 16))(v15, v33, v11);
    swift_errorRetain();
    sub_100014CFC(v33, &qword_10003A9B8, &qword_10002BE88);
    aBlock[0] = a3;
LABEL_15:
    CheckedContinuation.resume(throwing:)();
    goto LABEL_16;
  }

  v34 = v33;
LABEL_12:
  sub_100014CFC(v34, &qword_10003A9B8, &qword_10002BE88);
LABEL_17:
  v39 = *(*a1 + 104);
  sub_100014CFC(a1 + v39, &qword_10003A9B8, &qword_10002BE88);
  return (*(v12 + 56))(a1 + v39, 1, 1, v11);
}

void sub_100023DFC()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for CocoaError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v9 = CocoaError._nsError.getter();
  (*(v5 + 8))(v8, v4);
  v10 = v1[3];
  [v10 lock];
  sub_100023170(v1, 1, v9);
  [v10 unlock];
}

void sub_100023FD8()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for CocoaError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v9 = CocoaError._nsError.getter();
  (*(v5 + 8))(v8, v4);
  v10 = v1[3];
  [v10 lock];
  sub_1000237C0(v1, 1, v9);
  [v10 unlock];
}

uint64_t sub_1000241B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v36 = a6;
  v13 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - v15;
  v17 = *(*a2 + 104);
  sub_100014CFC(&a2[v17], &qword_10003A9A0, &qword_10002BE50);
  v18 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a2[v17], a1, v18);
  (*(v19 + 56))(&a2[v17], 0, 1, v18);
  v20 = *(a2 + 2);
  v21 = [v20 cancellationHandler];
  if (v21)
  {
    v22 = v21;
    v21 = swift_allocObject();
    v21[2] = v22;
    v23 = sub_100026AE0;
  }

  else
  {
    v23 = 0;
  }

  v24 = &a2[*(*a2 + 112)];
  v26 = *v24;
  v25 = v24[1];
  *v24 = v23;
  v24[1] = v21;
  sub_100022E84(v26);
  v27 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000268CC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035710;
  v28 = _Block_copy(aBlock);

  [v20 setCancellationHandler:v28];
  _Block_release(v28);
  v29 = type metadata accessor for TaskPriority();
  v30 = *(*(v29 - 8) + 56);
  v30(v16, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a2;
  v31[5] = a3;
  v31[6] = a4;

  sub_100012918(0, 0, v16, &unk_10002BE60, v31);

  if ((a7 & 1) == 0)
  {
    v30(v16, 1, 1, v29);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v34 = v36;
    v33[4] = a5;
    v33[5] = v34;
    v33[6] = a2;

    sub_100022EC4(0, 0, v16, &unk_10002BE70, v33);
  }

  return result;
}

uint64_t sub_100024558(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v36 = a6;
  v13 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v35 - v15;
  v17 = *(*a2 + 104);
  sub_100014CFC(&a2[v17], &qword_10003A9B8, &qword_10002BE88);
  v18 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&a2[v17], a1, v18);
  (*(v19 + 56))(&a2[v17], 0, 1, v18);
  v20 = *(a2 + 2);
  v21 = [v20 cancellationHandler];
  if (v21)
  {
    v22 = v21;
    v21 = swift_allocObject();
    v21[2] = v22;
    v23 = sub_100028CB4;
  }

  else
  {
    v23 = 0;
  }

  v24 = &a2[*(*a2 + 112)];
  v26 = *v24;
  v25 = v24[1];
  *v24 = v23;
  v24[1] = v21;
  sub_100022E84(v26);
  v27 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100027140;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035800;
  v28 = _Block_copy(aBlock);

  [v20 setCancellationHandler:v28];
  _Block_release(v28);
  v29 = type metadata accessor for TaskPriority();
  v30 = *(*(v29 - 8) + 56);
  v30(v16, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a2;
  v31[5] = a3;
  v31[6] = a4;

  sub_100012918(0, 0, v16, &unk_10002BEA0, v31);

  if ((a7 & 1) == 0)
  {
    v30(v16, 1, 1, v29);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v34 = v36;
    v33[4] = a5;
    v33[5] = v34;
    v33[6] = a2;

    sub_100022EC4(0, 0, v16, &unk_10002BEB0, v33);
  }

  return result;
}

uint64_t sub_1000248FC(uint64_t a1, void (*a2)(void))
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001F70(v3, static Logger.daemon);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Progress canceled, cancelling operation...", v6, 2u);
  }

  if (swift_weakLoadStrong())
  {
    a2();
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = (result + *(*result + 112));
    v9 = *v8;
    v10 = v8[1];
    sub_1000270D8(*v8);

    if (v9)
    {
      v9(result);

      return sub_100022E84(v9);
    }
  }

  return result;
}

uint64_t sub_100024A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 24) = a4;
  v9 = (a5 + *a5);
  v6 = a5[1];
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_100024B70;

  return v9(v5 + 16);
}

uint64_t sub_100024B70()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100024D78;
  }

  else
  {
    v3 = sub_100024C84;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_100024C84()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v3[3];
  [v4 lock];
  sub_100023170(v3, v1, 0);
  if (v2)
  {

    return [v4 unlock];
  }

  else
  {
    [v4 unlock];
    sub_100027130(v1);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100024D78()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[3];
  swift_errorRetain();
  [v3 lock];
  sub_100023170(v2, 1, v1);
  v4 = v0[5];
  [v3 unlock];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100024E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 16) = a4;
  v9 = (a5 + *a5);
  v6 = a5[1];
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_100024F64;

  return v9(v5 + 40);
}

uint64_t sub_100024F64()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100025158;
  }

  else
  {
    v3 = sub_100025078;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_100025078()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = v2[3];
  [v3 lock];
  sub_1000237C0(v2, 0, 0);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    [v3 unlock];
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100025158()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[3];
  swift_errorRetain();
  [v3 lock];
  sub_1000237C0(v2, 1, v1);
  v4 = v0[4];
  [v3 unlock];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100025250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v13 = *(v12 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10002539C, 0, 0);
}

uint64_t sub_10002539C()
{
  v1 = v0[11];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10002545C;
  v3 = v0[11];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100026AF0(v5, v4, 0, 0, 1);
}

uint64_t sub_10002545C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10002577C;
  }

  else
  {
    v6 = sub_1000255CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_1000255CC()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v3 + 8))(v2, v5);
  v8 = v6[3];
  [v8 lock];
  sub_100023170(v6, 1, v7);
  if (v1)
  {

    return [v8 unlock];
  }

  else
  {
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[5];
    [v8 unlock];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10002577C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1000257F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(type metadata accessor for CocoaError.Code() - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = type metadata accessor for ContinuousClock();
  v6[9] = v11;
  v12 = *(v11 - 8);
  v6[10] = v12;
  v13 = *(v12 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100025944, 0, 0);
}

uint64_t sub_100025944()
{
  v1 = v0[11];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_100025A04;
  v3 = v0[11];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100026AF0(v5, v4, 0, 0, 1);
}

uint64_t sub_100025A04()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100028CD0;
  }

  else
  {
    v6 = sub_100025B74;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_100025B74()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  static CocoaError.Code.userCancelled.getter();
  sub_100026FA8(_swiftEmptyArrayStorage);
  sub_1000270E8(&qword_100039E58, &type metadata accessor for CocoaError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v7 = CocoaError._nsError.getter();
  (*(v3 + 8))(v2, v5);
  v8 = v6[3];
  [v8 lock];
  sub_1000237C0(v6, 1, v7);
  if (v1)
  {

    return [v8 unlock];
  }

  else
  {
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[5];
    [v8 unlock];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_100025D24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100025DB4;

  return sub_10002738C();
}

uint64_t sub_100025DB4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100025EB4, 0, 0);
}

uint64_t sub_100025ED4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_100025EFC, 0, 0);
}

uint64_t sub_100025EFC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = *(v1 + 16);
  v6 = sub_10000281C(&qword_10003A990, &qword_10002BE30);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v0 + 48) = v9;
  v10 = objc_allocWithZone(NSRecursiveLock);
  v11 = v5;
  *(v9 + 3) = [v10 init];
  v12 = *(*v9 + 104);
  v13 = sub_10000281C(&qword_10003A998, &qword_10002BE38);
  (*(*(v13 - 8) + 56))(&v9[v12], 1, 1, v13);
  v14 = &v9[*(*v9 + 112)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v9 + 2) = v11;

  v15 = swift_task_alloc();
  *(v0 + 56) = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = &unk_10002BE48;
  *(v15 + 32) = v1;
  *(v15 + 40) = v4;
  *(v15 + 48) = v2;
  *(v15 + 56) = v3 & 1;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  v18 = sub_10000281C(&qword_10003A168, &unk_10002B6F0);
  *v17 = v0;
  v17[1] = sub_10002611C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_100026880, v15, v18);
}

uint64_t sub_10002611C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;

  if (v0)
  {
    v4 = v2[7];

    v5 = sub_1000262D8;
  }

  else
  {
    v6 = v2[7];
    v7 = v2[5];

    v2[9] = v2[2];
    v5 = sub_10002625C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002625C()
{
  v1 = v0[9];
  v2 = v0[6];

  if (!v1)
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1000262D8()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[1];

  return v3(_swiftEmptyArrayStorage);
}

uint64_t sub_100026350(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_100026370, 0, 0);
}

uint64_t sub_100026370()
{
  v1 = *(*(v0 + 32) + 24);
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = async function pointer to Task<>.value.getter[1];

    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    v4 = sub_10000281C(&unk_100039FB8, &unk_10002B490);
    *v3 = v0;
    v3[1] = sub_100026478;

    return Task<>.value.getter(v0 + 16, v1, v4);
  }

  else
  {
    **(v0 + 24) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100026478()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100026590, 0, 0);
}

uint64_t sub_1000265B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_10000E838(0, &qword_10003A9E0, ACAccount_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000266B0(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100026780()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000267E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000296C;

  return sub_100026350(a1, v1);
}

uint64_t sub_100026894()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000268FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000296C;

  return sub_100024A7C(a1, v4, v5, v6, v7);
}

uint64_t sub_1000269E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EE44;

  return sub_100025250(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100026AA8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100026BF0, 0, 0);
}

uint64_t sub_100026BF0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000270E8(&qword_10003A9A8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000270E8(&qword_10003A9B0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100026D80;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100026D80()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100026F3C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100026F3C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_100026FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000281C(&qword_10003A130, &qword_10002BE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014C94(v4, &v13, &qword_10003A138, &unk_10002B6D0);
      v5 = v13;
      v6 = v14;
      result = sub_1000104D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010A3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000270D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000270E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027130(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100027174()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000271BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EE44;

  return sub_100024E70(a1, v4, v5, v6, v7);
}

uint64_t sub_100027284()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000272C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EE44;

  return sub_1000257F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002738C()
{

  return _swift_task_switch(sub_100027418, 0, 0);
}

uint64_t sub_100027418()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[37] = sub_100001F70(v1, static Logger.daemon);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting to prefetch the devices for account", v4, 2u);
  }

  v5 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v0[38] = v5;
  if (v5)
  {
    v6 = objc_opt_self();
    v0[39] = v6;
    v7 = [v6 defaultStore];
    v0[40] = v7;
    if (v7)
    {
      v8 = v7;
      v9 = ACAccountTypeIdentifierAppleAccount;
      v0[41] = ACAccountTypeIdentifierAppleAccount;
      v0[2] = v0;
      v0[7] = v0 + 36;
      v0[3] = sub_100027748;
      v10 = swift_continuation_init();
      v0[33] = sub_10000281C(&qword_10003A9C0, &qword_10002BEC8);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_100028CCC;
      v0[29] = &unk_1000358C8;
      v0[30] = v10;
      [v8 accountTypeWithIdentifier:v9 completion:v0 + 26];
      v7 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v7);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Could not create AppleIDAuthController", v13, 2u);
    }

    v14 = v0[1];

    return v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100027748()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 336) = v2;
  if (v2)
  {
    v3 = sub_1000288AC;
  }

  else
  {
    v3 = sub_100027884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027884()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[36];
  v0[43] = v3;

  if (v3)
  {
    v4 = v0[39];
    v5 = v3;
    v6 = [v4 defaultStore];
    v0[44] = v6;
    if (v6)
    {
      v7 = v6;
      v0[10] = v0;
      v0[15] = v0 + 36;
      v0[11] = sub_100027AF0;
      v8 = swift_continuation_init();
      v0[33] = sub_10000281C(&qword_10003A9C8, &unk_10002BED0);
      v0[26] = _NSConcreteStackBlock;
      v0[27] = 1107296256;
      v0[28] = sub_1000265B4;
      v0[29] = &unk_1000358F0;
      v0[30] = v8;
      [v7 accountsWithAccountType:v5 completion:v0 + 26];
      v6 = v0 + 10;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v6);
  }

  else
  {
    v9 = v0[37];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[38];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not find AppleAccount account type", v14, 2u);
    }

    v15 = v0[1];

    return v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100027AF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 360) = v3;
  if (v3)
  {

    v4 = sub_1000289E0;
  }

  else
  {
    v4 = sub_100027C34;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027C34()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);

  if (!v2)
  {

    v8 = *(v0 + 296);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 344);
    v13 = *(v0 + 304);
    if (v11)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Could not fetch AppleAccount accounts";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v9, v10, v15, v14, 2u);
    }

LABEL_26:

    v35 = *(v0 + 8);

    return v35(_swiftEmptyArrayStorage);
  }

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_23:
    v32 = *(v0 + 344);
    v33 = *(v0 + 296);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 344);
    v13 = *(v0 + 304);
    if (v34)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Could not find correct AppleAccount account";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_22:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    *(v0 + 368) = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v5 correctPersonaScopedForAccount])
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_23;
    }
  }

  v16 = *(v0 + 296);

  v17 = objc_allocWithZone(AKDeviceListRequestContext);
  v18 = v6;
  v19 = [v17 init];
  *(v0 + 376) = v19;
  v20 = [v18 aa_altDSID];
  [v19 setAltDSID:v20];

  [v19 setIncludeFamilyDevices:0];
  [v19 setIncludeUntrustedDevices:0];
  [v19 setFetchDeviceSafetyState:0];
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10002B4A0;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setServices:isa];

  [v19 setType:2];
  v24 = v18;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Fetching device list for account %@...", v27, 0xCu);
    sub_100014CFC(v28, &qword_100039E40, &unk_10002BAC0);
  }

  v30 = *(v0 + 304);

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 288;
  *(v0 + 152) = sub_100028190;
  v31 = swift_continuation_init();
  *(v0 + 264) = sub_10000281C(&qword_10003A9D0, &unk_10002BEE0);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_100028CCC;
  *(v0 + 232) = &unk_100035918;
  *(v0 + 240) = v31;
  [v30 deviceListWithContext:v19 completion:v0 + 208];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_100028190()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_100028B1C;
  }

  else
  {
    v3 = sub_1000282CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000282CC()
{
  receiver = v0[18].receiver;

  if (!receiver)
  {
    v12 = 0;
LABEL_19:
    super_class = v0[21].super_class;

    v14 = v0[18].super_class;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[23].receiver;
    v19 = v0[23].super_class;
    v20 = v0[21].super_class;
    v21 = v0[19].receiver;
    if (v17)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not fetch device list", v22, 2u);
    }

    goto LABEL_43;
  }

  v2 = receiver;
  v3 = [v2 deviceList];

  if (!v3)
  {
    v12 = v2;
    goto LABEL_19;
  }

  v62 = v2;
  sub_10000E838(0, &qword_10003A9D8, AKRemoteDevice_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 name];
      if (v10)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v11 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_22:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (v23)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
LABEL_25:
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v23 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
      }

      v24 = 0;
      v63 = v23;
      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_48;
        }

        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= _swiftEmptyArrayStorage[2])
          {
            goto LABEL_49;
          }

          v26 = _swiftEmptyArrayStorage[v24 + 4];
        }

        v27 = v26;
        v28 = [v26 model];
        if (!v28)
        {
          goto LABEL_39;
        }

        v29 = v28;
        v30 = [objc_opt_self() _typeWithDeviceModelCode:v28];

        if (!v30)
        {
          goto LABEL_39;
        }

        v31 = [v30 identifier];

        if (!v31)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = String._bridgeToObjectiveC()();
        }

        v32 = objc_opt_self();
        v0[13].receiver = 0;
        v33 = [v32 symbolForTypeIdentifier:v31 error:&v0[13]];

        v34 = v0[13].receiver;
        if (!v33)
        {
          break;
        }

        v35 = v34;
        v36 = [v33 name];

        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

LABEL_40:
        v42 = [v27 name];
        if (!v42)
        {
          goto LABEL_54;
        }

        v43 = v42;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = type metadata accessor for DeviceInfo();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR___DeviceInfo_name];
        *v49 = v44;
        v49[1] = v46;
        v50 = &v48[OBJC_IVAR___DeviceInfo_symbol];
        *v50 = v37;
        v50[1] = v39;
        v0[17].receiver = v48;
        v0[17].super_class = v47;
        objc_msgSendSuper2(v0 + 17, "init");

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v51 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v24;
        if (v25 == v63)
        {
          v52 = v0[23].receiver;
          v53 = v0[23].super_class;
          v54 = v0[21].super_class;
          v55 = v0[19].receiver;

          goto LABEL_43;
        }
      }

      v40 = v34;
      v41 = _convertNSErrorToError(_:)();

      v4 = v41;
      swift_willThrow();

LABEL_39:
      v39 = 0xE600000000000000;
      v37 = 0x656E6F687069;
      goto LABEL_40;
    }
  }

  v58 = v0[23].receiver;
  v59 = v0[23].super_class;
  v60 = v0[21].super_class;
  v61 = v0[19].receiver;

LABEL_43:
  v56 = v0->super_class;

  return v56(_swiftEmptyArrayStorage);
}

uint64_t sub_1000288AC()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  swift_willThrow();

  v4 = v0[37];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[38];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not find AppleAccount account type", v9, 2u);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_1000289E0()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  swift_willThrow();

  v4 = v0[37];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[43];
  v9 = v0[38];
  if (v7)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not fetch AppleAccount accounts", v10, 2u);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100028B1C()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[43];
  swift_willThrow();

  v5 = v0[37];
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[46];
  v10 = v0[47];
  v11 = v0[43];
  v12 = v0[38];
  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Could not fetch device list", v13, 2u);
  }

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t Logger.daemon.unsafeMutableAddressor()
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100001F70(v0, static Logger.daemon);
}

uint64_t sub_100028D38()
{
  v0 = type metadata accessor for Logger();
  sub_100028FB8(v0, static Logger.daemon);
  sub_100001F70(v0, static Logger.daemon);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.daemon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100001F70(v2, static Logger.daemon);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100028E54()
{
  sub_100028F6C();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.stateTracking = result;
  return result;
}

uint64_t *Logger.stateTracking.unsafeMutableAddressor()
{
  if (qword_100039C28 != -1)
  {
    swift_once();
  }

  return &static Logger.stateTracking;
}

id static Logger.stateTracking.getter()
{
  if (qword_100039C28 != -1)
  {
    swift_once();
  }

  v1 = static Logger.stateTracking;

  return v1;
}

unint64_t sub_100028F6C()
{
  result = qword_10003A9E8;
  if (!qword_10003A9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003A9E8);
  }

  return result;
}

uint64_t *sub_100028FB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_10002903C()
{
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = 0x746C7561666544;
  v4 = [result currentPersona];
  v0[3] = v4;

  if (v4 && (v5 = [v4 userPersonaUniqueString]) != 0)
  {
    v6 = v5;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v0[4] = v3;
  v0[5] = v8;
  v9 = *(v0[2] + 112);
  if (*(v9 + 16))
  {
    v10 = *(v0[2] + 112);

    v11 = sub_1000104D0(v3, v8);
    if (v12)
    {
      v13 = v11;

      v14 = *(*(v9 + 56) + 8 * v13);

      v15 = v0[1];

      return v15(v14);
    }
  }

  type metadata accessor for GameSaveContainerHandler();
  swift_allocObject();
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_100029218;

  return sub_10001239C();
}

uint64_t sub_100029218(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100029330, v3, 0);
}

uint64_t sub_100029330()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *(v5 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + 112);
  *(v5 + 112) = 0x8000000000000000;
  sub_100029AF4(v1, v3, v2, isUniquelyReferenced_nonNull_native, &qword_10003A1A0, &qword_10002B718);

  *(v5 + 112) = v11;

  v8 = v0[7];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10002942C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  v2 = *(v1 + 32);
  *(v0 + 64) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 32) = v5;
    *(v0 + 40) = v7;
    *(v0 + 48) = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_10002958C;

    return sub_100013020();
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10002958C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10002969C, v2, 0);
}

uint64_t sub_10002969C()
{
  v1 = *(v0 + 48);

  v3 = *(v0 + 40);
  v4 = (*(v0 + 32) - 1) & *(v0 + 32);
  if (v4)
  {
    result = *(v0 + 24);
LABEL_7:
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    *(v0 + 48) = *(*(result + 56) + ((v3 << 9) | (8 * __clz(__rbit64(v4)))));

    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_10002958C;

    return sub_100013020();
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 24);
      if (v5 >= (((1 << *(v0 + 64)) + 63) >> 6))
      {
        break;
      }

      v4 = *(result + 8 * v5 + 64);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_7;
      }
    }

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1000297E4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100029840(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000281C(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100029AF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1000104D0(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100029840(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1000104D0(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100029C94(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_100029C94(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000281C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
    return CocoaError._nsError.getter();
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}