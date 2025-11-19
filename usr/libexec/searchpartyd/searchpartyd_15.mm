uint64_t sub_10019FCD4()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_10019FDC0;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C0, v5, v4);
}

uint64_t sub_10019FDC0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_10019FED8, v2, 0);
}

uint64_t sub_10019FED8()
{
  v1 = v0[7];
  v0[26] = v0[3];
  return _swift_task_switch(sub_10019FEFC, v1, 0);
}

uint64_t sub_10019FEFC()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 216) = v2;
  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(*(v0 + 168) + 20);
    *(v0 + 368) = v6;
    v7 = *(v3 + 80);
    *(v0 + 372) = v7;
    *(v0 + 224) = *(v3 + 72);
    *(v0 + 232) = 0;
    v8 = *(v0 + 192);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    sub_1001BB2E0(v1 + ((v7 + 32) & ~v7), v4, type metadata accessor for OwnedBeaconRecord);
    v11 = *(v10 + 16);
    *(v0 + 240) = v11;
    *(v0 + 248) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v4 + v6, v9);
    sub_1001BA80C(v4, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v12 = sub_1001A018C;
    v13 = v8;
LABEL_8:

    return _swift_task_switch(v12, v13, 0);
  }

  if ((*(v0 + 48) & 2) != 0)
  {
    v13 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v13;
    v12 = sub_1001A0BD8;
    goto LABEL_8;
  }

  v14 = *(v0 + 184);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 120);
  v18 = *(v0 + 96);
  v24 = *(v0 + 72);
  v19 = *(v0 + 56);
  type metadata accessor for Transaction();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 0;
  *(v21 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1001A018C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  (*(v0 + 240))(v4, *(v0 + 160), v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 264) = v10;
  *(v10 + 16) = v3;
  (*(v6 + 32))(v10 + v8, v4, v7);
  *(v10 + v9) = v2;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  v13 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v12 = v0;
  v12[1] = sub_1001A030C;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v10, v13);
}

uint64_t sub_1001A030C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return _swift_task_switch(sub_1001A0438, v3, 0);
}

uint64_t sub_1001A0438()
{
  v1 = v0[7];
  (*(v0[17] + 8))(v0[20], v0[16]);
  v0[35] = v0[4];

  return _swift_task_switch(sub_1001A04BC, v1, 0);
}

uint64_t sub_1001A04BC()
{
  if (*(*(v0 + 280) + 16))
  {
    v1 = swift_task_alloc();
    *(v0 + 288) = v1;
    *v1 = v0;
    v1[1] = sub_1001A07EC;
    v2 = *(v0 + 280);

    return sub_1003B64C0(v2);
  }

  v4 = *(v0 + 232) + 1;
  if (v4 == *(v0 + 216))
  {
    v5 = *(v0 + 208);

    if ((*(v0 + 48) & 2) == 0)
    {
      v6 = *(v0 + 184);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 120);
      v10 = *(v0 + 96);
      v24 = *(v0 + 72);
      v11 = *(v0 + 56);
      type metadata accessor for Transaction();
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v14 = *(v0 + 8);

      return v14();
    }

    v23 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v23;
    v22 = sub_1001A0BD8;
  }

  else
  {
    *(v0 + 232) = v4;
    v15 = *(v0 + 368);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v18 = *(v0 + 160);
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);
    sub_1001BB2E0(*(v0 + 208) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 224) * v4, v16, type metadata accessor for OwnedBeaconRecord);
    v21 = *(v20 + 16);
    *(v0 + 240) = v21;
    *(v0 + 248) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v18, v16 + v15, v19);
    sub_1001BA80C(v16, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v22 = sub_1001A018C;
    v23 = v17;
  }

  return _swift_task_switch(v22, v23, 0);
}

uint64_t sub_1001A07EC()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;

  v5 = *(v2 + 280);
  v6 = *(v2 + 56);
  if (v0)
  {

    v7 = sub_1001BE45C;
  }

  else
  {

    v7 = sub_1001A0948;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001A0948()
{
  v1 = *(v0 + 232) + 1;
  if (v1 == *(v0 + 216))
  {
    v2 = *(v0 + 208);

    if ((*(v0 + 48) & 2) == 0)
    {
      v3 = *(v0 + 184);
      v4 = *(v0 + 152);
      v5 = *(v0 + 160);
      v6 = *(v0 + 120);
      v7 = *(v0 + 96);
      v22 = *(v0 + 72);
      v8 = *(v0 + 56);
      type metadata accessor for Transaction();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v11 = *(v0 + 8);

      return v11();
    }

    v21 = *(*(v0 + 56) + 136);
    *(v0 + 296) = v21;
    v20 = sub_1001A0BD8;
  }

  else
  {
    *(v0 + 232) = v1;
    v13 = *(v0 + 368);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v16 = *(v0 + 160);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    sub_1001BB2E0(*(v0 + 208) + ((*(v0 + 372) + 32) & ~*(v0 + 372)) + *(v0 + 224) * v1, v14, type metadata accessor for OwnedBeaconRecord);
    v19 = *(v18 + 16);
    *(v0 + 240) = v19;
    *(v0 + 248) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v16, v14 + v13, v17);
    sub_1001BA80C(v14, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 256) = sub_100B08164(&off_101608148);
    v20 = sub_1001A018C;
    v21 = v15;
  }

  return _swift_task_switch(v20, v21, 0);
}

uint64_t sub_1001A0BD8()
{
  v1 = *(v0 + 296);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1001A0CC4;
  v5 = *(v0 + 296);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_1001A0CC4()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v4 = *v0;

  return _swift_task_switch(sub_1001A0DDC, v2, 0);
}

uint64_t sub_1001A0DDC()
{
  v1 = v0[7];
  v0[39] = v0[2];
  return _swift_task_switch(sub_1001A0E00, v1, 0);
}

uint64_t sub_1001A0E00()
{
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  *(v0 + 320) = v2;
  if (v2)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v3 + 80);
    *(v0 + 376) = v5;
    *(v0 + 328) = *(v3 + 72);
    *(v0 + 336) = 0;
    v6 = *(v0 + 296);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 380) = *(v4 + 24);

    return _swift_task_switch(sub_1001A100C, v6, 0);
  }

  else
  {

    v7 = *(v0 + 184);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v17 = *(v0 + 72);
    v12 = *(v0 + 56);
    type metadata accessor for Transaction();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1001A100C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  (*(v3 + 16))(v2, *(v0 + 120) + *(v0 + 380), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 344) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_1001A116C;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v6, v10);
}

uint64_t sub_1001A116C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1001A1298, v3, 0);
}

uint64_t sub_1001A1298()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  if ((*(*(v0 + 88) + 48))(v2, 1, v1) == 1)
  {
    sub_1001BA80C(*(v0 + 120), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  sub_1001BAAE8(v2, v3, type metadata accessor for SharedBeaconRecord);
  v4 = *(v0 + 120);
  if (*(v3 + *(v1 + 64)) != 2)
  {
    sub_1001BA80C(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
    sub_1001BA80C(v4, type metadata accessor for MemberSharingCircle);
LABEL_8:
    v8 = *(v0 + 336) + 1;
    if (v8 == *(v0 + 320))
    {
      v9 = *(v0 + 312);

      v10 = *(v0 + 184);
      v11 = *(v0 + 152);
      v12 = *(v0 + 160);
      v13 = *(v0 + 120);
      v14 = *(v0 + 96);
      v21 = *(v0 + 72);
      v15 = *(v0 + 56);
      type metadata accessor for Transaction();
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v18 = *(v0 + 8);

      return v18();
    }

    else
    {
      *(v0 + 336) = v8;
      v19 = *(v0 + 296);
      v20 = *(v0 + 104);
      sub_1001BB2E0(*(v0 + 312) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v8, *(v0 + 120), type metadata accessor for MemberSharingCircle);
      *(v0 + 380) = *(v20 + 24);

      return _swift_task_switch(sub_1001A100C, v19, 0);
    }
  }

  v5 = *(*(v0 + 104) + 28);
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_1001A1618;

  return sub_1003B7584(v4 + v5);
}

uint64_t sub_1001A1618()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;

  v5 = *(v2 + 56);
  if (v0)
  {

    v6 = sub_1001BE4D8;
  }

  else
  {
    v6 = sub_1001A1750;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A1750()
{
  v1 = *(v0 + 120);
  sub_1001BA80C(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
  v2 = *(v0 + 336) + 1;
  if (v2 == *(v0 + 320))
  {
    v3 = *(v0 + 312);

    v4 = *(v0 + 184);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 120);
    v8 = *(v0 + 96);
    v16 = *(v0 + 72);
    v9 = *(v0 + 56);
    type metadata accessor for Transaction();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 336) = v2;
    v14 = *(v0 + 296);
    v15 = *(v0 + 104);
    sub_1001BB2E0(*(v0 + 312) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v2, *(v0 + 120), type metadata accessor for MemberSharingCircle);
    *(v0 + 380) = *(v15 + 24);

    return _swift_task_switch(sub_1001A100C, v14, 0);
  }
}

uint64_t sub_1001A19A0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for OwnerPeerTrust();
  v2[20] = v6;
  v7 = *(v6 - 8);
  v2[21] = v7;
  v8 = *(v7 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  v2[25] = v9;
  v10 = *(v9 - 8);
  v2[26] = v10;
  v11 = *(v10 + 64) + 15;
  v2[27] = swift_task_alloc();
  v12 = type metadata accessor for MemberPeerTrust();
  v2[28] = v12;
  v13 = *(v12 - 8);
  v2[29] = v13;
  v14 = *(v13 + 64) + 15;
  v2[30] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v2[31] = v15;
  v16 = *(v15 - 8);
  v2[32] = v16;
  v17 = *(v16 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_1001A1C00, v1, 0);
}

uint64_t sub_1001A1C00()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  v0[36] = sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "forceBreakAllShares for %@ user", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v0[37] = v11;
  *v11 = v0;
  v11[1] = sub_1001A1DB8;

  return daemon.getter();
}

uint64_t sub_1001A1DB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  *(v3 + 304) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 312) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&qword_1016B1190, type metadata accessor for PeerTrustService);
  *v6 = v12;
  v6[1] = sub_1001A1F94;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001A1F94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v10 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = v3[16];
    v6 = sub_1001A428C;
  }

  else
  {
    v7 = v3[38];
    v8 = v3[16];

    v6 = sub_1001A20BC;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A20BC()
{
  v1 = v0[15];
  sub_100EB3858();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[42] = v6;
  v8 = swift_task_alloc();
  v0[43] = v8;
  *v8 = v0;
  v8[1] = sub_1001A2178;
  v9 = v0[40];

  return sub_100E86158(v3, v5, v7);
}

uint64_t sub_1001A2178(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *(*v2 + 336);
  v7 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v8 = *(v3 + 128);
  if (v1)
  {
    v9 = sub_1001A437C;
  }

  else
  {
    v9 = sub_1001A22C8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001A22C8()
{
  v1 = v0[15];
  sub_100EB3858();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[46] = v6;
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v8[1] = sub_1001A2384;
  v9 = v0[40];

  return sub_100E878B0(v3, v5, v7);
}

uint64_t sub_1001A2384(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[46];
  if (v1)
  {
    v8 = v4[44];
    v9 = v4[16];

    v10 = sub_1001A446C;
    v11 = v9;
  }

  else
  {
    v12 = v4[16];

    v10 = sub_1001A24E4;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1001A24E4()
{
  v1 = v0[48];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v4 = v0[29];
    v36 = v0[28];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = *(v4 + 72);
    do
    {
      v6 = v0[35];
      v8 = v0[30];
      v7 = v0[31];
      sub_1001BB2E0(v5, v8, type metadata accessor for MemberPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v36 + 20), v7);
      sub_1001BA80C(v8, type metadata accessor for MemberPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[35];
      v12 = v0[31];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v35;
      --v2;
    }

    while (v2);
  }

  v13 = v0[48];

  v14 = v0[44];
  v15 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[50] = v15;

  if (*(v14 + 16) || *(v15 + 16))
  {
    v16 = *(v0[16] + 136);
    v0[51] = v16;

    return _swift_task_switch(sub_1001A2824, v16, 0);
  }

  else
  {
    v17 = v0[44];
    v18 = v0[36];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[40];
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Can't forceBreakAllShares, missing peer trust record.", v23, 2u);
    }

    v25 = v0[34];
    v24 = v0[35];
    v26 = v0[33];
    v27 = v0[30];
    v28 = v0[27];
    v30 = v0[23];
    v29 = v0[24];
    v31 = v0[22];
    v32 = v0[19];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1001A2824()
{
  v1 = *(v0 + 408);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 416) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1001A2910;
  v5 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_1001A2910()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return _swift_task_switch(sub_1001A2A28, v2, 0);
}

uint64_t sub_1001A2A28()
{
  v1 = v0[16];
  v0[53] = v0[12];
  return _swift_task_switch(sub_1001A2A4C, v1, 0);
}

uint64_t sub_1001A2A4C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 16);
  *(v0 + 432) = v2;
  if (!v2)
  {
LABEL_25:
    v50 = *(v0 + 352);

    v22 = *(v0 + 408);
    v21 = sub_1001A33EC;
    v23 = 0;

    return _swift_task_switch(v21, v22, v23);
  }

  v3 = 0;
  v4 = *(v0 + 208);
  v5 = *(v4 + 80);
  *(v0 + 504) = v5;
  v6 = *(v4 + 72);
  *(v0 + 440) = v6;
  while (1)
  {
    *(v0 + 448) = v3;
    v7 = *(v0 + 352);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 216), type metadata accessor for OwnerSharingCircle);
    v8 = *(v7 + 16);
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = *(v0 + 168);
    v11 = *(v0 + 352) + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    v51 = v12;
    v52 = v11;
LABEL_5:
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1001BB2E0(v11 + v9 * v12, *(v0 + 176), type metadata accessor for OwnerPeerTrust);
    v15 = *(v13 + *(v14 + 32));
    v16 = *(v15 + 16);
    if (v16)
    {
      break;
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_14:
    v31 = 0;
    v55 = v9 + 1;
    v32 = *(v0 + 176);
    v33 = *(*(v0 + 160) + 20);
    v34 = v20[2];
    while (v34 != v31)
    {
      v35 = *(v0 + 248);
      v36 = v31 + 1;
      v37 = v20 + ((*(*(v0 + 256) + 80) + 32) & ~*(*(v0 + 256) + 80)) + *(*(v0 + 256) + 72) * v31;
      sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = v36;
      if (v38)
      {
        v42 = *(v0 + 184);
        v43 = *(v0 + 192);
        v44 = *(v0 + 176);

        sub_1001BAAE8(v44, v42, type metadata accessor for OwnerPeerTrust);
        sub_1001BAAE8(v42, v43, type metadata accessor for OwnerPeerTrust);
        v45 = swift_task_alloc();
        *(v0 + 456) = v45;
        *v45 = v0;
        v45[1] = sub_1001A2E70;
        v46 = *(v0 + 216);
        v47 = *(v0 + 192);

        return sub_1003B85E8(v47, v46);
      }
    }

    v39 = *(v0 + 176);

    sub_1001BA80C(v39, type metadata accessor for OwnerPeerTrust);
    v9 = v55;
    v12 = v51;
    v11 = v52;
    if (v55 != v8)
    {
      goto LABEL_5;
    }

LABEL_19:
    v40 = *(v0 + 432);
    v41 = *(v0 + 448) + 1;
    sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
    if (v41 == v40)
    {
      v49 = *(v0 + 424);
      goto LABEL_25;
    }

    v6 = *(v0 + 440);
    v3 = *(v0 + 448) + 1;
    LOBYTE(v5) = *(v0 + 504);
    v1 = *(v0 + 424);
  }

  v17 = *(v0 + 256);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (v18)
  {
    if (v21 - v19 == 0x8000000000000000 && v18 == -1)
    {
      goto LABEL_30;
    }

    v20[2] = v16;
    v20[3] = 2 * ((v21 - v19) / v18);
    v53 = sub_1003CC2CC(v0 + 16, v20 + v19, v16, v15);
    v54 = v9;
    v25 = v8;
    v26 = *(v0 + 16);
    v27 = *(v0 + 24);
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);

    v8 = v25;
    v9 = v54;
    v21 = sub_1000128F8();
    if (v53 != v16)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1001A2E70()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;

  v5 = *(v2 + 128);
  if (v0)
  {

    v6 = sub_1001BE48C;
  }

  else
  {
    v6 = sub_1001A2FA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A2FA8()
{
  sub_1001BA80C(*(v0 + 192), type metadata accessor for OwnerPeerTrust);
  v1 = *(v0 + 432);
  v2 = *(v0 + 448) + 1;
  sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
  if (v2 == v1)
  {
LABEL_2:
    v3 = *(v0 + 424);
    v4 = *(v0 + 352);

    v5 = *(v0 + 408);
    v6 = sub_1001A33EC;
    v7 = 0;

    return _swift_task_switch(v6, v5, v7);
  }

  while (1)
  {
    v8 = *(v0 + 440);
    v9 = *(v0 + 448) + 1;
    *(v0 + 448) = v9;
    v10 = *(v0 + 352);
    sub_1001BB2E0(*(v0 + 424) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + v8 * v9, *(v0 + 216), type metadata accessor for OwnerSharingCircle);
    v11 = *(v10 + 16);
    if (v11)
    {
      break;
    }

LABEL_21:
    v40 = *(v0 + 432);
    v41 = *(v0 + 448) + 1;
    sub_1001BA80C(*(v0 + 216), type metadata accessor for OwnerSharingCircle);
    if (v41 == v40)
    {
      goto LABEL_2;
    }
  }

  v12 = 0;
  v13 = *(v0 + 168);
  v14 = *(v0 + 352) + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v49 = v15;
  v50 = v14;
  while (2)
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 200);
    sub_1001BB2E0(v14 + v12 * v15, *(v0 + 176), type metadata accessor for OwnerPeerTrust);
    v18 = *(v16 + *(v17 + 32));
    v19 = *(v18 + 16);
    if (!v19)
    {
      v23 = _swiftEmptyArrayStorage;
LABEL_16:
      v31 = 0;
      v53 = v12 + 1;
      v32 = *(v0 + 176);
      v33 = *(*(v0 + 160) + 20);
      v34 = v23[2];
      while (v34 != v31)
      {
        v35 = *(v0 + 248);
        v36 = v31 + 1;
        v37 = v23 + ((*(*(v0 + 256) + 80) + 32) & ~*(*(v0 + 256) + 80)) + *(*(v0 + 256) + 72) * v31;
        sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = v36;
        if (v38)
        {
          v42 = *(v0 + 184);
          v43 = *(v0 + 192);
          v44 = *(v0 + 176);

          sub_1001BAAE8(v44, v42, type metadata accessor for OwnerPeerTrust);
          sub_1001BAAE8(v42, v43, type metadata accessor for OwnerPeerTrust);
          v45 = swift_task_alloc();
          *(v0 + 456) = v45;
          *v45 = v0;
          v45[1] = sub_1001A2E70;
          v46 = *(v0 + 216);
          v47 = *(v0 + 192);

          return sub_1003B85E8(v47, v46);
        }
      }

      v39 = *(v0 + 176);

      sub_1001BA80C(v39, type metadata accessor for OwnerPeerTrust);
      v12 = v53;
      v15 = v49;
      v14 = v50;
      if (v53 != v11)
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  v20 = *(v0 + 256);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v6 = j__malloc_size(v23);
  if (v21)
  {
    if (v6 - v22 == 0x8000000000000000 && v21 == -1)
    {
      goto LABEL_28;
    }

    v23[2] = v19;
    v23[3] = 2 * ((v6 - v22) / v21);
    v51 = sub_1003CC2CC(v0 + 16, v23 + v22, v19, v18);
    v52 = v12;
    v25 = v11;
    v26 = *(v0 + 16);
    v27 = *(v0 + 24);
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);

    v11 = v25;
    v12 = v52;
    v6 = sub_1000128F8();
    if (v51 != v19)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return _swift_task_switch(v6, v5, v7);
}

uint64_t sub_1001A33EC()
{
  v1 = *(v0 + 408);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1001A34D8;
  v5 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_1001A34D8()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return _swift_task_switch(sub_1001A35F0, v2, 0);
}

uint64_t sub_1001A35F0()
{
  v1 = v0[16];
  v0[59] = v0[13];
  return _swift_task_switch(sub_1001A3614, v1, 0);
}

uint64_t sub_1001A3614()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    *(v0 + 508) = *(*(v0 + 144) + 80);
    *(v0 + 488) = 0;
    if (*(v1 + 16))
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v0 + 256);
        v5 = *(v0 + 152);
        v6 = *(v0 + 136);
        sub_1001BB2E0(v1 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 144) + 72) * v3, v5, type metadata accessor for MemberSharingCircle);
        v7 = *(v5 + *(v6 + 36));
        v8 = *(v7 + 16);
        v9 = *(v4 + 72);
        v10 = *(v4 + 80);
        v61 = v9;
        if (v8)
        {
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v11 = (v10 + 32) & ~v10;
          v12 = swift_allocObject();
          result = j__malloc_size(v12);
          if (!v9)
          {
            goto LABEL_31;
          }

          if (result - v11 == 0x8000000000000000 && v9 == -1)
          {
            goto LABEL_33;
          }

          v12[2] = v8;
          v12[3] = 2 * ((result - v11) / v9);
          v15 = sub_1003CC2CC(v0 + 56, v12 + v11, v8, v7);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);
          v18 = *(v0 + 72);
          v59 = *(v0 + 80);
          v60 = v15;
          v58 = *(v0 + 88);

          result = sub_1000128F8();
          if (v60 != v8)
          {
            goto LABEL_32;
          }

          v19 = v12;
        }

        else
        {
          v11 = (v10 + 32) & ~v10;
          v19 = _swiftEmptyArrayStorage;
        }

        v20 = *(v0 + 248);
        v21 = *(v0 + 256);
        v22 = *(v0 + 152);
        v23 = *(v0 + 136);
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v24 = swift_allocObject();
        v25 = *(v21 + 16);
        *(v24 + 16) = xmmword_101385D80;
        v25(v24 + v11, v22 + *(v23 + 32), v20);
        v26 = v19[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        v27 = v19;
        if (!result || (v28 = v19[3] >> 1, v28 <= v26))
        {
          result = sub_100A5BFE0(result, v26 + 1, 1, v19);
          v27 = result;
          v28 = *(result + 24) >> 1;
        }

        if (v28 <= v27[2])
        {
          break;
        }

        v29 = v27 + v11;
        v30 = *(v0 + 248);
        swift_arrayInitWithCopy();

        ++v27[2];
        sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID);
        *(v0 + 112) = Set.init(minimumCapacity:)();
        for (i = v27[2]; i; --i)
        {
          v33 = *(v0 + 264);
          v32 = *(v0 + 272);
          v34 = *(v0 + 248);
          v35 = *(v0 + 256);
          v25(v32, v29, v34);
          sub_100DE8BCC(v33, v32);
          (*(v35 + 8))(v33, v34);
          v29 += v61;
        }

        v36 = sub_100314BE4(*(v0 + 400), *(v0 + 112));

        if ((v36 & 1) == 0)
        {
          goto LABEL_24;
        }

        v37 = *(v0 + 480);
        v38 = *(v0 + 488) + 1;
        sub_1001BA80C(*(v0 + 152), type metadata accessor for MemberSharingCircle);
        if (v38 == v37)
        {
          v42 = *(v0 + 472);
          goto LABEL_28;
        }

        v3 = *(v0 + 488) + 1;
        *(v0 + 488) = v3;
        v1 = *(v0 + 472);
        if (v3 >= *(v1 + 16))
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    else
    {
LABEL_23:
      __break(1u);
LABEL_24:
      v39 = *(v0 + 152);
      v40 = *(*(v0 + 136) + 28);
      v41 = swift_task_alloc();
      *(v0 + 496) = v41;
      *v41 = v0;
      v41[1] = sub_1001A3BC8;

      return sub_1003B7584(v39 + v40);
    }
  }

  else
  {
LABEL_28:
    v43 = *(v0 + 400);

    v44 = *(v0 + 320);
    v45 = *(v0 + 128);
    type metadata accessor for Transaction();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v49 = *(v0 + 272);
    v48 = *(v0 + 280);
    v50 = *(v0 + 264);
    v51 = *(v0 + 240);
    v52 = *(v0 + 216);
    v54 = *(v0 + 184);
    v53 = *(v0 + 192);
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);

    v57 = *(v0 + 8);

    return v57();
  }

  return result;
}

