uint64_t sub_100D33120(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  *(v5 + 504) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  v6 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 112) = v8;
  v9 = *(v8 - 8);
  *(v5 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v11 = type metadata accessor for OwnerPeerTrust();
  *(v5 + 136) = v11;
  v12 = *(v11 - 8);
  *(v5 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharingCircle();
  *(v5 + 176) = v14;
  v15 = *(v14 - 8);
  *(v5 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100D33340, 0, 0);
}

uint64_t sub_100D33340()
{
  v22 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_10177BF80);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received handleCircleTrustAck -- identifier: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_100D335C8;

  return daemon.getter();
}

uint64_t sub_100D335C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  v3[29] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[30] = v6;
  v7 = type metadata accessor for Daemon();
  v3[31] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[32] = v9;
  v10 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService);
  *v6 = v12;
  v6[1] = sub_100D337BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D337BC(uint64_t a1)
{
  v3 = *(*v2 + 240);
  v4 = *v2;
  v4[33] = a1;
  v4[34] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100D35DE8, 0, 0);
  }

  else
  {
    v5 = v4[29];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[35] = v7;
    *v7 = v4;
    v7[1] = sub_100D33930;

    return daemon.getter();
  }
}

uint64_t sub_100D33930(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *v1;
  v3[36] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[37] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100D33AE8;
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D33AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v10 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {
    v6 = sub_100D35FD0;
    v7 = 0;
  }

  else
  {
    v8 = v4[36];

    v6 = sub_100D33C24;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100D33C4C()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_100D33D28;
  v3 = *(v0 + 320);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_100D33D28()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return _swift_task_switch(sub_100D33E24, 0, 0);
}

uint64_t sub_100D33E40()
{
  v1 = *(v0 + 304);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100D33F2C;
  v5 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100D33F2C()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_100D34044, v2, 0);
}

uint64_t sub_100D34044()
{
  v1 = v0[38];

  v0[43] = v0[6];

  return _swift_task_switch(sub_100D340B4, 0, 0);
}

uint64_t sub_100D340B4()
{
  v44 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 104);
  v6 = *(v0 + 64);
  *(swift_task_alloc() + 16) = v6;
  sub_1012BC194(sub_100D4A658, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = *(v0 + 216);
    sub_10000B3A8(*(v0 + 104), &unk_1016AFA00, &qword_10138C4D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "ownerSharingCircle cannot be found", v10, 2u);
    }

    v11 = *(v0 + 264);

    sub_100D487D8();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = *(v0 + 304);
    v14 = *(v0 + 216);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136446210;
      swift_getErrorValue();
      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      v21 = *(v0 + 32);
      v22 = Error.localizedDescription.getter();
      v24 = sub_1000136BC(v22, v23, &v43);

      *(v17 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {
    }

    v34 = *(v0 + 200);
    v33 = *(v0 + 208);
    v35 = *(v0 + 192);
    v37 = *(v0 + 160);
    v36 = *(v0 + 168);
    v38 = *(v0 + 152);
    v39 = *(v0 + 128);
    v41 = *(v0 + 96);
    v40 = *(v0 + 104);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    sub_100D4A2D4(*(v0 + 104), v25, type metadata accessor for OwnerSharingCircle);
    sub_100D4A580(v25, v26, type metadata accessor for OwnerSharingCircle);
    v27 = swift_task_alloc();
    *(v0 + 352) = v27;
    *v27 = v0;
    v27[1] = sub_100D344A4;
    v28 = *(v0 + 264);
    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    v31 = *(v0 + 504);

    return sub_100E86158(v31, v29, v30);
  }
}

uint64_t sub_100D344A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_100D361C4;
  }

  else
  {
    v5 = sub_100D345B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D345B8()
{
  v73 = v0;
  v1 = v0[45];
  if (!*(v1 + 16))
  {
    goto LABEL_5;
  }

  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v0[18] + 80);
  sub_100D4A580(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for OwnerPeerTrust);

  sub_100D4A2D4(v4, v5, type metadata accessor for OwnerPeerTrust);
  v7 = *(v2 + *(v3 + 32));
  v0[47] = v7;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v0[15];
    v10 = sub_1003A85FC(*(v7 + 16), 0);
    v11 = sub_1003CC2CC(&v72, v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8, v7);

    sub_1000128F8();
    if (v11 != v8)
    {
      __break(1u);
LABEL_5:

LABEL_11:
      v29 = v0[27];
      v30 = v0[10];

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v34 = v0[9];
        v33 = v0[10];
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v72 = v36;
        *v35 = 141558275;
        *(v35 + 4) = 1752392040;
        *(v35 + 12) = 2081;
        *(v35 + 14) = sub_1000136BC(v34, v33, &v72);
        _os_log_impl(&_mh_execute_header, v31, v32, "Missing ownerPeerTrust for %{private,mask.hash}s.", v35, 0x16u);
        sub_100007BAC(v36);
      }

      v37 = v0[33];
      v38 = v0[25];
      sub_100D487D8();
      swift_allocError();
      *v39 = 2;
      swift_willThrow();

      v40 = 0;
LABEL_17:
      sub_100D4A3EC(v38, type metadata accessor for OwnerSharingCircle);
      v48 = v0[38];
      v49 = v0[27];
      swift_errorRetain();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v72 = v53;
        *v52 = 136446210;
        swift_getErrorValue();
        v55 = v0[2];
        v54 = v0[3];
        v56 = v0[4];
        v57 = Error.localizedDescription.getter();
        v59 = sub_1000136BC(v57, v58, &v72);

        *(v52 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v52, 0xCu);
        sub_100007BAC(v53);

        if (!v40)
        {
          goto LABEL_22;
        }
      }

      else
      {

        if (!v40)
        {
LABEL_22:
          sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

          v61 = v0[25];
          v60 = v0[26];
          v62 = v0[24];
          v64 = v0[20];
          v63 = v0[21];
          v65 = v0[19];
          v66 = v0[16];
          v68 = v0[12];
          v67 = v0[13];

          v69 = v0[1];

          return v69();
        }
      }

      sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
      goto LABEL_22;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = sub_1005C8A30(v0[20] + *(v0[17] + 20), v10);

  if (!v12)
  {
    sub_100D4A3EC(v0[20], type metadata accessor for OwnerPeerTrust);
    goto LABEL_11;
  }

  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[24];
  sub_100D4A580(v0[20], v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A580(v13, v15, type metadata accessor for OwnerSharingCircle);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[24];
  if (v18)
  {
    v20 = v0[22];
    v21 = v0[14];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v72 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = *(v20 + 20);
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_100D4A3EC(v19, type metadata accessor for OwnerSharingCircle);
    v28 = sub_1000136BC(v25, v27, &v72);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Data update on circle trust acceptance. Update %{private,mask.hash}s", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    sub_100D4A3EC(v19, type metadata accessor for OwnerSharingCircle);
  }

  v41 = v0[46];
  v42 = v0[26];
  v43 = v0[21];
  v44 = v0[12];
  v45 = swift_task_alloc();
  *(v45 + 16) = v42;
  *(v45 + 24) = v43;
  sub_100EC0C48(sub_100D4882C, v44);
  if (v41)
  {
    v46 = v0[33];
    v38 = v0[25];
    v47 = v0[20];

    sub_100D4A3EC(v47, type metadata accessor for OwnerPeerTrust);
    v40 = 1;
    goto LABEL_17;
  }

  v71 = v0[38];

  return _swift_task_switch(sub_100D34D00, v71, 0);
}

uint64_t sub_100D34D28()
{
  v1 = v0[48];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[49] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = sub_100D34E20;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100D34E20()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_100D352D8;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_100D34F3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D34F3C()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_100D34FCC;

  return daemon.getter();
}

uint64_t sub_100D34FCC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[54] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v7 = v5;
  v7[1] = sub_100D35184;
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D35184(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 432);
  v7 = *v2;

  v8 = *(v4 + 424);
  if (v1)
  {

    v9 = sub_100D363F4;
  }

  else
  {

    *(v5 + 440) = a1;
    v9 = sub_100D355C8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D352D8()
{
  v1 = *(v0 + 392);

  return _swift_task_switch(sub_100D35340, 0, 0);
}

uint64_t sub_100D35340()
{
  v30 = v0;
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[12];

  sub_100D4A3EC(v3, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v4, &qword_1016975C8, &qword_10138C1F0);
  v5 = v0[51];
  v6 = v0[38];
  v7 = v0[27];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = Error.localizedDescription.getter();
    v17 = sub_1000136BC(v15, v16, &v29);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {
  }

  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

  v19 = v0[25];
  v18 = v0[26];
  v20 = v0[24];
  v22 = v0[20];
  v21 = v0[21];
  v23 = v0[19];
  v24 = v0[16];
  v26 = v0[12];
  v25 = v0[13];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100D355C8()
{
  v1 = *(v0 + 440);

  return _swift_task_switch(sub_100D35638, v1, 0);
}

uint64_t sub_100D35638()
{
  v1 = *(v0 + 440);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100D35744, 0, 0);
}

uint64_t sub_100D35744()
{
  v20 = v0;
  v1 = v0[55];

  v2 = v0[47];
  v3 = v0[33];
  v4 = v0[25];
  v5 = v0[20];
  v6 = v0[12];

  sub_100D4A3EC(v5, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v4, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v6, &qword_1016975C8, &qword_10138C1F0);
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v0[47];
    v9 = v0[15];
    v10 = sub_1003A85FC(*(v2 + 16), 0);
    v11 = sub_1003CC2CC(&v19, v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8);

    sub_1000128F8();
    if (v11 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[56] = v10;
  v0[7] = v10;
  v12 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v13 = swift_task_alloc();
  v0[57] = v13;
  v14 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v15 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v13 = v0;
  v13[1] = sub_100D35964;
  v16 = v0[38];
  v17 = v0[17];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4AE8, v16, v14, v17, v15);
}

uint64_t sub_100D35964(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 448);

    *(v4 + 472) = a1;

    return _swift_task_switch(sub_100D35AAC, 0, 0);
  }
}

uint64_t sub_100D35AAC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[21];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_10013D090(sub_100D48928, v4, v1);
  v0[60] = v5;

  v6 = swift_task_alloc();
  v0[61] = v6;
  *v6 = v0;
  v6[1] = sub_100D35BA0;
  v7 = v0[26];
  v8 = v0[11];

  return sub_100D29C1C(v7, v5);
}

uint64_t sub_100D35BA0()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 480);

  if (v0)
  {
    v6 = sub_100D3660C;
  }

  else
  {
    v6 = sub_100D35CD4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D35CD4()
{
  v1 = v0[38];

  v2 = v0[26];
  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D35DE8()
{
  v26 = v0;
  v1 = v0[29];

  v2 = v0[34];
  v3 = v0[27];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v25);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[24];
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[19];
  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100D35FD0()
{
  v27 = v0;
  v1 = v0[36];
  v2 = v0[33];

  v3 = v0[39];
  v4 = v0[27];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  v21 = v0[16];
  v23 = v0[12];
  v22 = v0[13];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100D361C4()
{
  v28 = v0;
  v1 = v0[33];
  v2 = v0[25];

  sub_100D4A3EC(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[46];
  v4 = v0[38];
  v5 = v0[27];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on handleCircleTrustAccept, update iCloud data: %{public}s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {
  }

  sub_100D4A3EC(v0[26], type metadata accessor for OwnerSharingCircle);

  v17 = v0[25];
  v16 = v0[26];
  v18 = v0[24];
  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  v22 = v0[16];
  v24 = v0[12];
  v23 = v0[13];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100D363F4()
{
  v19 = v0;
  v1 = v0[47];
  v2 = v0[33];
  v3 = v0[25];
  v4 = v0[20];
  v5 = v0[12];

  sub_100D4A3EC(v4, type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v3, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v5, &qword_1016975C8, &qword_10138C1F0);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[47];
    v8 = v0[15];
    v9 = sub_1003A85FC(*(v1 + 16), 0);
    v10 = sub_1003CC2CC(&v18, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);

    sub_1000128F8();
    if (v10 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[56] = v9;
  v0[7] = v9;
  v11 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
  v12 = swift_task_alloc();
  v0[57] = v12;
  v13 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v14 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0);
  *v12 = v0;
  v12[1] = sub_100D35964;
  v15 = v0[38];
  v16 = v0[17];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013E4AE8, v15, v13, v16, v14);
}

uint64_t sub_100D3660C()
{
  v1 = v0[62];
  v2 = v0[27];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[62];
  v7 = v0[38];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in handleCircleTrustAccept, send update message: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[26];
  sub_100D4A3EC(v0[21], type metadata accessor for OwnerPeerTrust);
  sub_100D4A3EC(v11, type metadata accessor for OwnerSharingCircle);
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];
  v18 = v0[16];
  v20 = v0[12];
  v19 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100D36814(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OwnerPeerTrust() + 20);
  v5 = *(type metadata accessor for OwnerSharingCircle() + 32);
  v6 = *(a1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v5);
  result = sub_100FFB6DC(1, a2 + v4, isUniquelyReferenced_nonNull_native);
  *(a1 + v5) = v9;
  return result;
}

uint64_t sub_100D3688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100D3695C, a3, 0);
}

uint64_t sub_100D3695C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_1002E9E50;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100D48948, v6, v9);
}

BOOL sub_100D36AD0()
{
  v0 = *(type metadata accessor for OwnerPeerTrust() + 20);
  type metadata accessor for UUID();
  sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100D36B7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 + 64);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100D36C5C, 0, 0);
}

uint64_t sub_100D36C5C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v15 = *(v0 + 32);
  v14 = *(v0 + 96);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v18 = *(v0 + 80);
  v19 = *(v6 + 136);
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v7, v1, v4);
  *(v10 + v8) = v6;
  v11 = v10 + v9;
  *v11 = v14;
  *(v11 + 8) = v15;
  *(v11 + 16) = v16;
  *(v10 + ((v9 + 31) & 0xFFFFFFFFFFFFFFF8)) = v17;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100D36E28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 192) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100D36EFC, 0, 0);
}

uint64_t sub_100D36EFC()
{
  v24 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[10] = sub_1000076D4(v5, qword_10177BF80);
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handleCircleTrustDecline -- identifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[13] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_100D37194;

  return daemon.getter();
}

uint64_t sub_100D37194(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  *(v3 + 120) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 128) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_100D37378;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D37378(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_100D37C18;
    v6 = 0;
  }

  else
  {
    v7 = v3[15];
    v8 = v3[3];

    v5 = sub_100D374A0;
    v6 = v8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D374A0()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3753C, 0, 0);
}

uint64_t sub_100D3753C()
{
  v1 = *(*(v0 + 152) + 56);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_100D375D0;

  return sub_100507C6C();
}

uint64_t sub_100D375D0(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 193) = a1;

  return _swift_task_switch(sub_100D376E8, v3, 0);
}

uint64_t sub_100D376E8()
{
  if (*(v0 + 193) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_100D37A90;
    v2 = *(v0 + 136);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = *(v0 + 192);

    return sub_100199BAC(v5, v6, v3, v4);
  }

  else
  {
    *(v0 + 168) = *(*(v0 + 24) + 144);

    return _swift_task_switch(sub_100D377D8, 0, 0);
  }
}

