uint64_t sub_100341D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_100341D84, 0, 0);
}

uint64_t sub_100341D84()
{
  static Task<>.checkCancellation()();
  v1 = v0[11];
  v2 = *(v0[10] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100341EA0;
  v5 = v0[11];

  return (v7)(v0 + 8, sub_1003792BC, v5);
}

uint64_t sub_100341EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1002AD1F8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_100341FBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100341FBC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v0[9] = SecureLocationsStewie.ServiceState.rawValue.getter();
  sub_10004E724();
  v4 = FixedWidthInteger.data.getter();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[6] = sub_1003792D8;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000A8DE8;
  v0[5] = &unk_10059A1D0;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  [v3 stewieServiceStateChanged:isa completion:v8];
  _Block_release(v8);

  sub_1000049D0(v4, v6);
  swift_unknownObjectRelease();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100342118(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E7E80, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10034232C, 0, 0);
}

uint64_t sub_10034232C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = async function pointer to withTimeout<A>(_:block:)[1];

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100342448;

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1004D67D8, v4, &type metadata for () + 8);
}

uint64_t sub_100342448()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100342564;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000161BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100342564()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B10);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7EC0, &v16);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Uncaught error in %{public}s: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100342784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1003427A8, 0, 0);
}

uint64_t sub_1003427A8()
{
  static Task<>.checkCancellation()();
  v1 = v0[11];
  v2 = *(v0[10] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1003428C4;
  v5 = v0[11];

  return (v7)(v0 + 8, sub_10037F52C, v5);
}

uint64_t sub_1003428C4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10037F540;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003429E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003429E0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[9] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v10 = v0[11];
    v11 = v7;
    v12 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_100379844;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059A2C0;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 locationsForHandles:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_100342BB0()
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005E0B10);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocationServiceClient proxy error: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  return OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342D18(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E7EC0, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100342F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = a3;

  sub_1001D7F30(0, 0, v12, a5, v14);
}

uint64_t sub_10034302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100343050, 0, 0);
}

uint64_t sub_100343050()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = async function pointer to withTimeout<A>(_:block:)[1];

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10034316C;

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1004D67B0, v4, &type metadata for () + 8);
}

uint64_t sub_10034316C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100343288;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000161B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100343288()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B10);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E7EA0, &v16);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Uncaught error in %{public}s: %{public}@", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003434A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1003434CC, 0, 0);
}

uint64_t sub_1003434CC()
{
  v1 = v0[11];
  v2 = *(v0[10] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1003435A0;
  v5 = v0[11];

  return (v7)(v0 + 8, sub_10037F52C, v5);
}

uint64_t sub_1003435A0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10037F540;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003436BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003436BC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[9] = v2;
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_100379494();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v10 = v0[11];
    v11 = v7;
    v12 = v8;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_10037954C;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_10059A248;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 locationsUnavailableFor:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10034388C(uint64_t a1)
{
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B10);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E7EA0, &v10);
    *(v5 + 12) = 2082;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  v10 = a1;
  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_100343A7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343A9C, v1, 0);
}

uint64_t sub_100343A9C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000017, 0x80000001004E7EC0, sub_100379554, v1, &type metadata for () + 8);
}

uint64_t sub_100343B84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343BA4, v1, 0);
}

uint64_t sub_100343BA4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001ALL, 0x80000001004E7EA0, sub_1003792E0, v1, &type metadata for () + 8);
}

uint64_t sub_100343C8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100343CAC, v1, 0);
}

uint64_t sub_100343CAC()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD78C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001DLL, 0x80000001004E7E80, sub_100378574, v1, &type metadata for () + 8);
}

uint64_t sub_100343D94(void *a1, void *a2)
{
  v4 = type metadata accessor for Handle();
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
      sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v27(v9, v46[6] + v32 * v44, v4);
          sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle);
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

uint64_t sub_10034415C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005AC640, &qword_1004C6EE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v67 = &v64 - v6;
  v85 = type metadata accessor for Location();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v85);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v64 - v12;
  v13 = type metadata accessor for Handle();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v64 - v19;
  v20 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v83 = &v64 - v25;
  v26 = *(a1 + 64);
  v65 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v64 = (v27 + 63) >> 6;
  v76 = (v7 + 16);
  v77 = (v14 + 16);
  v80 = (v7 + 32);
  v81 = (v14 + 32);
  v66 = (v7 + 56);
  v70 = v7;
  v71 = a1;
  v30 = (v7 + 8);
  v31 = v11;
  v74 = (v14 + 8);
  v75 = v30;

  v33 = 0;
  v73 = 0;
  v84 = v11;
  v79 = v24;
  v68 = v18;
  v82 = v2;
LABEL_5:
  while (v29)
  {
    v34 = v33;
LABEL_15:
    v37 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v38 = v37 | (v34 << 6);
    v39 = v71;
    (*(v14 + 16))(v78, *(v71 + 48) + *(v14 + 72) * v38, v13);
    v41 = v69;
    v40 = v70;
    v42 = v85;
    (*(v70 + 16))(v69, *(v39 + 56) + *(v70 + 72) * v38, v85);
    v43 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    v44 = *(v43 + 48);
    v24 = v79;
    (*(v14 + 32))();
    (*(v40 + 32))(&v24[v44], v41, v42);
    (*(*(v43 - 8) + 56))(v24, 0, 1, v43);
    v31 = v84;
    v2 = v82;
    v18 = v68;
LABEL_16:
    v45 = v83;
    sub_1000176A8(v24, v83, &qword_1005B2438, &qword_1004D68B0);
    v46 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
    if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
    {
      v47 = *(v46 + 48);
      v48 = v83;
      (*v81)(v18, v83, v13);
      (*v80)(v31, v48 + v47, v85);
      v49 = 0;
      v50 = *v2;
      v51 = *(v50 + 16);
      do
      {
        if (v51 == v49)
        {
          v31 = v84;
          (*v75)(v84, v85);
          result = (*v74)(v18, v13);
          v2 = v82;
          goto LABEL_5;
        }

        v52 = v49 + 1;
        v53 = v50 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v49;
        sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle);
        v54 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = v52;
      }

      while ((v54 & 1) == 0);
      v55 = v78;
      (*v77)(v78, v18, v13);
      v56 = v67;
      v57 = v85;
      (*v76)(v67, v84, v85);
      (*v66)(v56, 0, 1, v57);
      v58 = v82;
      v59 = sub_100145824(v56, v55);
      v72 = &v64;
      __chkstk_darwin(v59);
      *(&v64 - 2) = v18;

      v60 = v73;
      v61 = sub_10020D434(sub_10037CBB4, (&v64 - 4), v50);
      v73 = v60;
      v2 = v58;

      *v58 = v61;
      if (*(v61 + 16))
      {
        (*v75)(v84, v85);
      }

      else
      {
        if (v58[1])
        {
          OnceCheckedContinuation.resume<>()();
        }

        (*v75)(v84, v85);

        v58[1] = 0;
      }

      v24 = v79;
      v63 = *(v61 + 16);
      result = (*v74)(v18, v13);
      v31 = v84;
      if (v63)
      {
        continue;
      }
    }
  }

  if (v64 <= v33 + 1)
  {
    v35 = v33 + 1;
  }

  else
  {
    v35 = v64;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v64)
    {
      v62 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      (*(*(v62 - 8) + 56))(v24, 1, 1, v62);
      v29 = 0;
      v33 = v36;
      goto LABEL_16;
    }

    v29 = *(v65 + 8 * v34);
    ++v33;
    if (v29)
    {
      v33 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1003448FC()
{
  type metadata accessor for Handle();
  sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100344994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
  v11 = *(*(v82 - 8) + 64);
  v12 = __chkstk_darwin(v82);
  v81 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v80 = &v67 - v15;
  v16 = __chkstk_darwin(v14);
  v79 = &v67 - v17;
  __chkstk_darwin(v16);
  v78 = &v67 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v68 = a3;
    v69 = v10;
    v70 = a2;
    v71 = v7;
    v72 = v6;
    v88 = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v19, 0);
    v86 = v88;
    v20 = a1 + 64;
    v21 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v23 = result;
    v24 = 0;
    v25 = *(a1 + 36);
    v73 = a1 + 72;
    v74 = v19;
    v75 = v25;
    v76 = a1 + 64;
    v77 = a1;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(a1 + 32))
    {
      if ((*(v20 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_27;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v84 = 1 << v23;
      v85 = v23 >> 6;
      v83 = v24;
      v27 = *(a1 + 48);
      v28 = type metadata accessor for Handle();
      v29 = *(v28 - 8);
      v30 = v29;
      v31 = v27 + *(v29 + 72) * v23;
      v32 = v78;
      (*(v29 + 16))(v78, v31, v28);
      v33 = *(*(a1 + 56) + 8 * v23);
      v34 = *(v30 + 32);
      v35 = v79;
      v34(v79, v32, v28);
      v36 = v82;
      *(v35 + *(v82 + 48)) = v33;
      v37 = v80;
      sub_100005F04(v35, v80, &qword_1005B2420, &qword_1004D67E8);
      v38 = *(v36 + 48);
      v39 = *(v37 + v38);
      v40 = v81;
      v34(v81, v37, v28);
      *(v40 + v38) = v39;

      v41 = Handle.identifier.getter();
      v43 = v42;
      sub_100002CE0(v40, &qword_1005B2420, &qword_1004D67E8);
      result = sub_100002CE0(v35, &qword_1005B2420, &qword_1004D67E8);
      v44 = v86;
      v88 = v86;
      v46 = v86[2];
      v45 = v86[3];
      if (v46 >= v45 >> 1)
      {
        result = sub_10002B3C0((v45 > 1), v46 + 1, 1);
        v44 = v88;
      }

      v44[2] = v46 + 1;
      v47 = &v44[2 * v46];
      v47[4] = v41;
      v47[5] = v43;
      a1 = v77;
      v26 = 1 << *(v77 + 32);
      if (v23 >= v26)
      {
        goto LABEL_29;
      }

      v20 = v76;
      v48 = *(v76 + 8 * v85);
      if ((v48 & v84) == 0)
      {
        goto LABEL_30;
      }

      v86 = v44;
      LODWORD(v25) = v75;
      if (v75 != *(v77 + 36))
      {
        goto LABEL_31;
      }

      v49 = v48 & (-2 << (v23 & 0x3F));
      if (v49)
      {
        v26 = __clz(__rbit64(v49)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v85 << 6;
        v51 = v85 + 1;
        v52 = (v73 + 8 * v85);
        while (v51 < (v26 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            result = sub_10002F14C(v23, v75, 0);
            v26 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v23, v75, 0);
      }

LABEL_4:
      v24 = v83 + 1;
      v23 = v26;
      if (v83 + 1 == v74)
      {
        v7 = v71;
        v6 = v72;
        v10 = v69;
        a2 = v70;
        a3 = v68;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
LABEL_22:
    v55 = 0xE000000000000000;
    v88 = 0;
    v89 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v56._object = 0x80000001004E7EE0;
    v56._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v56);
    v57 = Array.description.getter();
    v59 = v58;

    v60._countAndFlagsBits = v57;
    v60._object = v59;
    String.append(_:)(v60);

    v61._countAndFlagsBits = 0xD00000000000001ALL;
    v61._object = 0x80000001004E7F00;
    String.append(_:)(v61);
    v87 = a3;
    v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v62);

    v63._countAndFlagsBits = 0x7469206B726F5720;
    v63._object = 0xEC000000203A6D65;
    String.append(_:)(v63);
    if (a2)
    {
      WorkItemQueue.WorkItem.id.getter();
      v64 = UUID.uuidString.getter();
      v55 = v65;
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      v64 = 0;
    }

    v66._countAndFlagsBits = v64;
    v66._object = v55;
    String.append(_:)(v66);

    return v88;
  }

  return result;
}

uint64_t sub_100344FCC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B28);
  v1 = sub_10000A6F0(v0, qword_1005E0B28);
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100345094()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1003451A4, v2, 0);
}

uint64_t sub_1003451A4()
{
  v1 = v0[8];

  v2 = v0[2];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_100345214(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  v4 = type metadata accessor for SecureLocationsManagerAdapter();
  *v3 = v1;
  v3[1] = sub_1003452D4;

  return unsafeBlocking<A>(_:)(v1 + 16, sub_1003453EC, 0, v4);
}

uint64_t sub_1003452D4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_1003453D0, 0, 0);
}

uint64_t sub_1003453EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SecureLocationsManagerAdapter();
  swift_allocObject();
  result = sub_1004724D8();
  *a1 = result;
  return result;
}

uint64_t sub_10034548C()
{
  v34 = type metadata accessor for ClientID.ConnectionType();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v34);
  v33 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v32 = v25 - v4;
  v37 = type metadata accessor for ClientID();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v30 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002F198();
  v9 = v8[7];
  v25[0] = v8 + 7;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v29 = v5 + 16;
  v28 = enum case for ClientID.ConnectionType.background(_:);
  v26 = (v0 + 8);
  v27 = (v0 + 104);
  v31 = v5;
  v25[1] = v5 + 8;
  v35 = v8;

  v15 = 0;
  v17 = v31;
  v16 = v32;
  while (v12)
  {
    v18 = v15;
LABEL_10:
    v19 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v20 = v30;
    (*(v17 + 16))(v30, v35[6] + *(v17 + 72) * (v19 | (v18 << 6)), v37);
    ClientID.connectionType.getter();
    v22 = v33;
    v21 = v34;
    (*v27)(v33, v28, v34);
    v36 = static ClientID.ConnectionType.== infix(_:_:)();
    v23 = *v26;
    (*v26)(v22, v21);
    v23(v16, v21);
    result = (*(v17 + 8))(v20, v37);
    if (v36)
    {
      v24 = 1;
LABEL_13:

      return v24;
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      v24 = 0;
      goto LABEL_13;
    }

    v12 = *(v25[0] + 8 * v18);
    ++v15;
    if (v12)
    {
      v15 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10034578C(uint64_t *a1, uint64_t a2)
{
  v47 = a2;
  v55 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
  v3 = *(*(v55 - 8) + 64);
  v4 = __chkstk_darwin(v55);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v47 - v7;
  result = __chkstk_darwin(v6);
  v52 = &v47 - v9;
  v10 = *a1;
  v11 = *(v10 + 16);
  if (v11)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_100239784(0, v11, 0);
    v12 = v58;
    v13 = v10 + 64;
    v14 = -1 << *(v10 + 32);
    result = _HashTable.startBucket.getter();
    v15 = result;
    v16 = 0;
    v48 = v10 + 72;
    v49 = v11;
    v50 = v10 + 64;
    v51 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v10 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      v19 = *(v10 + 36);
      v56 = v16;
      v57 = v19;
      v20 = *(v10 + 48);
      v21 = type metadata accessor for Handle();
      v22 = *(v21 - 8);
      v23 = v52;
      (*(v22 + 16))(v52, v20 + *(v22 + 72) * v15, v21);
      v24 = *(*(v10 + 56) + 8 * v15);
      v25 = v12;
      v26 = v53;
      (*(v22 + 32))(v53, v23, v21);
      v27 = v55;
      *&v26[*(v55 + 48)] = v24;
      v28 = v26;
      v29 = v54;
      sub_1000176A8(v28, v54, &qword_1005B2420, &qword_1004D67E8);
      v30 = *(v29 + *(v27 + 48));
      v31 = *(v22 + 8);

      v32 = v29;
      v12 = v25;
      result = v31(v32, v21);
      v58 = v25;
      v34 = v25[2];
      v33 = v25[3];
      if (v34 >= v33 >> 1)
      {
        result = sub_100239784((v33 > 1), v34 + 1, 1);
        v12 = v58;
      }

      v12[2] = v34 + 1;
      v12[v34 + 4] = v30;
      v10 = v51;
      v17 = 1 << *(v51 + 32);
      if (v15 >= v17)
      {
        goto LABEL_29;
      }

      v13 = v50;
      v35 = *(v50 + 8 * v18);
      if ((v35 & (1 << v15)) == 0)
      {
        goto LABEL_30;
      }

      if (v57 != *(v51 + 36))
      {
        goto LABEL_31;
      }

      v36 = v35 & (-2 << (v15 & 0x3F));
      if (v36)
      {
        v17 = __clz(__rbit64(v36)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v37 = v18 << 6;
        v38 = v18 + 1;
        v39 = (v48 + 8 * v18);
        while (v38 < (v17 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            result = sub_10002F14C(v15, v57, 0);
            v17 = __clz(__rbit64(v40)) + v37;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v15, v57, 0);
      }

LABEL_4:
      v16 = v56 + 1;
      v15 = v17;
      if (v56 + 1 == v49)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_21:
    v58 = _swiftEmptyArrayStorage;
    v42 = v12[2];
    if (!v42)
    {
LABEL_25:

      sub_10002F894(v58);
    }

    v43 = 0;
    while (v43 < v12[2])
    {
      v44 = v43 + 1;
      v45 = v12[v43 + 4];

      result = sub_10002CF8C(v46);
      v43 = v44;
      if (v42 == v44)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100345BC0()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClientID.ConnectionType();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for ClientID();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100345D1C, v0, 0);
}

uint64_t sub_100345D1C()
{
  *(v0 + 80) = *(*(v0 + 16) + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100345E28, v2, v1);
}

uint64_t sub_100345E28()
{
  v1 = v0[10];
  v2 = v0[2];
  v0[11] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_10002EC84, v2, 0);
}

uint64_t sub_100345ECC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 104);
  v6 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v7 = v3[12];
  }

  else
  {
    v9 = v3[12];
    v10 = v3[13];
    v11 = v3[2];
    swift_bridgeObjectRelease_n();

    return _swift_task_switch(sub_100346094, v11, 0);
  }
}

uint64_t sub_100346094()
{
  v70 = v0;
  v1 = *(v0 + 2);
  v2 = sub_10002F198();
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v66 = v0;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v54[1] = v54;
    v55 = v5;
    v6 = *(v0 + 8);
    v7 = *(v0 + 4);
    __chkstk_darwin(v2);
    v56 = v54 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v8);
    v57 = 0;
    v9 = 0;
    v65 = v3;
    v11 = *(v3 + 56);
    v3 += 56;
    v10 = v11;
    v12 = 1 << *(v3 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    v63 = v6 + 16;
    v62 = enum case for ClientID.ConnectionType.background(_:);
    v60 = (v7 + 8);
    v61 = (v7 + 104);
    v64 = v6;
    v59 = v6 + 8;
    v15 = v6;
    while (v14)
    {
      v69 = (v14 - 1) & v14;
      v16 = __clz(__rbit64(v14)) | (v9 << 6);
      v0 = v66;
LABEL_12:
      v19 = *(v0 + 9);
      v20 = *(v0 + 6);
      v68 = *(v0 + 7);
      v21 = *(v0 + 5);
      v22 = *(v0 + 3);
      v23 = *(v65 + 48);
      v24 = *(v15 + 72);
      v58 = v16;
      (*(v15 + 16))(v19, v23 + v24 * v16);
      ClientID.connectionType.getter();
      (*v61)(v21, v62, v22);
      v67 = static ClientID.ConnectionType.== infix(_:_:)();
      v0 = *v60;
      (*v60)(v21, v22);
      v0(v20, v22);
      (*(v15 + 8))(v19, v68);
      v14 = v69;
      if (v67)
      {
        *&v56[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
LABEL_16:
          v26 = sub_1003397B4(v56, v55, v57, v65);
          goto LABEL_17;
        }
      }
    }

    v17 = v9;
    v0 = v66;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 8 * v9);
      ++v17;
      if (v18)
      {
        v69 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_33:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v51 = *(v0 + 16);
  v52 = swift_slowAlloc();
  v26 = sub_10037984C(v52, v5, v3, sub_100346658, 0);

  if (!v51)
  {
LABEL_17:
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 15);
    v28 = *(v0 + 11);
    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0;
      v33 = *(v0 + 11);
      v34 = swift_slowAlloc();
      *v34 = 134218496;
      v35 = *(v32 + 11);
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v35 < 0)
        {
          v36 = *(v32 + 11);
        }

        v37 = __CocoaSet.count.getter();
        v38 = *(v32 + 11);
      }

      else
      {
        v37 = *(v35 + 16);
      }

      v41 = *(v32 + 15);

      *(v34 + 4) = v37;

      *(v34 + 12) = 2048;
      v42 = *(v26 + 16);

      *(v34 + 14) = v42;

      *(v34 + 22) = 2048;
      if (v41 >> 62)
      {
        if (*(v66 + 15) < 0)
        {
          v53 = *(v66 + 15);
        }

        v43 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v0 = v66;
      v44 = *(v66 + 15);

      *(v34 + 24) = v43;

      _os_log_impl(&_mh_execute_header, v30, v31, "All XPC sessions: %ld. Background sessions %ld. Active sessions: %ld", v34, 0x20u);
    }

    else
    {
      v39 = *(v0 + 15);
      v40 = *(v0 + 11);
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    v45 = *(v0 + 9);
    v46 = *(v0 + 5);
    v47 = *(v0 + 6);

    v48 = *(v0 + 1);
    v49 = *(v0 + 15);

    return v48(v49);
  }

  return result;
}