uint64_t sub_1001A3BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;

  v5 = *(v2 + 128);
  if (v0)
  {

    v6 = sub_1001BE490;
  }

  else
  {
    v6 = sub_1001A3D00;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001A3D00()
{
  while (1)
  {
    v2 = *(v0 + 480);
    v3 = *(v0 + 488) + 1;
    result = sub_1001BA80C(*(v0 + 152), type metadata accessor for MemberSharingCircle);
    if (v3 == v2)
    {
      break;
    }

    v5 = *(v0 + 488) + 1;
    *(v0 + 488) = v5;
    v6 = *(v0 + 472);
    if (v5 >= *(v6 + 16))
    {
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

    v7 = *(v0 + 256);
    v8 = *(v0 + 152);
    v9 = *(v0 + 136);
    sub_1001BB2E0(v6 + ((*(v0 + 508) + 32) & ~*(v0 + 508)) + *(*(v0 + 144) + 72) * v5, v8, type metadata accessor for MemberSharingCircle);
    v10 = *(v8 + *(v9 + 36));
    v11 = *(v10 + 16);
    v12 = *(v7 + 72);
    v13 = *(v7 + 80);
    v60 = v12;
    if (v11)
    {
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v14 = (v13 + 32) & ~v13;
      v15 = swift_allocObject();
      result = j__malloc_size(v15);
      if (!v12)
      {
        goto LABEL_29;
      }

      if (result - v14 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_31;
      }

      v15[2] = v11;
      v15[3] = 2 * ((result - v14) / v12);
      v17 = sub_1003CC2CC(v0 + 56, v15 + v14, v11, v10);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = *(v0 + 72);
      v58 = *(v0 + 80);
      v59 = v17;
      v57 = *(v0 + 88);

      result = sub_1000128F8();
      if (v59 != v11)
      {
        goto LABEL_30;
      }

      v21 = v15;
    }

    else
    {
      v14 = (v13 + 32) & ~v13;
      v21 = _swiftEmptyArrayStorage;
    }

    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v26 = swift_allocObject();
    v27 = *(v23 + 16);
    *(v26 + 16) = xmmword_101385D80;
    v27(v26 + v14, v24 + *(v25 + 32), v22);
    v28 = v21[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    v29 = v21;
    if (!result || (v30 = v21[3] >> 1, v30 <= v28))
    {
      result = sub_100A5BFE0(result, v28 + 1, 1, v21);
      v29 = result;
      v30 = *(result + 24) >> 1;
    }

    if (v30 <= v29[2])
    {
      goto LABEL_28;
    }

    v31 = v29 + v14;
    v32 = *(v0 + 248);
    swift_arrayInitWithCopy();

    ++v29[2];
    sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID);
    *(v0 + 112) = Set.init(minimumCapacity:)();
    for (i = v29[2]; i; --i)
    {
      v35 = *(v0 + 264);
      v34 = *(v0 + 272);
      v36 = *(v0 + 248);
      v37 = *(v0 + 256);
      v27(v34, v31, v36);
      sub_100DE8BCC(v35, v34);
      (*(v37 + 8))(v35, v36);
      v31 += v60;
    }

    v1 = sub_100314BE4(*(v0 + 400), *(v0 + 112));

    if ((v1 & 1) == 0)
    {
      v54 = *(v0 + 152);
      v55 = *(*(v0 + 136) + 28);
      v56 = swift_task_alloc();
      *(v0 + 496) = v56;
      *v56 = v0;
      v56[1] = sub_1001A3BC8;

      return sub_1003B7584(v54 + v55);
    }
  }

  v38 = *(v0 + 472);
  v39 = *(v0 + 400);

  v40 = *(v0 + 320);
  v41 = *(v0 + 128);
  type metadata accessor for Transaction();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = 0;
  *(v43 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v45 = *(v0 + 272);
  v44 = *(v0 + 280);
  v46 = *(v0 + 264);
  v47 = *(v0 + 240);
  v48 = *(v0 + 216);
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);
  v51 = *(v0 + 176);
  v52 = *(v0 + 152);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1001A428C()
{
  v13 = v0[41];
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001A437C()
{
  v13 = v0[45];
  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001A446C()
{
  v13 = v0[49];
  v1 = v0[40];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001A455C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001A461C, v1, 0);
}

uint64_t sub_1001A461C()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "forceDecline shareIdentifier %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1001A48A0;
  v19 = v0[2];

  return sub_1003B7584(v19);
}

uint64_t sub_1001A48A0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_1001A49EC, v8, 0);
  }
}

uint64_t sub_1001A49EC()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001A4B04(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001A4BF0, v1, 0);
}

uint64_t sub_1001A4BF0()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[13] = sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[6];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 136315138;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "forceStopSharing beaconIdentifier %s", v13, 0xCu);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = *(v0[5] + 136);
  v0[17] = v19;
  v0[18] = sub_100B08164(&off_101608170);

  return _swift_task_switch(sub_1001A4E5C, v19, 0);
}

uint64_t sub_1001A4E5C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  (*(v0 + 112))(v4, *(v0 + 32), v7);
  v8 = *(v6 + 80);
  *(v0 + 264) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 152) = v11;
  *(v11 + 16) = v1;
  v12 = *(v6 + 32);
  *(v0 + 160) = v12;
  *(v0 + 168) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v9, v4, v7);
  *(v11 + v10) = v2;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_1001A4FF8;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v11, v15);
}

uint64_t sub_1001A4FF8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return _swift_task_switch(sub_1001A5124, v3, 0);
}

uint64_t sub_1001A5124()
{
  v1 = v0[5];
  v0[23] = v0[2];
  return _swift_task_switch(sub_1001A5148, v1, 0);
}

uint64_t sub_1001A5148()
{
  v22 = v0;
  if (*(*(v0 + 184) + 16))
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 104);
    (*(v0 + 112))(*(v0 + 72), *(v0 + 32), *(v0 + 48));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 128);
    v7 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (v5)
    {
      v20 = *(v0 + 128);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v20(v7, v8);
      v15 = sub_1000136BC(v12, v14, &v21);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop sharing of %{private,mask.hash}s", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {

      v6(v7, v8);
    }

    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1001A5E14;
    v18 = *(v0 + 184);

    return sub_1003B64C0(v18);
  }

  else
  {
    v16 = *(v0 + 136);

    return _swift_task_switch(sub_1001A53EC, v16, 0);
  }
}

uint64_t sub_1001A53EC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 112))(v5, *(v0 + 32), v7);
  v9 = swift_allocObject();
  *(v0 + 192) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_1001A5554;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v9, v12);
}

uint64_t sub_1001A5554()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return _swift_task_switch(sub_1001A5680, v3, 0);
}

uint64_t sub_1001A5680()
{
  v1 = v0[5];
  v0[26] = v0[3];
  return _swift_task_switch(sub_1001A56A4, v1, 0);
}

void sub_1001A56A4()
{
  v1 = v0[26];
  v2 = *(v1 + 16);
  if (v2 >= 2)
  {
    v3 = v0[13];
    v4 = v0[26];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[26];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Too much circles to decline on sharing stop! There is %ld circles.", v9, 0xCu);
    }

    else
    {
      v10 = v0[26];
    }

    v2 = *(v1 + 16);
  }

  v0[27] = v2;
  if (v2)
  {
    v0[28] = 0;
    v11 = v0[26];
    if (*(v11 + 16))
    {
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[10];
      v15 = v0[6];
      v16 = type metadata accessor for MemberSharingCircle();
      v13(v14, v11 + *(v16 + 28) + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)), v15);
      v17 = swift_task_alloc();
      v0[29] = v17;
      *v17 = v0;
      v17[1] = sub_1001A59A8;
      v18 = v0[10];

      (sub_1003B7584)(v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = v0[26];

    v20 = v0[11];
    v21 = v0[12];
    v22 = v0[9];
    v23 = v0[10];
    v24 = v0[5];
    type metadata accessor for Transaction();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v27 = v0[1];

    v27();
  }
}

uint64_t sub_1001A59A8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v15 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = v2[16];
    v6 = v2[10];
    v7 = v2[6];
    v8 = v2[7];
    v9 = v2[5];
    v5(v6, v7);

    v10 = sub_1001A5D8C;
    v11 = v9;
  }

  else
  {
    v12 = v2[5];
    v13 = v2[7] + 8;
    (v2[16])(v2[10], v2[6]);
    v10 = sub_1001A5B10;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

void sub_1001A5B10()
{
  v1 = v0[28] + 1;
  if (v1 == v0[27])
  {
    v2 = v0[26];

    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[5];
    type metadata accessor for Transaction();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v10 = v0[1];

    v10();
  }

  else
  {
    v0[28] = v1;
    v11 = v0[26];
    if (v1 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[10];
      v15 = v0[6];
      v16 = type metadata accessor for MemberSharingCircle();
      v13(v14, v11 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v1 + *(v16 + 28), v15);
      v17 = swift_task_alloc();
      v0[29] = v17;
      *v17 = v0;
      v17[1] = sub_1001A59A8;
      v18 = v0[10];

      (sub_1003B7584)(v18);
    }
  }
}

uint64_t sub_1001A5D8C()
{
  v1 = v0[30];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001A5E14()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1001A6078;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 40);

    v5 = sub_1001A5F3C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001A5F3C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001A6078()
{
  v1 = v0[23];

  v2 = v0[32];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001A6108(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord();
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6200, v1, 0);
}

uint64_t sub_1001A6200()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v7, type metadata accessor for OwnedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "forceStopSharingAfterUnpairing ownedBeacon %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_1001BA80C(v7, type metadata accessor for OwnedBeaconRecord);
  }

  v17 = *(v0 + 72);
  v18 = *(*(v0 + 32) + 136);
  *(v0 + 88) = v18;
  *(v0 + 136) = *(v17 + 20);

  return _swift_task_switch(sub_1001A6470, v18, 0);
}

uint64_t sub_1001A6470()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  (*(v5 + 16))(v3, *(v0 + 24) + *(v0 + 136), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v0 + 96) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v6, v3, v4);
  *(v8 + v7) = 0;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_1001A6600;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v8, v11);
}

uint64_t sub_1001A6600()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_1001A672C, v3, 0);
}

uint64_t sub_1001A672C()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1001A67D8;

  return sub_1003C8598(v1);
}

uint64_t sub_1001A67D8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1001A6A24;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 32);

    v5 = sub_1001A6900;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001A6900()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001A6A24()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1001A6AA0(char a1, uint64_t a2, char a3)
{
  *(v4 + 210) = a3;
  *(v4 + 416) = a2;
  *(v4 + 424) = v3;
  *(v4 + 209) = a1;
  v5 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_101698C08, &unk_101390730) - 8) + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  v7 = type metadata accessor for BeaconSharingService.PendingExpirationTask(0);
  *(v4 + 464) = v7;
  v8 = *(v7 - 8);
  *(v4 + 472) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 480) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v4 + 488) = v10;
  v11 = *(v10 - 8);
  *(v4 + 496) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 504) = swift_task_alloc();
  v13 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 512) = v13;
  v14 = *(v13 - 8);
  *(v4 + 520) = v14;
  *(v4 + 528) = *(v14 + 64);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 552) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v17 = type metadata accessor for MemberPeerTrust();
  *(v4 + 584) = v17;
  v18 = *(v17 - 8);
  *(v4 + 592) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v20 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  *(v4 + 632) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 648) = swift_task_alloc();
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  *(v4 + 672) = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&unk_101698C20, &qword_101390748) - 8) + 64) + 15;
  *(v4 + 680) = swift_task_alloc();
  v23 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  v24 = type metadata accessor for Date();
  *(v4 + 704) = v24;
  v25 = *(v24 - 8);
  *(v4 + 712) = v25;
  v26 = *(v25 + 64) + 15;
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  *(v4 + 768) = v27;
  v28 = *(v27 - 8);
  *(v4 + 776) = v28;
  *(v4 + 784) = *(v28 + 64);
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  v29 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 872) = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  v31 = type metadata accessor for SharedBeaconRecord(0);
  *(v4 + 896) = v31;
  v32 = *(v31 - 8);
  *(v4 + 904) = v32;
  v33 = *(v32 + 64) + 15;
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  v34 = type metadata accessor for MemberSharingCircle();
  *(v4 + 928) = v34;
  v35 = *(v34 - 8);
  *(v4 + 936) = v35;
  v36 = *(v35 + 64) + 15;
  *(v4 + 944) = swift_task_alloc();
  *(v4 + 952) = swift_task_alloc();
  *(v4 + 960) = swift_task_alloc();
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_task_alloc();
  *(v4 + 984) = swift_task_alloc();
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = swift_task_alloc();
  v37 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v4 + 1048) = swift_task_alloc();
  *(v4 + 1056) = swift_task_alloc();

  return _swift_task_switch(sub_1001A71C0, v3, 0);
}

uint64_t sub_1001A71C0()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1064) = v1;
  *(v0 + 1072) = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 210);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 224) = *(v0 + 416);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v9;
    }

    v10 = sub_1000136BC(v7, v8, &v20);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s BeaconSharingService: Returning all shares.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(v0 + 1056);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 704);
  v15 = *(v0 + 424);
  *(v0 + 216) = &_swiftEmptySetSingleton;
  *(v0 + 384) = &_swiftEmptySetSingleton;
  *(v0 + 1080) = swift_allocBox();
  *(v0 + 1088) = v16;
  static Date.distantFuture.getter();
  v17 = *(v12 + 56);
  *(v0 + 1096) = v17;
  *(v0 + 1104) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v11, 1, 1, v13);
  v18 = *(v15 + 136);
  *(v0 + 1112) = v18;

  return _swift_task_switch(sub_1001A73E8, v18, 0);
}

uint64_t sub_1001A73E8()
{
  v1 = v0[139];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[140] = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  v0[141] = v4;
  *v3 = v0;
  v3[1] = sub_1001A74D8;
  v5 = v0[139];

  return unsafeBlocking<A>(context:_:)(v0 + 36, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_1001A74D8()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);
  v4 = *v0;

  return _swift_task_switch(sub_1001A75F0, v2, 0);
}

uint64_t sub_1001A75F0()
{
  v1 = v0[53];
  v0[142] = v0[36];
  return _swift_task_switch(sub_1001A7614, v1, 0);
}

uint64_t sub_1001A7614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1136);
  v5 = *(v4 + 2);
  *(v3 + 1144) = v5;
  if (v5)
  {
    v6 = *(v3 + 936);
    v7 = *(v3 + 928);
    v8 = *(v6 + 80);
    *(v3 + 212) = v8;
    *(v3 + 1544) = enum case for Feature.FindMy.itemSharing(_:);
    *(v3 + 1152) = 0;
    if (*(v4 + 2))
    {
      v9 = *(v3 + 1112);
      v10 = *(v3 + 1040);
      *(v3 + 1160) = *(v6 + 72);
      sub_1001BB2E0(v4 + ((v8 + 32) & ~v8), v10, type metadata accessor for MemberSharingCircle);
      *(v3 + 1548) = *(v7 + 24);
      v4 = sub_1001A7768;
      a2 = v9;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return _swift_task_switch(v4, a2, a3);
  }

  else
  {

    v11 = swift_task_alloc();
    *(v3 + 1504) = v11;
    *v11 = v3;
    v11[1] = sub_1001AC3AC;
    v12 = *(v3 + 424);
    v13 = *(v3 + 209);

    return sub_1001AEEC0(v13);
  }
}

uint64_t sub_1001A7768()
{
  v1 = *(v0 + 1548);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 864);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v6 + 16);
  *(v0 + 1168) = v8;
  *(v0 + 1176) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v3 + v1, v7);
  v9 = *(v6 + 80);
  *(v0 + 1552) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 1184) = v11;
  *(v11 + 16) = v2;
  v12 = *(v6 + 32);
  *(v0 + 1192) = v12;
  *(v0 + 1200) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v4, v7);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 1208) = v14;
  *v14 = v0;
  v14[1] = sub_1001A78FC;
  v15 = *(v0 + 888);
  v16 = *(v0 + 872);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7DC, v11, v16);
}

uint64_t sub_1001A78FC()
{
  v1 = *(*v0 + 1208);
  v2 = *(*v0 + 1184);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_1001A7A28, v3, 0);
}

uint64_t sub_1001A7A28()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v1 + 48);
  *(v0 + 1216) = v4;
  *(v0 + 1224) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
LABEL_11:
    v11 = *(v0 + 1112);
    v12 = sub_1001A7F74;
    goto LABEL_12;
  }

  v5 = *(v0 + 1544);
  sub_1001BAAE8(v3, *(v0 + 920), type metadata accessor for SharedBeaconRecord);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 40) = My;
  *(v0 + 48) = sub_1001B8FE4(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v7 = sub_1000280DC((v0 + 16));
  (*(*(My - 8) + 104))(v7, v5, My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 16));
  if (My)
  {
    v8 = *(v0 + 920);
    v9 = *(v8 + *(*(v0 + 896) + 64));
    v10 = v9 == 4 || v9 == 1;
    if (!v10 || *(v0 + 209) == 1)
    {
      sub_1001BA80C(v8, type metadata accessor for SharedBeaconRecord);
      goto LABEL_11;
    }
  }

  v14 = *(v0 + 1072);
  sub_1001BB2E0(*(v0 + 1040), *(v0 + 1032), type metadata accessor for MemberSharingCircle);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 210);
    v18 = swift_slowAlloc();
    *(v0 + 392) = swift_slowAlloc();
    *v18 = 136315651;
    if (v17)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 400) = *(v0 + 416);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v24;
    }

    v25 = *(v0 + 1032);
    v26 = *(v0 + 928);
    v46 = *(v0 + 920);
    v27 = *(v0 + 768);
    v28 = sub_1000136BC(v19, v20, (v0 + 392));

    *(v18 + 4) = v28;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    v29 = *(v26 + 24);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_1001BA80C(v25, type metadata accessor for MemberSharingCircle);
    v33 = sub_1000136BC(v30, v32, (v0 + 392));

    *(v18 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s Filtering beacon %{private,mask.hash}s", v18, 0x20u);
    swift_arrayDestroy();

    v23 = v46;
  }

  else
  {
    v21 = *(v0 + 1032);
    v22 = *(v0 + 920);

    sub_1001BA80C(v21, type metadata accessor for MemberSharingCircle);
    v23 = v22;
  }

  sub_1001BA80C(v23, type metadata accessor for SharedBeaconRecord);
  v12 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v34 = *(v0 + 1152) + 1;
  if (v34 != *(v0 + 1144))
  {
    *(v0 + 1152) = v34;
    v40 = *(v0 + 1136);
    if (v34 >= *(v40 + 16))
    {
      __break(1u);
      return _swift_task_switch(v12, v11, v13);
    }

    v41 = *(v0 + 1112);
    v42 = *(v0 + 1040);
    v43 = *(v0 + 928);
    v44 = v40 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
    v45 = *(*(v0 + 936) + 72);
    *(v0 + 1160) = v45;
    sub_1001BB2E0(v44 + v45 * v34, v42, type metadata accessor for MemberSharingCircle);
    *(v0 + 1548) = *(v43 + 24);
    v12 = sub_1001A7768;
    v11 = v41;
LABEL_12:
    v13 = 0;

    return _swift_task_switch(v12, v11, v13);
  }

  v35 = *(v0 + 1136);

  v36 = swift_task_alloc();
  *(v0 + 1504) = v36;
  *v36 = v0;
  v36[1] = sub_1001AC3AC;
  v37 = *(v0 + 424);
  v38 = *(v0 + 209);

  return sub_1001AEEC0(v38);
}

uint64_t sub_1001A7F74()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  v8 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v5, *(v0 + 1040) + *(v0 + 1548), v7);
  v9 = swift_allocObject();
  *(v0 + 1232) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1240) = v11;
  *v11 = v0;
  v11[1] = sub_1001A80D8;
  v12 = *(v0 + 880);
  v13 = *(v0 + 872);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v9, v13);
}

uint64_t sub_1001A80D8()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 1232);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_1001A8204, v3, 0);
}

uint64_t sub_1001A8204()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 896);
  v3 = *(v0 + 880);
  if ((*(v0 + 1216))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
LABEL_10:
    v13 = *(v0 + 1112);

    return _swift_task_switch(sub_1001A88C4, v13, 0);
  }

  v4 = *(v0 + 912);
  sub_1001BAAE8(v3, v4, type metadata accessor for SharedBeaconRecord);
  if (*(v4 + *(v2 + 64)) != 5)
  {
    sub_1001BA80C(*(v0 + 912), type metadata accessor for SharedBeaconRecord);
    goto LABEL_10;
  }

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 1040);
  v6 = *(v0 + 1024);
  *(v0 + 1248) = sub_1000076D4(*(v0 + 1064), qword_10177AE40);
  sub_1001BB2E0(v5, v6, type metadata accessor for MemberSharingCircle);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 210);
    v10 = swift_slowAlloc();
    *(v0 + 368) = swift_slowAlloc();
    *v10 = 136315651;
    if (v9)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 376) = *(v0 + 416);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v15;
    }

    v16 = *(v0 + 1024);
    v17 = *(v0 + 928);
    v18 = *(v0 + 768);
    v19 = sub_1000136BC(v11, v12, (v0 + 368));

    *(v10 + 4) = v19;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v20 = *(v17 + 28);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001BA80C(v16, type metadata accessor for MemberSharingCircle);
    v24 = sub_1000136BC(v21, v23, (v0 + 368));

    *(v10 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Imported circle found for share: %{private,mask.hash}s ", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 1024);

    sub_1001BA80C(v14, type metadata accessor for MemberSharingCircle);
  }

  v25 = swift_task_alloc();
  *(v0 + 1256) = v25;
  *v25 = v0;
  v25[1] = sub_1001A85F0;
  v26 = *(v0 + 1040);
  v27 = *(v0 + 912);
  v28 = *(v0 + 424);

  return sub_1001AD894(v27, v26);
}

uint64_t sub_1001A85F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1256);
  v6 = *v2;
  v4[158] = v1;

  v7 = v4[53];
  if (v1)
  {
    v8 = sub_1001AD4A0;
  }

  else
  {
    v4[159] = a1;
    v8 = sub_1001A872C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001A872C()
{
  v1 = *(v0 + 912);
  sub_1005C9D24(*(v0 + 1272));
  sub_1001BA80C(v1, type metadata accessor for SharedBeaconRecord);
  v2 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v5 = *(v0 + 1152) + 1;
  if (v5 == *(v0 + 1144))
  {
    v6 = *(v0 + 1136);

    v7 = swift_task_alloc();
    *(v0 + 1504) = v7;
    *v7 = v0;
    v7[1] = sub_1001AC3AC;
    v8 = *(v0 + 424);
    v9 = *(v0 + 209);

    return sub_1001AEEC0(v9);
  }

  else
  {
    *(v0 + 1152) = v5;
    v11 = *(v0 + 1136);
    if (v5 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 1112);
      v13 = *(v0 + 1040);
      v14 = *(v0 + 928);
      v15 = v11 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
      v16 = *(*(v0 + 936) + 72);
      *(v0 + 1160) = v16;
      sub_1001BB2E0(v15 + v16 * v5, v13, type metadata accessor for MemberSharingCircle);
      *(v0 + 1548) = *(v14 + 24);
      v2 = sub_1001A7768;
      v3 = v12;
      v4 = 0;
    }

    return _swift_task_switch(v2, v3, v4);
  }
}

uint64_t sub_1001A88C4()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  v8 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v5, *(v0 + 1040) + *(v0 + 1548), v7);
  v9 = swift_allocObject();
  *(v0 + 1280) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1288) = v11;
  *v11 = v0;
  v11[1] = sub_1001A8A28;
  v12 = *(v0 + 1128);

  return unsafeBlocking<A>(context:_:)(v0 + 272, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7F4, v9, v12);
}

uint64_t sub_1001A8A28()
{
  v1 = *(*v0 + 1288);
  v2 = *(*v0 + 1280);
  v3 = *(*v0 + 1112);
  v5 = *v0;

  return _swift_task_switch(sub_1001A8B54, v3, 0);
}

uint64_t sub_1001A8B54()
{
  v1 = v0[53];
  v0[162] = v0[34];
  return _swift_task_switch(sub_1001A8B78, v1, 0);
}

