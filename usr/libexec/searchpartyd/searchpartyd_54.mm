uint64_t sub_1005AC39C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for APSNotificationService();
  v9 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194B0(&qword_101698D40, type metadata accessor for APSNotificationService);
  *v6 = v12;
  v6[1] = sub_1005AC578;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005AC578(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = sub_1005AD5A8;
  }

  else
  {
    v9 = v4[16];

    v8 = sub_1005AC6B0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1005AC6B0()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (*(v2 + 16))
  {

    v3 = sub_100771D58(0xD000000000000023, 0x800000010134CBA0);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      sub_100017D5C(*v5, v7);

      v0[22] = v6;
      v0[23] = v7;
      v8 = v0[7];

      return _swift_task_switch(sub_1005ACC54, v8, 0);
    }
  }

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1005AC818;
  v10 = v0[18];

  return sub_100E7DE18(0xD000000000000023, 0x800000010134CBA0, 500000000000000000, 0);
}

uint64_t sub_1005AC818(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = sub_1005AC950;
  }

  else
  {
    v6[22] = a1;
    v6[23] = a2;
    v9 = v6[7];
    v10 = sub_1005ACC54;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1005AC950()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[14];
  sub_1005C31F8(v0[6], v0[12], type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = v0[12];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v7 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1005C32E0(v6, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v28);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not read APS token for %{private,mask.hash}s, error: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v10);
  }

  else
  {
    v17 = v0[12];

    sub_1005C32E0(v17, type metadata accessor for OwnerSharingCircle);
  }

  v18 = v0[21];
  v19 = v0[18];
  sub_1005C3340();
  swift_allocError();
  *v20 = 8;
  swift_willThrow();

  v22 = v0[12];
  v21 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1005ACC54()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_1005ACC78, v1, 0);
}

uint64_t sub_1005ACC78()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005ACD58;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005ACD58()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1005ACE70, v2, 0);
}

uint64_t sub_1005ACE70()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[26] = v0[5];
  v3 = *(v1 + 20);
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1005ACF1C;

  return sub_1012DB570(v2 + v3);
}

uint64_t sub_1005ACF1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 208);
  v6 = *(*v2 + 56);
  v8 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_1005AD050, v6, 0);
}

uint64_t sub_1005AD050()
{
  v36 = v0;
  v1 = v0[29];
  v3 = v0[22];
  v2 = v0[23];
  if (v1 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v0[28];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[29];
  }

  sub_100017D5C(v0[22], v0[23]);
  v6 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v3, v2);
  sub_100016590(v3, v2);
  if (v6)
  {
    v7 = v0[14];
    sub_1005C31F8(v0[6], v0[11], type metadata accessor for OwnerSharingCircle);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[18];
    v12 = v0[11];
    if (v10)
    {
      v34 = v0[23];
      v13 = v0[8];
      v33 = v0[22];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = *(v13 + 20);
      type metadata accessor for UUID();
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
      v20 = sub_1000136BC(v17, v19, &v35);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Already registered APS for %{private,mask.hash}s.", v14, 0x16u);
      sub_100007BAC(v15);

      sub_100016590(v33, v34);
      sub_100016590(v4, v5);
    }

    else
    {
      sub_100016590(v0[22], v0[23]);
      sub_100016590(v4, v5);

      sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
    }

    v28 = v0[12];
    v27 = v0[13];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v21 = swift_task_alloc();
    v0[30] = v21;
    *v21 = v0;
    v21[1] = sub_1005AD3B0;
    v22 = v0[22];
    v23 = v0[23];
    v24 = v0[6];
    v25 = v0[7];

    return sub_1005AD988(v24, v22, v23);
  }
}

uint64_t sub_1005AD3B0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1005AD64C;
  }

  else
  {
    v6 = sub_1005AD4DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AD4DC()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[18];
  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[28];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v0[29];
  }

  sub_100016590(v5, v6);

  sub_100016590(v2, v3);
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005AD5A8()
{
  v1 = v0[16];

  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005AD64C()
{
  v36 = v0;
  v1 = v0[31];
  v2 = v0[14];
  sub_1005C31F8(v0[6], v0[9], type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[18];
  v10 = v0[9];
  if (v5)
  {
    v11 = v0[8];
    if (v7 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v0[28];
    }

    if (v7 >> 60 == 15)
    {
      v7 = 0xC000000000000000;
    }

    v33 = v7;
    v34 = v12;
    v31 = v0[22];
    v32 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = *(v11 + 24);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v35);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error while registering APNS token with FindMy service for beacon %{private,mask.hash}s: error: %{public}@", v13, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v15);

    sub_100016590(v31, v32);
    sub_100016590(v34, v33);
  }

  else
  {
    if (v7 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      v22 = v0[28];
    }

    if (v7 >> 60 == 15)
    {
      v23 = 0xC000000000000000;
    }

    else
    {
      v23 = v0[29];
    }

    sub_100016590(v0[22], v0[23]);
    sub_100016590(v22, v23);

    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  }

  v25 = v0[12];
  v24 = v0[13];
  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[9];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1005AD988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for OwnerSharingCircle();
  v4[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v9 = *(v8 + 64) + 15;
  v4[18] = swift_task_alloc();
  v10 = *(*(type metadata accessor for KeyDropJoinToken(0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1005ADAB4, v3, 0);
}

uint64_t sub_1005ADAB4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = sub_1000035D0((*(v0 + 96) + 176), *(*(v0 + 96) + 200));
  v4 = *(v1 + 20);
  *(v0 + 240) = v4;
  v5 = *v3;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1005ADB74;
  v7 = *(v0 + 152);

  return sub_100CFD9C0(v7, v2 + v4);
}

uint64_t sub_1005ADB74()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1005ADE74;
  }

  else
  {
    v6 = sub_1005ADCA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005ADCA0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  type metadata accessor for SharingCircleKeyManager();
  sub_100C710B4(v3);
  if (v1)
  {
    sub_1005C32E0(*(v0 + 152), type metadata accessor for KeyDropJoinToken);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = sub_1000035D0((*(v0 + 96) + 112), *(*(v0 + 96) + 136));
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    inited = swift_initStackObject();
    *(v0 + 176) = inited;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = v12;
    *(inited + 40) = v11;
    v16 = *v14;
    sub_100017D5C(v12, v11);
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = sub_1005ADEFC;
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);

    return sub_1001E6DD0(v13 + v10, 4, v18, inited, v19);
  }
}

uint64_t sub_1005ADE74()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[14];
  v4 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005ADEFC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = v1;

  v7 = *(v4 + 176);
  v8 = *(v4 + 96);
  if (v1)
  {
    swift_setDeallocating();
    sub_10020545C(v7 + 32);
    v9 = sub_1005AE3B4;
  }

  else
  {
    *(v4 + 244) = a1 & 1;
    swift_setDeallocating();
    sub_10020545C(v7 + 32);
    v9 = sub_1005AE074;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1005AE074()
{
  v30 = v0;
  if (*(v0 + 244) == 1)
  {
    v1 = *(*(v0 + 96) + 168);
    *(v0 + 200) = v1;

    return _swift_task_switch(sub_1005AE470, v1, 0);
  }

  else
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 128);
      v8 = *(v0 + 104);
      v9 = *(v0 + 112);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v8 + 20);
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v29);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Server returned error while registering apns token for share %{private,mask.hash}s.", v10, 0x16u);
      sub_100007BAC(v11);
    }

    else
    {
      v17 = *(v0 + 112);

      sub_1005C32E0(v17, type metadata accessor for OwnerSharingCircle);
    }

    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = *(v0 + 136);
    sub_1005C3340();
    swift_allocError();
    *v22 = 10;
    swift_willThrow();
    (*(v21 + 8))(v18, v20);
    sub_1005C32E0(v19, type metadata accessor for KeyDropJoinToken);
    v24 = *(v0 + 144);
    v23 = *(v0 + 152);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1005AE3B4()
{
  v1 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1005C32E0(v1, type metadata accessor for KeyDropJoinToken);
  v2 = v0[24];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AE470()
{
  v1 = *(v0 + 200);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005AE550;
  v5 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005AE550()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_1005AE668, v2, 0);
}

uint64_t sub_1005AE668()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 72);
  *(v0 + 216) = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_1005AE714;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return sub_1012DBA0C(v2 + v1, v4, v5);
}

uint64_t sub_1005AE714()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 96);

  if (v0)
  {
    v7 = sub_1005AEB50;
  }

  else
  {
    v7 = sub_1005AE85C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005AE85C()
{
  v30 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  if (v6)
  {
    v28 = v0[19];
    v12 = v0[13];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = *(v12 + 20);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v7;
    v18 = v17;
    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v29);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "Saved APS registration for %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v14);

    (*(v9 + 8))(v27, v10);
    v20 = v28;
  }

  else
  {

    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
    (*(v9 + 8))(v7, v10);
    v20 = v8;
  }

  sub_1005C32E0(v20, type metadata accessor for KeyDropJoinToken);
  v22 = v0[18];
  v21 = v0[19];
  v24 = v0[14];
  v23 = v0[15];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1005AEB50()
{
  v1 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_1005C32E0(v1, type metadata accessor for KeyDropJoinToken);
  v2 = v0[29];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005AEC0C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3[13] = v10;
  v3[14] = *(v10 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005AEDE8, v2, 0);
}

uint64_t sub_1005AEDE8()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = *(v0[6] + 168);
  v0[19] = v5;
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_1005AEEAC, v5, 0);
}

uint64_t sub_1005AEEAC()
{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  sub_1000D2A70(v0[16], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[22] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[23] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1005AF028;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_1005AF028()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 152);
  v5 = *v0;

  return _swift_task_switch(sub_1005AF154, v3, 0);
}

uint64_t sub_1005AF154()
{
  v1 = v0[6];
  sub_10000B3A8(v0[16], &qword_1016980D0, &unk_10138F3B0);
  v0[24] = v0[2];

  return _swift_task_switch(sub_1005AF1D8, v1, 0);
}

uint64_t sub_1005AF1D8()
{
  v44 = v0;
  v1 = v0[24];
  if (*(v1 + 16))
  {
    v2 = *(v0[11] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[18], type metadata accessor for OwnerSharingCircle);
    v3 = 0;
    v4 = v0[24];
  }

  else
  {
    v3 = 1;
  }

  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[10];
  v8 = v0[11];

  (*(v8 + 56))(v5, v3, 1, v7);
  sub_1000D2A70(v5, v6, &unk_1016AFA00, &qword_10138C4D0);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[17];
  if (v9 == 1)
  {
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[5];
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177AE28);
    v12(v13, v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = sub_1000136BC(v25, v27, &v43);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Delegation doesnt exist for beacon %{private,mask.hash}s", v23, 0x16u);
      sub_100007BAC(v24);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v34 = v0[18];
    sub_1005C3340();
    swift_allocError();
    *v35 = 5;
    swift_willThrow();
    sub_10000B3A8(v34, &unk_1016AFA00, &qword_10138C4D0);
    v37 = v0[17];
    v36 = v0[18];
    v39 = v0[15];
    v38 = v0[16];
    v40 = v0[12];
    v41 = v0[9];

    v42 = v0[1];

    return v42();
  }

  else
  {
    sub_1005C3260(v10, v0[12], type metadata accessor for OwnerSharingCircle);
    v29 = swift_task_alloc();
    v0[25] = v29;
    *v29 = v0;
    v29[1] = sub_1005AF61C;
    v30 = v0[12];
    v31 = v0[6];
    v32 = v0[4];

    return sub_1005B2110(v32, v30);
  }
}

uint64_t sub_1005AF61C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1005AF828;
  }

  else
  {
    v6 = sub_1005AF748;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AF748()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005AF828()
{
  *(v0 + 24) = *(v0 + 208);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 248) == 21;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 80);
    v16 = *(v0 + 208);

    v17 = *(v15 + 20);
    v18 = swift_task_alloc();
    *(v0 + 216) = v18;
    *v18 = v0;
    v18[1] = sub_1005AFA04;
    v19 = *(v0 + 48);

    return sub_1005B0CD4(v14 + v17);
  }

  else
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 96);
    v4 = *(v0 + 24);

    swift_willThrow();
    sub_1005C32E0(v3, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    v5 = *(v0 + 208);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v11 = *(v0 + 72);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1005AFA04()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_1005AFD90, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[29] = v5;
    *v5 = v3;
    v5[1] = sub_1005AFB7C;
    v6 = v3[12];
    v7 = v3[6];
    v8 = v3[4];

    return sub_1005B2110(v8, v6);
  }
}

uint64_t sub_1005AFB7C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1005AFE78;
  }

  else
  {
    v6 = sub_1005AFCA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005AFCA8()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v2 = v0[3];

  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005AFD90()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v2 = v0[3];

  v3 = v0[28];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005AFE78()
{
  v1 = v0[18];
  sub_1005C32E0(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v2 = v0[3];

  v3 = v0[30];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005AFF60(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v2[12] = *(v9 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005B00D8, v1, 0);
}

uint64_t sub_1005B00D8()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[4];
    v7 = type metadata accessor for SharingCircleSecret();
    v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
    v9 = v1 + *(v7 + 24);
    v10 = *(v5 + 16);
    v0[16] = v10;
    v0[17] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v2, v9 + v8, v4);
    v11 = *(v5 + 32);
    v0[18] = v11;
    v0[19] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v3, v2, v4);
    v12 = *(v6 + 168);
    v0[20] = v12;

    return _swift_task_switch(sub_1005B02A0, v12, 0);
  }

  else
  {
    sub_1005C3340();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    v17 = v0[9];
    v18 = v0[6];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1005B02A0()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  (*(v0 + 128))(v5, *(v0 + 120), v6);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v1;
  v4(v9 + v8, v5, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_1005B03E8;
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3A50, v9, v13);
}

uint64_t sub_1005B03E8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1005B0514, v3, 0);
}

uint64_t sub_1005B0514()
{
  v1 = v0[7];
  v2 = v0[6];
  if ((*(v0[8] + 48))(v2, 1, v1) == 1)
  {
    (*(v0[11] + 8))(v0[15], v0[10]);
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
LABEL_8:
    sub_1005C3340();
    swift_allocError();
    *v8 = 5;
    swift_willThrow();
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[6];

    v14 = v0[1];

    return v14();
  }

  v3 = v0[9];
  sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
  if (*(v3 + *(v1 + 36)) != 1)
  {
    v5 = v0[15];
    v6 = v0[10];
    v7 = v0[11];
    sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
    (*(v7 + 8))(v5, v6);
    goto LABEL_8;
  }

  v4 = v0[20];

  return _swift_task_switch(sub_1005B06F0, v4, 0);
}

uint64_t sub_1005B06F0()
{
  v1 = *(v0 + 160);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005B07D0;
  v5 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005B07D0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_1005B08E8, v2, 0);
}

uint64_t sub_1005B08E8()
{
  v1 = v0[4];
  v0[24] = v0[2];
  return _swift_task_switch(sub_1005B090C, v1, 0);
}

uint64_t sub_1005B090C()
{
  v0[25] = *(v0[24] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1005B09CC;
  v2 = v0[3];

  return sub_10069208C(v2);
}

uint64_t sub_1005B09CC()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 32);

  if (v0)
  {
    v7 = sub_1005B0BF8;
  }

  else
  {
    v7 = sub_1005B0B14;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005B0B14()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[6];
  sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
  (*(v5 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005B0BF8()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  sub_1005C32E0(v0[9], type metadata accessor for OwnerSharingCircle);
  (*(v3 + 8))(v1, v2);
  v4 = v0[27];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005B0CD4(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for UUID();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005B0E4C, v1, 0);
}

uint64_t sub_1005B0E4C()
{
  v1 = *(*(v0 + 136) + 168);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_1005B0E70, v1, 0);
}

uint64_t sub_1005B0E70()
{
  v1 = *(v0 + 224);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005B0F50;
  v5 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005B0F50()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_1005B1068, v2, 0);
}

uint64_t sub_1005B1068()
{
  v1 = v0[17];
  v0[30] = v0[15];
  return _swift_task_switch(sub_1005B108C, v1, 0);
}

