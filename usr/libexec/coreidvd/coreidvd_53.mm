uint64_t sub_10058E3B0()
{
  v1 = *(v0 + 312);
  *(v0 + 313) = v1;
  if (v1 == 1)
  {
    v2 = *(v0 + 224);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "DIPACLCleanerUpper phone acl was deleted", v5, 2u);
    }

    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    v6(v7, v8);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendBoundBiometricDeletedEvent()();
  }

  else
  {
    v10 = *(v0 + 216);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 240);
    v15 = *(v0 + 216);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    if (v13)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "DIPACLCleanerUpper no phone acl to delete", v18, 2u);
    }

    v14(v15, v16);
  }

  v19 = *(v0 + 208);
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will attempt to delete all the proofing sessions in progress as the bound Auth ACL is deleted...", v22, 2u);
  }

  v23 = *(v0 + 240);
  v24 = *(v0 + 208);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  v27 = *(v0 + 144);

  v23(v24, v25);
  *(v0 + 256) = *(v27 + 32);

  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *v28 = v0;
  v28[1] = sub_10058E784;

  return sub_10028D628();
}

uint64_t sub_10058E664()
{
  v1 = v0[31];
  swift_willThrow();
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v3(v4, v6);
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10058E784()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return _swift_task_switch(sub_10058E89C, 0, 0);
}

uint64_t sub_10058E89C()
{
  v33 = v0;
  if (*(v0 + 313) == 1)
  {
    v1 = *(v0 + 200);
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "DIPACLCleanerUpper deleting watch global auth acl", v4, 2u);
    }

    v5 = *(v0 + 240);
    v6 = *(v0 + 200);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 144);

    v5(v6, v7);
    *(v0 + 272) = *(v9 + 24);
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_10058EB88;

    return sub_1004C3C74();
  }

  else
  {
    v12 = *(v0 + 176);
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 240);
    v17 = *(v0 + 176);
    v18 = *(v0 + 152);
    v19 = *(v0 + 160);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100141FE4(0xD000000000000010, 0x8000000100719E40, &v32);
      _os_log_impl(&_mh_execute_header, v13, v14, "No acl deleted in %s", v20, 0xCu);
      sub_10000BB78(v21);
    }

    v16(v17, v18);
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_10058EB88()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10058F0F4;
  }

  else
  {
    v3 = sub_10058EC9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10058EC9C()
{
  v1 = *(*(v0 + 272) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_10058ED3C;

  return sub_1006738C8();
}

uint64_t sub_10058ED3C(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_10058EE3C, 0, 0);
}

uint64_t sub_10058EE3C()
{
  v37 = v0;
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = *(v0 + 192);
    v3 = [*(v0 + 304) deviceID];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_10058FE8C(v4, v6);

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 240);
    v11 = *(v0 + 192);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    if (v9)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100141FE4(0xD000000000000010, 0x8000000100719E40, &v36);
      _os_log_impl(&_mh_execute_header, v7, v8, "Deleted ACL in %s", v14, 0xCu);
      sub_10000BB78(v15);
    }

    v10(v11, v12);
  }

  else
  {
    v16 = *(v0 + 184);
    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 240);
    v21 = *(v0 + 184);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    if (v19)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to update prearm trust state for watch because of invalid session", v24, 2u);
    }

    v20(v21, v22);
  }

  v26 = *(v0 + 224);
  v25 = *(v0 + 232);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v30 = *(v0 + 192);
  v29 = *(v0 + 200);
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);
  v33 = *(v0 + 168);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_10058F0F4()
{
  v1 = v0[36];
  v2 = v0[30];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v2(v3, v5);
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];

  v15 = v0[1];

  return v15();
}

void sub_10058F208(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10057DC18(a2, a3);
  if (!v3)
  {
    v12 = v11;
    if (v11)
    {
      sub_10058184C(1);
      sub_10057BA64();
      defaultLogger()();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = v14;
        v16 = v15;
        v17 = swift_slowAlloc();
        v20 = v13;
        v18 = v17;
        v22 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100141FE4(a2, a3, &v22);
        v19 = v20;
        _os_log_impl(&_mh_execute_header, v20, v21, "Successfully updated prearm trust to be deleted for watch with pairingID: %s", v16, 0xCu);
        sub_10000BB78(v18);
      }

      else
      {
      }

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_10058F428()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10058F544, 0, 0);
}

uint64_t sub_10058F544()
{
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[10] = v1;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = *(v1 + 16);
  v6 = v1;
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = sub_10058FDDC;
  *(v7 + 24) = v6;
  v8 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v3 + 104);

  v9(v2, v8, v4);
  v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_10058F720;
  v12 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v12, sub_10058FE30, v7, &type metadata for Int);
}

uint64_t sub_10058F720()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v12 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[11];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v5 = sub_10058FA68;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v9 = v2[8];
    v8 = v2[9];
    v10 = v2[7];

    (*(v9 + 8))(v8, v10);
    v2[14] = v2[2];
    v5 = sub_10058F8A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10058F8A0()
{
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_10058F934;

  return sub_100179764();
}

uint64_t sub_10058F934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 120);
  v9 = *v4;
  v7[16] = a1;
  v7[17] = v3;

  if (v3)
  {
    v10 = sub_10058FC50;
  }

  else
  {
    v7[18] = a3;
    v7[19] = a2;
    v10 = sub_10058FAEC;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10058FA68()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10058FAEC()
{
  v1 = v0[19];
  if (v1 <= 0 && v0[14] < 1)
  {
    v5 = v0[16];
    v6 = v0[6];

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "fetchCredentialUUIDsForAuthACL: no bound credential present", v9, 2u);
    }

    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    (*(v11 + 8))(v10, v12);
    v1 = 0;
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = v0[18];
    v4 = v0[16];
  }

  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  v16 = v0[1];

  return v16(v4, v1, v3);
}

uint64_t sub_10058FC50()
{
  v1 = v0[10];

  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

void sub_10058FCC8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StoredPrearmTrust();
  v5 = static StoredPrearmTrust.fetchRequest()();
  v6 = *(a1 + 16);
  v7 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v2)
  {
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a2 = v8;
  }
}

uint64_t sub_10058FD70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10058FDF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10058FE30@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10058FE8C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v39 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v35 = &v32 - v17;
  __chkstk_darwin(v16);
  v19 = &v32 - v18;
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v40 = v10;
  if (v22)
  {
    v23 = v11;
    v24 = swift_slowAlloc();
    v25 = v12;
    v26 = swift_slowAlloc();
    v41 = v26;
    *v24 = 136315138;
    v27 = a1;
    *(v24 + 4) = sub_100141FE4(a1, a2, &v41);
    _os_log_impl(&_mh_execute_header, v20, v21, "Trying to update prearm trust for watch with pairingID: %s", v24, 0xCu);
    sub_10000BB78(v26);

    (*(v25 + 8))(v19, v23);
  }

  else
  {
    v27 = a1;

    (*(v12 + 8))(v19, v11);
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v29 = v28;
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v27;
  v30[4] = a2;

  sub_10057C18C(sub_100590588, v30);
}

uint64_t sub_100590548()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_1005905A8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v20 = 46;
  v21 = 0xE100000000000000;
  sub_10001F298();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 16 + 16 * v10);
    v8 = *v11;
    v12 = v11[1];
    v16 = v9;
    v17 = v9 + 32;
    v18 = 0;
    v19 = 2 * v10 - 1;

    sub_100007224(&qword_1008487C0, &unk_1006E8BE8);
    sub_100591CB4();
    BidirectionalCollection<>.joined(separator:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v16 = 0xD00000000000001BLL;
    v17 = 0x80000001007228E0;
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    (*(v5 + 104))(v8, enum case for DIPError.Code.invalidStoredData(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_10059083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100007224(&unk_100849FD0, &qword_1006E8380);
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = type metadata accessor for VerifiedClaim(0);
  v49 = v12;
  v13 = *(a1 + *(v12 + 20));
  v14 = *(v13 + 104);
  if (v14)
  {
    v15 = *(v13 + 112);
    if (v15)
    {
      v16 = *(v13 + 104);

      v17 = sub_100590BA4(v14, a2);
      if (v3)
      {
      }

      v28 = v18;
      v45 = v17;
      v29 = sub_100590BA4(v15, a2);
      v31 = v30;
      v44 = v29;

      if ((v28 | v31))
      {
        v33 = *(v13 + 16);
        v32 = *(v13 + 24);
        v34 = *(v13 + 40);
        v43 = *(v13 + 32);
        v35 = *(v13 + 120);
        type metadata accessor for MerkleTreeDetached();
        v36 = swift_allocObject();
        v13 = v36;
        *(v36 + 16) = v33;
        *(v36 + 24) = v32;
        *(v36 + 32) = v43;
        *(v36 + 40) = v34;
        *(v36 + 48) = 0u;
        *(v36 + 64) = 0u;
        *(v36 + 80) = 0u;
        v37 = v44;
        v38 = v45;
        *(v36 + 96) = 0;
        *(v36 + 104) = v38;
        *(v36 + 112) = v37;
      }

      else
      {

        v40 = *(v13 + 16);
        v39 = *(v13 + 24);
        v41 = *(v13 + 40);
        v45 = *(v13 + 32);
        v35 = *(v13 + 120);
        type metadata accessor for MerkleTreeDetached();
        v36 = swift_allocObject();
        v13 = v36;
        *(v36 + 16) = v40;
        *(v36 + 24) = v39;
        *(v36 + 32) = v45;
        *(v36 + 40) = v41;
        *(v36 + 48) = 0u;
        *(v36 + 64) = 0u;
        *(v36 + 80) = 0u;
        *(v36 + 96) = 0u;
        *(v36 + 112) = 0;
      }

      *(v36 + 120) = v35;
      goto LABEL_8;
    }
  }

  v20 = *(v13 + 24);
  v48[0] = *(v13 + 16);
  v48[1] = v20;
  __chkstk_darwin(v12);
  *(&v42 - 2) = v48;
  if ((sub_10035C8E4(sub_1000307C0, (&v42 - 4), a2) & 1) == 0)
  {
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    v23 = a1;
    v24 = a3;
    v25 = *(v13 + 32);
    v26 = *(v13 + 40);
    v45 = v11;
    v27 = *(v13 + 120);
    type metadata accessor for MerkleTreeDetached();
    v13 = swift_allocObject();
    *(v13 + 16) = v22;
    *(v13 + 24) = v21;
    *(v13 + 32) = v25;
    *(v13 + 40) = v26;
    a3 = v24;
    a1 = v23;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0;
    *(v13 + 120) = v27;
    v11 = v45;
LABEL_8:

    goto LABEL_9;
  }

LABEL_9:
  (*(v47 + 16))(v11, a1, v46);
  sub_1000BD460();
  sub_1000BD4B4();
  result = JWSSignedJSON.init(_:)();
  *(a3 + *(v49 + 20)) = v13;
  return result;
}

uint64_t sub_100590BA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 120);
  if (v12)
  {
    goto LABEL_2;
  }

  v29 = *(a1 + 104);
  if (!v29)
  {
    if (!*(a1 + 112))
    {
      goto LABEL_2;
    }

LABEL_11:
    v68 = 0;
    v69 = 0xE000000000000000;
    v34 = v9;
    _StringGuts.grow(_:)(74);
    v35._countAndFlagsBits = 0x7254656C6B72654DLL;
    v35._object = 0xEB000000005B6565;
    String.append(_:)(v35);
    String.append(_:)(*(a1 + 16));
    v36._countAndFlagsBits = 0xD00000000000003DLL;
    v36._object = 0x8000000100722850;
    String.append(_:)(v36);
    a1 = v69;
    (*(v7 + 104))(v11, enum case for DIPError.Code.invalidClaim(_:), v34);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    v58[1] = 0x80000001007228C0;
    v59 = 153;
    v58[0] = 0xD00000000000001BLL;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return a1;
  }

  v30 = *(a1 + 112);
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = *(a1 + 104);

  v32 = sub_100590BA4(v29, a2);
  if (v2)
  {

    return a1;
  }

  v15 = v32;
  v70 = v33;
  v54 = sub_100590BA4(v30, a2);
  v56 = v55;
  v3 = 0;

  if ((v70 | v56))
  {
    v13 = 1;
    v14 = v54;
    goto LABEL_3;
  }

LABEL_2:
  v13 = 0;
  v14 = 0;
  v15 = 0;
LABEL_3:
  v70 = v12;
  v16 = *(a1 + 104);
  v66 = v15;
  v67 = v14;
  if (v16 || *(a1 + 112))
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + 40);
    v62 = *(a1 + 32);
    v63 = v17;
    v20 = *(a1 + 48);
    v61 = *(a1 + 56);
    v65 = v3;
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    v24 = *(a1 + 80);
    v23 = *(a1 + 88);
    v25 = *(a1 + 96);
    LODWORD(v64) = v13;
    type metadata accessor for MerkleTreeDetached();
    a1 = swift_allocObject();
    v26 = v62;
    *(a1 + 16) = v63;
    *(a1 + 24) = v18;
    *(a1 + 32) = v26;
    *(a1 + 40) = v19;
    *(a1 + 48) = v20;
    v27 = v61;
    *(a1 + 56) = v61;
    *(a1 + 64) = v21;
    *(a1 + 72) = v22;
    *(a1 + 80) = v24;
    *(a1 + 88) = v23;
    *(a1 + 96) = v25;
    v28 = v67;
    *(a1 + 104) = v66;
    *(a1 + 112) = v28;
    *(a1 + 120) = v70;

    sub_1000C3308(v20, v27);
  }

  else
  {
    v38 = *(a1 + 16);
    v37 = *(a1 + 24);
    v68 = v38;
    v69 = v37;
    __chkstk_darwin(v9);
    v59 = &v68;
    v39 = sub_10035C8E4(sub_1000F713C, v58, a2);
    v40 = *(a1 + 32);
    v41 = *(a1 + 40);
    if (v39)
    {
      v42 = *(a1 + 48);
      v43 = *(a1 + 56);
      v65 = v3;
      v45 = *(a1 + 64);
      v44 = *(a1 + 72);
      v46 = *(a1 + 80);
      v47 = *(a1 + 88);
      v61 = v42;
      v62 = v46;
      v48 = *(a1 + 96);
      v63 = v43;
      v64 = v48;
      type metadata accessor for MerkleTreeDetached();
      a1 = swift_allocObject();
      *(a1 + 16) = v38;
      *(a1 + 24) = v37;
      *(a1 + 32) = v40;
      *(a1 + 40) = v41;
      v49 = v61;
      v50 = v62;
      v51 = v63;
      *(a1 + 48) = v61;
      *(a1 + 56) = v51;
      *(a1 + 64) = v45;
      *(a1 + 72) = v44;
      *(a1 + 80) = v50;
      *(a1 + 88) = v47;
      v53 = v66;
      v52 = v67;
      *(a1 + 96) = v64;
      *(a1 + 104) = v53;
      *(a1 + 112) = v52;
      *(a1 + 120) = v70;

      sub_1000C3308(v49, v51);
    }

    else
    {
      type metadata accessor for MerkleTreeDetached();
      a1 = swift_allocObject();
      *(a1 + 16) = v38;
      *(a1 + 24) = v37;
      *(a1 + 32) = v40;
      *(a1 + 40) = v41;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = v15;
      *(a1 + 112) = v14;
      *(a1 + 120) = 1;
    }
  }

  return a1;
}