uint64_t sub_100D377D8()
{
  v31 = v0;
  if (*(v0 + 168))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    (*(v0 + 88))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    if (v5)
    {
      v29 = *(v0 + 136);
      v28 = *(v0 + 104);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v28(v8, v10);
      v16 = sub_1000136BC(v13, v15, &v30);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring non-me device handleCircleTrustDecline for identifier: %{private,mask.hash}s.", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {
      v24 = *(v0 + 136);

      v7(v8, v10);
    }

    v26 = *(v0 + 64);
    v25 = *(v0 + 72);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_100D37A90;
    v18 = *(v0 + 136);
    v19 = *(v0 + 32);
    v20 = *(v0 + 40);
    v21 = *(v0 + 16);
    v22 = *(v0 + 192);

    return sub_100199BAC(v21, v22, v19, v20);
  }
}

uint64_t sub_100D37A90()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100D37D88;
  }

  else
  {
    v3 = sub_100D37BA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D37BA4()
{
  v1 = v0[17];

  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D37C18()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[10];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleTrustDecline: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D37D88()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[10];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleTrustDecline: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D37EF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 472) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  v6 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v5 + 80) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 96) = v8;
  v9 = *(v8 - 8);
  *(v5 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 120) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v13 = type metadata accessor for MemberSharingCircle();
  *(v5 + 136) = v13;
  v14 = *(v13 - 8);
  *(v5 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v5 + 160) = v16;
  v17 = *(v16 - 8);
  *(v5 + 168) = v17;
  *(v5 + 176) = *(v17 + 64);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100D3811C, v4, 0);
}

uint64_t sub_100D3811C()
{
  v16 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v2, qword_10177BF80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_1000136BC(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sharing Circles updated: %s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_100D382F4;

  return daemon.getter();
}

uint64_t sub_100D382F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 224);
  v12 = *v1;
  v3[29] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[30] = v6;
  v7 = type metadata accessor for Daemon();
  v3[31] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[32] = v9;
  v10 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_100D384E8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D384E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 264) = a1;

  v7 = *(v3 + 232);
  if (v1)
  {
    v8 = *(v4 + 72);

    return _swift_task_switch(sub_100D3AB38, v8, 0);
  }

  else
  {

    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    *(v4 + 272) = v10;
    *v10 = v6;
    v10[1] = sub_100D38698;

    return daemon.getter();
  }
}

uint64_t sub_100D38698(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v5 = *v1;
  v3[35] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[36] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100D38850;
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D38850(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = a1;

  v7 = *(v3 + 280);
  if (v1)
  {
    v8 = *(v4 + 72);

    return _swift_task_switch(sub_100D3A9F8, v8, 0);
  }

  else
  {

    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    *(v4 + 304) = v10;
    *v10 = v6;
    v10[1] = sub_100D38A00;

    return daemon.getter();
  }
}

uint64_t sub_100D38A00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;
  v3[39] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[40] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100D42DB8(&unk_1016AF840, 255, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_100D38BB8;
  v10 = v3[32];
  v11 = v3[31];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D38BB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v5 = *v2;
  *(*v2 + 328) = a1;

  v6 = *(v3 + 312);
  v7 = *(v3 + 72);
  if (v1)
  {

    v8 = sub_100D3A8AC;
  }

  else
  {

    v8 = sub_100D38D1C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D38D1C()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 336) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 464) = v6;
    *(v0 + 344) = *(v4 + 56);
    *(v0 + 352) = v5;
    v7 = *(v0 + 208);
    *(v0 + 360) = 0;
    *(v0 + 368) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = swift_task_alloc();
    *(v0 + 376) = v8;
    *v8 = v0;
    v8[1] = sub_100D38EE0;
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = *(v0 + 472);

    return sub_100D4E560(v11, v9, v10);
  }

  else
  {
    v13 = *(v0 + 328);
    v14 = *(v0 + 264);

    v15 = *(v0 + 296);

    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 184);
    v18 = *(v0 + 192);
    v20 = *(v0 + 152);
    v21 = *(v0 + 128);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100D38EE0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 376);
  v9 = *v3;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v6 = v4[9];
    v7 = sub_100D39448;
  }

  else
  {
    v6 = v4[37];
    v7 = sub_100D38FF8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100D38FF8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 296);
  v3 = *(v0 + 200);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = (*(v0 + 464) + 24) & ~*(v0 + 464);
  (*(v0 + 352))(v3, *(v0 + 208), v6);
  v8 = swift_allocObject();
  *(v0 + 400) = v8;
  *(v8 + 16) = v2;
  v9 = *(v5 + 32);
  *(v0 + 408) = v9;
  *(v0 + 416) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v3, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = sub_100D3915C;
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100D49B50, v8, v13);
}

uint64_t sub_100D3915C()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_100D39288, v3, 0);
}

uint64_t sub_100D39288()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 328);
    v5 = *(v0 + 296);
    v6 = *(v0 + 264);
    (*(*(v0 + 168) + 8))(*(v0 + 208), *(v0 + 160));

    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 296);
    sub_100D4A2D4(v2, *(v0 + 152), type metadata accessor for MemberSharingCircle);
    *(v0 + 468) = *(v1 + 24);

    return _swift_task_switch(sub_100D39850, v17, 0);
  }
}

uint64_t sub_100D39448()
{
  v52 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 216);
  (*(v0 + 352))(*(v0 + 184), *(v0 + 208), *(v0 + 160));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v50 = *(v0 + 208);
    v49 = v5;
    v6 = *(v0 + 184);
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v6, v8);
    v14 = sub_1000136BC(v10, v12, &v51);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = *(v0 + 32);
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v51);

    *(v9 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v49, "Error downloading keys for updated share: %{private,mask.hash}s, %{public}s.", v9, 0x20u);
    swift_arrayDestroy();

    v13(v50, v8);
  }

  else
  {
    v21 = *(v0 + 208);
    v22 = *(v0 + 184);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);

    v25 = *(v24 + 8);
    v25(v22, v23);
    v25(v21, v23);
  }

  v26 = *(v0 + 360) + 1;
  if (v26 == *(v0 + 336))
  {
    v27 = *(v0 + 328);
    v28 = *(v0 + 264);

    v29 = *(v0 + 296);

    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v33 = *(v0 + 184);
    v32 = *(v0 + 192);
    v34 = *(v0 + 152);
    v35 = *(v0 + 128);
    v36 = *(v0 + 112);
    v37 = *(v0 + 88);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 208);
    v42 = *(v0 + 160);
    v43 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v26;
    v44 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v26;
    *(v0 + 368) = v44;
    v40(v41, v43, v42);
    v45 = swift_task_alloc();
    *(v0 + 376) = v45;
    *v45 = v0;
    v45[1] = sub_100D38EE0;
    v46 = *(v0 + 56);
    v47 = *(v0 + 64);
    v48 = *(v0 + 472);

    return sub_100D4E560(v48, v46, v47);
  }
}

uint64_t sub_100D39850()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 296);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = (*(v0 + 464) + 24) & ~*(v0 + 464);
  (*(v0 + 352))(v5, *(v0 + 152) + *(v0 + 468), v7);
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 440) = v11;
  *v11 = v0;
  v11[1] = sub_100D399A8;
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100D49B68, v9, v13);
}

uint64_t sub_100D399A8()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_100D39AD4, v3, 0);
}

uint64_t sub_100D39AD4()
{
  v53 = v0;
  v1 = *(v0 + 88);
  v2 = (*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96));
  v3 = *(v0 + 384);
  if (v2 == 1)
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 296);
    v6 = *(v0 + 264);
    v7 = *(v0 + 208);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);

    sub_100D4A3EC(v10, type metadata accessor for MemberSharingCircle);
    (*(v9 + 8))(v7, v8);
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
LABEL_3:
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 152);
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);

    v19 = *(v0 + 8);

    return v19();
  }

  sub_100D4A2D4(v1, *(v0 + 112), type metadata accessor for SharedBeaconRecord);
  if (v3)
  {
    v21 = *(v0 + 384);

LABEL_13:
    v38 = swift_task_alloc();
    *(v0 + 448) = v38;
    *v38 = v0;
    v38[1] = sub_100D39F48;
    v39 = *(v0 + 264);
    v40 = *(v0 + 208);

    return sub_1001948A8(v40, 1, 0, 1);
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 96);
  sub_100D49B80();
  v50 = Set.init(minimumCapacity:)();
  sub_100DEF07C(&v51, 4);
  sub_100DEF07C(&v52, 1);
  LOBYTE(v22) = sub_10112C0E0(*(v22 + *(v23 + 64)), v50);

  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = *(v0 + 216);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 208);
  v29 = *(v0 + 160);
  v30 = *(v0 + 168);
  v31 = *(v0 + 152);
  v32 = *(v0 + 112);
  if (v27)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Ignoring incoming UTFS message from non-family member", v33, 2u);
  }

  sub_100D4A3EC(v32, type metadata accessor for SharedBeaconRecord);
  sub_100D4A3EC(v31, type metadata accessor for MemberSharingCircle);
  (*(v30 + 8))(v28, v29);
  v34 = *(v0 + 360) + 1;
  if (v34 == *(v0 + 336))
  {
    v35 = *(v0 + 328);
    v36 = *(v0 + 264);

    v37 = *(v0 + 296);

    goto LABEL_3;
  }

  v41 = *(v0 + 352);
  v42 = *(v0 + 208);
  v43 = *(v0 + 160);
  v44 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v34;
  v45 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 360) = v34;
  *(v0 + 368) = v45;
  v41(v42, v44, v43);
  v46 = swift_task_alloc();
  *(v0 + 376) = v46;
  *v46 = v0;
  v46[1] = sub_100D38EE0;
  v47 = *(v0 + 56);
  v48 = *(v0 + 64);
  v49 = *(v0 + 472);

  return sub_100D4E560(v49, v47, v48);
}

uint64_t sub_100D39F48()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_100D3A468;
  }

  else
  {
    v6 = sub_100D3A074;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D3A074()
{
  v47 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 216);
  (*(v0 + 352))(*(v0 + 192), *(v0 + 208), *(v0 + 160));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = *(v0 + 152);
  v11 = *(v0 + 112);
  if (v5)
  {
    v45 = *(v0 + 152);
    v12 = swift_slowAlloc();
    v44 = v11;
    v13 = swift_slowAlloc();
    v46 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v6;
    v16 = v15;
    v17 = *(v9 + 8);
    v17(v7, v8);
    v18 = sub_1000136BC(v14, v16, &v46);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Downloaded keys for updated share: %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);

    sub_100D4A3EC(v44, type metadata accessor for SharedBeaconRecord);
    sub_100D4A3EC(v45, type metadata accessor for MemberSharingCircle);
    v17(v43, v8);
  }

  else
  {

    v19 = *(v9 + 8);
    v19(v7, v8);
    sub_100D4A3EC(v11, type metadata accessor for SharedBeaconRecord);
    sub_100D4A3EC(v10, type metadata accessor for MemberSharingCircle);
    v19(v6, v8);
  }

  v20 = *(v0 + 360) + 1;
  if (v20 == *(v0 + 336))
  {
    v21 = *(v0 + 328);
    v22 = *(v0 + 264);

    v23 = *(v0 + 296);

    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = *(v0 + 88);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v34 = *(v0 + 352);
    v35 = *(v0 + 208);
    v36 = *(v0 + 160);
    v37 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v20;
    v38 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v20;
    *(v0 + 368) = v38;
    v34(v35, v37, v36);
    v39 = swift_task_alloc();
    *(v0 + 376) = v39;
    *v39 = v0;
    v39[1] = sub_100D38EE0;
    v40 = *(v0 + 56);
    v41 = *(v0 + 64);
    v42 = *(v0 + 472);

    return sub_100D4E560(v42, v40, v41);
  }
}

uint64_t sub_100D3A468()
{
  v53 = v0;
  v1 = *(v0 + 152);
  sub_100D4A3EC(*(v0 + 112), type metadata accessor for SharedBeaconRecord);
  sub_100D4A3EC(v1, type metadata accessor for MemberSharingCircle);
  v2 = *(v0 + 456);
  v3 = *(v0 + 368);
  v4 = *(v0 + 216);
  (*(v0 + 352))(*(v0 + 184), *(v0 + 208), *(v0 + 160));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v51 = *(v0 + 208);
    v50 = v6;
    v7 = *(v0 + 184);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v14 = *(v8 + 8);
    v14(v7, v9);
    v15 = sub_1000136BC(v11, v13, &v52);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v52);

    *(v10 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v50, "Error downloading keys for updated share: %{private,mask.hash}s, %{public}s.", v10, 0x20u);
    swift_arrayDestroy();

    v14(v51, v9);
  }

  else
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v22, v24);
  }

  v27 = *(v0 + 360) + 1;
  if (v27 == *(v0 + 336))
  {
    v28 = *(v0 + 328);
    v29 = *(v0 + 264);

    v30 = *(v0 + 296);

    v32 = *(v0 + 200);
    v31 = *(v0 + 208);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    v35 = *(v0 + 152);
    v36 = *(v0 + 128);
    v37 = *(v0 + 112);
    v38 = *(v0 + 88);

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v41 = *(v0 + 352);
    v42 = *(v0 + 208);
    v43 = *(v0 + 160);
    v44 = *(v0 + 48) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 344) * v27;
    v45 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 360) = v27;
    *(v0 + 368) = v45;
    v41(v42, v44, v43);
    v46 = swift_task_alloc();
    *(v0 + 376) = v46;
    *v46 = v0;
    v46[1] = sub_100D38EE0;
    v47 = *(v0 + 56);
    v48 = *(v0 + 64);
    v49 = *(v0 + 472);

    return sub_100D4E560(v49, v47, v48);
  }
}

uint64_t sub_100D3A8AC()
{
  v1 = v0[27];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[37];
  v6 = v0[33];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No FamilyCircleService available!", v7, 2u);
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[14];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100D3A9F8()
{
  v1 = v0[27];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[33];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconStoreActor available!", v6, 2u);
  }

  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100D3AB38()
{
  v1 = v0[27];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconSharingService available!", v4, 2u);
  }

  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100D3AC6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100D3AC8C, 0, 0);
}

uint64_t sub_100D3AC8C()
{
  v15 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[4] = sub_1000076D4(v2, qword_10177BF80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for UUID();
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received handleCircleStopped -- identifiers: %{private,mask.hash}s.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_100D3AE7C;

  return daemon.getter();
}

uint64_t sub_100D3AE7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_100D3B060;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D3B060(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v10 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_100D3B82C;
    v6 = 0;
  }

  else
  {
    v7 = v3[6];
    v8 = v3[3];

    v5 = sub_100D3B188;
    v6 = v8;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100D3B188()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3B224, 0, 0);
}

uint64_t sub_100D3B224()
{
  v1 = *(*(v0 + 80) + 56);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_100D3B2B8;

  return sub_100507C6C();
}

uint64_t sub_100D3B2B8(char a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100D3B3D0, v3, 0);
}

