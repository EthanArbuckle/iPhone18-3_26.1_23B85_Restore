uint64_t sub_10040DB08()
{
  v1 = v0[30];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[36];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10040DC10()
{
  v1 = *(v0[30] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_10040DCD8;
  v4 = v0[37];
  v5 = v0[25];

  return v7(v5, &unk_1004D89D8, v4);
}

uint64_t sub_10040DCD8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = sub_10040DEC4;
  }

  else
  {
    v6 = v2[37];
    v7 = v2[7];

    v5 = sub_10040DE00;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040DE00()
{
  v1 = v0[23];
  sub_1000176A8(v0[25], v0[26], &qword_1005AF228, &unk_1004D0440);
  sub_10041AE64(v1, type metadata accessor for FriendSharedSecretsRecord);
  v2 = v0[30];
  v0[43] = v2;
  (*(v0[10] + 104))(v0[11], enum case for CloudKitCoordinator.Database.private(_:), v0[9]);

  return _swift_task_switch(sub_10040E734, v2, 0);
}

uint64_t sub_10040DEC4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10040DF30, v2, 0);
}

uint64_t sub_10040DF30()
{
  v1 = v0[30];
  v2 = v0[23];

  sub_10041AE64(v2, type metadata accessor for FriendSharedSecretsRecord);
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[39];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040E058()
{
  v1 = *(v0[30] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_10040E120;
  v4 = v0[40];
  v5 = v0[24];

  return v7(v5, &unk_1004D89C8, v4);
}

uint64_t sub_10040E120()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = sub_10040E5A0;
  }

  else
  {
    v6 = v2[40];
    v7 = v2[7];

    v5 = sub_10040E248;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040E248()
{
  v26 = v0;
  sub_1000176A8(v0[24], v0[26], &qword_1005AF228, &unk_1004D0440);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005E0C30);
  sub_10041ADFC(v2, v1, type metadata accessor for FriendSharedSecretsRecord);
  sub_10041ADFC(v2, v3, type metadata accessor for FriendSharedSecretsRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v24 = v0[12];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    sub_10041ADFC(v9, v7, type metadata accessor for FriendSharedSecretsRecord);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10041AE64(v9, type metadata accessor for FriendSharedSecretsRecord);
    v15 = sub_10000D01C(v12, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10041AE64(v8, type metadata accessor for FriendSharedSecretsRecord);
    v19 = sub_10000D01C(v16, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Saving new %s %{public}s to CK.", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[18];
    v20 = v0[19];

    sub_10041AE64(v21, type metadata accessor for FriendSharedSecretsRecord);
    sub_10041AE64(v20, type metadata accessor for FriendSharedSecretsRecord);
  }

  sub_10041AE64(v0[20], type metadata accessor for FriendSharedSecretsRecord);
  v22 = v0[30];
  v0[43] = v22;
  (*(v0[10] + 104))(v0[11], enum case for CloudKitCoordinator.Database.private(_:), v0[9]);

  return _swift_task_switch(sub_10040E734, v22, 0);
}

uint64_t sub_10040E5A0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_10040E60C, v2, 0);
}

uint64_t sub_10040E60C()
{
  v1 = v0[30];
  v2 = v0[20];

  sub_10041AE64(v2, type metadata accessor for FriendSharedSecretsRecord);
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[42];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040E734()
{
  v1 = *(v0[30] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_10040E7E8;
  v4 = v0[26];
  v5 = v0[11];

  return v7(v4, v5);
}

uint64_t sub_10040E7E8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[43];
    v5 = sub_10040EB5C;
  }

  else
  {
    v6 = v2[7];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_10040E920;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10040E920()
{
  v25 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000D01C(0xD000000000000060, 0x80000001004EA2C0, &v24);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s completed!", v7, 0xCu);
    sub_100004984(v8);
  }

  else
  {
    v9 = v0[30];
  }

  sub_100002CE0(v6, &qword_1005AF228, &unk_1004D0440);
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v15 = v0[21];
  v14 = v0[22];
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v19 = v0[15];
  v22 = v0[14];
  v23 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10040EB5C()
{
  v1 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return _swift_task_switch(sub_10040EBD8, v1, 0);
}

uint64_t sub_10040EBD8()
{
  v1 = v0[30];
  v2 = v0[26];

  sub_100002CE0(v2, &qword_1005AF228, &unk_1004D0440);
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[45];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040ECFC()
{
  v1 = v0[28];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];
  v11 = v0[15];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[31];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10040EE04()
{
  v1 = v0[32];
  v2 = v0[30];

  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[34];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10040EF18(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 128) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Handle();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10040F048, 0, 0);
}

uint64_t sub_10040F048()
{
  v54 = v0;
  if (*(v0 + 128))
  {
    v1 = *(v0 + 16);
    if (qword_1005A8530 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 24);
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C30);
    (*(v3 + 16))(v2, v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 64);
    if (v9)
    {
      v51 = v8;
      v13 = *(v0 + 48);
      v14 = *(v0 + 56);
      v48 = *(v0 + 40);
      v15 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v15 = 136446979;
      *(v15 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, &v53);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      log = v7;
      Friend.handle.getter();
      v16 = Handle.identifier.getter();
      v18 = v17;
      (*(v13 + 8))(v14, v48);
      (*(v10 + 8))(v11, v12);
      v19 = sub_10000D01C(v16, v18, &v53);

      *(v15 + 24) = v19;
      *(v15 + 32) = 2114;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 34) = v20;
      *v49 = v20;
      _os_log_impl(&_mh_execute_header, log, v51, "%{public}s failed for %{private,mask.hash}s. Error %{public}@", v15, 0x2Au);
      sub_100002CE0(v49, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v11, v12);
    }

    v40 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 112) = v40;
    v41 = swift_task_alloc();
    *(v0 + 120) = v41;
    *v41 = v0;
    v41[1] = sub_10040F7D4;
    v42 = *(v0 + 32);
    v43 = *(v0 + 16);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
    v24 = *(v0 + 24);
    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005E0C30);
    (*(v23 + 16))(v21, v24, v22);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 88);
    v30 = *(v0 + 64);
    v31 = *(v0 + 72);
    if (v28)
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 56);
      v52 = *(v0 + 40);
      v34 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v34 = 136446723;
      *(v34 + 4) = sub_10000D01C(0xD000000000000010, 0x80000001004EA370, &v53);
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      v50 = v27;
      v35 = v30;
      Friend.handle.getter();
      v36 = Handle.identifier.getter();
      v38 = v37;
      (*(v32 + 8))(v33, v52);
      (*(v31 + 8))(v29, v35);
      v39 = sub_10000D01C(v36, v38, &v53);

      *(v34 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v50, "%{public}s succeeded for %{private,mask.hash}s", v34, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }

    v40 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 96) = v40;
    v44 = swift_task_alloc();
    *(v0 + 104) = v44;
    *v44 = v0;
    v44[1] = sub_10040F668;
    v45 = *(v0 + 32);
    v43 = 0;
  }

  return sub_100402934(0xD00000000000003BLL, 0x80000001004EA330, v43, v40);
}

uint64_t sub_10040F668()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 56);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10040F7D4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 56);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10040F940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for CloudKitCoordinator.Database();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v10 = type metadata accessor for FriendSharedSecretsRecord();
  v4[16] = v10;
  v11 = *(v10 - 8);
  v4[17] = v11;
  v12 = *(v11 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v4[23] = v14;
  v15 = *(v14 - 8);
  v4[24] = v15;
  v16 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v17 = type metadata accessor for Handle();
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_10040FBF0, 0, 0);
}

uint64_t sub_10040FBF0()
{
  v46 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = v0[29];
    v4 = v0[26];
    v5 = v0[27];
    v6 = v0[7];
    v7 = type metadata accessor for Logger();
    v0[30] = sub_10000A6F0(v7, qword_1005E0C30);
    v8 = *(v5 + 16);
    v0[31] = v8;
    v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[29];
    v14 = v0[26];
    v13 = v0[27];
    if (v11)
    {
      v43 = v0[8];
      v15 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v15 = 141558531;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100006964(&qword_1005B02C8, &type metadata accessor for Handle);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_10000D01C(v16, v18, &v45);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2082;
      v21 = sub_10044F8D8(v43);
      v23 = sub_10000D01C(v21, v22, &v45);

      *(v15 + 24) = v23;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing peer %{private,mask.hash}s. Options: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v19 = *(v13 + 8);
      v19(v12, v14);
    }

    v0[33] = v19;
    v41 = async function pointer to daemon.getter[1];
    v42 = swift_task_alloc();
    v0[34] = v42;
    *v42 = v0;
    v42[1] = sub_100410120;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005E0C30);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA3B0, &v45);
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Feature.FindMy.redStripe FF disabled.", v27, 0xCu);
      sub_100004984(v28);
    }

    v30 = v0[28];
    v29 = v0[29];
    v31 = v0[25];
    v33 = v0[21];
    v32 = v0[22];
    v35 = v0[19];
    v34 = v0[20];
    v36 = v0[18];
    v38 = v0[14];
    v37 = v0[15];
    v44 = v0[13];

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_100410120(uint64_t a1)
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
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100006964(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1004102FC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004102FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v8 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = sub_1004119AC;
  }

  else
  {
    v6 = v3[35];

    v5 = sub_100410418;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100410418()
{
  v41 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 56);
  Handle.peerID.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(*(v0 + 176), &qword_1005A96E0, &qword_1004C2A80);
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);
    (*(v0 + 248))(*(v0 + 224), *(v0 + 56), *(v0 + 208));
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 264);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 208);
    if (v9)
    {
      v14 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      v10(v11, v13);
      v18 = sub_10000D01C(v15, v17, &v40);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No peer record for %{private,mask.hash}s!", v14, 0x16u);
      sub_100004984(v39);
    }

    else
    {

      v10(v11, v13);
    }

    v25 = *(v0 + 296);
    sub_1003DA6A0();
    swift_allocError();
    *v26 = 15;
    swift_willThrow();

    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 200);
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(v0 + 144);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 104);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v19 = *(v0 + 296);
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
    v20 = *(v19 + 128);
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_100410770;
    v22 = *(v0 + 200);
    v23 = *(v0 + 120);

    return sub_1001C4430(v23, v22);
  }
}

uint64_t sub_100410770()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_100410D74;
  }

  else
  {
    v3 = sub_100410884;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100410884()
{
  v53 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
    v2 = *(v0 + 256);
    v3 = *(v0 + 240);
    (*(v0 + 248))(*(v0 + 224), *(v0 + 56), *(v0 + 208));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 264);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    if (v6)
    {
      v11 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52[0] = v51;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v12 = Handle.identifier.getter();
      v14 = v13;
      v7(v8, v10);
      v15 = sub_10000D01C(v12, v14, v52);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "No peer record for %{private,mask.hash}s!", v11, 0x16u);
      sub_100004984(v51);
    }

    else
    {

      v7(v8, v10);
    }

    v30 = *(v0 + 296);
    sub_1003DA6A0();
    swift_allocError();
    *v31 = 15;
    swift_willThrow();

    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 200);
    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v38 = *(v0 + 152);
    v37 = *(v0 + 160);
    v39 = *(v0 + 144);
    v40 = *(v0 + 112);
    v41 = *(v0 + 120);
    v50 = *(v0 + 104);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v16 = *(v0 + 240);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    sub_10041AAB8(v1, v17, type metadata accessor for FriendSharedSecretsRecord);
    sub_10041ADFC(v17, v18, type metadata accessor for FriendSharedSecretsRecord);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 160);
    if (v21)
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 128);
      v25 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA3B0, v52);
      *(v25 + 12) = 2080;
      sub_10041ADFC(v22, v23, type metadata accessor for FriendSharedSecretsRecord);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_10041AE64(v22, type metadata accessor for FriendSharedSecretsRecord);
      v29 = sub_10000D01C(v26, v28, v52);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s record %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10041AE64(v22, type metadata accessor for FriendSharedSecretsRecord);
    }

    v44 = *(v0 + 296);
    v45 = *(v0 + 168);
    v46 = *(v0 + 80);
    v48 = *(v0 + 56);
    v47 = *(v0 + 64);
    v49 = swift_task_alloc();
    *(v0 + 328) = v49;
    v49[2] = v47;
    v49[3] = v45;
    v49[4] = v48;
    v49[5] = v46;

    return _swift_task_switch(sub_100410E90, v44, 0);
  }
}

uint64_t sub_100410D74()
{
  v1 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  (*(v3 + 8))(v2, v4);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];
  v13 = v0[14];
  v14 = v0[15];
  v17 = v0[13];
  v18 = v0[40];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100410E90()
{
  v1 = *(v0[37] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_100410F58;
  v4 = v0[41];
  v5 = v0[14];

  return v7(v5, &unk_1004D8A20, v4);
}

uint64_t sub_100410F58()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 296);
    v5 = sub_100411294;
  }

  else
  {
    v6 = *(v2 + 328);

    v5 = sub_10041107C;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10041107C()
{
  v16 = v0;
  v1 = v0[30];
  sub_10041ADFC(v0[21], v0[18], type metadata accessor for FriendSharedSecretsRecord);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[23];
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_10041AE64(v5, type metadata accessor for FriendSharedSecretsRecord);
    v11 = sub_10000D01C(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating peer record %s from CK.", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
    v12 = v0[18];

    sub_10041AE64(v12, type metadata accessor for FriendSharedSecretsRecord);
  }

  v13 = v0[37];
  (*(v0[12] + 104))(v0[13], enum case for CloudKitCoordinator.Database.private(_:), v0[11]);

  return _swift_task_switch(sub_100411438, v13, 0);
}

uint64_t sub_100411294()
{
  v1 = *(v0 + 328);

  return _swift_task_switch(sub_1004112FC, 0, 0);
}

uint64_t sub_1004112FC()
{
  v1 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[21];

  (*(v3 + 8))(v2, v4);
  sub_10041AE64(v5, type metadata accessor for FriendSharedSecretsRecord);
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[15];
  v18 = v0[13];
  v19 = v0[43];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100411438()
{
  v1 = *(v0[37] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_1004114E8;
  v4 = v0[13];
  v5 = v0[14];

  return v7(v5, v4);
}

uint64_t sub_1004114E8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[37];
    v5 = sub_1004117DC;
  }

  else
  {
    v6 = v2[9];
    (*(v2[12] + 8))(v2[13], v2[11]);
    v5 = sub_100411620;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100411620()
{
  v1 = *(v0 + 72);
  sub_100438FC0();

  return _swift_task_switch(sub_100411688, 0, 0);
}

uint64_t sub_100411688()
{
  v1 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[14];

  sub_100002CE0(v6, &qword_1005AF228, &unk_1004D0440);
  (*(v3 + 8))(v2, v4);
  sub_10041AE64(v5, type metadata accessor for FriendSharedSecretsRecord);
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[25];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[18];
  v16 = v0[14];
  v15 = v0[15];
  v19 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004117DC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  return _swift_task_switch(sub_100411854, 0, 0);
}

uint64_t sub_100411854()
{
  v1 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[14];

  sub_100002CE0(v6, &qword_1005AF228, &unk_1004D0440);
  (*(v3 + 8))(v2, v4);
  sub_10041AE64(v5, type metadata accessor for FriendSharedSecretsRecord);
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[25];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[18];
  v15 = v0[14];
  v16 = v0[15];
  v19 = v0[13];
  v20 = v0[45];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1004119AC()
{
  v1 = v0[35];

  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[15];
  v14 = v0[13];
  v15 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100411AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Handle();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_100411BC8, 0, 0);
}

uint64_t sub_100411BC8()
{
  v87 = v0;
  v1 = v0[3];
  if ((~*(v0 + 6) & 3) == 0)
  {
    goto LABEL_2;
  }

  if (v1)
  {
    v32 = v0[12];
    v33 = v0[4];
    v34 = type metadata accessor for FriendSharedSecretsRecord();
    sub_100005F04(v33 + *(v34 + 24), v32, &qword_1005AEB98, &unk_1004D07C0);
    v35 = type metadata accessor for SharedSecretKey();
    v36 = (*(*(v35 - 8) + 48))(v32, 1, v35);
    sub_100002CE0(v32, &qword_1005AEB98, &unk_1004D07C0);
    if (v36 != 1)
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v37 = v0[10];
      v39 = v0[6];
      v38 = v0[7];
      v40 = v0[5];
      v41 = type metadata accessor for Logger();
      sub_10000A6F0(v41, qword_1005E0C30);
      (*(v38 + 16))(v37, v40, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[10];
      v47 = v0[6];
      v46 = v0[7];
      if (v44)
      {
        v48 = swift_slowAlloc();
        v84 = v34;
        v86 = swift_slowAlloc();
        v49 = v86;
        *v48 = 141558275;
        *(v48 + 4) = 1752392040;
        *(v48 + 12) = 2081;
        v50 = Handle.identifier.getter();
        v52 = v51;
        (*(v46 + 8))(v45, v47);
        v53 = sub_10000D01C(v50, v52, &v86);

        *(v48 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "Removing incomingSharedSecret for %{private,mask.hash}s", v48, 0x16u);
        sub_100004984(v49);
        v34 = v84;
      }

      else
      {

        (*(v46 + 8))(v45, v47);
      }

      v75 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
      v76 = swift_task_alloc();
      v0[13] = v76;
      v77 = sub_100006964(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
      *v76 = v0;
      v76[1] = sub_1004124B4;
      v78 = v0[4];
      v79 = v0[2];
      v80 = sub_100412964;
      goto LABEL_29;
    }

LABEL_2:
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C30);
    (*(v3 + 16))(v2, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v86 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = Handle.identifier.getter();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_10000D01C(v15, v17, &v86);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Removing FriendSharedSecretsRecord for %{private,mask.hash}s", v13, 0x16u);
      sub_100004984(v14);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v26 = async function pointer to CloudKitChangeSet.Adaptor.delete<A>(record:)[1];
    v27 = swift_task_alloc();
    v0[15] = v27;
    v28 = type metadata accessor for FriendSharedSecretsRecord();
    v29 = sub_100006964(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
    *v27 = v0;
    v27[1] = sub_1004127D4;
    v30 = v0[4];
    v31 = v0[2];

    return CloudKitChangeSet.Adaptor.delete<A>(record:)(v30, v28, v29);
  }

  if ((v1 & 2) == 0)
  {
    v20 = v0[11];
    v19 = v0[12];
    v22 = v0[9];
    v21 = v0[10];
    v23 = v0[8];

    v24 = v0[1];

    return v24();
  }

  v54 = v0[11];
  v55 = v0[4];
  v34 = type metadata accessor for FriendSharedSecretsRecord();
  sub_100005F04(v55 + *(v34 + 32), v54, &qword_1005AEB98, &unk_1004D07C0);
  v56 = type metadata accessor for SharedSecretKey();
  v57 = (*(*(v56 - 8) + 48))(v54, 1, v56);
  sub_100002CE0(v54, &qword_1005AEB98, &unk_1004D07C0);
  if (v57 == 1)
  {
    goto LABEL_2;
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v58 = v0[9];
  v60 = v0[6];
  v59 = v0[7];
  v61 = v0[5];
  v62 = type metadata accessor for Logger();
  sub_10000A6F0(v62, qword_1005E0C30);
  (*(v59 + 16))(v58, v61, v60);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v0[9];
  v68 = v0[6];
  v67 = v0[7];
  if (v65)
  {
    v69 = swift_slowAlloc();
    v85 = v34;
    v86 = swift_slowAlloc();
    v70 = v86;
    *v69 = 141558275;
    *(v69 + 4) = 1752392040;
    *(v69 + 12) = 2081;
    v71 = Handle.identifier.getter();
    v73 = v72;
    (*(v67 + 8))(v66, v68);
    v74 = sub_10000D01C(v71, v73, &v86);

    *(v69 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v63, v64, "Removing outgoingSharedSecret for %{private,mask.hash}s", v69, 0x16u);
    sub_100004984(v70);
    v34 = v85;
  }

  else
  {

    (*(v67 + 8))(v66, v68);
  }

  v81 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
  v82 = swift_task_alloc();
  v0[14] = v82;
  v77 = sub_100006964(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v82 = v0;
  v82[1] = sub_100412644;
  v78 = v0[4];
  v83 = v0[2];
  v80 = sub_1004129F4;
LABEL_29:

  return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v78, v80, 0, v34, v77);
}

uint64_t sub_1004124B4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v10 = *v0;

  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100412644()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v10 = *v0;

  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1004127D4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v10 = *v0;

  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = v1[8];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100412964(uint64_t a1)
{
  v2 = *(type metadata accessor for FriendSharedSecretsRecord() + 32);
  sub_100002CE0(a1 + v2, &qword_1005AEB98, &unk_1004D07C0);
  v3 = type metadata accessor for SharedSecretKey();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1004129F4(uint64_t a1)
{
  v2 = *(type metadata accessor for FriendSharedSecretsRecord() + 24);
  sub_100002CE0(a1 + v2, &qword_1005AEB98, &unk_1004D07C0);
  v3 = type metadata accessor for SharedSecretKey();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_100412A84(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = type metadata accessor for Handle();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100412B54, 0, 0);
}

uint64_t sub_100412B54()
{
  v40 = v0;
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (qword_1005A8530 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C30);
    (*(v3 + 16))(v2, v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v0 + 32);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v13 = 136446979;
      *(v13 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA3B0, &v39);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      v14 = Handle.identifier.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_10000D01C(v14, v16, &v39);

      *(v13 + 24) = v17;
      *(v13 + 32) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 34) = v18;
      *v38 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s failed for %{private,mask.hash}s. Error %{public}@", v13, 0x2Au);
      sub_100002CE0(v38, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();

LABEL_10:

      goto LABEL_13;
    }

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v22 = *(v0 + 24);
    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0C30);
    (*(v21 + 16))(v19, v22, v20);
    v7 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v7, v24);
    v26 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    if (v25)
    {
      v29 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v29 = 136446723;
      *(v29 + 4) = sub_10000D01C(0xD00000000000001BLL, 0x80000001004EA3B0, &v39);
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      v30 = Handle.identifier.getter();
      v32 = v31;
      (*(v28 + 8))(v26, v27);
      v33 = sub_10000D01C(v30, v32, &v39);

      *(v29 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v7, v24, "%{public}s succeeded for %{private,mask.hash}s", v29, 0x20u);
      swift_arrayDestroy();

      goto LABEL_10;
    }

    (*(v28 + 8))(v26, v27);
  }

LABEL_13:
  v35 = *(v0 + 48);
  v34 = *(v0 + 56);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100412FF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t), uint64_t a5)
{
  v65 = a5;
  v62 = a4;
  v71 = a3;
  v72 = a2;
  v70 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v66 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Handle();
  v48 = v12;
  v73 = *(v12 - 8);
  v13 = v73[8];
  v14 = __chkstk_darwin(v12);
  v61 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v13;
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v51 = &v47 - v15;
  v17 = sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  v67 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v60 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v50 = &v47 - v21;
  v64 = *(a2 + 128);
  v63 = type metadata accessor for WorkItemQueue.WorkItem();
  v23 = *(v18 + 16);
  v58 = v18 + 16;
  v59 = v23;
  v23(v22, v70, v17);
  v24 = v73;
  v25 = v73[2];
  v56 = v73 + 2;
  v57 = v25;
  v25(v16, v71, v12);
  v26 = v69;
  (*(v69 + 16))(&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v62, v68);
  v27 = *(v18 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = *(v24 + 80);
  v30 = (v19 + v29 + v28) & ~v29;
  v31 = (v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v26 + 80) + v31 + 8) & ~*(v26 + 80);
  v49 = v29 | v27 | 7;
  v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = *(v18 + 32);
  v53 = v18 + 32;
  v62 = v35;
  v36 = v67;
  v35(v34 + v28, v50, v67);
  v37 = v73[4];
  v73 += 4;
  v50 = v37;
  v38 = v48;
  (v37)(v34 + v30, v51, v48);
  *(v34 + v31) = v72;
  (*(v69 + 32))(v34 + v32, v52, v68);
  v39 = v65;
  *(v34 + v33) = v65;
  v40 = v61;
  v57(v61, v71, v38);
  v41 = v60;
  v59(v60, v70, v36);
  v42 = (v29 + 16) & ~v29;
  v43 = (v54 + v27 + v42) & ~v27;
  v44 = (v55 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (v50)(v45 + v42, v40, v38);
  v62(v45 + v43, v41, v67);
  *(v45 + v44) = v39;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100413524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = *(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v5[19] = v8;
  v9 = *(v8 - 8);
  v5[20] = v9;
  v5[21] = *(v9 + 64);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v5[29] = v11;
  v12 = *(v11 - 8);
  v5[30] = v12;
  v13 = *(v12 + 64) + 15;
  v5[31] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v15 = type metadata accessor for SharedSecretKey();
  v5[33] = v15;
  v16 = *(v15 - 8);
  v5[34] = v16;
  v17 = *(v16 + 64) + 15;
  v5[35] = swift_task_alloc();
  v18 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v19 = type metadata accessor for FriendSharedSecretsRecord();
  v5[37] = v19;
  v20 = *(v19 - 8);
  v5[38] = v20;
  v21 = *(v20 + 64) + 15;
  v5[39] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v23 = type metadata accessor for UUID();
  v5[41] = v23;
  v24 = *(v23 - 8);
  v5[42] = v24;
  v25 = *(v24 + 64) + 15;
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_100413948, 0, 0);
}

uint64_t sub_100413948()
{
  v37 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100006964(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v2 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if ((My & 1) == 0)
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0C30);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v36);
    v10 = "%{public}s Feature.FindMy.redStripe FF disabled.";
    goto LABEL_14;
  }

  if (sub_1003F399C())
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[44] = v4;
    *v4 = v0;
    v4[1] = sub_100413DFC;

    return daemon.getter();
  }

  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0C30);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v36 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v36);
    v10 = "%{public}s isFindingCapable == false.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v6, v7, v10, v8, 0xCu);
    sub_100004984(v9);
  }