uint64_t sub_1005B108C()
{
  v0[31] = *(v0[30] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_1005B114C;
  v2 = v0[16];

  return sub_10069176C(v2);
}

uint64_t sub_1005B114C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v10 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[17];
    v6 = sub_1005B2060;
  }

  else
  {
    v7 = v3[31];
    v8 = v3[17];

    v6 = sub_1005B1274;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B1274()
{
  v106 = v0;
  v1 = v0[33];
  v103 = *(v1 + 16);
  if (!v103)
  {

    if (qword_101694778 == -1)
    {
LABEL_6:
      v40 = v0[19];
      v39 = v0[20];
      v41 = v0[18];
      v42 = v0[16];
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177AE28);
      (*(v40 + 16))(v39, v42, v41);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v48 = v0[19];
      v47 = v0[20];
      v49 = v0[18];
      if (v46)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v105 = v51;
        *v50 = 141558275;
        *(v50 + 4) = 1752392040;
        *(v50 + 12) = 2081;
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        v54 = v53;
        (*(v48 + 8))(v47, v49);
        v55 = sub_1000136BC(v52, v54, &v105);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v44, v45, "No secrets available to restore for %{private,mask.hash}s.", v50, 0x16u);
        sub_100007BAC(v51);
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      v92 = v0[26];
      v91 = v0[27];
      v93 = v0[25];
      v95 = v0[21];
      v94 = v0[22];
      v96 = v0[20];

      v38 = v0[1];
      goto LABEL_23;
    }

LABEL_29:
    swift_once();
    goto LABEL_6;
  }

  v2 = v0[24];
  v104 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v100 = (inited + 24);
  v6 = *(v1 + 16);

  if (!v6)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v7 = v0[34];
  v8 = v4;
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[18];
  v102 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_1005C31F8(v0[33] + v12, v10, type metadata accessor for SharingCircleSecret);
  v13 = v9 + v3[5];
  UUID.init()();
  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v16 = v3[6];
  v0[35] = v15;
  v17 = v11;
  v18 = v15;
  v15(v9 + v16, v10 + v16, v17);
  v19 = (v10 + v3[8]);
  v20 = *v19;
  v21 = v19[1];
  v22 = (v10 + v3[7]);
  v23 = *v22;
  v24 = v22[1];
  *v9 = 0;
  *(v104 + 8) = 0xC000000000000000;
  v25 = (v9 + v3[8]);
  *v25 = v20;
  v25[1] = v21;
  v26 = (v9 + v3[7]);
  *v26 = v23;
  v26[1] = v24;
  sub_100017D5C(v20, v21);

  sub_100D4346C(v9);
  if (v7)
  {
    v27 = v0[33];
    v29 = v0[25];
    v28 = v0[26];

    swift_setDeallocating();
    v30 = *(inited + 16);

    v31 = *(inited + 24);

    sub_1005C32E0(v29, type metadata accessor for SharingCircleSecret);
    sub_1005C32E0(v28, type metadata accessor for SharingCircleSecret);
    v33 = v0[26];
    v32 = v0[27];
    v34 = v0[25];
    v36 = v0[21];
    v35 = v0[22];
    v37 = v0[20];

    v38 = v0[1];
LABEL_23:

    return v38();
  }

  v101 = v18;
  v56 = v0[26];
  sub_1005C32E0(v0[25], type metadata accessor for SharingCircleSecret);
  sub_1005C32E0(v56, type metadata accessor for SharingCircleSecret);
  if (v103 != 1)
  {
    v57 = v14;
    v58 = v102 + v12;
    v59 = 1;
    while (v59 < *(v1 + 16))
    {
      v60 = v1;
      v62 = v0[25];
      v61 = v0[26];
      v63 = v57;
      v64 = v0[18];
      sub_1005C31F8(v0[33] + v58, v61, type metadata accessor for SharingCircleSecret);
      v65 = v62 + v3[5];
      UUID.init()();
      v66 = v3[6];
      v0[35] = v101;
      v67 = v64;
      v57 = v63;
      v101(v62 + v66, v61 + v66, v67);
      v68 = (v61 + v3[8]);
      v69 = *v68;
      v70 = v68[1];
      v71 = (v61 + v3[7]);
      v72 = *v71;
      v73 = v71[1];
      *v62 = 0;
      *(v104 + 8) = 0xC000000000000000;
      v74 = (v62 + v3[8]);
      *v74 = v69;
      v74[1] = v70;
      v75 = (v62 + v3[7]);
      *v75 = v72;
      v75[1] = v73;
      sub_100017D5C(v69, v70);

      sub_100D4346C(v62);
      v76 = v0[26];
      ++v59;
      sub_1005C32E0(v0[25], type metadata accessor for SharingCircleSecret);
      sub_1005C32E0(v76, type metadata accessor for SharingCircleSecret);
      v58 += v102;
      v1 = v60;
      if (v103 == v59)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_28;
  }

LABEL_12:

  swift_beginAccess();
  v77 = *(inited + 16);
  if (*(v77 + 16))
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v78 = *v100;
  if ((*v100 & 0xC000000000000001) != 0)
  {
    if (v78 < 0)
    {
      v79 = *v100;
    }

    v80 = *v100;

    v81 = __CocoaDictionary.count.getter();

    if (v81)
    {
      goto LABEL_17;
    }

LABEL_27:
    v97 = v0[27];

    v98 = type metadata accessor for CloudKitChangeSet(0);
    (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
    goto LABEL_18;
  }

  if (!*(v78 + 16))
  {
    goto LABEL_27;
  }

LABEL_17:
  v82 = v0[27];
  v83 = v0[22];
  v84 = v0[18];
  v85 = v0[19];
  UUID.init()();
  swift_beginAccess();
  v86 = *(inited + 24);

  v88 = sub_1003A8B54(v87);
  swift_bridgeObjectRelease_n();
  (*(v85 + 32))(v82, v83, v84);
  v89 = type metadata accessor for CloudKitChangeSet(0);
  *(v82 + *(v89 + 20)) = v88;
  *(v82 + *(v89 + 24)) = v77;
  (*(*(v89 - 8) + 56))(v82, 0, 1, v89);
LABEL_18:
  v90 = v0[28];

  return _swift_task_switch(sub_1005B1A04, v90, 0);
}

uint64_t sub_1005B1A2C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = swift_task_alloc();
  v0[37] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_1005B1B24;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_1005B1B24()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  if (v0)
  {
    v6 = v2[33];

    v7 = sub_1005B1F84;
  }

  else
  {

    v7 = sub_1005B1C6C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005B1C88()
{
  v35 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[19] + 16;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  v1(v3, v5, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[33];
  v12 = v0[27];
  v13 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  if (v10)
  {
    v33 = v0[27];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v17;
    *v16 = 134218499;
    v18 = *(v11 + 16);

    *(v16 + 4) = v18;

    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_1000136BC(v19, v21, &v34);

    *(v16 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "Restored %ld secrets for %{private,mask.hash}s.", v16, 0x20u);
    sub_100007BAC(v17);

    v23 = v33;
  }

  else
  {
    v24 = v0[33];
    swift_bridgeObjectRelease_n();

    (*(v14 + 8))(v13, v15);
    v23 = v12;
  }

  sub_10000B3A8(v23, &qword_1016975C8, &qword_10138C1F0);
  v26 = v0[26];
  v25 = v0[27];
  v27 = v0[25];
  v29 = v0[21];
  v28 = v0[22];
  v30 = v0[20];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1005B1FA0()
{
  sub_10000B3A8(v0[27], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[39];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005B2060()
{
  v1 = v0[31];

  v2 = v0[34];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005B2110(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v5[3] = a2;
  v5[4] = v2;
  v5[2] = a1;
  v7 = type metadata accessor for OwnerSharingCircle();
  v5[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[11] = v12;
  *v12 = v5;
  v12[1] = sub_1005B225C;

  return sub_1005AB064(a1, a2);
}

uint64_t sub_1005B225C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1005B26FC;
  }

  else
  {
    v6 = sub_1005B2388;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B2388()
{
  v32 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  (*(v2 + 16))(v1, v6, v3);
  sub_1005C31F8(v5, v4, type metadata accessor for OwnerSharingCircle);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  if (v10)
  {
    v30 = v0[5];
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 141558787;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2085;
    sub_1000194B0(&qword_1016B14E0, &type metadata accessor for URL);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    v19 = sub_1000136BC(v16, v18, &v31);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = *(v30 + 24);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v31);

    *(v15 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "URL fetched: %{sensitive,mask.hash}s for beacon %{private,mask.hash}s.", v15, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_1005C32E0(v13, type metadata accessor for OwnerSharingCircle);
    (*(v12 + 8))(v11, v14);
  }

  v25 = v0[10];
  v26 = v0[6];
  v27 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005B26FC()
{
  v28 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = v0[5];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v8 + 24);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v27);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failure in fetching URL for beacon %{private,mask.hash}s %{public}@.", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = v0[6];

    sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
  }

  v20 = v0[12];
  v21 = v0[10];
  v23 = v0[6];
  v22 = v0[7];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[12];

  return v24();
}

uint64_t sub_1005B29FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005B2AD8, v1, 0);
}

uint64_t sub_1005B2AD8()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = *(v0[4] + 168);
  v0[9] = v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);

  return _swift_task_switch(sub_1005B2BCC, v3, 0);
}

uint64_t sub_1005B2BCC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  sub_1000D2A70(v0[8], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1005B2D48;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_1005B2D48()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return _swift_task_switch(sub_1005B2E74, v3, 0);
}

uint64_t sub_1005B2E74()
{
  v1 = v0[4];
  sub_10000B3A8(v0[8], &qword_1016980D0, &unk_10138F3B0);
  v0[12] = v0[2];

  return _swift_task_switch(sub_1005B2EF8, v1, 0);
}

uint64_t sub_1005B2EF8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v0[12] + 16);

  v4 = v0[1];

  return v4(v3 != 0);
}

uint64_t sub_1005B2F84()
{
  v1[3] = v0;
  v2 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v1[4] = v2;
  v3 = *(v2 + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[6] = v4;
  v1[7] = *(v4 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1005B30B8, v0, 0);
}

uint64_t sub_1005B30B8()
{
  v1 = v0[9];
  v2 = *(v0[3] + 168);
  v0[10] = v2;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_1005B3168, v2, 0);
}

uint64_t sub_1005B3168()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  sub_1000D2A70(v0[9], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1005B32E4;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_1005B32E4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1005B3410, v3, 0);
}

uint64_t sub_1005B3410()
{
  v1 = v0[3];
  sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
  v0[13] = v0[2];

  return _swift_task_switch(sub_1005B3494, v1, 0);
}

uint64_t sub_1005B3494()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  *(v0 + 112) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    *(v0 + 120) = type metadata accessor for DelegatedShareUseCase();
    *(v0 + 152) = *(v3 + 80);
    *(v0 + 128) = 0;
    if (*(v1 + 16))
    {
      v4 = 0;
      while (1)
      {
        v5 = *(v0 + 120);
        v6 = *(v0 + 40);
        sub_1005C31F8(v1 + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(*(v0 + 32) + 72) * v4, v6, type metadata accessor for OwnerSharingCircle);
        if (sub_10059DE04(v6))
        {
          break;
        }

        v7 = *(v0 + 112);
        v8 = *(v0 + 128) + 1;
        sub_1005C32E0(*(v0 + 40), type metadata accessor for OwnerSharingCircle);
        if (v8 == v7)
        {
          v13 = *(v0 + 104);
          goto LABEL_12;
        }

        v4 = *(v0 + 128) + 1;
        *(v0 + 128) = v4;
        v1 = *(v0 + 104);
        if (v4 >= *(v1 + 16))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1005B3670;
    v10 = *(v0 + 40);
    v11 = *(v0 + 24);

    return sub_1005B56F8(v10, 0, 0, 2);
  }

  else
  {
LABEL_12:
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 40);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1005B3670()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 24);

    v6 = sub_1005B393C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_1005B3798;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005B3798()
{
  while (1)
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 128) + 1;
    result = sub_1005C32E0(*(v0 + 40), type metadata accessor for OwnerSharingCircle);
    if (v2 == v1)
    {
      break;
    }

    v4 = *(v0 + 128) + 1;
    *(v0 + 128) = v4;
    v5 = *(v0 + 104);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 40);
    sub_1005C31F8(v5 + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + *(*(v0 + 32) + 72) * v4, v7, type metadata accessor for OwnerSharingCircle);
    if (sub_10059DE04(v7))
    {
      v8 = swift_task_alloc();
      *(v0 + 136) = v8;
      *v8 = v0;
      v8[1] = sub_1005B3670;
      v9 = *(v0 + 40);
      v10 = *(v0 + 24);

      return sub_1005B56F8(v9, 0, 0, 2);
    }
  }

  v11 = *(v0 + 104);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 40);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1005B393C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1005C32E0(v0[5], type metadata accessor for OwnerSharingCircle);

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_1005B39DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v5[11] = *(v7 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5[22] = v11;
  v5[23] = *(v11 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1005B3C0C, v4, 0);
}

uint64_t sub_1005B3C0C()
{
  v1 = v0[25];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[4];
  v5 = *(v0[8] + 168);
  v0[28] = v5;
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);

  return _swift_task_switch(sub_1005B3CD4, v5, 0);
}

uint64_t sub_1005B3CD4()
{
  v1 = v0[28];
  v2 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  sub_1000D2A70(v0[25], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[31] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[32] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  v0[33] = v10;
  *v9 = v0;
  v9[1] = sub_1005B3E54;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_1005B3E54()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_1005B3F80, v3, 0);
}

uint64_t sub_1005B3F80()
{
  v1 = v0[8];
  sub_10000B3A8(v0[25], &qword_1016980D0, &unk_10138F3B0);
  v0[34] = v0[2];

  return _swift_task_switch(sub_1005B4004, v1, 0);
}

uint64_t sub_1005B4004()
{
  v95 = v0;
  v1 = v0[34];
  if (*(v1 + 16))
  {
    v2 = *(v0[17] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[27], type metadata accessor for OwnerSharingCircle);
    v3 = 0;
    v4 = v0[34];
  }

  else
  {
    v3 = 1;
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[16];
  v8 = v0[17];

  (*(v8 + 56))(v5, v3, 1, v7);
  sub_1000D2A70(v5, v6, &unk_1016AFA00, &qword_10138C4D0);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[26];
  if (v9 == 1)
  {
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[14];
    v14 = v0[9];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    v18 = v0[5];
    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177A560);
    v12(v13, v17, v14);
    sub_1003CB5AC(v18, v16, v15);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    sub_1005C339C(v18, v16, v15);
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[14];
    v25 = v0[9];
    v24 = v0[10];
    if (!v22)
    {

      (*(v24 + 8))(v23, v25);
      goto LABEL_33;
    }

    v26 = v0[7];
    v27 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v27 = 141558531;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v24 + 8))(v23, v25);
    v31 = sub_1000136BC(v28, v30, &v94);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2082;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v32 = 0x7865206572616873;
        v33 = 0xED00006465726970;
        goto LABEL_32;
      }

      if (v26 == 3)
      {
        v32 = 0x746E692061746164;
        v33 = 0xEE00797469726765;
        goto LABEL_32;
      }
    }

    else
    {
      if (!v26)
      {
        v32 = 0x73206C61756E616DLL;
        v33 = 0xEB00000000706F74;
        goto LABEL_32;
      }

      if (v26 == 1)
      {
        v32 = 0xD000000000000018;
        v33 = 0x800000010135B460;
LABEL_32:
        v67 = sub_1000136BC(v32, v33, &v94);

        *(v27 + 24) = v67;
        _os_log_impl(&_mh_execute_header, v20, v21, "Beacon %{private,mask.hash}s is not delegated. Didnt stop the share, reason %{public}s.", v27, 0x20u);
        swift_arrayDestroy();

LABEL_33:
        if (v0[7] > 3uLL)
        {
          v80 = v0[28];
          v0[39] = sub_101129F64(&off_101608C08);

          return _swift_task_switch(sub_1005B4C04, v80, 0);
        }

        else
        {
          sub_10000B3A8(v0[27], &unk_1016AFA00, &qword_10138C4D0);
          v69 = v0[26];
          v68 = v0[27];
          v71 = v0[24];
          v70 = v0[25];
          v73 = v0[20];
          v72 = v0[21];
          v75 = v0[18];
          v74 = v0[19];
          v77 = v0[14];
          v76 = v0[15];
          v90 = v0[13];
          v93 = v0[12];

          v78 = v0[1];

          return v78();
        }
      }
    }

    v33 = 0x800000010135B440;
    v32 = 0xD000000000000019;
    goto LABEL_32;
  }

  sub_1005C3260(v10, v0[21], type metadata accessor for OwnerSharingCircle);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v89 = v0[29];
  v91 = v0[30];
  v34 = v0[20];
  v35 = v0[21];
  v36 = v0[15];
  v37 = v0[9];
  v39 = v0[6];
  v38 = v0[7];
  v41 = v0[4];
  v40 = v0[5];
  v42 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v42, qword_10177A560);
  sub_1005C31F8(v35, v34, type metadata accessor for OwnerSharingCircle);
  v89(v36, v41, v37);
  sub_1003CB5AC(v40, v39, v38);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_1005C339C(v40, v39, v38);
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[20];
  if (v45)
  {
    v92 = v44;
    v48 = v0[15];
    v47 = v0[16];
    v50 = v0[9];
    v49 = v0[10];
    v88 = v0[7];
    v51 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v51 = 141559043;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    v52 = *(v47 + 20);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    sub_1005C32E0(v46, type metadata accessor for OwnerSharingCircle);
    v56 = sub_1000136BC(v53, v55, &v94);

    *(v51 + 14) = v56;
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2081;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v59 = v58;
    v60 = *(v49 + 8);
    v60(v48, v50);
    v61 = sub_1000136BC(v57, v59, &v94);

    *(v51 + 34) = v61;
    *(v51 + 42) = 2082;
    if (v88 > 1)
    {
      if (v88 == 2)
      {
        v62 = 0x7865206572616873;
        v63 = 0xED00006465726970;
        goto LABEL_41;
      }

      if (v88 == 3)
      {
        v62 = 0x746E692061746164;
        v63 = 0xEE00797469726765;
        goto LABEL_41;
      }
    }

    else
    {
      if (!v88)
      {
        v62 = 0x73206C61756E616DLL;
        v63 = 0xEB00000000706F74;
        goto LABEL_41;
      }

      if (v88 == 1)
      {
        v62 = 0xD000000000000018;
        v63 = 0x800000010135B460;
LABEL_41:
        v81 = sub_1000136BC(v62, v63, &v94);

        *(v51 + 44) = v81;
        _os_log_impl(&_mh_execute_header, v43, v92, "Stop delegated sharing of share id %{private,mask.hash}s, beacon id %{private,mask.hash}s due to %{public}s.", v51, 0x34u);
        swift_arrayDestroy();

        goto LABEL_42;
      }
    }

    v63 = 0x800000010135B440;
    v62 = 0xD000000000000019;
    goto LABEL_41;
  }

  v64 = v0[15];
  v65 = v0[9];
  v66 = v0[10];

  v60 = *(v66 + 8);
  v60(v64, v65);
  sub_1005C32E0(v46, type metadata accessor for OwnerSharingCircle);