uint64_t sub_100591098(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_100591154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + 40);
  v4 = *(a3 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 2;
    v6 = *(v3 - 1);
    v7 = *v3;
    sub_10001F298();

    v8 = StringProtocol.components<A>(separatedBy:)();
    v9 = StringProtocol.components<A>(separatedBy:)();

    LOBYTE(v7) = sub_100591098(v9, v8);

    v3 = v5;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_100591264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 56);
    v113 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v121 = v7;
      v122 = v6;
      if (v4)
      {
        v119 = 46;
        v120 = 0xE100000000000000;
        swift_bridgeObjectRetain_n();

        v8._countAndFlagsBits = v5;
        v8._object = v4;
        String.append(_:)(v8);
        v9._countAndFlagsBits = 46;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);

        v7 = v121;
        v10 = v122;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v10 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1003C5110(0, *(v113 + 2) + 1, 1, v113);
      }

      v12 = *(v113 + 2);
      v11 = *(v113 + 3);
      if (v12 >= v11 >> 1)
      {
        v113 = sub_1003C5110((v11 > 1), v12 + 1, 1, v113);
      }

      v3 += 5;

      *(v113 + 2) = v12 + 1;
      v13 = &v113[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v10;
      --v2;
    }

    while (v2);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
  }

  v14 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_claimData);
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v94 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_20:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    v24 = (*(v14 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = (*(v14 + 56) + 96 * v23);
    v28 = v27[1];
    v128[0] = *v27;
    v128[1] = v28;
    v30 = v27[3];
    v29 = v27[4];
    v31 = v27[2];
    *(v129 + 9) = *(v27 + 73);
    v128[3] = v30;
    v129[0] = v29;
    v128[2] = v31;
    v32 = v27[1];
    v130 = *v27;
    v131 = v32;
    v33 = v27[2];
    v34 = v27[3];
    v35 = v27[4];
    *(v134 + 9) = *(v27 + 73);
    v133 = v34;
    v134[0] = v35;
    v132 = v33;
    v121 = v25;
    v122 = v26;
    v125 = v33;
    v126 = v34;
    v127[0] = v35;
    *(v127 + 9) = *(v134 + 9);
    v123 = v130;
    v124 = v131;

    sub_10000BBC4(v128, &v119, &unk_100849FC0, &qword_1006C9540);
    if (sub_100591154(v25, v26, v113))
    {
      sub_10000BBC4(&v121, &v119, &qword_1008487B8, &qword_1006E9E10);
      sub_10000BE18(v128, &unk_100849FC0, &qword_1006C9540);
      sub_10000BBC4(&v121, &v119, &qword_1008487B8, &qword_1006E9E10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v94;
      v37 = sub_10003ADCC(v25, v26);
      v38 = v94[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_74;
      }

      if (v94[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = v36;
          v108 = v37;
          sub_1001725F4();
          v37 = v108;
          v36 = v103;
        }
      }

      else
      {
        v102 = v36;
        sub_10016B77C(v40, isUniquelyReferenced_nonNull_native);
        v41 = sub_10003ADCC(v25, v26);
        v43 = v42 & 1;
        v36 = v102;
        if ((v102 & 1) != v43)
        {
          goto LABEL_76;
        }

        v37 = v41;
      }

      v94 = v119;
      if (v36)
      {
        sub_100591C44(v128, *(v119 + 56) + 96 * v37);
      }

      else
      {
        sub_10016ED88(v37, v25, v26, v128, v119);
      }

      sub_10000BE18(&v121, &qword_1008487B8, &qword_1006E9E10);
    }

    else
    {
      sub_10000BE18(&v121, &qword_1008487B8, &qword_1006E9E10);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v20 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_20;
    }
  }

  v44 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);
  v45 = 1 << *(v44 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v44 + 64);
  v48 = (v45 + 63) >> 6;
  v49 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_unverifiedClaimData);
  swift_bridgeObjectRetain_n();
  v50 = 0;
  v93 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v51 = v50;
    if (!v47)
    {
      break;
    }

LABEL_39:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = v52 | (v50 << 6);
    v54 = (*(v44 + 48) + 16 * v53);
    v56 = *v54;
    v55 = v54[1];
    v57 = (*(v44 + 56) + 96 * v53);
    v58 = v57[1];
    v130 = *v57;
    v131 = v58;
    v60 = v57[3];
    v59 = v57[4];
    v61 = v57[2];
    *(v134 + 9) = *(v57 + 73);
    v133 = v60;
    v134[0] = v59;
    v132 = v61;
    v114 = *v57;
    v115 = v57[1];
    *&v118[9] = *(v57 + 73);
    v117 = v57[3];
    *v118 = v57[4];
    v116 = v57[2];
    v121 = v56;
    v122 = v55;
    v125 = v116;
    v126 = v117;
    v127[0] = *v118;
    *(v127 + 9) = *&v118[9];
    v123 = v114;
    v124 = v115;

    sub_10000BBC4(&v130, &v119, &unk_100849FC0, &qword_1006C9540);
    if (sub_100591154(v56, v55, v113))
    {
      sub_10000BBC4(&v121, &v119, &qword_1008487B8, &qword_1006E9E10);
      sub_10000BE18(&v130, &unk_100849FC0, &qword_1006C9540);
      sub_10000BBC4(&v121, &v119, &qword_1008487B8, &qword_1006E9E10);

      v109 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v93;
      v63 = sub_10003ADCC(v56, v55);
      v64 = v93[2];
      v65 = (v62 & 1) == 0;
      v66 = v64 + v65;
      if (__OFADD__(v64, v65))
      {
        goto LABEL_75;
      }

      if (v93[3] >= v66)
      {
        if ((v109 & 1) == 0)
        {
          v105 = v62;
          v110 = v63;
          sub_1001725F4();
          v63 = v110;
          v62 = v105;
        }
      }

      else
      {
        v104 = v62;
        sub_10016B77C(v66, v109);
        v67 = sub_10003ADCC(v56, v55);
        v69 = v68 & 1;
        v62 = v104;
        if ((v104 & 1) != v69)
        {
          goto LABEL_76;
        }

        v63 = v67;
      }

      v93 = v119;
      if (v62)
      {
        sub_100591C44(&v130, *(v119 + 56) + 96 * v63);
      }

      else
      {
        sub_10016ED88(v63, v56, v55, &v130, v119);
      }

      sub_10000BE18(&v121, &qword_1008487B8, &qword_1006E9E10);
    }

    else
    {
      sub_10000BE18(&v121, &qword_1008487B8, &qword_1006E9E10);
    }
  }

  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v50 >= v48)
    {

      v70 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);
      if (!v70)
      {

        sub_10003FC48(_swiftEmptyArrayStorage);
        return v94;
      }

      v71 = v70 + 64;
      v72 = 1 << *(v70 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v74 = v73 & *(v70 + 64);
      v75 = (v72 + 63) >> 6;
      v76 = *(a1 + OBJC_IVAR____TtC8coreidvd22DIPStoredVerifiedClaim_encryptedClaimData);
      swift_bridgeObjectRetain_n();
      v77 = 0;
      v98 = &_swiftEmptyDictionarySingleton;
      v95 = v75;
      v96 = v70 + 64;
      v97 = v70;
LABEL_55:
      v79 = v77;
      if (!v74)
      {
        goto LABEL_57;
      }

      while (2)
      {
        v80 = v79;
LABEL_60:
        v100 = v80;
        v101 = (v74 - 1) & v74;
        v81 = __clz(__rbit64(v74)) | (v80 << 6);
        v82 = (*(v70 + 48) + 16 * v81);
        v106 = *v82;
        v83 = *(*(v70 + 56) + 8 * v81);
        v84 = *(v113 + 2);
        v112 = v82[1];

        v99 = v83;

        v85 = -1;
        v86 = (v113 + 40);
        while (v85 - v84 != -1)
        {
          if (++v85 >= *(v113 + 2))
          {
            __break(1u);
            goto LABEL_71;
          }

          v87 = v86 + 2;
          v89 = *(v86 - 1);
          v88 = *v86;
          v121 = v106;
          v122 = v112;
          v119 = 46;
          v120 = 0xE100000000000000;
          sub_10001F298();

          v90 = StringProtocol.components<A>(separatedBy:)();
          v121 = v89;
          v122 = v88;
          v119 = 46;
          v120 = 0xE100000000000000;
          v91 = StringProtocol.components<A>(separatedBy:)();

          LOBYTE(v88) = sub_100591098(v91, v90);

          v86 = v87;
          if (v88)
          {
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v121 = v98;
            sub_10016E558(v99, v106, v112, v78);

            v98 = v121;
            v71 = v96;
            v70 = v97;
            v75 = v95;
            v77 = v100;
            v74 &= v74 - 1;
            goto LABEL_55;
          }
        }

        v79 = v100;
        v74 &= v74 - 1;
        v71 = v96;
        v70 = v97;
        v75 = v95;
        if (v101)
        {
          continue;
        }

        break;
      }

LABEL_57:
      while (1)
      {
        v80 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_73;
        }

        if (v80 >= v75)
        {

          return v94;
        }

        v74 = *(v71 + 8 * v80);
        ++v79;
        if (v74)
        {
          goto LABEL_60;
        }
      }
    }

    v47 = *(v44 + 64 + 8 * v50);
    ++v51;
    if (v47)
    {
      goto LABEL_39;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100591C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849FC0, &qword_1006C9540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100591CB4()
{
  result = qword_1008487C8;
  if (!qword_1008487C8)
  {
    sub_10000B870(&qword_1008487C0, &unk_1006E8BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008487C8);
  }

  return result;
}

uint64_t sub_100591D18(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v39 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 56);
    v42 = _swiftEmptyArrayStorage;
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      if (*v4)
      {
        swift_bridgeObjectRetain_n();

        v9._countAndFlagsBits = v6;
        v9._object = v5;
        String.append(_:)(v9);
        v10._countAndFlagsBits = 46;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1003C5110(0, *(v42 + 2) + 1, 1, v42);
      }

      v12 = *(v42 + 2);
      v11 = *(v42 + 3);
      if (v12 >= v11 >> 1)
      {
        v42 = sub_1003C5110((v11 > 1), v12 + 1, 1, v42);
      }

      v4 += 5;

      *(v42 + 2) = v12 + 1;
      v13 = &v42[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  v14 = *(v39 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v39 + 64;
    v40 = a2;
    v41 = v14;
    v36 = v16;
    do
    {
      v17 = (v16 + 40 * v15);
      v18 = v15;
      while (1)
      {
        if (v18 >= v14)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        v15 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_44;
        }

        v20 = *(v17 - 4);
        v19 = *(v17 - 3);
        v21 = *(v17 - 2);
        v38 = *(v17 - 1);
        v22 = *v17;
        v23 = 0x746E656D75636F64;
        if (v40 != 3)
        {
          v23 = 0xD000000000000010;
        }

        v24 = 0x8000000100722930;
        if (v40 == 3)
        {
          v24 = 0xE800000000000000;
        }

        if (v40 == 2)
        {
          v23 = 0x6966697265766E75;
          v24 = 0xEA00000000006465;
        }

        v25 = 1701736302;
        if (v40)
        {
          v25 = 0x6E692D646579656BLL;
        }

        v26 = 0xE400000000000000;
        if (v40)
        {
          v26 = 0xE800000000000000;
        }

        v27 = v40 <= 1 ? v25 : v23;
        v28 = (v40 <= 1 ? v26 : v24);

        v29._countAndFlagsBits = v27;
        v29._object = v28;
        String.append(_:)(v29);

        v30._countAndFlagsBits = 46;
        v30._object = 0xE100000000000000;
        String.append(_:)(v30);
        v31._countAndFlagsBits = v20;
        v31._object = v19;
        String.append(_:)(v31);
        v32 = sub_100591154(0, 0xE000000000000000, v42);

        if (v32)
        {
          break;
        }

        ++v18;
        v17 += 5;
        v14 = v41;
        if (v15 == v41)
        {
          goto LABEL_42;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100173618(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v16 = v36;
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        result = sub_100173618((v33 > 1), v34 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[5 * v34];
      v35[4] = v20;
      v35[5] = v19;
      v35[6] = v21;
      v35[7] = v38;
      v35[8] = v22;
      v14 = v41;
    }

    while (v15 != v41);
  }

LABEL_42:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005920E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10036E65C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100592174(char a1, uint64_t a2, uint64_t *a3)
{
  v66 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v65 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v65 - v15;
  __chkstk_darwin(v14);
  v18 = v65 - v17;
  v19 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 24));
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      if (a1)
      {

        v22 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
        os_unfair_lock_lock((v22 + 32));
        v23 = *(v22 + 16);
        v24 = *(v22 + 24);

        os_unfair_lock_unlock((v22 + 32));
        if (v24)
        {
          v25 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
          v27 = *(v25 + 2);
          v26 = *(v25 + 3);
          if (v27 >= v26 >> 1)
          {
            v25 = sub_1003C5110((v26 > 1), v27 + 1, 1, v25);
          }

          *(v25 + 2) = v27 + 1;
          v28 = &v25[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v24;
          sub_1000DE190(v25, v66);
        }

        else
        {
          defaultLogger()();
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "no default voice numbers available", v55, 2u);
          }

          v56 = *(v6 + 8);
          v56(v18, v5);
          v57 = v66;
          v58 = *v66;
          *v66 = 0;

          if (*v57 && *(*v57 + 16))
          {
            defaultLogger()();
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              *v61 = 0;
              _os_log_impl(&_mh_execute_header, v59, v60, "got PhoneNumber", v61, 2u);
            }

            return (v56)(v16, v5);
          }
        }

        return result;
      }

      v39 = sub_10001F298();
      v65[1] = v20;
      v40 = (v20 + 40);
      v41 = _swiftEmptyArrayStorage;
      while (1)
      {
        v42 = *(v40 - 1);
        v43 = *v40;
        v71 = v42;
        v72 = v43;
        v69 = 48;
        v70 = 0xE100000000000000;
        v67 = 0;
        v68 = 0xE000000000000000;

        v63 = v39;
        v64 = v39;
        v62[1] = v39;
        v62[0] = &type metadata for String;
        v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v46 = v45;
        v47 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v47 = v42 & 0xFFFFFFFFFFFFLL;
        }

        if (!v47 || (v48 = v44, v71 = v42, v72 = v43, __chkstk_darwin(v44), v63 = &v71, (sub_10035C8E4(sub_1000F713C, v62, v41) & 1) != 0))
        {
        }

        else
        {

          v49 = HIBYTE(v46) & 0xF;
          if ((v46 & 0x2000000000000000) == 0)
          {
            v49 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (v49)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_1003C5110(0, *(v41 + 2) + 1, 1, v41);
            }

            v51 = *(v41 + 2);
            v50 = *(v41 + 3);
            if (v51 >= v50 >> 1)
            {
              v41 = sub_1003C5110((v50 > 1), v51 + 1, 1, v41);
            }

            *(v41 + 2) = v51 + 1;
            v52 = &v41[16 * v51];
            *(v52 + 4) = v42;
            *(v52 + 5) = v43;
            goto LABEL_21;
          }
        }

LABEL_21:
        v40 += 2;
        if (!--v21)
        {

          sub_1000DE190(v41, v66);
        }
      }
    }
  }

  defaultLogger()();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "no phone numbers available", v32, 2u);
  }

  v33 = *(v6 + 8);
  v33(v13, v5);
  v34 = v66;
  v35 = *v66;
  *v66 = 0;

  if (*v34 && *(*v34 + 16))
  {
    defaultLogger()();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "got PhoneNumber", v38, 2u);
    }

    return (v33)(v10, v5);
  }

  return result;
}