LABEL_15:

  v12 = v0[15];
  v13 = v0[7];
  v14 = type metadata accessor for DiscoveryToken(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  CheckedContinuation.resume(returning:)();
  v15 = v0[43];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[35];
  v19 = v0[36];
  v21 = v0[31];
  v20 = v0[32];
  v23 = v0[27];
  v22 = v0[28];
  v24 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v29 = v0[23];
  v30 = v0[22];
  v31 = v0[18];
  v32 = v0[17];
  v33 = v0[16];
  v34 = v0[15];
  v35 = v0[12];

  v25 = v0[1];

  return v25();
}

uint64_t sub_100413DFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v12 = *v1;
  *(v3 + 360) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 368) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100006964(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_100413FD8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100413FD8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v8 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = sub_100415BCC;
  }

  else
  {
    v6 = v3[45];

    v5 = sub_1004140F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004140F4()
{
  v1 = v0[47];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[49] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withTimeout<A>(_:block:)[1];

  v5 = swift_task_alloc();
  v0[50] = v5;
  *v5 = v0;
  v5[1] = sub_1004141F4;

  return withTimeout<A>(_:block:)(v5, 0x8155A43676E00000, 6, &unk_1004D8970, v3, &type metadata for () + 8);
}

uint64_t sub_1004141F4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_100415D2C;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_100414310;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100414310()
{
  v55 = v0;
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = v0[8];
  Handle.peerID.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100002CE0(v0[40], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v5 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[8];
    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0C30);
    (*(v7 + 16))(v5, v8, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v54 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = Handle.identifier.getter();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_10000D01C(v18, v20, &v54);

      *(v16 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "No peer record for %{private,mask.hash}s!", v16, 0x16u);
      sub_100004984(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v28 = v0[47];
    v29 = v0[12];
    v30 = v0[9];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v30;

    sub_1001D7F30(0, 0, v29, &unk_1004D8980, v32);

    sub_1003DA6A0();
    swift_allocError();
    *v33 = 15;
    swift_willThrow();

    v34 = v0[43];
    v36 = v0[39];
    v35 = v0[40];
    v38 = v0[35];
    v37 = v0[36];
    v39 = v0[31];
    v40 = v0[32];
    v42 = v0[27];
    v41 = v0[28];
    v43 = v0[26];
    v45 = v0[25];
    v46 = v0[24];
    v47 = v0[23];
    v48 = v0[22];
    v49 = v0[18];
    v50 = v0[17];
    v51 = v0[16];
    v52 = v0[15];
    v53 = v0[12];

    v44 = v0[1];

    return v44();
  }

  else
  {
    v22 = v0[47];
    (*(v0[42] + 32))(v0[43], v0[40], v0[41]);
    v23 = *(v22 + 128);
    v24 = swift_task_alloc();
    v0[52] = v24;
    *v24 = v0;
    v24[1] = sub_1004147BC;
    v25 = v0[43];
    v26 = v0[36];

    return sub_1001C4430(v26, v25);
  }
}

uint64_t sub_1004147BC()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_100415A4C;
  }

  else
  {
    v3 = sub_1004148D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004148D0()
{
  v200 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 176);
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *(v0 + 64);
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0C30);
    (*(v5 + 16))(v3, v6, v4);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v199[0] = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = Handle.identifier.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_10000D01C(v16, v18, v199);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "No peer record for %{private,mask.hash}s!", v14, 0x16u);
      sub_100004984(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

    v27 = *(v0 + 376);
    v28 = *(v0 + 96);
    v29 = *(v0 + 72);
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v29;

    sub_1001D7F30(0, 0, v28, &unk_1004D8980, v31);

    sub_1003DA6A0();
    swift_allocError();
    *v32 = 15;
    swift_willThrow();

    goto LABEL_18;
  }

  v20 = *(v0 + 312);
  v21 = *(v0 + 264);
  v22 = *(v0 + 272);
  v23 = *(v0 + 256);
  sub_10041AAB8(v2, v20, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v20 + *(v1 + 24), v23, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    v24 = *(v0 + 256);
    v25 = &qword_1005AEB98;
    v26 = &unk_1004D07C0;
LABEL_12:
    sub_100002CE0(v24, v25, v26);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 184);
    v40 = *(v0 + 152);
    v41 = *(v0 + 160);
    v42 = *(v0 + 64);
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005E0C30);
    (*(v41 + 16))(v39, v42, v40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 184);
    v48 = *(v0 + 152);
    v49 = *(v0 + 160);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v199[0] = v51;
      *v50 = 141558275;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      v52 = Handle.identifier.getter();
      v54 = v53;
      (*(v49 + 8))(v47, v48);
      v55 = sub_10000D01C(v52, v54, v199);

      *(v50 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v44, v45, "Missing outgoingSharedSecret for %{private,mask.hash}s!", v50, 0x16u);
      sub_100004984(v51);
    }

    else
    {

      (*(v49 + 8))(v47, v48);
    }

    v56 = *(v0 + 376);
    v58 = *(v0 + 336);
    v57 = *(v0 + 344);
    v59 = *(v0 + 328);
    v60 = *(v0 + 312);
    v61 = *(v0 + 96);
    v62 = *(v0 + 72);
    v63 = type metadata accessor for TaskPriority();
    (*(*(v63 - 8) + 56))(v61, 1, 1, v63);
    v64 = swift_allocObject();
    v64[2] = 0;
    v64[3] = 0;
    v64[4] = v62;

    sub_1001D7F30(0, 0, v61, &unk_1004D8990, v64);

    sub_1003DA6A0();
    swift_allocError();
    *v65 = 15;
    swift_willThrow();

    sub_10041AE64(v60, type metadata accessor for FriendSharedSecretsRecord);
    (*(v58 + 8))(v57, v59);
    goto LABEL_18;
  }

  v33 = *(v0 + 312);
  v34 = *(v0 + 296);
  v35 = *(v0 + 232);
  v36 = *(v0 + 240);
  v37 = *(v0 + 224);
  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  sub_100005F04(v33 + *(v34 + 28), v37, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v36 + 48))(v37, 1, v35) == 1)
  {
    v38 = *(v0 + 224);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    v25 = &unk_1005AE5B0;
    v26 = &qword_1004C32F0;
    v24 = v38;
    goto LABEL_12;
  }

  (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v79 = *(v0 + 208);
  v78 = *(v0 + 216);
  v81 = *(v0 + 152);
  v80 = *(v0 + 160);
  v82 = *(v0 + 64);
  v83 = type metadata accessor for Logger();
  sub_10000A6F0(v83, qword_1005E0C30);
  v84 = *(v80 + 16);
  v84(v78, v82, v81);
  v195 = v84;
  v84(v79, v82, v81);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  v87 = os_log_type_enabled(v85, v86);
  v89 = *(v0 + 208);
  v88 = *(v0 + 216);
  v91 = *(v0 + 152);
  v90 = *(v0 + 160);
  if (v87)
  {
    v92 = swift_slowAlloc();
    v199[0] = swift_slowAlloc();
    *v92 = 136447235;
    *(v92 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, v199);
    *(v92 + 12) = 2160;
    *(v92 + 14) = 1752392040;
    *(v92 + 22) = 2081;
    v93 = Handle.identifier.getter();
    v184 = v86;
    v95 = v94;
    v96 = *(v90 + 8);
    v96(v88, v91);
    v97 = sub_10000D01C(v93, v95, v199);

    *(v92 + 24) = v97;
    *(v92 + 32) = 2160;
    *(v92 + 34) = 1752392040;
    *(v92 + 42) = 2081;
    sub_100006964(&qword_1005B02C8, &type metadata accessor for Handle);
    v98 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v99;
    v96(v89, v91);
    v101 = sub_10000D01C(v98, v100, v199);

    *(v92 + 44) = v101;
    _os_log_impl(&_mh_execute_header, v85, v184, "%{public}s found existing peerID: %{private,mask.hash}s for handle %{private,mask.hash}s.", v92, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v96 = *(v90 + 8);
    v96(v89, v91);
    v96(v88, v91);
  }

  v102 = *(v0 + 424);
  v103 = *(v0 + 72);
  sub_10042E958(*(v0 + 280), *(v0 + 248), *(v0 + 80), *(v0 + 144));
  if (v102)
  {
    v104 = *(v0 + 376);
    v105 = *(v0 + 336);
    v196 = *(v0 + 344);
    v106 = *(v0 + 328);
    v107 = *(v0 + 312);
    v109 = *(v0 + 272);
    v108 = *(v0 + 280);
    v110 = *(v0 + 264);
    v111 = *(v0 + 240);
    v112 = *(v0 + 248);
    v113 = *(v0 + 232);

    (*(v111 + 8))(v112, v113);
    (*(v109 + 8))(v108, v110);
    sub_10041AE64(v107, type metadata accessor for FriendSharedSecretsRecord);
    (*(v105 + 8))(v196, v106);
LABEL_18:
    v66 = *(v0 + 344);
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 280);
    v70 = *(v0 + 288);
    v72 = *(v0 + 248);
    v71 = *(v0 + 256);
    v74 = *(v0 + 216);
    v73 = *(v0 + 224);
    v75 = *(v0 + 208);
    v169 = *(v0 + 200);
    v171 = *(v0 + 192);
    v174 = *(v0 + 184);
    v177 = *(v0 + 176);
    v180 = *(v0 + 144);
    v183 = *(v0 + 136);
    v187 = *(v0 + 128);
    v191 = *(v0 + 120);
    v194 = *(v0 + 96);

    v76 = *(v0 + 8);
    goto LABEL_19;
  }

  v114 = *(v0 + 200);
  v115 = *(v0 + 152);
  v116 = *(v0 + 64);
  sub_100005F04(*(v0 + 144), *(v0 + 136), &qword_1005B0F30, &qword_1004D3308);
  v195(v114, v116, v115);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v120 = *(v0 + 128);
    v119 = *(v0 + 136);
    v121 = swift_slowAlloc();
    v199[0] = swift_slowAlloc();
    *v121 = 141558787;
    *(v121 + 4) = 1752392040;
    *(v121 + 12) = 2081;
    sub_100005F04(v119, v120, &qword_1005B0F30, &qword_1004D3308);
    v122 = type metadata accessor for DiscoveryToken(0);
    v123 = (*(*(v122 - 8) + 48))(v120, 1, v122);
    v124 = *(v0 + 128);
    v188 = v96;
    if (v123 == 1)
    {
      sub_100002CE0(v124, &qword_1005B0F30, &qword_1004D3308);
      v125 = 0;
      v126 = 0xE000000000000000;
    }

    else
    {
      v125 = sub_10042EABC();
      v126 = v131;
      sub_10041AE64(v124, type metadata accessor for DiscoveryToken);
    }

    v132 = *(v0 + 200);
    v133 = *(v0 + 152);
    v134 = *(v0 + 160);
    sub_100002CE0(*(v0 + 136), &qword_1005B0F30, &qword_1004D3308);
    v135 = sub_10000D01C(v125, v126, v199);

    *(v121 + 14) = v135;
    *(v121 + 22) = 2160;
    *(v121 + 24) = 1752392040;
    *(v121 + 32) = 2081;
    sub_100006964(&qword_1005B02C8, &type metadata accessor for Handle);
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v138 = v137;
    v188(v132, v133);
    v139 = sub_10000D01C(v136, v138, v199);

    *(v121 + 34) = v139;
    _os_log_impl(&_mh_execute_header, v117, v118, "peerToken: %{private,mask.hash}s for handle %{private,mask.hash}s.", v121, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v127 = *(v0 + 200);
    v128 = *(v0 + 152);
    v129 = *(v0 + 160);
    v130 = *(v0 + 136);

    v96(v127, v128);
    sub_100002CE0(v130, &qword_1005B0F30, &qword_1004D3308);
  }

  v189 = *(v0 + 328);
  v192 = *(v0 + 344);
  v181 = *(v0 + 312);
  v185 = *(v0 + 336);
  v175 = *(v0 + 264);
  v178 = *(v0 + 280);
  v170 = *(v0 + 248);
  v172 = *(v0 + 272);
  v166 = *(v0 + 376);
  v167 = *(v0 + 240);
  v168 = *(v0 + 232);
  v140 = *(v0 + 192);
  v141 = *(v0 + 160);
  v142 = *(v0 + 168);
  v143 = *(v0 + 144);
  v144 = *(v0 + 152);
  v145 = *(v0 + 120);
  v163 = *(v0 + 112);
  v146 = *(v0 + 96);
  v147 = *(v0 + 104);
  v148 = *(v0 + 64);
  v164 = *(v0 + 88);
  v165 = *(v0 + 56);
  v149 = type metadata accessor for TaskPriority();
  (*(*(v149 - 8) + 56))(v146, 1, 1, v149);
  v195(v140, v148, v144);
  sub_100005F04(v143, v145, &qword_1005B0F30, &qword_1004D3308);
  v150 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v151 = (v142 + *(v147 + 80) + v150) & ~*(v147 + 80);
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  *(v152 + 24) = 0;
  (*(v141 + 32))(v152 + v150, v140, v144);
  sub_1000176A8(v145, v152 + v151, &qword_1005B0F30, &qword_1004D3308);
  *(v152 + ((v163 + v151 + 7) & 0xFFFFFFFFFFFFFFF8)) = v164;
  sub_1001D7F30(0, 0, v146, &unk_1004D89A0, v152);

  sub_100005F04(v143, v145, &qword_1005B0F30, &qword_1004D3308);
  sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  CheckedContinuation.resume(returning:)();

  sub_100002CE0(v143, &qword_1005B0F30, &qword_1004D3308);
  (*(v167 + 8))(v170, v168);
  (*(v172 + 8))(v178, v175);
  sub_10041AE64(v181, type metadata accessor for FriendSharedSecretsRecord);
  (*(v185 + 8))(v192, v189);
  v153 = *(v0 + 344);
  v155 = *(v0 + 312);
  v154 = *(v0 + 320);
  v156 = *(v0 + 280);
  v157 = *(v0 + 288);
  v159 = *(v0 + 248);
  v158 = *(v0 + 256);
  v161 = *(v0 + 216);
  v160 = *(v0 + 224);
  v162 = *(v0 + 208);
  v173 = *(v0 + 200);
  v176 = *(v0 + 192);
  v179 = *(v0 + 184);
  v182 = *(v0 + 176);
  v186 = *(v0 + 144);
  v190 = *(v0 + 136);
  v193 = *(v0 + 128);
  v197 = *(v0 + 120);
  v198 = *(v0 + 96);

  v76 = *(v0 + 8);
LABEL_19:

  return v76();
}

