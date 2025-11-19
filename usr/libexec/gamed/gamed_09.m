uint64_t sub_1001BC6F8()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1001BC7F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1001A6C04(&qword_1003B6030);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  sub_100278F0C(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1001D0C38;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BCB40;
  aBlock[3] = &unk_10036B5A8;
  v13 = _Block_copy(aBlock);

  [a2 getProfilesForPlayerIDs:isa fetchOptions:1 handler:v13];
  _Block_release(v13);
}

uint64_t sub_1001BC9E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6030);
    return CheckedContinuation.resume(throwing:)();
  }

  v4 = sub_1001E6E2C(a1);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 contact];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);
LABEL_10:
    sub_1001A6C04(&qword_1003B6030);
    return CheckedContinuation.resume(returning:)();
  }

  __break(1u);
  return result;
}

void sub_1001BCB54(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 32);
  sub_1001A7B44(0, a4);
  sub_1001B2FE0();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1001BCBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001BCC1C, 0, 0);
}

uint64_t sub_1001BCC1C()
{
  sub_1000057FC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v6 = sub_1001D188C(v5);
  *v6 = v7;
  sub_1001D1798(v6);

  return sub_1001BB308();
}

uint64_t sub_1001BCCC0()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[8] = v0;

  if (v1)
  {
    v4[11] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    swift_task_alloc();
    sub_1001D1644();
    v4[9] = v11;
    *v11 = v12;
    sub_1001D1B4C(v11);
    v15 = v4[2];

    return sub_1001C6654(v15, v0, v13, &unk_1002C4108, v14);
  }
}

uint64_t sub_1001BCE30()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BCF28()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001BCF8C()
{
  sub_100005528();

  sub_1001D1B40();
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001BCFEC()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001BD048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1001BD070, 0, 0);
}

uint64_t sub_1001BD070()
{
  sub_100005838();
  if (!sub_1001D1AB8())
  {
    sub_1001D17F4();
LABEL_7:
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v21, v22);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
    sub_1001D1A5C();

    __asm { BRAA            X1, X16 }
  }

  sub_1001D19AC();
  sub_1001A7B44(0, &qword_1003B5C08);
  v3 = v2;
  v4 = v0;
  v5 = sub_1001D15A8();
  v1[8] = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v1[9] = v9;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v7;
  v10 = swift_task_alloc();
  sub_1001D1BA4(v10);
  sub_1001A6C04(&qword_1003B6018);
  sub_1001D15D8();
  *v6 = v11;
  sub_1001D1800();
  sub_1001D15C8();
  sub_1001D1A5C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1001BD23C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BD33C()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001BD394()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

void sub_1001BD3F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001A6C04(&qword_1003B6020);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  sub_1001A6C04(&qword_1003B5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002C33A0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_1001D0AE4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BAD60;
  aBlock[3] = &unk_10036B558;
  v16 = _Block_copy(aBlock);

  [a2 getGameMetadataForBundleIDs:isa handler:v16];
  _Block_release(v16);
}

void sub_1001BD628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B6018);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  if (a2)
  {
    v7 = type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    v8 = swift_allocError();
    *v9 = a2;
    (*(*(v7 - 8) + 104))(v9, enum case for GameServicesError.internalError(_:), v7);
    v26[5] = v8;
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6020);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (sub_1001E6E2C(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(a1 + 32);
LABEL_7:
      v11 = v10;
      v12 = [v11 adamID];
      v13 = [v12 stringValue];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26[3] = v15;
      v26[4] = v14;

      v16 = [v11 bundleIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26[1] = v18;
      v26[2] = v17;

      v19 = [v11 bundleVersion];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v11 shortBundleVersion];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = objc_opt_self();
      v22 = [v11 platform];

      v23 = [v21 stringForPlatform:v22];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      GameMetadata.init(adamID:bundleID:bundleVersion:shortBundleVersion:platform:)();
      v24 = type metadata accessor for GameMetadata();
      sub_1001A9674(v6, 0, 1, v24);
      sub_1001A6C04(&qword_1003B6020);
      CheckedContinuation.resume(returning:)();

      return;
    }

    __break(1u);
  }

  else
  {
    v25 = type metadata accessor for GameMetadata();
    sub_1001A9674(v6, 1, 1, v25);
    sub_1001A6C04(&qword_1003B6020);
    CheckedContinuation.resume(returning:)();
  }
}

id sub_1001BD994(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() gameCenterClient];
  if (result)
  {
    v5 = result;
    v6 = sub_1001CEBD4(a1, a2, result);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001BDA08(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v15 = a1 + 40;
  v16 = &_swiftEmptyArrayStorage;
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = objc_opt_self();

    v8 = [v7 defaultWorkspace];
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = v8;
    v10 = sub_1001B6874(v6, v5, v8);

    if (v10)
    {
      v11 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001B16C8(0, v16[2] + 1, 1);
        v11 = v16;
      }

      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        sub_1001B16C8(v12 > 1, v13 + 1, 1);
        v11 = v16;
      }

      v11[2] = v13 + 1;
      v16 = v11;
      v14 = &v11[2 * v13];
      v14[4] = v6;
      v14[5] = v5;
      ++v1;
      v3 = v15;
      goto LABEL_2;
    }

    ++v1;
    v4 += 2;
  }
}

uint64_t sub_1001BDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_task_alloc();
  v6[10] = v7;
  *v7 = v6;
  v7[1] = sub_1001BDC10;

  return sub_1001BB308();
}

uint64_t sub_1001BDC10()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[11] = v0;

  if (v1)
  {
    v4[14] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    swift_task_alloc();
    sub_1001D1644();
    v4[12] = v11;
    *v11 = v12;
    v11[1] = sub_1001BDD78;
    v13 = v4[8];
    v14 = v4[9];
    v16 = v4[6];
    v15 = v4[7];
    v17 = v4[4];
    v18 = v4[5];

    return sub_1001BDF58((v4 + 2), v0, v15, v13, v17, v18, v16, v14);
  }
}

uint64_t sub_1001BDD78()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BDE70()
{
  sub_100005528();

  sub_1001D1874();

  return v1();
}

uint64_t sub_1001BDED0()
{
  sub_100005528();

  *(v0 + 112) = *(v0 + 104);
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001BDF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  return _swift_task_switch(sub_1001BDF84, 0, 0);
}

uint64_t sub_1001BDF84()
{
  sub_1001D18F8();
  v1 = [objc_opt_self() sharedManager];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v1 storeBag];
  v0[29] = v3;

  if (!v3)
  {
LABEL_11:
    __break(1u);
    return _swift_continuation_await(v1);
  }

  v4 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = String._bridgeToObjectiveC()();
  v0[30] = v7;
  objc_allocWithZone(GKHTTPRequestData);

  sub_1001D09EC(v6, v5);
  v8 = sub_1001CE958(v6, v5);
  v0[31] = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    sub_1001D1958();
    v10 = v0[22];
    v0[2] = v11;
    v0[7] = v0 + 18;
    v0[3] = sub_1001BE210;
    v12 = swift_continuation_init();
    v0[17] = sub_1001A6C04(&qword_1003B6010);
    v0[10] = _NSConcreteStackBlock;
    sub_1001D17E8(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1001BE4D0;
    v0[13] = &unk_10036B508;
    v0[14] = v12;
    [v3 readDataForBagKey:v7 postData:v8 client:v4 credential:v10 completion:v0 + 10];
    v1 = v0 + 2;

    return _swift_continuation_await(v1);
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v13, v14);
  sub_1001D1528();
  sub_1001D1638();
  sub_1001D1824();
  swift_willThrow();
  sub_1000046F8();

  return v15();
}

uint64_t sub_1001BE210()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

void sub_1001BE30C()
{
  sub_100005838();
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v4 = *(v0 + 240);

    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = 0xD00000000000001DLL;
    *(v0 + 88) = 0x800000010030A240;
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v5, v6);
    sub_1001D160C();
    static GameServicesError.unexpectedValueFromService(_:)();
    sub_1001B2DDC(v0 + 80, &qword_1003B5808);
    swift_willThrow();
    sub_1001D1598();
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 240);
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);

    *v10 = v11;
    v10[1] = v1;
    sub_1001B69F0();
  }

  sub_1001D1A5C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1001BE454()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  swift_willThrow();

  sub_1000046F8();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001BE4D0(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = a3;
    return sub_1001BAD74();
  }

  else
  {
    if (a2)
    {
      v10 = a2;
      a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xF000000000000000;
    }

    return sub_1001BADE0(v7, a2, v12, a4);
  }
}

uint64_t sub_1001BE588(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1001BE618;

  return sub_1001BB308();
}

uint64_t sub_1001BE618()
{
  sub_1001D1A74();
  v17 = v3;
  sub_1001AFA50();
  sub_1001D14C0();
  v5 = v4;
  sub_1001D14B0();
  *v6 = v5;
  v7 = *v2;
  sub_100004410();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v1)
  {
    sub_10000629C();
    sub_1001D19F4();

    __asm { BRAA            X1, X16 }
  }

  sub_100004718();
  v11 = swift_task_alloc();
  v12 = sub_100005AFC(v11);
  *v12 = v13;
  v14 = sub_100005820(v12);

  return v15(v14);
}

uint64_t sub_1001BE788()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BE880(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1001BE910;

  return sub_1001BB308();
}

uint64_t sub_1001BE910()
{
  sub_1001D1A74();
  v17 = v3;
  sub_1001AFA50();
  sub_1001D14C0();
  v5 = v4;
  sub_1001D14B0();
  *v6 = v5;
  v7 = *v2;
  sub_100004410();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v1)
  {
    sub_10000629C();
    sub_1001D19F4();

    __asm { BRAA            X1, X16 }
  }

  sub_100004718();
  v11 = swift_task_alloc();
  v12 = sub_100005AFC(v11);
  *v12 = v13;
  v14 = sub_100005820(v12);

  return v15(v14);
}

uint64_t sub_1001BEA80()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BEB78()
{
  sub_100005528();

  sub_1001D17DC();

  return v1();
}

uint64_t sub_1001BEBD8()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001BEC34(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001BEC54, 0, 0);
}

uint64_t sub_1001BEC54()
{
  sub_100005528();
  v0 = swift_task_alloc();
  sub_1001D1B58(v0);
  v1 = swift_task_alloc();
  v2 = sub_1001D188C(v1);
  *v2 = v3;
  sub_1001D1798(v2);

  return sub_1001BB308();
}

uint64_t sub_1001BECE0()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[8] = v0;

  if (v1)
  {
    v4[11] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    swift_task_alloc();
    sub_1001D1644();
    v4[9] = v11;
    *v11 = v12;
    sub_1001D1B4C(v11);

    return sub_1001C6078((v4 + 2), v0, v13, &unk_1002C40B8, v14);
  }
}

uint64_t sub_1001BEE50()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BEF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001BEF70, 0, 0);
}

uint64_t sub_1001BEF70()
{
  sub_100006B50();
  sub_1001AFA50();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = v0[3], v1 = v0[4], type metadata accessor for GKGameKitDirectoryServicePrivateImpl(), v3 = v2, v4 = v1, sub_1001B6ACC(), v5 = sub_1001CA78C(), (v0[7] = v5) != 0))
  {
    v6 = v5;
    v7 = v0[6];
    v8 = swift_task_alloc();
    v9 = sub_1001D1BB0(v8);
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    v10 = swift_task_alloc();
    v0[9] = v10;
    sub_1001A6C04(&qword_1003B6000);
    sub_1001D15D8();
    *v10 = v11;
    sub_1001D1800();
    sub_1001D15C8();
    sub_1001D18C4();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v21, v22);
    sub_1001D160C();
    sub_1001D162C();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();
    sub_1001D1598();
    sub_1001D18C4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1001BF150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001A6C04(&qword_1003B6008);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for URL();
  sub_1001A9674(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v8, v5);
  sub_10027CB80(a3, v11, sub_1001D0948);

  return sub_1001B2DDC(v11, &qword_1003B5800);
}

uint64_t sub_1001BF32C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6008);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001D09D8(a1, a2);
    sub_1001A6C04(&qword_1003B6008);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001BF3B0(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1001BF3D0, 0, 0);
}

uint64_t sub_1001BF3D0()
{
  sub_100005528();
  v0 = swift_task_alloc();
  sub_1001D1B58(v0);
  v1 = swift_task_alloc();
  v2 = sub_1001D188C(v1);
  *v2 = v3;
  sub_1001D1798(v2);

  return sub_1001BB308();
}

uint64_t sub_1001BF45C()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[8] = v0;

  if (v1)
  {
    v4[11] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    swift_task_alloc();
    sub_1001D1644();
    v4[9] = v11;
    *v11 = v12;
    sub_1001D1B4C(v11);

    return sub_1001C6078((v4 + 2), v0, v13, &unk_1002C4088, v14);
  }
}

uint64_t sub_1001BF5CC()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001BF6C4()
{
  sub_100005528();

  sub_1001D1874();

  return v1();
}

uint64_t sub_1001BF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  sub_1001A6C04(&qword_1003B5FE8);
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001BF7D4, 0, 0);
}

uint64_t sub_1001BF7D4()
{
  sub_1001D1988();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = v0[21], v1 = v0[22], sub_1001A7B44(0, &qword_1003B5FF0), v3 = v2, v4 = v1, sub_1001B6ACC(), v5 = sub_1001CA78C(), (v0[26] = v5) != 0))
  {
    v7 = v5;
    v8 = v0[25];
    URL._bridgeToObjectiveC()(v6);
    v10 = v9;
    v0[27] = v9;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v11 = type metadata accessor for URLComponents();
    v12 = sub_1001A969C(v8, 1, v11);
    v13 = v0[25];
    if (v12 == 1)
    {
      sub_1001B2DDC(v0[25], &qword_1003B5FE8);
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v14 = URLComponents.path.getter();
      v15 = v20;
      sub_100005534();
      (*(v21 + 8))(v13, v11);
    }

    v22._countAndFlagsBits = v14;
    v22._object = v15;
    String.append(_:)(v22);

    v23 = String._bridgeToObjectiveC()();
    v0[28] = v23;

    v24 = String._bridgeToObjectiveC()();
    v0[29] = v24;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001BFB0C;
    v25 = swift_continuation_init();
    v0[17] = sub_1001A6C04(&qword_1003B5FF8);
    v0[10] = _NSConcreteStackBlock;
    sub_1001D17E8(COERCE_DOUBLE(1107296256));
    v0[12] = sub_1001BFC64;
    v0[13] = &unk_10036B4B8;
    v0[14] = v25;
    [v7 requestImageDataForURL:v10 subdirectory:v23 fileName:v24 handler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v16, v17);
    sub_1001D160C();
    sub_1001D1BEC();
    swift_willThrow();

    sub_1001D1598();

    return v18();
  }
}

uint64_t sub_1001BFB0C()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;
  sub_1001B6A34();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001BFBDC()
{
  sub_100006B50();
  sub_1001AFA50();
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 160);

  *v4 = *(v0 + 144);

  sub_1001B69F0();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001BFC64(uint64_t a1, void *a2)
{
  v3 = *sub_100006454((a1 + 32), *(a1 + 56));
  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  return sub_1001BFCDC(v3, v5, v7, &swift_continuation_resume);
}

uint64_t sub_1001BFCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(*(a1 + 64) + 40);
  *v4 = a2;
  v4[1] = a3;
  return a4();
}

