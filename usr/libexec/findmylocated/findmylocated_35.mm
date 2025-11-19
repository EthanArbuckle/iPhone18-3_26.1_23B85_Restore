uint64_t sub_10038F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  return _swift_task_switch(sub_10038F184, 0, 0);
}

uint64_t sub_10038F184()
{
  v17 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  *(v0 + 56) = sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136446723;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v16);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    type metadata accessor for Handle();
    v7 = Array.description.getter();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v6 + 24) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s subscribing shallow locations\nfor: %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  if (*(*(v0 + 32) + 16))
  {
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_10038F414;
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);

    return sub_100353274(v13, v11);
  }

  else
  {
    **(v0 + 24) = sub_1002087C4(_swiftEmptyArrayStorage);
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10038F414(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_10038F6F0;
  }

  else
  {
    v5 = sub_10038F528;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038F528()
{
  v14 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for Handle();
    type metadata accessor for Location();
    sub_100016E78(&qword_1005A91B0, &type metadata accessor for Handle);
    v8 = Dictionary.description.getter();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encrypted latest location: %{private,mask.hash}s", v6, 0x16u);
    sub_100004984(v7);
  }

  **(v0 + 24) = *(v0 + 72);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10038F6F0()
{
  v15 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E88C0, &v14);
    *(v6 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 80);
  v11 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v11;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10038F8C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10038F958;

  return sub_10001CC28();
}

uint64_t sub_10038F958(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038FA58, 0, 0);
}

uint64_t sub_10038FA58()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10038FB5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000001ALL, 0x80000001004E8880, sub_100396164, v4, &type metadata for () + 8);
}

uint64_t sub_10038FB5C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1003966C4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1003966C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10038FC78(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10038FD08;

  return sub_10001CC28();
}

uint64_t sub_10038FD08(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10038FE08, 0, 0);
}

uint64_t sub_10038FE08()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10038FF0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000021, 0x80000001004E8850, sub_100396158, v4, &type metadata for () + 8);
}

uint64_t sub_10038FF0C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100390028;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100207260;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100390028()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100390094(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100390128;

  return sub_10001CC28();
}

uint64_t sub_100390128(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100390240, v3, 0);
}

uint64_t sub_100390240()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100395EB0();
  v0[7] = v3;

  return _swift_task_switch(sub_1003902FC, 0, 0);
}

uint64_t sub_1003902FC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 48);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1003903E8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x80000001004E8830, sub_100396104, v1, &type metadata for () + 8);
}

uint64_t sub_1003903E8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10039056C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100390504;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100390504()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10039056C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[10];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003905E0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10039066C;

  return sub_10001CC28();
}

uint64_t sub_10039066C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10039076C, 0, 0);
}

uint64_t sub_10039076C()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100390844;
  v3 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x80000001004E8810, sub_100395EA8, v3, &type metadata for Data);
}

uint64_t sub_100390844()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1001268B0;
  }

  else
  {
    v3 = sub_100390958;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100390958()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1003909C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100390A50;

  return sub_10001CC28();
}

uint64_t sub_100390A50(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100390B50, 0, 0);
}

uint64_t sub_100390B50()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10038FB5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000015, 0x80000001004E87F0, sub_100395E9C, v4, &type metadata for () + 8);
}

uint64_t sub_100390C54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100390CE0;

  return sub_10001CC28();
}

uint64_t sub_100390CE0(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100390DE0, 0, 0);
}

uint64_t sub_100390DE0()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100390EB4;
  v3 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000010, 0x80000001004E87D0, sub_100395E94, v3, &type metadata for () + 8);
}

uint64_t sub_100390EB4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100390FC8;
  }

  else
  {
    v3 = sub_1003966CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100390FC8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10039104C()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = PropertyListEncoder.init()();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1003910FC;
  v5 = v0[4];

  return sub_10001CC28();
}

uint64_t sub_1003910FC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1003911FC, 0, 0);
}

uint64_t sub_1003911FC()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_10004B564(&qword_1005B24F0, &qword_1004DBFF0);
  v0[9] = v3;
  *v2 = v0;
  v2[1] = sub_1003912F0;
  v4 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x6572616853746567, 0xEF29287379654B64, sub_100395DD8, v4, v3);
}

uint64_t sub_1003912F0()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1003913EC, 0, 0);
}

uint64_t sub_1003913EC()
{
  v1 = v0[7];
  v2 = v0[4];

  v0[10] = v0[2];

  return _swift_task_switch(sub_100391460, v2, 0);
}

uint64_t sub_100391460()
{
  v0[3] = v0[10];
  v1 = v0[9];
  v2 = v0[5];
  sub_100395DE0();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;
  v6 = v0[10];
  v7 = v0[5];

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_10039157C()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = PropertyListEncoder.init()();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10039162C;
  v5 = v0[4];

  return sub_10001CC28();
}

uint64_t sub_10039162C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10039172C, 0, 0);
}

uint64_t sub_10039172C()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  v3 = sub_10004B564(&qword_1005B24E0, &qword_1004D6FF0);
  v0[9] = v3;
  *v2 = v0;
  v2[1] = sub_100391818;
  v4 = v0[7];

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x80000001004E87B0, sub_100395D1C, v4, v3);
}

uint64_t sub_100391818()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_100391914, 0, 0);
}

uint64_t sub_100391914()
{
  v1 = v0[7];
  v2 = v0[4];

  v0[10] = v0[2];

  return _swift_task_switch(sub_100391988, v2, 0);
}

uint64_t sub_100391988()
{
  v0[3] = v0[10];
  v1 = v0[9];
  v2 = v0[5];
  sub_100395D24();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;
  v6 = v0[10];
  v7 = v0[5];

  v8 = v0[1];

  return v8(v3, v5);
}

uint64_t sub_100391A84()
{
  v1[2] = v0;
  v2 = type metadata accessor for SecureLocationsConfig();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100391B18, v0, 0);
}

uint64_t sub_100391B18()
{
  v1 = type metadata accessor for PropertyListEncoder();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[5] = PropertyListEncoder.init()();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100391BC8;
  v5 = v0[2];

  return sub_10001CC28();
}

uint64_t sub_100391BC8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100391CC8, 0, 0);
}

uint64_t sub_100391CC8()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100391DA0;
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x6E6F436863746566, 0xED00002928676966, sub_100395D14, v3, v5);
}

uint64_t sub_100391DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10039200C;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v4 = sub_100391EC8;
    v5 = v7;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100391EC8()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_100016E78(&qword_1005B24D8, type metadata accessor for SecureLocationsConfig);
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v0[4];
  v8 = v0[5];
  if (v1)
  {
    sub_10012BBA0(v0[4]);

    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v5;
    v13 = v6;
    sub_10012BBA0(v0[4]);

    v14 = v0[1];

    return v14(v12, v13);
  }
}

uint64_t sub_10039200C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];

  return _swift_task_switch(sub_100392084, v3, 0);
}

uint64_t sub_100392084()
{
  v1 = v0[9];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003920E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100392108, v1, 0);
}

uint64_t sub_100392108()
{
  v10 = v0;
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
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8760, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[4] = 0x80000001004E8760;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1003922D4;
  v7 = v0[3];

  return sub_10001CC28();
}

uint64_t sub_1003922D4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1003923EC, v3, 0);
}

uint64_t sub_1003923EC()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v4 = v0;
  v4[1] = sub_100392500;
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v1, v2, 0xD000000000000020, v7, sub_100395710, v6, v5);
}

uint64_t sub_100392500()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10029F1F8;
  }

  else
  {
    v6 = sub_100016108;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039262C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 56);
  sub_1000A2EDC(sub_100395718, v10);
}

uint64_t sub_100392770(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100392790, v1, 0);
}

uint64_t sub_100392790()
{
  v10 = v0;
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
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E8740, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[4] = 0x80000001004E8740;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_10039295C;
  v7 = v0[3];

  return sub_10001CC28();
}

uint64_t sub_10039295C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100392A74, v3, 0);
}

uint64_t sub_100392A74()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  *v4 = v0;
  v4[1] = sub_100392B88;
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v1, v2, 0xD000000000000015, v7, sub_100395708, v6, v5);
}

uint64_t sub_100392B88()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1002AB3A4;
  }

  else
  {
    v6 = sub_1002CE9C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100392CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(*(a2 + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  sub_1001166DC(sub_1003966C0, v10);
}

uint64_t sub_100392E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v7, &unk_1005AB4C0, &qword_1004C3440);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v13, v15, v8);
      sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
      CheckedContinuation.resume(returning:)();
      return (*(v9 + 8))(v15, v8);
    }

    sub_100002CE0(v7, &unk_1005AB4C0, &qword_1004C3440);
    sub_1000284BC();
    v16 = swift_allocError();
    *v17 = 0;
    v20 = v16;
  }

  sub_10004B564(&qword_1005B24D0, &qword_1004D6FD0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100393064(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100393084, v1, 0);
}

uint64_t sub_100393084()
{
  v10 = v0;
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
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000014, 0x80000001004E8720, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v0[4] = 0x80000001004E8720;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_100393250;
  v7 = v0[3];

  return sub_10001CC28();
}

uint64_t sub_100393250(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100393368, v3, 0);
}

uint64_t sub_100393368()
{
  v1 = v0[3];
  v2 = sub_100016E78(&qword_1005B23E0, type metadata accessor for LocationService);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = type metadata accessor for SecureLocationsStewie.ServiceState();
  *v4 = v0;
  v4[1] = sub_100392B88;
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v1, v2, 0xD000000000000014, v7, sub_10039566C, v6, v5);
}

uint64_t sub_10039347C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(*(a2 + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100395674;
  *(v12 + 24) = v10;

  sub_10011576C(sub_100395700, v12);
}

uint64_t sub_10039360C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v7, &qword_1005AB4B0, &unk_1004C5410);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v13, v15, v8);
      sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
      CheckedContinuation.resume(returning:)();
      return (*(v9 + 8))(v15, v8);
    }

    sub_100002CE0(v7, &qword_1005AB4B0, &unk_1004C5410);
    sub_1000284BC();
    v16 = swift_allocError();
    *v17 = 0;
    v20 = v16;
  }

  sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100393868()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003938D8()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100393974, v0, 0);
}

uint64_t sub_100393974()
{
  v12 = v0;
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
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8700, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = v0[2];
  v6 = v0[3];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_10035D620(v6);
  sub_100002CE0(v6, &qword_1005A96E0, &qword_1004C2A80);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100393B58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100054E60;

  return sub_100016580(a1, a2);
}

uint64_t sub_100393BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1003871E4(a1, a2, a3);
}

uint64_t sub_100393CA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003788;

  return sub_100384D84(a1);
}