uint64_t sub_100346658()
{
  v0 = type metadata accessor for ClientID.ConnectionType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  ClientID.connectionType.getter();
  (*(v1 + 104))(v5, enum case for ClientID.ConnectionType.background(_:), v0);
  v8 = static ClientID.ConnectionType.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_1003467A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 48);
  v7 = *v2;

  if (v1)
  {
  }

  else
  {
    v10 = v4[5];
    v9 = v4[6];

    v4[10] = a1;

    return _swift_task_switch(sub_100346910, v10, 0);
  }
}

uint64_t sub_100346910()
{
  v1 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_bridgeObjectRetain_n();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    v9 = v0[8];
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v9 < 0)
      {
        v10 = v0[8];
      }

      v11 = __CocoaSet.count.getter();
      v12 = v0[8];
    }

    else
    {
      v11 = *(v9 + 16);
    }

    *(v8 + 4) = v11;

    *(v8 + 12) = 2048;
    if (v1 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v4, v5, "All XPC sessions: %ld. Active stewie sessions: %ld", v8, 0x16u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v14 = v0[1];

  return v14(v1);
}

unint64_t sub_100346AFC(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0x74756F656D69742ELL;
      break;
    case 2:
      result = 0x6F707075736E752ELL;
      break;
    case 3:
      result = 0x64696C61766E692ELL;
      break;
    case 4:
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 15:
      result = 0x656C706D696E752ELL;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
      result = 0xD000000000000026;
      break;
    case 18:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100346D44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037BB10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100346D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037F2F4();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100346DD0()
{
  v1[2] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B0370, &unk_1004D2410) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100346E98, 0, 0);
}

uint64_t sub_100346E98()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_defaultActor_initialize();
  *(v3 + 14) = 0x6E6F697461636F4CLL;
  *(v3 + 15) = 0xEF65636976726553;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  v5 = type metadata accessor for XPCServiceDescription();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_trampoline] = 0;
  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool;
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  *&v3[v6] = XPCClientConnectionPool.__allocating_init()();
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_subscriptionFailureRetryInterval] = xmmword_1004C2E40;
  v7 = OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  *&v3[v7] = WorkItemQueue.__allocating_init(identifier:)();
  v8 = OBJC_IVAR____TtC13findmylocated15LocationService_locationUpdateQueue;
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  UUID.init()();
  *&v3[v8] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v10 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue;
  UUID.init()();
  *&v3[v10] = WorkItemQueue.__allocating_init(identifier:)();
  v11 = OBJC_IVAR____TtC13findmylocated15LocationService_backgroundLocationsTimeoutManager;
  type metadata accessor for BackgroundLocationsTimeoutManager();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 120) = sub_100209708(_swiftEmptyArrayStorage);
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask] = 0;
  v13 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  v14 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  *&v3[OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks] = _swiftEmptyDictionarySingleton;
  type metadata accessor for XPCSessionManager();
  v15 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = sub_1003471B4;

  return XPCSessionManager.__allocating_init(name:)(0x6E6F697461636F4CLL, 0xEF65636976726553);
}

uint64_t sub_1003471B4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1003472B4, 0, 0);
}

uint64_t sub_1003472B4()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v0[2] + OBJC_IVAR____TtC13findmylocated15LocationService_xpcSessionManager) = v0[6];

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_100347334()
{
  v1[12] = v0;
  v1[13] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for MachServiceName();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100347460, v0, 0);
}

uint64_t sub_100347460()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: startup", v4, 2u);
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v28 = *(v0 + 120);
  v29 = *(v0 + 112);
  v30 = *(v0 + 104);
  v8 = *(v0 + 96);

  MachServiceName.init(_:)();
  v9 = objc_opt_self();
  v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate18LocationXPCService_];
  *(v0 + 152) = v10;
  v11 = _s10TrampolineCMa_0();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v13 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 160) = v13;
  v14 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate24LocationServiceClientXPC_];
  *(v0 + 168) = v14;
  (*(v7 + 16))(v6, v5, v28);
  v15 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v15;
  *(v0 + 48) = sub_10001AEBC(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements);
  v16 = sub_10000331C((v0 + 16));
  (*(*(v15 - 8) + 104))(v16, enum case for ServiceEntitlements.locationService(_:), v15);
  swift_allocObject();
  swift_weakInit();
  v17 = v13;
  v18 = v10;
  v19 = v14;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v20 = type metadata accessor for XPCServiceDescription();
  (*(*(v20 - 8) + 56))(v29, 0, 1, v20);
  v21 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  swift_beginAccess();
  sub_100022364(v29, v8 + v21, &qword_1005B09F8, &qword_1004D23A8);
  swift_endAccess();
  v22 = *(v8 + OBJC_IVAR____TtC13findmylocated15LocationService_trampoline);
  *(v8 + OBJC_IVAR____TtC13findmylocated15LocationService_trampoline) = v17;
  v23 = v17;

  *(v0 + 176) = *(v8 + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  v24 = swift_allocObject();
  *(v0 + 184) = v24;
  *(v24 + 16) = v8;
  *(v24 + 24) = v30;

  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98);
  v26 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 192) = v26;
  *(v0 + 200) = v25;

  return _swift_task_switch(sub_1003478D4, v26, v25);
}

uint64_t sub_1003478D4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[12];
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  return _swift_task_switch(sub_100347968, v3, 0);
}

uint64_t sub_100347968()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[26] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v0[24];
  v6 = v0[25];

  return _swift_task_switch(sub_100347A10, v5, v6);
}

uint64_t sub_100347A10()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[12];
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  return _swift_task_switch(sub_100347AA8, v3, 0);
}

uint64_t sub_100347AA8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  (*(v5 + 8))(v2, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100347B68(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100347C04, 0, 0);
}

uint64_t sub_100347C04()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopProcessing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D6B18, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100347DB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349F80();
}

uint64_t sub_100347E48(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ClientID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100347FA8, 0, 0);
}

uint64_t sub_100347FA8()
{
  v20 = v0;
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = *(v0[5] + 112);
    v4 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
    v18 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1003481FC;
    v6 = v0[14];

    return v18(v6);
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B28);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v19);
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s. Self was deallocated.", v11, 0xCu);
      sub_100004984(v12);
    }

    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[10];
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1003481FC()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1003482F8, 0, 0);
}

uint64_t sub_1003482F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = *(v4 + 16);
  v0[17] = v6;
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v3);
  ClientID.init(xpcConnectionID:)();
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_1003483CC;
  v8 = v0[15];
  v9 = v0[10];
  v10 = v0[5];

  return sub_10035CB88(v10, v9);
}

uint64_t sub_1003483CC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1003484C8, 0, 0);
}

uint64_t sub_1003484C8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  (*(v0 + 136))(v5, *(v0 + 112), v3);
  (*(v4 + 56))(v5, 0, 1, v3);

  return _swift_task_switch(sub_10034856C, v2, 0);
}

uint64_t sub_10034856C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  sub_10035D620(v2);
  sub_100002CE0(v2, &qword_1005A96E0, &qword_1004C2A80);

  return _swift_task_switch(sub_1003485F4, 0, 0);
}

uint64_t sub_1003485F4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003486C8()
{
  v1[183] = v0;
  v1[189] = *v0;
  v2 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[195] = v2;
  v3 = *(v2 - 8);
  v1[201] = v3;
  v4 = *(v3 + 64) + 15;
  v1[207] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[213] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[214] = swift_task_alloc();

  return _swift_task_switch(sub_10034882C, v0, 0);
}

uint64_t sub_10034882C()
{
  v1 = v0[214];
  v2 = v0[183];
  v0[215] = *(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_xpcSessionManager);
  v3 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B09F8, &qword_1004D23A8);
  v4 = type metadata accessor for XPCServiceDescription();
  v0[216] = v4;
  v5 = *(v4 - 8);
  v0[217] = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for XPCSessionManager();
    sub_10001AEBC(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_10034899C;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10034899C()
{
  v1 = v0[215];
  v2 = v0[214];
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[218] = 0;
  (*(v0[217] + 8))(v0[214], v0[216]);
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[219] = v4;
  *v4 = v0;
  v4[1] = sub_100348AA4;

  return daemon.getter();
}

uint64_t sub_100348AA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1752);
  v12 = *v1;
  *(v3 + 1760) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1768) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100348C88;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100348C88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1768);
  v6 = *v2;
  v4[222] = a1;
  v4[223] = v1;

  if (v1)
  {
    v7 = v4[183];
    v8 = sub_100349644;
  }

  else
  {
    v9 = v4[220];

    v8 = sub_100348DC4;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100348DC4()
{
  v1 = v0[222];
  v2 = v0[213];
  v3 = v0[207];
  v4 = v0[201];
  v5 = v0[195];
  v6 = v0[183];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100348EDC, v6, 0);
}

uint64_t sub_100348EDC()
{
  v1 = v0[213];
  v2 = v0[183];
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[224] = v5;
  *v5 = v0;
  v5[1] = sub_100349008;
  v6 = v0[183];

  return sub_10001CC28();
}

uint64_t sub_100349008(uint64_t a1)
{
  v2 = *(*v1 + 1792);
  v3 = *(*v1 + 1464);
  v5 = *v1;
  *(*v1 + 1800) = a1;

  return _swift_task_switch(sub_100349120, v3, 0);
}

uint64_t sub_100349120()
{
  v1 = v0[225];
  v2 = v0[183];
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *(v1 + 104) = sub_10037ED40;
  *(v1 + 112) = v2;

  sub_100037FC8(v3);

  v5 = swift_task_alloc();
  v0[226] = v5;
  *v5 = v0;
  v5[1] = sub_1003491F0;
  v6 = v0[183];

  return sub_10001CC28();
}

uint64_t sub_1003491F0(uint64_t a1)
{
  v2 = *(*v1 + 1808);
  v3 = *(*v1 + 1464);
  v5 = *v1;
  *(*v1 + 1816) = a1;

  return _swift_task_switch(sub_100349308, v3, 0);
}

uint64_t sub_100349308()
{
  v1 = v0[227];
  v2 = v0[189];
  v3 = v0[183];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *(v1 + 120) = sub_10037ED48;
  *(v1 + 128) = v4;

  sub_100037FC8(v5);

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_100349430(uint64_t a1, uint64_t a2)
{
  *(v3 + 1824) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003496D0, v3 + 1360);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 656);
  }
}

uint64_t sub_100349470(uint64_t a1, uint64_t a2)
{
  *(v3 + 1832) = v2;
  if (v2)
  {
    v4 = sub_1003497C0;
    v5 = v3 + 656;
    v6 = v3 + 1520;
  }

  else
  {
    v4 = sub_1003494B0;
    v5 = v3 + 656;
    v6 = v3 + 1616;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100349504()
{
  v1 = v0[222];
  v2 = v0[214];
  v3 = v0[213];
  v4 = v0[207];
  v5 = v0[183];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003495A4()
{
  (*(v0[217] + 8))(v0[214], v0[216]);
  v1 = v0[218];
  v2 = v0[214];
  v3 = v0[213];
  v4 = v0[207];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100349644()
{
  v1 = v0[220];

  v2 = v0[223];
  v3 = v0[214];
  v4 = v0[213];
  v5 = v0[207];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100349724()
{
  v1 = v0[222];
  v2 = v0[183];

  v3 = v0[228];
  v4 = v0[214];
  v5 = v0[213];
  v6 = v0[207];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100349814()
{
  v1 = v0[222];
  v2 = v0[183];

  v3 = v0[229];
  v4 = v0[214];
  v5 = v0[213];
  v6 = v0[207];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003498B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100349958(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_10036F910(a2);
}

uint64_t sub_1003499F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100349AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100349ACC, 0, 0);
}

uint64_t sub_100349ACC()
{
  v18 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed subscription received from spd, no location for findMyIds: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[2];

  v13 = sub_10023F00C(v12);
  v0[4] = v13;

  v14 = swift_task_alloc();
  v0[5] = v14;
  *v14 = v0;
  v14[1] = sub_1002F6704;
  v15 = v0[3];

  return sub_10036EBF0(v13);
}

uint64_t sub_100349CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10034EAA8();
}

uint64_t sub_100349D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10034D0D8();
}

uint64_t sub_100349DE4()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error adding connection: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100349FA0()
{
  v1 = v0[2];
  if (sub_10034548C())
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B28);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "LocationService: Not invalidating subscriptions due to background clients", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v0[3] = *(v0[2] + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
    sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
    sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10034A16C, v9, v8);
  }
}

uint64_t sub_10034A16C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_10034A1D8, v1, 0);
}

uint64_t sub_10034A1D8()
{
  v1 = v0[4];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    v3 = v0[4];

    if (v2)
    {
LABEL_3:
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000A6F0(v4, qword_1005E0B28);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "LocationService: Not invalidating subscriptions due to active XPC clients", v7, 2u);
      }

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    v10 = *(v1 + 16);

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_10034A390;
  v12 = v0[2];

  return sub_10034A484();
}

uint64_t sub_10034A390()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10034A484()
{
  v1[16] = v0;
  v2 = type metadata accessor for Handle();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v1[24] = Priority;
  v9 = *(Priority - 8);
  v1[25] = v9;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B2468, &qword_1004D69B0) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_10034A670, v0, 0);
}

size_t sub_10034A670()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = *(v0 + 128);

  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  *(v0 + 264) = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v0 + 272) = v7;
  v8 = *(v7 + 32);
  *(v0 + 448) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-(-1 << v8) < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    v14 = ((63 - v10) >> 6) - 1;
    do
    {
      if (v14 == v13)
      {
        goto LABEL_25;
      }

      v12 = v13 + 1;
      v11 = *(v7 + 72 + 8 * v13++);
    }

    while (!v11);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v58 = (v11 - 1) & v11;
  v19 = __clz(__rbit64(v11)) | (v12 << 6);
  (*(v18 + 16))(v16, *(v7 + 48) + *(v18 + 72) * v19, v17);
  v20 = (*(v7 + 56) + 24 * v19);
  v21 = *v20;
  v22 = v20[1];
  v57 = v20[2];
  v23 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
  v24 = (v15 + *(v23 + 48));
  (*(v18 + 32))(v15, v16, v17);
  *v24 = v21;
  v24[1] = v22;
  v24[2] = v57;
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);

  v25 = v58;
  v14 = v12;
  while (1)
  {
    *(v0 + 280) = v25;
    *(v0 + 288) = v14;
    v26 = *(v0 + 248);
    sub_1000176A8(*(v0 + 240), v26, &qword_1005B2468, &qword_1004D69B0);
    v27 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    *(v0 + 296) = v27;
    v28 = *(v27 - 8);
    *(v0 + 304) = v28;
    v29 = *(v28 + 48);
    *(v0 + 312) = v29;
    *(v0 + 320) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v29(v26, 1, v27) == 1)
    {
      v30 = *(v0 + 272);
      v31 = *(v0 + 128);

      v32 = *(v31 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);
      v33 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
      v59 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
      v34 = swift_task_alloc();
      *(v0 + 376) = v34;
      *v34 = v0;
      v34[1] = sub_10034B97C;

      return v59();
    }

    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);
    v39 = (*(v0 + 248) + *(v27 + 48));
    v14 = *v39;
    *(v0 + 328) = *v39;
    *(v0 + 336) = v39[1];
    (*(v37 + 32))(v36);
    v40 = *(v14 + 16);
    if (!v40)
    {
      break;
    }

    v41 = *(v0 + 144);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    result = j__malloc_size(v44);
    if (!v42)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    if (result - v43 == 0x8000000000000000 && v42 == -1)
    {
      goto LABEL_31;
    }

    v44[2] = v40;
    v44[3] = 2 * ((result - v43) / v42);
    v46 = sub_100241514(v0 + 16, v44 + v43, v40, v14);
    v47 = *(v0 + 16);
    v48 = *(v0 + 24);
    v49 = *(v0 + 32);
    v50 = *(v0 + 40);
    v51 = *(v0 + 48);

    sub_10000E3F8();
    if (v46 == v40)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_25:
    v52 = *(v0 + 240);
    v53 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
    v25 = 0;
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_27:
  *(v0 + 344) = v44;
  v54 = swift_task_alloc();
  *(v0 + 352) = v54;
  *v54 = v0;
  v54[1] = sub_10034AC04;
  v55 = *(v0 + 208);
  v56 = *(v0 + 128);

  return sub_100363EB0(v44, v55);
}

uint64_t sub_10034AC04()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_10034C788;
  }

  else
  {
    v6 = *(v2 + 344);
    v7 = *(v2 + 128);

    v5 = sub_10034AD2C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

size_t sub_10034AD2C()
{
  v70 = v0;
  if (*(v0 + 336))
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 336);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 176);
      v5 = *(v0 + 184);
      v7 = *(v0 + 168);
      v8 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v8 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      (*(v6 + 8))(v5, v7);
      v12 = sub_10000D01C(v9, v11, &v69);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Canceling %{public}s.", v8, 0xCu);
      sub_100004984(v66);
    }

    v13 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v67 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v14 = swift_task_alloc();
    *(v0 + 368) = v14;
    *v14 = v0;
    v14[1] = sub_10034B39C;