id sub_1005927E0()
{
  result = [objc_allocWithZone(type metadata accessor for DIPDeviceInfo()) init];
  qword_1008823E0 = result;
  return result;
}

uint64_t sub_100592810()
{
  v10 = xmmword_1006D1BF0;
  v12 = 0;
  v11 = 0;
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100269F38;
  *(v3 + 24) = v2;
  v9[4] = sub_10057E5F8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10057E264;
  v9[3] = &unk_100817A58;
  v4 = _Block_copy(v9);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100592998(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo;
  v4 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo);
  v3 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo + 8);
  v5 = *(v2 + 20);
  LODWORD(v2) = *(v2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  v9 = *(a1 + 16);
  v8 = a1 + 16;
  v10 = v9 | (*(v8 + 4) << 32);
  *v8 = v2;
  *(v8 + 4) = v5;
  sub_100596104(v4, v3);

  return sub_10003477C(v6, v7);
}

id sub_100592A18()
{
  ObjectType = swift_getObjectType();
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v34 - 8);
  v0 = *(v32 + 64);
  __chkstk_darwin(v34);
  v2 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v31 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_workQueue;
  v7 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v25[1] = "Result8@NSError16";
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  v29 = sub_100487608();
  v28 = sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  v30 = sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  v27 = v3;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v9 = *(v32 + 104);
  v10 = v34;
  v9(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v25[0] = v7;
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v26;
  *&v26[v31] = v11;
  v32 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  v9(v2, v8, v10);
  *&v12[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctQueue;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9(v2, v8, v34);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v12[v13] = v14;
  v15 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse;
  sub_100007224(&qword_100848970, &qword_1006E8C58);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *&v12[v15] = v16;
  v17 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers;
  sub_100007224(&qword_100848978, &unk_1006E8C60);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *&v12[v17] = v18;
  v19 = OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber;
  sub_100007224(&unk_100848980, &qword_1006E7CC8);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *&v12[v19] = v20;
  v21 = &v12[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo];
  *v21 = xmmword_1006D1BF0;
  v21[20] = 0;
  *(v21 + 4) = 0;
  v22 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v14];
  *&v12[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient] = v22;
  v35.receiver = v12;
  v35.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v35, "init");
  sub_100592EB0();

  return v23;
}

uint64_t sub_100592EB0()
{
  v0 = type metadata accessor for UUID();
  v127 = *(v0 - 8);
  v128 = v0;
  v1 = *(v127 + 64);
  __chkstk_darwin(v0);
  v3 = v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v129 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v119 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v119 - v13;
  v15 = __chkstk_darwin(v12);
  v125 = v119 - v16;
  __chkstk_darwin(v15);
  v18 = v119 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "reload CT initiated", v21, 2u);
  }

  v24 = *(v5 + 8);
  v23 = v5 + 8;
  v22 = v24;
  v24(v18, v4);
  v25 = v131;
  v26 = *&v131[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient];
  [v26 setDelegate:v131];
  v134 = 0;
  v27 = [v26 getUserDefaultVoiceSubscriptionContext:&v134];
  if (!v27)
  {
    v61 = v134;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_34;
  }

  v28 = v27;
  v123 = v14;
  v29 = v134;
  v30 = [v28 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v134 = 0;
  v132 = v26;
  v31 = [v26 getSubscriptionInfoWithError:&v134];
  if (!v31)
  {
    v62 = v134;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v127 + 8))(v3, v128);
    goto LABEL_34;
  }

  v32 = v31;
  v124 = v28;
  v33 = v134;
  v34 = [v32 subscriptionsInUse];

  if (v34)
  {
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v36);
    v119[-2] = v3;

    v134 = sub_100596E68(v37);
    v38 = sub_100596118(sub_100598CB4, &v119[-4]);
    v126 = v22;
    v39 = v134;
    v40 = *&v131[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse];
    __chkstk_darwin(v38);
    v119[-2] = v39;

    os_unfair_lock_lock((v40 + 24));
    sub_100598C84((v40 + 16));
    v119[0] = 0;
    os_unfair_lock_unlock((v40 + 24));

    v121 = v23;
    v122 = v4;
    v120 = v3;
    v119[1] = v35;
    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      goto LABEL_62;
    }

    for (i = *(v39 + 16); ; i = v41)
    {
      v43 = v39;
      v44 = _swiftEmptyArrayStorage;
      v45 = v131;
      v39 = v132;
      if (!i)
      {
        break;
      }

      v134 = _swiftEmptyArrayStorage;
      sub_100172D4C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
      }

      v46 = 0;
      v44 = v134;
      v130 = v43 & 0xC000000000000001;
      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v130)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v43 + 16))
          {
            goto LABEL_61;
          }

          v48 = *(v43 + 8 * v46 + 32);
        }

        v49 = v48;
        v133 = 0;
        v50 = [v39 getPhoneNumber:v48 error:&v133];
        if (!v50)
        {
          v74 = v133;

          _convertNSErrorToError(_:)();

          swift_willThrow();

          goto LABEL_33;
        }

        v51 = v50;
        v52 = v43;
        v53 = v133;
        v54 = [v51 number];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v134 = v44;
        v59 = v44[2];
        v58 = v44[3];
        if (v59 >= v58 >> 1)
        {
          v41 = sub_100172D4C((v58 > 1), v59 + 1, 1);
          v44 = v134;
        }

        v44[2] = v59 + 1;
        v60 = &v44[2 * v59];
        v60[4] = v55;
        v60[5] = v57;
        ++v46;
        v39 = v132;
        v43 = v52;
        if (v47 == i)
        {
          v45 = v131;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v41 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_28:
    v75 = *&v45[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers];
    __chkstk_darwin(v41);
    v119[-2] = v44;
    os_unfair_lock_lock((v75 + 24));
    sub_100598C84((v75 + 16));
    os_unfair_lock_unlock((v75 + 24));

    v134 = 0;
    v76 = v124;
    v77 = [v39 getPhoneNumber:v124 error:&v134];
    if (v77)
    {
      v78 = v77;
      v79 = v134;
      v80 = [v78 number];

      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v45;
      v84 = v83;

      v85 = *&v82[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber];
      __chkstk_darwin(v86);
      v119[-2] = v81;
      v119[-1] = v84;
      os_unfair_lock_lock((v85 + 32));
      sub_100598C9C((v85 + 16));
      os_unfair_lock_unlock((v85 + 32));

      os_unfair_lock_lock((v85 + 32));
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);

      os_unfair_lock_unlock((v85 + 32));
      os_unfair_lock_lock((v75 + 24));
      v89 = *(v75 + 16);

      os_unfair_lock_unlock((v75 + 24));

      v90 = v122;
      v91 = v128;
      if (v89)
      {
        v92 = v123;
        if (v89[2])
        {
          v94 = v89[4];
          v93 = v89[5];
        }

        else
        {

          v94 = 0;
          v93 = 0;
        }

        v105 = v126;
        if (v87)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v94 = 0;
        v93 = 0;
        v105 = v126;
        v92 = v123;
        if (v87)
        {
LABEL_42:
          if (v93)
          {
            if (v88 == v94 && v87 == v93)
            {

              v106 = v131;
              goto LABEL_52;
            }

            v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v106 = v131;
            if (v118)
            {
              goto LABEL_52;
            }

            goto LABEL_48;
          }

          v106 = v131;
LABEL_47:

LABEL_48:
          v107 = v125;
          defaultLogger()();
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            _os_log_impl(&_mh_execute_header, v108, v109, "WARNING default voice number is not 1st in the list", v110, 2u);

            v111 = v107;
            v90 = v122;
          }

          else
          {

            v111 = v107;
          }

          v105(v111, v90);
LABEL_52:
          defaultLogger()();
          v112 = v106;
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = -1;
            v116 = swift_slowAlloc();
            *v116 = 134349056;
            os_unfair_lock_lock((v75 + 24));
            v117 = *(v75 + 16);

            os_unfair_lock_unlock((v75 + 24));
            if (v117)
            {
              v115 = *(v117 + 16);
            }

            v105 = v126;
            *(v116 + 4) = v115;

            _os_log_impl(&_mh_execute_header, v113, v114, "reload CT, total phone numbers = %{public}ld", v116, 0xCu);

            v92 = v123;
          }

          else
          {

            v113 = v112;
          }

          v105(v92, v90);
          return (*(v127 + 8))(v120, v91);
        }
      }

      v106 = v131;
      if (!v93)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    v95 = v134;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_33:
    (*(v127 + 8))(v120, v128);
    v4 = v122;
    v22 = v126;
LABEL_34:
    v96 = v129;
    defaultLogger()();
    swift_errorRetain();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v126 = v22;
      v100 = v99;
      v101 = swift_slowAlloc();
      v134 = v101;
      *v100 = 136315138;
      swift_getErrorValue();
      v102 = Error.localizedDescription.getter();
      v104 = sub_100141FE4(v102, v103, &v134);

      *(v100 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v97, v98, "error retrieving phone number: %s", v100, 0xCu);
      sub_10000BB78(v101);

      return (v126)(v96, v4);
    }

    else
    {

      return (v22)(v96, v4);
    }
  }

  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "No CT Subscriptions in use", v65, 2u);
    v25 = v131;
  }

  v66 = (v22)(v11, v4);
  v67 = v25;
  v68 = *&v25[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse];
  __chkstk_darwin(v66);
  v119[-2] = 0;
  os_unfair_lock_lock((v68 + 24));
  sub_100598C84((v68 + 16));
  os_unfair_lock_unlock((v68 + 24));
  v69 = *&v67[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers];
  __chkstk_darwin(v70);
  v119[-2] = 0;
  os_unfair_lock_lock((v69 + 24));
  sub_100598C84((v69 + 16));
  os_unfair_lock_unlock((v69 + 24));
  v71 = *&v67[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber];
  __chkstk_darwin(v72);
  v119[-2] = 0;
  v119[-1] = 0;
  os_unfair_lock_lock((v71 + 32));
  sub_100598C1C((v71 + 16));
  os_unfair_lock_unlock((v71 + 32));

  return (*(v127 + 8))(v3, v128);
}

BOOL sub_100593CBC(void **a1, void **a2)
{
  v4 = sub_100007224(&unk_100848960, &unk_1006E8C30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v30 = &v29 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = [v15 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [v16 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = static UUID.== infix(_:_:)();
  if ((v19 ^ static UUID.== infix(_:_:)()))
  {
    if (v19)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v21 = [v15 slotID];
    v22 = (v21 == 1) ^ ([v16 slotID] != 1);
    if (v21 == 1)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    if (v22)
    {
      v33 = UUID.uuidString.getter();
      v34 = v23;
      v31 = UUID.uuidString.getter();
      v32 = v24;
      v25 = type metadata accessor for Locale();
      v26 = v30;
      (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
      sub_10001F298();
      v20 = StringProtocol.compare<A>(_:options:range:locale:)();
      sub_10000BE18(v26, &unk_100848960, &unk_1006E8C30);
    }
  }

  v27 = *(v8 + 8);
  v27(v12, v7);
  v27(v14, v7);
  return v20 == -1;
}

void sub_100593FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(IDSPhoneCertificateVendor) initWithQueue:*(v4 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_workQueue)];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_100597CE0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001335C;
  v11[3] = &unk_100817AA8;
  v10 = _Block_copy(v11);

  [v7 generatePhoneAuthenticationSignatureOverData:isa withCompletion:v10];
  _Block_release(v10);
}

uint64_t sub_1005940F8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v41 - v14;
  v44 = 0;
  if (!a2)
  {
    if (a1)
    {
      v28 = [a1 inputData];
      if (v28)
      {
        v29 = v28;
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = [a1 authenticationCertificateSignatures];
        sub_10001F8D4(0, &unk_100848950, IDSAuthenticationCertificateSignature_ptr);
        v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = _swiftEmptyArrayStorage;
        sub_10000B8B8(v30, v32);
        sub_100596EFC(v34, &v44);
        sub_10000B90C(v30, v32);
        sub_10000B90C(v30, v32);

        goto LABEL_12;
      }
    }

    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "missing data from IDS call. returning nothing", v39, 2u);
    }

    v35 = *(v9 + 8);
    v36 = v13;
LABEL_11:
    v35(v36, v8);
    goto LABEL_12;
  }

  swift_errorRetain();
  defaultLogger()();
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    v35 = *(v9 + 8);
    v36 = v15;
    goto LABEL_11;
  }

  v18 = swift_slowAlloc();
  v42 = a3;
  v19 = v18;
  v20 = swift_slowAlloc();
  v41[1] = a4;
  v21 = v20;
  v43 = v20;
  *v19 = 136446210;
  v22 = _convertErrorToNSError(_:)();
  v23 = [v22 localizedDescription];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41[0] = v8;
  v26 = v25;

  v27 = sub_100141FE4(v24, v26, &v43);

  *(v19 + 4) = v27;
  _os_log_impl(&_mh_execute_header, v16, v17, "ignore error (%{public}s - retrieving IDS PAC payload", v19, 0xCu);
  sub_10000BB78(v21);

  a3 = v42;

  (*(v9 + 8))(v15, v41[0]);
