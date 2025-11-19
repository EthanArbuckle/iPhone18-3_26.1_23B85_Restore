uint64_t sub_1002AB4F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for FriendshipServiceClient();
  *(v1 + 24) = swift_allocObject();

  return _swift_task_switch(sub_1000033F8, 0, 0);
}

Swift::Int sub_1002AB568()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for FriendshipServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AB5C4()
{
  v1 = *v0;
  type metadata accessor for FriendshipServiceClient();
  sub_1002BCCE0(&qword_1005B0EC0, v2, type metadata accessor for FriendshipServiceClient);
  return XPCAcceptedClient.hash(into:)();
}

Swift::Int sub_1002AB63C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for FriendshipServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AB694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for FriendshipServiceClient();
  v6 = sub_1002BCCE0(&qword_1005B0EC0, v5, type metadata accessor for FriendshipServiceClient);

  return static XPCAcceptedClient.== infix(_:_:)(v2, v3, v4, v6);
}

uint64_t sub_1002AB71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AB740, 0, 0);
}

uint64_t sub_1002AB740()
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

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1002AB858;

  return withTimeout<A>(_:block:)(v7, 0x8AC7230489E80000, 0, &unk_1004D2DF0, v4, &type metadata for () + 8);
}

uint64_t sub_1002AB858()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1002AB974;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000161B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AB974()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFFE8);
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
    *(v10 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E69A0, &v16);
    *(v10 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
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

uint64_t sub_1002ABB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_1002ABBB0, 0, 0);
}

uint64_t sub_1002ABBB0()
{
  v1 = v0[10];
  v2 = *(v0[9] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1002ABC84;
  v5 = v0[10];

  return (v7)(v0 + 8, sub_1002BB8A4, v5);
}

uint64_t sub_1002ABC84()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1002ABF04;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1002ABDA0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002ABDA0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = NINearbyObject.dataRepresentation.getter();
  if (!v1)
  {
    v7 = v0[10];
    v8 = v4;
    v9 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BB8C0;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_1005981A0;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    [v3 didDiscoverWithNearbyObject:isa completion:v11];
    _Block_release(v11);

    sub_1000049D0(v8, v9);
  }

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1002ABF04()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002ABF68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = a3;

  v15 = a3;
  sub_1001D7F30(0, 0, v12, a5, v14);
}

uint64_t sub_1002AC088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AC0AC, 0, 0);
}

uint64_t sub_1002AC0AC()
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

  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1002AC1C4;

  return withTimeout<A>(_:block:)(v7, 0x8AC7230489E80000, 0, &unk_1004D2DC8, v4, &type metadata for () + 8);
}

uint64_t sub_1002AC1C4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1002AC2E0;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000161B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AC2E0()
{
  v17 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v0[2] = v1;
  OnceCheckedContinuation.resume(throwing:)();
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFFE8);
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
    *(v10 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6980, &v16);
    *(v10 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
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

uint64_t sub_1002AC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  return _swift_task_switch(sub_1002AC51C, 0, 0);
}

uint64_t sub_1002AC51C()
{
  v1 = v0[10];
  v2 = *(v0[9] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1002AC5F0;
  v5 = v0[10];

  return (v7)(v0 + 8, sub_1002BCFF0, v5);
}

uint64_t sub_1002AC5F0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1002BD000;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1002AC70C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AC70C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v4 = NINearbyObject.dataRepresentation.getter();
  if (!v1)
  {
    v7 = v0[10];
    v8 = v4;
    v9 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[6] = sub_1002BCFF4;
    v0[7] = v7;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_100598128;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    [v3 didUpdateWithNearbyObject:isa completion:v11];
    _Block_release(v11);

    sub_1000049D0(v8, v9);
  }

  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1002AC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a1;
  v11[6] = a3;

  sub_1001D7F30(0, 0, v9, &unk_1004D2E00, v11);
}

uint64_t sub_1002AC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1002AC9C4, 0, 0);
}

uint64_t sub_1002AC9C4()
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
  v6[1] = sub_1002ACAE0;

  return withTimeout<A>(_:block:)(v6, 0x8AC7230489E80000, 0, &unk_1004D2E10, v4, &type metadata for () + 8);
}

uint64_t sub_1002ACAE0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1002ACBFC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1000161B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002ACBFC()
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
    *(v10 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E69C0, &v16);
    *(v10 + 12) = 2114;
    v13 = _convertErrorToNSError(_:)();
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

uint64_t sub_1002ACE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return _swift_task_switch(sub_1002ACE38, 0, 0);
}

uint64_t sub_1002ACE38()
{
  v1 = v0[11];
  v2 = *(v0[10] + 112);
  v3 = *(&async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + 1);
  v7 = &async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:) + async function pointer to dispatch thunk of FM.XPCSession.proxy(errorHandler:);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1002ACF0C;
  v5 = v0[11];

  return (v7)(v0 + 8, sub_1002BCFF0, v5);
}

uint64_t sub_1002ACF0C()
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

    v4 = sub_1002AD028;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002AD028()
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
  sub_10004B564(&qword_1005B0060, &qword_1004D15E8);
  sub_1002BBA60();
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
    v0[6] = sub_1002BCFF4;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000A8DE8;
    v0[5] = &unk_100598218;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v3 updateFriends:isa completion:v14];
    _Block_release(v14);

    sub_1000049D0(v11, v12);
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AD1F8()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002AD25C(uint64_t a1)
{
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFFE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = _convertErrorToNSError(_:)();
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10000D01C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "FrienshipServiceClient proxy error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v14 = a1;
  return OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AD408(uint64_t a1)
{
  if (!a1)
  {
    return OnceCheckedContinuation.resume<>()();
  }

  swift_errorRetain();
  OnceCheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002AD458(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD478, v1, 0);
}

uint64_t sub_1002AD478()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000011, 0x80000001004E69C0, sub_1002BB8DC, v1, &type metadata for () + 8);
}

uint64_t sub_1002AD560()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1002BCFFC;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_1002BCFE4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002AD684(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD6A4, v1, 0);
}

uint64_t sub_1002AD6A4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD78C;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001ALL, 0x80000001004E69A0, sub_1002BB658, v1, &type metadata for () + 8);
}

uint64_t sub_1002AD78C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1000889D0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_1002BCFE4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002AD8B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002AD8D0, v1, 0);
}

uint64_t sub_1002AD8D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_1002AD560;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000018, 0x80000001004E6980, sub_1002B7BFC, v1, &type metadata for () + 8);
}

uint64_t sub_1002AD9B8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0000);
  v1 = sub_10000A6F0(v0, qword_1005E0000);
  if (qword_1005A80F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFFE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002ADA80()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_10004B564(&qword_1005B0370, &unk_1004D2410) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002ADB48, 0, 0);
}

uint64_t sub_1002ADB48()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_defaultActor_initialize();
  *(v3 + 112) = 0xD000000000000011;
  *(v3 + 120) = 0x80000001004D2B00;
  v4 = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  v5 = type metadata accessor for XPCServiceDescription();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline) = 0;
  v6 = OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool;
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  *(v3 + v6) = XPCClientConnectionPool.__allocating_init()();
  v7 = OBJC_IVAR____TtC13findmylocated17FriendshipService_friendUpdateQueue;
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  UUID.init()();
  *(v3 + v7) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v9 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  v10 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC13findmylocated17FriendshipService_task) = 0;
  type metadata accessor for XPCSessionManager();
  v11 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_1002ADD90;

  return XPCSessionManager.__allocating_init(name:)(0xD000000000000011, 0x80000001004D2B00);
}

uint64_t sub_1002ADD90(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002ADE90, 0, 0);
}

uint64_t sub_1002ADE90()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v0[2] + OBJC_IVAR____TtC13findmylocated17FriendshipService_xpcSessionManager) = v0[6];

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_1002ADF10()
{
  v1[14] = v0;
  v1[15] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for MachServiceName();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE054, v0, 0);
}

uint64_t sub_1002AE054()
{
  v76 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService startup()", v4, 2u);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);

  MachServiceName.init(_:)();
  v9 = objc_opt_self();
  v74 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate20FriendshipXPCService_];
  *(v0 + 184) = v74;
  v73 = *(v7 + 16);
  v73(v6, v5, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v12)
  {
    v16 = swift_slowAlloc();
    v71 = v9;
    v17 = swift_slowAlloc();
    v75 = v17;
    *v16 = 136315138;
    v18 = MachServiceName.description.getter();
    v20 = v19;
    v70 = v11;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_10000D01C(v18, v20, &v75);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v10, v70, "Service Name: %s", v16, 0xCu);
    sub_100004984(v17);
    v9 = v71;
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v13, v15);
  }

  *(v0 + 192) = v21;
  v23 = *(v0 + 112);
  v24 = _s10TrampolineCMa();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v25;
  *(v0 + 88) = v24;
  v26 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 200) = v26;
  v72 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate26FriendshipServiceClientXPC_];
  *(v0 + 208) = v72;
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v75 = v31;
    *v30 = 136315138;
    v32 = [v27 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_10000D01C(v33, v35, &v75);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Trampoline: %s", v30, 0xCu);
    sub_100004984(v31);
  }

  v37 = *(v0 + 112);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 112);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v75 = v42;
    *v41 = 136315138;
    *(v0 + 104) = v40;
    type metadata accessor for FriendshipService();
    sub_1002BCCE0(&qword_1005B0EA0, 255, type metadata accessor for FriendshipService);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = sub_10000D01C(v43, v44, &v75);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Self: %s", v41, 0xCu);
    sub_100004984(v42);
  }

  v46 = *(v0 + 136);
  v47 = *(v0 + 112);
  v73(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  v48 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v48;
  *(v0 + 48) = sub_1002BCCE0(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements);
  v49 = sub_10000331C((v0 + 16));
  (*(*(v48 - 8) + 104))(v49, enum case for ServiceEntitlements.friendshipService(_:), v48);
  v50 = v27;

  v51 = v74;
  v52 = v72;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v53 = type metadata accessor for XPCServiceDescription();
  *(v0 + 216) = v53;
  v54 = *(v53 - 8);
  *(v0 + 224) = v54;
  (*(v54 + 56))(v46, 0, 1, v53);
  v55 = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  *(v0 + 232) = OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription;
  swift_beginAccess();
  sub_100022364(v46, v47 + v55, &qword_1005B09F8, &qword_1004D23A8);
  swift_endAccess();

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v0 + 112);
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75 = v60;
    *v59 = 136315138;
    *(v0 + 96) = v58;
    type metadata accessor for FriendshipService();
    sub_1002BCCE0(&qword_1005B0EA0, 255, type metadata accessor for FriendshipService);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = sub_10000D01C(v61, v62, &v75);

    *(v59 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Service description: %s", v59, 0xCu);
    sub_100004984(v60);
  }

  v64 = *(v0 + 112);
  v65 = *(v64 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline);
  *(v64 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline) = v50;
  v66 = v50;

  *(v0 + 240) = *(v64 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28);
  v68 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 248) = v68;
  *(v0 + 256) = v67;

  return _swift_task_switch(sub_1002AE93C, v68, v67);
}

uint64_t sub_1002AE93C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 112);
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  return _swift_task_switch(sub_1002AE9C0, v2, 0);
}

uint64_t sub_1002AE9C0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = swift_allocObject();
  v0[33] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5 = v0[31];
  v4 = v0[32];

  return _swift_task_switch(sub_1002AEA58, v5, v4);
}

uint64_t sub_1002AEA58()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[14];
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  return _swift_task_switch(sub_1002AEAF0, v3, 0);
}

uint64_t sub_1002AEAF0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[16];
  v5 = v0[14];
  v0[34] = *(v5 + OBJC_IVAR____TtC13findmylocated17FriendshipService_xpcSessionManager);
  sub_100005F04(v5 + v1, v4, &qword_1005B09F8, &qword_1004D23A8);
  v6 = (*(v2 + 48))(v4, 1, v3);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for XPCSessionManager();
    sub_1002BCCE0(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_1002AEC14;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002AEC14()
{
  v1 = v0[34];
  v2 = v0[16];
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[35] = 0;
  v3 = v0[14];
  (*(v0[28] + 8))(v0[16], v0[27]);

  return _swift_task_switch(sub_1002AECC8, v3, 0);
}

uint64_t sub_1002AECC8()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);
  v12 = *(v0 + 128);

  v2(v5, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002AEDAC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  v13 = *(v0 + 168);
  v14 = *(v0 + 160);
  v8 = *(v0 + 144);
  v15 = *(v0 + 136);
  v9 = *(v0 + 128);

  v5(v6, v8);
  (*(v2 + 8))(v9, v1);

  v10 = *(v0 + 8);
  v11 = *(v0 + 280);

  return v10();
}

uint64_t sub_1002AEEB0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002AEF4C, 0, 0);
}

uint64_t sub_1002AEF4C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  v6 = v3;
  sub_1001D7F30(0, 0, v2, &unk_1004D2FC0, v5);

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_1002AF058(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002AF0F4, 0, 0);
}

uint64_t sub_1002AF0F4()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService stop Processing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D2FB0, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AF2A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002B4260();
}

uint64_t sub_1002AF338()
{
  v1[255] = v0;
  v2 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[261] = v2;
  v3 = *(v2 - 8);
  v1[267] = v3;
  v4 = *(v3 + 64) + 15;
  v1[273] = swift_task_alloc();
  v5 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[279] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[285] = v7;
  *v7 = v1;
  v7[1] = sub_1002AF46C;

  return daemon.getter();
}

uint64_t sub_1002AF46C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2280);
  v12 = *v1;
  *(v3 + 2328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2376) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002AF650;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002AF650(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2376);
  v6 = *v2;
  v4[298] = a1;
  v4[299] = v1;

  if (v1)
  {
    v7 = v4[255];
    v8 = sub_1002AFBD0;
  }

  else
  {
    v9 = v4[291];

    v8 = sub_1002AF78C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002AF78C()
{
  v1 = v0[298];
  v2 = v0[279];
  v3 = v0[273];
  v4 = v0[267];
  v5 = v0[261];
  v6 = v0[255];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_1002AF8A4, v6, 0);
}