LABEL_18:

    return v67();
  }

  else
  {
    v15 = *(v0 + 328);

    result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    if (v17)
    {
      v19 = *(v0 + 272);
LABEL_15:
      v24 = *(v0 + 240);
      v25 = *(v0 + 216);
      v26 = *(v0 + 192);
      v27 = *(v0 + 200);
      v68 = (v17 - 1) & v17;
      v28 = __clz(__rbit64(v17)) | (v18 << 6);
      (*(v27 + 16))(v25, *(v19 + 48) + *(v27 + 72) * v28, v26);
      v29 = (*(v19 + 56) + 24 * v28);
      v30 = *v29;
      v31 = v29[1];
      v65 = v29[2];
      v32 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      v33 = (v24 + *(v32 + 48));
      (*(v27 + 32))(v24, v25, v26);
      *v33 = v30;
      v33[1] = v31;
      v33[2] = v65;
      (*(*(v32 - 8) + 56))(v24, 0, 1, v32);

      v34 = v68;
      v22 = v18;
      while (1)
      {
        *(v0 + 280) = v34;
        *(v0 + 288) = v22;
        v35 = *(v0 + 248);
        sub_1000176A8(*(v0 + 240), v35, &qword_1005B2468, &qword_1004D69B0);
        v36 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        *(v0 + 296) = v36;
        v37 = *(v36 - 8);
        *(v0 + 304) = v37;
        v38 = *(v37 + 48);
        *(v0 + 312) = v38;
        *(v0 + 320) = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v38(v35, 1, v36) == 1)
        {
          v39 = *(v0 + 272);
          v40 = *(v0 + 128);

          v41 = *(v40 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);
          v42 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
          v67 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
          v43 = swift_task_alloc();
          *(v0 + 376) = v43;
          *v43 = v0;
          v43[1] = sub_10034B97C;
          goto LABEL_18;
        }

        v45 = *(v0 + 200);
        v44 = *(v0 + 208);
        v46 = *(v0 + 192);
        v47 = (*(v0 + 248) + *(v36 + 48));
        v22 = *v47;
        *(v0 + 328) = *v47;
        *(v0 + 336) = v47[1];
        (*(v45 + 32))(v44);
        v48 = *(v22 + 16);
        if (!v48)
        {
          break;
        }

        v49 = *(v0 + 144);
        sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
        v50 = *(v49 + 72);
        v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v52 = swift_allocObject();
        result = j__malloc_size(v52);
        if (!v50)
        {
          goto LABEL_35;
        }

        if (result - v51 == 0x8000000000000000 && v50 == -1)
        {
          goto LABEL_36;
        }

        v52[2] = v48;
        v52[3] = 2 * ((result - v51) / v50);
        v54 = sub_100241514(v0 + 16, v52 + v51, v48, v22);
        v55 = *(v0 + 16);
        v56 = *(v0 + 24);
        v57 = *(v0 + 32);
        v58 = *(v0 + 40);
        v59 = *(v0 + 48);

        sub_10000E3F8();
        if (v54 == v48)
        {
          goto LABEL_31;
        }

        __break(1u);
LABEL_29:
        v60 = *(v0 + 240);
        v61 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
        v34 = 0;
      }

      v52 = _swiftEmptyArrayStorage;
LABEL_31:
      *(v0 + 344) = v52;
      v62 = swift_task_alloc();
      *(v0 + 352) = v62;
      *v62 = v0;
      v62[1] = sub_10034AC04;
      v63 = *(v0 + 208);
      v64 = *(v0 + 128);

      return sub_100363EB0(v52, v63);
    }

    else
    {
      v20 = ((1 << *(v0 + 448)) + 63) >> 6;
      if (v20 <= (v18 + 1))
      {
        v21 = v18 + 1;
      }

      else
      {
        v21 = ((1 << *(v0 + 448)) + 63) >> 6;
      }

      v22 = v21 - 1;
      while (1)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_29;
        }

        v19 = *(v0 + 272);
        v17 = *(v19 + 8 * v23 + 64);
        ++v18;
        if (v17)
        {
          v18 = v23;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10034B39C()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10034B4AC, v2, 0);
}

size_t sub_10034B4AC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  if (v4)
  {
    v6 = *(v0 + 272);
LABEL_11:
    v11 = *(v0 + 240);
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v53 = (v4 - 1) & v4;
    v15 = __clz(__rbit64(v4)) | (v5 << 6);
    (*(v14 + 16))(v12, *(v6 + 48) + *(v14 + 72) * v15, v13);
    v16 = (*(v6 + 56) + 24 * v15);
    v17 = *v16;
    v18 = v16[1];
    v52 = v16[2];
    v19 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v20 = (v11 + *(v19 + 48));
    (*(v14 + 32))(v11, v12, v13);
    *v20 = v17;
    v20[1] = v18;
    v20[2] = v52;
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);

    v21 = v53;
    v9 = v5;
    while (1)
    {
      *(v0 + 280) = v21;
      *(v0 + 288) = v9;
      v22 = *(v0 + 248);
      sub_1000176A8(*(v0 + 240), v22, &qword_1005B2468, &qword_1004D69B0);
      v23 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      *(v0 + 296) = v23;
      v24 = *(v23 - 8);
      *(v0 + 304) = v24;
      v25 = *(v24 + 48);
      *(v0 + 312) = v25;
      *(v0 + 320) = (v24 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v25(v22, 1, v23) == 1)
      {
        v26 = *(v0 + 272);
        v27 = *(v0 + 128);

        v28 = *(v27 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);
        v29 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v54 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v30 = swift_task_alloc();
        *(v0 + 376) = v30;
        *v30 = v0;
        v30[1] = sub_10034B97C;

        return v54();
      }

      v32 = *(v0 + 200);
      v31 = *(v0 + 208);
      v33 = *(v0 + 192);
      v34 = (*(v0 + 248) + *(v23 + 48));
      v9 = *v34;
      *(v0 + 328) = *v34;
      *(v0 + 336) = v34[1];
      (*(v32 + 32))(v31);
      v35 = *(v9 + 16);
      if (!v35)
      {
        break;
      }

      v36 = *(v0 + 144);
      sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
      v37 = *(v36 + 72);
      v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v39 = swift_allocObject();
      result = j__malloc_size(v39);
      if (!v37)
      {
        goto LABEL_30;
      }

      if (result - v38 == 0x8000000000000000 && v37 == -1)
      {
        goto LABEL_31;
      }

      v39[2] = v35;
      v39[3] = 2 * ((result - v38) / v37);
      v41 = sub_100241514(v0 + 16, v39 + v38, v35, v9);
      v42 = *(v0 + 16);
      v43 = *(v0 + 24);
      v44 = *(v0 + 32);
      v45 = *(v0 + 40);
      v46 = *(v0 + 48);

      sub_10000E3F8();
      if (v41 == v35)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_24:
      v47 = *(v0 + 240);
      v48 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
      v21 = 0;
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_26:
    *(v0 + 344) = v39;
    v49 = swift_task_alloc();
    *(v0 + 352) = v49;
    *v49 = v0;
    v49[1] = sub_10034AC04;
    v50 = *(v0 + 208);
    v51 = *(v0 + 128);

    return sub_100363EB0(v39, v50);
  }

  else
  {
    v7 = ((1 << *(v0 + 448)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 448)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_24;
      }

      v6 = *(v0 + 272);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_10034B97C()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10034BA8C, v2, 0);
}

uint64_t sub_10034BA8C()
{
  v61 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v2 + v1);
  *(v2 + v1) = _swiftEmptyDictionarySingleton;

  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  *(v0 + 384) = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v0 + 392) = v5;
  v6 = *(v5 + 32);
  *(v0 + 449) = v6;
  v7 = 1 << v6;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = *(v0 + 392);
LABEL_14:
      v17 = *(v0 + 296);
      v56 = v17;
      v57 = *(v0 + 304);
      v19 = *(v0 + 216);
      v18 = *(v0 + 224);
      v21 = *(v0 + 192);
      v20 = *(v0 + 200);
      v22 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v23 = v22 | (v11 << 6);
      (*(v20 + 16))(v19, *(v12 + 48) + *(v20 + 72) * v23, v21);
      v24 = (*(v12 + 56) + 24 * v23);
      v25 = *v24;
      v26 = v24[1];
      v55 = v24[2];
      v27 = (v18 + *(v17 + 48));
      (*(v20 + 32))(v18, v19, v21);
      *v27 = v25;
      v27[1] = v26;
      v27[2] = v55;
      (*(v57 + 56))(v18, 0, 1, v56);

      v15 = v11;
LABEL_15:
      *(v0 + 400) = v9;
      *(v0 + 408) = v15;
      v28 = *(v0 + 312);
      v29 = *(v0 + 320);
      v30 = *(v0 + 296);
      v31 = *(v0 + 232);
      sub_1000176A8(*(v0 + 224), v31, &qword_1005B2468, &qword_1004D69B0);
      if (v28(v31, 1, v30) == 1)
      {
        v37 = *(v0 + 392);
        v38 = *(v0 + 128);

        v39 = *(v38 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue);
        v40 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v58 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v41 = swift_task_alloc();
        *(v0 + 440) = v41;
        *v41 = v0;
        v41[1] = sub_10034C4F8;
        goto LABEL_24;
      }

      v32 = *(v0 + 232);
      v33 = (v32 + *(*(v0 + 296) + 48));
      *(v0 + 416) = *v33;
      v34 = v33[1];
      *(v0 + 424) = v34;
      if (v34)
      {
        break;
      }

      v36 = *(v0 + 192);
      v35 = *(v0 + 200);

      result = (*(v35 + 8))(v32, v36);
      v11 = v15;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v42 = *(v0 + 256);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v46 = *(v0 + 176);
      v45 = *(v0 + 184);
      v47 = *(v0 + 168);
      v48 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v59;
      *v48 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v46 + 8))(v45, v47);
      v52 = sub_10000D01C(v49, v51, &v60);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "Canceling %{public}s.", v48, 0xCu);
      sub_100004984(v59);
    }

    v53 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v58 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v54 = swift_task_alloc();
    *(v0 + 432) = v54;
    *v54 = v0;
    v54[1] = sub_10034BF58;
LABEL_24:

    return v58();
  }

  else
  {
LABEL_6:
    v13 = ((1 << *(v0 + 449)) + 63) >> 6;
    if (v13 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 449)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        (*(*(v0 + 304) + 56))(*(v0 + 224), 1, 1, *(v0 + 296));
        v9 = 0;
        goto LABEL_15;
      }

      v12 = *(v0 + 392);
      v9 = *(v12 + 8 * v16 + 64);
      ++v11;
      if (v9)
      {
        v11 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10034BF58()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10034C068, v2, 0);
}

uint64_t sub_10034C068()
{
  v58 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  result = (*(v5 + 8))(v3, v4);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  if (v8)
  {
    while (1)
    {
      v9 = *(v0 + 392);
LABEL_11:
      v14 = *(v0 + 296);
      v53 = v14;
      v54 = *(v0 + 304);
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v20 = v19 | (v7 << 6);
      (*(v17 + 16))(v16, *(v9 + 48) + *(v17 + 72) * v20, v18);
      v21 = (*(v9 + 56) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v52 = v21[2];
      v24 = (v15 + *(v14 + 48));
      (*(v17 + 32))(v15, v16, v18);
      *v24 = v22;
      v24[1] = v23;
      v24[2] = v52;
      (*(v54 + 56))(v15, 0, 1, v53);

      v12 = v7;
LABEL_12:
      *(v0 + 400) = v8;
      *(v0 + 408) = v12;
      v25 = *(v0 + 312);
      v26 = *(v0 + 320);
      v27 = *(v0 + 296);
      v28 = *(v0 + 232);
      sub_1000176A8(*(v0 + 224), v28, &qword_1005B2468, &qword_1004D69B0);
      if (v25(v28, 1, v27) == 1)
      {
        v34 = *(v0 + 392);
        v35 = *(v0 + 128);

        v36 = *(v35 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue);
        v37 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v55 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v38 = swift_task_alloc();
        *(v0 + 440) = v38;
        *v38 = v0;
        v38[1] = sub_10034C4F8;
        goto LABEL_21;
      }

      v29 = *(v0 + 232);
      v30 = (v29 + *(*(v0 + 296) + 48));
      *(v0 + 416) = *v30;
      v31 = v30[1];
      *(v0 + 424) = v31;
      if (v31)
      {
        break;
      }

      v33 = *(v0 + 192);
      v32 = *(v0 + 200);

      result = (*(v32 + 8))(v29, v33);
      v7 = v12;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    v39 = *(v0 + 256);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 176);
      v42 = *(v0 + 184);
      v44 = *(v0 + 168);
      v45 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v45 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v43 + 8))(v42, v44);
      v49 = sub_10000D01C(v46, v48, &v57);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Canceling %{public}s.", v45, 0xCu);
      sub_100004984(v56);
    }

    v50 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v55 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v51 = swift_task_alloc();
    *(v0 + 432) = v51;
    *v51 = v0;
    v51[1] = sub_10034BF58;
LABEL_21:

    return v55();
  }

  else
  {
LABEL_3:
    v10 = ((1 << *(v0 + 449)) + 63) >> 6;
    if (v10 <= (v7 + 1))
    {
      v11 = v7 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 449)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        (*(*(v0 + 304) + 56))(*(v0 + 224), 1, 1, *(v0 + 296));
        v8 = 0;
        goto LABEL_12;
      }

      v9 = *(v0 + 392);
      v8 = *(v9 + 8 * v13 + 64);
      ++v7;
      if (v8)
      {
        v7 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10034C4F8()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10034C608, v2, 0);
}

uint64_t sub_10034C608()
{
  v1 = v0[48];
  v2 = v0[16];
  v3 = *(v2 + v1);
  *(v2 + v1) = _swiftEmptyDictionarySingleton;

  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
  if (*(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
  {
    v5 = *(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask);

    Task.cancel()();

    v6 = *(v2 + v4);
  }

  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v12 = v0[26];
  v11 = v0[27];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];
  v13 = v0[16];
  *(v2 + v4) = 0;

  v14 = OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs;
  swift_beginAccess();
  v15 = *(v13 + v14);
  *(v13 + v14) = &_swiftEmptySetSingleton;

  v16 = v0[1];

  return v16();
}

void sub_10034C788()
{
  v103 = v0;
  v1 = v0[43];
  v99 = *(v1 + 16);
  if (v99)
  {
    v2 = 0;
    v97 = v0[43];
    while (v2 < *(v1 + 16))
    {
      v8 = v0[45];
      v9 = v0[32];
      v11 = v0[19];
      v10 = v0[20];
      v12 = v0[17];
      v13 = v0[18];
      v14 = *(v13 + 16);
      v14(v10, v0[43] + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v2, v12);
      v14(v11, v10, v12);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v96 = v0[45];
        v18 = v0[18];
        v17 = v0[19];
        v19 = v0[17];
        v20 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v20 = 136446979;
        *(v20 + 4) = sub_10000D01C(0x6164696C61766E69, 0xEC00000029286574, &v102);
        *(v20 + 12) = 2160;
        *(v20 + 14) = 1752392040;
        *(v20 + 22) = 2081;
        v21 = Handle.identifier.getter();
        v23 = v22;
        v6 = *(v18 + 8);
        v6(v17, v19);
        v24 = sub_10000D01C(v21, v23, &v102);
        v0 = v94;

        *(v20 + 24) = v24;
        *(v20 + 32) = 2114;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 34) = v25;
        *v95 = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s Failed to unsubscribe %{private,mask.hash}s.Error: %{public}@", v20, 0x2Au);
        sub_100002CE0(v95, &qword_1005A9670, &unk_1004C2480);

        swift_arrayDestroy();
      }

      else
      {
        v4 = v0[18];
        v3 = v0[19];
        v5 = v0[17];

        v6 = *(v4 + 8);
        v6(v3, v5);
      }

      ++v2;
      v7 = v0[18] + 8;
      v6(v0[20], v0[17]);
      v1 = v97;
      if (v99 == v2)
      {
        v26 = v0[43];
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_9:
  v27 = v0[45];

  if (v0[42])
  {
    v28 = v0[32];
    v29 = v0[42];

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = v0[22];
      v32 = v0[23];
      v34 = v94[21];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102 = v36;
      *v35 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = v34;
      v0 = v94;
      (*(v33 + 8))(v32, v40);
      v41 = sub_10000D01C(v37, v39, &v102);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "Canceling %{public}s.", v35, 0xCu);
      sub_100004984(v36);
    }

    v42 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v100 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v43 = swift_task_alloc();
    v0[46] = v43;
    *v43 = v0;
    v43[1] = sub_10034B39C;
LABEL_26:

    v100();
  }

  else
  {
    v44 = v0[41];

    (*(v0[25] + 8))(v0[26], v0[24]);
    v45 = v0[35];
    v46 = v0[36];
    if (!v45)
    {
      v48 = ((1 << *(v0 + 448)) + 63) >> 6;
      if (v48 <= (v46 + 1))
      {
        v49 = v46 + 1;
      }

      else
      {
        v49 = ((1 << *(v0 + 448)) + 63) >> 6;
      }

      v50 = v49 - 1;
      while (1)
      {
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v51 >= v48)
        {
          goto LABEL_37;
        }

        v47 = v0[34];
        v45 = *(v47 + 8 * v51 + 64);
        ++v46;
        if (v45)
        {
          v46 = v51;
          goto LABEL_23;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v47 = v0[34];
LABEL_23:
    v52 = v0[30];
    v53 = v0[27];
    v54 = v94[25];
    v55 = v94[24];
    v101 = (v45 - 1) & v45;
    v56 = __clz(__rbit64(v45)) | (v46 << 6);
    (*(v54 + 16))(v53, *(v47 + 48) + *(v54 + 72) * v56, v55);
    v57 = (*(v47 + 56) + 24 * v56);
    v58 = *v57;
    v59 = v57[1];
    v98 = v57[2];
    v60 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v61 = (v52 + *(v60 + 48));
    (*(v54 + 32))(v52, v53, v55);
    v0 = v94;
    *v61 = v58;
    v61[1] = v59;
    v61[2] = v98;
    (*(*(v60 - 8) + 56))(v52, 0, 1, v60);

    v62 = v101;
    v50 = v46;
    while (1)
    {
      v0[35] = v62;
      v0[36] = v50;
      v63 = v0[31];
      sub_1000176A8(v0[30], v63, &qword_1005B2468, &qword_1004D69B0);
      v64 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      v0[37] = v64;
      v65 = *(v64 - 8);
      v0[38] = v65;
      v66 = *(v65 + 48);
      v0[39] = v66;
      v0[40] = (v65 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v66(v63, 1, v64) == 1)
      {
        v67 = v0[34];
        v68 = v0[16];

        v69 = *(v68 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);
        v70 = *(&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + 1);
        v100 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v71 = swift_task_alloc();
        v0[47] = v71;
        *v71 = v0;
        v71[1] = sub_10034B97C;
        goto LABEL_26;
      }

      v73 = v0[25];
      v72 = v0[26];
      v74 = v0[24];
      v75 = (v0[31] + *(v64 + 48));
      v50 = *v75;
      v0[41] = *v75;
      v0[42] = v75[1];
      (*(v73 + 32))(v72);
      v76 = *(v50 + 16);
      if (!v76)
      {
        break;
      }

      v77 = v0[18];
      sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
      v78 = *(v77 + 72);
      v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v80 = swift_allocObject();
      v81 = j__malloc_size(v80);
      if (!v78)
      {
        goto LABEL_44;
      }

      if (v81 - v79 == 0x8000000000000000 && v78 == -1)
      {
        goto LABEL_45;
      }

      v80[2] = v76;
      v80[3] = 2 * ((v81 - v79) / v78);
      v83 = sub_100241514(v0 + 2, v80 + v79, v76, v50);
      v84 = v0[2];
      v85 = v0[3];
      v86 = v0[4];
      v87 = v94[5];
      v88 = v94[6];

      v0 = v94;
      sub_10000E3F8();
      if (v83 == v76)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_37:
      v89 = v0[30];
      v90 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
      v62 = 0;
    }

    v80 = _swiftEmptyArrayStorage;
LABEL_39:
    v0[43] = v80;
    v91 = swift_task_alloc();
    v0[44] = v91;
    *v91 = v0;
    v91[1] = sub_10034AC04;
    v92 = v0[26];
    v93 = v0[16];

    sub_100363EB0(v80, v92);
  }
}

uint64_t sub_10034D0D8()
{
  v1[21] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[25] = v5;
  v6 = *(v5 - 8);
  v1[26] = v6;
  v7 = *(v6 + 64) + 15;
  v1[27] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v1[30] = v9;
  v10 = *(v9 - 8);
  v1[31] = v10;
  v11 = *(v10 + 64) + 15;
  v1[32] = swift_task_alloc();
  v12 = type metadata accessor for AccountService.State(0);
  v1[33] = v12;
  v13 = *(v12 - 8);
  v1[34] = v13;
  v14 = *(v13 + 64) + 15;
  v1[35] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v16 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[37] = v16;
  v17 = *(v16 - 8);
  v1[38] = v17;
  v18 = *(v17 + 64) + 15;
  v1[39] = swift_task_alloc();
  v19 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v1[40] = v19;
  v20 = *(v19 - 8);
  v1[41] = v20;
  v21 = *(v20 + 64) + 15;
  v1[42] = swift_task_alloc();
  v22 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[43] = v22;
  v23 = *(v22 - 8);
  v1[44] = v23;
  v24 = *(v23 + 64) + 15;
  v1[45] = swift_task_alloc();
  v25 = async function pointer to daemon.getter[1];
  v26 = swift_task_alloc();
  v1[46] = v26;
  *v26 = v1;
  v26[1] = sub_10034D490;

  return daemon.getter();
}

uint64_t sub_10034D490(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v12 = *v1;
  *(v3 + 376) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 384) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A9118, 255, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10034D674;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10034D674(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v7 = v4[21];
    v8 = sub_10034E9B0;
  }

  else
  {
    v9 = v4[47];

    v8 = sub_10034D7AC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10034D7AC()
{
  v1 = v0[49];
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[21];
  swift_allocObject();
  swift_weakInit();
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_10034D8B8, v7, 0);
}

uint64_t sub_10034D8B8()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v0[51] = v5;
  v6 = v0[21];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[52] = v8;
  *v8 = v0;
  v8[1] = sub_10034D9D8;
  v9 = v0[45];
  v10 = v0[43];
  v11 = v0[36];

  return AsyncStream.Iterator.next(isolation:)(v11, v6, v5, v10);
}

uint64_t sub_10034D9D8()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10034DAE8, v2, 0);
}

