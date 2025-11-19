unint64_t sub_1007C31E4()
{
  result = qword_1016A9C08;
  if (!qword_1016A9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C08);
  }

  return result;
}

unint64_t sub_1007C3238()
{
  result = qword_1016A9C18;
  if (!qword_1016A9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C18);
  }

  return result;
}

unint64_t sub_1007C328C()
{
  result = qword_1016A9C28;
  if (!qword_1016A9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C28);
  }

  return result;
}

unint64_t sub_1007C32E0()
{
  result = qword_1016A9C38;
  if (!qword_1016A9C38)
  {
    sub_1000BC580(&qword_1016A9C30, &qword_1013BBED0);
    sub_1007C3394(&qword_1016A9C40, type metadata accessor for UTInfoPublishRequestBody.State);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C38);
  }

  return result;
}

uint64_t sub_1007C3394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007C33DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9C48, &qword_1013BBED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007C344C()
{
  result = qword_1016A9C50;
  if (!qword_1016A9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C50);
  }

  return result;
}

uint64_t sub_1007C34A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 3)
  {
    return sub_100006654(a2, a3);
  }

  return result;
}

uint64_t sub_1007C34FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[25])
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

uint64_t sub_1007C355C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1007C35C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1007C360C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1007C3664()
{
  result = qword_1016A9C58;
  if (!qword_1016A9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C58);
  }

  return result;
}

unint64_t sub_1007C36BC()
{
  result = qword_1016A9C60;
  if (!qword_1016A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C60);
  }

  return result;
}

unint64_t sub_1007C3714()
{
  result = qword_1016A9C68;
  if (!qword_1016A9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C68);
  }

  return result;
}

unint64_t sub_1007C376C()
{
  result = qword_1016A9C70;
  if (!qword_1016A9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C70);
  }

  return result;
}

unint64_t sub_1007C37C4()
{
  result = qword_1016A9C78;
  if (!qword_1016A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C78);
  }

  return result;
}

unint64_t sub_1007C381C()
{
  result = qword_1016A9C80;
  if (!qword_1016A9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C80);
  }

  return result;
}

unint64_t sub_1007C3874()
{
  result = qword_1016A9C88;
  if (!qword_1016A9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C88);
  }

  return result;
}

unint64_t sub_1007C38CC()
{
  result = qword_1016A9C90;
  if (!qword_1016A9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C90);
  }

  return result;
}

unint64_t sub_1007C3924()
{
  result = qword_1016A9C98;
  if (!qword_1016A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9C98);
  }

  return result;
}

unint64_t sub_1007C397C()
{
  result = qword_1016A9CA0;
  if (!qword_1016A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CA0);
  }

  return result;
}

unint64_t sub_1007C39D4()
{
  result = qword_1016A9CA8;
  if (!qword_1016A9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CA8);
  }

  return result;
}

unint64_t sub_1007C3A2C()
{
  result = qword_1016A9CB0;
  if (!qword_1016A9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CB0);
  }

  return result;
}

unint64_t sub_1007C3A80()
{
  result = qword_1016A9CC0;
  if (!qword_1016A9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CC0);
  }

  return result;
}

unint64_t sub_1007C3AD4()
{
  result = qword_1016A9CC8;
  if (!qword_1016A9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CC8);
  }

  return result;
}

unint64_t sub_1007C3B28()
{
  result = qword_1016A9CD8;
  if (!qword_1016A9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CD8);
  }

  return result;
}

unint64_t sub_1007C3B7C()
{
  result = qword_1016A9CE8;
  if (!qword_1016A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CE8);
  }

  return result;
}

unint64_t sub_1007C3BD0()
{
  result = qword_1016A9CF0;
  if (!qword_1016A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CF0);
  }

  return result;
}

unint64_t sub_1007C3C24()
{
  result = qword_1016A9CF8;
  if (!qword_1016A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9CF8);
  }

  return result;
}

unint64_t sub_1007C3CDC()
{
  result = qword_1016A9D00;
  if (!qword_1016A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D00);
  }

  return result;
}

unint64_t sub_1007C3D34()
{
  result = qword_1016A9D08;
  if (!qword_1016A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D08);
  }

  return result;
}

unint64_t sub_1007C3D8C()
{
  result = qword_1016A9D10;
  if (!qword_1016A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D10);
  }

  return result;
}

unint64_t sub_1007C3DE4()
{
  result = qword_1016A9D18;
  if (!qword_1016A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D18);
  }

  return result;
}

unint64_t sub_1007C3E3C()
{
  result = qword_1016A9D20;
  if (!qword_1016A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D20);
  }

  return result;
}

unint64_t sub_1007C3E94()
{
  result = qword_1016A9D28;
  if (!qword_1016A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D28);
  }

  return result;
}

unint64_t sub_1007C3EEC()
{
  result = qword_1016A9D30;
  if (!qword_1016A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D30);
  }

  return result;
}

unint64_t sub_1007C3F44()
{
  result = qword_1016A9D38;
  if (!qword_1016A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D38);
  }

  return result;
}

unint64_t sub_1007C3F9C()
{
  result = qword_1016A9D40;
  if (!qword_1016A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D40);
  }

  return result;
}

unint64_t sub_1007C3FF4()
{
  result = qword_1016A9D48;
  if (!qword_1016A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D48);
  }

  return result;
}

unint64_t sub_1007C404C()
{
  result = qword_1016A9D50;
  if (!qword_1016A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D50);
  }

  return result;
}

unint64_t sub_1007C40A4()
{
  result = qword_1016A9D58;
  if (!qword_1016A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D58);
  }

  return result;
}

unint64_t sub_1007C40F8()
{
  result = qword_1016A9D60;
  if (!qword_1016A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D60);
  }

  return result;
}

unint64_t sub_1007C414C()
{
  result = qword_1016A9D68;
  if (!qword_1016A9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D68);
  }

  return result;
}

unint64_t sub_1007C41A0()
{
  result = qword_1016A9D70;
  if (!qword_1016A9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A9D70);
  }

  return result;
}

uint64_t ConnectionPair.__allocating_init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  ConnectionPair.init(_:readonly:key:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ConnectionPair.init(_:readonly:key:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v50 = a3;
  v53 = a4;
  LODWORD(v48) = a2;
  v55 = type metadata accessor for URL();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v55);
  v47 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - v10;
  __chkstk_darwin(v9);
  v54 = &v47 - v12;
  v13 = type metadata accessor for Connection.Location();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = (&v47 - v19);
  v21 = *(v14 + 16);
  v51 = a1;
  v21(&v47 - v19, a1, v13);
  v22 = (*(v14 + 88))(v20, v13);
  if (v22 != enum case for Connection.Location.uri(_:))
  {
    v35 = v49;
    v34 = v50;
    if (v22 != enum case for Connection.Location.inMemory(_:) && v22 != enum case for Connection.Location.temporary(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v37 = v51;
    v21(v18, v51, v13);
    v38 = type metadata accessor for Connection();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = Connection.init(_:readonly:)();
    if (v35)
    {
      sub_100006654(v34, v53);
      (*(v14 + 8))(v37, v13);
      v33 = v52;
      goto LABEL_12;
    }

    v33 = v52;
    *(v52 + 16) = v41;
    *(v33 + 24) = v41;

LABEL_14:

    Connection.busyTimeout.setter();

    v45 = *(v33 + 24);
    Connection.busyTimeout.setter();
    sub_100006654(v34, v53);
    (*(v14 + 8))(v37, v13);
    return v33;
  }

  (*(v14 + 96))(v20, v13);
  v23 = *v20;
  v24 = v20[1];
  v25 = v54;
  URL.init(fileURLWithPath:)();

  v26 = type metadata accessor for Connection();
  v27 = *(v5 + 16);
  v27(v11, v25, v55);
  v28 = v50;
  v29 = v53;
  sub_10002E98C(v50, v53);
  v30 = v48 & 1;
  v48 = v26;
  v31 = v49;
  v32 = Connection.init(_:readonly:key:)(v11, v30, v28, v29);
  if (!v31)
  {
    v49 = v5;
    v42 = v28;
    v33 = v52;
    *(v52 + 24) = v32;
    v43 = v47;
    v27(v47, v54, v55);
    sub_10002E98C(v42, v29);
    v44 = Connection.init(_:readonly:key:)(v43, 1, v42, v29);
    v34 = v42;
    (*(v49 + 8))(v54, v55);
    *(v33 + 16) = v44;
    v37 = v51;
    goto LABEL_14;
  }

  sub_100006654(v28, v29);
  (*(v14 + 8))(v51, v13);
  (*(v5 + 8))(v54, v55);
  v33 = v52;
LABEL_12:
  type metadata accessor for ConnectionPair();
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t ConnectionPair.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ConnectionPair.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1007C4844()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B350);
  sub_1000076D4(v0, qword_10177B350);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C48B4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_101074BC4(v2);

  result = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  qword_1016A9E20 = result;
  return result;
}

uint64_t sub_1007C498C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1007C4B04, v1, 0);
}

uint64_t sub_1007C4B04()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 120) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Initial keys downloading for circle %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  v17 = *(v0 + 80);
  v18 = *(*(v0 + 24) + 152);
  *(v0 + 128) = v18;
  *(v0 + 176) = *(v17 + 20);

  return _swift_task_switch(sub_1007C4D7C, v18, 0);
}

uint64_t sub_1007C4D7C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 176), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1007C4EE4;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v10);
}

uint64_t sub_1007C4EE4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1007C5010, v3, 0);
}

uint64_t sub_1007C5010()
{
  v33 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    v3 = v0[15];
    sub_1007D493C(v0[2], v0[12], type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[12];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v8 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v32);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    }

    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[7];

    v31 = v0[1];

    return v31();
  }

  v17 = v0[13];
  sub_1007D48B4(v2, v17, type metadata accessor for MemberSharingCircle);
  v18 = *(v17 + *(v1 + 40));
  v19 = v18 > 4;
  v20 = (1 << v18) & 0x16;
  if (v19 || v20 == 0)
  {
    sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_1007C5378;
  v23 = v0[2];
  v24 = v0[3];

  return sub_1007C7AC0(v23, 1);
}

uint64_t sub_1007C5378()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1007D4EA4;
  }

  else
  {
    v6 = sub_1007C54A4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007C54A4()
{
  if (qword_101694950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  *(v0 + 168) = qword_1016A9E20;
  *(v0 + 180) = *(v1 + 24);
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007C55B0, v3, v2);
}

uint64_t sub_1007C55B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + *(v0 + 180);
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_1007D4E9C, v2, 0);
}

uint64_t sub_1007C5654(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 220) = a3;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 + 64);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v4 + 88) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle();
  *(v4 + 104) = v9;
  v10 = *(v9 - 8);
  *(v4 + 112) = v10;
  *(v4 + 120) = *(v10 + 64);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1007C57E8, v3, 0);
}

uint64_t sub_1007C57E8()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  *(v0 + 160) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 220);
    v7 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 136315651;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 24) = *(v0 + 40);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 152);
    v13 = *(v0 + 104);
    v14 = *(v0 + 56);
    v15 = sub_1000136BC(v8, v9, &v24);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v16 = *(v13 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1007D49A4(v12, type metadata accessor for MemberSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v24);

    *(v7 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Download Keys for circle %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 152);

    sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
  }

  v21 = *(v0 + 104);
  v22 = *(*(v0 + 48) + 152);
  *(v0 + 168) = v22;
  *(v0 + 216) = *(v21 + 20);

  return _swift_task_switch(sub_1007C5AD8, v22, 0);
}

uint64_t sub_1007C5AD8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v4 + 16))(v2, *(v0 + 32) + *(v0 + 216), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_1007C5C40;
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v10);
}

uint64_t sub_1007C5C40()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1007C5D6C, v3, 0);
}

uint64_t sub_1007C5D6C()
{
  v46 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    v3 = *(v0 + 160);
    sub_1007D493C(*(v0 + 32), *(v0 + 128), type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 220);
      v7 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v7 = 136315651;
      if (v6)
      {
        v8 = 0;
        v9 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 16) = *(v0 + 40);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v9 = v27;
      }

      v28 = *(v0 + 128);
      v29 = *(v0 + 104);
      v30 = *(v0 + 56);
      v31 = sub_1000136BC(v8, v9, &v45);

      *(v7 + 4) = v31;
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      v32 = *(v29 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1007D49A4(v28, type metadata accessor for MemberSharingCircle);
      v36 = sub_1000136BC(v33, v35, &v45);

      *(v7 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v7, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = *(v0 + 128);

      sub_1007D49A4(v26, type metadata accessor for MemberSharingCircle);
    }

    v38 = *(v0 + 144);
    v37 = *(v0 + 152);
    v40 = *(v0 + 128);
    v39 = *(v0 + 136);
    v41 = *(v0 + 96);
    v42 = *(v0 + 80);

    v43 = *(v0 + 8);

    return v43();
  }

  v10 = *(v0 + 144);
  sub_1007D48B4(v2, v10, type metadata accessor for MemberSharingCircle);
  v11 = *(v10 + *(v1 + 40));
  v12 = v11 > 4;
  v13 = (1 << v11) & 0x16;
  if (v12 || v13 == 0)
  {
    sub_1007D49A4(*(v0 + 144), type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  if (qword_101694950 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 136);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 48);
  v19 = *(v0 + 32);
  v20 = *(*(v0 + 104) + 24);
  sub_1007D493C(v19, v15, type metadata accessor for MemberSharingCircle);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v0 + 192) = v22;
  *(v22 + 16) = v18;
  sub_1007D48B4(v15, v22 + v21, type metadata accessor for MemberSharingCircle);
  v23 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v44 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v24 = swift_task_alloc();
  *(v0 + 200) = v24;
  *v24 = v0;
  v24[1] = sub_1007C6260;

  return (v44)(v19 + v20, &unk_1013BCC48, v22, sub_1007C6DE8, 0);
}

uint64_t sub_1007C6260()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1007C646C;
  }

  else
  {
    v7 = sub_1007C63A8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1007C63A8()
{
  sub_1007D49A4(v0[18], type metadata accessor for MemberSharingCircle);
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007C646C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v5 = v0[10];
  sub_1007D49A4(v0[18], type metadata accessor for MemberSharingCircle);

  v6 = v0[1];
  v7 = v0[26];

  return v6();
}

uint64_t sub_1007C6534(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v2[9] = *(v7 + 64);
  v2[10] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1007C66A0, 0, 0);
}

uint64_t sub_1007C66A0()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + 152);
  *(v0 + 112) = v2;
  *(v0 + 152) = *(v1 + 20);
  return _swift_task_switch(sub_1007C66D0, v2, 0);
}

uint64_t sub_1007C66D0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v4 + 16))(v2, *(v0 + 24) + *(v0 + 152), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_1007C683C;
  v9 = *(v0 + 104);
  v10 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v10);
}

uint64_t sub_1007C683C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1007C6954, 0, 0);
}

uint64_t sub_1007C6954()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = v0[5];
  sub_1000D2A70(v0[13], v1, &unk_101698BC0, &qword_10138C440);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[12], &unk_101698BC0, &qword_10138C440);
    sub_1001BB034();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[12];
    v6 = v0[10];
    v7 = v0[6];
    sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

    v8 = v0[1];

    return v8(0);
  }

  else
  {
    sub_1007D48B4(v0[12], v0[6], type metadata accessor for MemberSharingCircle);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_1007C6B3C;
    v11 = v0[6];
    v12 = v0[2];

    return sub_1007C7AC0(v11, 0);
  }
}

uint64_t sub_1007C6B3C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1007C6D18;
  }

  else
  {
    v3 = sub_1007C6C50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007C6C50()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  sub_1007D49A4(v0[6], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

  v4 = v0[1];

  return v4(1);
}

uint64_t sub_1007C6D18()
{
  sub_1007D49A4(v0[6], type metadata accessor for MemberSharingCircle);
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[6];
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1007C6DE8()
{
  sub_1001BB034();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_1007C6E34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1007C6FAC, v1, 0);
}

uint64_t sub_1007C6FAC()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 120) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Force download Keys for circle %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  v17 = *(v0 + 80);
  v18 = *(*(v0 + 24) + 152);
  *(v0 + 128) = v18;
  *(v0 + 168) = *(v17 + 20);

  return _swift_task_switch(sub_1007C7224, v18, 0);
}

uint64_t sub_1007C7224()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 168), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1007C738C;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v10);
}

uint64_t sub_1007C738C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1007C74B8, v3, 0);
}

uint64_t sub_1007C74B8()
{
  v33 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    v3 = v0[15];
    sub_1007D493C(v0[2], v0[12], type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[12];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v8 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v32);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    }

    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[7];

    v31 = v0[1];

    return v31();
  }

  v17 = v0[13];
  sub_1007D48B4(v2, v17, type metadata accessor for MemberSharingCircle);
  v18 = *(v17 + *(v1 + 40));
  v19 = v18 > 4;
  v20 = (1 << v18) & 0x16;
  if (v19 || v20 == 0)
  {
    sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  v22 = swift_task_alloc();
  v0[19] = v22;
  *v22 = v0;
  v22[1] = sub_1007C7820;
  v23 = v0[2];
  v24 = v0[3];

  return sub_1007C7AC0(v23, 0);
}

uint64_t sub_1007C7820()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1007C7A00;
  }

  else
  {
    v6 = sub_1007C794C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007C794C()
{
  sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1007C7A00()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_1007C7AC0(uint64_t a1, char a2)
{
  *(v3 + 75) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle();
  *(v3 + 144) = v5;
  v6 = *(v5 - 8);
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 + 64);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1007C7BF4, v2, 0);
}

uint64_t sub_1007C7BF4()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Process keys downloading for circle %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  v16 = *sub_1000035D0((v0[16] + 112), *(v0[16] + 136));
  v17 = swift_task_alloc();
  v0[27] = v17;
  *v17 = v0;
  v17[1] = sub_1007C7EA8;
  v18 = v0[15];

  return sub_100C746A0(v18);
}

uint64_t sub_1007C7EA8(uint64_t a1)
{
  v3 = *(*v2 + 216);
  v4 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {
    v5 = v4[16];

    return _swift_task_switch(sub_1007C82C8, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[30] = v6;
    *v6 = v4;
    v6[1] = sub_1007C8030;

    return sub_100EC7608(2);
  }
}

uint64_t sub_1007C8030()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 248) = v4;
  *v4 = v3;
  v4[1] = sub_1007C81A0;
  v5 = *(v1 + 128);
  v6 = *(v1 + 75);
  v7 = *(v1 + 120);
  v8 = *(v1 + 224);

  return sub_1007C9364(v8, v7, v6);
}