uint64_t sub_1002AF8A4()
{
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2040);
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v5, sub_1002AFA38, v0 + 1936);
}

uint64_t sub_1002AFA54(uint64_t a1, uint64_t a2)
{
  *(v3 + 2400) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 1296, a2, sub_1002AFC48, v3 + 2048);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 1296, a2, sub_1002AFA94, v3 + 2192);
  }
}

uint64_t sub_1002AFB3C()
{
  v1 = v0[298];
  v2 = v0[279];
  v3 = v0[273];
  v4 = v0[255];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002AFBD0()
{
  v1 = v0[291];

  v2 = v0[299];
  v3 = v0[279];
  v4 = v0[273];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002AFCD4()
{
  v1 = v0[298];
  v2 = v0[255];

  v3 = v0[300];
  v4 = v0[279];
  v5 = v0[273];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002AFD5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003784;

  return sub_1002CE9CC();
}

uint64_t sub_1002AFDEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFE7C();
}

uint64_t sub_1002AFE7C()
{
  v1[6] = v0;
  v2 = type metadata accessor for HandleType();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v12 = type metadata accessor for Device();
  v1[20] = v12;
  v13 = *(v12 - 8);
  v1[21] = v13;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005AA718, &qword_1004C4370) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v16 = type metadata accessor for DataManager.State(0);
  v1[27] = v16;
  v17 = *(v16 - 8);
  v1[28] = v17;
  v18 = *(v17 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v19 = *(*(sub_10004B564(&qword_1005AA6F8, &unk_1004C4350) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v20 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[34] = v20;
  v21 = *(v20 - 8);
  v1[35] = v21;
  v22 = *(v21 + 64) + 15;
  v1[36] = swift_task_alloc();
  v23 = *(*(sub_10004B564(&qword_1005B0F00, &qword_1004D2F00) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v24 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[38] = v24;
  v25 = *(v24 - 8);
  v1[39] = v25;
  v26 = *(v25 + 64) + 15;
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_1002B02C8, v0, 0);
}

uint64_t sub_1002B02C8()
{
  if (static SystemInfo.underTest.getter())
  {
    v1 = *(v0 + 320);
    v3 = *(v0 + 288);
    v2 = *(v0 + 296);
    v4 = *(v0 + 256);
    v5 = *(v0 + 264);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v45 = *(v0 + 192);
    v47 = *(v0 + 184);
    v49 = *(v0 + 176);
    v51 = *(v0 + 152);
    v53 = *(v0 + 144);
    v55 = *(v0 + 120);
    v57 = *(v0 + 112);
    v59 = *(v0 + 104);
    v61 = *(v0 + 80);
    v63 = *(v0 + 72);

    v11 = *(v0 + 8);
LABEL_11:

    return v11();
  }

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  *(v0 + 328) = sub_10000A6F0(v12, qword_1005E0000);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Monitoring DataManager stream", v15, 2u);
  }

  v16 = *(v0 + 304);
  v17 = *(v0 + 312);
  v18 = *(v0 + 296);
  v19 = *(v0 + 48);

  v20 = OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v19 + v20, v18, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100002CE0(*(v0 + 296), &qword_1005B0F00, &qword_1004D2F00);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "dataManagerStateStream should be available by now!", v23, 2u);
    }

    sub_10006DC90();
    swift_allocError();
    *v24 = 5;
    swift_willThrow();
    v25 = *(v0 + 320);
    v26 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    v32 = *(v0 + 232);
    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v44 = *(v0 + 192);
    v46 = *(v0 + 184);
    v48 = *(v0 + 176);
    v50 = *(v0 + 152);
    v52 = *(v0 + 144);
    v54 = *(v0 + 120);
    v56 = *(v0 + 112);
    v58 = *(v0 + 104);
    v60 = *(v0 + 80);
    v62 = *(v0 + 72);

    v11 = *(v0 + 8);
    goto LABEL_11;
  }

  v36 = *(v0 + 288);
  (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
  AsyncStream.makeAsyncIterator()();
  v37 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService);
  *(v0 + 560) = enum case for HandleType.follower(_:);
  *(v0 + 336) = v37;
  *(v0 + 344) = 0;
  v38 = *(v0 + 48);
  v39 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v40 = swift_task_alloc();
  *(v0 + 352) = v40;
  *v40 = v0;
  v40[1] = sub_1002B0800;
  v41 = *(v0 + 288);
  v42 = *(v0 + 264);
  v43 = *(v0 + 272);

  return AsyncStream.Iterator.next(isolation:)(v42, v38, v37, v43);
}

uint64_t sub_1002B0800()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1002B0910, v2, 0);
}

uint64_t sub_1002B0910()
{
  v172 = v0;
  v1 = *(v0 + 264);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v3 + 8))(v2, v4);
    v5 = *(v0 + 320);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v12 = *(v0 + 232);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v151 = *(v0 + 192);
    v153 = *(v0 + 184);
    v155 = *(v0 + 176);
    v157 = *(v0 + 152);
    v159 = *(v0 + 144);
    v161 = *(v0 + 120);
    v163 = *(v0 + 112);
    v165 = *(v0 + 104);
    v167 = *(v0 + 80);
    v169 = *(v0 + 72);

    v15 = *(v0 + 8);
LABEL_5:

    return v15();
  }

  v16 = *(v0 + 344);
  sub_1002BCB4C(v1, *(v0 + 256));
  static Task<>.checkCancellation()();
  *(v0 + 360) = v16;
  if (v16)
  {
    v18 = *(v0 + 312);
    v17 = *(v0 + 320);
    v19 = *(v0 + 304);
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 272);
    sub_100243528(*(v0 + 256));
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v23 = *(v0 + 320);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    v27 = *(v0 + 256);
    v26 = *(v0 + 264);
    v29 = *(v0 + 240);
    v28 = *(v0 + 248);
    v30 = *(v0 + 232);
    v31 = *(v0 + 208);
    v150 = *(v0 + 200);
    v152 = *(v0 + 192);
    v154 = *(v0 + 184);
    v156 = *(v0 + 176);
    v158 = *(v0 + 152);
    v160 = *(v0 + 144);
    v162 = *(v0 + 120);
    v164 = *(v0 + 112);
    v166 = *(v0 + 104);
    v168 = *(v0 + 80);
    v170 = *(v0 + 72);

    v15 = *(v0 + 8);
    goto LABEL_5;
  }

  v33 = *(v0 + 328);
  sub_1002434C4(*(v0 + 256), *(v0 + 248));
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 248);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v171[0] = v39;
    *v38 = 136315138;
    v40 = sub_1001DA250(v39);
    v42 = v41;
    sub_100243528(v37);
    v43 = sub_10000D01C(v40, v42, v171);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "dataManagerStateStream event: %s", v38, 0xCu);
    sub_100004984(v39);
  }

  else
  {

    sub_100243528(v37);
  }

  v44 = *(v0 + 216);
  sub_1002434C4(*(v0 + 256), *(v0 + 240));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 3 && EnumCaseMultiPayload == 6)
    {
      v46 = *(v0 + 328);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Initialized, registering alarms if not already registered", v49, 2u);
      }

      v50 = swift_task_alloc();
      *(v0 + 368) = v50;
      *v50 = v0;
      v51 = sub_1002B1840;
LABEL_17:
      v50[1] = v51;
      v52 = *(v0 + 48);

      return sub_1002CF250();
    }

    v53 = *(v0 + 328);
    sub_1002434C4(*(v0 + 256), *(v0 + 232));
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 256);
    v58 = *(v0 + 232);
    if (v56)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v171[0] = v60;
      *v59 = 136315138;
      v61 = sub_1001DA250(v60);
      v63 = v62;
      sub_100243528(v58);
      v64 = sub_10000D01C(v61, v63, v171);

      *(v59 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring %s", v59, 0xCu);
      sub_100004984(v60);
    }

    else
    {

      sub_100243528(v58);
    }

    v65 = v57;
    goto LABEL_49;
  }

  if (!EnumCaseMultiPayload)
  {
    v81 = *(v0 + 328);
    v83 = *(v0 + 200);
    v82 = *(v0 + 208);
    sub_1000176A8(*(v0 + 240), v82, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v82, v83, &qword_1005AA718, &qword_1004C4370);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 200);
    if (v86)
    {
      v88 = *(v0 + 192);
      v89 = *(v0 + 160);
      v90 = *(v0 + 168);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *(v0 + 40) = v92;
      *v91 = 136315138;
      sub_100005F04(v87, v88, &qword_1005AA718, &qword_1004C4370);
      v93 = (*(v90 + 48))(v88, 1, v89);
      v94 = *(v0 + 192);
      if (v93 == 1)
      {
        sub_100002CE0(*(v0 + 192), &qword_1005AA718, &qword_1004C4370);
        v95 = 0xE300000000000000;
        v96 = 7104878;
      }

      else
      {
        v112 = *(v0 + 160);
        v113 = *(v0 + 168);
        v114 = *(v0 + 192);
        v96 = Device.description.getter();
        v95 = v115;
        (*(v113 + 8))(v94, v112);
      }

      sub_100002CE0(*(v0 + 200), &qword_1005AA718, &qword_1004C4370);
      v116 = sub_10000D01C(v96, v95, (v0 + 40));

      *(v91 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v84, v85, "Me Device change: %s", v91, 0xCu);
      sub_100004984(v92);
    }

    else
    {

      sub_100002CE0(v87, &qword_1005AA718, &qword_1004C4370);
    }

    v117 = *(v0 + 184);
    v118 = *(v0 + 160);
    v119 = *(v0 + 168);
    sub_100005F04(*(v0 + 208), v117, &qword_1005AA718, &qword_1004C4370);
    if ((*(v119 + 48))(v117, 1, v118) != 1)
    {
      (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 184), *(v0 + 160));
      if (Device.isThisDevice.getter())
      {
        v131 = *(v0 + 128);
        v132 = *(v0 + 136);
        v133 = *(v0 + 120);
        v134 = *(v0 + 48);
        static Date.trustedNow.getter(*(v0 + 152));
        sub_1002D3678(v133);
        v135 = *(v132 + 48);
        v136 = v135(v133, 1, v131);
        v138 = *(v0 + 120);
        v137 = *(v0 + 128);
        if (v136 == 1)
        {
          v139 = *(v0 + 144);
          v140 = *(v0 + 152);
          Date.addingTimeInterval(_:)();
          if (v135(v138, 1, v137) != 1)
          {
            sub_100002CE0(*(v0 + 120), &unk_1005AE5B0, &qword_1004C32F0);
          }
        }

        else
        {
          (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
        }

        v145 = *(v0 + 144);
        v146 = [objc_opt_self() standardUserDefaults];
        Date.timeIntervalSince1970.getter();
        v148 = v147;
        v149 = String._bridgeToObjectiveC()();
        [v146 setDouble:v149 forKey:v148];

        v50 = swift_task_alloc();
        *(v0 + 376) = v50;
        *v50 = v0;
        v51 = sub_1002B1A14;
        goto LABEL_17;
      }

      v141 = [objc_opt_self() standardUserDefaults];
      v142 = String._bridgeToObjectiveC()();
      [v141 setDouble:v142 forKey:0.0];

      static XPCAlarm.unregister(identifier:)();
      v143 = *(v0 + 256);
      v144 = *(v0 + 208);
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      sub_100002CE0(v144, &qword_1005AA718, &qword_1004C4370);
      sub_100243528(v143);
      v123 = *(v0 + 360);
      goto LABEL_50;
    }

    v110 = *(v0 + 256);
    v120 = *(v0 + 208);
    sub_100002CE0(*(v0 + 184), &qword_1005AA718, &qword_1004C4370);
    v121 = [objc_opt_self() standardUserDefaults];
    v122 = String._bridgeToObjectiveC()();
    [v121 setDouble:v122 forKey:0.0];

    static XPCAlarm.unregister(identifier:)();
    sub_100002CE0(v120, &qword_1005AA718, &qword_1004C4370);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v97 = *(v0 + 560);
    v98 = *(v0 + 80);
    v100 = *(v0 + 64);
    v99 = *(v0 + 72);
    v101 = *(v0 + 56);
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 240), *(v0 + 88));
    Friend.type.getter();
    v102 = *(v100 + 104);
    *(v0 + 480) = v102;
    *(v0 + 488) = (v100 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v102(v99, v97, v101);
    v103 = static HandleType.== infix(_:_:)();
    v104 = *(v100 + 8);
    v104(v99, v101);
    v104(v98, v101);
    if (v103)
    {
      v105 = *(v0 + 328);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Removed a follower, checking number of followers", v108, 2u);
      }

      v109 = async function pointer to daemon.getter[1];
      v79 = swift_task_alloc();
      *(v0 + 496) = v79;
      *v79 = v0;
      v80 = sub_1002B26E0;
      goto LABEL_37;
    }

    v110 = *(v0 + 256);
    v111 = *(v0 + 104);
    goto LABEL_43;
  }

  v66 = *(v0 + 560);
  v68 = *(v0 + 72);
  v67 = *(v0 + 80);
  v69 = *(v0 + 56);
  v70 = *(v0 + 64);
  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 240), *(v0 + 88));
  Friend.type.getter();
  v71 = *(v70 + 104);
  *(v0 + 384) = v71;
  *(v0 + 392) = (v70 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v71(v68, v66, v69);
  v72 = static HandleType.== infix(_:_:)();
  v73 = *(v70 + 8);
  v73(v68, v69);
  v73(v67, v69);
  if ((v72 & 1) == 0)
  {
    v110 = *(v0 + 256);
    v111 = *(v0 + 112);
LABEL_43:
    (*(*(v0 + 96) + 8))(v111, *(v0 + 88));
LABEL_48:
    v65 = v110;
LABEL_49:
    sub_100243528(v65);
    v123 = 0;
LABEL_50:
    *(v0 + 344) = v123;
    v124 = *(v0 + 336);
    v125 = *(v0 + 48);
    v126 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v127 = swift_task_alloc();
    *(v0 + 352) = v127;
    *v127 = v0;
    v127[1] = sub_1002B0800;
    v128 = *(v0 + 288);
    v129 = *(v0 + 264);
    v130 = *(v0 + 272);

    return AsyncStream.Iterator.next(isolation:)(v129, v125, v124, v130);
  }

  v74 = *(v0 + 328);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "Added a follower, checking number of followers", v77, 2u);
  }

  v78 = async function pointer to daemon.getter[1];
  v79 = swift_task_alloc();
  *(v0 + 400) = v79;
  *v79 = v0;
  v80 = sub_1002B1C50;