uint64_t sub_100415A4C()
{
  v1 = v0[47];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];

  (*(v3 + 8))(v2, v4);
  v26 = v0[53];
  v5 = v0[43];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100415BCC()
{
  v1 = v0[45];

  v23 = v0[48];
  v2 = v0[43];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  v14 = v0[25];
  v15 = v0[24];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100415D2C()
{
  v1 = v0[49];
  v2 = v0[47];

  v24 = v0[51];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[15];
  v23 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100415E98(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100415F58, 0, 0);
}

uint64_t sub_100415F58()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_1004160FC, v6, 0);
}

uint64_t sub_1004160FC()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1004161AC;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1004161AC()
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
    v5 = sub_1004162E0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004162E0()
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
    *(v4 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10041643C()
{
  v1 = *(v0 + 16);
  sub_100440F28(3600.0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004164C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(sub_10004B564(&qword_1005B3360, &unk_1004C6AA0) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v7 = type metadata accessor for Handle();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = type metadata accessor for DiscoveryToken(0);
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v13 = *(v12 + 64) + 15;
  v5[15] = swift_task_alloc();
  v14 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = type metadata accessor for Friend();
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v5[21] = v19;
  *v19 = v5;
  v19[1] = sub_100416748;

  return daemon.getter();
}

uint64_t sub_100416748(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  v3[22] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[23] = v6;
  v7 = type metadata accessor for Daemon();
  v3[24] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100006964(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[25] = v9;
  v10 = sub_100006964(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100416928;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100416928(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v7 = sub_100417EAC;
    v8 = 0;
  }

  else
  {
    v9 = v4[22];

    v7 = sub_100416A60;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100416A60()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[28] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_100416BC4;
  v7 = v0[26];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100416BC4(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_100416CE4, 0, 0);
}

uint64_t sub_100416CE4()
{
  v104 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[3];
  *(swift_task_alloc() + 16) = v6;
  sub_10044FE2C(sub_10041AA98, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_100002CE0(v0[16], &qword_1005A9188, &unk_1004D80D0);
    v7 = &qword_1005A8000;
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];
    v11 = v0[3];
    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0C30);
    (*(v8 + 16))(v9, v11, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[7];
    v17 = v0[8];
    v18 = v0[6];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v19 = 136446723;
      *(v19 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, v103);
      *(v19 + 12) = 2160;
      *(v19 + 14) = 1752392040;
      *(v19 + 22) = 2081;
      v20 = v12;
      v21 = Handle.identifier.getter();
      v23 = v22;
      (*(v16 + 8))(v17, v18);
      v24 = v21;
      v12 = v20;
      v25 = sub_10000D01C(v24, v23, v103);

      *(v19 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, " %{public}s missing following\nfor %{private,mask.hash}s!", v19, 0x20u);
      swift_arrayDestroy();
      v7 = &qword_1005A8000;
    }

    else
    {

      (*(v16 + 8))(v17, v18);
    }

    v43 = v0[26];
    sub_10006DC90();
    v44 = swift_allocError();
    *v45 = 1;
    swift_willThrow();

    if (v7[166] != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v12, qword_1005E0C30);
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136446210;
      v0[2] = v44;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v50 = String.init<A>(describing:)();
      v52 = sub_10000D01C(v50, v51, v103);

      *(v48 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "PeerToken trigger sending configData error: %{public}s", v48, 0xCu);
      sub_100004984(v49);
    }

    else
    {
    }

LABEL_24:
    v74 = v0[19];
    v73 = v0[20];
    v76 = v0[15];
    v75 = v0[16];
    v78 = v0[11];
    v77 = v0[12];
    v80 = v0[9];
    v79 = v0[10];
    v81 = v0[8];
    v82 = v0[5];

    v83 = v0[1];

    return v83();
  }

  (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v27 = v0[19];
  v26 = v0[20];
  v29 = v0[17];
  v28 = v0[18];
  v30 = type metadata accessor for Logger();
  sub_10000A6F0(v30, qword_1005E0C30);
  (*(v28 + 16))(v27, v26, v29);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[18];
  v35 = v0[19];
  v36 = v0[17];
  if (v33)
  {
    v37 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v37 = 136446723;
    *(v37 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, v103);
    *(v37 + 12) = 2160;
    *(v37 + 14) = 1752392040;
    *(v37 + 22) = 2081;
    sub_100006964(&qword_1005AA720, &type metadata accessor for Friend);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v41 = *(v34 + 8);
    v41(v35, v36);
    v42 = sub_10000D01C(v38, v40, v103);

    *(v37 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s Found Following: %{private,mask.hash}s", v37, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = *(v34 + 8);
    v41(v35, v36);
  }

  v0[31] = v41;
  v54 = v0[13];
  v53 = v0[14];
  v55 = v0[12];
  sub_100005F04(v0[4], v55, &qword_1005B0F30, &qword_1004D3308);
  if ((*(v53 + 48))(v55, 1, v54) == 1)
  {
    v56 = v0[12];
    v57 = &qword_1005B0F30;
    v58 = &qword_1004D3308;
LABEL_21:
    sub_100002CE0(v56, v57, v58);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[26];
    v68 = v0[20];
    v69 = v0[17];
    v70 = v0[18];
    if (v66)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v103[0] = v72;
      *v71 = 136446210;
      *(v71 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, v103);
      _os_log_impl(&_mh_execute_header, v64, v65, "%{public}s no token to trigger sending configData session", v71, 0xCu);
      sub_100004984(v72);
    }

    v41(v68, v69);
    goto LABEL_24;
  }

  v59 = v0[20];
  v61 = v0[6];
  v60 = v0[7];
  v62 = v0[5];
  sub_10041AAB8(v0[12], v0[15], type metadata accessor for DiscoveryToken);
  Friend.ownerHandle.getter();
  if ((*(v60 + 48))(v62, 1, v61) == 1)
  {
    v63 = v0[5];
    sub_10041AE64(v0[15], type metadata accessor for DiscoveryToken);
    v57 = &qword_1005B3360;
    v58 = &unk_1004C6AA0;
    v56 = v63;
    goto LABEL_21;
  }

  v85 = v0[10];
  v87 = v0[6];
  v86 = v0[7];
  v88 = v0[3];
  (*(v86 + 32))(v0[11], v0[5], v87);
  (*(v86 + 16))(v85, v88, v87);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  v91 = os_log_type_enabled(v89, v90);
  v92 = v0[10];
  v93 = v0[6];
  v94 = v0[7];
  if (v91)
  {
    v95 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v95 = 136446723;
    *(v95 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, v103);
    *(v95 + 12) = 2160;
    *(v95 + 14) = 1752392040;
    *(v95 + 22) = 2081;
    sub_100006964(&qword_1005B02C8, &type metadata accessor for Handle);
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    v99 = *(v94 + 8);
    v99(v92, v93);
    v100 = sub_10000D01C(v96, v98, v103);

    *(v95 + 24) = v100;
    _os_log_impl(&_mh_execute_header, v89, v90, "%{public}s Trigger start addtional configData NISession\nwith handle: %{private,mask.hash}s", v95, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v99 = *(v94 + 8);
    v99(v92, v93);
  }

  v0[32] = v99;
  v101 = async function pointer to daemon.getter[1];
  v102 = swift_task_alloc();
  v0[33] = v102;
  *v102 = v0;
  v102[1] = sub_100417834;

  return daemon.getter();
}

uint64_t sub_100417834(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 264);
  v5 = *v1;
  v3[34] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[35] = v7;
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100006964(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v7 = v5;
  v7[1] = sub_1004179E8;
  v10 = v3[25];
  v11 = v3[24];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004179E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = v1;

  v7 = v4[34];

  if (v1)
  {
    v8 = sub_1004180EC;
  }

  else
  {
    v4[37] = a1;
    v8 = sub_100417B2C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100417B2C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  v3 = **(v0 + 120);
  Friend.handle.getter();
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_100417BDC;
  v5 = *(v0 + 296);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  return sub_1003CDAF8(v3, v7, v6);
}

uint64_t sub_100417BDC()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v8 = *v0;

  *(v1 + 312) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v4, v6);

  return _swift_task_switch(sub_100417D5C, 0, 0);
}

uint64_t sub_100417D5C()
{
  v1 = v0[39];
  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[26];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v23 = v0[15];
  v9 = v0[11];
  v10 = v0[6];

  v3(v9, v10);
  v4(v6, v7);
  sub_10041AE64(v23, type metadata accessor for DiscoveryToken);
  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[8];
  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100417EAC()
{
  v24 = v0;
  v1 = v0[22];

  v2 = v0[27];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0C30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136446210;
    v0[2] = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "PeerToken trigger sending configData error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v12 = v0[19];
  v11 = v0[20];
  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[11];
  v15 = v0[12];
  v18 = v0[9];
  v17 = v0[10];
  v19 = v0[8];
  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004180EC()
{
  v33 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[6];
  v10 = v0[7];

  v1(v8, v9);
  v2(v4, v5);
  sub_10041AE64(v7, type metadata accessor for DiscoveryToken);
  v11 = v0[36];
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005E0C30);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136446210;
    v0[2] = v11;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D01C(v17, v18, &v32);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "PeerToken trigger sending configData error: %{public}s", v15, 0xCu);
    sub_100004984(v16);
  }

  else
  {
  }

  v21 = v0[19];
  v20 = v0[20];
  v23 = v0[15];
  v22 = v0[16];
  v25 = v0[11];
  v24 = v0[12];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[8];
  v29 = v0[5];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100418390()
{
  v0 = type metadata accessor for Handle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v5 = static Handle.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_10041847C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 120) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = type metadata accessor for Handle();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100418550, 0, 0);
}

uint64_t sub_100418550()
{
  v44 = v0;
  if (*(v0 + 120))
  {
    v1 = *(v0 + 24);
    if (qword_1005A8530 != -1)
    {
      swift_once();
      v1 = *(v0 + 24);
    }

    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0C30);
    (*(v3 + 16))(v2, v5, v4);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v13 = 136446979;
      *(v13 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v43);
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      v14 = Handle.identifier.getter();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_10000D01C(v14, v16, &v43);

      *(v13 + 24) = v17;
      *(v13 + 32) = 2114;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 34) = v18;
      *v42 = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s failed for %{private,mask.hash}s. Error %{public}@", v13, 0x2Au);
      sub_100002CE0(v42, &qword_1005A9670, &unk_1004C2480);

      swift_arrayDestroy();
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    v35 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 104) = v35;
    v36 = swift_task_alloc();
    *(v0 + 112) = v36;
    *v36 = v0;
    v36[1] = sub_100418C3C;
    v37 = *(v0 + 48);
    v38 = *(v0 + 24);
  }

  else
  {
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    v22 = *(v0 + 32);
    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0C30);
    (*(v21 + 16))(v19, v22, v20);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 80);
    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    if (v26)
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v30 = 136446723;
      *(v30 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004EA260, &v43);
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      v31 = Handle.identifier.getter();
      v33 = v32;
      (*(v29 + 8))(v27, v28);
      v34 = sub_10000D01C(v31, v33, &v43);

      *(v30 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s succeeded for %{private,mask.hash}s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v29 + 8))(v27, v28);
    }

    v35 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 88) = v35;
    v39 = swift_task_alloc();
    *(v0 + 96) = v39;
    *v39 = v0;
    v39[1] = sub_100418AEC;
    v40 = *(v0 + 48);
    v38 = 0;
  }

  return sub_100402934(0xD00000000000003ALL, 0x80000001004EA280, v38, v35);
}

uint64_t sub_100418AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v8 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100418C3C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100418D54, 0, 0);
}

uint64_t sub_100418D54()
{
  v1 = v0[5];
  v0[2] = v0[3];
  swift_errorRetain();
  sub_10004B564(&qword_1005B3990, &qword_1004D8940);
  CheckedContinuation.resume(throwing:)();
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100418DF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for CloudKitStorage.State();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100418EB0, 0, 0);
}

uint64_t sub_100418EB0()
{
  v9 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_10000A6F0(v1, qword_1005E0C30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000060, 0x80000001004EA2C0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CloudKit to be available %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for CloudKitStorage.State.available(_:), v0[3]);

  return _swift_task_switch(sub_100419054, v6, 0);
}

uint64_t sub_100419054()
{
  v1 = *(v0[2] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + 1);
  v6 = (&async function pointer to dispatch thunk of CloudKitStorage.await(state:) + async function pointer to dispatch thunk of CloudKitStorage.await(state:));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100419104;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_100419104()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[2];
    v5 = sub_1002CABE8;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_100419238;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100419238()
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
    *(v4 + 4) = sub_10000D01C(0xD000000000000060, 0x80000001004EA2C0, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "CloudKit is available. %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100419374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return _swift_task_switch(sub_1004193A0, 0, 0);
}

uint64_t sub_1004193A0()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = type metadata accessor for FriendSharedSecretsRecord();
  v7 = sub_100006964(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v5 = v0;
  v5[1] = sub_1004194C0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v8, sub_10041AD40, v1, v6, v7);
}

uint64_t sub_1004194C0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004195FC, 0, 0);
  }

  else
  {
    v4 = v3[10];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1004195FC()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_100419660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = a6;
  v117 = a5;
  v112 = a4;
  v114 = a1;
  v115 = a3;
  v113 = type metadata accessor for UUID();
  v119 = *(v113 - 8);
  v7 = *(v119 + 64);
  v8 = __chkstk_darwin(v113);
  v106 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v96 - v10;
  v11 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v108 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v96 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v110 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v116 = (&v96 - v22);
  v23 = sub_10004B564(&qword_1005AEB98, &unk_1004D07C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = type metadata accessor for SharedSecretKey();
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30);
  v118 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v96 - v34;
  v36 = a2;
  v38 = v37;
  sub_100005F04(v36, v29, &qword_1005AEB98, &unk_1004D07C0);
  v39 = *(v38 + 48);
  if (v39(v29, 1, v30) == 1)
  {
    sub_100002CE0(v29, &qword_1005AEB98, &unk_1004D07C0);
    v40 = v17;
    v41 = v18;
LABEL_15:
    sub_100005F04(v117, v27, &qword_1005AEB98, &unk_1004D07C0);
    v65 = v39(v27, 1, v30);
    v66 = v119;
    if (v65 == 1)
    {
      return sub_100002CE0(v27, &qword_1005AEB98, &unk_1004D07C0);
    }

    v67 = *(v38 + 32);
    v67(v118, v27, v30);
    v68 = v108;
    sub_100005F04(v109, v108, &unk_1005AE5B0, &qword_1004C32F0);
    if ((*(v41 + 48))(v68, 1, v40) == 1)
    {
      v69 = v38;
      sub_100002CE0(v68, &unk_1005AE5B0, &qword_1004C32F0);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_10000A6F0(v70, qword_1005E0C30);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "outgoingBaseDate cannot be nil!", v73, 2u);
      }

      return (*(v69 + 8))(v118, v30);
    }

    else
    {
      v111 = v38;
      v116 = *(v41 + 32);
      v117 = v41 + 32;
      v116(v110, v68, v40);
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v115 = v40;
      v74 = type metadata accessor for Logger();
      sub_10000A6F0(v74, qword_1005E0C30);
      v75 = v106;
      v76 = v113;
      (*(v66 + 16))(v106, v112, v113);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v109 = v67;
        v80 = v75;
        v81 = v79;
        v82 = swift_slowAlloc();
        v112 = v30;
        v83 = v41;
        v84 = v82;
        v120[0] = v82;
        *v81 = 136446210;
        sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v86 = v76;
        v88 = v87;
        v89 = v80;
        v67 = v109;
        (*(v66 + 8))(v89, v86);
        v90 = sub_10000D01C(v85, v88, v120);

        *(v81 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v77, v78, "Updating incomingSharedSecret for %{public}s", v81, 0xCu);
        sub_100004984(v84);
        v41 = v83;
        v30 = v112;
      }

      else
      {

        (*(v66 + 8))(v75, v76);
      }

      v91 = type metadata accessor for FriendSharedSecretsRecord();
      v92 = *(v91 + 32);
      v93 = v114;
      sub_100002CE0(v114 + v92, &qword_1005AEB98, &unk_1004D07C0);
      v67((v93 + v92), v118, v30);
      (*(v111 + 56))(v93 + v92, 0, 1, v30);
      v94 = *(v91 + 36);
      sub_100002CE0(v93 + v94, &unk_1005AE5B0, &qword_1004C32F0);
      v95 = v115;
      v116((v93 + v94), v110, v115);
      return (*(v41 + 56))(v93 + v94, 0, 1, v95);
    }
  }

  v111 = v38;
  v104 = *(v38 + 32);
  v105 = v35;
  v104(v35, v29, v30);
  sub_100005F04(v115, v16, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v103 = v18;
    v101 = *(v18 + 32);
    v102 = v18 + 32;
    v101(v116, v16, v17);
    if (qword_1005A8530 != -1)
    {
      swift_once();
    }

    v115 = v17;
    v49 = type metadata accessor for Logger();
    sub_10000A6F0(v49, qword_1005E0C30);
    v50 = v119;
    v51 = v107;
    v52 = v113;
    (*(v119 + 16))(v107, v112, v113);
    v53 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v100))
    {
      v54 = swift_slowAlloc();
      v98 = v54;
      v99 = swift_slowAlloc();
      v120[0] = v99;
      *v54 = 136446210;
      sub_100006964(&qword_1005A92C0, &type metadata accessor for UUID);
      v97 = v53;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v50 + 8))(v51, v52);
      v58 = sub_10000D01C(v55, v57, v120);

      v59 = v98;
      *(v98 + 1) = v58;
      v60 = v97;
      _os_log_impl(&_mh_execute_header, v97, v100, "Updating outgoingSharedSecret for %{public}s", v59, 0xCu);
      sub_100004984(v99);
    }

    else
    {

      (*(v50 + 8))(v51, v52);
    }

    v61 = type metadata accessor for FriendSharedSecretsRecord();
    v62 = *(v61 + 24);
    v63 = v114;
    sub_100002CE0(v114 + v62, &qword_1005AEB98, &unk_1004D07C0);
    v104((v63 + v62), v105, v30);
    v38 = v111;
    (*(v111 + 56))(v63 + v62, 0, 1, v30);
    v64 = *(v61 + 28);
    sub_100002CE0(v63 + v64, &unk_1005AE5B0, &qword_1004C32F0);
    v40 = v115;
    v101((v63 + v64), v116, v115);
    v41 = v103;
    (*(v103 + 56))(v63 + v64, 0, 1, v40);
    goto LABEL_15;
  }

  sub_100002CE0(v16, &unk_1005AE5B0, &qword_1004C32F0);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000A6F0(v42, qword_1005E0C30);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v105;
  if (v45)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "outgoingBaseDate cannot be nil!", v47, 2u);
  }

  return (*(v111 + 8))(v46, v30);
}

uint64_t sub_10041A28C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to CloudKitChangeSet.Adaptor.create<A>(record:)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FriendSharedSecretsRecord();
  v7 = sub_100006964(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v5 = v2;
  v5[1] = sub_100003690;

  return CloudKitChangeSet.Adaptor.create<A>(record:)(a2, v6, v7);
}