uint64_t sub_1007C81A0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_1007C8FA8;
  }

  else
  {
    v6 = *(v2 + 224);
    v7 = *(v2 + 128);

    v5 = sub_1007C8834;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007C82C8()
{
  v46 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  sub_1007D493C(*(v0 + 120), *(v0 + 192), type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = *(v7 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v45);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2082;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = Error.localizedDescription.getter();
    v19 = sub_1000136BC(v17, v18, &v45);

    *(v8 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to download keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v8, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = *(v0 + 192);

    sub_1007D49A4(v20, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 80) = *(v0 + 232);
  swift_errorRetain();
  *(v0 + 272) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if (*(v0 + 73) == 19)
    {
      *(v0 + 96) = *(v0 + 232);
      swift_errorRetain();
      if (swift_dynamicCast())
      {
        v21 = *(v0 + 272);
        *(v0 + 88) = *(v0 + 232);
        swift_errorRetain();
        if (swift_dynamicCast())
        {
          v22 = *(v0 + 232);
          if (*(v0 + 72) == 1 && *(v0 + 64) > 5uLL)
          {
            v23 = *(v0 + 176);
            v25 = *(v0 + 152);
            v24 = *(v0 + 160);
            v27 = *(v0 + 128);
            v26 = *(v0 + 136);
            v28 = *(v0 + 120);
            v29 = type metadata accessor for TaskPriority();
            (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
            sub_1007D493C(v28, v23, type metadata accessor for MemberSharingCircle);
            v31 = sub_1007D471C(&qword_1016A9F08, v30, type metadata accessor for ShareKeysDownloadUseCase);
            v32 = (*(v25 + 80) + 40) & ~*(v25 + 80);
            v33 = swift_allocObject();
            v33[2] = v27;
            v33[3] = v31;
            v33[4] = v27;
            sub_1007D48B4(v23, v33 + v32, type metadata accessor for MemberSharingCircle);
            swift_retain_n();
            sub_10025EDD4(0, 0, v26, &unk_1013BCC38, v33);

LABEL_17:
            v39 = *(v0 + 192);
            v38 = *(v0 + 200);
            v41 = *(v0 + 176);
            v40 = *(v0 + 184);
            v42 = *(v0 + 168);
            v43 = *(v0 + 136);

            v44 = *(v0 + 8);

            return v44();
          }

          v37 = *(v0 + 232);
        }

        else
        {
          v36 = *(v0 + 232);
        }

        goto LABEL_17;
      }
    }
  }

  v34 = swift_task_alloc();
  *(v0 + 280) = v34;
  *v34 = v0;
  v34[1] = sub_1007C8C48;

  return sub_100EC7608(0);
}

uint64_t sub_1007C8834()
{
  v19 = v0;
  v1 = v0[26];
  sub_1007D493C(v0[15], v0[23], type metadata accessor for MemberSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  if (v4)
  {
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = *(v6 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v5, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done processing members for circle %{private,mask.hash}s.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {

    sub_1007D49A4(v5, type metadata accessor for MemberSharingCircle);
  }

  v14 = *sub_1000035D0((v0[16] + 160), *(v0[16] + 184));
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_1007C8A94;
  v16 = v0[15];

  return sub_10108147C(v16);
}

uint64_t sub_1007C8A94()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v11 = *v0;

  v3 = v1[25];
  v4 = v1[24];
  v5 = v1[23];
  v6 = v1[22];
  v7 = v1[21];
  v8 = v1[17];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1007C8C48()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_1007C8D58, v2, 0);
}

uint64_t sub_1007C8D58()
{
  *(v0 + 88) = *(v0 + 232);
  v1 = *(v0 + 272);
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = *(v0 + 232);
    goto LABEL_8;
  }

  v2 = *(v0 + 232);
  if (*(v0 + 72) != 1 || *(v0 + 64) <= 5uLL)
  {
    v4 = *(v0 + 232);
LABEL_8:

    goto LABEL_10;
  }

  v6 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1007D493C(v11, v6, type metadata accessor for MemberSharingCircle);
  v14 = sub_1007D471C(&qword_1016A9F08, v13, type metadata accessor for ShareKeysDownloadUseCase);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = v14;
  v16[4] = v10;
  sub_1007D48B4(v6, v16 + v15, type metadata accessor for MemberSharingCircle);
  swift_retain_n();
  sub_10025EDD4(0, 0, v9, &unk_1013BCC38, v16);

LABEL_10:
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 168);
  v22 = *(v0 + 136);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1007C8FA8()
{
  v30 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[15];

  sub_1007D493C(v5, v4, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[32];
    v9 = v0[21];
    v10 = v0[18];
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = *(v10 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v29);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[7];
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v29);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to process circle: %{private,mask.hash}s,\nerror: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[32];
    v24 = v0[21];

    sub_1007D49A4(v24, type metadata accessor for MemberSharingCircle);
  }

  v25 = *sub_1000035D0((v0[16] + 160), *(v0[16] + 184));
  v26 = swift_task_alloc();
  v0[33] = v26;
  *v26 = v0;
  v26[1] = sub_1007C8A94;
  v27 = v0[15];

  return sub_10108147C(v27);
}

uint64_t sub_1007C929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007C92BC, a4, 0);
}

uint64_t sub_1007C92BC()
{
  v1 = *sub_1000035D0((v0[2] + 160), *(v0[2] + 184));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1007D4EA0;
  v3 = v0[3];

  return sub_10107F924(v3);
}

uint64_t sub_1007C9364(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = v3;
  *(v4 + 976) = a3;
  *(v4 + 280) = a1;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  *(v4 + 320) = v6;
  v7 = *(v6 - 8);
  *(v4 + 328) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 336) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 344) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  v11 = type metadata accessor for MemberPeerTrust();
  *(v4 + 360) = v11;
  v12 = *(v11 - 8);
  *(v4 + 368) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 384) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v4 + 392) = swift_task_alloc();
  v16 = type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member(0);
  *(v4 + 400) = v16;
  v17 = *(v16 - 8);
  *(v4 + 408) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  v19 = type metadata accessor for MemberSharingCircle();
  *(v4 + 488) = v19;
  v20 = *(v19 - 8);
  *(v4 + 496) = v20;
  *(v4 + 504) = *(v20 + 64);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v4 + 592) = v21;
  v22 = *(v21 - 8);
  *(v4 + 600) = v22;
  *(v4 + 608) = *(v22 + 64);
  *(v4 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_1007C9740, v3, 0);
}

uint64_t sub_1007C9740()
{
  v1 = *(v0 + 488);
  v2 = *(*(v0 + 296) + 152);
  *(v0 + 624) = v2;
  *(v0 + 960) = *(v1 + 24);
  return _swift_task_switch(sub_1007C9770, v2, 0);
}

uint64_t sub_1007C9770()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 288);
  v8 = *(v5 + 16);
  *(v0 + 632) = v8;
  *(v0 + 640) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = *(v5 + 80);
  *(v0 + 964) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 648) = v11;
  *(v11 + 16) = v2;
  v12 = *(v5 + 32);
  *(v0 + 656) = v12;
  *(v0 + 664) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v6);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 672) = v14;
  v15 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v14 = v0;
  v14[1] = sub_1007C9920;

  return unsafeBlocking<A>(context:_:)(v0 + 264, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v11, v15);
}

uint64_t sub_1007C9920()
{
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 624);
  v5 = *v0;

  return _swift_task_switch(sub_1007C9A4C, v3, 0);
}

uint64_t sub_1007C9A4C()
{
  v1 = v0[37];
  v0[85] = v0[33];
  return _swift_task_switch(sub_1007C9A70, v1, 0);
}

uint64_t sub_1007C9A70()
{
  v61 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 288);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = 0;
  v5 = sub_10013CEF0(sub_1007D4650, v3, v1);
  *(v0 + 688) = v5;

  v6 = *(v5 + 16);
  *(v0 + 696) = v6;
  if (!v6)
  {
LABEL_11:
    v4 = _swiftEmptyArrayStorage;
    *(v0 + 744) = _swiftEmptyArrayStorage;
    if (qword_101694480 == -1)
    {
LABEL_12:
      v25 = *(v0 + 576);
      v27 = *(v0 + 280);
      v26 = *(v0 + 288);
      v28 = type metadata accessor for Logger();
      *(v0 + 752) = sub_1000076D4(v28, qword_10177A560);
      sub_1007D493C(v26, v25, type metadata accessor for MemberSharingCircle);
      swift_bridgeObjectRetain_n();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 592);
        v32 = *(v0 + 576);
        v33 = *(v0 + 488);
        v59 = *(v0 + 400);
        v34 = *(v0 + 280);
        v35 = swift_slowAlloc();
        v60[0] = swift_slowAlloc();
        *v35 = 141559299;
        *(v35 + 4) = 1752392040;
        *(v35 + 12) = 2081;
        v36 = *(v33 + 28);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        sub_1007D49A4(v32, type metadata accessor for MemberSharingCircle);
        v40 = sub_1000136BC(v37, v39, v60);

        *(v35 + 14) = v40;
        *(v35 + 22) = 2080;

        v41 = Array.description.getter();
        v43 = v42;

        v44 = sub_1000136BC(v41, v43, v60);

        *(v35 + 24) = v44;
        *(v35 + 32) = 2048;
        *(v35 + 34) = v4[2];
        *(v35 + 42) = 2080;
        v45 = Array.description.getter();
        v47 = sub_1000136BC(v45, v46, v60);

        *(v35 + 44) = v47;
        *(v35 + 52) = 2048;
        v48 = *(v34 + 16);

        *(v35 + 54) = v48;

        _os_log_impl(&_mh_execute_header, v29, v30, "Processing circle: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v35, 0x3Eu);
        swift_arrayDestroy();
      }

      else
      {
        v54 = *(v0 + 576);
        v55 = *(v0 + 280);
        swift_bridgeObjectRelease_n();

        sub_1007D49A4(v54, type metadata accessor for MemberSharingCircle);
      }

      v56 = async function pointer to daemon.getter[1];
      v57 = swift_task_alloc();
      *(v0 + 760) = v57;
      *v57 = v0;
      v57[1] = sub_1007CA868;

      return daemon.getter();
    }

LABEL_24:
    swift_once();
    goto LABEL_12;
  }

  v7 = *(v0 + 488);
  v8 = *(*(v0 + 496) + 80);
  *(v0 + 968) = v8;
  *(v0 + 712) = _swiftEmptyArrayStorage;
  *(v0 + 704) = 0;
  v9 = *(v0 + 688);
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 584);
  sub_1007D493C(v9 + ((v8 + 32) & ~v8), v10, type metadata accessor for MemberSharingCircle);
  v11 = *(v10 + *(v7 + 36));
  v12 = *(v11 + 16);
  if (!v12)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v13 = *(v0 + 600);
  v14 = (*(v0 + 964) + 32) & ~*(v0 + 964);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v15 = *(v13 + 72);
  v4 = swift_allocObject();
  v16 = j__malloc_size(v4);
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v14 == 0x8000000000000000 && v15 == -1)
  {
    __break(1u);
    return daemon.getter();
  }

  v18 = (*(v0 + 964) + 32) & ~*(v0 + 964);
  v4[2] = v12;
  v4[3] = 2 * ((v16 - v14) / v15);
  v19 = sub_1003CC2CC(v0 + 16, v4 + v18, v12, v11);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);

  sub_1001BE470();
  if (v19 != v12)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 720) = v4;
  *(v0 + 272) = v4;
  v49 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v50 = swift_task_alloc();
  *(v0 + 728) = v50;
  v51 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v52 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v50 = v0;
  v50[1] = sub_1007CA07C;
  v53 = *(v0 + 296);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013BCBE0, v53, v51, &type metadata for String, v52);
}

uint64_t sub_1007CA07C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v5 = *v2;
  *(*v2 + 736) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = *(v3 + 720);
    v8 = *(v3 + 296);

    return _swift_task_switch(sub_1007CA1C0, v8, 0);
  }
}

uint64_t sub_1007CA1C0()
{
  v69 = v1;
  v2 = *(v1 + 736);
  v3 = *(v2 + 16);
  v4 = *(*(v1 + 712) + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 712);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v0 + 3) >> 1)
  {
    if (*(v2 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v3;
  }

  else
  {
    v11 = v4;
  }

  v0 = sub_100A5B2CC(isUniquelyReferenced_nonNull_native, v11, 1, *(v1 + 712));
  if (!*(v2 + 16))
  {
LABEL_13:
    v12 = *(v1 + 736);

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_5:
  if ((*(v0 + 3) >> 1) - *(v0 + 2) < v3)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_16:
    v15 = *(v1 + 576);
    v17 = *(v1 + 280);
    v16 = *(v1 + 288);
    v18 = type metadata accessor for Logger();
    *(v1 + 752) = sub_1000076D4(v18, qword_10177A560);
    sub_1007D493C(v16, v15, type metadata accessor for MemberSharingCircle);
    swift_bridgeObjectRetain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v1 + 592);
      v22 = *(v1 + 576);
      v23 = *(v1 + 488);
      v67 = *(v1 + 400);
      v24 = *(v1 + 280);
      v25 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v25 = 141559299;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v26 = *(v23 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1007D49A4(v22, type metadata accessor for MemberSharingCircle);
      v30 = sub_1000136BC(v27, v29, &v68);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;

      v31 = Array.description.getter();
      v33 = v32;

      v34 = sub_1000136BC(v31, v33, &v68);

      *(v25 + 24) = v34;
      *(v25 + 32) = 2048;
      *(v25 + 34) = *(v0 + 2);
      *(v25 + 42) = 2080;
      v35 = Array.description.getter();
      v37 = sub_1000136BC(v35, v36, &v68);

      *(v25 + 44) = v37;
      *(v25 + 52) = 2048;
      v38 = *(v24 + 16);

      *(v25 + 54) = v38;

      _os_log_impl(&_mh_execute_header, v19, v20, "Processing circle: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v25, 0x3Eu);
      swift_arrayDestroy();

      goto LABEL_28;
    }

LABEL_27:
    v57 = *(v1 + 576);
    v58 = *(v1 + 280);
    swift_bridgeObjectRelease_n();

    sub_1007D49A4(v57, type metadata accessor for MemberSharingCircle);
LABEL_28:
    v59 = async function pointer to daemon.getter[1];
    v60 = swift_task_alloc();
    *(v1 + 760) = v60;
    *v60 = v1;
    v60[1] = sub_1007CA868;

    return daemon.getter();
  }

  v7 = *(v1 + 736);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v8 = *(v0 + 2);
    v9 = __OFADD__(v8, v3);
    v10 = v8 + v3;
    if (v9)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return daemon.getter();
    }

    *(v0 + 2) = v10;
  }

LABEL_14:
  v13 = *(v1 + 696);
  v14 = *(v1 + 704) + 1;
  sub_1007D49A4(*(v1 + 584), type metadata accessor for MemberSharingCircle);
  if (v14 == v13)
  {
    *(v1 + 744) = v0;
    if (qword_101694480 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

  v39 = *(v1 + 704) + 1;
  *(v1 + 712) = v0;
  *(v1 + 704) = v39;
  v40 = *(v1 + 688);
  if (v39 >= *(v40 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v41 = *(v1 + 584);
  v42 = *(v1 + 488);
  sub_1007D493C(v40 + ((*(v1 + 968) + 32) & ~*(v1 + 968)) + *(*(v1 + 496) + 72) * v39, v41, type metadata accessor for MemberSharingCircle);
  v43 = *(v41 + *(v42 + 36));
  v44 = *(v43 + 16);
  if (!v44)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v45 = *(v1 + 600);
  v46 = (*(v1 + 964) + 32) & ~*(v1 + 964);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v47 = *(v45 + 72);
  v19 = swift_allocObject();
  v48 = j__malloc_size(v19);
  if (!v47)
  {
    goto LABEL_41;
  }

  if (v48 - v46 == 0x8000000000000000 && v47 == -1)
  {
    goto LABEL_42;
  }

  v50 = (*(v1 + 964) + 32) & ~*(v1 + 964);
  v19[2].isa = v44;
  v19[3].isa = (2 * ((v48 - v46) / v47));
  v51 = sub_1003CC2CC(v1 + 16, v19 + v50, v44, v43);
  v52 = *(v1 + 16);
  v53 = *(v1 + 24);
  v54 = *(v1 + 32);
  v55 = *(v1 + 40);
  v56 = *(v1 + 48);

  sub_1001BE470();
  if (v51 != v44)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_32:
  *(v1 + 720) = v19;
  *(v1 + 272) = v19;
  v61 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v62 = swift_task_alloc();
  *(v1 + 728) = v62;
  v63 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v64 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v62 = v1;
  v62[1] = sub_1007CA07C;
  v65 = *(v1 + 296);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013BCBE0, v65, v63, &type metadata for String, v64);
}

uint64_t sub_1007CA868(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 760);
  v12 = *v1;
  *(v3 + 768) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 776) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_1007D471C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1007D471C(&qword_1016B1160, 255, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_1007CAA4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007CAA4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 776);
  v10 = *v2;
  v3[98] = a1;
  v3[99] = v1;

  if (v1)
  {
    v5 = v3[37];
    v6 = sub_1007CE304;
  }

  else
  {
    v7 = v3[96];
    v8 = v3[37];

    v6 = sub_1007CAB78;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007CAB78()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  *(v0 + 800) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 408);
    v5 = *(v4 + 80);
    *(v0 + 972) = v5;
    v6 = *(v4 + 72);
    *(v0 + 808) = v6;
    v7 = *(v0 + 792);
    while (1)
    {
      *(v0 + 840) = _swiftEmptyArrayStorage;
      *(v0 + 832) = _swiftEmptyArrayStorage;
      *(v0 + 824) = v3;
      *(v0 + 816) = v7;
      v8 = *(v0 + 480);
      v9 = *(v0 + 400);
      sub_1007D493C(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if ((*(v8 + *(v9 + 20)) & 1) == 0)
      {
        v10 = *(v0 + 592);
        v11 = *(v0 + 480);
        v12 = *(v0 + 288);
        v13 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v14 = *(v0 + 800);
      v15 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v15 == v14)
      {
        goto LABEL_7;
      }

      v3 = *(v0 + 824) + 1;
      v6 = *(v0 + 808);
      LOBYTE(v5) = *(v0 + 972);
      v1 = *(v0 + 280);
    }

    v22 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v22, 0);
  }

  else
  {
LABEL_7:
    *(v0 + 936) = _swiftEmptyArrayStorage;
    *(v0 + 928) = _swiftEmptyArrayStorage;
    v16 = swift_task_alloc();
    *(v0 + 944) = v16;
    *v16 = v0;
    v16[1] = sub_1007CDF44;
    v17 = *(v0 + 688);
    v18 = *(v0 + 288);
    v19 = *(v0 + 296);
    v20 = *(v0 + 280);

    return sub_1007D1148(_swiftEmptyArrayStorage, v18, v20, v17);
  }
}

uint64_t sub_1007CADAC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 592);
  v8 = (*(v0 + 964) + 24) & ~*(v0 + 964);
  (*(v0 + 632))(v5, *(v0 + 288) + *(v0 + 960), v7);
  v9 = swift_allocObject();
  *(v0 + 848) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 856) = v11;
  *v11 = v0;
  v11[1] = sub_1007CAF0C;
  v13 = *(v0 + 384);
  v12 = *(v0 + 392);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4764, v9, v13);
}

uint64_t sub_1007CAF0C()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_1007CB038, v3, 0);
}

uint64_t sub_1007CB038()
{
  v1 = *(v0 + 392);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + *(v2 + 64));
    sub_1007D49A4(v1, type metadata accessor for SharedBeaconRecord);
    v3 = v4 == 4;
  }

  *(v0 + 977) = v3;
  v5 = *(v0 + 624);

  return _swift_task_switch(sub_1007CB134, v5, 0);
}

uint64_t sub_1007CB134()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 592);
  v8 = (*(v0 + 964) + 24) & ~*(v0 + 964);
  (*(v0 + 632))(v5, *(v0 + 480), v7);
  v9 = swift_allocObject();
  *(v0 + 864) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 872) = v11;
  *v11 = v0;
  v11[1] = sub_1007CB28C;
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4790, v9, v13);
}

uint64_t sub_1007CB28C()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 864);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_1007CB3B8, v3, 0);
}