LABEL_12:
  a3(v44);
}

uint64_t sub_1005944C8(void **a1, char **a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &object - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v28 = v2;
    v10 = *a1;
    v11 = Data.base64EncodedString(options:)(0);
    object = v11._object;
    countAndFlagsBits = v11._countAndFlagsBits;
    v12 = [v10 serverVerifiableEncoding];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1003C6978(0, *(v16 + 2) + 1, 1, v16);
      *a2 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1003C6978((v18 > 1), v19 + 1, 1, v16);
      *a2 = v16;
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[32 * v19];
    v21 = object;
    *(v20 + 4) = countAndFlagsBits;
    *(v20 + 5) = v21;
    *(v20 + 6) = v13;
    *(v20 + 7) = v15;
  }

  defaultLogger()();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "adding PAC", v24, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1005946FC()
{
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_seInfoQueue];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_100269F78;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_1008179E0;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_100594924(uint64_t a1)
{
  v52 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(type metadata accessor for DIPDeviceInfo.DIPNFHardwareMonitor()) init];
  v7 = objc_opt_self();
  v8 = [v7 sharedHardwareManager];
  [v8 registerEventListener:v6];

  v9 = [v7 sharedHardwareManager];
  v10 = [v9 getHwSupport];

  if ((v10 | 2) == 3)
  {
    sub_100595B2C();
    v11 = [v7 sharedHardwareManager];
    v10 = [v11 getHwSupport];
  }

  v12 = [v7 sharedHardwareManager];
  [v12 unregisterEventListener:v6];

  if (v10 != 2)
  {
    goto LABEL_27;
  }

  v13 = [v7 sharedHardwareManager];
  v55[0] = 0;
  v14 = [v13 secureElementsWithError:v55];

  v15 = v55[0];
  if (!v14)
  {
    v36 = v55[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error retrieving secure elements: %@", v39, 0xCu);
      sub_10000BE18(v40, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    goto LABEL_27;
  }

  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v15;

  v51 = v16;
  v18 = *(v16 + 16);
  if (!v18)
  {

LABEL_27:
    v19 = 0;
    v21 = _swiftEmptyArrayStorage;
    v35 = &_mh_execute_header;
    goto LABEL_28;
  }

  v19 = 0;
  v20 = v51 + 32;
  v21 = _swiftEmptyArrayStorage;
  v22 = 1;
  v53 = v6;
  do
  {
    sub_10001F2EC(v20, v55);
    sub_10001F8D4(0, &unk_100848940, NFSecureElement_ptr);
    if (swift_dynamicCast())
    {
      v23 = v54;
      v24 = [v54 serialNumber];
      if (v24)
      {
        v25 = v22;
        v26 = v24;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1003C5110(0, *(v21 + 2) + 1, 1, v21);
        }

        v32 = *(v21 + 2);
        v31 = *(v21 + 3);
        if (v32 >= v31 >> 1)
        {
          v21 = sub_1003C5110((v31 > 1), v32 + 1, 1, v21);
        }

        *(v21 + 2) = v32 + 1;
        v33 = &v21[16 * v32];
        *(v33 + 4) = v27;
        *(v33 + 5) = v29;
        v34 = [v23 hwType];

        if (v34)
        {
          v19 = v34;
        }

        else
        {
          v19 = v30;
        }

        v22 = (v34 == 0) & v25;
        v6 = v53;
      }

      else
      {
      }
    }

    v20 += 32;
    --v18;
  }

  while (v18);

  if (v22)
  {
    v35 = &_mh_execute_header;
  }

  else
  {
    v35 = 0;
  }

LABEL_28:
  v55[0] = v21;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_1000BA30C(&qword_100848930, &qword_100834EA0, &qword_1006C06B0);
  v42 = BidirectionalCollection<>.joined(separator:)();
  v44 = v43;

  v45 = v52 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo;
  v46 = *(v52 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo);
  v47 = *(v52 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__seInfo + 8);
  *v45 = v42;
  *(v45 + 8) = v44;
  v48 = *(v45 + 16);
  v45 += 16;
  v49 = *(v45 + 4);
  *v45 = v35 | v19;
  *(v45 + 4) = BYTE4(v35);
  return sub_10003477C(v46, v47);
}

uint64_t sub_100594FC8(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v74 = &v70 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v70 - v13;
  v15 = __chkstk_darwin(v12);
  v73 = &v70 - v16;
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  defaultLogger()();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = [v19 slotID];

    _os_log_impl(&_mh_execute_header, v20, v21, "DIPDeviceInfo: received delegate message for phoneNumberChanged, slot = %{public}ld", v22, 0xCu);
  }

  else
  {

    v20 = v19;
  }

  v75 = *(v8 + 8);
  v76 = v7;
  v75(v18, v7);
  v23 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctSubscriptionsInUse);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);

  os_unfair_lock_unlock((v23 + 24));
  v25 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v25 + 24));
  v26 = *(v25 + 16);

  os_unfair_lock_unlock((v25 + 24));
  if (!v24 || (v27 = sub_100595764(v19, v24), v29 = v28, , (v29 & 1) != 0) || (v27 & 0x8000000000000000) != 0 || !v26 || v27 >= *(v26 + 2))
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "DIPDeviceInfo: phoneNumberChanged on unknown context, reloading all", v32, 2u);
    }

    v75(v14, v76);
    sub_100592EB0();
LABEL_9:
    v33 = type metadata accessor for TaskPriority();
    v34 = v74;
    (*(*(v33 - 8) + 56))(v74, 1, 1, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    sub_1003E653C(0, 0, v34, &unk_1006E8C48, v35);
  }

  v71 = v27;
  v37 = *(v2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient);
  v77 = 0;
  v38 = [v37 getPhoneNumber:v19 error:&v77];
  if (v38)
  {
    v39 = v38;
    v40 = v77;
    v41 = [v39 number];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v73;
    defaultLogger()();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    v48 = os_log_type_enabled(v46, v47);
    v72 = v42;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v42;
      v52 = v39;
      v53 = v50;
      v77 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_100141FE4(v51, v44, &v77);
      _os_log_impl(&_mh_execute_header, v46, v47, "phoneNumberChanged to %s", v49, 0xCu);
      sub_10000BB78(v53);
      v39 = v52;

      v54 = v73;
    }

    else
    {

      v54 = v45;
    }

    v75(v54, v76);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10036E55C(v26);
    }

    if (v71 >= *(v26 + 2))
    {
      __break(1u);
    }

    v67 = &v26[16 * v71];
    v68 = *(v67 + 5);
    *(v67 + 4) = v72;
    *(v67 + 5) = v44;

    __chkstk_darwin(v69);
    *(&v70 - 2) = v26;
    os_unfair_lock_lock((v25 + 24));
    sub_100598C04((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));

    goto LABEL_9;
  }

  v55 = v77;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v56 = v72;
  defaultLogger()();
  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v77 = v60;
    *v59 = 136446210;
    v61 = _convertErrorToNSError(_:)();
    v62 = [v61 localizedDescription];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = sub_100141FE4(v63, v65, &v77);

    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v57, v58, "DIPDeviceInfo: phoneNumberChanged ignoring error getting new phone number, %{public}s", v59, 0xCu);
    sub_10000BB78(v60);
  }

  else
  {
  }

  return (v75)(v56, v76);
}

unint64_t sub_100595764(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100595890()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[5] = qword_100882578;
  v0[6] = v2;

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_100595998;

  return sub_1006802D4(2, v1, v2);
}

uint64_t sub_100595998()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100595B2C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "DIPNFHardwareMonitor: waiting 1s for notification", v12, 2u);
  }

  v13 = *(v3 + 8);
  v13(v9, v2);
  v14 = *(v1 + OBJC_IVAR____TtCC8coreidvd13DIPDeviceInfo20DIPNFHardwareMonitor_notified);
  OS_dispatch_semaphore.wait(interval:)();
  result = static DispatchTimeoutResult.== infix(_:_:)();
  if (result)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DIPDeviceInfo: timed out waiting for NFHardwareEventListener notification", v18, 2u);
    }

    return (v13)(v7, v2);
  }

  return result;
}

Swift::Int sub_100595D3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DIPNFHardwareMonitor: hardware state did change", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtCC8coreidvd13DIPDeviceInfo20DIPNFHardwareMonitor_notified);
  return OS_dispatch_semaphore.signal()();
}

id sub_100595F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPDeviceInfo.DIPNFHardwareMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100595F90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100595FC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100595FE0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1005960BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100596104(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100596118(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1003BD1FC(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_1005961B0(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void sub_1005961B0(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1005963D4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1005962D4(0, v5, 1, a1);
  }
}

void sub_1005962D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1005963D4(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003BC0AC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1003BC0AC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_100596AA0(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003BBEA4(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1003BBE18(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  v12 = sub_1003BBEA4(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_100596AA0(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1003BBEA4(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1003BBE18(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_100596AA0(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

void *sub_100596E68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1003BE178(v3, 0);
  sub_10031EBC8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100596EFC(unint64_t a1, char **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1005944C8(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100597000()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(AKAnisetteProvisioningController) init];
  v18 = 0;
  v6 = [v5 anisetteDataWithError:&v18];

  if (v6)
  {
    v7 = v18;
    v8 = [v6 machineID];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }
  }

  else
  {
    v11 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    defaultLogger()();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to get machine ID %@", v14, 0xCu);
      sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);
    }

    else
    {
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

void sub_1005972A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v47 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(v15 + 16);
  if (!v16)
  {

LABEL_11:
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no phone numbers available", v26, 2u);
    }

    (*(v7 + 8))(v11, v6);
    goto LABEL_14;
  }

  if ((a1 & 1) == 0)
  {
    v48 = a3;
    v27 = sub_10001F298();
    v47[1] = v15;
    v28 = (v15 + 40);
    v29 = _swiftEmptyArrayStorage;
    while (1)
    {
      v30 = *(v28 - 1);
      v31 = *v28;
      v53 = v30;
      v54 = v31;
      v51 = 48;
      v52 = 0xE100000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;

      v45 = v27;
      v46 = v27;
      v44[1] = v27;
      v44[0] = &type metadata for String;
      v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v34 = v33;
      v35 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v35 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35 || (v36 = v32, v53 = v30, v54 = v31, __chkstk_darwin(v32), v45 = &v53, (sub_10035C8E4(sub_1000F713C, v44, v29) & 1) != 0))
      {
      }

      else
      {

        v37 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v37 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1003C5110(0, *(v29 + 2) + 1, 1, v29);
          }

          v39 = *(v29 + 2);
          v38 = *(v29 + 3);
          if (v39 >= v38 >> 1)
          {
            v29 = sub_1003C5110((v38 > 1), v39 + 1, 1, v29);
          }

          *(v29 + 2) = v39 + 1;
          v40 = &v29[16 * v39];
          *(v40 + 4) = v30;
          *(v40 + 5) = v31;
          goto LABEL_18;
        }
      }

LABEL_18:
      v28 += 2;
      if (!--v16)
      {

        sub_1005A0174(v29, v48);

        return;
      }
    }
  }

  v17 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
  os_unfair_lock_lock((v17 + 32));
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);

  os_unfair_lock_unlock((v17 + 32));
  if (!v18)
  {
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "no default voice numbers available", v43, 2u);
    }

    (*(v7 + 8))(v13, v6);
LABEL_14:
    dispatch_group_leave(*(a3 + 16));
    return;
  }

  v20 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1003C5110((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[16 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v18;
  sub_1005A0174(v20, a3);
}

void sub_100597774(char a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctPhoneNumbers);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);

  os_unfair_lock_unlock((v16 + 24));
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {

LABEL_11:
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "no phone numbers available", v31, 2u);
    }

    (*(v9 + 8))(v13, v8);
    v32 = a4;
    goto LABEL_14;
  }

  v57 = a3;
  v58 = a4;
  if (a1)
  {

    v19 = *(a2 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo__ctDefaultVoiceNumber);
    os_unfair_lock_lock((v19 + 32));
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);

    os_unfair_lock_unlock((v19 + 32));
    if (v21)
    {
      v22 = sub_1003C5110(0, 1, 1, _swiftEmptyArrayStorage);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1003C5110((v23 > 1), v24 + 1, 1, v22);
      }

      v25 = v57;
      *(v22 + 2) = v24 + 1;
      v26 = &v22[16 * v24 + 32];
      *v26 = v20;
      *(v26 + 1) = v21;
      v27 = *(v22 + 5);
      v28 = v25[1];
      *v25 = *(v22 + 4);
      v25[1] = v27;

      dispatch_group_leave(v58);

      return;
    }

    defaultLogger()();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "no default voice numbers available", v52, 2u);
    }

    (*(v9 + 8))(v15, v8);
    v32 = v58;
LABEL_14:
    dispatch_group_leave(v32);
    return;
  }

  v33 = sub_10001F298();
  v56 = v17;
  v34 = (v17 + 40);
  v35 = _swiftEmptyArrayStorage;
  do
  {
    v36 = *(v34 - 1);
    v37 = *v34;
    v63 = v36;
    v64 = v37;
    v61 = 48;
    v62 = 0xE100000000000000;
    v59 = 0;
    v60 = 0xE000000000000000;

    v54 = v33;
    v55 = v33;
    v53[1] = v33;
    v53[0] = &type metadata for String;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v40 = v39;
    v41 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v41 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41 || (v42 = v38, v63 = v36, v64 = v37, __chkstk_darwin(v38), v54 = &v63, (sub_10035C8E4(sub_1000307C0, v53, v35) & 1) != 0))
    {

LABEL_17:

      goto LABEL_18;
    }

    v43 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1003C5110(0, *(v35 + 2) + 1, 1, v35);
    }

    v45 = *(v35 + 2);
    v44 = *(v35 + 3);
    if (v45 >= v44 >> 1)
    {
      v35 = sub_1003C5110((v44 > 1), v45 + 1, 1, v35);
    }

    *(v35 + 2) = v45 + 1;
    v46 = &v35[16 * v45];
    *(v46 + 4) = v36;
    *(v46 + 5) = v37;