uint64_t sub_100393D3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_100357C48(a1);
}

uint64_t sub_100393DD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000552EC;

  return sub_1003851F0(a1);
}

uint64_t sub_100393E64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000552EC;

  return sub_10038BD40(a1, a2);
}

uint64_t sub_100393F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_100386FAC(a1, a2, a3);
}

uint64_t sub_100393FB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10038F8C8(a1, a2);
}

uint64_t sub_10039405C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10038FC78(a1, a2);
}

uint64_t sub_100394100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_100390094(a1, a2);
}

uint64_t sub_1003941A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_1003905E0();
}

uint64_t sub_100394230(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_1003909C0(a1, a2);
}

uint64_t sub_1003942D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100390C54();
}

uint64_t sub_100394360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_10039102C();
}

uint64_t sub_1003943EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003966BC;

  return sub_10039155C();
}

uint64_t sub_100394478(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100394508;

  return sub_10001CC28();
}

uint64_t sub_100394508()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v6;
  v4[1] = sub_100394640;

  return daemon.getter();
}

uint64_t sub_100394640(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SecureLocationService();
  v9 = sub_100016E78(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100016E78(&qword_1005AD528, type metadata accessor for SecureLocationService);
  *v6 = v12;
  v6[1] = sub_10039481C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10039481C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10013A454, 0, 0);
  }

  else
  {
    v7 = v4[6];

    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v6;
    v8[1] = sub_1003949AC;
    v9 = v4[3];
    v10 = v4[2];

    return sub_10045FAC0(v10, v9);
  }
}

uint64_t sub_1003949AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = sub_1002BE408;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v9 = sub_100394AE0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100394AE0()
{
  v1 = v0[8];

  v2 = v0[1];
  v4 = v0[12];
  v3 = v0[13];

  return v2(v3, v4);
}

uint64_t sub_100394B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2C40;

  return sub_100391A84();
}

uint64_t sub_100394BD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100394C60;

  return sub_10001CC28();
}

uint64_t sub_100394C60(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100394D60, 0, 0);
}

uint64_t sub_100394D60()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100394E34;
  v3 = *(v0 + 24);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000013, 0x80000001004E8790, sub_100395D0C, v3, &type metadata for () + 8);
}

uint64_t sub_100394E34()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100394F30, 0, 0);
}

uint64_t sub_100394F30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100394F94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100395020;

  return sub_10001CC28();
}

uint64_t sub_100395020(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100395120, 0, 0);
}

uint64_t sub_100395120()
{
  v1 = *(*(*(v0 + 24) + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = v1;
  static Transaction.named<A>(_:with:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100395220()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1003952AC;

  return sub_10001CC28();
}

uint64_t sub_1003952AC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_1003953AC, 0, 0);
}

uint64_t sub_1003953AC()
{
  v1 = *(v0 + 24);
  sub_10011E810();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100395418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1003920E8(a1);
}

uint64_t sub_1003954B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100392770(a1);
}

uint64_t sub_100395548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_100393064(a1);
}

uint64_t sub_1003955E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1003938D8();
}

uint64_t sub_100395674(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10004B564(&qword_1005B24C8, &qword_1004D6FC0) - 8) + 80);

  return sub_10039360C(a1, a2);
}

uint64_t sub_10039579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_10004B564(&qword_1005B2440, &qword_1004D68C0) + 48);
  v5 = *(sub_10004B564(&qword_1005B01E0, &qword_1004D1768) + 48);
  v6 = type metadata accessor for Handle();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = type metadata accessor for Location();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

uint64_t sub_10039587C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  __chkstk_darwin(v2);
  v45 = &v45 - v4;
  v54 = type metadata accessor for Location();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v54);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Handle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v48 = &v45 - v18;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  if (v23)
  {
    v47 = v1[2];
    v24 = v21;
LABEL_11:
    v46 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    (*(v9 + 16))(v12, *(v19 + 48) + *(v9 + 72) * v28, v8);
    (*(v5 + 16))(v53, *(v19 + 56) + *(v5 + 72) * v28, v54);
    v29 = v8;
    v30 = v50;
    v31 = *(v50 + 48);
    v32 = *(v9 + 32);
    v33 = v48;
    v32(v48, v12, v29);
    (*(v5 + 32))(v33 + v31, v53, v54);
    v34 = v49;
    (*(v49 + 56))(v33, 0, 1, v30);
    v35 = v46;
    v22 = v47;
    v27 = v24;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v22;
    v1[3] = v27;
    v1[4] = v35;
    v36 = v1[5];
    v37 = v1[6];
    v38 = v51;
    sub_1000176A8(v33, v51, &qword_1005B2438, &qword_1004D68B0);
    v39 = 1;
    v40 = (*(v34 + 48))(v38, 1, v30);
    v41 = v52;
    if (v40 != 1)
    {
      v42 = v38;
      v43 = v45;
      sub_1000176A8(v42, v45, &qword_1005B2440, &qword_1004D68C0);
      v36(v43);
      sub_100002CE0(v43, &qword_1005B2440, &qword_1004D68C0);
      v39 = 0;
    }

    v44 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
    return (*(*(v44 - 8) + 56))(v41, v39, 1, v44);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v33 = v48;
        v34 = v49;
        v30 = v50;
        (*(v49 + 56))(v48, 1, 1, v50);
        v35 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v47 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100395D24()
{
  result = qword_1005B24E8;
  if (!qword_1005B24E8)
  {
    sub_10004B610(&qword_1005B24E0, &qword_1004D6FF0);
    sub_100016E78(&qword_1005AB008, type metadata accessor for SecureLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24E8);
  }

  return result;
}

unint64_t sub_100395DE0()
{
  result = qword_1005B24F8;
  if (!qword_1005B24F8)
  {
    sub_10004B610(&qword_1005B24F0, &qword_1004DBFF0);
    sub_100016E78(&qword_1005B1C60, type metadata accessor for SecureLocationsCachedSharedKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24F8);
  }

  return result;
}

void sub_100395E9C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_100476A58(a1);
}

void sub_100395EB0()
{
  v0 = [objc_allocWithZone(NSMutableSet) init];
  sub_10039610C();
  sub_10004B564(&qword_1005B2508, &qword_1004D7020);
  [v0 addObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v3 = 0;
  v1 = v0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  sub_1000F7A28();
  swift_allocError();
  *v2 = 17;
  swift_willThrow();
}

unint64_t sub_10039610C()
{
  result = qword_1005B2500;
  if (!qword_1005B2500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B2500);
  }

  return result;
}

uint64_t sub_100396170(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10038D724(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100396248(uint64_t a1)
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

  return sub_10038E5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_100396310(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_10038F160(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100396448(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_10000368C;

  return sub_10038AF7C(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100396520(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocationRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ClientID() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100003690;

  return sub_10038B908(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003966D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = type metadata accessor for ClientID();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = type metadata accessor for LocationRequest();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000161D0, 0, 0);
}

uint64_t sub_1003967F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 136);

  if (v1)
  {
    v8 = sub_100396F24;
  }

  else
  {
    v8 = sub_100396BA0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100396934()
{
  v20 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, &v19);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v19);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[9];
  v12 = v0[10];
  v14 = sub_100027AC8(v4);
  v13(0, 0xF000000000000000, v14);

  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100396BA0()
{
  v35 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v33 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  if (v1)
  {

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v9, v33);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005E0B28);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, v34);
      *(v17 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000D01C(v18, v19, v34);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s trampoline error: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    v22 = v0[9];
    v21 = v0[10];
    v23 = sub_100027AC8(v1);
    v22(0, 0xF000000000000000, v23);
  }

  else
  {
    v32 = v0[16];
    v24 = v0[10];
    v31 = v0[9];
    v25 = v6;
    v26 = v7;

    sub_100005F6C(v25, v26);
    v31(v25, v26, 0);
    sub_1000049D0(v25, v26);
    sub_1000049D0(v25, v26);
    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v32, v33);
  }

  v27 = v0[16];
  v28 = v0[13];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100396F24()
{
  v20 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000035, 0x80000001004E8EC0, &v19);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v19);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[9];
  v12 = v0[10];
  v14 = sub_100027AC8(v4);
  v13(0, 0xF000000000000000, v14);

  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100397324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ClientID();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005B2560, &qword_1004D72B8) - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v8[16] = Priority;
  v14 = *(Priority - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();

  return _swift_task_switch(sub_100397488, 0, 0);
}

uint64_t sub_100397488()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[4];
  LocatePriority.init(rawValue:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[5];
    v5 = v0[6];
    sub_1003A7F00(v0[15]);
    sub_1000284BC();
    swift_allocError();
    *v7 = 2;
    v6();

    v19 = v0[18];
    v20 = v0[14];
    v21 = v0[15];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[12];
    v11 = v0[7];
    v10 = v0[8];
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v12 = type metadata accessor for PropertyListDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v16 = v0[9];
    v15 = v0[10];

    v17 = *(v12 + 48);
    v18 = *(v12 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
    sub_1003A7ADC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v24 = v0[11];

    v0[19] = v0[3];

    return _swift_task_switch(sub_100397908, v24, 0);
  }
}

uint64_t sub_100397908()
{
  v1 = v0[11];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_100397AA0;
    v4 = v0[18];
    v5 = v0[19];
    v6 = v0[14];

    return sub_1003871E4(v5, v4, v6);
  }

  else
  {
    v8 = v0[19];

    v9 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[23] = swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for CommunicationError.missingTrampoline(_:), v9);
    swift_willThrow();

    return _swift_task_switch(sub_100397C04, 0, 0);
  }
}

uint64_t sub_100397AA0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {

    v7 = sub_100397F4C;
  }

  else
  {

    v7 = sub_100397E70;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100397C04()
{
  v20 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[23];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8E80, &v19);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v19);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[5];
  v12 = v0[6];
  sub_100027AC8(v4);
  v13();

  v14 = v0[18];
  v15 = v0[14];
  v16 = v0[15];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100397E70()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 48);
  (*(v0 + 40))(0);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 144);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100397F4C()
{
  v20 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8E80, &v19);
    *(v8 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v19);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s trampoline error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[5];
  v12 = v0[6];
  sub_100027AC8(v4);
  v13();

  v14 = v0[18];
  v15 = v0[14];
  v16 = v0[15];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100398354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for ClientID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10039841C, 0, 0);
}

uint64_t sub_10039841C()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  return _swift_task_switch(sub_100398714, v8, 0);
}

uint64_t sub_100398714()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_10039889C;
    v4 = v0[10];

    return sub_100384D84(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_100398A4C, 0, 0);
  }
}

uint64_t sub_10039889C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1003989B4, 0, 0);
}