uint64_t sub_1007CB3B8()
{
  v240 = v0;
  v1 = *(v0 + 352);
  v2 = (*(*(v0 + 368) + 48))(v1, 1, *(v0 + 360));
  v3 = *(v0 + 288);
  if (v2 == 1)
  {
    v4 = *(v0 + 752);
    v5 = *(v0 + 536);
    v6 = *(v0 + 280);
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    sub_1007D493C(v3, v5, type metadata accessor for MemberSharingCircle);
    swift_bridgeObjectRetain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 744);
      v10 = *(v0 + 592);
      v11 = *(v0 + 536);
      v12 = *(v0 + 488);
      v225 = *(v0 + 400);
      v229 = *(v0 + 800);
      v13 = *(v0 + 280);
      v14 = swift_slowAlloc();
      v239[0] = swift_slowAlloc();
      *v14 = 141559299;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v15 = *(v12 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1007D49A4(v11, type metadata accessor for MemberSharingCircle);
      v19 = sub_1000136BC(v16, v18, v239);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2080;

      v20 = Array.description.getter();
      v22 = v21;

      v23 = sub_1000136BC(v20, v22, v239);

      *(v14 + 24) = v23;
      *(v14 + 32) = 2048;
      *(v14 + 34) = *(v9 + 16);
      *(v14 + 42) = 2080;
      v24 = Array.description.getter();
      v26 = sub_1000136BC(v24, v25, v239);

      *(v14 + 44) = v26;
      *(v14 + 52) = 2048;

      *(v14 + 54) = v229;

      _os_log_impl(&_mh_execute_header, v7, v8, "Inconsistent participant list for shareId: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v14, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v40 = *(v0 + 536);
      v41 = *(v0 + 280);
      swift_bridgeObjectRelease_n();

      sub_1007D49A4(v40, type metadata accessor for MemberSharingCircle);
    }

    if (*(v0 + 977) != 1)
    {
      v42 = *(v0 + 528);
      v43 = *(v0 + 496);
      v234 = *(v0 + 504);
      v44 = *(v0 + 304);
      v45 = *(v0 + 312);
      v46 = *(v0 + 288);
      v47 = *(v0 + 296);
      v48 = type metadata accessor for TaskPriority();
      v49 = *(v48 - 8);
      (*(v49 + 56))(v45, 1, 1, v48);
      sub_1007D493C(v46, v42, type metadata accessor for MemberSharingCircle);
      v51 = sub_1007D471C(&qword_1016A9F08, v50, type metadata accessor for ShareKeysDownloadUseCase);
      v52 = (*(v43 + 80) + 40) & ~*(v43 + 80);
      v53 = swift_allocObject();
      v53[2] = v47;
      v53[3] = v51;
      v53[4] = v47;
      sub_1007D48B4(v42, v53 + v52, type metadata accessor for MemberSharingCircle);
      sub_1000D2A70(v45, v44, &qword_101698C00, &qword_10138B570);
      LODWORD(v44) = (*(v49 + 48))(v44, 1, v48);
      swift_retain_n();

      v54 = *(v0 + 304);
      if (v44 == 1)
      {
        sub_10000B3A8(*(v0 + 304), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v49 + 8))(v54, v48);
      }

      v141 = v53[2];
      v140 = v53[3];
      swift_unknownObjectRetain();

      if (v141)
      {
        swift_getObjectType();
        v142 = dispatch thunk of Actor.unownedExecutor.getter();
        v144 = v143;
        swift_unknownObjectRelease();
      }

      else
      {
        v142 = 0;
        v144 = 0;
      }

      sub_10000B3A8(*(v0 + 312), &qword_101698C00, &qword_10138B570);
      v149 = swift_allocObject();
      *(v149 + 16) = &unk_1013BCBF8;
      *(v149 + 24) = v53;
      if (v144 | v142)
      {
        *(v0 + 216) = 0;
        *(v0 + 224) = 0;
        *(v0 + 232) = v142;
        *(v0 + 240) = v144;
      }

      swift_task_create();
    }

    goto LABEL_41;
  }

  v27 = *(v0 + 488);
  sub_1007D48B4(v1, *(v0 + 376), type metadata accessor for MemberPeerTrust);
  v28 = *(v3 + *(v27 + 36));
  v31 = *(v28 + 16) && (v29 = sub_1000210EC(*(v0 + 376) + *(*(v0 + 360) + 20)), (v30 & 1) != 0) && *(*(v28 + 56) + v29) == 1;
  v32 = *(v0 + 480);
  v33 = (*(v0 + 376) + *(*(v0 + 360) + 32));
  v34 = *v33;
  v35 = v33[1];
  v36 = (v32 + *(*(v0 + 400) + 24));
  v37 = *v36;
  *(v0 + 880) = *v36;
  v38 = v36[1];
  *(v0 + 888) = v38;
  if (v34 == v37 && v35 == v38)
  {
    if (v31)
    {
LABEL_19:
      v55 = *(v0 + 752);
      v57 = *(v0 + 416);
      v56 = *(v0 + 424);
      sub_1007D493C(*(v0 + 288), *(v0 + 544), type metadata accessor for MemberSharingCircle);
      sub_1007D493C(v32, v56, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D493C(v32, v57, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v0 + 592);
        v61 = *(v0 + 544);
        v62 = *(v0 + 488);
        v63 = *(v0 + 424);
        v222 = *(v0 + 400);
        v226 = *(v0 + 416);
        v235 = *(v0 + 376);
        v64 = swift_slowAlloc();
        v239[0] = swift_slowAlloc();
        *v64 = 141559043;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        v65 = *(v62 + 28);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_1007D49A4(v61, type metadata accessor for MemberSharingCircle);
        v69 = sub_1000136BC(v66, v68, v239);

        *(v64 + 14) = v69;
        *(v64 + 22) = 2160;
        *(v64 + 24) = 1752392040;
        *(v64 + 32) = 2081;
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        sub_1007D49A4(v63, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        v73 = sub_1000136BC(v70, v72, v239);

        *(v64 + 34) = v73;
        *(v64 + 42) = 2080;
        v74 = (v226 + *(v222 + 24));
        v75 = *v74;
        v76 = v74[1];

        sub_1007D49A4(v226, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        v77 = sub_1000136BC(v75, v76, v239);

        *(v64 + 44) = v77;
        _os_log_impl(&_mh_execute_header, v58, v59, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis already known by %s.", v64, 0x34u);
        swift_arrayDestroy();

        sub_1007D49A4(v235, type metadata accessor for MemberPeerTrust);
      }

      else
      {
        v145 = *(v0 + 544);
        v147 = *(v0 + 416);
        v146 = *(v0 + 424);
        v148 = *(v0 + 376);

        sub_1007D49A4(v147, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        sub_1007D49A4(v146, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        sub_1007D49A4(v145, type metadata accessor for MemberSharingCircle);
        sub_1007D49A4(v148, type metadata accessor for MemberPeerTrust);
      }

LABEL_41:
      v116 = *(v0 + 840);
      v150 = *(v0 + 832);
      v78 = *(v0 + 816);
      goto LABEL_42;
    }
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)() & v31)
  {
    v32 = *(v0 + 480);
    goto LABEL_19;
  }

  v78 = *(v0 + 816);
  v79 = *(v0 + 744);
  v80 = *(v0 + 976);
  *(v0 + 248) = v37;
  *(v0 + 256) = v38;
  v81 = swift_task_alloc();
  *(v81 + 16) = v0 + 248;

  v82 = sub_1002EB538(sub_1007D491C, v81, v79);
  *(v0 + 978) = v82 & 1;

  v83 = *(v0 + 977);
  if (v82 & 1) != 0 || (v80)
  {
    if ((*(v0 + 977) & 1) == 0)
    {

      _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
      if (v109)
      {
        v110 = sub_100B5DEBC(v107, v108, v109);

        if (v110 != 2 && (v110 & 1) != 0)
        {
          v111 = swift_task_alloc();
          *(v0 + 912) = v111;
          *v111 = v0;
          v111[1] = sub_1007CD3BC;
          v112 = *(v0 + 784);
          v113 = *(v0 + 480);
          v114 = *(v0 + 288);
          v115 = v0 + 136;
LABEL_64:

          return sub_100B48DE8(v115, v114, v113, v37, v38);
        }
      }
    }
  }

  else if ((*(v0 + 977) & 1) == 0)
  {
    v84 = *(v0 + 752);
    v86 = *(v0 + 472);
    v85 = *(v0 + 480);
    v87 = *(v0 + 464);
    sub_1007D493C(*(v0 + 288), *(v0 + 568), type metadata accessor for MemberSharingCircle);
    sub_1007D493C(v85, v86, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D493C(v85, v87, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = *(v0 + 592);
      v91 = *(v0 + 568);
      v223 = v89;
      v92 = *(v0 + 488);
      v219 = *(v0 + 472);
      v227 = *(v0 + 400);
      v230 = *(v0 + 464);
      v93 = swift_slowAlloc();
      v239[0] = swift_slowAlloc();
      *v93 = 141559043;
      *(v93 + 4) = 1752392040;
      *(v93 + 12) = 2081;
      v94 = *(v92 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      sub_1007D49A4(v91, type metadata accessor for MemberSharingCircle);
      v98 = sub_1000136BC(v95, v97, v239);

      *(v93 + 14) = v98;
      *(v93 + 22) = 2160;
      *(v93 + 24) = 1752392040;
      *(v93 + 32) = 2081;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v100;
      sub_1007D49A4(v219, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v102 = sub_1000136BC(v99, v101, v239);

      *(v93 + 34) = v102;
      *(v93 + 42) = 2080;
      v103 = (v230 + *(v227 + 24));
      v104 = *v103;
      v105 = v103[1];

      sub_1007D49A4(v230, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v106 = sub_1000136BC(v104, v105, v239);

      *(v93 + 44) = v106;
      _os_log_impl(&_mh_execute_header, v88, v223, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed: %s.", v93, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v210 = *(v0 + 568);
      v212 = *(v0 + 464);
      v211 = *(v0 + 472);

      sub_1007D49A4(v212, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D49A4(v211, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D49A4(v210, type metadata accessor for MemberSharingCircle);
    }

    v213 = swift_task_alloc();
    *(v0 + 896) = v213;
    *v213 = v0;
    v213[1] = sub_1007CCB6C;
    v214 = *(v0 + 784);
    v113 = *(v0 + 480);
    v114 = *(v0 + 288);
    v115 = v0 + 56;
    goto LABEL_64;
  }

  v116 = *(v0 + 840);
  v117 = *(v0 + 752);
  v118 = *(v0 + 480);
  v120 = *(v0 + 448);
  v119 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v118, v119, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v118, v120, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v228 = *(v0 + 978);
    v231 = *(v0 + 977);
    v123 = *(v0 + 592);
    v124 = *(v0 + 560);
    v236 = v122;
    v125 = *(v0 + 488);
    log = *(v0 + 448);
    v215 = *(v0 + 456);
    v216 = *(v0 + 400);
    v220 = *(v0 + 976);
    v126 = swift_slowAlloc();
    v239[0] = swift_slowAlloc();
    *v126 = 141559811;
    *(v126 + 4) = 1752392040;
    *(v126 + 12) = 2081;
    v127 = *(v125 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    v130 = v129;
    sub_1007D49A4(v124, type metadata accessor for MemberSharingCircle);
    v131 = sub_1000136BC(v128, v130, v239);

    *(v126 + 14) = v131;
    *(v126 + 22) = 2160;
    *(v126 + 24) = 1752392040;
    *(v126 + 32) = 2081;
    v132 = dispatch thunk of CustomStringConvertible.description.getter();
    v134 = v133;
    sub_1007D49A4(v215, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v135 = sub_1000136BC(v132, v134, v239);

    *(v126 + 34) = v135;
    *(v126 + 42) = 2080;
    v136 = (log + *(v216 + 24));
    v137 = *v136;
    v138 = v136[1];

    sub_1007D49A4(log, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v139 = sub_1000136BC(v137, v138, v239);

    *(v126 + 44) = v139;
    *(v126 + 52) = 1024;
    *(v126 + 54) = (v228 & 1) == 0;
    *(v126 + 58) = 1024;
    *(v126 + 60) = v220;
    *(v126 + 64) = 1024;
    *(v126 + 66) = v231;
    _os_log_impl(&_mh_execute_header, v121, v236, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v126, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v169 = *(v0 + 560);
    v171 = *(v0 + 448);
    v170 = *(v0 + 456);

    sub_1007D49A4(v171, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v170, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v169, type metadata accessor for MemberSharingCircle);
  }

  v172 = *(v0 + 888);
  v173 = *(v0 + 880);
  v174 = *(v0 + 832);
  v175 = *(v0 + 336);
  v176 = (v175 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v175, type metadata accessor for MemberPeerTrust);
  *v176 = v173;
  v176[1] = v172;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v150 = *(v0 + 832);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v150 = sub_100A5BB28(0, v150[2] + 1, 1, *(v0 + 832));
  }

  v179 = v150[2];
  v178 = v150[3];
  if (v179 >= v178 >> 1)
  {
    v150 = sub_100A5BB28(v178 > 1, v179 + 1, 1, v150);
  }

  v180 = *(v0 + 552);
  v181 = *(v0 + 480);
  v182 = *(v0 + 440);
  v232 = *(v0 + 432);
  v237 = *(v0 + 752);
  v184 = *(v0 + 328);
  v183 = *(v0 + 336);
  v185 = *(v0 + 288);
  v150[2] = v179 + 1;
  sub_1000D2AD8(v183, v150 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v179, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v185, v180, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v181, v182, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v181, v232, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = *(v0 + 592);
    v189 = *(v0 + 552);
    v233 = v187;
    v190 = *(v0 + 488);
    v217 = *(v0 + 440);
    v221 = *(v0 + 400);
    v224 = *(v0 + 432);
    v238 = *(v0 + 376);
    v191 = swift_slowAlloc();
    v239[0] = swift_slowAlloc();
    *v191 = 141559043;
    *(v191 + 4) = 1752392040;
    *(v191 + 12) = 2081;
    v192 = *(v190 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v193 = dispatch thunk of CustomStringConvertible.description.getter();
    v195 = v194;
    sub_1007D49A4(v189, type metadata accessor for MemberSharingCircle);
    v196 = sub_1000136BC(v193, v195, v239);

    *(v191 + 14) = v196;
    *(v191 + 22) = 2160;
    *(v191 + 24) = 1752392040;
    *(v191 + 32) = 2081;
    v197 = dispatch thunk of CustomStringConvertible.description.getter();
    v199 = v198;
    sub_1007D49A4(v217, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v200 = sub_1000136BC(v197, v199, v239);

    *(v191 + 34) = v200;
    *(v191 + 42) = 2080;
    v201 = (v224 + *(v221 + 24));
    v202 = *v201;
    v203 = v201[1];

    sub_1007D49A4(v224, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v204 = sub_1000136BC(v202, v203, v239);

    *(v191 + 44) = v204;
    _os_log_impl(&_mh_execute_header, v186, v233, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v191, 0x34u);
    swift_arrayDestroy();

    v205 = v238;
  }

  else
  {
    v206 = *(v0 + 552);
    v208 = *(v0 + 432);
    v207 = *(v0 + 440);
    v209 = *(v0 + 376);

    sub_1007D49A4(v208, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v207, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v206, type metadata accessor for MemberSharingCircle);
    v205 = v209;
  }

  sub_1007D49A4(v205, type metadata accessor for MemberPeerTrust);
LABEL_42:
  v151 = *(v0 + 800);
  v152 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v152 == v151)
  {
LABEL_43:
    *(v0 + 936) = v116;
    *(v0 + 928) = v150;
    v153 = swift_task_alloc();
    *(v0 + 944) = v153;
    *v153 = v0;
    v153[1] = sub_1007CDF44;
    v154 = *(v0 + 688);
    v155 = *(v0 + 288);
    v156 = *(v0 + 296);
    v157 = *(v0 + 280);

    return sub_1007D1148(v150, v155, v157, v154);
  }

  else
  {
    while (1)
    {
      v161 = *(v0 + 824) + 1;
      *(v0 + 840) = v116;
      *(v0 + 832) = v150;
      *(v0 + 824) = v161;
      *(v0 + 816) = v78;
      v162 = *(v0 + 480);
      v163 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v161, v162, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v162 + *(v163 + 20)) != 1)
      {
        v164 = *(v0 + 592);
        v165 = *(v0 + 480);
        v166 = *(v0 + 288);
        v167 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v159 = *(v0 + 800);
      v160 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v160 == v159)
      {
        goto LABEL_43;
      }
    }

    v168 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v168, 0);
  }
}

uint64_t sub_1007CCB6C()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v4 = *v1;
  *(*v1 + 904) = v0;

  v5 = *(v2 + 296);
  if (v0)
  {

    v6 = sub_1007CE4EC;
  }

  else
  {
    v6 = sub_1007CCCA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007CCCA4()
{
  v77 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 840);
  sub_1000D2A70(v0 + 56, v0 + 96, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100A5BB4C(0, v4[2] + 1, 1, *(v0 + 840));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100A5BB4C((v5 > 1), v6 + 1, 1, v4);
  }

  sub_10000B3A8(v0 + 56, &qword_1016A9F18, &qword_1013D78F0);
  v4[2] = v6 + 1;
  v7 = &v4[5 * v6];
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  *(v7 + 2) = *(v0 + 96);
  *(v7 + 3) = v9;
  v7[8] = v8;
  v10 = *(v0 + 888);
  v11 = *(v0 + 880);
  v12 = *(v0 + 832);
  v13 = *(v0 + 336);
  v14 = (v13 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v13, type metadata accessor for MemberPeerTrust);
  *v14 = v11;
  v14[1] = v10;

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + 832);
  if ((v15 & 1) == 0)
  {
    v16 = sub_100A5BB28(0, v16[2] + 1, 1, *(v0 + 832));
  }

  v18 = v16[2];
  v17 = v16[3];
  v74 = v4;
  v75 = v1;
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100A5BB28(v17 > 1, v18 + 1, 1, v16);
  }

  v19 = *(v0 + 752);
  v20 = *(v0 + 552);
  v21 = *(v0 + 480);
  v23 = *(v0 + 432);
  v22 = *(v0 + 440);
  v25 = *(v0 + 328);
  v24 = *(v0 + 336);
  v26 = *(v0 + 288);
  v16[2] = v18 + 1;
  sub_1000D2AD8(v24, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v26, v20, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v21, v22, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v21, v23, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 592);
    v30 = *(v0 + 552);
    v70 = v28;
    v31 = *(v0 + 488);
    v69 = *(v0 + 440);
    v71 = *(v0 + 400);
    v72 = *(v0 + 432);
    v73 = *(v0 + 376);
    v32 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v32 = 141559043;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    v33 = *(v31 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    sub_1007D49A4(v30, type metadata accessor for MemberSharingCircle);
    v37 = sub_1000136BC(v34, v36, &v76);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2160;
    *(v32 + 24) = 1752392040;
    *(v32 + 32) = 2081;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    sub_1007D49A4(v69, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v41 = sub_1000136BC(v38, v40, &v76);

    *(v32 + 34) = v41;
    *(v32 + 42) = 2080;
    v42 = (v72 + *(v71 + 24));
    v43 = *v42;
    v44 = v42[1];

    sub_1007D49A4(v72, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v45 = sub_1000136BC(v43, v44, &v76);

    *(v32 + 44) = v45;
    _os_log_impl(&_mh_execute_header, v27, v70, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v32, 0x34u);
    swift_arrayDestroy();

    v46 = v73;
  }

  else
  {
    v47 = *(v0 + 552);
    v49 = *(v0 + 432);
    v48 = *(v0 + 440);
    v50 = *(v0 + 376);

    sub_1007D49A4(v49, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v48, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v47, type metadata accessor for MemberSharingCircle);
    v46 = v50;
  }

  sub_1007D49A4(v46, type metadata accessor for MemberPeerTrust);
  v51 = *(v0 + 800);
  v52 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v52 == v51)
  {
LABEL_13:
    *(v0 + 936) = v74;
    *(v0 + 928) = v16;
    v53 = swift_task_alloc();
    *(v0 + 944) = v53;
    *v53 = v0;
    v53[1] = sub_1007CDF44;
    v54 = *(v0 + 688);
    v55 = *(v0 + 288);
    v56 = *(v0 + 296);
    v57 = *(v0 + 280);

    return sub_1007D1148(v16, v55, v57, v54);
  }

  else
  {
    while (1)
    {
      v61 = *(v0 + 824) + 1;
      *(v0 + 840) = v74;
      *(v0 + 832) = v16;
      *(v0 + 824) = v61;
      *(v0 + 816) = v75;
      v62 = *(v0 + 480);
      v63 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v61, v62, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v62 + *(v63 + 20)) != 1)
      {
        v64 = *(v0 + 592);
        v65 = *(v0 + 480);
        v66 = *(v0 + 288);
        v67 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v59 = *(v0 + 800);
      v60 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v60 == v59)
      {
        goto LABEL_13;
      }
    }

    v68 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v68, 0);
  }
}

uint64_t sub_1007CD3BC()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = v0;

  v5 = *(v2 + 296);
  if (v0)
  {

    v6 = sub_1007CEC14;
  }

  else
  {
    v6 = sub_1007CD4F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007CD4F4()
{
  v109 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 840);
  sub_1000D2A70(v0 + 136, v0 + 176, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_100A5BB4C(0, v4[2] + 1, 1, *(v0 + 840));
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_100A5BB4C((v5 > 1), v6 + 1, 1, v4);
  }

  sub_10000B3A8(v0 + 136, &qword_1016A9F18, &qword_1013D78F0);
  v4[2] = v6 + 1;
  v7 = &v4[5 * v6];
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  *(v7 + 2) = *(v0 + 176);
  *(v7 + 3) = v9;
  v7[8] = v8;
  v10 = *(v0 + 752);
  v11 = *(v0 + 480);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v11, v12, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v11, v13, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v106 = v4;
  v107 = v1;
  if (os_log_type_enabled(v14, v15))
  {
    v103 = *(v0 + 978);
    v104 = *(v0 + 977);
    v16 = *(v0 + 592);
    v17 = *(v0 + 560);
    v18 = *(v0 + 488);
    v98 = *(v0 + 448);
    v95 = *(v0 + 456);
    v96 = *(v0 + 400);
    v100 = *(v0 + 976);
    v19 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v19 = 141559811;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v20 = *(v18 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1007D49A4(v17, type metadata accessor for MemberSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v108);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1007D49A4(v95, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v28 = sub_1000136BC(v25, v27, &v108);

    *(v19 + 34) = v28;
    *(v19 + 42) = 2080;
    v29 = (v98 + *(v96 + 24));
    v30 = *v29;
    v31 = v29[1];

    sub_1007D49A4(v98, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v32 = sub_1000136BC(v30, v31, &v108);

    *(v19 + 44) = v32;
    *(v19 + 52) = 1024;
    *(v19 + 54) = (v103 & 1) == 0;
    *(v19 + 58) = 1024;
    *(v19 + 60) = v100;
    *(v19 + 64) = 1024;
    *(v19 + 66) = v104;
    _os_log_impl(&_mh_execute_header, v14, v15, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v19, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = *(v0 + 560);
    v35 = *(v0 + 448);
    v34 = *(v0 + 456);

    sub_1007D49A4(v35, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v34, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v33, type metadata accessor for MemberSharingCircle);
  }

  v36 = *(v0 + 888);
  v37 = *(v0 + 880);
  v38 = *(v0 + 832);
  v39 = *(v0 + 336);
  v40 = (v39 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v39, type metadata accessor for MemberPeerTrust);
  *v40 = v37;
  v40[1] = v36;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v0 + 832);
  if ((v41 & 1) == 0)
  {
    v42 = sub_100A5BB28(0, v42[2] + 1, 1, *(v0 + 832));
  }

  v44 = v42[2];
  v43 = v42[3];
  if (v44 >= v43 >> 1)
  {
    v42 = sub_100A5BB28(v43 > 1, v44 + 1, 1, v42);
  }

  v45 = *(v0 + 752);
  v46 = *(v0 + 552);
  v47 = *(v0 + 480);
  v49 = *(v0 + 432);
  v48 = *(v0 + 440);
  v51 = *(v0 + 328);
  v50 = *(v0 + 336);
  v52 = *(v0 + 288);
  v42[2] = v44 + 1;
  sub_1000D2AD8(v50, v42 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v52, v46, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v47, v48, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v47, v49, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = *(v0 + 592);
    v56 = *(v0 + 552);
    v99 = v54;
    v57 = *(v0 + 488);
    v97 = *(v0 + 440);
    v101 = *(v0 + 400);
    v102 = *(v0 + 432);
    v105 = *(v0 + 376);
    v58 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *v58 = 141559043;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    v59 = *(v57 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    sub_1007D49A4(v56, type metadata accessor for MemberSharingCircle);
    v63 = sub_1000136BC(v60, v62, &v108);

    *(v58 + 14) = v63;
    *(v58 + 22) = 2160;
    *(v58 + 24) = 1752392040;
    *(v58 + 32) = 2081;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    sub_1007D49A4(v97, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v67 = sub_1000136BC(v64, v66, &v108);

    *(v58 + 34) = v67;
    *(v58 + 42) = 2080;
    v68 = (v102 + *(v101 + 24));
    v69 = *v68;
    v70 = v68[1];

    sub_1007D49A4(v102, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v71 = sub_1000136BC(v69, v70, &v108);

    *(v58 + 44) = v71;
    _os_log_impl(&_mh_execute_header, v53, v99, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v58, 0x34u);
    swift_arrayDestroy();

    v72 = v105;
  }

  else
  {
    v73 = *(v0 + 552);
    v75 = *(v0 + 432);
    v74 = *(v0 + 440);
    v76 = *(v0 + 376);

    sub_1007D49A4(v75, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v74, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v73, type metadata accessor for MemberSharingCircle);
    v72 = v76;
  }

  sub_1007D49A4(v72, type metadata accessor for MemberPeerTrust);
  v77 = *(v0 + 800);
  v78 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v78 == v77)
  {
LABEL_16:
    *(v0 + 936) = v106;
    *(v0 + 928) = v42;
    v79 = swift_task_alloc();
    *(v0 + 944) = v79;
    *v79 = v0;
    v79[1] = sub_1007CDF44;
    v80 = *(v0 + 688);
    v81 = *(v0 + 288);
    v82 = *(v0 + 296);
    v83 = *(v0 + 280);

    return sub_1007D1148(v42, v81, v83, v80);
  }

  else
  {
    while (1)
    {
      v87 = *(v0 + 824) + 1;
      *(v0 + 840) = v106;
      *(v0 + 832) = v42;
      *(v0 + 824) = v87;
      *(v0 + 816) = v107;
      v88 = *(v0 + 480);
      v89 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v87, v88, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v88 + *(v89 + 20)) != 1)
      {
        v90 = *(v0 + 592);
        v91 = *(v0 + 480);
        v92 = *(v0 + 288);
        v93 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v85 = *(v0 + 800);
      v86 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v86 == v85)
      {
        goto LABEL_16;
      }
    }

    v94 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v94, 0);
  }
}

uint64_t sub_1007CDF44()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *v1;
  v2[119] = v0;

  v5 = v2[86];
  if (v0)
  {
    v6 = v2[117];
    v7 = v2[116];
    v8 = v2[37];

    v9 = sub_1007CF674;
  }

  else
  {
    v10 = v2[116];
    v8 = v2[98];

    v9 = sub_1007CE0AC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1007CE0AC()
{
  v1 = v0[98];
  v2 = v0[37];
  sub_100B4ACC0(v0[117]);

  return _swift_task_switch(sub_1007CE130, v2, 0);
}

uint64_t sub_1007CE130()
{
  v1 = v0[98];
  v2 = v0[93];

  v3 = v0[77];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v15 = v0[64];
  v16 = v0[60];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[54];
  v23 = v0[53];
  v24 = v0[52];
  v25 = v0[49];
  v26 = v0[47];
  v27 = v0[44];
  v28 = v0[42];
  v29 = v0[39];
  v30 = v0[38];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1007CE304()
{
  v1 = v0[96];
  v2 = v0[93];
  v3 = v0[86];
  v4 = v0[77];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v14 = v0[67];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[64];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[58];
  v21 = v0[57];
  v22 = v0[56];
  v23 = v0[55];
  v24 = v0[54];
  v25 = v0[53];
  v26 = v0[52];
  v27 = v0[49];
  v28 = v0[47];
  v29 = v0[44];
  v30 = v0[42];
  v31 = v0[39];
  v32 = v0[38];

  v11 = v0[1];
  v12 = v0[99];

  return v11();
}

uint64_t sub_1007CE4EC()
{
  v75 = v0;
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  v1 = *(v0 + 840);
  sub_1000D2A70(v0 + 56, v0 + 96, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5BB4C(0, v3[2] + 1, 1, *(v0 + 840));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5BB4C((v4 > 1), v5 + 1, 1, v3);
  }

  sub_10000B3A8(v0 + 56, &qword_1016A9F18, &qword_1013D78F0);
  v3[2] = v5 + 1;
  v6 = &v3[5 * v5];
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  *(v6 + 2) = *(v0 + 96);
  *(v6 + 3) = v8;
  v6[8] = v7;
  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  v11 = *(v0 + 832);
  v12 = *(v0 + 336);
  v13 = (v12 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v12, type metadata accessor for MemberPeerTrust);
  *v13 = v10;
  v13[1] = v9;

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 832);
  if ((v14 & 1) == 0)
  {
    v15 = sub_100A5BB28(0, v15[2] + 1, 1, *(v0 + 832));
  }

  v17 = v15[2];
  v16 = v15[3];
  v73 = v3;
  if (v17 >= v16 >> 1)
  {
    v15 = sub_100A5BB28(v16 > 1, v17 + 1, 1, v15);
  }

  v18 = *(v0 + 752);
  v19 = *(v0 + 552);
  v20 = *(v0 + 480);
  v22 = *(v0 + 432);
  v21 = *(v0 + 440);
  v24 = *(v0 + 328);
  v23 = *(v0 + 336);
  v25 = *(v0 + 288);
  v15[2] = v17 + 1;
  sub_1000D2AD8(v23, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v25, v19, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v20, v21, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v20, v22, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 592);
    v29 = *(v0 + 552);
    v69 = v27;
    v30 = *(v0 + 488);
    v68 = *(v0 + 440);
    v70 = *(v0 + 400);
    v71 = *(v0 + 432);
    v72 = *(v0 + 376);
    v31 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v31 = 141559043;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    v32 = *(v30 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    sub_1007D49A4(v29, type metadata accessor for MemberSharingCircle);
    v36 = sub_1000136BC(v33, v35, &v74);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2160;
    *(v31 + 24) = 1752392040;
    *(v31 + 32) = 2081;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    sub_1007D49A4(v68, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v40 = sub_1000136BC(v37, v39, &v74);

    *(v31 + 34) = v40;
    *(v31 + 42) = 2080;
    v41 = (v71 + *(v70 + 24));
    v42 = *v41;
    v43 = v41[1];

    sub_1007D49A4(v71, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v44 = sub_1000136BC(v42, v43, &v74);

    *(v31 + 44) = v44;
    _os_log_impl(&_mh_execute_header, v26, v69, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v31, 0x34u);
    swift_arrayDestroy();

    v45 = v72;
  }

  else
  {
    v46 = *(v0 + 552);
    v48 = *(v0 + 432);
    v47 = *(v0 + 440);
    v49 = *(v0 + 376);

    sub_1007D49A4(v48, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v47, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v46, type metadata accessor for MemberSharingCircle);
    v45 = v49;
  }

  sub_1007D49A4(v45, type metadata accessor for MemberPeerTrust);
  v50 = *(v0 + 800);
  v51 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v51 == v50)
  {
LABEL_13:
    *(v0 + 936) = v73;
    *(v0 + 928) = v15;
    v52 = swift_task_alloc();
    *(v0 + 944) = v52;
    *v52 = v0;
    v52[1] = sub_1007CDF44;
    v53 = *(v0 + 688);
    v54 = *(v0 + 288);
    v55 = *(v0 + 296);
    v56 = *(v0 + 280);

    return sub_1007D1148(v15, v54, v56, v53);
  }

  else
  {
    while (1)
    {
      v60 = *(v0 + 824) + 1;
      *(v0 + 840) = v73;
      *(v0 + 832) = v15;
      *(v0 + 824) = v60;
      *(v0 + 816) = 0;
      v61 = *(v0 + 480);
      v62 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v60, v61, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v61 + *(v62 + 20)) != 1)
      {
        v63 = *(v0 + 592);
        v64 = *(v0 + 480);
        v65 = *(v0 + 288);
        v66 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v58 = *(v0 + 800);
      v59 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v59 == v58)
      {
        goto LABEL_13;
      }
    }

    v67 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v67, 0);
  }
}

uint64_t sub_1007CEC14()
{
  v107 = v0;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  v1 = *(v0 + 840);
  sub_1000D2A70(v0 + 136, v0 + 176, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5BB4C(0, v3[2] + 1, 1, *(v0 + 840));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5BB4C((v4 > 1), v5 + 1, 1, v3);
  }

  sub_10000B3A8(v0 + 136, &qword_1016A9F18, &qword_1013D78F0);
  v3[2] = v5 + 1;
  v105 = v3;
  v6 = &v3[5 * v5];
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  *(v6 + 2) = *(v0 + 176);
  *(v6 + 3) = v8;
  v6[8] = v7;
  v9 = *(v0 + 752);
  v10 = *(v0 + 480);
  v12 = *(v0 + 448);
  v11 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v10, v11, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v10, v12, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v102 = *(v0 + 978);
    v103 = *(v0 + 977);
    v15 = *(v0 + 592);
    v16 = *(v0 + 560);
    v17 = *(v0 + 488);
    v97 = *(v0 + 448);
    v94 = *(v0 + 456);
    v95 = *(v0 + 400);
    v99 = *(v0 + 976);
    v18 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v18 = 141559811;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v19 = *(v17 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1007D49A4(v16, type metadata accessor for MemberSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v106);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1007D49A4(v94, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v27 = sub_1000136BC(v24, v26, &v106);

    *(v18 + 34) = v27;
    *(v18 + 42) = 2080;
    v28 = (v97 + *(v95 + 24));
    v29 = *v28;
    v30 = v28[1];

    sub_1007D49A4(v97, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v31 = sub_1000136BC(v29, v30, &v106);

    *(v18 + 44) = v31;
    *(v18 + 52) = 1024;
    *(v18 + 54) = (v102 & 1) == 0;
    *(v18 + 58) = 1024;
    *(v18 + 60) = v99;
    *(v18 + 64) = 1024;
    *(v18 + 66) = v103;
    _os_log_impl(&_mh_execute_header, v13, v14, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v18, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v32 = *(v0 + 560);
    v34 = *(v0 + 448);
    v33 = *(v0 + 456);

    sub_1007D49A4(v34, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v33, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v32, type metadata accessor for MemberSharingCircle);
  }

  v35 = *(v0 + 888);
  v36 = *(v0 + 880);
  v37 = *(v0 + 832);
  v38 = *(v0 + 336);
  v39 = (v38 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v38, type metadata accessor for MemberPeerTrust);
  *v39 = v36;
  v39[1] = v35;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v0 + 832);
  if ((v40 & 1) == 0)
  {
    v41 = sub_100A5BB28(0, v41[2] + 1, 1, *(v0 + 832));
  }

  v43 = v41[2];
  v42 = v41[3];
  if (v43 >= v42 >> 1)
  {
    v41 = sub_100A5BB28(v42 > 1, v43 + 1, 1, v41);
  }

  v44 = *(v0 + 752);
  v45 = *(v0 + 552);
  v46 = *(v0 + 480);
  v48 = *(v0 + 432);
  v47 = *(v0 + 440);
  v50 = *(v0 + 328);
  v49 = *(v0 + 336);
  v51 = *(v0 + 288);
  v41[2] = v43 + 1;
  sub_1000D2AD8(v49, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v43, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v51, v45, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v46, v47, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v46, v48, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 592);
    v55 = *(v0 + 552);
    v98 = v53;
    v56 = *(v0 + 488);
    v96 = *(v0 + 440);
    v100 = *(v0 + 400);
    v101 = *(v0 + 432);
    v104 = *(v0 + 376);
    v57 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v57 = 141559043;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2081;
    v58 = *(v56 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    sub_1007D49A4(v55, type metadata accessor for MemberSharingCircle);
    v62 = sub_1000136BC(v59, v61, &v106);

    *(v57 + 14) = v62;
    *(v57 + 22) = 2160;
    *(v57 + 24) = 1752392040;
    *(v57 + 32) = 2081;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    sub_1007D49A4(v96, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v66 = sub_1000136BC(v63, v65, &v106);

    *(v57 + 34) = v66;
    *(v57 + 42) = 2080;
    v67 = (v101 + *(v100 + 24));
    v68 = *v67;
    v69 = v67[1];

    sub_1007D49A4(v101, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v70 = sub_1000136BC(v68, v69, &v106);

    *(v57 + 44) = v70;
    _os_log_impl(&_mh_execute_header, v52, v98, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v57, 0x34u);
    swift_arrayDestroy();

    v71 = v104;
  }

  else
  {
    v72 = *(v0 + 552);
    v74 = *(v0 + 432);
    v73 = *(v0 + 440);
    v75 = *(v0 + 376);

    sub_1007D49A4(v74, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v73, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v72, type metadata accessor for MemberSharingCircle);
    v71 = v75;
  }

  sub_1007D49A4(v71, type metadata accessor for MemberPeerTrust);
  v76 = *(v0 + 800);
  v77 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v77 == v76)
  {
LABEL_16:
    *(v0 + 936) = v105;
    *(v0 + 928) = v41;
    v78 = swift_task_alloc();
    *(v0 + 944) = v78;
    *v78 = v0;
    v78[1] = sub_1007CDF44;
    v79 = *(v0 + 688);
    v80 = *(v0 + 288);
    v81 = *(v0 + 296);
    v82 = *(v0 + 280);

    return sub_1007D1148(v41, v80, v82, v79);
  }

  else
  {
    while (1)
    {
      v86 = *(v0 + 824) + 1;
      *(v0 + 840) = v105;
      *(v0 + 832) = v41;
      *(v0 + 824) = v86;
      *(v0 + 816) = 0;
      v87 = *(v0 + 480);
      v88 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v86, v87, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v87 + *(v88 + 20)) != 1)
      {
        v89 = *(v0 + 592);
        v90 = *(v0 + 480);
        v91 = *(v0 + 288);
        v92 = *(*(v0 + 488) + 32);
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v84 = *(v0 + 800);
      v85 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v85 == v84)
      {
        goto LABEL_16;
      }
    }

    v93 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v93, 0);
  }
}

uint64_t sub_1007CF674()
{
  v64 = v0;
  v1 = v0[119];
  v2 = v0[94];
  v3 = v0[64];
  v4 = v0[36];
  v5 = *(*(v4 + *(v0[61] + 36)) + 16);
  sub_1007D493C(v4, v0[65], type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v4, v3, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v56 = v0[119];
    v59 = v0[98];
    v61 = v0[93];
    v8 = v0[74];
    v9 = v0[65];
    v10 = v0[61];
    v48 = v10;
    v50 = v0[64];
    v54 = v0[100] == v5 + 1;
    v11 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v11 = 141559299;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = *(v10 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v63);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v17 = v50 + *(v48 + 24);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1007D49A4(v50, type metadata accessor for MemberSharingCircle);
    v21 = sub_1000136BC(v18, v20, &v63);

    *(v11 + 34) = v21;
    *(v11 + 42) = 1024;
    *(v11 + 44) = v54;
    *(v11 + 48) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 50) = v22;
    *v52 = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete previous circle for share-id: %{private,mask.hash}s,\nbeaconId: %{private,mask.hash}s,\nallMembersAccepted: %{BOOL}d. %@.", v11, 0x3Au);
    sub_10000B3A8(v52, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[119];
    v24 = v0[98];
    v25 = v0[93];
    v26 = v0[65];
    v27 = v0[64];

    sub_1007D49A4(v27, type metadata accessor for MemberSharingCircle);
    sub_1007D49A4(v26, type metadata accessor for MemberSharingCircle);
  }

  v28 = v0[77];
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[71];
  v32 = v0[70];
  v33 = v0[69];
  v34 = v0[68];
  v35 = v0[67];
  v36 = v0[66];
  v37 = v0[65];
  v40 = v0[64];
  v41 = v0[60];
  v42 = v0[59];
  v43 = v0[58];
  v44 = v0[57];
  v45 = v0[56];
  v46 = v0[55];
  v47 = v0[54];
  v49 = v0[53];
  v51 = v0[52];
  v53 = v0[49];
  v55 = v0[47];
  v57 = v0[44];
  v58 = v0[42];
  v60 = v0[39];
  v62 = v0[38];

  v38 = v0[1];

  return v38();
}

uint64_t sub_1007CFB78(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1007CFC84, v1, 0);
}

uint64_t sub_1007CFC84()
{
  v1 = *sub_1000035D0((v0[10] + 112), *(v0[10] + 136));
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_1007CFD2C;
  v3 = v0[9];

  return sub_100C73710(v3);
}

uint64_t sub_1007CFD2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[10];

    return _swift_task_switch(sub_1007CFFDC, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[20] = v8;
    *v8 = v6;
    v8[1] = sub_1007CFEB4;
    v9 = v4[9];
    v10 = v4[10];

    return sub_1007C9364(a1, v9, 0);
  }
}

uint64_t sub_1007CFEB4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1007D065C;
  }

  else
  {
    v6 = *(v2 + 144);
    v7 = *(v2 + 80);

    v5 = sub_1007D0464;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007CFFDC()
{
  v39 = v0;
  v1 = *(v0 + 152);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1007D493C(v3, v2, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = *(v0 + 88);
    v10 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = *(v9 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v38);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v38);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to restore keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 48) == 1 && *(v0 + 40) > 5uLL)
  {
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    sub_1007D493C(v27, v23, type metadata accessor for MemberSharingCircle);
    v30 = sub_1007D471C(&qword_1016A9F08, v29, type metadata accessor for ShareKeysDownloadUseCase);
    v31 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v32 = swift_allocObject();
    v32[2] = v26;
    v32[3] = v30;
    v32[4] = v26;
    sub_1007D48B4(v23, v32 + v31, type metadata accessor for MemberSharingCircle);
    swift_retain_n();
    sub_10025EDD4(0, 0, v22, &unk_1013BCBB8, v32);
  }

  else
  {
  }

  v34 = *(v0 + 120);
  v33 = *(v0 + 128);
  v35 = *(v0 + 112);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1007D0464()
{
  v1 = *sub_1000035D0((v0[10] + 160), *(v0[10] + 184));
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1007D050C;
  v3 = v0[9];

  return sub_10108147C(v3);
}

uint64_t sub_1007D050C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v8 = *v0;

  v3 = v1[16];
  v4 = v1[15];
  v5 = v1[14];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1007D065C()
{
  v40 = v0;
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 72);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1007D493C(v4, v3, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 112);
  if (v8)
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = *(v10 + 28);
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v39);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = *(v0 + 32);
    v20 = Error.localizedDescription.getter();
    v22 = sub_1000136BC(v20, v21, &v39);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to restore keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 56) = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 48) == 1 && *(v0 + 40) > 5uLL)
  {
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v28 = *(v0 + 72);
    v27 = *(v0 + 80);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
    sub_1007D493C(v28, v24, type metadata accessor for MemberSharingCircle);
    v31 = sub_1007D471C(&qword_1016A9F08, v30, type metadata accessor for ShareKeysDownloadUseCase);
    v32 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v33 = swift_allocObject();
    v33[2] = v27;
    v33[3] = v31;
    v33[4] = v27;
    sub_1007D48B4(v24, v33 + v32, type metadata accessor for MemberSharingCircle);
    swift_retain_n();
    sub_10025EDD4(0, 0, v23, &unk_1013BCBB8, v33);
  }

  else
  {
  }

  v35 = *(v0 + 120);
  v34 = *(v0 + 128);
  v36 = *(v0 + 112);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1007D0AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007D0B0C, a4, 0);
}