LABEL_18:
    v34 += 2;
    --v18;
  }

  while (v18);

  if (*(v35 + 2))
  {
    v47 = *(v35 + 5);
    v48 = v57;
    v49 = v57[1];
    *v57 = *(v35 + 4);
    v48[1] = v47;
  }

  dispatch_group_leave(v58);
}

uint64_t sub_100597CA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100597CE8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = type metadata accessor for UUID();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC8coreidvd13DIPDeviceInfo_ctClient);
  v69 = 0;
  v17 = [v16 getUserDefaultVoiceSubscriptionContext:&v69];
  if (!v17)
  {
    v45 = v69;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_27:
    defaultLogger()();
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v4;
      v55 = v9;
      v56 = v54;
      v69 = v54;
      *v53 = 136315138;
      swift_getErrorValue();
      v57 = Error.localizedDescription.getter();
      v59 = sub_100141FE4(v57, v58, &v69);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, "error retrieving ICCID: %s", v53, 0xCu);
      sub_10000BB78(v56);

      (*(v5 + 8))(v55, v63);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    dispatch_group_leave(a2[2]);
    return;
  }

  v18 = v17;
  v19 = v69;
  v20 = [v18 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = 0;
  v21 = [v16 getSubscriptionInfoWithError:&v69];
  if (!v21)
  {
    v46 = v69;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v64 + 8))(v15, v65);
    goto LABEL_27;
  }

  v22 = v21;
  v23 = v69;
  v24 = [v22 subscriptionsInUse];

  if (v24)
  {
    v60 = v9;
    sub_10001F8D4(0, &qword_1008410B8, CTXPCServiceSubscriptionContext_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v25);
    *(&v60 - 2) = v15;

    v69 = sub_100596E68(v26);
    sub_100596118(sub_100598B00, (&v60 - 4));
    v61 = v5;
    v62 = a2;

    v27 = v69;
    if ((v69 & 0x8000000000000000) != 0 || (v69 & 0x4000000000000000) != 0)
    {
      goto LABEL_33;
    }

    for (i = *(v69 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v63 = v4;
      v29 = 0;
      v67 = v16;
      v68 = v27 & 0xC000000000000001;
      v30 = _swiftEmptyArrayStorage;
      v66 = v27;
      while (1)
      {
        if (v68)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_32;
          }

          v31 = *(v27 + 8 * v29 + 32);
        }

        v32 = v31;
        v16 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v69 = 0;
        v33 = [v67 copySIMIdentity:v31 error:&v69];
        v34 = v69;
        if (!v33)
        {
          v50 = v69;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          (*(v64 + 8))(v15, v65);
          a2 = v62;
          v4 = v63;
          v9 = v60;
          v5 = v61;
          goto LABEL_27;
        }

        v35 = v33;
        v36 = i;
        v37 = v15;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        v41 = v34;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1003C5110(0, *(v30 + 2) + 1, 1, v30);
        }

        v4 = *(v30 + 2);
        v42 = *(v30 + 3);
        if (v4 >= v42 >> 1)
        {
          v30 = sub_1003C5110((v42 > 1), v4 + 1, 1, v30);
        }

        *(v30 + 2) = v4 + 1;
        v43 = &v30[16 * v4];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        ++v29;
        i = v36;
        v44 = v16 == v36;
        v15 = v37;
        v27 = v66;
        if (v44)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_35:

    sub_10059FC0C(v30, v62);
  }

  else
  {
    defaultLogger()();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No CT Subscriptions in use", v49, 2u);
    }

    (*(v5 + 8))(v11, v4);
    dispatch_group_leave(a2[2]);
  }

  (*(v64 + 8))(v15, v65);
}

uint64_t sub_1005983FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = objc_allocWithZone(LSApplicationRecord);

  v15 = sub_100595FE0(a1, a2, 0);
  if (!v15)
  {
    defaultLogger()();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a1;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v45[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100141FE4(v18, a2, v45);
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not find app for bundle ID %s", v19, 0xCu);
      sub_10000BB78(v20);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  v40 = a1;
  v41 = v13;
  v42 = v6;
  v43 = v15;
  v44 = [v15 entitlements];
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;

  v26 = 0;
  if (!v23)
  {
    while (1)
    {
LABEL_10:
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return result;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(a3 + 56 + 8 * v27);
      ++v26;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    v33 = v41;
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v45[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100141FE4(v40, a2, v45);
      _os_log_impl(&_mh_execute_header, v34, v35, "App with bundle ID %s does not have any matching entitlements", v36, 0xCu);
      sub_10000BB78(v37);

      v38 = v44;
    }

    else
    {

      v38 = v43;
    }

    (*(v7 + 8))(v33, v42);
    return 0;
  }

  while (1)
  {
    v27 = v26;
LABEL_13:
    v28 = (*(a3 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v23)))));
    v29 = *v28;
    v30 = v28[1];

    v31 = String._bridgeToObjectiveC()();

    sub_10001F8D4(0, &qword_10083AA78, NSObject_ptr);
    v32 = [v44 objectForKey:v31 ofClass:swift_getObjCClassFromMetadata()];

    if (v32)
    {
      break;
    }

    v23 &= v23 - 1;
    memset(v45, 0, 32);
    result = sub_10000BE18(v45, &unk_100845ED0, &qword_1006DA1D0);
    v26 = v27;
    if (!v23)
    {
      goto LABEL_10;
    }
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  sub_10000BE18(v45, &unk_100845ED0, &qword_1006DA1D0);
  return 1;
}

uint64_t sub_1005988AC(uint64_t a1)
{
  v17 = [objc_opt_self() enumeratorWithOptions:0];
  v2 = [v17 nextObject];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = [v3 entitlements];
      v5 = 1 << *(a1 + 32);
      v6 = v5 < 64 ? ~(-1 << v5) : -1;
      v7 = v6 & *(a1 + 56);
      v8 = (v5 + 63) >> 6;

      v10 = 0;
      if (v7)
      {
        break;
      }

      while (1)
      {
LABEL_9:
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v11 >= v8)
        {
          break;
        }

        v7 = *(a1 + 56 + 8 * v11);
        ++v10;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      v3 = [v17 nextObject];
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v11 = v10;
LABEL_12:
      v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v12;
      v14 = v12[1];

      v15 = String._bridgeToObjectiveC()();

      sub_10001F8D4(0, &qword_10083AA78, NSObject_ptr);
      v16 = [v4 objectForKey:v15 ofClass:swift_getObjCClassFromMetadata()];

      if (v16)
      {
        break;
      }

      v7 &= v7 - 1;
      memset(v18, 0, sizeof(v18));
      result = sub_10000BE18(v18, &unk_100845ED0, &qword_1006DA1D0);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    sub_10000BE18(v18, &unk_100845ED0, &qword_1006DA1D0);
    return 1;
  }

  else
  {
LABEL_15:

    return 0;
  }
}

uint64_t sub_100598B20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100598B58()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100595874();
}

uint64_t sub_100598C34(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

CLLocationAccuracy sub_100598CD8()
{
  result = kCLLocationAccuracyHundredMeters * 3.0;
  *&qword_1008823E8 = kCLLocationAccuracyHundredMeters * 3.0;
  return result;
}

CLLocationAccuracy sub_100598CF8()
{
  result = kCLLocationAccuracyHundredMeters;
  qword_1008823F0 = *&kCLLocationAccuracyHundredMeters;
  return result;
}

id sub_100598D70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager] = 0;
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location] = 0;
  v12 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v17[1] = "ionManager";
  v17[2] = v12;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10059AEDC(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10001F484(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus] = 0;
  v13 = type metadata accessor for DIPLocationHelper();
  v22.receiver = v3;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, "init");
  v15 = v21;
  sub_100599050(v19, v20, v21);

  return v14;
}

uint64_t sub_100599050(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 | a3)
  {
    v16 = *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
    v17 = swift_allocObject();
    v17[2] = v3;
    v17[3] = a3;
    v17[4] = a1;
    v17[5] = a2;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10059AFE8;
    *(v18 + 24) = v17;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_100817D00;
    v19 = _Block_copy(aBlock);

    v20 = v3;
    v21 = a3;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "skipping init as no effective bundles provided", v14, 2u);
    }

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1005992DC(char *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  if (!*&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager])
  {
    v37 = v11;
    if (a2)
    {
      v15 = [a2 bundlePath];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      if (a4)
      {
        v16 = a3;
      }

      else
      {
        v16 = 0;
      }

      if (a4)
      {
        v17 = a4;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      v38 = 0xD000000000000020;
      v39 = 0x8000000100722B80;

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      String.append(_:)(v18);
    }

    v19 = *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
    v20 = objc_allocWithZone(CLLocationManager);
    v21 = v19;
    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 initWithEffectiveBundlePath:v22 delegate:a1 onQueue:v21];

    if (v23)
    {
      v24 = v23;
      if ([v24 locationServicesAvailable])
      {
        [v24 requestWhenInUseAuthorization];
        if (qword_100832CD0 != -1)
        {
          swift_once();
        }

        [v24 setDistanceFilter:*&qword_1008823F0];
        if (qword_100832CC8 != -1)
        {
          swift_once();
        }

        [v24 setDesiredAccuracy:*&qword_1008823E8];
        v25 = objc_opt_self();
        v26 = String._bridgeToObjectiveC()();

        v27 = [v25 authorizationStatusForBundlePath:v26];

        v28 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus;
        *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus] = v27;
        defaultLogger()();
        v29 = a1;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v29;
          v34 = v32;
          *v32 = 67240192;
          *(v32 + 1) = *&a1[v28];

          _os_log_impl(&_mh_execute_header, v30, v31, "init Authorization status is %{public}d", v34, 8u);
        }

        else
        {

          v30 = v29;
        }

        (*(v9 + 8))(v13, v37);
        [v24 requestLocation];

        goto LABEL_23;
      }
    }

LABEL_23:
    v35 = *&a1[v14];
    *&a1[v14] = v23;
  }
}

id sub_10059968C()
{
  v1 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  v2 = *&v0[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager];
  if (!v2)
  {
    goto LABEL_9;
  }

  [v2 setDelegate:0];
  if ([objc_opt_self() isMainThread])
  {
    v3 = *&v0[v1];
    if (v3)
    {
      [v3 stopUpdatingLocation];
      v4 = *&v0[v1];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v1] = 0;

    v2 = 0;
    goto LABEL_9;
  }

  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v5 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10059B600;
  *(v7 + 24) = v6;
  v12[4] = sub_10026CBB8;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10057E264;
  v12[3] = &unk_100817D78;
  v8 = _Block_copy(v12);
  v9 = v0;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    v2 = sub_10059B600;
LABEL_9:
    sub_10001FE8C(v2);
    v11 = type metadata accessor for DIPLocationHelper();
    v13.receiver = v0;
    v13.super_class = v11;
    return objc_msgSendSuper2(&v13, "dealloc");
  }

  __break(1u);
  return result;
}

uint64_t sub_10059994C(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&a1[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location];
  if (!v20)
  {
    goto LABEL_3;
  }

  v21 = v20;
  v41 = v11;
  v22 = v10;
  v23 = a1;
  v24 = v3;
  v25 = v2;
  v26 = v21;
  v27 = [v21 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  v29 = v28;

  v2 = v25;
  v3 = v24;
  a1 = v23;
  v10 = v22;
  v11 = v41;
  result = (*(v16 + 8))(v19, v15);
  if (v29 <= -600.0)
  {
LABEL_3:
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "requesting location", v33, 2u);
    }

    (*(v11 + 8))(v14, v10);
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v34 = static OS_dispatch_queue.main.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = a1;
    aBlock[4] = sub_10059AF84;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100503A7C;
    aBlock[3] = &unk_100817C88;
    v36 = _Block_copy(aBlock);
    v37 = a1;

    v38 = v42;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007224(&qword_100848A40, &unk_1006BF8C0);
    sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
    v39 = v45;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v3 + 8))(v39, v2);
    return (*(v44 + 8))(v38, v43);
  }

  return result;
}

uint64_t sub_100599E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_10059A12C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager);
  if (v1)
  {
    v2 = v1;
    sub_10059ABA4(v2);
  }
}

id sub_10059A17C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "stop updating location", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return [a1 stopUpdatingLocation];
}

uint64_t sub_10059A2CC()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_serviceQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10059AF5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10021E8E8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_100817B98;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_10059A430(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  defaultLogger()();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "attempting to get location", v17, 2u);
  }

  v18 = *(v5 + 8);
  v18(v14, v4);
  if ((*(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus) - 3) >= 2)
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No location authorization, returning nothing", v28, 2u);
    }

    v18(v12, v4);
  }

  else
  {
    v19 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location;
    if (*(a1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location))
    {
      defaultLogger()();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "got location update from delegate", v22, 2u);
      }

      v18(v9, v4);
    }

    v23 = *(a1 + v19);
    v24 = *a2;
    *a2 = v23;
    v25 = v23;
  }
}

unint64_t sub_10059A714(void *a1, unint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Got a location update", v15, 2u);
  }

  v16 = *(v6 + 8);
  v16(v12, v5);
  defaultLogger()();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    sub_10001F8D4(0, &qword_100848A38, CLLocation_ptr);
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v19 + 4) = v21;
    v20->super.isa = v21.super.isa;
    _os_log_impl(&_mh_execute_header, v17, v18, "locations %@", v19, 0xCu);
    sub_1004385F4(v20);
  }

  v16(v10, v5);
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_7:
    if (__OFSUB__(result--, 1))
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v24 = *(a2 + 8 * result + 32);
LABEL_12:
        v25 = *(v3 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location);
        *(v3 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location) = v24;

        return sub_10059ABA4(v27);
      }

      __break(1u);
      return result;
    }

    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10059ABA4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_10059AEBC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = &unk_100817B20;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10059AEDC(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_10001F484(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v15);
}

uint64_t sub_10059AE84()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10059AEC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10059AEDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059AF24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059AFA0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10059AFF4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update location %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v3 + 8))(v6, v2);
  return sub_10059ABA4(a1);
}

uint64_t sub_10059B1CC(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - v14;
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  defaultLogger()();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40 = v12;
    *v20 = 67240192;
    *(v20 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v18, v19, "Authorization changed. new status %{public}d", v20, 8u);
    v12 = v40;
  }

  v21 = *(v5 + 8);
  v40 = v4;
  v21(v17, v4);
  v22 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus;
  *(v2 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_authorizationStatus) = a1;
  v23 = *(v2 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_location);
  if (v23)
  {
    v24 = v23;
    defaultLogger()();
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v23;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "Location information is already known %@. Will not request again.", v28, 0xCu);
      sub_1004385F4(v29);
    }

    else
    {
      v30 = v26;
      v26 = v25;
    }

    return (v21)(v15, v40);
  }

  else
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Location information doesn't exist. Will attempt to make a single location request based on the authorizationStatus", v33, 2u);
    }

    v34 = v40;
    result = (v21)(v12, v40);
    if ((*(v2 + v22) - 3) <= 1)
    {
      defaultLogger()();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Making a single location request", v38, 2u);
      }

      v21(v9, v34);
      return sub_100599924();
    }
  }

  return result;
}

