uint64_t sub_100ECEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Criteria();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[11] = v9;
  *v9 = v4;
  v9[1] = sub_100ECF00C;

  return sub_100ED0388();
}

uint64_t sub_100ECF00C(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100ECF124, v3, 0);
}

uint64_t sub_100ECF124()
{
  v36 = v0;
  if (*(v0 + 104) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    sub_100748620(*(v0 + 24), v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_10000B3A8(*(v0 + 48), &qword_10169E370, &qword_1013BA3F0);
      v4 = swift_task_alloc();
      *(v0 + 96) = v4;
      *v4 = v0;
      v4[1] = sub_100ECF570;
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);

      return sub_100ECD538(v6);
    }

    v13 = *(*(v0 + 64) + 32);
    v13(*(v0 + 80), *(v0 + 48), *(v0 + 56));
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    (*(v17 + 16))(v14, v15, v16);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    v24 = *(v0 + 56);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v25 = 136446210;
      sub_100019780(&qword_1016BEAC8, &type metadata accessor for XPCActivity.Criteria);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = sub_1000136BC(v26, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "BeaconSharing activity keeping criteria %{public}s.", v25, 0xCu);
      sub_100007BAC(v34);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v13(*(v0 + 16), *(v0 + 80), *(v0 + 56));
    v12 = 0;
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177A560);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "BeaconSharing removing activity.", v11, 2u);
    }

    v12 = 1;
  }

  v30 = *(v0 + 72);
  v31 = *(v0 + 80);
  v32 = *(v0 + 48);
  (*(*(v0 + 64) + 56))(*(v0 + 16), v12, 1, *(v0 + 56));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100ECF570()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100ECF680, v2, 0);
}

uint64_t sub_100ECF680()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  (*(v0[8] + 56))(v0[2], 0, 1, v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100ECF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.State();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100ECF82C, a3, 0);
}

uint64_t sub_100ECF82C()
{
  v51 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  if (v9)
  {
    buf = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *buf = 136315138;
    sub_100019780(&qword_101696CD0, &type metadata accessor for XPCActivity.State);
    v46 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v50);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v46, "BeaconSharing activity state %s.", buf, 0xCu);
    sub_100007BAC(v48);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];
  v6(v20, v0[3], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      v30 = v0[4];
      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      v31 = *(v30 + 120);
      v0[10] = v31;
      if (v31)
      {
        v32 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
        v49 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

        v33 = swift_task_alloc();
        v0[11] = v33;
        *v33 = v0;
        v33[1] = sub_100ECFEE0;
        v34 = v0[5];

        return v49(v34);
      }

      v42 = v0[5];
      v43 = v0[2];
      (*(v0[7] + 56))(v42, 1, 1, v0[6]);
      sub_10000B3A8(v42, &unk_10169BA88, &qword_101395670);
      type metadata accessor for XPCActivity();
      sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity);
      v36 = dispatch thunk of Actor.unownedExecutor.getter();
      v38 = v44;
      v39 = sub_100ED0100;
      goto LABEL_26;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      v35 = v0[2];
      type metadata accessor for XPCActivity();
      sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity);
      v36 = dispatch thunk of Actor.unownedExecutor.getter();
      v38 = v37;
      v39 = sub_100ECFE00;
LABEL_26:

      return _swift_task_switch(v39, v36, v38);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:))
    {
      if (v23 == enum case for XPCActivity.State.invalidated(_:))
      {
        v40 = v0[4];
        *(v40 + 128) = 0;
        v41 = *(v40 + 136);

        dispatch thunk of WorkItemQueue.enqueue(_:)();
      }

      else
      {
        v45 = v0[7] + 8;
        v17(v0[8], v0[6]);
      }
    }
  }

  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[5];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100ECFE00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100ECFE6C, v1, 0);
}

uint64_t sub_100ECFE6C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100ECFEE0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100ED000C, v3, 0);
}

uint64_t sub_100ED000C()
{
  v1 = v0[5];
  v2 = v0[2];
  (*(v0[7] + 56))(v1, 0, 1, v0[6]);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  type metadata accessor for XPCActivity();
  sub_100019780(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100ED0100, v4, v3);
}

uint64_t sub_100ED0100()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100ED208C, v1, 0);
}

uint64_t sub_100ED016C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016BEAC0, &unk_1013EEDD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v24 - v8;
  v10 = sub_1000BC4D4(&qword_1016B3B78, &qword_1013D4918);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  result = *(a2 + 112);
  v16 = *(result + 16);
  if (v16)
  {
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v26 = v5;
    v27 = v18;
    v19 = v6;
    v20 = result + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v24[2] = v2;
    v25 = v21;
    v22 = (v19 + 8);
    v23 = (v17 - 8);
    v24[1] = result;

    do
    {
      v27(v14, v20, v10);
      v28 = a1;

      AsyncStream.Continuation.yield(_:)();
      (*v22)(v9, v26);
      (*v23)(v14, v10);
      v20 += v25;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_100ED0388()
{
  v1[6] = v0;
  v2 = type metadata accessor for UUID();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v1;
  v5[1] = sub_100ED048C;

  return daemon.getter();
}

uint64_t sub_100ED048C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019780(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019780(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100ED0668;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100ED0668(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;

  v7 = v4[13];
  if (v1)
  {
    a1 = v4[6];

    v8 = sub_100ED1830;
  }

  else
  {

    v8 = sub_100ED07C0;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100ED07C0()
{
  v1 = *(v0 + 120);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100ED08AC;
  v5 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_100ED08AC()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100ED09C4, v2, 0);
}

uint64_t sub_100ED09C4()
{
  v1 = v0[6];
  v0[17] = v0[2];
  return _swift_task_switch(sub_100ED09E8, v1, 0);
}

uint64_t sub_100ED09E8()
{
  v1 = *(v0[17] + 16);

  if (v1)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[15];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BeaconSharing beacons shared: true.", v7, 2u);
    }

    v9 = v0[10];
    v8 = v0[11];

    v10 = v0[1];

    return v10(1);
  }

  else
  {
    v12 = v0[15];

    return _swift_task_switch(sub_100ED0B68, v12, 0);
  }
}

uint64_t sub_100ED0B68()
{
  v1 = *(v0 + 120);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100ED0C54;
  v5 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100ED0C54()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100ED0D6C, v2, 0);
}

uint64_t sub_100ED0D6C()
{
  v1 = v0[6];
  v0[19] = v0[3];
  return _swift_task_switch(sub_100ED0D90, v1, 0);
}

uint64_t sub_100ED0D90(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[19];
  v5 = v3[8];
  v6 = *(v4 + 16);
  v3[20] = v6;
  v3[21] = 0;
  if (v6)
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v7 = v3[15];
    v8 = v3[11];
    v9 = v3[7];
    v10 = type metadata accessor for OwnedBeaconRecord();
    v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v12 = v4 + *(v10 + 20);
    v13 = *(v5 + 16);
    v3[22] = v13;
    v3[23] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v12 + v11, v9);
    v14 = sub_100ED0EB0;
  }

  else
  {
    v7 = v3[15];

    v14 = sub_100ED1430;
  }

  a1 = v14;
  a2 = v7;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100ED0EB0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  (*(v0 + 176))(v3, *(v0 + 88), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 192) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  v11 = sub_1000BC4D4(&qword_1016BEAB8, &unk_1013EEDA0);
  *v10 = v0;
  v10[1] = sub_100ED1014;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100ED1EA0, v8, v11);
}

uint64_t sub_100ED1014()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100ED1140, v3, 0);
}

uint64_t sub_100ED1140()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[11], v0[7]);
  v0[26] = v0[4];

  return _swift_task_switch(sub_100ED11C4, v1, 0);
}

uint64_t sub_100ED11C4()
{
  v1 = *(v0[26] + 16);

  if (!v1)
  {
    v16 = v0[20];
    v17 = v0[21] + 1;
    v0[21] = v17;
    v18 = v0[19];
    if (v17 == v16)
    {
      v19 = v0[15];
      v20 = v0[19];

      v21 = sub_100ED1430;
    }

    else
    {
      if (v17 >= *(v18 + 16))
      {
        __break(1u);
        return _swift_task_switch(v2, v3, v4);
      }

      v19 = v0[15];
      v22 = v0[11];
      v23 = v0[7];
      v24 = v0[8];
      v25 = type metadata accessor for OwnedBeaconRecord();
      v26 = v18 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * v17;
      v27 = *(v25 + 20);
      v28 = *(v24 + 16);
      v0[22] = v28;
      v0[23] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v28(v22, v26 + v27, v23);
      v21 = sub_100ED0EB0;
    }

    v2 = v21;
    v3 = v19;
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v0[19];

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "BeaconSharing beacons shared: true.", v11, 2u);
  }

  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14(1);
}

uint64_t sub_100ED1430()
{
  v1 = *(v0 + 120);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100ED151C;
  v5 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100ED151C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_100ED1634, v2, 0);
}

uint64_t sub_100ED1634()
{
  v1 = v0[6];
  v0[28] = v0[5];
  return _swift_task_switch(sub_100ED1654, v1, 0);
}

uint64_t sub_100ED1654()
{
  v1 = *(v0[28] + 16);

  if (v1)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[15];
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "BeaconSharing beacons shared: true.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v8, v7, 2u);
    }
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v3, v4);
    v11 = v0[15];
    if (v10)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "BeaconSharing beacons shared: false.";
      goto LABEL_10;
    }
  }

  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14(v1 != 0);
}

uint64_t sub_100ED1830()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor!", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_100ED1958(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3B78, &qword_1013D4918);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5ED68(0, v9[2] + 1, 1, v9);
    *(a2 + 112) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100A5ED68(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 112) = v9;
  return result;
}

uint64_t sub_100ED1AD8()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100ED1B44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  UUID.init()();
  *(v0 + 136) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  return v0;
}

uint64_t sub_100ED1CA4(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[6] = v6;
  v2[7] = v7;

  return _swift_task_switch(sub_100ED1D7C, v7, 0);
}

uint64_t sub_100ED1D7C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  type metadata accessor for Transaction();
  (*(v4 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  (*(v4 + 16))(v3, v1, v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v4 + 8))(v1, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100ED1EA0@<X0>(void *a1@<X8>)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100E714C8(v4, a1);
}

uint64_t sub_100ED1F14(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100ECEED4(a1, a2, v7, v6);
}

uint64_t sub_100ED1FC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100ECF720(a1, a2, v2);
}

uint64_t sub_100ED2090(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 369) = a3;
  *(v4 + 368) = a2;
  *(v4 + 184) = a1;
  *(v4 + 192) = a4;
  v5 = type metadata accessor for HashAlgorithm();
  *(v4 + 200) = v5;
  v6 = *(v5 - 8);
  *(v4 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v8 = *(type metadata accessor for AccessoryMetadata(0) - 8);
  *(v4 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v4 + 248) = v10;
  v11 = *(v10 - 8);
  *(v4 + 256) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v4 + 272) = v13;
  v14 = *(v13 - 8);
  *(v4 + 280) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_100ED2274, 0, 0);
}

void sub_100ED2274()
{
  v98 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v2 = [objc_opt_self() currentDevice];
  if (!v2)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  v4 = [v2 serverFriendlyDescription];

  if (!v4)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v94 = *(v0 + 256);
  v95 = *(v0 + 248);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v97 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(v9, v11, 0xD000000000000011, 0x800000010134EA40, v12);
  Date.init()();
  v13 = Date.epoch.getter();
  (*(v5 + 8))(v6, v8);
  *(v0 + 144) = v13;
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  v16 = v15;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v14, v16, 0xD000000000000015, 0x800000010134EA60, v17);
  *(v0 + 152) = 1;
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_100FFACA0(v18, v20, 0xD000000000000013, 0x800000010134EA80, v21);
  v23 = sub_100EB2DF0(v22);
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v97 = _swiftEmptyDictionarySingleton;
  sub_100FFACA0(v23, v25, 0x6567412D72657355, 0xEA0000000000746ELL, v26);
  static Locale.current.getter();
  v27 = Locale.acceptLanguageCode.getter();
  v29 = v28;
  (*(v94 + 8))(v7, v95);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v27, v29, 0x4C2D747065636341, 0xEF65676175676E61, v30);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C218;
  v32 = objc_opt_self();
  v33 = [v32 sharedInstance];
  v34 = [v33 isInternalBuild];

  v96 = v32;
  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = [v31 BOOLForKey:v35];

    if (v36)
    {
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v97 = _swiftEmptyDictionarySingleton;
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v37);
    }
  }

  *(v0 + 296) = _swiftEmptyDictionarySingleton;
  v38 = *(v0 + 184);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = *(v0 + 224);
    v97 = _swiftEmptyArrayStorage;
    sub_101123C98(0, v39, 0);
    v41 = _swiftEmptyArrayStorage;
    v42 = v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v43 = *(v40 + 72);
    do
    {
      v45 = *(v0 + 232);
      v44 = *(v0 + 240);
      v46 = *(v0 + 368);
      v47 = *(v0 + 369);
      sub_1008AFCDC(v42, v44);
      sub_1008AFCDC(v44, v45);
      sub_100F0C160(v45, v46, v47, v0 + 16);
      sub_1008AFD40(v44);
      v97 = v41;
      v49 = v41[2];
      v48 = v41[3];
      if (v49 >= v48 >> 1)
      {
        sub_101123C98((v48 > 1), v49 + 1, 1);
        v41 = v97;
      }

      v41[2] = v49 + 1;
      v50 = &v41[16 * v49];
      v51 = *(v0 + 16);
      v52 = *(v0 + 32);
      v53 = *(v0 + 64);
      *(v50 + 4) = *(v0 + 48);
      *(v50 + 5) = v53;
      *(v50 + 2) = v51;
      *(v50 + 3) = v52;
      v54 = *(v0 + 80);
      v55 = *(v0 + 96);
      v56 = *(v0 + 128);
      *(v50 + 8) = *(v0 + 112);
      *(v50 + 9) = v56;
      *(v50 + 6) = v54;
      *(v50 + 7) = v55;
      v42 += v43;
      --v39;
    }

    while (v39);
    v57 = *(v0 + 184);
  }

  else
  {
    v58 = *(v0 + 184);

    v41 = _swiftEmptyArrayStorage;
  }

  v59 = static os_log_type_t.debug.getter();
  sub_10039722C();
  v60 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v60, v59))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v97 = v62;
    *v61 = 136315138;
    *(v0 + 176) = v41;

    v63 = String.init<A>(describing:)();
    v65 = sub_1000136BC(v63, v64, &v97);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v60, v59, "AccessoryInfoRequestContent %s", v61, 0xCu);
    sub_100007BAC(v62);
  }

  v66 = type metadata accessor for JSONEncoder();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  *(v0 + 304) = JSONEncoder.init()();
  *(v0 + 160) = v41;
  sub_100ED30C8();
  v69 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 312) = v69;
  *(v0 + 320) = v70;
  v71 = v70;

  sub_100017D5C(v69, v71);
  v72 = [v96 sharedInstance];
  v73 = [v72 isInternalBuild];

  if (v73)
  {
    v75 = *(v0 + 208);
    v74 = *(v0 + 216);
    v76 = *(v0 + 200);
    (*(v75 + 104))(v74, enum case for HashAlgorithm.sha256(_:), v76);
    v77 = Data.hash(algorithm:)();
    v79 = v78;
    *(v0 + 328) = v77;
    *(v0 + 336) = v78;
    sub_100016590(v69, v71);
    (*(v75 + 8))(v74, v76);
    v80 = swift_task_alloc();
    *(v0 + 344) = v80;
    *v80 = v0;
    v80[1] = sub_100ED2BAC;
    v81 = *(v0 + 192);

    sub_100EA87F4(v77, v79, v81);
  }

  else
  {
    sub_100016590(v69, v71);
    v83 = *(v0 + 312);
    v82 = *(v0 + 320);
    v84 = *(v0 + 304);
    v85 = *(v0 + 192);

    sub_100017D5C(v83, v82);

    sub_100016590(v83, v82);
    v87 = *(v0 + 312);
    v86 = *(v0 + 320);
    v88 = *(v0 + 288);
    v89 = *(v0 + 264);
    v91 = *(v0 + 232);
    v90 = *(v0 + 240);
    v92 = *(v0 + 216);

    v93 = *(v0 + 8);

    v93(_swiftEmptyDictionarySingleton, v87, v86);
  }
}

uint64_t sub_100ED2BAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = v1;

  v7 = v4[42];
  v8 = v4[41];
  if (v1)
  {

    sub_100016590(v8, v7);
    v9 = sub_100ED2F1C;
  }

  else
  {
    v4[45] = a1;
    sub_100016590(v8, v7);
    v9 = sub_100ED2D20;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100ED2D20()
{
  v24 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[37];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v3;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v23);
  swift_bridgeObjectRelease_n();
  v5 = v23;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AC90);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Adding BAA Attestation headers for internal build", v9, 2u);
  }

  v11 = v0[39];
  v10 = v0[40];
  v12 = v0[38];
  v13 = v0[24];

  sub_100017D5C(v11, v10);

  sub_100016590(v11, v10);
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[36];
  v17 = v0[33];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[27];

  v21 = v0[1];

  return v21(v5, v15, v14);
}

uint64_t sub_100ED2F1C()
{
  v1 = v0[37];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Adding BAA Attestation headers for internal build", v5, 2u);
  }

  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  v9 = v0[24];

  sub_100017D5C(v7, v6);

  sub_100016590(v7, v6);
  v11 = v0[39];
  v10 = v0[40];
  v12 = v0[36];
  v13 = v0[33];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[27];

  v17 = v0[1];

  return v17(v1, v11, v10);
}

unint64_t sub_100ED30C8()
{
  result = qword_1016BEAD0;
  if (!qword_1016BEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAD0);
  }

  return result;
}