LABEL_42:
  v0[36] = v60;
  v82 = swift_task_alloc();
  v0[37] = v82;
  *v82 = v0;
  v82[1] = sub_1005B49AC;
  v83 = v0[21];
  v84 = v0[7];
  v85 = v0[8];
  v86 = v0[5];
  v87 = v0[6];

  return sub_1005B56F8(v83, v86, v87, v84);
}

uint64_t sub_1005B49AC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1005B52D8;
  }

  else
  {
    v6 = sub_1005B4AD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B4AD8()
{
  v1 = v0[27];
  sub_1005C32E0(v0[21], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[14];
  v10 = v0[15];
  v14 = v0[13];
  v15 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005B4C04()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  (*(v0 + 232))(v4, *(v0 + 32), v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 320) = v10;
  *(v10 + 16) = v3;
  (*(v6 + 32))(v10 + v8, v4, v7);
  *(v10 + v9) = v1;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 328) = v12;
  *v12 = v0;
  v12[1] = sub_1005B4D74;
  v13 = *(v0 + 264);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v10, v13);
}

uint64_t sub_1005B4D74()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_1005B4EA0, v3, 0);
}

uint64_t sub_1005B4EA0()
{
  v1 = v0[8];
  v0[42] = v0[3];
  return _swift_task_switch(sub_1005B4EC4, v1, 0);
}

uint64_t sub_1005B4EC4()
{
  v1 = v0[42];
  if (*(v1 + 16))
  {
    v2 = *(v0[17] + 80);
    sub_1005C31F8(v1 + ((v2 + 32) & ~v2), v0[19], type metadata accessor for OwnerSharingCircle);

    v3 = swift_task_alloc();
    v0[43] = v3;
    *v3 = v0;
    v3[1] = sub_1005B509C;
    v6 = v0[19];
    v7 = v0[7];
    v8 = v0[8];

    return sub_1005C10E4(v6, v4, v5, v7);
  }

  else
  {
    sub_10000B3A8(v0[27], &unk_1016AFA00, &qword_10138C4D0);

    v11 = v0[26];
    v10 = v0[27];
    v13 = v0[24];
    v12 = v0[25];
    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    v19 = v0[14];
    v18 = v0[15];
    v21 = v0[13];
    v22 = v0[12];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1005B509C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1005B51AC, v2, 0);
}

uint64_t sub_1005B51AC()
{
  v1 = v0[27];
  sub_1005C32E0(v0[19], type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[14];
  v10 = v0[15];
  v14 = v0[13];
  v15 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005B52D8()
{
  v51 = v0;
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[4];
  sub_1005C31F8(v0[21], v0[18], type metadata accessor for OwnerSharingCircle);
  v4(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v45 = v0[36];
    v47 = v0[38];
    v10 = v0[18];
    v11 = v0[16];
    v12 = v0[9];
    v42 = v0[12];
    v43 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v13 = 141559043;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = *(v11 + 20);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, v50);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v45(v42, v12);
    v23 = sub_1000136BC(v20, v22, v50);

    *(v13 + 34) = v23;
    *(v13 + 42) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 44) = v24;
    *v14 = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error stopping delegated sharing of share id %{private,mask.hash}s, beacon id %{private,mask.hash}s due to %{public}@.", v13, 0x34u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[36];
    v26 = v0[18];
    v27 = v0[12];
    v28 = v0[9];
    v29 = v0[10];

    v25(v27, v28);
    sub_1005C32E0(v26, type metadata accessor for OwnerSharingCircle);
  }

  v30 = v0[38];
  v32 = v0[26];
  v31 = v0[27];
  v34 = v0[24];
  v33 = v0[25];
  v35 = v0[20];
  v36 = v0[21];
  v38 = v0[18];
  v37 = v0[19];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[13];
  v49 = v0[12];
  swift_willThrow();
  sub_1005C32E0(v36, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v31, &unk_1016AFA00, &qword_10138C4D0);

  v39 = v0[1];
  v40 = v0[38];

  return v39();
}

uint64_t sub_1005B56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = type metadata accessor for OwnerSharingCircle();
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v10 = *(v9 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[24] = v11;
  v12 = *(v11 - 8);
  v5[25] = v12;
  v5[26] = *(v12 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v5[29] = v13;
  v14 = *(v13 - 8);
  v5[30] = v14;
  v15 = *(v14 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v16 = swift_task_alloc();
  v5[36] = v16;
  *v16 = v5;
  v16[1] = sub_1005B5954;

  return sub_1005C10E4(a1, v17, v18, a4);
}

uint64_t sub_1005B5954()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1005B5A64, v2, 0);
}

uint64_t sub_1005B5A64()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = *(*(v0 + 112) + 168);
  *(v0 + 296) = v3;
  *(v0 + 304) = sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  *(v0 + 312) = *(v1 + 72);
  v4 = *(v1 + 80);
  *(v0 + 528) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 320) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_1005C31F8(v2, v6 + v5, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_1005B5B50, v3, 0);
}

uint64_t sub_1005B5B50()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = swift_allocObject();
  v0[41] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v5 = swift_task_alloc();
  v0[42] = v5;
  v6 = sub_1000BC4D4(&qword_1016A5418, &qword_1013B26F0);
  *v5 = v0;
  v5[1] = sub_1005B5C6C;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3A54, v3, v6);
}

uint64_t sub_1005B5C6C()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_1005B5D98, v3, 0);
}

uint64_t sub_1005B5D98()
{
  v1 = v0[14];
  v0[43] = v0[7];
  return _swift_task_switch(sub_1005B5DBC, v1, 0);
}

uint64_t sub_1005B5DBC()
{
  v81 = v0;
  v1 = *(v0 + 344);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  if (v2)
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 120);
    *(v0 + 360) = 0;
    if (*(v1 + 16))
    {
      v6 = *(v0 + 272);
      v7 = *(v0 + 280);
      v8 = *(v0 + 264);
      sub_1000D2A70(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v7, &qword_10169EFA8, &qword_1013B2700);
      v9 = *(v4 + 48);
      v10 = *(v7 + v9);
      v11 = *(v4 + 64);
      v12 = *(v7 + v11);
      sub_1005C3260(v7, v6, type metadata accessor for OwnerSharingCircle);
      *(v6 + v9) = v10;
      *(v6 + v11) = v12;
      sub_1000D2A70(v6, v8, &qword_10169EFA8, &qword_1013B2700);
      v13 = *(v8 + *(v4 + 48));

      v14 = *(v8 + *(v4 + 64));

      LODWORD(v7) = *(v8 + *(v5 + 28));
      sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
      if (v7 == 3)
      {
        v15 = *(v0 + 104);
        v16 = *(v0 + 112);
        if (v15 >= 4)
        {
          v17 = 2;
        }

        else
        {
          v17 = 0x30100u >> (8 * v15);
        }

        *(v0 + 536) = v17;
        v18 = *(v0 + 256);
        v19 = *(v0 + 224);
        v20 = *(v0 + 232);
        v21 = *(v0 + 192);
        v22 = *(v0 + 200);
        v23 = *(v0 + 120);
        sub_1000D2A70(*(v0 + 272), v18, &qword_10169EFA8, &qword_1013B2700);
        v24 = *(v18 + *(v20 + 48));

        v25 = *(v18 + *(v20 + 64));

        (*(v22 + 16))(v19, v18 + *(v23 + 20), v21);
        sub_1005C32E0(v18, type metadata accessor for OwnerSharingCircle);
        v26 = v16[17];
        v27 = v16[19];
        v28 = sub_1000035D0(v16 + 14, v26);
        *(v0 + 40) = v26;
        *(v0 + 48) = v27;
        v29 = sub_1000280DC((v0 + 16));
        (*(*(v26 - 8) + 16))(v29, v28, v26);

        return _swift_task_switch(sub_1005B64BC, 0, 0);
      }

      v33 = *(v0 + 344);

      if (qword_101694778 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_14:
    v34 = *(v0 + 272);
    v35 = *(v0 + 248);
    v36 = *(v0 + 184);
    v37 = *(v0 + 80);
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177AE28);
    sub_1000D2A70(v34, v35, &qword_10169EFA8, &qword_1013B2700);
    sub_1005C31F8(v37, v36, type metadata accessor for OwnerSharingCircle);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 272);
    if (v41)
    {
      v43 = *(v0 + 264);
      v44 = *(v0 + 248);
      v45 = *(v0 + 232);
      v72 = v40;
      v46 = *(v0 + 216);
      v47 = *(v0 + 192);
      v48 = *(v0 + 200);
      v74 = *(v0 + 184);
      v49 = *(v0 + 120);
      v78 = *(v0 + 272);
      v50 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v50 = 141558787;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      sub_1000D2A70(v44, v43, &qword_10169EFA8, &qword_1013B2700);
      v51 = *(v43 + *(v45 + 48));

      v52 = *(v43 + *(v45 + 64));

      (*(v48 + 16))(v46, v43 + *(v49 + 24), v47);
      sub_1005C32E0(v43, type metadata accessor for OwnerSharingCircle);
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v48 + 8))(v46, v47);
      sub_10000B3A8(v44, &qword_10169EFA8, &qword_1013B2700);
      v56 = sub_1000136BC(v53, v55, &v80);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2160;
      *(v50 + 24) = 1752392040;
      *(v50 + 32) = 2049;
      v57 = *(v74 + *(v49 + 28));
      sub_1005C32E0(v74, type metadata accessor for OwnerSharingCircle);
      *(v50 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v39, v72, "ERROR - stop delegated share of beacon %{private,mask.hash}s\nhas circle of wrong sharing type: %{private,mask.hash}ld", v50, 0x2Au);
      sub_100007BAC(v76);

      v58 = v78;
    }

    else
    {
      v59 = *(v0 + 248);
      sub_1005C32E0(*(v0 + 184), type metadata accessor for OwnerSharingCircle);

      sub_10000B3A8(v59, &qword_10169EFA8, &qword_1013B2700);
      v58 = v42;
    }

    sub_10000B3A8(v58, &qword_10169EFA8, &qword_1013B2700);
    v61 = *(v0 + 272);
    v60 = *(v0 + 280);
    v63 = *(v0 + 256);
    v62 = *(v0 + 264);
    v64 = *(v0 + 248);
    v66 = *(v0 + 216);
    v65 = *(v0 + 224);
    v68 = *(v0 + 176);
    v67 = *(v0 + 184);
    v69 = *(v0 + 168);
    v73 = *(v0 + 160);
    v75 = *(v0 + 152);
    v77 = *(v0 + 144);
    v79 = *(v0 + 136);

    v70 = *(v0 + 8);

    return v70();
  }

  v30 = swift_task_alloc();
  *(v0 + 384) = v30;
  *v30 = v0;
  v30[1] = sub_1005B75B4;
  v31 = *(v0 + 112);
  v32 = *(v0 + 80);

  return sub_1005B9D78(v32);
}

uint64_t sub_1005B64BC()
{
  v1 = *sub_1000035D0((v0 + 16), *(v0 + 40));
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  *v2 = v0;
  v2[1] = sub_1005B6568;
  v3 = *(v0 + 224);
  v4 = *(v0 + 536);

  return sub_100640C34(v3, 4, v4);
}