uint64_t sub_10041A38C()
{
  v2 = *(sub_10004B564(&qword_1005B3990, &qword_1004D8940) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Handle() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_10000368C;

  return sub_100413524(v0 + v3, v0 + v6, v10, v0 + v9, v11);
}

uint64_t sub_10041A570(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for Handle() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(sub_10004B564(&qword_1005B3990, &qword_1004D8940) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_10041847C(a1, a2 & 1, v2 + v7, v2 + v10, v11);
}

uint64_t sub_10041A6F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100415E98(a1, v5);
}

uint64_t sub_10041A79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10041641C(a1, v4, v5, v6);
}

uint64_t sub_10041A850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1004164A8(a1, v4, v5, v6);
}

uint64_t sub_10041A904(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Handle() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10004B564(&qword_1005B0F30, &qword_1004D3308) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_1004164C8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10041AAB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041AB20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100418DF0(a1, v5);
}

uint64_t sub_10041ABCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000368C;

  return sub_10041A28C(a1, v4);
}

uint64_t sub_10041AC68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_100419374(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10041AD50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10040C72C(a1, v5);
}

uint64_t sub_10041ADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10041AE64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10041AEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_100411AA8(a1, v4, v5, v7);
}

uint64_t sub_10041AF84(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for MessagingOptions();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v14 = type metadata accessor for Account();
  v2[17] = v14;
  v15 = *(v14 - 8);
  v2[18] = v15;
  v16 = *(v15 + 64) + 15;
  v2[19] = swift_task_alloc();
  v17 = type metadata accessor for MessagingCapability();
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();
  v20 = type metadata accessor for Destination();
  v2[23] = v20;
  v21 = *(v20 - 8);
  v2[24] = v21;
  v22 = *(v21 + 64) + 15;
  v2[25] = swift_task_alloc();
  v23 = type metadata accessor for Handle();
  v2[26] = v23;
  v24 = *(v23 - 8);
  v2[27] = v24;
  v25 = *(v24 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_10041B318, v1, 0);
}

uint64_t sub_10041B318()
{
  v25 = v0;
  v1 = v0[32];
  v2 = v0[4];
  Friend.handle.getter();
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[26];
  v6 = v0[27];
  v7 = type metadata accessor for Logger();
  v0[33] = sub_10000A6F0(v7, qword_1005E0C30);
  v8 = *(v6 + 16);
  v0[34] = v8;
  v0[35] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v14 = v0[26];
  v13 = v0[27];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v15 = 136446723;
    *(v15 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004EA500, &v24);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v16 = Handle.identifier.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_10000D01C(v16, v18, &v24);

    *(v15 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s from: %{private,mask.hash}s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v0[36] = v19;
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_10041B5B4;

  return daemon.getter();
}

uint64_t sub_10041B5B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 296);
  v12 = *v1;
  v3[38] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[39] = v6;
  v7 = type metadata accessor for Daemon();
  v3[40] = v7;
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[41] = v9;
  v10 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  *v6 = v12;
  v6[1] = sub_10041B7A8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10041B7A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 304);
  v8 = *(v3 + 40);

  if (v1)
  {
    v9 = sub_10041D368;
  }

  else
  {
    v9 = sub_10041B8F8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10041B8F8()
{
  v1 = *(v0 + 256);
  v2 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  v3 = *(v0 + 200);
  if (v2)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v4 = *(v0 + 336);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  *(v0 + 464) = enum case for MessagingCapability.supportsPeopleFindingV1(_:);
  v8 = *(v6 + 104);
  *(v0 + 352) = v8;
  *(v0 + 360) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v5);

  return _swift_task_switch(sub_10041B9B4, v4, 0);
}

uint64_t sub_10041B9B4()
{
  v1 = *(v0[42] + 136);
  v2 = *(&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + 1);
  v7 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapability(destination:capability:));
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_10041BA68;
  v4 = v0[25];
  v5 = v0[22];

  return v7(v4, v5);
}

uint64_t sub_10041BA68(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v17 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v6 = *(v4 + 336);
    v7 = sub_10041BF4C;
  }

  else
  {
    v9 = *(v4 + 192);
    v8 = *(v4 + 200);
    v10 = *(v4 + 176);
    v11 = *(v4 + 184);
    v12 = *(v4 + 160);
    v13 = *(v4 + 168);
    v14 = *(v4 + 40);
    *(v4 + 469) = a1 & 1;
    v15 = *(v13 + 8);
    *(v4 + 384) = v15;
    *(v4 + 392) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v10, v12);
    (*(v9 + 8))(v8, v11);
    v7 = sub_10041BBE4;
    v6 = v14;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10041BBE4()
{
  v38 = v0;
  if (*(v0 + 469) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 400) = v2;
    *v2 = v0;
    v2[1] = sub_10041C128;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 264);
    (*(v0 + 272))(*(v0 + 224), *(v0 + 256), *(v0 + 208));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 288);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    if (v7)
    {
      v12 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v12 = 136446723;
      *(v12 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004EA500, v37);
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      v13 = Handle.identifier.getter();
      v15 = v14;
      v8(v9, v11);
      v16 = sub_10000D01C(v13, v15, v37);

      *(v12 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s %{private,mask.hash}s missing required capability", v12, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v8(v9, v11);
    }

    v17 = *(v0 + 336);
    v18 = *(v0 + 288);
    v19 = *(v0 + 256);
    v20 = *(v0 + 208);
    sub_1003DA6A0();
    swift_allocError();
    *v21 = 3;
    swift_willThrow();

    v18(v19, v20);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v25 = *(v0 + 232);
    v24 = *(v0 + 240);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 176);
    v29 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v34 = *(v0 + 96);
    v35 = *(v0 + 72);
    v36 = *(v0 + 64);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_10041BF4C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[5];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10041BFEC, v4, 0);
}

uint64_t sub_10041BFEC()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[26];
  v5 = v0[27];

  v2(v3, v4);
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[15];
  v15 = v0[16];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[8];
  v21 = v0[47];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10041C128(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v5 = *v1;
  v3[51] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[52] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009680(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_10041C2DC;
  v10 = v3[41];
  v11 = v3[40];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10041C2DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  v7 = v4[51];
  if (v1)
  {
    v8 = v4[5];

    return _swift_task_switch(sub_10041D494, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[55] = v9;
    *v9 = v6;
    v9[1] = sub_10041C488;
    v10 = v4[16];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_10041C488()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10041C598, v2, 0);
}

uint64_t sub_10041C598()
{
  v84 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 264);
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v83[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000012, 0x80000001004EA500, v83);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Missing primary account to send revoke token with my dsid!", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = *(v0 + 424);
    v10 = *(v0 + 336);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    sub_1003DA6A0();
    swift_allocError();
    *v15 = 16;
    swift_willThrow();

    v16 = v12;
    v17 = v13;
    goto LABEL_10;
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 256);
  v81 = *(v0 + 264);
  v21 = *(v0 + 240);
  v22 = *(v0 + 208);
  (*(v2 + 32))(*(v0 + 152), v3, v1);
  v23 = Account.dsidBase64EncodedString()();
  countAndFlagsBits = v23._countAndFlagsBits;
  v25 = v20;
  object = v23._object;
  v18(v21, v25, v22);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 288);
  v31 = *(v0 + 240);
  v33 = *(v0 + 208);
  v32 = *(v0 + 216);
  if (v29)
  {
    v78 = v28;
    v34 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v34 = 141558787;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    v35 = Handle.identifier.getter();
    v37 = v36;
    v30(v31, v33);
    v38 = sub_10000D01C(v35, v37, v83);
    countAndFlagsBits = v23._countAndFlagsBits;
    object = v23._object;

    *(v34 + 14) = v38;
    *(v34 + 22) = 2160;
    *(v34 + 24) = 1752392040;
    *(v34 + 32) = 2081;
    *(v34 + 34) = sub_10000D01C(v23._countAndFlagsBits, v23._object, v83);
    _os_log_impl(&_mh_execute_header, v27, v78, "Revoking shared secret from %{private,mask.hash}s.\nserverId: %{private,mask.hash}s over IDS.", v34, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v30(v31, v33);
  }

  v39 = *(v0 + 432);
  v40 = *(v0 + 120);
  *(v0 + 468) = 6;
  *(v0 + 16) = countAndFlagsBits;
  *(v0 + 24) = object;
  sub_10006DFA4();
  sub_10042E134();
  sub_10042E188();
  Message.init<A>(type:version:payload:)();
  if (v39)
  {
    v41 = *(v0 + 424);
    v42 = *(v0 + 336);
    v11 = *(v0 + 288);
    v43 = *(v0 + 256);
    v44 = *(v0 + 208);
    v45 = *(v0 + 216);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 136);

    (*(v47 + 8))(v46, v48);
    v16 = v43;
    v17 = v44;
LABEL_10:
    v11(v16, v17);
    v50 = *(v0 + 248);
    v49 = *(v0 + 256);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v53 = *(v0 + 224);
    v54 = *(v0 + 200);
    v55 = *(v0 + 176);
    v56 = *(v0 + 152);
    v57 = *(v0 + 120);
    v58 = *(v0 + 128);
    v75 = *(v0 + 96);
    log = *(v0 + 72);
    v79 = *(v0 + 64);

    v59 = *(v0 + 8);

    return v59();
  }

  v61 = *(v0 + 256);
  v62 = *(v0 + 192);
  sub_10004B564(&qword_1005A9270, &qword_1004C5810);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  *(swift_allocObject() + 16) = xmmword_1004C1900;
  v65 = Handle.isPhoneNumber.getter();
  Handle.identifier.getter();
  if (v65)
  {
    Destination.init(phoneNumber:)();
  }

  else
  {
    Destination.init(email:)();
  }

  v66 = *(v0 + 384);
  v76 = *(v0 + 392);
  v68 = *(v0 + 352);
  v67 = *(v0 + 360);
  v69 = *(v0 + 464);
  v70 = *(v0 + 160);
  v71 = *(v0 + 168);
  v80 = *(v0 + 96);
  v82 = *(v0 + 336);
  (*(*(v0 + 56) + 56))(*(v0 + 72), 1, 1, *(v0 + 48));
  sub_10004B564(&qword_1005AB930, &qword_1004C5818);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1004C1900;
  v68(v74 + v73, v69, v70);
  sub_10025EC18(v74);
  swift_setDeallocating();
  v66(v74 + v73, v70);
  swift_deallocClassInstance();
  sub_100293190(_swiftEmptyArrayStorage);
  MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

  return _swift_task_switch(sub_10041CC70, v82, 0);
}

uint64_t sub_10041CC70()
{
  v1 = *(v0[42] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_10041CD18;
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[8];

  return InternetMessaging.send(message:messageOptions:)(v6, v4, v5);
}

uint64_t sub_10041CD18()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v8 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_10041D1B8;
  }

  else
  {
    v6 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_10041CE4C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10041CE4C()
{
  v47 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  (*(v0 + 272))(*(v0 + 232), *(v0 + 256), *(v0 + 208));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 336);
  v7 = *(v0 + 288);
  v8 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v35 = *(v0 + 216);
  v42 = *(v0 + 152);
  v44 = *(v0 + 144);
  v11 = *(v0 + 112);
  v39 = *(v0 + 120);
  v40 = *(v0 + 136);
  v37 = *(v0 + 96);
  v38 = *(v0 + 104);
  v12 = *(v0 + 88);
  v36 = *(v0 + 80);
  if (v5)
  {
    v33 = *(v0 + 424);
    v34 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v32 = v4;
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = Handle.identifier.getter();
    log = v3;
    v17 = v16;
    v7(v9, v10);
    v18 = sub_10000D01C(v15, v17, &v46);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, log, v32, "Successfully revoked finding token from %{private,mask.hash}s", v13, 0x16u);
    sub_100004984(v14);

    (*(v12 + 8))(v37, v36);
    (*(v11 + 8))(v39, v38);
    (*(v44 + 8))(v42, v40);
    v7(v34, v10);
  }

  else
  {

    v7(v9, v10);
    (*(v12 + 8))(v37, v36);
    (*(v11 + 8))(v39, v38);
    (*(v44 + 8))(v42, v40);
    v7(v8, v10);
  }

  v20 = *(v0 + 248);
  v19 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 224);
  v24 = *(v0 + 200);
  v25 = *(v0 + 176);
  v26 = *(v0 + 152);
  v28 = *(v0 + 120);
  v27 = *(v0 + 128);
  v41 = *(v0 + 96);
  v43 = *(v0 + 72);
  v45 = *(v0 + 64);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10041D1B8()
{
  v1 = v0[53];
  v2 = v0[42];
  v28 = v0[32];
  v30 = v0[36];
  v24 = v0[27];
  v26 = v0[26];
  v3 = v0[18];
  v23 = v0[19];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v23, v4);
  v30(v28, v26);
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v15 = v0[28];
  v16 = v0[25];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[15];
  v20 = v0[16];
  v25 = v0[12];
  v27 = v0[9];
  v29 = v0[8];
  v31 = v0[57];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10041D368()
{
  v1 = *(v0 + 216) + 8;
  (*(v0 + 288))(*(v0 + 256), *(v0 + 208));
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 64);
  v17 = *(v0 + 344);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10041D494()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[26];
  v5 = v0[27];

  v2(v3, v4);
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[15];
  v15 = v0[16];
  v18 = v0[12];
  v19 = v0[9];
  v20 = v0[8];
  v21 = v0[54];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10041D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = type metadata accessor for Destination();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = type metadata accessor for Account();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10041D758, v3, 0);
}

uint64_t sub_10041D758()
{
  v58 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = v0[6];
  v53 = v0[5];
  loga = v0[7];
  v7 = v0[3];
  v50 = v0[10];
  v52 = v0[4];
  v8 = v0[2];
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  v49 = *(v2 + 16);
  v49(v1, v8, v3);
  (*(v4 + 16))(v50, v7, v5);
  (*(v6 + 16))(loga, v52, v53);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  log = v10;
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[14];
  if (v12)
  {
    v54 = v11;
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[10];
    v17 = v0[11];
    v19 = v0[8];
    v18 = v0[9];
    v51 = v0[6];
    v47 = v0[5];
    v48 = v0[7];
    v20 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v20 = 136315650;
    v49(v15, v13, v17);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    (*(v14 + 8))(v13, v17);
    v24 = sub_10000D01C(v21, v23, &v57);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_100009680(&qword_1005A92C0, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v18 + 8))(v16, v19);
    v28 = sub_10000D01C(v25, v27, &v57);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2080;
    sub_100009680(&qword_1005A9260, &type metadata accessor for Destination);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v51 + 8))(v48, v47);
    v32 = sub_10000D01C(v29, v31, &v57);

    *(v20 + 24) = v32;
    _os_log_impl(&_mh_execute_header, log, v54, "messageDelivered: %s id %s from: %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[11];
    v34 = v0[12];
    v36 = v0[9];
    v35 = v0[10];
    v38 = v0[7];
    v37 = v0[8];
    v40 = v0[5];
    v39 = v0[6];

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v13, v33);
  }

  v42 = v0[13];
  v41 = v0[14];
  v43 = v0[10];
  v44 = v0[7];

  v45 = v0[1];

  return v45();
}

uint64_t sub_10041DB84(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_10041DC20(a2);
}

uint64_t sub_10041DC20(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for SharedSecretKey();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v2[27] = v15;
  v16 = *(v15 - 8);
  v2[28] = v16;
  v17 = *(v16 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v18 = type metadata accessor for HandleType();
  v2[31] = v18;
  v19 = *(v18 - 8);
  v2[32] = v19;
  v20 = *(v19 + 64) + 15;
  v2[33] = swift_task_alloc();
  v21 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v22 = type metadata accessor for Friend();
  v2[35] = v22;
  v23 = *(v22 - 8);
  v2[36] = v23;
  v24 = *(v23 + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v25 = type metadata accessor for FindingTokenEnvelopeV1();
  v2[41] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_10041E04C, v1, 0);
}

uint64_t sub_10041E04C()
{
  v47 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  v0[47] = sub_10000A6F0(v3, qword_1005E0C30);
  sub_10042E66C(v2, v1, type metadata accessor for FindingTokenEnvelopeV1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[46];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004EA410, &v46);
    *(v8 + 12) = 2080;
    v9 = sub_1002E9AE4();
    v11 = v10;
    sub_10042E6D4(v7, type metadata accessor for FindingTokenEnvelopeV1);
    v12 = sub_10000D01C(v9, v11, &v46);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s payload: %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10042E6D4(v7, type metadata accessor for FindingTokenEnvelopeV1);
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100009680(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v14 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v14, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    v15 = async function pointer to daemon.getter[1];
    v16 = swift_task_alloc();
    v0[48] = v16;
    *v16 = v0;
    v16[1] = sub_10041E56C;

    return daemon.getter();
  }

  else
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10000D01C(0xD000000000000017, 0x80000001004EA410, &v46);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s Feature.FindMy.redStripe FF disabled.", v19, 0xCu);
      sub_100004984(v20);
    }

    v22 = v0[45];
    v21 = v0[46];
    v24 = v0[43];
    v23 = v0[44];
    v25 = v0[42];
    v27 = v0[39];
    v26 = v0[40];
    v28 = v0[37];
    v29 = v0[38];
    v30 = v0[34];
    v33 = v0[33];
    v34 = v0[30];
    v35 = v0[29];
    v36 = v0[26];
    v37 = v0[25];
    v38 = v0[22];
    v39 = v0[21];
    v40 = v0[18];
    v41 = v0[17];
    v42 = v0[16];
    v43 = v0[15];
    v44 = v0[14];
    v45 = v0[13];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_10041E56C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 384);
  v12 = *v1;
  *(v3 + 392) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 400) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009680(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10041E748;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10041E748(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 400);
  v10 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = sub_10041FE60;
  }

  else
  {
    v7 = v3[49];
    v8 = v3[10];

    v6 = sub_10041E870;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10041E870()
{
  v1 = v0[9];
  v3 = *v1;
  v2 = v1[1];
  (*(v0[32] + 104))(v0[33], enum case for HandleType.following(_:), v0[31]);
  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_10041E948;
  v5 = v0[51];
  v7 = v0[33];
  v6 = v0[34];

  return sub_1001E4D40(v6, v3, v2, v7, 1);
}

uint64_t sub_10041E948()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 80);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10041EAB4, v5, 0);
}