uint64_t sub_1001A8B78(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 209))
  {
LABEL_2:
    v4 = *(v3 + 1296);
  }

  else
  {
    v5 = *(v3 + 1296);
    if (*(*(v3 + 1040) + *(*(v3 + 928) + 40)) == 4)
    {
      v6 = *(v5 + 16);
      if (v6 >= 2)
      {
        v7 = 0;
        v8 = v5 + ((*(v3 + 212) + 32) & ~*(v3 + 212));
        while (1)
        {
          if (v6 == v7)
          {
            goto LABEL_2;
          }

          if (v7 >= *(v5 + 16))
          {
            break;
          }

          v9 = *(v3 + 1016);
          v10 = *(v3 + 928);
          sub_1001BB2E0(v8 + *(v3 + 1160) * v7++, v9, type metadata accessor for MemberSharingCircle);
          LODWORD(v10) = *(v9 + *(v10 + 40));
          a1 = sub_1001BA80C(v9, type metadata accessor for MemberSharingCircle);
          if (v10 != 4)
          {
            v11 = *(v3 + 1296);
            v12 = *(v3 + 1072);

            v13 = Logger.logObject.getter();
            v14 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v13, v14))
            {
              v15 = *(v3 + 210);
              v16 = swift_slowAlloc();
              v17 = swift_slowAlloc();
              *(v3 + 336) = v17;
              *v16 = 136315394;
              if (v15)
              {
                v18 = 0;
                v19 = 0xE000000000000000;
              }

              else
              {
                *(v3 + 344) = *(v3 + 416);
                v18 = dispatch thunk of CustomStringConvertible.description.getter();
                v19 = v22;
              }

              v23 = *(v3 + 1296);
              v24 = sub_1000136BC(v18, v19, (v3 + 336));

              *(v16 + 4) = v24;
              *(v16 + 12) = 2048;
              v25 = *(v5 + 16);

              *(v16 + 14) = v25 - 1;

              _os_log_impl(&_mh_execute_header, v13, v14, "%s Filtering out tentativelyRevoked share that has %ld other member circle(s).", v16, 0x16u);
              sub_100007BAC(v17);
            }

            else
            {
              v21 = *(v3 + 1296);
              swift_bridgeObjectRelease_n();
            }

            a1 = sub_1001BA80C(*(v3 + 1040), type metadata accessor for MemberSharingCircle);
            v26 = *(v3 + 1152) + 1;
            if (v26 == *(v3 + 1144))
            {
              v27 = *(v3 + 1136);

              v28 = swift_task_alloc();
              *(v3 + 1504) = v28;
              *v28 = v3;
              v28[1] = sub_1001AC3AC;
              v29 = *(v3 + 424);
              v30 = *(v3 + 209);

              return sub_1001AEEC0(v30);
            }

            *(v3 + 1152) = v26;
            v32 = *(v3 + 1136);
            if (v26 < *(v32 + 16))
            {
              v33 = *(v3 + 1112);
              v34 = *(v3 + 1040);
              v35 = *(v3 + 928);
              v36 = v32 + ((*(v3 + 212) + 32) & ~*(v3 + 212));
              v37 = *(*(v3 + 936) + 72);
              *(v3 + 1160) = v37;
              sub_1001BB2E0(v36 + v37 * v26, v34, type metadata accessor for MemberSharingCircle);
              *(v3 + 1548) = *(v35 + 24);
              a1 = sub_1001A7768;
              a2 = v33;
              goto LABEL_14;
            }

LABEL_27:
            __break(1u);
            return _swift_task_switch(a1, a2, a3);
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v20 = *(v3 + 1296);
  }

  a2 = *(v3 + 1112);
  a1 = sub_1001A8F20;
LABEL_14:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1001A8F20()
{
  v1 = *(v0 + 1112);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1304) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1001A9000;
  v5 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v0 + 264, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1001A9000()
{
  v1 = *(*v0 + 1304);
  v2 = *(*v0 + 1112);
  v4 = *v0;

  return _swift_task_switch(sub_1001A9118, v2, 0);
}

uint64_t sub_1001A9118()
{
  v1 = v0[53];
  v0[164] = v0[33];
  return _swift_task_switch(sub_1001A913C, v1, 0);
}

uint64_t sub_1001A913C()
{
  v1 = *(v0 + 856);
  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_1001A91AC, 0, 0);
}

uint64_t sub_1001A91AC()
{
  v1 = *(v0 + 1548);
  v2 = *(v0 + 1040);
  v3 = *(*(v0 + 1312) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = swift_task_alloc();
  *(v0 + 1320) = v4;
  *v4 = v0;
  v4[1] = sub_1001A926C;
  v5 = *(v0 + 856);
  v6 = *(v0 + 680);

  return sub_10068A150(v6, v2 + v1);
}

uint64_t sub_1001A926C()
{
  v2 = *v1;
  v3 = *(*v1 + 1320);
  v12 = *v1;
  *(*v1 + 1328) = v0;

  if (v0)
  {

    v4 = sub_1001A9C08;
    v5 = 0;
  }

  else
  {
    v6 = v2[164];
    v7 = v2[107];
    v8 = v2[96];
    v9 = v2[53];
    v10 = *(v2[97] + 8);
    v2[167] = v10;
    v10(v7, v8);

    v4 = sub_1001A93C8;
    v5 = v9;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001A93C8()
{
  v1 = *(v0 + 680);
  v2 = type metadata accessor for KeyDropLostItemDates(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C20, &qword_101390748);
    v98 = *(v0 + 1328);
    (*(*(v0 + 712) + 56))(*(v0 + 696), 1, 1, *(v0 + 704));
LABEL_5:
    v7 = *(v0 + 1072);
    v8 = *(v0 + 1040);
    v9 = *(v0 + 1008);
    sub_10000B3A8(*(v0 + 696), &unk_101696900, &unk_10138B1E0);
    sub_1001BB2E0(v8, v9, type metadata accessor for MemberSharingCircle);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 210);
      v13 = swift_slowAlloc();
      *(v0 + 320) = swift_slowAlloc();
      *v13 = 136315394;
      if (v12)
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 328) = *(v0 + 416);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v24;
      }

      v25 = *(v0 + 1008);
      v26 = *(v0 + 928);
      v27 = *(v0 + 768);
      v28 = sub_1000136BC(v14, v15, (v0 + 320));

      *(v13 + 4) = v28;
      *(v13 + 12) = 2080;
      v29 = *(v26 + 24);
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1001BA80C(v25, type metadata accessor for MemberSharingCircle);
      v33 = sub_1000136BC(v30, v32, (v0 + 320));

      *(v13 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Beacon %s is not delegated.", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v16 = *(v0 + 1008);

      sub_1001BA80C(v16, type metadata accessor for MemberSharingCircle);
    }

    v34 = 0;
    goto LABEL_19;
  }

  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  sub_1000D2A70(v1, v5, &unk_101696900, &unk_10138B1E0);
  sub_1001BA80C(v1, type metadata accessor for KeyDropLostItemDates);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v4) == 1)
  {
    v98 = *(v0 + 1328);
    goto LABEL_5;
  }

  v17 = *(v0 + 704);
  v18 = *(v0 + 688);
  v19 = *(*(v0 + 712) + 32);
  v19(*(v0 + 760), *(v0 + 696), v17);
  type metadata accessor for DelegatedShareUseCase();
  sub_10059E4D4();
  v20 = v6(v18, 1, v17);
  v21 = *(v0 + 704);
  v22 = *(v0 + 688);
  if (v20 == 1)
  {
    v23 = *(v0 + 752);
    static Date.distantFuture.getter();
    if (v6(v22, 1, v21) != 1)
    {
      sub_10000B3A8(*(v0 + 688), &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v19(*(v0 + 752), *(v0 + 688), *(v0 + 704));
  }

  v35 = *(v0 + 752);
  v36 = *(v0 + 744);
  v37 = *(v0 + 712);
  v38 = *(v0 + 704);
  (*(v37 + 16))(v36, *(v0 + 1088), v38);
  LOBYTE(v35) = static Date.< infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v36, v38);
  if (v35)
  {
    v40 = *(v0 + 1176);
    v41 = *(v0 + 1168);
    v96 = *(v0 + 1096);
    v97 = *(v0 + 1104);
    v99 = *(v0 + 1088);
    v42 = *(v0 + 1056);
    v43 = *(v0 + 1040);
    v44 = *(v0 + 928);
    v45 = *(v0 + 768);
    v46 = *(v0 + 712);
    v94 = *(v0 + 704);
    v95 = *(v0 + 752);
    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
    v41(v42, v43 + *(v44 + 28), v45);
    v96(v42, 0, 1, v45);
    (*(v46 + 24))(v99, v95, v94);
  }

  v47 = *(v0 + 760);
  v48 = *(v0 + 752);
  v49 = *(v0 + 744);
  v50 = *(v0 + 704);
  static Date.trustedNow.getter(v49);
  Date.timeIntervalSince(_:)();
  v52 = v51;
  v39(v49, v50);
  v39(v48, v50);
  v39(v47, v50);
  v34 = v52 > 0.0;
  v98 = *(v0 + 1328);
LABEL_19:
  *(v0 + 211) = v34;
  *(v0 + 1352) = *(&v98 + 1);
  v53 = *(v0 + 1040);
  v54 = *(v53 + *(*(v0 + 928) + 36));
  *(v0 + 1360) = v54;
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = *(v0 + 1552);
    v57 = sub_1003A85FC(*(v54 + 16), 0);
    v58 = sub_1003CC2CC(v0 + 56, v57 + ((v56 + 32) & ~v56), v55, v54);
    v59 = *(v0 + 56);
    v60 = *(v0 + 64);
    v61 = *(v0 + 72);
    v62 = *(v0 + 80);
    v63 = *(v0 + 88);

    v64 = sub_1000128F8();
    if (v58 != v55)
    {
      __break(1u);
      return _swift_task_switch(v64, v65, v66);
    }

    v53 = *(v0 + 1040);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  v67 = swift_task_alloc();
  *(v67 + 16) = v53;
  v68 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BA86C, v67, v57);
  *(v0 + 1368) = v68;

  v69 = *(v68 + 32);
  *(v0 + 1568) = v69;
  v70 = -1;
  v71 = -1 << v69;
  v72 = *(v68 + 64);
  if (-v71 < 64)
  {
    v70 = ~(-1 << -v71);
  }

  *(v0 + 1392) = *(&v98 + 1);
  *(v0 + 1376) = v98;
  v73 = v70 & v72;
  if (v73)
  {
    v74 = 0;
    v75 = *(v0 + 1368);
LABEL_30:
    *(v0 + 1408) = v74;
    *(v0 + 1400) = v73;
    v78 = *(v0 + 1200);
    v79 = *(v0 + 1192);
    v80 = *(v0 + 1176);
    v81 = *(v0 + 1168);
    v100 = *(v0 + 1112);
    v82 = *(v0 + 768);
    v83 = *(v0 + 672);
    v84 = *(v0 + 664);
    v85 = *(v0 + 632);
    v86 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v73)) | (v74 << 6));
    v81(v83, *(v75 + 48) + v86, v82);
    v87 = *(v75 + 56);
    v88 = *(v85 + 48);
    v81(v83 + v88, v87 + v86, v82);
    v89 = *(v85 + 48);
    *(v0 + 1556) = v89;
    v79(v84, v83, v82);
    v79(v84 + v89, v83 + v88, v82);
    v64 = sub_1001AA1B4;
    v65 = v100;
  }

  else
  {
    v76 = 0;
    v77 = ((63 - v71) >> 6) - 1;
    v75 = *(v0 + 1368);
    while (v77 != v76)
    {
      v74 = v76 + 1;
      v73 = *(v75 + 8 * v76++ + 72);
      if (v73)
      {
        goto LABEL_30;
      }
    }

    v90 = *(v0 + 1040);
    v91 = *(v0 + 928);
    v92 = *(v0 + 1368);

    *(v0 + 1480) = qword_101390FD8[*(v90 + *(v91 + 40))];
    v65 = *(v0 + 1112);
    *(v0 + 1564) = *(*(v0 + 928) + 32);
    v64 = sub_1001AB8C0;
  }

  v66 = 0;

  return _swift_task_switch(v64, v65, v66);
}

uint64_t sub_1001A9C08()
{
  v1 = v0[164];
  v2 = v0[107];
  v3 = v0[96];
  v4 = v0[53];
  v5 = *(v0[97] + 8);
  v0[168] = v5;
  v5(v2, v3);

  return _swift_task_switch(sub_1001A9C98, v4, 0);
}

uint64_t sub_1001A9C98()
{
  v1 = *(v0 + 1344);
  (*(*(v0 + 712) + 56))(*(v0 + 696), 1, 1, *(v0 + 704));
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1008);
  sub_10000B3A8(*(v0 + 696), &unk_101696900, &unk_10138B1E0);
  sub_1001BB2E0(v3, v4, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v63 = v1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 210);
    v8 = swift_slowAlloc();
    *(v0 + 320) = swift_slowAlloc();
    *v8 = 136315394;
    if (v7)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 328) = *(v0 + 416);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    v13 = *(v0 + 1008);
    v14 = *(v0 + 928);
    v15 = *(v0 + 768);
    v16 = sub_1000136BC(v9, v10, (v0 + 320));

    *(v8 + 4) = v16;
    *(v8 + 12) = 2080;
    v17 = *(v14 + 24);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    v21 = sub_1000136BC(v18, v20, (v0 + 320));

    *(v8 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Beacon %s is not delegated.", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = *(v0 + 1008);

    sub_1001BA80C(v11, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 211) = 0;
  *(v0 + 1352) = v1;
  v22 = *(v0 + 1040);
  v23 = *(v22 + *(*(v0 + 928) + 36));
  *(v0 + 1360) = v23;
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 1552);
    v26 = sub_1003A85FC(*(v23 + 16), 0);
    v27 = sub_1003CC2CC(v0 + 56, v26 + ((v25 + 32) & ~v25), v24, v23);
    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    v30 = *(v0 + 72);
    v31 = *(v0 + 80);
    v32 = *(v0 + 88);

    v33 = sub_1000128F8();
    if (v27 != v24)
    {
      __break(1u);
      return _swift_task_switch(v33, v34, v35);
    }

    v22 = *(v0 + 1040);
    v1 = v63;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v36 = swift_task_alloc();
  *(v36 + 16) = v22;
  v37 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BA86C, v36, v26);
  *(v0 + 1368) = v37;

  v38 = *(v37 + 32);
  *(v0 + 1568) = v38;
  v39 = -1;
  v40 = -1 << v38;
  v41 = *(v37 + 64);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  *(v0 + 1392) = v1;
  *(v0 + 1384) = v1;
  *(v0 + 1376) = 0;
  v42 = v39 & v41;
  if (v42)
  {
    v43 = 0;
    v44 = *(v0 + 1368);
LABEL_18:
    *(v0 + 1408) = v43;
    *(v0 + 1400) = v42;
    v47 = *(v0 + 1200);
    v48 = *(v0 + 1192);
    v49 = *(v0 + 1176);
    v50 = *(v0 + 1168);
    v64 = *(v0 + 1112);
    v51 = *(v0 + 768);
    v52 = *(v0 + 672);
    v53 = *(v0 + 664);
    v54 = *(v0 + 632);
    v55 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v42)) | (v43 << 6));
    v50(v52, *(v44 + 48) + v55, v51);
    v56 = *(v44 + 56);
    v57 = *(v54 + 48);
    v50(v52 + v57, v56 + v55, v51);
    v58 = *(v54 + 48);
    *(v0 + 1556) = v58;
    v48(v53, v52, v51);
    v48(v53 + v58, v52 + v57, v51);
    v33 = sub_1001AA1B4;
    v34 = v64;
  }

  else
  {
    v45 = 0;
    v46 = ((63 - v40) >> 6) - 1;
    v44 = *(v0 + 1368);
    while (v46 != v45)
    {
      v43 = v45 + 1;
      v42 = *(v44 + 8 * v45++ + 72);
      if (v42)
      {
        goto LABEL_18;
      }
    }

    v59 = *(v0 + 1040);
    v60 = *(v0 + 928);
    v61 = *(v0 + 1368);

    *(v0 + 1480) = qword_101390FD8[*(v59 + *(v60 + 40))];
    v34 = *(v0 + 1112);
    *(v0 + 1564) = *(*(v0 + 928) + 32);
    v33 = sub_1001AB8C0;
  }

  v35 = 0;

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_1001AA1B4()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  v8 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v5, *(v0 + 664) + *(v0 + 1556), v7);
  v9 = swift_allocObject();
  *(v0 + 1416) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1424) = v11;
  *v11 = v0;
  v11[1] = sub_1001AA318;
  v12 = *(v0 + 576);
  v13 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA89C, v9, v13);
}

uint64_t sub_1001AA318()
{
  v1 = *(*v0 + 1424);
  v2 = *(*v0 + 1416);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_1001AA444, v3, 0);
}

uint64_t sub_1001AA444()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v1 + 48);
  *(v0 + 1432) = v4;
  *(v0 + 1440) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) != 1)
  {
    v77 = *(v0 + 1176);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 768);
    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    sub_1001BAAE8(v3, v17, type metadata accessor for MemberPeerTrust);
    v19 = (v17 + v2[8]);
    v20 = *v19;
    v21 = v19[1];
    v22 = sub_100A4F304(*v19, v21);
    v24 = v23;
    *(v0 + 1448) = v22;
    *(v0 + 1456) = v23;
    v15(&v18[v2[5]], v17 + v2[5], v16);
    LOBYTE(v15) = *(v17 + v2[6]);
    sub_1001BB2E0(v17 + v2[7], &v18[v2[7]], type metadata accessor for PeerCommunicationIdentifier);
    v25 = (v17 + v2[9]);
    v27 = *v25;
    v26 = v25[1];
    *v18 = xmmword_10138C660;
    v18[v2[6]] = v15;
    v28 = &v18[v2[8]];
    *v28 = v22;
    v28[1] = v24;
    v29 = &v18[v2[9]];
    *v29 = v27;
    v29[1] = v26;
    if (v22 == v20 && v24 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100017D5C(v27, v26);
    }

    else
    {
      sub_100017D5C(v27, v26);

      sub_100DEA8E0(v0 + 192, v22, v24, 1);
      v34 = *(v0 + 200);
    }

    v35 = *(v0 + 1112);
    *(v0 + 1560) = *(*(v0 + 928) + 32);
    v36 = sub_1001AAAB8;
LABEL_12:
    v37 = v36;
    goto LABEL_22;
  }

  v5 = *(v0 + 1072);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 976);
  v8 = *(v0 + 968);
  sub_10000B3A8(v3, &qword_101698C10, &unk_10138C1E0);
  sub_1001BB2E0(v6, v7, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v6, v8, type metadata accessor for MemberSharingCircle);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v76 = v10;
    v11 = *(v0 + 210);
    v12 = swift_slowAlloc();
    *(v0 + 256) = swift_slowAlloc();
    *v12 = 136316163;
    if (v11)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 408) = *(v0 + 416);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v38;
    }

    v39 = *(v0 + 976);
    v40 = *(v0 + 928);
    v41 = *(v0 + 768);
    v74 = *(v0 + 968);
    v75 = *(v0 + 664);
    v42 = sub_1000136BC(v13, v14, (v0 + 256));

    *(v12 + 4) = v42;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v43 = *(v40 + 28);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
    v47 = sub_1000136BC(v44, v46, (v0 + 256));

    *(v12 + 24) = v47;
    *(v12 + 32) = 2160;
    *(v12 + 34) = 1752392040;
    *(v12 + 42) = 2081;
    v48 = *(v40 + 32);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1001BA80C(v74, type metadata accessor for MemberSharingCircle);
    v52 = sub_1000136BC(v49, v51, (v0 + 256));

    *(v12 + 44) = v52;
    _os_log_impl(&_mh_execute_header, v9, v76, "%s Missing member peer trust for member in member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v12, 0x34u);
    swift_arrayDestroy();

    v33 = v75;
  }

  else
  {
    v30 = *(v0 + 976);
    v31 = *(v0 + 968);
    v32 = *(v0 + 664);

    sub_1001BA80C(v31, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v30, type metadata accessor for MemberSharingCircle);
    v33 = v32;
  }

  v37 = sub_10000B3A8(v33, &qword_101698C18, &qword_101390740);
  v54 = *(v0 + 1408);
  v55 = (*(v0 + 1400) - 1) & *(v0 + 1400);
  if (v55)
  {
    v56 = *(v0 + 1368);
LABEL_21:
    *(v0 + 1408) = v54;
    *(v0 + 1400) = v55;
    v58 = *(v0 + 1200);
    v59 = *(v0 + 1192);
    v60 = *(v0 + 1176);
    v61 = *(v0 + 1168);
    v78 = *(v0 + 1112);
    v62 = *(v0 + 768);
    v63 = *(v0 + 672);
    v64 = *(v0 + 664);
    v65 = *(v0 + 632);
    v66 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v55)) | (v54 << 6));
    v61(v63, *(v56 + 48) + v66, v62);
    v67 = *(v56 + 56);
    v68 = *(v65 + 48);
    v61(v63 + v68, v67 + v66, v62);
    v69 = *(v65 + 48);
    *(v0 + 1556) = v69;
    v59(v64, v63, v62);
    v59(v64 + v69, v63 + v68, v62);
    v37 = sub_1001AA1B4;
    v35 = v78;
LABEL_22:
    v53 = 0;

    return _swift_task_switch(v37, v35, v53);
  }

  while (1)
  {
    v57 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v56 = *(v0 + 1368);
    if (v57 >= (((1 << *(v0 + 1568)) + 63) >> 6))
    {
      v70 = *(v0 + 1040);
      v71 = *(v0 + 928);
      v72 = *(v0 + 1368);

      *(v0 + 1480) = qword_101390FD8[*(v70 + *(v71 + 40))];
      v35 = *(v0 + 1112);
      *(v0 + 1564) = *(*(v0 + 928) + 32);
      v36 = sub_1001AB8C0;
      goto LABEL_12;
    }

    v55 = *(v56 + 8 * v57 + 64);
    ++v54;
    if (v55)
    {
      v54 = v57;
      goto LABEL_21;
    }
  }

  __break(1u);
  return _swift_task_switch(v37, v35, v53);
}

uint64_t sub_1001AAAB8()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  v8 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v5, *(v0 + 1040) + *(v0 + 1560), v7);
  v9 = swift_allocObject();
  *(v0 + 1464) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1472) = v11;
  *v11 = v0;
  v11[1] = sub_1001AAC1C;
  v12 = *(v0 + 568);
  v13 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A8, v9, v13);
}

uint64_t sub_1001AAC1C()
{
  v1 = *(*v0 + 1472);
  v2 = *(*v0 + 1464);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_1001AAD48, v3, 0);
}

void sub_1001AAD48()
{
  v150 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 568);
  if ((*(v0 + 1432))(v2, 1, *(v0 + 584)) == 1)
  {
    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
    v3 = *(v0 + 1392);
    v4 = *(v0 + 1384);
    goto LABEL_13;
  }

  v5 = *(v0 + 1360);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 632);
  sub_1001BAAE8(v2, *(v0 + 608), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v6, v7, &qword_101698C18, &qword_101390740);
  v9 = *(v8 + 48);
  if (!*(v5 + 16) || (v10 = *(v0 + 1360), v11 = sub_1000210EC(v7 + v9), (v12 & 1) == 0))
  {
    v48 = *(v0 + 1352);
    v49 = *(v0 + 768);
    v50 = *(v0 + 656);
    v51 = *(v0 + 776) + 8;
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);
    v48(v7 + v9, v49);
    v48(v50, v49);
    v4 = *(v0 + 1352);
LABEL_12:
    v3 = v4;
LABEL_13:
    v52 = *(v0 + 1072);
    v53 = *(v0 + 1040);
    v54 = *(v0 + 984);
    sub_1001BB2E0(v53, *(v0 + 992), type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v53, v54, type metadata accessor for MemberSharingCircle);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 210);
      v58 = swift_slowAlloc();
      *(v0 + 232) = swift_slowAlloc();
      *v58 = 136316163;
      v143 = v3;
      v147 = v4;
      if (v57)
      {
        v59 = 0;
        v60 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 240) = *(v0 + 416);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v70;
      }

      v71 = *(v0 + 992);
      v127 = *(v0 + 984);
      v72 = *(v0 + 928);
      v73 = *(v0 + 768);
      v135 = *(v0 + 624);
      v129 = *(v0 + 664);
      v131 = *(v0 + 616);
      v74 = sub_1000136BC(v59, v60, (v0 + 232));

      *(v58 + 4) = v74;
      *(v58 + 12) = 2160;
      *(v58 + 14) = 1752392040;
      *(v58 + 22) = 2081;
      v75 = *(v72 + 28);
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      sub_1001BA80C(v71, type metadata accessor for MemberSharingCircle);
      v79 = sub_1000136BC(v76, v78, (v0 + 232));

      *(v58 + 24) = v79;
      *(v58 + 32) = 2160;
      *(v58 + 34) = 1752392040;
      *(v58 + 42) = 2081;
      v80 = v127 + *(v72 + 32);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      sub_1001BA80C(v127, type metadata accessor for MemberSharingCircle);
      v84 = sub_1000136BC(v81, v83, (v0 + 232));

      *(v58 + 44) = v84;
      _os_log_impl(&_mh_execute_header, v55, v56, "%s Missing member peer trust for owner in member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v58, 0x34u);
      swift_arrayDestroy();

      sub_10000B3A8(v129, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v131, type metadata accessor for MemberPeerTrust);
      v66 = sub_1001BA80C(v135, type metadata accessor for MemberPeerTrust);
      v69 = *(v0 + 1376);
      v3 = v143;
      v4 = v147;
    }

    else
    {
      v61 = *(v0 + 992);
      v62 = *(v0 + 984);
      v63 = *(v0 + 664);
      v64 = *(v0 + 624);
      v65 = *(v0 + 616);

      sub_1001BA80C(v62, type metadata accessor for MemberSharingCircle);
      sub_1001BA80C(v61, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v63, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v65, type metadata accessor for MemberPeerTrust);
      v66 = sub_1001BA80C(v64, type metadata accessor for MemberPeerTrust);
      v69 = *(v0 + 1376);
    }

    goto LABEL_19;
  }

  v13 = *(v0 + 1384);
  v14 = *(v0 + 768);
  v15 = *(v0 + 656);
  v16 = *(v0 + 608);
  v17 = *(v0 + 584);
  v18 = *(v0 + 776) + 8;
  v19 = *(*(*(v0 + 1360) + 56) + v11);
  v13(v7 + v9, v14);
  v13(v15, v14);
  v20 = (v16 + *(v17 + 32));
  v21 = *v20;
  v22 = v20[1];
  v23 = String._bridgeToObjectiveC()();
  v24 = objc_opt_self();
  v25 = [v24 handleWithString:v23];

  if (!v25)
  {
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);
    v4 = *(v0 + 1384);
    goto LABEL_12;
  }

  v26 = *(v0 + 1456);
  v27 = *(v0 + 1448);
  v28 = String._bridgeToObjectiveC()();
  v29 = [v24 handleWithString:v28];

  if (!v29)
  {
    sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberPeerTrust);

    v4 = *(v0 + 1384);
    goto LABEL_12;
  }

  v30 = *(v0 + 1176);
  v31 = *(v0 + 1168);
  v130 = *(v0 + 1548);
  v32 = *(v0 + 1040);
  v33 = *(v0 + 1000);
  v34 = *(v0 + 848);
  v133 = *(v0 + 928);
  v136 = *(v0 + 840);
  v35 = *(v0 + 768);
  v141 = v19;
  v36 = *(v0 + 664);
  v146 = *(v0 + 640);
  v139.super.isa = *(v0 + 632);
  sub_1000D2A70(v36, *(v0 + 648), &qword_101698C18, &qword_101390740);
  sub_1001BB2E0(v32, v33, type metadata accessor for MemberSharingCircle);
  v31(v34, v32 + v130, v35);
  v31(v136, v32 + *(v133 + 28), v35);
  sub_1000D2A70(v36, v146, &qword_101698C18, &qword_101390740);
  v37 = *(v139.super.isa + 12);
  v137 = qword_101390FD8[v141];
  v142 = *(v0 + 1376);
  v38 = *(v0 + 1000);
  v39 = *(v0 + 848);
  v40 = *(v0 + 840);
  v41 = *(v0 + 736);
  v42 = *(v0 + 648);
  v43 = v25;
  v44 = v29;
  v140.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v45.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v46.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v134.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v47 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v38, v41);
  if (v142)
  {

    objc_autoreleasePoolPop(v47);
    return;
  }

  v122 = v37;
  v115 = *(v0 + 1384);
  v116 = *(v0 + 211);
  v119 = *(v0 + 840);
  v120 = *(v0 + 848);
  v104 = *(v0 + 768);
  v105 = *(v0 + 744);
  v106 = *(v0 + 736);
  isa = v46.super.isa;
  v118 = v44;
  v107 = *(v0 + 712);
  v108 = *(v0 + 704);
  v125 = *(v0 + 1000);
  v126 = *(v0 + 664);
  v121 = *(v0 + 648);
  v124 = *(v0 + 640);
  v145 = *(v0 + 624);
  v132 = *(v0 + 616);
  v128 = *(v0 + 608);
  v123 = *(*(v0 + 632) + 48);
  v114 = objc_allocWithZone(SPBeaconShare);
  objc_autoreleasePoolPop(v47);
  v109 = Date._bridgeToObjectiveC()().super.isa;
  v113 = v43;
  v110 = *(v107 + 8);
  v110(v106, v108);
  static Date.distantFuture.getter();
  v111 = Date._bridgeToObjectiveC()().super.isa;
  v110(v105, v108);
  LOBYTE(v112) = v116;
  v138 = [v114 initWithIdentifier:v140.super.isa beaconIdentifier:v45.super.isa sharingCircleIdentifier:isa peerTrustIdentifier:v134.super.isa owner:v113 sharee:v118 state:v137 creationDate:v109 expirationDate:v111 visitorCount:0 delegationStatus:v112];

  v115(v119, v104);
  v115(v120, v104);
  v115(v146 + v122, v104);
  v115(v121, v104);
  sub_1001BA80C(v125, type metadata accessor for MemberSharingCircle);
  v115(v124, v104);
  v115(v121 + v123, v104);
  sub_100DEA678(v149, v138);

  sub_10000B3A8(v126, &qword_101698C18, &qword_101390740);
  sub_1001BA80C(v128, type metadata accessor for MemberPeerTrust);
  sub_1001BA80C(v132, type metadata accessor for MemberPeerTrust);
  v66 = sub_1001BA80C(v145, type metadata accessor for MemberPeerTrust);
  v69 = 0;
  v4 = *(v0 + 1384);
  v3 = v4;