uint64_t sub_1003989B4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v0 + 48))(0);
  (*(v2 + 8))(v1, v4);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100398A4C()
{
  v15 = v0;
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000030, 0x80000001004E8E10, &v14);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  sub_100027AC8(v1);
  v10();

  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100398DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return _swift_task_switch(sub_100398DFC, 0, 0);
}

uint64_t sub_100398DFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_1003A7ADC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[7];

  v0[10] = v0[2];

  return _swift_task_switch(sub_1003990E0, v6, 0);
}

uint64_t sub_1003990E0()
{
  v1 = v0[7];
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_100399274;
    v4 = v0[10];

    return sub_100357C48(v4);
  }

  else
  {
    v6 = v0[10];

    v7 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[15] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_1003993E0, 0, 0);
  }
}

uint64_t sub_100399274(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  if (v1)
  {

    v9 = sub_1003998F4;
  }

  else
  {

    v9 = sub_100399604;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003993E0()
{
  v15 = v0;
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, &v14);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100399604()
{
  v26 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[13];
  if (v1)
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0B28);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, v25);
      *(v12 + 12) = 2082;
      v0[3] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000D01C(v13, v14, v25);

      *(v12 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s trampoline error: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    v17 = v0[8];
    v16 = v0[9];
    v18 = sub_100027AC8(v1);
    v17(0, 0xF000000000000000, v18);
  }

  else
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = v6;
    v22 = v7;

    sub_100005F6C(v21, v22);
    v20(v21, v22, 0);
    sub_1000049D0(v21, v22);
    sub_1000049D0(v21, v22);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003998F4()
{
  v15 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8DC0, &v14);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[8];
  v9 = v0[9];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100399C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for ClientID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100399D30, 0, 0);
}

uint64_t sub_100399D30()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[6];

  return _swift_task_switch(sub_10039A034, v8, 0);
}

uint64_t sub_10039A034()
{
  v1 = v0[6];
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_10039A1BC;
    v4 = v0[11];

    return sub_1003851F0(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[16] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_10039A2F8, 0, 0);
  }
}

uint64_t sub_10039A1BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);

  if (v1)
  {
    v8 = sub_10039A874;
  }

  else
  {
    v8 = sub_10039A53C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10039A2F8()
{
  v16 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[16];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, &v15);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[7];
  v9 = v0[8];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039A53C()
{
  v30 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v1)
  {
    (*(v10 + 8))(v0[11], v0[9]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0B28);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, v29);
      *(v15 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, v29);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s trampoline error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = sub_100027AC8(v1);
    v20(0, 0xF000000000000000, v21);
  }

  else
  {
    v23 = v0[7];
    v22 = v0[8];
    v24 = v6;
    v25 = v7;

    sub_100005F6C(v24, v25);
    v23(v24, v25, 0);
    sub_1000049D0(v24, v25);
    sub_1000049D0(v24, v25);
    (*(v10 + 8))(v9, v11);
  }

  v26 = v0[11];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10039A874()
{
  v16 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000003DLL, 0x80000001004E8D60, &v15);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[7];
  v9 = v0[8];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = type metadata accessor for ClientID();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_10039ACD4, 0, 0);
}

uint64_t sub_10039ACD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10004B564(&qword_1005B2400, &qword_1004D67B8);
  sub_1003A7ADC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[14];
  v7 = v0[12];
  v9 = v0[7];
  v8 = v0[8];

  v0[15] = v0[2];
  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100017B4C(&qword_1005B2558, &type metadata accessor for ClientID);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v12 = v0[9];

  return _swift_task_switch(sub_10039B05C, v12, 0);
}

uint64_t sub_10039B05C()
{
  v1 = v0[9];
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_10039B1F0;
    v4 = v0[14];
    v5 = v0[15];

    return sub_10038BD40(v5, v4);
  }

  else
  {
    v7 = v0[15];

    v8 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[20] = swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for CommunicationError.missingTrampoline(_:), v8);
    swift_willThrow();

    return _swift_task_switch(sub_10039B35C, 0, 0);
  }
}

uint64_t sub_10039B1F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  v8 = *(v3 + 120);
  if (v1)
  {

    v9 = sub_10039B8D8;
  }

  else
  {

    v9 = sub_10039B5A0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10039B35C()
{
  v16 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, &v15);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039B5A0()
{
  v30 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[4] = v2;
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  sub_100379750();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[18];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v1)
  {
    (*(v10 + 8))(v0[14], v0[12]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0B28);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, v29);
      *(v15 + 12) = 2082;
      v0[3] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, v29);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s trampoline error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = v0[10];
    v19 = v0[11];
    v21 = sub_100027AC8(v1);
    v20(0, 0xF000000000000000, v21);
  }

  else
  {
    v23 = v0[10];
    v22 = v0[11];
    v24 = v6;
    v25 = v7;

    sub_100005F6C(v24, v25);
    v23(v24, v25, 0);
    sub_1000049D0(v24, v25);
    sub_1000049D0(v24, v25);
    (*(v10 + 8))(v9, v11);
  }

  v26 = v0[14];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10039B8D8()
{
  v16 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[19];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000029, 0x80000001004E8CF0, &v15);
    *(v5 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039BCDC, a1, 0);
}

uint64_t sub_10039BCDC()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10039BE5C;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039C17C, 0, 0);
  }
}

uint64_t sub_10039BE5C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039BF5C, 0, 0);
}

uint64_t sub_10039BF5C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10039C060;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000001ALL, 0x80000001004E8880, sub_100396164, v4, &type metadata for () + 8);
}

uint64_t sub_10039C060()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10039C394;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003A8094;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039C17C()
{
  v14 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E8C90, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039C394()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10039C404, 0, 0);
}

uint64_t sub_10039C404()
{
  v15 = v0;
  v1 = v0[8];

  v2 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E8C90, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039C7A0, a1, 0);
}

uint64_t sub_10039C7A0()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10039C920;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039CC40, 0, 0);
  }
}

uint64_t sub_10039C920(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039CA20, 0, 0);
}

uint64_t sub_10039CA20()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10039CB24;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000021, 0x80000001004E8850, sub_100396158, v4, &type metadata for () + 8);
}

uint64_t sub_10039CB24()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10039CEDC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_10039CE58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039CC40()
{
  v14 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E8C60, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039CE58()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v4(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10039CEDC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10039CF4C, 0, 0);
}

uint64_t sub_10039CF4C()
{
  v15 = v0;
  v1 = v0[8];

  v2 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000002CLL, 0x80000001004E8C60, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039D2E8, a1, 0);
}

uint64_t sub_10039D2E8()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10039D470;
    v5 = v0[4];
    v4 = v0[5];

    return sub_100390094(v5, v4);
  }

  else
  {
    v7 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[11] = swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for CommunicationError.missingTrampoline(_:), v7);
    swift_willThrow();

    return _swift_task_switch(sub_10039D58C, 0, 0);
  }
}

uint64_t sub_10039D470()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10039D80C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10039D7A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039D58C()
{
  v14 = v0;
  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8C40, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039D7A4()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039D80C()
{
  v15 = v0;
  v1 = v0[8];

  v2 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8C40, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039DB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10039DBA4, a1, 0);
}

uint64_t sub_10039DBA4()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10039DD24;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039E010, 0, 0);
  }
}

uint64_t sub_10039DD24(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039DE24, 0, 0);
}

uint64_t sub_10039DE24()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_10039DEFC;
  v3 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x80000001004E8810, sub_100395EA8, v3, &type metadata for Data);
}

uint64_t sub_10039DEFC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_10039E2E8;
  }

  else
  {
    v3 = sub_10039E234;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10039E010()
{
  v15 = v0;
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8C20, &v14);
    *(v5 + 12) = 2082;
    v0[4] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039E234()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  v5 = v0[2];
  v6 = v0[3];
  sub_100005F6C(v5, v6);
  v4(v5, v6, 0);
  sub_1000049D0(v5, v6);
  sub_1000049D0(v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_10039E2E8()
{
  v1 = *(v0 + 80);

  return _swift_task_switch(sub_10039E350, 0, 0);
}

uint64_t sub_10039E350()
{
  v16 = v0;
  v1 = v0[8];

  v2 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8C20, &v15);
    *(v6 + 12) = 2082;
    v0[4] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10039E680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_10039E6AC, a1, 0);
}

uint64_t sub_10039E6AC()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10039E82C;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[14] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039EB4C, 0, 0);
  }
}

uint64_t sub_10039E82C(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10039E92C, 0, 0);
}

uint64_t sub_10039E92C()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10039EA30;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000015, 0x80000001004E87F0, sub_100395E9C, v4, &type metadata for () + 8);
}

uint64_t sub_10039EA30()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10039ED64;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1003A8094;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10039EB4C()
{
  v14 = v0;
  v1 = v0[14];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8C00, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039ED64()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_10039EDD4, 0, 0);
}

uint64_t sub_10039EDD4()
{
  v15 = v0;
  v1 = v0[8];

  v2 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E8C00, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039F144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10039F16C, a1, 0);
}

uint64_t sub_10039F16C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10039F2EC;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[11] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039F5D4, 0, 0);
  }
}

uint64_t sub_10039F2EC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_10039F3EC, 0, 0);
}

uint64_t sub_10039F3EC()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10039F4C0;
  v3 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000010, 0x80000001004E87D0, sub_100395E94, v3, &type metadata for () + 8);
}

uint64_t sub_10039F4C0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10039F870;
  }

  else
  {
    v3 = sub_10039F7EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10039F5D4()
{
  v14 = v0;
  v1 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8BE0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[4];
  v9 = v0[5];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10039F7EC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  v4(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_10039F870()
{
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_10039F8D8, 0, 0);
}

uint64_t sub_10039F8D8()
{
  v15 = v0;
  v1 = v0[6];

  v2 = v0[10];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004E8BE0, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_10039FC20, a3, 0);
}

uint64_t sub_10039FC20()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10039FDA0;

    return sub_10039102C();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_10039FEDC, 0, 0);
  }
}

uint64_t sub_10039FDA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_1003A0100;
  }

  else
  {
    v10 = v6[6];

    v6[10] = a2;
    v6[11] = a1;
    v9 = sub_1003A808C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10039FEDC()
{
  v15 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8BC0, &v14);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A0100()
{
  v16 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ALL, 0x80000001004E8BC0, &v15);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A0430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A0454, a3, 0);
}

uint64_t sub_1003A0454()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A05D4;

    return sub_10039155C();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A0710, 0, 0);
  }
}

uint64_t sub_1003A05D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_1003A0934;
  }

  else
  {
    v10 = v6[6];

    v6[10] = a2;
    v6[11] = a1;
    v9 = sub_1003A808C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003A0710()
{
  v15 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8BA0, &v14);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A0934()
{
  v16 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8BA0, &v15);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A0C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1003A0C90, a1, 0);
}