uint64_t sub_10034DAE8()
{
  v1 = v0[36];
  if ((*(v0[34] + 48))(v1, 1, v0[33]) == 1)
  {
    v2 = v0[49];
    v3 = v0[42];
    v4 = v0[39];
    v5 = v0[35];
    v6 = v0[32];
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v47 = v0[24];
    (*(v0[44] + 8))(v0[45], v0[43]);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[35];
    sub_10037ECCC(v1, v12, type metadata accessor for AccountService.State);
    v13 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
    if ((*(*(v13 - 8) + 48))(v12, 3, v13))
    {
      v14 = v0[51];
      v15 = v0[21];
      v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
      v17 = swift_task_alloc();
      v0[52] = v17;
      *v17 = v0;
      v17[1] = sub_10034D9D8;
      v18 = v0[45];
      v19 = v0[43];
      v20 = v0[36];

      return AsyncStream.Iterator.next(isolation:)(v20, v15, v14, v19);
    }

    else
    {
      v21 = v0[21];
      (*(v0[31] + 32))(v0[32], v0[35], v0[30]);
      v0[53] = Account.dsid.getter();
      v0[54] = v22;
      v23 = *(v21 + 128);
      v0[55] = v23;
      if (v23)
      {
        v24 = async function pointer to Task<>.value.getter[1];

        v25 = swift_task_alloc();
        v0[56] = v25;
        v26 = type metadata accessor for SecureLocationsManagerAdapter();
        *v25 = v0;
        v25[1] = sub_10034E078;
        v27 = v0 + 20;
        v28 = v23;
      }

      else
      {
        v30 = v0[28];
        v29 = v0[29];
        v31 = type metadata accessor for TaskPriority();
        v32 = *(v31 - 8);
        (*(v32 + 56))(v29, 1, 1, v31);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 24) = 0;
        sub_100005F04(v29, v30, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v30) = (*(v32 + 48))(v30, 1, v31);

        v34 = v0[28];
        if (v30 == 1)
        {
          sub_100002CE0(v0[28], &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v32 + 8))(v34, v31);
        }

        v35 = *(v33 + 16);
        v36 = *(v33 + 24);
        swift_unknownObjectRetain();

        if (v35)
        {
          swift_getObjectType();
          v37 = dispatch thunk of Actor.unownedExecutor.getter();
          v39 = v38;
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = 0;
          v39 = 0;
        }

        sub_100002CE0(v0[29], &qword_1005A9690, &qword_1004C2A00);
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_1004D6A80;
        *(v40 + 24) = v33;
        v41 = type metadata accessor for SecureLocationsManagerAdapter();
        if (v39 | v37)
        {
          v0[8] = 0;
          v0[9] = 0;
          v0[10] = v37;
          v0[11] = v39;
        }

        v42 = v0[21];
        v43 = swift_task_create();
        v0[57] = v43;
        v44 = *(v42 + 128);
        *(v42 + 128) = v43;

        v45 = async function pointer to Task<>.value.getter[1];
        v46 = swift_task_alloc();
        v0[58] = v46;
        *v46 = v0;
        v46[1] = sub_10034E514;
        v27 = v0 + 18;
        v28 = v43;
        v26 = v41;
      }

      return Task<>.value.getter(v27, v28, v26);
    }
  }
}

uint64_t sub_10034E078()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10034E188, v2, 0);
}

uint64_t sub_10034E188()
{
  object = v0[27]._object;

  v2 = v0[26]._object;
  countAndFlagsBits = v0[27]._countAndFlagsBits;
  v32 = v0[16]._countAndFlagsBits;
  v30 = v0[15]._object;
  v31 = v0[15]._countAndFlagsBits;
  v4 = v0[12]._countAndFlagsBits;
  v28 = v0[13]._countAndFlagsBits;
  v29 = v0[12]._object;
  v5 = v0[11]._countAndFlagsBits;
  v26 = v0[13]._object;
  v27 = v0[11]._object;
  v6 = *(v0[10]._countAndFlagsBits + 40);
  v7 = String.utf8Data.getter();
  v9 = v8;

  v10 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v7, v9);
  v0[6] = v10;
  v0[7]._countAndFlagsBits = 61;
  v0[7]._object = 0xE100000000000000;
  v0[8]._countAndFlagsBits = 126;
  v0[8]._object = 0xE100000000000000;
  sub_1000246F4();
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = v12;

  v25 = *(v6 + 48);
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = v11;
  v14[4] = v13;
  v0[3]._countAndFlagsBits = sub_10037ED34;
  v0[3]._object = v14;
  v0[1]._countAndFlagsBits = _NSConcreteStackBlock;
  v0[1]._object = 1107296256;
  v0[2]._countAndFlagsBits = sub_100020828;
  v0[2]._object = &unk_10059A748;
  v15 = _Block_copy(&v0[1]);

  static DispatchQoS.unspecified.getter();
  v0[9]._object = _swiftEmptyArrayStorage;
  sub_10001AEBC(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  v27[1](v4, v5);
  (*(v28 + 8))(v26, v29);
  v30[1](v32, v31);
  v16 = v0[3]._object;

  v17 = v0[25]._object;
  v18 = v0[10]._object;
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  v0[26]._countAndFlagsBits = v20;
  *v20 = v0;
  v20[1] = sub_10034D9D8;
  v21 = v0[22]._object;
  v22 = v0[21]._object;
  v23 = v0[18]._countAndFlagsBits;

  return AsyncStream.Iterator.next(isolation:)(v23, v18, v17, v22);
}

uint64_t sub_10034E514()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10034E624, v2, 0);
}

uint64_t sub_10034E624()
{
  object = v0[28]._object;

  v2 = v0[26]._object;
  countAndFlagsBits = v0[27]._countAndFlagsBits;
  v32 = v0[16]._countAndFlagsBits;
  v30 = v0[15]._object;
  v31 = v0[15]._countAndFlagsBits;
  v4 = v0[12]._countAndFlagsBits;
  v28 = v0[13]._countAndFlagsBits;
  v29 = v0[12]._object;
  v5 = v0[11]._countAndFlagsBits;
  v26 = v0[13]._object;
  v27 = v0[11]._object;
  v6 = *(v0[9]._countAndFlagsBits + 40);
  v7 = String.utf8Data.getter();
  v9 = v8;

  v10 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v7, v9);
  v0[6] = v10;
  v0[7]._countAndFlagsBits = 61;
  v0[7]._object = 0xE100000000000000;
  v0[8]._countAndFlagsBits = 126;
  v0[8]._object = 0xE100000000000000;
  sub_1000246F4();
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = v12;

  v25 = *(v6 + 48);
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = v11;
  v14[4] = v13;
  v0[3]._countAndFlagsBits = sub_10037ED34;
  v0[3]._object = v14;
  v0[1]._countAndFlagsBits = _NSConcreteStackBlock;
  v0[1]._object = 1107296256;
  v0[2]._countAndFlagsBits = sub_100020828;
  v0[2]._object = &unk_10059A748;
  v15 = _Block_copy(&v0[1]);

  static DispatchQoS.unspecified.getter();
  v0[9]._object = _swiftEmptyArrayStorage;
  sub_10001AEBC(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  v27[1](v4, v5);
  (*(v28 + 8))(v26, v29);
  v30[1](v32, v31);
  v16 = v0[3]._object;

  v17 = v0[25]._object;
  v18 = v0[10]._object;
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  v0[26]._countAndFlagsBits = v20;
  *v20 = v0;
  v20[1] = sub_10034D9D8;
  v21 = v0[22]._object;
  v22 = v0[21]._object;
  v23 = v0[18]._countAndFlagsBits;

  return AsyncStream.Iterator.next(isolation:)(v23, v18, v17, v22);
}

uint64_t sub_10034E9B0()
{
  v1 = v0[47];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[39];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v14 = v0[24];

  v11 = v0[1];
  v12 = v0[50];

  return v11();
}

uint64_t sub_10034EAA8()
{
  v1[7] = v0;
  v2 = type metadata accessor for ClientID.ConnectionType();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for ClientID();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v1[15] = v9;
  v10 = *(v9 - 8);
  v1[16] = v10;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v12 = type metadata accessor for HandleType();
  v1[20] = v12;
  v13 = *(v12 - 8);
  v1[21] = v13;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = type metadata accessor for Friend();
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v18 = type metadata accessor for DataManager.State(0);
  v1[32] = v18;
  v19 = *(v18 - 8);
  v1[33] = v19;
  v20 = *(v19 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v21 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v22 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[39] = v22;
  v23 = *(v22 - 8);
  v1[40] = v23;
  v24 = *(v23 + 64) + 15;
  v1[41] = swift_task_alloc();
  v25 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v26 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[43] = v26;
  v27 = *(v26 - 8);
  v1[44] = v27;
  v28 = *(v27 + 64) + 15;
  v1[45] = swift_task_alloc();

  return _swift_task_switch(sub_10034EF30, v0, 0);
}

uint64_t sub_10034EF30()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 360);
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 272);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v45 = *(v0 + 232);
    v47 = *(v0 + 224);
    v49 = *(v0 + 216);
    v51 = *(v0 + 208);
    v53 = *(v0 + 184);
    v55 = *(v0 + 176);
    v57 = *(v0 + 152);
    v59 = *(v0 + 144);
    v61 = *(v0 + 136);
    v63 = *(v0 + 112);
    v65 = *(v0 + 104);
    v67 = *(v0 + 80);

    v11 = *(v0 + 8);
LABEL_11:

    return v11();
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 368) = sub_10000A6F0(v12, qword_1005E0B28);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Monitoring DataManager stream", v15, 2u);
  }

  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 336);
  v19 = *(v0 + 56);

  v20 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v19 + v20, v18, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100002CE0(*(v0 + 336), &qword_1005B0F00, &qword_1004D2F00);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "dataManagerStateStream should be available by now!", v23, 2u);
    }

    sub_1000F7A28();
    swift_allocError();
    *v24 = 11;
    swift_willThrow();
    v25 = *(v0 + 360);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 272);
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v44 = *(v0 + 232);
    v46 = *(v0 + 224);
    v48 = *(v0 + 216);
    v50 = *(v0 + 208);
    v52 = *(v0 + 184);
    v54 = *(v0 + 176);
    v56 = *(v0 + 152);
    v58 = *(v0 + 144);
    v60 = *(v0 + 136);
    v62 = *(v0 + 112);
    v64 = *(v0 + 104);
    v66 = *(v0 + 80);

    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  v36 = *(v0 + 328);
  (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  AsyncStream.makeAsyncIterator()();
  v37 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  *(v0 + 576) = enum case for HandleType.follower(_:);
  *(v0 + 580) = enum case for HandleType.following(_:);
  *(v0 + 584) = enum case for HandleType.futureFollower(_:);
  *(v0 + 588) = enum case for HandleType.futureFollowing(_:);
  *(v0 + 592) = enum case for HandleType.pendingOffer(_:);
  *(v0 + 596) = enum case for ClientID.ConnectionType.xpc(_:);
  *(v0 + 376) = v37;
  *(v0 + 384) = 0;
  v38 = *(v0 + 56);
  v39 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v40 = swift_task_alloc();
  *(v0 + 392) = v40;
  *v40 = v0;
  v40[1] = sub_10034F4EC;
  v41 = *(v0 + 328);
  v42 = *(v0 + 304);
  v43 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v42, v38, v37, v43);
}

uint64_t sub_10034F4EC()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10034F5FC, v2, 0);
}

uint64_t sub_10034F5FC()
{
  v185 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v3 + 8))(v2, v4);
    v5 = *(v0 + 360);
    v7 = *(v0 + 328);
    v6 = *(v0 + 336);
    v9 = *(v0 + 296);
    v8 = *(v0 + 304);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v12 = *(v0 + 272);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v148 = *(v0 + 232);
    v150 = *(v0 + 224);
    v152 = *(v0 + 216);
    v154 = *(v0 + 208);
    v156 = *(v0 + 184);
    v158 = *(v0 + 176);
    log = *(v0 + 152);
    buf = *(v0 + 144);
    v167 = *(v0 + 136);
    v172 = *(v0 + 112);
    v175 = *(v0 + 104);
    v180 = *(v0 + 80);

    v15 = *(v0 + 8);
LABEL_5:

    return v15();
  }

  v16 = *(v0 + 384);
  sub_10037ECCC(v1, *(v0 + 296), type metadata accessor for DataManager.State);
  static Task<>.checkCancellation()();
  if (v16)
  {
    v18 = *(v0 + 352);
    v17 = *(v0 + 360);
    v19 = *(v0 + 344);
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 312);
    sub_10037EBF8(*(v0 + 296), type metadata accessor for DataManager.State);
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v23 = *(v0 + 360);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 296);
    v26 = *(v0 + 304);
    v29 = *(v0 + 280);
    v28 = *(v0 + 288);
    v30 = *(v0 + 272);
    v32 = *(v0 + 240);
    v31 = *(v0 + 248);
    v147 = *(v0 + 232);
    v149 = *(v0 + 224);
    v151 = *(v0 + 216);
    v153 = *(v0 + 208);
    v155 = *(v0 + 184);
    v157 = *(v0 + 176);
    v159 = *(v0 + 152);
    loga = *(v0 + 144);
    bufa = *(v0 + 136);
    v168 = *(v0 + 112);
    v173 = *(v0 + 104);
    v176 = *(v0 + 80);

    v15 = *(v0 + 8);
    goto LABEL_5;
  }

  v34 = *(v0 + 368);
  sub_10037EC58(*(v0 + 296), *(v0 + 288), type metadata accessor for DataManager.State);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 288);
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v184[0] = v40;
    *v39 = 136315138;
    v41 = sub_1001DA250(v40);
    v43 = v42;
    sub_10037EBF8(v38, type metadata accessor for DataManager.State);
    v44 = sub_10000D01C(v41, v43, v184);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "dataManagerStateStream event: %s", v39, 0xCu);
    sub_100004984(v40);
  }

  else
  {

    sub_10037EBF8(v38, type metadata accessor for DataManager.State);
  }

  v45 = *(v0 + 256);
  sub_10037EC58(*(v0 + 296), *(v0 + 280), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100002CE0(*(v0 + 280), &qword_1005AA718, &qword_1004C4370);
LABEL_12:
    v47 = *(v0 + 368);
    sub_10037EC58(*(v0 + 296), *(v0 + 272), type metadata accessor for DataManager.State);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 296);
    v52 = *(v0 + 272);
    if (v50)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v184[0] = v54;
      *v53 = 136315138;
      v55 = sub_1001DA250(v54);
      v57 = v56;
      sub_10037EBF8(v52, type metadata accessor for DataManager.State);
      v58 = sub_10000D01C(v55, v57, v184);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Ignoring %s", v53, 0xCu);
      sub_100004984(v54);
    }

    else
    {

      sub_10037EBF8(v52, type metadata accessor for DataManager.State);
    }

    v59 = v51;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 280), *(v0 + 192));
    goto LABEL_12;
  }

  v67 = *(v0 + 368);
  v69 = *(v0 + 240);
  v68 = *(v0 + 248);
  v70 = *(v0 + 192);
  v71 = *(v0 + 200);
  (*(v71 + 32))(v68, *(v0 + 280), v70);
  v72 = *(v71 + 16);
  *(v0 + 400) = v72;
  *(v0 + 408) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v181 = v72;
  v72(v69, v68, v70);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v0 + 240);
  v77 = *(v0 + 192);
  v78 = *(v0 + 200);
  if (v75)
  {
    v79 = *(v0 + 184);
    v174 = *(v0 + 192);
    v81 = *(v0 + 160);
    v80 = *(v0 + 168);
    bufb = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v184[0] = v177;
    *bufb = 136315138;
    v169 = v74;
    Friend.type.getter();
    sub_10001AEBC(&qword_1005A9198, 255, &type metadata accessor for HandleType);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    (*(v80 + 8))(v79, v81);
    v85 = *(v78 + 8);
    v85(v76, v174);
    v86 = sub_10000D01C(v82, v84, v184);

    *(bufb + 4) = v86;
    _os_log_impl(&_mh_execute_header, v73, v169, "dataManagerStateStream added friend of type: %s", bufb, 0xCu);
    sub_100004984(v177);
  }

  else
  {

    v85 = *(v78 + 8);
    v85(v76, v77);
  }

  *(v0 + 416) = v85;
  v87 = *(v0 + 576);
  v88 = *(v0 + 248);
  v90 = *(v0 + 168);
  v89 = *(v0 + 176);
  v91 = *(v0 + 160);
  Friend.type.getter();
  v92 = (*(v90 + 88))(v89, v91);
  if (v92 == v87)
  {
    v93 = *(v0 + 248);
    v94 = *(v0 + 152);
    v95 = *(v0 + 120);
    v96 = *(v0 + 128);
    Friend.handle.getter();
    v97 = Handle.serverID.getter();
    v99 = v98;
    *(v0 + 424) = v97;
    *(v0 + 432) = v98;
    v100 = *(v96 + 8);
    *(v0 + 440) = v100;
    *(v0 + 448) = (v96 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100(v94, v95);
    if (v99)
    {
      v101 = async function pointer to daemon.getter[1];
      v102 = swift_task_alloc();
      *(v0 + 456) = v102;
      *v102 = v0;
      v102[1] = sub_1003505A4;

      return daemon.getter();
    }

    v136 = *(v0 + 296);
    v137 = *(v0 + 200) + 8;
    v85(*(v0 + 248), *(v0 + 192));
LABEL_42:
    v59 = v136;
LABEL_16:
    sub_10037EBF8(v59, type metadata accessor for DataManager.State);
LABEL_17:
    *(v0 + 384) = 0;
    v60 = *(v0 + 376);
    v61 = *(v0 + 56);
    v62 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v63 = swift_task_alloc();
    *(v0 + 392) = v63;
    *v63 = v0;
    v63[1] = sub_10034F4EC;
    v64 = *(v0 + 328);
    v65 = *(v0 + 304);
    v66 = *(v0 + 312);

    return AsyncStream.Iterator.next(isolation:)(v65, v61, v60, v66);
  }

  if (v92 != *(v0 + 580))
  {
    v117 = *(v0 + 248);
    if (v92 != *(v0 + 584) && v92 != *(v0 + 588) && v92 != *(v0 + 592))
    {
      v118 = *(v0 + 368);
      v181(*(v0 + 208), *(v0 + 248), *(v0 + 192));
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      v121 = os_log_type_enabled(v119, v120);
      v122 = *(v0 + 296);
      v123 = *(v0 + 248);
      v124 = *(v0 + 200);
      v125 = *(v0 + 208);
      v126 = *(v0 + 192);
      if (v121)
      {
        v179 = v120;
        v127 = *(v0 + 184);
        v171 = *(v0 + 192);
        logb = v119;
        v128 = *(v0 + 160);
        v129 = *(v0 + 168);
        v183 = *(v0 + 296);
        v130 = swift_slowAlloc();
        v184[0] = swift_slowAlloc();
        *v130 = 136446466;
        *(v130 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E82B0, v184);
        *(v130 + 12) = 2080;
        Friend.type.getter();
        sub_10001AEBC(&qword_1005A9198, 255, &type metadata accessor for HandleType);
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v132;
        v160 = v123;
        v134 = *(v129 + 8);
        v134(v127, v128);
        v85(v125, v171);
        v135 = sub_10000D01C(v131, v133, v184);

        *(v130 + 14) = v135;
        _os_log_impl(&_mh_execute_header, logb, v179, "%{public}s Unexpected friend.type %s!", v130, 0x16u);
        swift_arrayDestroy();

        v85(v160, v171);
        sub_10037EBF8(v183, type metadata accessor for DataManager.State);
      }

      else
      {
        v145 = *(v0 + 168);

        v85(v125, v126);
        v85(v123, v126);
        sub_10037EBF8(v122, type metadata accessor for DataManager.State);
        v134 = *(v145 + 8);
      }

      v146 = *(v0 + 168) + 8;
      v134(*(v0 + 176), *(v0 + 160));
      goto LABEL_17;
    }

    v136 = *(v0 + 296);
    v138 = *(v0 + 200) + 8;
    v85(*(v0 + 248), *(v0 + 192));
    goto LABEL_42;
  }

  v103 = *(v0 + 368);
  v181(*(v0 + 216), *(v0 + 248), *(v0 + 192));
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  v106 = os_log_type_enabled(v104, v105);
  v107 = *(v0 + 216);
  v109 = *(v0 + 192);
  v108 = *(v0 + 200);
  if (v106)
  {
    v182 = v105;
    v110 = *(v0 + 144);
    v111 = *(v0 + 128);
    v170 = *(v0 + 120);
    v112 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v184[0] = v178;
    *v112 = 141558275;
    *(v112 + 4) = 1752392040;
    *(v112 + 12) = 2081;
    Friend.handle.getter();
    v113 = Handle.identifier.getter();
    v115 = v114;
    (*(v111 + 8))(v110, v170);
    v85(v107, v109);
    v116 = sub_10000D01C(v113, v115, v184);

    *(v112 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v104, v182, "Added a following: %{private,mask.hash}s", v112, 0x16u);
    sub_100004984(v178);
  }

  else
  {

    v85(v107, v109);
  }

  v139 = [objc_opt_self() mainBundle];
  v140 = [v139 bundleIdentifier];

  if (v140)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v141 = *(v0 + 104);
  (*(*(v0 + 72) + 104))(*(v0 + 80), *(v0 + 596), *(v0 + 64));
  ClientID.init(identifier:connectionType:)();
  v142 = swift_task_alloc();
  *(v0 + 552) = v142;
  *v142 = v0;
  v142[1] = sub_100351A3C;
  v143 = *(v0 + 104);
  v144 = *(v0 + 56);

  return sub_1003851F0(v143);
}