uint64_t sub_1001BFD44()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  sub_1001D1818(v3);
  sub_1001A6C04(&qword_1003B5EE0);
  *v1 = v0;
  v1[1] = sub_1001BFE40;
  sub_1001B6A34();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1001BFE40()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1001BFF64(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B5EE8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v5, v2);
    aBlock[4] = sub_1001CF8D8;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C0310;
    aBlock[3] = &unk_10036B238;
    v10 = _Block_copy(aBlock);

    [v7 getAuthenticatedLocalPlayersWithStatus:4 handler:v10];
    _Block_release(v10);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();

    aBlock[0] = &_swiftEmptyArrayStorage;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001C01CC(uint64_t a1)
{
  v1 = &_swiftEmptyArrayStorage;
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_100006244(v3, v6);
      sub_100007B20(v6, v5);
      sub_1001A7B44(0, &qword_1003B5EF0);
      if (swift_dynamicCast())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  v6[0].n128_u64[0] = v1;
  sub_1001A6C04(&qword_1003B5EE8);
  return CheckedContinuation.resume(returning:)();
}

void sub_1001C0310(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, v6);
}

uint64_t sub_1001C03A4()
{
  v1 = sub_1001A6C04(&qword_1003B6260);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1001C0498;

  return sub_1001BFD24();
}

uint64_t sub_1001C0498()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

size_t sub_1001C0580()
{
  v1 = sub_1001E6E2C(v0[6]);
  if (v1)
  {
    v2 = v1;
    result = sub_1001B1708(0, v1 & ~(v1 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v0[6];
    v6 = v0[3];
    v15 = v5 + 32;
    v16 = v5 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v15 + 8 * v4);
      }

      v8 = v7;
      v9 = [v7 playerID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      Ref<A>.init(internalID:)();
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1001B1708(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[4];
      v13 = v0[2];
      ++v4;
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v6 + 32))(&_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v12, v13);
    }

    while (v2 != v4);
  }

  sub_1001D17DC();

  return v14(&_swiftEmptyArrayStorage);
}

uint64_t sub_1001C075C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1001A6C04(&qword_1003B5EC8);
  v2[4] = swift_task_alloc();
  v3 = sub_1001A6C04(&qword_1003B6260);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_1001C088C;

  return sub_1001C03A4();
}

uint64_t sub_1001C088C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C0974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v14 = v12[4];
  v13 = v12[5];
  sub_1001BAC30();

  if (sub_1001A969C(v14, 1, v13) == 1)
  {
    sub_1001B2DDC(v12[4], &qword_1003B5EC8);
  }

  else
  {
    (*(v12[6] + 32))(v12[7], v12[4], v12[5]);
    v15 = sub_1001AC6F0();
    v16 = v12[6];
    v17 = v12[5];
    if (v15)
    {
      a9 = v12[7];
      v18 = [objc_allocWithZone(type metadata accessor for OverlayServiceUtils()) init];
      v19 = AchievementDescription.id.getter();
      v21 = v20;
      v22 = AchievementDescription.title.getter();
      v24 = v23;
      v25._countAndFlagsBits = AchievementDescription.achievedDescription.getter();
      v27 = v26;
      v28._countAndFlagsBits = v19;
      v28._object = v21;
      v29._countAndFlagsBits = v22;
      v29._object = v24;
      v25._object = v27;
      OverlayServiceUtils.showAchievementBanner(id:title:message:)(v28, v29, v25);

      (*(v16 + 8))(a9, v17);
    }

    else
    {
      (*(v16 + 8))(v12[7], v17);
    }
  }

  sub_1000046F8();
  sub_100006084();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1001C0B1C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  sub_1001A6C04(&qword_1003B5FC0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for LeaderboardDescription();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1001C0C30, 0, 0);
}

uint64_t sub_1001C0C30()
{
  sub_1001D1A74();
  sub_1001AFA50();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong notifyAboutScoreSubmissions];

    if (v3)
    {
      v4 = swift_task_alloc();
      *(v0 + 168) = v4;
      *v4 = v0;
      v4[1] = sub_1001C0DB8;
      sub_1001D19F4();

      return sub_1001BB0DC();
    }

    sub_1001B69F0();
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v7, v8);
    sub_1001D1528();
    sub_1001D1638();
    sub_1001D1824();
    swift_willThrow();

    sub_1000046F8();
  }

  sub_1001D19F4();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1001C0DB8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C0EA0()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[20];
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    sub_1001A7B44(0, &qword_1003B5A68);
    v8 = *(v4 + 16);
    v8(v2, v6, v3);
    v9 = type metadata accessor for LeaderboardEntry();
    sub_100005780();
    v27 = *(v10 + 16);
    v27(v5, v7, v9);
    sub_1001A9674(v5, 0, 1, v9);
    v11 = v1;
    sub_1001D1704();
    sub_100254F2C();
    v13 = v12;
    v14 = v0[19];
    v15 = v0[15];
    v16 = v0[13];
    v25 = v0[17];
    v26 = v0[12];
    sub_1001A7B44(0, &qword_1003B5A58);
    v8(v14, v16, v25);
    v27(v15, v26, v9);
    sub_1001A9674(v15, 0, 1, v9);
    sub_1002552F4();
    v18 = v17;
    type metadata accessor for ScoreSubmissionBulletin();
    sub_1001A6C04(&qword_1003B6BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C3960;
    *(inited + 32) = v13;
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1002C3960;
    *(v20 + 32) = v18;
    v21 = v13;
    v22 = v18;
    sub_1001AD150(inited, v20);

    swift_setDeallocating();
    sub_1001CE9F4();
  }

  sub_1001B69F0();

  return v23();
}

void sub_1001C1184(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshContentsDataType();
  v5 = *(refreshed - 8);
  v6 = __chkstk_darwin(refreshed);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001C1590();
  if ((v15 & 0x100000000) != 0)
  {
    v31 = v12;
    v32 = v11;
    static GKLog.daemon.getter();
    v22 = *(v5 + 16);
    v22(v10, a1, refreshed);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v25 = 136315138;
      v22(v8, v10, refreshed);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      (*(v5 + 8))(v10, refreshed);
      v29 = sub_100005C3C(v26, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unknown data type for refreshContent: %s", v25, 0xCu);
      sub_100005BE0(v30);
    }

    else
    {

      (*(v5 + 8))(v10, refreshed);
    }

    (*(v31 + 8))(v14, v32);
  }

  else
  {
    v16 = v15;
    sub_1001A6C04(&qword_1003B5FD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C33A0;
    *(inited + 32) = 7562345;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = a2;

    sub_1001A6C04(&unk_1003B6BD0);
    v18 = Dictionary.init(dictionaryLiteral:)();
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v18;
    aBlock[4] = sub_1001D080C;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C292C;
    aBlock[3] = &unk_10036B490;
    v21 = _Block_copy(aBlock);

    [v19 enumerateClientsUsingBlock:v21];
    _Block_release(v21);
  }
}

unint64_t sub_1001C1590()
{
  v1 = v0;
  refreshed = type metadata accessor for RefreshContentsDataType();
  v3 = *(refreshed - 8);
  __chkstk_darwin(refreshed);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, refreshed);
  v6 = (*(v3 + 88))(v5, refreshed);
  if (v6 == enum case for RefreshContentsDataType.achievements(_:))
  {
    v7 = 0;
    v8 = 8;
  }

  else if (v6 == enum case for RefreshContentsDataType.challengeDefinitions(_:))
  {
    v7 = 0;
    v8 = 24;
  }

  else if (v6 == enum case for RefreshContentsDataType.challenges(_:))
  {
    v7 = 0;
    v8 = 1;
  }

  else if (v6 == enum case for RefreshContentsDataType.leaderboards(_:))
  {
    v7 = 0;
    v8 = 9;
  }

  else
  {
    (*(v3 + 8))(v5, refreshed);
    v8 = 0;
    v7 = 1;
  }

  return v8 | (v7 << 32);
}

void sub_1001C1720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = sub_1001C1770(a4);

    sub_1001CEC1C(a3, v6, a1);
  }
}