uint64_t sub_100D3B3D0()
{
  if (*(v0 + 120) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_100D3B6B8;
    v2 = *(v0 + 64);
    v3 = *(v0 + 16);

    return sub_10019DE18(v3);
  }

  else
  {
    *(v0 + 96) = *(*(v0 + 24) + 144);

    return _swift_task_switch(sub_100D3B4B8, 0, 0);
  }
}

uint64_t sub_100D3B4B8()
{
  v19 = v0;
  if (v0[12])
  {
    v1 = v0[4];
    v2 = v0[2];

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[8];
    if (v5)
    {
      v7 = v0[2];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      type metadata accessor for UUID();
      v10 = Array.description.getter();
      v12 = sub_1000136BC(v10, v11, &v18);

      *(v8 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring non-me device handleCircleStopped for identifiers: %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_100D3B6B8;
    v16 = v0[8];
    v17 = v0[2];

    return sub_10019DE18(v17);
  }
}

uint64_t sub_100D3B6B8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_100D3B988;
  }

  else
  {
    v3 = sub_100D3B7CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100D3B7CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D3B82C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleStopped: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100D3B988()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleStopped: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

void sub_100D3BAE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100E8F8C0())
  {
    if (qword_101694E20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BF80);
    v28 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v28, v15, "handleCircleRequested received by underage account. Ignoring it.", v16, 2u);
    }

    v17 = v28;
  }

  else
  {
    v28 = type metadata accessor for Transaction();
    (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
    v18 = *(v11 + 80);
    v26 = v9;
    v27 = a3;
    v19 = (v18 + 16) & ~v18;
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = a2;
    v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    (*(v11 + 32))(v22 + v19, v13, v10);
    *(v22 + v20) = v4;
    v23 = v22 + v21;
    *v23 = v25;
    *(v23 + 8) = v27;
    *(v23 + 16) = a4;
    *(v22 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8)) = v26;

    static Transaction.asyncTask(name:block:)();
  }
}

uint64_t sub_100D3BDBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 900) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  *(v5 + 200) = v7;
  v8 = *(v7 - 8);
  *(v5 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 232) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v12 = type metadata accessor for OwnerSharingCircle();
  *(v5 + 248) = v12;
  v13 = *(v12 - 8);
  *(v5 + 256) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  *(v5 + 360) = v15;
  v16 = *(v15 - 8);
  *(v5 + 368) = v16;
  *(v5 + 376) = *(v16 + 64);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100D3C06C, 0, 0);
}

uint64_t sub_100D3C06C()
{
  v23 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[52] = v5;
  v0[53] = sub_1000076D4(v5, qword_10177BF80);
  v6 = *(v3 + 16);
  v0[54] = v6;
  v0[55] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[51];
  v11 = v0[45];
  v12 = v0[46];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handleCircleRequested -- shareIdentifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[56] = v17;
  v19 = v0[21];

  return _swift_task_switch(sub_100D3C2D8, v19, 0);
}

uint64_t sub_100D3C2D8()
{
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  *(v0 + 456) = qword_10177CEA0;

  return _swift_task_switch(sub_100D3C374, 0, 0);
}

uint64_t sub_100D3C374()
{
  v1 = *(*(v0 + 456) + 56);
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v2[1] = sub_100D3C408;

  return sub_100507C6C();
}

uint64_t sub_100D3C408(char a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 901) = a1;

  return _swift_task_switch(sub_100D3C520, v3, 0);
}

uint64_t sub_100D3C520()
{
  if (*(v0 + 901) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 480) = v2;
    *v2 = v0;
    v2[1] = sub_100D3C958;

    return daemon.getter();
  }

  else
  {
    *(v0 + 472) = *(*(v0 + 168) + 144);

    return _swift_task_switch(sub_100D3C600, 0, 0);
  }
}

uint64_t sub_100D3C600()
{
  v42 = v0;
  if (*(v0 + 472))
  {
    v1 = *(v0 + 440);
    v2 = *(v0 + 424);
    (*(v0 + 432))(*(v0 + 384), *(v0 + 160), *(v0 + 360));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 448);
    v7 = *(v0 + 384);
    v8 = *(v0 + 360);
    v9 = *(v0 + 368);
    if (v5)
    {
      v39 = *(v0 + 448);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v39(v7, v8);
      v15 = sub_1000136BC(v12, v14, &v41);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ignoring non-me device handleCircleRequested for identifier: %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      v6(v7, v8);
    }

    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v30 = *(v0 + 304);
    v31 = *(v0 + 296);
    v32 = *(v0 + 288);
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 224);
    v38 = *(v0 + 216);
    v40 = *(v0 + 192);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v16 = async function pointer to daemon.getter[1];
    v17 = swift_task_alloc();
    *(v0 + 480) = v17;
    *v17 = v0;
    v17[1] = sub_100D3C958;

    return daemon.getter();
  }
}

uint64_t sub_100D3C958(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 480);
  v12 = *v1;
  v3[61] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[62] = v6;
  v7 = type metadata accessor for Daemon();
  v3[63] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_100D42DB8(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[64] = v9;
  v10 = sub_100D42DB8(&qword_1016B1190, 255, type metadata accessor for PeerTrustService);
  *v6 = v12;
  v6[1] = sub_100D3CB4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D3CB4C(uint64_t a1)
{
  v3 = *(*v2 + 496);
  v4 = *v2;
  v4[65] = a1;
  v4[66] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100D412A4, 0, 0);
  }

  else
  {
    v5 = v4[61];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[67] = v7;
    *v7 = v4;
    v7[1] = sub_100D3CCC4;

    return daemon.getter();
  }
}

uint64_t sub_100D3CCC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 536);
  v5 = *v1;
  v3[68] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[69] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100D42DB8(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_100D3CE7C;
  v10 = v3[64];
  v11 = v3[63];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D3CE7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  if (v1)
  {
    v7 = sub_100D414EC;
    v8 = 0;
  }

  else
  {
    v9 = v4[68];

    v7 = sub_100D3CFB8;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100D3CFE0()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 584) = v2;
  *v2 = v0;
  v2[1] = sub_100D3D0BC;
  v3 = *(v0 + 576);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v3, &type metadata for () + 8);
}

uint64_t sub_100D3D0BC()
{
  v1 = *(*v0 + 584);
  v3 = *v0;

  return _swift_task_switch(sub_100D3D1B8, 0, 0);
}

uint64_t sub_100D3D1D4()
{
  v1 = v0[70];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[74] = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v0[75] = v4;
  *v3 = v0;
  v3[1] = sub_100D3D2C4;
  v5 = v0[70];

  return unsafeBlocking<A>(context:_:)(v0 + 15, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_100D3D2C4()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return _swift_task_switch(sub_100D3D3DC, v2, 0);
}

uint64_t sub_100D3D400()
{
  v1 = v0[76];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[32];
    v19 = v0[31];
    while (v3 < *(v1 + 16))
    {
      v5 = v0[44];
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      sub_100D4A580(v0[76] + v6 + v7 * v3, v5, type metadata accessor for OwnerSharingCircle);
      v8 = *(v5 + *(v19 + 32));

      v9 = sub_1005C9C88(2, v8);

      v10 = v0[44];
      if (v9)
      {
        sub_100D4A2D4(v10, v0[43], type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_101123FE4(v11 > 1, v12 + 1, 1);
        }

        v13 = v0[43];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        sub_100D4A2D4(v13, _swiftEmptyArrayStorage + v6 + v12 * v7, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100D4A3EC(v10, type metadata accessor for OwnerSharingCircle);
      }

      if (v2 == ++v3)
      {
        v14 = v0[76];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v0[77] = _swiftEmptyArrayStorage[2];

    if (qword_101694940 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v15 = qword_10177B348;
  v0[78] = qword_10177B348;
  v16 = async function pointer to unsafeBlocking<A>(_:)[1];

  v17 = swift_task_alloc();
  v0[79] = v17;
  *v17 = v0;
  v17[1] = sub_100D3D6B4;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v15, &type metadata for Configuration);
}

uint64_t sub_100D3D6B4()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v4 = *v0;

  return _swift_task_switch(sub_100D3D7CC, 0, 0);
}

uint64_t sub_100D3D7CC()
{
  v53 = v0;
  v1 = *(v0 + 616);
  v2 = sub_101074AAC(*(v0 + 128));

  if (v1 >= v2)
  {
    v4 = *(v0 + 440);
    v5 = *(v0 + 424);
    (*(v0 + 432))(*(v0 + 392), *(v0 + 160), *(v0 + 360));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 616);
      v9 = *(v0 + 392);
      v10 = *(v0 + 360);
      v11 = *(v0 + 368);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52 = v13;
      *v12 = 134218755;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v2;
      *(v12 + 22) = 2160;
      *(v12 + 24) = 1752392040;
      *(v12 + 32) = 2081;
      sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000136BC(v14, v16, &v52);

      *(v12 + 34) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cannot process handleCircleRequested. existingRequests: %ld >= maxPendingRequestSharedItem: %lu,\nshareIdentifier: %{private,mask.hash}s", v12, 0x2Au);
      sub_100007BAC(v13);
    }

    else
    {
      v18 = *(v0 + 392);
      v19 = *(v0 + 360);
      v20 = *(v0 + 368);

      (*(v20 + 8))(v18, v19);
    }

    v21 = *(v0 + 560);
    v22 = *(v0 + 520);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 144) = 10;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100D42DB8(&qword_101696340, 255, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = *(v0 + 136);
    swift_willThrow();

    v24 = *(v0 + 424);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error in handleCircleRequested: %@", v27, 0xCu);
      sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    v35 = *(v0 + 344);
    v34 = *(v0 + 352);
    v37 = *(v0 + 328);
    v36 = *(v0 + 336);
    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    v42 = *(v0 + 304);
    v43 = *(v0 + 296);
    v44 = *(v0 + 288);
    v45 = *(v0 + 280);
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 240);
    v49 = *(v0 + 224);
    v50 = *(v0 + 216);
    v51 = *(v0 + 192);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v3 = *(v0 + 560);

    return _swift_task_switch(sub_100D3DCA8, v3, 0);
  }
}

uint64_t sub_100D3DCA8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 440);
  v3 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  (*(v0 + 432))(v3, *(v0 + 160), v6);
  v7 = *(v5 + 80);
  *(v0 + 888) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 640) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 648) = v10;
  *(v0 + 656) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *v12 = v0;
  v12[1] = sub_100D3DE10;
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100D49DD8, v9, v14);
}

uint64_t sub_100D3DE10()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 640);
  v4 = *v0;

  return _swift_task_switch(sub_100D3DF28, 0, 0);
}

uint64_t sub_100D3DF28()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 256) + 48))(v1, 1, *(v0 + 248)) == 1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 520);
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    sub_100D487D8();
    swift_allocError();
    *v4 = 7;
    swift_willThrow();

    v5 = *(v0 + 424);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error in handleCircleRequested: %@", v8, 0xCu);
      sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v28 = *(v0 + 304);
    v29 = *(v0 + 296);
    v30 = *(v0 + 288);
    v31 = *(v0 + 280);
    v32 = *(v0 + 272);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 224);
    v36 = *(v0 + 216);
    v37 = *(v0 + 192);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    sub_100D4A2D4(v1, *(v0 + 336), type metadata accessor for OwnerSharingCircle);
    v11 = swift_task_alloc();
    *(v0 + 672) = v11;
    *v11 = v0;
    v11[1] = sub_100D3E290;
    v12 = *(v0 + 520);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 900);

    return sub_100E86158(v15, v13, v14);
  }
}

uint64_t sub_100D3E290(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 672);
  v7 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {
    v5 = sub_100D41740;
  }

  else
  {
    v5 = sub_100D3E3A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D3E3A8()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 560);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v6 = *(*(v0 + 208) + 80);
    sub_100D4A580(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for OwnerPeerTrust);

    sub_100D4A2D4(v4, v5, type metadata accessor for OwnerPeerTrust);
    sub_100B5A68C();
    sub_100B5A6E0();
    v7 = static CaseIterable<>.allMembers.getter();
    *(v0 + 696) = sub_100616F34(&off_10160D0D0, v7);
    *(v0 + 892) = *(v3 + 24);

    return _swift_task_switch(sub_100D3E748, v2, 0);
  }

  else
  {
    v8 = *(v0 + 520);
    v9 = *(v0 + 336);
    v10 = *(v0 + 680);

    sub_100D487D8();
    swift_allocError();
    *v11 = 7;
    swift_willThrow();

    sub_100D4A3EC(v9, type metadata accessor for OwnerSharingCircle);
    v12 = *(v0 + 424);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = _convertErrorToNSError(_:)();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error in handleCircleRequested: %@", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v19 = *(v0 + 400);
    v18 = *(v0 + 408);
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v30 = *(v0 + 304);
    v31 = *(v0 + 296);
    v32 = *(v0 + 288);
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 224);
    v38 = *(v0 + 216);
    v39 = *(v0 + 192);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_100D3E748()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 560);
  v5 = *(v0 + 440);
  v6 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 360);
  v9 = (*(v0 + 888) + 24) & ~*(v0 + 888);
  (*(v0 + 432))(v6, *(v0 + 336) + *(v0 + 892), v8);
  v10 = swift_allocObject();
  *(v0 + 704) = v10;
  *(v10 + 16) = v4;
  v3(v10 + v9, v6, v8);
  *(v10 + ((v9 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 712) = v12;
  *v12 = v0;
  v12[1] = sub_100D3E8C4;
  v13 = *(v0 + 600);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_1001BD71C, v10, v13);
}

uint64_t sub_100D3E8C4()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 560);
  v5 = *v0;

  return _swift_task_switch(sub_100D3E9F0, v3, 0);
}