uint64_t sub_1003505A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 456);
  v12 = *v1;
  *(v3 + 464) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 472) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100350788;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100350788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  v4[60] = a1;
  v4[61] = v1;

  v7 = v4[58];
  if (v1)
  {
    v8 = v4[54];
    v9 = v4[7];

    return _swift_task_switch(sub_100351CE8, v9, 0);
  }

  else
  {

    v10 = swift_task_alloc();
    v4[62] = v10;
    *v10 = v6;
    v10[1] = sub_100350940;
    v11 = v4[14];

    return sub_1001DB14C(v11);
  }
}

uint64_t sub_100350940()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 480);
  v4 = *v0;

  return _swift_task_switch(sub_100350A50, v2, 0);
}

uint64_t sub_100350A50()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 56);

    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v6 = sub_100351084;
    v7 = v5;
  }

  else
  {
    v8 = *(v0 + 56);
    *(v0 + 600) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v6 = sub_100350B94;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100350B94()
{
  v61 = v0;
  if (*(v0 + 600))
  {
    v1 = *(v0 + 480);
    v2 = *(v0 + 432);
    v4 = *(v0 + 400);
    v3 = *(v0 + 408);
    v5 = *(v0 + 368);
    v6 = *(v0 + 248);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 192);

    v4(v7, v6, v9);
    v4(v8, v6, v9);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      log = v10;
      v12 = *(v0 + 440);
      v55 = *(v0 + 432);
      v56 = *(v0 + 424);
      v13 = *(v0 + 232);
      v57 = *(v0 + 224);
      v14 = *(v0 + 192);
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v54 = *(v0 + 416);
      v17 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v17 = 141559299;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v58 = v11;
      Friend.handle.getter();
      v18 = Handle.identifier.getter();
      v20 = v19;
      v12(v15, v16);
      v54(v13, v14);
      v21 = sub_10000D01C(v18, v20, &v60);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2160;
      *(v17 + 24) = 1752392040;
      *(v17 + 32) = 2081;

      v22 = sub_10000D01C(v56, v55, &v60);

      *(v17 + 34) = v22;
      *(v17 + 42) = 2160;
      *(v17 + 44) = 1752392040;
      *(v17 + 52) = 2081;
      Friend.handle.getter();
      Handle.siblingIdentifiers.getter();
      v12(v15, v16);
      v23 = Array.description.getter();
      v25 = v24;

      v54(v57, v14);
      v26 = sub_10000D01C(v23, v25, &v60);

      *(v17 + 54) = v26;
      _os_log_impl(&_mh_execute_header, log, v58, "dataManagerStateStream: sharing current secure locations key with new follower,\nhandleId: %{private,mask.hash}s\nserverID: %{private,mask.hash}s,\nidsHandles: %{private,mask.hash}s", v17, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v46 = *(v0 + 416);
      v48 = *(v0 + 224);
      v47 = *(v0 + 232);
      v49 = *(v0 + 192);
      v50 = *(v0 + 200);

      v46(v48, v49);
      v46(v47, v49);
    }

    v51 = swift_task_alloc();
    *(v0 + 504) = v51;
    *v51 = v0;
    v51[1] = sub_100351218;
    v52 = *(v0 + 56);

    return sub_10001CC28();
  }

  else
  {
    v27 = *(v0 + 432);

    v28 = *(v0 + 368);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 480);
    v33 = *(v0 + 416);
    v34 = *(v0 + 296);
    v35 = *(v0 + 248);
    v36 = *(v0 + 192);
    v37 = *(v0 + 200);
    if (v31)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Non Me device should not share current key", v38, 2u);
    }

    v33(v35, v36);
    sub_10037EBF8(v34, type metadata accessor for DataManager.State);
    *(v0 + 384) = *(v0 + 488);
    v39 = *(v0 + 376);
    v40 = *(v0 + 56);
    v41 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v42 = swift_task_alloc();
    *(v0 + 392) = v42;
    *v42 = v0;
    v42[1] = sub_10034F4EC;
    v43 = *(v0 + 328);
    v44 = *(v0 + 304);
    v45 = *(v0 + 312);

    return AsyncStream.Iterator.next(isolation:)(v44, v40, v39, v45);
  }
}

uint64_t sub_100351084()
{
  v1 = v0[46];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[60];
  v6 = v0[52];
  v7 = v0[37];
  v8 = v0[31];
  v9 = v0[24];
  v10 = v0[25];
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Non Me device should not share current key", v11, 2u);
  }

  v6(v8, v9);
  sub_10037EBF8(v7, type metadata accessor for DataManager.State);
  v0[48] = v0[61];
  v12 = v0[47];
  v13 = v0[7];
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  v0[49] = v15;
  *v15 = v0;
  v15[1] = sub_10034F4EC;
  v16 = v0[41];
  v17 = v0[38];
  v18 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v17, v13, v12, v18);
}

uint64_t sub_100351218(uint64_t a1)
{
  v2 = *(*v1 + 504);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 512) = a1;

  return _swift_task_switch(sub_100351330, v3, 0);
}

uint64_t sub_100351330()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[31];
  v4 = v0[17];
  v5 = v0[15];
  Friend.handle.getter();
  v0[65] = Handle.siblingIdentifiers.getter();
  v2(v4, v5);

  return _swift_task_switch(sub_1003513D0, 0, 0);
}

uint64_t sub_1003513D0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v7 = *(v0 + 424);
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 536) = v5;
  *v5 = v0;
  v5[1] = sub_1003514E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000023, 0x80000001004E82D0, sub_10037ECC0, v3, &type metadata for () + 8);
}

uint64_t sub_1003514E0()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = sub_100351778;
  }

  else
  {
    v5 = v2[66];
    v6 = v2[65];
    v7 = v2[54];

    v4 = sub_100351614;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100351614()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100351680, v2, 0);
}

uint64_t sub_100351680()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 200) + 8;
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  sub_10037EBF8(v1, type metadata accessor for DataManager.State);
  *(v0 + 384) = *(v0 + 544);
  v3 = *(v0 + 376);
  v4 = *(v0 + 56);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 392) = v6;
  *v6 = v0;
  v6[1] = sub_10034F4EC;
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_100351778()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[54];
  v5 = v0[7];

  return _swift_task_switch(sub_100351810, v5, 0);
}

uint64_t sub_100351810()
{
  v21 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 368);
  v3 = *(v0 + 200) + 8;
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "dataManagerStateStream event error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v6 = *(v0 + 296);
  }

  sub_10037EBF8(v6, type metadata accessor for DataManager.State);
  *(v0 + 384) = 0;
  v12 = *(v0 + 376);
  v13 = *(v0 + 56);
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  v15[1] = sub_10034F4EC;
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v17, v13, v12, v18);
}

uint64_t sub_100351A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[7];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100351F6C;
  }

  else
  {
    v11 = sub_100351BC4;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100351BC4()
{
  v1 = v0[70];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    sub_1003718C0(v1);
    v3 = v0[70];
  }

  v4 = v0[52];
  v5 = v0[37];
  v6 = v0[31];
  v7 = v0[24];
  v8 = v0[25];

  v4(v6, v7);
  sub_10037EBF8(v5, type metadata accessor for DataManager.State);
  v0[48] = v0[71];
  v9 = v0[47];
  v10 = v0[7];
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[49] = v12;
  *v12 = v0;
  v12[1] = sub_10034F4EC;
  v13 = v0[41];
  v14 = v0[38];
  v15 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v14, v10, v9, v15);
}

uint64_t sub_100351CE8()
{
  v32 = v0;
  v1 = v0[61];
  v2 = v0[46];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[61];
    v29 = v0[52];
    v30 = v0[37];
    v6 = v0[31];
    v7 = v0[24];
    v28 = v0[25] + 8;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136446210;
    v0[6] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v31);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Share Key: unable to get DataManager: %{public}s", v8, 0xCu);
    sub_100004984(v9);

    v29(v6, v7);
    v13 = v30;
  }

  else
  {
    v14 = v0[61];
    v15 = v0[52];
    v16 = v0[37];
    v17 = v0[31];
    v18 = v0[24];
    v19 = v0[25];

    v15(v17, v18);
    v13 = v16;
  }

  sub_10037EBF8(v13, type metadata accessor for DataManager.State);
  v0[48] = 0;
  v20 = v0[47];
  v21 = v0[7];
  v22 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v23 = swift_task_alloc();
  v0[49] = v23;
  *v23 = v0;
  v23[1] = sub_10034F4EC;
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v25, v21, v20, v26);
}

uint64_t sub_100351F6C()
{
  v21 = v0;
  v1 = *(v0 + 568);
  v2 = *(v0 + 368);
  v3 = *(v0 + 200) + 8;
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 296);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446210;
    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "dataManagerStateStream event error: %{public}s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v6 = *(v0 + 296);
  }

  sub_10037EBF8(v6, type metadata accessor for DataManager.State);
  *(v0 + 384) = 0;
  v12 = *(v0 + 376);
  v13 = *(v0 + 56);
  v14 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  v15[1] = sub_10034F4EC;
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v17, v13, v12, v18);
}

uint64_t sub_100352198(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[11] = Priority;
  v5 = *(Priority - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for ClientID();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003522DC, v2, 0);
}

uint64_t sub_1003522DC()
{
  v78 = v0;
  v1 = v0[8];
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[9];
    v7 = v0[10];
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B28);
    (*(v3 + 16))(v4, v6, v5);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[17];
    if (v11)
    {
      v73 = v0[11];
      v15 = v0[10];
      v16 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v16 = 136446466;
      sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v13 + 8))(v12, v14);
      v20 = sub_10000D01C(v17, v19, v77);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v21 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
      swift_beginAccess();
      v22 = *(v15 + v21);
      sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority);

      v23 = Dictionary.description.getter();
      v25 = v24;

      v26 = sub_10000D01C(v23, v25, v77);

      *(v16 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v9, v10, "startRefreshing for %{public}s: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v39 = v0[16];
    v40 = v0[11];
    v41 = v0[12];
    v42 = v0[8];
    LocationRequest.priority.getter();
    v43 = (*(v41 + 88))(v39, v40);
    if (v43 == enum case for LocatePriority.backgroundAppRefresh(_:))
    {
      goto LABEL_20;
    }

    v44 = enum case for LocatePriority.shallow(_:);
    if (v43 == enum case for LocatePriority.shallow(_:))
    {
      goto LABEL_20;
    }

    if (v43 == enum case for LocatePriority.live(_:))
    {
      v45 = v0[15];
      v76 = v0[14];
      v47 = v0[11];
      v46 = v0[12];
      v48 = v0[9];
      v74 = v0[10];
      v49 = v0[8];
      v50 = LocationRequest.toHandles.getter();
      v75 = *(v46 + 104);
      v75(v45, v44, v47);
      sub_100362F78(v48, v50, v45);

      v51 = *(v46 + 8);
      v0[20] = v51;
      v0[21] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v51(v45, v47);
      v52 = LocationRequest.toHandles.getter();
      v0[22] = v52;
      v75(v76, v44, v47);
      v53 = swift_task_alloc();
      v0[23] = v53;
      *v53 = v0;
      v53[1] = sub_100352A50;
      v54 = v0[14];
LABEL_21:
      v65 = v0[10];

      return sub_100367504(v52, v54, 1);
    }

    if (v43 == enum case for LocatePriority.backgroundProactive(_:))
    {
LABEL_20:
      v55 = v0[15];
      v57 = v0[12];
      v56 = v0[13];
      v59 = v0[10];
      v58 = v0[11];
      v61 = v0[8];
      v60 = v0[9];
      v62 = LocationRequest.toHandles.getter();
      LocationRequest.priority.getter();
      sub_100362F78(v60, v62, v55);

      v63 = *(v57 + 8);
      v0[29] = v63;
      v0[30] = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v63(v55, v58);
      v52 = LocationRequest.toHandles.getter();
      v0[31] = v52;
      LocationRequest.priority.getter();
      v64 = swift_task_alloc();
      v0[32] = v64;
      *v64 = v0;
      v64[1] = sub_100352E8C;
      v54 = v0[13];
      goto LABEL_21;
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
    }

    v69 = v0[16];
    v70 = v0[11];
    v71 = v0[12];

    sub_1000F7A28();
    swift_allocError();
    *v72 = 2;
    swift_willThrow();
    (*(v71 + 8))(v69, v70);
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005E0B28);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "startRefreshing called with empty handles!", v30, 2u);
    }

    sub_1000F7A28();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  v32 = v0[19];
  v34 = v0[15];
  v33 = v0[16];
  v36 = v0[13];
  v35 = v0[14];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100352A50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  v7 = v3[22];
  v8 = v3[21];
  v9 = v3[20];
  v10 = v3[14];
  v11 = v3[11];
  v12 = v3[10];
  v9(v10, v11);

  if (v1)
  {
    v13 = sub_100353098;
  }

  else
  {
    v13 = sub_100352BF8;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_100352BF8()
{
  v1 = v0[24];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    sub_1003718C0(v1);
    v3 = v0[24];
  }

  v4 = v0[8];

  v5 = LocationRequest.toHandles.getter();
  v0[26] = v5;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_100352CB8;
  v7 = v0[9];
  v8 = v0[10];

  return sub_10035AD64(v5, v7);
}