uint64_t sub_1001C1770(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5FE0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    v30[0].n128_u64[0] = *v11;
    v30[0].n128_u64[1] = v12;

    swift_dynamicCast();
    sub_1001A6C04(&unk_1003B6BD0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100007B20(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100007B20(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_100007B20(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1001C1A38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5F68);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    v25[3] = sub_1001A7B44(0, &qword_1003B5F70);
    v25[4] = sub_1001CFA40(&qword_1003B5F78, &qword_1003B5F70);
    v25[0] = v14;
    sub_100007C98(v25, v27);
    sub_100007C98(v27, v28);
    sub_100007C98(v28, &v26);

    v15 = v14;
    result = sub_1001B247C(v13, v12);
    v16 = result;
    if (v17)
    {
      v18 = (v1[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;

      v19 = (v1[7] + 40 * v16);
      sub_100005BE0(v19);
      result = sub_100007C98(&v26, v19);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v1[6] + 16 * result);
      *v20 = v13;
      v20[1] = v12;
      result = sub_100007C98(&v26, (v1[7] + 40 * result));
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1001C1CBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5F48);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    v25[3] = sub_1001A7B44(0, &qword_1003B5F50);
    v25[4] = sub_1001CFA40(&qword_1003B5F58, &qword_1003B5F50);
    v25[0] = v14;
    sub_100007C98(v25, v27);
    sub_100007C98(v27, v28);
    sub_100007C98(v28, &v26);

    v15 = v14;
    result = sub_1001B247C(v13, v12);
    v16 = result;
    if (v17)
    {
      v18 = (v1[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;

      v19 = (v1[7] + 40 * v16);
      sub_100005BE0(v19);
      result = sub_100007C98(&v26, v19);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v1[6] + 16 * result);
      *v20 = v13;
      v20[1] = v12;
      result = sub_100007C98(&v26, (v1[7] + 40 * result));
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1001C1F40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5F20);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    v25[3] = sub_1001A7B44(0, &qword_1003B5F28);
    v25[4] = sub_1001CFA40(&qword_1003B5F30, &qword_1003B5F28);
    v25[0] = v14;
    sub_100007C98(v25, v27);
    sub_100007C98(v27, v28);
    sub_100007C98(v28, &v26);

    v15 = v14;
    result = sub_1001B247C(v13, v12);
    v16 = result;
    if (v17)
    {
      v18 = (v1[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;

      v19 = (v1[7] + 40 * v16);
      sub_100005BE0(v19);
      result = sub_100007C98(&v26, v19);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v1[6] + 16 * result);
      *v20 = v13;
      v20[1] = v12;
      result = sub_100007C98(&v26, (v1[7] + 40 * result));
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1001C21C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5F08);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);
    v25[3] = sub_1001A7B44(0, &unk_1003B6D90);
    v25[4] = sub_1001CFA40(&qword_1003B5F10, &unk_1003B6D90);
    v25[0] = v14;
    sub_100007C98(v25, v27);
    sub_100007C98(v27, v28);
    sub_100007C98(v28, &v26);

    v15 = v14;
    result = sub_1001B247C(v13, v12);
    v16 = result;
    if (v17)
    {
      v18 = (v1[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;

      v19 = (v1[7] + 40 * v16);
      sub_100005BE0(v19);
      result = sub_100007C98(&v26, v19);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v1[6] + 16 * result);
      *v20 = v13;
      v20[1] = v12;
      result = sub_100007C98(&v26, (v1[7] + 40 * result));
      v21 = v1[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v1[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1001C2448(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B5FE0);
    sub_1001B2FE0();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  sub_1001D1770();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v9 = v3 + 8;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = v12[1];
    v33[0].n128_u64[0] = *v12;
    v33[0].n128_u64[1] = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_100007B20(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_100007B20(v32, v33);
    AnyHashable._rawHashValue(seed:)(v3[5]);
    sub_1001D1904();
    if (((v16 << v15) & ~v9[v14]) == 0)
    {
      sub_1001D1B04();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (v9[v17] != -1)
        {
          sub_1001D1AF0();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_1001D1B18();
LABEL_18:
    v6 &= v6 - 1;
    sub_1001D1ADC();
    *(v9 + v21) |= v22;
    v24 = v3[6] + 40 * v23;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    sub_100007B20(v33, (v3[7] + 32 * v23));
    ++v3[2];
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v6 = *(v1 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1001C26A8(void *a1)
{
  if (a1[2])
  {
    sub_1001A6C04(&qword_1003B5FE0);
    sub_1001B2FE0();
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_1001D1770();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v9 = v3 + 8;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (a1[6] + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1001B2F38(a1[7] + 40 * v12, v44);
    v42 = v15;
    v43 = v14;
    v39 = v44[0];
    v40 = v44[1];
    v41 = v45;
    v29 = v15;
    v30 = v14;

    swift_dynamicCast();
    v27[0] = v39;
    v27[1] = v40;
    v28 = v41;
    swift_dynamicCast();
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_100007B20(v34, v38);
    v31 = v35;
    v32 = v36;
    v33 = v37;
    sub_100007B20(v38, v27);
    AnyHashable._rawHashValue(seed:)(v3[5]);
    sub_1001D1904();
    if (((v18 << v17) & ~v9[v16]) == 0)
    {
      sub_1001D1B04();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (v9[v19] != -1)
        {
          sub_1001D1AF0();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_1001D1B18();
LABEL_18:
    v6 &= v6 - 1;
    sub_1001D1ADC();
    *(v9 + v23) |= v24;
    v26 = v3[6] + 40 * v25;
    *v26 = v31;
    *(v26 + 16) = v32;
    *(v26 + 32) = v33;
    sub_100007B20(v27, (v3[7] + 32 * v25));
    ++v3[2];
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v6 = *(v1 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1001C292C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_1001C29C4()
{
  sub_100005528();
  result = [objc_opt_self() gameCenterClient];
  v0[3] = result;
  if (result)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1001C2A80;
    sub_1001D1934(v0[2]);

    return sub_1001B30A0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C2A80()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_1000046F8();

    return v10();
  }
}

uint64_t sub_1001C2B9C()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001C2BF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1001A6C04(&qword_1003B5FC8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1001A6C04(&qword_1003B5FD0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2D2C, 0, 0);
}

uint64_t sub_1001C2D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v12 = v10[8];
  v11 = v10[9];
  v13 = v10[7];
  GameActivityInstance.definitionRef.getter();
  Ref<A>.game.getter();
  (*(v12 + 8))(v11, v13);
  v15 = v10[5];
  v14 = v10[6];
  v16 = v10[4];
  Ref<A>.bundleID.getter();
  v10[10] = v17;
  (*(v15 + 8))(v14, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v10[11] = Strong;
  if (Strong)
  {
    v28 = swift_task_alloc();
    v10[12] = v28;
    *v28 = v10;
    v28[1] = sub_1001C2F10;
    sub_1001D1934(v10[2]);
    sub_1001D185C();

    return sub_1001B567C();
  }

  else
  {

    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v30, v31);
    sub_1001D1528();
    sub_1001D162C();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();

    sub_1001D1598();
    sub_1001D185C();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_1001C2F10()
{
  sub_1000057FC();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 88);

    sub_1001B69F0();

    return v11();
  }
}

uint64_t sub_1001C3054()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

void sub_1001C30CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() shared];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    sub_1001CECB0(a1, a2, v6);

    sub_1001C3164(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001C3164(void *a1)
{
  [a1 forcePrivacyNotice];
  [a1 forceDefaultPrivacy];
  [a1 forceDefaultNickname];
  [a1 forceDefaultContactsIntegrationConsent];
  [a1 forceGamesPrivacyNotice];
  [a1 forceGamesCrossUseNotice];
  ForcedOnboardingState.init(gdprPrivacyAccepted:gdprPrivacyNotice:defaultPrivacy:defaultNickname:defaultContactsIntegrationConsent:gamesPrivacyNotice:gamesCrossUseNotice:)();
}

id sub_1001C3254()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong wasAppBackgrounded];
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t sub_1001C3334(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = *(type metadata accessor for DaemonGameServicesSupport(0) - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_1001A6C04(&qword_1003B6260);
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v3[13] = *(v7 + 64);
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for PrivacyVersions();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v3[17] = *(v9 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[20] = v10;
  v3[21] = *(v10 - 8);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001C3594, 0, 0);
}

uint64_t sub_1001C3594()
{
  Ref<A>.internalID.getter();
  v3 = objc_opt_self();
  sub_1001ACA00();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 lastPrivacyNoticeVersionDisplayedForPlayerID:v4];

  if (v5 != -1 && (v5 & 0x8000000000000000) != 0)
  {
    static Loggers.service.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Ignoring invalid cached privacy notice version as it is out of range.", v8, 2u);
      sub_1000043D8();
    }

    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];

    (*(v10 + 8))(v9, v11);
  }

  v12 = sub_1001ACA00();
  sub_1001CECF8(v12, v13, v3);
  v14 = sub_1001ACA00();
  sub_1001CED40(v14, v15, v3);
  PrivacyVersions.init(gdpr:gamesPrivacy:gamesCrossUse:)();
  sub_1001ACA00();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v3 lastLinkedDSIDForPlayerID:v16];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v42 = v0[19];
    v50 = v5 == -1;
    v51 = v0[18];
    v45 = v0[17];
    v20 = v0[15];
    v21 = v0[16];
    v22 = v0[14];
    v40 = v22;
    v43 = v0[13];
    v23 = v0[11];
    v24 = v0[12];
    v52 = v0[10];
    v44 = v0[9];
    v41 = v0[8];
    v46 = v17;
    v47 = v0[6];
    v48 = v0[5];
    v49 = v0[7];
    v25 = v0[3];
    sub_1001ACA00();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v19 managedObjectContextForPlayerID:v26];
    v0[23] = v27;

    (*(v24 + 16))(v22, v25, v23);
    sub_1000056D0();
    (*(v21 + 16))(v51, v42, v20);
    v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v29 = (v43 + *(v41 + 80) + v28) & ~*(v41 + 80);
    v30 = (v44 + *(v21 + 80) + v29) & ~*(v21 + 80);
    v31 = swift_allocObject();
    v0[24] = v31;
    *(v31 + 16) = v27;
    (*(v24 + 32))(v31 + v28, v40, v23);
    sub_1000055B8(v52, v31 + v29);
    (*(v21 + 32))(v31 + v30, v51, v20);
    *(v31 + v30 + v45) = v50;
    *(v31 + ((v30 + v45) & 0xFFFFFFFFFFFFFFF8) + 8) = v46;
    (*(v47 + 104))(v49, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v48);
    v32 = v27;
    sub_1001D1704();
    v33 = swift_task_alloc();
    v0[25] = v33;
    v34 = type metadata accessor for OnboardingState();
    *v33 = v0;
    v33[1] = sub_1001C3ABC;
    v35 = v0[7];
    v36 = v0[2];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v36, v35, sub_1001D06B0, v31, v34);
  }

  else
  {
    v37 = v0[16];

    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v38, v39);
    sub_1001D1528();
    sub_1001D1638();
    sub_1001D1824();
    swift_willThrow();
    (*(v37 + 8))(v0[19], v0[15]);
    sub_1001D1A2C();

    sub_1000046F8();

    return v1();
  }
}

uint64_t sub_1001C3ABC()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v1;
  sub_100004410();
  *v9 = v8;
  *(v10 + 208) = v0;

  (*(v6 + 8))(v5, v7);

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001C3C2C()
{
  sub_100005838();
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  (*(v3 + 8))(v1, v2);

  sub_1001B69F0();

  return v4();
}

uint64_t sub_1001C3CF8()
{
  sub_1001D19CC();
  sub_1001AFA50();

  (*(*(v0 + 128) + 8))(*(v0 + 152), *(v0 + 120));
  sub_1001D1A2C();

  sub_1000046F8();
  sub_1001D19B8();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1001C3DA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a6;
  v21[1] = a5;
  v26 = a4;
  v24 = a2;
  v25 = a3;
  v22 = a7;
  v8 = type metadata accessor for ForcedOnboardingState();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for PrivacyVersions();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = sub_1001A6C04(&qword_1003B6260);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  v18 = [objc_opt_self() localPlayerInManagedObjectContext:a1];
  if (v18)
  {
    v19 = v18;
    (*(v15 + 16))(v17, v24, v14);
    type metadata accessor for DaemonGameServicesSupport(0);
    GameServicesEnvironment.currentPrivacyVersions.getter();
    (*(v10 + 16))(v13, v26, v9);
    v20 = [objc_opt_self() shared];
    if (v20)
    {
      sub_1001C3164(v20);
      [v19 defaultNickname];
      [v19 defaultPrivacyVisibility];
      [v19 defaultPrivacyVisibility];
      OnboardingState.init(player:currentPrivacyVersions:savedPrivacyVersions:forceOnboardingState:isDefaultNickname:isDefaultContactsIntegrationConsent:isDefaultPrivacyVisibility:linkedDSID:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();
  }
}

uint64_t sub_1001C40FC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for OnboardingState();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[12] = v7;
  *v7 = v3;
  v7[1] = sub_1001C4250;

  return sub_1001BAEC4();
}

uint64_t sub_1001C4250()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001C4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  if (v12[14])
  {
    v13 = v12[4];
    v14 = PrivacyVersions.gdpr.getter();
    v16 = v15;
    v17 = PrivacyVersions.gamesPrivacy.getter();
    v19 = v18;
    v20 = PrivacyVersions.gamesCrossUse.getter();
    v22 = v21;
    v23 = OnboardingState.linkedDSID.getter();
    v25 = v24;
    v26 = swift_task_alloc();
    v12[15] = v26;
    *(v26 + 16) = v13;
    *(v26 + 24) = v14;
    *(v26 + 32) = v16 & 1;
    *(v26 + 40) = v17;
    *(v26 + 48) = v19 & 1;
    *(v26 + 56) = v20;
    *(v26 + 64) = v22 & 1;
    *(v26 + 72) = v23;
    *(v26 + 80) = v25 & 1;
    v27 = swift_task_alloc();
    v12[16] = v27;
    *v27 = v12;
    v27[1] = sub_1001C4524;
    sub_100006084();

    return sub_1001BB308();
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v30, v31);
    sub_1001D1528();
    *v32 = 0xD000000000000034;
    v32[1] = 0x800000010030A110;
    sub_100005534();
    (*(v33 + 104))();
    swift_willThrow();

    sub_1001D1598();
    sub_100006084();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }
}

uint64_t sub_1001C4524()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[17] = v0;

  if (v1)
  {
    v4[24] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[18] = v11;
    *v11 = v6;
    v11[1] = sub_1001C4694;
    sub_1001D18A4();

    return sub_1001C6078(v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1001C4694()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C478C()
{
  sub_1001D1988();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v19, v20);
    sub_1001D1528();
    sub_1001D1638();
    sub_1001D1824();
    swift_willThrow();

    sub_1000046F8();
    sub_100005B0C();

    __asm { BRAA            X1, X16 }
  }

  v2 = Strong;
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v24 = *(v0 + 40);
  v25 = *(v0 + 56);
  v7 = *(v0 + 24);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v2 managedObjectContextForPlayerID:v8];
  *(v0 + 160) = v9;

  (*(v4 + 16))(v3, v7, v5);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 168) = v11;
  *(v11 + 16) = v9;
  (*(v4 + 32))(v11 + v10, v3, v5);
  (*(v6 + 104))(v25, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v24);
  v12 = v9;
  sub_1001D1704();
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_1001C4A0C;
  sub_100005B0C();

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, v16, v17, v18);
}

uint64_t sub_1001C4A0C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v1;
  sub_100004410();
  *v9 = v8;
  *(v10 + 184) = v0;

  (*(v6 + 8))(v5, v7);

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001C4B7C()
{
  sub_100005528();

  *(v0 + 192) = *(v0 + 152);
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001C4BE0()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C4C58()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001C4CC8()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

void sub_1001C4D38(void *a1)
{
  v2 = [objc_opt_self() localPlayerInManagedObjectContext:a1];
  if (v2)
  {
    v3 = v2;
    [v2 setDefaultNickname:OnboardingState.isDefaultNickname.getter() & 1];
    [v3 setDefaultPrivacyVisibility:OnboardingState.isDefaultPrivacyVisibility.getter() & 1];
    [v3 setDefaultContactsIntegrationConsent:OnboardingState.isDefaultContactsIntegrationConsent.getter() & 1];
    [a1 _gkSafeSave];
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();
  }
}

uint64_t sub_1001C4E74(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C4E94, 0, 0);
}

uint64_t sub_1001C4E94()
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v1 = v0[3];
  v2 = ProfileSettings.gdprVersion.getter();
  v4 = v3;
  v5 = ProfileSettings.gamesPrivacyVersion.getter();
  v7 = v6;
  v8 = ProfileSettings.gamesCrossUseVersion.getter();
  v10 = v9;
  v11 = ProfileSettings.linkedDSID.getter();
  v13 = v12;
  v14 = swift_task_alloc();
  v0[4] = v14;
  *(v14 + 16) = v1;
  *(v14 + 24) = v2;
  *(v14 + 32) = v4 & 1;
  *(v14 + 40) = v5;
  *(v14 + 48) = v7 & 1;
  *(v14 + 56) = v8;
  *(v14 + 64) = v10 & 1;
  *(v14 + 72) = v11;
  *(v14 + 80) = v13 & 1;
  v15 = swift_task_alloc();
  v0[5] = v15;
  *v15 = v0;
  sub_1001D180C(v15);
  sub_100006084();

  return sub_1001BB308();
}

uint64_t sub_1001C4F94()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[6] = v0;

  if (v1)
  {
    v4[9] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[7] = v11;
    *v11 = v6;
    v11[1] = sub_1001C5100;
    sub_1001D18A4();

    return sub_1001C6078(v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1001C5100()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C51F8()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001C525C()
{
  sub_100005528();

  *(v0 + 72) = *(v0 + 64);
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001C52C0()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 99) = v15;
  *(v8 + 56) = v12;
  *(v8 + 64) = v14;
  *(v8 + 98) = v13;
  *(v8 + 97) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 96) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = type metadata accessor for Logger();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1001C540C, 0, 0);
}

uint64_t sub_1001C540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  if (swift_unknownObjectWeakLoadStrong() && (v12 = *(v10 + 16), v11 = *(v10 + 24), sub_1001A7B44(0, &qword_1003B5FB8), v13 = v12, v14 = v11, sub_1001B6ACC(), (v15 = sub_1001CA78C()) != 0))
  {
    v16 = v15;
    if ((*(v10 + 96) & 1) == 0)
    {
      if ((*(v10 + 40) & 0x8000000000000000) != 0)
      {
        static Loggers.service.getter();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        v21 = os_log_type_enabled(v19, v20);
        v23 = *(v10 + 80);
        v22 = *(v10 + 88);
        v24 = *(v10 + 72);
        if (v21)
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to set privacy notice to an invalid value. Ignoring.", v25, 2u);
          sub_1000043D8();
        }

        (*(v23 + 8))(v22, v24);
      }

      else
      {
        [v15 setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:?];
      }
    }

    if ((*(v10 + 97) & 1) == 0)
    {
      [v16 setLastGamesPrivacyNoticeVersionDisplayedForSignedInPlayer:*(v10 + 48)];
    }

    if ((*(v10 + 98) & 1) == 0)
    {
      [v16 setLastGamesCrossUseConsentNoticeVersionDisplayedForSignedInPlayer:*(v10 + 56)];
    }

    if ((*(v10 + 99) & 1) == 0)
    {
      [v16 setCrossUseLinkedDSIDForSignedInPlayer:*(v10 + 64)];
    }

    sub_1001B69F0();
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v17, v18);
    sub_1001D160C();
    sub_1001D1BEC();
    swift_willThrow();

    sub_1001D1598();
  }

  sub_1001D185C();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1001C5670()
{
  sub_100005528();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1001C5710;

  return sub_1001BB308();
}

uint64_t sub_1001C5710()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;
  v4[5] = v0;

  if (v1)
  {
    v4[8] = v1;
    v8 = sub_1001D14E4();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v4[6] = v11;
    *v11 = v6;
    v11[1] = sub_1001C587C;
    sub_1001D18A4();

    return sub_1001C6078(v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1001C587C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C5974()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001C59D8()
{
  sub_100005528();

  *(v0 + 64) = *(v0 + 56);
  v1 = sub_10000448C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001C5A3C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C5A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  return _swift_task_switch(sub_1001C5ABC, 0, 0);
}

uint64_t sub_1001C5ABC()
{
  sub_100006B50();
  sub_1001AFA50();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = v0[8], v1 = v0[9], sub_1001A7B44(0, &qword_1003B5FB0), v3 = v2, v4 = v1, (v5 = sub_1001D15A8()) != 0))
  {
    v6 = v5;
    v0[6] = sub_1001C5C50;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1001AA95C;
    v0[5] = &unk_10036B3F0;
    v7 = _Block_copy(v0 + 2);
    [v6 invalidateCachedProfileForLocalPlayerWithHandler:v7];
    _Block_release(v7);

    sub_1001B69F0();
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v8, v9);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
  }

  sub_1001D18C4();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1001C5C50()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Loggers.service.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished invalidating profile for local player", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1001C5D84(uint64_t a1, void *a2)
{
  v4 = sub_1001A6C04(&qword_1003B6048);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1001D0D00;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5FD8;
  aBlock[3] = &unk_10036B5F8;
  v11 = _Block_copy(aBlock);

  [a2 listGameKitDirectoriesForBundleID:v8 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1001C5F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6048);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_1001A6C04(&qword_1003B6048);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001C5FD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for URL();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1001C6078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001C60A0, 0, 0);
}

id sub_1001C60A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  sub_1001D1454();
  v15 = [v14 storeBag];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001D1688();
    sub_1001A7B44(0, &qword_1003B5EF8);
    v16 = v12;
    v17 = sub_1001D1578();
    *(v11 + 56) = v17;
    if (v17)
    {
      sub_1001D13B4();
      v40 = v18;
      v19 = swift_task_alloc();
      v20 = sub_1001D1518(v19);
      *v20 = v21;
      sub_1001D1650(v20);
      sub_1001D1508();
      sub_1001D18D8();

      return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v40);
    }
  }

  else
  {

    sub_1001D167C();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v30, v31);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18D8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1001C6274()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1001C6390, 0, 0);
}

id sub_1001C6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  sub_1001D1454();
  v15 = [v14 storeBag];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001D1688();
    sub_1001A7B44(0, &qword_1003B5EF8);
    v16 = v12;
    v17 = sub_1001D1578();
    *(v11 + 56) = v17;
    if (v17)
    {
      sub_1001D13B4();
      v40 = v18;
      v19 = swift_task_alloc();
      v20 = sub_1001D1518(v19);
      *v20 = v21;
      sub_1001D1434(v20);
      sub_1001D18D8();

      return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v40);
    }
  }

  else
  {

    sub_1001D167C();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v30, v31);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18D8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1001C655C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001C667C, 0, 0);
}

id sub_1001C667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  sub_1001D1454();
  v15 = [v14 storeBag];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001D1688();
    sub_1001A7B44(0, &qword_1003B5EF8);
    v16 = v12;
    v17 = sub_1001D1578();
    *(v11 + 56) = v17;
    if (v17)
    {
      sub_1001D13B4();
      v40 = v18;
      v19 = swift_task_alloc();
      v20 = sub_1001D1518(v19);
      *v20 = v21;
      sub_1001D1650(v20);
      sub_1001D1508();
      sub_1001D18D8();

      return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v40);
    }
  }

  else
  {

    sub_1001D167C();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v30, v31);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18D8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1001C6850()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C6948()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001C69A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1001C69C8, 0, 0);
}