LABEL_19:
  v85 = *(v0 + 1408);
  v86 = *(v0 + 1400);
  *(v0 + 1392) = v3;
  *(v0 + 1384) = v4;
  *(v0 + 1376) = v69;
  v87 = (v86 - 1) & v86;
  if (v87)
  {
    v88 = *(v0 + 1368);
LABEL_25:
    *(v0 + 1408) = v85;
    *(v0 + 1400) = v87;
    v90 = *(v0 + 1192);
    v91 = *(v0 + 1176);
    v92 = *(v0 + 1168);
    v144 = *(v0 + 1200);
    v148 = *(v0 + 1112);
    v93 = *(v0 + 768);
    v94 = *(v0 + 672);
    v95 = *(v0 + 664);
    v96 = *(v0 + 632);
    v97 = *(*(v0 + 776) + 72) * (__clz(__rbit64(v87)) | (v85 << 6));
    v92(v94, *(v88 + 48) + v97, v93);
    v98 = *(v88 + 56);
    v99 = *(v96 + 48);
    v92(v94 + v99, v98 + v97, v93);
    v100 = *(v96 + 48);
    *(v0 + 1556) = v100;
    v90(v95, v94, v93);
    v90(v95 + v100, v94 + v99, v93);
    v66 = sub_1001AA1B4;
    v67 = v148;
LABEL_26:
    v68 = 0;
  }

  else
  {
    while (1)
    {
      v89 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      v88 = *(v0 + 1368);
      if (v89 >= (((1 << *(v0 + 1568)) + 63) >> 6))
      {
        v101 = *(v0 + 1040);
        v102 = *(v0 + 928);
        v103 = *(v0 + 1368);

        *(v0 + 1480) = qword_101390FD8[*(v101 + *(v102 + 40))];
        v67 = *(v0 + 1112);
        *(v0 + 1564) = *(*(v0 + 928) + 32);
        v66 = sub_1001AB8C0;
        goto LABEL_26;
      }

      v87 = *(v88 + 8 * v89 + 64);
      ++v85;
      if (v87)
      {
        v85 = v89;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  _swift_task_switch(v66, v67, v68);
}

uint64_t sub_1001AB8C0()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 784);
  v7 = *(v0 + 768);
  v8 = (*(v0 + 1552) + 24) & ~*(v0 + 1552);
  (*(v0 + 1168))(v5, *(v0 + 1040) + *(v0 + 1564), v7);
  v9 = swift_allocObject();
  *(v0 + 1488) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1496) = v11;
  *v11 = v0;
  v11[1] = sub_1001ABA24;
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A8, v9, v13);
}

uint64_t sub_1001ABA24()
{
  v1 = *(*v0 + 1496);
  v2 = *(*v0 + 1488);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_1001ABB50, v3, 0);
}

void sub_1001ABB50()
{
  v97 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  if ((*(*(v0 + 592) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
LABEL_9:
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1040);
    v23 = *(v0 + 952);
    sub_1001BB2E0(v22, *(v0 + 960), type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v22, v23, type metadata accessor for MemberSharingCircle);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v94 = v25;
      v26 = *(v0 + 210);
      v27 = swift_slowAlloc();
      *(v0 + 296) = swift_slowAlloc();
      *v27 = 136316163;
      if (v26)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 304) = *(v0 + 416);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v32;
      }

      v33 = *(v0 + 960);
      v89 = *(v0 + 952);
      v34 = *(v0 + 928);
      v35 = *(v0 + 768);
      v36 = sub_1000136BC(v28, v29, (v0 + 296));

      *(v27 + 4) = v36;
      *(v27 + 12) = 2160;
      *(v27 + 14) = 1752392040;
      *(v27 + 22) = 2081;
      v37 = *(v34 + 28);
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1001BA80C(v33, type metadata accessor for MemberSharingCircle);
      v41 = sub_1000136BC(v38, v40, (v0 + 296));

      *(v27 + 24) = v41;
      *(v27 + 32) = 2160;
      *(v27 + 34) = 1752392040;
      *(v27 + 42) = 2081;
      v42 = *(v34 + 32);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      sub_1001BA80C(v89, type metadata accessor for MemberSharingCircle);
      v46 = sub_1000136BC(v43, v45, (v0 + 296));

      *(v27 + 44) = v46;
      _os_log_impl(&_mh_execute_header, v24, v94, "%s Missing ownerTrust for member circle: %{private,mask.hash}s,\nowner: %{private,mask.hash}s.", v27, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v30 = *(v0 + 960);
      v31 = *(v0 + 952);

      sub_1001BA80C(v31, type metadata accessor for MemberSharingCircle);
      sub_1001BA80C(v30, type metadata accessor for MemberSharingCircle);
    }

    v47 = *(v0 + 1040);
LABEL_16:
    v48 = sub_1001BA80C(v47, type metadata accessor for MemberSharingCircle);
    v51 = *(v0 + 1152) + 1;
    if (v51 == *(v0 + 1144))
    {
      v52 = *(v0 + 1136);

      v53 = swift_task_alloc();
      *(v0 + 1504) = v53;
      *v53 = v0;
      v53[1] = sub_1001AC3AC;
      v54 = *(v0 + 424);
      v55 = *(v0 + 209);

      sub_1001AEEC0(v55);
    }

    else
    {
      *(v0 + 1152) = v51;
      v56 = *(v0 + 1136);
      if (v51 >= *(v56 + 16))
      {
        __break(1u);
      }

      else
      {
        v57 = *(v0 + 1112);
        v58 = *(v0 + 1040);
        v59 = *(v0 + 928);
        v60 = v56 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
        v61 = *(*(v0 + 936) + 72);
        *(v0 + 1160) = v61;
        sub_1001BB2E0(v60 + v61 * v51, v58, type metadata accessor for MemberSharingCircle);
        *(v0 + 1548) = *(v59 + 24);
        v48 = sub_1001A7768;
        v49 = v57;
        v50 = 0;
      }

      _swift_task_switch(v48, v49, v50);
    }

    return;
  }

  v3 = *(v0 + 600);
  sub_1001BAAE8(v2, v3, type metadata accessor for MemberPeerTrust);
  v4 = (v3 + *(v1 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 handleWithString:v7];

  if (!v9)
  {
    sub_1001BA80C(*(v0 + 600), type metadata accessor for MemberPeerTrust);
    goto LABEL_9;
  }

  v86 = v9;
  v10 = *(v0 + 1176);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 1548);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v88 = *(v0 + 808);
  v16 = *(v0 + 768);
  v91 = *(v0 + 728);
  v93 = *(v0 + 1376);
  v17 = *(*(v0 + 928) + 20);
  v11(*(v0 + 832), v13 + v17, v16);
  v11(v14, v13 + v12, v16);
  v11(v15, v13 + v17, v16);
  UUID.init()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v8 handleWithEmailAddress:v18];

  v20 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v13, v91);
  if (!v93)
  {
    v77 = *(v0 + 1480);
    v90 = *(v0 + 1392);
    v76 = *(v0 + 211);
    v95 = *(v0 + 1040);
    v79 = v19;
    v62 = *(v0 + 824);
    v81 = v62;
    v82 = *(v0 + 832);
    v80 = *(v0 + 816);
    v78 = *(v0 + 808);
    v63 = *(v0 + 744);
    v74 = *(v0 + 712);
    v75 = *(v0 + 728);
    v83 = *(v0 + 704);
    v84 = *(v0 + 776) + 8;
    v85 = *(v0 + 768);
    v92 = *(v0 + 600);
    objc_autoreleasePoolPop(v20);
    static Date.distantFuture.getter();
    v72 = objc_allocWithZone(SPBeaconShare);
    v73 = v86;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v65 = UUID._bridgeToObjectiveC()().super.isa;
    v66 = UUID._bridgeToObjectiveC()().super.isa;
    v67 = UUID._bridgeToObjectiveC()().super.isa;
    v68 = Date._bridgeToObjectiveC()().super.isa;
    v69 = Date._bridgeToObjectiveC()().super.isa;
    LOBYTE(v71) = v76;
    v87 = [v72 initWithIdentifier:isa beaconIdentifier:v65 sharingCircleIdentifier:v66 peerTrustIdentifier:v67 owner:v73 sharee:v79 state:v77 creationDate:v68 expirationDate:v69 delegationStatus:v71];

    v70 = *(v74 + 8);
    v70(v63, v83);
    v70(v75, v83);
    v90(v78, v85);
    v90(v80, v85);
    v90(v81, v85);
    v90(v82, v85);
    sub_100DEA678(v96, v87);

    sub_1001BA80C(v92, type metadata accessor for MemberPeerTrust);
    v47 = v95;
    goto LABEL_16;
  }

  objc_autoreleasePoolPop(v20);
}

uint64_t sub_1001AC3AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1504);
  v5 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 1512) = a1;
  *(v3 + 1520) = a2;

  return _swift_task_switch(sub_1001AC4C8, v5, 0);
}

uint64_t sub_1001AC4C8()
{
  v1 = *(v0 + 1520);
  sub_1005C9D24(*(v0 + 1512));
  sub_1005C9D54(v1);
  v2 = swift_task_alloc();
  *(v0 + 1528) = v2;
  *v2 = v0;
  v2[1] = sub_1001AC584;
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 424);
  v6 = *(v0 + 209);

  return sub_1001B185C(v6, v4, v3);
}

uint64_t sub_1001AC584(uint64_t a1)
{
  v2 = *(*v1 + 1528);
  v3 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 1536) = a1;

  return _swift_task_switch(sub_1001AC69C, v3, 0);
}

uint64_t sub_1001AC69C()
{
  v181 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 776);
  v176 = *(v0 + 768);
  v5 = *(v0 + 744);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  sub_1005C9D24(*(v0 + 1536));
  v168 = *(v7 + 16);
  v168(v5, v1, v8);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  sub_1000D2A70(v2, v3, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v4 + 48))(v3, 1, v176) == 1)
  {
    v12 = &qword_1016980D0;
    v13 = &unk_10138F3B0;
    v14 = *(v0 + 1048);
  }

  else
  {
    v177 = v11;
    v165 = *(*(v0 + 776) + 32);
    v165(*(v0 + 800), *(v0 + 1048), *(v0 + 768));
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 1080);
    v16 = *(v0 + 800);
    v17 = *(v0 + 792);
    v18 = *(v0 + 776);
    v19 = *(v0 + 768);
    sub_1000076D4(*(v0 + 1064), qword_10177AE28);
    v161 = *(v18 + 16);
    v161(v17, v16, v19);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v152 = v21;
      v22 = *(v0 + 210);
      v23 = swift_slowAlloc();
      v180[0] = swift_slowAlloc();
      *v23 = 136316162;
      v155 = v20;
      if (v22)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 280) = *(v0 + 416);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v29;
      }

      v30 = *(v0 + 1088);
      v31 = *(v0 + 792);
      v32 = *(v0 + 776);
      v33 = *(v0 + 768);
      v34 = *(v0 + 744);
      v35 = *(v0 + 704);
      v36 = sub_1000136BC(v24, v25, v180);

      *(v23 + 4) = v36;
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2080;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v158 = *(v32 + 8);
      v158(v31, v33);
      v40 = sub_1000136BC(v37, v39, v180);

      *(v23 + 24) = v40;
      *(v23 + 32) = 2082;
      swift_beginAccess();
      v168(v34, v30, v35);
      sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v177(v34, v35);
      v44 = sub_1000136BC(v41, v43, v180);

      *(v23 + 34) = v44;
      *(v23 + 42) = 2048;
      *(v23 + 44) = v10;
      _os_log_impl(&_mh_execute_header, v155, v152, "%s Will expire next delegation: %{mask.hash}s at %{public}s [in %f seconds]", v23, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v26 = *(v0 + 792);
      v27 = *(v0 + 776);
      v28 = *(v0 + 768);

      v158 = *(v27 + 8);
      v158(v26, v28);
    }

    v45 = *(v0 + 544);
    v46 = *(v0 + 536);
    v47 = *(v0 + 520);
    v48 = *(v0 + 504);
    v49 = *(v0 + 488);
    v50 = *(v0 + 496);
    v51 = *(v0 + 472);
    v173 = *(v0 + 464);
    v178 = *(v0 + 512);
    v52 = *(v0 + 456);
    v53 = *(v0 + 424);
    ContinuousClock.init()();
    ContinuousClock.now.getter();
    (*(v50 + 8))(v48, v49);
    v54 = v53;
    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    v55 = *(v47 + 8);
    v55(v46, v178);
    v56 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask;
    swift_beginAccess();
    sub_1000D2A70(v54 + v56, v52, &qword_101698C08, &unk_101390730);
    v57 = *(v51 + 48);
    if (v57(v52, 1, v173) == 1)
    {
      sub_10000B3A8(*(v0 + 456), &qword_101698C08, &unk_101390730);
    }

    else
    {
      v58 = *(v0 + 800);
      v59 = *(v0 + 768);
      sub_1001BAAE8(*(v0 + 456), *(v0 + 480), type metadata accessor for BeaconSharingService.PendingExpirationTask);
      sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = *(v0 + 480);
      if ((v60 & 1) == 0)
      {
        v62 = *(v0 + 464);
        v63 = *(v0 + 472);
        v64 = *(v0 + 448);
        v65 = *(v61 + *(v62 + 20));
        v66 = *(v0 + 480);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        Task.cancel()();
        (*(v63 + 56))(v64, 1, 1, v62);
        swift_beginAccess();
        sub_1001BAA78(v64, v54 + v56);
        swift_endAccess();
        v61 = v66;
      }

      sub_1001BA80C(v61, type metadata accessor for BeaconSharingService.PendingExpirationTask);
    }

    v67 = *(v0 + 464);
    v68 = *(v0 + 440);
    sub_1000D2A70(v54 + v56, v68, &qword_101698C08, &unk_101390730);
    if (v57(v68, 1, v67) == 1)
    {
      v156 = *(v0 + 1080);
      v69 = *(v0 + 864);
      v133 = v69;
      v70 = *(v0 + 800);
      v137 = *(v0 + 776);
      v139 = *(v0 + 784);
      v71 = *(v0 + 768);
      v131 = v71;
      v72 = *(v0 + 544);
      v147 = v56;
      v149 = v72;
      v73 = *(v0 + 536);
      v135 = *(v0 + 528);
      v169 = v55;
      v74 = *(v0 + 520);
      v75 = *(v0 + 512);
      v171 = *(v0 + 464);
      v174 = *(v0 + 472);
      v159 = *(v0 + 448);
      v76 = *(v0 + 432);
      v145 = *(v0 + 210);
      v153 = *(v0 + 424);
      v141 = *(v0 + 416);
      v143 = v76;
      sub_10000B3A8(*(v0 + 440), &qword_101698C08, &unk_101390730);
      v77 = type metadata accessor for TaskPriority();
      (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
      v78 = v75;
      (*(v74 + 16))(v73, v72, v75);
      v161(v69, v70, v71);
      v163 = v54;
      v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v80 = (v135 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = (*(v137 + 80) + v80 + 9) & ~*(v137 + 80);
      v82 = (v139 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      *(v83 + 24) = 0;
      (*(v74 + 32))(v83 + v79, v73, v78);
      v84 = v83 + v80;
      *v84 = v141;
      *(v84 + 8) = v145 & 1;
      v165(v83 + v81, v133, v131);
      *(v83 + v82) = v156;
      *(v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8)) = v153;

      v85 = sub_100BB9ADC(0, 0, v143, &unk_101390768, v83);
      sub_10000B3A8(v143, &qword_101698C00, &qword_10138B570);
      v169(v149, v78);
      v165(v159, v70, v131);
      *(v159 + *(v171 + 20)) = v85;
      (*(v174 + 56))(v159, 0, 1);
      swift_beginAccess();
      sub_1001BAA78(v159, v163 + v147);
      swift_endAccess();
      goto LABEL_20;
    }

    v86 = *(v0 + 800);
    v87 = *(v0 + 776);
    v88 = *(v0 + 768);
    v89 = *(v0 + 440);
    v55(*(v0 + 544), *(v0 + 512));
    v158(v86, v88);
    v12 = &qword_101698C08;
    v13 = &unk_101390730;
    v14 = v89;
  }

  sub_10000B3A8(v14, v12, v13);
LABEL_20:
  v90 = *(v0 + 1080);
  v91 = *(v0 + 1056);
  v92 = *(v0 + 1048);
  v93 = *(v0 + 1040);
  v94 = *(v0 + 1032);
  v95 = *(v0 + 1024);
  v96 = *(v0 + 1016);
  v101 = *(v0 + 1008);
  v102 = *(v0 + 1000);
  v103 = *(v0 + 992);
  v104 = *(v0 + 984);
  v105 = *(v0 + 976);
  v106 = *(v0 + 968);
  v107 = *(v0 + 960);
  v108 = *(v0 + 952);
  v109 = *(v0 + 944);
  v110 = *(v0 + 920);
  v111 = *(v0 + 912);
  v112 = *(v0 + 888);
  v113 = *(v0 + 880);
  v114 = *(v0 + 864);
  v115 = *(v0 + 856);
  v116 = *(v0 + 848);
  v117 = *(v0 + 840);
  v118 = *(v0 + 832);
  v119 = *(v0 + 824);
  v120 = *(v0 + 816);
  v121 = *(v0 + 808);
  v122 = *(v0 + 800);
  v123 = *(v0 + 792);
  v124 = *(v0 + 760);
  v125 = *(v0 + 752);
  v126 = *(v0 + 744);
  v127 = *(v0 + 736);
  v128 = *(v0 + 728);
  v129 = *(v0 + 720);
  v130 = *(v0 + 696);
  v132 = *(v0 + 688);
  v134 = *(v0 + 680);
  v136 = *(v0 + 672);
  v138 = *(v0 + 664);
  v140 = *(v0 + 656);
  v142 = *(v0 + 648);
  v144 = *(v0 + 640);
  v146 = *(v0 + 624);
  v148 = *(v0 + 616);
  v150 = *(v0 + 608);
  v151 = *(v0 + 600);
  v154 = *(v0 + 576);
  v157 = *(v0 + 568);
  v160 = *(v0 + 560);
  v162 = *(v0 + 544);
  v164 = *(v0 + 536);
  v166 = *(v0 + 504);
  v167 = *(v0 + 480);
  v170 = *(v0 + 456);
  v172 = *(v0 + 448);
  v175 = *(v0 + 440);
  v179 = *(v0 + 432);
  v97 = *(v0 + 424);
  sub_100A4E94C(*(v0 + 384));

  sub_10000B3A8(v91, &qword_1016980D0, &unk_10138F3B0);

  v98 = *(v0 + 216);

  v99 = *(v0 + 8);

  return v99(v98);
}

uint64_t sub_1001AD4A0()
{
  v1 = *(v0 + 1248);
  sub_1001BB2E0(*(v0 + 1040), *(v0 + 944), type metadata accessor for MemberSharingCircle);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 210);
    v5 = swift_slowAlloc();
    *(v0 + 352) = swift_slowAlloc();
    *v5 = 136315651;
    if (v4)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 360) = *(v0 + 416);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v12;
    }

    v13 = *(v0 + 944);
    v14 = *(v0 + 928);
    v37 = *(v0 + 1264);
    v38 = *(v0 + 912);
    v15 = *(v0 + 768);
    v16 = sub_1000136BC(v6, v7, (v0 + 352));

    *(v5 + 4) = v16;
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v17 = *(v14 + 28);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    v21 = sub_1000136BC(v18, v20, (v0 + 352));

    *(v5 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failed to get imported share for share id: %{private,mask.hash}s ", v5, 0x20u);
    swift_arrayDestroy();

    v11 = v38;
  }

  else
  {
    v8 = *(v0 + 1264);
    v9 = *(v0 + 944);
    v10 = *(v0 + 912);

    sub_1001BA80C(v9, type metadata accessor for MemberSharingCircle);
    v11 = v10;
  }

  sub_1001BA80C(v11, type metadata accessor for SharedBeaconRecord);
  v22 = sub_1001BA80C(*(v0 + 1040), type metadata accessor for MemberSharingCircle);
  v25 = *(v0 + 1152) + 1;
  if (v25 == *(v0 + 1144))
  {
    v26 = *(v0 + 1136);

    v27 = swift_task_alloc();
    *(v0 + 1504) = v27;
    *v27 = v0;
    v27[1] = sub_1001AC3AC;
    v28 = *(v0 + 424);
    v29 = *(v0 + 209);

    return sub_1001AEEC0(v29);
  }

  else
  {
    *(v0 + 1152) = v25;
    v31 = *(v0 + 1136);
    if (v25 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = *(v0 + 1112);
      v33 = *(v0 + 1040);
      v34 = *(v0 + 928);
      v35 = v31 + ((*(v0 + 212) + 32) & ~*(v0 + 212));
      v36 = *(*(v0 + 936) + 72);
      *(v0 + 1160) = v36;
      sub_1001BB2E0(v35 + v36 * v25, v33, type metadata accessor for MemberSharingCircle);
      *(v0 + 1548) = *(v34 + 24);
      v22 = sub_1001A7768;
      v23 = v32;
      v24 = 0;
    }

    return _swift_task_switch(v22, v23, v24);
  }
}

uint64_t sub_1001AD894(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MemberSharingCircle();
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v10 = type metadata accessor for PeerCommunicationIdentifier();
  v3[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v12 = type metadata accessor for MemberPeerTrust();
  v3[20] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001ADB00, v2, 0);
}

uint64_t sub_1001ADB00()
{
  v1 = v0[7];
  v0[2] = &_swiftEmptySetSingleton;
  v2 = *(v1 + 136);
  v0[32] = v2;
  return _swift_task_switch(sub_1001ADB30, v2, 0);
}

uint64_t sub_1001ADB30()
{
  v1 = *(v0 + 256);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1001ADC10;
  v5 = *(v0 + 256);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1001ADC10()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_1001ADD28, v2, 0);
}

uint64_t sub_1001ADD28()
{
  v1 = v0[7];
  v0[34] = v0[3];
  return _swift_task_switch(sub_1001ADD4C, v1, 0);
}