uint64_t sub_100ED312C(uint64_t a1, int a2)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1013917A0;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = a2 & 1;
  v5 = sub_1004F21B4();
  *(v4 + 96) = &type metadata for Bool;
  *(v4 + 104) = &protocol witness table for Bool;
  *(v4 + 72) = v5 & 1;
  *(v4 + 136) = &type metadata for Bool;
  *(v4 + 144) = &protocol witness table for Bool;
  *(v4 + 112) = BYTE1(a2) & 1;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v6 = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v18)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v7 = [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v8);
  }

  *(v4 + 176) = &type metadata for Bool;
  *(v4 + 184) = &protocol witness table for Bool;
  *(v4 + 152) = v7;
  v9 = *(a1 + 32);
  v17 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue;
  v10 = *(v9 + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  __chkstk_darwin(v6);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = &protocol witness table for Bool;
  *(v4 + 192) = 0;
  *(v4 + 256) = &type metadata for Bool;
  *(v4 + 264) = &protocol witness table for Bool;
  *(v4 + 232) = BYTE2(a2) & 1;
  sub_10039722C();
  v11 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if ((a2 & 1) != 0 && (sub_1004F21B4() & 1) != 0 && (a2 & 0x100) != 0)
  {
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if ((v18 & 1) == 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [objc_opt_self() locationServicesEnabled];
      objc_autoreleasePoolPop(v12);
      if (v13)
      {
        v15 = *(v9 + v17);
        __chkstk_darwin(v14);
        OS_dispatch_queue.sync<A>(execute:)();
      }
    }
  }

  return 0;
}

unint64_t sub_100ED34CC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100ED3F0C(*a1);
  *a2 = result;
  return result;
}

void sub_100ED34FC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0xEF79746972756365;
    v4 = 0x53746E756F636361;
    if (v2 != 6)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000101349D10;
    }

    v5 = 0xE900000000000065;
    v6 = 0x7461745370696D66;
    if (v2 != 4)
    {
      v6 = 0xD000000000000012;
      v5 = 0x8000000101349CE0;
    }

    v7 = *v1 <= 5u;
  }

  else
  {
    v3 = 0xEE0064656C62616ELL;
    v4 = 0x45676E69646E6966;
    if (v2 != 2)
    {
      v4 = 0x4565636976726573;
    }

    v5 = 0x8000000101349C70;
    v6 = 0xD000000000000017;
    if (*v1)
    {
      v6 = 0xD00000000000001BLL;
      v5 = 0x8000000101349C90;
    }

    v7 = *v1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_100ED3628()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 0x53746E756F636361;
    if (v1 != 6)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x7461745370696D66;
    if (v1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0x45676E69646E6966;
    if (v1 != 2)
    {
      v2 = 0x4565636976726573;
    }

    v3 = 0xD000000000000017;
    if (*v0)
    {
      v3 = 0xD00000000000001BLL;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100ED3750@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100ED3F0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100ED3778(uint64_t a1)
{
  v2 = sub_100ED3DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ED37B4(uint64_t a1)
{
  v2 = sub_100ED3DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ED37F0(void *a1, uint64_t a2, int a3)
{
  v7 = sub_1000BC4D4(&qword_1016BEAD8, &qword_1013EEF80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100ED3DA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v18[0] = 0x7365547265646E75;
  v18[1] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v19 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    [objc_opt_self() locationServicesEnabled];
    objc_autoreleasePoolPop(v13);
  }

  LOBYTE(v18[0]) = 0;
  v14 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v15 = *(*(a2 + 32) + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
    __chkstk_darwin(v14);
    v18[-2] = v16;
    type metadata accessor for CLAuthorizationStatus(0);
    OS_dispatch_queue.sync<A>(execute:)();
    LOBYTE(v18[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1004F21B4();
    LOBYTE(v18[0]) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100ED312C(a2, a3 & 0x10101);
    LOBYTE(v18[0]) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18[0]) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100ED3B74(void *a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 8);
  if (*(v1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100ED37F0(a1, *v1, v3 | v4);
}

uint64_t sub_100ED3BBC(uint64_t a1)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v2 = qword_10177B348;
  v3 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101073BA8(v6);

  v4 = *(v2 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100A490E0();

  [objc_opt_self() canPublishAnonymously];
  return a1;
}

uint64_t sub_100ED3CF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_100ED3D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100ED3D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100ED3DA0()
{
  result = qword_1016BEAE0;
  if (!qword_1016BEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAE0);
  }

  return result;
}

unint64_t sub_100ED3E08()
{
  result = qword_1016BEAE8;
  if (!qword_1016BEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAE8);
  }

  return result;
}

unint64_t sub_100ED3E60()
{
  result = qword_1016BEAF0;
  if (!qword_1016BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAF0);
  }

  return result;
}

unint64_t sub_100ED3EB8()
{
  result = qword_1016BEAF8;
  if (!qword_1016BEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEAF8);
  }

  return result;
}

unint64_t sub_100ED3F0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C268, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100ED3F70(uint64_t a1)
{
  v46 = type metadata accessor for MACAddress();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v46);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v37 = v1;
  v51 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, v6, 0);
  v7 = v51;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v43 = v3 + 16;
  v44 = v3;
  v41 = a1;
  v42 = v3 + 8;
  v38 = a1 + 64;
  v39 = v6;
  v40 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v47 = v12;
    v48 = v15;
    v16 = v44;
    v17 = v7;
    v18 = v45;
    v19 = v46;
    (*(v44 + 16))(v45, *(a1 + 48) + *(v44 + 72) * v11, v46);
    v20 = MACAddress.dataRepresentation.getter();
    v22 = v21;
    v23 = Data.hexString.getter();
    v49 = v24;
    v50 = v23;
    sub_100016590(v20, v22);
    v25 = v18;
    v7 = v17;
    result = (*(v16 + 8))(v25, v19);
    v51 = v17;
    v27 = v17[2];
    v26 = v17[3];
    if (v27 >= v26 >> 1)
    {
      result = sub_101123BB8((v26 > 1), v27 + 1, 1);
      v7 = v51;
    }

    v7[2] = v27 + 1;
    v28 = &v7[2 * v27];
    v29 = v49;
    v28[4] = v50;
    v28[5] = v29;
    a1 = v41;
    v13 = 1 << *(v41 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v40;
    v30 = *(v40 + 8 * v14);
    if ((v30 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v41 + 36))
    {
      goto LABEL_24;
    }

    v31 = v30 & (-2 << (v11 & 0x3F));
    if (v31)
    {
      v13 = __clz(__rbit64(v31)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v14 << 6;
      v33 = v14 + 1;
      v34 = (v38 + 8 * v14);
      while (v33 < (v13 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_10040BA00(v11, v48, 0);
          v13 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_10040BA00(v11, v48, 0);
    }

LABEL_4:
    v12 = v47 + 1;
    v11 = v13;
    if (v47 + 1 == v39)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100ED428C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_10002F330(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_10002EA2C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_100016590(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_100ED43DC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C220);
  sub_1000076D4(v0, qword_10177C220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100ED445C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EDE1D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100ED4538()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6D6972507465672ELL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else
  {
    v2 = 0xD000000000000027;
    if (v1 != 5)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
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

uint64_t sub_100ED4634()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v0, qword_1016BEB00);
  sub_1000076D4(v0, qword_1016BEB00);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_100ED4684()
{
  v1 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for MACAddress();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + 24);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (!*(&v39 + 1))
  {
    sub_10000B3A8(v40, &unk_1016A0B10, &qword_10139BF40);
    return &_swiftEmptySetSingleton;
  }

  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return &_swiftEmptySetSingleton;
  }

  v19 = v37;
  v36 = *(v37 + 16);
  if (v36)
  {
    v20 = 0;
    v21 = (v33 + 56);
    v34 = (v33 + 32);
    v22 = (v37 + 40);
    v23 = _swiftEmptyArrayStorage;
    v32 = v5;
    while (v20 < *(v19 + 16))
    {
      v24 = *v22;
      *&v40[0] = *(v22 - 1);
      *(&v40[0] + 1) = v24;
      sub_1000DF96C();
      swift_bridgeObjectRetain_n();
      Data.init<A>(hexString:)();
      if (v25 >> 60 == 15)
      {

        (*v21)(v4, 1, 1, v5);
        result = sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        MACAddress.init(dataRepresentation:)();

        (*v21)(v4, 0, 1, v5);
        v26 = *v34;
        (*v34)(v35, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100A5EBA8(0, v23[2] + 1, 1, v23);
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v23 = sub_100A5EBA8(v27 > 1, v28 + 1, 1, v23);
        }

        v23[2] = v28 + 1;
        v29 = v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28;
        v5 = v32;
        result = (v26)(v29, v35, v32);
      }

      ++v20;
      v22 += 2;
      if (v36 == v20)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_21:

  v30 = sub_10112B8D8(v23);

  return v30;
}

void sub_100ED4B5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 24);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    sub_100ED3F70(a1);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = String._bridgeToObjectiveC()();
    [v10 setObject:isa forKey:v12];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100ED4D08(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100EDEAA8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = &_swiftEmptySetSingleton;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = xmmword_10138BBF0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  v11 = sub_1000BC4D4(&qword_1016BEE10, &unk_1013EF390);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v1 + 112) = PassthroughSubject.init()();
  *(v1 + 120) = 0;
  *(v1 + 16) = v16;
  return v1;
}

uint64_t sub_100ED4FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v57 = a6;
  LODWORD(v52) = a5;
  v53 = a4;
  v54 = a3;
  v51 = a2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000BC4D4(&qword_1016BEE10, &unk_1013EF390);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v56 = v12;
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  v16 = *(a1 + 112);
  *(a1 + 112) = v15;
  v55 = v15;

  v17 = *(a1 + 24);
  *v11 = v17;
  v18 = enum case for DispatchPredicate.onQueue(_:);
  v19 = v8[13];
  v19(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v50 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v20 = v8[1];
  v20(v11, v7);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_4;
  }

  if (!*(a1 + 120))
  {
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177C220);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v57;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Handling Privacy Alert", v40, 2u);
    }

    v41 = v54;
    sub_100ED64D4(v51, v54, v53, v52 & 1);
    sub_100EDE2AC(v41);
    v58 = v55;
    sub_1000041A4(&qword_1016BEE18, &qword_1016BEE10, &unk_1013EF390);
    v42 = Publisher.eraseToAnyPublisher()();
    goto LABEL_33;
  }

  v54 = v19;
  if (qword_101694F60 != -1)
  {
    goto LABEL_35;
  }

LABEL_4:
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C220);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  LODWORD(v53) = v23;
  if (!os_log_type_enabled(v22, v23))
  {

    v39 = v57;
    v43 = v55;
LABEL_32:
    v58 = v43;
    sub_1000041A4(&qword_1016BEE18, &qword_1016BEE10, &unk_1013EF390);
    v42 = Publisher.eraseToAnyPublisher()();
LABEL_33:

    *v39 = v42;
    return result;
  }

  v52 = v22;
  v24 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v58 = v51;
  *v24 = 136446210;
  v25 = v50;
  *v11 = v50;
  v54(v11, v18, v7);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (v20)(v11, v7);
  if (v25)
  {
    v28 = *(a1 + 120);
    if (v28 <= 2)
    {
      v44 = 0xEE0079654B797261;
      v45 = 0x6D6972507465672ELL;
      if (v28 != 1)
      {
        v45 = 0xD000000000000016;
        v44 = 0x800000010135BE50;
      }

      if (*(a1 + 120))
      {
        v33 = v45;
      }

      else
      {
        v33 = 0x6E776F6E6B6E752ELL;
      }

      if (*(a1 + 120))
      {
        v34 = v44;
      }

      else
      {
        v34 = 0xE800000000000000;
      }
    }

    else
    {
      v29 = 0x8000000101373690;
      v30 = 0xD000000000000027;
      if (v28 != 5)
      {
        v30 = 0xD000000000000029;
        v29 = 0x8000000101373660;
      }

      v31 = 0x800000010135BE10;
      v32 = 0xD000000000000018;
      if (v28 != 3)
      {
        v32 = 0xD000000000000014;
        v31 = 0x8000000101373640;
      }

      if (*(a1 + 120) <= 4u)
      {
        v33 = v32;
      }

      else
      {
        v33 = v30;
      }

      if (*(a1 + 120) <= 4u)
      {
        v34 = v31;
      }

      else
      {
        v34 = v29;
      }
    }

    v39 = v57;
    v43 = v55;
    v47 = v51;
    v46 = v52;
    v48 = sub_1000136BC(v33, v34, &v58);

    *(v24 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v46, v53, "Existing privacy alert session in progress! %{public}s", v24, 0xCu);
    sub_100007BAC(v47);

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_100ED5570@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 24);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    *a2 = *(a1 + 120) != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100ED56A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100ED4684();
  sub_1010F701C(a1, a2);
  sub_100ED4B5C(v4);
}

uint64_t sub_100ED5708(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v5[13];
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v24 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = v5[1];
  v12(v8, v4);
  if (v9)
  {
    v23 = v12;
    if (qword_101694F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C220);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v5 + 13;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Cleaning up...", v16, 2u);
  }

  v17 = *(a1 + 16);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v25 = 13;
  v26 = 0u;
  v27 = 0u;
  v28 = 11;
  sub_100A5A2B8(&v25);
  sub_100101B04(&v25);
  v18 = *(v2 + 48);
  *(v2 + 48) = 0;

  v19 = *(v2 + 40);
  *(v2 + 40) = 0;

  v20 = *(v2 + 112);
  LOBYTE(v25) = 1;

  PassthroughSubject.send(completion:)();

  *v8 = v24;
  v11(v8, v10, v4);
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = v23(v8, v4);
  if (v20)
  {
    *(v2 + 120) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED59FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v65 = a1;
  v66 = a3;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = v48 - v5;
  v6 = sub_1000BC4D4(&qword_1016B4340, &qword_1013D4E50);
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v6);
  v60 = v48 - v8;
  v9 = sub_1000BC4D4(&qword_1016BEE20, &qword_1013EF3A0);
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v9);
  v12 = v48 - v11;
  v13 = sub_1000BC4D4(&qword_1016BEE28, &qword_1013EF3A8);
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v13);
  v16 = v48 - v15;
  v17 = sub_1000BC4D4(&qword_1016BEE30, &unk_1013EF3B0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v48 - v20;
  sub_100EDEA48();
  v22 = v68;
  BinaryDecodable.init(data:)();
  if (v22)
  {
  }

  v52 = v12;
  v53 = v6;
  v54 = v9;
  v55 = v16;
  v56 = v13;
  v57 = v21;
  v58 = v18;
  v59 = v17;
  v68 = 0;
  memset(v69, 0, sizeof(v69));
  v70 = 2;
  v71 = 0;
  v24 = v67;
  v25 = sub_100ED77B4(v69, v66);
  sub_10000B3A8(v69, &qword_1016BEDB8, &unk_1013EF350);
  *&v69[0] = v25;
  v26 = *(v24 + 24);
  v72 = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = *(v27 - 8);
  v29 = v61;
  v49 = *(v28 + 56);
  v48[1] = v28 + 56;
  v49(v61, 1, 1, v27);
  v50 = v26;
  sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
  v30 = sub_1000BC488();
  sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
  sub_100EDEAA8(&qword_1016AF9C0, sub_1000BC488);
  v31 = v60;
  v51 = v30;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v29, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694F68 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v32, qword_1016BEB00);
  v33 = v50;
  *&v69[0] = v50;
  v49(v29, 1, 1, v27);
  sub_1000041A4(&qword_1016B4370, &qword_1016B4340, &qword_1013D4E50);
  v34 = v52;
  v35 = v33;
  v36 = v53;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v29, &unk_1016B0FE0, &unk_101391980);

  (*(v62 + 8))(v31, v36);
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  sub_1000041A4(&qword_1016BEE40, &qword_1016BEE20, &qword_1013EF3A0);
  v37 = v55;
  v38 = v54;
  Publisher.map<A>(_:)();
  (*(v63 + 8))(v34, v38);
  sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
  sub_1000041A4(&qword_1016BEE48, &qword_1016BEE28, &qword_1013EF3A8);
  sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
  v39 = v56;
  v40 = v57;
  Publisher.catch<A>(_:)();
  (*(v64 + 8))(v37, v39);
  v41 = swift_allocObject();
  v42 = v67;
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v41;
  v44 = v66;
  v43[3] = v65;
  v43[4] = v44;
  sub_1000041A4(&qword_1016BEE50, &qword_1016BEE30, &unk_1013EF3B0);

  v45 = v59;
  v46 = Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v40, v45);
  v47 = *(v42 + 48);
  *(v42 + 48) = v46;
}

uint64_t sub_100ED6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C220);
    sub_1000D2A70(a1, v20, &qword_1016B1CA0, &qword_1013918C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v20, &v18, &qword_1016B1CA0, &qword_1013918C0);
      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      v12 = String.init<A>(describing:)();
      v13 = a1;
      v14 = a4;
      v16 = v15;
      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
      v17 = sub_1000136BC(v12, v16, &v19);
      a4 = v14;
      a1 = v13;

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "primaryKey result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
    }

    sub_1000D2A70(a1, v20, &qword_1016B1CA0, &qword_1013918C0);
    if (v20[41])
    {
      sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
      sub_100ED5708(a4);
    }

    else
    {

      return sub_10000B3A8(v20, &qword_1016B1CA0, &qword_1013918C0);
    }
  }

  return result;
}