uint64_t sub_1003A0C90()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1003A0E10;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[15] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A12B4, 0, 0);
  }
}

uint64_t sub_1003A0E10()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v6;
  v4[1] = sub_1003A0F48;

  return daemon.getter();
}

uint64_t sub_1003A0F48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SecureLocationService();
  v9 = sub_100017B4C(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100017B4C(&qword_1005AD528, type metadata accessor for SecureLocationService);
  *v6 = v12;
  v6[1] = sub_1003A1124;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003A1124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A160C, 0, 0);
  }

  else
  {
    v7 = v4[11];

    v8 = swift_task_alloc();
    v4[16] = v8;
    *v8 = v6;
    v8[1] = sub_1003A14D8;
    v9 = v4[5];
    v10 = v4[4];

    return sub_10045FAC0(v10, v9);
  }
}

uint64_t sub_1003A12B4()
{
  v15 = v0;
  v1 = v0[15];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8B70, &v14);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A14D8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_1003A1738;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_1003A167C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003A160C()
{
  v1 = v0[11];
  v0[20] = v0[14];

  return _swift_task_switch(sub_1003A17A8, 0, 0);
}

uint64_t sub_1003A167C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];

  sub_100005F6C(v1, v2);
  v6(v1, v2, 0);
  sub_1000049D0(v1, v2);
  sub_1000049D0(v1, v2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1003A1738()
{
  v1 = v0[13];
  v0[20] = v0[17];

  return _swift_task_switch(sub_1003A17A8, 0, 0);
}

uint64_t sub_1003A17A8()
{
  v16 = v0;
  v1 = v0[8];

  v2 = v0[20];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8B70, &v15);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A1B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A1B48, a3, 0);
}

uint64_t sub_1003A1B48()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A1CC8;

    return sub_100391A84();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A1E04, 0, 0);
  }
}

uint64_t sub_1003A1CC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = sub_1003A20B0;
  }

  else
  {
    v10 = v6[6];

    v6[10] = a2;
    v6[11] = a1;
    v9 = sub_1003A2028;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1003A1E04()
{
  v15 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E8B50, &v14);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v14);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[3];
  v9 = v0[4];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A2028()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 32);
  (*(v0 + 24))(v1, v2, 0);
  sub_1000049D0(v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003A20B0()
{
  v16 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E8B50, &v15);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[3];
  v10 = v0[4];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A23E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A2408, a1, 0);
}

uint64_t sub_1003A2408()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A2588;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[10] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A2858, 0, 0);
  }
}

uint64_t sub_1003A2588(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A2688, 0, 0);
}

uint64_t sub_1003A2688()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1003A275C;
  v3 = *(v0 + 64);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000013, 0x80000001004E8790, sub_100395D0C, v3, &type metadata for () + 8);
}

uint64_t sub_1003A275C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_1003A8098, 0, 0);
}

uint64_t sub_1003A2858()
{
  v15 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E8B30, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v0[10]);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for DecodedLocationNotification();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003A2C48, a1, 0);
}

uint64_t sub_1003A2C48()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1003A2DD4;
    v4 = v0[9];
    v5 = v0[3];
    v6 = v0[4];

    return sub_100386FAC(v4, v5, v6);
  }

  else
  {
    v8 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for CommunicationError.missingTrampoline(_:), v8);
    swift_willThrow();

    return _swift_task_switch(sub_1003A2EF0, 0, 0);
  }
}

uint64_t sub_1003A2DD4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1003A3148;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1003A2F90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A2EF0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100027AC8(v0[13]);
  v2(0, 0xF000000000000000, v3);

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A2F90()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2548, &type metadata accessor for DecodedLocationNotification);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v1;
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    (*(v11 + 8))(v0[9], v0[7]);

    v14 = v0[5];
    v13 = v0[6];
    v15 = sub_100027AC8(v9);
    v14(0, 0xF000000000000000, v15);
  }

  else
  {
    v17 = v0[5];
    v16 = v0[6];
    v18 = v7;
    v19 = v8;

    sub_100005F6C(v18, v19);
    v17(v18, v19, 0);
    sub_1000049D0(v18, v19);
    sub_1000049D0(v18, v19);
    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1003A3148()
{
  v1 = v0[10];

  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_100027AC8(v0[12]);
  v3(0, 0xF000000000000000, v4);

  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A3314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A333C, a1, 0);
}

uint64_t sub_1003A333C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A34BC;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A36E8, 0, 0);
  }
}

uint64_t sub_1003A34BC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A35BC, 0, 0);
}

uint64_t sub_1003A35BC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(*(v0[8] + 56) + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  type metadata accessor for Transaction();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  v6 = v4;
  static Transaction.named<A>(_:with:)();

  v3(0);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1003A36E8()
{
  v15 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004E8AD0, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v0[9]);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A3A34, a1, 0);
}

uint64_t sub_1003A3A34()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A3BB4;

    return sub_10001CC28();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A3D40, 0, 0);
  }
}

uint64_t sub_1003A3BB4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1003A3CB4, 0, 0);
}

uint64_t sub_1003A3CB4()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_10011E810();

  v4(0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003A3D40()
{
  v15 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E8AA0, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v0[9]);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003A412C, a1, 0);
}

uint64_t sub_1003A412C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1003A42B4;
    v4 = v0[8];

    return sub_1003920E8(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[12] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1003A43D0, 0, 0);
  }
}

uint64_t sub_1003A42B4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1003A492C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1003A45FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A43D0()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, &v15);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A45FC()
{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2540, &type metadata accessor for SecureLocationsStewie.PublishResult);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v1)
  {
    (*(v10 + 8))(v0[8], v0[6]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0B28);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, v29);
      *(v15 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, v29);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s trampoline error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = v0[4];
    v19 = v0[5];
    v21 = sub_100027AC8(v1);
    v20(0, 0xF000000000000000, v21);
  }

  else
  {
    v23 = v0[4];
    v22 = v0[5];
    v24 = v7;
    v25 = v8;

    sub_100005F6C(v24, v25);
    v23(v24, v25, 0);
    sub_1000049D0(v24, v25);
    sub_1000049D0(v24, v25);
    (*(v10 + 8))(v9, v11);
  }

  v26 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003A492C()
{
  v17 = v0;
  v1 = v0[9];

  v2 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000002BLL, 0x80000001004E8A70, &v16);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A4C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003A4D2C, a1, 0);
}

uint64_t sub_1003A4D2C()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1003A4EB4;
    v4 = v0[8];

    return sub_100392770(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[12] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1003A4FD0, 0, 0);
  }
}

uint64_t sub_1003A4EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1003A552C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1003A51FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A4FD0()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, &v15);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[4];
  v9 = v0[5];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A51FC()
{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100017B4C(&qword_1005B2540, &type metadata accessor for SecureLocationsStewie.PublishResult);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v1)
  {
    (*(v10 + 8))(v0[8], v0[6]);

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0B28);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, v29);
      *(v15 + 12) = 2082;
      v0[2] = v1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, v29);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s trampoline error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = v0[4];
    v19 = v0[5];
    v21 = sub_100027AC8(v1);
    v20(0, 0xF000000000000000, v21);
  }

  else
  {
    v23 = v0[4];
    v22 = v0[5];
    v24 = v7;
    v25 = v8;

    sub_100005F6C(v24, v25);
    v23(v24, v25, 0);
    sub_1000049D0(v24, v25);
    sub_1000049D0(v24, v25);
    (*(v10 + 8))(v9, v11);
  }

  v26 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1003A552C()
{
  v17 = v0;
  v1 = v0[9];

  v2 = v0[11];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E8A40, &v16);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003A592C, a1, 0);
}

uint64_t sub_1003A592C()
{
  v1 = v0[4];
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1003A5AB4;
    v4 = v0[9];

    return sub_100393064(v4);
  }

  else
  {
    v6 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[13] = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for CommunicationError.missingTrampoline(_:), v6);
    swift_willThrow();

    return _swift_task_switch(sub_1003A5BD0, 0, 0);
  }
}

uint64_t sub_1003A5AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1003A5EE0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1003A5DFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A5BD0()
{
  v16 = v0;
  v1 = v0[13];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8A20, &v15);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v15);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = sub_100027AC8(v1);
  v10(0, 0xF000000000000000, v11);

  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1003A5DFC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[3] = SecureLocationsStewie.ServiceState.rawValue.getter();
  sub_10004E724();
  v6 = FixedWidthInteger.data.getter();
  v8 = v7;
  v5();
  sub_1000049D0(v6, v8);
  (*(v2 + 8))(v1, v3);
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A5EE0()
{
  v17 = v0;
  v1 = v0[10];

  v2 = v0[12];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E8A20, &v16);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[5];
  v10 = v0[6];
  v12 = sub_100027AC8(v2);
  v11(0, 0xF000000000000000, v12);

  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A6218()
{
  v14 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E89F0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[4];
  v9 = v0[5];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A6430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_1003A6458, a1, 0);
}

uint64_t sub_1003A6458()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003A65D8;

    return sub_1003938D8();
  }

  else
  {
    v5 = type metadata accessor for CommunicationError();
    sub_100017B4C(&qword_1005B0F68, &type metadata accessor for CommunicationError);
    v0[9] = swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for CommunicationError.missingTrampoline(_:), v5);
    swift_willThrow();

    return _swift_task_switch(sub_1003A66F4, 0, 0);
  }
}

uint64_t sub_1003A65D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1003A6974;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1003A690C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003A66F4()
{
  v14 = v0;
  v1 = v0[9];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E89C0, &v13);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[4];
  v9 = v0[5];
  sub_100027AC8(v1);
  v10();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A690C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A6974()
{
  v15 = v0;
  v1 = v0[6];

  v2 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E89C0, &v14);
    *(v6 + 12) = 2082;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s trampoline error: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[4];
  v10 = v0[5];
  sub_100027AC8(v2);
  v11();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1003A6CF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A6430(v2, v3, v5);
}

uint64_t sub_1003A6D9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A5864(v2, v3, v5);
}

uint64_t sub_1003A6E48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A4C64(v2, v3, v5);
}

uint64_t sub_1003A6EF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100003690;

  return sub_1003A4064(v2, v3, v5);
}

uint64_t sub_1003A6FA0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A3A0C(v2, v3, v5);
}

uint64_t sub_1003A704C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A3314(v2, v3, v5);
}

uint64_t sub_1003A70F8()
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

  return sub_1003A2B7C(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A71B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A23E0(v2, v3, v5);
}

uint64_t sub_1003A7264()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A1B24(v2, v3, v5);
}