uint64_t sub_100352CB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[27];
  v11 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = v4[10];
    v7 = sub_100353134;
  }

  else
  {
    v8 = v4[26];
    v9 = v4[10];

    v7 = sub_100352DE8;
    v6 = v9;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100352DE8()
{
  v1 = v0[6];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_100352E8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  v10 = v4[13];
  v11 = v4[11];
  if (v1)
  {
    v12 = v4[10];
    v9(v10, v11);

    return _swift_task_switch(sub_1003531D8, v12, 0);
  }

  else
  {
    v9(v10, v11);

    v13 = v4[19];
    v15 = v4[15];
    v14 = v4[16];
    v18 = v4 + 13;
    v16 = v4[13];
    v17 = v18[1];

    v19 = *(v6 + 8);

    return v19(a1);
  }
}

uint64_t sub_100353098()
{
  v1 = v0[25];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100353134()
{
  v1 = v0[26];

  v2 = v0[28];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003531D8()
{
  v1 = v0[33];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100353274(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = *v2;
  v4 = type metadata accessor for UUID();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[24] = v6;
  v7 = *(v6 - 8);
  v3[25] = v7;
  v8 = *(v7 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v9 = type metadata accessor for Location();
  v3[30] = v9;
  v10 = *(v9 - 8);
  v3[31] = v10;
  v11 = *(v10 + 64) + 15;
  v3[32] = swift_task_alloc();
  v12 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v3[33] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v3[35] = v14;
  v15 = *(v14 - 8);
  v3[36] = v15;
  v16 = *(v15 + 64) + 15;
  v3[37] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[38] = Priority;
  v18 = *(Priority - 8);
  v3[39] = v18;
  v19 = *(v18 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_100353568, v2, 0);
}

uint64_t sub_100353568()
{
  v62 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  v0[42] = sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8250, v61);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v8 = Array.description.getter();
    v10 = sub_10000D01C(v8, v9, v61);

    *(v7 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s handles: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v11 = *(v0[13] + 16);
  v0[43] = v11;
  if (v11)
  {
    v12 = v0[15];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[38];
      v16 = v0[15];
      v17 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8250, v61);
      *(v17 + 12) = 2080;
      v18 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
      swift_beginAccess();
      v19 = *(v16 + v18);
      sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority);

      v20 = Dictionary.description.getter();
      v22 = v21;

      v23 = sub_10000D01C(v20, v22, v61);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    v24 = v0[41];
    v25 = v0[39];
    v53 = v0[38];
    v27 = v0[36];
    v26 = v0[37];
    v57 = v0[35];
    v59 = v0[40];
    v29 = v0[14];
    v28 = v0[15];
    v30 = v0[13];
    v55 = enum case for LocatePriority.shallow(_:);
    v31 = *(v25 + 104);
    v31(v24);
    sub_100362F78(v29, v30, v24);
    v32 = *(v25 + 8);
    v0[44] = v32;
    v0[45] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v24, v53);
    static Date.trustedNow.getter(v26);
    Date.timeIntervalSince1970.getter();
    v0[46] = v33;
    (*(v27 + 8))(v26, v57);
    (v31)(v59, v55, v53);
    v34 = swift_task_alloc();
    v0[47] = v34;
    *v34 = v0;
    v34[1] = sub_100353B90;
    v35 = v0[40];
    v36 = v0[15];
    v37 = v0[13];

    return sub_100367504(v37, v35, 0);
  }

  else
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "start shallow Refreshing called with empty handles!", v41, 2u);
    }

    v42 = v0[40];
    v43 = v0[41];
    v44 = v0[37];
    v45 = v0[34];
    v46 = v0[32];
    v48 = v0[28];
    v47 = v0[29];
    v51 = v0[27];
    v52 = v0[26];
    v54 = v0[23];
    v56 = v0[22];
    v58 = v0[21];
    v60 = v0[20];

    sub_1000F7A28();
    swift_allocError();
    *v49 = 3;
    swift_willThrow();

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_100353B90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[45];
  v8 = v3[44];
  v9 = v3[40];
  v10 = v3[38];
  v11 = v3[15];
  v8(v9, v10);
  if (v1)
  {
    v12 = sub_100354C94;
  }

  else
  {
    v12 = sub_100353D1C;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100353D1C()
{
  v126 = v0;
  v1 = *(v0 + 384);
  v106 = *(v0 + 264);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v104 = *(v0 + 200);
  v105 = *(v0 + 248);
  v107 = *(v0 + 384);

  v13 = 0;
  v102 = v6;
  v103 = v2;
  while (v5)
  {
LABEL_11:
    v15 = *(v0 + 272);
    v16 = *(v0 + 240);
    v121 = *(v0 + 104);
    v17 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v18 = v17 | (v13 << 6);
    v19 = *(v104 + 72);
    (*(v104 + 16))(v15, *(v107 + 48) + v19 * v18, *(v0 + 192));
    buf = *(v106 + 48);
    v115 = v15;
    v108 = *(v105 + 16);
    v108(&buf[v15], *(v107 + 56) + *(v105 + 72) * v18, v16);
    v20 = v121 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v21 = -1;
    do
    {
      if (++v21 == *(v0 + 344))
      {
        v6 = v102;
        v2 = v103;
        goto LABEL_5;
      }

      v22 = *(v0 + 272);
      v23 = *(v0 + 192);
      sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle);
      v20 += v19;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v24 = *(v0 + 368);
    Location.timestamp.getter();
    v6 = v102;
    if (v24 - v25 < 60.0)
    {
      v26 = *(v0 + 272);
      v27 = *(v0 + 256);
      v108(v27, &buf[v115], *(v0 + 240));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = _swiftEmptyDictionarySingleton;
      sub_100452B70(v27, v26, isUniquelyReferenced_nonNull_native);
    }

    v2 = v103;
LABEL_5:
    v7 = sub_100002CE0(*(v0 + 272), &qword_1005B2440, &qword_1004D68C0);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v14 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v14);
    ++v13;
    if (v5)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v29 = *(v0 + 384);

  v30 = *(v0 + 384);
  *(v0 + 400) = _swiftEmptyDictionarySingleton;
  *(v0 + 408) = v30;
  v31 = *(v0 + 200);
  v32 = *(v0 + 104);
  v33 = *(v31 + 80);
  *(v0 + 504) = v33;
  v34 = *(v31 + 72);
  *(v0 + 416) = v34;
  v116 = (v33 + 32) & ~v33;
  v35 = v32 + v116;
  v122 = (v31 + 16);
  v109 = (v31 + 8);
  v36 = (v31 + 32);

  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
  bufa = v34;
  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    v40 = *(v0 + 232);
    v41 = *(v0 + 192);
    v42 = *v122;
    *(v0 + 424) = *v122;
    v42(v40, v35, v41);
    if (_swiftEmptyDictionarySingleton[2] && (v43 = *(v0 + 232), , sub_1001FD93C(v43), LOBYTE(v43) = v44, , (v43 & 1) != 0))
    {
      v7 = (*v109)(*(v0 + 232), *(v0 + 192));
    }

    else
    {
      v45 = *v36;
      (*v36)(*(v0 + 224), *(v0 + 232), *(v0 + 192));
      v125 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000E8E0(0, v38[2] + 1, 1);
        v38 = v125;
      }

      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        sub_10000E8E0(v46 > 1, v47 + 1, 1);
        v38 = v125;
      }

      v48 = *(v0 + 224);
      v49 = *(v0 + 192);
      v38[2] = v47 + 1;
      v50 = v38 + v116 + v47 * bufa;
      v34 = bufa;
      v7 = v45(v50, v48, v49);
    }

    *(v0 + 432) = v38;
    v35 += v34;
    ++v37;
    if (v39 == *(v0 + 344))
    {
      v51 = *(v0 + 104);

      v52 = *(v0 + 336);
      if (v38[2])
      {
        v54 = *(v0 + 176);
        v53 = *(v0 + 184);
        v55 = *(v0 + 144);
        v120 = *(v0 + 136);
        v56 = *(v0 + 120);
        UUID.init()();
        v57 = sub_1002087C4(_swiftEmptyArrayStorage);
        v58 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
        *(v0 + 440) = v57;
        *(v0 + 448) = v58;
        swift_beginAccess();

        v59 = *(v56 + v58);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v125 = *(v56 + v58);
        *(v56 + v58) = 0x8000000000000000;
        v123 = v57;
        sub_100454828(v38, 0, v57, v53, v60);
        *(v56 + v58) = v125;
        swift_endAccess();
        v61 = *(v55 + 16);
        *(v0 + 456) = v61;
        *(v0 + 464) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v61(v54, v53, v120);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 176);
        v67 = *(v0 + 136);
        v66 = *(v0 + 144);
        if (v64)
        {
          bufb = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v125 = v117;
          *bufb = 136446210;
          sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
          v68 = v61;
          v69 = dispatch thunk of CustomStringConvertible.description.getter();
          v110 = v63;
          v71 = v70;
          v72 = *(v66 + 8);
          v72(v65, v67);
          v73 = v69;
          v61 = v68;
          v74 = sub_10000D01C(v73, v71, &v125);

          *(bufb + 4) = v74;
          _os_log_impl(&_mh_execute_header, v62, v110, "Start latestLocation Task:%{public}s", bufb, 0xCu);
          sub_100004984(v117);
        }

        else
        {

          v72 = *(v66 + 8);
          v72(v65, v67);
        }

        *(v0 + 472) = v72;
        v93 = *(v0 + 168);
        v95 = *(v0 + 144);
        v94 = *(v0 + 152);
        v96 = *(v0 + 136);
        v119 = *(v0 + 128);
        v97 = *(v0 + 120);
        v61(v93, *(v0 + 184), v96);
        v98 = (*(v95 + 80) + 48) & ~*(v95 + 80);
        v99 = (v94 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        *(v0 + 480) = v100;
        *(v100 + 2) = v97;
        *(v100 + 3) = v38;
        *(v100 + 4) = 0;
        *(v100 + 5) = v123;
        (*(v95 + 32))(&v100[v98], v93, v96);
        *&v100[v99] = v119;
        v101 = async function pointer to withTimeout<A>(_:block:)[1];

        v7 = swift_task_alloc();
        *(v0 + 488) = v7;
        *v7 = v0;
        v7[1] = sub_10035468C;
        v10 = &unk_1004D6A40;
        v8 = 0x40AAD21B3B700000;
        v12 = &type metadata for () + 8;
        v9 = 3;
        v11 = v100;

        return withTimeout<A>(_:block:)(v7, v8, v9, v10, v11, v12);
      }

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 134217984;
        *(v77 + 4) = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v75, v76, "All server cached locations are under %fs. Stop shallowRefresh and return", v77, 0xCu);
      }

      v79 = *(v0 + 112);
      v78 = *(v0 + 120);
      v80 = *(v0 + 104);

      sub_10036CA64(v80, v79);
      v82 = *(v0 + 320);
      v81 = *(v0 + 328);
      v83 = *(v0 + 296);
      v84 = *(v0 + 272);
      v85 = *(v0 + 256);
      v87 = *(v0 + 224);
      v86 = *(v0 + 232);
      v89 = *(v0 + 208);
      v88 = *(v0 + 216);
      bufc = *(v0 + 184);
      v118 = *(v0 + 176);
      v90 = *(v0 + 160);
      v124 = *(v0 + 168);

      v91 = *(v0 + 8);

      return v91(_swiftEmptyDictionarySingleton);
    }
  }

LABEL_41:
  __break(1u);
  return withTimeout<A>(_:block:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10035468C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v9 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_1003554BC;
  }

  else
  {
    v6 = *(v2 + 480);
    v7 = *(v2 + 120);

    v5 = sub_1003547B4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003547B4()
{
  v64 = v0;
  v1 = *(v0 + 496);
  v2 = *(*(v0 + 120) + *(v0 + 448));
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 184);
  v4 = *(*(v0 + 120) + *(v0 + 448));

  v5 = sub_1001FD868(v3);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v10 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v7 = (*(v2 + 56) + 24 * v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  swift_bridgeObjectRetain_n();

  sub_10037DFD4(v8);
LABEL_6:
  v11 = *(v0 + 448);
  v12 = *(v0 + 400);
  v13 = *(v0 + 184);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = v12;
  sub_10037E65C(v10, sub_10039579C, 0, isUniquelyReferenced_nonNull_native, v63);

  v17 = v63[0];
  swift_beginAccess();
  v18 = sub_1001D933C(v13);
  swift_endAccess();
  sub_10037DFD4(v18);

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = v17;
  do
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    v24 = *(v0 + 200) + 16;
    (*(v0 + 424))(*(v0 + 216), *(v0 + 104) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 416) * v20, *(v0 + 192));
    if (*(v17 + 16) && (v25 = *(v0 + 216), , sub_1001FD93C(v25), LOBYTE(v25) = v26, , (v25 & 1) != 0))
    {
      result = (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    }

    else
    {
      v27 = *(*(v0 + 200) + 32);
      v27(*(v0 + 208), *(v0 + 216), *(v0 + 192));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v21;
      if ((v28 & 1) == 0)
      {
        sub_10000E8E0(0, *(v21 + 2) + 1, 1);
        v21 = v63[0];
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        sub_10000E8E0(v29 > 1, v30 + 1, 1);
        v21 = v63[0];
      }

      v31 = *(v0 + 416);
      v32 = *(v0 + 504);
      v33 = *(v0 + 208);
      v34 = *(v0 + 192);
      *(v21 + 2) = v30 + 1;
      result = v27(&v21[((v32 + 32) & ~v32) + v31 * v30], v33, v34);
      v17 = v22;
    }

    ++v20;
  }

  while (v23 != *(v0 + 344));
  v35 = *(v0 + 104);

  v36 = *(v0 + 472);
  v37 = *(v0 + 432);
  v38 = *(v0 + 408);
  v39 = *(v0 + 184);
  v40 = *(v0 + 144);
  v59 = *(v0 + 440);
  v61 = *(v0 + 136);
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v43 = *(v0 + 104);
  if (*(v21 + 2))
  {

    v56 = v39;
    v44 = sub_10037E49C(v38, v21);

    v45 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v17;
    sub_10037E65C(v44, sub_10039579C, 0, v45, v63);

    v17 = v63[0];

    sub_10036CA64(v43, v42);

    v36(v56, v61);
  }

  else
  {

    sub_10036CA64(v43, v42);

    v36(v39, v61);
  }

  v47 = *(v0 + 320);
  v46 = *(v0 + 328);
  v48 = *(v0 + 296);
  v49 = *(v0 + 272);
  v50 = *(v0 + 256);
  v52 = *(v0 + 224);
  v51 = *(v0 + 232);
  v54 = *(v0 + 208);
  v53 = *(v0 + 216);
  v57 = *(v0 + 184);
  v58 = *(v0 + 176);
  v60 = *(v0 + 168);
  v62 = *(v0 + 160);

  v55 = *(v0 + 8);

  return v55(v17);
}

uint64_t sub_100354C94()
{
  v104 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v103 = v7;
    *v6 = 136446210;
    *(v0 + 96) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v103);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch cached server location failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
    v11 = *(v0 + 392);
  }

  *(v0 + 400) = _swiftEmptyDictionarySingleton;
  *(v0 + 408) = _swiftEmptyDictionarySingleton;
  v12 = *(v0 + 200);
  v13 = *(v0 + 104);
  v14 = *(v12 + 80);
  *(v0 + 504) = v14;
  v15 = *(v12 + 72);
  *(v0 + 416) = v15;
  v96 = (v14 + 32) & ~v14;
  v16 = v13 + v96;
  v100 = (v12 + 16);
  buf = (v12 + 8);
  v17 = (v12 + 32);

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  v92 = v15;
  do
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      return withTimeout<A>(_:block:)(v18, v19, v20, v21, v22, v23);
    }

    v27 = *(v0 + 232);
    v28 = *(v0 + 192);
    v29 = *v100;
    *(v0 + 424) = *v100;
    v29(v27, v16, v28);
    if (_swiftEmptyDictionarySingleton[2] && (v30 = *(v0 + 232), , sub_1001FD93C(v30), LOBYTE(v30) = v31, , (v30 & 1) != 0))
    {
      v18 = (*buf)(*(v0 + 232), *(v0 + 192));
    }

    else
    {
      v32 = *v17;
      (*v17)(*(v0 + 224), *(v0 + 232), *(v0 + 192));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E8E0(0, v25[2] + 1, 1);
        v25 = v103;
      }

      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        sub_10000E8E0(v34 > 1, v35 + 1, 1);
        v25 = v103;
      }

      v36 = *(v0 + 224);
      v37 = *(v0 + 192);
      v25[2] = v35 + 1;
      v38 = v25 + v96 + v35 * v92;
      v15 = v92;
      v18 = v32(v38, v36, v37);
    }

    *(v0 + 432) = v25;
    v16 += v15;
    ++v24;
  }

  while (v26 != *(v0 + 344));
  v39 = *(v0 + 104);

  v40 = *(v0 + 336);
  if (v25[2])
  {
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 144);
    v97 = *(v0 + 136);
    v44 = *(v0 + 120);
    UUID.init()();
    v45 = sub_1002087C4(_swiftEmptyArrayStorage);
    v46 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
    *(v0 + 440) = v45;
    *(v0 + 448) = v46;
    swift_beginAccess();

    v47 = *(v44 + v46);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v45;
    v103 = *(v44 + v46);
    *(v44 + v46) = 0x8000000000000000;
    sub_100454828(v25, 0, v45, v41, v48);
    *(v44 + v46) = v103;
    swift_endAccess();
    v49 = *(v43 + 16);
    *(v0 + 456) = v49;
    *(v0 + 464) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50 = v97;
    v98 = v49;
    v49(v42, v41, v50);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 176);
    v56 = *(v0 + 136);
    v55 = *(v0 + 144);
    if (v53)
    {
      bufa = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103 = v93;
      *bufa = 136446210;
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v52;
      v59 = v58;
      v60 = *(v55 + 8);
      v60(v54, v56);
      v61 = sub_10000D01C(v57, v59, &v103);

      *(bufa + 4) = v61;
      _os_log_impl(&_mh_execute_header, v51, v89, "Start latestLocation Task:%{public}s", bufa, 0xCu);
      sub_100004984(v93);
    }

    else
    {

      v60 = *(v55 + 8);
      v60(v54, v56);
    }

    *(v0 + 472) = v60;
    v80 = *(v0 + 168);
    v82 = *(v0 + 144);
    v81 = *(v0 + 152);
    v83 = *(v0 + 136);
    v95 = *(v0 + 128);
    v84 = *(v0 + 120);
    v98(v80, *(v0 + 184), v83);
    v85 = (*(v82 + 80) + 48) & ~*(v82 + 80);
    v86 = (v81 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    *(v0 + 480) = v87;
    *(v87 + 2) = v84;
    *(v87 + 3) = v25;
    *(v87 + 4) = 0;
    *(v87 + 5) = v101;
    (*(v82 + 32))(&v87[v85], v80, v83);
    *&v87[v86] = v95;
    v88 = async function pointer to withTimeout<A>(_:block:)[1];

    v18 = swift_task_alloc();
    *(v0 + 488) = v18;
    *v18 = v0;
    v18[1] = sub_10035468C;
    v21 = &unk_1004D6A40;
    v19 = 0x40AAD21B3B700000;
    v23 = &type metadata for () + 8;
    v20 = 3;
    v22 = v87;

    return withTimeout<A>(_:block:)(v18, v19, v20, v21, v22, v23);
  }

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v62, v63, "All server cached locations are under %fs. Stop shallowRefresh and return", v64, 0xCu);
  }

  v65 = *(v0 + 112);
  v66 = *(v0 + 120);
  v67 = *(v0 + 104);

  sub_10036CA64(v67, v65);
  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 296);
  v71 = *(v0 + 272);
  v72 = *(v0 + 256);
  v74 = *(v0 + 224);
  v73 = *(v0 + 232);
  v76 = *(v0 + 208);
  v75 = *(v0 + 216);
  v77 = *(v0 + 184);
  v94 = *(v0 + 176);
  v99 = *(v0 + 168);
  v102 = *(v0 + 160);

  v78 = *(v0 + 8);

  return v78(_swiftEmptyDictionarySingleton);
}

uint64_t sub_1003554BC()
{
  v92 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 336);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);

  v4(v7, v6, v8);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v85 = *(v0 + 472);
    v88 = *(v0 + 496);
    v11 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v85(v11, v13);
    v18 = sub_10000D01C(v15, v17, v91);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    *(v0 + 88) = v88;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10000D01C(v19, v20, v91);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "LatestLocation Task:%{public}s failed with error: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 496);
    v23 = *(v0 + 472);
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);

    v23(v24, v25);
  }

  v27 = *(v0 + 120);
  v28 = *(v27 + *(v0 + 448));
  if (!*(v28 + 16))
  {
    goto LABEL_8;
  }

  v29 = *(v0 + 184);
  v30 = *(v27 + *(v0 + 448));

  v31 = sub_1001FD868(v29);
  if ((v32 & 1) == 0)
  {

LABEL_8:
    v36 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  v33 = (*(v28 + 56) + 24 * v31);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];

  swift_bridgeObjectRetain_n();

  sub_10037DFD4(v34);