uint64_t sub_1001ADD4C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 28);
  *(v0 + 336) = v4;
  v5 = *(v2 + 24);
  *(v0 + 340) = v5;
  v6 = getuid();
  sub_1000294F0(v6);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_1001ADE1C;
  v8 = *(v0 + 272);
  v9 = *(v0 + 248);

  return sub_1012D866C(v3 + v4, v3 + v5, v9);
}

uint64_t sub_1001ADE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *(*v5 + 280);
  v10 = *v5;
  v8[36] = v4;

  v11 = v8[31];
  v12 = v8[24];
  v13 = v8[23];
  v14 = v8[7];
  if (v4)
  {

    (*(v12 + 8))(v11, v13);
    v15 = sub_1001AEAC0;
  }

  else
  {
    v8[37] = a2;
    v8[38] = a1;
    v8[39] = a4;
    v16 = *(v12 + 8);
    v8[40] = v16;
    v8[41] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v11, v13);
    v15 = sub_1001ADFFC;
  }

  return _swift_task_switch(v15, v14, 0);
}

void sub_1001ADFFC()
{
  v135 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 240);
  v5 = *(v0 + 192);
  v131 = *(v0 + 184);
  v6 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);

  UUID.init()();
  swift_storeEnumTagMultiPayload();
  if (v3)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  sub_1005CAD68(v134);
  v13 = v134[0];
  v12 = v134[1];
  *v6 = xmmword_10138C660;
  v128 = v7[5];
  (*(v5 + 32))(&v6[v128], v4, v131);
  v14 = v7;
  v6[v7[6]] = 1;
  sub_1001BAAE8(v8, &v6[v7[7]], type metadata accessor for PeerCommunicationIdentifier);
  v15 = &v6[v7[8]];
  *v15 = v10;
  *(v15 + 1) = v11;
  v16 = &v6[v7[9]];
  *v16 = v13;
  *(v16 + 1) = v12;
  v17 = String._bridgeToObjectiveC()();
  v18 = objc_opt_self();
  v19 = [v18 handleWithString:v17];

  if (v19)
  {
    v132 = v19;
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 96);
    v23 = *(v0 + 40);
    type metadata accessor for ImportedShareUseCase();
    v110 = v23 + *(type metadata accessor for SharedBeaconRecord(0) + 72);
    sub_1001E8554();
    v24 = *(v21 + 48);
    v109 = v18;
    if (v24(v22, 1, v20) == 1)
    {
      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      static Date.distantFuture.getter();
      if (v24(v26, 1, v25) != 1)
      {
        sub_10000B3A8(*(v0 + 96), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      (*(*(v0 + 112) + 32))(*(v0 + 136), *(v0 + 96), *(v0 + 104));
    }

    v40 = *(v0 + 336);
    v41 = *(v0 + 224);
    v111 = *(v0 + 340);
    v114 = *(v0 + 216);
    v117 = *(v0 + 208);
    v42 = *(v0 + 184);
    v43 = *(v0 + 128);
    v122 = v43;
    v125 = *(v0 + 288);
    v44 = *(v0 + 88);
    v45 = *(v0 + 48);
    v46 = *(*(v0 + 192) + 16);
    v46(*(v0 + 232), v45 + v40, v42);
    sub_1001BB2E0(v45, v44, type metadata accessor for MemberSharingCircle);
    v46(v41, v45 + v111, v42);
    v46(v114, v45 + v40, v42);
    v46(v117, &v6[v128], v42);
    v47 = v132;
    v48.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v49.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v50.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v51.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v52 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v44, v122);
    if (v125)
    {

      objc_autoreleasePoolPop(v52);
    }

    else
    {
      v108 = *(v0 + 328);
      v112 = *(v0 + 320);
      v96 = *(v0 + 340);
      v93 = *(v0 + 336);
      v98 = *(v0 + 272);
      v100 = *(v0 + 248);
      v101 = *(v0 + 240);
      v120 = *(v0 + 232);
      v123 = *(v0 + 224);
      v126 = *(v0 + 208);
      v129 = *(v0 + 216);
      v115 = *(v0 + 200);
      v107 = *(v0 + 184);
      v99 = *(v0 + 176);
      v102 = *(v0 + 168);
      v103 = *(v0 + 152);
      v53 = *(v0 + 128);
      v118 = *(v0 + 136);
      isa = v49.super.isa;
      v91 = v48.super.isa;
      v55 = *(v0 + 112);
      v54 = *(v0 + 120);
      v56 = *(v0 + 104);
      v104 = *(v0 + 96);
      v133 = *(v0 + 88);
      v105 = *(v0 + 80);
      v106 = *(v0 + 72);
      v92 = *(v0 + 48);
      v94 = objc_allocWithZone(SPBeaconShare);
      objc_autoreleasePoolPop(v52);
      v57 = Date._bridgeToObjectiveC()().super.isa;
      v58 = *(v55 + 8);
      v97 = v56;
      v58(v53, v56);
      static Date.distantFuture.getter();
      v59 = Date._bridgeToObjectiveC()().super.isa;
      v58(v54, v56);
      LOBYTE(v89) = 0;
      v95 = [v94 initWithIdentifier:v91 beaconIdentifier:isa sharingCircleIdentifier:v50.super.isa peerTrustIdentifier:v51.super.isa owner:v47 sharee:v47 state:5 creationDate:v57 expirationDate:v59 visitorCount:0 delegationStatus:v89];

      v112(v126, v107);
      v112(v129, v107);
      v112(v123, v107);
      v112(v120, v107);
      sub_1001BA80C(v133, type metadata accessor for MemberSharingCircle);
      UUID.init()();
      v60 = v47;
      v61 = String._bridgeToObjectiveC()();
      v62 = [v109 handleWithRecipient:v61];

      v63 = objc_allocWithZone(SPBeaconShare);
      v64 = UUID._bridgeToObjectiveC()().super.isa;
      v65 = UUID._bridgeToObjectiveC()().super.isa;
      v66 = UUID._bridgeToObjectiveC()().super.isa;
      v67 = UUID._bridgeToObjectiveC()().super.isa;
      v68 = Date._bridgeToObjectiveC()().super.isa;
      v69 = Date._bridgeToObjectiveC()().super.isa;
      v70 = [v63 initWithIdentifier:v64 beaconIdentifier:v65 sharingCircleIdentifier:v66 peerTrustIdentifier:v67 owner:v60 sharee:v62 state:5 creationDate:v68 expirationDate:v69];

      v112(v115, v107);
      v71 = v95;
      sub_100DEA678(v134, v71);

      v72 = v70;
      sub_100DEA678(v134, v72);

      v58(v118, v97);
      sub_1001BA80C(v99, type metadata accessor for MemberPeerTrust);
      v73 = *(v0 + 16);

      v74 = *(v0 + 8);

      v74(v73);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177AE40);
    sub_1001BB2E0(v28, v27, type metadata accessor for MemberPeerTrust);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 168);
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v134[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = (v33 + v14[8]);
      v37 = *v36;
      v38 = v36[1];

      sub_1001BA80C(v33, type metadata accessor for MemberPeerTrust);
      v39 = sub_1000136BC(v37, v38, v134);

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "SPHandle failed for %{private,mask.hash}s", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      sub_1001BA80C(v33, type metadata accessor for MemberPeerTrust);
    }

    v75 = *(v0 + 272);
    v76 = *(v0 + 176);
    sub_1001BAB50();
    swift_allocError();
    *v77 = 12;
    swift_willThrow();

    sub_1001BA80C(v76, type metadata accessor for MemberPeerTrust);
    v79 = *(v0 + 240);
    v78 = *(v0 + 248);
    v81 = *(v0 + 224);
    v80 = *(v0 + 232);
    v83 = *(v0 + 208);
    v82 = *(v0 + 216);
    v84 = *(v0 + 200);
    v86 = *(v0 + 168);
    v85 = *(v0 + 176);
    v87 = *(v0 + 152);
    v113 = *(v0 + 136);
    v116 = *(v0 + 128);
    v119 = *(v0 + 120);
    v121 = *(v0 + 96);
    v124 = *(v0 + 88);
    v127 = *(v0 + 80);
    v130 = *(v0 + 72);

    v88 = *(v0 + 8);

    v88();
  }
}

uint64_t sub_1001AEAC0()
{
  v46 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE40);
  sub_1001BB2E0(v3, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v3, v1, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[23];
    v8 = v0[10];
    v43 = v0[9];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v10 = 141558787;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = *(v9 + 28);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v8, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, v45);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2081;
    v16 = *(v9 + 24);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v43, type metadata accessor for MemberSharingCircle);
    v20 = sub_1000136BC(v17, v19, v45);

    *(v10 + 34) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get displayIdentifier for share id %{private,mask.hash}s,\nbeacon id %{private,mask.hash}s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[9];
    v21 = v0[10];

    sub_1001BA80C(v22, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v21, type metadata accessor for MemberSharingCircle);
  }

  v23 = v0[34];
  sub_1001BAB50();
  swift_allocError();
  *v24 = 12;
  swift_willThrow();

  v26 = v0[30];
  v25 = v0[31];
  v28 = v0[28];
  v27 = v0[29];
  v30 = v0[26];
  v29 = v0[27];
  v31 = v0[25];
  v33 = v0[21];
  v32 = v0[22];
  v34 = v0[19];
  v37 = v0[17];
  v38 = v0[16];
  v39 = v0[15];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[10];
  v44 = v0[9];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001AEEC0(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 73) = a1;
  v3 = type metadata accessor for Date();
  *(v2 + 128) = v3;
  v4 = *(v3 - 8);
  *(v2 + 136) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v2 + 160) = v6;
  v7 = *(v6 - 8);
  *(v2 + 168) = v7;
  *(v2 + 176) = *(v7 + 64);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *(v2 + 224) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v10 = type metadata accessor for OwnerPeerTrust();
  *(v2 + 240) = v10;
  v11 = *(v10 - 8);
  *(v2 + 248) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  *(v2 + 280) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v15 = type metadata accessor for OwnerSharingCircle();
  *(v2 + 312) = v15;
  v16 = *(v15 - 8);
  *(v2 + 320) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();

  return _swift_task_switch(sub_1001AF1A8, v1, 0);
}

uint64_t sub_1001AF1A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 73);
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = &_swiftEmptySetSingleton;
  v3 = *(v1 + 136);
  *(v0 + 360) = v3;
  if (v2 == 1)
  {
    v4 = sub_1001AF1F4;
  }

  else
  {
    v4 = sub_1001AFB70;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001AF1F4()
{
  v1 = *(v0 + 360);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1001AF2E0;
  v5 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_1001AF2E0()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_1001AF3F8, v2, 0);
}

uint64_t sub_1001AF3F8()
{
  v1 = v0[15];
  v0[47] = v0[14];
  return _swift_task_switch(sub_1001AF418, v1, 0);
}

void sub_1001AF418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = v3;
  v4 = *(v3 + 376);
  *(v3 + 424) = v4;
  v5 = *(v4 + 16);
  *(v3 + 432) = v5;
  if (v5)
  {
    *(v3 + 76) = *(*(v3 + 320) + 80);
    *(v3 + 440) = 0;
    if (*(v4 + 16))
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v3 + 352);
        v8 = *(v3 + 312);
        sub_1001BB2E0(v4 + ((*(v3 + 76) + 32) & ~*(v3 + 76)) + *(*(v3 + 320) + 72) * v6, v7, type metadata accessor for OwnerSharingCircle);
        v9 = *(v7 + *(v8 + 32));
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = *(v3 + 168);
          v12 = sub_1003A85FC(*(v9 + 16), 0);
          v13 = sub_1003CC2CC(v3 + 16, v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10, v9);
          v14 = *(v3 + 16);
          v15 = *(v3 + 24);
          v16 = *(v3 + 32);
          v17 = *(v3 + 40);
          v18 = *(v3 + 48);

          v4 = sub_1000128F8();
          if (v13 != v10)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v12 = _swiftEmptyArrayStorage;
        }

        v19 = *(v3 + 352);
        v20 = swift_task_alloc();
        *(v20 + 16) = v19;
        v21 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v20, v12);
        *(v3 + 448) = v21;
        *(v3 + 456) = 0;

        v22 = *(v21 + 32);
        *(v3 + 74) = v22;
        v23 = -1 << v22;
        v24 = -v23 < 64 ? ~(-1 << -v23) : -1;
        v25 = v24 & *(v21 + 64);
        if (v25)
        {
          break;
        }

        v26 = 0;
        v27 = ((63 - v23) >> 6) - 1;
        v28 = *(v3 + 448);
        while (v27 != v26)
        {
          v29 = v26 + 1;
          v25 = *(v28 + 8 * v26++ + 72);
          if (v25)
          {
            goto LABEL_23;
          }
        }

        v30 = *(v3 + 352);
        v31 = *(v3 + 312);
        v33 = *(v3 + 200);
        v32 = *(v3 + 208);
        v34 = *(v3 + 192);
        v106 = *(v3 + 184);
        v35 = *(v3 + 160);
        v36 = *(v3 + 168);

        v37 = *(v31 + 20);
        v38 = *(v36 + 16);
        v38(v32, v30 + v37, v35);
        v38(v33, v30 + *(v31 + 24), v35);
        v38(v34, v30 + v37, v35);
        UUID.init()();
        if (qword_101694558 != -1)
        {
          swift_once();
        }

        v39 = *(v3 + 456);
        v40 = *(v3 + 352);
        v41 = *(v3 + 152);
        v42 = qword_10177A8F0;
        v43 = qword_10177A8F8;
        v44 = byte_10177A8E8;
        v45 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
        v46 = sub_100EB3708(v44, v42, v43);
        v47 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v40, v41);
        if (v39)
        {

          objc_autoreleasePoolPop(v47);
          return;
        }

        v104 = *(v3 + 352);
        v107 = *(v3 + 432);
        v85 = v46;
        v96 = *(v3 + 200);
        v98 = *(v3 + 208);
        v88 = *(v3 + 184);
        v90 = *(v3 + 192);
        v48 = *(v3 + 168);
        v100 = *(v3 + 160);
        v49 = *(v3 + 144);
        v84 = *(v3 + 152);
        v102 = *(v3 + 440) + 1;
        v92 = *(v3 + 136);
        v94 = *(v3 + 128);
        objc_autoreleasePoolPop(v47);
        static Date.distantFuture.getter();
        v86 = objc_allocWithZone(SPBeaconShare);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v50 = UUID._bridgeToObjectiveC()().super.isa;
        v51 = UUID._bridgeToObjectiveC()().super.isa;
        v52 = v45;
        v53 = UUID._bridgeToObjectiveC()().super.isa;
        v54 = Date._bridgeToObjectiveC()().super.isa;
        v55 = Date._bridgeToObjectiveC()().super.isa;
        v87 = [v86 initWithIdentifier:isa beaconIdentifier:v50 sharingCircleIdentifier:v51 peerTrustIdentifier:v53 owner:v52 sharee:v85 state:5 creationDate:v54 expirationDate:v55];

        v56 = *(v92 + 8);
        v56(v49, v94);
        v56(v84, v94);
        v57 = *(v48 + 8);
        v57(v88, v100);
        v57(v90, v100);
        v57(v96, v100);
        v57(v98, v100);
        sub_100DEA678(v110, v87);

        sub_1001BA80C(v104, type metadata accessor for OwnerSharingCircle);
        if (v102 == v107)
        {
          v71 = *(v3 + 424);
          goto LABEL_30;
        }

        v6 = *(v3 + 440) + 1;
        *(v3 + 440) = v6;
        v4 = *(v3 + 424);
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_33;
        }
      }

      v29 = 0;
      v28 = *(v3 + 448);
LABEL_23:
      *(v3 + 464) = v25;
      *(v3 + 472) = v29;
      v108 = *(v3 + 360);
      v59 = *(v3 + 296);
      v58 = *(v3 + 304);
      v60 = *(v3 + 280);
      v61 = *(v3 + 160);
      v62 = *(v3 + 168);
      v63 = __clz(__rbit64(v25)) | (v29 << 6);
      v64 = *(v28 + 48);
      v65 = v62[9] * v63;
      v66 = v62[2];
      *(v3 + 480) = v66;
      *(v3 + 488) = (v62 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v66(v58, v64 + v65, v61);
      v67 = *(v28 + 56);
      v68 = *(v60 + 48);
      v66(v58 + v68, v67 + v65, v61);
      v69 = *(v60 + 48);
      *(v3 + 528) = v69;
      v70 = v62[4];
      *(v3 + 496) = v70;
      *(v3 + 504) = (v62 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v70(v59, v58, v61);
      v70(v59 + v69, v58 + v68, v61);
      v4 = sub_1001B0764;
      a2 = v108;
      a3 = 0;
    }

    else
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_30:

    v73 = *(v3 + 344);
    v72 = *(v3 + 352);
    v74 = *(v3 + 328);
    v75 = *(v3 + 336);
    v77 = *(v3 + 296);
    v76 = *(v3 + 304);
    v78 = *(v3 + 288);
    v80 = *(v3 + 264);
    v79 = *(v3 + 272);
    v81 = *(v3 + 256);
    v89 = *(v3 + 232);
    v91 = *(v3 + 216);
    v93 = *(v3 + 208);
    v95 = *(v3 + 200);
    v97 = *(v3 + 192);
    v99 = *(v3 + 184);
    v101 = *(v3 + 152);
    v109 = *(v3 + 80);
    v103 = *(v3 + 144);
    v105 = *(v3 + 88);

    v82 = *(v3 + 8);

    v82(v109, v105);
  }
}

uint64_t sub_1001AFB70()
{
  v1 = *(v0 + 360);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_1001AFC5C;
  v5 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_1001AFC5C()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return _swift_task_switch(sub_1001AFD74, v2, 0);
}

uint64_t sub_1001AFD74()
{
  v1 = v0[15];
  v0[49] = v0[12];
  return _swift_task_switch(sub_1001AFD98, v1, 0);
}

uint64_t sub_1001AFD98()
{
  v1 = async function pointer to Array<A>.asyncFlatMap<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[50] = v2;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v5 = sub_1000041A4(&qword_101698C88, &unk_101698BD0, &unk_10138C210);
  *v2 = v0;
  v2[1] = sub_1001AFEB8;
  v6 = v0[49];
  v7 = v0[15];

  return Array<A>.asyncFlatMap<A>(_:)(&unk_1013907C8, v7, v6, v3, v4, v5);
}

uint64_t sub_1001AFEB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  *(*v2 + 408) = v1;

  if (v1)
  {
  }

  else
  {
    v8 = v4[49];
    v9 = v4[15];

    v4[52] = a1;

    return _swift_task_switch(sub_1001B0004, v9, 0);
  }
}

void sub_1001B0004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v113 = v3;
  v5 = *(v3 + 408);
  v4 = *(v3 + 416);
  *(v3 + 424) = v4;
  v6 = *(v4 + 16);
  *(v3 + 432) = v6;
  if (v6)
  {
    *(v3 + 76) = *(*(v3 + 320) + 80);
    *(v3 + 440) = 0;
    if (*(v4 + 16))
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + 352);
        v9 = *(v3 + 312);
        sub_1001BB2E0(v4 + ((*(v3 + 76) + 32) & ~*(v3 + 76)) + *(*(v3 + 320) + 72) * v7, v8, type metadata accessor for OwnerSharingCircle);
        v10 = *(v8 + *(v9 + 32));
        v11 = *(v10 + 16);
        if (v11)
        {
          v107 = v5;
          v12 = *(v3 + 168);
          v13 = sub_1003A85FC(v11, 0);
          v14 = sub_1003CC2CC(v3 + 16, v13 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11, v10);
          v15 = *(v3 + 16);
          v16 = *(v3 + 24);
          v17 = *(v3 + 32);
          v18 = *(v3 + 40);
          v19 = *(v3 + 48);

          v4 = sub_1000128F8();
          if (v14 != v11)
          {
            goto LABEL_34;
          }

          v5 = v107;
        }

        else
        {
          v13 = _swiftEmptyArrayStorage;
        }

        v20 = *(v3 + 352);
        v21 = swift_task_alloc();
        *(v21 + 16) = v20;
        v22 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v21, v13);
        *(v3 + 448) = v22;
        *(v3 + 456) = v5;

        v23 = *(v22 + 32);
        *(v3 + 74) = v23;
        v24 = -1 << v23;
        v25 = -v24 < 64 ? ~(-1 << -v24) : -1;
        v26 = v25 & *(v22 + 64);
        if (v26)
        {
          break;
        }

        v27 = 0;
        v28 = ((63 - v24) >> 6) - 1;
        v29 = *(v3 + 448);
        while (v28 != v27)
        {
          v30 = v27 + 1;
          v26 = *(v29 + 8 * v27++ + 72);
          if (v26)
          {
            goto LABEL_23;
          }
        }

        v31 = *(v3 + 352);
        v32 = *(v3 + 312);
        v34 = *(v3 + 200);
        v33 = *(v3 + 208);
        v35 = *(v3 + 192);
        v108 = *(v3 + 184);
        v36 = *(v3 + 160);
        v37 = *(v3 + 168);

        v38 = *(v32 + 20);
        v39 = *(v37 + 16);
        v39(v33, v31 + v38, v36);
        v39(v34, v31 + *(v32 + 24), v36);
        v39(v35, v31 + v38, v36);
        UUID.init()();
        if (qword_101694558 != -1)
        {
          swift_once();
        }

        v40 = *(v3 + 456);
        v41 = *(v3 + 352);
        v42 = *(v3 + 152);
        v43 = qword_10177A8F0;
        v44 = qword_10177A8F8;
        v45 = byte_10177A8E8;
        v46 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
        v47 = sub_100EB3708(v45, v43, v44);
        v48 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v41, v42);
        if (v40)
        {

          objc_autoreleasePoolPop(v48);
          return;
        }

        v105 = *(v3 + 352);
        v109 = *(v3 + 432);
        v86 = v47;
        v97 = *(v3 + 200);
        v99 = *(v3 + 208);
        v89 = *(v3 + 184);
        v91 = *(v3 + 192);
        v49 = *(v3 + 168);
        v101 = *(v3 + 160);
        v50 = *(v3 + 144);
        v85 = *(v3 + 152);
        v103 = *(v3 + 440) + 1;
        v93 = *(v3 + 136);
        v95 = *(v3 + 128);
        objc_autoreleasePoolPop(v48);
        static Date.distantFuture.getter();
        v87 = objc_allocWithZone(SPBeaconShare);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v51 = UUID._bridgeToObjectiveC()().super.isa;
        v52 = UUID._bridgeToObjectiveC()().super.isa;
        v53 = v46;
        v54 = UUID._bridgeToObjectiveC()().super.isa;
        v55 = Date._bridgeToObjectiveC()().super.isa;
        v56 = Date._bridgeToObjectiveC()().super.isa;
        v88 = [v87 initWithIdentifier:isa beaconIdentifier:v51 sharingCircleIdentifier:v52 peerTrustIdentifier:v54 owner:v53 sharee:v86 state:5 creationDate:v55 expirationDate:v56];

        v57 = *(v93 + 8);
        v57(v50, v95);
        v57(v85, v95);
        v58 = *(v49 + 8);
        v58(v89, v101);
        v58(v91, v101);
        v58(v97, v101);
        v58(v99, v101);
        sub_100DEA678(v112, v88);

        sub_1001BA80C(v105, type metadata accessor for OwnerSharingCircle);
        if (v103 == v109)
        {
          v72 = *(v3 + 424);
          goto LABEL_30;
        }

        v5 = 0;
        v7 = *(v3 + 440) + 1;
        *(v3 + 440) = v7;
        v4 = *(v3 + 424);
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_33;
        }
      }

      v30 = 0;
      v29 = *(v3 + 448);
LABEL_23:
      *(v3 + 464) = v26;
      *(v3 + 472) = v30;
      v110 = *(v3 + 360);
      v60 = *(v3 + 296);
      v59 = *(v3 + 304);
      v61 = *(v3 + 280);
      v62 = *(v3 + 160);
      v63 = *(v3 + 168);
      v64 = __clz(__rbit64(v26)) | (v30 << 6);
      v65 = *(v29 + 48);
      v66 = v63[9] * v64;
      v67 = v63[2];
      *(v3 + 480) = v67;
      *(v3 + 488) = (v63 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v67(v59, v65 + v66, v62);
      v68 = *(v29 + 56);
      v69 = *(v61 + 48);
      v67(v59 + v69, v68 + v66, v62);
      v70 = *(v61 + 48);
      *(v3 + 528) = v70;
      v71 = v63[4];
      *(v3 + 496) = v71;
      *(v3 + 504) = (v63 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v71(v60, v59, v62);
      v71(v60 + v70, v59 + v69, v62);
      v4 = sub_1001B0764;
      a2 = v110;
      a3 = 0;
    }

    else
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    _swift_task_switch(v4, a2, a3);
  }

  else
  {
LABEL_30:

    v74 = *(v3 + 344);
    v73 = *(v3 + 352);
    v75 = *(v3 + 328);
    v76 = *(v3 + 336);
    v78 = *(v3 + 296);
    v77 = *(v3 + 304);
    v79 = *(v3 + 288);
    v81 = *(v3 + 264);
    v80 = *(v3 + 272);
    v82 = *(v3 + 256);
    v90 = *(v3 + 232);
    v92 = *(v3 + 216);
    v94 = *(v3 + 208);
    v96 = *(v3 + 200);
    v98 = *(v3 + 192);
    v100 = *(v3 + 184);
    v102 = *(v3 + 152);
    v111 = *(v3 + 80);
    v104 = *(v3 + 144);
    v106 = *(v3 + 88);

    v83 = *(v3 + 8);

    v83(v111, v106);
  }
}