uint64_t sub_100ED64D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v5[3];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *&v20[-48] = v5;
    *&v20[-40] = a2;
    *&v20[-32] = a3;
    *&v20[-24] = a1;
    v20[-16] = a4 & 1;
    *&v20[-8] = v10;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100ED66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v121 = a2;
  v108 = a6;
  v109 = a5;
  v103 = a4;
  v117 = a1;
  v7 = type metadata accessor for Device();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  __chkstk_darwin(v7);
  v100 = v9;
  v102 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v118 = v83 - v12;
  v98 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v97 = *(v98 - 8);
  v13 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = v83 - v14;
  v104 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v101 = *(v104 - 8);
  v15 = *(v101 + 64);
  __chkstk_darwin(v104);
  v99 = v83 - v16;
  v17 = sub_1000BC4D4(&qword_1016BEDC0, &qword_1013EF360);
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = *(v111 + 64);
  __chkstk_darwin(v17);
  v110 = v83 - v19;
  v20 = sub_1000BC4D4(&qword_1016BEDC8, &qword_1013EF368);
  v113 = *(v20 - 8);
  v114 = v20;
  v21 = *(v113 + 64);
  __chkstk_darwin(v20);
  v107 = v83 - v22;
  v23 = sub_1000BC4D4(&qword_1016BEDD0, &qword_1013EF370);
  v115 = *(v23 - 8);
  v24 = *(v115 + 64);
  __chkstk_darwin(v23);
  v26 = v83 - v25;
  v27 = sub_1000BC4D4(&qword_1016BEDD8, &qword_1013EF378);
  v116 = *(v27 - 8);
  v28 = *(v116 + 64);
  __chkstk_darwin(v27);
  v30 = v83 - v29;
  v31 = sub_1000BC4D4(&qword_1016BEDE0, &unk_1013EF380);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = v83 - v34;
  v36 = *(a3 + 16);
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v119 = a3;
  v37 = v120;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v37)
  {

    v38 = 0;
    v39 = v121;
  }

  else
  {
    v89 = v26;
    v90 = v23;
    v91 = v30;
    v92 = v27;
    v93 = 0;
    v94 = v35;
    v95 = v32;
    v120 = v31;
    v40 = v121;
    v122 = *(v121 + 24);
    v41 = v122;
    v42 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v43 = *(v42 - 8);
    v44 = *(v43 + 56);
    v45 = v118;
    v87 = v42;
    v86 = v44;
    v85 = v43 + 56;
    (v44)(v118, 1, 1);
    v46 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v47 = sub_100EDEAA8(&qword_1016AF9C0, sub_1000BC488);
    v84 = v41;
    v48 = v96;
    v88 = v46;
    v83[1] = v47;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v45, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v83[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v49 = v99;
    v50 = v40;
    v51 = v98;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v97 + 8))(v48, v51);
    v53 = v105;
    v52 = v106;
    v54 = v102;
    (*(v105 + 16))(v102, v103, v106);
    v55 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v56 = (v100 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v50;
    (*(v53 + 32))(v57 + v55, v54, v52);
    v58 = v57 + v56;
    v59 = v109;
    *v58 = v109;
    *(v58 + 8) = v108 & 1;
    v60 = v50;

    v61 = v59;
    sub_1000BC4D4(&qword_1016BEDB8, &unk_1013EF350);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v62 = v110;
    v63 = v104;
    Publisher.map<A>(_:)();

    (*(v101 + 8))(v49, v63);
    v64 = swift_allocObject();
    v65 = v119;
    *(v64 + 16) = v60;
    *(v64 + 24) = v65;
    v39 = v60;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    sub_1000041A4(&qword_1016BEDE8, &qword_1016BEDC0, &qword_1013EF360);
    sub_1000041A4(&qword_1016B3DC8, &qword_1016B3DC0, &qword_1013EF330);
    v66 = v107;
    v67 = v112;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v111 + 8))(v62, v67);
    v68 = v118;
    if (qword_101694F68 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v69, qword_1016BEB00);
    v70 = v84;
    v123 = v84;
    v86(v68, 1, 1, v87);
    sub_1000041A4(&qword_1016BEDF0, &qword_1016BEDC8, &qword_1013EF368);
    v71 = v89;
    v72 = v114;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v68, &unk_1016B0FE0, &unk_101391980);

    (*(v113 + 8))(v66, v72);
    sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
    sub_1000041A4(&qword_1016BEDF8, &qword_1016BEDD0, &qword_1013EF370);
    v73 = v91;
    v74 = v90;
    Publisher.map<A>(_:)();
    (*(v115 + 8))(v71, v74);
    sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
    sub_1000041A4(&qword_1016BEE00, &qword_1016BEDD8, &qword_1013EF378);
    sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0);
    v75 = v94;
    v76 = v92;
    Publisher.catch<A>(_:)();
    (*(v116 + 8))(v73, v76);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = swift_allocObject();
    v78[2] = v77;
    v79 = v119;
    v78[3] = v117;
    v78[4] = v79;
    sub_1000041A4(&qword_1016BEE08, &qword_1016BEDE0, &unk_1013EF380);

    v80 = v120;
    v38 = Publisher<>.sink(receiveValue:)();

    (*(v95 + 8))(v75, v80);
  }

  v81 = *(v39 + 40);
  *(v39 + 40) = v38;
}

uint64_t sub_100ED74D0(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
  return Just.init(_:)();
}

uint64_t sub_100ED752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v22, &qword_1016B1CA0, &qword_1013918C0);
    if (v24)
    {
      v20 = v22;
      v21[0] = *v23;
      *(v21 + 9) = *&v23[9];
      sub_100101AA8(&v20, &v16);
      if (v19 == 11 && v16 == 11 && (v7 = vorrq_s8(v17, v18), !*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL))))
      {
        sub_100101B04(&v16);
        if (qword_101694F60 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000076D4(v8, qword_10177C220);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "handleNotify timed out!", v11, 2u);
        }
      }

      else
      {
        sub_100101B04(&v16);
      }

      sub_100ED5708(a4);

      return sub_100101B04(&v20);
    }

    else
    {
      if (qword_101694F60 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_10177C220);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "handleNotify success!", v15, 2u);
      }
    }
  }

  return result;
}

uint64_t sub_100ED77B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v33, &qword_1016BEDB8, &unk_1013EF350);
  if (v35)
  {
    v31 = v33;
    *v32 = *v34;
    *&v32[9] = *&v34[9];
    sub_100101AA8(&v31, &v29);
    v12 = swift_allocObject();
    v13 = *v30;
    v12[1] = v29;
    v12[2] = v13;
    *(v12 + 41) = *&v30[9];
    v14 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = Future.init(_:)();
    sub_100101B04(&v31);
    return v17;
  }

  v31 = v33;
  *v32 = *v34;
  v32[16] = v34[16];
  if (qword_101694F60 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C220);
  sub_100EDE250(&v31, &v29);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_100EDE890(&v31);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    v29 = v31;
    *v30 = *v32;
    v30[16] = v32[16];
    sub_100EDE250(&v31, v27);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000136BC(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending: %{public}s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  v17 = sub_100EDD164(&v31, a2);
  sub_100EDE890(&v31);
  return v17;
}

uint64_t sub_100ED7B08(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_1016B1CA0, &qword_1013918C0);
}

void sub_100ED7B98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v442 = a4;
  v439 = a3;
  v440 = a2;
  v455 = a5;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v423 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for PrivacyAlertSupport.AlertInfo();
  v11 = *(*(v441 - 8) + 64);
  __chkstk_darwin(v441);
  v443 = (&v423 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v434 = &v423 - v15;
  v432 = type metadata accessor for SharedBeaconRecord(0);
  v433 = *(v432 - 8);
  v16 = *(v433 + 64);
  v17 = __chkstk_darwin(v432);
  v429 = &v423 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v430 = &v423 - v20;
  __chkstk_darwin(v19);
  v435 = &v423 - v21;
  v22 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v423 - v24;
  v26 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v423 - v28;
  v437 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v436 = *(v437 - 8);
  v30 = *(v436 + 64);
  v31 = __chkstk_darwin(v437);
  v431 = &v423 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = &v423 - v34;
  __chkstk_darwin(v33);
  v438 = &v423 - v36;
  v37 = type metadata accessor for DispatchPredicate();
  v38 = *(v37 - 8);
  v39 = v38[8];
  __chkstk_darwin(v37);
  v41 = (&v423 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v5 + 24);
  *v41 = v43;
  v42 = v38[13];
  v445 = enum case for DispatchPredicate.onQueue(_:);
  v447 = v38 + 13;
  v446 = v42;
  v42(v41);
  v444 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v44 = v38[1];
  v449 = v41;
  v450 = v37;
  v451 = v38 + 1;
  v448 = v44;
  v44(v41, v37);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_223;
  }

  sub_1001011C0(a1, &v460);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177C220);
    sub_1001011C0(a1, &v460);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v455;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v459 = v64;
      *v63 = 136315138;
      sub_1001011C0(&v460, v456);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      sub_100007BAC(&v460);
      v68 = sub_1000136BC(v65, v67, &v459);

      *(v63 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Invalid command from payload %s", v63, 0xCu);
      sub_100007BAC(v64);
    }

    else
    {

      sub_100007BAC(&v460);
    }

    v69 = 14;
    goto LABEL_18;
  }

  v453 = v456[0];
  v454 = v456[1];
  v46 = v457;
  v452 = v456[2];
  v43 = v458;
  v47 = (v457 >> 60) & 3 | (4 * v458);
  if (v47 <= 2)
  {
    if ((v457 >> 60) & 3 | (4 * v458))
    {
      v48 = v452;
      v25 = v453;
      if (v47 != 1)
      {
        goto LABEL_59;
      }

      v428 = v457;
      sub_100017D5C(v453, v454);
      static String.Encoding.utf8.getter();
      v70 = String.init(data:encoding:)();
      if (!v71)
      {
        LOBYTE(v148) = v43;
        v43 = v455;
        if (qword_101694F60 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_243;
      }

      v72 = v70;
      v73 = v71;
      v62 = v455;
      if (qword_101694F60 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_1000076D4(v74, qword_10177C220);

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = v43;
        v43 = swift_slowAlloc();
        v460 = v43;
        *v77 = 141558275;
        *(v77 + 4) = 1752392040;
        *(v77 + 12) = 2081;
        *(v77 + 14) = sub_1000136BC(v72, v73, &v460);
        _os_log_impl(&_mh_execute_header, v75, v76, "iCloudIdentifier: %{private,mask.hash}s", v77, 0x16u);
        sub_100007BAC(v43);
        LOBYTE(v43) = v78;
        v48 = v452;

        v25 = v453;
      }

      v79 = v441;
      v80 = v443;
      sub_100A22DF0(v443 + *(v441 + 20));
      v81 = v79[6];
      v82 = type metadata accessor for Device();
      (*(*(v82 - 8) + 16))(v80 + v81, v440, v82);
      *v80 = v72;
      v80[1] = v73;
      *(v80 + v79[7]) = v442 & 1;
      v83 = (v80 + v79[8]);
      *v83 = 0;
      v83[1] = 0;
      sub_100EDB164(v80);
      v84 = v454;
      v85 = v428;
      sub_10071E1B8(v25, v454, v48, v428, v43);
      sub_10071E1B8(v25, v84, v48, v85, v43);
      sub_100EDE7C0(v80, type metadata accessor for PrivacyAlertSupport.AlertInfo);
      v69 = 2;
LABEL_18:
      *v62 = v69;
      *(v62 + 1) = 0u;
      *(v62 + 3) = 0u;
      *(v62 + 20) = 267;
      return;
    }

    v426 = v458;
    v427 = v5;
    v121 = v453;
    v120 = v454;
    sub_100017D5C(v453, v454);
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    v123 = sub_1000076D4(v122, qword_10177C220);
    sub_100017D5C(v121, v120);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    sub_10071E1B8(v121, v120, v452, v46, v426);
    v126 = os_log_type_enabled(v124, v125);
    v428 = v46;
    if (v126)
    {
      v127 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      v425 = v123;
      v128 = v460;
      *v127 = 136315138;
      v129 = Data.hexString.getter();
      v131 = sub_1000136BC(v129, v130, &v460);
      v46 = v428;

      *(v127 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "primaryKey %s", v127, 0xCu);
      sub_100007BAC(v128);
      v123 = v425;

      v120 = v454;
    }

    v460 = v121;
    v461 = v120;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&_mh_execute_header, v132, v133, "primaryKey is empty! Verifying FindMyNetworkIdV2.", v134, 2u);
        v120 = v454;
      }

      v135 = sub_100F54748();
      v137 = v452;
      v138 = v426;
      if (v136 >> 60 == 15)
      {
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          *v141 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "Unable to generate FindMyNetworkId!", v141, 2u);
          v120 = v454;
        }

        v142 = v453;
        sub_10071E1B8(v453, v120, v137, v46, v138);

        v143 = v142;
        v144 = v120;
        v145 = v137;
        v146 = v46;
        v147 = v138;
        goto LABEL_109;
      }

      v218 = v135;
      v219 = v136;
      v220 = v136 >> 62;
      if ((v136 >> 62) > 1)
      {
        if (v220 != 2)
        {
          goto LABEL_259;
        }

        v266 = *(v135 + 16);
        v265 = *(v135 + 24);
        v267 = __OFSUB__(v265, v266);
        v221 = v265 - v266;
        if (!v267)
        {
LABEL_134:
          if (v221 == 32)
          {
            v268 = v449;
            v269 = v450;
            v270 = v444;
            *v449 = v444;
            v446(v268, v445, v269);
            v271 = v270;
            v272 = v46;
            v273 = _dispatchPreconditionTest(_:)();
            v274 = v453;
            v275 = v454;
            sub_10071E1B8(v453, v454, v137, v272, v138);
            sub_10071E1B8(v274, v275, v137, v272, v138);
            v448(v268, v269);
            if ((v273 & 1) == 0)
            {
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
              goto LABEL_249;
            }

            v276 = 6;
LABEL_216:
            *(v427 + 120) = v276;
            v263 = v455;
            *v455 = v218;
            v263[1] = v219;
            *(v263 + 1) = xmmword_1013B5EA0;
            goto LABEL_217;
          }

LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        __break(1u);
      }

      else if (!v220)
      {
        v221 = BYTE6(v136);
        goto LABEL_134;
      }

      LODWORD(v221) = HIDWORD(v135) - v135;
      if (__OFSUB__(HIDWORD(v135), v135))
      {
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v221 = v221;
      goto LABEL_134;
    }

    sub_100017D5C(v121, v120);
    sub_100018000(v121, v120, &v460);
    v242 = v460;
    v241 = v461;
    v243 = *(*(v427 + 16) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v244 = type metadata accessor for UUID();
    v245 = 1;
    (*(*(v244 - 8) + 56))(v25, 1, 1, v244);
    v423 = v242;
    v424 = v241;
    v246 = sub_1012DD334(v242, v241, v25);
    v247 = v246[2];
    v248 = v436;
    if (v247)
    {
      sub_100EDE820(v246 + ((*(v436 + 80) + 32) & ~*(v436 + 80)) + *(v436 + 72) * (v247 - 1), v29, type metadata accessor for BeaconKeyManager.IndexInformation);
      v245 = 0;
    }

    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    v277 = v437;
    (*(v248 + 56))(v29, v245, 1, v437);
    v279 = *(v248 + 48);
    v278 = v248 + 48;
    if (v279(v29, 1, v277) == 1)
    {
      sub_10000B3A8(v29, &unk_1016C1120, &qword_1013C49D0);
      v280 = Logger.logObject.getter();
      v281 = static os_log_type_t.default.getter();
      v282 = os_log_type_enabled(v280, v281);
      v283 = v426;
      if (v282)
      {
        v284 = swift_slowAlloc();
        *v284 = 0;
        _os_log_impl(&_mh_execute_header, v280, v281, "Unknown beacon. Verifying FMNIDV2...", v284, 2u);
      }

      v285 = sub_100F54748();
      v43 = v452;
      if (v286 >> 60 == 15)
      {
        v287 = Logger.logObject.getter();
        v288 = static os_log_type_t.error.getter();
        v289 = os_log_type_enabled(v287, v288);
        v290 = v453;
        if (v289)
        {
          v291 = swift_slowAlloc();
          *v291 = 0;
          _os_log_impl(&_mh_execute_header, v287, v288, "Unable to generate FindMyNetworkId!", v291, 2u);
        }

        v292 = v454;
        v293 = v428;
        sub_10071E1B8(v290, v454, v43, v428, v283);

        sub_100016590(v423, v424);
        v143 = v290;
        v144 = v292;
        v145 = v43;
        v146 = v293;
        v147 = v283;
        goto LABEL_109;
      }

      v218 = v285;
      v219 = v286;
      v325 = v286 >> 62;
      v25 = v428;
      if ((v286 >> 62) <= 1)
      {
        if (v325)
        {
          LODWORD(v326) = HIDWORD(v285) - v285;
          if (__OFSUB__(HIDWORD(v285), v285))
          {
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
            goto LABEL_257;
          }

          v326 = v326;
        }

        else
        {
          v326 = BYTE6(v286);
        }

        goto LABEL_203;
      }

      if (v325 != 2)
      {
        goto LABEL_261;
      }

      v363 = *(v285 + 16);
      v362 = *(v285 + 24);
      v267 = __OFSUB__(v362, v363);
      v326 = v362 - v363;
      if (!v267)
      {
LABEL_203:
        if (v326 == 32)
        {
          v403 = v449;
          v404 = v450;
          v405 = v444;
          *v449 = v444;
          v446(v403, v445, v404);
          v406 = v405;
          sub_10002E98C(v218, v219);
          LOBYTE(v405) = _dispatchPreconditionTest(_:)();
          sub_100016590(v423, v424);
          sub_100006654(v218, v219);
          v48 = v453;
          v343 = v454;
          sub_10071E1B8(v453, v454, v43, v25, v283);
          sub_10071E1B8(v48, v343, v43, v25, v283);
          v448(v403, v404);
          if ((v405 & 1) == 0)
          {
            __break(1u);
            goto LABEL_206;
          }

          goto LABEL_215;
        }

LABEL_261:
        __break(1u);
        goto LABEL_262;
      }

      __break(1u);
      goto LABEL_188;
    }

    v294 = v29;
    v295 = v438;
    sub_100EDE758(v294, v438, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100EDE820(v295, v35, type metadata accessor for BeaconKeyManager.IndexInformation);
    v296 = v431;
    sub_100EDE820(v295, v431, type metadata accessor for BeaconKeyManager.IndexInformation);
    v297 = Logger.logObject.getter();
    v298 = static os_log_type_t.default.getter();
    v299 = os_log_type_enabled(v297, v298);
    v425 = v123;
    if (v299)
    {
      v300 = v296;
      v301 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      *v301 = 136315394;
      sub_100EDEAA8(&qword_101696930, &type metadata accessor for UUID);
      v302 = dispatch thunk of CustomStringConvertible.description.getter();
      v304 = v303;
      sub_100EDE7C0(v35, type metadata accessor for BeaconKeyManager.IndexInformation);
      v305 = sub_1000136BC(v302, v304, &v460);

      *(v301 + 4) = v305;
      *(v301 + 12) = 2082;
      v306 = (v300 + *(v437 + 20));
      v307 = v306[4];
      sub_1000035D0(v306, v306[3]);
      v308 = *(v307 + 16);
      v309 = dispatch thunk of CustomStringConvertible.description.getter();
      v311 = v310;
      sub_100EDE7C0(v300, type metadata accessor for BeaconKeyManager.IndexInformation);
      v312 = sub_1000136BC(v309, v311, &v460);

      *(v301 + 14) = v312;
      _os_log_impl(&_mh_execute_header, v297, v298, "Found beacon %s and index %{public}s", v301, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100EDE7C0(v35, type metadata accessor for BeaconKeyManager.IndexInformation);
      sub_100EDE7C0(v296, type metadata accessor for BeaconKeyManager.IndexInformation);
    }

    v327 = v453;
    v328 = v434;
    v329 = v433;
    sub_100AA5198(v438, v434);
    v35 = v432;
    v330 = (*(v329 + 48))(v328, 1, v432);
    v331 = v426;
    v332 = v452;
    if (v330 == 1)
    {
      sub_10000B3A8(v328, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v333 = v328;
      v334 = v435;
      sub_100EDE758(v333, v435, type metadata accessor for SharedBeaconRecord);
      v335 = *(v334 + *(v35 + 16));
      if (v335 == 4 || v335 == 1)
      {
        v278 = v430;
        sub_100EDE820(v435, v430, type metadata accessor for SharedBeaconRecord);
        v219 = Logger.logObject.getter();
        v336 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v219, v336))
        {
          v337 = swift_slowAlloc();
          v338 = swift_slowAlloc();
          v460 = v338;
          *v337 = 136315138;
          sub_100EDE820(v278, v429, type metadata accessor for SharedBeaconRecord);
          v339 = String.init<A>(describing:)();
          v341 = v340;
          sub_100EDE7C0(v278, type metadata accessor for SharedBeaconRecord);
          v342 = sub_1000136BC(v339, v341, &v460);

          *(v337 + 4) = v342;
          _os_log_impl(&_mh_execute_header, v219, v336, "Found sharedBeacon %s", v337, 0xCu);
          sub_100007BAC(v338);

LABEL_189:
          v364 = v455;
          v365 = v435 + *(v35 + 7);
          v366 = *(v365 + 8);
          v367 = *(v365 + 16);
          v368 = *v365;
          v369 = sub_100EB3708(*v365, v366, v367);
          v370 = [v369 description];

          v371 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v373 = v372;

          v374 = v441;
          v375 = v443;
          sub_100A22DF0(v443 + *(v441 + 20));
          v376 = v374[6];
          v377 = type metadata accessor for Device();
          (*(*(v377 - 8) + 16))(v375 + v376, v440, v377);
          v378 = sub_100EB3708(v368, v366, v367);
          v379 = [v378 description];

          v380 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v382 = v381;

          v383 = sub_1010E09D0(v380, v382, 0);
          v385 = v384;

          *v375 = v371;
          v375[1] = v373;
          *(v375 + v374[7]) = v442 & 1;
          v386 = (v375 + v374[8]);
          *v386 = v383;
          v386[1] = v385;
          sub_100EDB164(v375);
          sub_100016590(v423, v424);
          v388 = v453;
          v387 = v454;
          v389 = v452;
          v390 = v428;
          LOBYTE(v371) = v426;
          sub_10071E1B8(v453, v454, v452, v428, v426);
          sub_10071E1B8(v388, v387, v389, v390, v371);
          sub_100EDE7C0(v375, type metadata accessor for PrivacyAlertSupport.AlertInfo);
          sub_100EDE7C0(v438, type metadata accessor for BeaconKeyManager.IndexInformation);
          *v364 = 2;
          *(v364 + 1) = 0u;
          *(v364 + 3) = 0u;
          *(v364 + 20) = 267;
          sub_100EDE7C0(v435, type metadata accessor for SharedBeaconRecord);
          return;
        }

LABEL_188:

        sub_100EDE7C0(v278, type metadata accessor for SharedBeaconRecord);
        goto LABEL_189;
      }

      sub_100EDE7C0(v435, type metadata accessor for SharedBeaconRecord);
    }

    v391 = Logger.logObject.getter();
    v392 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v391, v392))
    {
      v393 = swift_slowAlloc();
      *v393 = 0;
      _os_log_impl(&_mh_execute_header, v391, v392, "Owner accessory. Verifying FMNIDV2...", v393, 2u);
    }

    v394 = sub_100F54748();
    if (v395 >> 60 == 15)
    {
      v396 = Logger.logObject.getter();
      v397 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v396, v397))
      {
        v398 = swift_slowAlloc();
        *v398 = 0;
        _os_log_impl(&_mh_execute_header, v396, v397, "Unable to generate FindMyNetworkId!", v398, 2u);

        sub_100016590(v423, v424);

        v399 = v454;
        v400 = v428;
        sub_10071E1B8(v327, v454, v332, v428, v331);
      }

      else
      {
        v399 = v454;
        v400 = v428;
        sub_10071E1B8(v327, v454, v332, v428, v331);
        sub_100016590(v423, v424);
      }

      v196 = v455;
      sub_10071E1B8(v327, v399, v332, v400, v331);
      sub_100EDE7C0(v438, type metadata accessor for BeaconKeyManager.IndexInformation);
      v198 = 10;
      goto LABEL_84;
    }

    v218 = v394;
    v219 = v395;
    v401 = v395 >> 62;
    if ((v395 >> 62) > 1)
    {
      if (v401 != 2)
      {
        goto LABEL_262;
      }

      v409 = *(v394 + 16);
      v408 = *(v394 + 24);
      v267 = __OFSUB__(v408, v409);
      v402 = v408 - v409;
      if (!v267)
      {
LABEL_213:
        if (v402 == 32)
        {
          v410 = v449;
          v411 = v450;
          v412 = v444;
          *v449 = v444;
          v446(v410, v445, v411);
          v413 = v412;
          sub_10002E98C(v218, v219);
          LOBYTE(v412) = _dispatchPreconditionTest(_:)();
          sub_100016590(v423, v424);
          sub_100006654(v218, v219);
          v414 = v454;
          v415 = v428;
          sub_10071E1B8(v327, v454, v332, v428, v331);
          sub_10071E1B8(v327, v414, v332, v415, v331);
          v448(v410, v411);
          sub_100EDE7C0(v438, type metadata accessor for BeaconKeyManager.IndexInformation);
          if ((v412 & 1) == 0)
          {
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

LABEL_215:
          v276 = 3;
          goto LABEL_216;
        }

LABEL_262:
        __break(1u);
        goto LABEL_263;
      }

      __break(1u);
    }

    else if (!v401)
    {
      v402 = BYTE6(v395);
      goto LABEL_213;
    }

    LODWORD(v402) = HIDWORD(v394) - v394;
    if (__OFSUB__(HIDWORD(v394), v394))
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v402 = v402;
    goto LABEL_213;
  }

  if (v47 == 7)
  {
    v86 = v457;
    v427 = v5;
    v88 = v452;
    v87 = v453;
    v89 = v454;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_1000076D4(v90, qword_10177C220);

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    sub_10071E1B8(v87, v89, v88, v86, v43);
    if (os_log_type_enabled(v91, v92))
    {
      v93 = v453 >> 8;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v456[0] = v95;
      *v94 = 136315138;
      LOBYTE(v460) = v453;
      BYTE1(v460) = v93;
      v461 = v454;

      v96 = String.init<A>(describing:)();
      v98 = v43;
      v43 = sub_1000136BC(v96, v97, v456);
      v87 = v453;

      *(v94 + 4) = v43;
      LOBYTE(v43) = v98;
      v88 = v452;
      _os_log_impl(&_mh_execute_header, v91, v92, "Received .verifyFindMyNetworkIdResponseV2: %s", v94, 0xCu);
      sub_100007BAC(v95);

      v89 = v454;
    }

    v99 = v86;
    if (v87)
    {
      if (v87 == 2)
      {
        v214 = Logger.logObject.getter();
        v215 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v214, v215))
        {
          v216 = swift_slowAlloc();
          *v216 = 0;
          _os_log_impl(&_mh_execute_header, v214, v215, "FindMyNetworkId verification failed! Getting iCloud identifier to show privacy alert.", v216, 2u);
        }

        sub_10073F194();
        BinaryDecodable.init(data:)();
        v259 = v449;
        v258 = v450;
        v260 = v444;
        *v449 = v444;
        v446(v259, v445, v258);
        v261 = v260;
        v262 = _dispatchPreconditionTest(_:)();
        sub_10071E1B8(v87, v89, v88, v86, v43);
        v448(v259, v258);
        if ((v262 & 1) == 0)
        {
          goto LABEL_248;
        }

        *(v427 + 120) = 4;
        goto LABEL_127;
      }

      if (v87 != 1)
      {
        sub_10071E1B8(v87, v89, v88, v86, v43);
        v217 = 2;
LABEL_110:
        v104 = v455;
        *v455 = v217;
LABEL_111:
        *(v104 + 1) = 0u;
        *(v104 + 3) = 0u;
        *(v104 + 20) = 267;
        return;
      }

      if (sub_1002F012C(v89))
      {
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "FindMyNetworkId verified, all parts are paired on the accessory.", v102, 2u);
          v99 = v86;
        }

        v103 = *(v427 + 112);
        v460 = 2;

        PassthroughSubject.send(_:)();

        sub_10071E1B8(v87, v89, v88, v99, v43);
        v104 = v455;
        *v455 = 2;
        goto LABEL_111;
      }
    }

    sub_100EDE578(v87, v89, v88, v86, v43);

    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.default.getter();
    sub_10071E1B8(v87, v89, v88, v86, v43);
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v460 = v191;
      *v190 = 136446210;

      v192 = sub_1002F0158(v454);
      v194 = v193;
      sub_10071E1B8(v453, v454, v88, v86, v43);
      v195 = sub_1000136BC(v192, v194, &v460);
      v87 = v453;

      *(v190 + 4) = v195;
      _os_log_impl(&_mh_execute_header, v188, v189, "FindMyNetworkId verified, but need partial re-pair: %{public}s", v190, 0xCu);
      sub_100007BAC(v191);
      v89 = v454;

      v99 = v86;
    }

    v196 = v455;
    v197 = *(v427 + 112);
    v460 = v89;

    PassthroughSubject.send(_:)();

    sub_10071E1B8(v87, v89, v88, v99, v43);
    sub_10071E1B8(v87, v89, v88, v99, v43);
    v198 = 2;