uint64_t sub_100D3EA14()
{
  v155 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 224);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;

  v5 = sub_10013CF58(sub_100D49DF0, v4, v1);

  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = *(v0 + 720);
    v8 = *(v0 + 424);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 560);
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Already requested by the sharee.", v12, 2u);

      v13 = 520;
    }

    else
    {
      v29 = *(v0 + 520);

      v13 = 560;
    }

    v30 = *(v0 + v13);
    v31 = *(v0 + 336);
    v32 = *(v0 + 224);

    sub_100D4A3EC(v31, type metadata accessor for OwnerSharingCircle);
    sub_100D4A3EC(v32, type metadata accessor for OwnerPeerTrust);
    goto LABEL_13;
  }

  v151 = v2;
  v14 = *(v0 + 888);
  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v17 = *(v0 + 360);
  v18 = *(v0 + 368);
  v19 = *(v0 + 224);
  v20 = *(v0 + 200);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v21 = *(v18 + 72);
  v22 = (v14 + 32) & ~v14;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  v16(v23 + v22, v19 + *(v20 + 20), v17);
  v24 = sub_100B05044(v23);
  swift_setDeallocating();
  (*(v18 + 8))(v23 + v22, v17);
  swift_deallocClassInstance();
  if (v24[2])
  {
    v26 = sub_100315884(*(v0 + 336) + *(v0 + 892), v24, 2, *(v0 + 720), 0, 2uLL, 2);
    *(v0 + 728) = v26;
    v27 = *(v0 + 720);
    if (v151)
    {
      v28 = *(v0 + 560);

      goto LABEL_10;
    }

    v59 = v25;

    v148 = v59;
    v153 = *(v59 + 16);
    if (v153)
    {
      v63 = *(v0 + 424);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134218240;
        *(v66 + 4) = *(v59 + 16);

        *(v66 + 12) = 2048;
        *(v66 + 14) = *(v26 + 16);

        _os_log_impl(&_mh_execute_header, v64, v65, "Not empty circlesToDelete list on share request transformation! Count of items to delete: %ld, items to create: %ld", v66, 0x16u);
      }

      else
      {
      }
    }

    v67 = *(v26 + 16);
    *(v0 + 736) = v67;
    v146 = v26;
    v150 = v67;
    if (v67)
    {
      v68 = 0;
      v69 = *(v0 + 256);
      v143 = *(v0 + 248);
      while (v68 < *(v26 + 16))
      {
        v71 = *(v0 + 424);
        v72 = *(v0 + 328);
        v73 = *(v0 + 312);
        sub_100D4A580(v26 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68, v72, type metadata accessor for OwnerSharingCircle);
        sub_100D4A580(v72, v73, type metadata accessor for OwnerSharingCircle);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = *(v0 + 360);
          v77 = *(v0 + 312);
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v154[0] = v79;
          *v78 = 141558275;
          *(v78 + 4) = 1752392040;
          *(v78 + 12) = 2081;
          v80 = *(v143 + 20);
          sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v82;
          sub_100D4A3EC(v77, type metadata accessor for OwnerSharingCircle);
          v84 = sub_1000136BC(v81, v83, v154);

          *(v78 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v74, v75, "Data update on circle request. Create %{private,mask.hash}s", v78, 0x16u);
          sub_100007BAC(v79);

          v26 = v146;
        }

        else
        {
          v70 = *(v0 + 312);

          sub_100D4A3EC(v70, type metadata accessor for OwnerSharingCircle);
        }

        ++v68;
        v60 = sub_100D4A3EC(*(v0 + 328), type metadata accessor for OwnerSharingCircle);
        if (v150 == v68)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v85 = v148;
      if (!v153)
      {
LABEL_35:
        type metadata accessor for ChangeSetAdaptor();
        inited = swift_initStackObject();
        *(inited + 16) = _swiftEmptyDictionarySingleton;
        *(inited + 24) = _swiftEmptyDictionarySingleton;
        v104 = (inited + 24);

        if (v153)
        {
          if (!*(v148 + 16))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v105 = (v0 + 304);
          v106 = *(v0 + 256);
          v107 = *(v0 + 304);
          v108 = (*(v106 + 80) + 32) & ~*(v106 + 80);
          v109 = *(v106 + 72);
          sub_100D4A580(v148 + v108, v107, type metadata accessor for OwnerSharingCircle);
          sub_100D45194(v107);
          v60 = sub_100D4A3EC(*(v0 + 304), type metadata accessor for OwnerSharingCircle);
          if (v153 != 1)
          {
            v110 = v148 + v109 + v108;
            v111 = 1;
            while (v111 < *(v148 + 16))
            {
              v112 = *v105;
              sub_100D4A580(v110, *v105, type metadata accessor for OwnerSharingCircle);
              sub_100D45194(v112);
              ++v111;
              v60 = sub_100D4A3EC(*v105, type metadata accessor for OwnerSharingCircle);
              v110 += v109;
              if (v153 == v111)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_61;
          }
        }

LABEL_41:

        if (v150)
        {
          if (!*(v146 + 16))
          {
LABEL_62:
            __break(1u);
            return _swift_task_switch(v60, v61, v62);
          }

          v113 = (v0 + 296);
          v114 = *(v0 + 256);
          v115 = *(v0 + 296);
          v116 = (*(v114 + 80) + 32) & ~*(v114 + 80);
          v117 = *(v114 + 72);
          sub_100D4A580(v146 + v116, v115, type metadata accessor for OwnerSharingCircle);
          sub_100D43498(v115, sub_101120F7C);
          v60 = sub_100D4A3EC(*(v0 + 296), type metadata accessor for OwnerSharingCircle);
          if (v150 != 1)
          {
            v118 = v146 + v117 + v116;
            v119 = 1;
            while (v119 < *(v146 + 16))
            {
              v120 = *v113;
              sub_100D4A580(v118, *v113, type metadata accessor for OwnerSharingCircle);
              sub_100D43498(v120, sub_101120F7C);
              ++v119;
              v60 = sub_100D4A3EC(*v113, type metadata accessor for OwnerSharingCircle);
              v118 += v117;
              if (v150 == v119)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_62;
          }
        }

LABEL_47:

        swift_beginAccess();
        v121 = *(inited + 16);
        if (*(v121 + 16))
        {
          goto LABEL_54;
        }

        swift_beginAccess();
        v122 = *v104;
        if ((*v104 & 0xC000000000000001) != 0)
        {
          if (v122 < 0)
          {
            v123 = *v104;
          }

          v124 = *v104;

          v125 = __CocoaDictionary.count.getter();
        }

        else
        {
          v125 = *(v122 + 16);
        }

        if (v125)
        {
LABEL_54:
          v126 = *(v0 + 656);
          v127 = *(v0 + 648);
          v128 = *(v0 + 400);
          v129 = *(v0 + 360);
          v130 = *(v0 + 192);
          UUID.init()();
          swift_beginAccess();
          v131 = *(inited + 24);

          v133 = sub_1003A8B54(v132);
          swift_bridgeObjectRelease_n();
          v127(v130, v128, v129);
          v134 = type metadata accessor for CloudKitChangeSet(0);
          *(v130 + *(v134 + 20)) = v133;
          *(v130 + *(v134 + 24)) = v121;
          (*(*(v134 - 8) + 56))(v130, 0, 1, v134);
        }

        else
        {
          v135 = *(v0 + 192);

          v136 = type metadata accessor for CloudKitChangeSet(0);
          (*(*(v136 - 8) + 56))(v135, 1, 1, v136);
        }

        v61 = *(v0 + 560);
        v60 = sub_100D3F9A0;
        v62 = 0;

        return _swift_task_switch(v60, v61, v62);
      }

      v86 = 0;
      v87 = *(v0 + 256);
      v144 = *(v0 + 248);
      while (v86 < *(v85 + 16))
      {
        v89 = *(v0 + 424);
        v90 = *(v0 + 320);
        v91 = *(v0 + 288);
        sub_100D4A580(v85 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v86, v90, type metadata accessor for OwnerSharingCircle);
        sub_100D4A580(v90, v91, type metadata accessor for OwnerSharingCircle);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = *(v0 + 360);
          v95 = *(v0 + 288);
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v154[0] = v97;
          *v96 = 141558275;
          *(v96 + 4) = 1752392040;
          *(v96 + 12) = 2081;
          v98 = *(v144 + 20);
          sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v101 = v100;
          sub_100D4A3EC(v95, type metadata accessor for OwnerSharingCircle);
          v102 = sub_1000136BC(v99, v101, v154);

          *(v96 + 14) = v102;
          _os_log_impl(&_mh_execute_header, v92, v93, "Data update on circle request. Delete %{private,mask.hash}s", v96, 0x16u);
          sub_100007BAC(v97);

          v85 = v148;
        }

        else
        {
          v88 = *(v0 + 288);

          sub_100D4A3EC(v88, type metadata accessor for OwnerSharingCircle);
        }

        ++v86;
        v60 = sub_100D4A3EC(*(v0 + 320), type metadata accessor for OwnerSharingCircle);
        if (v153 == v86)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v33 = *(v0 + 560);
  v34 = *(v0 + 360);
  v35 = *(v0 + 368);
  v36 = *(v0 + 720);

  type metadata accessor for BeaconSharingCircleTransformer.Error();
  sub_100D42DB8(&qword_101697608, 255, type metadata accessor for BeaconSharingCircleTransformer.Error);
  swift_allocError();
  (*(v35 + 56))(v37, 1, 1, v34);
  swift_willThrow();

LABEL_10:
  v38 = *(v0 + 520);
  v39 = *(v0 + 336);
  v40 = *(v0 + 224);

  sub_100D4A3EC(v39, type metadata accessor for OwnerSharingCircle);
  sub_100D4A3EC(v40, type metadata accessor for OwnerPeerTrust);
  v41 = *(v0 + 424);
  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = _convertErrorToNSError(_:)();
    *(v44 + 4) = v46;
    *v45 = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "Error in handleCircleRequested: %@", v44, 0xCu);
    sub_10000B3A8(v45, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

LABEL_13:
  v48 = *(v0 + 400);
  v47 = *(v0 + 408);
  v49 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 344);
  v51 = *(v0 + 352);
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  v56 = *(v0 + 312);
  v55 = *(v0 + 320);
  v137 = *(v0 + 304);
  v138 = *(v0 + 296);
  v139 = *(v0 + 288);
  v140 = *(v0 + 280);
  v141 = *(v0 + 272);
  v142 = *(v0 + 264);
  v145 = *(v0 + 240);
  v147 = *(v0 + 224);
  v149 = *(v0 + 216);
  v152 = *(v0 + 192);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100D3F9C8()
{
  v1 = v0[93];
  v2 = v0[24];
  v3 = swift_task_alloc();
  v0[94] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[95] = v5;
  *v5 = v0;
  v5[1] = sub_100D3FAC0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_100D3FAC0()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  v2[96] = v0;

  v5 = v2[94];
  if (v0)
  {
    v6 = v2[91];

    v7 = sub_100D40008;
  }

  else
  {

    v7 = sub_100D3FC08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D3FC08()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 776) = v2;
  *v2 = v0;
  v2[1] = sub_100D3FC98;

  return daemon.getter();
}

uint64_t sub_100D3FC98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 776);
  v5 = *v1;
  v3[98] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[99] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100D42DB8(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v7 = v5;
  v7[1] = sub_100D3FE50;
  v10 = v3[64];
  v11 = v3[63];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D3FE50(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 792);
  v7 = *v2;

  v8 = v4[98];
  if (v1)
  {

    v5[101] = 0;
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v5[102] = v10;
    *v10 = v7;
    v10[1] = sub_100D40488;

    return daemon.getter();
  }

  else
  {

    v5[100] = a1;

    return _swift_task_switch(sub_100D402D4, 0, 0);
  }
}

uint64_t sub_100D40024()
{
  v1 = v0[70];
  v2 = v0[65];
  v3 = v0[42];
  v4 = v0[28];
  v5 = v0[24];

  sub_100D4A3EC(v3, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v5, &qword_1016975C8, &qword_10138C1F0);
  sub_100D4A3EC(v4, type metadata accessor for OwnerPeerTrust);
  v6 = v0[96];
  v7 = v0[53];
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = _convertErrorToNSError(_:)();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error in handleCircleRequested: %@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v14 = v0[50];
  v13 = v0[51];
  v15 = v0[48];
  v16 = v0[49];
  v18 = v0[43];
  v17 = v0[44];
  v20 = v0[41];
  v19 = v0[42];
  v22 = v0[39];
  v21 = v0[40];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[30];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[24];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100D402D4()
{
  v1 = *(v0 + 800);

  return _swift_task_switch(sub_100D40344, v1, 0);
}

uint64_t sub_100D40344()
{
  v1 = v0[100];
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v0[101] = v0[100];
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v0[102] = v5;
  *v5 = v0;
  v5[1] = sub_100D40488;

  return daemon.getter();
}

uint64_t sub_100D40488(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 816);
  v5 = *v1;
  v3[103] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[104] = v7;
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_100D42DB8(&qword_1016B1160, 255, type metadata accessor for ItemSharingNotificationsService);
  *v7 = v5;
  v7[1] = sub_100D40640;
  v10 = v3[64];
  v11 = v3[63];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100D40640(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 832);
  v6 = *v2;
  *(*v2 + 840) = a1;

  v7 = *(v3 + 824);
  if (v1)
  {
    v8 = *(v4 + 728);

    v9 = sub_100D4079C;
  }

  else
  {

    v9 = sub_100D40A3C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100D4079C()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[52], qword_10177BAA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[101];
  v5 = v0[70];
  v6 = v0[65];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No ItemSharingNotificationsService available!", v7, 2u);
  }

  else
  {
    v8 = v0[70];
  }

  v9 = v0[28];
  v10 = v0[24];
  sub_100D4A3EC(v0[42], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v10, &qword_1016975C8, &qword_10138C1F0);
  sub_100D4A3EC(v9, type metadata accessor for OwnerPeerTrust);
  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[48];
  v14 = v0[49];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[41];
  v17 = v0[42];
  v20 = v0[39];
  v19 = v0[40];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[28];
  v31 = v0[27];
  v32 = v0[24];

  v21 = v0[1];

  return v21();
}

void sub_100D40A3C()
{
  if (*(v0 + 736))
  {
    v1 = 0;
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    while (1)
    {
      v4 = *(v0 + 728);
      if (v1 >= *(v4 + 16))
      {
        break;
      }

      v5 = *(v0 + 280);
      v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v7 = *(v2 + 72);
      sub_100D4A580(v4 + v6 + v7 * v1, v5, type metadata accessor for OwnerSharingCircle);
      v8 = *(v0 + 280);
      if (*(v5 + *(v3 + 28)) == 2)
      {
        sub_100D4A2D4(v8, *(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_101123FE4(v9 > 1, v10 + 1, 1);
        }

        v11 = *(v0 + 264);
        _swiftEmptyArrayStorage[2] = v10 + 1;
        sub_100D4A2D4(v11, _swiftEmptyArrayStorage + v6 + v10 * v7, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100D4A3EC(v8, type metadata accessor for OwnerSharingCircle);
      }

      if (++v1 == *(v0 + 736))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *(v0 + 848) = _swiftEmptyArrayStorage;
    v12 = *(v0 + 728);

    v13 = _swiftEmptyArrayStorage[2];
    *(v0 + 856) = v13;
    if (v13)
    {
      v14 = *(v0 + 256);
      v15 = *(v0 + 184);
      v16 = *(v0 + 900);
      v17 = *(v14 + 80);
      *(v0 + 896) = v17;
      *(v0 + 864) = *(v14 + 72);
      *(v0 + 872) = 0;
      sub_100D4A580(*(v0 + 848) + ((v17 + 32) & ~v17), *(v0 + 272), type metadata accessor for OwnerSharingCircle);
      v18 = swift_task_alloc();
      *(v0 + 880) = v18;
      *v18 = v0;
      v18[1] = sub_100D40E68;
      v19 = *(v0 + 840);
      v20 = *(v0 + 272);
      v21 = *(v0 + 176);

      sub_100B419CC(v20, v16, v21, v15);
    }

    else
    {
      v22 = *(v0 + 848);
      v23 = *(v0 + 840);
      v24 = *(v0 + 808);
      v25 = *(v0 + 560);
      v26 = *(v0 + 520);
      v27 = *(v0 + 336);
      v28 = *(v0 + 224);
      v29 = *(v0 + 192);

      sub_100D4A3EC(v27, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v29, &qword_1016975C8, &qword_10138C1F0);
      sub_100D4A3EC(v28, type metadata accessor for OwnerPeerTrust);
      v31 = *(v0 + 400);
      v30 = *(v0 + 408);
      v32 = *(v0 + 384);
      v33 = *(v0 + 392);
      v35 = *(v0 + 344);
      v34 = *(v0 + 352);
      v37 = *(v0 + 328);
      v36 = *(v0 + 336);
      v39 = *(v0 + 312);
      v38 = *(v0 + 320);
      v41 = *(v0 + 304);
      v42 = *(v0 + 296);
      v43 = *(v0 + 288);
      v44 = *(v0 + 280);
      v45 = *(v0 + 272);
      v46 = *(v0 + 264);
      v47 = *(v0 + 240);
      v48 = *(v0 + 224);
      v49 = *(v0 + 216);
      v50 = *(v0 + 192);

      v40 = *(v0 + 8);

      v40();
    }
  }
}

uint64_t sub_100D40E68()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  v4 = *v1;

  v5 = *(v2 + 272);
  if (v0)
  {

    sub_100D4A3EC(v5, type metadata accessor for OwnerSharingCircle);
    v6 = sub_100D4A650;
  }

  else
  {
    sub_100D4A3EC(v5, type metadata accessor for OwnerSharingCircle);
    v6 = sub_100D40FD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D40FD8()
{
  v1 = *(v0 + 872) + 1;
  if (v1 == *(v0 + 856))
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 840);
    v4 = *(v0 + 808);
    v5 = *(v0 + 560);
    v6 = *(v0 + 520);
    v7 = *(v0 + 336);
    v8 = *(v0 + 224);
    v9 = *(v0 + 192);

    sub_100D4A3EC(v7, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v9, &qword_1016975C8, &qword_10138C1F0);
    sub_100D4A3EC(v8, type metadata accessor for OwnerPeerTrust);
    v11 = *(v0 + 400);
    v10 = *(v0 + 408);
    v12 = *(v0 + 384);
    v13 = *(v0 + 392);
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v28 = *(v0 + 304);
    v29 = *(v0 + 296);
    v30 = *(v0 + 288);
    v31 = *(v0 + 280);
    v32 = *(v0 + 272);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 224);
    v36 = *(v0 + 216);
    v37 = *(v0 + 192);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    *(v0 + 872) = v1;
    v22 = *(v0 + 184);
    v23 = *(v0 + 900);
    sub_100D4A580(*(v0 + 848) + ((*(v0 + 896) + 32) & ~*(v0 + 896)) + *(v0 + 864) * v1, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v24 = swift_task_alloc();
    *(v0 + 880) = v24;
    *v24 = v0;
    v24[1] = sub_100D40E68;
    v25 = *(v0 + 840);
    v26 = *(v0 + 272);
    v27 = *(v0 + 176);

    return sub_100B419CC(v26, v23, v27, v22);
  }
}

uint64_t sub_100D412A4()
{
  v1 = v0[61];

  v2 = v0[66];
  v3 = v0[53];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in handleCircleRequested: %@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[50];
  v9 = v0[51];
  v11 = v0[48];
  v12 = v0[49];
  v14 = v0[43];
  v13 = v0[44];
  v16 = v0[41];
  v15 = v0[42];
  v18 = v0[39];
  v17 = v0[40];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[36];
  v24 = v0[35];
  v25 = v0[34];
  v26 = v0[33];
  v27 = v0[30];
  v28 = v0[28];
  v29 = v0[27];
  v30 = v0[24];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100D414EC()
{
  v1 = v0[68];
  v2 = v0[65];

  v3 = v0[71];
  v4 = v0[53];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error in handleCircleRequested: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[50];
  v10 = v0[51];
  v12 = v0[48];
  v13 = v0[49];
  v15 = v0[43];
  v14 = v0[44];
  v17 = v0[41];
  v16 = v0[42];
  v19 = v0[39];
  v18 = v0[40];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[28];
  v30 = v0[27];
  v31 = v0[24];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100D41740()
{
  v1 = v0[70];
  v2 = v0[65];
  v3 = v0[42];

  sub_100D4A3EC(v3, type metadata accessor for OwnerSharingCircle);
  v4 = v0[86];
  v5 = v0[53];
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error in handleCircleRequested: %@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v12 = v0[50];
  v11 = v0[51];
  v13 = v0[48];
  v14 = v0[49];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[41];
  v17 = v0[42];
  v20 = v0[39];
  v19 = v0[40];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[34];
  v28 = v0[33];
  v29 = v0[30];
  v30 = v0[28];
  v31 = v0[27];
  v32 = v0[24];

  v21 = v0[1];

  return v21();
}

BOOL sub_100D419B4(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = *(sub_100D4A09C(*(a1 + *(v2 + 32)), sub_100D49E10) + 16);

  return *(a1 + *(v2 + 36)) == 2 && v3 != 0;
}

uint64_t sub_100D41A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v9 = type metadata accessor for UUID();
  v4[3] = v9;
  v10 = *(v9 - 8);
  v4[4] = v10;
  v11 = *(v10 + 64) + 15;
  v4[5] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_100D41B74;

  return sub_1003C95D8(a1, a2, a3, a4);
}

uint64_t sub_100D41B74()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D41CB0, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100D41CB0()
{
  v27 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BF80);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v24 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Cannot handle stop from sharee to owner for delegated share %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v20 = v0[7];

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[5];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100D41F84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v15 = a3;
  v16 = v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  type metadata accessor for Transaction();
  (*(v10 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a2;
  *(v13 + 32) = v15;
  *(v13 + 40) = a4;
  (*(v10 + 32))(v13 + v12, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D421DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v24 = a2;
  v25 = a3;
  v26 = a9;
  v27 = a10;
  v28 = a8;
  v23 = *v10;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v11;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = v20 + v19;
  *v21 = v24;
  *(v21 + 8) = v25;
  *(v21 + 16) = a4;
  *(v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8)) = v23;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D423AC(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  v4[4] = v3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D42484(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  HIDWORD(v17) = a2;
  v7 = *v4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v12, v11, v8);
  v15 = v14 + v13;
  *v15 = BYTE4(v17);
  *(v15 + 8) = v18;
  *(v15 + 16) = a4;
  *(v14 + ((v13 + 31) & 0xFFFFFFFFFFFFFFF8)) = v7;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100D42670()
{
  v14 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_10058BB20();
    v8 = Set.description.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging accounts changed. Accounts: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100D42814(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100D42834, v1, 0);
}

uint64_t sub_100D42834()
{
  v17 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF80);
  swift_bridgeObjectRetain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    sub_100D48DC8();
    v9 = Set.description.getter();
    v11 = sub_1000136BC(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    v12 = *(v6 + 16);

    *(v7 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging devices changed. Devices: %s, count: %ld.", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v13 = v0[2];
    swift_bridgeObjectRelease_n();
  }

  *(v0[3] + 144) = *(v0[2] + 16);
  v14 = v0[1];

  return v14();
}

uint64_t sub_100D42A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_100014744;

  return sub_100D48E1C(a3, a4, a5, a6);
}

uint64_t sub_100D42AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = a6[1];
  v15 = a6[2];
  v16 = a6[3];
  v17 = *v8;
  v18 = *a6;
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_100014744;

  return sub_100D49174(a3, a4, a5, v18, v14, v15, v16, a7, a8);
}

uint64_t sub_100D42BE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100D42650(a1);
}

uint64_t sub_100D42C80(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100D42814(a1);
}

uint64_t sub_100D42D18(uint64_t a1, uint64_t a2)
{
  result = sub_100D42DB8(&qword_1016BA4C0, a2, type metadata accessor for CircleTrustService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100D42DB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100D42E48()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = *(v0 + v5);
  v10 = *v6;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014650;

  return sub_100D41A48(v0 + v3, v10, v7, v8);
}

uint64_t sub_100D42F74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BF98);
  sub_1000076D4(v0, qword_10177BF98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D42FF4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OwnerSharingCircle();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D4A580(a2, v9, type metadata accessor for OwnerSharingCircle);
  v10 = [*a1 encryptedValues];
  swift_getObjectType();
  v11 = v6[6];
  type metadata accessor for UUID();
  sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = UUID.uuidString.getter();
    v34 = &type metadata for String;
    v35 = &protocol witness table for String;
    v32 = v12;
    v33 = v13;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v14 = v6[8];
  v15 = *&v9[v14];
  if ((sub_100DE7CB4(*(v3 + v14), v15) & 1) == 0)
  {
    v16 = type metadata accessor for PropertyListEncoder();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    v32 = v15;

    sub_1000BC4D4(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D489BC();
    v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v21 = v20;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v23 = String._bridgeToObjectiveC()();
    [v10 setObject:isa forKeyedSubscript:v23];

    sub_100016590(v19, v21);
  }

  v24 = v6[9];
  v25 = *(v3 + v24);
  v26 = v9[v24];
  if (v25 != v26)
  {
    v34 = &type metadata for Int;
    v35 = &protocol witness table for Int;
    v32 = v26;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v27 = v6[7];
  v28 = *(v3 + v27);
  v29 = v9[v27];
  if (v28 == v29)
  {
    sub_100D4A3EC(v9, type metadata accessor for OwnerSharingCircle);
    return swift_unknownObjectRelease();
  }

  else
  {
    v34 = &type metadata for Int;
    v35 = &protocol witness table for Int;
    v32 = v29;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_100D4A3EC(v9, type metadata accessor for OwnerSharingCircle);
  }
}

void sub_100D43498(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v5 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (v6 == v6 >> 32)
      {
        goto LABEL_9;
      }
    }

    else if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_100D48968();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return;
  }

  if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_autoreleasePoolPush();
  v12 = a2(a1);
  if (!v3)
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    swift_beginAccess();
    v14 = *(v5 + 24);

    v15 = [v13 recordID];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = v15;
      v17 = __CocoaDictionary.contains(_:)();

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else if (*(v14 + 16))
    {
      v18 = v15;
      sub_100771FF8(v15);
      v20 = v19;

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
    }

    swift_beginAccess();
    v22 = *(v5 + 16);

    v23 = [v13 recordID];
    v24 = v23;
    if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
LABEL_29:

        return;
      }
    }

    else
    {
    }

    v28 = [v13 recordID];
    swift_beginAccess();
    v29 = *(v5 + 24);
    if ((v29 & 0xC000000000000001) == 0)
    {
      v32 = *(v5 + 24);
      v33 = v13;
      goto LABEL_28;
    }

    if (v29 < 0)
    {
      v11 = *(v5 + 24);
    }

    else
    {
      v11 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = v13;
    v31 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v31, 1))
    {
      *(v5 + 24) = sub_100D47C24(v11, v31 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v5 + 24);
      sub_100FFB704(v13, v28, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v35;

      swift_endAccess();
      goto LABEL_29;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v11);
  __break(1u);
}

void sub_100D437EC(uint64_t *a1, uint64_t (*a2)(uint64_t *))
{
  v5 = v2;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v8)
    {
      if (v6 == v6 >> 32)
      {
        goto LABEL_9;
      }
    }

    else if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_100D48968();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return;
  }

  if (v8 == 2 && *(v6 + 16) != *(v6 + 24))
  {
    goto LABEL_7;
  }

LABEL_9:
  v11 = objc_autoreleasePoolPush();
  v12 = a2(a1);
  if (!v3)
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    swift_beginAccess();
    v14 = *(v5 + 24);

    v15 = [v13 recordID];
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = v15;
      v17 = __CocoaDictionary.contains(_:)();

      if (v17)
      {
        goto LABEL_19;
      }
    }

    else if (*(v14 + 16))
    {
      v18 = v15;
      sub_100771FF8(v15);
      v20 = v19;

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v15;
    }

    swift_beginAccess();
    v22 = *(v5 + 16);

    v23 = [v13 recordID];
    v24 = v23;
    if (*(v22 + 16))
    {
      sub_100771FF8(v23);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
LABEL_29:

        return;
      }
    }

    else
    {
    }

    v28 = [v13 recordID];
    swift_beginAccess();
    v29 = *(v5 + 24);
    if ((v29 & 0xC000000000000001) == 0)
    {
      v32 = *(v5 + 24);
      v33 = v13;
      goto LABEL_28;
    }

    if (v29 < 0)
    {
      v11 = *(v5 + 24);
    }

    else
    {
      v11 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    v30 = v13;
    v31 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v31, 1))
    {
      *(v5 + 24) = sub_100D47C24(v11, v31 + 1);
LABEL_28:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v5 + 24);
      sub_100FFB704(v13, v28, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v35;

      swift_endAccess();
      goto LABEL_29;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v11);
  __break(1u);
}