uint64_t sub_1003A7310()
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

  return sub_1003A0C64(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A73D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1003A0430(v2, v3, v5);
}

uint64_t sub_1003A747C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1003A74BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10039FBFC(v2, v3, v5);
}

uint64_t sub_1003A7568()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10039F144(v2, v3, v5);
}

uint64_t sub_1003A7614()
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

  return sub_10039E680(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A76D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_10039DB7C(v2, v3, v5);
}

uint64_t sub_1003A7780()
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

  return sub_10039D2BC(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7840()
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

  return sub_10039C774(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7900()
{
  v1 = v0[2];

  sub_1000049D0(v0[3], v0[4]);
  v2 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A7948()
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

  return sub_10039BCB0(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7A08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000368C;

  return sub_10039AC08(v2, v3, v4, v5, v6, v7, v9);
}

unint64_t sub_1003A7ADC()
{
  result = qword_1005B2550;
  if (!qword_1005B2550)
  {
    sub_10004B610(&qword_1005B2400, &qword_1004D67B8);
    sub_100017B4C(&qword_1005AE888, &type metadata accessor for Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2550);
  }

  return result;
}

uint64_t sub_1003A7B90()
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

  return sub_100399C68(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7C50()
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

  return sub_100398DD4(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7D10()
{
  sub_1000049D0(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A7D58()
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

  return sub_100398354(v2, v3, v4, v5, v7);
}

uint64_t sub_1003A7E18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[10];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10000368C;

  return sub_100397324(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1003A7F00(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B2560, &qword_1004D72B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A7F68()
{
  sub_1000049D0(v0[2], v0[3]);
  sub_1000049D0(v0[4], v0[5]);
  v1 = v0[6];

  v2 = v0[8];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1003A7FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_10000368C;

  return sub_1003966D0(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1003A809C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[104] = a3;
  v3[103] = a2;
  v3[102] = a1;
  return _swift_task_switch(sub_1003A80C4, 0, 0);
}

uint64_t sub_1003A80C4()
{
  v1 = v0[104];
  v2 = v0[103];
  v0[105] = Data.init(base64Encoded:options:)();
  v0[106] = v3;
  if (v3 >> 60 == 15)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005B2570);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Payload is not base64 encoded string.", v7, 2u);
    }

    sub_1003A8FD8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v0[107] = v11;
    *v11 = v0;
    v11[1] = sub_1003A8290;

    return sub_1003AA34C();
  }
}

uint64_t sub_1003A8290(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 856);
  v8 = *v3;
  v4[108] = a1;
  v4[109] = a2;
  v4[110] = v2;

  if (v2)
  {
    v6 = sub_1003A8594;
  }

  else
  {
    v6 = sub_1003A83AC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003A83AC()
{
  v1 = v0[110];
  v2 = sub_1003AACA0(v0[105], v0[106], v0[108], v0[109]);
  v0[111] = v2;
  if (v1)
  {
    v0[114] = v1;
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005B2570);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Decrypted payload did not contain handle or location.", v6, 2u);
    }

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v0[115] = v8;
    *v8 = v0;
    v8[1] = sub_1003A87A4;

    return daemon.getter();
  }

  else
  {
    v9 = v2;
    v10 = swift_task_alloc();
    v0[112] = v10;
    *v10 = v0;
    v10[1] = sub_1003A85FC;
    v11 = v0[102];

    return sub_1003A90A8(v11, v9);
  }
}

uint64_t sub_1003A8594()
{
  sub_10001A794(v0[105], v0[106]);
  v1 = v0[110];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1003A85FC()
{
  v2 = *(*v1 + 896);
  v5 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v3 = sub_1003A8D0C;
  }

  else
  {
    v3 = sub_1003A8710;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A8710()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[106];
  v5 = v0[105];

  sub_1000049D0(v3, v2);
  sub_10001A794(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003A87A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 920);
  v12 = *v1;
  *(v3 + 928) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 936) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000095F0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095F0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003A8980;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003A8980(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 936);
  v6 = *v2;
  *(*v2 + 944) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003A8E68, 0, 0);
  }

  else
  {
    v7 = v4[116];

    v4[119] = a1;
    v8 = swift_task_alloc();
    v4[120] = v8;
    *v8 = v6;
    v8[1] = sub_1003A8B10;

    return sub_1001E17C0((v4 + 2));
  }
}

uint64_t sub_1003A8B10()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v4 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_1003A8C24, 0, 0);
}

uint64_t sub_1003A8C24()
{
  v1 = v0[119];
  v2 = v0[114];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[106];
  v6 = v0[105];
  sub_1003A8FD8();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();

  sub_1000049D0(v4, v3);
  sub_10001A794(v6, v5);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A8D0C()
{
  v1 = v0[111];

  v0[114] = v0[113];
  if (qword_1005A84D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005B2570);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Decrypted payload did not contain handle or location.", v5, 2u);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v0[115] = v7;
  *v7 = v0;
  v7[1] = sub_1003A87A4;

  return daemon.getter();
}

uint64_t sub_1003A8E68()
{
  v1 = v0[116];
  v2 = v0[114];
  v3 = v0[109];
  v4 = v0[108];
  v5 = v0[106];
  v6 = v0[105];

  sub_1000049D0(v4, v3);
  sub_10001A794(v6, v5);
  v7 = v0[118];
  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A8F10()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B2570);
  v1 = sub_10000A6F0(v0, qword_1005B2570);
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1003A8FD8()
{
  result = qword_1005B2588;
  if (!qword_1005B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2588);
  }

  return result;
}

uint64_t sub_1003A902C(uint64_t a1)
{
  v2 = sub_1003AB748();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1003A9068(uint64_t a1)
{
  v2 = sub_1003AB748();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1003A90A8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003A9150, 0, 0);
}

uint64_t sub_1003A9150()
{
  v1 = v0[14];
  if (*(v1 + 16))
  {
    v2 = sub_1000110D8(0x656C646E6168, 0xE600000000000000);
    if (v3)
    {
      sub_10000709C(*(v0[14] + 56) + 32 * v2, (v0 + 2));
      sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v0[10];
      }

      else
      {
        v5 = 0;
      }

      if (v4)
      {
        v6 = v0[11];
      }

      else
      {
        v6 = 0;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      if (!*(v1 + 16))
      {
        goto LABEL_16;
      }
    }

    v7 = v0[14];
    v8 = sub_1000110D8(0x6E6F697461636F6CLL, 0xE800000000000000);
    if (v9)
    {
      sub_10000709C(*(v0[14] + 56) + 32 * v8, (v0 + 6));
      sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
      sub_10004B564(&qword_1005B2590, &qword_1004D72F0);
      if (swift_dynamicCast())
      {
        v10 = v0[12];
        goto LABEL_17;
      }
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

LABEL_16:
  v10 = sub_100207B7C(_swiftEmptyArrayStorage);
LABEL_17:
  v0[17] = v6;
  v0[18] = v10;
  v11 = v0[16];
  if (v6)
  {

    sub_1002743D4(_swiftEmptyArrayStorage);
    Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)();
    v12 = type metadata accessor for Handle();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_1003A963C;

    return sub_100340A1C(v5, v6);
  }

  else
  {
    v15 = type metadata accessor for Handle();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    v17 = v0[18];
    v18 = v0[16];
    v19 = sub_1003AB244();

    if ((*(v16 + 48))(v18, 1, v15) == 1 && v19 == 0)
    {
      if (qword_1005A84D0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000A6F0(v24, qword_1005B2570);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Decrypted payload did not contain handle or location.", v27, 2u);
      }

      v29 = v0[15];
      v28 = v0[16];

      sub_1003A8FD8();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
      sub_100002CE0(v28, &qword_1005B3360, &unk_1004C6AA0);

      v23 = v0[1];
    }

    else
    {
      v21 = v0[16];
      v22 = v0[13];
      sub_100005F04(v21, v0[15], &qword_1005B3360, &unk_1004C6AA0);
      DecodedLocationNotification.init(handle:contact:location:)();
      sub_100002CE0(v21, &qword_1005B3360, &unk_1004C6AA0);

      v23 = v0[1];
    }

    return v23();
  }
}

uint64_t sub_1003A963C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1003A973C, 0, 0);
}

uint64_t sub_1003A973C()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v5 = sub_1003AB244();

  v6 = type metadata accessor for Handle();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1 && v5 == 0)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005B2570);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Decrypted payload did not contain handle or location.", v14, 2u);
    }

    v16 = v0[15];
    v15 = v0[16];

    sub_1003A8FD8();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    sub_100002CE0(v15, &qword_1005B3360, &unk_1004C6AA0);

    v10 = v0[1];
  }

  else
  {
    v8 = v0[16];
    v9 = v0[13];
    sub_100005F04(v8, v0[15], &qword_1005B3360, &unk_1004C6AA0);
    DecodedLocationNotification.init(handle:contact:location:)();
    sub_100002CE0(v8, &qword_1005B3360, &unk_1004C6AA0);

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_1003A999C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v6 = type metadata accessor for SymmetricKey();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AES.GCM.Nonce();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v16);
  v22 = &v46 - v21;
  v23 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_14;
    }

    v25 = *(a3 + 16);
    v24 = *(a3 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 < 34)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!v23)
    {
      if (BYTE6(a4) < 0x22uLL)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (HIDWORD(a3) - a3 < 34)
    {
LABEL_14:
      v18 = type metadata accessor for CryptoKitError();
      sub_1000095F0(&qword_1005B25A8, &type metadata accessor for CryptoKitError);
      swift_allocError();
      (*(*(v18 - 1) + 104))(v30, enum case for CryptoKitError.incorrectParameterSize(_:), v18);
      swift_willThrow();
      return v18;
    }
  }

LABEL_8:
  v50 = v20;
  result = Data._Representation.subscript.getter();
  if (v23 == 2)
  {
    v32 = *(a3 + 16);
    v31 = *(a3 + 24);
    v26 = __OFSUB__(v31, v32);
    v29 = v31 - v32;
    if (!v26)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v29 = BYTE6(a4);
    goto LABEL_19;
  }

  if (v23 != 1)
  {
    goto LABEL_18;
  }

  LODWORD(v29) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v29;