LABEL_84:
    *v196 = v198;
    *(v196 + 1) = 0u;
    *(v196 + 3) = 0u;
    *(v196 + 20) = 267;
    return;
  }

  v48 = v452;
  v25 = v453;
  if (v47 == 5)
  {
    v25 = v457;
    v105 = v5;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_1000076D4(v106, qword_10177C220);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v107, v108, "Received .verifyFindMyNetworkIdResponse", v109, 2u);
    }

    v110 = v454;
    if (v453)
    {
      v111 = v449;
      v46 = v450;
      v112 = v444;
      *v449 = v444;
      v446(v111, v445, v46);
      v113 = v112;
      LOBYTE(v112) = _dispatchPreconditionTest(_:)();
      v448(v111, v46);
      if (v112)
      {
        v114 = *(v5 + 120);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.default.getter();
        v117 = os_log_type_enabled(v115, v116);
        v55 = v455;
        if (v114 == 5)
        {
          if (v117)
          {
            v118 = swift_slowAlloc();
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v115, v116, "FindMyNetworkId verified, but no PrimaryKey. Re-pairing both buds.", v118, 2u);
          }

          v119 = *(v105 + 112);
          v460 = 1;
        }

        else
        {
          if (v117)
          {
            v222 = swift_slowAlloc();
            *v222 = 0;
            _os_log_impl(&_mh_execute_header, v115, v116, "FindMyNetworkId verified!", v222, 2u);
          }

          v223 = *(v105 + 112);
          v460 = 0;
        }

        PassthroughSubject.send(_:)();

        sub_10071E1B8(v453, v454, v48, v25, v43);
        v57 = 2;
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_241;
    }

    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v165, v166, "FindMyNetworkId verification failed! Getting iCloud identifier to show privacy alert.", v167, 2u);
    }

    sub_10073F194();
    BinaryDecodable.init(data:)();
    v237 = v449;
    v236 = v450;
    v238 = v444;
    *v449 = v444;
    v446(v237, v445, v236);
    v239 = v238;
    v240 = _dispatchPreconditionTest(_:)();
    sub_10071E1B8(v453, v110, v48, v25, v43);
    v448(v237, v236);
    if ((v240 & 1) == 0)
    {
      goto LABEL_246;
    }

    *(v105 + 120) = 4;
LABEL_127:
    v263 = v455;
    *v455 = 1;
    v263[1] = 0;
    v263[2] = 0;
    v263[3] = 0;
    v264 = 2;
LABEL_218:
    *(v263 + 32) = v264;
    *(v263 + 41) = 0;
    return;
  }

  if (v47 != 3)
  {
LABEL_59:
    LOBYTE(v148) = v458;
    v43 = v455;
    if (qword_101694F60 != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    sub_1000076D4(v149, qword_10177C220);
    v150 = v454;
    sub_100EDE578(v25, v454, v48, v46, v148);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.error.getter();
    sub_10071E1B8(v25, v150, v48, v46, v148);
    if (os_log_type_enabled(v151, v152))
    {
      v153 = v48;
      v154 = v46;
      v155 = swift_slowAlloc();
      v156 = v150;
      v157 = swift_slowAlloc();
      v456[0] = v157;
      *v155 = 136315138;
      v460 = v25;
      v461 = v156;
      v462 = v153;
      v463 = v154;
      v428 = v154;
      v464 = v148;
      sub_100EDE578(v25, v156, v153, v154, v148);
      v158 = String.init<A>(describing:)();
      v160 = sub_1000136BC(v158, v159, v456);

      *(v155 + 4) = v160;
      _os_log_impl(&_mh_execute_header, v151, v152, "Received unexpected owner command %s", v155, 0xCu);
      sub_100007BAC(v157);

      v161 = v453;
      v162 = v156;
      v163 = v153;
      v164 = v428;
    }

    else
    {

      v161 = v25;
      v162 = v150;
      v163 = v48;
      v164 = v46;
    }

    goto LABEL_117;
  }

  v49 = v454;
  sub_100017D5C(v453, v454);
  sub_100017D5C(v48, v46 & 0xCFFFFFFFFFFFFFFFLL);
  v50 = sub_10041C094(v25, v49, v48, v46 & 0xCFFFFFFFFFFFFFFFLL);
  if ((v50 & 0xFF0000) == 0x60000)
  {
    if (qword_101694F60 == -1)
    {
LABEL_9:
      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177C220);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v455;
      if (v54)
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Invalid commandResponse", v56, 2u);
      }

      sub_10071E1B8(v25, v454, v48, v46, v43);
      v57 = 10;
LABEL_99:
      *v55 = v57;
      *(v55 + 1) = 0u;
      *(v55 + 3) = 0u;
      *(v55 + 20) = 267;
      return;
    }