uint64_t sub_1001B0764()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 360);
  v5 = *(v0 + 216);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  (*(v0 + 480))(v5, *(v0 + 296) + *(v0 + 528), v8);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v0 + 512) = v10;
  *(v10 + 16) = v4;
  v2(v10 + v9, v5, v8);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 520) = v12;
  *v12 = v0;
  v12[1] = sub_1001B08BC;
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAD28, v10, v14);
}

uint64_t sub_1001B08BC()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_1001B09E8, v3, 0);
}

void sub_1001B09E8()
{
  v180 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  if ((*(*(v0 + 248) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694480 != -1)
    {
LABEL_51:
      swift_once();
    }

    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_1001BB2E0(v3, v4, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 328);
    if (v8)
    {
      v10 = *(v0 + 312);
      v11 = *(v0 + 296);
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v179[0] = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = *(v10 + 20);
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
      v19 = sub_1000136BC(v16, v18, v179);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing ownerPeerTrust for owner circle: %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);

      v20 = v11;
    }

    else
    {
      v36 = *(v0 + 296);

      sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
      v20 = v36;
    }

    sub_10000B3A8(v20, &qword_101698C18, &qword_101390740);
  }

  else
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 488);
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);
    v25 = *(v0 + 160);
    sub_1001BAAE8(v2, v23, type metadata accessor for OwnerPeerTrust);
    v26 = (v23 + v1[8]);
    v27 = *v26;
    v28 = v26[1];
    v29 = sub_100A4F304(*v26, v28);
    v172 = v30;
    v21(&v24[v1[5]], v23 + v1[5], v25);
    LOBYTE(v21) = *(v23 + v1[6]);
    sub_1001BB2E0(v23 + v1[7], &v24[v1[7]], type metadata accessor for PeerCommunicationIdentifier);
    v31 = (v23 + v1[9]);
    v33 = *v31;
    v32 = v31[1];
    LOBYTE(v31) = *(v23 + v1[10]);
    *v24 = xmmword_10138C660;
    v24[v1[6]] = v21;
    v34 = &v24[v1[8]];
    *v34 = v29;
    v34[1] = v172;
    v35 = &v24[v1[9]];
    *v35 = v33;
    v35[1] = v32;
    v24[v1[10]] = v31;
    if (v29 == v27 && v172 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_100017D5C(v33, v32);
    }

    else
    {
      sub_100017D5C(v33, v32);

      sub_100DEA8E0(v0 + 56, v29, v172, 0);
      v37 = *(v0 + 64);
    }

    v38 = *(v0 + 344);
    v39 = *(v0 + 352);
    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 280);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    v45 = *(v0 + 168);
    v173 = *(v0 + 160);
    sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
    sub_1000D2A70(v40, v41, &qword_101698C18, &qword_101390740);
    v46 = *(v42 + 48);
    sub_1001BB2E0(v39, v38, type metadata accessor for OwnerSharingCircle);
    sub_1001BB2E0(v43, v44, type metadata accessor for OwnerPeerTrust);
    v47 = sub_1001B7644(v41, v38, v44);
    (*(v45 + 8))(v41 + v46, v173);
    if (v47)
    {
      v48 = *(v0 + 296);
      v50 = *(v0 + 264);
      v49 = *(v0 + 272);
      sub_100DEA678(v179, v47);

      sub_10000B3A8(v48, &qword_101698C18, &qword_101390740);
      sub_1001BA80C(v50, type metadata accessor for OwnerPeerTrust);
      v51 = v49;
    }

    else
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 352);
      v53 = *(v0 + 336);
      v54 = type metadata accessor for Logger();
      sub_1000076D4(v54, qword_10177A560);
      sub_1001BB2E0(v52, v53, type metadata accessor for OwnerSharingCircle);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 336);
      if (v57)
      {
        v59 = *(v0 + 312);
        v60 = *(v0 + 296);
        v61 = *(v0 + 264);
        v174 = *(v0 + 272);
        v62 = *(v0 + 160);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v179[0] = v64;
        *v63 = 141558275;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2081;
        v65 = *(v59 + 20);
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        sub_1001BA80C(v58, type metadata accessor for OwnerSharingCircle);
        v69 = sub_1000136BC(v66, v68, v179);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v55, v56, "Cannot create client beacon share for owner circle: %{private,mask.hash}s.", v63, 0x16u);
        sub_100007BAC(v64);

        sub_10000B3A8(v60, &qword_101698C18, &qword_101390740);
        sub_1001BA80C(v61, type metadata accessor for OwnerPeerTrust);
        v51 = v174;
      }

      else
      {
        v70 = *(v0 + 296);
        v72 = *(v0 + 264);
        v71 = *(v0 + 272);

        sub_1001BA80C(v58, type metadata accessor for OwnerSharingCircle);
        sub_10000B3A8(v70, &qword_101698C18, &qword_101390740);
        sub_1001BA80C(v72, type metadata accessor for OwnerPeerTrust);
        v51 = v71;
      }
    }

    sub_1001BA80C(v51, type metadata accessor for OwnerPeerTrust);
  }

  v73 = *(v0 + 472);
  v74 = (*(v0 + 464) - 1) & *(v0 + 464);
  if (v74)
  {
LABEL_21:
    *(v0 + 464) = v74;
    *(v0 + 472) = v73;
    v75 = *(v0 + 448);
    v175 = *(v0 + 360);
    v77 = *(v0 + 296);
    v76 = *(v0 + 304);
    v78 = *(v0 + 280);
    v79 = *(v0 + 160);
    v80 = *(v0 + 168);
    v81 = *(v75 + 48);
    v82 = v80[9] * (__clz(__rbit64(v74)) | (v73 << 6));
    v83 = v80[2];
    *(v0 + 480) = v83;
    *(v0 + 488) = (v80 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v83(v76, v81 + v82, v79);
    v84 = *(v75 + 56);
    v85 = *(v78 + 48);
    v83(v76 + v85, v84 + v82, v79);
    v86 = *(v78 + 48);
    *(v0 + 528) = v86;
    v87 = v80[4];
    *(v0 + 496) = v87;
    *(v0 + 504) = (v80 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v87(v77, v76, v79);
    v87(v77 + v86, v76 + v85, v79);

    _swift_task_switch(sub_1001B0764, v175, 0);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        if (__OFADD__(v73++, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v73 >= (((1 << *(v0 + 74)) + 63) >> 6))
        {
          break;
        }

        v74 = *(*(v0 + 448) + 8 * v73 + 64);
        if (v74)
        {
          goto LABEL_21;
        }
      }

      v89 = *(v0 + 352);
      v90 = *(v0 + 312);
      v91 = *(v0 + 200);
      v92 = *(v0 + 208);
      v93 = *(v0 + 192);
      v176 = *(v0 + 184);
      v94 = *(v0 + 160);
      v95 = *(v0 + 168);

      v96 = *(v90 + 20);
      v97 = *(v95 + 16);
      v97(v92, v89 + v96, v94);
      v97(v91, v89 + *(v90 + 24), v94);
      v97(v93, v89 + v96, v94);
      UUID.init()();
      if (qword_101694558 != -1)
      {
        swift_once();
      }

      v98 = *(v0 + 456);
      v99 = *(v0 + 352);
      v100 = *(v0 + 152);
      v101 = qword_10177A8F0;
      v102 = qword_10177A8F8;
      v103 = byte_10177A8E8;
      v104 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
      v105 = sub_100EB3708(v103, v101, v102);
      v106 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v99, v100);
      if (v98)
      {
        break;
      }

      v170 = *(v0 + 352);
      v177 = *(v0 + 432);
      v151 = v105;
      v162 = *(v0 + 200);
      v164 = *(v0 + 208);
      v154 = *(v0 + 184);
      v156 = *(v0 + 192);
      v107 = *(v0 + 168);
      v166 = *(v0 + 160);
      v108 = *(v0 + 144);
      v150 = *(v0 + 152);
      v168 = *(v0 + 440) + 1;
      v158 = *(v0 + 136);
      v160 = *(v0 + 128);
      objc_autoreleasePoolPop(v106);
      static Date.distantFuture.getter();
      v152 = objc_allocWithZone(SPBeaconShare);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v109 = UUID._bridgeToObjectiveC()().super.isa;
      v110 = UUID._bridgeToObjectiveC()().super.isa;
      v111 = v104;
      v112 = UUID._bridgeToObjectiveC()().super.isa;
      v113 = Date._bridgeToObjectiveC()().super.isa;
      v114 = Date._bridgeToObjectiveC()().super.isa;
      v153 = [v152 initWithIdentifier:isa beaconIdentifier:v109 sharingCircleIdentifier:v110 peerTrustIdentifier:v112 owner:v111 sharee:v151 state:5 creationDate:v113 expirationDate:v114];

      v115 = *(v158 + 8);
      v115(v108, v160);
      v115(v150, v160);
      v116 = *(v107 + 8);
      v116(v154, v166);
      v116(v156, v166);
      v116(v162, v166);
      v116(v164, v166);
      sub_100DEA678(v179, v153);

      sub_1001BA80C(v170, type metadata accessor for OwnerSharingCircle);
      if (v168 == v177)
      {
        v137 = *(v0 + 424);

        v139 = *(v0 + 344);
        v138 = *(v0 + 352);
        v140 = *(v0 + 328);
        v141 = *(v0 + 336);
        v143 = *(v0 + 296);
        v142 = *(v0 + 304);
        v144 = *(v0 + 288);
        v146 = *(v0 + 264);
        v145 = *(v0 + 272);
        v147 = *(v0 + 256);
        v155 = *(v0 + 232);
        v157 = *(v0 + 216);
        v159 = *(v0 + 208);
        v161 = *(v0 + 200);
        v163 = *(v0 + 192);
        v165 = *(v0 + 184);
        v167 = *(v0 + 152);
        v178 = *(v0 + 80);
        v169 = *(v0 + 144);
        v171 = *(v0 + 88);

        v148 = *(v0 + 8);

        v148(v178, v171);
        return;
      }

      v117 = *(v0 + 440) + 1;
      *(v0 + 440) = v117;
      v118 = *(v0 + 424);
      if (v117 >= *(v118 + 16))
      {
        goto LABEL_49;
      }

      v119 = *(v0 + 352);
      v120 = *(v0 + 312);
      sub_1001BB2E0(v118 + ((*(v0 + 76) + 32) & ~*(v0 + 76)) + *(*(v0 + 320) + 72) * v117, v119, type metadata accessor for OwnerSharingCircle);
      v121 = *(v119 + *(v120 + 32));
      v122 = *(v121 + 16);
      if (v122)
      {
        v123 = *(v0 + 168);
        v124 = sub_1003A85FC(*(v121 + 16), 0);
        v125 = sub_1003CC2CC(v0 + 16, v124 + ((*(v123 + 80) + 32) & ~*(v123 + 80)), v122, v121);
        v126 = *(v0 + 16);
        v127 = *(v0 + 24);
        v128 = *(v0 + 32);
        v129 = *(v0 + 40);
        v130 = *(v0 + 48);

        sub_1000128F8();
        if (v125 != v122)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v124 = _swiftEmptyArrayStorage;
      }

      v131 = *(v0 + 352);
      v132 = swift_task_alloc();
      v73 = 0;
      *(v132 + 16) = v131;
      v133 = sub_10016610C(_swiftEmptyDictionarySingleton, sub_1001BACF8, v132, v124);
      *(v0 + 448) = v133;
      *(v0 + 456) = 0;

      v134 = *(v133 + 32);
      *(v0 + 74) = v134;
      v135 = 1 << v134;
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      else
      {
        v136 = -1;
      }

      v74 = v136 & *(v133 + 64);
      if (v74)
      {
        goto LABEL_21;
      }
    }

    objc_autoreleasePoolPop(v106);
  }
}

uint64_t sub_1001B185C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 564) = a1;
  v5 = type metadata accessor for DelegatedShareMeta();
  *(v4 + 104) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Component();
  *(v4 + 152) = v10;
  v11 = *(v10 - 8);
  *(v4 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v13 = type metadata accessor for Calendar();
  *(v4 + 176) = v13;
  v14 = *(v13 - 8);
  *(v4 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v4 + 208) = v17;
  v18 = *(v17 - 8);
  *(v4 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  v20 = type metadata accessor for OwnerSharingCircle();
  *(v4 + 272) = v20;
  v21 = *(v20 - 8);
  *(v4 + 280) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  v23 = type metadata accessor for Date();
  *(v4 + 304) = v23;
  v24 = *(v23 - 8);
  *(v4 + 312) = v24;
  v25 = *(v24 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v26 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  *(v4 + 360) = v26;
  *(v4 + 368) = *(v26 + 64);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();

  return _swift_task_switch(sub_1001B1C54, v3, 0);
}

uint64_t sub_1001B1C54()
{
  v1 = v0[48];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[12];
  v0[4] = &_swiftEmptySetSingleton;
  v5 = *(v4 + 136);
  v0[49] = v5;
  v6 = *(v3 + 56);
  v0[50] = v6;
  v0[51] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v2);

  return _swift_task_switch(sub_1001B1CF8, v5, 0);
}

uint64_t sub_1001B1CF8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 564);
  sub_1000D2A70(*(v0 + 384), v3, &qword_1016980D0, &unk_10138F3B0);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = v6 + v2;
  v8 = swift_allocObject();
  *(v0 + 416) = v8;
  *(v8 + 16) = v1;
  sub_1000D2AD8(v3, v8 + v6, &qword_1016980D0, &unk_10138F3B0);
  *(v8 + v7) = (v5 & 1) == 0;
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  v11 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v10 = v0;
  v10[1] = sub_1001B1E84;

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2718, v8, v11);
}

uint64_t sub_1001B1E84()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_1001B1FB0, v3, 0);
}

uint64_t sub_1001B1FB0()
{
  v1 = v0[12];
  sub_10000B3A8(v0[48], &qword_1016980D0, &unk_10138F3B0);
  v0[54] = v0[5];

  return _swift_task_switch(sub_1001B2034, v1, 0);
}

void sub_1001B2034()
{
  v132 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 352);
  static Date.now.getter();
  v3 = *(v1 + 16);
  *(v0 + 440) = v3;
  if (v3)
  {
    v4 = 0;
    *(v0 + 560) = enum case for Calendar.Component.second(_:);
    while (1)
    {
      *(v0 + 448) = v4;
      v10 = *(v0 + 432);
      if (v4 >= *(v10 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v11 = *(v0 + 336);
      v12 = *(v0 + 296);
      v13 = *(v0 + 272);
      v14 = *(v0 + 264);
      v15 = *(v0 + 208);
      v16 = *(v0 + 216);
      sub_1001BB2E0(v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v4, v12, type metadata accessor for OwnerSharingCircle);
      v17 = *(v16 + 16);
      v18 = *(v13 + 24);
      *(v0 + 456) = v17;
      *(v0 + 464) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(v14, v12 + v18, v15);
      v19 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v12, v11);
      objc_autoreleasePoolPop(v19);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v20 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v21 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v23 = sub_1010790F4(KeyPath, v21);
      if (v24)
      {
        v130 = 0;
        v131 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v74 = v131;
        *(v0 + 16) = v130;
        *(v0 + 24) = v74;
        v75._object = 0x800000010134CA80;
        v75._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v75);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        v76 = *(v0 + 16);
        v77 = *(v0 + 24);
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v25 = *&v23;
      v118 = v17;
      v26 = *(v0 + 560);
      v27 = *(v0 + 192);
      v29 = *(v0 + 160);
      v28 = *(v0 + 168);
      v30 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v29 + 104))(v28, v26, v30);
      if ((~*&v25 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v25 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v123 = v4;
      v31 = *(v0 + 336);
      v32 = *(v0 + 304);
      v33 = *(v0 + 312);
      v34 = *(v0 + 192);
      v35 = *(v0 + 200);
      v36 = *(v0 + 184);
      v127 = *(v0 + 176);
      v37 = *(v0 + 160);
      v38 = *(v0 + 168);
      v39 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v37 + 8))(v38, v39);
      (*(v36 + 8))(v34, v127);
      v40 = *(v33 + 8);
      *(v0 + 472) = v40;
      *(v0 + 480) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v128 = v40;
      v40(v31, v32);
      v41 = *(v33 + 48);
      if (v41(v35, 1, v32) == 1)
      {
        v42 = *(v0 + 304);
        v43 = *(v0 + 200);
        v44 = *(v0 + 344);
        static Date.distantFuture.getter();
        if (v41(v43, 1, v42) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      v46 = *(v0 + 344);
      v45 = *(v0 + 352);
      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 344);
      v48 = *(v0 + 328);
      v49 = *(v0 + 304);
      v50 = *(v0 + 312);
      v52 = *(v0 + 288);
      v51 = *(v0 + 296);
      v53 = type metadata accessor for Logger();
      sub_1000076D4(v53, qword_10177AE28);
      sub_1001BB2E0(v51, v52, type metadata accessor for OwnerSharingCircle);
      (*(v50 + 16))(v48, v47, v49);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 344);
      v58 = *(v0 + 328);
      v59 = *(v0 + 304);
      v119 = v57;
      v121 = *(v0 + 296);
      v60 = *(v0 + 288);
      if (v56)
      {
        v61 = *(v0 + 272);
        v114 = *(v0 + 216);
        v116 = *(v0 + 264);
        v112 = *(v0 + 208);
        v62 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v62 = 141558531;
        *(v62 + 4) = 1752392040;
        *(v62 + 12) = 2081;
        v63 = *(v61 + 20);
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        sub_1001BA80C(v60, type metadata accessor for OwnerSharingCircle);
        v67 = sub_1000136BC(v64, v66, &v130);

        *(v62 + 14) = v67;
        *(v62 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v69;
        v71 = v58;
        v9 = v128;
        v128(v71, v59);
        v72 = sub_1000136BC(v68, v70, &v130);

        *(v62 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v62, 0x20u);
        swift_arrayDestroy();

        v128(v119, v59);
        (*(v114 + 8))(v116, v112);
      }

      else
      {
        v5 = *(v0 + 264);
        v6 = *(v0 + 208);
        v7 = *(v0 + 216);

        v8 = v58;
        v9 = v128;
        v128(v8, v59);
        sub_1001BA80C(v60, type metadata accessor for OwnerSharingCircle);
        v128(v119, v59);
        (*(v7 + 8))(v5, v6);
      }

      sub_1001BA80C(v121, type metadata accessor for OwnerSharingCircle);
      v4 = v123 + 1;
      if (v123 + 1 == *(v0 + 440))
      {
        v96 = *(v0 + 312) + 8;
        v73 = v9;
        goto LABEL_29;
      }
    }

    v78 = *(v0 + 344);
    v79 = *(v0 + 88);
    if (static Date.< infix(_:_:)())
    {
      v81 = *(v0 + 400);
      v80 = *(v0 + 408);
      v125 = *(v0 + 344);
      v82 = *(v0 + 304);
      v83 = *(v0 + 312);
      v84 = *(v0 + 296);
      v85 = *(v0 + 272);
      v86 = *(v0 + 208);
      v88 = *(v0 + 80);
      v87 = *(v0 + 88);
      v128(v87, v82);
      sub_10000B3A8(v88, &qword_1016980D0, &unk_10138F3B0);
      v118(v88, v84 + *(v85 + 20), v86);
      v81(v88, 0, 1, v86);
      (*(v83 + 16))(v87, v125, v82);
    }

    v89 = *(v0 + 264);
    v90 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v92 = [v90 initWithBeaconIdentifier:isa];
    *(v0 + 488) = v92;

    v93 = swift_task_alloc();
    *(v0 + 496) = v93;
    *v93 = v0;
    v93[1] = sub_1001B2AC4;
    v94 = *(v0 + 136);
    v95 = *(v0 + 96);

    sub_100192E2C(v94, v92);
  }

  else
  {
    v73 = *(*(v0 + 312) + 8);
LABEL_29:
    v97 = *(v0 + 432);
    v99 = *(v0 + 376);
    v98 = *(v0 + 384);
    v100 = *(v0 + 344);
    v101 = *(v0 + 328);
    v102 = *(v0 + 336);
    v103 = *(v0 + 320);
    v104 = *(v0 + 296);
    v107 = *(v0 + 288);
    v108 = *(v0 + 264);
    v109 = *(v0 + 256);
    v110 = *(v0 + 248);
    v111 = *(v0 + 240);
    v113 = *(v0 + 232);
    v115 = *(v0 + 224);
    v117 = *(v0 + 200);
    v120 = *(v0 + 192);
    v122 = *(v0 + 168);
    v124 = *(v0 + 144);
    v126 = *(v0 + 136);
    v129 = *(v0 + 112);
    v73(*(v0 + 352), *(v0 + 304));

    v105 = *(v0 + 32);

    v106 = *(v0 + 8);

    v106(v105);
  }
}

uint64_t sub_1001B2AC4()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v8 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_1001B3F40;
  }

  else
  {
    v6 = *(v2 + 96);

    v5 = sub_1001B2BEC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001B2BEC()
{
  (*(v0[16] + 32))(v0[18], v0[17], v0[15]);
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  v0[64] = v2;
  *v2 = v0;
  v2[1] = sub_1001B2C94;

  return daemon.getter();
}

uint64_t sub_1001B2C94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v12 = *v1;
  *(v3 + 520) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 528) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DelegatedShareMetadataService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService);
  *v6 = v12;
  v6[1] = sub_1001B2E70;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001B2E70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  v4[67] = a1;

  v7 = v4[65];
  if (v1)
  {
    v8 = v4[12];

    return _swift_task_switch(sub_1001B4CA0, v8, 0);
  }

  else
  {
    v9 = v4[37];
    v10 = v4[34];

    v11 = *(v10 + 20);
    v12 = swift_task_alloc();
    v4[68] = v12;
    *v12 = v6;
    v12[1] = sub_1001B303C;
    v13 = v4[14];

    return sub_1007AF3E4(v13, v9 + v11);
  }
}