void sub_100D43B6C(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v50 - v11);
  v13 = type metadata accessor for MemberSharingCircle();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v50[0] = v15;
  v50[1] = a3;
  v51 = a2;
  v21 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (!v4)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v56 = v23;
    swift_beginAccess();
    v24 = *(v5 + 24);

    v52 = v23;
    v25 = [v23 recordID];
    v26 = v25;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = v25;
      v28 = __CocoaDictionary.contains(_:)();

      if (v28)
      {
        goto LABEL_19;
      }
    }

    else if (*(v24 + 16))
    {
      sub_100771FF8(v25);
      v31 = v30;

      if (v31)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v32 = *(v5 + 16);

    v33 = [v52 recordID];
    v34 = v33;
    if (*(v32 + 16))
    {
      sub_100771FF8(v33);
      v36 = v35;

      if (v36)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v37 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v38 = v52;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v54 = 0x7365547265646E75;
    v55 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v53 == 1)
    {
      v39 = [v38 valueStore];
      [v39 resetChangedKeys];

      v40 = [v38 encryptedValueStore];
      [v40 resetChangedKeys];
    }

    v41 = [v38 recordID];
    v42 = *(v5 + 24);

    v43 = sub_1005CAAF8(v41, v42);

    if (v43)
    {
      sub_1003268EC(v43, v12);
      v44 = v52;
      (*(v50[0] + 56))(v12, 0, 1, v13);
      sub_100D4A2D4(v12, v17, type metadata accessor for MemberSharingCircle);
    }

    else
    {
      v44 = v52;
      sub_100D4A580(a1, v17, type metadata accessor for MemberSharingCircle);
    }

    v51(v17);
    sub_100EC12C4(&v56, v17);
    if (sub_1003287CC(a1, v17))
    {
      goto LABEL_36;
    }

    v45 = v44;
    v46 = [v45 recordID];
    swift_beginAccess();
    v47 = *(v5 + 24);
    if ((v47 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v5 + 24);
      sub_100FFB704(v45, v46, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v53;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v17, type metadata accessor for MemberSharingCircle);

      return;
    }

    if (v47 < 0)
    {
      v21 = *(v5 + 24);
    }

    else
    {
      v21 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    v48 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v48, 1))
    {
      *(v5 + 24) = sub_100D47C24(v21, v48 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100D44190(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (v50 - v11);
  v13 = type metadata accessor for OwnerSharingCircle();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v50[0] = v15;
  v50[1] = a3;
  v51 = a2;
  v21 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (!v4)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v56 = v23;
    swift_beginAccess();
    v24 = *(v5 + 24);

    v52 = v23;
    v25 = [v23 recordID];
    v26 = v25;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = v25;
      v28 = __CocoaDictionary.contains(_:)();

      if (v28)
      {
        goto LABEL_19;
      }
    }

    else if (*(v24 + 16))
    {
      sub_100771FF8(v25);
      v31 = v30;

      if (v31)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v32 = *(v5 + 16);

    v33 = [v52 recordID];
    v34 = v33;
    if (*(v32 + 16))
    {
      sub_100771FF8(v33);
      v36 = v35;

      if (v36)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v37 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v38 = v52;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v54 = 0x7365547265646E75;
    v55 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v53 == 1)
    {
      v39 = [v38 valueStore];
      [v39 resetChangedKeys];

      v40 = [v38 encryptedValueStore];
      [v40 resetChangedKeys];
    }

    v41 = [v38 recordID];
    v42 = *(v5 + 24);

    v43 = sub_1005CAAF8(v41, v42);

    if (v43)
    {
      sub_100E0F270(v43, v12);
      v44 = v52;
      (*(v50[0] + 56))(v12, 0, 1, v13);
      sub_100D4A2D4(v12, v17, type metadata accessor for OwnerSharingCircle);
    }

    else
    {
      v44 = v52;
      sub_100D4A580(a1, v17, type metadata accessor for OwnerSharingCircle);
    }

    v51(v17);
    sub_100D42FF4(&v56, v17);
    if (sub_100E11AF8(a1, v17))
    {
      goto LABEL_36;
    }

    v45 = v44;
    v46 = [v45 recordID];
    swift_beginAccess();
    v47 = *(v5 + 24);
    if ((v47 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v5 + 24);
      sub_100FFB704(v45, v46, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v53;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v17, type metadata accessor for OwnerSharingCircle);

      return;
    }

    if (v47 < 0)
    {
      v21 = *(v5 + 24);
    }

    else
    {
      v21 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    v48 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v48, 1))
    {
      *(v5 + 24) = sub_100D47C24(v21, v48 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100D447B4(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v5 = v3;
  v9 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v50 - v11;
  v13 = type metadata accessor for SharedBeaconRecord(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v20)
  {
    if (v18 == v18 >> 32)
    {
LABEL_12:
      sub_100D48968();
      swift_allocError();
      *v29 = 2;
      swift_willThrow();
      return;
    }
  }

  else if ((v19 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v50[0] = v15;
  v50[1] = a3;
  v51 = a2;
  v21 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  if (!v4)
  {
    v23 = v22;
    objc_autoreleasePoolPop(v21);
    v56 = v23;
    swift_beginAccess();
    v24 = *(v5 + 24);

    v52 = v23;
    v25 = [v23 recordID];
    v26 = v25;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = v25;
      v28 = __CocoaDictionary.contains(_:)();

      if (v28)
      {
        goto LABEL_19;
      }
    }

    else if (*(v24 + 16))
    {
      sub_100771FF8(v25);
      v31 = v30;

      if (v31)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    swift_beginAccess();
    v32 = *(v5 + 16);

    v33 = [v52 recordID];
    v34 = v33;
    if (*(v32 + 16))
    {
      sub_100771FF8(v33);
      v36 = v35;

      if (v36)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v37 = 4;
        swift_willThrow();

        return;
      }
    }

    else
    {
    }

    v38 = v52;
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v54 = 0x7365547265646E75;
    v55 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v53 == 1)
    {
      v39 = [v38 valueStore];
      [v39 resetChangedKeys];

      v40 = [v38 encryptedValueStore];
      [v40 resetChangedKeys];
    }

    v41 = [v38 recordID];
    v42 = *(v5 + 24);

    v43 = sub_1005CAAF8(v41, v42);

    if (v43)
    {
      sub_1011D5D0C(v43, v12);
      v44 = v52;
      (*(v50[0] + 56))(v12, 0, 1, v13);
      sub_100D4A2D4(v12, v17, type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v44 = v52;
      sub_100D4A580(a1, v17, type metadata accessor for SharedBeaconRecord);
    }

    v51(v17);
    sub_100D46BC4(&v56, v17);
    if (sub_1011DB3D8(a1, v17))
    {
      goto LABEL_36;
    }

    v45 = v44;
    v46 = [v45 recordID];
    swift_beginAccess();
    v47 = *(v5 + 24);
    if ((v47 & 0xC000000000000001) == 0)
    {
LABEL_35:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v5 + 24);
      sub_100FFB704(v45, v46, isUniquelyReferenced_nonNull_native);
      *(v5 + 24) = v53;

      swift_endAccess();
LABEL_36:
      sub_100D4A3EC(v17, type metadata accessor for SharedBeaconRecord);

      return;
    }

    if (v47 < 0)
    {
      v21 = *(v5 + 24);
    }

    else
    {
      v21 = (v47 & 0xFFFFFFFFFFFFFF8);
    }

    v48 = __CocoaDictionary.count.getter();
    if (!__OFADD__(v48, 1))
    {
      *(v5 + 24) = sub_100D47C24(v21, v48 + 1);
      goto LABEL_35;
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_100D44DD8(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_1011211D8(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v37[11] = v1;
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v14);
      v25 = v24;

      if (v25)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v26 = 4;
        swift_willThrow();

        return;
      }
    }

    v27 = type metadata accessor for SharingCircleSecret();
    v28 = *(v27 + 20);
    v29 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v30 = *(v29 + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v30], a1 + v28, v31);
    v32 = *(v29 + 24);
    v33 = *(v27 + 24);
    v34 = qword_101694E90;
    v35 = v13;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for URL();
    sub_1000076D4(v36, qword_10177C090);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    *v7 = v35;
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D45194(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_101120F7C(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v24 = *(v1 + 16);

      sub_100771FF8(v14);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();

        return;
      }
    }

    v28 = *(type metadata accessor for OwnerSharingCircle() + 20);
    v29 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v30 = *(v29 + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v30], a1 + v28, v31);
    v32 = *(v29 + 24);
    v33 = qword_101694EB8;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    v36 = sub_1000076D4(v35, qword_10177C0D8);
    (*(*(v35 - 8) + 16))(&v7[v32], v36, v35);
    *v7 = v34;
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D4555C(uint64_t *a1)
{
  v5 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v38 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v11)
  {
    if (v9 == v9 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v21 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v12 = objc_autoreleasePoolPush();
  sub_101121DD0(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v12);
    __break(1u);
    objc_autoreleasePoolPop(v3);
    __break(1u);
  }

  else
  {
    v14 = v13;
    objc_autoreleasePoolPop(v12);
    v15 = [v14 recordID];
    swift_beginAccess();
    v16 = *(v1 + 24);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(v1 + 24);
      }

      v18 = *(v1 + 24);

      v19 = v15;
      v20 = __CocoaDictionary.contains(_:)();

      if (v20)
      {
        goto LABEL_19;
      }
    }

    else if (*(v16 + 16))
    {
      v22 = *(v1 + 24);

      sub_100771FF8(v15);
      v24 = v23;

      if (v24)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v25 = *(v1 + 16);

      sub_100771FF8(v15);
      v27 = v26;

      if (v27)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v28 = 4;
        swift_willThrow();

        return;
      }
    }

    v39 = v15;
    v29 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v30 = *(v29 + 20);
    v31 = type metadata accessor for BeaconNamingRecord();
    v32 = *(v31 + 20);
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 16))(&v8[v30], a1 + v32, v33);
    v34 = *(v29 + 24);
    v35 = *(v31 + 24);
    v36 = objc_autoreleasePoolPush();
    sub_100DE1148(&v8[v34]);
    objc_autoreleasePoolPop(v36);
    *v8 = v14;
    (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
    swift_beginAccess();
    v37 = v14;
    sub_1001DDF1C(v8, v39);
    swift_endAccess();
  }
}