LABEL_19:
  if (__OFSUB__(v29, 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v29 - 16 < 17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v53 = result;
  v54 = v28;
  result = Data._Representation.subscript.getter();
  v47 = v9;
  v48 = v6;
  v51 = v14;
  v52 = result;
  v49 = v13;
  if (!v23)
  {
LABEL_27:
    v34 = v33;
    goto LABEL_30;
  }

  if (v23 != 2)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v34 = v33;
LABEL_30:
      v37 = Data._Representation.subscript.getter();
      v39 = v38;
      v41 = v53;
      v40 = v54;
      v62 = v53;
      v63 = v54;
      sub_100005F6C(v53, v54);
      sub_1000CA210();
      v42 = v64;
      AES.GCM.Nonce.init<A>(data:)();
      if (v42)
      {
        sub_1000049D0(v41, v40);
        sub_1000049D0(v52, v34);
        sub_1000049D0(v37, v39);
      }

      else
      {
        (*(v50 + 16))(v18, v22, v51);
        v62 = v52;
        v63 = v34;
        v60 = v37;
        v61 = v39;
        sub_100005F6C(v52, v34);
        sub_100005F6C(v37, v39);
        AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
        v43 = v51;
        v64 = v22;
        v62 = v55;
        v63 = v56;
        sub_100005F6C(v55, v56);
        v44 = v47;
        SymmetricKey.init<A>(data:)();
        v45 = v49;
        v18 = static AES.GCM.open(_:using:)();
        sub_1000049D0(v37, v39);
        sub_1000049D0(v52, v34);
        sub_1000049D0(v53, v54);
        (*(v59 + 8))(v44, v48);
        (*(v57 + 8))(v45, v58);
        (*(v50 + 8))(v64, v43);
      }

      return v18;
    }

    goto LABEL_40;
  }

  v34 = v33;
  v36 = *(a3 + 16);
  v35 = *(a3 + 24);
  v33 = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = v33 - 16;
  if (!__OFSUB__(v33, 16))
  {
    if (v33 >= result)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_41:
  __break(1u);
  return result;
}

Swift::Int sub_1003A9FD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003AA070()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1003AA0FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003AA198@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AB79C(*a1);
  *a2 = result;
  return result;
}

void sub_1003AA1C8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7627116;
  v4 = 0xE400000000000000;
  v5 = 1667457384;
  if (*v1 != 2)
  {
    v5 = 29556;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 7237484;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1003AA224()
{
  v1 = 7627116;
  v2 = 1667457384;
  if (*v0 != 2)
  {
    v2 = 29556;
  }

  if (*v0)
  {
    v1 = 7237484;
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

unint64_t sub_1003AA27C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003AB79C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003AA2A4(uint64_t a1)
{
  v2 = sub_1003AB9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003AA2E0(uint64_t a1)
{
  v2 = sub_1003AB9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003AA31C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1003AB7E8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1003AA34C()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 1456) = v2;
  *v2 = v0;
  v2[1] = sub_1003AA3DC;

  return daemon.getter();
}

uint64_t sub_1003AA3DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1456);
  v12 = *v1;
  *(v3 + 1464) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1472) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000095F0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1000095F0(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003AA5B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003AA5B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1472);
  v6 = *v2;
  v4[185] = a1;
  v4[186] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AAC3C, 0, 0);
  }

  else
  {
    v7 = v4[183];

    v8 = swift_task_alloc();
    v4[187] = v8;
    *v8 = v6;
    v8[1] = sub_1003AA748;

    return sub_100245BB8((v4 + 62));
  }
}

uint64_t sub_1003AA748()
{
  v1 = *(*v0 + 1496);
  v3 = *v0;

  return _swift_task_switch(sub_1003AA844, 0, 0);
}

uint64_t sub_1003AA844()
{
  v35 = v0;
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_3;
  }

  v1 = *(v0 + 224);
  *(v0 + 1232) = *(v0 + 208);
  *(v0 + 1248) = v1;
  v2 = *(v0 + 256);
  *(v0 + 1264) = *(v0 + 240);
  *(v0 + 1280) = v2;
  v3 = *(v0 + 160);
  *(v0 + 1168) = *(v0 + 144);
  *(v0 + 1184) = v3;
  v4 = *(v0 + 192);
  *(v0 + 1200) = *(v0 + 176);
  *(v0 + 1216) = v4;
  v5 = *(v0 + 128);
  *(v0 + 1136) = *(v0 + 112);
  *(v0 + 1152) = v5;
  sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20);
  sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
  v6 = *(v0 + 1248);
  *(v0 + 1072) = *(v0 + 1232);
  *(v0 + 1088) = v6;
  v7 = *(v0 + 1280);
  *(v0 + 1104) = *(v0 + 1264);
  *(v0 + 1120) = v7;
  v8 = *(v0 + 1184);
  *(v0 + 1008) = *(v0 + 1168);
  *(v0 + 1024) = v8;
  v9 = *(v0 + 1216);
  *(v0 + 1040) = *(v0 + 1200);
  *(v0 + 1056) = v9;
  v10 = *(v0 + 1152);
  *(v0 + 976) = *(v0 + 1136);
  *(v0 + 992) = v10;
  if (sub_10002D650(v0 + 976) == 1)
  {
LABEL_3:
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005B2570);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No decryption key available in settings", v14, 2u);
    }

    v15 = *(v0 + 1480);

LABEL_8:
    sub_1003A8FD8();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 1104);
  v20 = *(v0 + 1112);

  sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
  v21 = Data.init(base64Encoded:options:)();
  if (v22 >> 60 == 15)
  {
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005B2570);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136380675;
      v28 = sub_10000D01C(v19, v20, &v34);

      *(v26 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Token not valid base64 string, throwing an error. token: %{private}s", v26, 0xCu);
      sub_100004984(v27);
    }

    else
    {
    }

    v29 = *(v0 + 1480);
    goto LABEL_8;
  }

  v30 = *(v0 + 1480);
  v31 = v21;
  v32 = v22;

  v33 = *(v0 + 8);

  return v33(v31, v32);
}

uint64_t sub_1003AAC3C()
{
  v1 = v0[183];

  v2 = v0[186];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1003AACA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1003A999C(a3, a4, a1, a2);
  if (v4)
  {
    v13 = v4;
LABEL_26:
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000A6F0(v36, qword_1005B2570);
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_10000D01C(v41, v42, v47);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to decrypt payload: %s", v39, 0xCu);
      sub_100004984(v40);
    }

    sub_1003A8FD8();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();

    return v13;
  }

  v14 = v11;
  v15 = v12;
  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v47[0] = 0;
  v18 = [v16 JSONObjectWithData:isa options:0 error:v47];

  if (!v18)
  {
    v24 = v47[0];
    v13 = _convertNSErrorToError(_:)();

LABEL_25:
    swift_willThrow();
    sub_1000049D0(v14, v15);
    goto LABEL_26;
  }

  v19 = v47[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10004B564(&qword_1005B25A0, &qword_1004D72F8);
  if (!swift_dynamicCast())
  {
LABEL_13:
    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0x3E7972616E69623CLL;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE800000000000000;
    }

    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005B2570);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 136380675;
      v34 = sub_10000D01C(v27, v28, v47);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to serialize JSON from decoded payload: %{private}s", v32, 0xCu);
      sub_100004984(v33);
    }

    else
    {
    }

    sub_1003A8FD8();
    v13 = swift_allocError();
    *v35 = 0;
    goto LABEL_25;
  }

  if (!*(v46 + 16))
  {

    goto LABEL_13;
  }

  v13 = *(v46 + 32);

  if (qword_1005A84D0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A6F0(v20, qword_1005B2570);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Successfully decrypted payload.", v23, 2u);
  }

  sub_1000049D0(v14, v15);

  return v13;
}

id sub_1003AB244()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v5 = objc_opt_self();
  sub_10004B564(&qword_1005A9268, &unk_1004D38E0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32[0] = 0;
  v7 = [v5 dataWithJSONObject:isa options:0 error:v32];

  v8 = v32[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_1003AB62C();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v24 = v32[0];
    v25 = v32[1];
    v26 = v32[2];
    Date.init(timeIntervalSince1970:)();
    v27 = objc_allocWithZone(CLLocation);
    v28 = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v27 initWithCoordinate:v28 altitude:*&v24 horizontalAccuracy:*&v25 verticalAccuracy:0.0 timestamp:{*&v26, 0.0}];

    sub_1000049D0(v9, v11);
    (*(v1 + 8))(v4, v0);
    return v29;
  }

  else
  {
    v15 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A84D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005B2570);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32[0] = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_10000D01C(v21, v22, v32);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Could not serialize location from payload. Error: %s", v19, 0xCu);
      sub_100004984(v20);
    }

    else
    {
    }

    return 0;
  }
}

unint64_t sub_1003AB62C()
{
  result = qword_1005B2598;
  if (!qword_1005B2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B2598);
  }

  return result;
}

uint64_t sub_1003AB680(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003AB6A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1003AB6F4()
{
  result = qword_1005B25B0;
  if (!qword_1005B25B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25B0);
  }

  return result;
}

unint64_t sub_1003AB748()
{
  result = qword_1005B25B8;
  if (!qword_1005B25B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25B8);
  }

  return result;
}

unint64_t sub_1003AB79C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058BE30, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_1003AB7E8(uint64_t *a1)
{
  v2 = sub_10004B564(&qword_1005B25C0, &qword_1004D7480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_1003AB9E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = v8;
  v11[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11[13] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v11[12] = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100004984(a1);
  return v9;
}

unint64_t sub_1003AB9E4()
{
  result = qword_1005B25C8;
  if (!qword_1005B25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25C8);
  }

  return result;
}

unint64_t sub_1003ABA5C()
{
  result = qword_1005B25D0;
  if (!qword_1005B25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25D0);
  }

  return result;
}

unint64_t sub_1003ABAB4()
{
  result = qword_1005B25D8;
  if (!qword_1005B25D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25D8);
  }

  return result;
}

unint64_t sub_1003ABB0C()
{
  result = qword_1005B25E0;
  if (!qword_1005B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B25E0);
  }

  return result;
}

uint64_t sub_1003ABB60()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005E0B60);
  v1 = sub_10000A6F0(v0, qword_1005E0B60);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003ABC28(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  v2[8] = MyInterface;
  v4 = *(MyInterface - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1003ABDD0, 0, 0);
}

uint64_t sub_1003ABDD0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[6];
  v18 = v0[5];
  v19 = v0[8];
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;
  *(v8 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager) = 0;
  v9 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
  v10 = type metadata accessor for Location();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v0[4] = _swiftEmptyArrayStorage;
  sub_1003AE4F8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  v12 = *(v7 + 16);
  v0[19] = v12;
  v0[20] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8 + v11, v18, v19);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  type metadata accessor for PushTokenMonitor();
  swift_allocObject();
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_1003AC074;

  return sub_1003C3B48(0x69746375646F7270, 0xEA00000000006E6FLL, v13, v15);
}

uint64_t sub_1003AC074(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_1003AC174, 0, 0);
}