LABEL_37:
  v79[1] = v80;

  return daemon.getter();
}

uint64_t sub_1002B1840()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1002B1950, v2, 0);
}

uint64_t sub_1002B1950()
{
  sub_100243528(v0[32]);
  v0[43] = v0[45];
  v1 = v0[42];
  v2 = v0[6];
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_1002B0800;
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v6, v2, v1, v7);
}

uint64_t sub_1002B1A14()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1002B1B24, v2, 0);
}

uint64_t sub_1002B1B24()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v0[17] + 8);
  v3(v0[18], v2);
  v3(v1, v2);
  v4 = v0[32];
  v5 = v0[26];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_100002CE0(v5, &qword_1005AA718, &qword_1004C4370);
  sub_100243528(v4);
  v0[43] = v0[45];
  v6 = v0[42];
  v7 = v0[6];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[44] = v9;
  *v9 = v0;
  v9[1] = sub_1002B0800;
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v11, v7, v6, v12);
}

uint64_t sub_1002B1C50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v12 = *v1;
  *(v3 + 408) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 416) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002B1E34;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002B1E34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  v7 = v4[51];
  if (v1)
  {
    v8 = v4[6];

    v9 = sub_1002B2E4C;
    v10 = v8;
  }

  else
  {

    v9 = sub_1002B1F88;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1002B1F88()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 560);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 440) = v8;
  *(v8 + 16) = xmmword_1004C1900;
  v2(v8 + v7, v3, v4);
  v9 = swift_task_alloc();
  *(v0 + 448) = v9;
  *v9 = v0;
  v9[1] = sub_1002B2090;
  v10 = *(v0 + 424);

  return sub_10001C61C(v8, 1);
}

uint64_t sub_1002B2090(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v5 = *(*v1 + 440);
  v6 = *v1;
  v3[57] = a1;

  v7 = swift_task_alloc();
  v3[58] = v7;
  *v7 = v6;
  v7[1] = sub_1002B2200;
  v8 = v3[6];

  return sub_1002B7DB0(a1);
}

uint64_t sub_1002B2200()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1002B2310, v2, 0);
}

uint64_t sub_1002B2310()
{
  v1 = *(v0[57] + 16);

  if (v1 == 1)
  {
    v2 = v0[41];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Added first follower, resetting location sharing notificatio alarm", v5, 2u);
    }

    v6 = swift_task_alloc();
    v0[59] = v6;
    *v6 = v0;
    v6[1] = sub_1002B24E8;
    v7 = v0[6];

    return sub_1002CFEEC();
  }

  else
  {
    v9 = v0[53];

    v10 = v0[32];
    (*(v0[12] + 8))(v0[14], v0[11]);
    sub_100243528(v10);
    v0[43] = v0[54];
    v11 = v0[42];
    v12 = v0[6];
    v13 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v14 = swift_task_alloc();
    v0[44] = v14;
    *v14 = v0;
    v14[1] = sub_1002B0800;
    v15 = v0[36];
    v16 = v0[33];
    v17 = v0[34];

    return AsyncStream.Iterator.next(isolation:)(v16, v12, v11, v17);
  }
}

uint64_t sub_1002B24E8()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1002B25F8, v2, 0);
}

uint64_t sub_1002B25F8()
{
  v1 = v0[53];

  v2 = v0[32];
  (*(v0[12] + 8))(v0[14], v0[11]);
  sub_100243528(v2);
  v0[43] = v0[54];
  v3 = v0[42];
  v4 = v0[6];
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_1002B0800;
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_1002B26E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 496);
  v12 = *v1;
  *(v3 + 504) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 512) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002B28C4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002B28C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 512);
  v6 = *v2;
  v4[65] = a1;
  v4[66] = v1;

  v7 = v4[63];
  if (v1)
  {
    v8 = v4[6];

    v9 = sub_1002B3014;
    v10 = v8;
  }

  else
  {

    v9 = sub_1002B2A1C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1002B2A1C()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 560);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 536) = v8;
  *(v8 + 16) = xmmword_1004C1900;
  v2(v8 + v7, v3, v4);
  v9 = swift_task_alloc();
  *(v0 + 544) = v9;
  *v9 = v0;
  v9[1] = sub_1002B2B24;
  v10 = *(v0 + 520);

  return sub_10001C61C(v8, 1);
}

uint64_t sub_1002B2B24(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_1002B2C58, v4, 0);
}

uint64_t sub_1002B2C58()
{
  v1 = *(v0[69] + 16);

  if (!v1)
  {
    v2 = v0[41];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Removed last follower, unregistering location sharing notification alarm", v5, 2u);
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 setDouble:v7 forKey:0.0];

    static XPCAlarm.unregister(identifier:)();
  }

  v8 = v0[65];
  v9 = v0[32];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];

  (*(v11 + 8))(v10, v12);
  sub_100243528(v9);
  v0[43] = v0[66];
  v13 = v0[42];
  v14 = v0[6];
  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_1002B0800;
  v17 = v0[36];
  v18 = v0[33];
  v19 = v0[34];

  return AsyncStream.Iterator.next(isolation:)(v18, v14, v13, v19);
}

uint64_t sub_1002B2E4C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[32];
  (*(v0[12] + 8))(v0[14], v0[11]);
  sub_100243528(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v30 = v0[54];
  v8 = v0[40];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[15];
  v26 = v0[14];
  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002B3014()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[32];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_100243528(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v30 = v0[66];
  v8 = v0[40];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[22];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[15];
  v26 = v0[14];
  v27 = v0[13];
  v28 = v0[10];
  v29 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002B31DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003788;

  return sub_1002B326C();
}

uint64_t sub_1002B326C()
{
  v1[3] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B0F08, &qword_1004D2F40) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002B3364, v0, 0);
}

uint64_t sub_1002B3364()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E6A00, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1002B3514;
  v7 = v0[3];

  return sub_1002B8FBC();
}

uint64_t sub_1002B3514()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1002B3624, v2, 0);
}

uint64_t sub_1002B3624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CMFBlockListUpdatedNotification;
  if (CMFBlockListUpdatedNotification)
  {
    v5 = v3[7];
    v6 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.notifications(named:object:)();

    NSNotificationCenter.Notifications.makeAsyncIterator()();
    v3[10] = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService);
    v7 = sub_1002BCCE0(&qword_1005B0F10, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    v3[11] = v9;
    *v9 = v3;
    v9[1] = sub_1002B37A4;
    v10 = v3[7];
    a1 = v3[4];
    a2 = v3[5];
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
}

uint64_t sub_1002B37A4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[3];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[10];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1002B3B6C;
  }

  else
  {
    if (v5)
    {
      v11 = v2[10];
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1002B393C;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1002B3958()
{
  v13 = v0;
  v1 = v0[4];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E6A00, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - Notification received.", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_1002B3BF8;
    v11 = v0[3];

    return sub_1002B8FBC();
  }
}

uint64_t sub_1002B3B6C()
{
  *(v0 + 16) = *(v0 + 96);
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1002B3BF8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1002B3D08, v2, 0);
}

uint64_t sub_1002B3D08()
{
  sub_100002CE0(v0[4], &qword_1005B0F08, &qword_1004D2F40);
  v1 = sub_1002BCCE0(&qword_1005B0F10, 255, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1002B37A4;
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v1);
}

uint64_t sub_1002B3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000368C;

  return sub_1002B3E98(a5);
}

uint64_t sub_1002B3E98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002B3EB8, v1, 0);
}

uint64_t sub_1002B3EB8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  v2 = *(&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + 1);
  v6 = (&async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:) + async function pointer to dispatch thunk of XPCClientConnectionPool.add(connection:));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1002B3F70;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1002B3F70()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v5 = *(v2 + 24);

    return _swift_task_switch(sub_1002B40C4, v5, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1002B40C4()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
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

uint64_t sub_1002B4280()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FriendshipService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1002B43D0;
  v6 = v0[3];

  return sub_1002BD740();
}

uint64_t sub_1002B43D0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_1002B4504, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1002B4504()
{
  v15 = v0;
  v1 = v0[6];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to stop ranging due to %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
    v11 = v0[6];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002B4698(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *(v1 + OBJC_IVAR____TtC13findmylocated17FriendshipService_friendUpdateQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = a1;
  v7[4] = v3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1002B47E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1002B4804, 0, 0);
}

uint64_t sub_1002B4804()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);
  v3 = async function pointer to withTimeout<A>(_:block:)[1];

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1002B4918;

  return withTimeout<A>(_:block:)(v4, 0x40AAD21B3B700000, 3, &unk_1004D2EA8, v2, &type metadata for () + 8);
}

uint64_t sub_1002B4918()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1001268B0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_10004B074;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002B4A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return _swift_task_switch(sub_1002B4A58, 0, 0);
}

uint64_t sub_1002B4A58()
{
  *(v0 + 48) = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B4B30, v2, v1);
}

uint64_t sub_1002B4B30()
{
  v1 = v0[6];
  v2 = dispatch thunk of XPCClientConnectionPool.sessions.getter();
  v0[7] = v2;
  v0[2] = v2;
  v3 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_10004B564(&qword_1005B0EF0, &qword_1004D2EB8);
  v6 = type metadata accessor for UUID();
  v0[9] = v6;
  v7 = sub_10001DF0C(&qword_1005B0EF8, &qword_1005B0EF0, &qword_1004D2EB8);
  *v4 = v0;
  v4[1] = sub_1002B4C64;

  return Sequence.asyncMap<A>(_:)(&unk_1004D2EB0, 0, v5, v6, v7);
}

uint64_t sub_1002B4C64(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1002B4D8C, 0, 0);
  }
}

uint64_t sub_1002B4D8C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[4];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0000);
  swift_bridgeObjectRetain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 134218498;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = __CocoaSet.count.getter();
      v12 = v0[7];
    }

    else
    {
      v11 = *(v0[7] + 16);
    }

    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[4];
    *(v9 + 4) = v11;

    *(v9 + 12) = 2082;
    v17 = Array.description.getter();
    v19 = sub_10000D01C(v17, v18, &v30);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2048;
    v20 = *(v16 + 16);

    *(v9 + 24) = v20;

    _os_log_impl(&_mh_execute_header, v5, v6, "Send friends update to clients[%ld]: %{public}s updates count:%ld", v9, 0x20u);
    sub_100004984(v10);
  }

  else
  {
    v13 = v0[4];
    swift_bridgeObjectRelease_n();
  }

  v21 = v0[10];
  v22 = v0[7];
  v24 = v0[4];
  v23 = v0[5];
  v25 = swift_task_alloc();
  v0[11] = v25;
  v25[2] = v24;
  v25[3] = v22;
  v25[4] = v21;
  v25[5] = v23;
  v26 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v27 = swift_task_alloc();
  v0[12] = v27;
  *v27 = v0;
  v27[1] = sub_1002B5058;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1002B5058()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[7];

    return _swift_task_switch(sub_1002BCFE4, 0, 0);
  }
}

uint64_t sub_1002B51A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1002B51CC, 0, 0);
}