uint64_t sub_1005B6568(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 376) = v1;
    v7 = *(v4 + 112);
    (*(*(v4 + 200) + 8))(*(v4 + 224), *(v4 + 192));
    v8 = sub_1005B6EE8;
    v9 = v7;
  }

  else
  {
    *(v4 + 537) = a1 & 1;
    v8 = sub_1005B66BC;
    v9 = 0;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1005B66BC()
{
  if (*(v0 + 537) == 1)
  {
    v1 = *(v0 + 112);
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192));
    sub_100007BAC((v0 + 16));
    v2 = sub_1005B67B0;
  }

  else
  {
    sub_100111BE4();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    *(v0 + 376) = v3;
    v1 = *(v0 + 112);
    (*(*(v0 + 200) + 8))(*(v0 + 224), *(v0 + 192));
    v2 = sub_1005B6EE8;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_1005B67B0()
{
  v82 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 360) + 1;
  sub_10000B3A8(*(v0 + 272), &qword_10169EFA8, &qword_1013B2700);
  if (v2 == v1)
  {
    v3 = swift_task_alloc();
    *(v0 + 384) = v3;
    *v3 = v0;
    v3[1] = sub_1005B75B4;
    v4 = *(v0 + 112);
    v5 = *(v0 + 80);

    return sub_1005B9D78(v5);
  }

  v7 = *(v0 + 360) + 1;
  *(v0 + 360) = v7;
  v8 = *(v0 + 344);
  if (v7 >= *(v8 + 16))
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_14;
  }

  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  v12 = *(v0 + 232);
  v78 = *(v0 + 120);
  sub_1000D2A70(v8 + ((*(*(v0 + 240) + 80) + 32) & ~*(*(v0 + 240) + 80)) + *(*(v0 + 240) + 72) * v7, v9, &qword_10169EFA8, &qword_1013B2700);
  v13 = *(v12 + 48);
  v14 = *(v9 + v13);
  v15 = *(v12 + 64);
  v16 = *(v9 + v15);
  sub_1005C3260(v9, v10, type metadata accessor for OwnerSharingCircle);
  *(v10 + v13) = v14;
  *(v10 + v15) = v16;
  sub_1000D2A70(v10, v11, &qword_10169EFA8, &qword_1013B2700);
  v17 = *(v11 + *(v12 + 48));

  v18 = *(v11 + *(v12 + 64));

  LODWORD(v9) = *(v11 + *(v78 + 28));
  sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
  if (v9 == 3)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    if (v19 >= 4)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0x30100u >> (8 * v19);
    }

    *(v0 + 536) = v21;
    v22 = *(v0 + 256);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    v25 = *(v0 + 192);
    v26 = *(v0 + 200);
    v27 = *(v0 + 120);
    sub_1000D2A70(*(v0 + 272), v22, &qword_10169EFA8, &qword_1013B2700);
    v28 = *(v22 + *(v24 + 48));

    v29 = *(v22 + *(v24 + 64));

    (*(v26 + 16))(v23, v22 + *(v27 + 20), v25);
    sub_1005C32E0(v22, type metadata accessor for OwnerSharingCircle);
    v30 = v20[17];
    v31 = v20[19];
    v32 = sub_1000035D0(v20 + 14, v30);
    *(v0 + 40) = v30;
    *(v0 + 48) = v31;
    v33 = sub_1000280DC((v0 + 16));
    (*(*(v30 - 8) + 16))(v33, v32, v30);

    return _swift_task_switch(sub_1005B64BC, 0, 0);
  }

  v34 = *(v0 + 344);

  if (qword_101694778 != -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  v35 = *(v0 + 272);
  v36 = *(v0 + 248);
  v37 = *(v0 + 184);
  v38 = *(v0 + 80);
  v39 = type metadata accessor for Logger();
  sub_1000076D4(v39, qword_10177AE28);
  sub_1000D2A70(v35, v36, &qword_10169EFA8, &qword_1013B2700);
  sub_1005C31F8(v38, v37, type metadata accessor for OwnerSharingCircle);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 272);
  if (v42)
  {
    v44 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = *(v0 + 232);
    v72 = v41;
    v47 = *(v0 + 216);
    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    v74 = *(v0 + 184);
    v50 = *(v0 + 120);
    v79 = *(v0 + 272);
    v51 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81 = v76;
    *v51 = 141558787;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    sub_1000D2A70(v45, v44, &qword_10169EFA8, &qword_1013B2700);
    v52 = *(v44 + *(v46 + 48));

    v53 = *(v44 + *(v46 + 64));

    (*(v49 + 16))(v47, v44 + *(v50 + 24), v48);
    sub_1005C32E0(v44, type metadata accessor for OwnerSharingCircle);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    (*(v49 + 8))(v47, v48);
    sub_10000B3A8(v45, &qword_10169EFA8, &qword_1013B2700);
    v57 = sub_1000136BC(v54, v56, &v81);

    *(v51 + 14) = v57;
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2049;
    v58 = *(v74 + *(v50 + 28));
    sub_1005C32E0(v74, type metadata accessor for OwnerSharingCircle);
    *(v51 + 34) = v58;
    _os_log_impl(&_mh_execute_header, v40, v72, "ERROR - stop delegated share of beacon %{private,mask.hash}s\nhas circle of wrong sharing type: %{private,mask.hash}ld", v51, 0x2Au);
    sub_100007BAC(v76);

    v59 = v79;
  }

  else
  {
    v60 = *(v0 + 248);
    sub_1005C32E0(*(v0 + 184), type metadata accessor for OwnerSharingCircle);

    sub_10000B3A8(v60, &qword_10169EFA8, &qword_1013B2700);
    v59 = v43;
  }

  sub_10000B3A8(v59, &qword_10169EFA8, &qword_1013B2700);
  v62 = *(v0 + 272);
  v61 = *(v0 + 280);
  v64 = *(v0 + 256);
  v63 = *(v0 + 264);
  v65 = *(v0 + 248);
  v67 = *(v0 + 216);
  v66 = *(v0 + 224);
  v69 = *(v0 + 176);
  v68 = *(v0 + 184);
  v70 = *(v0 + 168);
  v73 = *(v0 + 160);
  v75 = *(v0 + 152);
  v77 = *(v0 + 144);
  v80 = *(v0 + 136);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_1005B6EE8()
{
  v67 = v0;
  v1 = v0[47];
  sub_10000B3A8(v0[34], &qword_10169EFA8, &qword_1013B2700);
  sub_100007BAC(v0 + 2);
  v0[8] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v2 = v0[47];
    v3 = v0[18];
    v4 = v0[10];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AE28);
    sub_1005C31F8(v4, v3, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[47];
    if (v8)
    {
      v10 = v0[24];
      v11 = v0[18];
      v12 = v0[15];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66[0] = v15;
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v16 = *(v12 + 20);
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
      v20 = sub_1000136BC(v17, v19, v66);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v21;
      *v14 = v21;
      _os_log_impl(&_mh_execute_header, v6, v7, "Server share %{private,mask.hash}s is already revoked: %{public}@", v13, 0x20u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v15);
    }

    else
    {
      v42 = v0[18];
      v43 = v0[47];

      sub_1005C32E0(v42, type metadata accessor for OwnerSharingCircle);
    }

    v44 = swift_task_alloc();
    v0[48] = v44;
    *v44 = v0;
    v44[1] = sub_1005B75B4;
    v45 = v0[14];
    v46 = v0[10];

    return sub_1005B9D78(v46);
  }

  else
  {
    v22 = v0[43];

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v23 = v0[47];
    v24 = v0[19];
    v25 = v0[10];
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AE28);
    sub_1005C31F8(v25, v24, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v0[47];
      v30 = v0[24];
      v31 = v0[19];
      v32 = v0[15];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66[0] = v35;
      *v33 = 141558531;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      v36 = *(v32 + 20);
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_1005C32E0(v31, type metadata accessor for OwnerSharingCircle);
      v40 = sub_1000136BC(v37, v39, v66);

      *(v33 + 14) = v40;
      *(v33 + 22) = 2114;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 24) = v41;
      *v34 = v41;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failure on delegate share stop %{private,mask.hash}s, server share deletion: %{public}@.", v33, 0x20u);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v35);
    }

    else
    {
      v48 = v0[19];

      sub_1005C32E0(v48, type metadata accessor for OwnerSharingCircle);
    }

    v49 = v0[47];
    swift_willThrow();
    v51 = v0[34];
    v50 = v0[35];
    v53 = v0[32];
    v52 = v0[33];
    v54 = v0[31];
    v56 = v0[27];
    v55 = v0[28];
    v58 = v0[22];
    v57 = v0[23];
    v59 = v0[21];
    v61 = v0[20];
    v62 = v0[19];
    v63 = v0[18];
    v64 = v0[17];
    v65 = v0[47];

    v60 = v0[1];

    return v60();
  }
}

uint64_t sub_1005B75B4()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v4 = v3[14];

    return _swift_task_switch(sub_1005B91A8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[50] = v5;
    *v5 = v3;
    v5[1] = sub_1005B7728;
    v6 = v3[14];
    v7 = v3[43];

    return sub_1005BA51C(v7);
  }
}

uint64_t sub_1005B7728()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 344);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 80);
  v6 = *v0;

  v7 = *(v4 + 20);
  v8 = swift_task_alloc();
  *(v1 + 408) = v8;
  *v8 = v6;
  v8[1] = sub_1005B78C0;
  v9 = *(v1 + 112);

  return sub_1005C07B4(v5 + v7);
}

uint64_t sub_1005B78C0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[34];
    v5 = v2[35];
    v8 = v2[32];
    v7 = v2[33];
    v9 = v2[31];
    v11 = v2[27];
    v10 = v2[28];
    v12 = v2[22];
    v13 = v2[23];
    v19 = v2[21];
    v20 = v2[20];
    v21 = v2[19];
    v22 = v2[18];
    v14 = v2[17];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v2[52] = v17;
    *v17 = v4;
    v17[1] = sub_1005B7AEC;
    v18 = v2[14];

    return sub_1005BB5F0();
  }
}

uint64_t sub_1005B7AEC()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1005B7BFC, v2, 0);
}

uint64_t sub_1005B7BFC()
{
  v1 = *(v0 + 296);
  *(v0 + 532) = *(*(v0 + 120) + 24);
  *(v0 + 424) = sub_100B08164(&off_101608BB8);

  return _swift_task_switch(sub_1005B7C7C, v1, 0);
}

uint64_t sub_1005B7C7C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 296);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  (*(v6 + 16))(v4, *(v0 + 80) + *(v0 + 532), v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = v2;
  (*(v6 + 32))(v9 + v7, v4, v5);
  *(v9 + v8) = v1;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 440) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v11 = v0;
  v11[1] = sub_1005B7E10;

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v9, v12);
}

uint64_t sub_1005B7E10()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 296);
  v5 = *v0;

  return _swift_task_switch(sub_1005B7F3C, v3, 0);
}

uint64_t sub_1005B7F3C()
{
  v1 = v0[14];
  v0[56] = v0[9];
  return _swift_task_switch(sub_1005B7F60, v1, 0);
}

uint64_t sub_1005B7F60()
{
  v48 = v0;
  v1 = *(v0 + 448);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    sub_1005C31F8(v1 + ((*(v0 + 528) + 32) & ~*(v0 + 528)), v2, type metadata accessor for OwnerSharingCircle);

    sub_1005C3260(v2, v3, type metadata accessor for OwnerSharingCircle);
    v5 = *sub_1000035D0((v4 + 272), *(v4 + 296));
    v6 = swift_task_alloc();
    *(v0 + 456) = v6;
    *v6 = v0;
    v6[1] = sub_1005B8488;
    v7 = *(v0 + 176);

    return sub_1007256F8(v7, 0);
  }

  v9 = *(v0 + 448);

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 160);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177AE28);
  sub_1005C31F8(v13, v10, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v14, v12, v11);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_1005C339C(v14, v12, v11);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 192);
    v19 = *(v0 + 160);
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v22 = 141558787;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v23 = *(v20 + 24);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    sub_1005C32E0(v19, type metadata accessor for OwnerSharingCircle);
    v27 = sub_1000136BC(v24, v26, &v47);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2081;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v29 = 0xED00006465726970;
        v28 = 0x7865206572616873;
        goto LABEL_19;
      }

      if (v21 == 3)
      {
        v29 = 0xEE00797469726765;
        v28 = 0x746E692061746164;
        goto LABEL_19;
      }
    }

    else
    {
      if (!v21)
      {
        v29 = 0xEB00000000706F74;
        v28 = 0x73206C61756E616DLL;
        goto LABEL_19;
      }

      if (v21 == 1)
      {
        v28 = 0xD000000000000018;
        v29 = 0x800000010135B460;
LABEL_19:
        v31 = sub_1000136BC(v28, v29, &v47);

        *(v22 + 34) = v31;
        _os_log_impl(&_mh_execute_header, v16, v17, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v22, 0x2Au);
        swift_arrayDestroy();

        goto LABEL_20;
      }
    }

    v29 = 0x800000010135B440;
    v28 = 0xD000000000000019;
    goto LABEL_19;
  }

  v30 = *(v0 + 160);

  sub_1005C32E0(v30, type metadata accessor for OwnerSharingCircle);
LABEL_20:
  v33 = *(v0 + 272);
  v32 = *(v0 + 280);
  v35 = *(v0 + 256);
  v34 = *(v0 + 264);
  v36 = *(v0 + 248);
  v38 = *(v0 + 216);
  v37 = *(v0 + 224);
  v40 = *(v0 + 176);
  v39 = *(v0 + 184);
  v41 = *(v0 + 168);
  v43 = *(v0 + 160);
  v44 = *(v0 + 152);
  v45 = *(v0 + 144);
  v46 = *(v0 + 136);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1005B8488()
{
  v2 = *(*v1 + 456);
  v3 = *v1;
  v3[58] = v0;

  if (v0)
  {
    v4 = v3[14];

    return _swift_task_switch(sub_1005B8934, v4, 0);
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v3[59] = v6;
    *v6 = v3;
    v6[1] = sub_1005B85F4;

    return daemon.getter();
  }
}

uint64_t sub_1005B85F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v12 = *v1;
  *(v3 + 480) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 488) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CircleTrustService();
  v9 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194B0(&unk_101698CE0, type metadata accessor for CircleTrustService);
  *v6 = v12;
  v6[1] = sub_1005B87D0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005B87D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v5 = *v2;
  *(*v2 + 496) = a1;

  v6 = *(v3 + 480);
  v7 = *(v3 + 112);
  if (v1)
  {

    v8 = sub_1005B92C8;
  }

  else
  {

    v8 = sub_1005B8A68;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1005B8934()
{
  sub_1005C32E0(v0[22], type metadata accessor for OwnerSharingCircle);
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[18];
  v16 = v0[17];
  v17 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005B8A68()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 304);
  v3 = *(v0 + 176);
  v4 = (*(v0 + 528) + 32) & ~*(v0 + 528);
  v5 = v4 + *(v0 + 312);
  v6 = swift_allocObject();
  *(v0 + 504) = v6;
  *(v6 + 16) = xmmword_101385D80;
  sub_1005C31F8(v3, v6 + v4, type metadata accessor for OwnerSharingCircle);

  v7 = swift_task_alloc();
  *(v0 + 512) = v7;
  *v7 = v0;
  v7[1] = sub_1005B8B68;
  v8 = *(v0 + 496);

  return sub_100D276D8(v6);
}

uint64_t sub_1005B8B68()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(v2 + 520) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 496);
  v7 = *(v2 + 528);
  v8 = *(v2 + 112);
  if (v0)
  {
    swift_setDeallocating();
    sub_1005C32E0(v5 + ((v7 + 32) & ~v7), type metadata accessor for OwnerSharingCircle);
    swift_deallocClassInstance();

    v9 = sub_1005B970C;
  }

  else
  {

    swift_setDeallocating();
    sub_1005C32E0(v5 + ((v7 + 32) & ~v7), type metadata accessor for OwnerSharingCircle);
    swift_deallocClassInstance();
    v9 = sub_1005B8D58;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1005B8D58()
{
  v42 = v0;
  v1 = v0[62];
  v2 = v0[22];

  sub_1005C32E0(v2, type metadata accessor for OwnerSharingCircle);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AE28);
  sub_1005C31F8(v6, v3, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v7, v5, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_1005C339C(v7, v5, v4);
  if (!os_log_type_enabled(v9, v10))
  {
    v23 = v0[20];

    sub_1005C32E0(v23, type metadata accessor for OwnerSharingCircle);
    goto LABEL_16;
  }

  v11 = v0[24];
  v12 = v0[20];
  v13 = v0[15];
  v14 = v0[13];
  v15 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *v15 = 141558787;
  *(v15 + 4) = 1752392040;
  *(v15 + 12) = 2081;
  v16 = *(v13 + 24);
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
  v20 = sub_1000136BC(v17, v19, &v41);

  *(v15 + 14) = v20;
  *(v15 + 22) = 2160;
  *(v15 + 24) = 1752392040;
  *(v15 + 32) = 2081;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v22 = 0xED00006465726970;
      v21 = 0x7865206572616873;
      goto LABEL_15;
    }

    if (v14 == 3)
    {
      v22 = 0xEE00797469726765;
      v21 = 0x746E692061746164;
      goto LABEL_15;
    }

LABEL_12:
    v22 = 0x800000010135B440;
    v21 = 0xD000000000000019;
    goto LABEL_15;
  }

  if (!v14)
  {
    v22 = 0xEB00000000706F74;
    v21 = 0x73206C61756E616DLL;
    goto LABEL_15;
  }

  if (v14 != 1)
  {
    goto LABEL_12;
  }

  v21 = 0xD000000000000018;
  v22 = 0x800000010135B460;
LABEL_15:
  v24 = sub_1000136BC(v21, v22, &v41);

  *(v15 + 34) = v24;
  _os_log_impl(&_mh_execute_header, v9, v10, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v15, 0x2Au);
  swift_arrayDestroy();

LABEL_16:
  v26 = v0[34];
  v25 = v0[35];
  v28 = v0[32];
  v27 = v0[33];
  v29 = v0[31];
  v31 = v0[27];
  v30 = v0[28];
  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[21];
  v37 = v0[20];
  v38 = v0[19];
  v39 = v0[18];
  v40 = v0[17];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1005B91A8()
{
  v1 = v0[43];

  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[49];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005B92C8()
{
  v40 = v0;
  sub_1005C32E0(v0[22], type metadata accessor for OwnerSharingCircle);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE28);
  sub_1005C31F8(v4, v1, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v5, v3, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_1005C339C(v5, v3, v2);
  if (!os_log_type_enabled(v7, v8))
  {
    v21 = v0[20];

    sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
    goto LABEL_16;
  }

  v9 = v0[24];
  v10 = v0[20];
  v11 = v0[15];
  v12 = v0[13];
  v13 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  *v13 = 141558787;
  *(v13 + 4) = 1752392040;
  *(v13 + 12) = 2081;
  v14 = *(v11 + 24);
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
  v18 = sub_1000136BC(v15, v17, &v39);

  *(v13 + 14) = v18;
  *(v13 + 22) = 2160;
  *(v13 + 24) = 1752392040;
  *(v13 + 32) = 2081;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v20 = 0xED00006465726970;
      v19 = 0x7865206572616873;
      goto LABEL_15;
    }

    if (v12 == 3)
    {
      v20 = 0xEE00797469726765;
      v19 = 0x746E692061746164;
      goto LABEL_15;
    }

LABEL_12:
    v20 = 0x800000010135B440;
    v19 = 0xD000000000000019;
    goto LABEL_15;
  }

  if (!v12)
  {
    v20 = 0xEB00000000706F74;
    v19 = 0x73206C61756E616DLL;
    goto LABEL_15;
  }

  if (v12 != 1)
  {
    goto LABEL_12;
  }

  v19 = 0xD000000000000018;
  v20 = 0x800000010135B460;