uint64_t sub_1003AC174()
{
  v1 = *(v0 + 48);
  *(v1 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor) = *(v0 + 176);
  return _swift_task_switch(sub_1003AC1A0, v1, 0);
}

uint64_t sub_1003AC1A0()
{
  v1 = *(v0 + 160);
  v14 = *(v0 + 144);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  (*(v0 + 152))(v2, *(v0 + 40), v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 184) = v10;
  (*(v5 + 32))(v10 + v8, v2, v4);
  *(v10 + v9) = v6;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v11 = type metadata accessor for BystanderLocationMonitor.LocationDelegate();
  *(v0 + 192) = v11;
  *(v0 + 200) = objc_allocWithZone(v11);
  v12 = v14;

  return _swift_task_switch(sub_1003AC2D0, 0, 0);
}

uint64_t sub_1003AC2D0()
{
  receiver = v0[12].receiver;
  super_class = v0[12].super_class;
  v3 = v0[11].super_class;
  v4 = v0[3].receiver;
  *(super_class + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_queue) = v0[9].receiver;
  v5 = (super_class + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_callback);
  *v5 = &unk_1004D76D8;
  v5[1] = v3;
  v0[1].receiver = super_class;
  v0[1].super_class = receiver;
  v0[13].receiver = objc_msgSendSuper2(v0 + 1, "init");
  sub_1003AE4F8(&qword_1005B27B0, type metadata accessor for BystanderLocationMonitor);
  swift_getObjectType();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AC3D8, v7, v6);
}

uint64_t sub_1003AC3D8()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[6];
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;
  v5 = v1;

  v6 = objc_allocWithZone(CLLocationManager);
  v7 = v2;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithEffectiveBundlePath:v8 delegate:v5 onQueue:v7];

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[13];
  v25 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[5];
  v16 = v0[6];
  if (v9)
  {
    v17 = *(v16 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager);
    *(v16 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_locationManager) = v9;
    v18 = v9;

    [v18 setDesiredAccuracy:kCLLocationAccuracyBystander];
    (*(v13 + 8))(v15, v14);

    v19 = v0[1];
    v20 = v0[6];

    return v19(v20);
  }

  else
  {
    v22 = type metadata accessor for GenericError();
    sub_1003AE4F8(&unk_1005B27C0, &type metadata accessor for GenericError);
    swift_allocError();
    *v23 = 0xD000000000000023;
    v23[1] = 0x80000001004E9040;
    (*(*(v22 - 8) + 104))(v23, enum case for GenericError.error(_:), v22);
    swift_willThrow();

    (*(v13 + 8))(v15, v14);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1003AC6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(*(sub_10004B564(&qword_1005B27B8, &unk_1004D7B60) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for Location();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1003AC820, 0, 0);
}

uint64_t sub_1003AC820(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v24 = v4[5];
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    v4[16] = v6;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4[16] = v6;
    if (v6)
    {
LABEL_3:
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v4[17] = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation;
        a1.n128_u64[0] = 138543362;
        v31 = a1;
        v4[18] = 0;
        v7 = v4[5];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v9 = v8;
        v4[19] = v8;
        v10 = v4[14];
        v11 = v4[15];
        v12 = v4[12];
        v13 = v4[13];
        v14 = v4[10];
        v15 = v4[11];
        v16 = v4[9];
        v32 = v4[6];
        [v8 coordinate];
        [v9 coordinate];
        [v9 horizontalAccuracy];
        v17 = [v9 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        (*(v15 + 8))(v12, v14);
        Location.init(latitude:longitude:horizontalAccuracy:timestamp:)();
        v18 = *(v10 + 16);
        v18(v16, v11, v13);
        v19 = *(v10 + 56);
        v19(v16, 0, 1, v13);
        MicroFindMyInterface.setLocation(location:)();
        v4[20] = 0;
        v20 = v4[15];
        v21 = v4[13];
        v22 = v4[8];
        v23 = v4[7];
        sub_100002CE0(v4[9], &qword_1005B27B8, &unk_1004D7B60);
        v18(v22, v20, v21);
        v19(v22, 0, 1, v21);
        v6 = sub_1003ACC88;
        a3 = v23;
        a4 = 0;
      }

      return _swift_task_switch(v6, a3, a4);
    }
  }

  v25 = v4[15];
  v26 = v4[12];
  v28 = v4[8];
  v27 = v4[9];

  v29 = v4[1];

  return v29();
}

uint64_t sub_1003ACC88()
{
  v1 = v0[17];
  v3 = v0[7];
  v2 = v0[8];
  swift_beginAccess();
  sub_1003AE540(v2, v3 + v1);
  swift_endAccess();
  sub_100002CE0(v2, &qword_1005B27B8, &unk_1004D7B60);

  return _swift_task_switch(sub_1003ACD38, 0, 0);
}

uint64_t sub_1003ACD38()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 144) + 1;
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  if (v3 == v2)
  {
LABEL_2:
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *&v4 = 138543362;
    v37 = v4;
    while (1)
    {
      v16 = *(v0 + 144) + 1;
      *(v0 + 144) = v16;
      v17 = *(v0 + 40);
      v39 = v1;
      v18 = (v17 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v16 + 32);
      v19 = v18;
      *(v0 + 152) = v18;
      v21 = *(v0 + 112);
      v20 = *(v0 + 120);
      v22 = *(v0 + 96);
      v23 = *(v0 + 104);
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      v26 = *(v0 + 72);
      v38 = *(v0 + 48);
      [v18 coordinate];
      [v19 coordinate];
      [v19 horizontalAccuracy];
      v27 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      (*(v25 + 8))(v22, v24);
      Location.init(latitude:longitude:horizontalAccuracy:timestamp:)();
      v28 = *(v21 + 16);
      v28(v26, v20, v23);
      v29 = *(v21 + 56);
      v29(v26, 0, 1, v23);
      MicroFindMyInterface.setLocation(location:)();
      *(v0 + 160) = v39;
      if (!v39)
      {
        break;
      }

      sub_100002CE0(*(v0 + 72), &qword_1005B27B8, &unk_1004D7B60);
      if (qword_1005A84D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000A6F0(v30, qword_1005E0B60);
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = v37;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v31, v32, "Error from setLocation: %{public}@", v11, 0xCu);
        sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v14 = *(v0 + 128);
      v15 = *(v0 + 144) + 1;
      (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
      v1 = 0;
      if (v15 == v14)
      {
        goto LABEL_2;
      }
    }

    v33 = *(v0 + 120);
    v34 = *(v0 + 104);
    v35 = *(v0 + 64);
    v36 = *(v0 + 56);
    sub_100002CE0(*(v0 + 72), &qword_1005B27B8, &unk_1004D7B60);
    v28(v35, v33, v34);
    v29(v35, 0, 1, v34);

    return _swift_task_switch(sub_1003ACC88, v36, 0);
  }
}

uint64_t sub_1003AD188()
{
  v1[5] = v0;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_10004B564(&qword_1005B27A0, &qword_1004D76A8);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B27A8, &unk_1004D76B0);
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003AD318, v0, 0);
}

uint64_t sub_1003AD318()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_1003AD344, v1, 0);
}

uint64_t sub_1003AD344()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[5];
  sub_1003C3E0C();

  return _swift_task_switch(sub_1003AD3B4, v3, 0);
}

uint64_t sub_1003AD3B4()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_1003AE4F8(&qword_1005B27B0, type metadata accessor for BystanderLocationMonitor);
  v6 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  v0[16] = v5;
  v0[17] = v6;
  v0[18] = 0;
  v7 = v0[5];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1003AD4DC;
  v10 = v0[14];
  v11 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v7, v5, v11);
}

uint64_t sub_1003AD4DC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1003AD5EC, v2, 0);
}

uint64_t sub_1003AD5EC()
{
  v30 = v0;
  v1 = v0 + 2;
  if (v0[2])
  {
    v3 = v0[3];
    v2 = v0[4];

    if (qword_1005A84D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B60);
    sub_100005F6C(v3, v2);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_1000049D0(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      v9 = Data.hexString.getter();
      v11 = sub_10000D01C(v9, v10, &v29);

      *(v7 + 4) = v11;
      v1 = v0 + 2;
      _os_log_impl(&_mh_execute_header, v5, v6, "publicToken: %s", v7, 0xCu);
      sub_100004984(v8);
    }

    v12 = v0[18];
    v13 = v0[5] + v0[17];
    MicroFindMyInterface.set(pushToken:)();
    if (v12)
    {
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Error from set(pushToken:) %{public}@", v16, 0xCu);
        sub_100002CE0(v17, &qword_1005A9670, &unk_1004C2480);

        sub_1000049D0(v3, v2);
      }

      else
      {
        sub_1000049D0(v3, v2);
      }
    }

    else
    {
      sub_1000049D0(v3, v2);
    }

    v0[18] = 0;
    v23 = v0[16];
    v24 = v0[5];
    v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v26 = swift_task_alloc();
    v0[19] = v26;
    *v26 = v0;
    v26[1] = sub_1003AD4DC;
    v27 = v0[14];
    v28 = v0[12];

    return AsyncStream.Iterator.next(isolation:)(v1, v24, v23, v28);
  }

  else
  {
    v19 = v0[8];
    (*(v0[13] + 8))(v0[14], v0[12]);
    static Clock<>.continuous.getter();
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_1003ADA30;
    v21 = v0[8];

    return sub_100291918(0xC5D1494C589C0000, 116415321, 0, 0, 1);
  }
}

uint64_t sub_1003ADA30()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  if (v0)
  {
    v9 = v3[5];

    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1003ADC14, v9, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = v3[14];
    v11 = v3[11];
    v12 = v3[8];

    v13 = *(v5 + 8);

    return v13();
  }
}

uint64_t sub_1003ADC14()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003ADC8C()
{
  v1 = OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_interface;
  MyInterface = type metadata accessor for MicroFindMyInterface();
  (*(*(MyInterface - 8) + 8))(v0 + v1, MyInterface);

  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_pushTokenMonitor);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated24BystanderLocationMonitor_cachedLatestLocation, &qword_1005B27B8, &unk_1004D7B60);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BystanderLocationMonitor()
{
  result = qword_1005B2638;
  if (!qword_1005B2638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003ADDA0()
{
  MyInterface = type metadata accessor for MicroFindMyInterface();
  if (v1 <= 0x3F)
  {
    v4 = *(MyInterface - 8) + 64;
    sub_1003ADE8C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003ADE8C()
{
  if (!qword_1005B2648)
  {
    type metadata accessor for Location();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B2648);
    }
  }
}

uint64_t sub_1003ADEE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003ADF04, 0, 0);
}