uint64_t sub_1002B51CC()
{
  v1 = *(v0[3] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1002B527C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1002B527C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1002B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[16] = a2;
  v7 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v8 = type metadata accessor for HandleType();
  v6[23] = v8;
  v9 = *(v8 - 8);
  v6[24] = v9;
  v10 = *(v9 + 64) + 15;
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  v6[26] = v11;
  v12 = *(v11 - 8);
  v6[27] = v12;
  v13 = *(v12 + 64) + 15;
  v6[28] = swift_task_alloc();
  v14 = type metadata accessor for FriendshipAction();
  v6[29] = v14;
  v15 = *(v14 - 8);
  v6[30] = v15;
  v16 = *(v15 + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v17 = type metadata accessor for Friend();
  v6[34] = v17;
  v18 = *(v17 - 8);
  v6[35] = v18;
  v19 = *(v18 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();

  return _swift_task_switch(sub_1002B5614, 0, 0);
}

uint64_t sub_1002B5614()
{
  v170 = v0;
  v123 = v0 + 7;
  v1 = v0[18];
  v2 = v0[17];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[17] + 32);
  v8 = v0[35];
  v9 = v0[30];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v10 = v6 & v3;
  v124 = (63 - v7) >> 6;
  v144 = (v9 + 16);
  v146 = (v8 + 16);
  v142 = (v8 + 32);
  v130 = v0[30];
  v131 = v0[35];
  v138 = (v9 + 8);
  v140 = (v8 + 8);
  v141 = (v9 + 32);
  v125 = v0[18];
  if (v1 < 0)
  {
    v11 = v0[18];
  }

  v128 = (v0[27] + 8);
  v129 = v1 & 0xC000000000000001;
  v127 = (v0[24] + 8);
  v132 = v0[17];

  v13 = 0;
  v139 = v4;
  while (v10)
  {
    v22 = v13;
    v23 = v147;
LABEL_18:
    v26 = v23[40];
    v28 = v23[33];
    v27 = v23[34];
    v158 = v27;
    v164 = v23[39];
    v29 = v23[29];
    v30 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v31 = v30 | (v22 << 6);
    v32 = *(v132 + 48) + *(v131 + 72) * v31;
    (*(v131 + 16))();
    (*(v130 + 16))(v28, *(v132 + 56) + *(v130 + 72) * v31, v29);
    v33 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    v34 = *(v33 + 48);
    (*(v131 + 32))(v26, v164, v158);
    (*(v130 + 32))(v26 + v34, v28, v29);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
LABEL_19:
    v35 = v23[41];
    sub_1000176A8(v23[40], v35, &qword_1005AFFF8, &unk_1004D2ED0);
    v36 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      v79 = v23[17];

      if (v129)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for FriendshipServiceClient();
        sub_1002BCCE0(&qword_1005B0EB8, v80, type metadata accessor for FriendshipServiceClient);
        result = Set.Iterator.init(_cocoa:)();
        v81 = v23[2];
        v82 = v23[3];
        v83 = v23[4];
        v84 = v23[5];
        v85 = v23[6];
      }

      else
      {
        v86 = -1 << *(v23[18] + 32);
        v87 = v23[18];
        v89 = *(v87 + 56);
        v82 = v87 + 56;
        v88 = v89;
        v90 = ~v86;
        v91 = -v86;
        if (v91 < 64)
        {
          v92 = ~(-1 << v91);
        }

        else
        {
          v92 = -1;
        }

        v85 = v92 & v88;

        v83 = v90;
        v84 = 0;
        v81 = v125;
      }

      v93 = (v83 + 64) >> 6;
      v126 = v81;
      v149 = v93;
      for (i = v82; ; v82 = i)
      {
        if (v81 < 0)
        {
          v101 = __CocoaSet.Iterator.next()();
          if (!v101 || (v23[15] = v101, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v100 = v23[14], j = v84, v99 = v85, !v100))
          {
LABEL_54:
            v116 = *(v147 + 320);
            v115 = *(v147 + 328);
            v118 = *(v147 + 304);
            v117 = *(v147 + 312);
            v120 = *(v147 + 288);
            v119 = *(v147 + 296);
            v121 = *(v147 + 264);
            v143 = *(v147 + 256);
            v145 = *(v147 + 248);
            v150 = *(v147 + 224);
            v157 = *(v147 + 200);
            v162 = *(v147 + 176);
            v168 = *(v147 + 168);
            sub_10000E3F8();

            v122 = *(v147 + 8);

            return v122();
          }
        }

        else
        {
          v96 = v84;
          v97 = v85;
          for (j = v84; !v97; ++v96)
          {
            j = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_58;
            }

            if (j >= v93)
            {
              goto LABEL_54;
            }

            v97 = *(v82 + 8 * j);
          }

          v99 = (v97 - 1) & v97;
          v100 = *(*(v81 + 48) + ((j << 9) | (8 * __clz(__rbit64(v97)))));

          if (!v100)
          {
            goto LABEL_54;
          }
        }

        v167 = v99;
        v103 = *(v147 + 168);
        v102 = *(v147 + 176);
        v161 = *(v147 + 160);
        v104 = *(v147 + 136);
        v105 = type metadata accessor for TaskPriority();
        v106 = *(v105 - 8);
        (*(v106 + 56))(v102, 1, 1, v105);
        v107 = swift_allocObject();
        v107[2] = 0;
        v156 = v107 + 2;
        v107[3] = 0;
        v107[4] = v100;
        v107[5] = v104;
        v107[6] = v161;
        sub_100005F04(v102, v103, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v103) = (*(v106 + 48))(v103, 1, v105);

        v108 = *(v147 + 168);
        if (v103 == 1)
        {
          sub_100002CE0(*(v147 + 168), &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v106 + 8))(v108, v105);
        }

        if (*v156)
        {
          v109 = v107[3];
          v110 = *v156;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v111 = dispatch thunk of Actor.unownedExecutor.getter();
          v113 = v112;
          swift_unknownObjectRelease();
        }

        else
        {
          v111 = 0;
          v113 = 0;
        }

        v114 = **(v147 + 128);

        if (v113 | v111)
        {
          v94 = v123;
          *v123 = 0;
          v123[1] = 0;
          *(v147 + 72) = v111;
          *(v147 + 80) = v113;
        }

        else
        {
          v94 = 0;
        }

        v95 = *(v147 + 176);
        *(v147 + 88) = 1;
        *(v147 + 96) = v94;
        *(v147 + 104) = v114;
        swift_task_create();

        result = sub_100002CE0(v95, &qword_1005A9690, &qword_1004C2A00);
        v84 = j;
        v85 = v167;
        v23 = v147;
        v81 = v126;
        v93 = v149;
      }
    }

    v37 = v23[41];
    v38 = v23[32];
    v39 = v23[29];
    v40 = *(v36 + 48);
    (*v142)(v23[38], v37, v23[34]);
    (*v141)(v38, v37 + v40, v39);
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v41 = v23[37];
    v42 = v23[38];
    v43 = v23[36];
    v44 = v23[34];
    v151 = v23[31];
    v154 = v23[29];
    v159 = v23[32];
    v45 = v23[19];
    v165 = v23[18];
    v46 = type metadata accessor for Logger();
    sub_10000A6F0(v46, qword_1005E0000);
    v47 = *v146;
    (*v146)(v41, v42, v44);
    v47(v43, v42, v44);
    (*v144)(v151, v159, v154);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v50 = 134219267;
      v160 = v48;
      v155 = v49;
      if (v129)
      {
        v51 = __CocoaSet.count.getter();
      }

      else
      {
        v51 = *(v125 + 16);
      }

      v54 = *(v147 + 296);
      v148 = *(v147 + 304);
      v133 = *(v147 + 288);
      v166 = *(v147 + 272);
      v135 = *(v147 + 248);
      v55 = *(v147 + 224);
      v136 = *(v147 + 232);
      v137 = *(v147 + 256);
      v57 = *(v147 + 200);
      v56 = *(v147 + 208);
      v58 = *(v147 + 184);
      v59 = *(v147 + 144);
      v60 = *(v147 + 152);
      *(v50 + 4) = v51;

      *(v50 + 12) = 2082;
      type metadata accessor for UUID();
      v61 = Array.description.getter();
      v63 = sub_10000D01C(v61, v62, v169);

      *(v50 + 14) = v63;
      *(v50 + 22) = 2160;
      *(v50 + 24) = 1752392040;
      *(v50 + 32) = 2081;
      Friend.handle.getter();
      v64 = Handle.identifier.getter();
      v66 = v65;
      (*v128)(v55, v56);
      v67 = *v140;
      (*v140)(v54, v166);
      v68 = v67;
      v134 = v67;
      v69 = sub_10000D01C(v64, v66, v169);

      *(v50 + 34) = v69;
      *(v50 + 42) = 2082;
      Friend.type.getter();
      sub_1002BCCE0(&qword_1005A9198, 255, &type metadata accessor for HandleType);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*v127)(v57, v58);
      v68(v133, v166);
      v73 = sub_10000D01C(v70, v72, v169);

      *(v50 + 44) = v73;
      *(v50 + 52) = 2082;
      sub_1002BCCE0(&qword_1005B0000, 255, &type metadata accessor for FriendshipAction);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v77 = *v138;
      (*v138)(v135, v136);
      v78 = sub_10000D01C(v74, v76, v169);

      *(v50 + 54) = v78;
      _os_log_impl(&_mh_execute_header, v160, v155, "Send friends update to all clients:\nclients[%ld]: %{public}s\nhandle: %{private,mask.hash}s\ntype: %{public}s\nby: %{public}s", v50, 0x3Eu);
      swift_arrayDestroy();

      v77(v137, v136);
      result = v134(v148, v166);
    }

    else
    {
      v14 = v23[37];
      v163 = v23[38];
      v15 = v23[36];
      v16 = v23[34];
      v17 = v23[31];
      v153 = v23[32];
      v18 = v23[29];
      v19 = v23[18];

      v20 = *v138;
      (*v138)(v17, v18);
      v21 = *v140;
      (*v140)(v15, v16);
      v21(v14, v16);
      v20(v153, v18);
      result = (v21)(v163, v16);
    }

    v4 = v139;
  }

  if (v124 <= v13 + 1)
  {
    v24 = v13 + 1;
  }

  else
  {
    v24 = v124;
  }

  v25 = v24 - 1;
  v23 = v147;
  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v124)
    {
      v52 = *(v147 + 320);
      v53 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
      v10 = 0;
      v13 = v25;
      goto LABEL_19;
    }

    v10 = *(v4 + 8 * v22);
    ++v13;
    if (v10)
    {
      v13 = v22;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1002B6370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002B6454, 0, 0);
}

uint64_t sub_1002B6454()
{
  static Task<>.checkCancellation()();
  v1 = *(v0[2] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1002B656C;
  v4 = v0[10];

  return v6(v4);
}

uint64_t sub_1002B656C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1002B6668, 0, 0);
}

uint64_t sub_1002B6668()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = v0[2];
  v15 = v0[3];
  v16 = v0[4];
  v7 = *(v4 + 16);
  v0[12] = v7;
  v0[13] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v0[14] = v11;
  (*(v4 + 32))(v11 + v8, v2, v5);
  *(v11 + v9) = v6;
  *(v11 + v10) = v15;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v12 = async function pointer to withTimeout<A>(_:block:)[1];

  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_1002B680C;

  return withTimeout<A>(_:block:)(v13, 0x8AC7230489E80000, 0, &unk_1004D2EF8, v11, &type metadata for () + 8);
}

uint64_t sub_1002B680C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1002B69B8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1002B6928;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002B6928()
{
  (*(v0[6] + 8))(v0[10], v0[5]);
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002B69B8()
{
  v34 = v0;
  v1 = v0[14];

  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[5];
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0000);
  v4(v6, v5, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[16];
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v32 = v0[10];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v17 = 136446466;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v14, v15);
    v22 = sub_10000D01C(v18, v20, &v33);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v23;
    *v30 = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error from client %{public}s error: %{public}@", v17, 0x16u);
    sub_100002CE0(v30, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v31);

    v21(v32, v15);
  }

  else
  {

    v24 = *(v16 + 8);
    v24(v14, v15);
    v24(v13, v15);
  }

  v26 = v0[9];
  v25 = v0[10];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002B6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002B6DA0, 0, 0);
}

uint64_t sub_1002B6DA0()
{
  v23 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[10] = v6;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136446210;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending friends update to client %{public}s", v13, 0xCu);
    sub_100004984(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[12] = v17;
  v19 = v0[3];

  return _swift_task_switch(sub_1002B6FF4, v19, 0);
}

uint64_t sub_1002B6FF4()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1002B70D8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000011, 0x80000001004E69C0, sub_1002BD00C, v1, &type metadata for () + 8);
}

uint64_t sub_1002B70D8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1002B7418;
  }

  else
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 24);

    v5 = sub_1002B7200;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002B721C()
{
  v22 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5)
  {
    v20 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    sub_1002BCCE0(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v20(v7, v9);
    v15 = sub_10000D01C(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent friends update to client %{public}s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002B7418()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_1002B7490()
{
  v1 = *(v0 + 120);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);
  v2 = *(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_trampoline);

  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);

  v4 = *(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_friendUpdateQueue);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_dataManagerStateStream, &qword_1005B0F00, &qword_1004D2F00);
  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_xpcSessionManager);

  v6 = *(v0 + OBJC_IVAR____TtC13findmylocated17FriendshipService_task);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002B7548()
{
  sub_1002B7490();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FriendshipService()
{
  result = qword_1005B0D30;
  if (!qword_1005B0D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B75C8()
{
  sub_10024D88C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1002B76C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B76C8()
{
  if (!qword_1005B0D40)
  {
    sub_10004B610(&qword_1005AA710, &qword_1004D2BA0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B0D40);
    }
  }
}

uint64_t sub_1002B772C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FriendshipService();
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1002B77D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FriendshipService();
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1002B78A0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FriendshipService();
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1002B794C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002ADF10();
}

uint64_t sub_1002B79D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002AF338();
}

uint64_t sub_1002B7A64()
{
  v1 = *v0;
  type metadata accessor for FriendshipService();
  sub_1002BCCE0(&qword_1005AA6E0, 255, type metadata accessor for FriendshipService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1002B7C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AC088(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002B7CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002AC4F8(a1, v4, v5, v6);
}

uint64_t sub_1002B7DB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for FriendshipRequestResult();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ClientOrigin();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005A91E8, &qword_1004D2F60) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005A91C0, &qword_1004C2700) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = type metadata accessor for FriendshipRequest();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();
  v17 = type metadata accessor for Handle();
  v2[19] = v17;
  v18 = *(v17 - 8);
  v2[20] = v18;
  v19 = *(v18 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v20 = type metadata accessor for Friend();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002B80F8, v1, 0);
}