LABEL_15:
  v22 = sub_1000136BC(v19, v20, &v39);

  *(v13 + 34) = v22;
  _os_log_impl(&_mh_execute_header, v7, v8, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v13, 0x2Au);
  swift_arrayDestroy();

LABEL_16:
  v24 = v0[34];
  v23 = v0[35];
  v26 = v0[32];
  v25 = v0[33];
  v27 = v0[31];
  v29 = v0[27];
  v28 = v0[28];
  v31 = v0[22];
  v30 = v0[23];
  v32 = v0[21];
  v35 = v0[20];
  v36 = v0[19];
  v37 = v0[18];
  v38 = v0[17];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1005B970C()
{
  v66 = v0;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[10];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v3, v2, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[65];
  v9 = v0[62];
  if (v7)
  {
    v59 = v0[62];
    v10 = v0[24];
    v61 = v0[22];
    v11 = v0[17];
    v12 = v0[15];
    v63 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = *(v12 + 24);
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1005C32E0(v11, type metadata accessor for OwnerSharingCircle);
    v19 = v16;
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    v20 = sub_1000136BC(v19, v18, &v65);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to send delegation stop update to sharees for the beacon: %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v14);

    v4 = v63;

    v21 = v61;
  }

  else
  {
    v22 = v0[22];
    v23 = v0[17];
    v24 = v0[65];

    sub_1005C32E0(v23, type metadata accessor for OwnerSharingCircle);
    v21 = v22;
  }

  sub_1005C32E0(v21, type metadata accessor for OwnerSharingCircle);
  if (p_weak_ivar_lyt[239] != -1)
  {
    swift_once();
  }

  v25 = v0[20];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[10];
  v29 = v0[11];
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v28, v25, type metadata accessor for OwnerSharingCircle);
  sub_1003CB5AC(v29, v27, v26);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  sub_1005C339C(v29, v27, v26);
  if (!os_log_type_enabled(v30, v31))
  {
    v44 = v0[20];

    sub_1005C32E0(v44, type metadata accessor for OwnerSharingCircle);
    goto LABEL_21;
  }

  v32 = v0[24];
  v33 = v0[20];
  v34 = v0[15];
  v35 = v0[13];
  v36 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  *v36 = 141558787;
  *(v36 + 4) = 1752392040;
  *(v36 + 12) = 2081;
  v37 = *(v34 + 24);
  sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v39;
  sub_1005C32E0(v33, type metadata accessor for OwnerSharingCircle);
  v41 = sub_1000136BC(v38, v40, &v65);

  *(v36 + 14) = v41;
  *(v36 + 22) = 2160;
  *(v36 + 24) = 1752392040;
  *(v36 + 32) = 2081;
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v43 = 0xED00006465726970;
      v42 = 0x7865206572616873;
      goto LABEL_20;
    }

    if (v35 == 3)
    {
      v43 = 0xEE00797469726765;
      v42 = 0x746E692061746164;
      goto LABEL_20;
    }

LABEL_17:
    v43 = 0x800000010135B440;
    v42 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (!v35)
  {
    v43 = 0xEB00000000706F74;
    v42 = 0x73206C61756E616DLL;
    goto LABEL_20;
  }

  if (v35 != 1)
  {
    goto LABEL_17;
  }

  v42 = 0xD000000000000018;
  v43 = 0x800000010135B460;
LABEL_20:
  v45 = sub_1000136BC(v42, v43, &v65);

  *(v36 + 34) = v45;
  _os_log_impl(&_mh_execute_header, v30, v31, "Successfully marked delegated sharing of %{private,mask.hash}s as tentative\ndue to reason %{private,mask.hash}s.", v36, 0x2Au);
  swift_arrayDestroy();

LABEL_21:
  v47 = v0[34];
  v46 = v0[35];
  v49 = v0[32];
  v48 = v0[33];
  v50 = v0[31];
  v52 = v0[27];
  v51 = v0[28];
  v54 = v0[22];
  v53 = v0[23];
  v55 = v0[21];
  v58 = v0[20];
  v60 = v0[19];
  v62 = v0[18];
  v64 = v0[17];

  v56 = v0[1];

  return v56();
}

uint64_t sub_1005B9D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005B9E44, v1, 0);
}

uint64_t sub_1005B9E44()
{
  v1 = v0[6];
  v2 = v0[2];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_1005C33D0, v1);

  v3 = *(v0[3] + 168);
  v0[7] = v3;

  return _swift_task_switch(sub_1005B9F44, v3, 0);
}

uint64_t sub_1005B9F6C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1005BA064;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_1005BA064()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1005BA42C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1005BA180;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005BA19C()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1005C31F8(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  if (v6)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v21);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Acceptance state changed to .tentativelyRevoked\nfor delegated circle: %{private,mask.hash}s.", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_1005C32E0(v8, type metadata accessor for OwnerSharingCircle);
  }

  sub_10000B3A8(v7, &qword_1016975C8, &qword_10138C1F0);
  v18 = v0[5];
  v17 = v0[6];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005BA42C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1005BA498, v2, 0);
}

uint64_t sub_1005BA498()
{
  sub_10000B3A8(v0[6], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005BA51C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  v2[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005BA6F4, v1, 0);
}

uint64_t sub_1005BA6F4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  v3 = *(v0 + 144);
  if (v2)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v6 + 48);
    *(v0 + 232) = v7;
    v8 = *(v6 + 64);
    *(v0 + 236) = v8;
    v29 = v5;
    v30 = *(v4 + 168);
    *(v0 + 160) = v30;
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    LODWORD(v5) = *(v9 + 80);
    *(v0 + 240) = v5;
    v11 = *(v9 + 72);
    *(v0 + 244) = enum case for Connection.TransactionMode.deferred(_:);
    v28 = *(v0 + 88);
    *(v0 + 168) = v11;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    v12 = *(v0 + 136);
    sub_1000D2A70(v1 + ((v5 + 32) & ~v5), v3, &qword_10169EFA8, &qword_1013B2700);
    v13 = *(v3 + v7);
    v14 = *(v3 + v8);
    v15 = *(v6 + 48);
    v16 = *(v6 + 64);
    sub_1005C3260(v3, v12, type metadata accessor for OwnerSharingCircle);
    *(v12 + v15) = v13;
    *(v12 + v16) = v14;
    sub_1000D2A70(v12, v10, &qword_10169EFA8, &qword_1013B2700);
    v17 = *(v10 + *(v6 + 48));

    v18 = *(v10 + *(v6 + 64));

    sub_1005C3260(v10, v29, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v28 + 20);

    return _swift_task_switch(sub_1005BA91C, v30, 0);
  }

  else
  {
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 56);
    v25 = *(v0 + 144);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1005BA91C()
{
  v1 = *(v0 + 160);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005BA9FC;
  v5 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005BA9FC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_1005BAB14, v2, 0);
}

uint64_t sub_1005BAB14()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_1005BAB38, v1, 0);
}

uint64_t sub_1005BAB38()
{
  v1 = *(*(v0 + 200) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 208) = v1;

  return _swift_task_switch(sub_1005BABC0, v1, 0);
}

uint64_t sub_1005BABC0()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 112);
  if (!v2)
  {
    sub_10020223C();
    v18 = swift_allocError();
    *v27 = 2;
    *(v27 + 4) = 1;
    swift_willThrow();
    goto LABEL_8;
  }

  v3 = *(v2 + 32);
  v4 = *(v1 + 112);

  os_unfair_lock_lock((v3 + 20));
  v5 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  if (v5 != 1 || (v6 = sub_1000194B0(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase), v7 = *(v6 + 16), v8 = type metadata accessor for ItemSharingKeyDatabase(), (v9 = v7(v8, v6)) == 0))
  {
    v25 = *(v0 + 208);
    sub_10020223C();
    v18 = swift_allocError();
    *v26 = 2;
    *(v26 + 4) = 1;
    swift_willThrow();

LABEL_8:

    goto LABEL_9;
  }

  v35 = *(v0 + 176);
  v33 = *(v0 + 244);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v14 = *(v0 + 48);
  v32 = *(v0 + 40);
  v15 = *(v0 + 104) + *(v0 + 248);
  v16 = *(v9 + 24);

  (*(v10 + 16))(v11, v2 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v12);
  v17 = swift_task_alloc();
  v17[2] = v11;
  v17[3] = v15;
  v17[4] = v16;
  (*(v14 + 104))(v13, v33, v32);
  Connection.transaction(_:block:)();
  v18 = v35;
  *(v0 + 216) = v35;
  v19 = *(v0 + 208);
  v20 = *(v0 + 72);
  v22 = *(v0 + 56);
  v21 = *(v0 + 64);
  v34 = v21;
  v36 = *(v0 + 80);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  if (v18)
  {

    (*(v23 + 8))(v22, v24);

    (*(v20 + 8))(v36, v34);
LABEL_9:
    *(v0 + 224) = v18;
    v28 = *(v0 + 32);
    v29 = sub_1005BB138;
    goto LABEL_10;
  }

  v30 = *(v0 + 32);

  (*(v23 + 8))(v22, v24);

  (*(v20 + 8))(v36, v34);
  v29 = sub_1005BAF00;
  v28 = v30;
LABEL_10:

  return _swift_task_switch(v29, v28, 0);
}

uint64_t sub_1005BAF00()
{
  v1 = *(v0 + 104);
  sub_10000B3A8(*(v0 + 136), &qword_10169EFA8, &qword_1013B2700);
  sub_1005C32E0(v1, type metadata accessor for OwnerSharingCircle);
  v2 = *(v0 + 184) + 1;
  if (v2 == *(v0 + 152))
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 128);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 176) = *(v0 + 216);
    *(v0 + 184) = v2;
    v26 = *(v0 + 160);
    v13 = *(v0 + 232);
    v12 = *(v0 + 236);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    sub_1000D2A70(*(v0 + 24) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 168) * v2, v14, &qword_10169EFA8, &qword_1013B2700);
    v18 = *(v14 + v13);
    v19 = *(v14 + v12);
    v20 = *(v17 + 48);
    v21 = *(v17 + 64);
    sub_1005C3260(v14, v15, type metadata accessor for OwnerSharingCircle);
    *(v15 + v20) = v18;
    *(v15 + v21) = v19;
    sub_1000D2A70(v15, v16, &qword_10169EFA8, &qword_1013B2700);
    v22 = *(v16 + *(v17 + 48));

    v23 = *(v16 + *(v17 + 64));

    sub_1005C3260(v16, v24, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v25 + 20);

    return _swift_task_switch(sub_1005BA91C, v26, 0);
  }
}

uint64_t sub_1005BB138()
{
  v51 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177AE28);
  sub_1005C31F8(v2, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 224);
  v9 = *(v0 + 136);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v7)
  {
    v12 = *(v0 + 88);
    v48 = *(v0 + 136);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v50 = v15;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v16 = *(v12 + 20);
    type metadata accessor for UUID();
    v46 = v11;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v50);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to delete secrets for share %{private,mask.hash}s, %{public}@.", v13, 0x20u);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v15);

    sub_10000B3A8(v48, &qword_10169EFA8, &qword_1013B2700);
    v22 = v46;
  }

  else
  {

    sub_1005C32E0(v10, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v9, &qword_10169EFA8, &qword_1013B2700);
    v22 = v11;
  }

  sub_1005C32E0(v22, type metadata accessor for OwnerSharingCircle);
  v23 = *(v0 + 184) + 1;
  if (v23 == *(v0 + 152))
  {
    v25 = *(v0 + 136);
    v24 = *(v0 + 144);
    v26 = *(v0 + 128);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    v30 = *(v0 + 56);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    *(v0 + 176) = 0;
    *(v0 + 184) = v23;
    v49 = *(v0 + 160);
    v34 = *(v0 + 232);
    v33 = *(v0 + 236);
    v36 = *(v0 + 136);
    v35 = *(v0 + 144);
    v37 = *(v0 + 128);
    v38 = *(v0 + 112);
    v45 = *(v0 + 104);
    v47 = *(v0 + 88);
    sub_1000D2A70(*(v0 + 24) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + *(v0 + 168) * v23, v35, &qword_10169EFA8, &qword_1013B2700);
    v39 = *(v35 + v34);
    v40 = *(v35 + v33);
    v41 = *(v38 + 48);
    v42 = *(v38 + 64);
    sub_1005C3260(v35, v36, type metadata accessor for OwnerSharingCircle);
    *(v36 + v41) = v39;
    *(v36 + v42) = v40;
    sub_1000D2A70(v36, v37, &qword_10169EFA8, &qword_1013B2700);
    v43 = *(v37 + *(v38 + 48));

    v44 = *(v37 + *(v38 + 64));

    sub_1005C3260(v37, v45, type metadata accessor for OwnerSharingCircle);
    *(v0 + 248) = *(v47 + 20);

    return _swift_task_switch(sub_1005BA91C, v49, 0);
  }
}

uint64_t sub_1005BB5F0()
{
  *(v1 + 16) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1005BB684;

  return daemon.getter();
}

uint64_t sub_1005BB684(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194B0(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1005BB860;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005BB860(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    *(v5 + 48) = a1;

    return _swift_task_switch(sub_1005BB9E0, a1, 0);
  }
}

uint64_t sub_1005BB9E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1004D4490, v2, 0);
}

uint64_t sub_1005BBAF4()
{
  v1[22] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[25] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[39] = v11;
  v1[40] = *(v11 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return _swift_task_switch(sub_1005BBD84, v0, 0);
}

uint64_t sub_1005BBD84()
{
  v1 = v0[42];
  v2 = *(v0[22] + 168);
  v0[43] = v2;
  v3 = type metadata accessor for UUID();
  v0[44] = v3;
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_1005BBE6C, v2, 0);
}

uint64_t sub_1005BBE6C()
{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[39];
  sub_1000D2A70(v0[42], v3, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v2;
  v7 = swift_allocObject();
  v0[45] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v3, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 0;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[46] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1005BC010;

  return unsafeBlocking<A>(context:_:)(v0 + 18, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2718, v7, v10);
}

uint64_t sub_1005BC010()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 344);
  v5 = *v0;

  return _swift_task_switch(sub_1005BC170, v3, 0);
}

uint64_t sub_1005BC170()
{
  v1 = v0[22];
  sub_10000B3A8(v0[42], &qword_1016980D0, &unk_10138F3B0);
  v0[47] = v0[18];

  return _swift_task_switch(sub_1005BC220, v1, 0);
}