uint64_t sub_1007D0B0C()
{
  v1 = *sub_1000035D0((v0[2] + 160), *(v0[2] + 184));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1001B7B20;
  v3 = v0[3];

  return sub_10107F924(v3);
}

BOOL sub_1007D0BD8()
{
  v0 = *(type metadata accessor for MemberSharingCircle() + 28);
  type metadata accessor for UUID();
  sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1007D0C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v3[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007D0D8C, 0, 0);
}

uint64_t sub_1007D0D8C()
{
  v1 = *(*(v0 + 32) + 152);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_1007D0DB0, v1, 0);
}

uint64_t sub_1007D0DB0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1007D0F10;
  v10 = v0[9];
  v9 = v0[10];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EA8, v6, v10);
}

uint64_t sub_1007D0F10()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_1007D1028, 0, 0);
}

uint64_t sub_1007D1028()
{
  v1 = v0[10];
  v2 = type metadata accessor for MemberPeerTrust();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = (v1 + *(v2 + 32));
    v3 = *v5;
    v4 = v5[1];

    sub_1007D49A4(v1, type metadata accessor for MemberPeerTrust);
  }

  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[2];
  *v8 = v3;
  v8[1] = v4;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1007D1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1000BC4D4(&qword_1016A9F20, &qword_1013BCC18);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v5[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v5[16] = *(v13 + 64);
  v5[17] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  v5[18] = v14;
  v15 = *(v14 - 8);
  v5[19] = v15;
  v16 = *(v15 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v5[24] = v17;
  v18 = *(v17 - 8);
  v5[25] = v18;
  v19 = *(v18 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v20 = type metadata accessor for MemberSharingCircle();
  v5[32] = v20;
  v21 = *(v20 - 8);
  v5[33] = v21;
  v5[34] = *(v21 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_1007D14C4, v4, 0);
}

uint64_t sub_1007D14C4()
{
  v101 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 32);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  if (*(*(v0 + 40) + 16) != *(*(v2 + *(v1 + 36)) + 16) + 1)
  {
    goto LABEL_8;
  }

  if (qword_101694480 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_1007D493C(v2, v3, type metadata accessor for MemberSharingCircle);
    sub_1007D493C(v2, v4, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    if (v8)
    {
      v11 = *(v0 + 256);
      v12 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v13 = 141558787;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v96 = v7;
      v14 = *(v11 + 28);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
      v18 = sub_1000136BC(v15, v17, &v100);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2160;
      *(v13 + 24) = 1752392040;
      *(v13 + 32) = 2081;
      v19 = v9 + *(v11 + 24);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
      v23 = sub_1000136BC(v20, v22, &v100);

      *(v13 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v6, v96, "All participant for shareId: %{private,mask.hash}s,\nbeaconId: %{private,mask.hash}s have accepted.", v13, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
      sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
    }

    v24 = *(v0 + 48);
    v25 = *(v24 + 16);
    *(v0 + 328) = v25;
    if (v25)
    {
      v26 = *(v0 + 264);
      v27 = *(v0 + 192);
      v28 = *(*(v0 + 56) + 152);
      *(v0 + 336) = v28;
      v29 = *(v26 + 80);
      *(v0 + 480) = v29;
      v30 = *(v26 + 72);
      *(v0 + 352) = 0;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 344) = v30;
      sub_1007D493C(v24 + ((v29 + 32) & ~v29), *(v0 + 304), type metadata accessor for MemberSharingCircle);
      *(v0 + 484) = v27[12];
      *(v0 + 488) = v27[16];
      *(v0 + 492) = v27[20];
      *(v0 + 496) = v27[24];
      v31 = sub_1007D1F38;
      v32 = v28;
      goto LABEL_27;
    }

LABEL_8:
    v33 = *(v0 + 176);
    v34 = *(v0 + 24);
    v35 = *(v34 + 16);
    *(v0 + 400) = v35;
    v99 = v0;
    if (v35)
    {
      v36 = v33 + 8;
      v37 = *(v0 + 152);
      v88 = *(v0 + 144);
      v90 = v36;
      v38 = *(v0 + 120);
      v39 = v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v97 = *(v37 + 72);
      v84 = (v38 + 8);
      v86 = (v38 + 16);
      do
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v40 = *(v0 + 184);
        v41 = type metadata accessor for Logger();
        sub_1000076D4(v41, qword_10177A560);
        sub_1000D2A70(v39, v40, &qword_1016A9F10, &unk_1013BCBC8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 184);
        if (v44)
        {
          v46 = *(v0 + 176);
          v94 = v43;
          v47 = *(v0 + 136);
          v48 = *(v99 + 112);
          v49 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v100 = v92;
          *v49 = 141558275;
          *(v49 + 4) = 1752392040;
          *(v49 + 12) = 2081;
          sub_1000D2A70(v45, v46, &qword_1016A9F10, &unk_1013BCBC8);
          v50 = *(v90 + *(v88 + 48));

          v51 = type metadata accessor for MemberPeerTrust();
          (*v86)(v47, v46 + *(v51 + 20), v48);
          sub_1007D49A4(v46, type metadata accessor for MemberPeerTrust);
          sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          v55 = v48;
          v0 = v99;
          (*v84)(v47, v55);
          sub_10000B3A8(v45, &qword_1016A9F10, &unk_1013BCBC8);
          v56 = sub_1000136BC(v52, v54, &v100);

          *(v49 + 14) = v56;
          _os_log_impl(&_mh_execute_header, v42, v94, "Data update on members process. Update %{private,mask.hash}s", v49, 0x16u);
          sub_100007BAC(v92);
        }

        else
        {

          sub_10000B3A8(v45, &qword_1016A9F10, &unk_1013BCBC8);
        }

        v39 += v97;
        --v35;
      }

      while (v35);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 256);
    if (!v57)
    {
      break;
    }

    v89 = *(v0 + 256);
    v59 = 0;
    v60 = *(v0 + 120);
    v85 = (v60 + 16);
    v98 = *(v0 + 200);
    v82 = *(v0 + 192);
    v83 = (v60 + 8);
    v87 = v57;
    while (v59 < _swiftEmptyArrayStorage[2])
    {
      sub_1000D2A70(_swiftEmptyArrayStorage + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v59, *(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 208);
      v62 = *(v0 + 216);
      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177A560);
      sub_1000D2A70(v62, v63, &qword_10169A608, &unk_1013BCC20);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = *(v0 + 240);
        v68 = *(v0 + 208);
        v91 = v68;
        v95 = v66;
        v69 = *(v0 + 136);
        v70 = *(v99 + 112);
        v71 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v100 = v93;
        *v71 = 141558275;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        sub_1000D2A70(v68, v67, &qword_10169A608, &unk_1013BCC20);
        v72 = v82[12];
        v73 = v82[16];
        v74 = *(v67 + v82[20]);

        v75 = *(v67 + v82[24]);

        (*v85)(v69, v67 + *(v89 + 20), v70);
        sub_1007D49A4(v67, type metadata accessor for MemberSharingCircle);
        sub_10000B3A8(v67 + v73, &unk_1016B29E0, &unk_1013B70E0);
        sub_10000B3A8(v67 + v72, &unk_101698C30, &unk_101392630);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v78 = v77;
        v0 = v99;
        (*v83)(v69, v70);
        sub_10000B3A8(v91, &qword_10169A608, &unk_1013BCC20);
        v79 = sub_1000136BC(v76, v78, &v100);

        *(v71 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v65, v95, "Data update on members process. Delete %{private,mask.hash}s", v71, 0x16u);
        sub_100007BAC(v93);

        v57 = v87;
      }

      else
      {
        v61 = *(v0 + 208);

        sub_10000B3A8(v61, &qword_10169A608, &unk_1013BCC20);
      }

      ++v59;
      sub_10000B3A8(*(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (v57 == v59)
      {
        v58 = *(v0 + 256);
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
    v2 = *(v0 + 32);
  }

LABEL_26:
  v80 = *(v0 + 56);

  v32 = *(v80 + 152);
  *(v0 + 408) = v32;
  *(v0 + 500) = *(v58 + 20);
  v31 = sub_1007D2BB8;
LABEL_27:

  return _swift_task_switch(v31, v32, 0);
}

uint64_t sub_1007D1F38()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = (*(v0 + 480) + 24) & ~*(v0 + 480);
  sub_1007D48B4(*(v0 + 304), v2, type metadata accessor for MemberSharingCircle);
  v5 = swift_allocObject();
  *(v0 + 368) = v5;
  *(v5 + 16) = v1;
  sub_1007D48B4(v2, v5 + v4, type metadata accessor for MemberSharingCircle);
  v6 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  *v7 = v0;
  v7[1] = sub_1007D2088;
  v8 = *(v0 + 240);
  v9 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4A50, v5, v9);
}

uint64_t sub_1007D2088()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 336);
  v5 = *v0;

  return _swift_task_switch(sub_1007D21B4, v3, 0);
}