uint64_t sub_1002B80F8()
{
  v86 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v85 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v85);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[3];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v0[24];
    v81 = *(v8 + 16);
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v78 = v0[20];
    v79 = *(v8 + 72);
    v10 = (v8 + 8);
    v11 = _swiftEmptyArrayStorage;
    do
    {
      v12 = v0[21];
      v13 = v0[19];
      v81(v0[25], v9, v0[23]);
      Friend.handle.getter();
      sub_10005890C();
      v15 = v14;
      (*(v78 + 8))(v12, v13);
      v16 = v0[25];
      v17 = v0[23];
      if (v15)
      {
        v18 = v0[22];
        Friend.handle.getter();
        (*v10)(v16, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1001FCA0C(0, v11[2] + 1, 1, v11);
        }

        v20 = v11[2];
        v19 = v11[3];
        if (v20 >= v19 >> 1)
        {
          v11 = sub_1001FCA0C(v19 > 1, v20 + 1, 1, v11);
        }

        v21 = v0[22];
        v22 = v0[19];
        v11[2] = v20 + 1;
        (*(v78 + 32))(v11 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v20, v21, v22);
      }

      else
      {
        (*v10)(v0[25], v0[23]);
      }

      v9 += v79;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v0[27] = v11;
  if (v11[2])
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v84);
      *(v25 + 12) = 2080;
      v26 = v11[2];
      v27 = _swiftEmptyArrayStorage;
      if (v26)
      {
        v75 = v24;
        v76 = v25;
        v77 = v23;
        v28 = v0[20];
        v85 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v26, 0);
        v27 = v85;
        v29 = *(v28 + 16);
        v28 += 16;
        v30 = v11 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v80 = *(v28 + 56);
        v82 = v29;
        v31 = (v28 - 8);
        do
        {
          v32 = v0[21];
          v33 = v0[19];
          v82(v32, v30, v33);
          v34 = Handle.identifier.getter();
          v36 = v35;
          (*v31)(v32, v33);
          v85 = v27;
          v38 = v27[2];
          v37 = v27[3];
          if (v38 >= v37 >> 1)
          {
            sub_10002B3C0((v37 > 1), v38 + 1, 1);
            v27 = v85;
          }

          v27[2] = v38 + 1;
          v39 = &v27[2 * v38];
          v39[4] = v34;
          v39[5] = v36;
          v30 += v80;
          --v26;
        }

        while (v26);
        v25 = v76;
        v23 = v77;
        v24 = v75;
      }

      v0[2] = v27;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      sub_10001DF0C(&qword_1005ABF48, &qword_1005A9630, &qword_1004C5680);
      v56 = BidirectionalCollection<>.joined(separator:)();
      v58 = v57;

      v59 = sub_10000D01C(v56, v58, &v84);

      *(v25 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - Removing %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v60 = v0[18];
    v61 = v0[14];
    v63 = v0[12];
    v62 = v0[13];
    v65 = v0[10];
    v64 = v0[11];
    v67 = v0[8];
    v66 = v0[9];
    (*(v0[20] + 56))(v0[15], 1, 1, v0[19]);
    v68 = type metadata accessor for Date();
    (*(*(v68 - 8) + 56))(v61, 1, 1, v68);
    v69 = type metadata accessor for FriendshipRequestType();
    (*(*(v69 - 8) + 56))(v62, 1, 1, v69);
    v70 = type metadata accessor for FriendshipResponseToInviteType();
    (*(*(v70 - 8) + 56))(v63, 1, 1, v70);
    (*(v66 + 104))(v65, enum case for ClientOrigin.other(_:), v67);

    RequestOrigin.init(_:)();
    FriendshipRequest.init(toHandles:callerHandle:endDate:origin:requestType:responseType:isFromGroup:)();
    v71 = swift_task_alloc();
    v0[28] = v71;
    *v71 = v0;
    v71[1] = sub_1002B89D8;
    v72 = v0[18];
    v73 = v0[7];
    v74 = v0[4];

    return sub_1002BDDA4(v73, v72);
  }

  else
  {

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v85 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v85);
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s - List is empty. Nothing to remove.", v42, 0xCu);
      sub_100004984(v43);
    }

    v44 = v0[25];
    v45 = v0[21];
    v46 = v0[22];
    v47 = v0[18];
    v49 = v0[14];
    v48 = v0[15];
    v51 = v0[12];
    v50 = v0[13];
    v53 = v0[10];
    v52 = v0[11];
    v83 = v0[7];

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_1002B89D8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_1002B8D18;
  }

  else
  {
    v6 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1002B8B0C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002B8B0C()
{
  v28 = v0;
  v2 = v0[26];
  v1 = v0[27];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v27);
    *(v10 + 12) = 2048;
    v12 = *(v6 + 16);

    *(v10 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - Successfully removed %ld followers.", v10, 0x16u);
    sub_100004984(v11);
  }

  else
  {
    v13 = v0[27];
    swift_bridgeObjectRelease_n();
  }

  (*(v8 + 8))(v7, v9);
  v14 = v0[25];
  v15 = v0[21];
  v16 = v0[22];
  v17 = v0[18];
  v19 = v0[14];
  v18 = v0[15];
  v21 = v0[12];
  v20 = v0[13];
  v23 = v0[10];
  v22 = v0[11];
  v26 = v0[7];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1002B8D18()
{
  v34 = v0;
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[16];
  if (v6)
  {
    v31 = v0[16];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136446722;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E6A40, &v33);
    *(v12 + 12) = 2048;
    v30 = v10;
    v15 = *(v8 + 16);

    *(v12 + 14) = v15;

    *(v12 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s - Failed removing %ld followers with error: %@", v12, 0x20u);
    sub_100002CE0(v13, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v14);

    (*(v9 + 8))(v30, v31);
  }

  else
  {
    v17 = v0[27];

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[25];
  v19 = v0[21];
  v20 = v0[22];
  v21 = v0[18];
  v23 = v0[14];
  v22 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  v27 = v0[10];
  v26 = v0[11];
  v32 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002B8FDC()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6A20, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1002B918C;

  return daemon.getter();
}

uint64_t sub_1002B918C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1002BCCE0(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1002BCCE0(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002B9370;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002B9370(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_1002B98AC;
  }

  else
  {
    v9 = v4[5];

    v4[8] = a1;
    v8 = sub_1002B94AC;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002B94AC()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[9] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1002B9610;
  v7 = v0[8];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002B9610(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *v1;
  v3[11] = a1;

  v7 = swift_task_alloc();
  v3[12] = v7;
  *v7 = v6;
  v7[1] = sub_1002B9780;
  v8 = v3[2];

  return sub_1002B7DB0(a1);
}

uint64_t sub_1002B9780()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_10022A8F8, v3, 0);
}

uint64_t sub_1002B98AC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get DataManager: %@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002B9A14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002B9A5C, v1, 0);
}

uint64_t sub_1002B9A5C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "FriendshipService: didDiscover %@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = v0[3];

  v0[5] = *(v10 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B9C50, v12, v11);
}

uint64_t sub_1002B9C50()
{
  v1 = v0[5];
  v2 = v0[3];
  v0[6] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1002B9CC0, v2, 0);
}

uint64_t sub_1002B9CC0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1002B9DFC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, v2, v5, &unk_1004D2E68, v6, &type metadata for () + 8);
}

uint64_t sub_1002B9DFC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 24);
  v6 = *v0;

  return _swift_task_switch(sub_1000161BC, v4, 0);
}

uint64_t sub_1002B9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002B9FF8, 0, 0);
}

uint64_t sub_1002B9FF8()
{
  v1 = v0;
  v2 = v0[17];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[17];
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FriendshipServiceClient();
    sub_1002BCCE0(&qword_1005B0EB8, v4, type metadata accessor for FriendshipServiceClient);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v6 = v0[3];
    v7 = v1[4];
    v8 = v1[5];
    v9 = v1[6];
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
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

    v9 = v12 & *(v2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v39 = v6;
  v40 = v2;
  v38 = v13;
  while (v2 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v1[15] = v21, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v20 = v1[14], v18 = v8, v19 = v9, !v20))
    {
LABEL_29:
      v36 = v1[20];
      v35 = v1[21];
      sub_10000E3F8();

      v37 = v1[1];

      return v37();
    }

LABEL_21:
    v42 = v19;
    v22 = v1[21];
    v41 = v1[20];
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    v43 = *(v1 + 9);
    (*(v24 + 56))(v22, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v20;
    *(v25 + 40) = v43;
    sub_100005F04(v22, v41, &qword_1005A9690, &qword_1004C2A00);
    v26 = (*(v24 + 48))(v41, 1, v23);

    v27 = v43;
    v28 = v1[20];
    if (v26 == 1)
    {
      sub_100002CE0(v1[20], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v28, v23);
    }

    if (*(v25 + 16))
    {
      v29 = *(v25 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = *v1[16];
    v34 = swift_allocObject();
    *(v34 + 16) = &unk_1004D2E78;
    *(v34 + 24) = v25;

    if (v32 | v30)
    {
      v14 = v1 + 7;
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = v30;
      v1[10] = v32;
    }

    else
    {
      v14 = 0;
    }

    v15 = v1[21];
    v1[11] = 1;
    v1[12] = v14;
    v1[13] = v33;
    swift_task_create();

    result = sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v8 = v18;
    v9 = v42;
    v6 = v39;
    v2 = v40;
    v13 = v38;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_17:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BA4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002BA4F4, a4, 0);
}

uint64_t sub_1002BA4F4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1002BA5D8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD00000000000001ALL, 0x80000001004E69A0, sub_1002BD008, v1, &type metadata for () + 8);
}

uint64_t sub_1002BA5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1002BA700;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1000161B8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002BA700()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_1002BA768, 0, 0);
}

uint64_t sub_1002BA768()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "didDiscover error: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002BA904(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1002BA94C, v1, 0);
}

uint64_t sub_1002BA94C()
{
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "FriendshipService: didUpdate %@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  v10 = v0[3];

  v0[5] = *(v10 + OBJC_IVAR____TtC13findmylocated17FriendshipService_connectionPool);
  sub_10004B564(&qword_1005B0EE0, &qword_1004D2E28);
  sub_10001DF0C(&qword_1005B0EE8, &qword_1005B0EE0, &qword_1004D2E28);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BAB40, v12, v11);
}

uint64_t sub_1002BAB40()
{
  v1 = v0[5];
  v2 = v0[3];
  v0[6] = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1002BABB0, v2, 0);
}

uint64_t sub_1002BABB0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1002BCCE0(&qword_1005B0EA8, 255, type metadata accessor for FriendshipService);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v3;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1002BACEC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, v2, v5, &unk_1004D2E38, v6, &type metadata for () + 8);
}

uint64_t sub_1002BACEC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 24);
  v6 = *v0;

  return _swift_task_switch(sub_1000161B8, v4, 0);
}

uint64_t sub_1002BAE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002BAEE8, 0, 0);
}

uint64_t sub_1002BAEE8()
{
  v1 = v0;
  v2 = v0[17];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[17];
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for FriendshipServiceClient();
    sub_1002BCCE0(&qword_1005B0EB8, v4, type metadata accessor for FriendshipServiceClient);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v6 = v0[3];
    v7 = v1[4];
    v8 = v1[5];
    v9 = v1[6];
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
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

    v9 = v12 & *(v2 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v39 = v6;
  v40 = v2;
  v38 = v13;
  while (v2 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v1[15] = v21, type metadata accessor for FriendshipServiceClient(), swift_dynamicCast(), v20 = v1[14], v18 = v8, v19 = v9, !v20))
    {
LABEL_29:
      v36 = v1[20];
      v35 = v1[21];
      sub_10000E3F8();

      v37 = v1[1];

      return v37();
    }

LABEL_21:
    v42 = v19;
    v22 = v1[21];
    v41 = v1[20];
    v23 = type metadata accessor for TaskPriority();
    v24 = *(v23 - 8);
    v43 = *(v1 + 9);
    (*(v24 + 56))(v22, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v20;
    *(v25 + 40) = v43;
    sub_100005F04(v22, v41, &qword_1005A9690, &qword_1004C2A00);
    v26 = (*(v24 + 48))(v41, 1, v23);

    v27 = v43;
    v28 = v1[20];
    if (v26 == 1)
    {
      sub_100002CE0(v1[20], &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v24 + 8))(v28, v23);
    }

    if (*(v25 + 16))
    {
      v29 = *(v25 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = *v1[16];
    v34 = swift_allocObject();
    *(v34 + 16) = &unk_1004D2E48;
    *(v34 + 24) = v25;

    if (v32 | v30)
    {
      v14 = v1 + 7;
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = v30;
      v1[10] = v32;
    }

    else
    {
      v14 = 0;
    }

    v15 = v1[21];
    v1[11] = 1;
    v1[12] = v14;
    v1[13] = v33;
    swift_task_create();

    result = sub_100002CE0(v15, &qword_1005A9690, &qword_1004C2A00);
    v8 = v18;
    v9 = v42;
    v6 = v39;
    v2 = v40;
    v13 = v38;
  }

  v16 = v8;
  v17 = v9;
  v18 = v8;
  if (v9)
  {
LABEL_17:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v2 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v13)
    {
      goto LABEL_29;
    }

    v17 = *(v6 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002BB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002BB3E4, a4, 0);
}

uint64_t sub_1002BB3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to withOnceCheckedThrowingContinuation<A>(function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1002BB4C8;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v3, 0xD000000000000018, 0x80000001004E6980, sub_1002BD004, v1, &type metadata for () + 8);
}

uint64_t sub_1002BB4C8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1002BB5F0;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_1000161B8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002BB5F0()
{
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_1002BCFDC, 0, 0);
}

uint64_t sub_1002BB690()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002BB6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AB71C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BB7A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002BB7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002ABB8C(a1, v4, v5, v6);
}

uint64_t sub_1002BB8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002AC9A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BB9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002ACE14(a1, v4, v5, v6);
}

unint64_t sub_1002BBA60()
{
  result = qword_1005B0EC8;
  if (!qword_1005B0EC8)
  {
    sub_10004B610(&qword_1005B0060, &qword_1004D15E8);
    sub_1002BCCE0(&qword_1005B0ED0, 255, &type metadata accessor for Friend);
    sub_1002BCCE0(&qword_1005B0ED8, 255, &type metadata accessor for FriendshipAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0EC8);
  }

  return result;
}

uint64_t sub_1002BBB54(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10000368C;

  return sub_1002BAE3C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002BBC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002BB3C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002BBCE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10007B690(a1, v5);
}

uint64_t sub_1002BBD98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100003690;

  return sub_1002B9F4C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002BBE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002BA4D4(a1, v4, v5, v6, v7);
}

uint64_t sub_1002BBF24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100003690;

  return sub_1002B47E0(v2, v3, v4);
}

uint64_t sub_1002BBFEC()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + 1);
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1002BC094;

  return v5();
}

uint64_t sub_1002BC094(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1002BC194, 0, 0);
}

uint64_t sub_1002BC194()
{
  v19 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Friendship Service: removed connection: %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002BC36C(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1002BC390, 0, 0);
}

uint64_t sub_1002BC390()
{
  v15 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    swift_errorRetain();
    if (qword_1005A8100 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 16);
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0000);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v2, 1);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v8 = 136446466;
      *(v8 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E69E0, &v14);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v8, 0x16u);
      sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v10);

      sub_1002BC5B4(v7, 1);
    }

    else
    {

      sub_1002BC5B4(v7, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002BC5B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1002BC5C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002BC600(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1002B4A34(a1, v4, v5, v6);
}

uint64_t sub_1002BC6B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000368C;

  return sub_1002B5374(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1002BC77C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1002B6370(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002BC844(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1002B6CD0(a1, v1 + v5, v8, v9);
}

uint64_t sub_1002BC978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFD5C();
}

uint64_t sub_1002BCA14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002AFDEC();
}

uint64_t sub_1002BCAB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1002B31DC();
}

uint64_t sub_1002BCB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BCBB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D40;

  return sub_1002AEEB0(a1, v1);
}

uint64_t sub_1002BCC48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1002AF058(v2);
}