LABEL_241:
    swift_once();
    goto LABEL_9;
  }

  v168 = v50;
  v428 = v46;
  v427 = v5;
  if (qword_101694F60 != -1)
  {
    swift_once();
  }

  v169 = type metadata accessor for Logger();
  sub_1000076D4(v169, qword_10177C220);
  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v460 = v173;
    *v172 = 33686018;
    *(v172 + 4) = v168;
    *(v172 + 6) = 2082;
    if (BYTE2(v168))
    {
      v174 = HIWORD(v168);
    }

    else
    {
      v174 = 6;
    }

    v175 = sub_10041B9C8(v174);
    v177 = sub_1000136BC(v175, v176, &v460);
    v48 = v452;

    *(v172 + 8) = v177;
    _os_log_impl(&_mh_execute_header, v170, v171, "commandResponse: Opcode %{public}hu. Status %{public}s", v172, 0x10u);
    sub_100007BAC(v173);
    v25 = v453;
  }

  v178 = v427;
  v179 = v449;
  v148 = v450;
  v180 = v444;
  *v449 = v444;
  v446(v179, v445, v148);
  v181 = v180;
  v182 = _dispatchPreconditionTest(_:)();
  v448(v179, v148);
  if ((v182 & 1) == 0)
  {
    __break(1u);
LABEL_243:
    swift_once();
LABEL_86:
    v199 = type metadata accessor for Logger();
    sub_1000076D4(v199, qword_10177C220);
    v200 = v454;
    sub_100017D5C(v25, v454);
    v201 = Logger.logObject.getter();
    v202 = static os_log_type_t.error.getter();
    v203 = v48;
    v204 = v48;
    v205 = v428;
    sub_10071E1B8(v25, v200, v203, v428, v148);
    if (os_log_type_enabled(v201, v202))
    {
      v206 = swift_slowAlloc();
      v207 = v200;
      v208 = swift_slowAlloc();
      v460 = v208;
      *v206 = 136315138;
      v209 = Data.hexString.getter();
      v211 = sub_1000136BC(v209, v210, &v460);

      *(v206 + 4) = v211;
      _os_log_impl(&_mh_execute_header, v201, v202, "Invalid format for icloudIdentifier %s", v206, 0xCu);
      sub_100007BAC(v208);

      v212 = v453;
      v213 = v428;
      sub_10071E1B8(v453, v207, v204, v428, v148);

      v161 = v212;
      v162 = v207;
      v163 = v204;
      v164 = v213;
    }

    else
    {

      sub_10071E1B8(v25, v200, v204, v205, v148);
      v161 = v25;
      v162 = v200;
      v163 = v204;
      v164 = v205;
    }

LABEL_117:
    sub_10071E1B8(v161, v162, v163, v164, v148);
    v249 = 10;
LABEL_118:
    *v43 = v249;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 267;
    return;
  }

  v183 = BYTE2(v168);
  if (!BYTE2(v168) || *(v178 + 120) != 2)
  {
    v225 = v449;
    v224 = v450;
    *v449 = v181;
    v446(v225, v445, v224);
    v226 = v181;
    v227 = _dispatchPreconditionTest(_:)();
    v448(v225, v224);
    if (v227)
    {
      if (v183 && *(v178 + 120) == 6)
      {
        v228 = Logger.logObject.getter();
        v229 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          _os_log_impl(&_mh_execute_header, v228, v229, "Accessory does not have a PrimaryKey and does not support verifyFindMyNetworkIdV2", v230, 2u);
        }

        v231 = sub_100F54748();
        if (v232 >> 60 == 15)
        {
LABEL_106:
          v233 = Logger.logObject.getter();
          v234 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v233, v234))
          {
            v235 = swift_slowAlloc();
            *v235 = 0;
            _os_log_impl(&_mh_execute_header, v233, v234, "Unable to generate FindMyNetworkId!", v235, 2u);
          }

          v143 = v25;
          v144 = v454;
          v145 = v48;
          v146 = v428;
          v147 = v43;
LABEL_109:
          sub_10071E1B8(v143, v144, v145, v146, v147);
          v217 = 10;
          goto LABEL_110;
        }

        v10 = v231;
        a1 = v232;
        v313 = v232 >> 62;
        if ((v232 >> 62) > 1)
        {
          v314 = v427;
          if (v313 != 2)
          {
            goto LABEL_260;
          }

          v356 = *(v231 + 16);
          v355 = *(v231 + 24);
          v267 = __OFSUB__(v355, v356);
          v315 = v355 - v356;
          if (!v267)
          {
LABEL_180:
            if (v315 == 32)
            {
              v358 = v449;
              v357 = v450;
              *v449 = v226;
              v446(v358, v445, v357);
              v359 = v226;
              v360 = _dispatchPreconditionTest(_:)();
              sub_10071E1B8(v25, v454, v452, v428, v43);
              v448(v358, v357);
              if (v360)
              {
                v361 = 5;
LABEL_183:
                *(v314 + 120) = v361;
                v263 = v455;
                *v455 = v10;
                v263[1] = a1;
                v263[2] = 0;
                v263[3] = 0;
LABEL_217:
                v264 = 1;
                goto LABEL_218;
              }

              goto LABEL_250;
            }

LABEL_260:
            __break(1u);
            goto LABEL_261;
          }

          __break(1u);
        }

        else
        {
          v314 = v427;
          if (!v313)
          {
            v315 = BYTE6(v232);
            goto LABEL_180;
          }
        }

        LODWORD(v315) = HIDWORD(v231) - v231;
        if (__OFSUB__(HIDWORD(v231), v231))
        {
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        v315 = v315;
        goto LABEL_180;
      }

      v251 = v449;
      v250 = v450;
      *v449 = v226;
      v446(v251, v445, v250);
      v252 = v226;
      v253 = _dispatchPreconditionTest(_:)();
      v448(v251, v250);
      if (v253)
      {
        if (v183 && *(v178 + 120) == 5)
        {
          v254 = Logger.logObject.getter();
          v255 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v254, v255))
          {
            v256 = swift_slowAlloc();
            *v256 = 0;
            _os_log_impl(&_mh_execute_header, v254, v255, "Accessory does not have a PrimaryKey and does not support verifyFindMyNetworkId, proceed to pairing", v256, 2u);
          }

          v257 = *(v427 + 112);
          v460 = 0;

          PassthroughSubject.send(_:)();

          sub_10071E1B8(v25, v454, v48, v428, v43);
          v217 = 8;
          goto LABEL_110;
        }

        v317 = v449;
        v316 = v450;
        *v449 = v252;
        v446(v317, v445, v316);
        v29 = v252;
        v318 = _dispatchPreconditionTest(_:)();
        v448(v317, v316);
        if ((v318 & 1) == 0)
        {
          goto LABEL_251;
        }

        if (v183 && *(v178 + 120) == 3)
        {
          v319 = Logger.logObject.getter();
          v320 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v319, v320))
          {
            v321 = swift_slowAlloc();
            *v321 = 0;
            _os_log_impl(&_mh_execute_header, v319, v320, "Accessory does not support verifyFindMyNetworkIdV2. Falling back to verifyFindMyNetworkId...", v321, 2u);
          }

          v322 = sub_100F54748();
          if (v323 >> 60 == 15)
          {
            goto LABEL_106;
          }

          v10 = v322;
          a1 = v323;
          v45 = v323 >> 62;
          if ((v323 >> 62) <= 1)
          {
            v314 = v427;
            if (!v45)
            {
              v324 = BYTE6(v323);
              goto LABEL_229;
            }

            goto LABEL_227;
          }

LABEL_223:
          v314 = v427;
          if (v45 != 2)
          {
            goto LABEL_263;
          }

          v417 = *(v10 + 2);
          v416 = *(v10 + 3);
          v267 = __OFSUB__(v416, v417);
          v324 = v416 - v417;
          if (!v267)
          {
LABEL_229:
            if (v324 == 32)
            {
              v419 = v449;
              v418 = v450;
              *v449 = v29;
              v446(v419, v445, v418);
              v420 = v29;
              v421 = _dispatchPreconditionTest(_:)();
              sub_10071E1B8(v25, v454, v452, v428, v43);
              v448(v419, v418);
              if (v421)
              {
                v361 = 2;
                goto LABEL_183;
              }

              goto LABEL_256;
            }

LABEL_263:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_227:
          LODWORD(v324) = HIDWORD(v10) - v10;
          if (__OFSUB__(HIDWORD(v10), v10))
          {
LABEL_258:
            __break(1u);
            goto LABEL_259;
          }

          v324 = v324;
          goto LABEL_229;
        }

        LOBYTE(v343) = v43;
        v345 = v449;
        v344 = v450;
        *v449 = v29;
        v446(v345, v445, v344);
        v346 = v29;
        v347 = _dispatchPreconditionTest(_:)();
        v448(v345, v344);
        if ((v347 & 1) == 0)
        {
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        v348 = *(v178 + 120);
        v219 = Logger.logObject.getter();
        v349 = static os_log_type_t.error.getter();
        v350 = os_log_type_enabled(v219, v349);
        v43 = v455;
        if (v350)
        {
          v351 = swift_slowAlloc();
          v352 = swift_slowAlloc();
          v460 = v352;
          *v351 = 136446210;
          if (v348 <= 2)
          {
            if (v348)
            {
              if (v348 == 1)
              {
                v353 = 0xEE0079654B797261;
                v354 = 0x6D6972507465672ELL;
              }

              else
              {
                v353 = 0x800000010135BE50;
                v354 = 0xD000000000000016;
              }
            }

            else
            {
              v353 = 0xE800000000000000;
              v354 = 0x6E776F6E6B6E752ELL;
            }
          }

          else if (v348 > 4)
          {
            if (v348 == 5)
            {
              v353 = 0x8000000101373690;
              v354 = 0xD000000000000027;
            }

            else
            {
              v353 = 0x8000000101373660;
              v354 = 0xD000000000000029;
            }
          }

          else if (v348 == 3)
          {
            v353 = 0x800000010135BE10;
            v354 = 0xD000000000000018;
          }

          else
          {
            v354 = 0xD000000000000014;
            v353 = 0x8000000101373640;
          }

          v422 = sub_1000136BC(v354, v353, &v460);

          *(v351 + 4) = v422;
          _os_log_impl(&_mh_execute_header, v219, v349, "Invalid state %{public}s", v351, 0xCu);
          sub_100007BAC(v352);

          v407 = v453;
          goto LABEL_239;
        }

LABEL_206:

        v407 = v25;
LABEL_239:
        sub_10071E1B8(v407, v454, v48, v428, v343);
        v249 = 8;
        goto LABEL_118;
      }

      goto LABEL_247;
    }

    goto LABEL_245;
  }

  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    *v186 = 0;
    _os_log_impl(&_mh_execute_header, v184, v185, "Accessory does not support verifyFindMyNetworkId. Getting iCloud identifier...", v186, 2u);
  }

  sub_10073F194();
  BinaryDecodable.init(data:)();
  v187 = v455;
  sub_10071E1B8(v25, v454, v48, v428, v43);
  *v187 = 1;
  v187[1] = 0;
  v187[2] = 0;
  v187[3] = 0;
  *(v187 + 32) = 2;
  *(v187 + 41) = 0;
}

void sub_100EDB164(uint64_t a1)
{
  v84 = a1;
  v83 = type metadata accessor for PrivacyAlertSupport.AlertInfo();
  v81 = *(v83 - 8);
  v2 = *(v81 + 64);
  v3 = __chkstk_darwin(v83);
  v78 = (&v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = v4;
  __chkstk_darwin(v3);
  v80 = &v71 - v5;
  v79 = type metadata accessor for LocalizationUtility.Table();
  v76 = *(v79 - 8);
  v6 = v76[8];
  __chkstk_darwin(v79);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v71 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
LABEL_6:
    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177C220);
    v41 = v78;
    sub_100EDE820(v23, v78, type metadata accessor for PrivacyAlertSupport.AlertInfo);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v94[0] = v45;
      *v44 = 136446210;
      v46 = *(v24 + 20);
      sub_100EDEAA8(&qword_1016A4210, &type metadata accessor for MACAddress);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_100EDE7C0(v41, type metadata accessor for PrivacyAlertSupport.AlertInfo);
      v50 = sub_1000136BC(v47, v49, v94);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Privacy alert has already been shown for %{public}s.", v44, 0xCu);
      sub_100007BAC(v45);
    }

    else
    {

      sub_100EDE7C0(v41, type metadata accessor for PrivacyAlertSupport.AlertInfo);
    }

    return;
  }

  v26 = v83;
  v23 = v84;
  (*(v9 + 16))(v13, v84 + *(v83 + 20), v8);
  *&v94[0] = sub_100ED4684();
  v27 = sub_100DED164(v15, v13);
  (*(v9 + 8))(v15, v8);
  sub_100ED4B5C(*&v94[0]);
  v24 = v26;
  if ((v27 & 1) == 0)
  {
    if (qword_101694F60 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v28 = (v23 + *(v26 + 32));
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    v31 = v76;
    v32 = v77;
    v33 = v76[13];
    v75 = (v76 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    LODWORD(v83) = enum case for LocalizationUtility.Table.default(_:);
    v34 = v79;
    v78 = v33;
    v33(v77);

    static LocalizationUtility.localizedString(key:table:)();
    v35 = v31[1];
    v74 = (v31 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v35;
    (v35)(v32, v34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10138BBE0;
    *(v36 + 56) = &type metadata for String;
    v37 = sub_100008C00();
    *(v36 + 32) = v30;
    *(v36 + 40) = v29;
    v39 = *v23;
    v38 = *(v23 + 8);
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v37;
    *(v36 + 64) = v37;
    *(v36 + 72) = v39;
    *(v36 + 80) = v38;
  }

  else
  {
    v51 = v76;
    v32 = v77;
    v52 = v76[13];
    v75 = (v76 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    LODWORD(v83) = enum case for LocalizationUtility.Table.default(_:);
    v34 = v79;
    v78 = v52;
    v52(v77);
    static LocalizationUtility.localizedString(key:table:)();
    v53 = v51[1];
    v74 = (v51 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v76 = v53;
    (v53)(v32, v34);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_101385D80;
    v56 = *v23;
    v55 = *(v23 + 8);
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_100008C00();
    *(v54 + 32) = v56;
    *(v54 + 40) = v55;
  }

  v57 = String.init(format:_:)();
  v72 = v58;
  v73 = v57;

  v59 = v83;
  v60 = v78;
  (v78)(v32, v83, v34);
  v79 = static LocalizationUtility.localizedString(key:table:)();
  v77 = v61;
  v62 = v76;
  (v76)(v32, v34);
  v60(v32, v59, v34);
  v63 = static LocalizationUtility.localizedString(key:table:)();
  v71 = v64;
  v62(v32, v34);
  v60(v32, v59, v34);
  v65 = static LocalizationUtility.localizedString(key:table:)();
  v67 = v66;
  v62(v32, v34);
  *&v86 = v79;
  *(&v86 + 1) = v77;
  *&v87 = v73;
  *(&v87 + 1) = v72;
  *&v88 = v63;
  *(&v88 + 1) = v71;
  *&v89 = v65;
  *(&v89 + 1) = v67;
  v90 = 0;
  v91 = 0;
  v92 = sub_100EDBAC4;
  v93 = 0;
  v94[2] = v88;
  v94[3] = v89;
  v94[4] = 0u;
  v94[5] = sub_100EDBAC4;
  v94[0] = v86;
  v94[1] = v87;
  type metadata accessor for SBAlertHelper();
  swift_allocObject();
  sub_1010A0C88(v94);
  sub_100E69244(&v86, &v85);
  sub_1010A1920();
  type metadata accessor for Transaction();
  v68 = v80;
  sub_100EDE820(v84, v80, type metadata accessor for PrivacyAlertSupport.AlertInfo);
  v69 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v70 = swift_allocObject();
  sub_100EDE758(v68, v70 + v69, type metadata accessor for PrivacyAlertSupport.AlertInfo);
  static Transaction.asyncTask(name:block:)();
  sub_100E692A0(&v86);
}

uint64_t sub_100EDBAC4()
{
  v0 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000B3A8(v3, &unk_101696AC0, &qword_101390A60);
  }

  (*(v5 + 32))(v8, v3, v4);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v12 = v10;
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    sub_10090403C(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 openSensitiveURL:v14 withOptions:isa];
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100EDBD0C()
{
  v1 = v0[2];
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v0[3] = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000034;
  *(v5 + 16) = 0x80000001013737B0;
  v9 = swift_task_alloc();
  v0[4] = v9;
  *(v9 + 16) = v1;

  return _swift_task_switch(sub_100EDBE70, v5, 0);
}

uint64_t sub_100EDBE70()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_10115BE7C(sub_100EDE750);
  v3 = v0[4];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10078BA74;
  v5 = v0[3];

  return sub_101163F78(v5);
}

unint64_t sub_100EDBF60(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for Endianness();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for Device();
  v28 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivacyAlertSupport.AlertInfo();
  (*(v5 + 16))(v8, a1 + v9[6], v4);
  v10 = Device.vendorID.getter();
  v11 = Device.productID.getter();
  v29 = v10;
  sub_100101824();
  v30 = FixedWidthInteger.data.getter();
  v31 = v12;
  v29 = v11;
  v13 = FixedWidthInteger.data.getter();
  v15 = v14;
  Data.append(_:)();
  sub_100016590(v13, v15);
  v16 = v30;
  v17 = v31;
  v26[1] = sub_100313D58(v30, v31);
  v18 = sub_100313A28(v16, v17);
  sub_100313B54(v16, v17);
  static Endianness.current.getter();
  sub_10012BF24();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v30))
  {
    v19 = 0;
  }

  else
  {
    v19 = v30;
  }

  v20 = sub_100E0EA64(v18, v19);
  sub_100016590(v16, v17);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101391790;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x80000001013737F0;
  v22 = v27;
  *(inited + 48) = (*(v27 + v9[7]) & 1) == 0;
  *(inited + 56) = 1;
  strcpy((inited + 64), "isFamilyBeacon");
  *(inited + 79) = -18;
  *(inited + 80) = *(v22 + v9[8] + 8) != 0;
  *(inited + 88) = 1;
  *(inited + 96) = 0x7954656369766564;
  *(inited + 104) = 0xEA00000000006570;
  v23 = String._bridgeToObjectiveC()();

  *(inited + 112) = v23;
  *(inited + 120) = 0;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x800000010135E720;
  *(inited + 144) = v20;
  *(inited + 152) = 1;
  v24 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  (*(v5 + 8))(v8, v28);
  return v24;
}

uint64_t sub_100EDC314(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 24);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_101694F60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C220);
  sub_100017D5C(a1, a2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a1;
    v24[4] = a2;
    v25 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v18;
    v22 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v14, v15, "didNotify data length %ld", v22, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v18) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v18 = v18;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EDC5F4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for BinaryDecodingError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v101 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for BinaryDecoder();
  v95 = *(v96 - 8);
  v13 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Bit();
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  v17 = __chkstk_darwin(v15);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v87 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    LOBYTE(v108) = 11;
    v109 = 1;
    a1(&v105);
    return sub_10000B3A8(&v105, &qword_101699380, &unk_1013918F0);
  }

  v22 = Strong;
  v100 = v20;
  v92 = v15;
  v23 = *(Strong + 80);
  v24 = *(v22 + 88);
  if (v24 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = 0xC000000000000000;
  if (v24 >> 60 != 15)
  {
    v26 = *(v22 + 88);
  }

  v103 = v25;
  v104 = v26;
  sub_10002E98C(v23, v24);
  sub_100017D5C(a4, a5);
  sub_100ED428C(1, a4, a5, &v105);
  v27 = v105;
  Data.append(_:)();
  sub_100016590(v27, *(&v27 + 1));
  v28 = v103;
  v29 = v104;
  v30 = *(v22 + 80);
  v31 = *(v22 + 88);
  *(v22 + 80) = v103;
  *(v22 + 88) = v29;
  sub_100017D5C(v28, v29);
  sub_100006654(v30, v31);
  if (qword_101694F60 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v98 = sub_1000076D4(v32, qword_10177C220);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v33, v34);
  v93 = v10;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v91 = a1;
    v88 = v37;
    *&v105 = v37;
    *v36 = 136315138;
    swift_beginAccess();
    v38 = a4;
    v89 = v9;
    v40 = v103;
    v39 = v104;
    sub_100017D5C(v103, v104);
    v41 = a2;
    v42 = Data.description.getter();
    v90 = v22;
    v43 = a5;
    v45 = v44;
    v46 = v40;
    a4 = v38;
    sub_100016590(v46, v39);
    v47 = v42;
    a2 = v41;
    v48 = sub_1000136BC(v47, v45, &v105);
    a5 = v43;
    v22 = v90;

    *(v36 + 4) = v48;
    v9 = v89;
    _os_log_impl(&_mh_execute_header, v33, v34, "localReadBuffer %s", v36, 0xCu);
    sub_100007BAC(v88);
    a1 = v91;
  }

  v49 = v100;
  v50 = sub_100017C08(a4, a5);
  if ((v50 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v105) = v50;
  sub_1000198E8();
  v51 = FixedWidthInteger.bits()();
  if (!*(v51 + 16))
  {

LABEL_17:
    sub_100EDE4D0();
    v63 = swift_allocError();
    *v64 = 1;
    swift_willThrow();
    sub_100016590(v103, v104);
    goto LABEL_19;
  }

  v90 = a2;
  v52 = v99;
  v53 = v51 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v54 = v49;
  v55 = v92;
  (*(v99 + 16))(v54, v53, v92);

  v56 = v97;
  (*(v52 + 104))(v97, enum case for Bit.one(_:), v55);
  sub_100EDEAA8(&qword_101698660, &type metadata accessor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v57 = v55;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v58 = v52 + 8;
  v59 = *(v52 + 8);
  v59(v56, v55);
  if (v105 == v102)
  {
    v97 = v59;
    v99 = v58;
    v91 = a1;
    v60 = v94;
    BinaryDecoder.init()();
    swift_beginAccess();
    v61 = v103;
    v62 = v104;
    sub_100017D5C(v103, v104);
    v89 = sub_100EDE524();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v61, v62);
    v80 = v105;
    v81 = v106;
    v82 = v107;
    v83 = *(v22 + 80);
    v84 = *(v22 + 88);
    *(v22 + 80) = xmmword_10138BBF0;
    sub_100006654(v83, v84);
    *(&v106 + 1) = &type metadata for AccessoryOwnerCommand;
    v107 = v89;
    v108 = sub_100DDA200();
    v85 = swift_allocObject();
    *&v105 = v85;
    *(v85 + 16) = v80;
    *(v85 + 32) = v81;
    *(v85 + 48) = v82;
    v109 = 0;
    sub_100EDE578(v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
    v91(&v105);

    sub_10071E1B8(v80, *(&v80 + 1), v81, *(&v81 + 1), v82);
    (*(v95 + 8))(v60, v96);
    (v97)(v100, v92);
    sub_10000B3A8(&v105, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v103, v104);
  }

  sub_100EDEAA8(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
  v63 = swift_allocError();
  (*(v93 + 104))(v65, enum case for BinaryDecodingError.insufficientData(_:), v9);
  swift_willThrow();
  v59(v100, v57);
  sub_100016590(v103, v104);
LABEL_19:
  v66 = v101;
  *&v105 = v63;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (!swift_dynamicCast())
  {
LABEL_25:

    sub_100017D5C(a4, a5);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    sub_100016590(a4, a5);
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v105 = v74;
      *v73 = 136315138;
      v75 = Data.description.getter();
      v77 = sub_1000136BC(v75, v76, &v105);

      *(v73 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failed to decode data %s", v73, 0xCu);
      sub_100007BAC(v74);
    }

    v78 = *(v22 + 80);
    v79 = *(v22 + 88);
    *(v22 + 80) = xmmword_10138BBF0;
    sub_100006654(v78, v79);
    *&v105 = v63;
    LOBYTE(v108) = 10;
    v109 = 1;
    swift_errorRetain();
    a1(&v105);

    return sub_10000B3A8(&v105, &qword_101699380, &unk_1013918F0);
  }

  v67 = v93;
  if ((*(v93 + 88))(v66, v9) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v67 + 8))(v66, v9);
    goto LABEL_25;
  }

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "insufficientData. Keep reading...", v70, 2u);
  }
}