uint64_t sub_1003ADF04()
{
  v1 = (v0[2] + OBJC_IVAR____TtCC13findmylocated24BystanderLocationMonitorP33_867EA14A4684E78C09586D03D177D5B816LocationDelegate_callback);
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1002F607C;
  v5 = v0[3];

  return v7(v5);
}

void sub_1003AE1F4(void *a1)
{
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B90);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "didVisit: %@", v5, 0xCu);
    sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
  }
}

uint64_t sub_1003AE340()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100003690;

  return sub_1003ADEE4(v2, v3);
}

uint64_t sub_1003AE3D8(uint64_t a1)
{
  v4 = *(type metadata accessor for MicroFindMyInterface() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1003AC6BC(a1, v1 + v5, v7);
}

uint64_t sub_1003AE4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003AE540(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B27B8, &unk_1004D7B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AE5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1003B0818(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for Device();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1003AE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1003B0920(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for Handle();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_1003AE728(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005B29F0, &qword_1004D8830) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = type metadata accessor for Device();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v2[18] = v11;
  *v11 = v2;
  v11[1] = sub_1003AE8AC;

  return daemon.getter();
}

uint64_t sub_1003AE8AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v12 = *v1;
  *(v3 + 152) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalMessagingService();
  v9 = sub_1003B08D8(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1003B08D8(&qword_1005AD520, 255, type metadata accessor for LocalMessagingService);
  *v6 = v12;
  v6[1] = sub_1003AEA90;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003AEA90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *(*v2 + 80);
  v6 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v7 = sub_1003AF448;
  }

  else
  {
    v8 = v3[19];

    v7 = sub_1003AEBD0;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_1003AEBD0()
{
  v1 = v0[10];
  v2 = v0[21];
  if (*(v1 + 128))
  {
    v3 = v0[17];
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[9];
    v7 = *(v1 + 120);
    sub_10004B564(&qword_1005B2A00, &unk_1004D77D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004C1900;
    *(v8 + 32) = *(v1 + 112);

    AsyncStreamProvider.stream(initialEvents:)();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[23] = type metadata accessor for CellularWatchConnectionMonitor.IDSHelper();
    v11 = swift_allocObject();
    v0[24] = v11;
    *(v11 + 16) = v1;
    *(v1 + 128) = 1;
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v13 = *(v1 + 136);
    *(v1 + 136) = v12;
    swift_retain_n();

    return _swift_task_switch(sub_1003AED74, v2, 0);
  }
}

uint64_t sub_1003AED74()
{
  *(v0 + 200) = *(*(v0 + 168) + 128);
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  sub_1002F46D8();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AEE10, v2, v1);
}

uint64_t sub_1003AEE10()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[10];
  dispatch thunk of LocalMessaging.connectedDevice.getter();

  return _swift_task_switch(sub_1003AEE80, v3, 0);
}

uint64_t sub_1003AEE80()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v3, &qword_1005B29F0, &qword_1004D8830);
    goto LABEL_3;
  }

  v13 = v0[22];
  (*(v2 + 32))(v0[17], v3, v1);
  v14 = sub_1003AF56C();
  if (!v13)
  {
    if (v14)
    {
      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1004C1900;
      v22 = sub_1003AF878();
      v24 = v0[10];
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      v25 = *(v24 + 112);
      *(v24 + 112) = v21;
      v26 = sub_10022BB24(v25, v21);

      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[15];
      if (v26)
      {

        (*(v28 + 8))(v27, v29);
      }

      else
      {
        v30 = *(v0[10] + 120);
        v0[8] = v21;
        AsyncStreamProvider.yield(value:transaction:)();
        (*(v28 + 8))(v27, v29);
      }

LABEL_5:
      v8 = v0[24];
      v0[5] = v0[23];
      v0[6] = sub_1003B08D8(&qword_1005B29F8, 255, type metadata accessor for CellularWatchConnectionMonitor.IDSHelper);
      v0[2] = v8;

      v9 = swift_task_alloc();
      v0[26] = v9;
      *v9 = v0;
      v9[1] = sub_1003AF20C;
      v10 = v0[21];
      v11 = v0[13];

      return sub_1002F3E48(v11, (v0 + 2));
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
LABEL_3:
    v4 = v0[10];
    v5 = *(v4 + 112);
    *(v4 + 112) = _swiftEmptyArrayStorage;
    v6 = sub_10022BB24(v5, _swiftEmptyArrayStorage);

    if ((v6 & 1) == 0)
    {
      v7 = *(v0[10] + 120);
      v0[7] = _swiftEmptyArrayStorage;
      AsyncStreamProvider.yield(value:transaction:)();
    }

    goto LABEL_5;
  }

  v15 = v0[24];
  v16 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v17 = v0[17];
  v18 = v0[13];
  v19 = v0[14];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003AF20C()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v8 = *v1;
  (*v1)[27] = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_1003AF4D0;
  }

  else
  {
    v6 = v2[10];
    (*(v2[12] + 8))(v2[13], v2[11]);
    sub_100004984(v2 + 2);
    v5 = sub_1003AF348;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1003AF348()
{
  v1 = v0[24];

  v2 = v0[21];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = *(v7 + 120);
  sub_10004B564(&qword_1005B2A00, &unk_1004D77D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C1900;
  *(v9 + 32) = *(v7 + 112);

  AsyncStreamProvider.stream(initialEvents:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003AF448()
{
  v1 = v0[19];

  v2 = v0[22];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003AF4D0()
{
  v1 = v0[24];
  v2 = v0[21];

  sub_100004984(v0 + 2);
  v3 = v0[27];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003AF56C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActiveDevice];

  if (v1)
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 valueForProperty:v2];

    if (v3)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v10 == Device.uniqueIDOverride.getter() && v11 == v4)
        {

          goto LABEL_12;
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v5)
        {
LABEL_12:
          if ([v1 valueForProperty:PDRDevicePropertyKeyCellularEnabled])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v12 = 0u;
            v13 = 0u;
          }

          v14 = v12;
          v15 = v13;
          if (*(&v13 + 1))
          {
            if (swift_dynamicCast())
            {
              v8 = v10;
              return v8 & 1;
            }
          }

          else
          {
            sub_100002CE0(&v14, &qword_1005A9680, &qword_1004C32A0);
          }

          v8 = 0;
          return v8 & 1;
        }
      }
    }

    else
    {

      sub_100002CE0(&v14, &qword_1005A9680, &qword_1004C32A0);
    }
  }

  v6 = type metadata accessor for GenericError();
  sub_1003B08D8(&unk_1005B27C0, 255, &type metadata accessor for GenericError);
  swift_allocError();
  *v7 = 0xD000000000000011;
  v7[1] = 0x80000001004E9160;
  (*(*(v6 - 8) + 104))(v7, enum case for GenericError.error(_:), v6);
  swift_willThrow();
  return v8 & 1;
}

uint64_t sub_1003AF878()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActiveDevice];

  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForProperty:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {

LABEL_11:
    sub_100002CE0(&v13, &qword_1005A9680, &qword_1004C32A0);
LABEL_16:
    v6 = type metadata accessor for GenericError();
    sub_1003B08D8(&unk_1005B27C0, 255, &type metadata accessor for GenericError);
    swift_allocError();
    *v7 = 0xD000000000000011;
    v7[1] = 0x80000001004E9160;
    (*(*(v6 - 8) + 104))(v7, enum case for GenericError.error(_:), v6);
    return swift_willThrow();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v9 == Device.uniqueIDOverride.getter() && v10 == v4)
  {

    goto LABEL_13;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_13:
  if ([v1 valueForProperty:PDRDevicePropertyKeyUDID])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  return v9;
}

uint64_t sub_1003AFB60()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1003AFBCC()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005B27D0);
  v1 = sub_10000A6F0(v0, qword_1005B27D0);
  if (qword_1005A84F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005E0B90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003AFC94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_1003AFCDC, 0, 0);
}

uint64_t sub_1003AFCDC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 16);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = async function pointer to withinActor<A, B>(_:block:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for CellularWatchConnectionMonitor();
  v9 = sub_1003B08D8(&qword_1005B29E8, v8, type metadata accessor for CellularWatchConnectionMonitor);
  *v6 = v0;
  v6[1] = sub_1003AFE04;

  return withinActor<A, B>(_:block:)(v9, v3, &unk_1004D77C0, v4, v7, &type metadata for () + 8, v9);
}

uint64_t sub_1003AFE04()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 40);

    return _swift_task_switch(sub_1000161BC, 0, 0);
  }
}

uint64_t sub_1003AFF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v5 = *(*(sub_10004B564(&qword_1005B29F0, &qword_1004D8830) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Device();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1003B003C, a2, 0);
}

uint64_t sub_1003B003C()
{
  v45 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_1003AE5B0(v0[5], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v0[6], &qword_1005B29F0, &qword_1004D8830);
LABEL_3:
    v4 = v0[4];
    v5 = *(v4 + 112);
    *(v4 + 112) = _swiftEmptyArrayStorage;
    v6 = sub_10022BB24(v5, _swiftEmptyArrayStorage);

    if ((v6 & 1) == 0)
    {
      v7 = *(v0[4] + 120);
      v0[2] = _swiftEmptyArrayStorage;
      AsyncStreamProvider.yield(value:transaction:)();
    }

    if (qword_1005A84E0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005B27D0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44[0] = v12;
      *v11 = 136315138;
      v13 = Array.description.getter();
      v15 = sub_10000D01C(v13, v14, v44);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "connectedDevicesChanged: %s", v11, 0xCu);
      sub_100004984(v12);
    }

    goto LABEL_11;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = sub_1003AF56C();
  if ((v16 & 1) == 0)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_3;
  }

  v21 = v0[9];
  v22 = sub_1003AF878();
  v24 = v23;
  v25 = v0[4];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004C1900;
  *(v26 + 32) = v22;
  *(v26 + 40) = v24;
  v27 = *(v25 + 112);
  *(v25 + 112) = v26;
  LOBYTE(v25) = sub_10022BB24(v27, v26);

  if ((v25 & 1) == 0)
  {
    v28 = *(v0[4] + 120);
    v0[3] = v26;
    AsyncStreamProvider.yield(value:transaction:)();
  }

  if (qword_1005A84E0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005B27D0);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[8];
  v34 = v0[9];
  v35 = v0[7];
  if (v32)
  {
    v43 = v0[9];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136315138;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1004C1900;
    *(v38 + 32) = v22;
    *(v38 + 40) = v24;
    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_10000D01C(v39, v41, v44);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v30, v31, "connectedDevicesChanged: %s", v36, 0xCu);
    sub_100004984(v37);

    (*(v33 + 8))(v43, v35);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }

LABEL_11:
  v17 = v0[9];
  v18 = v0[6];

  v19 = v0[1];

  return v19();
}