uint64_t sub_1007D21B4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 484);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 56);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 384) = *(v3 + v5[20]);
  *(v0 + 392) = *(v3 + v5[24]);
  sub_1007D48B4(v3, v4, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v3 + v7, v4 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v3 + v8, v4 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_1007D22B8, v6, 0);
}

uint64_t sub_1007D22B8()
{
  v97 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 496);
  v3 = *(v0 + 360);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 192);
  *(v4 + *(v0 + 492)) = *(v0 + 384);
  *(v4 + v2) = v1;
  sub_1000D2A70(v4, v5, &qword_10169A608, &unk_1013BCC20);
  v8 = v7[12];
  v9 = v7[16];
  v10 = v7[20];
  v11 = *(v5 + v10);
  v12 = v7[24];
  v13 = *(v5 + v12);
  sub_1007D48B4(v5, v6, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v5 + v8, v6 + v8, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v5 + v9, v6 + v9, &unk_1016B29E0, &unk_1013B70E0);
  *(v6 + v10) = v11;
  *(v6 + v12) = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v17 = v15[2];
    v16 = v15[3];
    v86 = v15;
    if (v17 >= v16 >> 1)
    {
      v86 = sub_100A5BAE0(v16 > 1, v17 + 1, 1, v15);
    }

    v18 = *(v0 + 328);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);
    v21 = *(v0 + 352) + 1;
    sub_10000B3A8(*(v0 + 248), &qword_10169A608, &unk_1013BCC20);
    *(v86 + 16) = v17 + 1;
    sub_1000D2AD8(v19, v86 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, &qword_10169A608, &unk_1013BCC20);
    if (v21 != v18)
    {
      v47 = *(v0 + 344);
      v48 = *(v0 + 352) + 1;
      *(v0 + 352) = v48;
      *(v0 + 360) = v86;
      v49 = *(v0 + 336);
      v50 = *(v0 + 192);
      sub_1007D493C(*(v0 + 48) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + v47 * v48, *(v0 + 304), type metadata accessor for MemberSharingCircle);
      *(v0 + 484) = v50[12];
      *(v0 + 488) = v50[16];
      *(v0 + 492) = v50[20];
      *(v0 + 496) = v50[24];
      v51 = sub_1007D1F38;
      v52 = v49;
      goto LABEL_24;
    }

    *(v0 + 16) = v86;
    v22 = *(v0 + 176);
    v23 = *(v0 + 24);
    v24 = *(v23 + 16);
    *(v0 + 400) = v24;
    v95 = v0;
    if (v24)
    {
      v25 = v22 + 8;
      v26 = *(v0 + 152);
      v87 = *(v0 + 144);
      v89 = v25;
      v27 = *(v0 + 120);
      v28 = v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v29 = *(v26 + 72);
      v82 = (v27 + 8);
      v84 = (v27 + 16);
      do
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 184);
        v31 = type metadata accessor for Logger();
        sub_1000076D4(v31, qword_10177A560);
        sub_1000D2A70(v28, v30, &qword_1016A9F10, &unk_1013BCBC8);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v0 + 184);
        if (v34)
        {
          v36 = *(v0 + 176);
          v93 = v33;
          v37 = *(v0 + 136);
          v38 = *(v0 + 112);
          v39 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v96 = v91;
          *v39 = 141558275;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          sub_1000D2A70(v35, v36, &qword_1016A9F10, &unk_1013BCBC8);
          v40 = *(v89 + *(v87 + 48));

          v41 = type metadata accessor for MemberPeerTrust();
          (*v84)(v37, v36 + *(v41 + 20), v38);
          sub_1007D49A4(v36, type metadata accessor for MemberPeerTrust);
          sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v29;
          v45 = v44;
          (*v82)(v37, v38);
          sub_10000B3A8(v35, &qword_1016A9F10, &unk_1013BCBC8);
          v46 = sub_1000136BC(v42, v45, &v96);
          v29 = v43;
          v0 = v95;

          *(v39 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v32, v93, "Data update on members process. Update %{private,mask.hash}s", v39, 0x16u);
          sub_100007BAC(v91);
        }

        else
        {

          sub_10000B3A8(v35, &qword_1016A9F10, &unk_1013BCBC8);
        }

        v28 += v29;
        --v24;
      }

      while (v24);
    }

    v53 = v86;
    v54 = *(v86 + 16);

    if (!v54)
    {
      break;
    }

    v55 = 0;
    v56 = *(v0 + 120);
    v83 = (v56 + 16);
    v80 = *(v0 + 256);
    v81 = (v56 + 8);
    v94 = *(v0 + 200);
    v79 = *(v0 + 192);
    v85 = v54;
    while (v55 < *(v53 + 16))
    {
      sub_1000D2A70(v53 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v55, *(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 208);
      v59 = *(v0 + 216);
      v60 = type metadata accessor for Logger();
      sub_1000076D4(v60, qword_10177A560);
      sub_1000D2A70(v59, v58, &qword_10169A608, &unk_1013BCC20);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = *(v0 + 240);
        v64 = *(v0 + 208);
        v88 = v64;
        v92 = v62;
        v65 = *(v0 + 136);
        v66 = *(v0 + 112);
        v67 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v96 = v90;
        *v67 = 141558275;
        *(v67 + 4) = 1752392040;
        *(v67 + 12) = 2081;
        sub_1000D2A70(v64, v63, &qword_10169A608, &unk_1013BCC20);
        v68 = v79[12];
        v69 = v79[16];
        v70 = *(v63 + v79[20]);

        v71 = *(v63 + v79[24]);

        (*v83)(v65, v63 + *(v80 + 20), v66);
        sub_1007D49A4(v63, type metadata accessor for MemberSharingCircle);
        sub_10000B3A8(v63 + v69, &unk_1016B29E0, &unk_1013B70E0);
        sub_10000B3A8(v63 + v68, &unk_101698C30, &unk_101392630);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v73;
        (*v81)(v65, v66);
        sub_10000B3A8(v88, &qword_10169A608, &unk_1013BCC20);
        v75 = sub_1000136BC(v72, v74, &v96);
        v0 = v95;

        *(v67 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v61, v92, "Data update on members process. Delete %{private,mask.hash}s", v67, 0x16u);
        sub_100007BAC(v90);
        v53 = v86;

        v54 = v85;
      }

      else
      {
        v57 = *(v0 + 208);

        sub_10000B3A8(v57, &qword_10169A608, &unk_1013BCC20);
      }

      ++v55;
      sub_10000B3A8(*(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (v54 == v55)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    v15 = sub_100A5BAE0(0, v15[2] + 1, 1, v15);
  }

LABEL_23:
  v76 = *(v0 + 256);
  v77 = *(v0 + 56);

  v52 = *(v77 + 152);
  *(v0 + 408) = v52;
  *(v0 + 500) = *(v76 + 20);
  v51 = sub_1007D2BB8;
LABEL_24:

  return _swift_task_switch(v51, v52, 0);
}

uint64_t sub_1007D2BB8()
{
  v1 = *(v0 + 500);
  v2 = *(v0 + 408);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 32);
  v8 = *(v6 + 16);
  *(v0 + 416) = v8;
  *(v0 + 424) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v0 + 432) = v10;
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v9, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 440) = v12;
  *v12 = v0;
  v12[1] = sub_1007D2D2C;
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4A04, v10, v14);
}

uint64_t sub_1007D2D2C()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1007D2E58, v3, 0);
}

uint64_t sub_1007D2E58()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v0 + 2;
  v4[4] = v1;
  sub_100EC0C48(sub_1007D4A30, v2);
  v5 = v0[51];

  return _swift_task_switch(sub_1007D3080, v5, 0);
}

uint64_t sub_1007D30A8()
{
  v1 = v0[56];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[57] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[58] = v5;
  *v5 = v0;
  v5[1] = sub_1007D31A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_1007D31A0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_1007D3AD4;
  }

  else
  {
    v5 = *(v2 + 456);

    v4 = sub_1007D32BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007D32D8()
{
  v99 = v0;
  v1 = v0[2];
  if (*(v1 + 16))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = v0[36];
    v3 = v0[4];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    sub_1007D493C(v3, v2, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[36];
    if (v7)
    {
      v9 = v0[32];
      v10 = v0[14];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v98 = v12;
      *v11 = 141558531;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v9 + 24);
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
      v17 = sub_1000136BC(v14, v16, &v98);

      *(v11 + 14) = v17;
      *(v11 + 22) = 2048;
      *(v11 + 24) = *(v1 + 16);
      _os_log_impl(&_mh_execute_header, v5, v6, "Deleted all previous shares for beaconId: %{private,mask.hash}s,\ncount: %ld.", v11, 0x20u);
      sub_100007BAC(v12);
    }

    else
    {

      sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
    }
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v18 = v0[35];
  v20 = v0[3];
  v19 = v0[4];
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177A560);
  sub_1007D493C(v19, v18, type metadata accessor for MemberSharingCircle);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[50];
    v25 = v0[35];
    v26 = v0[32];
    v27 = v0[14];
    v28 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v28 = 141558531;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v29 = *(v26 + 28);
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1007D49A4(v25, type metadata accessor for MemberSharingCircle);
    v33 = sub_1000136BC(v30, v32, &v97);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    if (v24)
    {
      v74 = v23;
      v76 = v28;
      v78 = v22;
      v34 = v0[50];
      v35 = v0[21];
      v36 = v0[19];
      v87 = v0[9];
      v89 = v0[18];
      v85 = v0[8];
      v37 = v0[3];
      v98 = _swiftEmptyArrayStorage;
      sub_101123F60(0, v34, 0);
      v38 = 0;
      v39 = v98;
      v40 = v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v81 = *(v36 + 72);
      v83 = v35 + 8;
      v80 = v0;
      do
      {
        v95 = v0[53];
        v42 = v0[21];
        v41 = v0[22];
        v43 = v0[20];
        v91 = v0[14];
        v93 = v0[52];
        v44 = v39;
        v45 = v0[10];
        sub_1000D2A70(v40, v41, &qword_1016A9F10, &unk_1013BCBC8);
        v46 = (v45 + *(v85 + 48));
        sub_1000D2A70(v41, v42, &qword_1016A9F10, &unk_1013BCBC8);
        v47 = *(v83 + *(v89 + 48));

        v48 = v42 + *(type metadata accessor for MemberPeerTrust() + 20);
        v49 = v45;
        v39 = v44;
        v93(v49, v48, v91);
        sub_1007D49A4(v42, type metadata accessor for MemberPeerTrust);
        sub_1000D2AD8(v41, v43, &qword_1016A9F10, &unk_1013BCBC8);
        v50 = (v43 + *(v89 + 48));
        v52 = *v50;
        v51 = v50[1];
        *v46 = v52;
        v46[1] = v51;
        sub_1007D49A4(v43, type metadata accessor for MemberPeerTrust);
        v98 = v44;
        v54 = v44[2];
        v53 = v44[3];
        if (v54 >= v53 >> 1)
        {
          sub_101123F60(v53 > 1, v54 + 1, 1);
          v39 = v98;
        }

        v0 = v80;
        v55 = v80[50];
        v56 = v80[10];
        ++v38;
        v39[2] = v54 + 1;
        sub_1000D2AD8(v56, v39 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v54, &qword_1016A9F20, &qword_1013BCC18);
        v40 += v81;
      }

      while (v38 != v55);
      v28 = v76;
      v22 = v78;
      v23 = v74;
    }

    v58 = v0[11];
    v59 = v0[8];
    v60 = Array.description.getter();
    v62 = v61;

    v63 = sub_1000136BC(v60, v62, &v97);

    *(v28 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v22, v23, "Update members for shareId: %{private,mask.hash}s,\nupdates: %s.", v28, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v57 = v0[35];
    v58 = v0[11];

    sub_1007D49A4(v57, type metadata accessor for MemberSharingCircle);
  }

  sub_10000B3A8(v58, &qword_1016975C8, &qword_10138C1F0);
  v65 = v0[39];
  v64 = v0[40];
  v67 = v0[37];
  v66 = v0[38];
  v69 = v0[35];
  v68 = v0[36];
  v70 = v0[30];
  v71 = v0[31];
  v75 = v0[29];
  v77 = v0[28];
  v79 = v0[27];
  v82 = v0[26];
  v84 = v0[23];
  v86 = v0[22];
  v88 = v0[21];
  v90 = v0[20];
  v92 = v0[17];
  v94 = v0[11];
  v96 = v0[10];
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

  v72 = v0[1];

  return v72();
}