uint64_t sub_100EDD164(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = *(a1 + 16);
    *(v14 + 24) = *a1;
    *(v14 + 40) = v15;
    *(v14 + 56) = *(a1 + 32);
    *(v14 + 64) = a2;
    v16 = sub_1000BC4D4(&qword_1016B3DC0, &qword_1013EF330);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_100EDE250(a1, v20);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100EDD330(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 56);
    v16 = *(Strong + 64);
    *(Strong + 56) = a1;
    *(Strong + 64) = a2;

    sub_100A5F79C(v15);
    BinaryEncoder.init()();
    v17 = a4[1];
    v25 = *a4;
    v26 = v17;
    LOBYTE(v27) = *(a4 + 32);
    sub_100DDA200();
    v18 = BinaryEncoder.encode<A>(_:)();
    v20 = v19;
    v21 = Data.chunked(into:)();
    v22 = sub_1001D97CC(v21);

    swift_beginAccess();
    sub_100398324(v22);
    swift_endAccess();
    sub_100EDD708(a5);
    sub_100016590(v18, v20);

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v28 = 267;
    a1(&v25);
    return sub_10000B3A8(&v25, &qword_1016B1CA0, &qword_1013918C0);
  }
}

uint64_t sub_100EDD708(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v72 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[3];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_beginAccess();
  v20 = v2[9];
  if (v20[2])
  {
    v75 = v11;
    v76 = v5;
    v77 = v4;
    swift_beginAccess();
    v4 = v20[4];
    v5 = v20[5];
    sub_100017D5C(v4, v5);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_101694F60 == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      v22 = sub_1000076D4(v21, qword_10177C220);
      sub_100017D5C(v4, v5);

      v74 = v22;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      sub_100016590(v4, v5);

      v25 = os_log_type_enabled(v23, v24);
      v79 = v4;
      if (v25)
      {
        v26 = swift_slowAlloc();
        *&v84 = swift_slowAlloc();
        *v26 = 136315394;
        v27 = Data.hexString.getter();
        v29 = sub_1000136BC(v27, v28, &v84);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v31 = sub_100A5AADC(v30);
        v33 = sub_1000136BC(v31, v32, &v84);

        *(v26 + 14) = v33;
        v4 = v79;
        _os_log_impl(&_mh_execute_header, v23, v24, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v26, 0x16u);
        swift_arrayDestroy();
      }

      v34 = swift_allocObject();
      *(v34 + 16) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0;
      *(v34 + 56) = 267;
      v35 = dispatch_group_create();
      dispatch_group_enter(v35);
      v78 = v5;
      v73 = a1;
      *&v84 = sub_100A59B98(v4, v5);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v35;

      v37 = v35;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
      Publisher.oneshot(_:)();

      static DispatchTime.now()();
      v38 = v75;
      + infix(_:_:)();
      v39 = *(v76 + 8);
      v40 = v9;
      v41 = v37;
      v42 = v77;
      v39(v40, v77);
      OS_dispatch_group.wait(timeout:)();
      v39(v38, v42);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "Timed out waiting for writeFuture", v45, 2u);
        }
      }

      swift_beginAccess();
      sub_1000D2A70(v34 + 16, &v84, &qword_1016B1CA0, &qword_1013918C0);
      if (v86)
      {
        v82 = v84;
        v83[0] = *v85;
        *(v83 + 9) = *&v85[9];
        sub_100101AA8(&v82, v80);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        v48 = os_log_type_enabled(v46, v47);
        v49 = v78;
        if (v48)
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138543362;
          sub_100101B58();
          swift_allocError();
          sub_100101AA8(v80, v52);
          v53 = _swift_stdlib_bridgeErrorToNSError();
          sub_100101B04(v80);
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&_mh_execute_header, v46, v47, "writeFuture error: %{public}@", v50, 0xCu);
          sub_10000B3A8(v51, &qword_10169BB30, &unk_10138B3C0);
        }

        else
        {

          sub_100101B04(v80);
        }

        v65 = v79;
        v66 = v2[7];
        if (v66)
        {
          v67 = v2[8];
          sub_100101B58();
          v68 = swift_allocError();
          sub_100101AA8(&v82, v69);
          v80[0] = v68;
          v81 = 256;

          v66(v80);
          sub_100A5F79C(v66);

          sub_100016590(v65, v49);
          sub_10000B3A8(v80, &qword_1016B1CA0, &qword_1013918C0);
        }

        else
        {
          sub_100016590(v79, v49);
        }

        sub_100101B04(&v82);
      }

      else
      {

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v80[0] = v59;
          *v58 = 134218242;
          *(v58 + 4) = *(v2[9] + 16);

          *(v58 + 12) = 2080;
          v60 = v2[9];

          v61 = Array.description.getter();
          v63 = v62;

          v64 = sub_1000136BC(v61, v63, v80);

          *(v58 + 14) = v64;
          _os_log_impl(&_mh_execute_header, v56, v57, "writeFuture success. writeQueue [%ld] %s", v58, 0x16u);
          sub_100007BAC(v59);
        }

        else
        {
        }

        v70 = v78;
        v71 = v79;
        sub_100EDD708(v73);

        sub_100016590(v71, v70);
      }
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v54 = v2[7];
  if (v54)
  {
    v55 = v2[8];
    v86 = 0;

    v54(&v84);
    sub_100A5F79C(v54);
    return sub_10000B3A8(&v84, &qword_1016B1CA0, &qword_1013918C0);
  }

  return result;
}

uint64_t sub_100EDE08C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);
  sub_100A5F79C(*(v0 + 56));
  v6 = *(v0 + 72);

  sub_100006654(*(v0 + 80), *(v0 + 88));
  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  return v0;
}

uint64_t sub_100EDE0F4()
{
  sub_100EDE08C();

  return swift_deallocClassInstance();
}

uint64_t sub_100EDE15C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_100EDE184()
{
  result = qword_1016BED98;
  if (!qword_1016BED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BED98);
  }

  return result;
}

uint64_t sub_100EDE1D8(uint64_t a1)
{
  if ((a1 + 1) < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_100EDE1EC()
{
  result = qword_1016BEDA0;
  if (!qword_1016BEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDA0);
  }

  return result;
}

uint64_t sub_100EDE2AC(uint64_t a1)
{
  v19 = *v1;
  v20 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[3];
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3[13];
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = v3[1];
  result = v12(v6, v2);
  if (v11)
  {
    *v6 = v10;
    v9(v6, v8, v2);
    v14 = _dispatchPreconditionTest(_:)();
    result = v12(v6, v2);
    if (v14)
    {
      *(v1 + 120) = 1;
      v15 = type metadata accessor for Transaction();
      __chkstk_darwin(v15);
      v16 = v19;
      v17 = v20;
      *(&v18 - 4) = v1;
      *(&v18 - 3) = v17;
      *(&v18 - 2) = v16;
      return static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100EDE4D0()
{
  result = qword_1016BEDA8;
  if (!qword_1016BEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDA8);
  }

  return result;
}

unint64_t sub_100EDE524()
{
  result = qword_1016BEDB0;
  if (!qword_1016BEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEDB0);
  }

  return result;
}

uint64_t sub_100EDE578(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = (a4 >> 60) & 3 | (4 * a5);
  if (v6 <= 2)
  {
    goto LABEL_12;
  }

  if (((a4 >> 60) & 3 | (4 * a5)) <= 5u)
  {
    if (v6 == 3)
    {
      sub_100017D5C(result, a2);
      a2 = a4 & 0xCFFFFFFFFFFFFFFFLL;
      result = a3;

      return sub_100017D5C(result, a2);
    }

    if (v6 != 4)
    {
      return result;
    }

LABEL_12:

    return sub_100017D5C(result, a2);
  }

  if (v6 == 6)
  {
    goto LABEL_12;
  }

  if (v6 == 7)
  {
  }

  return result;
}

uint64_t type metadata accessor for PrivacyAlertSupport.AlertInfo()
{
  result = qword_1016BEEB0;
  if (!qword_1016BEEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EDE684()
{
  v2 = *(type metadata accessor for PrivacyAlertSupport.AlertInfo() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_100EDBCEC(v0 + v3);
}

uint64_t sub_100EDE758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EDE7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100EDE820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EDE90C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100EDC314(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100EDE93C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Device() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v2 + v6;
  v9 = *(v2 + 16);
  sub_100ED7B98(a1, v8, *v7, *(v7 + 8), a2);
}

uint64_t sub_100EDE9EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_100ED77B4(a1, v4);
  *a2 = result;
  return result;
}

unint64_t sub_100EDEA48()
{
  result = qword_1016BEE38;
  if (!qword_1016BEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEE38);
  }

  return result;
}

uint64_t sub_100EDEAA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100EDEB18()
{
  type metadata accessor for MACAddress();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v1 <= 0x3F)
    {
      sub_1000E3404();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100EDEBE0()
{
  result = qword_1016BEEF8;
  if (!qword_1016BEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEEF8);
  }

  return result;
}

uint64_t static AirPodsMCSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsMCSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

unint64_t sub_100EDED2C(uint64_t a1)
{
  *(a1 + 8) = sub_100EDED5C();
  result = sub_1009A2000();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100EDED5C()
{
  result = qword_1016BEF08;
  if (!qword_1016BEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEF08);
  }

  return result;
}

uint64_t type metadata accessor for FindMyAccessoryFamilyKeyEnvelope()
{
  result = qword_1016BEF68;
  if (!qword_1016BEF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EDEE34()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100EDEEB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100EDEEB8()
{
  if (!qword_1016A5680)
  {
    type metadata accessor for FamilyCryptoKeysV2();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A5680);
    }
  }
}

uint64_t sub_100EDEF10(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BEFA8, &unk_1013EF798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EDF650();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_100EDF740(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
    v15 = *(v3 + *(MyAccessoryFamilyKeyEnvelope + 20));
    v14 = 1;
    sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
    sub_100EDF6A4(&qword_1016A56E0, &qword_1016A56E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(MyAccessoryFamilyKeyEnvelope + 24));
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EDF178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016BEFB8, &qword_1013EF7A8);
  v25 = *(v28 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v28);
  v9 = &v22 - v8;
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
  v11 = *(*(MyAccessoryFamilyKeyEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EDF650();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v25;
  v15 = v26;
  v22 = v13;
  v23 = a1;
  LOBYTE(v30) = 0;
  sub_100EDF740(&qword_101698300, &type metadata accessor for UUID);
  v18 = v27;
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v22, v18, v4);
  sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
  v29 = 1;
  v27 = sub_100EDF6A4(&qword_1016A5730, &qword_1016A5738);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v22[*(MyAccessoryFamilyKeyEnvelope + 20)] = v30;
  v29 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v17);
  v19 = *(MyAccessoryFamilyKeyEnvelope + 24);
  v20 = v22;
  *&v22[v19] = v30;
  sub_100EDF788(v20, v24);
  sub_100007BAC(v23);
  return sub_100EDF7EC(v20);
}

uint64_t sub_100EDF5A8(uint64_t a1)
{
  v2 = sub_100EDF650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EDF5E4(uint64_t a1)
{
  v2 = sub_100EDF650();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EDF650()
{
  result = qword_1016BEFB0;
  if (!qword_1016BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFB0);
  }

  return result;
}

uint64_t sub_100EDF6A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A56D8, &qword_1013B2B00);
    sub_100EDF740(a2, type metadata accessor for FamilyCryptoKeysV2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100EDF740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EDF788(uint64_t a1, uint64_t a2)
{
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
  (*(*(MyAccessoryFamilyKeyEnvelope - 8) + 16))(a2, a1, MyAccessoryFamilyKeyEnvelope);
  return a2;
}

uint64_t sub_100EDF7EC(uint64_t a1)
{
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
  (*(*(MyAccessoryFamilyKeyEnvelope - 8) + 8))(a1, MyAccessoryFamilyKeyEnvelope);
  return a1;
}

unint64_t sub_100EDF85C()
{
  result = qword_1016BEFC0;
  if (!qword_1016BEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFC0);
  }

  return result;
}

unint64_t sub_100EDF8B4()
{
  result = qword_1016BEFC8;
  if (!qword_1016BEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFC8);
  }

  return result;
}

unint64_t sub_100EDF90C()
{
  result = qword_1016BEFD0;
  if (!qword_1016BEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BEFD0);
  }

  return result;
}

uint64_t sub_100EDF960()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C238);
  v1 = sub_1000076D4(v0, qword_10177C238);
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CE28);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EDFA28()
{
  v1[5] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = *(*(sub_1000BC4D4(&qword_1016B28A0, &unk_101393D00) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100EDFAFC, v0, 0);
}

uint64_t sub_100EDFAFC()
{
  v1 = v0[5];
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_100EDFBD4;
  v5 = v0[7];
  v6 = v0[5];

  return unsafeBlocking<A>(_:)(v5, sub_100EE2AB8, v6, v4);
}

uint64_t sub_100EDFBD4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100EDFCEC, v2, 0);
}

uint64_t sub_100EDFCEC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(*(v0[9] - 8) + 56))(v1, 0, 1);
  v4 = OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription;
  swift_beginAccess();
  sub_1002372B0(v1, v3 + v4);
  swift_endAccess();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = sub_100EE2D60(&qword_1016BF108, type metadata accessor for OwnDevicePublishActivityService);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v3;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_1013EFA88, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100EDFEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5[3] = type metadata accessor for OwnDevicePublishActivityService();
  v5[4] = &off_1016597E8;
  v5[0] = a1;

  sub_10014F468(v5, a2);
  return sub_100007BAC(v5);
}

uint64_t sub_100EDFF48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v4[3] = *a4;
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return _swift_task_switch(sub_100EE0004, a4, 0);
}

uint64_t sub_100EE0004()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for XPCActivity();
  static DispatchQoS.background.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_100EE0150;
  v8 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000027, 0x8000000101373960, v8, &unk_1013EFA98, v4, &unk_1013EFAA8, v5);
}

uint64_t sub_100EE0150(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100EE0268, v3, 0);
}

uint64_t sub_100EE0268()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);
  *(v2 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity) = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100EE02E8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for XPCActivity.Criteria();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100EE04A4, 0, 0);
}

uint64_t sub_100EE04A4()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 136) = qword_10177B348;
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_100EE05A4;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100EE05A4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100EE06BC, 0, 0);
}

uint64_t sub_100EE06BC()
{
  v1 = v0[2];
  v2 = sub_10107406C(v1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

LABEL_11:
    v14 = v0[13];
    v15 = v0[14];
    v16 = v0[12];
    sub_100748620(v0[5], v16);
    if ((*(v15 + 48))(v16, 1, v14) != 1)
    {
      v32 = v0[16];
      v33 = v0[13];
      v34 = v0[14];
      v35 = v0[12];
      v36 = v0[4];

      v37 = *(v34 + 32);
      v37(v32, v35, v33);
      v37(v36, v32, v33);
      goto LABEL_20;
    }

    v17 = v0[11];
    v18 = v0[9];
    v19 = v0[10];
    sub_10000B3A8(v0[12], &qword_10169E370, &qword_1013BA3F0);
    sub_101074EBC(v1);
    v21 = v20;
    sub_101074EB0(v1);
    v23 = v22;

    (*(v19 + 104))(v17, enum case for XPCActivity.Priority.utility(_:), v18);
    if (v21 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v21 < 9.22337204e18)
    {
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v23 > -9.22337204e18)
        {
          if (v23 < 9.22337204e18)
          {
            v25 = v0[14];
            v24 = v0[15];
            v47 = v0[13];
            v26 = v0[7];
            v27 = v0[8];
            v28 = v0[6];
            v45 = v0[11];
            v46 = v0[4];
            sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
            v29 = *(v26 + 72);
            v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_101391790;
            static XPCActivity.Criteria.Options.allowBattery.getter();
            static XPCActivity.Criteria.Options.requiresClassC.getter();
            static XPCActivity.Criteria.Options.requiresNetwork.getter();
            static XPCActivity.Criteria.Options.preventDeviceSleep.getter();
            v0[3] = v31;
            sub_100EE2D60(&qword_101696CE0, &type metadata accessor for XPCActivity.Criteria.Options);
            sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
            sub_100359D10();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
            (*(v25 + 32))(v46, v24, v47);
LABEL_20:
            v13 = 0;
            goto LABEL_21;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_11;
  }

  if (qword_101694F70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C238);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Service disabled, not registering own device publish activity.", v12, 2u);
  }

  v13 = 1;
LABEL_21:
  v38 = v0[15];
  v39 = v0[16];
  v41 = v0[11];
  v40 = v0[12];
  v42 = v0[8];
  (*(v0[14] + 56))(v0[4], v13, 1, v0[13]);

  v43 = v0[1];

  return v43();
}

uint64_t sub_100EE0B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v5 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.State();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100EE0C98, a3, 0);
}