uint64_t sub_10041EAB4()
{
  v192 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &qword_1005A9188;
    v5 = &unk_1004D80D0;
    goto LABEL_5;
  }

  v6 = v0[28];
  v187 = v0[27];
  v7 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  (*(v2 + 32))(v0[40], v3, v1);
  Friend.handle.getter();
  Handle.peerID.getter();
  v11 = *(v8 + 8);
  v11(v7, v9);
  if ((*(v6 + 48))(v10, 1, v187) == 1)
  {
    v3 = v0[22];
    (*(v0[36] + 8))(v0[40], v0[35]);
    v4 = &qword_1005A96E0;
    v5 = &qword_1004C2A80;
LABEL_5:
    sub_100002CE0(v3, v4, v5);
    v12 = v0[47];
    sub_10042E66C(v0[9], v0[42], type metadata accessor for FindingTokenEnvelopeV1);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[51];
    v17 = v0[42];
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v191 = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v20 = *v17;
      v21 = v17[1];

      sub_10042E6D4(v17, type metadata accessor for FindingTokenEnvelopeV1);
      v22 = sub_10000D01C(v20, v21, &v191);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "No such following with serverID: %{private,mask.hash}s", v18, 0x16u);
      sub_100004984(v19);
    }

    else
    {
      v23 = v0[51];

      sub_10042E6D4(v17, type metadata accessor for FindingTokenEnvelopeV1);
    }

    goto LABEL_8;
  }

  v189 = v11;
  v36 = v0[47];
  v37 = v0[45];
  v39 = v0[39];
  v38 = v0[40];
  v40 = v0[35];
  v41 = v0[36];
  v42 = v0[9];
  (*(v0[28] + 32))(v0[30], v0[22], v0[27]);
  sub_10042E66C(v42, v37, type metadata accessor for FindingTokenEnvelopeV1);
  v181 = *(v41 + 16);
  v181(v39, v38, v40);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[45];
  v47 = v0[39];
  v48 = v0[35];
  v49 = v0[36];
  if (v45)
  {
    v50 = v0[25];
    v169 = v0[23];
    v173 = v0[35];
    v51 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v51 = 141558787;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    v53 = *v46;
    v52 = v46[1];

    sub_10042E6D4(v46, type metadata accessor for FindingTokenEnvelopeV1);
    v54 = sub_10000D01C(v53, v52, &v191);

    *(v51 + 14) = v54;
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2081;
    Friend.handle.getter();
    v55 = Handle.identifier.getter();
    v57 = v56;
    v189(v50, v169);
    v58 = *(v49 + 8);
    v58(v47, v173);
    v59 = sub_10000D01C(v55, v57, &v191);

    *(v51 + 34) = v59;
    _os_log_impl(&_mh_execute_header, v43, v44, "Found following with serverID: %{private,mask.hash}s\nhandle.identifier: %{private,mask.hash}s", v51, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v58 = *(v49 + 8);
    v58(v47, v48);
    sub_10042E6D4(v46, type metadata accessor for FindingTokenEnvelopeV1);
  }

  v0[54] = v58;
  v60 = v0[41];
  v61 = v0[19];
  v62 = v0[20];
  v63 = v0[18];
  v64 = v0[9] + *(v60 + 24);
  sub_100005F6C(*v64, *(v64 + 8));
  sub_100009680(&qword_1005AEC08, &type metadata accessor for SharedSecretKey);
  KeyRepresenting.init(rawValue:)();
  v65 = (*(v62 + 48))(v63, 1, v61);
  v66 = v0[47];
  v67 = v0[40];
  v68 = v0[35];
  if (v65 == 1)
  {
    v69 = v0[43];
    v70 = v0[37];
    v71 = v0[9];
    sub_100002CE0(v0[18], &qword_1005AEB98, &unk_1004D07C0);
    sub_10042E66C(v71, v69, type metadata accessor for FindingTokenEnvelopeV1);
    v181(v70, v67, v68);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v0[43];
    v76 = v0[40];
    v174 = v0[36];
    v77 = v0[35];
    v78 = v0[30];
    v79 = v0[28];
    v182 = v0[37];
    v185 = v0[27];
    if (v74)
    {
      v153 = v0[25];
      v157 = v0[23];
      v159 = v0[35];
      v166 = v0[30];
      v170 = v0[40];
      v80 = v0[12];
      v81 = v0[13];
      v82 = v0[11];
      v163 = v0[51];
      v178 = v58;
      v83 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *v83 = 141558787;
      *(v83 + 4) = 1752392040;
      *(v83 + 12) = 2081;
      v84 = (v75 + *(v60 + 24));
      v155 = v73;
      v85 = *v84;
      v86 = v84[1];
      v0[7] = *v84;
      v0[8] = v86;
      (*(v80 + 104))(v81, enum case for HashAlgorithm.sha256(_:), v82);
      sub_100005F6C(v85, v86);
      sub_1000CA210();
      v87 = DataProtocol.hash(algorithm:)();
      v89 = v88;
      (*(v80 + 8))(v81, v82);
      sub_1000049D0(v0[7], v0[8]);
      v90 = Data.hexString.getter();
      v92 = v91;
      sub_1000049D0(v87, v89);
      sub_10042E6D4(v75, type metadata accessor for FindingTokenEnvelopeV1);
      v93 = sub_10000D01C(v90, v92, &v191);

      *(v83 + 14) = v93;
      *(v83 + 22) = 2160;
      *(v83 + 24) = 1752392040;
      *(v83 + 32) = 2081;
      Friend.handle.getter();
      v94 = Handle.identifier.getter();
      v96 = v95;
      v189(v153, v157);
      v178(v182, v159);
      v97 = sub_10000D01C(v94, v96, &v191);

      *(v83 + 34) = v97;
      _os_log_impl(&_mh_execute_header, v72, v155, "Invalid shared secret %{private,mask.hash}s for handle: %{private,mask.hash}s", v83, 0x2Au);
      swift_arrayDestroy();

      (*(v79 + 8))(v166, v185);
      v178(v170, v159);
    }

    else
    {

      v58(v182, v77);
      sub_10042E6D4(v75, type metadata accessor for FindingTokenEnvelopeV1);
      (*(v79 + 8))(v78, v185);
      v58(v76, v77);
    }

LABEL_8:
    v25 = v0[45];
    v24 = v0[46];
    v27 = v0[43];
    v26 = v0[44];
    v28 = v0[42];
    v30 = v0[39];
    v29 = v0[40];
    v31 = v0[37];
    v32 = v0[38];
    v33 = v0[34];
    v154 = v0[33];
    v156 = v0[30];
    v158 = v0[29];
    v160 = v0[26];
    v162 = v0[25];
    v165 = v0[22];
    v168 = v0[21];
    v172 = v0[18];
    v177 = v0[17];
    v180 = v0[16];
    v184 = v0[15];
    v186 = v0[14];
    v188 = v0[13];

    v34 = v0[1];

    return v34();
  }

  v175 = v0[44];
  v179 = v58;
  v98 = v0[38];
  v100 = v0[29];
  v99 = v0[30];
  v102 = v0[27];
  v101 = v0[28];
  v103 = v0[9];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v181(v98, v67, v68);
  (*(v101 + 16))(v100, v99, v102);
  sub_10042E66C(v103, v175, type metadata accessor for FindingTokenEnvelopeV1);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  v106 = os_log_type_enabled(v104, v105);
  v107 = v0[44];
  if (v106)
  {
    v108 = v0[38];
    v109 = v0[36];
    v110 = v0[28];
    v167 = v0[29];
    v171 = v0[41];
    v161 = v0[35];
    v164 = v0[27];
    v111 = v0[25];
    v176 = v0[44];
    v112 = v0[23];
    v113 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v113 = 141558787;
    *(v113 + 4) = 1752392040;
    *(v113 + 12) = 2081;
    v183 = v105;
    Friend.handle.getter();
    v114 = Handle.debugDescription.getter();
    v116 = v115;
    v189(v111, v112);
    v179(v108, v161);
    v117 = sub_10000D01C(v114, v116, &v191);

    *(v113 + 14) = v117;
    *(v113 + 22) = 2082;
    sub_100009680(&qword_1005A92C0, &type metadata accessor for UUID);
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    v120 = v119;
    v121 = *(v110 + 8);
    v121(v167, v164);
    v122 = sub_10000D01C(v118, v120, &v191);

    *(v113 + 24) = v122;
    *(v113 + 32) = 2080;
    v123 = *(v171 + 20);
    type metadata accessor for Date();
    sub_100009680(&qword_1005A9800, &type metadata accessor for Date);
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v125;
    sub_10042E6D4(v176, type metadata accessor for FindingTokenEnvelopeV1);
    v127 = sub_10000D01C(v124, v126, &v191);

    *(v113 + 34) = v127;
    _os_log_impl(&_mh_execute_header, v104, v183, "Adding %{private,mask.hash}s peer info %{public}s baseDate: %s", v113, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v128 = v0[38];
    v129 = v0[35];
    v130 = v0[36];
    v132 = v0[28];
    v131 = v0[29];
    v133 = v0[27];

    sub_10042E6D4(v107, type metadata accessor for FindingTokenEnvelopeV1);
    v121 = *(v132 + 8);
    v121(v131, v133);
    v179(v128, v129);
  }

  v0[55] = v121;
  v134 = v0[41];
  v135 = v0[20];
  v136 = v0[19];
  v138 = v0[16];
  v137 = v0[17];
  v139 = v0[15];
  v190 = v0[14];
  v140 = v0[9];
  (*(v135 + 16))(v137, v0[21], v136);
  v141 = *(v135 + 56);
  v141(v137, 0, 1, v136);
  v142 = *(v134 + 20);
  v143 = type metadata accessor for Date();
  v144 = *(v143 - 8);
  (*(v144 + 16))(v139, v140 + v142, v143);
  v145 = *(v144 + 56);
  v145(v139, 0, 1, v143);
  v141(v138, 1, 1, v136);
  v145(v190, 1, 1, v143);
  v146 = swift_task_alloc();
  v0[56] = v146;
  *v146 = v0;
  v146[1] = sub_10041FA70;
  v147 = v0[30];
  v149 = v0[16];
  v148 = v0[17];
  v151 = v0[14];
  v150 = v0[15];
  v152 = v0[10];

  return sub_10040CCB0(v147, v148, v150, v149, v151);
}

uint64_t sub_10041FA70()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v11 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 456) = v0;

  sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v4, &qword_1005AEB98, &unk_1004D07C0);
  sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100002CE0(v11, &qword_1005AEB98, &unk_1004D07C0);
  v8 = *(v2 + 80);
  if (v0)
  {
    v9 = sub_10041FFEC;
  }

  else
  {
    v9 = sub_10041FC6C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10041FC6C()
{
  v1 = v0[55];
  v36 = v0[54];
  v2 = v0[51];
  v34 = v0[40];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  (*(v8 + 8))(v9, v10);
  v1(v5, v6);
  v36(v34, v3);
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v18 = v0[37];
  v19 = v0[38];
  v20 = v0[34];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[22];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[15];
  v35 = v0[14];
  v37 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10041FE60()
{
  v1 = v0[49];

  v27 = v0[52];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10041FFEC()
{
  v1 = v0[55];
  v2 = v0[51];
  v35 = v0[40];
  v37 = v0[54];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[19];

  (*(v8 + 8))(v9, v10);
  v1(v5, v6);
  v37(v35, v3);
  v38 = v0[57];
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v19 = v0[37];
  v18 = v0[38];
  v20 = v0[34];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[25];
  v28 = v0[22];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[15];
  v34 = v0[14];
  v36 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004201E0(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100420204, 0, 0);
}

uint64_t sub_100420204()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (qword_1005A8530 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "receiveFindingToken error: %{public}@", v5, 0xCu);
      sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
    }

    v8 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 48) = v8;
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_100420484;
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
  }

  else
  {
    v8 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 32) = v8;
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_1002F6704;
    v13 = *(v0 + 24);
    v10 = 0;
  }

  return sub_100402934(0xD000000000000039, 0x80000001004EA3D0, v10, v8);
}

uint64_t sub_100420484()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100420594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100003690;

  return sub_100420640(a2, a3);
}