uint64_t sub_1005BC220()
{
  v110 = v0;
  v1 = *(v0 + 376);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 240);
    v102 = (v4 + 48);
    v93 = (v4 + 32);
    v100 = (v4 + 56);
    v101 = *(v0 + 304);
    v99 = (v4 + 8);
    v5 = _swiftEmptyArrayStorage;
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v96 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v94 = *(v1 + 16);
    v95 = *(v0 + 376);
    v97 = v7;
    v98 = v6;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      v8 = *(v0 + 304);
      v105 = *(v6 + 72);
      v107 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1005C31F8(*(v0 + 376) + v107 + v105 * v3, v8, type metadata accessor for OwnerSharingCircle);
      if (*(v8 + *(v7 + 36)) != 4)
      {
        goto LABEL_4;
      }

      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      *(v0 + 112) = 0x7365547265646E75;
      *(v0 + 120) = 0xE900000000000074;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      v103 = v5;
      if (*(v0 + 432) == 1)
      {
        v9 = [objc_opt_self() sharedInstance];
        v10 = [v9 isInternalBuild];

        if (v10)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v12 = *(v0 + 224);
          v11 = *(v0 + 232);
          v13 = sub_1000076D4(*(v0 + 200), qword_101696A00);
          swift_beginAccess();
          sub_1000D2A70(v13, v12, &unk_101696900, &unk_10138B1E0);
          if ((*v102)(v12, 1, v11) != 1)
          {
            (*v93)(*(v0 + 256), *(v0 + 224), *(v0 + 232));
            goto LABEL_32;
          }

          sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
        }
      }

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 40) = My;
      *(v0 + 48) = sub_1000194B0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v15 = sub_1000280DC((v0 + 16));
      (*(*(My - 8) + 104))(v15, v96, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 16));
      if (My)
      {
        sub_100F0FDBC();
        Current = CFAbsoluteTimeGetCurrent();
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (Current - *(v0 + 128) - *(v0 + 136) > 86400.0)
        {
          v17 = *(v0 + 184);
          v18 = *(v0 + 192);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v19 = type metadata accessor for TaskPriority();
          v20 = *(v19 - 8);
          (*(v20 + 56))(v18, 1, 1, v19);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          sub_1000D2A70(v18, v17, &qword_101698C00, &qword_10138B570);
          LODWORD(v18) = (*(v20 + 48))(v17, 1, v19);

          v22 = *(v0 + 184);
          if (v18 == 1)
          {
            sub_10000B3A8(*(v0 + 184), &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v20 + 8))(v22, v19);
          }

          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          swift_unknownObjectRetain();

          if (v25)
          {
            swift_getObjectType();
            v26 = dispatch thunk of Actor.unownedExecutor.getter();
            v28 = v27;
            swift_unknownObjectRelease();
          }

          else
          {
            v26 = 0;
            v28 = 0;
          }

          sub_10000B3A8(*(v0 + 192), &qword_101698C00, &qword_10138B570);
          v29 = swift_allocObject();
          *(v29 + 16) = &unk_10138B610;
          *(v29 + 24) = v21;
          v2 = v94;
          if (v28 | v26)
          {
            *(v0 + 56) = 0;
            *(v0 + 64) = 0;
            *(v0 + 72) = v26;
            *(v0 + 80) = v28;
          }

          v1 = v95;
          swift_task_create();
        }

        v30 = *(v0 + 256);
        Date.init(timeIntervalSinceReferenceDate:)();
      }

      else
      {
        v23 = *(v0 + 256);
        Date.init()();
      }

LABEL_32:
      v31 = *(v0 + 304);
      v32 = objc_autoreleasePoolPush();
      v33 = *v31;
      v34 = *(v101 + 8);
      v35 = v34 >> 62;
      if ((v34 >> 62) > 1)
      {
        if (v35 != 2 || *(v33 + 16) == *(v33 + 24))
        {
          goto LABEL_47;
        }
      }

      else if (v35)
      {
        if (v33 == v33 >> 32)
        {
          goto LABEL_47;
        }
      }

      else if ((v34 & 0xFF000000000000) == 0)
      {
        goto LABEL_47;
      }

      v36 = objc_autoreleasePoolPush();
      v37 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v33, v34);
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 152) = 0;
      v39 = [v37 initForReadingFromData:isa error:v0 + 152];

      v40 = *(v0 + 152);
      if (!v39)
      {
        v47 = v40;
        v48 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v33, v34);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_101385D80;
        *(v0 + 160) = v48;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v50 = String.init<A>(describing:)();
        v52 = v51;
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = sub_100008C00();
        *(v49 + 32) = v50;
        *(v49 + 40) = v52;
        sub_10039722C();
        v53 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_46;
      }

      v41 = v40;
      sub_100016590(v33, v34);
      [v39 _enableStrictSecureDecodingMode];
      v42 = [objc_allocWithZone(CKRecord) initWithCoder:v39];
      if (!v42)
      {
        static os_log_type_t.error.getter();
        sub_10039722C();
        v54 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

LABEL_46:
        objc_autoreleasePoolPop(v36);
        v2 = v94;
        v1 = v95;
LABEL_47:
        (*v100)(*(v0 + 216), 1, 1, *(v0 + 232));
LABEL_48:
        v55 = *(v0 + 248);
        v56 = *(v0 + 232);
        v57 = *(v0 + 216);
        Date.init()();
        if ((*v102)(v57, 1, v56) != 1)
        {
          sub_10000B3A8(*(v0 + 216), &unk_101696900, &unk_10138B1E0);
        }

        goto LABEL_50;
      }

      v43 = v42;

      objc_autoreleasePoolPop(v36);
      v44 = [v43 modificationDate];

      if (v44)
      {
        v45 = *(v0 + 208);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v2 = v94;
      v1 = v95;
      v67 = *(v0 + 232);
      v69 = *(v0 + 208);
      v68 = *(v0 + 216);
      (*v100)(v69, v46, 1, v67);
      sub_1000D2AD8(v69, v68, &unk_101696900, &unk_10138B1E0);
      if ((*v102)(v68, 1, v67) == 1)
      {
        goto LABEL_48;
      }

      (*v93)(*(v0 + 248), *(v0 + 216), *(v0 + 232));
LABEL_50:
      v59 = *(v0 + 248);
      v58 = *(v0 + 256);
      v60 = *(v0 + 232);
      objc_autoreleasePoolPop(v32);
      Date.timeIntervalSince(_:)();
      v62 = v61;
      v63 = *v99;
      (*v99)(v59, v60);
      v63(v58, v60);
      if (v62 >= 86400.0)
      {
        sub_1005C3260(*(v0 + 304), *(v0 + 288), type metadata accessor for OwnerSharingCircle);
        v5 = v103;
        v109[0] = v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, *(v103 + 16) + 1, 1);
          v5 = v109[0];
        }

        v65 = v5[2];
        v64 = v5[3];
        if (v65 >= v64 >> 1)
        {
          sub_101123FE4(v64 > 1, v65 + 1, 1);
          v5 = v109[0];
        }

        v66 = *(v0 + 288);
        v5[2] = v65 + 1;
        sub_1005C3260(v66, v5 + v107 + v65 * v105, type metadata accessor for OwnerSharingCircle);
        v7 = v97;
        v6 = v98;
        goto LABEL_5;
      }

      v5 = v103;
      v7 = v97;
      v6 = v98;
LABEL_4:
      sub_1005C32E0(*(v0 + 304), type metadata accessor for OwnerSharingCircle);
LABEL_5:
      if (v2 == ++v3)
      {
        v70 = *(v0 + 376);
        goto LABEL_61;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_61:
  *(v0 + 384) = v5;

  v71 = v5[2];
  if (v71)
  {
    v72 = 0;
    v73 = *(v0 + 272);
    v104 = *(v0 + 264);
    v106 = v73;
    v108 = v5[2];
    while (v72 < v5[2])
    {
      sub_1005C31F8(v5 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v72, *(v0 + 296), type metadata accessor for OwnerSharingCircle);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v75 = *(v0 + 296);
      v76 = *(v0 + 280);
      v77 = type metadata accessor for Logger();
      sub_1000076D4(v77, qword_10177A560);
      sub_1005C31F8(v75, v76, type metadata accessor for OwnerSharingCircle);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = *(v0 + 352);
        v81 = v5;
        v82 = *(v0 + 280);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v109[0] = v84;
        *v83 = 136315138;
        v85 = *(v104 + 24);
        sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        v89 = v82;
        v5 = v81;
        v71 = v108;
        sub_1005C32E0(v89, type metadata accessor for OwnerSharingCircle);
        v90 = sub_1000136BC(v86, v88, v109);
        v73 = v106;

        *(v83 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v78, v79, "Removing tentatively revoked delegated shares from cloud for beacon %s", v83, 0xCu);
        sub_100007BAC(v84);
      }

      else
      {
        v74 = *(v0 + 280);

        sub_1005C32E0(v74, type metadata accessor for OwnerSharingCircle);
      }

      ++v72;
      sub_1005C32E0(*(v0 + 296), type metadata accessor for OwnerSharingCircle);
      if (v71 == v72)
      {
        goto LABEL_70;
      }
    }

LABEL_74:
    __break(1u);
  }

LABEL_70:
  v91 = *(v0 + 344);

  return _swift_task_switch(sub_1005BD054, v91, 0);
}

uint64_t sub_1005BD054()
{
  v1 = v0[48];
  v2 = v0[43];
  v3 = swift_allocObject();
  v0[49] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v5 = swift_task_alloc();
  v0[50] = v5;
  v6 = sub_1000BC4D4(&qword_1016A5418, &qword_1013B26F0);
  *v5 = v0;
  v5[1] = sub_1005BD19C;

  return unsafeBlocking<A>(context:_:)(v0 + 21, 0xD000000000000010, 0x800000010134A8C0, sub_1005C3394, v3, v6);
}

uint64_t sub_1005BD19C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);
  v3 = *(*v0 + 344);
  v5 = *v0;

  return _swift_task_switch(sub_1005BD2FC, v3, 0);
}

uint64_t sub_1005BD2FC()
{
  v1 = v0[21];
  v0[51] = v1;
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_1005BD3CC;
  v3 = v0[22];

  return sub_1005BD8E4(v1);
}

uint64_t sub_1005BD3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 408);
    v5 = *(v2 + 176);

    v6 = sub_1005BD678;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 176);
    v6 = sub_1005BD540;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1005BD540()
{
  v1 = v0[51];

  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v14 = v0[26];
  v15 = v0[24];
  v16 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005BD678()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[53];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on removal of tentatively revoked delegated share from cloud: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[41];
  v10 = v0[42];
  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v17 = v0[31];
  v16 = v0[32];
  v19 = v0[27];
  v18 = v0[28];
  v22 = v0[26];
  v23 = v0[24];
  v24 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005BD8E4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for UUID();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v2[16] = v6;
  v7 = *(v6 + 64) + 15;
  v2[17] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v2[18] = v8;
  v9 = *(v8 - 8);
  v2[19] = v9;
  v10 = *(v9 + 64) + 15;
  v2[20] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1005BDA9C, v1, 0);
}

uint64_t sub_1005BDA9C()
{
  v1 = v0[11];
  type metadata accessor for ChangeSetAdaptor();
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  *(v2 + 24) = _swiftEmptyDictionarySingleton;
  v35 = (v2 + 24);
  v3 = *(v1 + 16);

  if (!v3)
  {
LABEL_9:

    swift_beginAccess();
    if (!*(*(v2 + 16) + 16))
    {
      swift_beginAccess();
      v18 = *v35;
      if ((*v35 & 0xC000000000000001) != 0)
      {
        if (v18 < 0)
        {
          v19 = *v35;
        }

        v20 = *v35;

        v21 = __CocoaDictionary.count.getter();

        if (v21)
        {
          goto LABEL_14;
        }

LABEL_19:
        v31 = v0[21];

        v32 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
LABEL_15:
        v11 = *(v0[12] + 168);
        v0[22] = v11;
        v13 = sub_1005BDF04;
        v12 = 0;

        return _swift_task_switch(v13, v11, v12);
      }

      if (!*(v18 + 16))
      {
        goto LABEL_19;
      }
    }

LABEL_14:
    v22 = v0[21];
    v24 = v0[14];
    v23 = v0[15];
    v25 = v0[13];
    UUID.init()();
    swift_beginAccess();
    v26 = *(v2 + 24);

    v28 = sub_1003A8B54(v27);

    v29 = *(v2 + 16);

    (*(v24 + 32))(v22, v23, v25);
    v30 = type metadata accessor for CloudKitChangeSet(0);
    *(v22 + *(v30 + 20)) = v28;
    *(v22 + *(v30 + 24)) = v29;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    goto LABEL_15;
  }

  v4 = 0;
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9 = *(v5 + 72);
  v34 = v3;
  v36 = v6;
  while (1)
  {
    v10 = v0[20];
    sub_1000D2A70(v8 + v4 * v9, v10, &qword_10169EFA8, &qword_1013B2700);
    sub_100D45194(v10);
    sub_1001BA354(*(v0[20] + *(v6 + 48)));
    v13 = v0[20];
    v14 = *(v13 + *(v6 + 64));
    v15 = *(v14 + 16);
    if (v15)
    {
      break;
    }

LABEL_3:
    ++v4;
    sub_10000B3A8(v13, &qword_10169EFA8, &qword_1013B2700);
    v6 = v36;
    if (v4 == v3)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
  while (v16 < *(v14 + 16))
  {
    v17 = v0[17];
    sub_1005C31F8(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v17, type metadata accessor for OwnerPeerTrust);
    sub_100D467FC(v17);
    ++v16;
    v13 = sub_1005C32E0(v0[17], type metadata accessor for OwnerPeerTrust);
    if (v15 == v16)
    {
      v13 = v0[20];
      v3 = v34;
      goto LABEL_3;
    }
  }

  __break(1u);
  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_1005BDF2C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_1005BE024;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_1005BE024()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1005BE204;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1005BE140;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1005BE15C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];
  sub_10000B3A8(v0[21], &qword_1016975C8, &qword_10138C1F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005BE204()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1005BE270, v2, 0);
}

uint64_t sub_1005BE270()
{
  sub_10000B3A8(v0[21], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005BE314(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[11] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for MemberPeerTrust();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[20] = v11;
  v12 = *(v11 - 8);
  v2[21] = v12;
  v2[22] = *(v12 + 64);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005BE500, v1, 0);
}

uint64_t sub_1005BE500()
{
  v23 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_10177AE28);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[20];
  v12 = v0[21];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Notify owner to stop delegated share of %{private,mask.hash}s.", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = *(v0[10] + 168);
  v0[31] = v19;

  return _swift_task_switch(sub_1005BE76C, v19, 0);
}

uint64_t sub_1005BE76C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  (*(v0 + 224))(v3, *(v0 + 72), v6);
  v7 = *(v5 + 80);
  *(v0 + 328) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 264) = v10;
  *(v0 + 272) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 280) = v12;
  v13 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v12 = v0;
  v12[1] = sub_1005BE8F0;

  return unsafeBlocking<A>(context:_:)(v0 + 64, 0xD000000000000010, 0x800000010134A8C0, sub_1005C31E0, v9, v13);
}

uint64_t sub_1005BE8F0()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v5 = *v0;

  return _swift_task_switch(sub_1005BEA1C, v3, 0);
}

uint64_t sub_1005BEA1C()
{
  v1 = v0[10];
  v0[36] = v0[8];
  return _swift_task_switch(sub_1005BEA40, v1, 0);
}

uint64_t sub_1005BEA40()
{
  v36 = v0;
  v1 = *(v0 + 288);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 248);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v6 = *(*(v0 + 136) + 80);
    sub_1005C31F8(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for MemberSharingCircle);

    sub_1005C3260(v4, v3, type metadata accessor for MemberSharingCircle);
    *(v0 + 332) = *(v5 + 32);

    return _swift_task_switch(sub_1005BED7C, v2, 0);
  }

  else
  {
    v7 = *(v0 + 288);

    v8 = *(v0 + 232);
    v9 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 184), *(v0 + 72), *(v0 + 160));
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 240);
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);
    v16 = *(v0 + 168);
    if (v12)
    {
      v34 = *(v0 + 240);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v34(v14, v15);
      v22 = sub_1000136BC(v19, v21, &v35);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "No peerTrustIdentifier for %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      v13(v14, v15);
    }

    sub_1005C3340();
    swift_allocError();
    *v23 = 6;
    swift_willThrow();
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 96);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1005BED7C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = (*(v0 + 328) + 24) & ~*(v0 + 328);
  (*(v0 + 224))(v5, *(v0 + 152) + *(v0 + 332), v7);
  v9 = swift_allocObject();
  *(v0 + 296) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_1005BEED0;
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1005C32C8, v9, v13);
}

uint64_t sub_1005BEED0()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1005BEFFC, v3, 0);
}