uint64_t sub_1007D3AD4()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1007D3B40, v2, 0);
}

uint64_t sub_1007D3B40()
{
  sub_10000B3A8(v0[11], &qword_1016975C8, &qword_10138C1F0);
  v23 = v0[59];
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[30];
  v7 = v0[31];
  v12 = v0[29];
  v13 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v19 = v0[20];
  v20 = v0[17];
  v21 = v0[11];
  v22 = v0[10];
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);
  v9 = v0[2];

  v10 = v0[1];

  return v10();
}

void sub_1007D3CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v54 = a5;
  v55 = a4;
  v57 = a2;
  v62 = a1;
  v8 = type metadata accessor for MemberPeerTrust();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  __chkstk_darwin(v8 - 8);
  v60 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v53 = &v48 - v13;
  v14 = type metadata accessor for MemberSharingCircle();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  __chkstk_darwin(v14);
  v49 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v58 = *(v56 - 8);
  v17 = *(v58 + 64);
  __chkstk_darwin(v56);
  v59 = (&v48 - v18);
  v19 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = (&v48 - v22);
  v24 = *(a3 + 16);
  v50 = a3;
  if (v24)
  {
    v25 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    while (1)
    {
      sub_1000D2A70(v25, v23, &qword_1016A9F10, &unk_1013BCBC8);
      v27 = (v23 + *(v19 + 48));
      v28 = *v27;
      v29 = v27[1];

      sub_100EC3C34(v23, v62, v28, v29);
      if (v6)
      {
        break;
      }

      sub_10000B3A8(v23, &qword_1016A9F10, &unk_1013BCBC8);
      v25 += v26;
      if (!--v24)
      {
        goto LABEL_5;
      }
    }

    v41 = &qword_1016A9F10;
    v42 = &unk_1013BCBC8;
LABEL_16:
    v43 = v23;
    goto LABEL_17;
  }

LABEL_5:
  v30 = *v55;
  v31 = *(*v55 + 16);

  v55 = v31;
  if (v31)
  {
    v32 = 0;
    v33 = &qword_10169A608;
    v34 = v62;
    v23 = v59;
    v35 = v60;
    while (v32 < *(v30 + 16))
    {
      sub_1000D2A70(v30 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v32, v23, v33, &unk_1013BCC20);
      sub_100D45CB0(v23);
      if (v6)
      {

        v41 = &qword_10169A608;
        v42 = &unk_1013BCC20;
        goto LABEL_16;
      }

      v36 = v56;
      sub_1001BA354(*(v23 + *(v56 + 80)));
      v6 = 0;
      v37 = v33;
      v38 = *(v23 + *(v36 + 96));
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = 0;
        while (v40 < *(v38 + 16))
        {
          sub_1007D493C(v38 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v40, v35, type metadata accessor for MemberPeerTrust);
          sub_100D46078(v35);
          ++v40;
          sub_1007D49A4(v35, type metadata accessor for MemberPeerTrust);
          if (v39 == v40)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }

LABEL_7:
      ++v32;
      v23 = v59;
      v33 = v37;
      sub_10000B3A8(v59, v37, &unk_1013BCC20);
      if (v32 == v55)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = v62;
LABEL_19:

    v44 = v53;
    sub_1000D2A70(v54, v53, &unk_101698BC0, &qword_10138C440);
    if ((*(v51 + 48))(v44, 1, v52) == 1)
    {
      v41 = &unk_101698BC0;
      v42 = &qword_10138C440;
      v43 = v44;
LABEL_17:
      sub_10000B3A8(v43, v41, v42);
      return;
    }

    v45 = v44;
    v46 = v49;
    sub_1007D48B4(v45, v49, type metadata accessor for MemberSharingCircle);
    v47 = v50;

    sub_100EC22D0(v46, v34, v47);
    sub_1007D49A4(v46, type metadata accessor for MemberSharingCircle);
  }
}

uint64_t sub_1007D42B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v31 - v7;
  v31 = *(type metadata accessor for MemberSharingCircle() + 36);
  v32 = a1;
  v9 = *(a1 + v31);
  v10 = *(a2 + 16);

  v11 = v33;
  if (!v10)
  {
LABEL_15:

    *(v32 + v31) = v11;
    return result;
  }

  v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v13 = *(v5 + 72);
  v11 = v33;
  while (1)
  {
    sub_1000D2A70(v12, v8, &qword_1016A9F10, &unk_1013BCBC8);
    v14 = *(type metadata accessor for MemberPeerTrust() + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v11;
    v16 = sub_1000210EC(&v8[v14]);
    v18 = v11[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v11[3] < v21)
    {
      sub_100FEB78C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1000210EC(&v8[v14]);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v11 = v34;
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v29 = v16;
    sub_101007A90();
    v16 = v29;
    v11 = v34;
    if (v22)
    {
LABEL_3:
      *(v11[7] + v16) = 1;
      goto LABEL_4;
    }

LABEL_11:
    v11[(v16 >> 6) + 8] |= 1 << v16;
    v24 = v11[6];
    v25 = v16;
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(v24 + *(*(v26 - 8) + 72) * v25, &v8[v14], v26);
    *(v11[7] + v25) = 1;
    v27 = v11[2];
    v20 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    v11[2] = v28;
LABEL_4:
    sub_10000B3A8(v8, &qword_1016A9F10, &unk_1013BCBC8);
    v12 += v13;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for UUID();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1007D4558(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1007D0AEC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D4670(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1007D0C84(a1, a2, v2);
}

uint64_t sub_1007D471C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1007D47BC(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1007C929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D48B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D493C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D49A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007D4A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1007C929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D4B74()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v7(v0 + v2 + v1[9], v6);
  v7(v0 + v2 + v1[10], v6);
  v8 = *(v0 + v2 + v1[11]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1007D4CCC()
{
  v2 = *(type metadata accessor for MemberSharingCircle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_1007C6534(v4, v0 + v3);
}

uint64_t sub_1007D4DA4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

unint64_t sub_1007D4E48()
{
  result = qword_1016A9F28[0];
  if (!qword_1016A9F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016A9F28);
  }

  return result;
}

uint64_t sub_1007D4EB0(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for VariableGroupingSequence();
  if (v5 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1007D4FBC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 104));
  v4 = *(*v0 + 128);
  swift_beginAccess();
  v5 = v2[12];
  v6 = v2[11];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = &v20;
  dispatch thunk of IteratorProtocol.next()();
  result = swift_endAccess();
  v9 = *v1;
  if (v21 == 1)
  {
    v10 = *v1;
    v7 = (v1 + *(v9 + 120));
  }

  v11 = *v7;
  *(v1 + *(v9 + 120)) = *v7;
  v12 = *(*v1 + 112);
  v13 = *(v1 + v12);
  if (__OFADD__(v13, v11))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v13 + v11 < v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v3;
  v14 = v2[10];
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v15 = *(v1 + v12);
  v16 = 0;
  if (v15 < Array.count.getter())
  {
    Array.subscript.getter();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    v16 = Array.init<A>(_:)();
  }

  sub_1000BC4D4(&qword_1016AA030, &qword_1013BCE28);
  sub_1007D5C80();
  result = Collection.count.getter();
  v17 = *(v1 + v12);
  v18 = __OFADD__(v17, result);
  v19 = v17 + result;
  if (!v18)
  {
    *(v1 + v12) = v19;
    return v16;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1007D52A0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for VariableGroupingSequence();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  v6 = *(*v0 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v6, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1007D53C0()
{
  sub_1007D52A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1007D5448(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = type metadata accessor for Array();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007D54D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1007D5658(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1007D58C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1007D4FBC();
  *a1 = result;
  return result;
}

uint64_t sub_1007D58F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  type metadata accessor for VariableGroupingSequence.VariableGroupingSequenceIterator();
  return sub_1007D5C38(v1);
}

uint64_t sub_1007D592C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1007D58F0(a1);
  result = (*(*(a1 - 1) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1007D59C0(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v21 - v7;
  v9 = v3[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v21 - v13;
  *(v1 + v3[14]) = 0;
  v15 = *(*v1 + 104);
  v16 = v3[10];
  v17 = type metadata accessor for VariableGroupingSequence();
  v18 = v2 + v15;
  v19 = v22;
  (*(*(v17 - 8) + 16))(v18, v22, v17);
  (*(v5 + 16))(v8, v19 + *(v17 + 44), v4);
  dispatch thunk of Sequence.makeIterator()();
  (*(v11 + 32))(v2 + *(*v2 + 128), v14, AssociatedTypeWitness);
  *(v2 + *(*v2 + 120)) = 0;
  return v2;
}

uint64_t sub_1007D5C38(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = type metadata accessor for VariableGroupingSequence.VariableGroupingSequenceIterator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1007D59C0(a1);
}

unint64_t sub_1007D5C80()
{
  result = qword_1016AA038;
  if (!qword_1016AA038)
  {
    sub_1000BC580(&qword_1016AA030, &qword_1013BCE28);
    sub_1007D5D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA038);
  }

  return result;
}

unint64_t sub_1007D5D0C()
{
  result = qword_1016AA040;
  if (!qword_1016AA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA040);
  }

  return result;
}

uint64_t type metadata accessor for SearchpartyAccount()
{
  result = qword_1016AA0A0;
  if (!qword_1016AA0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for SearchpartyAccount();
}

void sub_1007D5DD4()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10073FACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AirPodsLostModeEndPoint()
{
  result = qword_1016AA140;
  if (!qword_1016AA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007D5EE4()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x80000001013608A0;
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

uint64_t sub_1007D60D4(uint64_t a1)
{
  v63 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v3 = *(*(v63 - 8) + 64);
  v4 = __chkstk_darwin(v63);
  v62 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v61 = v54 - v7;
  __chkstk_darwin(v6);
  v60 = v54 - v8;
  v9 = *(a1 + 16);
  v77 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v77;
  }

  v54[1] = v1;
  v76 = _swiftEmptyArrayStorage;
  sub_1011250EC(0, v9, 0);
  v77 = v76;
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v13 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v55 = a1 + 72;
    v56 = v9;
    v14 = *(a1 + 36);
    v15 = 1;
    v57 = v14;
    v58 = a1 + 64;
    v59 = a1;
    while ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      if (v14 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v65 = 1 << v13;
      v66 = v13 >> 6;
      v64 = v15;
      v16 = v63;
      v17 = v60;
      v18 = &v60[*(v63 + 48)];
      v19 = *(a1 + 48);
      v20 = type metadata accessor for UUID();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v17, v19 + *(v21 + 72) * v13, v20);
      v22 = (*(a1 + 56) + 104 * v13);
      v24 = v22[1];
      v23 = v22[2];
      v69[0] = *v22;
      v69[1] = v24;
      v67 = v13;
      v69[2] = v23;
      v26 = v22[4];
      v25 = v22[5];
      v27 = v22[3];
      v70 = *(v22 + 96);
      v69[4] = v26;
      v69[5] = v25;
      v69[3] = v27;
      memmove(v18, v22, 0x61uLL);
      v28 = v61;
      (*(v21 + 32))(v61, v17, v20);
      v29 = v28 + *(v16 + 48);
      v30 = *(v18 + 5);
      *(v29 + 64) = *(v18 + 4);
      *(v29 + 80) = v30;
      *(v29 + 96) = v18[96];
      v31 = *(v18 + 1);
      *v29 = *v18;
      *(v29 + 16) = v31;
      v32 = *(v18 + 3);
      *(v29 + 32) = *(v18 + 2);
      *(v29 + 48) = v32;
      v33 = v62;
      sub_1000D2A70(v28, v62, &unk_1016B6E10, &qword_1013BD0A8);
      v34 = v33 + *(v16 + 48);
      v35 = *v34;
      sub_1000D2A70(v69, &v68, &unk_1016AA4C0, &unk_1013BD0B0);

      v36 = *(v34 + 56);
      v73 = *(v34 + 40);
      v74 = v36;
      v75[0] = *(v34 + 72);
      *(v75 + 9) = *(v34 + 81);
      v37 = *(v34 + 24);
      v71 = *(v34 + 8);
      v72 = v37;
      (*(v21 + 8))(v33, v20);
      v38 = v77;
      sub_10000B3A8(v28, &unk_1016B6E10, &qword_1013BD0A8);
      v76 = v38;
      v40 = v38[2];
      v39 = v38[3];
      v77 = v38;
      if (v40 >= v39 >> 1)
      {
        sub_1011250EC((v39 > 1), v40 + 1, 1);
        v77 = v76;
      }

      v41 = v77;
      v77[2] = v40 + 1;
      v42 = &v41[12 * v40];
      v43 = v72;
      v42[2] = v71;
      v42[3] = v43;
      v44 = v73;
      v45 = v74;
      v46 = v75[0];
      *(v42 + 105) = *(v75 + 9);
      v42[5] = v45;
      v42[6] = v46;
      v42[4] = v44;
      a1 = v59;
      v13 = 1 << *(v59 + 32);
      result = v67;
      if (v67 >= v13)
      {
        goto LABEL_27;
      }

      v10 = v58;
      v47 = *(v58 + 8 * v66);
      if ((v47 & v65) == 0)
      {
        goto LABEL_28;
      }

      v14 = v57;
      if (v57 != *(v59 + 36))
      {
        goto LABEL_29;
      }

      v48 = v47 & (-2 << (v67 & 0x3F));
      if (v48)
      {
        v13 = __clz(__rbit64(v48)) | v67 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = v66 << 6;
        v50 = v66 + 1;
        v51 = (v55 + 8 * v66);
        while (v50 < (v13 + 63) >> 6)
        {
          v53 = *v51++;
          v52 = v53;
          v49 += 64;
          ++v50;
          if (v53)
          {
            result = sub_1000BB408(v67, v57, 0);
            v13 = __clz(__rbit64(v52)) + v49;
            goto LABEL_19;
          }
        }

        result = sub_1000BB408(v67, v57, 0);
      }

LABEL_19:
      if (v64 == v56)
      {
        return v77;
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v15 = v64 + 1;
        if (v13 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1007D65D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B368);
  sub_1000076D4(v0, qword_10177B368);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007D665C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 160) + 56);
  sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v5;
  return result;
}

uint64_t sub_1007D66E8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  UUID.init()();
  *(v0 + 128) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v9(v7, 1, 1, v8);
  UUID.init()();
  *(v0 + 136) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v0 + 144) = 0;
  *(v0 + 152) = _swiftEmptyDictionarySingleton;
  sub_1000BC4D4(&qword_1016AA5C0, &qword_1013BD240);
  swift_allocObject();
  *(v0 + 160) = sub_1007F0080();
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  v10 = sub_1000BC4D4(&unk_1016AA5C8, &qword_1013BD248);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 208) = AsyncStreamProvider.init()();
  *(v0 + 216) = _swiftEmptyArrayStorage;
  v13 = *(v0 + 160);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  *(v13 + 40) = sub_1007FFB80;
  *(v13 + 48) = v14;

  sub_1000BB27C(v15);

  return v1;
}

uint64_t sub_1007D6984()
{
  v0 = type metadata accessor for UUID();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 128);
    type metadata accessor for WorkItemQueue.WorkItem();
    swift_allocObject();
    swift_weakInit();

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_1007D6AFC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1007D6BB8, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1007D6BB8()
{
  v1 = v0[6];
  v2 = *(v1 + 144);
  v0[7] = v2;
  if (v2)
  {
    v3 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v6 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1007D6CC4;

    return v6();
  }

  else
  {
    *(v1 + 144) = 0;
    sub_1007E434C();
    sub_1007E915C();

    return _swift_task_switch(sub_1007D6E68, 0, 0);
  }
}

uint64_t sub_1007D6CC4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1007D6DF0, v3, 0);
}

uint64_t sub_1007D6DF0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;

  sub_1007E434C();
  sub_1007E915C();

  return _swift_task_switch(sub_1007D6E68, 0, 0);
}

uint64_t sub_1007D6E68()
{
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled all location streams - no more connections.", v4, 2u);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1007D6F8C(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(v2 + 160);
  sub_1007F0258(a1, a2);
  v9 = *(v3 + 128);
  type metadata accessor for WorkItemQueue.WorkItem();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a2[3];
  *(v11 + 56) = a2[2];
  *(v11 + 72) = v12;
  *(v11 + 88) = a2[4];
  *(v11 + 97) = *(a2 + 73);
  v13 = a2[1];
  *(v11 + 24) = *a2;
  *(v11 + 40) = v13;

  sub_10000F4C8(a2, v15);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1007D710C(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return _swift_task_switch(sub_1007D712C, 0, 0);
}

uint64_t sub_1007D712C()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_1007D7214;

    return sub_1007E5468();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1007D7214()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 168) = v4;
  *v4 = v3;
  v4[1] = sub_1007D7354;
  v5 = *(v1 + 152);

  return sub_1007E4684();
}

uint64_t sub_1007D7354()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 176) = v4;
  *v4 = v3;
  v4[1] = sub_1007D7494;
  v5 = *(v1 + 152);

  return sub_1007D8184();
}

uint64_t sub_1007D7494()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_1007D75A4, v2, 0);
}

uint64_t sub_1007D75A4()
{
  v1 = *(v0 + 152);
  sub_1007D7DC8();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1007D763C;

  return daemon.getter();
}

uint64_t sub_1007D763C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  *(v3 + 192) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007D7818;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007D7818(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 200);
  v7 = *v2;

  v8 = *(v4 + 192);
  if (v1)
  {

    v9 = sub_1007FFCA0;
    v10 = 0;
  }

  else
  {

    *(v5 + 208) = a1;
    v9 = sub_1007D7978;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1007D7978()
{
  v1 = *(v0 + 208);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_1007D7A50;
  v4 = *(v0 + 208);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC9C, v4, &type metadata for () + 8);
}

uint64_t sub_1007D7A50()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_1007D7B68, v2, 0);
}

uint64_t sub_1007D7B68()
{
  v1 = *(v0 + 208);

  return _swift_task_switch(sub_1007D7BD0, 0, 0);
}