id sub_1001C69C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  sub_1001D1454();
  v15 = [v14 storeBag];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001D1688();
    sub_1001A7B44(0, &qword_1003B5EF8);
    v16 = v12;
    v17 = sub_1001D1578();
    *(v11 + 56) = v17;
    if (v17)
    {
      sub_1001D13B4();
      v40 = v18;
      v19 = swift_task_alloc();
      v20 = sub_1001D1518(v19);
      *v20 = v21;
      sub_1001D1434(v20);
      sub_1001D18D8();

      return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v40);
    }
  }

  else
  {

    sub_1001D167C();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v30, v31);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18D8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_1001C6B94()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C6C8C()
{
  sub_100005528();
  v1 = *(v0 + 16);

  sub_1001D17DC();

  return v2(v1);
}

uint64_t sub_1001C6CF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001C6D14, 0, 0);
}

uint64_t sub_1001C6D14()
{
  sub_1000057FC();
  v2 = *(v1 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1001D1A08(v3);
  *(v1 + 48) = v4;
  v4[2] = v2;
  v4[3] = &unk_1002C3FB0;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v6 = sub_1001D188C(v5);
  *v6 = v7;
  v6[1] = sub_1001C6DF0;

  return sub_1001BE588(&unk_1002C3FB8, v4);
}

uint64_t sub_1001C6DF0()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001C6F20()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1001C6FAC, 0, 0);
}

uint64_t sub_1001C6FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  if (sub_1001D1AB8())
  {
    sub_1001D19AC();
    sub_1001A7B44(0, &qword_1003B5C08);
    v13 = v12;
    v14 = v10;
    v15 = sub_1001D15A8();
    *(v11 + 64) = v15;
    if (v15)
    {
      v16 = v15;
      v17 = swift_task_alloc();
      *(v11 + 72) = v17;
      sub_1001D1B2C(v17, v18, v19, v20, v21, v22, v23, v24, v25);
      v26 = swift_task_alloc();
      sub_1001D1BA4(v26);
      sub_1001A6C04(&qword_1003B5FA0);
      sub_1001D15D8();
      *v16 = v27;
      sub_1001D1800();
      sub_1001D15C8();
      sub_1001D18D8();

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  else
  {
    sub_1001D17F4();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v37, v38);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18D8();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1001C7174()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1001C7274(uint64_t a1, void *a2)
{
  v14 = a1;
  v15 = a2;
  v2 = sub_1001A6C04(&qword_1003B5FA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for DaemonGameServicesSupport(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = String._bridgeToObjectiveC()();
  sub_1000056D0();
  (*(v3 + 16))(v5, v14, v2);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1000055B8(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  (*(v3 + 32))(v12 + v11, v5, v2);
  aBlock[4] = sub_1001D0408;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C77BC;
  aBlock[3] = &unk_10036B3C8;
  v13 = _Block_copy(aBlock);

  [v15 getGamesPlayedSummaries:v9 limit:0 withinSecs:0 handler:v13];
  _Block_release(v13);
}

uint64_t sub_1001C7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for Logger();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043B4();
  v13 = v12 - v11;
  if (*(a1 + 16))
  {
    if (a2)
    {
      swift_errorRetain();
      static GKLog.library.getter();
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Received both results and an error while fetching library contents. Proceeding with the results. Error: %@", v16, 0xCu);
        sub_1001B2DDC(v17, &unk_1003B6180);
        sub_1000043D8();
        sub_1000043D8();
      }

      else
      {
      }

      (*(v9 + 8))(v13, v7);
    }
  }

  else if (a2)
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v19, v20);
    sub_1001D1528();
    *v21 = a2;
    sub_100005534();
    (*(v22 + 104))();
    swift_errorRetain();
    sub_1001A6C04(a4);
    return CheckedContinuation.resume(throwing:)();
  }

  sub_1001A6C04(a4);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001C77D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C77F0, 0, 0);
}

uint64_t sub_1001C77F0()
{
  sub_1000057FC();
  v3 = sub_1001D1A88();
  v4 = sub_1001D165C(v3);
  v5 = sub_1001D1818(v4);
  v5[2] = v2;
  v5[3] = &unk_1002C3F60;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v7 = sub_1001D1880(v6);
  *v7 = v8;
  sub_1001D180C(v7);

  return sub_1001BE588(&unk_1002C3F70, v0);
}

uint64_t sub_1001C78B8()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001C79E8()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C7A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1001C7A74, 0, 0);
}

uint64_t sub_1001C7A74()
{
  sub_100006B50();
  sub_1001AFA50();
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v0 + 24), v1 = *(v0 + 32), sub_1001A7B44(0, &qword_1003B5C08), v3 = v2, v4 = v1, sub_1001B6ACC(), v5 = sub_1001CA78C(), (*(v0 + 56) = v5) != 0))
  {
    v6 = v5;
    v7 = swift_task_alloc();
    v8 = sub_1001D1BB0(v7);
    v9 = *(v0 + 40);
    *(v8 + 16) = v6;
    *(v8 + 24) = vextq_s8(v9, v9, 8uLL);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    sub_1001A6C04(&qword_1003B5F90);
    sub_1001D15D8();
    *v10 = v11;
    sub_1001D1800();
    sub_1001D15C8();
    sub_1001D18C4();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v21, v22);
    sub_1001D160C();
    sub_1001D162C();
    static GameServicesError.illegalState(message:)();
    swift_willThrow();
    sub_1001D1598();
    sub_1001D18C4();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1001C7C6C()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001C7D6C()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001C7DC4()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

void sub_1001C7E28(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a1;
  v17 = a2;
  v4 = sub_1001A6C04(&qword_1003B5F98);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DaemonGameServicesSupport(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100278F0C(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1000056D0();
  (*(v5 + 16))(v7, v16, v4);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1000055B8(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  (*(v5 + 32))(v14 + v13, v7, v4);
  aBlock[4] = sub_1001D01D4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BAD60;
  aBlock[3] = &unk_10036B378;
  v15 = _Block_copy(aBlock);

  [v17 getGameMetadataForBundleIDs:isa handler:v15];
  _Block_release(v15);
}

uint64_t sub_1001C80C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = a5();
  sub_1001C7504(v9, a2, a4, a6);
}

uint64_t sub_1001C813C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1001C8160, 0, 0);
}

uint64_t sub_1001C8160()
{
  sub_1000057FC();
  v2 = *(v1 + 32);
  v3 = swift_task_alloc();
  v4 = sub_1001D1A08(v3);
  *(v1 + 48) = v4;
  v4[2] = v2;
  v4[3] = &unk_1002C3F20;
  v4[4] = v0;
  v5 = swift_task_alloc();
  v6 = sub_1001D188C(v5);
  *v6 = v7;
  v6[1] = sub_1001C823C;

  return sub_1001BE588(&unk_1002C3F30, v4);
}

uint64_t sub_1001C823C()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001C836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return _swift_task_switch(sub_1001C8394, 0, 0);
}

uint64_t sub_1001C8394()
{
  sub_100006B50();
  sub_1001AFA50();
  if (sub_1001D1754())
  {
    sub_1001D1898();
    sub_1001A7B44(0, &qword_1003B5C08);
    v4 = v3;
    v5 = v1;
    v6 = sub_1001D15A8();
    v2[25] = v6;
    if (v6)
    {
      sub_1001D17B8();
      String._bridgeToObjectiveC()();
      sub_1001D1958();
      v2[26] = v7;
      v2[2] = v8;
      sub_1001D18EC();
      sub_1001D1840();
      v9 = sub_1001A6C04(&qword_1003B5F80);
      sub_1001D1468(v9);
      sub_1001D17E8(COERCE_DOUBLE(1107296256));
      sub_1001D1AD0();
      [v1 readGamesPlayedSummaries:v3 limit:0 withCompletion:v0];
      sub_1001D18C4();

      return _swift_continuation_await(v10);
    }
  }

  else
  {
    sub_1001D17F4();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v12, v13);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18C4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1001C8550()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C864C()
{
  sub_100006B50();
  sub_1001AFA50();
  v3 = v1[25];
  v2 = v1[26];
  v4 = v1[19];
  sub_10027900C();
  sub_1001D1704();

  *v4 = v0;
  sub_1001B69F0();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001C86C8()
{
  sub_1000057FC();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  swift_willThrow();

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001C8738(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    return sub_1001BAD74();
  }

  else
  {
    sub_1001A7B44(0, &qword_1003B5F88);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    return sub_1001BFD00(v4, v7, &_swift_continuation_throwingResume);
  }
}

uint64_t sub_1001C87D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C87F0, 0, 0);
}

uint64_t sub_1001C87F0()
{
  sub_1000057FC();
  v3 = sub_1001D1A88();
  v4 = sub_1001D165C(v3);
  v5 = sub_1001D1818(v4);
  v5[2] = v2;
  v5[3] = &unk_1002C3ED8;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v7 = sub_1001D1880(v6);
  *v7 = v8;
  sub_1001D180C(v7);

  return sub_1001BE880(&unk_1002C3EE8, v0);
}

uint64_t sub_1001C88B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1001C88E0, 0, 0);
}

uint64_t sub_1001C88E0()
{
  sub_100006B50();
  sub_1001AFA50();
  if (sub_1001D1754())
  {
    sub_1001D1898();
    sub_1001A7B44(0, &qword_1003B5C08);
    v4 = v3;
    v5 = v1;
    v6 = sub_1001D15A8();
    v2[24] = v6;
    if (v6)
    {
      sub_1001D17B8();
      Array._bridgeToObjectiveC()();
      sub_1001D1958();
      v2[25] = v7;
      v2[2] = v8;
      sub_1001D18EC();
      sub_1001D1840();
      v9 = sub_1001A6C04(&qword_1003B5F60);
      sub_1001D1468(v9);
      sub_1001D17E8(COERCE_DOUBLE(1107296256));
      sub_1001D1AD0();
      [v1 readGameMetadataForBundleIDs:v3 withCompletion:v0];
      sub_1001D18C4();

      return _swift_continuation_await(v10);
    }
  }

  else
  {
    sub_1001D17F4();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v12, v13);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18C4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1001C8AA0()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C8B9C()
{
  sub_100006B50();
  sub_1001AFA50();
  v4 = sub_1001D18B4();
  sub_1001C1A38(v4);
  sub_1001D1704();

  *v3 = v0;
  sub_1001B69F0();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001C8C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 88) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_1001C8C50, 0, 0);
}

uint64_t sub_1001C8C50()
{
  sub_1000057FC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v5 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v2;
  v6 = swift_task_alloc();
  v7 = sub_1001D1BB0(v6);
  v7[2] = v1;
  v7[3] = &unk_1002C3E90;
  v7[4] = v3;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  sub_1001D1650(v8);

  return sub_1001BE588(&unk_1002C3EA0, v2);
}

uint64_t sub_1001C8D48()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001C8E78()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001C8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v10;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
  return _swift_task_switch(sub_1001C8F14, 0, 0);
}

uint64_t sub_1001C8F14()
{
  sub_1001D1988();
  if (!sub_1001D1754())
  {
    sub_1001D17F4();
LABEL_7:
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v12, v13);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
    sub_100005B0C();

    __asm { BRAA            X1, X16 }
  }

  sub_1001D1898();
  sub_1001A7B44(0, &qword_1003B5C08);
  v3 = v2;
  v4 = v0;
  v5 = sub_1001D15A8();
  v1[27].super.isa = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  AppMetadataTTL.rawValue.getter();
  AppMetadataEnvironment.rawValue.getter();
  v1[28].super.isa = Array._bridgeToObjectiveC()().super.isa;
  v1[29].super.isa = Array._bridgeToObjectiveC()().super.isa;
  v1[2].super.isa = v1;
  sub_1001D18EC();
  v1[3].super.isa = sub_1001C9148;
  v6 = swift_continuation_init();
  v7 = sub_1001A6C04(&qword_1003B5F40);
  sub_1001D16CC(v7);
  sub_1001D17E8(COERCE_DOUBLE(1107296256));
  v1[12].super.isa = sub_1001C933C;
  v1[13].super.isa = &unk_10036B2D8;
  v1[14].super.isa = v6;
  sub_1001D1964();
  [v8 v9];
  sub_100005B0C();

  return _swift_continuation_await(v10);
}

uint64_t sub_1001C9148()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C9244()
{
  sub_1001D19CC();
  sub_1001AFA50();
  v3 = v1[28];
  v2 = v1[29];
  v4 = v1[27];
  v5 = v1[19];
  sub_1001C1CBC(v1[18]);
  sub_1001D1704();

  *v5 = v0;
  sub_1001B69F0();
  sub_1001D19B8();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1001C92C8()
{
  sub_1001D1A74();
  sub_1001AFA50();
  v1 = v0[29];
  v3 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  sub_1000046F8();
  sub_1001D19F4();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001C9350(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v6 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    return sub_1001BAD74();
  }

  else
  {
    sub_1001A7B44(0, a4);
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    return sub_1001BFD00(v6, v9, &_swift_continuation_throwingResume);
  }
}

uint64_t sub_1001C9400(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C9420, 0, 0);
}

uint64_t sub_1001C9420()
{
  sub_1000057FC();
  v3 = sub_1001D1A88();
  v4 = sub_1001D165C(v3);
  v5 = sub_1001D1818(v4);
  v5[2] = v2;
  v5[3] = &unk_1002C3E50;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v7 = sub_1001D1880(v6);
  *v7 = v8;
  sub_1001D180C(v7);

  return sub_1001BE588(&unk_1002C3E60, v0);
}

uint64_t sub_1001C94E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1001C9510, 0, 0);
}

uint64_t sub_1001C9510()
{
  sub_100006B50();
  sub_1001AFA50();
  if (sub_1001D1754())
  {
    sub_1001D1898();
    sub_1001A7B44(0, &qword_1003B5C08);
    v4 = v3;
    v5 = v1;
    v6 = sub_1001D15A8();
    v2[24] = v6;
    if (v6)
    {
      sub_1001D17B8();
      Array._bridgeToObjectiveC()();
      sub_1001D1958();
      v2[25] = v7;
      v2[2] = v8;
      sub_1001D18EC();
      sub_1001D1840();
      v9 = sub_1001A6C04(&qword_1003B5F38);
      sub_1001D1468(v9);
      sub_1001D17E8(COERCE_DOUBLE(1107296256));
      sub_1001D1AD0();
      [v1 getAppRecentlyPlayedBiomeDataForBundleIDs:v3 withCompletion:v0];
      sub_1001D18C4();

      return _swift_continuation_await(v10);
    }
  }

  else
  {
    sub_1001D17F4();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v12, v13);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18C4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1001C96D0()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C97CC()
{
  sub_100005528();
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  *v2 = *(v0 + 144);
  sub_1001B69F0();

  return v3();
}

uint64_t sub_1001C9834(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    return sub_1001BAD74();
  }

  else
  {
    type metadata accessor for Date();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    return sub_1001BFD00(v4, v7, &_swift_continuation_throwingResume);
  }
}

uint64_t sub_1001C98CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C98EC, 0, 0);
}

uint64_t sub_1001C98EC()
{
  sub_1000057FC();
  v3 = sub_1001D1A88();
  v4 = sub_1001D165C(v3);
  v5 = sub_1001D1818(v4);
  v5[2] = v2;
  v5[3] = &unk_1002C3E08;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v7 = sub_1001D1880(v6);
  *v7 = v8;
  sub_1001D180C(v7);

  return sub_1001BE588(&unk_1002C3E18, v0);
}

uint64_t sub_1001C99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_1001C99DC, 0, 0);
}