void sub_10059B600()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager;
  [*(v1 + OBJC_IVAR____TtC8coreidvd17DIPLocationHelper_locationManager) stopUpdatingLocation];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;
}

uint64_t sub_10059B698(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v115 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v102 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v102 - v17;
  __chkstk_darwin(v16);
  v114 = &v102 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v116 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    defaultLogger()();

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v121 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_100141FE4(v115, a2, &v121);
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to override URLResponse Header: '%s' override value is empty.", v66, 0xCu);
      sub_10000BB78(v67);
    }

    (*(v8 + 8))(v12, v7);
    return 0;
  }

  v112 = v23;
  v113 = a2;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    defaultLogger()();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failed to override URLResponse Header: URLResponse could not be downcasted to HTTPURLResponse.", v90, 2u);
    }

    (*(v8 + 8))(v15, v7);
    return 0;
  }

  v27 = v26;
  v28 = v4;
  v29 = [v27 URL];
  if (!v29)
  {
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to override URLResponse Header: URLResponse doesn't have a valid URL. Aborting override", v93, 2u);
    }

    else
    {
    }

    (*(v8 + 8))(v18, v7);
    return 0;
  }

  v104 = a4;
  v106 = v28;
  v107 = v21;
  v108 = v20;
  v110 = v7;
  v109 = v8;
  v30 = v29;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v105 = v27;
  v31 = [v27 allHeaderFields];
  v32 = &type metadata for AnyHashable;
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v33 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v111 = &_swiftEmptyDictionarySingleton;
LABEL_10:
  v39 = v38;
  if (!v36)
  {
    goto LABEL_12;
  }

  do
  {
    v38 = v39;
LABEL_15:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = v40 | (v38 << 6);
    sub_100040520(*(v33 + 48) + 40 * v41, &v121);
    sub_10001F2EC(*(v33 + 56) + 32 * v41, &v123);
    sub_10059C178(&v121, v119);
    if (!swift_dynamicCast())
    {
      sub_10059C1E8(&v121);
      sub_10000BB78(v120);
      goto LABEL_10;
    }

    v42 = v32;
    v44 = v117;
    v43 = v118;
    sub_10000BB78(v120);
    sub_10059C178(&v121, v119);
    if (swift_dynamicCast())
    {
      v45 = v118;
      v103 = v117;
      sub_1000279C8(v119);
      v46 = v111;
      LODWORD(v102) = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v46;
      v48 = sub_10003ADCC(v44, v43);
      v49 = v46[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
LABEL_49:
        __break(1u);
      }

      else
      {
        if (v46[3] >= v51)
        {
          if ((v102 & 1) == 0)
          {
            v102 = v48;
            LODWORD(v111) = v47;
            sub_10016F53C();
            LOBYTE(v47) = v111;
            v48 = v102;
          }
        }

        else
        {
          LODWORD(v111) = v47;
          sub_100165FC0(v51, v102);
          v52 = sub_10003ADCC(v44, v43);
          v53 = v47 & 1;
          LOBYTE(v47) = v111;
          if ((v111 & 1) != v53)
          {
LABEL_51:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v48 = v52;
        }

        if (v47)
        {
          v54 = v48;

          v111 = v119[0];
          v55 = (*(v119[0] + 56) + 16 * v54);
          v56 = v55[1];
          *v55 = v103;
          v55[1] = v45;

          sub_10059C1E8(&v121);
LABEL_29:
          v32 = v42;
          goto LABEL_10;
        }

        v57 = v45;
        v58 = v119[0];
        *(v119[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
        v59 = (v58[6] + 16 * v48);
        *v59 = v44;
        v59[1] = v43;
        v60 = (v58[7] + 16 * v48);
        *v60 = v103;
        v60[1] = v57;
        sub_10059C1E8(&v121);
        v61 = v58[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (!v62)
        {
          v111 = v58;
          v58[2] = v63;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    sub_10059C1E8(&v121);

    sub_1000279C8(v119);
    v39 = v38;
    v32 = v42;
  }

  while (v36);
  while (1)
  {
LABEL_12:
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v38 >= v37)
    {
      break;
    }

    v36 = *(v33 + 64 + 8 * v38);
    ++v39;
    if (v36)
    {
      goto LABEL_15;
    }
  }

  v68 = v113;

  v69 = v104;

  v70 = v111;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v70;
  v72 = v112;
  v73 = v115;
  sub_10016CAB8(v112, v69, v115, v68, isUniquelyReferenced_nonNull_native);

  v74 = [v105 statusCode];
  v75 = objc_allocWithZone(NSHTTPURLResponse);
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v80 = [v75 initWithURL:v78 statusCode:v74 HTTPVersion:0 headerFields:isa];

  v81 = v80;
  if (v80)
  {
    v121 = 0;
    v122 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v121 = 0xD00000000000001ELL;
    v122 = 0x8000000100722C10;
    v82._countAndFlagsBits = v73;
    v82._object = v68;
    String.append(_:)(v82);
    v83._countAndFlagsBits = 0x206874697720;
    v83._object = 0xE600000000000000;
    String.append(_:)(v83);
    v84._countAndFlagsBits = v72;
    v84._object = v69;
    String.append(_:)(v84);
    v85._countAndFlagsBits = 46;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v87 = v121;
    v86 = v122;
  }

  else
  {
    v86 = 0x8000000100722BB0;
    v87 = 0xD00000000000005BLL;
  }

  v94 = v110;
  v95 = v114;
  defaultLogger()();

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v121 = v99;
    *v98 = 136315138;
    v100 = sub_100141FE4(v87, v86, &v121);

    *(v98 + 4) = v100;
    _os_log_impl(&_mh_execute_header, v96, v97, "%s", v98, 0xCu);
    sub_10000BB78(v99);
  }

  else
  {
  }

  (*(v109 + 8))(v95, v94);
  (*(v107 + 8))(v116, v108);
  return v81;
}

uint64_t sub_10059C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100848A48, &unk_1006E9420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C1E8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100848A48, &unk_1006E9420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10059C250(uint64_t a1, unint64_t a2)
{
  v52 = a2;
  v55 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SHA256();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[4];
  sub_10000BA08(v2, v2[3]);
  v16 = v61;
  v17 = dispatch thunk of DIPAccountManagerProtocol.primaryiCloudAccountAltDSID()();
  if (!v16)
  {
    v46 = v17;
    v47 = v10;
    v61 = v18;
    v19 = v52;
    v48 = v7;
    v49 = 0;
    v20 = v2[5];
    v21 = sub_100592810();
    if (v22 == 1)
    {
      sub_1005946FC();
    }

    else
    {
      sub_10003477C(v21, v22);
    }

    v23 = v14;
    v24 = v6;
    v25 = sub_100592810();
    v27 = v54;
    v28 = v53;
    if (v26 >= 2)
    {
      v57 = v55;
      v58 = v19;
      v30 = v25;
      v31 = v26;

      v32._countAndFlagsBits = 124;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = v23;

      v34._countAndFlagsBits = v46;
      v34._object = v61;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 124;
      v35._object = 0xE100000000000000;
      String.append(_:)(v35);

      v36._countAndFlagsBits = v30;
      v36._object = v31;
      String.append(_:)(v36);
      sub_10003477C(v30, v31);

      v37 = sub_100343B88(v57, v58);
      v39 = v38;
      sub_10059D230(&qword_1008336E0, &type metadata accessor for SHA256);
      v41 = v47;
      v40 = v48;
      dispatch thunk of HashFunction.init()();
      sub_10000B8B8(v37, v39);
      sub_10037939C(v37, v39);
      sub_10000B90C(v37, v39);
      dispatch thunk of HashFunction.finalize()();
      sub_10000B90C(v37, v39);
      (*(v50 + 8))(v41, v40);
      v59 = v11;
      v60 = sub_10059D230(&qword_100841E10, &type metadata accessor for SHA256Digest);
      v42 = sub_100032DBC(&v57);
      v43 = v33;
      v44 = v51;
      (*(v51 + 16))(v42, v43, v11);
      sub_10000BA08(&v57, v59);
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      (*(v44 + 8))(v43, v11);
      v15 = v56;
      sub_10000BB78(&v57);
    }

    else
    {

      (*(v28 + 104))(v24, enum case for DIPError.Code.documentReaderUnableToGetSEID(_:), v27);
      v15 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10059D230(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v15;
}

uint64_t sub_10059C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10059C92C, 0, 0);
}

uint64_t sub_10059C92C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v0[16] = v5;
  v0[17] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_10059C250(v5, v7);
  v0[18] = v8;
  v0[19] = v9;
  v10 = v8;
  v11 = v9;
  v12 = v0[12];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Getting FairPlay provisioning info", v15, 2u);
  }

  v16 = v0[12];
  v17 = v0[8];
  v18 = v0[9];

  v19 = *(v18 + 8);
  v0[20] = v19;
  v19(v16, v17);
  v20 = async function pointer to static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)[1];
  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_10059CCB4;
  v22 = v0[5];
  v23 = v0[6];
  v25 = v0[3];
  v24 = v0[4];

  return static FairPlayPassbookProvisioning.getProvisioningInfo(auditToken:nonce:)(v25, v24, v22, v23, v10, v11);
}

uint64_t sub_10059CCB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v9 = sub_10059CF18;
  }

  else
  {
    *(v6 + 184) = a2;
    *(v6 + 192) = a1;
    v9 = sub_10059CDE8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10059CDE8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v19 = v0[17];
  v6 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  defaultLogger()();
  v9 = swift_task_alloc();
  v9[2] = v1;
  v9[3] = v2;
  v9[4] = v5;
  v9[5] = v3;
  Logger.cryptoParam(_:)();
  sub_10000B90C(v5, v3);

  v4(v6, v8);
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[15];
  v13 = v0[16];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];

  v17 = v0[1];

  return v17(v10, v11, v13, v19);
}

uint64_t sub_10059CF18()
{
  v24 = v0;
  sub_10000B90C(v0[18], v0[19]);
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[10];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v22 = v0[10];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[2] = v1;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to get FairPlay provisioning info (app likely does not come from App Store, TestFlight or third party marketplace): %s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[10];

  v20 = v0[1];

  return v20(0, 0, 0, 0);
}

unint64_t sub_10059D140()
{
  _StringGuts.grow(_:)(30);

  v0 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D65636E6F6E203BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  v2 = Data.base64EncodedString(options:)(0);
  String.append(_:)(v2);

  return 0xD000000000000012;
}

unint64_t sub_10059D224()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_10059D140();
}

uint64_t sub_10059D230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059D288(uint64_t a1)
{
  v2 = type metadata accessor for NWInterface.InterfaceType();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100834140, &qword_1006DC180);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for NWPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059D7B4(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v16 = 0x726568744FLL;
    sub_1002C8738(v10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = v3[13];
    v17(v6, enum case for NWInterface.InterfaceType.wifi(_:), v2);
    v18 = NWPath.usesInterfaceType(_:)();
    v19 = v3[1];
    v19(v6, v2);
    if (v18)
    {
      (*(v12 + 8))(v15, v11);
      return 1768319319;
    }

    else
    {
      v17(v6, enum case for NWInterface.InterfaceType.cellular(_:), v2);
      v20 = NWPath.usesInterfaceType(_:)();
      v19(v6, v2);
      if (v20)
      {
        (*(v12 + 8))(v15, v11);
        return 0x72616C756C6C6543;
      }

      else
      {
        v17(v6, enum case for NWInterface.InterfaceType.wiredEthernet(_:), v2);
        v22 = NWPath.usesInterfaceType(_:)();
        v19(v6, v2);
        (*(v12 + 8))(v15, v11);
        if (v22)
        {
          return 0x6465726957;
        }

        else
        {
          return 0x726568744FLL;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10059D5E0(uint64_t a1)
{
  v2 = sub_100007224(&unk_100834140, &qword_1006DC180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for NWPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059D7B4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1002C8738(v5);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (NWPath.isExpensive.getter())
    {
      v11 = 0x7669736E65707845;
    }

    else
    {
      v11 = 0x736E657078656E49;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t sub_10059D7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100834140, &qword_1006DC180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059D824()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_10059D8A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10059D8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10059D940(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10059DA0C, 0, 0);
}

uint64_t sub_10059DA0C()
{
  v1 = *(v0 + 16);
  v2 = IdentityProofingConfiguration.proofingErrorMessage.getter();
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = IdentityProofingConfiguration.state.getter();
    *(v0 + 72) = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = *(v0 + 16);
      v9 = IdentityProofingConfiguration.country.getter();
      *(v0 + 80) = v10;
      if (v10)
      {
        v11 = v9;
        v12 = v10;
        v13 = swift_task_alloc();
        *(v0 + 88) = v13;
        *v13 = v0;
        v13[1] = sub_10059DC10;
        v14 = *(v0 + 24);

        return sub_10059DF4C(v3, v6, v7, v11, v12);
      }
    }

    v17 = *(v0 + 48);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "IdentityProofingFlow Configuration has a proofing error message, but no state / country associated", v20, 2u);
    }

    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = *(v0 + 32);
    v24 = *(v0 + 16);

    (*(v22 + 8))(v21, v23);
    v25 = v24;
    v16 = *(v0 + 16);
  }

  else
  {
    v16 = *(v0 + 16);
  }

  v27 = *(v0 + 48);
  v26 = *(v0 + 56);

  v28 = *(v0 + 8);

  return v28(v16);
}

uint64_t sub_10059DC10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v9 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_10059DEBC;
  }

  else
  {
    v7 = v3[9];
    v6 = v3[10];

    v5 = sub_10059DD34;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10059DD34()
{
  v1 = v0[12];
  v2 = v0[7];
  defaultLogger()();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v4, v5, "IdentityProofingFlow Mapping text replacement for proofing error message:\n %@", v8, 0xCu);
    sub_1004385F4(v9);
  }

  v11 = v0[12];
  v12 = v0[8];
  v13 = v0[2];
  (*(v0[5] + 8))(v0[7], v0[4]);
  v14 = v11;
  v15 = IdentityProofingConfiguration.withProofingErrorMessage(_:)();

  v17 = v0[6];
  v16 = v0[7];

  v18 = v0[1];

  return v18(v15);
}

uint64_t sub_10059DEBC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[13];

  return v6();
}