uint64_t sub_1005BEFFC()
{
  v61 = v0;
  v1 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v1, 1, *(v0 + 104)) == 1)
  {
    sub_1005C32E0(*(v0 + 152), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v2 = *(v0 + 232);
    v3 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 184), *(v0 + 72), *(v0 + 160));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 240);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    if (v6)
    {
      v58 = *(v0 + 240);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v60[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v58(v8, v9);
      v16 = sub_1000136BC(v13, v15, v60);

      *(v11 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "No peerTrustIdentifier for %{private,mask.hash}s", v11, 0x16u);
      sub_100007BAC(v12);
    }

    else
    {

      v7(v8, v9);
    }

    sub_1005C3340();
    swift_allocError();
    *v36 = 6;
    swift_willThrow();
    v38 = *(v0 + 200);
    v37 = *(v0 + 208);
    v40 = *(v0 + 184);
    v39 = *(v0 + 192);
    v42 = *(v0 + 144);
    v41 = *(v0 + 152);
    v43 = *(v0 + 120);
    v44 = *(v0 + 96);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v21 = *(v0 + 160);
    v22 = *(v0 + 72);
    sub_1005C3260(v1, *(v0 + 120), type metadata accessor for MemberPeerTrust);
    v18(v20, v22, v21);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 240);
    v27 = *(v0 + 192);
    v28 = *(v0 + 160);
    v29 = *(v0 + 168);
    if (v25)
    {
      v59 = *(v0 + 240);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v59(v27, v28);
      v35 = sub_1000136BC(v32, v34, v60);

      *(v30 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "Will send ids message to owner to stop delegated share of %{private,mask.hash}s.", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      v26(v27, v28);
    }

    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v50 = *(v0 + 152);
    v49 = *(v0 + 160);
    v51 = *(v0 + 120);
    v52 = *(v0 + 104);
    v53 = *(v0 + 80);
    v54 = *(*(v0 + 128) + 28);
    *(v0 + 40) = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1(0);
    *(v0 + 48) = sub_1000194B0(&qword_1016A4F10, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
    *(v0 + 56) = sub_1000194B0(&qword_1016A5410, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1);
    v55 = sub_1000280DC((v0 + 16));
    v48(v55, v50 + v54, v49);
    v56 = *(v52 + 28);
    v57 = swift_task_alloc();
    *(v0 + 312) = v57;
    *v57 = v0;
    v57[1] = sub_1005BF5B8;

    return sub_10129B0F0(v53 + 232, v0 + 16, 8, v51 + v56);
  }
}

uint64_t sub_1005BF5B8()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v8 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1005BF7E0;
  }

  else
  {
    v6 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v5 = sub_1005BF6E0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005BF6E0()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[12];
  sub_1005C32E0(v0[15], type metadata accessor for MemberPeerTrust);
  sub_1005C32E0(v5, type metadata accessor for MemberSharingCircle);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1005BF7E0()
{
  v1 = v0[19];
  sub_1005C32E0(v0[15], type metadata accessor for MemberPeerTrust);
  sub_1005C32E0(v1, type metadata accessor for MemberSharingCircle);
  sub_100007BAC(v0 + 2);
  v2 = v0[40];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005BF8E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 184) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  *(v5 + 64) = *(v7 + 64);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 88) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v10 = type metadata accessor for OwnerSharingCircle();
  *(v5 + 104) = v10;
  v11 = *(v10 - 8);
  *(v5 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1005BFA5C, v4, 0);
}

uint64_t sub_1005BFA5C()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_1005BFA80, v1, 0);
}

uint64_t sub_1005BFA80()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[2];
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1005BFBF0;
  v12 = v0[11];
  v11 = v0[12];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1005C31C8, v8, v12);
}

uint64_t sub_1005BFBF0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_1005BFD1C, v3, 0);
}

uint64_t sub_1005BFD1C()
{
  v35 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE28);
    v4(v5, v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315138;
      sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v12, v13);
      v20 = sub_1000136BC(v17, v19, &v34);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "handleDelegatedCircleTrustStop - owner sharing circle not found with shareIdentifier %s. Cannot stop the share.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v29 = *(v0 + 120);
    v30 = *(v0 + 96);
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    v21 = *(v0 + 120);
    v22 = *(v0 + 32);
    v23 = *(v0 + 184);
    sub_1005C3260(v2, v21, type metadata accessor for OwnerSharingCircle);
    v24 = *(v1 + 24);
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    *v25 = v0;
    v25[1] = sub_1005C0074;
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);

    return sub_1005B39DC(v21 + v24, v23, v27, v22);
  }
}

uint64_t sub_1005C0074()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1005C0248;
  }

  else
  {
    v6 = sub_1005C01A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005C01A0()
{
  sub_1005C32E0(v0[15], type metadata accessor for OwnerSharingCircle);
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005C0248()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  sub_1005C32E0(v0[15], type metadata accessor for OwnerSharingCircle);

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1005C02F4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1005C0314, v1, 0);
}

uint64_t sub_1005C0314()
{
  v1 = *(*(v0 + 32) + 168);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1005C0338, v1, 0);
}

uint64_t sub_1005C0338()
{
  v1 = *(v0 + 40);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005C0418;
  v5 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005C0418()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1005C0530, v2, 0);
}

uint64_t sub_1005C0530()
{
  v1 = v0[4];
  v0[7] = v0[2];
  return _swift_task_switch(sub_1005C0554, v1, 0);
}

uint64_t sub_1005C0554()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1005C0614;
  v2 = v0[3];

  return sub_100692A94(v2);
}

uint64_t sub_1005C0614()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_1005C0750, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1005C0750()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1005C07B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1005C07D4, v1, 0);
}

uint64_t sub_1005C07D4()
{
  v1 = *(*(v0 + 32) + 168);
  *(v0 + 40) = v1;
  return _swift_task_switch(sub_1005C07F8, v1, 0);
}

uint64_t sub_1005C07F8()
{
  v1 = *(v0 + 40);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005C08D8;
  v5 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1005C08D8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_1005C09F0, v2, 0);
}

uint64_t sub_1005C0A14()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1005C0ABC;
  v3 = v0[3];

  return sub_100691410(v3);
}

uint64_t sub_1005C0ABC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1005C0BF8, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1005C0BF8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1005C0C5C(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_1005C0C7C, v1, 0);
}

uint64_t sub_1005C0C7C()
{
  v1 = *(*(v0 + 56) + 168);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1005C0CA0, v1, 0);
}

uint64_t sub_1005C0CA0()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1005C0D80;
  v5 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1005C0D80()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1005C0E98, v2, 0);
}

uint64_t sub_1005C0E98()
{
  v0[10] = v0[5];
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1005C0F34;
  v2 = v0[6];

  return sub_1012DB570(v2);
}

uint64_t sub_1005C0F34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[11];
  v6 = v3[10];
  v7 = v3[7];
  v9 = *v2;
  v4[12] = a2;

  return _swift_task_switch(sub_1005C106C, v7, 0);
}

uint64_t sub_1005C106C()
{
  v1 = v0[12];
  v2 = v1 >> 60;
  if (v1 >> 60 != 15)
  {
    sub_100006654(v0[3], v1);
  }

  v3 = v0[1];

  return v3(v2 < 0xF);
}

uint64_t sub_1005C10E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  v6 = type metadata accessor for OwnerSharingCircle();
  v5[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v9[1] = sub_1005C11AC;

  return daemon.getter();
}

uint64_t sub_1005C11AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_1000194B0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000194B0(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_1005C1388;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005C1388(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 32);
  v8 = *v2;

  v9 = *(v4 + 64);
  if (v1)
  {

    v10 = sub_1005C1ADC;
  }

  else
  {

    *(v5 + 80) = a1;
    v10 = sub_1005C14F0;
  }

  return _swift_task_switch(v10, v7, 0);
}

uint64_t sub_1005C14F0()
{
  v1 = v0[10];
  v0[11] = v1;
  v2 = v0[3];
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v1)
        {

          v3 = swift_task_alloc();
          v0[12] = v3;
          *v3 = v0;
          v3[1] = sub_1005C16FC;
          v4 = v0[2];

          return sub_100B55070(v4);
        }

        goto LABEL_11;
      }

LABEL_14:
      if (v1)
      {

        v8 = swift_task_alloc();
        v0[14] = v8;
        *v8 = v0;
        v8[1] = sub_1005C188C;
        v9 = v0[2];

        return sub_100B55F38(v9);
      }

LABEL_11:
      v6 = v0[6];

      v7 = v0[1];

      return v7();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (!v1)
  {
    goto LABEL_11;
  }

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_1005C19B4;
  v11 = v0[2];

  return sub_100B541A8(v11);
}

uint64_t sub_1005C16FC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1005C1B40;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 32);

    v5 = sub_1005C1824;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005C1824()
{
  v1 = v0[11];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005C188C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1005C1E34;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 32);

    v5 = sub_1005C3A34;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005C19B4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1005C2128;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 32);

    v5 = sub_1005C3A34;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005C1ADC()
{
  v0[11] = 0;
  v1 = v0[6];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1005C1B40()
{
  v24 = v0;
  v1 = v0[13];
  v2 = v0[11];

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  sub_1005C31F8(v4, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005C1E34()
{
  v24 = v0;
  v1 = v0[15];
  v2 = v0[11];

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  sub_1005C31F8(v4, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005C2128()
{
  v24 = v0;
  v1 = v0[17];
  v2 = v0[11];

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  sub_1005C31F8(v4, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1000194B0(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post notification for %{private,mask.hash}s: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_1005C32E0(v9, type metadata accessor for OwnerSharingCircle);
  }

  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005C241C()
{
  sub_100007BAC(v0 + 14);
  v1 = v0[21];

  sub_100007BAC(v0 + 22);
  v2 = v0[27];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 29);
  sub_100007BAC(v0 + 34);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005C24A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for URLComponents();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005C2634, 0, 0);
}

uint64_t sub_1005C2634()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for DelegatedShareUseCase.DelegationURL(0) + 20));
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v7 = sub_101074C00(v0[2]);
  v9 = v8;

  *v2 = v7;
  v2[1] = v9;

  URL.init(string:)();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v10 = v0[12];
    v11 = v0[7];
    v12 = v0[5];

    v13 = &unk_101696AC0;
    v14 = &qword_101390A60;
    v15 = v10;
LABEL_7:
    sub_10000B3A8(v15, v13, v14);
    v25 = v0[15];
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[8];
    sub_1005C3410();
    swift_allocError();
    swift_willThrow();

    v29 = v0[1];
    goto LABEL_9;
  }

  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[8];
  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v19 = (*(v17 + 48))(v18, 1, v16);
  v21 = v0[14];
  v20 = v0[15];
  if (v19 == 1)
  {
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[5];
    (*(v21 + 8))(v0[15], v0[13]);

    v13 = &qword_101699BA8;
    v14 = &unk_1013926B0;
    v15 = v22;
    goto LABEL_7;
  }

  v30 = v0[11];
  v32 = v0[9];
  v31 = v0[10];
  v33 = v0[7];
  v41 = v0[5];
  v42 = v0[13];
  v34 = v0[3];
  v39 = v0[6];
  v40 = v0[4];
  (*(v31 + 32))(v30, v0[8], v32);
  (*(v31 + 16))(v34, v30, v32);
  sub_1000BC4D4(&qword_1016A5428, &unk_1013B2748);
  v35 = *(type metadata accessor for URLQueryItem() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = xmmword_101385D80;
  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.fragment.setter();
  (*(v31 + 8))(v30, v32);
  (*(v21 + 8))(v20, v42);

  v29 = v0[1];
LABEL_9:

  return v29();
}

uint64_t sub_1005C2A40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for SharingCircleSecret();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v5 - 8);
  v33 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OwnerSharingCircle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for OwnerPeerTrust();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = __chkstk_darwin(v13 - 8);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = a3;
  v19 = a3[2];
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_6:
    v22 = v35;
    v23 = v35[1];
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        sub_1005C31F8(v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v12, type metadata accessor for OwnerSharingCircle);
        sub_100D43440(v12);
        if (v3)
        {
          v32 = type metadata accessor for OwnerSharingCircle;
LABEL_20:
          v30 = v32;
          v31 = v12;
          return sub_1005C32E0(v31, v30);
        }

        ++v25;
        result = sub_1005C32E0(v12, type metadata accessor for OwnerSharingCircle);
        if (v24 == v25)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      __break(1u);
    }

    else
    {
LABEL_11:
      v26 = *v22;
      v27 = *(*v22 + 16);
      if (!v27)
      {
        return result;
      }

      v28 = 0;
      v12 = v33;
      v29 = v34;
      while (v28 < *(v26 + 16))
      {
        sub_1005C31F8(v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28, v12, type metadata accessor for SharingCircleSecret);
        sub_100D4346C(v12);
        if (v3)
        {
          v32 = type metadata accessor for SharingCircleSecret;
          goto LABEL_20;
        }

        ++v28;
        result = sub_1005C32E0(v12, type metadata accessor for SharingCircleSecret);
        if (v27 == v28)
        {
          return result;
        }
      }
    }

    __break(1u);
    return result;
  }

  v21 = 0;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_1005C31F8(v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v21, v18, type metadata accessor for OwnerPeerTrust);
    sub_100D437C0(v18);
    if (v3)
    {
      break;
    }

    ++v21;
    result = sub_1005C32E0(v18, type metadata accessor for OwnerPeerTrust);
    if (v20 == v21)
    {
      goto LABEL_6;
    }
  }

  v30 = type metadata accessor for OwnerPeerTrust;
  v31 = v18;
  return sub_1005C32E0(v31, v30);
}