uint64_t sub_1007D7BD0()
{
  v16 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10000F4C8(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1004E2CD8(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    if (*(v5 + 48))
    {
      v8 = *(v0[18] + 40);
      v9 = *(v5 + 48);
    }

    else
    {
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    v11 = v0[19];

    v12 = sub_1000136BC(v8, v9, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished adding connection for context %{private,mask.hash}s.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
    v10 = v0[19];
  }

  v13 = v0[1];

  return v13();
}

void sub_1007D7DC8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (*(v0 + 192))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B368);
    v24 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v24, v5, "Location monitor already started - no-op.", v6, 2u);
    }
  }

  else
  {
    *(v0 + 200) = 1;
    v7 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
    v8 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyNearestTenMeters, 0);
    v9 = &v8[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
    swift_beginAccess();
    *(v9 + 1) = &off_101634928;
    swift_unknownObjectWeakAssign();
    CurrentLocationMonitor.startMonitor()();
    v10 = *(v1 + 192);
    *(v1 + 192) = v8;
    v11 = v8;

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177B368);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Location monitor started.", v15, 2u);
    }

    v16 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v17 = *&v11[v16];
    if (v17)
    {
      v18 = *(v1 + 128);
      type metadata accessor for WorkItemQueue.WorkItem();
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v17;
      v21 = v17;
      v22 = v11;
      v23 = v21;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    else
    {
    }
  }
}

uint64_t sub_1007D8184()
{
  v1[87] = v0;
  v2 = type metadata accessor for Date();
  v1[88] = v2;
  v3 = *(v2 - 8);
  v1[89] = v3;
  v4 = *(v3 + 64) + 15;
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  Configuration = type metadata accessor for LocationFetchConfiguration();
  v1[93] = Configuration;
  v6 = *(*(Configuration - 8) + 64) + 15;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_1007D8298, v0, 0);
}

uint64_t sub_1007D8298()
{
  if (*(v0[87] + 144))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B368);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch task pending, not creating a new fetch task.", v4, 2u);
    }

    v5 = v0[95];
    v6 = v0[94];
    v7 = v0[92];
    v8 = v0[91];
    v9 = v0[90];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v13 = swift_task_alloc();
    v0[96] = v13;
    v14 = sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
    *v13 = v0;
    v13[1] = sub_1007D84B4;
    v15 = v0[87];

    return unsafeBlocking<A>(context:_:)(v0 + 86, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FFC98, v15, v14);
  }
}

uint64_t sub_1007D84B4()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 696);
  v4 = *v0;

  return _swift_task_switch(sub_1007D85CC, v2, 0);
}

uint64_t sub_1007D85CC()
{
  v93 = v0;
  v1 = *(v0 + 688);
  v81 = *(v1 + 16);
  if (v81)
  {
    v2 = *(v1 + 48);
    *(v0 + 112) = *(v1 + 32);
    *(v0 + 128) = v2;
    v3 = *(v1 + 64);
    v4 = *(v1 + 80);
    v5 = *(v1 + 96);
    *(v0 + 185) = *(v1 + 105);
    *(v0 + 160) = v4;
    *(v0 + 176) = v5;
    *(v0 + 144) = v3;
    sub_10000F4C8(v0 + 112, v0 + 208);
    if (qword_101694958 != -1)
    {
LABEL_48:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    *(v0 + 776) = sub_1000076D4(v6, qword_10177B368);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling next fetch.", v9, 2u);
    }

    v84 = v1;
    v85 = (v0 + 304);
    v79 = v1 + 32;
    v83 = *(v0 + 744);

    v10 = *(v0 + 184);
    v77 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v1 = *(v0 + 169);
    v13 = *(v0 + 168);
    v87 = *(v0 + 160);
    v88 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v90 = *(v0 + 112);
    v18 = objc_opt_self();
    v19 = v10;
    v20 = v77;
    v78 = v18;
    v21 = 0;
    while (1)
    {
      *(v0 + 400) = v90;
      *(v0 + 408) = v16;
      *(v0 + 416) = v17;
      *(v0 + 424) = v14;
      *(v0 + 432) = v15;
      *(v0 + 440) = v88;
      *(v0 + 448) = v87;
      *(v0 + 456) = v13 & 1;
      *(v0 + 457) = v1 & 1;
      *(v0 + 464) = v12;
      *(v0 + 472) = v19;
      *(v0 + 480) = v20;
      *(v0 + 488) = v11 & 1;
      if (v21 >= *(v84 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = (v79 + 96 * v21);
      v23 = v22[2];
      v24 = v22[3];
      v25 = v22[4];
      *(v0 + 377) = *(v22 + 73);
      *(v0 + 352) = v24;
      *(v0 + 368) = v25;
      *(v0 + 336) = v23;
      v26 = v22[1];
      *v85 = *v22;
      *(v0 + 320) = v26;
      v27 = *(v0 + 312);
      v28 = *(v0 + 328);
      v29 = *(v0 + 336);
      sub_10000F4C8(v85, v0 + 496);

      v31 = sub_10000954C(v30);

      v33 = sub_1003ADDE8(v32, v31);

      v35 = sub_10112A91C(v34);

      v89 = sub_1003AE094(v36, v35);

      sub_1004E2CD8(v0 + 400);
      v37 = sub_10112B120(v15);

      v92 = v37;
      v38 = *(v29 + 16);
      if (v38)
      {
        v39 = (v29 + 32);
        do
        {
          v40 = *v39++;
          sub_100DEFD70(&v91, v40);
          --v38;
        }

        while (v38);
        v37 = v92;
      }

      v41 = *(v0 + 760);
      v42 = *(v0 + 752);
      v43 = *(v0 + 304);
      v44 = v90;
      sub_101106664(v90, v41);
      v45 = *(v41 + *(v83 + 32));
      sub_10003627C(v41, type metadata accessor for LocationFetchConfiguration);
      sub_101106664(v43, v42);
      v46 = *(v42 + *(v83 + 32));
      sub_10003627C(v42, type metadata accessor for LocationFetchConfiguration);
      if (v46 < v45)
      {
        v44 = v43;
      }

      v90 = v44;
      v47 = *(v33 + 16);
      if (v47)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v48 = *(type metadata accessor for UUID() - 8);
        v49 = *(v48 + 72);
        v1 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v16 = swift_allocObject();
        v50 = j__malloc_size(v16);
        if (!v49)
        {
          goto LABEL_43;
        }

        if (v50 - v1 == 0x8000000000000000 && v49 == -1)
        {
          goto LABEL_47;
        }

        v16[2] = v47;
        v16[3] = 2 * ((v50 - v1) / v49);
        v1 = sub_1003A9D58(&v92, v16 + v1, v47, v33);
        sub_1000128F8();
        if (v1 != v47)
        {
          goto LABEL_44;
        }

        v17 = _swiftEmptyArrayStorage;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
        v16 = _swiftEmptyArrayStorage;
      }

      v52 = *(v89 + 16);
      if (v52)
      {
        sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
        v14 = swift_allocObject();
        v53 = j__malloc_size(v14);
        v54 = v53 - 32;
        if (v53 < 32)
        {
          v54 = v53 - 25;
        }

        v14[2] = v52;
        v14[3] = 2 * (v54 >> 3);
        v1 = sub_1003CC2D0(&v92, v14 + 4, v52, v89);
        sub_1000128F8();
        if (v1 != v52)
        {
          goto LABEL_45;
        }

        v55 = *(v37 + 16);
        if (!v55)
        {
LABEL_30:

          v15 = _swiftEmptyArrayStorage;
          goto LABEL_31;
        }
      }

      else
      {

        v14 = _swiftEmptyArrayStorage;
        v55 = *(v37 + 16);
        if (!v55)
        {
          goto LABEL_30;
        }
      }

      sub_1000BC4D4(&qword_1016AA5A8, &unk_1013BD208);
      v15 = swift_allocObject();
      v56 = j__malloc_size(v15);
      v15[2] = v55;
      v15[3] = 2 * v56 - 64;
      v1 = sub_1003CC2D4(&v92, v15 + 4, v55, v37);
      sub_1000128F8();
      if (v1 != v55)
      {
        goto LABEL_46;
      }

LABEL_31:
      v57 = [v78 mainBundle];
      v58 = [v57 bundleIdentifier];

      if (v58)
      {
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v60;
        v88 = v59;
      }

      else
      {
        v87 = 0;
        v88 = 0;
      }

      ++v21;
      v12 = *(v0 + 368);
      v1 = *(v0 + 361);
      v13 = *(v0 + 360);

      sub_1004E2CD8(v85);
      if (v21 == v81)
      {
        v61 = *(v0 + 760);
        v82 = *(v0 + 736);
        v80 = *(v0 + 728);
        v62 = *(v0 + 712);
        v86 = *(v0 + 704);

        *(v0 + 592) = v90;
        *(v0 + 600) = v16;
        *(v0 + 608) = _swiftEmptyArrayStorage;
        *(v0 + 616) = v14;
        *(v0 + 624) = v15;
        *(v0 + 632) = v88;
        *(v0 + 640) = v87;
        *(v0 + 648) = v13;
        *(v0 + 649) = v1;
        *(v0 + 656) = v12;
        *(v0 + 664) = 0u;
        *(v0 + 680) = 1;
        v63 = *(v0 + 640);
        *(v0 + 48) = *(v0 + 624);
        *(v0 + 64) = v63;
        *(v0 + 80) = *(v0 + 656);
        *(v0 + 89) = *(v0 + 665);
        v64 = *(v0 + 608);
        *(v0 + 16) = *(v0 + 592);
        *(v0 + 32) = v64;
        static Date.trustedNow.getter(v80);
        sub_101106664(v90, v61);
        v65 = *(v61 + *(v83 + 32));
        sub_10003627C(v61, type metadata accessor for LocationFetchConfiguration);
        Date.addingTimeInterval(_:)();
        v66 = *(v62 + 8);
        *(v0 + 784) = v66;
        *(v0 + 792) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v66(v80, v86);
        v67 = swift_task_alloc();
        *(v0 + 800) = v67;
        *v67 = v0;
        v67[1] = sub_1007D8DE4;
        v68 = *(v0 + 736);
        v69 = *(v0 + 696);

        return sub_1007D908C(v68, v0 + 16);
      }

      v19 = 0;
      v20 = 0;
      v11 = 1;
    }
  }

  v71 = *(v0 + 760);
  v72 = *(v0 + 752);
  v73 = *(v0 + 736);
  v74 = *(v0 + 728);
  v75 = *(v0 + 720);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1007D8DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v3 = *(*v0 + 696);
  v5 = *v0;

  sub_1004E2CD8(v1 + 592);

  return _swift_task_switch(sub_1007D8EFC, v3, 0);
}

uint64_t sub_1007D8EFC()
{
  v1 = v0[97];
  (*(v0[89] + 16))(v0[90], v0[92], v0[88]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[90];
  v8 = v0[88];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    Date.timeIntervalSinceNow.getter();
    v11 = v10;
    v6(v7, v8);
    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Next fetch scheduled in %f seconds.", v9, 0xCu);
  }

  else
  {

    v6(v7, v8);
  }

  v12 = v0[99];
  (v0[98])(v0[92], v0[88]);
  v13 = v0[95];
  v14 = v0[94];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[90];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1007D908C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v3[20] = *(v6 + 64);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1007D9184, v2, 0);
}

uint64_t sub_1007D9184()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v26 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v5;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = v6[1];
  *v11 = *v6;
  v11[1] = v12;
  v14 = v6[3];
  v13 = v6[4];
  v15 = v6[2];
  *(v11 + 73) = *(v6 + 73);
  v11[3] = v14;
  v11[4] = v13;
  v11[2] = v15;

  sub_10000F4C8(v6, (v0 + 2));
  UUID.init()();
  v16 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v0[22] = v16;
  v17 = *(v5 + 144);
  v0[23] = v17;
  if (v17)
  {
    v18 = *(&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + 1);
    v27 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());

    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_1007D93EC;

    return v27();
  }

  else
  {
    v21 = v0[21];
    v22 = v0[16];
    v23 = v0[17];
    *(v22 + 144) = v16;
    v24 = *(v22 + 136);

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1007D93EC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return _swift_task_switch(sub_1007D9518, v3, 0);
}

uint64_t sub_1007D9518()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = *(v2 + 144);
  v4 = v0[21];
  *(v2 + 144) = v0[22];

  v5 = *(v2 + 136);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1007D95C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1007D96B4, 0, 0);
}

uint64_t sub_1007D96B4()
{
  v1 = v0[21];
  v2 = v0[15];
  Date.timeIntervalSinceNow.getter();
  v3 = static Duration.milliseconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1007D97A8;
  v7 = v0[21];

  return sub_100D24214(v3, v5, 0, 0, 1);
}

uint64_t sub_1007D97A8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v15 = *v1;
  *(*v1 + 184) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1007D9B3C;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = *(v2 + 112);
    *(v2 + 192) = type metadata accessor for WorkItemQueue.WorkItem();
    sub_1000194F8(&qword_1016AA5A0, &type metadata accessor for WorkItemQueue.WorkItem);
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v7 = sub_1007D9988;
    v8 = v11;
    v9 = v13;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1007D9988()
{
  v1 = *(v0 + 112);
  *(v0 + 105) = dispatch thunk of WorkItemQueue.WorkItem.isCancelled.getter() & 1;

  return _swift_task_switch(sub_1007D99F8, 0, 0);
}

uint64_t sub_1007D99F8()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    v1 = *(v0 + 192);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 128);
    v5 = *(v4 + 128);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = v3[1];
    *(v6 + 24) = *v3;
    *(v6 + 40) = v7;
    v9 = v3[3];
    v8 = v3[4];
    v10 = *(v3 + 73);
    *(v6 + 56) = v3[2];
    *(v6 + 97) = v10;
    *(v6 + 88) = v8;
    *(v6 + 72) = v9;

    sub_10000F4C8(v3, v0 + 16);
    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v11 = *(v0 + 168);
  v12 = *(v0 + 144);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1007D9B3C()
{
  v1 = v0[21];
  v2 = v0[18];

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1007D9BAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003633C;

  return sub_1007D9C48(a2);
}

uint64_t sub_1007D9C48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1007D9CD8;

  return sub_1007E4460();
}

uint64_t sub_1007D9CD8(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1007D9DF0, v3, 0);
}

uint64_t sub_1007D9DF0()
{
  if (*(v0 + 120) == 1)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B368);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Location fetch service running fetch task - fetching locations.", v4, 2u);
    }

    v5 = *(v0 + 24);

    sub_1007D7DC8();
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_1007DA084;
    v7 = *(v0 + 24);

    return sub_1007E5468();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B368);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Location fetch service fetch task running while all clients suspended - not fetching locations.", v12, 2u);
    }

    v13 = *(v0 + 24);

    sub_1007E434C();
    sub_1007E915C();
    v14 = *(v0 + 24);
    v15 = *(v14 + 144);
    *(v14 + 144) = 0;

    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_1007DAAB8;
    v17 = *(v0 + 24);

    return sub_1007D8184();
  }
}

uint64_t sub_1007DA084()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v6;
  v4[1] = sub_1007DA1B0;

  return daemon.getter();
}

uint64_t sub_1007DA1B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1007DA38C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007DA38C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 64);
  v7 = *v2;

  v8 = *(v4 + 56);
  if (v1)
  {
    a1 = *(v5 + 24);

    v9 = sub_1007FFC80;
  }

  else
  {

    *(v5 + 72) = a1;
    v9 = sub_1007DA4E4;
  }

  return _swift_task_switch(v9, a1, 0);
}

uint64_t sub_1007DA4E4()
{
  v1 = *(v0 + 72);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1007DA5BC;
  v4 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1007FF8A4, v4, &type metadata for () + 8);
}

uint64_t sub_1007DA5BC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1007DA6D4, v2, 0);
}

uint64_t sub_1007DA6D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1007DA740, v2, 0);
}

uint64_t sub_1007DA740()
{
  v1 = v0[3];
  v2 = v1[14];
  v0[11] = v2;
  if (v2)
  {
    v0[12] = v1[15];

    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1007DA8CC;
    v5 = v0[2];

    return v10(v5);
  }

  else
  {
    v7 = v1[18];
    v1[18] = 0;

    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1007DAAB8;
    v9 = v0[3];

    return sub_1007D8184();
  }
}

uint64_t sub_1007DA8CC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 24);
  v6 = *v0;

  sub_1000BB27C(v3);

  return _swift_task_switch(sub_1007DAA18, v4, 0);
}

uint64_t sub_1007DAA18()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1007DAAB8;
  v4 = *(v0 + 24);

  return sub_1007D8184();
}

uint64_t sub_1007DAAB8()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1007DABAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconEstimatedLocation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10001F280(a2, v11);
    sub_1007FF3E4(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconEstimatedLocation);
    v9 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_10000A748(v11, v10 + 24);
    sub_100035B84(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for BeaconEstimatedLocation);

    unsafeFromAsyncTask<A>(_:)();
  }

  return result;
}

uint64_t sub_1007DAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[83] = a4;
  v4[82] = a3;
  v4[81] = a2;
  v6 = *(*(sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0) - 8) + 64) + 15;
  v4[84] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  v4[85] = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v4[86] = v8;
  v9 = *(v8 - 8);
  v4[87] = v9;
  v10 = *(v9 + 64) + 15;
  v4[88] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
  v4[89] = v11;
  v12 = *(v11 - 8);
  v4[90] = v12;
  v13 = *(v12 + 64) + 15;
  v4[91] = swift_task_alloc();
  v14 = type metadata accessor for BeaconEstimatedLocation();
  v4[92] = v14;
  v15 = *(v14 - 8);
  v4[93] = v15;
  v16 = *(v15 + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v4[100] = v18;
  v19 = *(v18 - 8);
  v4[101] = v19;
  v4[102] = *(v19 + 64);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v20 = type metadata accessor for Date();
  v4[111] = v20;
  v21 = *(v20 - 8);
  v4[112] = v21;
  v22 = *(v21 + 64) + 15;
  v4[113] = swift_task_alloc();

  return _swift_task_switch(sub_1007DB0BC, a2, 0);
}