uint64_t sub_100420640(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = type metadata accessor for MessagingOptions();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005A92B0, &qword_1004D8050);
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = type metadata accessor for FindingTokenEnvelopeV1();
  v3[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v13 = type metadata accessor for Account();
  v3[21] = v13;
  v14 = *(v13 - 8);
  v3[22] = v14;
  v15 = *(v14 + 64) + 15;
  v3[23] = swift_task_alloc();
  v16 = *(*(sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v17 = type metadata accessor for Date();
  v3[27] = v17;
  v18 = *(v17 - 8);
  v3[28] = v18;
  v19 = *(v18 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v20 = *(*(sub_10004B564(&qword_1005AEB98, &unk_1004D07C0) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v21 = type metadata accessor for SharedSecretKey();
  v3[33] = v21;
  v22 = *(v21 - 8);
  v3[34] = v22;
  v23 = *(v22 + 64) + 15;
  v3[35] = swift_task_alloc();
  v24 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v25 = type metadata accessor for FriendSharedSecretsRecord();
  v3[37] = v25;
  v26 = *(v25 - 8);
  v3[38] = v26;
  v27 = *(v26 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v28 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v29 = type metadata accessor for Handle();
  v3[43] = v29;
  v30 = *(v29 - 8);
  v3[44] = v30;
  v31 = *(v30 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v32 = type metadata accessor for UUID();
  v3[48] = v32;
  v33 = *(v32 - 8);
  v3[49] = v33;
  v34 = *(v33 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v35 = type metadata accessor for HandleType();
  v3[53] = v35;
  v36 = *(v35 - 8);
  v3[54] = v36;
  v37 = *(v36 + 64) + 15;
  v3[55] = swift_task_alloc();
  v38 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v39 = type metadata accessor for Friend();
  v3[57] = v39;
  v40 = *(v39 - 8);
  v3[58] = v40;
  v3[59] = *(v40 + 64);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();

  return _swift_task_switch(sub_100420CEC, v2, 0);
}

uint64_t sub_100420CEC()
{
  v57 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[70] = sub_10000A6F0(v2, qword_1005E0C30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v7 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v56);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    *(v7 + 24) = sub_10000D01C(v6, v5, v56);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s from friendServerId: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100009680(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v9 = sub_10000331C(v0 + 2);
  (*(*(My - 8) + 104))(v9, enum case for Feature.FindMy.redStripe(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v0 + 2);
  if (My)
  {
    if (sub_1003F399C())
    {
      v10 = swift_task_alloc();
      v0[71] = v10;
      *v10 = v0;
      v10[1] = sub_1004212F8;
      v11 = v0[9];

      return sub_100405674();
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v56);
      v17 = "%{public}s isFindingCapable == false.";
      goto LABEL_14;
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v56);
      v17 = "%{public}s Feature.FindMy.redStripe FF disabled.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v13, v14, v17, v15, 0xCu);
      sub_100004984(v16);
    }
  }

  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[65];
  v24 = v0[63];
  v23 = v0[64];
  v25 = v0[61];
  v26 = v0[62];
  v27 = v0[60];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[52];
  v32 = v0[51];
  v33 = v0[50];
  v34 = v0[47];
  v35 = v0[46];
  v36 = v0[45];
  v37 = v0[42];
  v38 = v0[41];
  v39 = v0[40];
  v40 = v0[39];
  v41 = v0[36];
  v42 = v0[35];
  v43 = v0[32];
  v44 = v0[31];
  v45 = v0[30];
  v46 = v0[29];
  v47 = v0[26];
  v48 = v0[25];
  v49 = v0[24];
  v50 = v0[23];
  v51 = v0[20];
  v52 = v0[19];
  v53 = v0[18];
  v54 = v0[16];
  v55 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1004212F8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 552);
    v8 = *(v4 + 544);
    v9 = *(v4 + 536);
    v10 = *(v4 + 528);
    v11 = *(v4 + 520);
    v13 = *(v4 + 504);
    v12 = *(v4 + 512);
    v14 = *(v4 + 488);
    v15 = *(v4 + 496);
    v20 = *(v4 + 480);
    v21 = *(v4 + 448);
    v22 = *(v4 + 440);
    v23 = *(v4 + 416);
    v24 = *(v4 + 408);
    v25 = *(v4 + 400);
    v26 = *(v4 + 376);
    v27 = *(v4 + 368);
    v28 = *(v4 + 360);
    v29 = *(v4 + 336);
    v30 = *(v4 + 328);
    v31 = *(v4 + 320);
    v32 = *(v4 + 312);
    v33 = *(v4 + 288);
    v34 = *(v4 + 280);
    v35 = *(v4 + 256);
    v36 = *(v4 + 248);
    v37 = *(v4 + 240);
    v38 = *(v4 + 232);
    v39 = *(v4 + 208);
    v40 = *(v4 + 200);
    v41 = *(v4 + 192);
    v42 = *(v4 + 184);
    v43 = *(v4 + 160);
    v44 = *(v4 + 152);
    v45 = *(v4 + 144);
    v46 = *(v4 + 128);
    v16 = *(v4 + 104);

    v17 = *(v6 + 8);

    return v17();
  }

  else
  {
    v19 = *(v4 + 72);
    *(v4 + 921) = a1 & 1;

    return _swift_task_switch(sub_100421628, v19, 0);
  }
}

uint64_t sub_100421628()
{
  v48 = v0;
  if (*(v0 + 921) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 576) = v2;
    *v2 = v0;
    v2[1] = sub_1004219AC;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 560);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v47 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, &v47);
      _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s this device is NOT eligible to respond to finding tokens request.", v6, 0xCu);
      sub_100004984(v7);
    }

    v8 = *(v0 + 552);
    v9 = *(v0 + 544);
    v10 = *(v0 + 536);
    v11 = *(v0 + 528);
    v12 = *(v0 + 520);
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    v15 = *(v0 + 488);
    v16 = *(v0 + 496);
    v17 = *(v0 + 480);
    v20 = *(v0 + 448);
    v21 = *(v0 + 440);
    v22 = *(v0 + 416);
    v23 = *(v0 + 408);
    v24 = *(v0 + 400);
    v25 = *(v0 + 376);
    v26 = *(v0 + 368);
    v27 = *(v0 + 360);
    v28 = *(v0 + 336);
    v29 = *(v0 + 328);
    v30 = *(v0 + 320);
    v31 = *(v0 + 312);
    v32 = *(v0 + 288);
    v33 = *(v0 + 280);
    v34 = *(v0 + 256);
    v35 = *(v0 + 248);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v38 = *(v0 + 208);
    v39 = *(v0 + 200);
    v40 = *(v0 + 192);
    v41 = *(v0 + 184);
    v42 = *(v0 + 160);
    v43 = *(v0 + 152);
    v44 = *(v0 + 144);
    v45 = *(v0 + 128);
    v46 = *(v0 + 104);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1004219AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 576);
  v12 = *v1;
  v3[73] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[74] = v6;
  v7 = type metadata accessor for Daemon();
  v3[75] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[76] = v9;
  v10 = sub_100009680(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100421B8C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100421B8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v10 = *v2;
  v3[77] = a1;
  v3[78] = v1;

  if (v1)
  {
    v5 = v3[9];
    v6 = sub_100426014;
  }

  else
  {
    v7 = v3[73];
    v8 = v3[9];

    v6 = sub_100421CB8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100421CB8()
{
  (*(v0[54] + 104))(v0[55], enum case for HandleType.follower(_:), v0[53]);
  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_100421D7C;
  v2 = v0[77];
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[7];
  v6 = v0[8];

  return sub_1001E4D40(v3, v5, v6, v4, 1);
}

uint64_t sub_100421D7C()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100421EE8, v5, 0);
}

uint64_t sub_100421EE8()
{
  v92 = v0;
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &qword_1005A9188;
    v5 = &unk_1004D80D0;
LABEL_5:
    sub_100002CE0(v3, v4, v5);
    v14 = v0[70];
    v15 = v0[8];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[77];
    if (v18)
    {
      v21 = v0[7];
      v20 = v0[8];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v91[0] = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_10000D01C(v21, v20, v91);
      _os_log_impl(&_mh_execute_header, v16, v17, "No follower with serverID for handle: %{private,mask.hash}s", v22, 0x16u);
      sub_100004984(v23);
    }

    v24 = v0[69];
    v25 = v0[68];
    v26 = v0[67];
    v27 = v0[66];
    v28 = v0[65];
    v30 = v0[63];
    v29 = v0[64];
    v31 = v0[61];
    v32 = v0[62];
    v33 = v0[60];
    v59 = v0[56];
    v60 = v0[55];
    v61 = v0[52];
    v62 = v0[51];
    v63 = v0[50];
    v64 = v0[47];
    v65 = v0[46];
    v66 = v0[45];
    v67 = v0[42];
    v68 = v0[41];
    v69 = v0[40];
    v70 = v0[39];
    v71 = v0[36];
    v72 = v0[35];
    v73 = v0[32];
    v74 = v0[31];
    v75 = v0[30];
    v76 = v0[29];
    v77 = v0[26];
    v78 = v0[25];
    v79 = v0[24];
    v80 = v0[23];
    v82 = v0[20];
    v84 = v0[19];
    v86 = v0[18];
    v87 = v0[16];
    v89 = v0[13];

    v34 = v0[1];

    return v34();
  }

  v6 = v0[69];
  v7 = v0[49];
  v88 = v0[48];
  v8 = v0[47];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[42];
  v12 = *(v2 + 32);
  v0[80] = v12;
  v0[81] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v6, v3, v1);
  Friend.handle.getter();
  Handle.peerID.getter();
  v13 = *(v9 + 8);
  v0[82] = v13;
  v0[83] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);
  if ((*(v7 + 48))(v11, 1, v88) == 1)
  {
    v3 = v0[42];
    (*(v0[58] + 8))(v0[69], v0[57]);
    v4 = &qword_1005A96E0;
    v5 = &qword_1004C2A80;
    goto LABEL_5;
  }

  v36 = v0[70];
  v37 = v0[69];
  v38 = v0[68];
  v39 = v0[57];
  v40 = v0[58];
  v41 = v0[8];
  (*(v0[49] + 32))(v0[52], v0[42], v0[48]);
  v42 = *(v40 + 16);
  v0[84] = v42;
  v0[85] = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v42(v38, v37, v39);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[68];
  v47 = v0[57];
  v48 = v0[58];
  if (v45)
  {
    v49 = v0[46];
    v85 = v0[43];
    v81 = v0[8];
    v90 = v44;
    v50 = v0[7];
    v51 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v51 = 141558787;
    v83 = v47;
    *(v51 + 4) = 1752392040;
    *(v51 + 12) = 2081;
    *(v51 + 14) = sub_10000D01C(v50, v81, v91);
    *(v51 + 22) = 2160;
    *(v51 + 24) = 1752392040;
    *(v51 + 32) = 2081;
    Friend.handle.getter();
    v52 = Handle.identifier.getter();
    v54 = v53;
    v13(v49, v85);
    v55 = *(v48 + 8);
    v55(v46, v83);
    v56 = sub_10000D01C(v52, v54, v91);

    *(v51 + 34) = v56;
    _os_log_impl(&_mh_execute_header, v43, v90, "Found follower with serverID: %{private,mask.hash}s\nfor handle: %{private,mask.hash}s", v51, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v55 = *(v48 + 8);
    v55(v46, v47);
  }

  v0[86] = v55;
  v57 = async function pointer to daemon.getter[1];
  v58 = swift_task_alloc();
  v0[87] = v58;
  *v58 = v0;
  v58[1] = sub_1004225C0;

  return daemon.getter();
}

uint64_t sub_1004225C0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 696);
  v5 = *v1;
  v3[88] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[89] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009680(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_100422774;
  v10 = v3[76];
  v11 = v3[75];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100422774(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 712);
  v6 = *v2;
  v4[90] = a1;
  v4[91] = v1;

  v7 = v3[88];
  if (v1)
  {
    v8 = v4[9];

    v9 = sub_10042625C;
    v10 = v8;
  }

  else
  {

    v9 = sub_1004228C8;
    v10 = 0;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1004228C8()
{
  v1 = *(v0[90] + 128);
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_100422968;
  v3 = v0[52];
  v4 = v0[36];

  return sub_1001C4430(v4, v3);
}

uint64_t sub_100422968()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1004239C4;
  }

  else
  {
    v6 = sub_100422A94;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100422A94()
{
  v197 = v0;
  v1 = v0[37];
  v2 = v0[36];
  if ((*(v0[38] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[85];
    v4 = v0[84];
    v5 = v0[70];
    v6 = v0[69];
    v7 = v0[61];
    v8 = v0[57];
    sub_100002CE0(v2, &unk_1005AECE8, &qword_1004D07A0);
    v4(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[86];
    if (v11)
    {
      v181 = v0[82];
      v186 = v0[83];
      v13 = v0[61];
      v191 = v0[57];
      v14 = v0[46];
      v169 = v0[43];
      v175 = v0[58];
      v15 = swift_slowAlloc();
      v196[0] = swift_slowAlloc();
      *v15 = 136446723;
      *(v15 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v196);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      Friend.handle.getter();
      v16 = Handle.identifier.getter();
      v18 = v17;
      v181(v14, v169);
      v12(v13, v191);
      v19 = sub_10000D01C(v16, v18, v196);

      *(v15 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s.", v15, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v27 = v0[61];
      v28 = v0[57];
      v29 = v0[58];

      v12(v27, v28);
    }

    v30 = v0[85];
    v31 = v0[70];
    (v0[84])(v0[60], v0[69], v0[57]);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[86];
    if (v34)
    {
      v182 = v0[82];
      v187 = v0[83];
      v36 = v0[60];
      v192 = v0[57];
      v37 = v0[46];
      v170 = v0[43];
      v176 = v0[58];
      v38 = swift_slowAlloc();
      v196[0] = swift_slowAlloc();
      *v38 = 136446723;
      *(v38 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v196);
      *(v38 + 12) = 2160;
      *(v38 + 14) = 1752392040;
      *(v38 + 22) = 2081;
      Friend.handle.getter();
      v39 = Handle.identifier.getter();
      v41 = v40;
      v182(v37, v170);
      v35(v36, v192);
      v42 = sub_10000D01C(v39, v41, v196);

      *(v38 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s Generating tokens for: %{private,mask.hash}s", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v61 = v0[60];
      v62 = v0[57];
      v63 = v0[58];

      v35(v61, v62);
    }

    v177 = v0[90];
    v183 = v0[86];
    v64 = v0[85];
    v65 = v0[84];
    v140 = v65;
    v147 = v0[80];
    v150 = v0[81];
    v160 = v0[77];
    v66 = v0[69];
    v67 = v0[63];
    v144 = v0[62];
    v68 = v0[58];
    v136 = v0[59];
    v69 = v0[57];
    v171 = v0[52];
    v152 = v0[50];
    v163 = v0[49];
    v166 = v0[48];
    v71 = v0[9];
    v70 = v0[10];
    v157 = *(v71 + 128);
    type metadata accessor for WorkItemQueue.WorkItem();
    v65(v67, v66, v69);
    v72 = *(v68 + 80);
    v73 = (v72 + 24) & ~v72;
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    v147(v74 + v73, v67, v69);
    *(v74 + ((v73 + v136 + 7) & 0xFFFFFFFFFFFFFFF8)) = v70;
    v140(v144, v66, v69);
    v75 = (v72 + 16) & ~v72;
    v76 = swift_allocObject();
    v147(v76 + v75, v144, v69);
    *(v76 + ((v75 + v136 + 7) & 0xFFFFFFFFFFFFFFF8)) = v70;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    (*(v163 + 8))(v171, v166);
    v183(v66, v69);
LABEL_20:
    v107 = v0[69];
    v108 = v0[68];
    v109 = v0[67];
    v110 = v0[66];
    v111 = v0[65];
    v113 = v0[63];
    v112 = v0[64];
    v114 = v0[61];
    v115 = v0[62];
    v116 = v0[60];
    v126 = v0[56];
    v127 = v0[55];
    v128 = v0[52];
    v129 = v0[51];
    v130 = v0[50];
    v131 = v0[47];
    v132 = v0[46];
    v133 = v0[45];
    v135 = v0[42];
    v137 = v0[41];
    v139 = v0[40];
    v141 = v0[39];
    v143 = v0[36];
    v146 = v0[35];
    v149 = v0[32];
    v151 = v0[31];
    v154 = v0[30];
    v156 = v0[29];
    v159 = v0[26];
    v162 = v0[25];
    v165 = v0[24];
    v168 = v0[23];
    v174 = v0[20];
    v180 = v0[19];
    v185 = v0[18];
    v190 = v0[16];
    v195 = v0[13];

    v117 = v0[1];

    return v117();
  }

  v20 = v0[40];
  v22 = v0[33];
  v21 = v0[34];
  v23 = v0[32];
  sub_10042E604(v2, v20, type metadata accessor for FriendSharedSecretsRecord);
  sub_100005F04(v20 + *(v1 + 32), v23, &qword_1005AEB98, &unk_1004D07C0);
  if ((*(v21 + 48))(v23, 1, v22) == 1)
  {
    v24 = v0[32];
    v25 = &qword_1005AEB98;
    v26 = &unk_1004D07C0;
LABEL_11:
    sub_100002CE0(v24, v25, v26);
    v50 = v0[70];
    sub_10042E66C(v0[40], v0[39], type metadata accessor for FriendSharedSecretsRecord);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v0[48];
      v54 = v0[39];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v196[0] = v56;
      *v55 = 136446210;
      sub_100009680(&qword_1005A92C0, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_10042E6D4(v54, type metadata accessor for FriendSharedSecretsRecord);
      v60 = sub_10000D01C(v57, v59, v196);

      *(v55 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "No incomingSharedSecret for %{public}s", v55, 0xCu);
      sub_100004984(v56);
    }

    else
    {
      v77 = v0[39];

      sub_10042E6D4(v77, type metadata accessor for FriendSharedSecretsRecord);
    }

    v78 = v0[85];
    v79 = v0[70];
    (v0[84])(v0[64], v0[69], v0[57]);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v0[86];
    if (v82)
    {
      v184 = v0[82];
      v188 = v0[83];
      v84 = v0[64];
      v193 = v0[57];
      v85 = v0[46];
      v172 = v0[43];
      v178 = v0[58];
      v86 = swift_slowAlloc();
      v196[0] = swift_slowAlloc();
      *v86 = 136446723;
      *(v86 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, v196);
      *(v86 + 12) = 2160;
      *(v86 + 14) = 1752392040;
      *(v86 + 22) = 2081;
      Friend.handle.getter();
      v87 = Handle.identifier.getter();
      v89 = v88;
      v184(v85, v172);
      v83(v84, v193);
      v90 = sub_10000D01C(v87, v89, v196);

      *(v86 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v80, v81, "%{public}s Generating tokens for: %{private,mask.hash}s", v86, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v91 = v0[64];
      v92 = v0[57];
      v93 = v0[58];

      v83(v91, v92);
    }

    v167 = v0[90];
    v179 = v0[86];
    v94 = v0[85];
    v95 = v0[84];
    v138 = v95;
    v142 = v0[80];
    v145 = v0[81];
    v155 = v0[77];
    v96 = v0[69];
    v97 = v0[63];
    v189 = v0[62];
    v194 = v96;
    v98 = v0[58];
    v134 = v0[59];
    v99 = v0[57];
    v173 = v0[52];
    v148 = v0[50];
    v161 = v0[49];
    v164 = v0[48];
    v158 = v0[40];
    v100 = v0[9];
    v101 = v0[10];
    v153 = *(v100 + 128);
    type metadata accessor for WorkItemQueue.WorkItem();
    v95(v97, v96, v99);
    v102 = *(v98 + 80);
    v103 = (v102 + 24) & ~v102;
    v104 = swift_allocObject();
    *(v104 + 16) = v100;
    v142(v104 + v103, v97, v99);
    *(v104 + ((v103 + v134 + 7) & 0xFFFFFFFFFFFFFFF8)) = v101;
    v138(v189, v96, v99);
    v105 = (v102 + 16) & ~v102;
    v106 = swift_allocObject();
    v142(v106 + v105, v189, v99);
    *(v106 + ((v105 + v134 + 7) & 0xFFFFFFFFFFFFFFF8)) = v101;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_10042E6D4(v158, type metadata accessor for FriendSharedSecretsRecord);
    (*(v161 + 8))(v173, v164);
    v179(v194, v99);
    goto LABEL_20;
  }

  v43 = v0[40];
  v44 = v0[37];
  v45 = v0[27];
  v46 = v0[28];
  v47 = v0[26];
  (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
  sub_100005F04(v43 + *(v44 + 36), v47, &unk_1005AE5B0, &qword_1004C32F0);
  v48 = *(v46 + 48);
  v0[94] = v48;
  v0[95] = (v46 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v48(v47, 1, v45) == 1)
  {
    v49 = v0[26];
    (*(v0[34] + 8))(v0[35], v0[33]);
    v25 = &unk_1005AE5B0;
    v26 = &qword_1004C32F0;
    v24 = v49;
    goto LABEL_11;
  }

  v119 = v0[31];
  v120 = v0[27];
  v121 = v0[28];
  v122 = v0[26];
  v123 = *(v121 + 32);
  v0[96] = v123;
  v0[97] = (v121 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v123(v119, v122, v120);
  v124 = async function pointer to daemon.getter[1];
  v125 = swift_task_alloc();
  v0[98] = v125;
  *v125 = v0;
  v125[1] = sub_100423C5C;

  return daemon.getter();
}

uint64_t sub_1004239C4()
{
  v1 = v0[90];
  v2 = v0[86];
  v3 = v0[77];
  v4 = v0[69];
  v5 = v0[57];
  v6 = v0[58];
  v7 = v0[52];
  v8 = v0[48];
  v9 = v0[49];

  (*(v9 + 8))(v7, v8);
  v2(v4, v5);
  v49 = v0[93];
  v10 = v0[69];
  v11 = v0[68];
  v12 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[63];
  v16 = v0[64];
  v17 = v0[61];
  v18 = v0[62];
  v19 = v0[60];
  v22 = v0[56];
  v23 = v0[55];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[50];
  v27 = v0[47];
  v28 = v0[46];
  v29 = v0[45];
  v30 = v0[42];
  v31 = v0[41];
  v32 = v0[40];
  v33 = v0[39];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[32];
  v37 = v0[31];
  v38 = v0[30];
  v39 = v0[29];
  v40 = v0[26];
  v41 = v0[25];
  v42 = v0[24];
  v43 = v0[23];
  v44 = v0[20];
  v45 = v0[19];
  v46 = v0[18];
  v47 = v0[16];
  v48 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100423C5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 784);
  v5 = *v1;
  v3[99] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[100] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009680(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_100423E10;
  v10 = v3[76];
  v11 = v3[75];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100423E10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 800);
  v6 = *v2;
  v4[101] = a1;
  v4[102] = v1;

  v7 = v4[99];
  if (v1)
  {
    v8 = v4[9];

    return _swift_task_switch(sub_1004264E8, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[103] = v9;
    *v9 = v6;
    v9[1] = sub_100423FC0;
    v10 = v4[20];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_100423FC0()
{
  v1 = *(*v0 + 824);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1004240D0, v2, 0);
}

uint64_t sub_1004240D0()
{
  v69 = v0;
  object = v0[10]._object;
  countAndFlagsBits = v0[11]._countAndFlagsBits;
  v3 = v0[10]._countAndFlagsBits;
  if ((*(countAndFlagsBits + 48))(v3, 1, object) == 1)
  {
    v4 = v0[35]._countAndFlagsBits;
    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v68 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004EA470, &v68);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s Missing primary account to send FindingTokenRequestEnvelopeV1 with my dsid!", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = v0[50]._object;
    v10 = v0[45]._countAndFlagsBits;
    v11 = v0[38]._object;
    v64 = v0[34]._object;
    v66 = v0[43]._countAndFlagsBits;
    v60 = v0[29]._countAndFlagsBits;
    v62 = v0[28]._object;
    v12 = v0[24]._object;
    v56 = v0[24]._countAndFlagsBits;
    v58 = v0[26]._countAndFlagsBits;
    v13 = v0[17]._countAndFlagsBits;
    v52 = v0[17]._object;
    v54 = v0[20]._countAndFlagsBits;
    v50 = v0[16]._object;
    v14 = v0[15]._object;
    v16 = v0[13]._object;
    v15 = v0[14]._countAndFlagsBits;
    sub_1003DA6A0();
    swift_allocError();
    *v17 = 16;
    swift_willThrow();

    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v52, v50);
    sub_10042E6D4(v54, type metadata accessor for FriendSharedSecretsRecord);
    v12[1](v58, v56);
    v66(v64, v62);
    v18 = v0[34]._object;
    v19 = v0[34]._countAndFlagsBits;
    v20 = v0[33]._object;
    v21 = v0[33]._countAndFlagsBits;
    v22 = v0[32]._object;
    v23 = v0[31]._object;
    v24 = v0[32]._countAndFlagsBits;
    v25 = v0[30]._object;
    v26 = v0[31]._countAndFlagsBits;
    v27 = v0[30]._countAndFlagsBits;
    v32 = v0[28]._countAndFlagsBits;
    v33 = v0[27]._object;
    v34 = v0[26]._countAndFlagsBits;
    v35 = v0[25]._object;
    v36 = v0[25]._countAndFlagsBits;
    v37 = v0[23]._object;
    v38 = v0[23]._countAndFlagsBits;
    v39 = v0[22]._object;
    v40 = v0[21]._countAndFlagsBits;
    v41 = v0[20]._object;
    v42 = v0[20]._countAndFlagsBits;
    v43 = v0[19]._object;
    v44 = v0[18]._countAndFlagsBits;
    v45 = v0[17]._object;
    v46 = v0[16]._countAndFlagsBits;
    v47 = v0[15]._object;
    v48 = v0[15]._countAndFlagsBits;
    v49 = v0[14]._object;
    v51 = v0[13]._countAndFlagsBits;
    v53 = v0[12]._object;
    v55 = v0[12]._countAndFlagsBits;
    v57 = v0[11]._object;
    v59 = v0[10]._countAndFlagsBits;
    v61 = v0[9]._object;
    v63 = v0[9]._countAndFlagsBits;
    v65 = v0[8]._countAndFlagsBits;
    v67 = v0[6]._object;

    v28 = v0->_object;

    return v28();
  }

  else
  {
    (*(countAndFlagsBits + 32))(v0[11]._object, v3, object);
    v0[52] = Account.dsidBase64EncodedString()();
    v30 = async function pointer to daemon.getter[1];
    v31 = swift_task_alloc();
    v0[53]._countAndFlagsBits = v31;
    *v31 = v0;
    v31[1] = sub_1004245C4;

    return daemon.getter();
  }
}

uint64_t sub_1004245C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 848);
  v5 = *v1;
  v3[107] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[108] = v7;
  v8 = sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  v9 = sub_10001DF0C(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  *v7 = v5;
  v7[1] = sub_100424788;
  v10 = v3[76];
  v11 = v3[75];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100424788(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 864);
  v6 = *v2;
  v4[109] = a1;
  v4[110] = v1;

  v7 = v3[107];
  if (v1)
  {
    v8 = v4[105];
    v9 = v4[9];

    v10 = sub_1004267E8;
    v11 = v9;
  }

  else
  {
    v12 = v4[9];

    v10 = sub_1004248EC;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_1004248EC()
{
  v150 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 528);
  v7 = *(v0 + 456);
  v8 = *(v0 + 64);
  v3(*(v0 + 536), v5, v7);
  v3(v6, v5, v7);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v148 = v9;
  if (os_log_type_enabled(v9, v10))
  {
    v144 = v10;
    v136 = *(v0 + 752);
    v139 = *(v0 + 760);
    v121 = *(v0 + 688);
    v115 = *(v0 + 664);
    v11 = *(v0 + 656);
    v12 = *(v0 + 536);
    v130 = *(v0 + 528);
    v13 = *(v0 + 464);
    v118 = *(v0 + 456);
    v14 = *(v0 + 368);
    v15 = *(v0 + 344);
    v133 = *(v0 + 216);
    v16 = *(v0 + 200);
    v124 = *(v0 + 56);
    v127 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v149[0] = swift_slowAlloc();
    *v17 = 141559555;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    Friend.handle.getter();
    v18 = Handle.identifier.getter();
    v20 = v19;
    v11(v14, v15);
    v121(v12, v118);
    v21 = sub_10000D01C(v18, v20, v149);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2160;
    *(v17 + 24) = 1752392040;
    *(v17 + 32) = 2081;
    *(v17 + 34) = sub_10000D01C(v124, v127, v149);
    *(v17 + 42) = 2050;
    Friend.expiry.getter();
    if (v136(v16, 1, v133) == 1)
    {
      v22 = 0x4143C68000000000;
    }

    else
    {
      v28 = *(v0 + 776);
      v30 = *(v0 + 232);
      v29 = *(v0 + 240);
      v32 = *(v0 + 216);
      v31 = *(v0 + 224);
      (*(v0 + 768))(v29, *(v0 + 200), v32);
      static Date.trustedNow.getter(v30);
      Date.timeIntervalSince(_:)();
      v22 = v33;
      v34 = *(v31 + 8);
      v34(v30, v32);
      v34(v29, v32);
    }

    v35 = *(v0 + 840);
    v36 = *(v0 + 832);
    (*(v0 + 688))(*(v0 + 528), *(v0 + 456));
    *(v17 + 44) = v22;
    *(v17 + 52) = 2160;
    *(v17 + 54) = 1752392040;
    *(v17 + 62) = 2081;
    *(v17 + 64) = sub_10000D01C(v36, v35, v149);
    _os_log_impl(&_mh_execute_header, v148, v144, "Sending shared secret to %{private,mask.hash}s.\nfriend ServerId: %{private,mask.hash}s\nTTL: %{public}f\nfrom my serverId: %{private,mask.hash}s over IDS.", v17, 0x48u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 688);
    v24 = *(v0 + 536);
    v25 = *(v0 + 528);
    v26 = *(v0 + 456);
    v27 = *(v0 + 464);

    v23(v25, v26);
    v23(v24, v26);
  }

  v37 = *(v0 + 880);
  v38 = *(v0 + 840);
  v39 = *(v0 + 832);
  v40 = *(v0 + 280);
  v41 = *(v0 + 144);
  v42 = *(v0 + 152);
  v44 = *(v0 + 128);
  v43 = *(v0 + 136);
  (*(*(v0 + 224) + 16))(&v42[*(v43 + 20)], *(v0 + 248), *(v0 + 216));
  v45 = SharedSecretKey.data.getter();
  *v42 = v39;
  *(v42 + 1) = v38;
  v46 = &v42[*(v43 + 24)];
  *v46 = v45;
  v46[1] = v47;
  *(v0 + 920) = 1;
  sub_10042E66C(v42, v41, type metadata accessor for FindingTokenEnvelopeV1);
  sub_10006DFA4();
  sub_100009680(&qword_1005B3998, type metadata accessor for FindingTokenEnvelopeV1);
  sub_100009680(&qword_1005B39A0, type metadata accessor for FindingTokenEnvelopeV1);
  Message.init<A>(type:version:payload:)();
  if (v37)
  {
    v48 = *(v0 + 872);
    v49 = *(v0 + 808);
    v113 = *(v0 + 720);
    v50 = *(v0 + 616);
    v142 = *(v0 + 552);
    v145 = *(v0 + 688);
    v137 = *(v0 + 464);
    v140 = *(v0 + 456);
    v51 = *(v0 + 392);
    v131 = *(v0 + 384);
    v134 = *(v0 + 416);
    v52 = *(v0 + 272);
    v125 = *(v0 + 280);
    v128 = *(v0 + 320);
    v119 = *(v0 + 248);
    v122 = *(v0 + 264);
    v53 = *(v0 + 224);
    v116 = *(v0 + 216);
    v55 = *(v0 + 176);
    v54 = *(v0 + 184);
    v56 = *(v0 + 168);
    v57 = *(v0 + 152);

    sub_10042E6D4(v57, type metadata accessor for FindingTokenEnvelopeV1);
    (*(v55 + 8))(v54, v56);
    (*(v53 + 8))(v119, v116);
    (*(v52 + 8))(v125, v122);
    sub_10042E6D4(v128, type metadata accessor for FriendSharedSecretsRecord);
    (*(v51 + 8))(v134, v131);
    v145(v142, v140);
    v58 = *(v0 + 552);
    v59 = *(v0 + 544);
    v60 = *(v0 + 536);
    v61 = *(v0 + 528);
    v62 = *(v0 + 520);
    v63 = *(v0 + 504);
    v64 = *(v0 + 512);
    v65 = *(v0 + 488);
    v66 = *(v0 + 496);
    v67 = *(v0 + 480);
    v98 = *(v0 + 448);
    v99 = *(v0 + 440);
    v100 = *(v0 + 416);
    v101 = *(v0 + 408);
    v102 = *(v0 + 400);
    v103 = *(v0 + 376);
    v104 = *(v0 + 368);
    v105 = *(v0 + 360);
    v106 = *(v0 + 336);
    v107 = *(v0 + 328);
    v108 = *(v0 + 320);
    v109 = *(v0 + 312);
    v110 = *(v0 + 288);
    v111 = *(v0 + 280);
    v112 = *(v0 + 256);
    v114 = *(v0 + 248);
    v117 = *(v0 + 240);
    v120 = *(v0 + 232);
    v123 = *(v0 + 208);
    v126 = *(v0 + 200);
    v129 = *(v0 + 192);
    v132 = *(v0 + 184);
    v135 = *(v0 + 160);
    v138 = *(v0 + 152);
    v141 = *(v0 + 144);
    v143 = *(v0 + 128);
    v146 = *(v0 + 104);

    v68 = *(v0 + 8);

    return v68();
  }

  else
  {
    v70 = *(v0 + 552);
    v71 = *(v0 + 360);
    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v72 = *(type metadata accessor for Destination() - 8);
    v73 = *(v72 + 72);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    *(swift_allocObject() + 16) = xmmword_1004C1900;
    Friend.handle.getter();
    v75 = Handle.isPhoneNumber.getter();
    Handle.identifier.getter();
    if (v75)
    {
      Destination.init(phoneNumber:)();
    }

    else
    {
      Destination.init(email:)();
    }

    v76 = *(v0 + 760);
    v77 = *(v0 + 752);
    v78 = *(v0 + 664);
    v79 = *(v0 + 552);
    v80 = *(v0 + 384);
    v81 = *(v0 + 392);
    v82 = *(v0 + 328);
    v83 = *(v0 + 216);
    v84 = *(v0 + 192);
    (*(v0 + 656))(*(v0 + 360), *(v0 + 344));
    (*(v81 + 56))(v82, 1, 1, v80);
    Friend.expiry.getter();
    if (v77(v84, 1, v83) != 1)
    {
      v85 = *(v0 + 776);
      v87 = *(v0 + 232);
      v86 = *(v0 + 240);
      v88 = *(v0 + 216);
      v89 = *(v0 + 224);
      (*(v0 + 768))(v86, *(v0 + 192), v88);
      static Date.trustedNow.getter(v87);
      Date.timeIntervalSince(_:)();
      v90 = *(v89 + 8);
      v90(v87, v88);
      v90(v86, v88);
    }

    v147 = *(v0 + 872);
    v91 = *(v0 + 328);
    v92 = *(v0 + 104);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v93 = type metadata accessor for MessagingCapability();
    v94 = *(v93 - 8);
    v95 = *(v94 + 72);
    v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1004C1900;
    (*(v94 + 104))(v97 + v96, enum case for MessagingCapability.supportsPeopleFindingV1(_:), v93);
    sub_10025EC18(v97);
    swift_setDeallocating();
    (*(v94 + 8))(v97 + v96, v93);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();

    return _swift_task_switch(sub_1004253D0, v147, 0);
  }
}

uint64_t sub_1004253D0()
{
  v1 = *(v0[109] + 128);
  v2 = async function pointer to InternetMessaging.send(message:messageOptions:)[1];
  v3 = swift_task_alloc();
  v0[111] = v3;
  *v3 = v0;
  v3[1] = sub_100425478;
  v4 = v0[51];
  v5 = v0[16];
  v6 = v0[13];

  return InternetMessaging.send(message:messageOptions:)(v4, v5, v6);
}

uint64_t sub_100425478()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v12 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_100425C68;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[48];
    v8 = v2[49];
    v9 = v2[9];
    v10 = *(v8 + 8);
    v2[113] = v10;
    v2[114] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v5 = sub_1004255C0;
    v4 = v9;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1004255C0()
{
  v111 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 560);
  (*(v0 + 672))(*(v0 + 520), *(v0 + 552), *(v0 + 456));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v102 = *(v0 + 872);
  v104 = *(v0 + 904);
  v100 = *(v0 + 808);
  v106 = *(v0 + 688);
  v108 = *(v0 + 912);
  if (v5)
  {
    v38 = *(v0 + 656);
    v39 = *(v0 + 664);
    v48 = *(v0 + 616);
    v97 = *(v0 + 552);
    v6 = *(v0 + 520);
    v7 = *(v0 + 456);
    v37 = *(v0 + 464);
    v91 = *(v0 + 384);
    v94 = *(v0 + 416);
    v8 = *(v0 + 368);
    v36 = *(v0 + 344);
    v88 = *(v0 + 320);
    v82 = *(v0 + 264);
    v85 = *(v0 + 280);
    v76 = *(v0 + 248);
    v79 = *(v0 + 272);
    v70 = *(v0 + 224);
    v73 = *(v0 + 216);
    v64 = *(v0 + 168);
    v67 = *(v0 + 184);
    v58 = *(v0 + 152);
    v61 = *(v0 + 176);
    v50 = *(v0 + 120);
    v52 = *(v0 + 112);
    v55 = *(v0 + 128);
    v42 = *(v0 + 96);
    v44 = *(v0 + 88);
    v46 = *(v0 + 104);
    v40 = *(v0 + 720);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v110 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    Friend.handle.getter();
    v11 = Handle.identifier.getter();
    v13 = v12;
    v38(v8, v36);
    v106(v6, v7);
    v14 = sub_10000D01C(v11, v13, &v110);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Successfully sent finding token over IDS for %{private,mask.hash}s", v9, 0x16u);
    sub_100004984(v10);

    (*(v42 + 8))(v46, v44);
    (*(v50 + 8))(v55, v52);
    sub_10042E6D4(v58, type metadata accessor for FindingTokenEnvelopeV1);
    (*(v61 + 8))(v67, v64);
    (*(v70 + 8))(v76, v73);
    (*(v79 + 8))(v85, v82);
    sub_10042E6D4(v88, type metadata accessor for FriendSharedSecretsRecord);
    v104(v94, v91);
    v106(v97, v7);
  }

  else
  {
    v15 = *(v0 + 616);
    v98 = *(v0 + 552);
    v65 = *(v0 + 520);
    v59 = *(v0 + 464);
    v16 = v3;
    v17 = *(v0 + 456);
    v92 = *(v0 + 384);
    v95 = *(v0 + 416);
    v89 = *(v0 + 320);
    v18 = *(v0 + 272);
    v83 = *(v0 + 264);
    v86 = *(v0 + 280);
    v19 = *(v0 + 224);
    v77 = *(v0 + 216);
    v80 = *(v0 + 248);
    v20 = *(v0 + 176);
    v71 = *(v0 + 168);
    v74 = *(v0 + 184);
    v68 = *(v0 + 152);
    v21 = *(v0 + 120);
    v62 = *(v0 + 128);
    v53 = *(v0 + 104);
    v56 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);

    v106(v65, v17);
    (*(v23 + 8))(v53, v22);
    (*(v21 + 8))(v62, v56);
    sub_10042E6D4(v68, type metadata accessor for FindingTokenEnvelopeV1);
    (*(v20 + 8))(v74, v71);
    (*(v19 + 8))(v80, v77);
    (*(v18 + 8))(v86, v83);
    sub_10042E6D4(v89, type metadata accessor for FriendSharedSecretsRecord);
    v104(v95, v92);
    v106(v98, v17);
  }

  v24 = *(v0 + 552);
  v25 = *(v0 + 544);
  v26 = *(v0 + 536);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v30 = *(v0 + 504);
  v29 = *(v0 + 512);
  v31 = *(v0 + 488);
  v32 = *(v0 + 496);
  v33 = *(v0 + 480);
  v41 = *(v0 + 448);
  v43 = *(v0 + 440);
  v45 = *(v0 + 416);
  v47 = *(v0 + 408);
  v49 = *(v0 + 400);
  v51 = *(v0 + 376);
  v54 = *(v0 + 368);
  v57 = *(v0 + 360);
  v60 = *(v0 + 336);
  v63 = *(v0 + 328);
  v66 = *(v0 + 320);
  v69 = *(v0 + 312);
  v72 = *(v0 + 288);
  v75 = *(v0 + 280);
  v78 = *(v0 + 256);
  v81 = *(v0 + 248);
  v84 = *(v0 + 240);
  v87 = *(v0 + 232);
  v90 = *(v0 + 208);
  v93 = *(v0 + 200);
  v96 = *(v0 + 192);
  v99 = *(v0 + 184);
  v101 = *(v0 + 160);
  v103 = *(v0 + 152);
  v105 = *(v0 + 144);
  v107 = *(v0 + 128);
  v109 = *(v0 + 104);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100425C68()
{
  v33 = v0[101];
  v35 = v0[109];
  v37 = v0[90];
  v1 = v0[77];
  v65 = v0[69];
  v67 = v0[86];
  v61 = v0[58];
  v63 = v0[57];
  v57 = v0[48];
  v59 = v0[52];
  v53 = v0[40];
  v55 = v0[49];
  v2 = v0[34];
  v51 = v0[35];
  v47 = v0[31];
  v49 = v0[33];
  v3 = v0[28];
  v4 = v0[22];
  v43 = v0[23];
  v45 = v0[27];
  v39 = v0[19];
  v41 = v0[21];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];

  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v6, v7);
  sub_10042E6D4(v39, type metadata accessor for FindingTokenEnvelopeV1);
  (*(v4 + 8))(v43, v41);
  (*(v3 + 8))(v47, v45);
  (*(v2 + 8))(v51, v49);
  sub_10042E6D4(v53, type metadata accessor for FriendSharedSecretsRecord);
  (*(v55 + 8))(v59, v57);
  v67(v65, v63);
  v68 = v0[112];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[63];
  v17 = v0[64];
  v18 = v0[61];
  v19 = v0[62];
  v20 = v0[60];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[41];
  v34 = v0[40];
  v36 = v0[39];
  v38 = v0[36];
  v40 = v0[35];
  v42 = v0[32];
  v44 = v0[31];
  v46 = v0[30];
  v48 = v0[29];
  v50 = v0[26];
  v52 = v0[25];
  v54 = v0[24];
  v56 = v0[23];
  v58 = v0[20];
  v60 = v0[19];
  v62 = v0[18];
  v64 = v0[16];
  v66 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100426014()
{
  v1 = v0[73];

  v41 = v0[78];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[61];
  v10 = v0[62];
  v11 = v0[60];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[52];
  v17 = v0[51];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[45];
  v22 = v0[42];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[39];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[20];
  v37 = v0[19];
  v38 = v0[18];
  v39 = v0[16];
  v40 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10042625C()
{
  v1 = v0[86];
  v2 = v0[77];
  v3 = v0[69];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[52];
  v7 = v0[48];
  v8 = v0[49];

  (*(v8 + 8))(v6, v7);
  v1(v3, v4);
  v48 = v0[91];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[65];
  v14 = v0[63];
  v15 = v0[64];
  v16 = v0[61];
  v17 = v0[62];
  v18 = v0[60];
  v21 = v0[56];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[51];
  v25 = v0[50];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[40];
  v32 = v0[39];
  v33 = v0[36];
  v34 = v0[35];
  v35 = v0[32];
  v36 = v0[31];
  v37 = v0[30];
  v38 = v0[29];
  v39 = v0[26];
  v40 = v0[25];
  v41 = v0[24];
  v42 = v0[23];
  v43 = v0[20];
  v44 = v0[19];
  v45 = v0[18];
  v46 = v0[16];
  v47 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004264E8()
{
  v1 = v0[90];
  v2 = v0[77];
  v53 = v0[69];
  v55 = v0[86];
  v49 = v0[58];
  v51 = v0[57];
  v3 = v0[49];
  v45 = v0[48];
  v47 = v0[52];
  v4 = v0[40];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[28];

  (*(v10 + 8))(v8, v9);
  (*(v5 + 8))(v6, v7);
  sub_10042E6D4(v4, type metadata accessor for FriendSharedSecretsRecord);
  (*(v3 + 8))(v47, v45);
  v55(v53, v51);
  v56 = v0[102];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[63];
  v17 = v0[64];
  v18 = v0[61];
  v19 = v0[62];
  v20 = v0[60];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[32];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v41 = v0[26];
  v42 = v0[25];
  v43 = v0[24];
  v44 = v0[23];
  v46 = v0[20];
  v48 = v0[19];
  v50 = v0[18];
  v52 = v0[16];
  v54 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004267E8()
{
  v1 = v0[101];
  v2 = v0[90];
  v3 = v0[77];
  v57 = v0[69];
  v59 = v0[86];
  v53 = v0[58];
  v55 = v0[57];
  v4 = v0[49];
  v49 = v0[48];
  v51 = v0[52];
  v5 = v0[34];
  v45 = v0[35];
  v47 = v0[40];
  v43 = v0[33];
  v41 = v0[31];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[22];
  v9 = v0[23];
  v10 = v0[21];

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v41, v6);
  (*(v5 + 8))(v45, v43);
  sub_10042E6D4(v47, type metadata accessor for FriendSharedSecretsRecord);
  (*(v4 + 8))(v51, v49);
  v59(v57, v55);
  v60 = v0[110];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[63];
  v17 = v0[64];
  v18 = v0[61];
  v19 = v0[62];
  v20 = v0[60];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[52];
  v26 = v0[51];
  v27 = v0[50];
  v28 = v0[47];
  v29 = v0[46];
  v30 = v0[45];
  v31 = v0[42];
  v32 = v0[41];
  v33 = v0[40];
  v34 = v0[39];
  v35 = v0[36];
  v36 = v0[35];
  v37 = v0[32];
  v38 = v0[31];
  v39 = v0[30];
  v40 = v0[29];
  v42 = v0[26];
  v44 = v0[25];
  v46 = v0[24];
  v48 = v0[23];
  v50 = v0[20];
  v52 = v0[19];
  v54 = v0[18];
  v56 = v0[16];
  v58 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100426B1C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100426B40, 0, 0);
}

uint64_t sub_100426B40()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (qword_1005A8530 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0C30);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1002BC5B4(v1, 1);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138543362;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "respondToFindingTokenRequest error: %{public}@", v5, 0xCu);
      sub_100002CE0(v6, &qword_1005A9670, &unk_1004C2480);
    }

    v8 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 48) = v8;
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_10042E950;
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
  }

  else
  {
    v8 = sub_100209E2C(_swiftEmptyArrayStorage);
    *(v0 + 32) = v8;
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_1002F7CAC;
    v13 = *(v0 + 24);
    v10 = 0;
  }

  return sub_100402934(0xD00000000000003DLL, 0x80000001004EA430, v10, v8);
}

uint64_t sub_100426DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000368C;

  return sub_100426E6C(a2, a3);
}

uint64_t sub_100426E6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for CloudKitCoordinator.Database();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005AF228, &unk_1004D0440) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&unk_1005AECE8, &qword_1004D07A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v9 = type metadata accessor for FriendSharedSecretsRecord();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for Handle();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v3[19] = v16;
  v17 = *(v16 - 8);
  v3[20] = v17;
  v18 = *(v17 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v19 = type metadata accessor for HandleType();
  v3[23] = v19;
  v20 = *(v19 - 8);
  v3[24] = v20;
  v21 = *(v20 + 64) + 15;
  v3[25] = swift_task_alloc();
  v22 = *(*(sub_10004B564(&qword_1005A9188, &unk_1004D80D0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v23 = type metadata accessor for Friend();
  v3[27] = v23;
  v24 = *(v23 - 8);
  v3[28] = v24;
  v25 = *(v24 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100427240, v2, 0);
}

uint64_t sub_100427240()
{
  v12 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[33] = sub_10000A6F0(v2, qword_1005E0C30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136446723;
    *(v7 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004EA4A0, &v11);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    *(v7 + 24) = sub_10000D01C(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s for handle.serverId: %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v8 = async function pointer to daemon.getter[1];
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_100427450;

  return daemon.getter();
}

uint64_t sub_100427450(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v12 = *v1;
  v3[35] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[36] = v6;
  v7 = type metadata accessor for Daemon();
  v3[37] = v7;
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[38] = v9;
  v10 = sub_100009680(&qword_1005A90D0, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100427630;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100427630(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v10 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_1004296A4;
  }

  else
  {
    v7 = v3[35];
    v8 = v3[4];

    v6 = sub_100427758;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100427758()
{
  (*(v0[24] + 104))(v0[25], enum case for HandleType.following(_:), v0[23]);
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_10042781C;
  v2 = v0[39];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[2];
  v6 = v0[3];

  return sub_1001E4D40(v3, v5, v6, v4, 1);
}

uint64_t sub_10042781C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 32);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100427988, v5, 0);
}

uint64_t sub_100427988()
{
  v68 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &qword_1005A9188;
    v5 = &unk_1004D80D0;
LABEL_5:
    sub_100002CE0(v3, v4, v5);
    v12 = v0[33];
    v13 = v0[3];

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[39];
    if (v16)
    {
      v19 = v0[2];
      v18 = v0[3];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v67 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      *(v20 + 14) = sub_10000D01C(v19, v18, &v67);
      _os_log_impl(&_mh_execute_header, v14, v15, "No following with serverID: %{private,mask.hash}s", v20, 0x16u);
      sub_100004984(v21);
    }

    v23 = v0[31];
    v22 = v0[32];
    v25 = v0[29];
    v24 = v0[30];
    v27 = v0[25];
    v26 = v0[26];
    v29 = v0[21];
    v28 = v0[22];
    v31 = v0[17];
    v30 = v0[18];
    v58 = v0[14];
    v60 = v0[13];
    v62 = v0[10];
    v63 = v0[9];
    v65 = v0[8];

    v32 = v0[1];

    return v32();
  }

  v6 = v0[20];
  v64 = v0[19];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  (*(v2 + 32))(v0[32], v3, v1);
  Friend.handle.getter();
  Handle.peerID.getter();
  v11 = *(v8 + 8);
  v0[42] = v11;
  v0[43] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  if ((*(v6 + 48))(v10, 1, v64) == 1)
  {
    v3 = v0[14];
    (*(v0[28] + 8))(v0[32], v0[27]);
    v4 = &qword_1005A96E0;
    v5 = &qword_1004C2A80;
    goto LABEL_5;
  }

  v34 = v0[32];
  v35 = v0[33];
  v36 = v0[31];
  v37 = v0[27];
  v38 = v0[28];
  v39 = v0[3];
  (*(v0[20] + 32))(v0[22], v0[14], v0[19]);
  v40 = *(v38 + 16);
  v0[44] = v40;
  v0[45] = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40(v36, v34, v37);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v0[31];
  v45 = v0[27];
  v46 = v0[28];
  if (v43)
  {
    v47 = v0[17];
    v61 = v0[15];
    v57 = v0[3];
    v66 = v42;
    v48 = v0[2];
    v49 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v49 = 141558787;
    v59 = v45;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    *(v49 + 14) = sub_10000D01C(v48, v57, &v67);
    *(v49 + 22) = 2160;
    *(v49 + 24) = 1752392040;
    *(v49 + 32) = 2081;
    Friend.handle.getter();
    v50 = Handle.identifier.getter();
    v52 = v51;
    v11(v47, v61);
    v53 = *(v46 + 8);
    v53(v44, v59);
    v54 = sub_10000D01C(v50, v52, &v67);

    *(v49 + 34) = v54;
    _os_log_impl(&_mh_execute_header, v41, v66, "Found following with serverID: %{private,mask.hash}s\nhandleId: %{private,mask.hash}s", v49, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v53 = *(v46 + 8);
    v53(v44, v45);
  }

  v0[46] = v53;
  v55 = async function pointer to daemon.getter[1];
  v56 = swift_task_alloc();
  v0[47] = v56;
  *v56 = v0;
  v56[1] = sub_100427F28;

  return daemon.getter();
}

uint64_t sub_100427F28(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *v1;
  v3[48] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[49] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009680(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_1004280DC;
  v10 = v3[38];
  v11 = v3[37];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004280DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v5 = *(*v2 + 384);
  v9 = *v2;
  v3[50] = a1;
  v3[51] = v1;

  if (v1)
  {
    v6 = v3[4];
    v7 = sub_1004297CC;
  }

  else
  {
    v7 = sub_100428220;
    v6 = 0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100428220()
{
  v1 = *(v0[50] + 128);
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_1004282C0;
  v3 = v0[22];
  v4 = v0[10];

  return sub_1001C4430(v4, v3);
}

uint64_t sub_1004282C0()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100428814;
  }

  else
  {
    v6 = sub_1004283EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004283EC()
{
  v55 = v0;
  v1 = v0[10];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[29];
    v7 = v0[27];
    sub_100002CE0(v1, &unk_1005AECE8, &qword_1004D07A0);
    v3(v6, v4, v7);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[46];
    if (v10)
    {
      v44 = v0[42];
      v46 = v0[43];
      v50 = v0[39];
      v52 = v0[32];
      v12 = v0[29];
      v42 = v0[28];
      v43 = v0[27];
      v13 = v0[17];
      v41 = v0[15];
      v48 = v0[50];
      v14 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v14 = 136446723;
      *(v14 + 4) = sub_10000D01C(0xD000000000000016, 0x80000001004EA4A0, &v54);
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      Friend.handle.getter();
      v15 = Handle.identifier.getter();
      v17 = v16;
      v44(v13, v41);
      v11(v12, v43);
      v18 = sub_10000D01C(v15, v17, &v54);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s Missing friendSharedSecretsRecord for %{private,mask.hash}s.", v14, 0x20u);
      swift_arrayDestroy();

      v11(v52, v43);
    }

    else
    {
      v24 = v0[39];
      v25 = v0[32];
      v27 = v0[28];
      v26 = v0[29];
      v28 = v0[27];

      v11(v26, v28);
      v11(v25, v28);
    }

    (*(v0[20] + 8))(v0[22], v0[19]);
    v30 = v0[31];
    v29 = v0[32];
    v32 = v0[29];
    v31 = v0[30];
    v34 = v0[25];
    v33 = v0[26];
    v36 = v0[21];
    v35 = v0[22];
    v38 = v0[17];
    v37 = v0[18];
    v45 = v0[14];
    v47 = v0[13];
    v49 = v0[10];
    v51 = v0[9];
    v53 = v0[8];

    v39 = v0[1];

    return v39();
  }

  else
  {
    v19 = v0[50];
    v20 = v0[22];
    v21 = v0[13];
    v22 = v0[5];
    sub_10042E604(v1, v21, type metadata accessor for FriendSharedSecretsRecord);
    v23 = swift_task_alloc();
    v0[54] = v23;
    v23[2] = v21;
    v23[3] = v20;
    v23[4] = v22;

    return _swift_task_switch(sub_10042898C, v19, 0);
  }
}

uint64_t sub_100428814()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[39];
  v4 = v0[32];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];

  v2(v4, v5);
  (*(v9 + 8))(v7, v8);
  v11 = v0[31];
  v10 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v15 = v0[25];
  v14 = v0[26];
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[17];
  v19 = v0[18];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[10];
  v25 = v0[9];
  v26 = v0[8];
  v27 = v0[53];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10042898C()
{
  v1 = *(v0[50] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:) + async function pointer to dispatch thunk of CloudKitStorage.changeSet(block:));
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_100428A54;
  v4 = v0[54];
  v5 = v0[9];

  return v7(v5, &unk_1004D8B28, v4);
}

uint64_t sub_100428A54()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v9 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = v2[50];
    v5 = sub_100428DEC;
  }

  else
  {
    v6 = v2[54];
    v7 = v2[4];

    v5 = sub_100428B7C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100428B7C()
{
  v1 = v0[50];
  (*(v0[7] + 104))(v0[8], enum case for CloudKitCoordinator.Database.private(_:), v0[6]);

  return _swift_task_switch(sub_100428C04, v1, 0);
}

uint64_t sub_100428C04()
{
  v1 = *(v0[50] + 136);
  v2 = *(&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + 1);
  v7 = (&async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:) + async function pointer to dispatch thunk of CloudKitStorage.apply(changeSet:database:));
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_100428CB4;
  v4 = v0[8];
  v5 = v0[9];

  return v7(v5, v4);
}

uint64_t sub_100428CB4()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v8 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[50];
    v5 = sub_100429470;
  }

  else
  {
    v6 = v2[4];
    (*(v2[7] + 8))(v2[8], v2[6]);
    v5 = sub_100428FF0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100428DEC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100428E58, v2, 0);
}

uint64_t sub_100428E58()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[39];
  v4 = v0[32];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[13];

  v2(v4, v5);
  sub_10042E6D4(v10, type metadata accessor for FriendSharedSecretsRecord);
  (*(v9 + 8))(v7, v8);
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[17];
  v20 = v0[18];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[9];
  v27 = v0[8];
  v28 = v0[56];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100428FF0()
{
  v68 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[27];
  (*(v0[20] + 16))(v0[21], v0[22], v0[19]);
  v2(v5, v3, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v63 = v0[50];
  v65 = v0[46];
  if (v9)
  {
    v53 = v0[42];
    v54 = v0[43];
    log = v7;
    v57 = v0[39];
    v51 = v0[28];
    v52 = v0[27];
    v55 = v8;
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[19];
    v13 = v0[17];
    v49 = v0[30];
    v50 = v0[15];
    v59 = v0[9];
    v61 = v0[32];
    v14 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v14 = 136446723;
    sub_100009680(&qword_1005A92C0, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v10 + 8);
    v18(v11, v12);
    v19 = sub_10000D01C(v15, v17, &v67);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    Friend.handle.getter();
    v20 = Handle.identifier.getter();
    v22 = v21;
    v53(v13, v50);
    v65(v49, v52);
    v23 = sub_10000D01C(v20, v22, &v67);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, log, v55, "Successfully removed outgoingSharedSecret for %{public}s %{private,mask.hash}s)", v14, 0x20u);
    swift_arrayDestroy();

    sub_100002CE0(v59, &qword_1005AF228, &unk_1004D0440);
    v65(v61, v52);
    v24 = v18;
  }

  else
  {
    v25 = v0[39];
    v26 = v0[32];
    v27 = v0[30];
    v28 = v0[27];
    v29 = v0[28];
    v31 = v0[20];
    v30 = v0[21];
    v32 = v0[19];
    v33 = v0[9];

    v65(v27, v28);
    v34 = v30;
    v24 = *(v31 + 8);
    v24(v34, v32);
    sub_100002CE0(v33, &qword_1005AF228, &unk_1004D0440);
    v65(v26, v28);
  }

  v35 = v0[22];
  v36 = v0[19];
  sub_10042E6D4(v0[13], type metadata accessor for FriendSharedSecretsRecord);
  v24(v35, v36);
  v38 = v0[31];
  v37 = v0[32];
  v40 = v0[29];
  v39 = v0[30];
  v42 = v0[25];
  v41 = v0[26];
  v44 = v0[21];
  v43 = v0[22];
  v46 = v0[17];
  v45 = v0[18];
  v58 = v0[14];
  v60 = v0[13];
  v62 = v0[10];
  v64 = v0[9];
  v66 = v0[8];

  v47 = v0[1];

  return v47();
}

uint64_t sub_100429470()
{
  v1 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_1004294EC, v1, 0);
}

uint64_t sub_1004294EC()
{
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[39];
  v4 = v0[32];
  v5 = v0[27];
  v6 = v0[28];
  v28 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[13];
  v10 = v0[9];

  sub_100002CE0(v10, &qword_1005AF228, &unk_1004D0440);
  v2(v4, v5);
  sub_10042E6D4(v9, type metadata accessor for FriendSharedSecretsRecord);
  (*(v7 + 8))(v28, v8);
  v12 = v0[31];
  v11 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  v16 = v0[25];
  v15 = v0[26];
  v18 = v0[21];
  v17 = v0[22];
  v19 = v0[17];
  v20 = v0[18];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[9];
  v27 = v0[8];
  v29 = v0[58];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004296A4()
{
  v1 = v0[35];

  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[17];
  v11 = v0[18];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004297CC()
{
  v1 = v0[46];
  v2 = v0[39];
  v3 = v0[32];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  v1(v3, v4);
  (*(v8 + 8))(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[25];
  v13 = v0[26];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[17];
  v18 = v0[18];
  v21 = v0[14];
  v22 = v0[13];
  v23 = v0[10];
  v24 = v0[9];
  v25 = v0[8];
  v26 = v0[51];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100429938(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004299C8;

  return sub_100436154();
}

uint64_t sub_1004299C8(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100429AE0, v3, 0);
}

uint64_t sub_100429AE0()
{
  v12 = v0;
  if (*(v0 + 88) > 2u || *(v0 + 88))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000A6F0(v2, qword_1005E0C30);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136446210;
        *(v5 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA4C0, &v11);
        _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Not findable device.", v5, 0xCu);
        sub_100004984(v6);
      }

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_100429D88;

  return daemon.getter();
}

uint64_t sub_100429D88(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009680(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v6 = v12;
  v6[1] = sub_100429F64;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100429F64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_10029F1F8;
  }

  else
  {
    v9 = v4[6];
    v10 = v4[3];

    v4[9] = a1;
    v8 = sub_10042A0A4;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10042A0A4()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(type metadata accessor for FindingConfigEnvelopeV1(0) + 24);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10042A178;
  v8 = v0[9];

  return sub_1003CE9D0(v3, v2, v4, v5, v1 + v6);
}

uint64_t sub_10042A178()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10042A288, v2, 0);
}

uint64_t sub_10042A288()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10042A2EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10042A37C;

  return sub_100436154();
}

uint64_t sub_10042A37C(char a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10042A494, v3, 0);
}

uint64_t sub_10042A494()
{
  v12 = v0;
  if (*(v0 + 88) > 2u || *(v0 + 88))
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      if (qword_1005A8530 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000A6F0(v2, qword_1005E0C30);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 136446210;
        *(v5 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004EA4E0, &v11);
        _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Not findable device.", v5, 0xCu);
        sub_100004984(v6);
      }

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_10042A73C;

  return daemon.getter();
}

uint64_t sub_10042A73C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NIRangingService();
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009680(&qword_1005AD560, type metadata accessor for NIRangingService);
  *v6 = v12;
  v6[1] = sub_10042A918;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10042A918(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1002AB3A4;
  }

  else
  {
    v9 = v4[6];
    v10 = v4[3];

    v4[9] = a1;
    v8 = sub_10042AA58;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10042AA58()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for FindingConfigSessionStopEnvelopeV1(0) + 20);
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10042AB1C;
  v6 = v0[9];

  return sub_1003CE300(v1 + v2, v4, v3);
}