uint64_t sub_1005C2DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v33 = a5;
  v34 = a4;
  v7 = type metadata accessor for SharingCircleSecret();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for OwnerSharingCircle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for OwnerPeerTrust();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a3 + 16);
  if (v21)
  {
    v22 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v23 = *(v18 + 72);
    while (1)
    {
      sub_1005C31F8(v22, v20, type metadata accessor for OwnerPeerTrust);
      sub_100D467FC(v20);
      if (v5)
      {
        return sub_1005C32E0(v20, type metadata accessor for OwnerPeerTrust);
      }

      sub_1005C32E0(v20, type metadata accessor for OwnerPeerTrust);
      v22 += v23;
      if (!--v21)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = *v34;
    v25 = *(*v34 + 16);

    if (v25)
    {
      v27 = 0;
      while (v27 < *(v24 + 16))
      {
        sub_1005C31F8(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27, v15, type metadata accessor for OwnerSharingCircle);
        sub_100D45194(v15);
        if (v5)
        {
          sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
        }

        ++v27;
        result = sub_1005C32E0(v15, type metadata accessor for OwnerSharingCircle);
        if (v25 == v27)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:

      v28 = *v33;
      v29 = *(*v33 + 16);

      if (!v29)
      {
      }

      v30 = 0;
      v31 = v32;
      while (v30 < *(v28 + 16))
      {
        sub_1005C31F8(v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v10, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v10);
        if (v5)
        {
          sub_1005C32E0(v10, type metadata accessor for SharingCircleSecret);
        }

        ++v30;
        result = sub_1005C32E0(v10, type metadata accessor for SharingCircleSecret);
        if (v29 == v30)
        {
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005C31F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C3260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C32E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005C3340()
{
  result = qword_1016A5408;
  if (!qword_1016A5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5408);
  }

  return result;
}

uint64_t sub_1005C339C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 4)
  {
  }

  return result;
}

unint64_t sub_1005C3410()
{
  result = qword_1016A5420;
  if (!qword_1016A5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5420);
  }

  return result;
}

uint64_t sub_1005C3464()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1005AA9F0(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1005C35D0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1005C36A4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1005C3754()
{
  sub_1005C3874(319, &qword_1016A5498, type metadata accessor for SharingCircleSecret);
  if (v0 <= 0x3F)
  {
    sub_1005C3874(319, &qword_1016A54A0, type metadata accessor for OwnerSharingCircle);
    if (v1 <= 0x3F)
    {
      sub_1005C3874(319, &unk_1016A54A8, type metadata accessor for OwnerPeerTrust);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OwnedBeaconRecord();
        if (v3 <= 0x3F)
        {
          type metadata accessor for BeaconNamingRecord();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005C3874(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005C3900()
{
  result = type metadata accessor for URLComponents();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1005C3988()
{
  result = qword_1016A5578;
  if (!qword_1016A5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5578);
  }

  return result;
}

unint64_t sub_1005C39E0()
{
  result = qword_1016A5580;
  if (!qword_1016A5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5580);
  }

  return result;
}

void sub_1005C3AB0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1005C3C38(319, &qword_10169C360, type metadata accessor for FamilyCryptoKeysV1);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3B98()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1005C3C38(319, &qword_1016A5680, type metadata accessor for FamilyCryptoKeysV2);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3C38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005C3C8C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A56B8, &unk_1013B2AE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4DDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_1005C549C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0) + 20));
    v12[15] = 1;
    sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
    sub_1005C5364(&qword_10169C468, &qword_10169C470);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005C3EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for UUID();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A5720, &qword_1013B2B20);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4DDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_1005C549C(&qword_101698300, &type metadata accessor for UUID);
  v19 = v30;
  v20 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  sub_1000BC4D4(&qword_10169C460, &qword_1013B1CA0);
  v32 = 1;
  sub_1005C5364(&qword_10169C498, &qword_10169C4A0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_1005C54E4(v22, v26, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
  sub_100007BAC(a1);
  return sub_1005C554C(v22, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
}

uint64_t sub_1005C4270(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A56C8, &qword_1013B2AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_1005C549C(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
    v15 = *(v3 + *(MyAccessoryKeyEnvelope + 20));
    v14 = 1;
    sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
    sub_1005C5400(&qword_1016A56E0, &qword_1016A56E8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(MyAccessoryKeyEnvelope + 24));
    v14 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005C44D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016A5728, &qword_1013B2B28);
  v25 = *(v28 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v28);
  v9 = &v22 - v8;
  MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
  v11 = *(*(MyAccessoryKeyEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryKeyEnvelope);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E30();
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
  sub_1005C549C(&qword_101698300, &type metadata accessor for UUID);
  v18 = v27;
  v17 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v22, v18, v4);
  sub_1000BC4D4(&qword_1016A56D8, &qword_1013B2B00);
  v29 = 1;
  v27 = sub_1005C5400(&qword_1016A5730, &qword_1016A5738);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v22[*(MyAccessoryKeyEnvelope + 20)] = v30;
  v29 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v17);
  v19 = *(MyAccessoryKeyEnvelope + 24);
  v20 = v22;
  *&v22[v19] = v30;
  sub_1005C54E4(v20, v24, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
  sub_100007BAC(v23);
  return sub_1005C554C(v20, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
}

uint64_t sub_1005C4924(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A56F0, &qword_1013B2B08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1005C4E84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016A5700, &qword_1013B2B10);
  sub_1005C4ED8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1005C4A80(uint64_t a1)
{
  v2 = sub_1005C4DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4ABC(uint64_t a1)
{
  v2 = sub_1005C4DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1005C4B28()
{
  v1 = 0x4B7972616D697270;
  if (*v0 != 1)
  {
    v1 = 0x7261646E6F636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1005C4B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005C4FC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005C4BC4(uint64_t a1)
{
  v2 = sub_1005C4E30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4C00(uint64_t a1)
{
  v2 = sub_1005C4E30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005C4C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010135B4C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1005C4D1C(uint64_t a1)
{
  v2 = sub_1005C4E84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005C4D58(uint64_t a1)
{
  v2 = sub_1005C4E84();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1005C4D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1005C50F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1005C4DDC()
{
  result = qword_1016A56C0;
  if (!qword_1016A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56C0);
  }

  return result;
}

unint64_t sub_1005C4E30()
{
  result = qword_1016A56D0;
  if (!qword_1016A56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56D0);
  }

  return result;
}

unint64_t sub_1005C4E84()
{
  result = qword_1016A56F8;
  if (!qword_1016A56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A56F8);
  }

  return result;
}

unint64_t sub_1005C4ED8()
{
  result = qword_1016A5708;
  if (!qword_1016A5708)
  {
    sub_1000BC580(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C549C(&qword_101698330, &type metadata accessor for UUID);
    sub_1005C549C(&unk_101697F60, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5708);
  }

  return result;
}

uint64_t sub_1005C4FC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B7972616D697270 && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xED00007379654B79)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_1005C50F4(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A5710, &qword_1013B2B18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1005C4E84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C5278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1005C5278()
{
  result = qword_1016A5718;
  if (!qword_1016A5718)
  {
    sub_1000BC580(&qword_1016A5700, &qword_1013B2B10);
    sub_1005C549C(&qword_101698300, &type metadata accessor for UUID);
    sub_1005C549C(&qword_101697F40, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5718);
  }

  return result;
}

uint64_t sub_1005C5364(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_10169C460, &qword_1013B1CA0);
    sub_1005C549C(a2, type metadata accessor for FamilyCryptoKeysV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005C5400(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A56D8, &qword_1013B2B00);
    sub_1005C549C(a2, type metadata accessor for FamilyCryptoKeysV2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005C549C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005C54E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C554C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1005C55E0()
{
  result = qword_1016A5740;
  if (!qword_1016A5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5740);
  }

  return result;
}

unint64_t sub_1005C5638()
{
  result = qword_1016A5748;
  if (!qword_1016A5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5748);
  }

  return result;
}

unint64_t sub_1005C5690()
{
  result = qword_1016A5750;
  if (!qword_1016A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5750);
  }

  return result;
}

unint64_t sub_1005C56E8()
{
  result = qword_1016A5758;
  if (!qword_1016A5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5758);
  }

  return result;
}

unint64_t sub_1005C5740()
{
  result = qword_1016A5760;
  if (!qword_1016A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5760);
  }

  return result;
}

unint64_t sub_1005C5798()
{
  result = qword_1016A5768;
  if (!qword_1016A5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5768);
  }

  return result;
}

unint64_t sub_1005C57F0()
{
  result = qword_1016A5770;
  if (!qword_1016A5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5770);
  }

  return result;
}

unint64_t sub_1005C5848()
{
  result = qword_1016A5778;
  if (!qword_1016A5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5778);
  }

  return result;
}

unint64_t sub_1005C58A0()
{
  result = qword_1016A5780;
  if (!qword_1016A5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5780);
  }

  return result;
}

uint64_t sub_1005C58F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 88))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1005C5948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1005C59BC(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v14 = *v1;
  v7 = *v1;
  sub_10015049C(v8, v9);
  sub_1001022C4(&v14, v6);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v7, *(&v7 + 1));
    v13 = v1[1];
    v7 = v1[1];
    sub_10015049C(v8, v9);
    sub_1005C61E8(&v13, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    *&v7 = sub_10098E0F0(*(v1 + 8));
    *(&v7 + 1) = v4;
    sub_10015049C(v8, v9);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v12 = *(v1 + 40);
    v7 = *(v1 + 40);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v12, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v11 = *(v1 + 56);
    v7 = *(v1 + 56);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v11, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v10 = *(v1 + 72);
    v7 = *(v1 + 72);
    sub_10015049C(v8, v9);
    sub_1001022C4(&v10, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v7, *(&v7 + 1));
  return sub_100007BAC(v8);
}

double sub_1005C5C60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005C5DAC(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1005C5CD4(uint64_t a1)
{
  *(a1 + 8) = sub_1005C5D04();
  result = sub_1005C5D58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1005C5D04()
{
  result = qword_1016A5788;
  if (!qword_1016A5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5788);
  }

  return result;
}

unint64_t sub_1005C5D58()
{
  result = qword_1016A5790;
  if (!qword_1016A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A5790);
  }

  return result;
}

uint64_t sub_1005C5DAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v42, v43);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v8 = v6;
  v44 = v7;
  sub_10015049C(v42, v43);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_100017D5C(v9, v10);
  v12 = sub_100314594(v9, v11);
  if (v13 >> 60 == 15)
  {
    v14 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for BinaryEncodingError.encodingError(_:), v14);
    swift_willThrow();
LABEL_7:
    sub_100016590(v9, v11);
    sub_100016590(v8, v44);
LABEL_8:
    sub_100007BAC(v42);
    return sub_100007BAC(a1);
  }

  v40 = v12;
  v41 = v13;
  sub_10015049C(v42, v43);
  v16 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v18 = v17;
  sub_100017D5C(v16, v17);
  v19 = sub_10098E844(v16, v18);
  sub_100016590(v16, v18);
  if ((v19 & 0x100000000) != 0)
  {
    v23 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for BinaryEncodingError.encodingError(_:), v23);
    swift_willThrow();
    sub_100016590(v16, v18);
    sub_100006654(v40, v41);
    goto LABEL_7;
  }

  v38 = v18;
  sub_10015049C(v42, v43);
  v36 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v37 = v20;
  sub_10015049C(v42, v43);
  v21 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v39 = v22;
  v35 = v21;
  sub_10015049C(v42, v43);
  v26 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v34 = v27;
  sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v28 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v28 * 20) >> 64 != (20 * v28) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (((20 * v28) & 0x8000000000000000) == 0)
  {
    v33 = Data.subdata(in:)();
    v29 = v26;
    v31 = v30;
    sub_100016590(v29, v34);
    sub_100016590(v16, v38);
    sub_100016590(v9, v11);
    sub_100007BAC(v42);
    result = sub_100007BAC(a1);
    v32 = v44;
    *a2 = v8;
    *(a2 + 8) = v32;
    *(a2 + 16) = v40;
    *(a2 + 24) = v41;
    *(a2 + 32) = v19;
    *(a2 + 34) = BYTE2(v19);
    *(a2 + 35) = BYTE3(v19);
    *(a2 + 40) = v36;
    *(a2 + 48) = v37;
    *(a2 + 56) = v35;
    *(a2 + 64) = v39;
    *(a2 + 72) = v33;
    *(a2 + 80) = v31;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SharingRampState()
{
  result = qword_1016A5808;
  if (!qword_1016A5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C62B8()
{
  sub_1005C6310();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1005C6310()
{
  if (!qword_1016A5818)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1016A5818);
    }
  }
}

uint64_t sub_1005C6358(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v26 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v6 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v25 = (&v25 - v7);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v28 = a3;

  v14 = 0;
  while (v11)
  {
    v29 = v4;
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v28 + 56);
    v19 = (*(v28 + 48) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    v22 = v18 + *(*(type metadata accessor for MultipartAccessoryPairingInfo(0) - 8) + 72) * v17;
    v23 = v25;
    sub_10062CD24(v22, v25 + *(v26 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v23 = v21;
    v23[1] = v20;
    sub_100017D5C(v21, v20);
    v24 = v29;
    v27(v23);
    v4 = v24;
    result = sub_10000B3A8(v23, &qword_101696E38, &qword_1013D8510);
    if (v24)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v29 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005C6534(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v21 = type metadata accessor for UUID();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v21);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v18 = v5 + 16;
  v20 = (v5 + 8);
  v22 = a3;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
      v17 = v21;
LABEL_9:
      (*(v5 + 16))(v8, *(v22 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v17);
      v19(v8);
      if (v3)
      {
        break;
      }

      v12 &= v12 - 1;
      result = (*v20)(v8, v17);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    (*v20)(v8, v17);
  }

  else
  {
LABEL_5:
    v17 = v21;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005C6730(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      sub_100017D5C(v14, *(&v14 + 1));
      a1(&v14);
      result = sub_100016590(v14, *(&v14 + 1));
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005C684C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = sub_1000BC4D4(&qword_1016A5890, &qword_1013B3290);
  v6 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v8 = &v23 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v27 = v4;
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v26;
    v20 = *(v26 + 48);
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 16))(v8, v20 + *(*(v21 - 8) + 72) * v18, v21);
    *&v8[*(v24 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v27;
    v25(v8);
    v4 = v22;
    result = sub_10000B3A8(v8, &qword_1016A5890, &qword_1013B3290);
    if (v22)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v27 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005C6A20(void *(*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v22 = a1;
  v21 = v4;
  while (v9)
  {
LABEL_12:
    v28 = *(*(v4 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
    result = a1(v25, &v28);
    if (v3)
    {

LABEL_18:

      return v13;
    }

    v16 = v26;
    if (v26 != 2)
    {
      v17 = v25[0];
      v23 = v25[1];
      v18 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v18;
      if ((result & 1) == 0)
      {
        result = sub_100A5B880(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        result = sub_100A5B880((v19 > 1), v20 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v20 + 1;
      v14 = &v13[32 * v20];
      v14[32] = v17;
      *(v14 + 5) = v23;
      v14[48] = v16 & 1;
      *(v14 + 7) = v24;
      v4 = v21;
      a1 = v22;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1005C6BF0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A5AC0, &qword_1013B35F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for KeyDropCreateRequest.Member(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for OwnerPeerTrust() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = _swiftEmptyArrayStorage;
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &qword_1016A5AC0, &qword_1013B35F8);
    }

    else
    {
      v22 = v30;
      sub_10062CC64(v10, v30, type metadata accessor for KeyDropCreateRequest.Member);
      sub_10062CC64(v22, v32, type metadata accessor for KeyDropCreateRequest.Member);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5BF90(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100A5BF90(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_10062CC64(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for KeyDropCreateRequest.Member);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1005C6F0C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A5A78, &qword_1013B35A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v30 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v29 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = (a3 + 32);
  v26 = v14;
  v18 = (v14 + 48);
  v31 = _swiftEmptyArrayStorage;
  v27 = v10;
  v28 = a1;
  while (1)
  {
    v19 = *v17++;
    v32 = v19;
    a1(&v32);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_10000B3A8(v9, &qword_1016A5A78, &qword_1013B35A0);
    }

    else
    {
      v20 = v29;
      sub_1000D2AD8(v9, v29, &qword_1016A5A80, &qword_1013B35A8);
      sub_1000D2AD8(v20, v30, &qword_1016A5A80, &qword_1013B35A8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100A5D0F0(0, v31[2] + 1, 1, v31);
      }

      v22 = v31[2];
      v21 = v31[3];
      if (v22 >= v21 >> 1)
      {
        v31 = sub_100A5D0F0(v21 > 1, v22 + 1, 1, v31);
      }

      v23 = v30;
      v24 = v31;
      v31[2] = v22 + 1;
      sub_1000D2AD8(v23, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, &qword_1016A5A80, &qword_1013B35A8);
      v10 = v27;
      a1 = v28;
    }

    if (!--v16)
    {
      return v31;
    }
  }

  return v31;
}

void *sub_1005C71E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for DeviceEvent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for DeviceEventEncodedInfo(0) - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = _swiftEmptyArrayStorage;
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &unk_1016AA500, &unk_1013B3600);
    }

    else
    {
      v22 = v30;
      sub_10062CC64(v10, v30, type metadata accessor for DeviceEvent);
      sub_10062CC64(v22, v32, type metadata accessor for DeviceEvent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5D300(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100A5D300(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_10062CC64(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for DeviceEvent);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1005C7500(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A58D8, &qword_1013B3318);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RawSearchResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = *(type metadata accessor for ObservedAdvertisement(0) - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = _swiftEmptyArrayStorage;
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &qword_1016A58D8, &qword_1013B3318);
    }

    else
    {
      v22 = v30;
      sub_10062CC64(v10, v30, type metadata accessor for RawSearchResult);
      sub_10062CC64(v22, v32, type metadata accessor for RawSearchResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100A5D328(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_100A5D328(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_10062CC64(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for RawSearchResult);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

uint64_t sub_1005C781C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v8 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for TimeBasedKey();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v29 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v26 = &v25 - v16;
  v27 = v17;
  v18 = (v17 + 48);
  v19 = _swiftEmptyArrayStorage;
  v28 = a4;
  while (1)
  {
    v31 = a3;
    a1(&v31);
    if (v4)
    {
      break;
    }

    if ((*v18)(v11, 1, v12) == 1)
    {
      result = sub_10000B3A8(v11, &qword_10169BA30, &unk_101395620);
    }

    else
    {
      v21 = v26;
      sub_10062CC64(v11, v26, type metadata accessor for TimeBasedKey);
      sub_10062CC64(v21, v29, type metadata accessor for TimeBasedKey);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_100A5BDF0(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_100A5BDF0(v22 > 1, v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      result = sub_10062CC64(v29, v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for TimeBasedKey);
      a4 = v28;
    }

    if (a4 == a3)
    {
      return v19;
    }

    if (__CFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v19;
}

void *sub_1005C7B10(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = _s18ConnectionKeyGroupVMa();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return _swiftEmptyArrayStorage;
  }

  v18 = (a3 + 32);
  v27 = v15;
  v19 = (v15 + 48);
  v20 = _swiftEmptyArrayStorage;
  v28 = v11;
  v29 = a2;
  while (1)
  {
    v21 = *v18++;
    v32 = v21;
    a1(&v32);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_10000B3A8(v10, &qword_1016A5A70, &unk_1013D6860);
    }

    else
    {
      v22 = v30;
      sub_10062CC64(v10, v30, _s18ConnectionKeyGroupVMa);
      sub_10062CC64(v22, v31, _s18ConnectionKeyGroupVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100A5BE18(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_100A5BE18(v23 > 1, v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      sub_10062CC64(v31, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, _s18ConnectionKeyGroupVMa);
      v11 = v28;
    }

    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_1005C7DD8(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005C7F84(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v9 = 0;
    do
    {
      v15 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v17, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v15;
        }

        if (v17)
        {
          break;
        }

        if (v9 == v6)
        {
          return v15;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v18;
    }

    while (v9 != v6);
  }

  return result;
}