uint64_t sub_1001B303C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_1001B5A2C;
  }

  else
  {
    v6 = sub_1001B3174;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_1001B3174()
{
  v169 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  v162 = *(v3 + *(v2 + 20));
  sub_1001BA80C(v3, type metadata accessor for DelegatedShareMeta);
  v165 = *(v0 + 552);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 296);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 208);
  v12 = *(*(v0 + 272) + 20);
  v5(*(v0 + 256), v6 + v12, v11);
  v5(v8, v7, v11);
  v5(v10, v6 + v12, v11);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_40:
    swift_once();
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 296);
  v15 = *(v0 + 144);
  v159 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() handleWithWeb:v16];

  v18 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v14, v13);
  if (v165)
  {

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v141 = *(v0 + 472);
    v143 = *(v0 + 480);
    v19 = *(v0 + 344);
    v130 = *(v0 + 320);
    v139 = *(v0 + 304);
    v165 = *(v0 + 296);
    v156 = *(v0 + 264);
    v20 = *(v0 + 248);
    v133 = v20;
    v135 = *(v0 + 256);
    v21 = *(v0 + 232);
    v131 = *(v0 + 240);
    v22 = *(v0 + 216);
    v137 = *(v0 + 208);
    v152 = *(v0 + 144);
    v146 = *(v0 + 128);
    v149 = *(v0 + 120);
    objc_autoreleasePoolPop(v18);
    v129 = objc_allocWithZone(SPBeaconShare);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v127 = UUID._bridgeToObjectiveC()().super.isa;
    v23 = UUID._bridgeToObjectiveC()().super.isa;
    v24 = UUID._bridgeToObjectiveC()().super.isa;
    v25 = Date._bridgeToObjectiveC()().super.isa;
    v26 = Date._bridgeToObjectiveC()().super.isa;
    LOBYTE(v126) = 1;
    v162 = [v129 initWithIdentifier:isa beaconIdentifier:v127 sharingCircleIdentifier:v23 peerTrustIdentifier:v24 owner:v159 sharee:v17 state:5 creationDate:v25 expirationDate:v26 visitorCount:v162 delegationStatus:v126];

    v141(v130, v139);
    v27 = *(v22 + 8);
    v27(v21, v137);
    v27(v131, v137);
    v27(v133, v137);
    v27(v135, v137);
    sub_100DEA678(&v167, v162);

    (*(v146 + 8))(v152, v149);
    v141(v19, v139);
    v27(v156, v137);
    sub_1001BA80C(v165, type metadata accessor for OwnerSharingCircle);
    v28 = *(v0 + 448) + 1;
    if (v28 == *(v0 + 440))
    {
      v165 = *(v0 + 472);
LABEL_8:
      v29 = *(v0 + 312) + 8;
      v30 = *(v0 + 432);
      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v33 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *(v0 + 336);
      v36 = *(v0 + 320);
      v37 = *(v0 + 296);
      v132 = *(v0 + 288);
      v134 = *(v0 + 264);
      v136 = *(v0 + 256);
      v138 = *(v0 + 248);
      v140 = *(v0 + 240);
      v142 = *(v0 + 232);
      v144 = *(v0 + 224);
      v147 = *(v0 + 200);
      v150 = *(v0 + 192);
      v153 = *(v0 + 168);
      v157 = *(v0 + 144);
      v160 = *(v0 + 136);
      v163 = *(v0 + 112);
      v165(*(v0 + 352), *(v0 + 304));

      v38 = *(v0 + 32);

      v39 = *(v0 + 8);

      v39(v38);
    }

    else
    {
      while (1)
      {
        *(v0 + 448) = v28;
        v43 = *(v0 + 432);
        if (v28 >= *(v43 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v44 = *(v0 + 336);
        v45 = *(v0 + 296);
        v46 = *(v0 + 272);
        v47 = *(v0 + 264);
        v48 = *(v0 + 208);
        v49 = *(v0 + 216);
        sub_1001BB2E0(v43 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v28, v45, type metadata accessor for OwnerSharingCircle);
        v50 = *(v49 + 16);
        v51 = *(v46 + 24);
        *(v0 + 456) = v50;
        *(v0 + 464) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v50(v47, v45 + v51, v48);
        v52 = objc_autoreleasePoolPush();
        sub_100E7AB5C(v45, v44);
        objc_autoreleasePoolPop(v52);
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v53 = *(qword_10177B348 + 40);
        OS_dispatch_queue.sync<A>(execute:)();
        v54 = *(v0 + 56);
        KeyPath = swift_getKeyPath();
        v56 = sub_1010790F4(KeyPath, v54);
        if (v57)
        {
          v167 = 0;
          v168 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          v104 = v168;
          *(v0 + 16) = v167;
          *(v0 + 24) = v104;
          v105._object = 0x800000010134CA80;
          v105._countAndFlagsBits = 0xD000000000000026;
          String.append(_:)(v105);
          *(v0 + 64) = KeyPath;
          sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
          _print_unlocked<A, B>(_:_:)();
          v106 = *(v0 + 16);
          v107 = *(v0 + 24);
          _assertionFailure(_:_:file:line:flags:)();
          return;
        }

        v58 = *&v56;
        v154 = v50;
        v162 = 0;
        v59 = *(v0 + 560);
        v60 = *(v0 + 192);
        v62 = *(v0 + 160);
        v61 = *(v0 + 168);
        v63 = *(v0 + 152);

        static Calendar.current.getter();
        (*(v62 + 104))(v61, v59, v63);
        if ((~*&v58 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_37;
        }

        if (v58 <= -9.22337204e18)
        {
          goto LABEL_38;
        }

        if (v58 >= 9.22337204e18)
        {
          goto LABEL_39;
        }

        v161 = v28;
        v64 = *(v0 + 336);
        v65 = *(v0 + 304);
        v66 = *(v0 + 312);
        v67 = *(v0 + 192);
        v68 = *(v0 + 200);
        v69 = *(v0 + 184);
        v166 = *(v0 + 176);
        v70 = *(v0 + 160);
        v71 = *(v0 + 168);
        v72 = *(v0 + 152);
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v70 + 8))(v71, v72);
        (*(v69 + 8))(v67, v166);
        v73 = *(v66 + 8);
        *(v0 + 472) = v73;
        *(v0 + 480) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v165 = v73;
        v73(v64, v65);
        v74 = *(v66 + 48);
        if (v74(v68, 1, v65) == 1)
        {
          v75 = *(v0 + 304);
          v76 = *(v0 + 200);
          v77 = *(v0 + 344);
          static Date.distantFuture.getter();
          if (v74(v76, 1, v75) != 1)
          {
            sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
          }
        }

        else
        {
          (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
        }

        v79 = *(v0 + 344);
        v78 = *(v0 + 352);
        if ((static Date.> infix(_:_:)() & 1) == 0)
        {
          break;
        }

        if (qword_101694778 != -1)
        {
          swift_once();
        }

        v80 = *(v0 + 344);
        v81 = *(v0 + 328);
        v82 = *(v0 + 304);
        v83 = *(v0 + 312);
        v85 = *(v0 + 288);
        v84 = *(v0 + 296);
        v86 = type metadata accessor for Logger();
        sub_1000076D4(v86, qword_10177AE28);
        sub_1001BB2E0(v84, v85, type metadata accessor for OwnerSharingCircle);
        (*(v83 + 16))(v81, v80, v82);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        v89 = os_log_type_enabled(v87, v88);
        v90 = *(v0 + 328);
        v91 = *(v0 + 304);
        v155 = *(v0 + 344);
        v158 = *(v0 + 296);
        v92 = *(v0 + 288);
        if (v89)
        {
          v93 = *(v0 + 272);
          v151 = *(v0 + 264);
          v145 = *(v0 + 208);
          v148 = *(v0 + 216);
          v94 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *v94 = 141558531;
          *(v94 + 4) = 1752392040;
          *(v94 + 12) = 2081;
          v95 = *(v93 + 20);
          sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
          v96 = dispatch thunk of CustomStringConvertible.description.getter();
          v98 = v97;
          sub_1001BA80C(v92, type metadata accessor for OwnerSharingCircle);
          v99 = sub_1000136BC(v96, v98, &v167);

          *(v94 + 14) = v99;
          *(v94 + 22) = 2082;
          sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v102 = v101;
          v165(v90, v91);
          v103 = sub_1000136BC(v100, v102, &v167);

          *(v94 + 24) = v103;
          _os_log_impl(&_mh_execute_header, v87, v88, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v94, 0x20u);
          swift_arrayDestroy();

          v165(v155, v91);
          (*(v148 + 8))(v151, v145);
        }

        else
        {
          v40 = *(v0 + 264);
          v41 = *(v0 + 208);
          v42 = *(v0 + 216);

          v165(v90, v91);
          sub_1001BA80C(v92, type metadata accessor for OwnerSharingCircle);
          v165(v155, v91);
          (*(v42 + 8))(v40, v41);
        }

        sub_1001BA80C(v158, type metadata accessor for OwnerSharingCircle);
        v28 = v161 + 1;
        if (v161 + 1 == *(v0 + 440))
        {
          goto LABEL_8;
        }
      }

      v108 = *(v0 + 344);
      v109 = *(v0 + 88);
      if (static Date.< infix(_:_:)())
      {
        v111 = *(v0 + 400);
        v110 = *(v0 + 408);
        v164 = *(v0 + 344);
        v112 = *(v0 + 304);
        v113 = *(v0 + 312);
        v114 = *(v0 + 296);
        v115 = *(v0 + 272);
        v116 = *(v0 + 208);
        v118 = *(v0 + 80);
        v117 = *(v0 + 88);
        v165(v117, v112);
        sub_10000B3A8(v118, &qword_1016980D0, &unk_10138F3B0);
        v154(v118, v114 + *(v115 + 20), v116);
        v111(v118, 0, 1, v116);
        (*(v113 + 16))(v117, v164, v112);
      }

      v119 = *(v0 + 264);
      v120 = objc_allocWithZone(SPBeaconLocationShareContext);
      v121 = UUID._bridgeToObjectiveC()().super.isa;
      v122 = [v120 initWithBeaconIdentifier:v121];
      *(v0 + 488) = v122;

      v123 = swift_task_alloc();
      *(v0 + 496) = v123;
      *v123 = v0;
      v123[1] = sub_1001B2AC4;
      v124 = *(v0 + 136);
      v125 = *(v0 + 96);

      sub_100192E2C(v124, v122);
    }
  }
}

void sub_1001B3F40()
{
  v158 = v0;

  if (qword_101694778 != -1)
  {
LABEL_39:
    swift_once();
  }

  v1 = *(v0 + 504);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v140 = type metadata accessor for Logger();
  sub_1000076D4(v140, qword_10177AE28);
  v3(v5, v4, v6);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v147 = *(v0 + 504);
  v11 = *(v0 + 472);
  v10 = *(v0 + 480);
  v12 = *(v0 + 296);
  v150 = *(v0 + 304);
  v153 = *(v0 + 344);
  v13 = *(v0 + 264);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 208);
  if (v9)
  {
    v144 = *(v0 + 296);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v156 = v137;
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v131 = v11;
    v134 = v13;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v16);
    v23 = sub_1000136BC(v19, v21, &v156);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v24;
    *v18 = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beacon: %{private,mask.hash}s is not delegated. Error thrown %{public}@.", v17, 0x20u);
    sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v137);

    v131(v153, v150);
    v22(v134, v16);
    v25 = v144;
  }

  else
  {

    v26 = *(v15 + 8);
    v26(v14, v16);
    v11(v153, v150);
    v26(v13, v16);
    v25 = v12;
  }

  sub_1001BA80C(v25, type metadata accessor for OwnerSharingCircle);
  v27 = *(v0 + 448) + 1;
  if (v27 == *(v0 + 440))
  {
    v154 = *(v0 + 472);
LABEL_7:
    v28 = *(v0 + 312) + 8;
    v29 = *(v0 + 432);
    v31 = *(v0 + 376);
    v30 = *(v0 + 384);
    v32 = *(v0 + 344);
    v33 = *(v0 + 328);
    v34 = *(v0 + 336);
    v35 = *(v0 + 320);
    v36 = *(v0 + 296);
    v126 = *(v0 + 288);
    v127 = *(v0 + 264);
    v128 = *(v0 + 256);
    v129 = *(v0 + 248);
    v130 = *(v0 + 240);
    v132 = *(v0 + 232);
    v135 = *(v0 + 224);
    v138 = *(v0 + 200);
    v141 = *(v0 + 192);
    v37 = *(v0 + 168);
    v145 = *(v0 + 144);
    v148 = *(v0 + 136);
    v151 = *(v0 + 112);
    v154(*(v0 + 352), *(v0 + 304));

    v38 = *(v0 + 32);

    v39 = *(v0 + 8);

    v39(v38);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v27;
      v43 = *(v0 + 432);
      if (v27 >= *(v43 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v44 = *(v0 + 336);
      v45 = *(v0 + 296);
      v46 = *(v0 + 272);
      v47 = *(v0 + 264);
      v48 = *(v0 + 208);
      v49 = *(v0 + 216);
      sub_1001BB2E0(v43 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v27, v45, type metadata accessor for OwnerSharingCircle);
      v50 = *(v49 + 16);
      v51 = *(v46 + 24);
      *(v0 + 456) = v50;
      *(v0 + 464) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50(v47, v45 + v51, v48);
      v52 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v45, v44);
      objc_autoreleasePoolPop(v52);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v53 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v54 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v56 = sub_1010790F4(KeyPath, v54);
      if (v57)
      {
        v156 = 0;
        v157 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v104 = v157;
        *(v0 + 16) = v156;
        *(v0 + 24) = v104;
        v105._object = 0x800000010134CA80;
        v105._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v105);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        v106 = *(v0 + 16);
        v107 = *(v0 + 24);
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v58 = *&v56;
      v142 = v50;
      v59 = *(v0 + 560);
      v60 = *(v0 + 192);
      v62 = *(v0 + 160);
      v61 = *(v0 + 168);
      v63 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v62 + 104))(v61, v59, v63);
      if ((~*&v58 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_36;
      }

      if (v58 <= -9.22337204e18)
      {
        goto LABEL_37;
      }

      if (v58 >= 9.22337204e18)
      {
        goto LABEL_38;
      }

      v149 = v27;
      v64 = *(v0 + 336);
      v65 = *(v0 + 304);
      v66 = *(v0 + 312);
      v67 = *(v0 + 192);
      v68 = *(v0 + 200);
      v69 = *(v0 + 184);
      v155 = *(v0 + 176);
      v70 = *(v0 + 160);
      v71 = *(v0 + 168);
      v72 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v70 + 8))(v71, v72);
      (*(v69 + 8))(v67, v155);
      v73 = *(v66 + 8);
      *(v0 + 472) = v73;
      *(v0 + 480) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v154 = v73;
      v73(v64, v65);
      v74 = *(v66 + 48);
      if (v74(v68, 1, v65) == 1)
      {
        v75 = *(v0 + 304);
        v76 = *(v0 + 200);
        v77 = *(v0 + 344);
        static Date.distantFuture.getter();
        if (v74(v76, 1, v75) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      v79 = *(v0 + 344);
      v78 = *(v0 + 352);
      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v80 = *(v0 + 344);
      v81 = *(v0 + 328);
      v82 = *(v0 + 304);
      v83 = *(v0 + 312);
      v85 = *(v0 + 288);
      v84 = *(v0 + 296);
      sub_1000076D4(v140, qword_10177AE28);
      sub_1001BB2E0(v84, v85, type metadata accessor for OwnerSharingCircle);
      (*(v83 + 16))(v81, v80, v82);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 344);
      v90 = *(v0 + 328);
      v91 = *(v0 + 304);
      v143 = v89;
      v146 = *(v0 + 296);
      v92 = *(v0 + 288);
      if (v88)
      {
        v93 = *(v0 + 272);
        v136 = *(v0 + 216);
        v139 = *(v0 + 264);
        v133 = *(v0 + 208);
        v94 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v94 = 141558531;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2081;
        v95 = *(v93 + 20);
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        sub_1001BA80C(v92, type metadata accessor for OwnerSharingCircle);
        v99 = sub_1000136BC(v96, v98, &v156);

        *(v94 + 14) = v99;
        *(v94 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v154(v90, v91);
        v103 = sub_1000136BC(v100, v102, &v156);

        *(v94 + 24) = v103;
        _os_log_impl(&_mh_execute_header, v86, v87, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v94, 0x20u);
        swift_arrayDestroy();

        v154(v143, v91);
        (*(v136 + 8))(v139, v133);
      }

      else
      {
        v40 = *(v0 + 264);
        v41 = *(v0 + 208);
        v42 = *(v0 + 216);

        v154(v90, v91);
        sub_1001BA80C(v92, type metadata accessor for OwnerSharingCircle);
        v154(v143, v91);
        (*(v42 + 8))(v40, v41);
      }

      sub_1001BA80C(v146, type metadata accessor for OwnerSharingCircle);
      v27 = v149 + 1;
      if (v149 + 1 == *(v0 + 440))
      {
        goto LABEL_7;
      }
    }

    v108 = *(v0 + 344);
    v109 = *(v0 + 88);
    if (static Date.< infix(_:_:)())
    {
      v111 = *(v0 + 400);
      v110 = *(v0 + 408);
      v152 = *(v0 + 344);
      v112 = *(v0 + 304);
      v113 = *(v0 + 312);
      v114 = *(v0 + 296);
      v115 = *(v0 + 272);
      v116 = *(v0 + 208);
      v118 = *(v0 + 80);
      v117 = *(v0 + 88);
      v154(v117, v112);
      sub_10000B3A8(v118, &qword_1016980D0, &unk_10138F3B0);
      v142(v118, v114 + *(v115 + 20), v116);
      v111(v118, 0, 1, v116);
      (*(v113 + 16))(v117, v152, v112);
    }

    v119 = *(v0 + 264);
    v120 = objc_allocWithZone(SPBeaconLocationShareContext);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v122 = [v120 initWithBeaconIdentifier:isa];
    *(v0 + 488) = v122;

    v123 = swift_task_alloc();
    *(v0 + 496) = v123;
    *v123 = v0;
    v123[1] = sub_1001B2AC4;
    v124 = *(v0 + 136);
    v125 = *(v0 + 96);

    sub_100192E2C(v124, v122);
  }
}

void sub_1001B4CA0()
{
  v167 = v0;
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(*(v0 + 272) + 20);
  v2(*(v0 + 256), v3 + v9, v8);
  v2(v5, v4, v8);
  v2(v6, v3 + v9, v8);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_36:
    swift_once();
  }

  v10 = *(v0 + 320);
  v11 = *(v0 + 296);
  v12 = *(v0 + 144);
  v162 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() handleWithWeb:v13];

  v15 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v11, v10);
  v140 = *(v0 + 472);
  v143 = *(v0 + 480);
  v125 = *(v0 + 344);
  v128 = *(v0 + 320);
  v138 = *(v0 + 304);
  v156 = *(v0 + 264);
  v159 = *(v0 + 296);
  v16 = *(v0 + 248);
  v132 = v16;
  v134 = *(v0 + 256);
  v17 = *(v0 + 232);
  v130 = *(v0 + 240);
  v18 = *(v0 + 216);
  v136 = *(v0 + 208);
  v153 = *(v0 + 144);
  v146 = *(v0 + 128);
  v149 = *(v0 + 120);
  objc_autoreleasePoolPop(v15);
  v126 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v123 = UUID._bridgeToObjectiveC()().super.isa;
  v19 = UUID._bridgeToObjectiveC()().super.isa;
  v20 = UUID._bridgeToObjectiveC()().super.isa;
  v21 = Date._bridgeToObjectiveC()().super.isa;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v122) = 1;
  v127 = [v126 initWithIdentifier:isa beaconIdentifier:v123 sharingCircleIdentifier:v19 peerTrustIdentifier:v20 owner:v162 sharee:v14 state:5 creationDate:v21 expirationDate:v22 visitorCount:0 delegationStatus:v122];

  v140(v128, v138);
  v23 = *(v18 + 8);
  v23(v17, v136);
  v23(v130, v136);
  v23(v132, v136);
  v23(v134, v136);
  sub_100DEA678(&v165, v127);

  (*(v146 + 8))(v153, v149);
  v140(v125, v138);
  v23(v156, v136);
  sub_1001BA80C(v159, type metadata accessor for OwnerSharingCircle);
  v24 = *(v0 + 448) + 1;
  if (v24 == *(v0 + 440))
  {
    v163 = *(v0 + 472);
LABEL_4:
    v25 = *(v0 + 312) + 8;
    v26 = *(v0 + 432);
    v28 = *(v0 + 376);
    v27 = *(v0 + 384);
    v29 = *(v0 + 344);
    v30 = *(v0 + 328);
    v31 = *(v0 + 336);
    v32 = *(v0 + 320);
    v33 = *(v0 + 296);
    v129 = *(v0 + 288);
    v131 = *(v0 + 264);
    v133 = *(v0 + 256);
    v135 = *(v0 + 248);
    v137 = *(v0 + 240);
    v139 = *(v0 + 232);
    v141 = *(v0 + 224);
    v144 = *(v0 + 200);
    v147 = *(v0 + 192);
    v150 = *(v0 + 168);
    v154 = *(v0 + 144);
    v157 = *(v0 + 136);
    v160 = *(v0 + 112);
    v163(*(v0 + 352), *(v0 + 304));

    v34 = *(v0 + 32);

    v35 = *(v0 + 8);

    v35(v34);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v24;
      v39 = *(v0 + 432);
      if (v24 >= *(v39 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v40 = *(v0 + 336);
      v41 = *(v0 + 296);
      v42 = *(v0 + 272);
      v43 = *(v0 + 264);
      v44 = *(v0 + 208);
      v45 = *(v0 + 216);
      sub_1001BB2E0(v39 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v24, v41, type metadata accessor for OwnerSharingCircle);
      v46 = *(v45 + 16);
      v47 = *(v42 + 24);
      *(v0 + 456) = v46;
      *(v0 + 464) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v46(v43, v41 + v47, v44);
      v48 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v41, v40);
      objc_autoreleasePoolPop(v48);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v49 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v50 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v52 = sub_1010790F4(KeyPath, v50);
      if (v53)
      {
        v165 = 0;
        v166 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v100 = v166;
        *(v0 + 16) = v165;
        *(v0 + 24) = v100;
        v101._object = 0x800000010134CA80;
        v101._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v101);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        v102 = *(v0 + 16);
        v103 = *(v0 + 24);
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v54 = *&v52;
      v151 = v46;
      v55 = *(v0 + 560);
      v56 = *(v0 + 192);
      v58 = *(v0 + 160);
      v57 = *(v0 + 168);
      v59 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v58 + 104))(v57, v55, v59);
      if ((~*&v54 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v54 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v54 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v158 = v24;
      v60 = *(v0 + 336);
      v61 = *(v0 + 304);
      v62 = *(v0 + 312);
      v63 = *(v0 + 192);
      v64 = *(v0 + 200);
      v65 = *(v0 + 184);
      v164 = *(v0 + 176);
      v66 = *(v0 + 160);
      v67 = *(v0 + 168);
      v68 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v66 + 8))(v67, v68);
      (*(v65 + 8))(v63, v164);
      v69 = *(v62 + 8);
      *(v0 + 472) = v69;
      *(v0 + 480) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v163 = v69;
      v69(v60, v61);
      v70 = *(v62 + 48);
      if (v70(v64, 1, v61) == 1)
      {
        v71 = *(v0 + 304);
        v72 = *(v0 + 200);
        v73 = *(v0 + 344);
        static Date.distantFuture.getter();
        if (v70(v72, 1, v71) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      v75 = *(v0 + 344);
      v74 = *(v0 + 352);
      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v76 = *(v0 + 344);
      v77 = *(v0 + 328);
      v78 = *(v0 + 304);
      v79 = *(v0 + 312);
      v81 = *(v0 + 288);
      v80 = *(v0 + 296);
      v82 = type metadata accessor for Logger();
      sub_1000076D4(v82, qword_10177AE28);
      sub_1001BB2E0(v80, v81, type metadata accessor for OwnerSharingCircle);
      (*(v79 + 16))(v77, v76, v78);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 328);
      v87 = *(v0 + 304);
      v152 = *(v0 + 344);
      v155 = *(v0 + 296);
      v88 = *(v0 + 288);
      if (v85)
      {
        v89 = *(v0 + 272);
        v145 = *(v0 + 216);
        v148 = *(v0 + 264);
        v142 = *(v0 + 208);
        v90 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *v90 = 141558531;
        *(v90 + 4) = 1752392040;
        *(v90 + 12) = 2081;
        v91 = *(v89 + 20);
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
        v92 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v93;
        sub_1001BA80C(v88, type metadata accessor for OwnerSharingCircle);
        v95 = sub_1000136BC(v92, v94, &v165);

        *(v90 + 14) = v95;
        *(v90 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        v163(v86, v87);
        v99 = sub_1000136BC(v96, v98, &v165);

        *(v90 + 24) = v99;
        _os_log_impl(&_mh_execute_header, v83, v84, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v90, 0x20u);
        swift_arrayDestroy();

        v163(v152, v87);
        (*(v145 + 8))(v148, v142);
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 208);
        v38 = *(v0 + 216);

        v163(v86, v87);
        sub_1001BA80C(v88, type metadata accessor for OwnerSharingCircle);
        v163(v152, v87);
        (*(v38 + 8))(v36, v37);
      }

      sub_1001BA80C(v155, type metadata accessor for OwnerSharingCircle);
      v24 = v158 + 1;
      if (v158 + 1 == *(v0 + 440))
      {
        goto LABEL_4;
      }
    }

    v104 = *(v0 + 344);
    v105 = *(v0 + 88);
    if (static Date.< infix(_:_:)())
    {
      v107 = *(v0 + 400);
      v106 = *(v0 + 408);
      v161 = *(v0 + 344);
      v108 = *(v0 + 304);
      v109 = *(v0 + 312);
      v110 = *(v0 + 296);
      v111 = *(v0 + 272);
      v112 = *(v0 + 208);
      v114 = *(v0 + 80);
      v113 = *(v0 + 88);
      v163(v113, v108);
      sub_10000B3A8(v114, &qword_1016980D0, &unk_10138F3B0);
      v151(v114, v110 + *(v111 + 20), v112);
      v107(v114, 0, 1, v112);
      (*(v109 + 16))(v113, v161, v108);
    }

    v115 = *(v0 + 264);
    v116 = objc_allocWithZone(SPBeaconLocationShareContext);
    v117 = UUID._bridgeToObjectiveC()().super.isa;
    v118 = [v116 initWithBeaconIdentifier:v117];
    *(v0 + 488) = v118;

    v119 = swift_task_alloc();
    *(v0 + 496) = v119;
    *v119 = v0;
    v119[1] = sub_1001B2AC4;
    v120 = *(v0 + 136);
    v121 = *(v0 + 96);

    sub_100192E2C(v120, v118);
  }
}