LABEL_9:
  v37 = *(v0 + 448);
  v38 = *(v0 + 400);
  v39 = *(v0 + 184);
  v40 = *(v0 + 120);
  v41 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91[0] = v38;
  sub_10037E65C(v36, sub_10039579C, 0, isUniquelyReferenced_nonNull_native, v91);

  v43 = v91[0];
  swift_beginAccess();
  v44 = sub_1001D933C(v39);
  swift_endAccess();
  sub_10037DFD4(v44);

  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
  v48 = v43;
  do
  {
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      return result;
    }

    v50 = *(v0 + 200) + 16;
    (*(v0 + 424))(*(v0 + 216), *(v0 + 104) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 416) * v46, *(v0 + 192));
    if (*(v43 + 16) && (v51 = *(v0 + 216), , sub_1001FD93C(v51), LOBYTE(v51) = v52, , (v51 & 1) != 0))
    {
      result = (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    }

    else
    {
      v53 = *(*(v0 + 200) + 32);
      v53(*(v0 + 208), *(v0 + 216), *(v0 + 192));
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v91[0] = v47;
      if ((v54 & 1) == 0)
      {
        sub_10000E8E0(0, *(v47 + 2) + 1, 1);
        v47 = v91[0];
      }

      v56 = *(v47 + 2);
      v55 = *(v47 + 3);
      if (v56 >= v55 >> 1)
      {
        sub_10000E8E0(v55 > 1, v56 + 1, 1);
        v47 = v91[0];
      }

      v57 = *(v0 + 416);
      v58 = *(v0 + 504);
      v59 = *(v0 + 208);
      v60 = *(v0 + 192);
      *(v47 + 2) = v56 + 1;
      result = v53(&v47[((v58 + 32) & ~v58) + v57 * v56], v59, v60);
      v43 = v48;
    }

    ++v46;
  }

  while (v49 != *(v0 + 344));
  v61 = *(v0 + 104);

  v62 = *(v0 + 472);
  v63 = *(v0 + 432);
  v64 = *(v0 + 408);
  v65 = *(v0 + 184);
  v66 = *(v0 + 144);
  v86 = *(v0 + 440);
  v89 = *(v0 + 136);
  v68 = *(v0 + 112);
  v67 = *(v0 + 120);
  v69 = *(v0 + 104);
  if (*(v47 + 2))
  {

    v82 = v65;
    v70 = sub_10037E49C(v64, v47);

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v43;
    sub_10037E65C(v70, sub_10039579C, 0, v71, v91);

    v43 = v91[0];

    sub_10036CA64(v69, v68);

    v62(v82, v89);
  }

  else
  {

    sub_10036CA64(v69, v68);

    v62(v65, v89);
  }

  v73 = *(v0 + 320);
  v72 = *(v0 + 328);
  v74 = *(v0 + 296);
  v75 = *(v0 + 272);
  v76 = *(v0 + 256);
  v78 = *(v0 + 224);
  v77 = *(v0 + 232);
  v80 = *(v0 + 208);
  v79 = *(v0 + 216);
  v83 = *(v0 + 184);
  v84 = *(v0 + 176);
  v87 = *(v0 + 168);
  v90 = *(v0 + 160);

  v81 = *(v0 + 8);

  return v81(v43);
}

uint64_t sub_100355BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = type metadata accessor for UUID();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100355C88, a2, 0);
}

uint64_t sub_100355C88()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_100355D84;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v5, 0xD000000000000020, 0x80000001004E8280, sub_10037EA98, v2, &type metadata for () + 8);
}

uint64_t sub_100355D84()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_100356108;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 16);

    v5 = sub_100355EAC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100355EC8()
{
  v22 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "LatestLocation task:%{public}s resumed", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100356108()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100356174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Handle();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v4[18] = Priority;
  v9 = *(Priority - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v11 = type metadata accessor for ClientID();
  v4[25] = v11;
  v12 = *(v11 - 8);
  v4[26] = v12;
  v13 = *(v12 + 64) + 15;
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_100356350, v3, 0);
}

uint64_t sub_100356350()
{
  v183 = v0;
  v1 = v0;
  v2 = v0[7];
  v158 = *(v2 + 16);
  if (v158)
  {
    v3 = v0[19];
    v4 = v0[12];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v176 = (v3 + 16);
    v178 = *(v4 + 72);
    v170 = (v4 + 8);
    v173 = (v4 + 16);
    v166 = (v3 + 8);
    v6 = *(v2 + 16);
    do
    {
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v16 = v1[24];
      v18 = v1[17];
      v17 = v1[18];
      v19 = v1[11];
      v20 = v1[8];
      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005E0B28);
      (*v176)(v16, v20, v17);
      (*v173)(v18, v5, v19);
      v22 = v1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v22[24];
      v28 = v22[17];
      v27 = v22[18];
      v29 = v22[11];
      if (v25)
      {
        v7 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *v7 = 136446723;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v162 = v29;
        v10 = v9;
        (*v166)(v26, v27);
        v11 = sub_10000D01C(v8, v10, &v182);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2160;
        *(v7 + 14) = 1752392040;
        *(v7 + 22) = 2081;
        v12 = Handle.identifier.getter();
        v14 = v13;
        (*v170)(v28, v162);
        v15 = sub_10000D01C(v12, v14, &v182);

        *(v7 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v23, v24, "stopRefresh priority: %{public}s for %{private,mask.hash}s", v7, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*v170)(v28, v29);
        (*v166)(v26, v27);
      }

      v1 = v179;
      v5 += v178;
      --v6;
    }

    while (v6);
  }

  if (qword_1005A84C8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v31 = v1[26];
  v30 = v1[27];
  v32 = v1[25];
  v33 = v1[9];
  v34 = v1[7];
  v35 = type metadata accessor for Logger();
  v1[28] = sub_10000A6F0(v35, qword_1005E0B28);
  (*(v31 + 16))(v30, v33, v32);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v40 = v1[26];
  v39 = v1[27];
  v41 = v1[25];
  if (v38)
  {
    v42 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    *v42 = 136446722;
    *(v42 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8220, &v181);
    *(v42 + 12) = 2082;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v40 + 8))(v39, v41);
    v46 = sub_10000D01C(v43, v45, &v181);

    *(v42 + 14) = v46;
    *(v42 + 22) = 2080;
    v47 = v158;
    if (v158)
    {
      v167 = v37;
      v171 = v36;
      v48 = v1[12];
      v49 = v1[7];
      v182 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v158, 0);
      v50 = v182;
      v51 = *(v48 + 16);
      v48 += 16;
      v177 = v51;
      v52 = v49 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
      v174 = *(v48 + 56);
      v53 = (v48 - 8);
      do
      {
        v54 = v47;
        v55 = v179[16];
        v56 = v179[11];
        v177(v55, v52, v56);
        v57 = Handle.identifier.getter();
        v59 = v58;
        (*v53)(v55, v56);
        v182 = v50;
        v61 = v50[2];
        v60 = v50[3];
        if (v61 >= v60 >> 1)
        {
          sub_10002B3C0((v60 > 1), v61 + 1, 1);
          v50 = v182;
        }

        v50[2] = v61 + 1;
        v62 = &v50[2 * v61];
        v62[4] = v57;
        v62[5] = v59;
        v52 += v174;
        v47 = v54 - 1;
      }

      while (v54 != 1);
      v1 = v179;
      v36 = v171;
      v37 = v167;
    }

    v63 = Array.description.getter();
    v65 = v64;

    v66 = sub_10000D01C(v63, v65, &v181);

    *(v42 + 24) = v66;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s for client %{public}s %s", v42, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v40 + 8))(v39, v41);
  }

  v67 = v1[10];
  v68 = sub_100362404(v1[9], v1[7], v1[8]);
  v1[29] = v68;
  v164 = v68[2];
  if (v164)
  {
    v69 = 0;
    v70 = v1[19];
    v158 = (v70 + 16);
    v160 = v1[12];
    v157 = (v160 + 8);
    v168 = (v70 + 8);
    v163 = v68;
    do
    {
      if (v69 >= v68[2])
      {
        __break(1u);
        goto LABEL_46;
      }

      v73 = v1[22];
      v74 = v1[18];
      v76 = v1[14];
      v75 = v1[15];
      v77 = v1[11];
      v78 = v1[8];
      v156 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v175 = *(v160 + 72);
      v79 = *(v160 + 16);
      v79(v75, v68 + v156 + v175 * v69, v77);
      (*v158)(v73, v78, v74);
      v172 = v79;
      v79(v76, v75, v77);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      v82 = os_log_type_enabled(v80, v81);
      v83 = v1[22];
      v84 = v1[18];
      v85 = v1[14];
      v86 = v1[11];
      if (v82)
      {
        v87 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *v87 = 136315651;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
        v154 = v86;
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        v72 = *v168;
        (*v168)(v83, v84);
        v91 = sub_10000D01C(v88, v90, &v182);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2160;
        *(v87 + 14) = 1752392040;
        *(v87 + 22) = 2081;
        v92 = Handle.identifier.getter();
        v94 = v93;
        v95 = *v157;
        (*v157)(v85, v154);
        v96 = sub_10000D01C(v92, v94, &v182);

        *(v87 + 24) = v96;
        _os_log_impl(&_mh_execute_header, v80, v81, "Unsubscribe %s for handle: %{private,mask.hash}s", v87, 0x20u);
        swift_arrayDestroy();

        v1 = v179;

        v71 = v95;
      }

      else
      {

        v71 = *v157;
        (*v157)(v85, v86);
        v72 = *v168;
        (*v168)(v83, v84);
      }

      ++v69;
      v1[31] = v72;
      v71(v1[15], v1[11]);
      v68 = v163;
    }

    while (v164 != v69);
    v97 = v1[23];
    v98 = v1[18];
    v99 = v1[8];
    v100 = *(v1[19] + 104);
    (v100)(v97, enum case for LocatePriority.live(_:), v98);
    sub_10001AEBC(&qword_1005A9318, 255, &type metadata accessor for LocatePriority);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v1[30] = v168 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v97, v98);
    if (v1[5] == v1[6])
    {
      v101 = v1[23];
      v102 = v1[18];
      v103 = v100;
      v105 = v1[9];
      v104 = v1[10];
      v106 = v1[7];
      v159 = enum case for LocatePriority.shallow(_:);
      v161 = v103;
      v103(v101);
      v107 = sub_100362404(v105, v106, v101);
      v1[32] = v107;
      v72(v101, v102);
      v108 = v107[2];
      if (v108)
      {
        v155 = v107;
        v109 = v107 + v156;
        do
        {
          v172(v1[13], v109, v1[11]);
          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.default.getter();
          v112 = os_log_type_enabled(v110, v111);
          v113 = v1[13];
          v114 = v1[11];
          if (v112)
          {
            v115 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            v182 = v169;
            *v115 = 141558275;
            *(v115 + 4) = 1752392040;
            *(v115 + 12) = 2081;
            v165 = Handle.identifier.getter();
            v117 = v116;
            v71(v113, v114);
            v118 = sub_10000D01C(v165, v117, &v182);

            *(v115 + 14) = v118;
            _os_log_impl(&_mh_execute_header, v110, v111, "Unsubscribe Shallow along with live\nfor handle:%{private,mask.hash}s", v115, 0x16u);
            sub_100004984(v169);

            v1 = v179;
          }

          else
          {

            v71(v113, v114);
          }

          v109 += v175;
          v108 = (v108 - 1);
        }

        while (v108);
        v161(v1[21], v159, v1[18]);
        v135 = swift_task_alloc();
        v1[33] = v135;
        *v135 = v1;
        v135[1] = sub_100357318;
        v136 = v1[21];
        v137 = v1[10];
        v138 = v155;
        goto LABEL_42;
      }
    }

    v1[35] = 0;
    v152 = swift_task_alloc();
    v1[36] = v152;
    *v152 = v1;
    v152[1] = sub_1003574C4;
    v153 = v1[10];
    v136 = v1[8];
    v138 = v1[29];
LABEL_42:

    return sub_100363EB0(v138, v136);
  }

  v120 = v1[19];
  v119 = v1[20];
  v121 = v1[18];
  v122 = v1[8];

  (*(v120 + 16))(v119, v122, v121);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  v125 = os_log_type_enabled(v123, v124);
  v127 = v1[19];
  v126 = v1[20];
  v128 = v1[18];
  if (v125)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v182 = v130;
    *v129 = 136446210;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v131 = dispatch thunk of CustomStringConvertible.description.getter();
    v133 = v132;
    (*(v127 + 8))(v126, v128);
    v134 = sub_10000D01C(v131, v133, &v182);

    *(v129 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v123, v124, "stopRefreshing: no handles to unsubscribe %{public}s", v129, 0xCu);
    sub_100004984(v130);
  }

  else
  {

    (*(v127 + 8))(v126, v128);
  }

  v139 = v1[27];
  v141 = v1[23];
  v140 = v1[24];
  v143 = v1[21];
  v142 = v1[22];
  v144 = v1[20];
  v146 = v1[16];
  v145 = v1[17];
  v147 = v1[15];
  v180 = v1[14];
  v148 = v1;
  v149 = v1[13];

  v150 = v148[1];

  return v150();
}

uint64_t sub_100357318()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  *(v3 + 272) = v0;

  if (v0)
  {
    v4 = *(v3 + 240);
    v5 = *(v3 + 80);
    (*(v3 + 248))(*(v3 + 168), *(v3 + 144));

    return _swift_task_switch(sub_100357908, v5, 0);
  }

  else
  {
    v6 = *(v3 + 256);
    v7 = *(v3 + 240);
    (*(v3 + 248))(*(v3 + 168), *(v3 + 144));

    *(v3 + 280) = 0;
    v8 = swift_task_alloc();
    *(v3 + 288) = v8;
    *v8 = v3;
    v8[1] = sub_1003574C4;
    v9 = *(v3 + 80);
    v10 = *(v3 + 64);
    v11 = *(v3 + 232);

    return sub_100363EB0(v11, v10);
  }
}

uint64_t sub_1003574C4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 80);

  if (v0)
  {
    v7 = sub_100357B4C;
  }

  else
  {
    v7 = sub_10035760C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10035760C()
{
  v41 = v0;
  v1 = v0[28];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    swift_beginAccess();
    v10 = *(v6 + v9);
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority);

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = sub_10000D01C(v11, v13, &v40);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "After StopRefreshing current subscriptions: %{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  if (v0[35])
  {
    v15 = v0[35];
    swift_willThrow();
    v16 = v0[27];
    v18 = v0[23];
    v17 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v37 = v0[14];
    v38 = v0[13];

    v25 = v0[1];
  }

  else
  {
    v26 = v0[27];
    v27 = v0[23];
    v28 = v0[24];
    v30 = v0[21];
    v29 = v0[22];
    v31 = v0[20];
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v39 = v0[13];

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_100357908()
{
  v25 = v0;
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[28];
  swift_errorRetain();
  swift_errorRetain();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[34];
  v8 = v0[32];
  if (v6)
  {
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 138543618;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_10000D01C(v14, v16, &v24);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unsubscribing from .shallow failed with error: %{public}@, for handles: %s", v10, 0x16u);
    sub_100002CE0(v11, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v12);
  }

  else
  {
    v18 = v0[34];
  }

  v0[35] = v1;
  v19 = swift_task_alloc();
  v0[36] = v19;
  *v19 = v0;
  v19[1] = sub_1003574C4;
  v20 = v0[29];
  v21 = v0[10];
  v22 = v0[8];

  return sub_100363EB0(v20, v22);
}

uint64_t sub_100357B4C()
{
  v1 = v0[35];

  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v14 = v0[13];
  v15 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100357C48(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for Friend();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100357DBC, v1, 0);
}

uint64_t sub_100357DBC()
{
  v31 = v0;
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  v1[16] = v3;
  if (v3)
  {
    v4 = v1[12];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = (v4 + 16);
    v29 = (v4 + 8);
    v27 = v6;
    do
    {
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v16 = v1[15];
      v17 = v1[11];
      v18 = type metadata accessor for Logger();
      sub_10000A6F0(v18, qword_1005E0B28);
      (*v7)(v16, v5, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v1[15];
      v23 = v1[11];
      if (v21)
      {
        v28 = v20;
        v8 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v8 = 136446723;
        *(v8 + 4) = sub_10000D01C(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v30);
        *(v8 + 12) = 2160;
        *(v8 + 14) = 1752392040;
        *(v8 + 22) = 2081;
        sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v1;
        v13 = v12;
        (*v29)(v22, v23);
        v14 = v10;
        v7 = v9;
        v15 = sub_10000D01C(v14, v13, &v30);
        v1 = v11;
        v6 = v27;

        *(v8 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v19, v28, "One-shot %{public}s pulled from daemon cache on disk\nfor handle: %{private,mask.hash}s", v8, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*v29)(v22, v23);
      }

      v5 += v6;
      --v3;
    }

    while (v3);
  }

  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  v1[17] = v25;
  *v25 = v1;
  v25[1] = sub_1003580FC;

  return daemon.getter();
}

uint64_t sub_1003580FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  *(v3 + 144) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003582E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003582E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_100358FC0;
  }

  else
  {
    v7 = v3[18];
    v8 = v3[4];

    v6 = sub_100358408;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100358408()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[3];
    sub_10002B3C0(0, v1, 0);
    v4 = 0;
    v5 = *(v2 + 16);
    v2 += 16;
    v6 = v3 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
    v19 = *(v2 + 56);
    v20 = v5;
    v7 = (v2 - 8);
    do
    {
      v8 = v0[14];
      v9 = v0[11];
      v20(v8, v6, v9);
      v10 = Handle.identifier.getter();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10002B3C0((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[16];
      ++v4;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v14];
      v16[4] = v10;
      v16[5] = v12;
      v6 += v19;
    }

    while (v4 != v15);
  }

  v17 = v0[20];
  v0[22] = sub_10023F00C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10035859C, v17, 0);
}

uint64_t sub_10035859C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[23] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_100358700;
  v7 = v0[20];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100358700(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100358834, v4, 0);
}

uint64_t sub_100358834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9 = v8[25];
  v69 = *(v9 + 16);
  if (v69)
  {
    v10 = 0;
    v11 = v8[22];
    v12 = v8[7];
    v65 = (v8[12] + 8);
    v13 = v11 + 56;
    v62 = (v12 + 32);
    v63 = _swiftEmptyArrayStorage;
    v67 = v8[25];
    while (v10 < *(v9 + 16))
    {
      v16 = v8[13];
      v17 = v8[11];
      v73 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v71 = *(v12 + 72);
      (*(v12 + 16))(v8[10], v8[25] + v73 + v71 * v10, v8[6]);
      Friend.handle.getter();
      v18 = Handle.identifier.getter();
      v20 = v19;
      (*v65)(v16, v17);
      if (*(v11 + 16) && (v21 = *(v11 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v22 = Hasher._finalize()(), v23 = -1 << *(v11 + 32), v24 = v22 & ~v23, ((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v11 + 48) + 16 * v24);
          v27 = *v26 == v18 && v26[1] == v20;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v28 = v8[10];
        v29 = v8[8];
        v30 = v8[6];

        v31 = *v62;
        (*v62)(v29, v28, v30);
        v32 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v63[2] + 1, 1);
          v32 = v63;
        }

        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          sub_100239354(v33 > 1, v34 + 1, 1);
          v32 = v63;
        }

        v35 = v8[8];
        v36 = v8[6];
        v32[2] = v34 + 1;
        v63 = v32;
        a1 = v31(v32 + v73 + v34 * v71, v35, v36);
      }

      else
      {
LABEL_3:
        v14 = v8[10];
        v15 = v8[6];

        a1 = (*(v12 + 8))(v14, v15);
      }

      ++v10;
      v9 = v67;
      if (v10 == v69)
      {
        v37 = v8[25];
        v38 = v63;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_23:
    v8[26] = v38;
    v39 = v8[22];

    v40 = v38[2];
    v64 = v38;
    if (v40)
    {
      v41 = v8[7];
      v72 = *(v41 + 16);
      v42 = v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v68 = (v8[12] + 8);
      v70 = *(v41 + 72);
      v66 = (v41 + 8);
      v43 = _swiftEmptyArrayStorage;
      do
      {
        v45 = v8[14];
        v46 = v8[11];
        v47 = v8[9];
        v48 = v8[6];
        v72(v47, v42, v48);
        Friend.handle.getter();
        v49 = Handle.serverID.getter();
        v51 = v50;
        (*v68)(v45, v46);
        (*v66)(v47, v48);
        if (v51)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1001FC900(0, *(v43 + 2) + 1, 1, v43);
          }

          v53 = *(v43 + 2);
          v52 = *(v43 + 3);
          if (v53 >= v52 >> 1)
          {
            v43 = sub_1001FC900((v52 > 1), v53 + 1, 1, v43);
          }

          *(v43 + 2) = v53 + 1;
          v44 = &v43[16 * v53];
          *(v44 + 4) = v49;
          *(v44 + 5) = v51;
        }

        v42 += v70;
        --v40;
      }

      while (v40);
    }

    else
    {
      v43 = _swiftEmptyArrayStorage;
    }

    v8[27] = v43;
    v55 = v8[4];
    v54 = v8[5];
    v56 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
    v57 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
    v58 = swift_task_alloc();
    v8[28] = v58;
    v58[2] = v43;
    v58[3] = v55;
    v58[4] = v64;
    v58[5] = v54;
    v59 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v60 = swift_task_alloc();
    v8[29] = v60;
    *v60 = v8;
    v60[1] = sub_100358D90;
    a6 = &unk_1004D69E8;
    a1 = (v8 + 2);
    a2 = v56;
    a3 = v56;
    a4 = v55;
    a5 = v57;
    a7 = v58;
    a8 = v56;
  }

  return withTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100358D90()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 32);
  v7 = *v0;

  return _swift_task_switch(sub_100358EFC, v5, 0);
}