uint64_t sub_1002BCCE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1002BCD28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_1002AF2A8();
}

uint64_t sub_1002BCDDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002BCE30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1002B3DFC(a1, v4, v5, v7, v6);
}

unint64_t sub_1002BCF04()
{
  result = qword_1005B0F18;
  if (!qword_1005B0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0F18);
  }

  return result;
}

unint64_t sub_1002BCF6C()
{
  result = qword_1005B0F20;
  if (!qword_1005B0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0F20);
  }

  return result;
}

uint64_t sub_1002BCFC0(uint64_t a1)
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

uint64_t sub_1002BD010(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1002BD030, v1, 0);
}

uint64_t sub_1002BD030()
{
  v14 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0000);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0x2873646E65697266, 0xEE00293A68746977, &v13);
    *(v6 + 12) = 2080;
    type metadata accessor for HandleType();
    v7 = Array.description.getter();
    v9 = sub_10000D01C(v7, v8, &v13);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s with types: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  *(v0 + 32) = v11;
  *v11 = v0;
  v11[1] = sub_1002BD24C;

  return daemon.getter();
}

uint64_t sub_1002BD24C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002BD428;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002BD428(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_1001268B0, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v4[8] = a1;
    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_1002BD5C0;
    v10 = v4[2];

    return sub_10001C61C(v10, 1);
  }
}

uint64_t sub_1002BD5C0(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1002BD6D8, v3, 0);
}

uint64_t sub_1002BD6D8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_1002BD760()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x676E6152706F7473, 0xED00002928676E69, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1002BD914;

  return daemon.getter();
}

uint64_t sub_1002BD914(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v6 = v12;
  v6[1] = sub_1002BDAF0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002BDAF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10013A3F0, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = swift_task_alloc();
    v4[8] = v9;
    *v9 = v6;
    v9[1] = sub_1002BDC78;

    return sub_1003CD35C();
  }
}

uint64_t sub_1002BDC78()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10013A454;
  }

  else
  {
    v6 = sub_100016108;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002BDDA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002BDDC8, v2, 0);
}

uint64_t sub_1002BDDC8()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E6D10, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1002BDF74;

  return daemon.getter();
}

uint64_t sub_1002BDF74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CommandManager();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_1002BE150;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002BE150(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002CE9BC, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_1002BE2DC;
    v10 = v4[2];
    v11 = v4[3];

    return sub_1000669FC(v10, v11);
  }
}

uint64_t sub_1002BE2DC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1002BE408;
  }

  else
  {
    v6 = sub_100253E7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002BE408()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002BE46C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002BE500;

  return daemon.getter();
}

uint64_t sub_1002BE500(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002BE6DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002BE6DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1001268B0;
  }

  else
  {
    v9 = v4[5];

    v4[8] = a1;
    v8 = sub_1002BE818;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002BE818()
{
  *(v0 + 72) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 80) = v1;
  v2 = *(v1 - 8);
  *(v0 + 88) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 232) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.following(_:);
  v7 = *(v2 + 104);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1002BE99C;
  v9 = *(v0 + 64);

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002BE99C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1002BEAD0, v4, 0);
}

uint64_t sub_1002BEAD0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v6 = v5 + *(v0 + 88);
  v7 = swift_allocObject();
  *(v0 + 136) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.follower(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1002BEBC8;
  v9 = *(v0 + 64);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1002BEBC8(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1002BECFC, v4, 0);
}

uint64_t sub_1002BECFC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v6 = v5 + *(v0 + 88);
  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.futureFollower(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_1002BEDF4;
  v9 = *(v0 + 64);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1002BEDF4(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002BEF28, v4, 0);
}

uint64_t sub_1002BEF28()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v6 = v5 + *(v0 + 88);
  v7 = swift_allocObject();
  *(v0 + 184) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.futureFollowing(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1002BF020;
  v9 = *(v0 + 64);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1002BF020(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002BF154, v4, 0);
}

uint64_t sub_1002BF154()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = (*(v0 + 232) + 32) & ~*(v0 + 232);
  v6 = v5 + *(v0 + 88);
  v7 = swift_allocObject();
  *(v0 + 208) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.pendingOffer(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = sub_1002BF24C;
  v9 = *(v0 + 64);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1002BF24C(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1002BF380, v4, 0);
}

uint64_t sub_1002BF380()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[8];
  v7 = v0[2];
  FriendContainer.init(followers:following:futureFollowers:futureFollowing:pendingOffers:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002BF404(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ClientOrigin();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for RequestOrigin();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for GroupID();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v14 = type metadata accessor for Friend();
  v3[19] = v14;
  v15 = *(v14 - 8);
  v3[20] = v15;
  v16 = *(v15 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v17 = type metadata accessor for FollowerState();
  v3[23] = v17;
  v18 = *(v17 - 8);
  v3[24] = v18;
  v19 = *(v18 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v20 = type metadata accessor for FollowingState();
  v3[29] = v20;
  v21 = *(v20 - 8);
  v3[30] = v21;
  v22 = *(v21 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v23 = type metadata accessor for Handle();
  v3[34] = v23;
  v24 = *(v23 - 8);
  v3[35] = v24;
  v25 = *(v24 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v26 = async function pointer to daemon.getter[1];
  v27 = swift_task_alloc();
  v3[39] = v27;
  *v27 = v3;
  v27[1] = sub_1002BF7E8;

  return daemon.getter();
}

uint64_t sub_1002BF7E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  v12 = *v1;
  v3[40] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[41] = v6;
  v7 = type metadata accessor for Daemon();
  v3[42] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[43] = v9;
  v10 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002BF9C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002BF9C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v10 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_1002C0D40;
  }

  else
  {
    v7 = v3[40];
    v8 = v3[4];

    v6 = sub_1002BFAF0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002BFAF0()
{
  v1 = v0[38];
  v2 = v0[3];
  FriendshipCanShareLocationRequest.handle.getter();
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_1002BFB8C;

  return daemon.getter();
}

uint64_t sub_1002BFB8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *v1;
  v3[47] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[48] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1002BFD40;
  v10 = v3[43];
  v11 = v3[42];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002BFD40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C0EA8, v7, 0);
  }

  else
  {
    v8 = v4[47];

    v9 = swift_task_alloc();
    v4[51] = v9;
    *v9 = v6;
    v9[1] = sub_1002BFEC8;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002BFEC8(char a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 508) = a1;

  return _swift_task_switch(sub_1002BFFE0, v3, 0);
}

uint64_t sub_1002BFFE0()
{
  *(v0 + 416) = sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  *(v0 + 424) = v1;
  v2 = *(v1 - 8);
  *(v0 + 432) = *(v2 + 72);
  v3 = *(v2 + 80);
  *(v0 + 504) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 440) = v5;
  *(v5 + 16) = xmmword_1004C1900;
  v6 = enum case for HandleType.following(_:);
  v7 = *(v2 + 104);
  *(v0 + 448) = v7;
  *(v0 + 456) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v5 + v4, v6, v1);
  v8 = swift_task_alloc();
  *(v0 + 464) = v8;
  *v8 = v0;
  v8[1] = sub_1002C0164;
  v9 = *(v0 + 352);

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002C0164(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1002C0298, v4, 0);
}

uint64_t sub_1002C0298()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 424);
  v4 = *(v0 + 416);
  v5 = (*(v0 + 504) + 32) & ~*(v0 + 504);
  v6 = v5 + *(v0 + 432);
  v7 = swift_allocObject();
  *(v0 + 480) = v7;
  *(v7 + 16) = xmmword_1004C1900;
  v2(v7 + v5, enum case for HandleType.follower(_:), v3);
  v8 = swift_task_alloc();
  *(v0 + 488) = v8;
  *v8 = v0;
  v8[1] = sub_1002C0390;
  v9 = *(v0 + 352);

  return sub_10001C61C(v7, 1);
}

uint64_t sub_1002C0390(uint64_t a1)
{
  v2 = *(*v1 + 488);
  v3 = *(*v1 + 480);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_1002C04C4, v4, 0);
}

uint64_t sub_1002C04C4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 400);
  v3 = *(v0 + 304);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v3;
  sub_10044FE2C(sub_1002CE9A0, v1, v6);

  v7 = *(v5 + 48);
  if (v7(v6, 1, v4) == 1)
  {
    v8 = *(v0 + 508);
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    sub_100002CE0(*(v0 + 144), &qword_1005A9188, &unk_1004D80D0);
    v13 = &enum case for FollowerState.notShared(_:);
    if (!v8)
    {
      v13 = &enum case for FollowerState.notEligible(_:);
    }

    (*(v12 + 104))(v10, *v13, v11);
    (*(v12 + 32))(v9, v10, v11);
  }

  else
  {
    v14 = *(v0 + 24);
    (*(*(v0 + 160) + 32))(*(v0 + 176), *(v0 + 144), *(v0 + 152));
    CanShareLocation = FriendshipCanShareLocationRequest.isFromGroup.getter();
    if (CanShareLocation == 2 || (CanShareLocation & 1) == 0)
    {
      v27 = *(v0 + 224);
      v28 = *(v0 + 184);
      v29 = *(v0 + 192);
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      (*(v29 + 104))(v27, enum case for FollowerState.shared(_:), v28);
    }

    else
    {
      v16 = *(v0 + 112);
      v17 = *(v0 + 96);
      v18 = *(v0 + 72);
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);
      v21 = *(v0 + 48);
      v112 = *(v0 + 40);
      v22 = *(v0 + 24);
      FriendshipCanShareLocationRequest.origin.getter();
      RequestOrigin.origin.getter();
      (*(v19 + 8))(v17, v18);
      v23 = (*(v21 + 88))(v20, v112);
      v24 = *(v16 + 104);
      v25 = *(v0 + 128);
      v26 = *(v0 + 104);
      if (v23 == enum case for ClientOrigin.messagesApp(_:))
      {
        v24(v25, enum case for GroupID.group(_:), v26);
      }

      else
      {
        v30 = *(v0 + 64);
        v31 = *(v0 + 40);
        v32 = *(v0 + 48);
        v24(v25, enum case for GroupID.oneToOne(_:), v26);
        (*(v32 + 8))(v30, v31);
      }

      v33 = *(v0 + 296);
      v35 = *(v0 + 272);
      v34 = *(v0 + 280);
      v36 = *(v0 + 176);
      Friend.handle.getter();
      v37 = Handle.expiresByGroupId.getter();
      (*(v34 + 8))(v33, v35);
      if (*(v37 + 16))
      {
        sub_1001FDE8C(*(v0 + 128));
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v0 + 176);
      v41 = *(v0 + 152);
      v42 = *(v0 + 160);
      (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
      (*(v42 + 8))(v40, v41);

      v43 = *(v0 + 192);
      if (v39)
      {
        (*(v43 + 104))(*(v0 + 216), enum case for FollowerState.shared(_:), *(v0 + 184));
      }

      else
      {
        if (*(v0 + 508) == 1)
        {
          v44 = &enum case for FollowerState.notShared(_:);
        }

        else
        {
          v44 = &enum case for FollowerState.notEligible(_:);
        }

        (*(v43 + 104))(*(v0 + 216), *v44, *(v0 + 184));
      }

      (*(*(v0 + 192) + 32))(*(v0 + 224), *(v0 + 216), *(v0 + 184));
    }
  }

  v45 = *(v0 + 472);
  v46 = *(v0 + 304);
  v47 = *(v0 + 152);
  v48 = *(v0 + 136);
  *(swift_task_alloc() + 16) = v46;
  sub_10044FE2C(sub_1002CE9A0, v45, v48);

  if (v7(v48, 1, v47) == 1)
  {
    v49 = *(v0 + 264);
    v50 = *(v0 + 232);
    v51 = *(v0 + 240);
    sub_100002CE0(*(v0 + 136), &qword_1005A9188, &unk_1004D80D0);
    v52 = &enum case for FollowingState.notShared(_:);
LABEL_25:
    (*(v51 + 104))(v49, *v52, v50);
    goto LABEL_36;
  }

  v53 = *(v0 + 24);
  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 152));
  v54 = FriendshipCanShareLocationRequest.isFromGroup.getter();
  if (v54 == 2)
  {
    v49 = *(v0 + 264);
    v50 = *(v0 + 232);
    v51 = *(v0 + 240);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v52 = &enum case for FollowingState.shared(_:);
    goto LABEL_25;
  }

  v55 = v54;
  v56 = *(v0 + 112);
  v58 = *(v0 + 80);
  v57 = *(v0 + 88);
  v59 = *(v0 + 72);
  v61 = *(v0 + 48);
  v60 = *(v0 + 56);
  v62 = *(v0 + 40);
  v63 = *(v0 + 24);
  FriendshipCanShareLocationRequest.origin.getter();
  RequestOrigin.origin.getter();
  (*(v58 + 8))(v57, v59);
  v64 = (*(v61 + 88))(v60, v62);
  v65 = *(v56 + 104);
  if (v64 == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v55)
    {
      v66 = &enum case for GroupID.group(_:);
    }

    else
    {
      v66 = &enum case for GroupID.oneToOne(_:);
    }

    v65(*(v0 + 120), *v66, *(v0 + 104));
  }

  else
  {
    v68 = *(v0 + 48);
    v67 = *(v0 + 56);
    v69 = *(v0 + 40);
    v65(*(v0 + 120), enum case for GroupID.oneToOne(_:), *(v0 + 104));
    (*(v68 + 8))(v67, v69);
  }

  v71 = *(v0 + 280);
  v70 = *(v0 + 288);
  v72 = *(v0 + 272);
  v73 = *(v0 + 168);
  Friend.handle.getter();
  v74 = Handle.expiresByGroupId.getter();
  (*(v71 + 8))(v70, v72);
  v75 = &enum case for FollowingState.notShared(_:);
  if (*(v74 + 16))
  {
    sub_1001FDE8C(*(v0 + 120));
    if (v76)
    {
      v75 = &enum case for FollowingState.shared(_:);
    }
  }

  v78 = *(v0 + 256);
  v77 = *(v0 + 264);
  v79 = *(v0 + 232);
  v80 = *(v0 + 240);
  v82 = *(v0 + 160);
  v81 = *(v0 + 168);
  v83 = *(v0 + 152);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v82 + 8))(v81, v83);

  (*(v80 + 104))(v78, *v75, v79);
  (*(v80 + 32))(v77, v78, v79);