void sub_100D458E8(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v24 = *(v1 + 16);

      sub_100771FF8(v14);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();

        return;
      }
    }

    v28 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v29 = *(v28 + 20);
    v30 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v29], a1 + v30, v31);
    v32 = *(v28 + 24);
    v33 = qword_101695470;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    v36 = sub_1000076D4(v35, qword_10177CD50);
    (*(*(v35 - 8) + 16))(&v7[v32], v36, v35);
    *v7 = v34;
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D45CB0(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_1011224E4(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v24 = *(v1 + 16);

      sub_100771FF8(v14);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();

        return;
      }
    }

    v28 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v29 = *(v28 + 20);
    v30 = *(type metadata accessor for MemberSharingCircle() + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v29], a1 + v30, v31);
    v32 = *(v28 + 24);
    v33 = qword_101694680;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    v36 = sub_1000076D4(v35, qword_10177AC60);
    (*(*(v35 - 8) + 16))(&v7[v32], v36, v35);
    *v7 = v34;
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D46078(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_101121880(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v24 = *(v1 + 16);

      sub_100771FF8(v14);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();

        return;
      }
    }

    v28 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v29 = *(v28 + 20);
    v30 = *(type metadata accessor for MemberPeerTrust() + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v29], a1 + v30, v31);
    v32 = *(v28 + 24);
    v33 = qword_101694F30;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    v36 = sub_1000076D4(v35, qword_10177C1D0);
    (*(*(v35 - 8) + 16))(&v7[v32], v36, v35);
    *v7 = v34;
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D46440(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_10112299C(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    v37[11] = v1;
    if (*(*(v1 + 16) + 16))
    {

      sub_100771FF8(v14);
      v25 = v24;

      if (v25)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v26 = 4;
        swift_willThrow();

        return;
      }
    }

    v27 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v28 = *(v27 + 20);
    found = type metadata accessor for NotifyWhenFoundRecord();
    v30 = *(found + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v28], a1 + v30, v31);
    v32 = *(v27 + 24);
    v33 = qword_1016947A0;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    sub_1000076D4(v35, qword_10177AEC8);
    v36 = a1 + *(found + 24);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    *v7 = v34;
    (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

void sub_100D467FC(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_14:
      sub_100D48968();
      swift_allocError();
      *v20 = 3;
      swift_willThrow();
      return;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  sub_101121820(a1);
  if (v2)
  {
    objc_autoreleasePoolPop(v11);
    __break(1u);
  }

  else
  {
    v13 = v12;
    objc_autoreleasePoolPop(v11);
    v14 = [v13 recordID];
    swift_beginAccess();
    v15 = *(v1 + 24);
    if ((v15 & 0xC000000000000001) != 0)
    {
      if (v15 < 0)
      {
        v16 = *(v1 + 24);
      }

      v17 = *(v1 + 24);

      v18 = v14;
      v19 = __CocoaDictionary.contains(_:)();

      if (v19)
      {
        goto LABEL_19;
      }
    }

    else if (*(v15 + 16))
    {
      v21 = *(v1 + 24);

      sub_100771FF8(v14);
      v23 = v22;

      if (v23)
      {
        goto LABEL_19;
      }
    }

    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {
      v24 = *(v1 + 16);

      sub_100771FF8(v14);
      v26 = v25;

      if (v26)
      {
LABEL_19:
        sub_100D48968();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();

        return;
      }
    }

    v28 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v29 = *(v28 + 20);
    v30 = *(type metadata accessor for OwnerPeerTrust() + 20);
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(&v7[v29], a1 + v30, v31);
    v32 = *(v28 + 24);
    v33 = qword_101694568;
    v34 = v13;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for URL();
    v36 = sub_1000076D4(v35, qword_10177A918);
    (*(*(v35 - 8) + 16))(&v7[v32], v36, v35);
    *v7 = v34;
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
    swift_beginAccess();
    sub_1001DDF1C(v7, v14);
    swift_endAccess();
  }
}

uint64_t sub_100D46BC4(id *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v138 = *(v5 - 8);
  v6 = *(v138 + 64);
  __chkstk_darwin(v5);
  v128 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v132 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v125 - v12;
  v135 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v13 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v134 = &v125 - v14;
  v133 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v15 = *(v133 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v133);
  v126 = (&v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v18 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131);
  v129 = (&v125 - v19);
  v20 = sub_1000BC4D4(&qword_1016CACC0, &qword_1013E4BE0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v125 - v22;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v25 = *(*(v24 - 1) + 64);
  __chkstk_darwin(v24);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D4A580(a2, v27, type metadata accessor for SharedBeaconRecord);
  v28 = [*a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v30 = v24[6];
  v31 = sub_100D42DB8(&qword_1016984A0, 255, &type metadata accessor for UUID);
  v139 = v2;
  v136 = v5;
  v32 = ObjectType;
  v127 = v31;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v33 = UUID.uuidString.getter();
    *(&v141 + 1) = &type metadata for String;
    v142 = &protocol witness table for String;
    *&v140 = v33;
    *(&v140 + 1) = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v35 = v24[7];
  v36 = v139;
  v37 = v139 + v35;
  v38 = *(v139 + v35);
  v39 = &v27[v35];
  v41 = *(v39 + 1);
  v40 = *(v39 + 2);
  if (v38 != *v39 || (*(v37 + 8) != v41 || *(v37 + 16) != v40) && (v42 = *(v39 + 1), v43 = *(v39 + 2), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    *(&v141 + 1) = &type metadata for String;
    v142 = &protocol witness table for String;
    *&v140 = v41;
    *(&v140 + 1) = v40;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v44 = v24[8];
  v45 = *(v36 + v44);
  v46 = *(v36 + v44 + 8);
  v47 = &v27[v44];
  v49 = *v47;
  v48 = *(v47 + 1);
  if (v45 != *v47 || v46 != v48)
  {
    v50 = *v47;
    v51 = *(v47 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v141 + 1) = &type metadata for String;
      v142 = &protocol witness table for String;
      *&v140 = v49;
      *(&v140 + 1) = v48;

      v36 = v139;
      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v52 = v24[9];
  v53 = *(v36 + v52);
  v54 = *(v36 + v52 + 8);
  v55 = &v27[v52];
  v57 = *v55;
  v56 = *(v55 + 1);
  if (v53 != *v55 || v54 != v56)
  {
    v58 = *v55;
    v59 = *(v55 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v141 + 1) = &type metadata for String;
      v142 = &protocol witness table for String;
      *&v140 = v57;
      *(&v140 + 1) = v56;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v60 = v24[10];
  v61 = *(v36 + v60);
  v62 = *(v36 + v60 + 8);
  v63 = &v27[v60];
  v65 = *v63;
  v64 = *(v63 + 1);
  if (v61 != *v63 || v62 != v64)
  {
    v66 = *v63;
    v67 = *(v63 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v141 + 1) = &type metadata for String;
      v142 = &protocol witness table for String;
      *&v140 = v65;
      *(&v140 + 1) = v64;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v68 = v24[11];
  v69 = *(v36 + v68);
  v70 = *&v27[v68];
  if (v69 != v70)
  {
    *(&v141 + 1) = &type metadata for Int;
    v142 = &protocol witness table for Int;
    *&v140 = v70;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v71 = v24[12];
  v72 = *(v36 + v71);
  v73 = *&v27[v71];
  if (v72 != v73)
  {
    *(&v141 + 1) = &type metadata for Int;
    v142 = &protocol witness table for Int;
    *&v140 = v73;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v74 = v24[15];
  v75 = *(v36 + v74);
  v76 = *&v27[v74];
  if (v75 != v76)
  {
    *(&v141 + 1) = &type metadata for Int;
    v142 = &protocol witness table for Int;
    *&v140 = v76;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v77 = v24[13];
  v78 = *(v36 + v77);
  v79 = v27[v77];
  if (v78 != v79)
  {
    *(&v141 + 1) = &type metadata for Bool;
    v142 = &protocol witness table for Bool;
    LOBYTE(v140) = v79;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v80 = v24[16];
  v81 = *(v36 + v80);
  v82 = v27[v80];
  if (v81 != v82)
  {
    *(&v141 + 1) = &type metadata for Int;
    v142 = &protocol witness table for Int;
    *&v140 = v82;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v83 = v24[17];
  v84 = *(v36 + v83);
  v85 = *&v27[v83];
  if (v84 != v85)
  {
    *(&v141 + 1) = &type metadata for UInt64;
    v142 = &protocol witness table for UInt64;
    *&v140 = v85;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v86 = v24[18];
  v87 = type metadata accessor for Date();
  sub_100D42DB8(&qword_101698290, 255, &type metadata accessor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(&v141 + 1) = v87;
    v142 = &protocol witness table for Date;
    v88 = sub_1000280DC(&v140);
    (*(*(v87 - 8) + 16))(v88, &v27[v86], v87);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v137 = v32;
  v89 = v24[20];
  v90 = *(v20 + 48);
  sub_1000D2A70(v139 + v89, v23, &unk_1016AF890, &qword_1013926D0);
  sub_1000D2A70(&v27[v89], &v23[v90], &unk_1016AF890, &qword_1013926D0);
  v91 = *(v15 + 48);
  v92 = v133;
  if (v91(v23, 1, v133) == 1)
  {
    if (v91(&v23[v90], 1, v92) == 1)
    {
      sub_10000B3A8(v23, &unk_1016AF890, &qword_1013926D0);
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v93 = v129;
  sub_1000D2A70(v23, v129, &unk_1016AF890, &qword_1013926D0);
  if (v91(&v23[v90], 1, v92) == 1)
  {
    sub_100D4A3EC(v93, type metadata accessor for SharedBeaconRecord.PropertyListContent);
LABEL_39:
    sub_10000B3A8(v23, &qword_1016CACC0, &qword_1013E4BE0);
LABEL_40:
    v94 = type metadata accessor for PropertyListEncoder();
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100D4A21C();
    v99 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v101 = v100;

    *(&v141 + 1) = &type metadata for Data;
    v142 = &protocol witness table for Data;
    *&v140 = v99;
    *(&v140 + 1) = v101;
    sub_100017D5C(v99, v101);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100016590(v99, v101);
    goto LABEL_42;
  }

  v97 = v126;
  sub_100D4A2D4(&v23[v90], v126, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  v98 = sub_1011DBB88(v93, v97);
  sub_100D4A3EC(v97, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  sub_100D4A3EC(v93, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  sub_10000B3A8(v23, &unk_1016AF890, &qword_1013926D0);
  if (!v98)
  {
    goto LABEL_40;
  }

LABEL_42:
  v102 = v24[19];
  v103 = v134;
  v104 = *(v135 + 48);
  sub_1000D2A70(v139 + v102, v134, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(&v27[v102], v103 + v104, &qword_1016980D0, &unk_10138F3B0);
  v105 = *(v138 + 48);
  v106 = v136;
  v107 = v105(v103, 1, v136);
  v135 = v28;
  if (v107 == 1)
  {
    v108 = v105(v103 + v104, 1, v106) == 1;
    v109 = v103;
    if (v108)
    {
      sub_10000B3A8(v103, &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_53;
    }
  }

  else
  {
    v110 = v130;
    sub_1000D2A70(v103, v130, &qword_1016980D0, &unk_10138F3B0);
    v111 = v105(v103 + v104, 1, v106);
    v112 = v103;
    if (v111 != 1)
    {
      v122 = v138;
      v123 = v128;
      (*(v138 + 32))(v128, v112 + v104, v106);
      LODWORD(v133) = dispatch thunk of static Equatable.== infix(_:_:)();
      v124 = *(v122 + 8);
      v124(v123, v106);
      v124(v110, v106);
      sub_10000B3A8(v134, &qword_1016980D0, &unk_10138F3B0);
      if (v133)
      {
        goto LABEL_53;
      }

      goto LABEL_49;
    }

    (*(v138 + 8))(v110, v106);
    v109 = v103;
  }

  sub_10000B3A8(v109, &qword_1016AF880, &unk_10138CE20);
LABEL_49:
  v113 = &v27[v102];
  v114 = v132;
  sub_1000D2A70(v113, v132, &qword_1016980D0, &unk_10138F3B0);
  v115 = v136;
  if (v105(v114, 1, v136) == 1)
  {
    sub_10000B3A8(v114, &qword_1016980D0, &unk_10138F3B0);
    v140 = 0u;
    v141 = 0u;
    v142 = 0;
  }

  else
  {
    v116 = UUID.uuidString.getter();
    *(&v141 + 1) = &type metadata for String;
    v142 = &protocol witness table for String;
    *&v140 = v116;
    *(&v140 + 1) = v117;
    (*(v138 + 8))(v114, v115);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_53:
  v118 = v24[14];
  v119 = *(v139 + v118);
  v120 = v27[v118];
  if (v119 == 3)
  {
    if (v120 != 3)
    {
      goto LABEL_59;
    }
  }

  else if (v119 != v120)
  {
    if (v120 == 3)
    {
      v142 = 0;
      v140 = 0u;
      v141 = 0u;
LABEL_60:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_61;
    }

LABEL_59:
    *(&v141 + 1) = &type metadata for Int;
    v142 = &protocol witness table for Int;
    *&v140 = v120;
    goto LABEL_60;
  }

LABEL_61:
  swift_unknownObjectRelease();
  return sub_100D4A3EC(v27, type metadata accessor for SharedBeaconRecord);
}

void sub_100D47A74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _StringGuts.grow(_:)(41);
  v6._countAndFlagsBits = 0x286567617373654DLL;
  v6._object = 0xEE00203A65707974;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x6F6973726576202CLL;
  v7._object = 0xEB00000000203A6ELL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3A7365747962202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_9:
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    return;
  }

  __break(1u);
}

Swift::Int sub_100D47C24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&unk_1016C2D40, &unk_1013F7630);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100FE8904(v12 + 1, 1);
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

Swift::Int sub_100D47E70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000BC4D4(&qword_1016C2F00, &qword_1013E4BD8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100008BB8(0, &qword_1016BA500, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100FF7B08(v12 + 1, 1);
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

void *sub_100D480BC(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100D49E64(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100D4814C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100D3AC6C(v2, v3);
}

uint64_t sub_100D481F4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v5);
  v11 = *v7;
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D36B7C(v6, v0 + v3, v11, v8, v9, v10);
}

uint64_t sub_100D4832C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5 + 8);
  v8 = *(v0 + v5 + 16);
  v9 = *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D36E28(v0 + v3, v6, v10, v7, v8);
}

uint64_t sub_100D48470()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100D4855C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v4;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v5);
  v11 = *v7;
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D32E7C(v6, v0 + v3, v11, v8, v9, v10);
}

uint64_t sub_100D48694()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v5);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v6;
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100014744;

  return sub_100D33120(v0 + v3, v11, v8, v9, v7);
}

unint64_t sub_100D487D8()
{
  result = qword_1016BA4D0;
  if (!qword_1016BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4D0);
  }

  return result;
}

void sub_100D4882C()
{
  v1 = *(v0 + 16);
  v2[2] = *(v0 + 24);
  sub_100D44190(v1, sub_100D48960, v2);
}

uint64_t sub_100D4887C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D3688C(a1, a2, v2);
}

unint64_t sub_100D48968()
{
  result = qword_1016BA4D8;
  if (!qword_1016BA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4D8);
  }

  return result;
}

unint64_t sub_100D489BC()
{
  result = qword_1016BC2F0;
  if (!qword_1016BC2F0)
  {
    sub_1000BC580(&qword_1016BC2D0, &unk_1013E4B00);
    sub_100D42DB8(&qword_101698330, 255, &type metadata accessor for UUID);
    sub_100D48A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC2F0);
  }

  return result;
}

unint64_t sub_100D48A7C()
{
  result = qword_1016BC300;
  if (!qword_1016BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC300);
  }

  return result;
}

uint64_t sub_100D48AD0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100D2FA90(v4, v8, v5, v6, v0 + v3, v7);
}

uint64_t sub_100D48BFC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v0 + 24);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D30B30(v4, v10, v5, v6, v7, v8, v0 + v3);
}

uint64_t sub_100D48D58()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for OwnerSharingCircle() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

unint64_t sub_100D48DC8()
{
  result = qword_1016BA4E0;
  if (!qword_1016BA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4E0);
  }

  return result;
}

uint64_t sub_100D48E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a3;
  v5[4] = a4;
  v5[2] = a1;
  v6 = type metadata accessor for UUID();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100D48EE0, v4, 0);
}

uint64_t sub_100D48EE0()
{
  v24 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BF80);
  (*(v2 + 16))(v1, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v21 = v0[3];
    v22 = v0[4];
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446723;
    sub_100D42DB8(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    *(v13 + 24) = sub_1000136BC(v21, v22, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "Message %{public}s delivered successfully from %{private,mask.hash}s.", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100D49174(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = v11;
  *(v9 + 80) = v8;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 88) = a4;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  return _swift_task_switch(sub_100D491AC, v8, 0);
}

uint64_t sub_100D491AC()
{
  v37 = v0;
  if (qword_101694E20 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BF80);
  sub_100017D5C(v2, v1);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    v34 = *(v0 + 24);
    v35 = *(v0 + 32);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446723;
    sub_100D47A74(v10, v9, v8, v7);
    v14 = sub_1000136BC(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1000136BC(v34, v35, &v36);
    _os_log_impl(&_mh_execute_header, v5, v6, "Message %{public}s received from %{private,mask.hash}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315138;
    type metadata accessor for Transaction();
    result = static Transaction.current.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = result;
    sub_100D42DB8(&qword_1016BA4E8, 255, &type metadata accessor for Transaction);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;

    v23 = sub_1000136BC(v20, v22, &v36);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "txn: %s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  v24 = *(v0 + 72);
  v25 = *(v0 + 80);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 88);
  sub_100D26C0C(v31, v32);
  sub_1005968A4(v30, v29, v28, v27, v26, v24);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_100D49540()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v43 = (v2 + 17) & ~v2;
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v42 = (v43 + v3 + v5) & ~v5;
  v6 = *(v4 + 64);
  v7 = (v6 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v3 + ((v6 + v2 + ((v5 + v10 + 16) & ~v5)) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = v0 + v7;
  v40 = *(v15 + 16);
  v41 = *(v15 + 8);
  v16 = (v0 + v8);
  v38 = v16[1];
  v39 = *v16;
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v9);
  v18 = (v0 + v10);
  v35 = v18[1];
  v36 = *v18;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v0 + v11 + 8);
  v34 = *(v0 + v11);
  v30 = *(v0 + v12 + 8);
  v32 = *(v0 + v12);
  v21 = *(v0 + v13);
  v20 = *(v0 + v13 + 8);
  v22 = *(v0 + v14);
  LODWORD(v2) = *(v0 + v14 + 4);
  v23 = *(v0 + v17);
  v24 = *(v0 + v19);
  v25 = *(v0 + v19 + 8);
  v26 = *(v0 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  v31 = *v15;
  v27 = *(v0 + 16);
  v28 = swift_task_alloc();
  *(v44 + 16) = v28;
  *v28 = v44;
  v28[1] = sub_100014744;

  return sub_100D2BA20(v27, v0 + v43, v0 + v42, v31, v41, v40, v39, v38);
}

uint64_t sub_100D49820()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100190C20(v2, v3, v4);
}

uint64_t sub_100D498C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100190E0C(a1, v4, v5, v6);
}

uint64_t sub_100D49978()
{
  v2 = *(sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + 16);
  v11 = v0 + v8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = (v0 + v9);
  v15 = *v14;
  v16 = v14[1];
  v18 = *(v0 + v10);
  v17 = *(v0 + v10 + 8);
  v19 = swift_task_alloc();
  *(v1 + 16) = v19;
  *v19 = v1;
  v19[1] = sub_100014650;

  return sub_1003A0B74(v22, v0 + v3, v0 + v6, v12, v13, v15, v16, v18);
}

unint64_t sub_100D49B80()
{
  result = qword_1016BA4F8;
  if (!qword_1016BA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA4F8);
  }

  return result;
}

uint64_t sub_100D49BD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100D49C94()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5 + 8);
  v8 = *(v0 + v5 + 16);
  v9 = *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_100D3BDBC(v0 + v3, v6, v10, v7, v8);
}

uint64_t sub_100D49E10(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *(v2 + 16);
  v5 = *(type metadata accessor for OwnerPeerTrust() + 20);
  return static UUID.== infix(_:_:)() & (v3 == 2);
}

uint64_t sub_100D49E64(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void))
{
  v26 = a2;
  v34 = a4;
  v27 = a1;
  v33 = type metadata accessor for UUID();
  v5 = *(*(v33 - 8) + 64);
  result = __chkstk_darwin(v33);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v9 = 0;
  v35 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v30 = v7 + 16;
  v28 = 0;
  v29 = v7 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v36 = (v15 - 1) & v15;
LABEL_11:
    v37 = v17 | (v9 << 6);
    v20 = v35;
    v22 = v31;
    v21 = v32;
    v23 = v37;
    v24 = v33;
    (*(v32 + 16))(v31, v35[6] + *(v32 + 72) * v37, v33);
    LOBYTE(v20) = v34(v22, *(v20[7] + v23));
    result = (*(v21 + 8))(v22, v24);
    v15 = v36;
    if (v20)
    {
      *(v27 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_10061C234(v27, v26, v28, v35);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_10061C234(v27, v26, v28, v35);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D4A09C(uint64_t a1, uint64_t (*a2)(char *, void))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_100D49E64(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100D480BC(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_100D4A21C()
{
  result = qword_1016BA508;
  if (!qword_1016BA508)
  {
    sub_1000BC580(&unk_1016AF890, &qword_1013926D0);
    sub_100D42DB8(&qword_1016BA510, 255, type metadata accessor for SharedBeaconRecord.PropertyListContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA508);
  }

  return result;
}

uint64_t sub_100D4A2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D4A33C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100D2AA74(a1, a2);
}

uint64_t sub_100D4A3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D4A44C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100D2947C(a1, a2, v2);
}

uint64_t sub_100D4A4F8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100D4A580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100D4A5FC()
{
  result = qword_1016BA540;
  if (!qword_1016BA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA540);
  }

  return result;
}

uint64_t sub_100D4A674()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFB0);
  v1 = sub_1000076D4(v0, qword_10177BFB0);
  if (qword_101694E38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D4A73C()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v8 = sub_100D4F760(&qword_1016BA700, v7, type metadata accessor for FamilyCircleService);
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v0;
  v9[5] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v5, &unk_1013E4EA0, v9);
}

uint64_t sub_100D4A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1000BC4D4(&qword_1016BA728, &qword_1013E4EA8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016BA730, &unk_1013E4EB0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[11] = v11;
  *v11 = v4;
  v11[1] = sub_100D4AA14;

  return sub_100D4AFA4();
}

uint64_t sub_100D4AA14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 32);
  v8 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v6 = sub_100D4ACEC;
  }

  else
  {
    v6 = sub_100D4AB40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D4AB40()
{
  type metadata accessor for Transaction();
  result = static Transaction.current.getter();
  if (result)
  {
    v2 = result;
    v3 = *(v0[4] + 128);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[9];
      v21 = *(v5 + 16);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v19 = *(v0[4] + 128);
      v20 = *(v5 + 72);
      v7 = (v0[6] + 8);
      v22 = v2;
      v8 = (v5 + 8);

      do
      {
        v9 = v0[12];
        v10 = v0[10];
        v12 = v0[7];
        v11 = v0[8];
        v13 = v0[5];
        v21(v10, v6, v11);
        v0[2] = v22;
        v0[3] = v9;

        AsyncStream.Continuation.yield(_:)();
        (*v7)(v12, v13);
        (*v8)(v10, v11);
        v6 += v20;
        --v4;
      }

      while (v4);
      v14 = v0[12];
    }

    else
    {
      v15 = v0[12];
    }

    v16 = v0[10];
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100D4ACEC()
{
  if (qword_101694E30 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BFB0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching members: %{public}@", v7, 0xCu);
    sub_100288C6C(v8);
  }

  else
  {
  }

  v10 = v0[10];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D4AE8C()
{
  v1 = v0;
  if (qword_101694E30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BFB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Flushing cached familyMembers", v5, 2u);
  }

  v6 = *(v1 + 152);
  *(v1 + 152) = 0;

  swift_beginAccess();
  v7 = *(v1 + 160);
  *(v1 + 160) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_100D4AFC4()
{
  v1 = *(v0[19] + 152);
  if (v1)
  {
    v2 = qword_101694E40;
    v3 = *(v0[19] + 152);

    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BFE0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Using cached FamilyCircle", v7, 2u);
    }

    v8 = v0[1];

    return v8(v1);
  }

  else
  {
    v10 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    v0[20] = v10;
    [v10 setCachePolicy:1];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100D4B20C;
    v11 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016BA720, &unk_1013E4E88);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100D4B740;
    v0[13] = &unk_10164F808;
    v0[14] = v11;
    [v10 startRequestWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100D4B20C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_100D4B6D0;
  }

  else
  {
    v5 = sub_100D4B32C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100D4B32C()
{
  v1 = v0[18];
  v2 = [v1 members];
  sub_100D4F6A8();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_33:
    v48 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_34:
    v47 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v48 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_34;
  }

LABEL_3:
  v5 = 0;
  v46 = v1;
  v47 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v48 + 16))
        {
          goto LABEL_32;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v9 = [v7 altDSID];
      if (v9)
      {
        break;
      }

LABEL_6:

      ++v6;
      if (v5 == v4)
      {
        v1 = v46;
        goto LABEL_35;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v12;

    v13 = [v8 appleID];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v16;

    v43 = [v8 isMe];
    v17 = [v8 firstName];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v20;
      v42 = v19;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v21 = [v8 lastName];
    v45 = v15;
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v24;
      v40 = v23;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v25 = [v8 fullName];
    if (v25)
    {
      v26 = v25;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {

      v38 = 0;
      v28 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_100A5E3E4(0, *(v47 + 2) + 1, 1, v47);
    }

    v30 = *(v47 + 2);
    v29 = *(v47 + 3);
    if (v30 >= v29 >> 1)
    {
      v47 = sub_100A5E3E4((v29 > 1), v30 + 1, 1, v47);
    }

    *(v47 + 2) = v30 + 1;
    v31 = &v47[88 * v30];
    *(v31 + 4) = v11;
    *(v31 + 5) = v1;
    *(v31 + 6) = v45;
    *(v31 + 7) = v44;
    v31[64] = v43;
    *(v31 + 65) = *v49;
    *(v31 + 17) = *&v49[3];
    *(v31 + 9) = v42;
    *(v31 + 10) = v41;
    *(v31 + 11) = v40;
    *(v31 + 12) = v39;
    *(v31 + 13) = v38;
    *(v31 + 14) = v28;
    v1 = v46;
  }

  while (v5 != v4);
LABEL_35:
  v33 = v0[19];
  v32 = v0[20];

  v34 = sub_10112B2E0(v47);

  v35 = *(v33 + 152);
  *(v33 + 152) = v34;

  v36 = v0[1];

  return v36(v34);
}

uint64_t sub_100D4B6D0()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_100D4B740(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000035D0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100D4B818()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100D4B8AC;

  return daemon.getter();
}

uint64_t sub_100D4B8AC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 32) = a1;

  type metadata accessor for Daemon();
  sub_100D4F760(&qword_1016969E0, 255, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D4BA08, v5, v4);
}

uint64_t sub_100D4BA08()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[5] = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100D4BA80, v2, 0);
}