uint64_t sub_100358EFC()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  v8 = v0[2];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100358FC0()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  v8 = v0[1];
  v9 = v0[21];

  return v8();
}

uint64_t sub_100359074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v8 = type metadata accessor for Location();
  v6[17] = v8;
  v9 = *(v8 - 8);
  v6[18] = v9;
  v10 = *(v9 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  v6[21] = v11;
  v12 = *(v11 - 8);
  v6[22] = v12;
  v13 = *(v12 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005B2480, &qword_1004D69F0) - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v16 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v6[28] = v16;
  v17 = *(v16 - 8);
  v6[29] = v17;
  v18 = *(v17 + 64) + 15;
  v6[30] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003592DC, a4, 0);
}

uint64_t sub_1003592DC()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v35 = **(v0 + 96);
    v3 = type metadata accessor for TaskPriority();
    v4 = *(v3 - 8);
    v34 = *(v4 + 56);
    v33 = (v4 + 48);
    v32 = (v4 + 8);
    v5 = (v1 + 40);
    v6 = &qword_1005A9690;
    do
    {
      v37 = v5;
      v38 = v2;
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);
      v10 = *(v0 + 112);
      v11 = v6;
      v13 = *(v5 - 1);
      v12 = *v5;
      v39 = *(v0 + 120);
      v34(v8, 1, 1, v3);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v36 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v13;
      *(v14 + 48) = v12;
      v6 = v11;
      *(v14 + 56) = v39;
      sub_100005F04(v8, v9, v11, &qword_1004C2A00);
      LODWORD(v9) = (*v33)(v9, 1, v3);

      v15 = *(v0 + 248);
      if (v9 == 1)
      {
        sub_100002CE0(*(v0 + 248), v11, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v32)(v15, v3);
      }

      if (*v36)
      {
        v16 = *(v14 + 24);
        v17 = *v36;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of Actor.unownedExecutor.getter();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1004D6A08;
      *(v21 + 24) = v14;

      sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v7 = *(v0 + 256);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v35;
      swift_task_create();

      sub_100002CE0(v7, v11, &qword_1004C2A00);
      v5 = v37 + 2;
      v2 = v38 - 1;
    }

    while (v38 != 1);
  }

  v23 = *(v0 + 240);
  v24 = **(v0 + 96);
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v25 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  *(v0 + 264) = v25;
  *(v0 + 272) = _swiftEmptyDictionarySingleton;
  v26 = *(v0 + 112);
  v27 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  *(v0 + 280) = v28;
  *v28 = v0;
  v28[1] = sub_1003596C4;
  v29 = *(v0 + 240);
  v30 = *(v0 + 224);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, v26, v25, v30);
}

uint64_t sub_1003596C4()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1003597D4, v2, 0);
}

uint64_t sub_1003597D4()
{
  v103 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v2;
    v92 = v1 + 64;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v91 = (63 - v5) >> 6;
    v7 = *(v0 + 272);
    v93 = v1;

    for (i = 0; ; i = v99)
    {
      v101 = v7;
      v100 = isUniquelyReferenced_nonNull_native;
      if (!v6)
      {
        if (v91 <= i + 1)
        {
          v10 = i + 1;
        }

        else
        {
          v10 = v91;
        }

        while (1)
        {
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v9 >= v91)
          {
            v99 = v10 - 1;
            v59 = *(v0 + 208);
            v60 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
            v6 = 0;
            goto LABEL_16;
          }

          v6 = *(v92 + 8 * v9);
          ++i;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v9 = i;
LABEL_15:
      v11 = *(v0 + 208);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      v95 = *(v0 + 136);
      v98 = *(v0 + 192);
      v16 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v17 = v16 | (v9 << 6);
      v18 = *(v93 + 48) + *(v13 + 72) * v17;
      (*(v13 + 16))();
      (*(v15 + 16))(v14, *(v93 + 56) + *(v15 + 72) * v17, v95);
      v19 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v20 = *(v19 + 48);
      (*(v13 + 32))(v11, v98, v12);
      (*(v15 + 32))(v11 + v20, v14, v95);
      (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
      v99 = v9;
LABEL_16:
      v21 = *(v0 + 200);
      sub_1000176A8(*(v0 + 208), v21, &qword_1005B2438, &qword_1004D68B0);
      v22 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
      v24 = *(v0 + 216);
      if (v23 == 1)
      {
        v25 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      }

      else
      {
        v26 = *(v0 + 200);
        v28 = *(v0 + 168);
        v27 = *(v0 + 176);
        v29 = *(v0 + 144);
        v96 = *(v0 + 136);
        v30 = *(v22 + 48);
        v31 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v32 = *(v31 + 48);
        (*(v27 + 16))(v24, v26, v28);
        (*(v29 + 16))(v24 + v32, v26 + v30, v96);
        sub_100002CE0(v26, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v31 - 8) + 56))(v24, 0, 1, v31);
      }

      v33 = *(v0 + 216);
      v34 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);
      v38 = *(v0 + 136);
      v39 = *(v34 + 48);
      v94 = *(*(v0 + 176) + 32);
      v94(v35, v33, *(v0 + 168));
      v97 = *(v37 + 32);
      v97(v36, v33 + v39, v38);
      v41 = sub_1001FD93C(v35);
      v42 = v101[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_43;
      }

      v45 = v40;
      if (v101[3] >= v44)
      {
        if ((v100 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v46 = *(v0 + 184);
        sub_10022D91C(v44, v100 & 1);
        v47 = *(v0 + 80);
        v48 = sub_1001FD93C(v46);
        if ((v45 & 1) != (v49 & 1))
        {
          v89 = *(v0 + 168);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v41 = v48;
      }

      v7 = *(v0 + 80);
      v51 = *(v0 + 176);
      v50 = *(v0 + 184);
      v52 = *(v0 + 168);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      v55 = *(v0 + 136);
      if (v45)
      {
        (*(v51 + 8))(*(v0 + 184), *(v0 + 168));
        (*(v54 + 40))(v7[7] + *(v54 + 72) * v41, v53, v55);
      }

      else
      {
        v7[(v41 >> 6) + 8] |= 1 << v41;
        v94(v7[6] + *(v51 + 72) * v41, v50, v52);
        v97(v7[7] + *(v54 + 72) * v41, v53, v55);
        v56 = v7[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_44;
        }

        v7[2] = v58;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

    *(v0 + 272) = v101;
    v61 = *(v0 + 264);
    v62 = *(v0 + 112);
    v63 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v64 = swift_task_alloc();
    *(v0 + 280) = v64;
    *v64 = v0;
    v64[1] = sub_1003596C4;
    v65 = *(v0 + 240);
    v66 = *(v0 + 224);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, v62, v61, v66);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    if (qword_1005A84C8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000A6F0(v67, qword_1005E0B28);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v0 + 272);
      v71 = *(v0 + 168);
      v72 = *(v0 + 136);
      v73 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v73 = 136446466;
      *(v73 + 4) = sub_10000D01C(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v102);
      *(v73 + 12) = 2080;
      sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle);

      v74 = Dictionary.description.getter();
      v76 = v75;

      v77 = sub_10000D01C(v74, v76, &v102);

      *(v73 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "One-shot %{public}s result: %s", v73, 0x16u);
      swift_arrayDestroy();
    }

    v79 = *(v0 + 248);
    v78 = *(v0 + 256);
    v80 = *(v0 + 240);
    v82 = *(v0 + 208);
    v81 = *(v0 + 216);
    v84 = *(v0 + 192);
    v83 = *(v0 + 200);
    v85 = *(v0 + 184);
    v87 = *(v0 + 152);
    v86 = *(v0 + 160);
    **(v0 + 88) = *(v0 + 272);

    v88 = *(v0 + 8);

    return v88();
  }
}

uint64_t sub_10035A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  v8 = type metadata accessor for SecureLocation();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_10035A238;

  return sub_10001CC28();
}

uint64_t sub_10035A238(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10035A350, v3, 0);
}

uint64_t sub_10035A350()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_10035A49C;
  v9 = v0[10];
  v10 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v4, v5, 0xD000000000000024, 0x80000001004E81A0, sub_10037DDE0, v6, v10);
}

uint64_t sub_10035A49C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_10035A5C4;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 32);

    v5 = sub_10035A85C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10035A5C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_10035A634, 0, 0);
}

uint64_t sub_10035A634()
{
  v19 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 48);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000D01C(v8, v7, &v18);
    *(v9 + 12) = 2082;
    *(v0 + 16) = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v18);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve cached location for %s. %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 120);
  v14 = sub_1002087C4(_swiftEmptyArrayStorage);

  v15 = *(v0 + 80);
  **(v0 + 24) = v14;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10035A85C()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_10035A8C4, 0, 0);
}

uint64_t sub_10035A8C4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  *(v0 + 152) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  sub_10037EC58(v1, v7 + v6, type metadata accessor for SecureLocation);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_10035A9D8;
  v9 = *(v0 + 32);

  return sub_100370914(v7, v3);
}

uint64_t sub_10035A9D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = (*(v2 + 152) + 32) & ~*(v2 + 152);
  v7 = *v1;
  *(v2 + 144) = a1;

  swift_setDeallocating();
  sub_10037EBF8(v4 + v5, type metadata accessor for SecureLocation);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10035AB30, 0, 0);
}

uint64_t sub_10035AB30()
{
  v16 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    type metadata accessor for Handle();
    type metadata accessor for Location();
    sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle);
    v9 = Dictionary.description.getter();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received cached location: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v6 = *(v0 + 80);
  }

  sub_10037EBF8(v6, type metadata accessor for SecureLocation);
  v12 = *(v0 + 80);
  **(v0 + 24) = *(v0 + 144);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10035AD64(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[28] = Priority;
  v5 = *(Priority - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v3[37] = v8;
  v9 = *(v8 - 8);
  v3[38] = v9;
  v10 = *(v9 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_10035AF1C, v2, 0);
}

uint64_t sub_10035AF1C()
{
  v168 = v0;
  v1 = *(v0 + 200);
  if (!*(v1 + 16))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000A6F0(v46, qword_1005E0B28);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "replaceOrKeepExistingLiveSubscription with no handle", v49, 2u);
    }

    v166 = sub_1002087C4(_swiftEmptyArrayStorage);
    v51 = *(v0 + 328);
    v50 = *(v0 + 336);
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v57 = *(v0 + 264);
    v56 = *(v0 + 272);
    v58 = *(v0 + 248);
    v59 = *(v0 + 256);
    v164 = *(v0 + 240);

    v60 = *(v0 + 8);

    return v60(v166);
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = *(v4 + 16);
  v4 += 16;
  v10 = *(v4 + 64);
  *(v0 + 528) = v10;
  *(v0 + 344) = v9;
  *(v0 + 352) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v159 = (v10 + 32) & ~v10;
  v160 = v9;
  v9(v2, v1 + v159, v3);
  v11 = enum case for LocatePriority.live(_:);
  *(v0 + 532) = enum case for LocatePriority.live(_:);
  v12 = *(v7 + 104);
  *(v0 + 360) = v12;
  *(v0 + 368) = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v157 = v11;
  v155 = v12;
  v12(v5);
  v13 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v14 = *(v8 + v13);
  if (!*(v14 + 16))
  {
    goto LABEL_18;
  }

  v15 = *(v0 + 280);

  v16 = sub_1001FDF60(v15);
  if ((v17 & 1) == 0)
  {

LABEL_18:
    v63 = *(v0 + 296);
    v62 = *(v0 + 304);
    v64 = *(v0 + 288);
    v26 = *(*(v0 + 232) + 8);
    v26(*(v0 + 280), *(v0 + 224));
    (*(v62 + 56))(v64, 1, 1, v63);
    goto LABEL_19;
  }

  v18 = *(v0 + 304);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v23 = (*(v14 + 56) + 24 * v16);
  v24 = *v23;
  v25 = v23[1];
  v147 = v23[2];
  v151 = *(v0 + 296);
  v26 = *(v22 + 8);
  *(v0 + 376) = v26;
  *(v0 + 384) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v26(v19, v21);

  sub_1000CFAA4(v27);
  sub_1003AE66C(v24, v20);

  if ((*(v18 + 48))(v20, 1, v151) == 1)
  {
LABEL_19:
    *(v0 + 480) = v26;
    sub_100002CE0(*(v0 + 288), &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v152 = v26;
    v65 = type metadata accessor for Logger();
    sub_10000A6F0(v65, qword_1005E0B28);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = *(v0 + 336);
      v69 = *(v0 + 296);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v167[0] = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      swift_beginAccess();
      sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = sub_10000D01C(v72, v73, v167);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v66, v67, "No current live subscription, new subscription for %{private,mask.hash}s", v70, 0x16u);
      sub_100004984(v71);
    }

    v75 = *(v0 + 336);
    v77 = *(v0 + 296);
    v76 = *(v0 + 304);
    v78 = *(v0 + 256);
    v146 = *(v0 + 232);
    v148 = *(v0 + 240);
    v79 = *(v0 + 224);
    v139 = *(v0 + 208);
    v140 = *(v0 + 216);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v145 = *(v76 + 72);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    v160(v80 + v159, v75, v77);
    v155(v78, v157, v79);
    sub_100362F78(v139, v80, v78);

    *(v0 + 488) = (v146 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v152(v78, v79);
    v81 = swift_allocObject();
    *(v0 + 496) = v81;
    *(v81 + 16) = xmmword_1004C1900;
    v160(v81 + v159, v75, v77);
    v155(v148, v157, v79);
    v82 = swift_task_alloc();
    *(v0 + 504) = v82;
    *v82 = v0;
    v82[1] = sub_10035C564;
    v83 = *(v0 + 240);
    v84 = *(v0 + 216);
    v85 = v81;
    goto LABEL_24;
  }

  v28 = *(v0 + 328);
  v29 = *(v0 + 200);
  (*(*(v0 + 304) + 32))(v28, *(v0 + 288), *(v0 + 296));
  if (sub_1002603C4(v28, v29))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 320);
    v31 = *(v0 + 328);
    v32 = *(v0 + 296);
    v33 = type metadata accessor for Logger();
    sub_10000A6F0(v33, qword_1005E0B28);
    v160(v30, v31, v32);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 320);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v167[0] = v163;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v37, v39);
      v45 = sub_10000D01C(v41, v43, v167);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "Keep subscribing live for handle %{private,mask.hash}s", v40, 0x16u);
      sub_100004984(v163);
    }

    else
    {

      v44 = *(v38 + 8);
      v44(v37, v39);
    }

    v107 = *(v0 + 304);
    (*(v107 + 24))(*(v0 + 336), *(v0 + 328), *(v0 + 296));
    v150 = *(v107 + 72);
    *(v0 + 440) = v44;
    v161 = *(v0 + 384);
    v156 = *(v0 + 368);
    v158 = *(v0 + 376);
    v165 = *(v0 + 532);
    v154 = *(v0 + 360);
    v109 = *(v0 + 336);
    v108 = *(v0 + 344);
    v110 = *(v0 + 296);
    v111 = *(v0 + 256);
    v162 = *(v0 + 248);
    v112 = (*(v0 + 528) + 32) & ~*(v0 + 528);
    v144 = *(v0 + 216);
    v141 = *(v0 + 208);
    log = *(v0 + 224);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    v108(v113 + v112, v109, v110);
    v154(v111, v165, log);
    sub_100362F78(v141, v113, v111);

    v158(v111, log);
    v114 = swift_allocObject();
    *(v0 + 448) = v114;
    *(v114 + 16) = xmmword_1004C1900;
    v108(v114 + v112, v109, v110);
    v154(v162, v165, log);
    v115 = swift_task_alloc();
    *(v0 + 456) = v115;
    *v115 = v0;
    v115[1] = sub_10035C280;
    v83 = *(v0 + 248);
    v116 = *(v0 + 216);
    v85 = v114;
LABEL_24:

    return sub_100367504(v85, v83, 1);
  }

  v153 = v26;
  v86 = v0 + 16;
  v87 = (v0 + 48);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v88 = *(v0 + 328);
  v89 = *(v0 + 312);
  v90 = *(v0 + 296);
  v91 = type metadata accessor for Logger();
  sub_10000A6F0(v91, qword_1005E0B28);
  v160(v89, v88, v90);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v143 = *(v0 + 336);
    v149 = v93;
    v94 = *(v0 + 304);
    v95 = *(v0 + 312);
    v96 = *(v0 + 296);
    v97 = swift_slowAlloc();
    v167[0] = swift_slowAlloc();
    *v97 = 141558787;
    *(v97 + 4) = 1752392040;
    *(v97 + 12) = 2081;
    sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle);
    v98 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v99;
    v101 = *(v94 + 8);
    v101(v95, v96);
    v102 = v98;
    v87 = (v0 + 48);
    v103 = sub_10000D01C(v102, v100, v167);
    v86 = v0 + 16;

    *(v97 + 14) = v103;
    *(v97 + 22) = 2160;
    *(v97 + 24) = 1752392040;
    *(v97 + 32) = 2081;
    swift_beginAccess();
    v104 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = sub_10000D01C(v104, v105, v167);

    *(v97 + 34) = v106;
    _os_log_impl(&_mh_execute_header, v92, v149, "Replacing current live subscription for %{private,mask.hash}s with %{private,mask.hash}s", v97, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v117 = *(v0 + 304);
    v118 = *(v0 + 312);
    v119 = *(v0 + 296);

    v101 = *(v117 + 8);
    v101(v118, v119);
  }

  *(v0 + 392) = v101;
  v120 = *(v0 + 216);
  v155(*(v0 + 272), v157, *(v0 + 224));
  v121 = sub_10034542C();
  v122 = sub_1000CDF10(v87);
  if (*v123)
  {
    v124 = *(v0 + 272);
    v125 = *(v0 + 224);
    sub_1001D9250(*(v0 + 328));

    (v122)(v87, 0);
    v126 = v124;
    v127 = v125;
  }

  else
  {
    v128 = *(v0 + 272);
    v129 = *(v0 + 224);
    (v122)(v87, 0);
    v126 = v128;
    v127 = v129;
  }

  v153(v126, v127);
  (v121)(v86, 0);
  v130 = *(v0 + 328);
  v132 = *(v0 + 296);
  v131 = *(v0 + 304);
  v133 = *(v0 + 264);
  v134 = *(v0 + 224);
  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  *(v0 + 400) = *(v131 + 72);
  v135 = swift_allocObject();
  *(v0 + 408) = v135;
  *(v135 + 16) = xmmword_1004C1900;
  v160(v135 + v159, v130, v132);
  v155(v133, v157, v134);
  v136 = swift_task_alloc();
  *(v0 + 416) = v136;
  *v136 = v0;
  v136[1] = sub_10035BE3C;
  v137 = *(v0 + 264);
  v138 = *(v0 + 216);

  return sub_100363EB0(v135, v137);
}