uint64_t sub_1001C99DC()
{
  sub_100006B50();
  sub_1001AFA50();
  if (sub_1001D1754())
  {
    sub_1001D1898();
    sub_1001A7B44(0, &qword_1003B5C08);
    v3 = v2;
    v4 = v0;
    v5 = sub_1001D15A8();
    v1[24].super.isa = v5;
    if (v5)
    {
      v6 = v5;
      if (v1[23].super.isa)
      {
        v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v7.super.isa = 0;
      }

      v1[25].super.isa = v7.super.isa;
      v1[2].super.isa = v1;
      sub_1001D18EC();
      v1[3].super.isa = sub_1001C9BC4;
      swift_continuation_init();
      v19 = sub_1001A6C04(&qword_1003B5F18);
      sub_1001D16CC(v19);
      sub_1001D17E8(COERCE_DOUBLE(1107296256));
      sub_1001D1AD0();
      [(objc_class *)v6 getGamePoliciesForBundleIDs:v7.super.isa withCompletion:&v1[10]];
      sub_1001D18C4();

      return _swift_continuation_await(v20);
    }
  }

  else
  {
    sub_1001D17F4();
  }

  type metadata accessor for GameServicesError();
  sub_100004474();
  sub_100005624(v8, v9);
  sub_1001D1528();
  sub_1001D1558();
  swift_willThrow();
  sub_1000046F8();
  sub_1001D18C4();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1001C9BC4()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001C9CC0()
{
  sub_100006B50();
  sub_1001AFA50();
  v4 = sub_1001D18B4();
  sub_1001C1F40(v4);
  sub_1001D1704();

  *v3 = v0;
  sub_1001B69F0();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001C9D34()
{
  sub_1000057FC();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  swift_willThrow();

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001C9DB8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_1001C9DDC, 0, 0);
}

uint64_t sub_1001C9DDC()
{
  sub_1000057FC();
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  v6 = sub_1001D1818(v5);
  v6[2] = v2;
  v6[3] = &unk_1002C3DA0;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v8 = sub_1001D1880(v7);
  *v8 = v9;
  sub_1001D180C(v8);

  return sub_1001BE588(&unk_1002C3DB0, v1);
}

uint64_t sub_1001C9EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 216) = a6;
  *(v6 + 176) = a4;
  *(v6 + 184) = a5;
  *(v6 + 160) = a2;
  *(v6 + 168) = a3;
  *(v6 + 152) = a1;
  return _swift_task_switch(sub_1001C9EF0, 0, 0);
}

uint64_t sub_1001C9EF0()
{
  sub_100005838();
  if (!sub_1001D1754())
  {
    sub_1001D17F4();
LABEL_7:
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v13, v14);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
    sub_1001D1A5C();

    __asm { BRAA            X1, X16 }
  }

  sub_1001D1898();
  sub_1001A7B44(0, &qword_1003B5C08);
  v3 = v2;
  v4 = v0;
  v5 = sub_1001D15A8();
  *(v1 + 192) = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v1 + 216);
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v1 + 200) = isa;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  v9 = sub_1001D1840();
  v10 = sub_1001A6C04(&qword_1003B5F00);
  sub_1001D1468(v10);
  sub_1001D17E8(COERCE_DOUBLE(1107296256));
  *(v1 + 96) = sub_1001CA248;
  *(v1 + 104) = &unk_10036B260;
  *(v1 + 112) = v9;
  [v6 getInstallMetadataForBundleIDs:isa deleteNonmatchingCachedEntries:v7 withCompletion:v1 + 80];
  sub_1001D1A5C();

  return _swift_continuation_await(v11);
}

uint64_t sub_1001CA0D8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001CA1D4()
{
  sub_100006B50();
  sub_1001AFA50();
  v4 = sub_1001D18B4();
  sub_1001C21C4(v4);
  sub_1001D1704();

  *v3 = v0;
  sub_1001B69F0();
  sub_1001D18C4();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1001CA25C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 112) = a3;
  *(v4 + 48) = a1;
  return _swift_task_switch(sub_1001CA284, 0, 0);
}

uint64_t sub_1001CA284()
{
  sub_100006B50();
  sub_1001AFA50();
  *(v0 + 16) = *(v0 + 48);
  sub_1001A6C04(&qword_1003B5D10);
  Optional.notNilOrThrow.getter();
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  v6 = sub_1001D1BA4(v5);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v7[2] = v1;
  v7[3] = &unk_1002C4210;
  v7[4] = v0 + 16;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_1001CA3E4;
  sub_1001D18C4();

  return sub_1001BE588(v9, v10);
}

uint64_t sub_1001CA3E4()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001CA520()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001CA590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 96) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_1001CA5BC, 0, 0);
}

uint64_t sub_1001CA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  if (sub_1001D1AB8() && (sub_1001D19AC(), sub_1001A7B44(0, &qword_1003B6068), v13 = v12, v14 = v10, v15 = sub_1001D15A8(), (*(v11 + 64) = v15) != 0))
  {
    v16 = v15;
    v17 = *(v11 + 96);
    v19 = *(v11 + 48);
    v18 = *(v11 + 56);
    v20 = swift_task_alloc();
    *(v11 + 72) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v21 = swift_task_alloc();
    sub_1001D1BA4(v21);
    sub_1001A6C04(&unk_1003B6BD0);
    sub_1001D15D8();
    *v16 = v22;
    sub_1001D1800();
    sub_1001D15C8();
    sub_1001D185C();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v32, v33);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
    sub_1001D185C();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
  }
}

id sub_1001CA78C()
{
  sub_1001D1B6C();
  v4 = [swift_getObjCClassFromMetadata() *v0];

  return v4;
}

void sub_1001CA7F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = sub_1001A6C04(&qword_1003B6070);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = [objc_allocWithZone(GKPlayerInternal) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setPlayerID:v13];

  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_1001D1044;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BCB40;
  aBlock[3] = &unk_10036B698;
  v16 = _Block_copy(aBlock);

  [a4 getFriendsForPlayer:v12 fetchOptions:1 withFilter:(a5 & 1) == 0 handler:v16];

  _Block_release(v16);
}

void sub_1001CAA10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    *v4 = a2;
    (*(*(v3 - 8) + 104))(v4, enum case for GameServicesError.internalError(_:), v3);
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6070);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  v6 = sub_1001E6E2C(a1);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  sub_1001B16C8(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v10 playerID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001B16C8(v15 > 1, v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
    }

    while (v7 != v8);
LABEL_12:
    sub_1001A6C04(&qword_1003B6070);
    CheckedContinuation.resume(returning:)();
    return;
  }

  __break(1u);
}

uint64_t sub_1001CAC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1001CAC68, 0, 0);
}

uint64_t sub_1001CAC68()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v2;
  v6[3] = &unk_1002C41C0;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1001CAD5C;
  sub_1001D18C4();

  return sub_1001BE588(v8, v9);
}

uint64_t sub_1001CAD5C()
{
  sub_1000057FC();
  sub_1001D1548();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = sub_1001D1488();

    return v11(v10);
  }
}

uint64_t sub_1001CAE8C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001CAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1001CAF1C, 0, 0);
}

uint64_t sub_1001CAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D19E0();
  sub_100005838();
  if (sub_1001D1AB8() && (sub_1001D19AC(), sub_1001A7B44(0, &qword_1003B5FB0), v13 = v12, v14 = v10, v15 = sub_1001D15A8(), (v11[9] = v15) != 0))
  {
    v16 = swift_task_alloc();
    v11[10] = v16;
    sub_1001D1B2C(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = swift_task_alloc();
    v11[11] = v25;
    sub_1001A6C04(&qword_1003B6050);
    sub_1001D15D8();
    *v25 = v26;
    sub_1001D1800();
    sub_1001D15C8();
    sub_1001D18D8();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    type metadata accessor for GameServicesError();
    sub_100004474();
    sub_100005624(v36, v37);
    sub_1001D1528();
    sub_1001D1558();
    swift_willThrow();
    sub_1000046F8();
    sub_1001D18D8();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
  }
}

uint64_t sub_1001CB0EC()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001CB1EC()
{
  sub_100005528();

  sub_1001B69F0();

  return v1();
}

uint64_t sub_1001CB244()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

void sub_1001CB2A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001A6C04(&qword_1003B6058);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = aBlock - v11;
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_1001A6C04(&qword_1003B5B98);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002C33A0;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_1001D0E60;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CB5EC;
  aBlock[3] = &unk_10036B648;
  v17 = _Block_copy(aBlock);

  sub_1001CED88(isa, v14, v17, a2);
  _Block_release(v17);
}

uint64_t sub_1001CB4C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = type metadata accessor for GameServicesError();
    sub_100005624(&qword_1003B5BE8, &type metadata accessor for GameServicesError);
    swift_allocError();
    *v4 = a2;
    (*(*(v3 - 8) + 104))(v4, enum case for GameServicesError.internalError(_:), v3);
    swift_errorRetain();
    sub_1001A6C04(&qword_1003B6058);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100279324();
    sub_1001A6C04(&qword_1003B6058);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001CB600(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for InternalPlayerIDProvider();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B5EC8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[19] = v4;
  *v4 = v2;
  v4[1] = sub_1001CB730;

  return sub_1001C03A4();
}

uint64_t sub_1001CB730()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001CB818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_1001BAC30();

  v11 = type metadata accessor for DaemonGameServicesSupport(0);
  v10[5] = v11;
  v10[6] = sub_100005624(&qword_1003B5ED0, type metadata accessor for DaemonGameServicesSupport);
  sub_100005668(v10 + 2);
  sub_1001D16EC();
  sub_1000056D0();
  v10[10] = v11;
  v10[11] = sub_100005624(&qword_1003B5ED8, type metadata accessor for DaemonGameServicesSupport);
  sub_100005668(v10 + 7);
  sub_1000056D0();
  sub_1001D10FC();
  InternalPlayerIDProvider.init(friendServiceSupport:profileServiceSupport:localPlayer:)();
  v12 = swift_task_alloc();
  v10[21] = v12;
  *v12 = v10;
  v12[1] = sub_1001CB9C4;
  sub_1001D1934(v10[12]);
  sub_1001D185C();

  return InternalPlayerIDProvider.getInternalPlayerID(player:)(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1001CB9C4()
{
  sub_100006B50();
  sub_1001AFA50();
  v3 = v2;
  v5 = v4;
  sub_1000057F0();
  v7 = v6;
  sub_1001D14B0();
  *v8 = v7;
  v9 = *v1;
  sub_100004410();
  *v10 = v9;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1001CBAD4()
{
  sub_1000057FC();
  v2 = sub_1001D1940();
  v3(v2);
  sub_1001B2DDC(v0, &qword_1003B5EC8);

  sub_1001D1874();
  v6 = *(v1 + 184);
  v5 = *(v1 + 192);

  return v4(v5, v6);
}

uint64_t sub_1001CBB74()
{
  sub_1000057FC();
  v1 = sub_1001D1940();
  v2(v1);
  sub_1001B2DDC(v0, &qword_1003B5EC8);

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001CBC10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CBC9C;

  return sub_1001BAEC4();
}

uint64_t sub_1001CBC9C()
{
  sub_100005528();
  sub_1001D14C0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1001D1874();
  v3 = sub_1001B6ACC();

  return v4(v3);
}

uint64_t sub_1001CBD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001AF9F8;

  return sub_1001BB7E0(a1, a2, a3);
}

uint64_t sub_1001CBE38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D13AC;

  return sub_1001BC2C8(a1);
}

uint64_t sub_1001CBECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001AF328;

  return sub_1001BCBF8(a1, a2, a3);
}

uint64_t sub_1001CBF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1001CC048;

  return sub_1001BDB78(a1, a2, a3, a4, a5);
}

uint64_t sub_1001CC048()
{
  sub_1000057FC();
  sub_1001D1548();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;

  sub_1001D1874();
  if (!v0)
  {
    v4 = sub_1001D1B80();
  }

  return v5(v4);
}

uint64_t sub_1001CC13C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D136C;

  return sub_1001BEC34(a1);
}

uint64_t sub_1001CC1D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D136C;

  return sub_1001BF3B0(a1);
}

uint64_t sub_1001CC264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC2F0;

  return sub_1001C03A4();
}

uint64_t sub_1001CC2F0()
{
  sub_100005528();
  v2 = v1;
  sub_1000057F0();
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  sub_1001D17DC();

  return v5(v2);
}

uint64_t sub_1001CC3D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AF328;

  return sub_1001C075C(a1, a2);
}

uint64_t sub_1001CC480(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001AF9F8;

  return sub_1001C29A4(a1);
}

uint64_t sub_1001CC514(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001AF9F8;

  return sub_1001C2BF8(a1);
}

uint64_t sub_1001CC5B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AF9F8;

  return sub_1001C0B1C(a1, a2);
}

uint64_t sub_1001CC65C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AF9F8;

  return sub_1001C3334(a1, a2);
}

uint64_t sub_1001CC704(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001AF9F8;

  return sub_1001C40FC(a1, a2);
}

uint64_t sub_1001CC7A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001AF9F8;

  return sub_1001C4E74(a1);
}

uint64_t sub_1001CC83C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF9F8;

  return sub_1001C5650();
}

uint64_t sub_1001CC8C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001D13AC;

  return sub_1001C6CF0(a1, a2);
}

uint64_t sub_1001CC96C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D13AC;

  return sub_1001C77D0(a1);
}

uint64_t sub_1001CCA00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001D13AC;

  return sub_1001C813C(a1, a2);
}

uint64_t sub_1001CCAA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D13AC;

  return sub_1001C87D0(a1);
}

uint64_t sub_1001CCB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1001D13AC;

  return sub_1001C8C24(a1, a2, a3, a4, a5);
}

uint64_t sub_1001CCBFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D13AC;

  return sub_1001C9400(a1);
}

uint64_t sub_1001CCC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D13AC;

  return sub_1001C98CC(a1);
}

uint64_t sub_1001CCD24(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001D13AC;

  return sub_1001C9DB8(a1, a2);
}

uint64_t sub_1001CCDC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001D136C;

  return sub_1001CB600(a1);
}

uint64_t sub_1001CCE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001D13AC;

  return sub_1001CAC44(a1, a2, a3);
}

uint64_t sub_1001CCF08(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001CCFB4;

  return sub_1001CA25C(a1, a2, a3);
}

uint64_t sub_1001CCFB4()
{
  sub_100005528();
  sub_1001D14C0();
  v3 = *v2;
  sub_100004410();
  *v4 = v3;

  sub_1001D17DC();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t GKDaemonGameServices.rootOrService.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__rootOrService);
  v4 = *(v1 + OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__rootOrService + 24);
  sub_100006454(v3, v4);
  a1[3] = v4;
  sub_100005668(a1);
  sub_100005534();
  v6 = *(v5 + 16);

  return v6();
}

id GKDaemonGameServices.__allocating_init(clientProxy:bundleID:entitlements:libraryDependencies:)()
{
  sub_1001D191C();
  v6 = objc_allocWithZone(v1);
  return GKDaemonGameServices.init(clientProxy:bundleID:entitlements:libraryDependencies:)(v5, v4, v3, v2, v0);
}