uint64_t sub_100EE0C98()
{
  v40 = v0;
  if (qword_101694F70 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C238);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    buf = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *buf = 136315138;
    sub_100EE2D60(&qword_101696CD0, &type metadata accessor for XPCActivity.State);
    v36 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v39);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v36, "Own device publish activity state: %s.", buf, 0xCu);
    sub_100007BAC(v38);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[10];
  v20 = v0[11];
  v22 = v0[9];
  v6(v20, v0[6], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      v30 = async function pointer to daemon.getter[1];
      v31 = swift_task_alloc();
      v0[13] = v31;
      *v31 = v0;
      v31[1] = sub_100EE1160;

      return daemon.getter();
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      v32 = v0[5];
      type metadata accessor for XPCActivity();
      sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity);
      v34 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100EE10F4, v34, v33);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v35 = v0[10] + 8;
      v17(v0[11], v0[9]);
    }
  }

  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100EE10F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100EE2DAC, v1, 0);
}

uint64_t sub_100EE1160(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_100EE2D60(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100EE2D60(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v6 = v12;
  v6[1] = sub_100EE133C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100EE133C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;

  v7 = v4[14];
  if (v1)
  {
    a1 = v4[7];

    v8 = sub_100EE2DA8;
  }

  else
  {

    v8 = sub_100EE1494;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100EE1494()
{
  v1 = *(v0[16] + 136);
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_100EE15A4;
  v4 = v0[16];

  return (v6)(v0 + 2, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_100EE15A4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;

  if (v0)
  {
    v4 = *(v2 + 128);

    v5 = sub_100EE16E0;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 56);

    v5 = sub_100EE2DA8;
    v6 = v8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100EE16E0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100EE174C, v2, 0);
}

uint64_t sub_100EE174C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 144) = qword_10177B348;

  return _swift_task_switch(sub_100EE1840, 0, 0);
}

uint64_t sub_100EE1840()
{
  v1 = *(v0 + 144);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_100EE1904;
  v4 = *(v0 + 144);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100EE1904()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_100EE1A1C, 0, 0);
}

uint64_t sub_100EE1A1C()
{
  v1 = v0[7];
  v0[20] = v0[4];
  return _swift_task_switch(sub_100EE1A40, v1, 0);
}

uint64_t sub_100EE1A40()
{
  v1 = sub_10107406C(v0[20]);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = *(v0[7] + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);
  v0[21] = v8;
  if (!v8)
  {
    v13 = v0[8];
    (*(v0[10] + 56))(v13, 1, 1, v0[9]);
    sub_10000B3A8(v13, &unk_10169BA88, &qword_101395670);
LABEL_13:
    v14 = v0[5];
    type metadata accessor for XPCActivity();
    sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity);
    v16 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100EE1EA4, v16, v15);
  }

  v9 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
  v17 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_100EE1C84;
  v11 = v0[8];

  return v17(v11);
}

uint64_t sub_100EE1C84()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100EE1DB0, v3, 0);
}

uint64_t sub_100EE1DB0()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 0, 1, v0[9]);
  sub_10000B3A8(v1, &unk_10169BA88, &qword_101395670);
  v2 = v0[5];
  type metadata accessor for XPCActivity();
  sub_100EE2D60(&qword_101696CC0, &type metadata accessor for XPCActivity);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100EE1EA4, v4, v3);
}

uint64_t sub_100EE1EA4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100EE1F10, v1, 0);
}

uint64_t sub_100EE1F10()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100EE1F84()
{
  v1 = *(v0 + 120);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_configurationSubscription, &qword_1016B28A0, &unk_101393D00);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for OwnDevicePublishActivityService()
{
  result = qword_1016BF010;
  if (!qword_1016BF010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EE2040()
{
  sub_100236DB4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100EE20EC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for OwnDevicePublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100EE2198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for OwnDevicePublishActivityService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100EE2260(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for OwnDevicePublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100EE230C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100EDFA28();
}

uint64_t sub_100EE2398(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for OwnDevicePublishActivityService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100EE2444()
{
  v1 = *v0;
  type metadata accessor for OwnDevicePublishActivityService();
  sub_100EE2D60(&unk_1016B1080, type metadata accessor for OwnDevicePublishActivityService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100EE24B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  type metadata accessor for AnyKeyPath();
  swift_getKeyPath();
  v8 = static AnyKeyPath.== infix(_:_:)();

  if (v8)
  {
    if (qword_101694F70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C238);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "service state changed. Reevaluating xpc activity.", v13, 2u);
    }

    v14 = sub_10107406C(a1);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        return result;
      }
    }

    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v2;

    sub_10025EDD4(0, 0, v7, &unk_1013EFA78, v21);
  }

  return result;
}

uint64_t sub_100EE2748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(sub_1000BC4D4(&unk_10169BA88, &qword_101395670) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EE27E8, a4, 0);
}

uint64_t sub_100EE27E8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12searchpartyd31OwnDevicePublishActivityService_activity);
  v0[4] = v1;
  if (v1)
  {
    v2 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v9 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1008BFBAC;
    v4 = v0[3];

    return v9(v4);
  }

  else
  {
    v6 = v0[3];
    v7 = type metadata accessor for XPCActivity.State();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000B3A8(v6, &unk_10169BA88, &qword_101395670);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100EE2A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EE2748(a1, v4, v5, v6);
}

uint64_t sub_100EE2AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100EDFF48(a1, v4, v5, v6);
}

uint64_t sub_100EE2B74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100EE02E8(a1, a2);
}

uint64_t sub_100EE2C24(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014744;

  return sub_100EE0B8C(a1, a2, v7);
}

uint64_t sub_100EE2CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1003A214C();
}

uint64_t sub_100EE2D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EE2DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C250);
  sub_1000076D4(v0, qword_10177C250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100EE2E34()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016BF110);
  v1 = sub_1000076D4(v0, qword_1016BF110);
  if (qword_101694F78 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C250);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100EE2EFC()
{
  v1 = type metadata accessor for URL();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_100EE2FB8, 0, 0);
}

uint64_t sub_100EE2FB8()
{
  v46 = v0;
  v0[18] = _swiftEmptyArrayStorage;
  v1 = v0 + 18;
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = sub_1000076D4(v4, qword_10177BA58);
  (*(v3 + 16))(v2, v5, v4);
  v6 = objc_allocWithZone(SAPathInfo);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v6 initWithURL:v8];
  v0[22] = v10;

  v44 = *(v3 + 8);
  v44(v2, v4);
  v11 = v10;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = *v1;
  if (*v1 >> 62)
  {
    if (v13 < 0)
    {
      v38 = *v1;
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
    v14 = v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return _swift_continuation_await(v12);
  }

  v15 = v13 & 0xC000000000000001;

  v16 = 0;
  v42 = v13;
  v43 = v0;
  v41 = v13 & 0xC000000000000001;
  v40 = v14;
  do
  {
    if (v15)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v13 + 8 * v16 + 32);
    }

    v28 = v27;
    if (qword_101694F80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_1016BF110);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v17 = v0[21];
      v18 = v0[19];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446210;
      v21 = [v30 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100EE3EC0(&qword_1016B14E0, 255, &type metadata accessor for URL);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v44(v17, v18);
      v25 = v22;
      v14 = v40;
      v26 = sub_1000136BC(v25, v24, &v45);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v31, v32, "Registering path: %{public}s.", v19, 0xCu);
      sub_100007BAC(v20);
      v15 = v41;

      v13 = v42;
      v0 = v43;
    }

    else
    {
    }

    ++v16;
  }

  while (v14 != v16);

LABEL_19:
  v33 = [objc_opt_self() defaultManager];
  v0[23] = v33;
  sub_100EE3E74();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;

  v35 = String._bridgeToObjectiveC()();
  v0[25] = v35;
  v0[2] = v0;
  v0[3] = sub_100EE34E0;
  v36 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016BB860, &unk_1013E8818);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100DDDDE4;
  v0[13] = &unk_1016598C0;
  v0[14] = v36;
  [v33 registerPaths:isa forBundleID:v35 completionHandler:v0 + 10];
  v12 = (v0 + 2);

  return _swift_continuation_await(v12);
}

uint64_t sub_100EE34E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100EE3670;
  }

  else
  {
    v3 = sub_100EE35F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100EE35F0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100EE3670()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  if (qword_101694F80 != -1)
  {
    swift_once();
  }

  v5 = v0[26];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016BF110);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[22];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to attribute files: %{public}@.", v12, 0xCu);
    sub_100288C6C(v13);
  }

  else
  {
  }

  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100EE385C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FileAttributionService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100EE3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FileAttributionService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100EE39C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FileAttributionService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100EE3A70()
{
  *(v1 + 16) = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100EE3B30, v0, 0);
}

uint64_t sub_100EE3B30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_10025EDD4(0, 0, v2, &unk_1013EFBD0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100EE3C20(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FileAttributionService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100EE3CC8()
{
  v1 = *v0;
  type metadata accessor for FileAttributionService();
  sub_100EE3EC0(&qword_1016B1018, v2, type metadata accessor for FileAttributionService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100EE3DC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_100EE2EFC();
}

unint64_t sub_100EE3E74()
{
  result = qword_1016BF1E8;
  if (!qword_1016BF1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016BF1E8);
  }

  return result;
}

uint64_t sub_100EE3EC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for NotifyMeResponseResult()
{
  result = qword_1016BF248;
  if (!qword_1016BF248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EE3F8C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100EE4010@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016BF2B0, &qword_1013EFD70);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for NotifyMeResponseResult();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EE4D84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_100EE4DD8(&qword_101698300, &type metadata accessor for UUID);
  v19 = v31;
  v20 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_100EE4E20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_100EE4E74(v22, v27);
  sub_100007BAC(a1);
  return sub_100EE4ED8(v22);
}

uint64_t sub_100EE4388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100EE4410(uint64_t a1)
{
  v2 = sub_100EE4C7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE444C(uint64_t a1)
{
  v2 = sub_100EE4C7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100EE4488@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100EE4AF8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100EE44B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F43737574617473;
  }

  else
  {
    v4 = 0x7069726373627573;
  }

  if (v3)
  {
    v5 = 0xEE0064496E6F6974;
  }

  else
  {
    v5 = 0xEA00000000006564;
  }

  if (*a2)
  {
    v6 = 0x6F43737574617473;
  }

  else
  {
    v6 = 0x7069726373627573;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006564;
  }

  else
  {
    v7 = 0xEE0064496E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100EE456C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EE4600()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100EE4680()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EE4710@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C348, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100EE4770(uint64_t *a1@<X8>)
{
  v2 = 0x7069726373627573;
  if (*v1)
  {
    v2 = 0x6F43737574617473;
  }

  v3 = 0xEE0064496E6F6974;
  if (*v1)
  {
    v3 = 0xEA00000000006564;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100EE47C0()
{
  if (*v0)
  {
    result = 0x6F43737574617473;
  }

  else
  {
    result = 0x7069726373627573;
  }

  *v0;
  return result;
}

uint64_t sub_100EE480C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C348, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100EE4870(uint64_t a1)
{
  v2 = sub_100EE4D84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE48AC(uint64_t a1)
{
  v2 = sub_100EE4D84();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EE490C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EFFD0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100EE4994()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1013EFFD0[v1]);
  return Hasher._finalize()();
}

uint64_t *sub_100EE49E0@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 200)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 204)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 500)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100EE4A8C()
{
  result = qword_1016BF280;
  if (!qword_1016BF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF280);
  }

  return result;
}

void *sub_100EE4AF8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BF288, &qword_1013EFD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_100EE4C7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016BF298, &qword_1013EFD68);
    sub_100EE4CD0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_100EE4C7C()
{
  result = qword_1016BF290;
  if (!qword_1016BF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF290);
  }

  return result;
}

unint64_t sub_100EE4CD0()
{
  result = qword_1016BF2A0;
  if (!qword_1016BF2A0)
  {
    sub_1000BC580(&qword_1016BF298, &qword_1013EFD68);
    sub_100EE4DD8(&qword_1016BF2A8, type metadata accessor for NotifyMeResponseResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2A0);
  }

  return result;
}

unint64_t sub_100EE4D84()
{
  result = qword_1016BF2B8;
  if (!qword_1016BF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2B8);
  }

  return result;
}

uint64_t sub_100EE4DD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100EE4E20()
{
  result = qword_1016BF2C0;
  if (!qword_1016BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2C0);
  }

  return result;
}

uint64_t sub_100EE4E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotifyMeResponseResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EE4ED8(uint64_t a1)
{
  v2 = type metadata accessor for NotifyMeResponseResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EE4F34()
{
  result = qword_1016BF2C8;
  if (!qword_1016BF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2C8);
  }

  return result;
}

unint64_t sub_100EE4FAC()
{
  result = qword_1016BF2D0;
  if (!qword_1016BF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2D0);
  }

  return result;
}

unint64_t sub_100EE5004()
{
  result = qword_1016BF2D8;
  if (!qword_1016BF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2D8);
  }

  return result;
}

unint64_t sub_100EE505C()
{
  result = qword_1016BF2E0;
  if (!qword_1016BF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2E0);
  }

  return result;
}

unint64_t sub_100EE50B4()
{
  result = qword_1016BF2E8;
  if (!qword_1016BF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2E8);
  }

  return result;
}

unint64_t sub_100EE510C()
{
  result = qword_1016BF2F0;
  if (!qword_1016BF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2F0);
  }

  return result;
}

unint64_t sub_100EE5164()
{
  result = qword_1016BF2F8;
  if (!qword_1016BF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF2F8);
  }

  return result;
}

void sub_100EE51B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v76 - v9;
  v89 = type metadata accessor for UUID();
  v11 = *(v89 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v89);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = &v76 - v16;
  v90 = [a1 encryptedValues];
  if (CKRecord.recordType.getter() == 0x61636F4C65666153 && v17 == 0xEC0000006E6F6974)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      sub_100EE87E8();
      swift_allocError();
      *v49 = 0;
      goto LABEL_22;
    }
  }

  v85 = a2;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v21 = v11[6];
  v22 = v89;
  if (v21(v10, 1, v89) == 1)
  {
    sub_1002EA198(v10);
    sub_100EE87E8();
    swift_allocError();
    *v23 = 1;
LABEL_22:
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v86 = v11;
  v24 = v11[4];
  v83 = v11 + 4;
  v84 = v21;
  v82 = v24;
  v24(v88, v10, v22);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v90 objectForKeyedSubscript:v25];

  if (!v26 || (v91 = v26, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80), (swift_dynamicCast() & 1) == 0))
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10138BBE0;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_100008C00();
    *(v45 + 32) = 0xD000000000000011;
    *(v45 + 40) = 0x80000001013678E0;
    *(v45 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v45 + 104) = sub_10013A2D8();
    *(v45 + 72) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v46 = a1;
    v47 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100EE87E8();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();

LABEL_27:
    swift_unknownObjectRelease();
    (v86[1])(v88, v89);
    return;
  }

  v27 = v93;
  v28 = String._bridgeToObjectiveC()();
  v29 = [v90 objectForKeyedSubscript:v28];

  if (!v29 || (v93 = v29, (swift_dynamicCast() & 1) == 0))
  {

    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE400000000000000;
    v52 = 1701667182;
LABEL_25:
    *(v50 + 32) = v52;
LABEL_26:
    *(v50 + 40) = v51;
    *(v50 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v50 + 104) = sub_10013A2D8();
    *(v50 + 72) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v53 = a1;
    v54 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100EE87E8();
    swift_allocError();
    *v55 = 2;
    swift_willThrow();

    goto LABEL_27;
  }

  v30 = v92;
  v81 = v91;
  v31 = String._bridgeToObjectiveC()();
  v32 = [v90 objectForKeyedSubscript:v31];

  if (!v32 || (v91 = v32, (swift_dynamicCast() & 1) == 0))
  {

    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE800000000000000;
    v52 = 0x656475746974616CLL;
    goto LABEL_25;
  }

  v80 = v30;
  v33 = v93;
  v34 = String._bridgeToObjectiveC()();
  v35 = [v90 objectForKeyedSubscript:v34];

  if (!v35 || (v91 = v35, (swift_dynamicCast() & 1) == 0))
  {

    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    *(v50 + 32) = 0x64757469676E6F6CLL;
    v51 = 0xE900000000000065;
    goto LABEL_26;
  }

  v36 = v93;
  v37 = String._bridgeToObjectiveC()();
  v38 = [v90 objectForKeyedSubscript:v37];

  if (!v38 || (v91 = v38, (swift_dynamicCast() & 1) == 0))
  {

    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10138BBE0;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    v51 = 0xE600000000000000;
    *(v50 + 32) = 0x737569646172;
    goto LABEL_26;
  }

  v39 = v93;
  v40 = v87;
  v41 = sub_100EE6970(6u, a1);
  if (v40)
  {
    (v86[1])(v88, v89);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = v41;
    v43 = type metadata accessor for SafeLocation();
    v44 = v85;
    *(v85 + v43[12]) = v42;
    *(v44 + v43[11]) = sub_100EE6D48(5u, a1);
    *(v44 + v43[6]) = sub_100EE7120(0, a1);
    v87 = objc_autoreleasePoolPush();
    v56 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
    v78 = v43;
    v57 = v56;
    [a1 encodeSystemFieldsWithCoder:v56];
    [v57 finishEncoding];
    v58 = [v57 encodedData];
    v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v59;

    objc_autoreleasePoolPop(v87);
    v61 = v77;
    v60 = v78;
    *v44 = v79;
    v44[1] = v61;
    (v86[2])(v44 + v60[5], v88, v89);
    v79 = v27[2];
    if (v79)
    {
      v62 = 0;
      v63 = v27 + 5;
      v87 = _swiftEmptyArrayStorage;
      while (v62 < v27[2])
      {
        v64 = *(v63 - 1);
        v65 = *v63;

        UUID.init(uuidString:)();

        v66 = v89;
        if (v84(v8, 1, v89) == 1)
        {
          sub_1002EA198(v8);
        }

        else
        {
          v82(v15, v8, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_100A5BFE0(0, v87[2] + 1, 1, v87);
          }

          v68 = v87[2];
          v67 = v87[3];
          v69 = v68 + 1;
          if (v68 >= v67 >> 1)
          {
            v77 = v68 + 1;
            v72 = sub_100A5BFE0(v67 > 1, v68 + 1, 1, v87);
            v69 = v77;
            v87 = v72;
          }

          v70 = v86;
          v71 = v87;
          v87[2] = v69;
          v82(&v71[((*(v70 + 80) + 32) & ~*(v70 + 80)) + v70[9] * v68], v15, v89);
        }

        ++v62;
        v63 += 2;
        if (v79 == v62)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
    }

    else
    {
      v87 = _swiftEmptyArrayStorage;
LABEL_42:

      swift_unknownObjectRelease();
      (v86[1])(v88, v89);
      v73 = v78;
      v74 = v85;
      *(v85 + v78[13]) = v87;
      v75 = (v74 + v73[7]);
      *v75 = v81;
      v75[1] = v80;
      *(v74 + v73[8]) = v33;
      *(v74 + v73[9]) = v36;
      *(v74 + v73[10]) = v39;
    }
  }
}