uint64_t sub_10059DF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v11 = type metadata accessor for Logger();
  v6[8] = v11;
  v12 = *(v11 - 8);
  v6[9] = v12;
  v13 = *(v12 + 64) + 15;
  v6[10] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[11] = v14;
  *v14 = v6;
  v14[1] = sub_10059E070;

  return sub_10059E71C(a2, a3, a4, a5);
}

uint64_t sub_10059E070(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 80);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 104) = a1;

    return _swift_task_switch(sub_10059E1C8, 0, 0);
  }
}

uint64_t sub_10059E1C8()
{
  v1 = *sub_10000BA08(*(v0 + 56), *(*(v0 + 56) + 24));
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_10059E274;
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1002C6CDC(v7, v6, v4, v5, v3);
}

uint64_t sub_10059E274(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10059E374, 0, 0);
}

uint64_t sub_10059E374()
{
  v37 = v0;
  v1 = v0;
  v2 = v0[2];
  v3 = IdentityProofingPrecursorPassMessage.actions.getter();
  if (v3)
  {
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v8 = v1;
      v9 = v1[12];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_17;
          }

          v10 = *(v4 + 8 * v7 + 32);
        }

        v11 = v10;
        v1 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = v8[15];
        v35 = v10;
        sub_10059ED74(&v35, v12, &v36);

        if (v36)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        ++v7;
        if (v1 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v8 = v1;
LABEL_20:

    v1 = v8;
  }

  v13 = v1[2];
  IdentityProofingPrecursorPassMessage.title.getter();
  if (v14)
  {
    if (!v1[15])
    {
      v17 = v1[2];

      IdentityProofingPrecursorPassMessage.message.getter();
      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
  }

  v15 = v1[2];
  IdentityProofingPrecursorPassMessage.message.getter();
  if (!v16)
  {
    goto LABEL_29;
  }

  if (v1[15])
  {
    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();

    goto LABEL_29;
  }

LABEL_28:

LABEL_29:
  v19 = v1[10];
  v20 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessage());
  v21 = IdentityProofingPrecursorPassMessage.init(title:message:actions:)();
  defaultLogger()();
  v22 = v21;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "IdentityProofingFlow Mapping text replacement for proofing error message:\n %@", v25, 0xCu);
    sub_1004385F4(v26);
  }

  v28 = v1[15];
  v30 = v1[9];
  v29 = v1[10];
  v31 = v1[8];

  (*(v30 + 8))(v29, v31);

  v32 = v1[1];

  return v32(v22);
}

uint64_t sub_10059E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  v5 = type metadata accessor for Logger();
  v4[32] = v5;
  v6 = *(v5 - 8);
  v4[33] = v6;
  v7 = *(v6 + 64) + 15;
  v4[34] = swift_task_alloc();

  return _swift_task_switch(sub_10059E7E0, 0, 0);
}

uint64_t sub_10059E7E0()
{
  v34 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = sub_1005127B4();
  if (v5 <= 3)
  {
    if (v5 - 2 >= 2)
    {
      v6 = v5 == 0;
LABEL_11:
      v8 = v0[34];
      defaultLogger()();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[33];
      v13 = v0[34];
      v14 = v0[32];
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136315138;
        v17 = IdentityDocumentType.description.getter();
        v19 = sub_100141FE4(v17, v18, &v33);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "IdentityProofingFlow got ID type: %s from existing pass", v15, 0xCu);
        sub_10000BB78(v16);

        (*(v12 + 8))(v13, v14);
      }

      else
      {

        (*(v12 + 8))(v13, v14);
      }

      v20 = v0[34];

      v21 = v0[1];

      return v21(v6);
    }

LABEL_7:
    v6 = 2;
    goto LABEL_11;
  }

  if (v5 == 4)
  {
    goto LABEL_7;
  }

  if (v5 == 5)
  {
    v6 = 3;
    goto LABEL_11;
  }

  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v7 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v7 + 54);
  sub_1000318FC(&v7[4], (v0 + 2));
  os_unfair_lock_unlock(v7 + 54);
  v24 = v0[30];
  v23 = v0[31];
  v26 = v0[28];
  v25 = v0[29];
  v27 = v0[9];
  v0[35] = v27;

  sub_100031918((v0 + 2));
  v28 = swift_allocObject();
  v0[36] = v28;
  v28[2] = v26;
  v28[3] = v25;
  v28[4] = v24;
  v28[5] = v23;
  v29 = *(v27 + 16);
  v30 = swift_allocObject();
  v0[37] = v30;
  *(v30 + 16) = sub_10059F758;
  *(v30 + 24) = v28;
  v31 = async function pointer to AsyncCoreDataContainer.performRead<A>(_:)[1];

  v32 = swift_task_alloc();
  v0[38] = v32;
  *v32 = v0;
  v32[1] = sub_10059EB7C;

  return AsyncCoreDataContainer.performRead<A>(_:)(v0 + 27, sub_10017F748, v30, &type metadata for IdentityDocumentType);
}

uint64_t sub_10059EB7C()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10059ECEC, 0, 0);
  }

  else
  {
    v4 = v3[36];
    v5 = v3[37];
    v6 = v3[35];

    v7 = v3[27];
    v8 = v3[34];

    v9 = v3[1];

    return v9(v7);
  }
}

uint64_t sub_10059ECEC()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];

  v5 = v0[1];
  v6 = v0[39];

  return v5();
}

uint64_t sub_10059ED74@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v42 = type metadata accessor for Logger();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v42);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  v15 = *a1;
  if (a2)
  {
    v41 = v3;

    IdentityProofingPrecursorPassMessageAction.title.getter();
    dispatch thunk of IdentityProofingTextReplacementHelper.replaceText(_:)();
    v17 = v16;

    if (!v17)
    {
      defaultLogger()();
      v18 = v15;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v44 = v40;
        *v21 = 136315138;
        v39 = v20;
        v22 = IdentityProofingPrecursorPassMessageAction.title.getter();
        v24 = sub_100141FE4(v22, v23, &v44);
        v38 = v19;
        v25 = v24;

        *(v21 + 4) = v25;
        v26 = v38;
        _os_log_impl(&_mh_execute_header, v38, v39, "IdentityProofingFlow invalid replacement string; falling back to: %s", v21, 0xCu);
        sub_10000BB78(v40);
      }

      else
      {
      }

      (*(v8 + 8))(v14, v42);
      IdentityProofingPrecursorPassMessageAction.title.getter();
    }

    IdentityProofingPrecursorPassMessageAction.actionType.getter();
    IdentityProofingPrecursorPassMessageAction.actionURL.getter();
    v37 = objc_allocWithZone(type metadata accessor for IdentityProofingPrecursorPassMessageAction());
    v36 = IdentityProofingPrecursorPassMessageAction.init(title:actionType:actionURL:)();
  }

  else
  {
    defaultLogger()();
    v27 = v15;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = IdentityProofingPrecursorPassMessageAction.title.getter();
      v34 = sub_100141FE4(v32, v33, &v44);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "IdentityProofingFlow invalid textReplacementHelper; could not localize string for action: %s", v30, 0xCu);
      sub_10000BB78(v31);
    }

    result = (*(v8 + 8))(v12, v42);
    v36 = 0;
  }

  *v43 = v36;
  return result;
}

void sub_10059F168(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v48 = a1;
  v46 = a6;
  v10 = type metadata accessor for Logger();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DIPError.Code();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v50;
  v19 = sub_1005796D0(a2, a3, a4, a5);
  if (v18)
  {
    return;
  }

  v50 = a3;
  v20 = a4;
  v21 = v47;
  if (v19 >> 62)
  {
    v44 = v19;
    v37 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v44;
    if (v37)
    {
      goto LABEL_4;
    }

LABEL_14:

    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v38._countAndFlagsBits = 0xD00000000000001CLL;
    v38._object = 0x8000000100722DD0;
    String.append(_:)(v38);
    v39._countAndFlagsBits = a2;
    v39._object = v50;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 8236;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = v20;
    v41._object = a5;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000022;
    v42._object = 0x8000000100722DF0;
    String.append(_:)(v42);
    (*(v21 + 104))(v17, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_4:
  v48 = 0;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v22 = *(v19 + 32);
  }

  v23 = v22;

  v24 = [v23 documentType];
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = IdentityDocumentType.init(documentTypeString:)();
    v27 = v13;
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v50 = v27;
      v31 = v30;
      v32 = v10;
      v33 = swift_slowAlloc();
      v49[0] = v33;
      *v31 = 136315138;
      v34 = IdentityDocumentType.description.getter();
      v36 = sub_100141FE4(v34, v35, v49);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "IdentityProofingFlow got document type: %s from existing proofing session", v31, 0xCu);
      sub_10000BB78(v33);

      (*(v45 + 8))(v50, v32);
    }

    else
    {

      (*(v45 + 8))(v27, v10);
    }

    *v46 = v26;
  }

  else
  {
    (*(v21 + 104))(v17, enum case for DIPError.Code.unexpectedIDType(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_10059F718()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10059F778()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059F7B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1005A0C34(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10059F7F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v22 = a2;
  v23 = a3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  *(v5 + 16) = dispatch_group_create();
  sub_10017ABC8();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v8);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v5 + 160) = 0x3FE999999999999ALL;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 24) = v17;
  *(v5 + 32) = a1;
  v18 = v23;
  *(v5 + 40) = v22;
  *(v5 + 48) = v18;
  *(v5 + 56) = a4;
  v19 = objc_allocWithZone(type metadata accessor for DIPLocationHelper());
  v20 = a4;
  *(v5 + 152) = sub_100598D70(0, 0, a4);
  return v5;
}

uint64_t sub_10059FA1C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning fetch of supplemental device data", v9, 2u);
  }

  result = (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 32);
  if (v11)
  {
    result = sub_10059FC64();
    if ((v11 & 4) == 0)
    {
LABEL_5:
      if ((v11 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_5;
  }

  result = sub_10059FFC8();
  if ((v11 & 8) == 0)
  {
LABEL_6:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = sub_1005A01CC();
  if ((v11 & 0x10) == 0)
  {
LABEL_7:
    if ((v11 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = sub_1005A0664();
  if ((v11 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:
  dispatch_group_enter(*(v1 + 16));
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v12 = qword_1008823E0;

  v13 = v12;
  sub_100597CE8(v13, v1);
}

void sub_10059FC0C(void *a1, void *a2)
{
  if (a1 && a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = a2[18];
    a2[17] = v4;
    a2[18] = v3;
  }

  v6 = a2[2];

  dispatch_group_leave(v6);
}

uint64_t sub_10059FC64()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v1 + 16));
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning to fetch IDS data", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  sub_1000363B4(v10, v11);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  if (v11 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = qword_1008823E0;

  sub_100593FC0(v12, v11, sub_1005A0C6C, v1);

  return sub_10000B90C(v12, v11);
}

void sub_10059FE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 64);
  *(a2 + 64) = a1;

  v10 = *(a2 + 64);
  if (!v10 || !*(v10 + 16))
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No IDS data available", v13, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  dispatch_group_leave(*(a2 + 16));
}

uint64_t sub_10059FFC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v1 + 16));
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning to fetch phone number", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v10 = qword_1008823E0;

  v11 = v10;
  sub_1005972A4(0, v11, v1);
}

void sub_1005A0174(void *a1, void *a2)
{
  if (a1 && a1[2])
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = a2[13];
    a2[12] = v4;
    a2[13] = v3;
  }

  v6 = a2[2];

  dispatch_group_leave(v6);
}

uint64_t sub_1005A01EC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = 0x3FE999999999999ALL;
    _os_log_impl(&_mh_execute_header, v13, v14, "Beginning to fetch device location after %f seconds", v15, 0xCu);
  }

  v16 = *(v3 + 8);
  v16(v12, v2);
  [objc_opt_self() sleepForTimeInterval:0.8];
  v17 = *(a1 + 152);
  v18 = sub_10059A2CC();
  if (v18)
  {
    v19 = v18;
    v43 = v17;
    v44 = v16;
    v45 = v2;
    sub_100007224(&unk_1008483D0, &unk_1006E83E0);
    v20 = swift_allocObject();
    v42 = xmmword_1006BF520;
    *(v20 + 16) = xmmword_1006BF520;
    [v19 coordinate];
    *(v20 + 56) = &type metadata for Double;
    *(v20 + 64) = &protocol witness table for Double;
    *(v20 + 32) = v21;
    v22 = String.init(format:_:)();
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v42;
    [v19 coordinate];
    *(v25 + 56) = &type metadata for Double;
    *(v25 + 64) = &protocol witness table for Double;
    *(v25 + 32) = v26;
    v27 = String.init(format:_:)();
    v29 = v28;
    v46 = 0;
    v30 = sub_1006594FC(v22, v24);

    if (v30)
    {
      v31 = v46;
      v46 = 0;
      v32 = sub_1006594FC(v27, v29);

      if (!v32)
      {
LABEL_11:
        v16 = v44;
        v2 = v45;
        defaultLogger()();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Got device location", v40, 2u);
        }

        goto LABEL_14;
      }

      v33 = v46;
      sub_100007224(&unk_100849F70, &qword_1006E90C0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1006BF740;
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      v35 = *(a1 + 112);
      *(a1 + 112) = v34;
    }

    goto LABEL_11;
  }

  defaultLogger()();
  v19 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v19, v36, "no device location available", v37, 2u);
  }

  v7 = v10;
LABEL_14:

  v16(v7, v2);
  return sub_100599E58();
}

uint64_t sub_1005A0684(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  v18[0] = *(v2 + 24);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100503A7C;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_1005A0F94(&unk_1008341E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_100031834();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_1005A08FC(uint64_t a1)
{
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v2 = qword_1008823E0;
  v3 = sub_100592810();
  if (v4 == 1)
  {
    sub_1005946FC();
  }

  else
  {
    sub_10003477C(v3, v4);
  }

  v5 = sub_100592810();
  v7 = v6;

  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(a1 + 128);
  if (v7 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  *(a1 + 120) = v8;
  *(a1 + 128) = v10;
}

uint64_t sub_1005A09B0()
{
  v1 = *(v0 + 56);
  sub_10000BD94(*(v0 + 40), *(v0 + 48));

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 128);

  v8 = *(v0 + 144);

  return v0;
}

uint64_t sub_1005A0A30()
{
  sub_1005A09B0();

  return swift_deallocClassInstance();
}

unint64_t sub_1005A0AAC()
{
  result = qword_100848D88;
  if (!qword_100848D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D88);
  }

  return result;
}

unint64_t sub_1005A0B04()
{
  result = qword_100848D90;
  if (!qword_100848D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D90);
  }

  return result;
}