id GKDaemonGameServices.init(clientProxy:bundleID:entitlements:libraryDependencies:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, char *a5)
{
  v79 = a2;
  sub_1001D1704();
  ObjectType = swift_getObjectType();
  v81 = type metadata accessor for Logger();
  sub_1000043C4();
  v80 = v10;
  __chkstk_darwin(v11);
  sub_1000043B4();
  v84 = v13 - v12;
  v14 = type metadata accessor for DaemonGameServicesSupport(0);
  sub_100005780();
  __chkstk_darwin(v15);
  sub_1000043B4();
  v18 = v17 - v16;
  type metadata accessor for GameServicesActorSystem();
  swift_allocObject();
  v19 = v6;
  v20 = a3;
  *&v19[OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__actorSystem] = GameServicesActorSystem.init(invoker:)();
  v21 = v5;
  sub_100004B04(v21, v18);
  sub_1000055B8(v18, &v19[OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices_support]);
  type metadata accessor for GameServicesDataProvider();
  v91 = v14;
  v92 = sub_100005624(&qword_1003B5DC8, type metadata accessor for DaemonGameServicesSupport);
  sub_100005668(&v90);
  sub_1001D16EC();
  sub_1000056D0();
  v83 = a5;
  v22 = *&a5[OBJC_IVAR___GKLibraryDependencies_gameRestrictionsProvider];
  type metadata accessor for GameRestrictionsPolicyProvider();
  v89 = &protocol witness table for GameRestrictionsPolicyProvider;

  v23 = GameServicesDataProvider.__allocating_init(support:gameRestrictionsProvider:)();
  *&v19[OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices_dataProvider] = v23;

  GameServicesDataProvider.observeNotifications()();
  sub_1001D1704();

  *&v19[OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices_notificationsTask] = v22;
  type metadata accessor for GameKitService();
  sub_1001D1734();

  v24 = a4;
  v88 = v23;
  v87.n128_u64[0] = GameKitService.__allocating_init(actorSystem:dataProvider:)();
  if (!a4)
  {
    goto LABEL_38;
  }

  v25 = a4;
  if (![v25 hasAnyPrivateEntitlement])
  {

    goto LABEL_38;
  }

  v27 = v79;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v79 && v26 == a3;
  if (v28)
  {
  }

  else
  {
    sub_1001D15E8();
    sub_1001D1AA0();
    if ((v23 & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001D1B8C();
      if (!v28 || v29 != a3)
      {
        sub_1001D15E8();
        sub_1001D1AA0();
        if (v23)
        {
          goto LABEL_34;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1001D1B8C();
        if (!v28 || v31 != a3)
        {
          sub_1001D15E8();
          sub_1001D1AA0();
          if ((v23 & 1) == 0)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_1001D1B8C();
            if (v28 && v33 == a3)
            {
            }

            else
            {
              sub_1001D15E8();
              sub_1001D1AA0();
              if ((v23 & 1) == 0)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_1001D1B8C();
                if (v28 && v35 == a3)
                {
                }

                else
                {
                  sub_1001D15E8();
                  sub_1001D1AA0();
                  if ((v23 & 1) == 0)
                  {
                    sub_1001A6C04(&qword_1003B5B98);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_1002C3970;
                    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(inited + 40) = v38;
                    *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(inited + 56) = v39;
                    *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(inited + 72) = v40;
                    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(inited + 88) = v41;
                    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    *(inited + 96) = v42;
                    *(inited + 104) = v43;
                    v90.n128_u64[0] = v27;
                    v90.n128_u64[1] = a3;
                    v78 = a3;
                    __chkstk_darwin(v42);
                    v77[-2] = &v90;
                    v44 = sub_100006C40(sub_100006D60, &v77[-4], inited);
                    swift_setDeallocating();
                    sub_100006D80();
                    if (v44)
                    {
                      v45 = type metadata accessor for GameServiceRoot();
                      swift_allocObject();

                      sub_1001B6ACC();
                      v46 = GameServiceRoot.init(actorSystem:dataProvider:)();
                      v91 = v45;

                      v90.n128_u64[0] = v46;
                      sub_100005BE0(&v87);
                      sub_100007B20(&v90, &v87);
                    }

                    else
                    {
                    }

                    v20 = v78;
                    goto LABEL_37;
                  }
                }

                type metadata accessor for PreferencesService();
                sub_1001D1734();

                sub_100005540();
                v76 = PreferencesService.__allocating_init(actorSystem:dataProvider:)();
                goto LABEL_44;
              }
            }

            type metadata accessor for IntegrationTestsService();
            sub_1001D1734();

            sub_100005540();
            v76 = IntegrationTestsService.__allocating_init(actorSystem:dataProvider:)();
LABEL_44:
            v51 = v76;
            v91 = v23;
            goto LABEL_35;
          }

LABEL_34:
          v50 = type metadata accessor for GameServiceRoot();
          swift_allocObject();

          sub_1001B6ACC();
          v51 = GameServiceRoot.init(actorSystem:dataProvider:)();
          v91 = v50;
LABEL_35:

          v90.n128_u64[0] = v51;
          goto LABEL_36;
        }
      }

      goto LABEL_34;
    }
  }

  [v21 setIsInDebugMode:1];
  type metadata accessor for GameDebuggerService();
  sub_1001D1734();

  sub_100005540();
  v47 = GameDebuggerService.__allocating_init(actorSystem:dataProvider:)();
  v48 = type metadata accessor for GameDebuggerServiceWorkaround();
  v91 = v23;
  v92 = sub_100005624(&qword_1003B5DE8, &type metadata accessor for GameDebuggerService);
  v90.n128_u64[0] = v47;

  v49 = GameDebuggerServiceWorkaround.__allocating_init(actorSystem:delegate:)();
  v91 = v48;

  v90.n128_u64[0] = v49;
LABEL_36:
  sub_100005BE0(&v87);
  sub_100007B20(&v90, &v87);
LABEL_37:
  v24 = a4;
LABEL_38:
  v52 = v20;
  v53 = OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__rootOrService;
  sub_100006244(&v87, &v19[OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices__rootOrService]);
  v54 = v84;
  static GKLog.daemon.getter();
  v55 = v19;
  v56 = v24;

  v57 = Logger.logObject.getter();
  v58 = v24;
  v59 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v57, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78 = v21;
    v77[1] = v61;
    v85 = v61;
    *v60 = 136315906;
    swift_getObjectType();
    v62 = _typeName(_:qualified:)();
    v64 = sub_100005C3C(v62, v63, &v85);
    v77[0] = v58;
    v65 = v64;

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    sub_100006244(&v19[v53], &v90);

    sub_100006454(&v90, v91);
    swift_getDynamicType();
    sub_100005BE0(&v90);
    v66 = _typeName(_:qualified:)();
    v68 = sub_100005C3C(v66, v67, &v85);

    *(v60 + 14) = v68;
    *(v60 + 22) = 2080;
    v69 = sub_100005C3C(v79, v52, &v85);

    *(v60 + 24) = v69;
    *(v60 + 32) = 2080;
    v90.n128_u64[0] = v77[0];
    v70 = v56;
    sub_1001A6C04(&qword_1003B5DE0);
    v71 = String.init<A>(describing:)();
    v73 = sub_100005C3C(v71, v72, &v85);

    *(v60 + 34) = v73;
    _os_log_impl(&_mh_execute_header, v57, v59, "%s has initialized: %s for bundleID: %s, entitlements: %s", v60, 0x2Au);
    swift_arrayDestroy();
    v21 = v78;
    sub_1000043D8();
    sub_1000043D8();

    (*(v80 + 8))(v84, v81);
  }

  else
  {

    (*(v80 + 8))(v54, v81);
  }

  sub_100005BE0(&v87);
  v86.receiver = v55;
  v86.super_class = ObjectType;
  v74 = objc_msgSendSuper2(&v86, "init");

  return v74;
}

uint64_t sub_1001CDB3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10000448C();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001CDB68()
{
  sub_100005528();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1001CDC08;
  v2 = sub_1001D1934(*(v0 + 16));

  return GameServicesDataProvider.clearStores(for:)(v2);
}

uint64_t sub_1001CDC08()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001CDD70(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001CDE44;

  return sub_1001CDB3C(v5, v7);
}

uint64_t sub_1001CDE44()
{
  sub_1000057FC();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_1000046F8();

  return v6();
}

Swift::Void __swiftcall GKDaemonGameServices.onChallengeUpdateReceived(userInfo:)(Swift::OpaquePointer userInfo)
{
  sub_1001D1710();
  v11 = static GameCenterServerNotification.ChallengeUpdate.name.getter();
  sub_1001C2448(userInfo._rawValue);
  sub_100006378(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1001CE060()
{
  v1 = v0 + OBJC_IVAR____TtC14GameDaemonCore20GKDaemonGameServices_support;
  v2 = *(v1 + *(type metadata accessor for DaemonGameServicesSupport(0) + 24));
  v4 = static GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened.name.getter();
  v3 = static GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened.toUserInfo(creatorPlayerID:url:isOpened:)();
  sub_1001CEE10(v4, 0, v3, v2);
}

uint64_t sub_1001CE13C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for URL();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043B4();
  v13 = v12 - v11;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a1;
  a5(v13, v14, v16);

  return (*(v9 + 8))(v13, v7);
}

Swift::Void __swiftcall GKDaemonGameServices.deliverMostRecentPendingGameActivityInstance(bundleID:)(Swift::String bundleID)
{
  sub_1001D1710();
  v10 = static GameCenterServerNotification.DeliverMostRecentPendingGameActivity.name.getter();
  sub_1001D1B80();
  v1 = static GameCenterServerNotification.DeliverMostRecentPendingGameActivity.toUserInfo(bundleID:)();
  sub_100006378(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

Swift::Void __swiftcall GKDaemonGameServices.onServerCacheInvalidationReceived(bagKey:playerID:)(Swift::String bagKey, Swift::String playerID)
{
  sub_1001D1B6C();
  sub_1001D1710();
  v11 = static GameCenterServerNotification.CacheInvalidation.name.getter();
  v2 = static GameCenterServerNotification.CacheInvalidation.toUserInfo(bagKey:playerID:)();
  sub_100006378(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

Swift::Void __swiftcall GKDaemonGameServices.onGameActivityReferralDeepLinkOpened(activityIdentifier:activityProperties:bundleID:referenceLeaderboardID:referenceAchievementDescriptionID:)(Swift::String activityIdentifier, Swift::OpaquePointer activityProperties, Swift::String bundleID, Swift::String_optional referenceLeaderboardID, Swift::String_optional referenceAchievementDescriptionID)
{
  sub_1001D1710();
  v13 = static GameCenterServerNotification.GameActivityReferralDeepLinkOpened.name.getter();
  v5 = static GameCenterServerNotification.GameActivityReferralDeepLinkOpened.toUserInfo(activityIdentifier:activityProperties:bundleID:referenceLeaderboardID:referenceAchievementDescriptionID:)();
  sub_100006378(v5, v6, v7, v8, v9, v10, v11, v12, referenceAchievementDescriptionID.value._object, v13);
}

id GKDaemonGameServices.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  Task.cancel()();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001CE728()
{
  v1 = [v0 playedAt];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_1001CE7AC()
{
  v1 = [v0 adamID];

  return v1;
}

id sub_1001CE958(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v2 initWithData:isa headers:v6];

  sub_1000072CC(a1, a2);
  return v7;
}

uint64_t sub_1001CE9F4()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1001CEA64(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  sub_100005C3C(v6, v7, a3);
  sub_1001D1704();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

char *sub_1001CEABC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001A6C04(&qword_1003B6098);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1001CEBB0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_1001CEBD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 isDevSignedForBundleID:v4];

  return v5;
}

void sub_1001CEC1C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 refreshContentsForDataType:a1 userInfo:isa];
}

id sub_1001CECB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 lastPrivacyNoticeVersionDisplayedForPlayerID:v4];

  return v5;
}

id sub_1001CECF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 lastGamesPrivacyNoticeVersionDisplayedForPlayerID:v4];

  return v5;
}

id sub_1001CED40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 lastGamesCrossUseConsentNoticeVersionDisplayedForPlayerID:v4];

  return v5;
}

void sub_1001CED88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a4 loadScopedPlayerIDs:a1 gameBundleIDs:isa handler:a3];
}

void sub_1001CEE10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t sub_1001CEEAC(void *a1)
{
  v1 = [a1 adamID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001CEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CEFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001CF1F0;

  return sub_1001C69A4(a2, a3, a4, a5);
}

uint64_t sub_1001CF1F0()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  sub_10000629C();

  return v8();
}

uint64_t sub_1001CF2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1001D134C;

  return sub_1001C636C(a2, a3, a4, a5);
}