uint64_t sub_100EE5E10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a1 type];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = 4;
      goto LABEL_13;
    }

    if (v11 == 4)
    {
      v12 = 5;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v11)
  {
    v12 = 1;
    goto LABEL_13;
  }

  if (v11 == 1)
  {
    v12 = 2;
    goto LABEL_13;
  }

  if (v11 != 2)
  {
LABEL_8:
    HIDWORD(v35) = 0;
    goto LABEL_14;
  }

  v12 = 3;
LABEL_13:
  HIDWORD(v35) = v12;
LABEL_14:
  v13 = [a1 name];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = [a1 location];
  [v18 coordinate];
  v20 = v19;

  v21 = [a1 location];
  [v21 coordinate];
  v23 = v22;

  v24 = [a1 location];
  [v24 horizontalAccuracy];
  v26 = v25;

  v27 = [a1 location];
  v28 = [v27 referenceFrame];

  v29 = [a1 approvalState];
  if (v29 >= 4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  if (v28 == 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2 * (v28 == 2);
  }

  *a3 = xmmword_10138C660;
  v32 = type metadata accessor for SafeLocation();
  result = (*(v6 + 32))(&a3[v32[5]], v9, v5);
  a3[v32[6]] = BYTE4(v35);
  v34 = &a3[v32[7]];
  *v34 = v15;
  v34[1] = v17;
  *&a3[v32[8]] = v20;
  *&a3[v32[9]] = v23;
  *&a3[v32[10]] = v26;
  a3[v32[11]] = v31;
  a3[v32[12]] = v30;
  *&a3[v32[13]] = v36;
  return result;
}

unint64_t sub_100EE6298(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x636E657265666572;
    v6 = 0x6C61766F72707061;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x64757469676E6F6CLL;
    if (a1 != 5)
    {
      v7 = 0x737569646172;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 1701869940;
    v3 = 1701667182;
    if (a1 != 3)
    {
      v3 = 0x656475746974616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_100EE63EC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = v0[1];
  Data.hash(into:)();
  v9 = type metadata accessor for SafeLocation();
  v10 = v9[5];
  v25[1] = sub_100EE8748(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[6]));
  v11 = (v1 + v9[7]);
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = *(v1 + v9[8]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  Hasher._combine(_:)(*&v14);
  v15 = *(v1 + v9[9]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  Hasher._combine(_:)(*&v15);
  v16 = *(v1 + v9[10]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  Hasher._combine(_:)(*&v16);
  Hasher._combine(_:)(*(v1 + v9[11]));
  Hasher._combine(_:)(*(v1 + v9[12]));
  v17 = *(v1 + v9[13]);
  Hasher._combine(_:)(*(v17 + 16));
  v18 = *(v17 + 16);
  if (v18)
  {
    v21 = *(v3 + 16);
    v19 = v3 + 16;
    v20 = v21;
    v22 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v23 = *(v19 + 56);
    v24 = (v19 - 8);
    do
    {
      v20(v6, v22, v2);
      dispatch thunk of Hashable.hash(into:)();
      (*v24)(v6, v2);
      v22 += v23;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_100EE66E0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C268);
  sub_1000076D4(v0, qword_10177C268);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100EE684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100EE957C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100EE6874(uint64_t a1)
{
  v2 = sub_100EE8BC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EE68B0(uint64_t a1)
{
  v2 = sub_100EE8BC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EE68EC()
{
  Hasher.init(_seed:)();
  sub_100EE63EC();
  return Hasher._finalize()();
}

Swift::Int sub_100EE6930()
{
  Hasher.init(_seed:)();
  sub_100EE63EC();
  return Hasher._finalize()();
}

unint64_t sub_100EE6970(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = v15, v15 >= 4))
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_10138BBE0;
    v10 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v11 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v11 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v11 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v11 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v10)
      {
        v4 = 1701667182;
      }
    }

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    v9[4] = v4;
    v9[5] = v11;
    v9[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v9[13] = sub_10013A2D8();
    v9[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v12 = a2;
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100EE87E8();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100EE6D48(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = v15, v15 >= 3))
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_10138BBE0;
    v10 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v11 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v11 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v11 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v11 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v10)
      {
        v4 = 1701667182;
      }
    }

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    v9[4] = v4;
    v9[5] = v11;
    v9[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v9[13] = sub_10013A2D8();
    v9[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v12 = a2;
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100EE87E8();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100EE7120(unsigned __int8 a1, id a2)
{
  v4 = 1701869940;
  v5 = [a2 encryptedValues];
  v6 = String._bridgeToObjectiveC()();

  [v5 objectForKeyedSubscript:v6];
  swift_unknownObjectRelease();

  sub_1000BC4D4(&qword_1016BF320, &qword_1013F0080);
  if (!swift_dynamicCast() || (result = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v15), result == 6))
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_10138BBE0;
    v10 = a1;
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          v4 = 0x6C61766F72707061;
          v11 = 0xED00006574617453;
        }

        else
        {
          v4 = 0xD000000000000011;
          v11 = 0x80000001013678E0;
        }
      }

      else if (a1 == 4)
      {
        v11 = 0xE600000000000000;
        v4 = 0x737569646172;
      }

      else
      {
        v4 = 0x636E657265666572;
        v11 = 0xEE00656D61724665;
      }
    }

    else if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v11 = 0xE800000000000000;
        v4 = 0x656475746974616CLL;
      }

      else
      {
        v4 = 0x64757469676E6F6CLL;
        v11 = 0xE900000000000065;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v10)
      {
        v4 = 1701667182;
      }
    }

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    v9[4] = v4;
    v9[5] = v11;
    v9[12] = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    v9[13] = sub_10013A2D8();
    v9[9] = a2;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v12 = a2;
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100EE87E8();
    swift_allocError();
    *v14 = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_100EE7500(id *a1)
{
  v2 = v1;
  v47 = type metadata accessor for UUID();
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v47);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v9 = v49;
  v8 = v50;
  v10 = type metadata accessor for SafeLocation();
  v11 = (v2 + v10[7]);
  v13 = *v11;
  v12 = *(v11 + 1);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (*&v9 == *&v13 && v8 == v12)
  {

    goto LABEL_9;
  }

  v15 = *v11;
  v16 = *(v11 + 1);
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
LABEL_7:
    v51 = &type metadata for String;
    v52 = &protocol witness table for String;
    v49 = v13;
    v50 = v12;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v18 = *(v2 + v10[8]);
  if ((v50 & 1) != 0 || v49 != v18)
  {
    v51 = &type metadata for Double;
    v52 = &protocol witness table for Double;
    v49 = v18;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v19 = *(v2 + v10[9]);
  if ((v50 & 1) != 0 || v49 != v19)
  {
    v51 = &type metadata for Double;
    v52 = &protocol witness table for Double;
    v49 = v19;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v20 = *(v2 + v10[10]);
  if ((v50 & 1) != 0 || v49 != v20)
  {
    v51 = &type metadata for Double;
    v52 = &protocol witness table for Double;
    v49 = v20;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v21 = *(v2 + v10[11]);
  if ((v50 & 1) != 0 || *&v49 != *&v21)
  {
    v51 = &type metadata for Int;
    v52 = &protocol witness table for Int;
    v49 = v21;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v22 = *(v2 + v10[12]);
  if ((v50 & 1) != 0 || *&v49 != *&v22)
  {
    v51 = &type metadata for Int;
    v52 = &protocol witness table for Int;
    v49 = v22;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  *&v23 = *(v2 + v10[6]);
  if ((v50 & 1) != 0 || *&v49 != *&v23)
  {
    v51 = &type metadata for Int;
    v52 = &protocol witness table for Int;
    v49 = v23;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v43[1] = v6;
  if ((v50 & 1) != 0 || *&v49 != *&v22)
  {
    v51 = &type metadata for Int;
    v52 = &protocol witness table for Int;
    v49 = v22;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v24 = *(v2 + v10[13]);
  v25 = *(v24 + 16);
  v26 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  if (v25)
  {
    v43[0] = v7;
    v49 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    sub_101123BB8(0, v25, 0);
    v26 = v49;
    v27 = v45 + 16;
    v28 = *(v45 + 16);
    v29 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v44 = *(v45 + 72);
    v45 = v28;
    v30 = (v27 - 8);
    do
    {
      v32 = v46;
      v31 = v47;
      (v45)(v46, v29, v47);
      v33 = UUID.uuidString.getter();
      v35 = v34;
      (*v30)(v32, v31);
      v49 = v26;
      v37 = *(*&v26 + 16);
      v36 = *(*&v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_101123BB8((v36 > 1), v37 + 1, 1);
        v26 = v49;
      }

      *(*&v26 + 16) = v37 + 1;
      v38 = (*&v26 + 16 * v37);
      v38[4] = v33;
      v38[5] = v35;
      v29 += v44;
      --v25;
    }

    while (v25);
    v7 = v43[0];
  }

  *&v39 = COERCE_DOUBLE(CKRecord.subscript.getter());
  if (*&v39 != 0.0 && (v49 = *&v39, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80), (swift_dynamicCast() & 1) != 0) && (v40 = sub_10038ED80(v48, *&v26), , (v40 & 1) != 0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKeyedSubscript:v42];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100EE7BE8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BF360, &qword_1013F0098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100EE8BC4();
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
    v12 = type metadata accessor for SafeLocation();
    v13 = v12[5];
    LOBYTE(v23) = 1;
    type metadata accessor for UUID();
    sub_100EE8748(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[6]);
    v22 = 2;
    sub_100EE8DD4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v12[7]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + v12[8]);
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + v12[9]);
    LOBYTE(v23) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + v12[10]);
    LOBYTE(v23) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[11]);
    v22 = 7;
    sub_100EE8E28();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v23) = *(v3 + v12[12]);
    v22 = 8;
    sub_100EE8E7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + v12[13]);
    v22 = 9;
    sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
    sub_100EE8ED0(&qword_1016BF380, &qword_101698330);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100EE7FE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for UUID();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016BF328, &unk_1013F0088);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = type metadata accessor for SafeLocation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v37 = a1;
  sub_1000035D0(a1, v17);
  sub_100EE8BC4();
  v36 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v37);
  }

  v18 = v34;
  v30 = v15;
  v31 = v12;
  v39 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v30;
  *v30 = v38;
  LOBYTE(v38) = 1;
  sub_100EE8748(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29[1] = v4;
  v20 = v31;
  (*(v33 + 32))(&v19[v31[5]], v7, v4);
  v39 = 2;
  sub_100EE8C18();
  v29[0] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[v20[6]] = v38;
  LOBYTE(v38) = 3;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = &v19[v20[7]];
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v38) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v19[v20[8]] = v24;
  LOBYTE(v38) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v19[v20[9]] = v25;
  LOBYTE(v38) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  *&v19[v20[10]] = v26;
  v39 = 7;
  sub_100EE8C6C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[v20[11]] = v38;
  v39 = 8;
  sub_100EE8CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[v20[12]] = v38;
  sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v39 = 9;
  sub_100EE8ED0(&qword_1016CBC30, &qword_101698300);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v36, v35);
  v27 = v30;
  *&v30[v31[13]] = v38;
  sub_100EE8D14(v27, v32);
  sub_100007BAC(v37);
  return sub_100EE8D78(v27);
}

uint64_t sub_100EE8678(uint64_t a1)
{
  *(a1 + 8) = sub_100EE8748(&unk_1016BF300, type metadata accessor for SafeLocation);
  result = sub_100EE8748(&unk_1016B14D0, type metadata accessor for SafeLocation);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SafeLocation()
{
  result = qword_1016BF3E0;
  if (!qword_1016BF3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100EE8748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100EE8790(uint64_t a1)
{
  result = sub_100EE8748(&unk_1016B14C0, type metadata accessor for SafeLocation);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100EE87E8()
{
  result = qword_1016BF310;
  if (!qword_1016BF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF310);
  }

  return result;
}

double sub_100EE883C(void *a1)
{
  v2 = v1;
  [v1 center];
  v5 = v4;
  [v1 center];
  v7 = [objc_allocWithZone(CLLocation) initWithLatitude:v5 longitude:v6];
  [v7 setReferenceFrame:{objc_msgSend(v2, "geoReferenceFrame")}];
  [a1 center];
  v9 = v8;
  [a1 center];
  v11 = [objc_allocWithZone(CLLocation) initWithLatitude:v9 longitude:v10];
  [v11 setReferenceFrame:{objc_msgSend(a1, "geoReferenceFrame")}];
  [v7 distanceFromLocation:v11];
  v13 = v12;

  return v13;
}

double sub_100EE8968(void *a1)
{
  v3 = sub_100EE883C(a1);
  [v1 radius];
  v5 = v4;
  [a1 radius];
  v7 = 0.0;
  if (v5 + v6 >= v3)
  {
    v8 = v5 * v5;
    v9 = v6 * v6;
    if (v3 <= vabdd_f64(v6, v5))
    {
      if (v9 >= v8)
      {
        v15 = v5 * v5;
      }

      else
      {
        v15 = v6 * v6;
      }

      return v15 * 3.14159265;
    }

    else
    {
      v10 = v6;
      v11 = acos((v3 * v3 + v8 - v9) / (v3 * (v5 + v5)));
      v12 = v11 + v11;
      v13 = acos((v3 * v3 + v9 - v8) / (v3 * (v10 + v10)));
      v14 = v9 * ((v13 + v13) * 0.5) - v9 * 0.5 * sin(v13 + v13);
      return v8 * (v12 * 0.5) - v8 * 0.5 * sin(v12) + v14;
    }
  }

  return v7;
}

uint64_t sub_100EE8A90(uint64_t a1, uint64_t a2)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SafeLocation();
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || *(a1 + v4[11]) != *(a2 + v4[11]) || *(a1 + v4[12]) != *(a2 + v4[12]))
  {
    return 0;
  }

  v11 = v4[13];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1003902F4(v12, v13);
}

unint64_t sub_100EE8BC4()
{
  result = qword_1016BF330;
  if (!qword_1016BF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF330);
  }

  return result;
}

unint64_t sub_100EE8C18()
{
  result = qword_1016BF338;
  if (!qword_1016BF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF338);
  }

  return result;
}

unint64_t sub_100EE8C6C()
{
  result = qword_1016BF340;
  if (!qword_1016BF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF340);
  }

  return result;
}

unint64_t sub_100EE8CC0()
{
  result = qword_1016BF348;
  if (!qword_1016BF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF348);
  }

  return result;
}

uint64_t sub_100EE8D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EE8D78(uint64_t a1)
{
  v2 = type metadata accessor for SafeLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EE8DD4()
{
  result = qword_1016BF368;
  if (!qword_1016BF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF368);
  }

  return result;
}

unint64_t sub_100EE8E28()
{
  result = qword_1016BF370;
  if (!qword_1016BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF370);
  }

  return result;
}

unint64_t sub_100EE8E7C()
{
  result = qword_1016BF378;
  if (!qword_1016BF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF378);
  }

  return result;
}

uint64_t sub_100EE8ED0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_100EE8748(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100EE8F6C()
{
  sub_101125550(0, 1, 1);
  v1 = _swiftEmptyArrayStorage[2];
  v0 = _swiftEmptyArrayStorage[3];
  v2 = v0 >> 1;
  v3 = v1 + 1;
  if (v0 >> 1 <= v1)
  {
    sub_101125550((v0 > 1), v1 + 1, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v3;
  *(&_swiftEmptyArrayStorage[4] + v1) = 2;
  v4 = v1 + 2;
  if (v2 < (v1 + 2))
  {
    sub_101125550((v0 > 1), v1 + 2, 1);
    v0 = _swiftEmptyArrayStorage[3];
    v2 = v0 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v3) = 3;
  v5 = v1 + 3;
  if (v2 < (v1 + 3))
  {
    sub_101125550((v0 > 1), v1 + 3, 1);
  }

  result = _swiftEmptyArrayStorage;
  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 4;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v1 + 4) > (v7 >> 1))
  {
    sub_101125550((v7 > 1), v1 + 4, 1);
    result = _swiftEmptyArrayStorage;
  }

  _swiftEmptyArrayStorage[2] = v1 + 4;
  *(&_swiftEmptyArrayStorage[4] + v5) = 5;
  return result;
}

void sub_100EE9140()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100EE920C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}