uint64_t sub_10042AB1C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10042E954, v2, 0);
}

uint64_t sub_10042AC4C()
{
  v14 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0C30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    type metadata accessor for Account();
    sub_100009680(&qword_1005A9258, &type metadata accessor for Account);
    v8 = Set.description.getter();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging accounts changed. Accounts: %s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10042AE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Device();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10042AEF4, v1, 0);
}

uint64_t sub_10042AEF4()
{
  v16 = v0;
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[9] = sub_10000A6F0(v2, qword_1005E0C30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_100009680(&qword_1005A9250, &type metadata accessor for Device);
    v9 = Set.description.getter();
    v11 = sub_10000D01C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Messaging devices changed. Devices: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_10042B104;

  return daemon.getter();
}

uint64_t sub_10042B104(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for NITokenService_LocalMessaging();
  v9 = sub_100009680(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009680(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging);
  *v6 = v12;
  v6[1] = sub_10042B2E0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10042B2E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v10 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_10042B840;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[4];

    v6 = sub_10042B408;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10042B408()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v0 + 136) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 56);

  v9 = 0;
  while (v5)
  {
    v10 = *(v0 + 24);
LABEL_12:
    *(v0 + 120) = v5;
    *(v0 + 128) = v9;
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    (*(v15 + 16))(v13, *(v10 + 48) + *(v15 + 72) * (__clz(__rbit64(v5)) | (v9 << 6)), v14);
    (*(v15 + 32))(v12, v13, v14);
    if (Device.isLocallyPaired.getter())
    {
      v16 = *(v0 + 56);
      if (Device.isConnected.getter())
      {
        v7 = *(v0 + 104);
        v6 = sub_10042B5F0;
        v8 = 0;

        return _swift_task_switch(v6, v7, v8);
      }
    }

    v5 &= v5 - 1;
    v6 = (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    if (v11 >= (((1 << *(v0 + 136)) + 63) >> 6))
    {
      break;
    }

    v10 = *(v0 + 24);
    v5 = *(v10 + 8 * v11 + 56);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 24);

  v20 = *(v0 + 56);
  v19 = *(v0 + 64);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10042B5F0()
{
  v1 = v0[13];
  v2 = v0[4];
  sub_1003F97F4(v0[7], 0);

  return _swift_task_switch(sub_10042B664, v2, 0);
}

uint64_t sub_10042B664()
{
  v1 = (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v4 = *(v0 + 128);
  v5 = (*(v0 + 120) - 1) & *(v0 + 120);
  while (v5)
  {
    v6 = *(v0 + 24);
LABEL_9:
    *(v0 + 120) = v5;
    *(v0 + 128) = v4;
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    (*(v11 + 16))(v9, *(v6 + 48) + *(v11 + 72) * (__clz(__rbit64(v5)) | (v4 << 6)), v10);
    (*(v11 + 32))(v8, v9, v10);
    if (Device.isLocallyPaired.getter())
    {
      v12 = *(v0 + 56);
      if (Device.isConnected.getter())
      {
        v2 = *(v0 + 104);
        v1 = sub_10042B5F0;
        v3 = 0;

        return _swift_task_switch(v1, v2, v3);
      }
    }

    v5 &= v5 - 1;
    v1 = (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  while (1)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return _swift_task_switch(v1, v2, v3);
    }

    if (v7 >= (((1 << *(v0 + 136)) + 63) >> 6))
    {
      break;
    }

    v6 = *(v0 + 24);
    v5 = *(v6 + 8 * v7 + 56);
    ++v4;
    if (v5)
    {
      v4 = v7;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 24);

  v16 = *(v0 + 56);
  v15 = *(v0 + 64);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10042B840()
{
  v17 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004EA090, &v16);
    *(v7 + 12) = 2082;
    v0[2] = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v16);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[14];
  }

  v13 = v0[7];
  v12 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10042BA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_10041D5D0(a1, a2, a3);
}

uint64_t sub_10042BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_10042C328(a1, a2, a3);
}

uint64_t sub_10042BBA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10042AC2C(a1);
}