LABEL_36:
  v95 = *(v0 + 352);
  v96 = *(v0 + 392);
  v98 = *(v0 + 304);
  v99 = *(v0 + 296);
  v84 = *(v0 + 280);
  v85 = *(v0 + 264);
  v97 = *(v0 + 272);
  v86 = *(v0 + 248);
  v100 = *(v0 + 288);
  v101 = *(v0 + 256);
  v88 = *(v0 + 232);
  v87 = *(v0 + 240);
  v94 = *(v0 + 224);
  v102 = *(v0 + 216);
  v103 = *(v0 + 208);
  v90 = *(v0 + 184);
  v89 = *(v0 + 192);
  v104 = *(v0 + 176);
  v105 = *(v0 + 168);
  v106 = *(v0 + 144);
  v107 = *(v0 + 136);
  v108 = *(v0 + 128);
  v109 = *(v0 + 120);
  v110 = *(v0 + 96);
  v111 = *(v0 + 88);
  v113 = *(v0 + 64);
  v114 = *(v0 + 56);
  v91 = *(v0 + 16);
  (*(v89 + 16))(*(v0 + 200));
  (*(v87 + 16))(v86, v85, v88);
  FriendshipState.init(followerState:followingState:)();

  (*(v89 + 8))(v94, v90);
  (*(v87 + 8))(v85, v88);
  (*(v84 + 8))(v98, v97);

  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_1002C0D40()
{
  v1 = v0[40];

  v24 = v0[45];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[8];
  v23 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002C0EA8()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[38];
  v4 = v0[34];
  v5 = v0[35];

  (*(v5 + 8))(v3, v4);
  v28 = v0[50];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[31];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[11];
  v26 = v0[8];
  v27 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002C103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Handle();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = type metadata accessor for Friend();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005B0F38, &qword_1004D3340) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for GroupID();
  v5[15] = v14;
  v15 = *(v14 - 8);
  v5[16] = v15;
  v16 = *(v15 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v5[19] = v18;
  *v18 = v5;
  v18[1] = sub_1002C1268;

  return daemon.getter();
}

uint64_t sub_1002C1268(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002C1444;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C1444(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v10 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_1002C1DD0;
  }

  else
  {
    v7 = v3[20];
    v8 = v3[6];

    v6 = sub_1002C156C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C156C()
{
  if (v0[5])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v4 = v0[16];
    v3 = v0[17];
    v5 = v0[15];
    (*(v4 + 104))(v3, enum case for GroupID.oneToOne(_:), v5);
    GroupID.rawValue.getter();
    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];

  GroupID.init(rawValue:)();
  v9 = *(v7 + 48);
  v10 = v9(v8, 1, v6);
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  if (v10 == 1)
  {
    (*(v12 + 104))(v11, enum case for GroupID.defaultId(_:), v0[15]);
    if (v9(v14, 1, v13) != 1)
    {
      sub_100002CE0(v0[14], &qword_1005B0F38, &qword_1004D3340);
    }
  }

  else
  {
    (*(v12 + 32))(v11, v0[14], v0[15]);
  }

  v15 = v0[22];

  return _swift_task_switch(sub_1002C1710, v15, 0);
}

uint64_t sub_1002C1710()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[24] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.follower(_:), v1);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1002C1874;
  v7 = v0[22];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002C1874(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1002C19A8, v4, 0);
}

uint64_t sub_1002C19A8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[3];
  *(swift_task_alloc() + 16) = v6;
  sub_10044FE2C(sub_1002CE9A0, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[22];
    v8 = v0[18];
    v9 = v0[15];
    v10 = v0[16];
    sub_100002CE0(v0[10], &qword_1005A9188, &unk_1004D80D0);
    sub_10006DC90();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();

    (*(v10 + 8))(v8, v9);
    v13 = v0[17];
    v12 = v0[18];
    v15 = v0[13];
    v14 = v0[14];
    v17 = v0[9];
    v16 = v0[10];

    v18 = v0[1];
    goto LABEL_10;
  }

  v20 = v0[8];
  v19 = v0[9];
  v21 = v0[7];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  Friend.handle.getter();
  v22 = Handle.expiresByGroupId.getter();
  (*(v20 + 8))(v19, v21);
  if (!*(v22 + 16))
  {
    v36 = v0[22];
    v37 = v0[18];
    v38 = v0[15];
    v39 = v0[16];
    v41 = v0[12];
    v40 = v0[13];
    v42 = v0[11];

    (*(v41 + 8))(v40, v42);
    (*(v39 + 8))(v37, v38);
LABEL_8:
    v33 = type metadata accessor for Date();
    v34 = *(v33 - 8);
    v35 = 1;
    goto LABEL_9;
  }

  v23 = sub_1001FDE8C(v0[18]);
  v24 = v0[22];
  v25 = v0[18];
  v27 = v0[15];
  v26 = v0[16];
  v28 = v0[12];
  v29 = v0[13];
  v30 = v0[11];
  if ((v31 & 1) == 0)
  {
    v43 = v0[22];

    (*(v28 + 8))(v29, v30);
    (*(v26 + 8))(v25, v27);
    goto LABEL_8;
  }

  v32 = v23;
  v51 = *(v22 + 56);
  v52 = v0[2];
  v53 = v0[15];
  v54 = v0[18];
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v52, v51 + *(v34 + 72) * v32, v33);

  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v54, v53);

  v35 = 0;
LABEL_9:
  v45 = v0[17];
  v44 = v0[18];
  v47 = v0[13];
  v46 = v0[14];
  v49 = v0[9];
  v48 = v0[10];
  (*(v34 + 56))(v0[2], v35, 1, v33);

  v18 = v0[1];
LABEL_10:

  return v18();
}

uint64_t sub_1002C1DD0()
{
  v1 = v0[20];

  v2 = v0[23];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C1E7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequestResult();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002C1F78, v2, 0);
}

uint64_t sub_1002C1F78()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1002C2128;

  return daemon.getter();
}

uint64_t sub_1002C2128(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  v3[11] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[12] = v6;
  v7 = type metadata accessor for Daemon();
  v3[13] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[14] = v9;
  v10 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1002C2308;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C2308(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C2F58, v7, 0);
  }

  else
  {
    v8 = v4[11];

    v9 = swift_task_alloc();
    v4[17] = v9;
    *v9 = v6;
    v9[1] = sub_1002C2490;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002C2490(char a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_1002C25A8, v3, 0);
}

uint64_t sub_1002C25A8()
{
  v15 = v0;
  if (*(v0 + 200) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1002C27A8;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 72);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v14);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Manatee is not available!", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 120);
    sub_10006DC90();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    v10 = *(v0 + 64);
    v11 = *(v0 + 40);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1002C27A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *v1;
  v3[19] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[20] = v7;
  v8 = type metadata accessor for CommandManager();
  v9 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v7 = v5;
  v7[1] = sub_1002C295C;
  v10 = v3[14];
  v11 = v3[13];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002C295C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C2FD0, v7, 0);
  }

  else
  {
    v8 = v4[19];

    v9 = swift_task_alloc();
    v4[23] = v9;
    *v9 = v6;
    v9[1] = sub_1002C2AE8;
    v10 = v4[2];
    v11 = v4[3];

    return sub_10005D170(v10, v11);
  }
}

uint64_t sub_1002C2AE8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1002C3054;
  }

  else
  {
    v6 = sub_1002C2C14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C2C14()
{
  v28 = v0;
  v1 = v0[9];
  (*(v0[7] + 16))(v0[8], v0[2], v0[6]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004E6D50, &v27);
    *(v8 + 12) = 2080;
    sub_100009560(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v5, v7);
    v12 = sub_10000D01C(v9, v11, &v27);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s result %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[3];
  if (FriendshipRequest.shouldShowAlertIfThisDeviceIsNotBeingUsedToShareLocation.getter())
  {
    v14 = v0[15];
    v16 = v0[4];
    v15 = v0[5];
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    v18 = sub_100009560(&qword_1005B0EA8, type metadata accessor for FriendshipService);
    v19 = swift_allocObject();
    v19[2] = v16;
    v19[3] = v18;
    v19[4] = v16;
    swift_retain_n();
    sub_1001D7F30(0, 0, v15, &unk_1004D3330, v19);

    v20 = 21;
  }

  else
  {
    v21 = v0[21];
    v20 = 15;
  }

  v22 = v0[v20];
  v23 = v0[8];
  v24 = v0[5];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1002C2F58()
{
  v1 = v0[11];

  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002C2FD0()
{
  v1 = v0[19];
  v2 = v0[15];

  v3 = v0[22];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002C3054()
{
  v1 = v0[21];
  v2 = v0[15];

  v3 = v0[24];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002C30D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1002D3B90();
}

uint64_t sub_1002C3168(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FriendshipRequestResult();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002C322C, v2, 0);
}

uint64_t sub_1002C322C()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6D30, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1002C33DC;

  return daemon.getter();
}

uint64_t sub_1002C33DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CommandManager();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v6 = v12;
  v6[1] = sub_1002C35B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C35B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C3AAC, v7, 0);
  }

  else
  {
    v8 = v4[10];

    v9 = swift_task_alloc();
    v4[14] = v9;
    *v9 = v6;
    v9[1] = sub_1002C3744;
    v10 = v4[2];
    v11 = v4[3];

    return sub_10005D170(v10, v11);
  }
}

uint64_t sub_1002C3744()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1002C3B1C;
  }

  else
  {
    v6 = sub_1002C3870;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C3870()
{
  v20 = v0;
  v1 = v0[8];
  (*(v0[6] + 16))(v0[7], v0[2], v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v4)
  {
    v18 = v0[12];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E6D30, &v19);
    *(v9 + 12) = 2080;
    sub_100009560(&qword_1005A91D8, &type metadata accessor for FriendshipRequestResult);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v7 + 8))(v6, v8);
    v13 = sub_10000D01C(v10, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s result %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[12];

    (*(v7 + 8))(v6, v8);
  }

  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002C3AAC()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C3B1C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C3B8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1002C3BB0, v2, 0);
}

uint64_t sub_1002C3BB0()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6D70, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1002C3D60;

  return daemon.getter();
}

uint64_t sub_1002C3D60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  v3[7] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[8] = v6;
  v7 = type metadata accessor for Daemon();
  v3[9] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[10] = v9;
  v10 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1002C3F40;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C3F40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C48A8, v7, 0);
  }

  else
  {
    v8 = v4[7];

    v9 = swift_task_alloc();
    v4[13] = v9;
    *v9 = v6;
    v9[1] = sub_1002C40C8;

    return sub_1001BE02C();
  }
}

uint64_t sub_1002C40C8(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1002C41E0, v3, 0);
}

uint64_t sub_1002C41E0()
{
  v13 = v0;
  if (*(v0 + 168) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1002C43CC;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6D70, &v12);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Manatee is not available!", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 88);
    sub_10006DC90();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1002C43CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[16] = v7;
  v8 = type metadata accessor for CommandManager();
  v9 = sub_100009560(&qword_1005A90C8, type metadata accessor for CommandManager);
  *v7 = v5;
  v7[1] = sub_1002C4580;
  v10 = v3[10];
  v11 = v3[9];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002C4580(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_1002C490C, v7, 0);
  }

  else
  {
    v8 = v4[15];

    v9 = swift_task_alloc();
    v4[19] = v9;
    *v9 = v6;
    v9[1] = sub_1002C470C;
    v10 = v4[2];
    v11 = v4[3];

    return sub_100060778(v10, v11);
  }
}