uint64_t sub_1007DB0E4()
{
  v40 = v0;
  if (*(v0 + 1300) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 912) = v2;
    *v2 = v0;
    v2[1] = sub_1007DB4C4;

    return daemon.getter();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 656);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B368);
    sub_10001F280(v3, v0 + 88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 872);
      v8 = *(v0 + 808);
      v9 = *(v0 + 800);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v39 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v13 = *(v0 + 112);
      v12 = *(v0 + 120);
      sub_1000035D0((v0 + 88), v13);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v8 + 8))(v7, v9);
      sub_100007BAC((v0 + 88));
      v17 = sub_1000136BC(v14, v16, &v39);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v5, v6, "Ignoring beacon location updates while not processing - beacon: %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100007BAC((v0 + 88));
    }

    v18 = *(v0 + 904);
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    v22 = *(v0 + 856);
    v23 = *(v0 + 848);
    v24 = *(v0 + 840);
    v25 = *(v0 + 832);
    v26 = *(v0 + 824);
    v27 = *(v0 + 792);
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 768);
    v33 = *(v0 + 760);
    v34 = *(v0 + 752);
    v35 = *(v0 + 728);
    v36 = *(v0 + 704);
    v37 = *(v0 + 680);
    v38 = *(v0 + 672);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1007DB4C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 912);
  v12 = *v1;
  v3[115] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[116] = v6;
  v7 = type metadata accessor for Daemon();
  v3[117] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[118] = v8;
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[119] = v9;
  v10 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  v3[120] = v10;
  *v6 = v12;
  v6[1] = sub_1007DB6B8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007DB6B8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 928);
  v7 = *v2;

  v8 = *(v4 + 920);
  if (v1)
  {

    v9 = sub_1007DC770;
    v10 = 0;
  }

  else
  {

    *(v5 + 968) = a1;
    v9 = sub_1007DB818;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1007DB818()
{
  v1 = *(v0 + 968);
  sub_10001F280(*(v0 + 656), v0 + 168);
  v2 = swift_allocObject();
  *(v0 + 976) = v2;
  *(v2 + 16) = v1;
  sub_10000A748((v0 + 168), v2 + 24);
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  *(v0 + 984) = v4;
  *v4 = v0;
  v4[1] = sub_1007DB938;

  return unsafeBlocking<A>(context:_:)(v0 + 608, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3304, v2, &type metadata for Double);
}

uint64_t sub_1007DB938()
{
  v1 = *(*v0 + 984);
  v2 = *(*v0 + 976);
  v3 = *(*v0 + 968);
  v5 = *v0;

  return _swift_task_switch(sub_1007DBA64, v3, 0);
}

uint64_t sub_1007DBA64()
{
  v1 = v0[121];

  v0[124] = v0[76];

  return _swift_task_switch(sub_1007DBAD4, 0, 0);
}

uint64_t sub_1007DBAD4()
{
  v139 = v0;
  v1 = *(v0 + 992);
  v2 = *(v0 + 736);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  sub_1000BC4D4(&qword_1016AA468, &qword_1013BD038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = v2;
  *(inited + 64) = &off_10161A418;
  v6 = sub_1000280DC((inited + 32));
  sub_1007FF3E4(v3, v6, type metadata accessor for BeaconEstimatedLocation);
  v7 = v4[3];
  v8 = v4[4];
  sub_1000035D0(v4, v7);
  v9 = sub_1010C96DC(v7, v8);
  v10 = sub_1010CBA6C(inited, v9, v1);
  *(v0 + 1000) = v10;
  swift_setDeallocating();
  sub_100007BAC((inited + 32));
  if (!v10)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 656);
    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177B368);
    sub_10001F280(v48, v0 + 128);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 872);
      v53 = *(v0 + 808);
      v54 = *(v0 + 800);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v138 = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = *(v0 + 152);
      v57 = *(v0 + 160);
      sub_1000035D0((v0 + 128), v58);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      sub_100007BAC((v0 + 128));
      v62 = sub_1000136BC(v59, v61, &v138);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "Could not produce filtered location for beacon %{private,mask.hash}s.", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC((v0 + 128));
    }

    goto LABEL_26;
  }

  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v13 = *(v0 + 888);
  v14 = *(v0 + 808);
  v133 = v13;
  v135 = *(v0 + 800);
  v15 = *(v0 + 792);
  v16 = *(v0 + 736);
  v17 = *(v0 + 664);
  v131 = *(v0 + 656);
  v18 = [v10 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  [v10 coordinate];
  v20 = v19;
  [v10 coordinate];
  v22 = v21;
  [v10 horizontalAccuracy];
  v24 = v23;
  v25 = *(v17 + *(v16 + 44));
  *(v0 + 1301) = v25;
  v26 = sub_1010CBDEC(v25);
  v27 = objc_allocWithZone(SPBeaconLocation);
  v28 = v26;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 1008) = [v27 initWithTimestamp:isa latitude:v28 longitude:v20 horizontalAccuracy:v22 source:v24];

  (*(v12 + 8))(v11, v133);
  v31 = v4[3];
  v30 = v4[4];
  sub_1000035D0(v131, v31);
  (*(v30 + 200))(v31, v30);
  v32 = *(v14 + 48);
  *(v0 + 1016) = v32;
  *(v0 + 1024) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v32(v15, 1, v135) == 1)
  {
    sub_10000B3A8(*(v0 + 792), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 656);
    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177B368);
    sub_10001F280(v33, v0 + 208);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 872);
      v38 = *(v0 + 808);
      v39 = *(v0 + 800);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v138 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      v43 = *(v0 + 232);
      v42 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v43);
      (*(*(*(v42 + 8) + 8) + 32))(v43);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v38 + 8))(v37, v39);
      sub_100007BAC((v0 + 208));
      v47 = sub_1000136BC(v44, v46, &v138);

      *(v40 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v40, 0x16u);
      sub_100007BAC(v41);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v70 = *(v0 + 808);
    v71 = *(v0 + 696);
    v72 = *(v0 + 688);
    v73 = *(v0 + 680);
    v74 = *(v0 + 648);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v75 = swift_dynamicCast();
    v76 = *(v71 + 56);
    if ((v75 & 1) == 0)
    {
      v89 = *(v0 + 680);
      v90 = *(v0 + 656);
      v76(v89, 1, 1, *(v0 + 688));
      sub_10000B3A8(v89, &unk_101698C30, &unk_101392630);
      v91 = *(v74 + 208);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v92 = *(v70 + 72);
      v93 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_101385D80;
      v95 = v90[3];
      v96 = v90[4];
      sub_1000035D0(v90, v95);
      (*(*(*(v96 + 8) + 8) + 32))(v95);
      *(v0 + 616) = v94;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_25:
      v107 = *(v0 + 1008);
      v108 = *(v0 + 1301);
      v109 = *(v0 + 1000);
      v110 = *(v0 + 656);
      v111 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v110, v0 + 288);
      v112 = swift_allocObject();
      sub_10000A748((v0 + 288), v112 + 16);
      *(v112 + 56) = v111;
      *(v112 + 64) = v107;
      *(v112 + 72) = v108;
      v113 = v107;

      static Transaction.asyncTask(name:block:)();

LABEL_26:
      v114 = *(v0 + 904);
      v115 = *(v0 + 880);
      v116 = *(v0 + 872);
      v117 = *(v0 + 864);
      v118 = *(v0 + 856);
      v119 = *(v0 + 848);
      v120 = *(v0 + 840);
      v121 = *(v0 + 832);
      v122 = *(v0 + 824);
      v123 = *(v0 + 792);
      v126 = *(v0 + 784);
      v127 = *(v0 + 776);
      v128 = *(v0 + 768);
      v129 = *(v0 + 760);
      v130 = *(v0 + 752);
      v132 = *(v0 + 728);
      v134 = *(v0 + 704);
      v136 = *(v0 + 680);
      v137 = *(v0 + 672);

      v124 = *(v0 + 8);

      return v124();
    }

    v77 = *(v0 + 704);
    v78 = *(v0 + 688);
    v79 = *(v0 + 680);
    v80 = *(v0 + 672);
    v76(v79, 0, 1, v78);
    sub_100035B84(v79, v77, type metadata accessor for SharedBeaconRecord);
    v81 = *(v74 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v82 = *(v70 + 72);
    v83 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_101385D80;
    sub_1000D2A70(v77 + *(v78 + 80), v80, &unk_1016AF890, &qword_1013926D0);
    v85 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v85 - 8) + 48))(v80, 1, v85) == 1)
    {
      v86 = *(v0 + 808);
      v87 = *(v0 + 800);
      v88 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v86 + 56))(v88, 1, 1, v87);
    }

    else
    {
      v97 = *(v0 + 1024);
      v98 = *(v0 + 1016);
      v99 = *(v0 + 800);
      v100 = *(v0 + 784);
      v101 = *(v0 + 672);
      sub_1000D2A70(v101 + *(v85 + 20), v100, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v101, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v98(v100, 1, v99) != 1)
      {
        (*(*(v0 + 808) + 32))(v84 + v83, *(v0 + 784), *(v0 + 800));
LABEL_24:
        v106 = *(v0 + 704);
        *(v0 + 624) = v84;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v106, type metadata accessor for SharedBeaconRecord);
        goto LABEL_25;
      }
    }

    v102 = *(v0 + 1024);
    v103 = *(v0 + 1016);
    v104 = *(v0 + 800);
    v105 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v84 + v83, *(v0 + 704) + *(*(v0 + 688) + 20), v104);
    if (v103(v105, 1, v104) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_24;
  }

  v63 = *(v0 + 880);
  v64 = *(v0 + 808);
  v65 = *(v0 + 800);
  v66 = *(v0 + 792);
  v67 = *(v64 + 32);
  *(v0 + 1032) = v67;
  *(v0 + 1040) = (v64 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v67(v63, v66, v65);
  v68 = async function pointer to daemon.getter[1];
  v69 = swift_task_alloc();
  *(v0 + 1048) = v69;
  *v69 = v0;
  v69[1] = sub_1007DCACC;

  return daemon.getter();
}

uint64_t sub_1007DC770()
{
  v38 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[82];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v1, (v0 + 16));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = v0[19];
    v10 = v0[20];
    sub_1000035D0(v0 + 16, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 16);
    v15 = sub_1000136BC(v12, v14, &v37);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not produce filtered location for beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 16);
  }

  v16 = v0[113];
  v17 = v0[110];
  v18 = v0[109];
  v19 = v0[108];
  v20 = v0[107];
  v21 = v0[106];
  v22 = v0[105];
  v23 = v0[104];
  v24 = v0[103];
  v25 = v0[99];
  v28 = v0[98];
  v29 = v0[97];
  v30 = v0[96];
  v31 = v0[95];
  v32 = v0[94];
  v33 = v0[91];
  v34 = v0[88];
  v35 = v0[85];
  v36 = v0[84];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1007DCACC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1048);
  v5 = *v1;
  v3[132] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[133] = v7;
  *v7 = v5;
  v7[1] = sub_1007DCC58;
  v8 = v3[120];
  v9 = v3[119];
  v10 = v3[118];
  v11 = v3[117];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1007DCC58(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 1064);
  v7 = *v2;

  v8 = *(v4 + 1056);
  if (v1)
  {

    v9 = sub_1007DE010;
    v10 = 0;
  }

  else
  {

    *(v5 + 1072) = a1;
    v9 = sub_1007DCDB8;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1007DCDB8()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 816);
  v7 = *(v0 + 808);
  v8 = *(v0 + 800);
  v9 = *(v7 + 16);
  v7 += 16;
  *(v0 + 1080) = v9;
  *(v0 + 1088) = v7 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v4, v8);
  v10 = *(v7 + 64);
  *(v0 + 1296) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 1096) = v12;
  *(v12 + 16) = v1;
  v3(v12 + v11, v5, v8);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 1104) = v14;
  v15 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v14 = v0;
  v14[1] = sub_1007DCF48;

  return unsafeBlocking<A>(context:_:)(v0 + 368, 0xD000000000000010, 0x800000010134A8C0, sub_1007FED88, v12, v15);
}

uint64_t sub_1007DCF48()
{
  v1 = *(*v0 + 1104);
  v2 = *(*v0 + 1096);
  v3 = *(*v0 + 1072);
  v5 = *v0;

  return _swift_task_switch(sub_1007DD07C, 0, 0);
}

uint64_t sub_1007DD07C()
{
  v165 = v0;
  if (*(v0 + 392))
  {
    sub_10000A748((v0 + 368), v0 + 328);
    v1 = *(v0 + 352);
    v2 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v1);
    v3 = (*(v2 + 16))(v1, v2);
    *(v0 + 1112) = v3;
    v4 = *(v3 + 32);
    *(v0 + 1302) = v4;
    v5 = -1;
    v6 = -1 << v4;
    v7 = *(v3 + 56);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    *(v0 + 1303) = 0;
    v8 = v5 & v7;
    if (v8)
    {
      v9 = 0;
LABEL_14:
      *(v0 + 1128) = v9;
      *(v0 + 1120) = v8;
      v27 = *(v0 + 1088);
      v28 = *(v0 + 1040);
      v29 = *(v0 + 1032);
      v30 = *(v0 + 864);
      v31 = *(v0 + 856);
      v32 = *(v0 + 800);
      (*(v0 + 1080))(v30, *(v3 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v32);
      v29(v31, v30, v32);
      v33 = async function pointer to daemon.getter[1];
      v34 = swift_task_alloc();
      *(v0 + 1136) = v34;
      *v34 = v0;
      v35 = sub_1007DE7F4;
      goto LABEL_15;
    }

    v25 = 0;
    v26 = ((63 - v6) >> 6) - 1;
    while (v26 != v25)
    {
      v9 = v25 + 1;
      v8 = *(v3 + 8 * v25++ + 64);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v0 + 1303))
    {
      v63 = *(v0 + 352);
      v64 = *(v0 + 360);
      sub_1000035D0((v0 + 328), v63);
      v65 = (*(v64 + 16))(v63, v64);
      *(v0 + 1192) = v65;
      v66 = *(v65 + 32);
      *(v0 + 1304) = v66;
      v67 = -1;
      v68 = -1 << v66;
      v69 = *(v65 + 56);
      if (-v68 < 64)
      {
        v67 = ~(-1 << -v68);
      }

      *(v0 + 1200) = _swiftEmptyArrayStorage;
      v70 = v67 & v69;
      if (v70)
      {
        v71 = 0;
LABEL_40:
        *(v0 + 1216) = v71;
        *(v0 + 1208) = v70;
        v102 = *(v0 + 1088);
        v103 = *(v0 + 1040);
        v104 = *(v0 + 1032);
        v105 = *(v0 + 848);
        v106 = *(v0 + 840);
        v107 = *(v0 + 800);
        (*(v0 + 1080))(v105, *(v65 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v70)) | (v71 << 6)), v107);
        v104(v106, v105, v107);
        v108 = async function pointer to daemon.getter[1];
        v34 = swift_task_alloc();
        *(v0 + 1224) = v34;
        *v34 = v0;
        v35 = sub_1007E0E24;
LABEL_15:
        v34[1] = v35;

        return daemon.getter();
      }

      v100 = 0;
      v101 = ((63 - v68) >> 6) - 1;
      while (v101 != v100)
      {
        v71 = v100 + 1;
        v70 = *(v65 + 8 * v100++ + 64);
        if (v70)
        {
          goto LABEL_40;
        }
      }

      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v109 = *(v0 + 1088);
      v110 = *(v0 + 1080);
      v111 = *(v0 + 880);
      v112 = *(v0 + 824);
      v113 = *(v0 + 800);
      v114 = *(v0 + 656);
      v115 = type metadata accessor for Logger();
      sub_1000076D4(v115, qword_10177B368);
      v110(v112, v111, v113);
      sub_10001F280(v114, v0 + 488);
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v160 = *(v0 + 872);
        v163 = v117;
        v118 = *(v0 + 824);
        v119 = *(v0 + 808);
        v120 = *(v0 + 800);
        v121 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v121 = 141558787;
        *(v121 + 4) = 1752392040;
        *(v121 + 12) = 2081;
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
        v122 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v123;
        v125 = *(v119 + 8);
        v125(v118, v120);
        v126 = sub_1000136BC(v122, v124, &v164);

        *(v121 + 14) = v126;
        *(v121 + 22) = 2160;
        *(v121 + 24) = 1752392040;
        *(v121 + 32) = 2081;
        v127 = *(v0 + 512);
        v128 = *(v0 + 520);
        sub_1000035D0((v0 + 488), v127);
        (*(*(*(v128 + 8) + 8) + 32))(v127);
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;
        v125(v160, v120);
        sub_100007BAC((v0 + 488));
        v132 = sub_1000136BC(v129, v131, &v164);

        *(v121 + 34) = v132;
        _os_log_impl(&_mh_execute_header, v116, v163, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v121, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v133 = *(v0 + 824);
        v134 = *(v0 + 808);
        v135 = *(v0 + 800);

        v125 = *(v134 + 8);
        v125(v133, v135);
        sub_100007BAC((v0 + 488));
      }

      *(v0 + 1272) = v125;
      v136 = *(*(v0 + 648) + 208);
      v137 = *(v0 + 352);
      v138 = *(v0 + 360);
      sub_1000035D0((v0 + 328), v137);
      v139 = (*(v138 + 16))(v137, v138);
      v140 = v139;
      v141 = *(v139 + 16);
      if (v141)
      {
        v142 = *(v0 + 1296);
        v143 = sub_1003A85FC(*(v139 + 16), 0);
        v144 = sub_1003A9D58(&v164, &v143[(v142 + 32) & ~v142], v141, v140);
        sub_1000128F8();
        if (v144 == v141)
        {
LABEL_50:
          v145 = *(v0 + 1008);
          v146 = *(v0 + 656);
          v147 = *(v0 + 648);
          *(v0 + 632) = v143;
          AsyncStreamProvider.yield(value:transaction:)();

          sub_10001F280(v0 + 328, v0 + 528);
          sub_10001F280(v146, v0 + 568);
          v148 = swift_allocObject();
          *(v0 + 1280) = v148;
          v148[2] = v147;
          v148[3] = _swiftEmptyArrayStorage;
          sub_10000A748((v0 + 528), (v148 + 4));
          sub_10000A748((v0 + 568), (v148 + 9));
          v148[14] = v145;
          v149 = async function pointer to unsafeBlocking<A>(context:_:)[1];
          v150 = v145;

          v151 = swift_task_alloc();
          *(v0 + 1288) = v151;
          *v151 = v0;
          v151[1] = sub_1007E2220;

          return unsafeBlocking<A>(context:_:)(v151, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v148, &type metadata for () + 8);
        }

        __break(1u);
      }

      v143 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_100007BAC((v0 + 328));
  }

  else
  {
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_10000B3A8(v0 + 368, &unk_1016AA480, &unk_1013BD050);
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 656);
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B368);
  sub_10001F280(v10, v0 + 208);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 872);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v164 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v20);
    (*(*(*(v19 + 8) + 8) + 32))(v20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v15 + 8))(v14, v16);
    sub_100007BAC((v0 + 208));
    v24 = sub_1000136BC(v21, v23, &v164);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v36 = *(v0 + 808);
  v37 = *(v0 + 696);
  v38 = *(v0 + 688);
  v39 = *(v0 + 680);
  v40 = *(v0 + 648);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v41 = swift_dynamicCast();
  v42 = *(v37 + 56);
  if (v41)
  {
    v43 = *(v0 + 704);
    v44 = *(v0 + 688);
    v45 = *(v0 + 680);
    v46 = *(v0 + 672);
    v42(v45, 0, 1, v44);
    sub_100035B84(v45, v43, type metadata accessor for SharedBeaconRecord);
    v47 = *(v40 + 208);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v48 = *(v36 + 72);
    v49 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_101385D80;
    sub_1000D2A70(v43 + *(v44 + 80), v46, &unk_1016AF890, &qword_1013926D0);
    v51 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v51 - 8) + 48))(v46, 1, v51) == 1)
    {
      v52 = *(v0 + 808);
      v53 = *(v0 + 800);
      v54 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v52 + 56))(v54, 1, 1, v53);
    }

    else
    {
      v72 = *(v0 + 1024);
      v73 = *(v0 + 1016);
      v74 = *(v0 + 800);
      v75 = *(v0 + 784);
      v76 = *(v0 + 672);
      sub_1000D2A70(v76 + *(v51 + 20), v75, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v76, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v73(v75, 1, v74) != 1)
      {
        (*(*(v0 + 808) + 32))(v50 + v49, *(v0 + 784), *(v0 + 800));
LABEL_33:
        v81 = *(v0 + 704);
        *(v0 + 624) = v50;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v81, type metadata accessor for SharedBeaconRecord);
        goto LABEL_34;
      }
    }

    v77 = *(v0 + 1024);
    v78 = *(v0 + 1016);
    v79 = *(v0 + 800);
    v80 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v50 + v49, *(v0 + 704) + *(*(v0 + 688) + 20), v79);
    if (v78(v80, 1, v79) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_33;
  }

  v55 = *(v0 + 680);
  v56 = *(v0 + 656);
  v42(v55, 1, 1, *(v0 + 688));
  sub_10000B3A8(v55, &unk_101698C30, &unk_101392630);
  v57 = *(v40 + 208);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v58 = *(v36 + 72);
  v59 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_101385D80;
  v61 = v56[3];
  v62 = v56[4];
  sub_1000035D0(v56, v61);
  (*(*(*(v62 + 8) + 8) + 32))(v61);
  *(v0 + 616) = v60;
  AsyncStreamProvider.yield(value:transaction:)();

LABEL_34:
  v82 = *(v0 + 1008);
  v83 = *(v0 + 1301);
  v84 = *(v0 + 1000);
  v85 = *(v0 + 656);
  v86 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v85, v0 + 288);
  v87 = swift_allocObject();
  sub_10000A748((v0 + 288), v87 + 16);
  *(v87 + 56) = v86;
  *(v87 + 64) = v82;
  *(v87 + 72) = v83;
  v88 = v82;

  static Transaction.asyncTask(name:block:)();

  v89 = *(v0 + 904);
  v90 = *(v0 + 880);
  v91 = *(v0 + 872);
  v92 = *(v0 + 864);
  v93 = *(v0 + 856);
  v94 = *(v0 + 848);
  v95 = *(v0 + 840);
  v96 = *(v0 + 832);
  v97 = *(v0 + 824);
  v98 = *(v0 + 792);
  v153 = *(v0 + 784);
  v154 = *(v0 + 776);
  v155 = *(v0 + 768);
  v156 = *(v0 + 760);
  v157 = *(v0 + 752);
  v158 = *(v0 + 728);
  v159 = *(v0 + 704);
  v161 = *(v0 + 680);
  v162 = *(v0 + 672);

  v99 = *(v0 + 8);

  return v99();
}