uint64_t sub_10042BC38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_10042AE28(a1);
}

uint64_t sub_10042BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10042BCF0, 0, 0);
}

uint64_t sub_10042BCF0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = async function pointer to CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = type metadata accessor for FriendSharedSecretsRecord();
  v5 = sub_100009680(&qword_1005AF498, type metadata accessor for FriendSharedSecretsRecord);
  *v3 = v0;
  v3[1] = sub_1003F1CD4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return CloudKitChangeSet.Adaptor.update<A>(record:updateBlock:)(v6, sub_10042E948, v1, v4, v5);
}

uint64_t sub_10042BE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A8530 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005E0C30);
  (*(v5 + 16))(v8, a2, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446210;
    sub_100009680(&qword_1005A92C0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_10000D01C(v14, v16, &v25);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Removing outgoingSharedSecret for %{public}s", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v18 = type metadata accessor for FriendSharedSecretsRecord();
  v19 = *(v18 + 24);
  sub_100002CE0(a1 + v19, &qword_1005AEB98, &unk_1004D07C0);
  v20 = type metadata accessor for SharedSecretKey();
  (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
  v21 = *(v18 + 28);
  sub_100002CE0(a1 + v21, &unk_1005AE5B0, &qword_1004C32F0);
  v22 = type metadata accessor for Date();
  return (*(*(v22 - 8) + 56))(a1 + v21, 1, 1, v22);
}

uint64_t sub_10042C140(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_10042C164, 0, 0);
}