void sub_1001B5A2C()
{
  v168 = v0;
  v1 = *(v0 + 536);

  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 296);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(*(v0 + 272) + 20);
  v3(*(v0 + 256), v4 + v10, v9);
  v3(v6, v5, v9);
  v3(v7, v4 + v10, v9);
  UUID.init()();
  if (qword_101694558 != -1)
  {
LABEL_36:
    swift_once();
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 296);
  v13 = *(v0 + 144);
  v163 = sub_100EB3708(byte_10177A8E8, qword_10177A8F0, qword_10177A8F8);
  URL.absoluteString.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() handleWithWeb:v14];

  v16 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v12, v11);
  v141 = *(v0 + 472);
  v144 = *(v0 + 480);
  v126 = *(v0 + 344);
  v129 = *(v0 + 320);
  v139 = *(v0 + 304);
  v157 = *(v0 + 264);
  v160 = *(v0 + 296);
  v17 = *(v0 + 248);
  v133 = v17;
  v135 = *(v0 + 256);
  v18 = *(v0 + 232);
  v131 = *(v0 + 240);
  v19 = *(v0 + 216);
  v137 = *(v0 + 208);
  v154 = *(v0 + 144);
  v147 = *(v0 + 128);
  v150 = *(v0 + 120);
  objc_autoreleasePoolPop(v16);
  v127 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v124 = UUID._bridgeToObjectiveC()().super.isa;
  v20 = UUID._bridgeToObjectiveC()().super.isa;
  v21 = UUID._bridgeToObjectiveC()().super.isa;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  v23 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v123) = 1;
  v128 = [v127 initWithIdentifier:isa beaconIdentifier:v124 sharingCircleIdentifier:v20 peerTrustIdentifier:v21 owner:v163 sharee:v15 state:5 creationDate:v22 expirationDate:v23 visitorCount:0 delegationStatus:v123];

  v141(v129, v139);
  v24 = *(v19 + 8);
  v24(v18, v137);
  v24(v131, v137);
  v24(v133, v137);
  v24(v135, v137);
  sub_100DEA678(&v166, v128);

  (*(v147 + 8))(v154, v150);
  v141(v126, v139);
  v24(v157, v137);
  sub_1001BA80C(v160, type metadata accessor for OwnerSharingCircle);
  v25 = *(v0 + 448) + 1;
  if (v25 == *(v0 + 440))
  {
    v164 = *(v0 + 472);
LABEL_4:
    v26 = *(v0 + 312) + 8;
    v27 = *(v0 + 432);
    v29 = *(v0 + 376);
    v28 = *(v0 + 384);
    v30 = *(v0 + 344);
    v31 = *(v0 + 328);
    v32 = *(v0 + 336);
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    v130 = *(v0 + 288);
    v132 = *(v0 + 264);
    v134 = *(v0 + 256);
    v136 = *(v0 + 248);
    v138 = *(v0 + 240);
    v140 = *(v0 + 232);
    v142 = *(v0 + 224);
    v145 = *(v0 + 200);
    v148 = *(v0 + 192);
    v151 = *(v0 + 168);
    v155 = *(v0 + 144);
    v158 = *(v0 + 136);
    v161 = *(v0 + 112);
    v164(*(v0 + 352), *(v0 + 304));

    v35 = *(v0 + 32);

    v36 = *(v0 + 8);

    v36(v35);
  }

  else
  {
    while (1)
    {
      *(v0 + 448) = v25;
      v40 = *(v0 + 432);
      if (v25 >= *(v40 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v41 = *(v0 + 336);
      v42 = *(v0 + 296);
      v43 = *(v0 + 272);
      v44 = *(v0 + 264);
      v45 = *(v0 + 208);
      v46 = *(v0 + 216);
      sub_1001BB2E0(v40 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)) + *(*(v0 + 280) + 72) * v25, v42, type metadata accessor for OwnerSharingCircle);
      v47 = *(v46 + 16);
      v48 = *(v43 + 24);
      *(v0 + 456) = v47;
      *(v0 + 464) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v47(v44, v42 + v48, v45);
      v49 = objc_autoreleasePoolPush();
      sub_100E7AB5C(v42, v41);
      objc_autoreleasePoolPop(v49);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v50 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v51 = *(v0 + 56);
      KeyPath = swift_getKeyPath();
      v53 = sub_1010790F4(KeyPath, v51);
      if (v54)
      {
        v166 = 0;
        v167 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        v101 = v167;
        *(v0 + 16) = v166;
        *(v0 + 24) = v101;
        v102._object = 0x800000010134CA80;
        v102._countAndFlagsBits = 0xD000000000000026;
        String.append(_:)(v102);
        *(v0 + 64) = KeyPath;
        sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
        _print_unlocked<A, B>(_:_:)();
        v103 = *(v0 + 16);
        v104 = *(v0 + 24);
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v55 = *&v53;
      v152 = v47;
      v56 = *(v0 + 560);
      v57 = *(v0 + 192);
      v59 = *(v0 + 160);
      v58 = *(v0 + 168);
      v60 = *(v0 + 152);

      static Calendar.current.getter();
      (*(v59 + 104))(v58, v56, v60);
      if ((~*&v55 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_33;
      }

      if (v55 <= -9.22337204e18)
      {
        goto LABEL_34;
      }

      if (v55 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v159 = v25;
      v61 = *(v0 + 336);
      v62 = *(v0 + 304);
      v63 = *(v0 + 312);
      v64 = *(v0 + 192);
      v65 = *(v0 + 200);
      v66 = *(v0 + 184);
      v165 = *(v0 + 176);
      v67 = *(v0 + 160);
      v68 = *(v0 + 168);
      v69 = *(v0 + 152);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v67 + 8))(v68, v69);
      (*(v66 + 8))(v64, v165);
      v70 = *(v63 + 8);
      *(v0 + 472) = v70;
      *(v0 + 480) = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v164 = v70;
      v70(v61, v62);
      v71 = *(v63 + 48);
      if (v71(v65, 1, v62) == 1)
      {
        v72 = *(v0 + 304);
        v73 = *(v0 + 200);
        v74 = *(v0 + 344);
        static Date.distantFuture.getter();
        if (v71(v73, 1, v72) != 1)
        {
          sub_10000B3A8(*(v0 + 200), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*(*(v0 + 312) + 32))(*(v0 + 344), *(v0 + 200), *(v0 + 304));
      }

      v76 = *(v0 + 344);
      v75 = *(v0 + 352);
      if ((static Date.> infix(_:_:)() & 1) == 0)
      {
        break;
      }

      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v77 = *(v0 + 344);
      v78 = *(v0 + 328);
      v79 = *(v0 + 304);
      v80 = *(v0 + 312);
      v82 = *(v0 + 288);
      v81 = *(v0 + 296);
      v83 = type metadata accessor for Logger();
      sub_1000076D4(v83, qword_10177AE28);
      sub_1001BB2E0(v81, v82, type metadata accessor for OwnerSharingCircle);
      (*(v80 + 16))(v78, v77, v79);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();
      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 328);
      v88 = *(v0 + 304);
      v153 = *(v0 + 344);
      v156 = *(v0 + 296);
      v89 = *(v0 + 288);
      if (v86)
      {
        v90 = *(v0 + 272);
        v146 = *(v0 + 216);
        v149 = *(v0 + 264);
        v143 = *(v0 + 208);
        v91 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *v91 = 141558531;
        *(v91 + 4) = 1752392040;
        *(v91 + 12) = 2081;
        v92 = *(v90 + 20);
        sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        sub_1001BA80C(v89, type metadata accessor for OwnerSharingCircle);
        v96 = sub_1000136BC(v93, v95, &v166);

        *(v91 + 14) = v96;
        *(v91 + 22) = 2082;
        sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v98;
        v164(v87, v88);
        v100 = sub_1000136BC(v97, v99, &v166);

        *(v91 + 24) = v100;
        _os_log_impl(&_mh_execute_header, v84, v85, "Ignoring expired share: %{private,mask.hash}s Expired: %{public}s", v91, 0x20u);
        swift_arrayDestroy();

        v164(v153, v88);
        (*(v146 + 8))(v149, v143);
      }

      else
      {
        v37 = *(v0 + 264);
        v38 = *(v0 + 208);
        v39 = *(v0 + 216);

        v164(v87, v88);
        sub_1001BA80C(v89, type metadata accessor for OwnerSharingCircle);
        v164(v153, v88);
        (*(v39 + 8))(v37, v38);
      }

      sub_1001BA80C(v156, type metadata accessor for OwnerSharingCircle);
      v25 = v159 + 1;
      if (v159 + 1 == *(v0 + 440))
      {
        goto LABEL_4;
      }
    }

    v105 = *(v0 + 344);
    v106 = *(v0 + 88);
    if (static Date.< infix(_:_:)())
    {
      v108 = *(v0 + 400);
      v107 = *(v0 + 408);
      v162 = *(v0 + 344);
      v109 = *(v0 + 304);
      v110 = *(v0 + 312);
      v111 = *(v0 + 296);
      v112 = *(v0 + 272);
      v113 = *(v0 + 208);
      v115 = *(v0 + 80);
      v114 = *(v0 + 88);
      v164(v114, v109);
      sub_10000B3A8(v115, &qword_1016980D0, &unk_10138F3B0);
      v152(v115, v111 + *(v112 + 20), v113);
      v108(v115, 0, 1, v113);
      (*(v110 + 16))(v114, v162, v109);
    }

    v116 = *(v0 + 264);
    v117 = objc_allocWithZone(SPBeaconLocationShareContext);
    v118 = UUID._bridgeToObjectiveC()().super.isa;
    v119 = [v117 initWithBeaconIdentifier:v118];
    *(v0 + 488) = v119;

    v120 = swift_task_alloc();
    *(v0 + 496) = v120;
    *v120 = v0;
    v120[1] = sub_1001B2AC4;
    v121 = *(v0 + 136);
    v122 = *(v0 + 96);

    sub_100192E2C(v121, v119);
  }
}

uint64_t sub_1001B67C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v20;
  *(v8 + 80) = a5;
  *(v8 + 88) = a7;
  *(v8 + 57) = a6;
  *(v8 + 72) = a4;
  v9 = type metadata accessor for Date();
  *(v8 + 112) = v9;
  v10 = *(v9 - 8);
  *(v8 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 136) = v12;
  v13 = *(v12 - 8);
  *(v8 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock();
  *(v8 + 160) = v15;
  v16 = *(v15 - 8);
  *(v8 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1001B694C, 0, 0);
}

uint64_t sub_1001B694C()
{
  v1 = *(v0 + 176);
  *(v0 + 40) = xmmword_1013903C0;
  *(v0 + 56) = 0;
  static Clock<>.continuous.getter();
  v2 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_1001B8FE4(&qword_101698C58, &type metadata accessor for ContinuousClock);
  *v3 = v0;
  v3[1] = sub_1001B6A44;
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v7 = *(v0 + 72);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v7, v0 + 40, v5, v6, v4);
}

uint64_t sub_1001B6A44()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1001B7114;
  }

  else
  {
    v6 = sub_1001B6BB4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001B6BB4()
{
  v40 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE28);
  (*(v2 + 16))(v1, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v37 = v8;
    v9 = *(v0 + 57);
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v10 = 136315907;
    log = v7;
    v39 = v36;
    if (v9)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 64) = *(v0 + 80);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v16;
    }

    v17 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = *(v0 + 112);
    v22 = *(v0 + 120);
    v35 = *(v0 + 96);
    v23 = sub_1000136BC(v11, v12, &v39);

    *(v10 + 4) = v23;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v18, v19);
    v27 = sub_1000136BC(v24, v26, &v39);

    *(v10 + 24) = v27;
    *(v10 + 32) = 2082;
    v28 = swift_projectBox();
    swift_beginAccess();
    (*(v22 + 16))(v20, v28, v21);
    sub_1001B8FE4(&qword_1016969A0, &type metadata accessor for Date);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v22 + 8))(v20, v21);
    v32 = sub_1000136BC(v29, v31, &v39);

    *(v10 + 34) = v32;
    _os_log_impl(&_mh_execute_header, log, v37, "%s Expiring %{private,mask.hash}s at %{public}s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);

    (*(v13 + 8))(v14, v15);
  }

  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 104);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001B6FCC, v33, 0);
}

uint64_t sub_1001B6FCC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 57);
  v6 = *(v0 + 80);
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5 & 1;

  static Transaction.asyncTask(name:block:)();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001B7114()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_1001B7190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7260, a3, 0);
}

uint64_t sub_1001B7260()
{
  v1 = *(*(v0 + 40) + 136);
  *(v0 + 80) = v1;
  *(v0 + 120) = *(type metadata accessor for OwnedBeaconRecord() + 20);
  *(v0 + 88) = sub_100B08164(&off_1016082B0);

  return _swift_task_switch(sub_1001B72EC, v1, 0);
}

uint64_t sub_1001B72EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  (*(v6 + 16))(v4, *(v0 + 32) + *(v0 + 120), v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 96) = v9;
  *(v9 + 16) = v1;
  (*(v6 + 32))(v9 + v7, v4, v5);
  *(v9 + v8) = v2;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v11 = v0;
  v11[1] = sub_1001B7484;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v12);
}

uint64_t sub_1001B7484()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1001B75B0, v3, 0);
}

uint64_t sub_1001B75B0()
{
  v1 = v0[5];
  v0[14] = v0[2];
  return _swift_task_switch(sub_1001B75D4, v1, 0);
}

uint64_t sub_1001B75D4()
{
  v1 = *(v0 + 72);
  **(v0 + 24) = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1001B7644(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = type metadata accessor for OwnerPeerTrust();
  v16 = (a3 + *(v15 + 32));
  v17 = *v16;
  v18 = v16[1];
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() handleWithString:v19];

  if (v20)
  {
    v51 = a1;
    v21 = type metadata accessor for OwnerSharingCircle();
    v22 = *(a2 + *(v21 + 32));
    if (*(v22 + 16) && (v23 = v21, v49 = v4, v24 = sub_1000210EC(a3 + *(v15 + 20)), (v25 & 1) != 0))
    {
      v44 = qword_101391008[*(*(v22 + 56) + v24)];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v26 = a2 + *(v23 + 24);
      v47 = UUID._bridgeToObjectiveC()().super.isa;
      v27 = a2 + *(v23 + 20);
      v46 = UUID._bridgeToObjectiveC()().super.isa;
      v45 = UUID._bridgeToObjectiveC()().super.isa;
      v43 = [objc_opt_self() SPOwner];
      v28 = objc_autoreleasePoolPush();
      sub_100E7AB5C(a2, v14);
      v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      objc_autoreleasePoolPop(v28);
      v29 = Date._bridgeToObjectiveC()().super.isa;
      v42 = v29;
      v30 = *(v50 + 8);
      v30(v14, v8);
      static Date.distantFuture.getter();
      v31 = Date._bridgeToObjectiveC()().super.isa;
      v30(v12, v8);
      LOBYTE(v41) = 0;
      v40 = v29;
      v32 = isa;
      v34 = v46;
      v33 = v47;
      v35 = v45;
      v36 = v43;
      v37 = [v49 initWithIdentifier:isa beaconIdentifier:v47 sharingCircleIdentifier:v46 peerTrustIdentifier:v45 owner:v43 sharee:v20 state:v44 creationDate:v40 expirationDate:v31 visitorCount:0 delegationStatus:v41];
    }

    else
    {

      v37 = 0;
    }

    a1 = v51;
  }

  else
  {
    v37 = 0;
  }

  sub_1001BA80C(a3, type metadata accessor for OwnerPeerTrust);
  v38 = type metadata accessor for UUID();
  (*(*(v38 - 8) + 8))(a1, v38);
  sub_1001BA80C(a2, type metadata accessor for OwnerSharingCircle);
  return v37;
}

uint64_t sub_1001B79E4()
{
  v1 = v0[3];
  if (v1 == 1)
  {
    v5 = sub_1003BD1D0;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v3 = sub_1000D2464;
    goto LABEL_5;
  }

  if (!v1)
  {
    v5 = sub_1003B9AEC;
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v3 = sub_1001B7B20;
LABEL_5:
    v2[1] = v3;

    return v5();
  }

  type metadata accessor for SPRecordsTypeToDelete(0);
  v0[2] = v1;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_1001B7B20()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001B7C14(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001B7D6C, v1, 0);
}

uint64_t sub_1001B7D6C()
{
  v1 = *(*(v0 + 64) + 136);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_1001B7D90, v1, 0);
}

uint64_t sub_1001B7D90()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = *(v3 + 16);
  *(v0 + 160) = v6;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 280) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_1001B7F14;
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9818, v9, v14);
}

uint64_t sub_1001B7F14()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_1001B8040, v3, 0);
}

uint64_t sub_1001B8040()
{
  v1 = v0[18];
  v2 = type metadata accessor for MemberSharingCircle();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  if (v3 == 1)
  {
    v4 = v0[19];

    return _swift_task_switch(sub_1001B8320, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_1001B8190;
    v6 = v0[7];

    return (sub_1003B218C)(v6, 1);
  }
}

uint64_t sub_1001B8190()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v10 = *v0;

  v3 = v1[18];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[10];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1001B8320()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = (*(v0 + 280) + 24) & ~*(v0 + 280);
  (*(v0 + 160))(v5, *(v0 + 56), v7);
  v9 = swift_allocObject();
  *(v0 + 216) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *v11 = v0;
  v11[1] = sub_1001B8470;
  v13 = *(v0 + 72);
  v12 = *(v0 + 80);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9830, v9, v13);
}

uint64_t sub_1001B8470()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_1001B859C, v3, 0);
}

uint64_t sub_1001B859C()
{
  v32 = v0;
  v1 = v0[10];
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  if (v3 == 1)
  {
    if (qword_101694488 != -1)
    {
      swift_once();
    }

    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[7];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A578);
    v5(v6, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_1000136BC(v18, v20, &v31);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "No share for %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v25 = v0[18];
    v26 = v0[15];
    v27 = v0[16];
    v28 = v0[14];
    v29 = v0[10];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v22 = *(v0[8] + 200);
    v0[5] = type metadata accessor for MemberCircleRevokeManager();
    v0[6] = &off_1016634E8;
    v0[2] = v22;

    v23 = swift_task_alloc();
    v0[29] = v23;
    *v23 = v0;
    v23[1] = sub_1001B8920;

    return sub_1003AE100((v0 + 2));
  }
}

uint64_t sub_1001B8920(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v5 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {
    *(v3 + 272) = v1;
    v6 = *(v3 + 64);
    v7 = sub_1001B8E18;
  }

  else
  {
    v7 = sub_1001B8A50;
    v6 = 0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001B8A50()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = (*(v0 + 280) + 24) & ~*(v0 + 280);
  (*(v0 + 160))(v5, *(v0 + 56), v7);
  v9 = swift_allocObject();
  *(v0 + 248) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v13 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_1001B8BD0;

  return v13(&unk_1013906E0, v9);
}

uint64_t sub_1001B8BD0()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_1001B8DA8;
  }

  else
  {
    v4 = sub_1001B8D00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001B8D00()
{
  v1 = v0[30];

  sub_100007BAC(v0 + 2);
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B8DA8()
{
  v1 = v0[30];

  v0[34] = v0[33];
  v2 = v0[8];

  return _swift_task_switch(sub_1001B8E18, v2, 0);
}

uint64_t sub_1001B8E18()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[34];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001B8EC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1001B7C14(a1);
}

uint64_t sub_1001B8FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B9084(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v27[1] = a1;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  v18 = *(a4(0) + 20);
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v29 = v19;
  v20._countAndFlagsBits = 124;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22 = String.utf8Data.getter();
  v24 = v23;

  v28 = v22;
  v29 = v24;
  sub_1000E0A3C();
  DataProtocol.stableUUID.getter();
  sub_100016590(v22, v24);
  v25 = *(v11 + 16);
  v25(v15, v17, v10);
  v25(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_1001DDB40(v9, v15);
  return (*(v11 + 8))(v17, v10);
}

char *sub_1001B9320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v47 = a4;
  v46 = a3;
  v48 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for SharingScheduler();
  v59[3] = v14;
  v59[4] = &off_1016590E8;
  v59[0] = a1;
  v15 = type metadata accessor for SystemInfoDynamic();
  v57 = v15;
  v58 = &off_10166FF90;
  v56[0] = a5;
  v16 = type metadata accessor for SharesRemovalManager();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = sub_10015049C(v59, v14);
  v21 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = v57;
  v26 = sub_10015049C(v56, v57);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v23;
  v32 = *v29;
  v54 = v14;
  v55 = &off_1016590E8;
  v52 = &off_10166FF90;
  *&v53 = v31;
  v51 = v15;
  *&v50 = v32;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v33 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  UUID.init()();
  *(v19 + 27) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v19 + 30) = 0;
  v34 = OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isFindMyAppInstalledCached;
  if (qword_101695158 != -1)
  {
    swift_once();
  }

  v35 = &v19[v34];
  v36 = type metadata accessor for PrefixedDefaults();
  v37 = sub_1000076D4(v36, qword_1016C37A0);
  v38 = sub_1000BC4D4(&qword_101698E40, &unk_101390D30);
  v39 = *(*(v36 - 8) + 16);
  v39(&v35[*(v38 + 40)], v37, v36);
  v35[16] = 1;
  strcpy(v35, "findmyappstate");
  v35[15] = -18;
  v40 = &v19[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached];
  v39(&v19[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__isThisMeDeviceCached + *(v38 + 40)], v37, v36);
  v40[16] = 0;
  *v40 = 0xD000000000000011;
  *(v40 + 1) = 0x800000010134CD20;
  v41 = &v19[OBJC_IVAR____TtC12searchpartyd20SharesRemovalManager__revokedCircles];
  v42 = sub_1000BC4D4(&qword_101698E48, &qword_1013F8A00);
  v39(&v41[*(v42 + 40)], v37, v36);
  strcpy(v41, "revokedcircles");
  v41[15] = -18;
  *(v41 + 2) = _swiftEmptyArrayStorage;
  v43 = v47;
  *(v19 + 28) = v46;
  *(v19 + 29) = v43;
  sub_10000A748(&v53, (v19 + 112));
  sub_10000A748(&v50, (v19 + 152));
  *(v19 + 24) = v49;
  *(v19 + 25) = &off_10162A850;
  *(v19 + 26) = v48;
  sub_100007BAC(v56);
  sub_100007BAC(v59);
  return v19;
}

uint64_t sub_1001B9848()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A7194(v4, v0 + v3);
}

void sub_1001B9924(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    v10 = *(a1 + 184);
    if (sub_100F9CA44(v8))
    {

      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = a1;

      sub_10025EDD4(0, 0, v7, &unk_101390BA0, v12);

      a2(1, 0);

      return;
    }
  }

  type metadata accessor for SPBeaconSharingError(0);
  v14 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v13 = v15;
  a2(0, v15);
}

void sub_1001B9B28(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(a1 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v4 = [objc_opt_self() currentConnection];
  if (v4)
  {
    v5 = v4;
    v6 = *(v3 + 184);
    v7 = *(v6 + 16);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    v9 = swift_allocObject();
    v9[2] = sub_1001BCDB8;
    v9[3] = v8;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_101611F70;
    v10 = _Block_copy(aBlock);

    v11 = v5;

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      (*(a2 + 16))(a2, 1, 0);
    }
  }

  else
  {
    type metadata accessor for SPBeaconSharingError(0);
    aBlock[6] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v12);
  }
}

char *sub_1001B9D8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 14) = 0xD000000000000014;
  *(v2 + 15) = 0x80000001013904B0;
  *(v2 + 19) = 2;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010749F0(v27);

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  *(v3 + 20) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  v7 = type metadata accessor for XPCSessionManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v3 + 21) = XPCSessionManager.init(name:)();
  *(v3 + 22) = 0;
  type metadata accessor for BeaconSharingServiceConnections(0);
  swift_allocObject();
  *(v3 + 23) = sub_100F04FA4();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = qword_10177B2E8;
  v29 = &off_101632E88;
  v30 = &off_101613BE0;
  v28 = type metadata accessor for BeaconObservationStore();
  *&v27 = v10;
  type metadata accessor for MemberCircleRevokeManager();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v27, (v11 + 32));
  *(v3 + 25) = v11;
  type metadata accessor for MessagingQueryController();
  swift_allocObject();

  *(v3 + 26) = sub_10126766C(0xD00000000000001BLL, 0x800000010134CCA0);
  swift_allocObject();
  *(v3 + 27) = sub_10126766C(0xD000000000000037, 0x800000010134CCC0);
  *(v3 + 28) = 0;
  *(v3 + 29) = 0;
  *(v3 + 30) = _swiftEmptyArrayStorage;
  *(v3 + 31) = &_swiftEmptySetSingleton;
  v12 = type metadata accessor for DeviceIdentityUtility();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v16 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  *(v15 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v15 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v15 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 1;
  *(v3 + 32) = v15;
  *(v3 + 33) = 0;
  v18 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask;
  v19 = type metadata accessor for BeaconSharingService.PendingExpirationTask(0);
  (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_dailySharesCountAnalyticsThrottle;
  *&v3[v20] = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  *(v3 + 17) = a1;
  type metadata accessor for SharingCircleKeyManager();
  v21 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v22 + 112) = 0;
  *(v22 + 120) = 0;
  *(v21 + 112) = v22;
  *(v21 + 120) = a1;
  *(v3 + 16) = v21;
  *(v3 + 24) = a2;
  v23 = qword_101695510;
  swift_retain_n();

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_10177CEA0;
  type metadata accessor for AppDeletionObserver();
  v25 = swift_allocObject();
  v25[4] = 0;
  v25[5] = 0;
  v25[2] = 0xD000000000000010;
  v25[3] = 0x800000010134AAC0;

  *(v3 + 18) = sub_1001B9320(a2, a1, &unk_101390D20, a1, v24, v25);
  *(*(v3 + 25) + 24) = &off_101610E20;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_1001BA24C()
{
  sub_1001BAFE0();
  v0 = NSXPCConnection.hasEntitlement<A>(_:)();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v0 & 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharingService: Received new XPC connection (has entitlement: %{BOOL}d).", v4, 8u);
  }

  return v0 & 1;
}

void sub_1001BA354(uint64_t a1)
{
  v3 = type metadata accessor for SharingCircleSecret();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8 <= 9)
  {
    if (v8)
    {
      v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v14 = *(v5 + 72);
      do
      {
        sub_1001BB2E0(v13, v7, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v7);
        sub_1001BA80C(v7, type metadata accessor for SharingCircleSecret);
        if (v1)
        {
          break;
        }

        v13 += v14;
        --v8;
      }

      while (v8);
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

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = 9;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v8;

      _os_log_impl(&_mh_execute_header, v10, v11, "More than %ld shared secrets - leaving them orphaned for later cleanup. Count: %ld.", v12, 0x16u);
    }

    else
    {
    }
  }
}

uint64_t sub_1001BA578()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1001881A8(v2, v3, v4);
}

uint64_t sub_1001BA620()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_100188514(v2, v3, v4);
}

uint64_t sub_1001BA6C8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1001BA80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BA8B4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (v6 + *(v7 + 80) + 9) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v6;
  v13 = *(v1 + v6);
  v14 = *(v12 + 8);
  v15 = *(v1 + v9);
  v16 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014744;

  return sub_1001B67C0(a1, v10, v11, v1 + v5, v13, v14, v1 + v8, v15);
}