uint64_t sub_100D4BA80()
{
  v1 = v0[2];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v0[6] = v3;
  v5 = swift_allocObject();
  v0[7] = v5;
  swift_weakInit();
  v6 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v10 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100D4BBA4;
  v8 = v0[5];

  return v10(v2, v4, &unk_1013E4E80, v5);
}

uint64_t sub_100D4BBA4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 16);
  v8 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100D4BD1C, v6, 0);
}

uint64_t sub_100D4BD1C()
{
  v1 = v0[2];
  v2 = *(v1 + 136);
  *(v1 + 136) = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100D4BDAC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100D4BE64, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100D4BE64()
{
  v1 = *(v0 + 48);
  sub_100D4AE8C();
  sub_100D4A73C();

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_100D4BED0(uint64_t a1)
{
  *(v2 + 64) = v1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_100D4BF80;

  return sub_100E8BEF8(a1);
}

uint64_t sub_100D4BF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *(*v4 + 72);
  v8 = *v4;
  v6[10] = a1;
  v6[11] = a2;
  v6[12] = a3;

  if (v3)
  {
    v9 = *(v8 + 8);
LABEL_3:

    return v9(0);
  }

  if (!a3)
  {
    v9 = *(v8 + 8);
    goto LABEL_3;
  }

  v11 = async function pointer to unsafeBlocking<A>(_:)[1];
  v12 = swift_task_alloc();
  v6[13] = v12;
  v13 = sub_1000BC4D4(&qword_1016BA718, &unk_1013E4E60);
  *v12 = v8;
  v12[1] = sub_100D4C150;

  return unsafeBlocking<A>(_:)(v6 + 6, sub_100D4C690, 0, v13);
}

uint64_t sub_100D4C150()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100D4C260, v2, 0);
}