unint64_t sub_1005A0B5C()
{
  result = qword_100848D98;
  if (!qword_100848D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848D98);
  }

  return result;
}

unint64_t sub_1005A0BB4()
{
  result = qword_100848DA0;
  if (!qword_100848DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848DA0);
  }

  return result;
}

uint64_t sub_1005A0C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005A0C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1005A0C74()
{
  v1 = v0;
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  OS_dispatch_group.wait()();
  if (*(v1 + 32))
  {
    if (*(v1 + 72))
    {
      (*(v3 + 104))(v6, enum case for DIPError.Code.internalError(_:), v2);
      swift_errorRetain();
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005A0F94(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      return *(v1 + 64);
    }
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DIPError.Code.badLogic(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005A0F94(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

uint64_t sub_1005A0F94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A0FE8(size_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = a1;
      bzero(v8 + 4, a1);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v9 = SecRandomCopyBytes(kSecRandomDefault, a1, v8 + 4);
    if (v9)
    {
      v10 = v9;

      (*(v3 + 104))(v7, enum case for DIPError.Code.systemSecError(_:), v2);
      sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
      v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
      v12 = *(*v11 + 72);
      v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1006BF520;
      v15 = v14 + v13;
      v16 = v15 + v11[14];
      v17 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
      v18 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v18 - 8) + 104))(v15, v17, v18);
      *(v16 + 24) = &type metadata for Int32;
      *(v16 + 32) = &protocol witness table for Int32;
      *v16 = v10;
      sub_10003C9C0(v14);
      swift_setDeallocating();
      sub_10000BE18(v15, &qword_1008341D0, &unk_1006BF8D0);
      swift_deallocClassInstance();
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      v19 = sub_10034C158(v8);
      v21 = v20;

      countAndFlagsBits = Data.base16EncodedString()()._countAndFlagsBits;
      sub_10000B90C(v19, v21);
      return countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_1005A1364(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  if (String.count.getter() != 2)
  {
    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = -1;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v65[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_100141FE4(a1, a2, v65);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to convert country code %{public}s to ASCII due to invalid length.", v25, 0xCu);
      sub_10000BB78(v26);

      (*(v5 + 8))(v9, v4);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return -1;
    }

    return v24;
  }

  v64 = a1;
  v12 = sub_1005A1A6C();
  v13 = *(v12 + 16);
  if (v13)
  {
    v60 = v11;
    v61 = a2;
    v62 = v5;
    v63 = v4;
    v65[0] = _swiftEmptyArrayStorage;
    sub_100172D4C(0, v13, 0);
    v14 = 32;
    v15 = v65[0];
    do
    {
      v66 = *(v12 + v14);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v65[0] = v15;
      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        sub_100172D4C((v19 > 1), v20 + 1, 1);
        v15 = v65[0];
      }

      v15[2] = v20 + 1;
      v21 = &v15[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      ++v14;
      --v13;
    }

    while (v13);

    v5 = v62;
    v4 = v63;
    v11 = v60;
    a2 = v61;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  v65[0] = v15;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v31 = HIBYTE(v29) & 0xF;
  v32 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v33 = v27 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v64;
  if (!v33)
  {

    v24 = -1;
LABEL_76:
    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v11;
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v56 = 136446466;
      *(v56 + 4) = sub_100141FE4(v34, a2, v65);
      *(v56 + 12) = 2048;
      *(v56 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v54, v55, "Converted country code: %{public}s to ASCII value: %ld", v56, 0x16u);
      sub_10000BB78(v58);

      (*(v5 + 8))(v57, v4);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    return v24;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    v66 = 0;
    v24 = sub_1000FFDD8(v27, v29, 10);
    v53 = v59;
LABEL_74:

    if (v53)
    {
      v24 = -1;
    }

    goto LABEL_76;
  }

  if ((v29 & 0x2000000000000000) == 0)
  {
    if ((v27 & 0x1000000000000000) != 0)
    {
      result = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v35 = *result;
    if (v35 == 43)
    {
      if (v32 >= 1)
      {
        v31 = v32 - 1;
        if (v32 != 1)
        {
          v24 = 0;
          if (result)
          {
            v42 = (result + 1);
            while (1)
            {
              v43 = *v42 - 48;
              if (v43 > 9)
              {
                goto LABEL_72;
              }

              v44 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                goto LABEL_72;
              }

              v24 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                goto LABEL_72;
              }

              ++v42;
              if (!--v31)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_72;
      }

      goto LABEL_85;
    }

    if (v35 != 45)
    {
      if (v32)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            v48 = *result - 48;
            if (v48 > 9)
            {
              goto LABEL_72;
            }

            v49 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_72;
            }

            v24 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              goto LABEL_72;
            }

            ++result;
            if (!--v32)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_72:
      v24 = 0;
      LOBYTE(v31) = 1;
      goto LABEL_73;
    }

    if (v32 >= 1)
    {
      v31 = v32 - 1;
      if (v32 != 1)
      {
        v24 = 0;
        if (result)
        {
          v36 = (result + 1);
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_72;
            }

            v38 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_72;
            }

            v24 = v38 - v37;
            if (__OFSUB__(v38, v37))
            {
              goto LABEL_72;
            }

            ++v36;
            if (!--v31)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_64:
        LOBYTE(v31) = 0;
LABEL_73:
        v66 = v31;
        v53 = v31;
        goto LABEL_74;
      }

      goto LABEL_72;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v65[0] = v27;
  v65[1] = v29 & 0xFFFFFFFFFFFFFFLL;
  if (v27 != 43)
  {
    if (v27 != 45)
    {
      if (v31)
      {
        v24 = 0;
        v50 = v65;
        while (1)
        {
          v51 = *v50 - 48;
          if (v51 > 9)
          {
            break;
          }

          v52 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            break;
          }

          v50 = (v50 + 1);
          if (!--v31)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    if (v31)
    {
      if (--v31)
      {
        v24 = 0;
        v39 = v65 + 1;
        while (1)
        {
          v40 = *v39 - 48;
          if (v40 > 9)
          {
            break;
          }

          v41 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v41 - v40;
          if (__OFSUB__(v41, v40))
          {
            break;
          }

          ++v39;
          if (!--v31)
          {
            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    goto LABEL_84;
  }

  if (v31)
  {
    if (--v31)
    {
      v24 = 0;
      v45 = v65 + 1;
      while (1)
      {
        v46 = *v45 - 48;
        if (v46 > 9)
        {
          break;
        }

        v47 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          break;
        }

        ++v45;
        if (!--v31)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_86:
  __break(1u);
  return result;
}

unint64_t sub_1005A1A6C()
{

  v0 = String.Iterator.next()();
  if (!v0.value._object)
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_35:

    return v3;
  }

  countAndFlagsBits = v0.value._countAndFlagsBits;
  object = v0.value._object;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (countAndFlagsBits == 2573 && object == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {

      LOBYTE(v12) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    v6 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if (!v6)
    {
      break;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v11 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((object & 0x2000000000000000) != 0)
      {
        v8 = countAndFlagsBits;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v7 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = *v7;
      }

      v9 = v8;
      v10 = (__clz(~v8) - 24) << 16;
      if (v9 < 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 65541;
      }
    }

    if (v11 >> 14 == 4 * v6)
    {
      result = sub_1005A2728(countAndFlagsBits, object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      if ((result & 0xFFFFFF80) == 0)
      {
        result = sub_1005A2728(countAndFlagsBits, object);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_39;
        }

        v12 = result;

        if ((v12 & 0xFFFFFF00) != 0)
        {
          goto LABEL_37;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

LABEL_31:
        v3 = sub_1003C54A8(0, *(v3 + 2) + 1, 1, v3);
LABEL_27:
        v14 = *(v3 + 2);
        v13 = *(v3 + 3);
        if (v14 >= v13 >> 1)
        {
          v3 = sub_1003C54A8((v13 > 1), v14 + 1, 1, v3);
        }

        *(v3 + 2) = v14 + 1;
        v3[v14 + 32] = v12;
        goto LABEL_4;
      }
    }

LABEL_4:
    v4 = String.Iterator.next()();
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    if (!v4.value._object)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1005A1CA8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v46 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "URL is not a valid HTTPS URL because it is an empty string", v33, 2u);
    }

    (*(v47 + 8))(v10, v48);
    goto LABEL_11;
  }

  URL.init(string:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000BE18(v19, &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = a3;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100141FE4(a1, a2, &v49);
      _os_log_impl(&_mh_execute_header, v26, v27, "URL %{public}s is not a valid HTTPS URL because it is not a url", v29, 0xCu);
      sub_10000BB78(v30);

      a3 = v28;
    }

    (*(v47 + 8))(v13, v48);
LABEL_11:
    v34 = 1;
    return (*(v21 + 56))(a3, v34, 1, v20);
  }

  v46 = a3;
  v36 = *(v21 + 32);
  v36(v24, v19, v20);
  v37 = URL.scheme.getter();
  if (v38)
  {
    if (v37 == 0x7370747468 && v38 == 0xE500000000000000)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v45 = v46;
    v36(v46, v24, v20);
    a3 = v45;
    v34 = 0;
    return (*(v21 + 56))(a3, v34, 1, v20);
  }

LABEL_19:
  defaultLogger()();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_100141FE4(a1, a2, &v49);
    _os_log_impl(&_mh_execute_header, v41, v42, "URL %{public}s is not a valid HTTPS URL because it does not have the https scheme", v43, 0xCu);
    sub_10000BB78(v44);
  }

  (*(v47 + 8))(v15, v48);
  (*(v21 + 8))(v24, v20);
  v34 = 1;
  a3 = v46;
  return (*(v21 + 56))(a3, v34, 1, v20);
}

uint64_t sub_1005A2220@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v40 - v12;
  v13 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  sub_1005A1CA8(a1, a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v40 = v7;
    v41 = v6;
    v42 = a3;
    v23 = *(v18 + 32);
    v23(v21, v16, v17);
    v24 = URL.host.getter();
    if (v25)
    {
      v26 = v24 == 0x6F632E656C707061 && v25 == 0xE90000000000006DLL;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

LABEL_10:
        a3 = v42;
        v23(v42, v21, v17);
        v22 = 0;
        return (*(v18 + 56))(a3, v22, 1, v17);
      }

      v32._countAndFlagsBits = 0x632E656C7070612ELL;
      v32._object = 0xEA00000000006D6FLL;
      v33 = String.hasSuffix(_:)(v32);

      if (v33)
      {
        goto LABEL_10;
      }

      v34 = v43;
      defaultLogger()();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      v37 = v35;
      if (os_log_type_enabled(v35, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v38 = 136446210;
        *(v38 + 4) = sub_100141FE4(v44, a2, &v45);
        _os_log_impl(&_mh_execute_header, v37, v36, "URL %{public}s is not an Apple url", v38, 0xCu);
        sub_10000BB78(v39);
      }

      else
      {
      }

      (*(v40 + 8))(v34, v41);
    }

    else
    {
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(v44, a2, &v45);
        _os_log_impl(&_mh_execute_header, v27, v28, "URL %{public}s is not a valid HTTPS URL because it does not have a host", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v40 + 8))(v11, v41);
    }

    (*(v18 + 8))(v21, v17);
    v22 = 1;
    a3 = v42;
    return (*(v18 + 56))(a3, v22, 1, v17);
  }

  sub_10000BE18(v16, &unk_100844540, &unk_1006BFBC0);
  v22 = 1;
  return (*(v18 + 56))(a3, v22, 1, v17);
}

unint64_t sub_1005A2728(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1005A2878(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1005A2878(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1005A2910(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1005A2984(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1005A2910(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10010075C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1005A2984(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_1005A2ACC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v0 + 54);
  sub_1000318FC(&v0[4], v5);
  os_unfair_lock_unlock(v0 + 54);
  v1 = v6;
  sub_10001F640(v6);
  v2 = sub_100031918(v5);
  if (v1)
  {
    v3 = v1(v2);
    sub_10001FE8C(v1);
    return v3;
  }

  else
  {
    type metadata accessor for AssetsFetcher();
    return swift_allocObject();
  }
}

uint64_t sub_1005A2BA0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_100007224(&unk_10084A260, &qword_1006EA050) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost.Config();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v2[23] = v16;
  v17 = *(v16 - 8);
  v2[24] = v17;
  v18 = *(v17 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005A2E14, 0, 0);
}

uint64_t sub_1005A2E14()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 24) = v2;
  *(v0 + 32) = 46;
  *(v0 + 40) = 0xE100000000000000;
  sub_10001F298();
  v3 = StringProtocol.components<A>(separatedBy:)();
  *(v0 + 48) = 0x74726F7073736170;
  *(v0 + 56) = 0xE800000000000000;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 48;
  *(v0 + 368) = sub_10035C8E4(sub_1000307C0, v4, v3) & 1;

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Will attempt to get Identity Proofing Static asset meta data", v7, 2u);
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);

  v14 = *(v10 + 8);
  *(v0 + 216) = v14;
  v14(v8, v9);
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 224) = v15;
  (*(v12 + 8))(v11, v13);
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_1005A3058;

  return sub_1005D7070(1);
}

uint64_t sub_1005A3058(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_1005A3178, 0, 0);
}

uint64_t sub_1005A3178()
{
  v1 = *(v0 + 368);
  if (*(v0 + 240))
  {
    v2 = *(v0 + 152);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    static DaemonSignposts.fetchIdentityStaticAssetTotal.getter();
    DIPSignpost.init(_:)();
    static DaemonSignposts.fetchIdentityStaticAssetRequest.getter();
    (*(v4 + 56))(v6, 0, 1, v5);
    v7 = swift_task_alloc();
    *(v0 + 248) = v7;
    *v7 = v0;
    v7[1] = sub_1005A3454;
    v8 = "e96da0d4-05f5-4cc9-b3c2-21bbc5c50cc7";
    if (v1)
    {
      v8 = "46541ed0-7919-427f-be5e-217c14133438";
    }

    v9 = *(v0 + 104);

    return sub_1005CC204(0xD000000000000024, (v8 - 32) | 0x8000000000000000, 0x6A2E737465737361, 0xEB000000006E6F73, 2, v9);
  }

  else
  {
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);

    (*(v12 + 104))(v11, enum case for DIPError.Code.staticWebServiceUnavailable(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 176);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21();
  }
}