uint64_t sub_1002C470C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1002C497C;
  }

  else
  {
    v6 = sub_1002C4838;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C4838()
{
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002C48A8()
{
  v1 = v0[7];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002C490C()
{
  v1 = v0[15];
  v2 = v0[11];

  v3 = v0[18];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C497C()
{
  v1 = v0[17];
  v2 = v0[11];

  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C49EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Handle();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = type metadata accessor for Friend();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1002C4B4C, v1, 0);
}

uint64_t sub_1002C4B4C()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6CF0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1002C4CFC;

  return daemon.getter();
}

uint64_t sub_1002C4CFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  v3[14] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[15] = v6;
  v7 = type metadata accessor for Daemon();
  v3[16] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[17] = v9;
  v10 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1002C4EDC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C4EDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1002C5C34;
  }

  else
  {
    v9 = v4[14];

    v8 = sub_1002C5014;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002C5014()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1002C5178;
  v7 = v0[18];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_1002C5178(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1002C52AC, v4, 0);
}

uint64_t sub_1002C52AC()
{
  v34 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[2];
  *(swift_task_alloc() + 16) = v6;
  sub_10044FE2C(sub_1002CE78C, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[12];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = v0[2];
    sub_100002CE0(v0[8], &qword_1005A9188, &unk_1004D80D0);
    (*(v9 + 16))(v8, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v18 = 136446723;
      *(v18 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6CF0, v33);
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      *(v18 + 22) = 2081;
      v19 = Handle.identifier.getter();
      v21 = v20;
      (*(v16 + 8))(v15, v17);
      v22 = sub_10000D01C(v19, v21, v33);

      *(v18 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s missing following serverID for %{private,mask.hash}s!", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v25 = v0[18];
    sub_10006DC90();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

    v27 = v0[11];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];

    v31 = v0[1];

    return v31();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v23 = async function pointer to daemon.getter[1];
    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_1002C5638;

    return daemon.getter();
  }
}

uint64_t sub_1002C5638(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;
  v3[24] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[25] = v7;
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v7 = v5;
  v7[1] = sub_1002C57EC;
  v10 = v3[17];
  v11 = v3[16];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002C57EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  v7 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v8 = *(v3 + 24);
  if (v1)
  {
    v9 = sub_1002C5CC8;
  }

  else
  {
    v9 = sub_1002C593C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002C593C()
{
  v1 = v0[11];
  v2 = v0[7];
  Friend.handle.getter();
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1002C59E0;
  v4 = v0[26];
  v5 = v0[7];

  return sub_1003C94F0(v5);
}

uint64_t sub_1002C59E0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_1002C5D7C;
  }

  else
  {
    v9 = sub_1002C5B68;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002C5B68()
{
  v1 = v0[26];
  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002C5C34()
{
  v1 = v0[14];

  v2 = v0[19];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C5CC8()
{
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  v5 = v0[27];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002C5D7C()
{
  v1 = v0[26];
  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  (*(v4 + 8))(v3, v5);
  v6 = v0[29];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C5E5C()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E6CD0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1002C6008;

  return daemon.getter();
}

uint64_t sub_1002C6008(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v6 = v12;
  v6[1] = sub_1002C61E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C61E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = a1;
  v4[7] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_1002CE9C0, v7, 0);
  }

  else
  {
    v8 = v4[4];

    v9 = swift_task_alloc();
    v4[8] = v9;
    *v9 = v6;
    v9[1] = sub_1002C636C;

    return sub_1003CA834();
  }
}

uint64_t sub_1002C636C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1002CE9BC;
  }

  else
  {
    v6 = sub_1002CE9C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C64B4()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E6C30, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s NOT stopping config ranging session. App needs to stop calling this", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C662C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_1002C6674, v0, 0);
}

uint64_t sub_1002C6674()
{
  v10 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = v1;
  sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1002C6824;

  return daemon.getter();
}

uint64_t sub_1002C6824(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1002C6A00;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C6A00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v10 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[2];
    v6 = sub_100253EE0;
  }

  else
  {
    v7 = v3[6];
    v8 = v3[2];

    v6 = sub_1002C6B28;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C6B28()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1002C6C28;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D32D0, v3, &type metadata for () + 8);
}

uint64_t sub_1002C6C28()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1002C7264;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 16);

    v5 = sub_1002C6D50;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C6D6C()
{
  v11 = v0;
  if (qword_1005A8070 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v0[4], qword_1005DFE80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E6C90, &v10);
    _os_log_impl(&_mh_execute_header, v1, v2, "Deleting CloudKit zone: %s", v3, 0xCu);
    sub_100004984(v4);
  }

  else
  {
  }

  v5 = *(v0[8] + 136);
  v6 = *(&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + 1);
  v9 = (&async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:) + async function pointer to dispatch thunk of CloudKitStorage.delete(zoneName:));
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1002C6F5C;

  return v9(0xD00000000000001ELL, 0x80000001004E6C90);
}

uint64_t sub_1002C6F5C()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_1002C7200, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[15] = v5;
    *v5 = v3;
    v5[1] = sub_1002C70D4;
    v6 = v3[8];

    return sub_1001C177C(&off_10058BCB0);
  }
}

uint64_t sub_1002C70D4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1002C72D4;
  }

  else
  {
    v6 = sub_100253E7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C7200()
{
  v1 = v0[8];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002C7264()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002C72D4()
{
  v1 = v0[8];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002C7338(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002C73F8, 0, 0);
}

uint64_t sub_1002C73F8()
{
  v9 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0000);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for CloudKit to be available", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1002C759C, v6, 0);
}

uint64_t sub_1002C759C()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1002C764C;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1002C764C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002C78BC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1002C7780;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C7780()
{
  v10 = v0;
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E6CB0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s CloudKit is available.", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002C78BC()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  return _swift_task_switch(sub_1002CE9C4, 0, 0);
}

uint64_t sub_1002C7934(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for CloudKitCoordinator.Database();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for FriendSharedSecretsRecord();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for HandleType();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v19 = type metadata accessor for Handle();
  v2[21] = v19;
  v20 = *(v19 - 8);
  v2[22] = v20;
  v21 = *(v20 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1002C7CA8, v1, 0);
}

uint64_t sub_1002C7CA8()
{
  v23 = v0;
  if (qword_1005A8100 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_10000A6F0(v5, qword_1005E0000);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[21];
  v11 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, &v22);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    v14 = Handle.identifier.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_10000D01C(v14, v16, &v22);

    *(v13 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s for handle: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[33] = v20;
  *v20 = v0;
  v20[1] = sub_1002C7F3C;

  return daemon.getter();
}

uint64_t sub_1002C7F3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v12 = *v1;
  v3[34] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[35] = v6;
  v7 = type metadata accessor for Daemon();
  v3[36] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009560(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[37] = v9;
  v10 = sub_100009560(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1002C811C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002C811C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v10 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1002CA2EC;
  }

  else
  {
    v7 = v3[34];
    v8 = v3[3];

    v6 = sub_1002C8244;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C8244()
{
  v1 = v0[38];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[40] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_1002C8344;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D32A8, v3, &type metadata for () + 8);
}

uint64_t sub_1002C8344()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1002CA40C;
  }

  else
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 24);

    v5 = sub_1002C846C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C846C()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_1002C84FC;

  return daemon.getter();
}

uint64_t sub_1002C84FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v5 = *v1;
  v3[44] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[45] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009560(&qword_1005A90D0, type metadata accessor for DataManager);
  *v7 = v5;
  v7[1] = sub_1002C86B0;
  v10 = v3[37];
  v11 = v3[36];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1002C86B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v10 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_1002CA538;
  }

  else
  {
    v7 = v3[44];
    v8 = v3[3];

    v6 = sub_1002C87D8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C87D8()
{
  (*(v0[18] + 104))(v0[19], enum case for HandleType.following(_:), v0[17]);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_1002C889C;
  v2 = v0[46];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[2];

  return sub_1001E5DD0(v3, v5, v4, 0);
}

uint64_t sub_1002C889C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002C8A08, v5, 0);
}

uint64_t sub_1002C8A08()
{
  v68 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v7 = v0[23];
    v8 = v0[2];
    sub_100002CE0(v3, &qword_1005B3360, &unk_1004C6AA0);
    v5(v7, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[32];
    v14 = v0[22];
    v13 = v0[23];
    v15 = v0[21];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v16 = 136446723;
      *(v16 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v67);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      v17 = Handle.identifier.getter();
      v19 = v18;
      v12(v13, v15);
      v20 = sub_10000D01C(v17, v19, v67);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Missing serverID for handle: %{private,mask.hash}s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v12(v13, v15);
    }

    v42 = v0[46];
    v43 = v0[38];
    sub_10006DC90();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();

LABEL_14:
    v52 = v0[27];
    v51 = v0[28];
    v54 = v0[25];
    v53 = v0[26];
    v56 = v0[23];
    v55 = v0[24];
    v58 = v0[19];
    v57 = v0[20];
    v59 = v0[16];
    v60 = v0[13];
    v63 = v0[12];
    v64 = v0[9];
    v65 = v0[8];
    v66 = v0[7];

    v61 = v0[1];

    return v61();
  }

  v21 = v0[14];
  v22 = v0[15];
  v23 = v0[13];
  (*(v1 + 32))(v0[27], v3, v2);
  Handle.peerID.getter();
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v25 = v0[30];
    v24 = v0[31];
    v26 = v0[29];
    v27 = v0[24];
    v28 = v0[21];
    v29 = v0[2];
    sub_100002CE0(v0[13], &qword_1005A96E0, &qword_1004C2A80);
    v25(v27, v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[32];
    v34 = v0[24];
    v35 = v0[21];
    v36 = v0[22];
    if (v32)
    {
      v37 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v37 = 136446723;
      *(v37 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v67);
      *(v37 + 12) = 2160;
      *(v37 + 14) = 1752392040;
      *(v37 + 22) = 2081;
      v38 = Handle.identifier.getter();
      v40 = v39;
      v33(v34, v35);
      v41 = sub_10000D01C(v38, v40, v67);

      *(v37 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s Missing peerID for handle: %{private,mask.hash}s", v37, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v33(v34, v35);
    }

    v45 = v0[46];
    v46 = v0[38];
    v47 = v0[32];
    v48 = v0[27];
    v49 = v0[21];
    sub_10006DC90();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

    v47(v48, v49);
    goto LABEL_14;
  }

  (*(v0[15] + 32))(v0[16], v0[13], v0[14]);

  return _swift_task_switch(sub_1002C8FF0, 0, 0);
}

uint64_t sub_1002C8FF0()
{
  v1 = *(v0[38] + 128);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_1002C9090;
  v3 = v0[16];
  v4 = v0[9];

  return sub_1001C4430(v4, v3);
}

uint64_t sub_1002C9090()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1002C95A0;
  }

  else
  {
    v6 = sub_1002C91BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002C91BC()
{
  v49 = v0;
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v3 = v0[30];
    v2 = v0[31];
    v4 = v0[29];
    v5 = v0[25];
    v6 = v0[21];
    v7 = v0[2];
    sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
    v3(v5, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[32];
    v12 = v0[25];
    v13 = v0[21];
    v14 = v0[22];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E6C70, v48);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      v16 = Handle.identifier.getter();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_10000D01C(v16, v18, v48);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Missing friendSharedSecretsRecord for handle: %{private,mask.hash}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v11(v12, v13);
    }

    v23 = v0[46];
    v24 = v0[38];
    v25 = v0[32];
    v26 = v0[27];
    v27 = v0[21];
    v29 = v0[15];
    v28 = v0[16];
    v30 = v0[14];
    sub_10006DC90();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    (*(v29 + 8))(v28, v30);
    v25(v26, v27);
    v33 = v0[27];
    v32 = v0[28];
    v35 = v0[25];
    v34 = v0[26];
    v37 = v0[23];
    v36 = v0[24];
    v39 = v0[19];
    v38 = v0[20];
    v40 = v0[16];
    v41 = v0[13];
    v44 = v0[12];
    v45 = v0[9];
    v46 = v0[8];
    v47 = v0[7];

    v42 = v0[1];

    return v42();
  }

  else
  {
    v20 = v0[38];
    v21 = v0[12];
    sub_1001B1ABC(v1, v21);
    v22 = swift_task_alloc();
    v0[51] = v22;
    *(v22 + 16) = v21;

    return _swift_task_switch(sub_1002C9710, v20, 0);
  }
}

uint64_t sub_1002C95A0()
{
  v1 = v0[46];
  v2 = v0[38];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];

  (*(v8 + 8))(v7, v9);
  v3(v4, v5);
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v19 = v0[13];
  v22 = v0[12];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[7];
  v26 = v0[50];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002C9710()
{
  v1 = *(v0[38] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_1002C97D8;
  v4 = v0[51];
  v5 = v0[8];

  return v7(v5, &unk_1004D32B8, v4);
}

uint64_t sub_1002C97D8()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = v2[38];
    v5 = sub_1002C9B70;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[3];

    v5 = sub_1002C9900;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C9900()
{
  v1 = v0[38];
  (*(v0[6] + 104))(v0[7], enum case for CloudKitCoordinator.Database.private(_:), v0[5]);

  return _swift_task_switch(sub_1002C9988, v1, 0);
}

uint64_t sub_1002C9988()
{
  v1 = *(v0[38] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_1002C9A38;
  v4 = v0[7];
  v5 = v0[8];

  return v7(v5, v4);
}

uint64_t sub_1002C9A38()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v8 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = v2[38];
    v5 = sub_1002CA0BC;
  }

  else
  {
    v6 = v2[3];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1002C9D6C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002C9B70()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1002C9BDC, v2, 0);
}

uint64_t sub_1002C9BDC()
{
  v1 = v0[46];
  v2 = v0[38];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  v10 = v0[12];

  (*(v8 + 8))(v7, v9);
  v3(v4, v5);
  sub_1002CE88C(v10, type metadata accessor for FriendSharedSecretsRecord);
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v20 = v0[13];
  v23 = v0[12];
  v24 = v0[9];
  v25 = v0[8];
  v26 = v0[7];
  v27 = v0[53];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002C9D6C()
{
  v46 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  (*(v0 + 240))(*(v0 + 208), *(v0 + 16), *(v0 + 168));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v43 = *(v0 + 112);
  v39 = *(v0 + 304);
  v41 = *(v0 + 64);
  if (v5)
  {
    v35 = *(v0 + 368);
    v32 = v4;
    v13 = *(v0 + 256);
    v14 = swift_slowAlloc();
    v37 = v8;
    v15 = swift_slowAlloc();
    v45 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v16 = Handle.identifier.getter();
    v17 = v10;
    v33 = v11;
    v34 = v10;
    v18 = v16;
    v20 = v19;
    v13(v7, v17);
    v21 = sub_10000D01C(v18, v20, &v45);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v3, v32, "Successfully removed peer token for handle: %{private,mask.hash}s", v14, 0x16u);
    sub_100004984(v15);

    sub_100002CE0(v41, &qword_1005AF228, &unk_1004D0440);
    (*(v12 + 8))(v33, v43);
    v13(v37, v34);
  }

  else
  {

    v6(v7, v10);
    sub_100002CE0(v41, &qword_1005AF228, &unk_1004D0440);
    (*(v12 + 8))(v11, v43);
    v6(v8, v10);
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v25 = *(v0 + 200);
  v24 = *(v0 + 208);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 152);
  v29 = *(v0 + 160);
  v36 = *(v0 + 128);
  v38 = *(v0 + 104);
  v40 = *(v0 + 72);
  v42 = *(v0 + 64);
  v44 = *(v0 + 56);
  sub_1002CE88C(*(v0 + 96), type metadata accessor for FriendSharedSecretsRecord);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002CA0BC()
{
  v1 = v0[3];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1002CA138, v1, 0);
}

uint64_t sub_1002CA138()
{
  v1 = v0[46];
  v2 = v0[38];
  v27 = v0[32];
  v3 = v0[27];
  v4 = v0[21];
  v5 = v0[22];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v9 = v0[12];
  v10 = v0[8];

  sub_100002CE0(v10, &qword_1005AF228, &unk_1004D0440);
  (*(v7 + 8))(v6, v8);
  v27(v3, v4);
  sub_1002CE88C(v9, type metadata accessor for FriendSharedSecretsRecord);
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v20 = v0[13];
  v23 = v0[12];
  v24 = v0[9];
  v25 = v0[8];
  v26 = v0[7];
  v28 = v0[55];

  v21 = v0[1];

  return v21();
}