void sub_100D4C260()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 96);

    swift_errorRetain();
    if (qword_101694E40 == -1)
    {
LABEL_3:
      v3 = type metadata accessor for Logger();
      sub_1000076D4(v3, qword_10177BFE0);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      sub_1001DB7B8(v1, 1);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "FMFFollowers error: %@", v6, 0xCu);
        sub_100288C6C(v7);
      }

      swift_willThrow();
      sub_1001DB7B8(v1, 1);
      v9 = *(v0 + 8);
      v10 = 0;
      goto LABEL_26;
    }

LABEL_30:
    swift_once();
    goto LABEL_3;
  }

  v38 = v0;
  v11 = v1 + 56;
  v12 = -1;
  v13 = -1 << *(v1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v0 = v12 & *(v1 + 56);
  v14 = (63 - v13) >> 6;

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v37 = v1;
  if (!v0)
  {
LABEL_10:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v33 = *(v38 + 88);
        v32 = *(v38 + 96);
        v34 = *(v38 + 80);

        v35 = sub_101129FC8(v16);

        v36 = sub_10111FDB4(v34, v33, v32, v35);

        sub_1001DB7B8(v1, 0);

        v9 = *(v38 + 8);
        v10 = v36 & 1;
LABEL_26:

        v9(v10);
        return;
      }

      v0 = *(v11 + 8 * v17);
      ++v15;
      if (v0)
      {
        v39 = v16;
        v15 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v39 = v16;
LABEL_14:
    v18 = (*(v1 + 48) + 40 * (__clz(__rbit64(v0)) | (v15 << 6)));
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[4];
    *(v38 + 16) = *v18;
    *(v38 + 24) = v19;
    *(v38 + 32) = 64;
    *(v38 + 40) = 0xE100000000000000;
    sub_1000DF96C();

    v22 = StringProtocol.contains<A>(_:)();
    v23 = String._bridgeToObjectiveC()();
    if (v22)
    {
      break;
    }

    v24 = IDSCopyIDForPhoneNumber();

    if (!v24)
    {
      goto LABEL_32;
    }

    v25 = 1;
LABEL_19:

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v16 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100A5C1F8(0, *(v39 + 2) + 1, 1, v39);
    }

    v30 = *(v16 + 2);
    v29 = *(v16 + 3);
    if (v30 >= v29 >> 1)
    {
      v16 = sub_100A5C1F8((v29 > 1), v30 + 1, 1, v16);
    }

    *(v16 + 2) = v30 + 1;
    v31 = &v16[24 * v30];
    v31[32] = v25;
    v0 &= v0 - 1;
    *(v31 + 5) = v26;
    *(v31 + 6) = v28;
    v1 = v37;
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  v24 = IDSCopyIDForEmailAddress();

  if (v24)
  {
    v25 = 0;
    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_100D4C690@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016A4770, &qword_1013E4E70);
  unsafeFromAsyncTask<A>(_:)();
  v2 = qword_101694CF0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  __chkstk_darwin(v3);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  result = sub_1001DB7B8(v5, 0);
  *a1 = v5;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100D4C7CC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a2;
  *(v4 + 352) = a1;
  return _swift_task_switch(sub_100D4C7F4, v3, 0);
}

uint64_t sub_100D4C7F4()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 352);

    v6 = sub_100772110(v5, v4, v3);
    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];

      v11 = *(v0 + 8);

      return v11(v9, v10);
    }
  }

  return _swift_task_switch(sub_100D4C908, 0, 0);
}

uint64_t sub_100D4C908()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = qword_101699690;
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100D4C9DC;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 352);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_100D4C9DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v6 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v4[27] = v9;
    *v9 = v6;
    v9[1] = sub_100D4CB50;
    v10 = v4[22];

    return sub_100D4AFA4();
  }
}

uint64_t sub_100D4CB50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 176);
  if (v1)
  {
    v8 = sub_100D4DC48;
  }

  else
  {
    v8 = sub_100D4CC84;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100D4CC84()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v1 + 32);
  *(v0 + 353) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 240) = v6;
    *(v0 + 248) = v7;
    v10 = (*(v1 + 48) + 88 * (__clz(__rbit64(v6)) | (v7 << 6)));
    v12 = v10[2];
    v11 = v10[3];
    *(v0 + 256) = v10[9];
    *(v0 + 264) = v10[10];
    *(v0 + 120) = v12;
    *(v0 + 128) = v11;
    *(v0 + 136) = 64;
    *(v0 + 144) = 0xE100000000000000;
    sub_1000DF96C();

    v13 = StringProtocol.contains<A>(_:)();
    v14 = String._bridgeToObjectiveC()();
    if (v13)
    {
      v15 = IDSCopyIDForEmailAddress();

      if (v15)
      {
        v19 = 0;
        goto LABEL_13;
      }

      __break(1u);
    }

    else
    {
      v15 = IDSCopyIDForPhoneNumber();

      if (v15)
      {
        v19 = 1;
LABEL_13:
        *(v0 + 354) = v19;
        v20 = *(v0 + 184);

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        *(v0 + 272) = v23;
        *(v0 + 280) = v21;
        v16 = sub_100D4CEC0;
        v17 = v20;
        v18 = 0;

        return _swift_task_switch(v16, v17, v18);
      }
    }

    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  v8 = 0;
  v9 = ((63 - v5) >> 6) - 1;
  while (v9 != v8)
  {
    v7 = v8 + 1;
    v6 = *(v1 + 8 * v8++ + 64);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  sub_100D4F70C();
  swift_allocError();
  *v24 = 1;
  swift_willThrow();
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100D4CEC0()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 354);
  v4 = *(v0 + 184);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 288) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v6 = *(v4 + 112);
  *(v0 + 296) = v6;
  if (v6)
  {
    v7 = *(v0 + 184);
    v8 = sub_100D4F760(&qword_1016996B0, 255, type metadata accessor for MessagingQueryController);
    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    v9[2] = inited;
    v9[3] = v6;
    v9[4] = v7;
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = v6;
    v12 = swift_task_alloc();
    *(v0 + 312) = v12;
    v13 = sub_1000BC4D4(&qword_1016996B8, &qword_101391C40);
    *v12 = v0;
    v12[1] = sub_100D4D110;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 152, v7, v8, 0xD00000000000001CLL, 0x800000010134D210, sub_1001DD080, v9, v13);
  }

  else
  {
    v14 = *(v0 + 264);
    v15 = *(v0 + 208);

    swift_setDeallocating();
    sub_1001BAE8C(inited + 32);
    sub_1001DCF6C();
    v16 = swift_allocError();
    *v17 = 6;
    swift_willThrow();
    *(v0 + 328) = v16;
    v18 = *(v0 + 176);

    return _swift_task_switch(sub_100D4D524, v18, 0);
  }
}

uint64_t sub_100D4D110()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[38];
  v6 = v2[36];
  if (v0)
  {
    v7 = v2[33];
    v8 = v2[26];
    v9 = v2[23];
    swift_setDeallocating();
    v10 = *(v6 + 16);
    swift_arrayDestroy();

    v11 = sub_100D4D4B4;
    v12 = v9;
  }

  else
  {
    v13 = v2[23];
    swift_setDeallocating();
    v14 = *(v6 + 16);
    swift_arrayDestroy();

    v11 = sub_100D4D2D0;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100D4D2D0()
{
  v2 = 0;
  v3 = 0;
  v4 = *(v1 + 152);
  v5 = 1 << *(v4 + 32);
  while (1)
  {
    v6 = *(v4 + 8 * v3 + 64);
    if (v6)
    {
      break;
    }

    ++v3;
    v2 -= 64;
    if ((v5 + 63) >> 6 == v3)
    {
      goto LABEL_21;
    }
  }

  v7 = __clz(__rbit64(v6));
  if (v7 - v5 == v2)
  {
    goto LABEL_21;
  }

  if (-v2 < 0 || (v8 = v7 - v2, v8 >= v5))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (((*(v4 + 64 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL)) >> v7) & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_21:

    v10 = *(v1 + 176);
    v12 = sub_100D4D588;
    goto LABEL_22;
  }

  v0 = *(*(v4 + 56) + 8 * v8);
  v9 = *(v1 + 152);

  if (v0 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v12, v10, v11);
    }

    v13 = *(v0 + 32);
  }

  v14 = v13;

  v15 = [v14 senderCorrelationIdentifier];

  v16 = *(v1 + 176);
  if (v15)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v1 + 336) = v17;
    *(v1 + 344) = v19;
    v20 = sub_100D4D8BC;
  }

  else
  {
    v20 = sub_100D4F968;
  }

  v12 = v20;
  v10 = v16;
LABEL_22:
  v11 = 0;

  return _swift_task_switch(v12, v10, v11);
}