uint64_t sub_1001CF754()
{
  result = type metadata accessor for DaemonGameServicesSupport(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001CF828()
{
  result = type metadata accessor for GameServicesEnvironment();
  if (v1 <= 0x3F)
  {
    result = sub_1001A7B44(319, &unk_1003B5E90);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001CF900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CF918()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D19B8();

  return sub_1001C9EC4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CF9B0()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFA40(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A7B44(255, a2);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001CFA80()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001C99B4(v3, v4, v5, v6, v7);
}

uint64_t sub_1001CFB14()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFBA4()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001C94E8(v3, v4, v5, v6, v7);
}

uint64_t sub_1001CFC38()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFCC8()
{
  sub_1001D18F8();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_100006060();
  sub_100006084();

  return sub_1001C8EDC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFD8C()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFE1C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001C88B8(v3, v4, v5, v6, v7);
}

uint64_t sub_1001CFEB0()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001CFF40()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D1964();
  sub_1001D19B8();

  return sub_1001C836C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001CFFD4()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D00A4()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001C7A4C(v3, v4, v5, v6, v7);
}

uint64_t sub_1001D0138()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D01FC()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D1964();
  sub_1001D19B8();

  return sub_1001C6F84(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D029C(uint64_t *a1)
{
  type metadata accessor for DaemonGameServicesSupport(0);
  sub_1001D1BBC();
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  v9 = sub_1001A6C04(a1);
  sub_1000043C4();
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v6 + v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  v18 = v2 + v6;
  swift_unknownObjectWeakDestroy();
  v19 = *(v1 + 28);
  type metadata accessor for GameServicesEnvironment();
  sub_100005780();
  (*(v20 + 8))(v18 + v19);

  (*(v11 + 8))(v2 + v15, v9);

  return _swift_deallocObject(v2, v15 + v16, v17 | 7);
}

uint64_t sub_1001D0430()
{
  sub_1001D191C();
  v5 = type metadata accessor for DaemonGameServicesSupport(0);
  sub_1001B6A00(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1001A6C04(v2);
  sub_100006A0C(v10);
  return sub_1001C80C4(v4, v3, v1 + v7, v1 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80)), v0, v2);
}

uint64_t sub_1001D0510()
{
  sub_1000057FC();
  sub_1001D14F8();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100004400(v2);
  *v3 = v4;
  v3[1] = sub_1001AF9F8;
  v5 = sub_100006060();

  return sub_1001C5A98(v5, v6, v7, v1);
}

uint64_t sub_1001D05A8()
{
  sub_1001D1988();
  sub_100006B20();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1694(v1);
  sub_100005B0C();

  return sub_1001C531C(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1001D0644()
{
  v1 = type metadata accessor for OnboardingState();
  sub_100006A0C(v1);
  sub_1001C4D38(*(v0 + 16));
}

void sub_1001D06B0(uint64_t a1@<X8>)
{
  v3 = sub_1001A6C04(&qword_1003B6260);
  sub_1001B6A00(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for DaemonGameServicesSupport(0);
  sub_1001B6A00(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = type metadata accessor for PrivacyVersions();
  sub_1001B6A00(v13);
  v15 = v14;
  v17 = v16;
  v18 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  sub_1001C3DA0(*(v1 + 16), v1 + v5, v1 + v10, v1 + v18, *(v1 + v18 + *(v17 + 64)), *(v1 + ((v18 + *(v17 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_1001D0818()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001BF730(v3, v4, v5, v6, v7);
}

uint64_t sub_1001D08AC()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001BEF48(v3, v4, v5, v6, v7);
}

uint64_t sub_1001D0948(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1001A6C04(&qword_1003B6008);
  sub_100006A0C(v6);

  return sub_1001BF32C(a1, a2, a3);
}

uint64_t sub_1001D09D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001D09EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1001D09EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001D0A44()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D1964();
  sub_1001D19B8();

  return sub_1001BD048(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D0B0C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14F8();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D18C4();

  return sub_1001BC4E0(v3, v4, v5, v6, v7);
}

uint64_t sub_1001D0BA0()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D0C60()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D1964();
  sub_1001D19B8();

  return sub_1001BBB70(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D0D28()
{
  sub_1001D1970();
  sub_100005838();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D185C();

  return sub_1001CAEF0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001D0DC4()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D0E88()
{
  sub_1001D1970();
  sub_100005838();
  sub_1001D14D0();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D1418(v1);
  sub_1001D185C();

  return sub_1001CA590(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001D0F28()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_1001D149C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  sub_1001D13F0(v1);
  sub_1001D19B8();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001D0FC8(uint64_t *a1)
{
  sub_1001A6C04(a1);
  sub_100005780();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1001D106C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = sub_1001A6C04(a3);
  sub_100006A0C(v5);
  v6 = sub_1001D1B80();

  return a5(v6);
}

uint64_t sub_1001D10FC()
{
  sub_1001D1B98();
  sub_1001A6C04(v1);
  sub_100005780();
  v2 = sub_1001B6ACC();
  v3(v2);
  return v0;
}

uint64_t sub_1001D1154()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;
  v2 = sub_100005540();

  return v3(v2);
}

void *sub_1001D1240(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1001D1468(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1001D1528()
{

  return swift_allocError();
}

uint64_t sub_1001D1558()
{

  return static GameServicesError.illegalState(message:)();
}

id sub_1001D1578()
{

  return sub_1001CA78C();
}

id sub_1001D15A8()
{

  return sub_1001CA78C();
}

uint64_t sub_1001D15E8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001D160C()
{

  return swift_allocError();
}

uint64_t sub_1001D165C(uint64_t a1)
{
  *(v3 + 32) = a1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return swift_task_alloc();
}

uint64_t sub_1001D1694(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v7 + 40) = v3;
  *(v7 + 32) = v6;
  *(v7 + 24) = v4;
  *(v7 + 16) = v2;
  return v5;
}

uint64_t sub_1001D16CC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1001D1734()
{
}

uint64_t sub_1001D1754()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1001D1824()
{

  return static GameServicesError.illegalState(message:)();
}

uint64_t sub_1001D1840()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t sub_1001D1A08(void *a1)
{
  *(v3 + 40) = a1;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v1;

  return swift_task_alloc();
}

uint64_t sub_1001D1A2C()
{
}

__n128 *sub_1001D1A50(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

uint64_t sub_1001D1A88()
{

  return swift_task_alloc();
}

uint64_t sub_1001D1AA0()
{
}

uint64_t sub_1001D1AB8()
{

  return swift_unknownObjectWeakLoadStrong();
}

void sub_1001D1AD0()
{
  v2[12] = v1;
  v2[13] = v0;
  v2[14] = v3;
}

__n128 sub_1001D1B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(a1 + 16) = v9;
  result = a9;
  *(a1 + 24) = a9;
  *(a1 + 40) = v10;
  return result;
}

int8x16_t sub_1001D1B58(int8x16_t *a1)
{
  v1[3].i64[0] = a1;
  result = vextq_s8(v1[2], v1[2], 8uLL);
  a1[1] = result;
  return result;
}

uint64_t sub_1001D1BEC()
{

  return static GameServicesError.illegalState(message:)();
}

void sub_1001D1C0C()
{
  sub_10000469C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1001A6C04(&qword_1003B60F0);
  v12 = sub_100006A0C(v11);
  __chkstk_darwin(v12);
  sub_1001E4158();
  sub_1001AF7C0(v8, v0);
  v13 = type metadata accessor for TaskPriority();
  sub_1001E4400(v13);
  if (v2 == 1)
  {
    sub_1001E30E0(v0, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100005534();
    (*(v14 + 8))(v0, v1);
  }

  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = v16;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4320();
    if (v10)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1001E404C();
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v4;

      if (v15 | v17)
      {
        sub_1001E4148();
      }

      else
      {
        v19 = 0;
      }

      sub_1001E4128(v19);
      swift_task_create();

      sub_1001E30E0(v8, &qword_1003B60F0);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  sub_1001E30E0(v8, &qword_1003B60F0);
  sub_1001E404C();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  if (v15 | v17)
  {
    sub_1001E4138();
  }

  swift_task_create();
LABEL_14:
  sub_1001E43F4();
  sub_1000057D8();
}

void sub_1001D1E74()
{
  sub_10000469C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1001A6C04(&qword_1003B60F0);
  v10 = sub_100006A0C(v9);
  __chkstk_darwin(v10);
  sub_1001E4158();
  sub_1001AF7C0(v6, v0);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_1001A969C(v0, 1, v11);

  if (v12 == 1)
  {
    sub_1001E30E0(v0, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100005534();
    (*(v13 + 8))(v0, v11);
  }

  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = v15;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4320();
    if (v8)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1001E404C();
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      *(v17 + 24) = v2;

      sub_1001A6C04(&qword_1003B6340);
      v18 = v14 | v16;
      if (v14 | v16)
      {
        sub_1001E4148();
      }

      sub_1001E4128(v18);
      swift_task_create();
      sub_100005FBC();

      sub_1001E30E0(v6, &qword_1003B60F0);

      goto LABEL_13;
    }
  }

  else
  {
    v16 = 0;
    v14 = 0;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  sub_1001E30E0(v6, &qword_1003B60F0);
  sub_1001E404C();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;
  sub_1001A6C04(&qword_1003B6340);
  if (v14 | v16)
  {
    sub_1001E4138();
  }

  swift_task_create();
LABEL_13:
  sub_1001E43F4();
  sub_1000057D8();
}

unint64_t sub_1001D2108(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

GameDaemonCore::AppMetadataPlatform_optional __swiftcall AppMetadataPlatform.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_10036A7D8, v3);
  sub_100005FBC();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t AppMetadataPlatform.rawValue.getter(char a1)
{
  result = 7565161;
  switch(a1)
  {
    case 1:
      result = 7893871;
      break;
    case 2:
      result = 0x6F7674656C707061;
      break;
    case 3:
      result = 1936683640;
      break;
    case 4:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D22D0()
{
  String.hash(into:)();
}

uint64_t sub_1001D2348()
{
  String.hash(into:)();
}

GameDaemonCore::AppMetadataPlatform_optional sub_1001D2404@<W0>(Swift::String *a1@<X0>, GameDaemonCore::AppMetadataPlatform_optional *a2@<X8>)
{
  result.value = AppMetadataPlatform.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001D2434@<X0>(uint64_t *a1@<X8>)
{
  result = AppMetadataPlatform.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

GameDaemonCore::AppMedatataDeviceFamily_optional __swiftcall AppMedatataDeviceFamily.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_10036A898, v3);
  sub_100005FBC();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t AppMedatataDeviceFamily.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1684107369;
  }

  if (a1 == 1)
  {
    return 0x656E6F687069;
  }

  return 6513005;
}

GameDaemonCore::AppMedatataDeviceFamily_optional sub_1001D2520@<W0>(Swift::String *a1@<X0>, GameDaemonCore::AppMedatataDeviceFamily_optional *a2@<X8>)
{
  result.value = AppMedatataDeviceFamily.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001D2550@<X0>(uint64_t *a1@<X8>)
{
  result = AppMedatataDeviceFamily.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AppMetadataFetcherRequest.init(bundleIDs:adamIDs:playerID:language:environment:localDataOnly:ttlOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v16 = objc_opt_self();
  if ([v16 deviceIsMac])
  {
    v23 = a7;
    v17 = 2;
    v18 = 1;
LABEL_7:
    v19 = objc_allocWithZone(type metadata accessor for AppMetadataFetcherRequest());
    v20 = AppMetadataFetcherRequest.init(bundleIDs:adamIDs:playerID:language:environment:deviceFamily:platform:localDataOnly:ttlOption:)(a1, a2, a3, a4, a5, a6, v23, v17, v18, a8 & 1, a9);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v20;
  }

  if ([v16 deviceIsiPad])
  {
    v23 = a7;
    v18 = 0;
    v17 = 0;
    goto LABEL_7;
  }

  if ([v16 deviceIsiPhone])
  {
    v23 = a7;
    v18 = 0;
    v17 = 1;
    goto LABEL_7;
  }

  sub_1001D29A4();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();
  swift_getObjectType();
  sub_1001B2FE0();
  return swift_deallocPartialClassInstance();
}

unint64_t sub_1001D29A4()
{
  result = qword_1003B60A0;
  if (!qword_1003B60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B60A0);
  }

  return result;
}

id AppMetadataFetcherRequest.init(bundleIDs:adamIDs:playerID:language:environment:deviceFamily:platform:localDataOnly:ttlOption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, uint64_t a11)
{
  *&v11[OBJC_IVAR___GKAppMetadataFetcherRequest_bundleIDs] = a1;
  *&v11[OBJC_IVAR___GKAppMetadataFetcherRequest_adamIDs] = a2;
  v12 = &v11[OBJC_IVAR___GKAppMetadataFetcherRequest_playerID];
  *v12 = a3;
  v12[1] = a4;
  v13 = &v11[OBJC_IVAR___GKAppMetadataFetcherRequest_language];
  *v13 = a5;
  v13[1] = a6;
  *&v11[OBJC_IVAR___GKAppMetadataFetcherRequest_environment] = a7;
  v11[OBJC_IVAR___GKAppMetadataFetcherRequest_deviceFamily] = a8;
  v11[OBJC_IVAR___GKAppMetadataFetcherRequest_platform] = a9;
  v11[OBJC_IVAR___GKAppMetadataFetcherRequest_localDataOnly] = a10;
  *&v11[OBJC_IVAR___GKAppMetadataFetcherRequest_ttlOption] = a11;
  v15.receiver = v11;
  v15.super_class = type metadata accessor for AppMetadataFetcherRequest();
  return objc_msgSendSuper2(&v15, "init");
}

id AppMetadataFetcherRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppMetadataFetcherRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int _s14GameDaemonCore0A14IdentifierTypeO9hashValueSivg_0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D2C18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1001D2C70()
{
  _StringGuts.grow(_:)(25);
  v0._countAndFlagsBits = 0x6E6F7269766E6528;
  v0._object = 0xED00003A746E656DLL;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3A65707974202CLL;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

Swift::Int sub_1001D2DBC(Swift::UInt a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D2E34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001D2EB8(void *a1)
{
  v3 = *(v1 + 128);
  if (v3 && ((v4 = *(v1 + 136)) != 0 ? (v5 = v3 == a1) : (v5 = 0), v5))
  {
  }

  else
  {
    type metadata accessor for LibraryBagObserver();
    v6 = swift_allocObject();
    v7 = a1;
    v4 = sub_1001E3ABC(v7, v6);
    *(v1 + 136) = v4;

    v8 = *(v1 + 128);
    *(v1 + 128) = v7;
    v9 = v7;
  }

  return v4;
}

uint64_t AppMetadataFetcher.fetch(request:bag:refreshExpiredCompletion:)()
{
  sub_100005528();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1001A6C04(&qword_1003B60F0);
  sub_100006A0C(v6);
  v1[12] = sub_1001E41A0();
  v7 = sub_100004750();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001D2FE4()
{
  sub_100006B50();
  sub_1001AFA50();
  type metadata accessor for AppMetadataCache();
  swift_allocObject();

  sub_1001E4240();
  sub_10026B828();
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = sub_1001D2EB8(*(v0 + 64));
  sub_1001D18C4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1001D3100()
{
  sub_1000057FC();
  v1 = v0[14];
  v2 = sub_1002177C4();
  v0[16] = v1;
  v5 = v0[11];
  if (v1)
  {
    v6 = sub_1001D3530;
  }

  else
  {
    v0[17] = v4;
    v0[18] = v3;
    v0[19] = v2;
    v6 = sub_1001D318C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001D318C()
{
  sub_1001D1970();
  sub_100005838();
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  type metadata accessor for TaskPriority();
  sub_1001E4070();
  sub_1001A9674(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  sub_1001E3D4C();
  sub_1001D1C0C();

  v10 = *(v3 + OBJC_IVAR___GKAppMetadataFetcherRequest_platform);
  v11 = *(v3 + OBJC_IVAR___GKAppMetadataFetcherRequest_deviceFamily);
  v12 = *(v3 + OBJC_IVAR___GKAppMetadataFetcherRequest_environment);
  v13 = sub_1001E3960(&qword_1003B60F8, 255, type metadata accessor for AppMetadataCache);
  v14 = swift_allocObject();
  v0[20] = v14;
  *(v14 + 16) = v4;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = v2;
  *(v14 + 48) = v13;
  *(v14 + 56) = v10;
  v0[5] = &type metadata for AppMetadataNetworkFetcher;
  v0[6] = &protocol witness table for AppMetadataNetworkFetcher;
  v0[2] = &unk_1002C42C0;
  v0[3] = v14;

  v15 = v4;

  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_1001D3388;
  sub_1001D185C();

  return AppMetadataFetcher.fetch(request:network:cache:bagConfiguration:refreshExpiredCompletion:)();
}

uint64_t sub_1001D3388()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_1001D14B0();
  *v6 = v5;
  v7 = *v1;
  sub_100004410();
  *v8 = v7;
  v5[22] = v0;

  if (v0)
  {
    v9 = sub_1001E3FF0();
  }

  else
  {
    v11 = v5[11];
    v5[23] = v3;
    sub_100005BE0((v5 + 2));
    v9 = sub_1001E3FF0();
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1001D34A8()
{
  sub_1000057FC();

  sub_1001D17DC();
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_1001D3530()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001D35A0()
{
  sub_100005528();

  sub_100005BE0(v0 + 16);

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001D3624()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1001D3714;

  return LibraryBagObserver.refreshConfiguration()();
}

uint64_t sub_1001D3714()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_1001B6A34();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_1000046F8();

    return v10();
  }
}

uint64_t sub_1001D3830()
{
  sub_100006B50();
  sub_1001AFA50();
  static GKLog.library.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    sub_100005AE4();
    v4 = sub_1001E42D0();
    *v1 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v5;
    *v4 = v5;
    sub_1001E407C(&_mh_execute_header, v6, v3, "Failed to refresh library bag configuration: %@");
    sub_1001E30E0(v4, &unk_1003B6180);
    sub_1001E3DC0();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  sub_1000046F8();
  sub_1001D18C4();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1001D3A24(void *a1, void *a2, void *aBlock, const void *a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v9 = _Block_copy(aBlock);
  v5[5] = _Block_copy(a4);
  v10 = swift_allocObject();
  v5[6] = v10;
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a2;

  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1001D3B4C;

  return AppMetadataFetcher.fetch(request:bag:refreshExpiredCompletion:)();
}

uint64_t sub_1001D3B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v13 = v11;
  sub_1001D14C0();
  v15 = v14;
  sub_1001D14B0();
  *v16 = v15;
  v18 = *(v17 + 24);
  v19 = *(v17 + 16);
  v20 = *v12;
  sub_100004410();
  *v21 = v20;

  if (v13)
  {
    v10 = _convertErrorToNSError(_:)();

    isa = 0;
    v23 = v10;
  }

  else if (v10)
  {
    sub_1001A7B44(0, &qword_1003B5F50);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = 0;
    v23 = isa;
  }

  else
  {
    isa = 0;
    v23 = 0;
  }

  v24 = *(v15 + 40);
  (v24)[2](v24, isa, v10);

  _Block_release(v24);
  sub_1000046F8();
  sub_1001D185C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

void sub_1001D3D3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1001A7B44(0, &qword_1003B5F50);
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t AppMetadataFetcher.fetch(request:network:cache:bagConfiguration:refreshExpiredCompletion:)()
{
  sub_100005528();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v1[25] = v4;
  v1[26] = v5;
  v1[23] = v6;
  v1[24] = v7;
  v1[21] = v8;
  v1[22] = v9;
  v1[20] = v10;
  v11 = sub_1001A6C04(&qword_1003B60F0);
  sub_100006A0C(v11);
  v1[30] = sub_1001E41A0();
  v12 = type metadata accessor for Logger();
  v1[31] = v12;
  sub_1001B6A00(v12);
  v1[32] = v13;
  v1[33] = sub_1001E41A0();
  v14 = sub_100004750();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001D3EB8()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[29];
  v2 = v0[20];
  sub_100216D8C(*(v2 + OBJC_IVAR___GKAppMetadataFetcherRequest_ttlOption));
  v0[34] = v3;
  v4 = *(v2 + OBJC_IVAR___GKAppMetadataFetcherRequest_environment);
  v0[35] = v4;
  sub_1001E42EC();
  v5 = sub_1001AFB70(v4, *(v1 + 112));
  v0[36] = v5;
  if (v5)
  {
    static GKLog.library.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (sub_1000044B4(v7))
    {
      v8 = sub_100005AE4();
      *v8 = 134217984;
      *(v8 + 4) = v4;
      sub_1001E3E68();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      sub_1001E3DC0();
    }

    v15 = v0[32];
    v14 = v0[33];
    v16 = v0[31];

    (*(v15 + 8))(v14, v16);
    v17 = swift_task_alloc();
    v0[37] = v17;
    sub_1001A6C04(&qword_1003B6168);
    sub_1001A6C04(&unk_1003B6170);
    sub_1001E3D78();
    *v17 = v18;
    v17[1] = sub_1001D40A4;
    sub_1001E4108();
    sub_1001D18C4();

    return Task.value.getter(v19, v20, v21);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[38] = v23;
    *v23 = v0;
    sub_1001E3CEC(v23);
    sub_1001D18C4();

    return sub_1001D5EE8(v24, v25, v26, v27);
  }
}

uint64_t sub_1001D40A4()
{
  sub_1000057FC();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 232);

    v8 = sub_1001E3FF0();
    v9 = v7;
  }

  else
  {
    v10 = *(v3 + 232);

    v8 = sub_1001E3FF0();
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1001D41C4()
{
  sub_100005528();

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v2 = sub_1001E3CEC(v1);

  return sub_1001D5EE8(v2, v3, v4, v5);
}

uint64_t sub_1001D4238()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (v1)
  {

    sub_10000629C();

    return v8();
  }

  else
  {
    *(v4 + 312) = v0;
    v10 = sub_100006BD4();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1001D436C()
{
  v4 = *(v0 + 312);

  v6 = sub_1001D4A04(v5);

  v8 = sub_1001D4F4C(v7, v6);

  v10 = sub_1001D4A04(v9);
  v11 = sub_1001E02EC(v4, v10);

  if (*(v8 + 16))
  {
    sub_1001E3EBC();
    sub_1001E07C4(v12, v0 + 16);
    v13 = swift_allocObject();
    v13[2] = v8;
    sub_1001E40A4(v13, v14, v15, v16, v17, v18, v19, v20, v21);
    sub_10005671C((v0 + 16), (v13 + 11));
    v13[16] = v3;
    v13[17] = v2;
    v13[18] = v1;

    swift_unknownObjectRetain();
    v22 = v3;

    sub_10000449C();
    sub_1001DFC18(0, 1, 1, v23, v24, v25, v26);
    v28 = v27;
    v1 = v27[2];
    if (v1 >= v27[3] >> 1)
    {
      sub_10000449C();
      sub_1001DFC18(v62, v1 + 1, 1, v28, v63, v64, v65);
      v28 = v66;
    }

    v28[2] = v1 + 1;
    v29 = &v28[2 * v1];
    v29[4] = &unk_1002C42E0;
    v29[5] = v13;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  if (*(v11 + 2))
  {
    sub_1001E3EBC();
    sub_1001E07C4(v30, v0 + 56);
    v31 = swift_allocObject();
    v31[2] = v11;
    sub_1001E40A4(v31, v32, v33, v34, v35, v36, v37, v38, v39);
    sub_10005671C((v0 + 56), (v31 + 11));
    v31[16] = v3;
    v31[17] = v2;
    v31[18] = v1;

    swift_unknownObjectRetain();
    v40 = v3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000449C();
      sub_1001DFC18(0, v67 + 1, 1, v28, v68, v69, v70);
      v28 = v71;
    }

    v41 = v28[2];
    if (v41 >= v28[3] >> 1)
    {
      sub_10000449C();
      sub_1001DFC18(v72, v41 + 1, 1, v28, v73, v74, v75);
      v28 = v76;
    }

    v28[2] = v41 + 1;
    v42 = &v28[2 * v41];
    v42[4] = &unk_1002C42F0;
    v42[5] = v31;
  }

  else
  {
  }

  v43 = *(v0 + 280);
  v44 = *(v0 + 232);
  v45 = *(v0 + 240);
  type metadata accessor for TaskPriority();
  sub_1001E4070();
  sub_1001A9674(v46, v47, v48, v49);
  sub_1001E3C0C();
  v53 = sub_1001E3960(v50, v51, v52);
  sub_1001E43DC();
  v54 = swift_allocObject();
  v54[2] = v44;
  v54[3] = v53;
  v54[4] = v44;
  v54[5] = v28;
  swift_retain_n();
  v55 = sub_1001E3D4C();
  v58 = sub_1001D5650(v55, v56, v45, v57, v54);
  *(v0 + 320) = v58;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v78 = *(v44 + 112);
  sub_1001B9C4C(v58, v43);
  *(v44 + 112) = v78;
  swift_endAccess();
  v59 = swift_task_alloc();
  *(v0 + 328) = v59;
  v60 = sub_1001A6C04(&qword_1003B6168);
  sub_1001A6C04(&unk_1003B6170);
  sub_1001E3D78();
  *v59 = v61;
  v59[1] = sub_1001D47D4;

  return Task.value.getter(v0 + 144, v58, v60);
}

uint64_t sub_1001D47D4()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_1001D4984;
  }

  else
  {
    v6 = sub_1001D48F4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001D48F4()
{
  sub_1000057FC();
  v1 = v0[18];
  sub_1001D5DA8(v0[29], v0[35]);

  sub_1001D17DC();

  return v2(v1);
}

uint64_t sub_1001D4984()
{
  sub_100005528();
  sub_1001D5DA8(*(v0 + 232), *(v0 + 280));

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001D4A04(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1001E8870(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1001D4AC4(uint64_t a1)
{
  sub_1001E390C();
  v2 = 0;
  v11[5] = Set.init(minimumCapacity:)();
  v3 = *(a1 + 16);
  v4 = (a1 + 64);
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;
    v12[0] = v5;
    v12[1] = v6;
    v12[2] = v7;
    v12[3] = v8;
    v12[4] = v9;
    ++v2;
    v10 = v9;

    sub_1001E89B8(v11, v12);
  }

  __break(1u);
}

uint64_t sub_1001D4BA8(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1001E8870(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1001D4CC4()
{
  sub_10000469C();
  v1 = v0;
  v2 = sub_1001A6C04(&qword_1003B6260);
  sub_1000043C4();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v18 - v9;
  sub_1001B2D98(&qword_1003B6268, &qword_1003B6260);
  v18[1] = Set.init(minimumCapacity:)();
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    sub_1001E3E5C();
    v18[0] = v1;
    v16 = v1 + v15;
    v17 = *(v12 + 56);
    do
    {
      v13(v8, v16, v2);
      sub_1001E8BDC(v10, v8);
      (*(v12 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  else
  {
    sub_100005FBC();
  }

  sub_1001E43F4();
  sub_1000057D8();
}

void sub_1001D4E64(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  sub_1001E3960(&qword_1003B6240, 255, type metadata accessor for URLResourceKey);
  v2 = Set.init(minimumCapacity:)();
  v3 = 0;
  v6[1] = v2;
  v4 = *(a1 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_1001E8EA0(v6, *(a1 + 8 * v3 + 32));

    v3 = v5;
  }

  __break(1u);
}

uint64_t sub_1001D4F4C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 56) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1001E8870(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D5050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 144) = v12;
  *(v9 + 128) = v11;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 72) = a9;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  return _swift_task_switch(sub_1001D5094, a4, 0);
}

uint64_t sub_1001D5094()
{
  sub_1000057FC();
  v1 = sub_1001E40EC();
  *(v0 + 24) = 1;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 1;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  sub_1001E3E78(v3);

  return sub_1001D7368();
}

uint64_t sub_1001D5144()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (v1)
  {
    sub_10000629C();

    return v8();
  }

  else
  {
    *(v4 + 160) = v0;
    v10 = sub_100006BD4();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1001D5264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 144) = v12;
  *(v9 + 128) = v11;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 72) = a9;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  return _swift_task_switch(sub_1001D52A8, a4, 0);
}

uint64_t sub_1001D52A8()
{
  sub_1000057FC();
  v1 = sub_1001E40EC();
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 1;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  sub_1001E3E78(v3);

  return sub_1001D7368();
}

uint64_t sub_1001D5358()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (v1)
  {
    sub_10000629C();

    return v8();
  }

  else
  {
    *(v4 + 160) = v0;
    v10 = sub_100006BD4();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1001D5484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1001D5524;

  return sub_1001D63D4();
}

uint64_t sub_1001D5524()
{
  sub_1000057FC();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (v1)
  {
    sub_10000629C();

    return v8();
  }

  else
  {
    *(v4 + 40) = v0;
    v10 = sub_100006BD4();

    return _swift_task_switch(v10, v11, v12);
  }
}

uint64_t sub_1001D5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_1001AF7C0(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_1001A969C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1001E30E0(v10, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      sub_1001A6C04(&qword_1003B6168);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1001E30E0(a3, &qword_1003B60F0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001E30E0(a3, &qword_1003B60F0);
  sub_1001A6C04(&qword_1003B6168);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001D58E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_1001AF7C0(a3, v21 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_1001A969C(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1001E30E0(v10, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1001E30E0(a3, &qword_1003B60F0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001E30E0(a3, &qword_1003B60F0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1001D5B60()
{
  sub_10000469C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1001A6C04(&qword_1003B60F0);
  v10 = sub_100006A0C(v9);
  __chkstk_darwin(v10);
  sub_1001E4158();
  sub_1001AF7C0(v6, v0);
  v11 = type metadata accessor for TaskPriority();
  sub_1001E4400(v11);
  if (v2 == 1)
  {
    sub_1001E30E0(v0, &qword_1003B60F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100005534();
    (*(v12 + 8))(v0, v1);
  }

  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = v14;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4320();
    if (v8)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_1001A7B44(0, &qword_1003B6290);

      if (v13 | v15)
      {
        sub_1001E4148();
      }

      else
      {
        v16 = 0;
      }

      sub_1001E4128(v16);
      swift_task_create();

      sub_1001E30E0(v6, &qword_1003B60F0);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  sub_1001E30E0(v6, &qword_1003B60F0);
  sub_1001A7B44(0, &qword_1003B6290);
  if (v13 | v15)
  {
    sub_1001E4138();
  }

  swift_task_create();
LABEL_14:
  sub_1001E43F4();
  sub_1000057D8();
}

uint64_t sub_1001D5DA8(uint64_t a1, Swift::UInt a2)
{
  swift_beginAccess();
  sub_1001B252C(a2);
  if (v4)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 112);
    *(a1 + 112) = 0x8000000000000000;
    v6 = *(v8 + 24);
    sub_1001A6C04(&qword_1003B6370);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
    type metadata accessor for GKAppMetadataEnvironment(0);
    sub_1001A6C04(&qword_1003B62B8);
    sub_1001E3960(&qword_1003B6378, 255, type metadata accessor for GKAppMetadataEnvironment);
    _NativeDictionary._delete(at:)();
    *(a1 + 112) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_1001D5EE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 88) = v4;
  *(v5 + 80) = a4;
  *(v5 + 64) = a2;
  *(v5 + 72) = a3;
  *(v5 + 56) = a1;
  return sub_1001E3E4C();
}

uint64_t sub_1001D5F08()
{
  sub_1000057FC();
  v1 = *(v0 + 56);
  if (*(*(v1 + OBJC_IVAR___GKAppMetadataFetcherRequest_bundleIDs) + 16))
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 72);

    v5 = sub_1001D4A04(v4);
    *(v0 + 96) = v5;
    v6 = *(v1 + OBJC_IVAR___GKAppMetadataFetcherRequest_environment);
    *(v0 + 16) = v5;
    *(v0 + 24) = 0;
    *(v0 + 32) = v2;
    *(v0 + 40) = v6;
    *(v0 + 48) = 1;
    *(v0 + 104) = swift_getObjectType();
    *(v0 + 112) = *(v3 + 16);
    *(v0 + 120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xFFAD000000000000;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1001E4204();
    v7 = sub_1001E3D3C();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    Dictionary.init(dictionaryLiteral:)();
    sub_1001D17DC();

    return v10();
  }
}

uint64_t sub_1001D6030()
{
  sub_1000057FC();
  *(v0 + 128) = (*(v0 + 112))(v0 + 16, *(v0 + 104), *(v0 + 72));

  v1 = *(v0 + 88);

  return _swift_task_switch(sub_1001D60F0, v1, 0);
}

void sub_1001D60F0()
{
  v1 = 0;
  v2 = *(v0 + 128);
  v3 = *(v2 + 16);
  v4 = v2 + 48;
  while (2)
  {
    for (i = (v4 + 32 * v1); ; i += 4)
    {
      if (v3 == v1)
      {

        v36 = sub_1001E3BC4();

        v37(v36);
        return;
      }

      if (v1 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v7 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      if (*i)
      {
        break;
      }

      v9 = sub_1001E3F2C();
      sub_1001B247C(v9, v10);
      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = _swiftEmptyDictionarySingleton[3];
        sub_1001A6C04(&qword_1003B6390);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);

        _NativeDictionary._delete(at:)();
        goto LABEL_17;
      }

      ++v1;
    }

    v42 = v4;

    v40 = v8;
    v12 = [v40 adamID];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v13;

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1001E3F2C();
    sub_1001B247C(v15, v16);
    sub_1001E3D88();
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v22 = v17;
    v41 = v18;
    sub_1001A6C04(&qword_1003B6390);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v21))
    {
      v4 = v42;
      if (v41)
      {
        goto LABEL_16;
      }

LABEL_12:
      sub_1001E41F8();
      sub_1001E3C34(v27);
      v29 = (v28 + 16 * v22);
      *v29 = v7;
      v29[1] = v6;
      v30 = (_swiftEmptyDictionarySingleton[7] + 16 * v22);
      *v30 = v38;
      v30[1] = v39;

      sub_1001E424C();
      if (!v32)
      {
        _swiftEmptyDictionarySingleton[2] = v31;
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    v23 = sub_1001E3F2C();
    v25 = sub_1001B247C(v23, v24);
    v4 = v42;
    if ((v41 & 1) == (v26 & 1))
    {
      v22 = v25;
      if ((v41 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v35 = (_swiftEmptyDictionarySingleton[7] + 16 * v22);
      *v35 = v38;
      v35[1] = v39;

LABEL_17:

LABEL_18:
      ++v1;
      continue;
    }

    break;
  }

LABEL_23:

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1001D63D4()
{
  sub_100005528();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for Logger();
  v1[5] = v3;
  sub_1001B6A00(v3);
  v1[6] = v4;
  v1[7] = sub_1001E41A0();
  v5 = sub_100004750();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001D6478()
{
  sub_1001AFA50();
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = sub_1001A6C04(&qword_1003B6168);
    v4 = sub_1001A6C04(&qword_1003B62C8);
    sub_1001E3C0C();
    v8 = sub_1001E3960(v5, v6, v7);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *(v9 + 16) = v1;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1001D6684;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v4, v2, v8, &unk_1002C48E0, v9, v3);
  }

  else
  {
    static GKLog.library.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (sub_1000044B4(v12))
    {
      *swift_slowAlloc() = 0;
      sub_1001E3E68();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_1001E3DC0();
    }

    v18 = sub_100005540();
    v19(v18);

    sub_1001D17DC();

    return v20(0);
  }
}