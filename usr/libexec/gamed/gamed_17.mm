void sub_1002794B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_1001B1950(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = 0;
      v4 = v19;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v3 + 32);
        }

        v6 = v5;
        v7 = sub_1001A7B44(0, &qword_1003B8A30);
        v17 = v7;
        v18 = &protocol witness table for GPGameLibraryApp;
        v16[0] = v6;
        v19 = v4;
        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          sub_1001B1950(v8 > 1, v9 + 1, 1);
          v10 = v17;
          v11 = v18;
        }

        else
        {
          v10 = v7;
          v11 = &protocol witness table for GPGameLibraryApp;
        }

        ++v3;
        v12 = sub_10020F3F8(v16, v10);
        __chkstk_darwin(v12);
        v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v14);
        sub_10027BBE8(v9, v14, &v19, v10, v11, sub_10027BDF8);
        sub_100005BE0(v16);
        v4 = v19;
      }

      while (v2 != v3);
    }
  }
}

id GPGameLibraryApp.internalRepresentation()()
{
  v1 = v0;
  v2 = sub_10027B5C0(v0);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [v1 adamID];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 stringValue];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v1 isGame];
  v14 = objc_allocWithZone(GKGamePolicyApp);
  return sub_10027B524(v4, v5, v8, v11, v13);
}

void GPGameLibrary.gkRegisterInstalledGamesDidChangeHandler(_:)()
{
  sub_10000469C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100004820();
  static GKLog.library.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Registering for installed games change handler.", v10, 2u);
  }

  (*(v7 + 8))(v0, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v13[4] = sub_10027B624;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100279A54;
  v13[3] = &unk_10036EF68;
  v12 = _Block_copy(v13);

  [v1 registerInstalledGamesDidChangeHandler:v12];
  _Block_release(v12);
  sub_1000057D8();
}

uint64_t sub_1002799FC(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return a2();
}

uint64_t sub_100279A54(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001A7B44(0, &qword_1003B8A30);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_100279AEC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100279BE4;
  v2 = swift_continuation_init();
  v3 = sub_1001A6C04(&qword_1003B89E0);
  sub_100004558(v3);
  v0[11] = 1107296256;
  sub_10027BE4C();
  v0[13] = v4;
  v0[14] = v2;
  [v1 fetchInstalledGamesWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100279BE4()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  return _swift_task_switch(sub_100279CB8, 0, 0);
}

uint64_t sub_100279CB8()
{
  sub_100005528();
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sub_1002794B0(v1);
  v3 = v2;

  sub_1001D17DC();

  return v4(v3);
}

uint64_t sub_100279D34(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001A7B44(0, &qword_1003B8A30);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return sub_1001D1358(v3, v4);
}

uint64_t GPGameLibrary.gkApps(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return sub_100004548();
}

uint64_t sub_100279DC0()
{
  v1 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100279ED8;
  v3 = swift_continuation_init();
  v4 = sub_1001A6C04(&qword_1003B89E0);
  sub_100004558(v4);
  v0[11] = 1107296256;
  sub_10027BE4C();
  v0[13] = v5;
  v0[14] = v3;
  [v1 fetchAppsWithBundleIdentifiers:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100279ED8()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  return _swift_task_switch(sub_100279FAC, 0, 0);
}

uint64_t sub_100279FAC()
{
  sub_100005528();
  v1 = *(v0 + 144);

  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
  }

  sub_1002794B0(v1);
  v3 = v2;

  sub_1001D17DC();

  return v4(v3);
}

uint64_t sub_10027A030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC2F0;

  return GPGameLibrary.gkInstalledGames()();
}

uint64_t sub_10027A0C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10027BDF4;

  return GPGameLibrary.gkApps(with:)(a1);
}

uint64_t sub_10027A1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_10020F3F8(a1, v7);
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3(v11, a2, v3, v7, v8);
  sub_100005BE0(a1);
  return v13;
}

uint64_t GamePolicyLibrary.apps(with:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return sub_100004548();
}

uint64_t sub_10027A2EC()
{
  v4 = v2[11];
  v3 = v2[12];
  if (v4)
  {
    sub_10027BFA8(v3);
    sub_10027BF68();
    v11 = (v5 + *v5);
    v6 = swift_task_alloc();
    v2[13] = v6;
    *v6 = v2;
    v6[1] = sub_10027A500;

    return v11(v4, v0, v1);
  }

  else
  {
    sub_10027BFA8(v3);
    sub_10027BF68();
    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v2;
    v9[1] = sub_10027A7DC;
    v10 = sub_10020D2FC();

    return v12(v10);
  }
}

uint64_t sub_10027A500()
{
  sub_100005528();
  sub_1000057F0();
  *(v2 + 56) = v0;
  *(v2 + 64) = v1;
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10027A5E8()
{
  v1 = v0[8];
  v51 = *(v1 + 16);
  if (!v51)
  {
LABEL_14:

    sub_1001D17DC();
    sub_1001E41B8();

    __asm { BRAA            X2, X16 }
  }

  v2 = 0;
  v3 = v1 + 32;
  while (v2 < *(v1 + 16))
  {
    sub_1001E07C4(v3, (v0 + 2));
    sub_100006454(v0 + 2, v0[5]);
    v4 = sub_10027BF10();
    v6 = v5(v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 bundleID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10027BF28();
      sub_10027BF74();
      if (v14)
      {
        goto LABEL_21;
      }

      v15 = v13;
      v16 = sub_1001A6C04(&qword_1003B89F0);
      v24 = sub_10027BF88(v16, v17, v18, v19, v20, v21, v22, v23, v45, v47, v49, v51, v53);
      if (v24)
      {
        v24 = sub_1001B247C(v9, v11);
        if ((v15 & 1) != (v25 & 1))
        {
          sub_1001E41B8();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }
      }

      if (v15)
      {

        sub_100006358(v32, v33, v34, v35, v36, v37, v38, v39, v46, v48, v50, v52, v54);
      }

      else
      {
        sub_10027BE60(v24, v25, v26, v27, v28, v29, v30, v31, v46, v48, v50, v52, v54);
        v40 = _swiftEmptyDictionarySingleton[2];
        v14 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v14)
        {
          goto LABEL_22;
        }

        _swiftEmptyDictionarySingleton[2] = v41;
      }

      v1 = v47;
      v0 = v49;
    }

    ++v2;
    sub_100005BE0((v0 + 2));
    v3 += 40;
    if (v51 == v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_10027A7DC()
{
  sub_100005528();
  sub_1000057F0();
  *(v2 + 72) = v0;
  *(v2 + 80) = v1;
  v3 = *v0;
  sub_100004410();
  *v4 = v3;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10027A8C4()
{
  v1 = v0[10];
  v51 = *(v1 + 16);
  if (!v51)
  {
LABEL_14:

    sub_1001D17DC();
    sub_1001E41B8();

    __asm { BRAA            X2, X16 }
  }

  v2 = 0;
  v3 = v1 + 32;
  while (v2 < *(v1 + 16))
  {
    sub_1001E07C4(v3, (v0 + 2));
    sub_100006454(v0 + 2, v0[5]);
    v4 = sub_10027BF10();
    v6 = v5(v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 bundleID];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10027BF28();
      sub_10027BF74();
      if (v14)
      {
        goto LABEL_21;
      }

      v15 = v13;
      v16 = sub_1001A6C04(&qword_1003B89F0);
      v24 = sub_10027BF88(v16, v17, v18, v19, v20, v21, v22, v23, v45, v47, v49, v51, v53);
      if (v24)
      {
        v24 = sub_1001B247C(v9, v11);
        if ((v15 & 1) != (v25 & 1))
        {
          sub_1001E41B8();

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }
      }

      if (v15)
      {

        sub_100006358(v32, v33, v34, v35, v36, v37, v38, v39, v46, v48, v50, v52, v54);
      }

      else
      {
        sub_10027BE60(v24, v25, v26, v27, v28, v29, v30, v31, v46, v48, v50, v52, v54);
        v40 = _swiftEmptyDictionarySingleton[2];
        v14 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v14)
        {
          goto LABEL_22;
        }

        _swiftEmptyDictionarySingleton[2] = v41;
      }

      v1 = v47;
      v0 = v49;
    }

    ++v2;
    sub_100005BE0((v0 + 2));
    v3 += 40;
    if (v51 == v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_10027AB40(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3[4] = a1;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10027AC1C;

  return GamePolicyLibrary.apps(with:)(a1);
}

uint64_t sub_10027AC1C()
{
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  sub_1001A7B44(0, &qword_1003B5F28);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_10027ADC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___GKGamePolicyLibrary_library + 24);
  v6 = *(v2 + OBJC_IVAR___GKGamePolicyLibrary_library + 32);
  sub_100006454((v2 + OBJC_IVAR___GKGamePolicyLibrary_library), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t GamePolicyLibrary.warmup()()
{
  sub_100005528();
  v1[2] = v0;
  v1[3] = type metadata accessor for Logger();
  sub_10027BF68();
  v1[4] = v2;
  v1[5] = swift_task_alloc();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10027AF74()
{
  static GKLog.library.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Will warmup game policy library.", v3, 2u);
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_100006454((v7 + OBJC_IVAR___GKGamePolicyLibrary_library), *(v7 + OBJC_IVAR___GKGamePolicyLibrary_library + 24));
  sub_10027BF68();
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_10027B134;
  v10 = sub_10020D2FC();

  return v12(v10);
}

uint64_t sub_10027B134()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10027B2BC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10027B364;

  return GamePolicyLibrary.warmup()();
}

uint64_t sub_10027B364()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100004410();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v4 + 8);

  return v6();
}

id GamePolicyLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamePolicyLibrary();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10027B524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithBundleID:v8 adamID:v9 isGame:a5 & 1];

  return v10;
}

uint64_t sub_10027B5C0(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10027B62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10027B670(uint64_t a1, char a2)
{
  v4 = type metadata accessor for GamePolicyLibrary();
  v5 = objc_allocWithZone(v4);
  v9[3] = sub_1001A7B44(0, &qword_1003B8A40);
  v9[4] = &protocol witness table for GPGameLibrary;
  v9[0] = a1;
  if (a2)
  {
    sub_1001E07C4(v9, v5 + OBJC_IVAR___GKGamePolicyLibrary_library);
    v8.receiver = v5;
    v8.super_class = v4;
    v6 = objc_msgSendSuper2(&v8, "init");
    sub_100005BE0(v9);
  }

  else
  {
    sub_100005BE0(v9);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id sub_10027B73C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for GamePolicyLibrary());
  (*(v9 + 16))(v11, a1, a4);
  v13 = sub_10027B854(v11, a2, v12, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v13;
}

id sub_10027B854(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  v9 = sub_100005668(v13);
  (*(*(a4 - 8) + 32))(v9, a1, a4);
  if (a2)
  {
    sub_1001E07C4(v13, a3 + OBJC_IVAR___GKGamePolicyLibrary_library);
    v12.receiver = a3;
    v12.super_class = type metadata accessor for GamePolicyLibrary();
    v10 = objc_msgSendSuper2(&v12, "init");
    sub_100005BE0(v13);
  }

  else
  {
    sub_100005BE0(v13);
    type metadata accessor for GamePolicyLibrary();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t sub_10027B958(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001A7B44(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027B99C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10027BDF0;

  return sub_10027B2BC(v2, v3);
}

uint64_t sub_10027BA58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10027BB04;
  v2 = sub_10020D2FC();

  return v3(v2);
}

uint64_t sub_10027BB04()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10027BBE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_100005668(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

unint64_t sub_10027BC90()
{
  result = qword_1003B8A38;
  if (!qword_1003B8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8A38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GKGamePolicyFeatureFlags(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10027BD94()
{
  result = qword_1003B8A48;
  if (!qword_1003B8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8A48);
  }

  return result;
}

void sub_10027BE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(a13 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v18 = (*(a13 + 48) + 16 * v14);
  *v18 = v16;
  v18[1] = v15;
  *(*(a13 + 56) + 8 * v14) = v13;
}

uint64_t sub_10027BEA4(uint64_t result)
{
  *(v3 - 96) = result;
  *(v3 - 88) = v1;
  *(v3 - 128) = v2;
  return result;
}

uint64_t sub_10027BEE0()
{

  return sub_1001A7B44(0, v0);
}

unint64_t sub_10027BF28()
{

  return sub_1001B247C(v1, v0);
}

uint64_t sub_10027BF4C()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

BOOL sub_10027BF88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14);
}

void *sub_10027BFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + *(v1 + 2536));
  v4 = v3[3];

  return sub_100006454(v3, v4);
}

uint64_t sub_10027BFC8()
{
  v0 = type metadata accessor for UTType();
  sub_10020F4B4(v0, qword_1003B8A50);
  sub_10020F518(v0, qword_1003B8A50);
  return static UTType.json.getter();
}

void sub_10027C05C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a3;
  v7 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    v20 = a4;
    v21 = 1;
    goto LABEL_5;
  }

  v30 = a4;
  URL.path(percentEncoded:)(1);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v31 fileExistsAtPath:v17];

  if ((v18 & 1) == 0)
  {
    sub_100220418(a2, v9);
    if (sub_1001A969C(v9, 1, v10) == 1)
    {
      sub_1001A974C(v9, &qword_1003B5800);
    }

    else
    {
      URL.path(percentEncoded:)(1);
      URL.appendingPathComponent(_:)();

      v23 = *(v11 + 8);
      v23(v9, v10);
      v24 = *(v11 + 32);
      v24(v16, v14, v10);
      URL.path(percentEncoded:)(1);
      v25 = String._bridgeToObjectiveC()();
      v26 = [v31 fileExistsAtPath:v25];

      if (v26)
      {
        v27 = v30;
        v24(v30, v16, v10);
        v28 = v27;
        v29 = 0;
LABEL_14:
        sub_1001A9674(v28, v29, 1, v10);

        return;
      }

      v23(v16, v10);
    }

    v28 = v30;
    v29 = 1;
    goto LABEL_14;
  }

  v19 = v30;
  (*(v11 + 16))(v30, a1, v10);
  v20 = v19;
  v21 = 0;
LABEL_5:
  sub_1001A9674(v20, v21, 1, v10);
  v22 = v31;
}

void sub_10027C380(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (**a3)(void, NSString)@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (URL.isFileURL.getter())
  {
    v30 = a2;
    v31 = v12;
    v32 = a4;
    URL.path(percentEncoded:)(1);
    v18 = String._bridgeToObjectiveC()();
    v19 = a3;
    v20 = a3[2](a3, v18);

    if ((v20 & 1) == 0)
    {
      v29 = v19;
      sub_100220418(v30, v10);
      if (sub_1001A969C(v10, 1, v11) == 1)
      {
        sub_1001A974C(v10, &qword_1003B5800);
      }

      else
      {
        URL.path(percentEncoded:)(1);
        URL.appendingPathComponent(_:)();

        v23 = v31;
        v30 = *(v31 + 8);
        v30(v10, v11);
        v24 = *(v23 + 32);
        v24(v17, v15, v11);
        URL.path(percentEncoded:)(1);
        v25 = String._bridgeToObjectiveC()();
        v26 = v29;
        v27 = v29[2](v29, v25);

        if (v27)
        {
          v28 = v32;
          v24(v32, v17, v11);
          sub_1001A9674(v28, 0, 1, v11);
          v22 = v26;
          goto LABEL_14;
        }

        v30(v17, v11);
      }

      sub_1001A9674(v32, 1, 1, v11);
      v22 = v29;
      goto LABEL_14;
    }

    v21 = v32;
    (*(v31 + 16))(v32, a1, v11);
    sub_1001A9674(v21, 0, 1, v11);
    v22 = v19;
  }

  else
  {
    sub_1001A9674(a4, 1, 1, v11);
    v22 = a3;
  }

LABEL_14:
  _Block_release(v22);
}

void sub_10027C910(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [objc_opt_self() defaultManager];
  sub_10027C05C(a1, a2, v14, v9);

  if (sub_1001A969C(v9, 1, v10) == 1)
  {
    sub_1001A974C(v9, &qword_1003B5800);
    a4[2](a4, 0, 0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    sub_1001D09EC(v15, v16);
    isa = Data._bridgeToObjectiveC()().super.isa;
    (a4)[2](a4, isa, 0);

    sub_1000072CC(v15, v17);
    sub_1000072CC(v15, v17);
    (*(v11 + 8))(v13, v10);
  }

  _Block_release(a4);
}

uint64_t sub_10027CB80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, void))
{
  v6 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = [objc_opt_self() defaultManager];
  sub_10027C05C(a1, a2, v13, v8);

  if (sub_1001A969C(v8, 1, v9) == 1)
  {
    sub_1001A974C(v8, &qword_1003B5800);
    return a3(0, 0xF000000000000000, 0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = Data.init(contentsOf:options:)();
    v17 = v16;
    sub_1001D09EC(v15, v16);
    a3(v15, v17, 0);
    sub_1000072CC(v15, v17);
    sub_1000072CC(v15, v17);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_10027CF80(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003B5550 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for UTType();
  sub_10020F518(v8, qword_1003B8A50);
  URL.appendingPathComponent(_:conformingTo:)();
  v9 = Data.init(contentsOf:options:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  sub_1001D09EC(v9, v11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, isa, 0);

  sub_1000072CC(v9, v11);
  sub_1000072CC(v9, v11);
  _Block_release(a3);
}

void sub_10027D27C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, Class, void))
{
  v65 = a4;
  v68 = a2;
  v69 = a1;
  v4 = sub_1001A6C04(&qword_1003B8AF0);
  __chkstk_darwin(v4 - 8);
  v63 = &v54 - v5;
  v71 = type metadata accessor for URLResourceValues();
  v60 = *(v71 - 8);
  __chkstk_darwin(v71);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v64 = type metadata accessor for NSFastEnumerationIterator();
  v70 = *(v64 - 8);
  __chkstk_darwin(v64);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v61 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v54 - v17;
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  sub_1001A6C04(&qword_1003B8390);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002C3290;
  *(v21 + 32) = NSURLNameKey;
  *(v21 + 40) = NSURLIsDirectoryKey;
  v22 = objc_allocWithZone(LSApplicationRecord);
  v23 = NSURLNameKey;
  v24 = NSURLIsDirectoryKey;
  v25 = v68;

  v26 = sub_10025352C(v69, v25, 0);
  v29 = v26;
  v58 = v15;
  v69 = v11;
  if (v26)
  {
    v30 = [objc_opt_self() defaultManager];
    v31 = [v29 URL];
    v32 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

    v34 = v61;
    v67 = *(v61 + 8);
    v68 = v61 + 8;
    v67(v32, v12);
    if (v33)
    {
      v55 = v29;
      v35 = v69;
      v56 = v33;
      NSEnumerator.makeIterator()();
      v66 = (v34 + 32);
      v59 = (v60 + 4);
      ++v60;
      v54 = (v34 + 16);
      v57 = _swiftEmptyArrayStorage;
      v36 = v63;
      v37 = v64;
      for (i = v70; ; i = v70)
      {
        while (1)
        {
          NSFastEnumerationIterator.next()();
          if (!v72)
          {
            (*(i + 8))(v35, v37);

            v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
            v28 = v65;
            v65[2](v65, v27.super.isa, 0);

            goto LABEL_4;
          }

          if (swift_dynamicCast())
          {
            break;
          }

          sub_1001A9674(v9, 1, 1, v12);
          sub_1001A974C(v9, &qword_1003B5800);
        }

        sub_1001A9674(v9, 0, 1, v12);
        v39 = *v66;
        (*v66)(v18, v9, v12);

        sub_1001D4E64(v40);
        URL.resourceValues(forKeys:)();

        v41 = v71;
        sub_1001A9674(v36, 0, 1, v71);
        v42 = v62;
        (*v59)(v62, v36, v41);
        v43 = URLResourceValues.isDirectory.getter();
        if (v43 == 2)
        {
          break;
        }

        v44 = v43;
        URLResourceValues.name.getter();
        if (!v45)
        {
          goto LABEL_23;
        }

        if ((v44 & 1) == 0)
        {

LABEL_23:
          (*v60)(v42, v71);
LABEL_24:
          v67(v18, v12);
          goto LABEL_25;
        }

        v46._countAndFlagsBits = 0x74696B656D61672ELL;
        v46._object = 0xE800000000000000;
        v47 = String.hasSuffix(_:)(v46);

        if (!v47)
        {
          goto LABEL_23;
        }

        [v56 skipDescendants];
        (*v54)(v58, v18, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001DFA60();
          v57 = v52;
        }

        v48 = v61;
        v49 = *(v57 + 2);
        if (v49 >= *(v57 + 3) >> 1)
        {
          sub_1001DFA60();
          v57 = v53;
        }

        (*v60)(v42);
        v67(v18, v12);
        v51 = v57;
        v50 = v58;
        *(v57 + 2) = v49 + 1;
        v39(&v51[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v49], v50, v12);
LABEL_25:
        v36 = v63;
        v37 = v64;
        v35 = v69;
      }

      (*v60)(v42, v41);
      goto LABEL_24;
    }
  }

  else
  {
  }

  v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v28 = v65;
  v65[2](v65, v27.super.isa, 0);
LABEL_4:

  _Block_release(v28);
}

void sub_10027DA9C(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void *, void))
{
  v7 = sub_1001A6C04(&qword_1003B8AF0);
  __chkstk_darwin(v7 - 8);
  v118 = &v97 - v8;
  v115 = type metadata accessor for URLResourceValues();
  v112 = *(v115 - 8);
  __chkstk_darwin(v115);
  v117 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NSFastEnumerationIterator();
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v120 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v121 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v97 - v16;
  v18 = sub_1001A6C04(&qword_1003B5800);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v116 = (&v97 - v23);
  v24 = __chkstk_darwin(v22);
  v108 = &v97 - v25;
  v26 = __chkstk_darwin(v24);
  v109 = &v97 - v27;
  v28 = __chkstk_darwin(v26);
  v110 = &v97 - v29;
  v30 = __chkstk_darwin(v28);
  v111 = &v97 - v31;
  v32 = __chkstk_darwin(v30);
  v119 = &v97 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v97 - v35;
  __chkstk_darwin(v34);
  v38 = &v97 - v37;
  v39 = [objc_opt_self() defaultWorkspace];
  if (!v39)
  {
LABEL_21:
    sub_1001A9674(v38, 1, 1, v12);
    sub_100220418(v38, v36);
    if (sub_1001A969C(v36, 1, v12) == 1)
    {
      v57 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v56);
      v57 = v58;
      (*(v121 + 8))(v36, v12);
    }

    a4[2](a4, v57, 0);

    sub_1001A974C(v38, &qword_1003B5800);
    v59 = a4;
    goto LABEL_25;
  }

  v40 = v39;
  v105 = a1;
  v106 = a2;
  v41 = sub_10027EBE8(a1, a2, v39);
  if (!v41)
  {
LABEL_16:

    goto LABEL_21;
  }

  v107 = v40;
  v40 = v41;
  v42 = [v41 bundle];
  if (!v42)
  {

    goto LABEL_16;
  }

  v102 = v15;
  v104 = a4;
  v43 = v42;
  v44 = sub_10027EC38(v42);
  if (!v44)
  {

LABEL_20:
    a4 = v104;
    goto LABEL_21;
  }

  v103 = v43;
  sub_1001AFB10(0x656C646E75424643, 0xED0000736E6F6349, v44, &v123);

  if (!v124)
  {
    goto LABEL_18;
  }

  sub_1001A6C04(&qword_1003B6320);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_1001AFB10(0xD000000000000013, 0x800000010030E760, v122, &v123);

  if (!v124)
  {
LABEL_18:

    sub_1001A974C(&v123, &qword_1003B5808);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1001AFB10(0xD000000000000011, 0x800000010030E780, v122, &v123);

  if (!v124)
  {
    goto LABEL_18;
  }

  sub_1001A6C04(&unk_1003B6BD0);
  v45 = swift_dynamicCast();
  a4 = v104;
  if ((v45 & 1) == 0)
  {
LABEL_27:

    goto LABEL_21;
  }

  if (!v122[2])
  {

    goto LABEL_27;
  }

  v46 = v122[4];
  v100 = v122[5];

  sub_1001A6C04(&qword_1003B8390);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002C3290;
  *(v47 + 32) = NSURLIsRegularFileKey;
  *(v47 + 40) = NSURLNameKey;
  v101 = v47;
  v48 = objc_allocWithZone(LSApplicationRecord);
  v49 = NSURLIsRegularFileKey;
  v50 = NSURLNameKey;
  v51 = v106;

  v52 = sub_10025352C(v105, v51, 0);
  v61 = v52;
  v62 = v104;
  if (!v52)
  {
LABEL_13:

    v53 = v116;
    sub_1001A9674(v116, 1, 1, v12);
    sub_100220418(v53, v21);
    if (sub_1001A969C(v21, 1, v12) == 1)
    {
      v55 = 0;
    }

    else
    {
      URL._bridgeToObjectiveC()(v54);
      v55 = v60;
      (*(v121 + 8))(v21, v12);
    }

    v62[2](v62, v55, 0);

    sub_1001A974C(v53, &qword_1003B5800);
    v59 = v62;
    goto LABEL_25;
  }

  v63 = [objc_opt_self() defaultManager];
  v105 = v61;
  v64 = [v61 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v66 = v121;
  v106 = *(v121 + 8);
  v106(v17, v12);
  if (!v65)
  {

    v62 = v104;
    goto LABEL_13;
  }

  v98 = v46;
  v67 = v120;
  v99 = v65;
  NSEnumerator.makeIterator()();
  v68 = (v66 + 32);
  v69 = (v112 + 32);
  v116 = (v112 + 8);
  v70 = v115;
LABEL_33:
  v71 = v119;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v124)
    {
      break;
    }

    if (swift_dynamicCast())
    {
      sub_1001A9674(v71, 0, 1, v12);
      (*v68)(v102, v71, v12);

      sub_1001D4E64(v72);
      v73 = v118;
      URL.resourceValues(forKeys:)();

      sub_1001A9674(v73, 0, 1, v70);
      v74 = v117;
      (*v69)(v117, v73, v70);
      v75 = URLResourceValues.isRegularFile.getter();
      if (v75 == 2)
      {
        (*v116)(v74, v70);
        v106(v102, v12);
        v67 = v120;
        goto LABEL_33;
      }

      v76 = v75;
      URLResourceValues.name.getter();
      v71 = v119;
      if (v77)
      {
        if (v76)
        {
          v78._countAndFlagsBits = v98;
          v78._object = v100;
          v79 = String.hasPrefix(_:)(v78);

          if (v79)
          {

            v89 = v109;
            (*(v121 + 16))(v109, v102, v12);
            sub_1001A9674(v89, 0, 1, v12);
            v90 = v89;
            v91 = v108;
            sub_100220418(v90, v108);
            v92 = sub_1001A969C(v91, 1, v12);
            if (v92 == 1)
            {
              v94 = 0;
            }

            else
            {
              v95 = v108;
              URL._bridgeToObjectiveC()(v93);
              v94 = v96;
              v106(v95, v12);
            }

            v88 = v104;
            v104[2](v104, v94, 0);

            sub_1001A974C(v109, &qword_1003B5800);
            (*v116)(v117, v115);
            v106(v102, v12);
            (*(v113 + 8))(v120, v114);
            goto LABEL_52;
          }
        }

        else
        {
        }

        v81 = v117;
        v80 = *v116;
      }

      else
      {
        v80 = *v116;
        v81 = v74;
      }

      v70 = v115;
      v80(v81, v115);
      v106(v102, v12);
      v67 = v120;
    }

    else
    {
      sub_1001A9674(v71, 1, 1, v12);
      sub_1001A974C(v71, &qword_1003B5800);
    }
  }

  (*(v113 + 8))(v67, v114);

  v82 = v111;
  sub_1001A9674(v111, 1, 1, v12);
  v83 = v110;
  sub_100220418(v82, v110);
  if (sub_1001A969C(v83, 1, v12) == 1)
  {
    v85 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v84);
    v85 = v86;
    v106(v83, v12);
  }

  v87 = v99;
  v88 = v104;
  v104[2](v104, v85, 0);

  sub_1001A974C(v82, &qword_1003B5800);
LABEL_52:
  v59 = v88;
LABEL_25:
  _Block_release(v59);
}

uint64_t sub_10027E8E4(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
}

id sub_10027E980(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for GKGameKitDirectoryServicePrivateImpl();
  v5 = objc_msgSendSuper2(&v7, "initWithoutCredentialWithTransport:forClient:", a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_10027EA3C(void *a1, void *a2, void *a3, void *a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for GKGameKitDirectoryServicePrivateImpl();
  v9 = objc_msgSendSuper2(&v11, "initWithTransport:forClient:localPlayer:credential:", a1, a2, a3, a4);

  if (v9)
  {
  }

  return v9;
}

id sub_10027EB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKGameKitDirectoryServicePrivateImpl();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10027EB90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKGameKitDirectoryServicePrivateImpl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10027EBE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 applicationProxyForBundleID:v4];

  return v5;
}

uint64_t sub_10027EC38(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10027ECA4()
{
  result = qword_1003B8AF8;
  if (!qword_1003B8AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B8AF8);
  }

  return result;
}

void sub_10027ECE8(uint64_t a1@<X8>)
{
  v3 = sub_1001A6C04(&qword_1003B8C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1001BACB8();
  v7 = type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  if (sub_1001A969C(v5, 1, v7) != 1)
  {
    sub_1002801C8(v5, a1);
    if (*(v6 + 16))
    {
      sub_100216AA4(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10027EDC4(uint64_t a1)
{
  v6 = &type metadata for String;
  v4 = 0;
  v5 = 0xE000000000000000;
  sub_10020F3F8(a1, *(a1 + 24));
  dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();
  result = sub_100005BE0(&v4);
  if (!v1)
  {
    v6 = &type metadata for String;
    v4 = 0;
    v5 = 0xE000000000000000;
    sub_10020F3F8(a1, *(a1 + 24));
    dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();
    return sub_100005BE0(&v4);
  }

  return result;
}

uint64_t sub_10027EEBC()
{
  v1 = OBJC_IVAR____TtC14GameDaemonCore33MultiplayerActivityFieldsProvider_category;
  v2 = type metadata accessor for MetricsFieldsProviderCategory();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10027EF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10027F018;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t sub_10027F018()
{
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10027F104@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14GameDaemonCore33MultiplayerActivityFieldsProvider_category;
  v5 = type metadata accessor for MetricsFieldsProviderCategory();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10027F198()
{
  v0 = type metadata accessor for MetricsFieldInclusionRequest();
  sub_10020F4B4(v0, qword_1003C0B30);
  sub_10020F518(v0, qword_1003C0B30);
  return MetricsFieldInclusionRequest.init(rawValue:)();
}

uint64_t MultiplayerActivityEventFilter.trackedSessions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GKMultiplayerActivityEventFilter_trackedSessions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MultiplayerActivityEventFilter.init()()
{
  ObjectType = swift_getObjectType();
  result = [objc_opt_self() shared];
  if (result)
  {
    v2 = result;
    [result multiplayerActivityFeedMaxSessionDuration];
    v4 = v3;

    v5 = objc_allocWithZone(ObjectType);
    v6 = MultiplayerActivityEventFilter.init(maxSessionDuration:maxTrackedSessionsCount:)(128, v4);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MultiplayerActivityEventFilter.init(maxSessionDuration:maxTrackedSessionsCount:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000043B4();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  sub_1000043B4();
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_1000043B4();
  v11 = OBJC_IVAR___GKMultiplayerActivityEventFilter_serialQueue;
  sub_1000049AC();
  static DispatchQoS.default.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000049F0();
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v2[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR___GKMultiplayerActivityEventFilter_maxSessionDuration] = a2;
  *&v2[OBJC_IVAR___GKMultiplayerActivityEventFilter_maxTrackedSessionsCount] = a1;
  *&v2[OBJC_IVAR___GKMultiplayerActivityEventFilter_trackedSessions] = _swiftEmptyArrayStorage;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t MultiplayerActivityEventFilter.filterEvent(metricsFields:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_10027F6A4, 0, 0);
}

uint64_t sub_10027F6A4()
{
  type metadata accessor for MultiplayerActivityReporter();
  v1 = static MultiplayerActivityReporter.extractSessionID(fields:)();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_task_alloc();
    v7[2] = v5;
    v7[3] = v3;
    v7[4] = v4;
    v7[5] = v6;
    sub_1001A6C04(&qword_1003B8B20);
    OS_dispatch_queue.sync<A>(execute:)();

    v8 = v0[2];
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10027F7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  v48 = a5;
  v8 = type metadata accessor for Date();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = __chkstk_darwin(v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v39 - v11;
  v46 = type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  v12 = *(v46 - 8);
  v13 = __chkstk_darwin(v46);
  v39 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = (&v39 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = &v39 - v19;
  __chkstk_darwin(v18);
  v40 = &v39 - v21;
  v22 = OBJC_IVAR___GKMultiplayerActivityEventFilter_trackedSessions;
  swift_beginAccess();
  v47 = a1;
  v23 = *(a1 + v22);
  v24 = *(v23 + 16);

  for (i = 0; v24 != i; ++i)
  {
    if (i >= *(v23 + 16))
    {
      __break(1u);
      return result;
    }

    sub_100280108(v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i, v17);
    v27 = *v17 == a2 && v17[1] == a3;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1002801C8(v17, v20);
      v28 = v40;
      sub_1002801C8(v20, v40);
      v29 = v41;
      static Date.+ infix(_:_:)();
      v30 = v42;
      static Date.now.getter();
      v31 = static Date.> infix(_:_:)();
      v32 = *(v43 + 8);
      v33 = v30;
      v34 = v44;
      v32(v33, v44);
      v32(v29, v34);
      sub_10028016C(v28);
      if (v31)
      {
      }

      else
      {
        result = 0;
      }

      *v48 = result;
      return result;
    }

    result = sub_10028016C(v17);
  }

  v35 = v39;
  static Date.now.getter();
  *v35 = a2;
  v35[1] = a3;
  v36 = v47;
  swift_beginAccess();
  sub_100282AE8();
  v37 = *(*(v36 + v22) + 16);
  sub_100282B5C(v37);
  v38 = *(v36 + v22);
  *(v38 + 16) = v37 + 1;
  sub_1002801C8(v35, v38 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v37);
  *(v36 + v22) = v38;
  swift_endAccess();
  if (*(v36 + OBJC_IVAR___GKMultiplayerActivityEventFilter_maxTrackedSessionsCount) <= v37)
  {
    swift_beginAccess();
    sub_10027ECE8(v35);
    swift_endAccess();
    sub_10028016C(v35);
  }

  *v48 = v45;
}

uint64_t sub_10027FC84(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10027FD6C;

  return MultiplayerActivityEventFilter.filterEvent(metricsFields:)(v5);
}

uint64_t sub_10027FD6C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_100004410();
  *v6 = v5;

  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = *(v3 + 24);
  (v8)[2](v8, v7.super.isa);

  _Block_release(v8);
  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_10027FFD8()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100280054()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10027F018;

  return sub_10027FC84(v2, v3, v4);
}

uint64_t sub_100280108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028016C(uint64_t a1)
{
  v2 = type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002801C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028022C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B60F0);
  v5 = sub_100006A0C(v4);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  type metadata accessor for TaskPriority();
  v8 = sub_10028313C();
  sub_1001A9674(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002CA240;
  v13[5] = v12;
  sub_10028284C(0, 0, v7, &unk_1002CA250, v13);
}

uint64_t sub_100280330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  sub_1001AF7C0(a1, v17 - v8);
  v10 = type metadata accessor for TaskPriority();
  if (sub_1001A969C(v9, 1, v10) == 1)
  {
    sub_100282C48(v9);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  sub_1001A6C04(&qword_1003B8D70);
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_100280518()
{
  sub_1000057FC();
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10028063C;
  v2 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&qword_1003B8C98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001DC494;
  v0[13] = &unk_10036F140;
  v0[14] = v2;
  [v1 fetchUserRecordIDWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10028063C()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_100280748;
  }

  else
  {
    v5 = sub_100280740;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100280748()
{
  sub_1000057FC();
  swift_willThrow();
  sub_1000046F8();

  return v0();
}

uint64_t sub_1002807D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100280864;

  return GKDefaultUserRecordIDFetcher.fetchUserRecordID()();
}

uint64_t sub_100280864()
{
  sub_100005528();
  v3 = v2;
  sub_1000057F0();
  v4 = *v1;
  sub_100004410();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

id GKCloudKitMultiplayerCache.init()()
{
  swift_defaultActor_initialize();
  v0[19] = _swiftEmptyArrayStorage;
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0x4014000000000000;
  v1 = type metadata accessor for GKDefaultUserRecordIDFetcher();
  v2 = swift_allocObject();
  v0[17] = v1;
  v0[18] = &protocol witness table for GKDefaultUserRecordIDFetcher;
  v0[14] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GKCloudKitMultiplayerCache();
  return objc_msgSendSuper2(&v4, "init");
}

id GKCloudKitMultiplayerCache.init(fetcher:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[19] = _swiftEmptyArrayStorage;
  v1[20] = 0;
  v1[21] = 0;
  v1[22] = 0x4014000000000000;
  sub_1001E07C4(a1, (v1 + 14));
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKCloudKitMultiplayerCache();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100005BE0(a1);
  return v3;
}

uint64_t sub_100280B40()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = sub_100280D7C();
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v4 = sub_100280F7C();
  *v3 = v0;
  v3[1] = sub_100280C34;
  v5 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v2, 0x6F63655272657375, 0xEE00292844496472, sub_100280F74, v5, v4);
}

uint64_t sub_100280C34()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_100006028();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v0;

  sub_100268D7C();
  v5 = *(v4 + 24);
  if (v0)
  {
    v6 = sub_100280D58;
  }

  else
  {
    v6 = sub_100280D50;
  }

  return _swift_task_switch(v6, v5, 0);
}

unint64_t sub_100280D7C()
{
  result = qword_1003B8CA0;
  if (!qword_1003B8CA0)
  {
    type metadata accessor for GKCloudKitMultiplayerCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8CA0);
  }

  return result;
}

void sub_100280DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B8D80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  swift_beginAccess();
  sub_100282B00(sub_1001DFBF0);
  v10 = *(*(a2 + 152) + 16);
  sub_100282B74(v10, sub_1001DFBF0);
  v11 = *(a2 + 152);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 16 * v10;
  *(v12 + 32) = sub_100283078;
  *(v12 + 40) = v9;
  *(a2 + 152) = v11;
  swift_endAccess();
  sub_100281544();
}

unint64_t sub_100280F7C()
{
  result = qword_1003B8CA8;
  if (!qword_1003B8CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B8CA8);
  }

  return result;
}

id sub_100280FC0(id *a1, void *a2)
{
  if (*a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_1001A6C04(&qword_1003B8D80);
    return CheckedContinuation.resume(throwing:)();
  }

  if (*a1)
  {
    v3 = *a1;
    sub_1001A6C04(&qword_1003B8D80);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    result = [objc_opt_self() _gkUserErrorForGameSessionErrorCode:2 userInfo:0];
    if (result)
    {
      goto LABEL_3;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100281108(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1002811B0;

  return GKCloudKitMultiplayerCache.userRecordID()();
}

uint64_t sub_1002811B0()
{
  sub_1001AFA50();
  v2 = v0;
  v4 = v3;
  sub_100268DF8();
  v5 = *v1;
  sub_100004410();
  *v6 = v5;

  sub_100268D7C();
  v8 = *(v7 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v7 + 24), v4, 0);
    _Block_release(v8);
  }

  v10 = *(v5 + 8);

  return v10();
}

Swift::Void __swiftcall GKCloudKitMultiplayerCache.refetchUserRecordID()()
{
  v1 = sub_1001A6C04(&qword_1003B60F0);
  v2 = sub_100006A0C(v1);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for TaskPriority();
  sub_10028316C(v3);
  sub_1001F7388();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v0;

  sub_1001AFA3C();
  sub_1001D1C0C();
}

uint64_t sub_100281420()
{
  sub_100005528();
  sub_100282334();
  sub_100281544();
  sub_1000046F8();

  return v0();
}

uint64_t sub_10028147C()
{
  sub_1000057FC();
  sub_100283124();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_100283108(v1);

  return sub_100281400(v3, v4, v5, v6);
}

void sub_100281544()
{
  v1 = sub_1001A6C04(&qword_1003B60F0);
  v2 = sub_100006A0C(v1);
  __chkstk_darwin(v2);
  v3 = *(v0 + 168);
  if (v3)
  {
    v8 = v3;
    sub_100282278(v3, 0);
  }

  else if (!*(v0 + 160))
  {
    v4 = type metadata accessor for TaskPriority();
    sub_10028316C(v4);
    v5 = sub_100280D7C();
    sub_1001F7388();
    v6 = swift_allocObject();
    v6[2] = v0;
    v6[3] = v5;
    v6[4] = v0;
    swift_retain_n();
    sub_1001AFA3C();
    sub_1001D1C0C();
    *(v0 + 160) = v7;
  }
}

uint64_t sub_10028168C()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = sub_1001A6C04(&qword_1003B8D70);
  v3 = sub_100280D7C();
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100281780;
  v5 = *(v0 + 24);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v2, v2, v1, v3, &unk_1002CA1F0, v5, v2);
}

uint64_t sub_100281780()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_100006028();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v0;

  sub_100268D7C();
  v5 = *(v4 + 24);
  if (v0)
  {
    v6 = sub_100281984;
  }

  else
  {
    v6 = sub_10028189C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10028189C()
{
  sub_1000057FC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v1 + 168);
    *(v1 + 168) = v2;
    v4 = v2;

    sub_100282278(v2, 0);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = Dictionary.init(dictionaryLiteral:)();
    v4 = sub_1001FD52C(35, v6, v5);
    sub_100282278(0, v4);
  }

  sub_1000046F8();

  return v7();
}

uint64_t sub_100281984()
{
  sub_100005528();
  v1 = *(v0 + 40);
  swift_errorRetain();
  sub_100282278(0, v1);

  sub_1000046F8();

  return v2();
}

uint64_t sub_100281A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1001A6C04(&qword_1003B60F0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_100281AA4, a3, 0);
}

uint64_t sub_100281AA4()
{
  sub_1001AFA50();
  v1 = v0[5];
  v2 = v0[6];
  v3 = type metadata accessor for TaskPriority();
  v4 = sub_10028313C();
  sub_1001A9674(v4, v5, v6, v3);
  sub_1001F7388();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_100280330(v2, &unk_1002CA200, v7);
  sub_100282C48(v2);
  v8 = sub_10028313C();
  sub_1001A9674(v8, v9, v10, v3);
  sub_1001F7388();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_100280330(v2, &unk_1002CA210, v11);
  sub_100282C48(v2);
  v12 = sub_100280D7C();
  v13 = swift_task_alloc();
  v0[7] = v13;
  v14 = sub_1001A6C04(&qword_1003B8D78);
  *v13 = v0;
  v13[1] = sub_100281C38;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, v1, v12, v14);
}

uint64_t sub_100281C38()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_100006028();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  sub_100268D7C();
  v5 = *(v4 + 40);
  if (v0)
  {
    v6 = sub_1001BC26C;
  }

  else
  {
    v6 = sub_100281D54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100281D54()
{
  sub_1000057FC();
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    v1 = 0;
  }

  else
  {
    sub_1001A6C04(&qword_1003B8D70);
    sub_1001A6C04(&unk_1003B6170);
    ThrowingTaskGroup.cancelAll()();
  }

  **(v0 + 24) = v1;

  sub_1000046F8();

  return v2();
}

uint64_t sub_100281E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100281E40, 0, 0);
}

uint64_t sub_100281E40()
{
  sub_1001AFA50();
  v1 = *(v0 + 24);
  v2 = v1[17];
  v3 = v1[18];
  sub_100006454(v1 + 14, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_100281F64;

  return v6(v2, v3);
}

uint64_t sub_100281F64()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_100006028();
  *v6 = v5;
  v7 = *v1;
  sub_100004410();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;

    return _swift_task_switch(sub_10028209C, 0, 0);
  }
}

uint64_t sub_1002820AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100282150;

  return static Task<>.sleep(nanoseconds:)(5000000000);
}

uint64_t sub_100282150()
{
  sub_100005528();
  sub_1000057F0();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;

  if (v0)
  {
    sub_1000046F8();

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10028226C, 0, 0);
  }
}

uint64_t sub_100282278(uint64_t a1, uint64_t a2)
{
  sub_10028314C();
  v5 = *(v2 + 152);
  *(v2 + 152) = _swiftEmptyArrayStorage;
  *(v2 + 160) = 0;

  v7 = 0;
  v8 = *(v5 + 16);
  for (i = v5 + 40; ; i += 16)
  {
    if (v8 == v7)
    {
    }

    if (v7 >= *(v5 + 16))
    {
      break;
    }

    ++v7;
    v10 = *(i - 8);
    v11 = a2;
    v12[0] = a1;

    v10(v12, &v11);
  }

  __break(1u);
  return result;
}

void sub_100282334()
{
  sub_10028314C();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 152) = _swiftEmptyArrayStorage;
  if (v2)
  {

    Task.cancel()();
  }

  *(v0 + 160) = 0;

  v3 = objc_opt_self();
  v4 = Dictionary.init(dictionaryLiteral:)();
  v5 = sub_1001FD52C(35, v4, v3);
  v6 = 0;
  v7 = *(v1 + 16);
  for (i = v1 + 40; ; i += 16)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= *(v1 + 16))
    {
      break;
    }

    ++v6;
    v9 = *(i - 8);
    v10 = v5;
    v11[0] = 0;

    v9(v11, &v10);
  }

  __break(1u);
}

uint64_t GKCloudKitMultiplayerCache.deinit()
{
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100282334();
  sub_100005BE0(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t _s14GameDaemonCore26GKCloudKitMultiplayerCacheCfZ(uint64_t a1)
{
  GKCloudKitMultiplayerCache.deinit();

  return _swift_defaultActor_deallocate(a1);
}

uint64_t sub_100282550()
{
  sub_1000057FC();
  sub_100283124();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_100283108(v1);

  return sub_10028166C(v3, v4, v5, v6);
}

uint64_t sub_1002825DC()
{
  sub_1000057FC();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = sub_100004400(v5);
  *v6 = v7;
  v6[1] = sub_1001AF9F8;

  return sub_100281A00(v4, v2, v0);
}

uint64_t sub_10028267C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1001AF9F8;

  return v6();
}

uint64_t sub_100282764(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1001AF328;

  return v7();
}

uint64_t sub_10028284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_1001AF7C0(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_1001A969C(v11, 1, v12) == 1)
  {
    sub_100282C48(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100282C48(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100282C48(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100282B00(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100282B74(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100282BBC()
{
  sub_1000057FC();
  sub_100283124();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_100283108(v1);

  return sub_100281E20(v3, v4, v5, v6);
}

uint64_t sub_100282C48(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B60F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100282CB0()
{
  swift_unknownObjectRelease();

  sub_1001F7388();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100282CEC()
{
  sub_1000057FC();
  sub_100283124();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_100283108(v1);

  return sub_1002820AC(v3);
}

uint64_t sub_100282D78()
{
  sub_1000057FC();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AF328;

  return sub_100281108(v2, v3);
}

uint64_t sub_100282E20()
{
  sub_1001AFA50();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001AF9F8;

  return sub_10028267C(v2, v3, v4);
}

uint64_t sub_100282EDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100282F1C()
{
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

uint64_t sub_100282FD4()
{
  sub_1000057FC();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  v3 = sub_1001AF9FC();

  return v4(v3);
}

id sub_100283078(id *a1, void *a2)
{
  v4 = sub_1001A6C04(&qword_1003B8D80);
  sub_100006A0C(v4);

  return sub_100280FC0(a1, a2);
}

uint64_t sub_10028314C()
{

  return swift_beginAccess();
}

uint64_t sub_10028316C(uint64_t a1)
{

  return sub_1001A9674(v1, 1, 1, a1);
}

NSObject *GKGameModeListener.init(handler:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v46 = type metadata accessor for Logger();
  sub_1000043C4();
  v44 = v3;
  v5 = __chkstk_darwin(v4);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v38 - v7;
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000043C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000043B4();
  v13 = v12 - v11;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  sub_1000043B4();
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  sub_1000043B4();
  *&v2[OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken] = -1;
  v39 = OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationQueue;
  sub_1000049AC();
  static DispatchQoS.default.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000049F0();
  sub_1001A6C04(&qword_1003B5588);
  sub_100004A48();
  v16 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  v17 = v41;
  *&v2[v39] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static GKLog.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "GKGameModeListener: Initializing", v20, 2u);
  }

  v21 = *(v44 + 8);
  v22 = v46;
  v21(v17, v46);
  v23 = &v16[OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeChangedHandler];
  v24 = v45;
  *v23 = v43;
  *(v23 + 1) = v24;
  v49.receiver = v16;
  v49.super_class = ObjectType;

  v25 = objc_msgSendSuper2(&v49, "init");
  out_token = -1;
  v26 = *&v25[OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationQueue];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002839A8;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100283D28;
  aBlock[3] = &unk_10036F330;
  v28 = _Block_copy(aBlock);
  v29 = v25;
  v30 = v26;

  v31 = String.utf8CString.getter();
  v32 = notify_register_dispatch((v31 + 32), &out_token, v30, v28);

  _Block_release(v28);

  if (v32 || out_token == -1)
  {
    v33 = v38;
    static GKLog.daemon.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67109120;
      *(v36 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v34, v35, "GKGameModeListener: Failed to register for game mode changed notification, status: %u", v36, 8u);
    }

    else
    {

      v34 = v29;
    }

    v21(v33, v22);
  }

  else
  {

    *(&v29->isa + OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken) = out_token;
  }

  return v29;
}

void sub_100283780()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    static GKLog.daemon.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "GKGameModeListener: Received game mode changed notification", v11, 2u);
    }

    (*(v1 + 8))(v4, v0);
    sub_1002839B0();
  }

  else
  {
    static GKLog.daemon.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "GKGameModeListener: Received game mode changed notification after event stream was deallocated name", v14, 2u);
    }

    (*(v1 + 8))(v6, v0);
  }
}

uint64_t sub_1002839B0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken;
  if (notify_is_valid_token(*(v1 + OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken)))
  {
    state64 = 0;
    state = notify_get_state(*(v1 + v12), &state64);
    if (state)
    {
      v14 = state;
      static GKLog.daemon.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "GKGameModeListener: notify_get_state() failed with error %u", v17, 8u);
      }

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      v22 = state64;
      static GKLog.daemon.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        swift_beginAccess();
        *(v25 + 4) = state64;
        *(v25 + 12) = 1024;
        *(v25 + 14) = v22 != 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "GKGameModeListener: Game Mode Status is now %lld, calling game mode changed handler with isActive=%{BOOL}d", v25, 0x12u);
      }

      (*(v3 + 8))(v11, v2);
      v26 = *(v1 + OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeChangedHandler);

      v26(v22 != 0);
    }
  }

  else
  {
    static GKLog.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "GKGameModeListener: Invalid game mode changed notify token", v21, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100283D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100283D7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id GKGameModeListener.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  sub_1000043C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000043B4();
  v9 = v8 - v7;
  static GKLog.daemon.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "GKGameModeListener: Deallocating", v12, 2u);
  }

  (*(v5 + 8))(v9, v3);
  v13 = OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken;
  v14 = *&v1[OBJC_IVAR____TtC14GameDaemonCore18GKGameModeListener_gameModeNotificationToken];
  if (v14 != -1)
  {
    notify_cancel(v14);
    *&v1[v13] = -1;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "dealloc");
}

void sub_100284058(uint64_t a1, uint64_t a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1002840D8(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v4 = type metadata accessor for Logger();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v68 = v9 - v8;
  v10 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v64 = type metadata accessor for URL();
  sub_1000043C4();
  v62 = v13;
  __chkstk_darwin(v14);
  sub_1000043B4();
  v17 = v16 - v15;
  v18 = *(a2 + 176);
  if (v18)
  {
    v19 = *(a2 + 168);
    v20 = *(a2 + 184);
    v21 = *(a2 + 192);
    v22 = *(a2 + 88);
    v74[0] = *(a2 + 72);
    v74[1] = v22;
    v74[2] = *(a2 + 104);
    v23 = *(&v74[0] + 1);
    if (*(&v74[0] + 1))
    {
      v63 = v12;
      v61 = v17;
      v65 = v6;
      v66 = v4;
      v67 = *&v74[0];
      v24 = *(a2 + 104);
      v75 = *(a2 + 88);
      v76 = v24;
      v25 = *(a2 + 16);
      v73[0] = *a2;
      v73[1] = v25;
      v26 = *(a2 + 48);
      v73[2] = *(a2 + 32);
      v73[3] = v26;
      v27 = *(&v73[0] + 1);
      if (*(&v73[0] + 1))
      {
        v28 = *&v73[0];
        v29 = &v2[OBJC_IVAR___GKGameActivityBulletin_activityVendorID];
        *v29 = v20;
        *(v29 + 1) = v21;
        v30 = &v2[OBJC_IVAR___GKGameActivityBulletin_activityURLRaw];
        *v30 = v19;
        v30[1] = v18;
        v78 = *(a2 + 88);
        *&v2[OBJC_IVAR___GKGameActivityBulletin_bundleID] = v78;
        v77 = __PAIR128__(v27, v28);
        *&v2[OBJC_IVAR___GKGameActivityBulletin_inviterPlayerID] = __PAIR128__(v27, v28);
        sub_100286D00(v19, v18);
        sub_1001A96E4(v74, v72, &qword_1003B8E10);

        sub_1001EB808(&v78, v72);
        sub_1001EB808(&v77, v72);
        sub_1001A96E4(v73, v72, &qword_1003B6580);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v32 = type metadata accessor for GameActivityBulletin();
        v71.receiver = v2;
        v71.super_class = v32;
        v33 = objc_msgSendSuper2(&v71, "initWithPushNotification:", isa);

        if (v33)
        {

          sub_1001A974C(v73, &qword_1003B6580);
          *&v79[0] = v67;
          *(&v79[0] + 1) = v23;
          sub_1001EB8D4(v79);
          sub_1001EB8D4(&v78);
          v72[0] = v76;
          sub_1001EB8D4(v72);

          sub_1002317B0(a2);
          v34 = objc_opt_self();
          v35 = &v33[OBJC_IVAR___GKGameActivityBulletin_bundleID];
          v36 = *&v33[OBJC_IVAR___GKGameActivityBulletin_bundleID];
          v37 = *&v33[OBJC_IVAR___GKGameActivityBulletin_bundleID + 8];

          v38 = sub_100286DB4(v36, v37, v34);
          v39 = v68;
          if (v38)
          {
            v40 = v38;

            v41 = v63;
            URL.init(string:)();

            v42 = v64;
            if (sub_1001A969C(v41, 1, v64) != 1)
            {
              v54 = v61;
              v53 = v62;
              (*(v62 + 32))(v61, v41, v42);
              URL._bridgeToObjectiveC()(v55);
              v57 = v56;
              v58 = *&v33[OBJC_IVAR___GKGameActivityBulletin_inviterPlayerID];
              v59 = *&v33[OBJC_IVAR___GKGameActivityBulletin_inviterPlayerID + 8];

              sub_100286E18(v57, v58, v59, v40);

              (*(v53 + 8))(v54, v42);
              return v33;
            }

            sub_1001A974C(v41, &qword_1003B5800);
          }

          static GKLog.daemon.getter();
          v43 = v33;
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = sub_100005AE4();
            v47 = sub_100005808();
            v70 = v47;
            *v46 = 136315138;
            v48 = *v35;
            v49 = v35[1];

            v50 = sub_100005C3C(v48, v49, &v70);

            *(v46 + 4) = v50;
            sub_1002870CC(&_mh_execute_header, v51, v52, "GameActivityBulletin: No client process found for game bundle identifier: %s.");
            sub_100005BE0(v47);
            sub_1001E3DC0();
            sub_1000043D8();
          }

          (*(v65 + 8))(v39, v66);
          return v33;
        }

        __break(1u);
      }

      *&v78 = v67;
      *(&v78 + 1) = v23;
      sub_100286D00(v19, v18);
      sub_1001A96E4(v74, v72, &qword_1003B8E10);
      sub_1001EB8D4(&v78);
      v79[0] = v75;
      sub_1001EB8D4(v79);
      v72[0] = v76;
      sub_1001EB8D4(v72);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1002846DC(uint64_t a1)
{

  v3 = String._bridgeToObjectiveC()();

  sub_1000060A0();
  sub_100286FCC();
  v4 = String._bridgeToObjectiveC()();

  v5 = sub_100006234();
  [v5 v6];

  sub_100287098();
  v7 = String._bridgeToObjectiveC()();

  sub_100287010();
  sub_100286FCC();
  v8 = String._bridgeToObjectiveC()();

  v9 = sub_100006234();
  [v9 v10];

  sub_100287098();
  v11 = String._bridgeToObjectiveC()();

  sub_10028704C();
  sub_100286FCC();
  v12 = String._bridgeToObjectiveC()();

  v13 = sub_100006234();
  [v13 v14];

  sub_100287098();
  v15 = String._bridgeToObjectiveC()();

  sub_100286FEC();
  v23 = v16;
  v24 = v17;
  sub_100286FCC();
  v18 = String._bridgeToObjectiveC()();

  v19 = sub_100006234();
  [v19 v20];

  v22.receiver = v1;
  v22.super_class = type metadata accessor for GameActivityBulletin();
  return objc_msgSendSuper2(&v22, "encodeWithCoder:", a1);
}

id sub_100284938(void *a1)
{
  sub_1000060A0();
  v87 = v4;
  v88 = v3;
  String.init<A>(_:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = sub_1002870C0();
  v8 = [v6 v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1002870B4();
  }

  sub_1000059D8(v9, v10, v11, v12, v13, v14, v15, v16, v76, v80, v84.receiver, v84.super_class, v85, v86, v87, v88, v89);
  if (!v17)
  {

LABEL_32:
    sub_1001A974C(v90, &qword_1003B5808);
    goto LABEL_36;
  }

  if ((sub_100004968() & 1) == 0)
  {

LABEL_36:
    type metadata accessor for GameActivityBulletin();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v19 = v85;
  v18 = v86;
  sub_100287010();
  v87 = v20;
  v88 = v21;
  String.init<A>(_:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = sub_1002870C0();
  v25 = [v23 v24];

  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    v26 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1002870B4();
  }

  sub_1000059D8(v26, v27, v28, v29, v30, v31, v32, v33, v77, v81, v84.receiver, v84.super_class, v85, v86, v87, v88, v89);
  if (!v34)
  {

LABEL_31:

    goto LABEL_32;
  }

  if ((sub_100004968() & 1) == 0)
  {

LABEL_35:

    goto LABEL_36;
  }

  v36 = v85;
  v35 = v86;
  sub_10028704C();
  v87 = v37;
  v88 = v38;
  String.init<A>(_:)();
  v39 = String._bridgeToObjectiveC()();

  v40 = sub_1002870C0();
  v42 = [v40 v41];

  if (v42)
  {
    _bridgeAnyObjectToAny(_:)();
    v43 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1002870B4();
  }

  sub_1000059D8(v43, v44, v45, v46, v47, v48, v49, v50, v78, v82, v84.receiver, v84.super_class, v85, v86, v87, v88, v89);
  if (!v51)
  {

LABEL_30:

    goto LABEL_31;
  }

  if ((sub_100004968() & 1) == 0)
  {

LABEL_34:

    goto LABEL_35;
  }

  v52 = v36;
  sub_100286FEC();
  v87 = v53;
  v88 = v54;
  String.init<A>(_:)();
  v55 = String._bridgeToObjectiveC()();

  v56 = sub_1002870C0();
  v58 = [v56 v57];

  if (v58)
  {
    _bridgeAnyObjectToAny(_:)();
    v59 = swift_unknownObjectRelease();
  }

  else
  {
    sub_1002870B4();
  }

  sub_1000059D8(v59, v60, v61, v62, v63, v64, v65, v66, v85, v86, v84.receiver, v84.super_class, v85, v86, v87, v88, v89);
  if (!v67)
  {

    goto LABEL_30;
  }

  if ((sub_100004968() & 1) == 0)
  {

    goto LABEL_34;
  }

  v68 = v85;
  v69 = v86;
  v70 = &v1[OBJC_IVAR___GKGameActivityBulletin_activityVendorID];
  *v70 = v19;
  v70[1] = v18;
  v71 = &v1[OBJC_IVAR___GKGameActivityBulletin_activityURLRaw];
  *v71 = v52;
  v71[1] = v35;
  v72 = &v1[OBJC_IVAR___GKGameActivityBulletin_bundleID];
  *v72 = v79;
  *(v72 + 1) = v83;
  v73 = &v1[OBJC_IVAR___GKGameActivityBulletin_inviterPlayerID];
  *v73 = v68;
  v73[1] = v69;
  v84.receiver = v1;
  v84.super_class = type metadata accessor for GameActivityBulletin();
  v74 = objc_msgSendSuper2(&v84, "initWithCoder:", a1);

  if (v74)
  {
  }

  return v74;
}

void sub_100284D3C(uint64_t a1, unint64_t a2)
{
  v68 = a1;
  v5 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - v6;
  v8 = type metadata accessor for URL();
  sub_1000043C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000043B4();
  v70 = v13 - v12;
  v69 = type metadata accessor for Logger();
  sub_1000043C4();
  v71 = v14;
  v16 = __chkstk_darwin(v15);
  v67 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v65 = &v64 - v19;
  __chkstk_darwin(v18);
  v20 = [objc_opt_self() sharedController];
  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = v20;
  [v20 withdrawBulletin:v2];

  static GKLog.daemon.getter();

  v3 = v2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v66 = v10;
  if (v24)
  {
    v64 = v8;
    v25 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_100005C3C(v68, a2, aBlock);
    *(v25 + 12) = 2080;
    v26 = [v3 defaultAction];
    if (v26)
    {
      v27 = sub_100286D44(v26);
      v29 = v28;

      if (v29)
      {
        v10 = sub_100005C3C(v27, v29, aBlock);

        *(v25 + 14) = v10;
        _os_log_impl(&_mh_execute_header, v22, v23, "Handling GameActivityBulletin action: %s, with info: %s", v25, 0x16u);
        swift_arrayDestroy();
        sub_1000043D8();
        sub_1000043D8();

        v30 = sub_100287064();
        (v10)(v30);
        v8 = v64;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  v31 = sub_100287064();
  (v10)(v31);
LABEL_7:

  URL.init(string:)();

  v32 = sub_1001A969C(v7, 1, v8);
  v33 = v70;
  if (v32 == 1)
  {
    sub_1001A974C(v7, &qword_1003B5800);
    v34 = v67;
    static GKLog.daemon.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_100005AE4();
      v38 = sub_100005808();
      aBlock[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100005C3C(v68, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "Cannot handle GameActivityBulletin action: %s due to missing or invalid activity URL.", v37, 0xCu);
      sub_100005BE0(v38);
      sub_1000043D8();
      sub_1000043D8();
    }

    (v10)(v34, v23);
  }

  else
  {
    v69 = v10;
    v39 = v66;
    (v66[4])(v70, v7, v8);
    sub_100286E94();
    v40 = &v3[OBJC_IVAR___GKGameActivityBulletin_bundleID];
    v41 = v8;
    v42 = *&v3[OBJC_IVAR___GKGameActivityBulletin_bundleID];
    v43 = *&v3[OBJC_IVAR___GKGameActivityBulletin_bundleID + 8];

    v44 = sub_1001B47C0(v42, v43, 0);
    if (v44)
    {
      v46 = v44;
      URL._bridgeToObjectiveC()(v45);
      v48 = v47;

      v49 = v33;
      v50 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_100285448;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001E6BB8;
      aBlock[3] = &unk_10036F380;
      v51 = _Block_copy(aBlock);
      [v46 invokeGameTrampolineWithURL:v48 inviterPlayerID:v50 handler:v51];
      _Block_release(v51);

      v39[1](v49, v41);
    }

    else
    {
      v52 = v65;
      static GKLog.daemon.getter();
      v53 = v3;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = sub_100005AE4();
        v57 = sub_100005808();
        aBlock[0] = v57;
        *v56 = 136315138;
        v58 = v23;
        v59 = *v40;
        v60 = v40[1];

        v61 = sub_100005C3C(v59, v60, aBlock);

        *(v56 + 4) = v61;
        sub_1002870CC(&_mh_execute_header, v62, v63, "Failed to create GKUtilityService for bundle ID: %s");
        sub_100005BE0(v57);
        sub_1000043D8();
        sub_1000043D8();

        v69(v52, v58);
        v39[1](v70, v41);
      }

      else
      {

        v69(v52, v23);
        v39[1](v33, v41);
      }
    }
  }
}

uint64_t sub_100285448(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static GKLog.daemon.getter();
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error happened while invoking game trampoline: %@", v9, 0xCu);
      sub_1001A974C(v10, &unk_1003B6180);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10028567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Logger();
  sub_1000043C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000043B4();
  v17 = v16 - v15;
  static GKLog.daemon.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_100005B50();
    v25 = a1;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "GameActivityBulletin: loadBulletinsForPushNotification:", v20, 2u);
    a1 = v25;
    sub_1000043D8();
  }

  (*(v13 + 8))(v17, v11);
  v21 = type metadata accessor for TaskPriority();
  sub_1001A9674(v10, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v4;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;

  sub_1001D1C0C();
}

uint64_t sub_100285898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1002858BC, 0, 0);
}

uint64_t sub_1002858BC()
{
  sub_100005528();
  sub_100285B1C();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100285954;

  return sub_100285C94();
}

uint64_t sub_100285954()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100285A40()
{
  v1 = v0[7];
  v2 = v0[4];
  if (v1)
  {
    sub_1001A6C04(&qword_1003B5B60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002C33A0;
    *(v3 + 56) = type metadata accessor for GameActivityBulletin();
    *(v3 + 32) = v1;
    v4 = v1;
    v2(v3);
  }

  else
  {
    v2(_swiftEmptyArrayStorage);
  }

  v5 = v0[1];

  return v5();
}

void sub_100285B1C()
{
  v0 = objc_opt_self();
  v2[4] = sub_100286978;
  v2[5] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_1001C292C;
  v2[3] = &unk_10036F3F8;
  v1 = _Block_copy(v2);
  [v0 enumerateClientsUsingBlock:v1];
  _Block_release(v1);
}

uint64_t sub_100285C94()
{
  sub_100005528();
  v0[137] = v1;
  v2 = type metadata accessor for Logger();
  v0[138] = v2;
  v0[139] = *(v2 - 8);
  v0[140] = swift_task_alloc();
  v0[141] = swift_task_alloc();
  v0[142] = swift_task_alloc();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100285D60()
{
  v40 = v0;
  v1 = *(v0 + 1096);
  *(v0 + 1048) = 116;
  *(v0 + 1056) = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(v1, (v0 + 960));
  sub_1001B2E34(v0 + 880);
  if (!*(v0 + 984))
  {
    sub_1001A974C(v0 + 960, &qword_1003B5808);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    static GKLog.daemon.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1120);
    v8 = *(v0 + 1112);
    v9 = *(v0 + 1104);
    if (v6)
    {
      v10 = *(v0 + 1096);
      v11 = sub_100005AE4();
      v12 = sub_100005808();
      v39 = v12;
      *v11 = 136315138;
      *(v0 + 1064) = 116;
      *(v0 + 1072) = 0xE100000000000000;
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(v10, (v0 + 992));
      sub_1001B2E34(v0 + 920);
      sub_1001A6C04(&qword_1003B5808);
      v13 = String.init<A>(describing:)();
      v15 = sub_100005C3C(v13, v14, &v39);

      *(v11 + 4) = v15;
      sub_1001E3E68();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
      sub_100005BE0(v12);
      sub_1000043D8();
      sub_1001E3DC0();
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_13;
  }

  if (*(v0 + 1080) != 0x6F635F7974726170 || *(v0 + 1088) != 0xEA00000000006564)
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

LABEL_17:
  sub_100223A5C(*(v0 + 1096), (v0 + 416));
  memcpy((v0 + 216), (v0 + 416), 0xC8uLL);
  if (sub_1001FBC7C(v0 + 216) != 1)
  {
    memcpy((v0 + 16), (v0 + 216), 0xC8uLL);
    v24 = *(v0 + 192);
    *(v0 + 1144) = *(v0 + 184);
    *(v0 + 1152) = v24;
    if (v24)
    {
      *(v0 + 1160) = *(v0 + 208);
      v25 = *(v0 + 232);
      *(v0 + 816) = *(v0 + 216);
      *(v0 + 832) = v25;
      v26 = *(v0 + 264);
      *(v0 + 848) = *(v0 + 248);
      *(v0 + 864) = v26;

      v27 = swift_task_alloc();
      *(v0 + 1168) = v27;
      *v27 = v0;
      v28 = sub_100287034(v27);

      return sub_1002246A8(v28, v29);
    }

    sub_1001A974C(v0 + 416, &qword_1003B6578);
  }

  static GKLog.daemon.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (sub_1000044B4(v31))
  {
    *sub_100005B50() = 0;
    sub_1001E3E68();
    _os_log_impl(v32, v33, v34, v35, v36, 2u);
    sub_1001E3DC0();
  }

  v37 = sub_10000595C();
  v38(v37);
LABEL_13:
  sub_10028707C();

  v21 = sub_100006224();

  return v22(v21);
}

uint64_t sub_100286194()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1176) = v3;
  *(v1 + 1184) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100286284()
{
  if (*(v0 + 1184))
  {
    v1 = swift_task_alloc();
    *(v0 + 1192) = v1;
    *v1 = v0;
    v2 = sub_100287034(v1);
    v3 = sub_100224864;
  }

  else
  {

    sub_1001A974C(v0 + 416, &qword_1003B6578);
    static GKLog.daemon.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (sub_1000044B4(v5))
    {
      *sub_100005B50() = 0;
      sub_1001E3E68();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_1001E3DC0();
    }

    v11 = sub_10000595C();
    v12(v11);
    sub_10028707C();

    v2 = sub_100006224();
  }

  return (v3)(v2);
}

uint64_t sub_100286420()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  v1[128] = v0;
  v1[129] = v3;
  v1[130] = v4;
  v5 = *v0;
  sub_100006028();
  *v6 = v5;
  *(v8 + 1200) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100286514()
{
  v1 = v0[150];
  if (v1)
  {
    v2 = v0[129];
    v3 = v0[148];
    v4 = v0[147];
    v5 = v0[137];
    v6 = objc_allocWithZone(type metadata accessor for GameActivityBulletin());

    sub_1001A96E4((v0 + 52), (v0 + 77), &qword_1003B6578);
    v7 = sub_1002840D8(v5, (v0 + 2));
    v0[151] = v7;
    v8 = v7;
    [v8 setBulletinType:1700];
    sub_1002681F8(v4, v3, v8, &selRef_setTitle_);
    sub_1002681F8(v2, v1, v8, &selRef_setMessage_);
    v9 = [objc_allocWithZone(GKBulletinAction) init];
    v0[152] = v9;
    [v9 setType:0];
    v10 = String._bridgeToObjectiveC()();

    [v9 setInfo:v10];

    [v8 setDefaultAction:v9];
    v11 = swift_task_alloc();
    v0[153] = v11;
    *v11 = v0;
    v11[1] = sub_1002867EC;

    return sub_10022F360();
  }

  else
  {

    sub_1001A974C((v0 + 52), &qword_1003B6578);

    static GKLog.daemon.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (sub_1000044B4(v14))
    {
      *sub_100005B50() = 0;
      sub_1001E3E68();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      sub_1001E3DC0();
    }

    v20 = sub_10000595C();
    v21(v20);
    sub_10028707C();

    v22 = sub_100006224();

    return v23(v22);
  }
}

uint64_t sub_1002867EC()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_100006028();
  *v3 = v2;
  v4 = *v0;
  sub_100006028();
  *v5 = v4;

  sub_1001A974C(v2 + 416, &qword_1003B6578);
  v6 = sub_10000448C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002868E8()
{
  v1 = *(v0 + 1208);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100286978(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = sub_100005144(a1);
    if (v7)
    {
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      static GKLog.daemon.getter();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "GameActivityBulletin notifying Moltres bulletin received", v14, 2u);
      }

      (*(v3 + 8))(v5, v2);
      v15 = Dictionary.init(dictionaryLiteral:)();
      sub_1001CEC1C(25, v15, a1);
    }
  }
}

id sub_100286C14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameActivityBulletin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100286D00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100286D44(void *a1)
{
  v2 = [a1 info];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100286DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 clientForBundleID:v4];

  return v5;
}

void sub_100286E18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 onGameActivityReceivedWithPartyURL:a1 creatorPlayerID:v6];
}

unint64_t sub_100286E94()
{
  result = qword_1003B8E18;
  if (!qword_1003B8E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B8E18);
  }

  return result;
}

uint64_t sub_100286ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100286EF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100278CC4;

  return sub_100285898(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100286FCC()
{

  return String.init<A>(_:)();
}

uint64_t sub_10028707C()
{
}

uint64_t sub_100287098()
{
}

void sub_1002870CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_100287248()
{
  sub_1000042E4();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "Error deleting cached image (%@) %@");
}

void sub_1002873C4()
{
  sub_10000430C();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "ASCAppLaunchTrampoline: Trampoline failed launch universal link: %@, due to: %@");
}

void sub_1002876F4()
{
  sub_1000042E4();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "Failed to clear GameKit cache directory: %@, error: %@");
}

void sub_100287868()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002878A4(void *a1)
{
  v2 = a1;
  [sub_100005FBC() code];
  sub_100004328();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_100287934()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100287970()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100287AE4()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100287C24()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100287C94()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100287DD4()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100287E44(void *a1)
{
  v1 = a1;
  v2 = [0 conciseDescription];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100287EF4(void *a1, void *a2)
{
  v3 = a1;
  [a2 conciseDescription];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100005FBC() accountName];
  sub_1000742B0();
  sub_100005730(&_mh_execute_header, v5, v6, "local player created:%@ for %@", v7, v8, v9, v10, v11);
}

void sub_100287FA4(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004328();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100288114(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  v2[0] = 136315394;
  sub_100005FA8();
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s elapsed seconds:%g", v2, 0x16u);
}

void sub_100288228(void *a1, char *a2)
{
  v3 = a1;
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_100005FBC() credential];
  sub_1000742B0();
  sub_100005730(&_mh_execute_header, v5, v6, "%@ cred:%@", v7, v8, v9, v10, v11);
}

void sub_100288340()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028837C(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004328();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10028841C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = NSStringFromSelector(v3);
  v6 = [*(a1 + 32) credential];
  sub_1000742B0();
  sub_100005730(&_mh_execute_header, v7, v8, "%@ cred:%@", v9, v10, v11, v12, v13);
}

void sub_1002884D0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [NSNumber numberWithInteger:a2];
  sub_1000042E4();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EVIL: don't know how to handle server error code (%@) for server error %@", v7, 0x16u);
}

void sub_100288598(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_100005FBC() scope];
  sub_100004328();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100288684(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004328();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10028878C(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004328();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100288830()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028893C()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002889AC()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100288A1C()
{
  sub_10000430C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100288A90()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100288ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  [sub_100085ECC() count];
  sub_1000042E4();
  sub_100085EBC();
  sub_100005730(&_mh_execute_header, v4, v5, "GKProfileService: About to load %lu playerIDs from network: %@", v6, v7, v8, v9, v10);
}

void sub_100288B64(double a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [sub_100005FBC() numberWithDouble:a1];
  sub_100085E98();
  sub_100004328();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100288C84(double a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [sub_100005FBC() numberWithDouble:a1];
  sub_100085E98();
  sub_100004328();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100288D50(double a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [sub_100085ECC() numberWithDouble:a1];
  sub_100085EB0();
  sub_100005730(&_mh_execute_header, v7, v8, "API[get-profile][%@] request at: %@", v9, v10, v11, v12, 2u);
}

void sub_100288E78(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [NSNumber numberWithDouble:a3];
  v8 = [NSNumber numberWithDouble:a3 - *(a1 + 64)];
  v11 = 138412802;
  v12 = v5;
  sub_100085EB0();
  v13 = v7;
  v14 = v9;
  v15 = v10;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "API[get-profile][%@] response at: %@, duration: %@", &v11, 0x20u);
}

void sub_100288F78()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100288FB4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100288FF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 error];
  v6 = [*(a1 + 40) localPlayer];
  v7 = [v6 alias];
  sub_100085E98();
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Profiles fetched/loaded with error: %@ by localPlayer %@", v8, 0x16u);
}

void sub_10028912C()
{
  sub_100085EBC();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1002891B0()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002891EC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100289290()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002892CC()
{
  sub_10000430C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100289340(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100085ECC() error];
  sub_1000042E4();
  sub_100085EBC();
  sub_100005730(&_mh_execute_header, v5, v6, "Profiles loaded with error: %@, MOC was dirty: %@", v7, v8, v9, v10, v11);
}

void sub_100289460()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028949C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100289540()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002895E4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100289758()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028980C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() identifier];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1002898A4(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() localizedDescription];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10028993C()
{
  sub_10000430C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100289A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v5, v6, "Failed to fetch friends with error: %@", v7, v8, v9, v10, v11);
}

void sub_100289AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v5, v6, "Failed to fetch profile with caid with error: %@", v7, v8, v9, v10, v11);
}

void sub_100289C08(uint64_t a1, void *a2)
{
  v4 = a2;
  [sub_100085ECC() count];
  [*(a1 + 40) count];
  sub_100005730(&_mh_execute_header, v5, v6, "Preloaded scoped ids records for %lu players and %lu installed games", v7, v8, v9, v10, 0);
}

void sub_100289D1C()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100289D8C()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100289DFC()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100289E6C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100289EA8()
{
  sub_1000042E4();
  sub_100085EB0();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100289F20()
{
  sub_1000042E4();
  sub_100085EB0();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Flushed %@ cached scoped IDs for gameBundleID: %@", v2, 0x16u);
}

void sub_100289FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GKStackTraceWithFrameLimit();
  v5 = 138412546;
  v6 = a1;
  sub_100004344();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "getFriendIDsForPlayer: internal without playerID:%@: %@", &v5, 0x16u);
}

void sub_10028A058()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028A130()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028A208()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028A278()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028A2B4()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028A324()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028A360(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_1000042E4();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error loading friend codes from cache: %@", v5, 0xCu);
}

void sub_10028A53C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 result];
  v6 = [*(a1 + 32) error];
  sub_100004344();
  sub_100005730(&_mh_execute_header, v7, v8, "Player Activity: finished network group result: %@, error: %@", v9, v10, v11, v12, 2u);
}

void sub_10028A620(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "removal of %@ failed due to %@", &v4, 0x16u);
}

void sub_10028A6AC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028A750()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028A78C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 inboxEntry];
  v5 = [v4 friendCode];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v6, v7, "accepted friendCode: %@", v8, v9, v10, v11, v12);
}

void sub_10028A8A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 inboxEntry];
  v5 = [v4 friendCode];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v6, v7, "rejected friendCode: %@", v8, v9, v10, v11, v12);
}

void sub_10028A9B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 entityName];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cache Error: %@ failed to retrieve cache for fetched entity: %@", &v7, 0x16u);
}

void sub_10028AC44()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028AC80()
{
  sub_1000042E4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to locate record for app %{public}@: %{public}@", v2, 0x16u);
}

void sub_10028AD70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100005FBC() error];
  sub_1000042E4();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed during install metadata fetching: %@", v5, 0xCu);
}

void sub_10028AF20()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028AF5C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() entries];
  [v3 count];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10028AFF8(void *a1)
{
  v2 = a1;
  [sub_100005FBC() count];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10028B084()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028B0F4(void *a1)
{
  v2 = a1;
  [sub_100005FBC() count];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10028B180()
{
  sub_10000430C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028B1F4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028B230(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 conciseDescription];
  v5 = 136315394;
  v6 = "[GKGameServicePrivate getGamesForPlayer:includeInstalled:handler:]_block_invoke_3";
  sub_100004344();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Cache miss - %s %@", &v5, 0x16u);
}

void sub_10028B2E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v9 = [v2 conciseDescription];
  sub_1000A65BC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10028B3B4()
{
  sub_10000430C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028B428(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "GKGameService: About to load %lu bundleIDs from network: %@", buf, 0x16u);
}

void sub_10028B488(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithDouble:a1];
  sub_100004344();
  sub_1000A65BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10028B54C(double a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [sub_100005FBC() numberWithDouble:a1];
  sub_100004344();
  sub_100004328();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_10028B60C(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NSNumber numberWithDouble:a1];
  sub_100004344();
  sub_1000A65BC();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10028B73C(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [NSNumber numberWithDouble:a3];
  v8 = [NSNumber numberWithDouble:a3 - *(a1 + 64)];
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "API[get-metadata][%@] response at: %@, duration: %@", &v9, 0x20u);
}

void sub_10028B8CC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028B970(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "cannot openURL: %@, because of error: %@", &v3, 0x16u);
}

void sub_10028B9F8()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028BAA8()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028BB58()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028BB94()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028BC04()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028BC40()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028BCB0()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028BCEC(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_100005FBC() baseLeaderboardID];
  v6 = [a2 startDate];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "getLeaderboardsForGameDescriptor - updated: %@, %@", &v7, 0x16u);
}

void sub_10028BDB8(uint64_t a1, void *a2)
{
  sub_1000C56A0(a1, a2);
  v3 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v4, v5, "getLeaderboardsForGameDescriptor: %@", v6, v7, v8, v9, v10);
}

void sub_10028BE40()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028BEB0()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028BEEC()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028BF28(uint64_t a1, void *a2)
{
  sub_1000C56A0(a1, a2);
  v3 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v4, v5, "getPreviousInstanceForLeaderboard: %@", v6, v7, v8, v9, v10);
}

void sub_10028BFB0()
{
  sub_1000042E4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "No internal or displayName for playerID:%@ (entry:%@). Will be changed to anonymous", v2, 0x16u);
}

void sub_10028C034()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C0A4()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028C0E0()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028C11C()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028C158(uint64_t a1, void *a2)
{
  sub_1000C56A0(a1, a2);
  v3 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v4, v5, "submitScore: %@", v6, v7, v8, v9, v10);
}

void sub_10028C1E0(uint64_t a1, void *a2)
{
  sub_1000C56A0(a1, a2);
  v3 = [sub_100005FBC() error];
  sub_1000042E4();
  sub_100085ED8(&_mh_execute_header, v4, v5, "submitInstanceScore: %@", v6, v7, v8, v9, v10);
}

void sub_10028C2A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve leaderboard challenge summary: %@", &v2, 0xCu);
}

void sub_10028C320()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C3D8()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C448(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 clientProxy];
  v5 = [v4 currentMatchResponse];
  sub_1000042E4();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Skipping current match response invalidation for outdated matching group. Current match response: %@", v6, 0xCu);
}

void sub_10028C504()
{
  sub_1000DEE1C();
  sub_1000DEE30();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_10028C57C()
{
  sub_1000042E4();
  sub_1000DEE30();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
}

void sub_10028C668(void **a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = [v4 shareRecordID];
  sub_1000DEE1C();
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "setShareInvitees - No CKRecord found fetching shareRecordID %@ error: %@", v7, 0x16u);
}

void sub_10028C71C()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C78C()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C864()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C8D4()
{
  sub_1000DEE1C();
  sub_1000DEE30();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10028C94C()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028C9BC()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028C9F8()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028CAD0()
{
  sub_1000DEE1C();
  sub_1000DEE30();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10028CB48()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028CBB8()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CBF4()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CC30()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CC6C()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CCA8()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028CD18()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042F0(&_mh_execute_header, v0, v1, "cannot find a client proxy which has the same bundleIdentifier with '%@' so not calling nearbyPlayerFoundForPlayerID", v2, v3, v4, v5, v6);
}

void sub_10028CD80()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042F0(&_mh_execute_header, v0, v1, "cannot find a client proxy which has the same bundleIdentifier with '%@' so not calling nearbyPlayerLostForPlayerID", v2, v3, v4, v5, v6);
}

void sub_10028CDE8()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042F0(&_mh_execute_header, v0, v1, "cannot find a client proxy which has the same bundleIdentifier with '%@' so not calling nearbyDataReceivedForPlayerID", v2, v3, v4, v5, v6);
}

void sub_10028CE50()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CE8C()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028CEC8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_determineCompatibleGamesForMatches:dispatchGroup: Missing bundleVersion for match %@", &v2, 0xCu);
}

void sub_10028CF40(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_determineCompatibleGamesForMatches:dispatchGroup: Missing bundleID for match %@", &v2, 0xCu);
}

void sub_10028CFB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "getDetailsForTurnBasedMatchIDs:Failed to Load Details for TBG Match ID.Error: %@", &v2, 0xCu);
}

void sub_10028D09C(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004354(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_10028D134(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_100004354(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_10028D1CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "verifyAuthorized failed, we might be authenticating or authorizing: %@", &v2, 0xCu);
}

void sub_10028D244(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No internal or displayName for playerID:%@ (score:%@).Will be changed to anonymous", &v3, 0x16u);
}

void sub_10028D324(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSBundle _gkBundleIdentifierFromConnection:a2];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ERROR: No Game Center entitlement provided by new connection from: %@", &v5, 0xCu);
}

void sub_10028D3E0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSBundle _gkBundleIdentifierFromConnection:a2];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Granting public Game Center entitlement that was not provided by: %@", &v5, 0xCu);
}

void sub_10028D6E4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 recordID];
  v5 = +[GKInviteURLManager sharedManager];
  v6 = [v5 mostRecentInviteShareRootRecordID];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not generate invite bulletin from CKRecord, recordID (%@) does not equal most recent invite share root recordID %@", &v7, 0x16u);
}

void sub_10028DB9C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "GKDaemonPreferencesSupport.localPlayerAgeCategory: gotCallback = %@, result = %@", buf, 0x16u);
}

void sub_10028DC0C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithInt:a2];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GKDaemonPreferencesSupport.localPlayerAgeCategory: callback ageCategory = %@", &v5, 0xCu);
}

void sub_10028DCC8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "GKNetworkRequestManager fairplay session creation failed due to error: %@", &v2, 0xCu);
}

void sub_10028E0E4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unable to delete delayed requests with ids: %@", &v3, 0xCu);
}

void sub_10028E160(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%@ - Not submitting delayed requests because retry time interval has not expired. Will try again", buf, 0xCu);
}

void sub_10028E1B8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[GKContactDenier deniedContactIdentifiers]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s error: %@", &v2, 0x16u);
}

void sub_10028E244(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKFireworksPseudonymManager.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"service"}];
}

void sub_10028E2F4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [NSNumber numberWithInt:a3];
  sub_100004344();
  sub_100119F94(&_mh_execute_header, v6, v7, "unable to create prepared statement for SQL: %@ due to result=%@", v8, v9, v10, v11, 2u);
}

void sub_10028E3A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [NSNumber numberWithInt:a3];
  sub_100004344();
  sub_100119F94(&_mh_execute_header, v6, v7, "unable to reset prepared statement for SQL: %@ due to result = %@", v8, v9, v10, v11, 2u);
}

void sub_10028E45C(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 24);
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unable to sqlite3_exec  due to error %s", &v3, 0xCu);
}

void sub_10028E4DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a1 + 16);
  v5 = a2;
  v6 = [NSNumber numberWithInt:a3];
  v7 = 138412546;
  v8 = v4;
  sub_100004344();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "unable to close database connection to %@due to result = %@", &v7, 0x16u);
}

void sub_10028E640(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unable to write record to cache. Rolling back transaction: %@", &v2, 0xCu);
}

void sub_10028E6B8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 ttrURLString];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Can't handle action of filing a radar due to invalid url: %@", &v5, 0xCu);
}

void sub_10028E760(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "postRequest:Failed to read data for bag key (%@) due to error: %@", &v4, 0x16u);
}

void sub_10028E7EC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ encountered an error:%@", &v4, 0x16u);
}

void sub_10028F928()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028F964()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028F9D4()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FA44()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FA80()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FABC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FAF8()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FB34()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FBA4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FBF4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FC30()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FC6C()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FCDC()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FD4C()
{
  sub_1000042E4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error deleting cached image (%@): %@", v2, 0x16u);
}

void sub_10028FDD0()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FE40()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10028FEB0()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FEEC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FF28()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FF64()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10028FFA0()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100290010()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10029004C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100290088()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002900C4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 friendLevel];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1002901C8(void *a1)
{
  v1 = a1;
  v2 = GKStackTraceWithFrameLimit();
  sub_1000042E4();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "gameForBunDleID:context: was called with no bundleID. Stack trace:%@", v3, 0xCu);
}

void sub_100290268()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002902A4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002902E0()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10029031C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100290358(void *a1, char a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithBool:a2 & 1];
  sub_1000042E4();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GKGameCacheObject: updateWithServerRepresentation: supportsChallenges: %@", v5, 0xCu);
}

void sub_100290410()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100290480()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100290600(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 alias];
  v10 = [a2 contactsAssociationID];
  sub_100004328();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1002906C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 playerID];
  sub_1000042E4();
  sub_100004328();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100290764()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002907D4()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100290810()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002908BC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ exceeded timeout", &v5, 0xCu);
}

void sub_100290964(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "%@ exceeded timeout", &v5, 0xCu);
}

void sub_100290A20(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Context reached a count of 0: %@", &v3, 0xCu);
}

void sub_100290D48()
{
  sub_1000DEE1C();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100290DBC(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() currentGame];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v4, v5, "Skipping nearbyDiscovery setup since current game not supporting multiplayer: %@", v6, v7, v8, v9, v10);
}

void sub_100290E4C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() currentGame];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v4, v5, "Setting up nearbyDiscovery for game: %@", v6, v7, v8, v9, v10);
}

void sub_100290EDC(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() currentGame];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v4, v5, "Skipping peerDiscovery setup since current game not supporting multiplayer: %@", v6, v7, v8, v9, v10);
}

void sub_100290F6C(void *a1)
{
  v2 = a1;
  v3 = [sub_100005FBC() currentGame];
  sub_1000042E4();
  sub_100005FC8(&_mh_execute_header, v4, v5, "Setting up peerDiscovery for game: %@", v6, v7, v8, v9, v10);
}

void sub_100290FFC()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291038()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291074()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002910B0()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002910EC()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291128()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100291198()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10029121C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291258()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002912C8()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291304()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291340()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10029137C()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002913F4()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291430(void *a1, double a2)
{
  v3 = a1;
  v4 = 136315394;
  v5 = "clientInit";
  v6 = 2048;
  v7 = CFAbsoluteTimeGetCurrent() - a2;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s elapsed seconds:%g", &v4, 0x16u);
}

void sub_1002914E8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithInt:a2];
  sub_1000042E4();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "GKClientProxy localPlayerAgeCategoryWithCompletion: ageCategory = %@", v5, 0xCu);
}

void sub_1002915A0(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v1, v2, "Encountered error while preconnecting to %@: %@", v3, DWORD2(v3));
}

void sub_100291614()
{
  sub_100004338();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291650()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002916CC()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002917BC(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v1, v2, "%@ encountered an error:%@", v3, DWORD2(v3));
}

void sub_100291830()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002918A0()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100291910()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100291980()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002919F0(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [v3 bundleIdentifier];
  v6 = objc_opt_class();
  v7 = *a1;
  v9 = 138412802;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  v13 = 2048;
  v14 = v7;
  v8 = v6;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "authenticatedPlayersDidChange: sent to client:%@ <%@ %p>)", &v9, 0x20u);
}

void sub_100291AD4()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100291B44()
{
  sub_1000042E4();
  sub_100004658();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100291C20()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100291F00()
{
  sub_1000042E4();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "Unable to remove cache directory %@ : %@");
}

void sub_100292104()
{
  sub_10000430C();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "Error adding persistent store at %@ : %@");
}

void sub_1002921A8()
{
  sub_10000430C();
  sub_100004318();
  sub_1000042C4(&_mh_execute_header, v0, v1, "Error removing cache file at %@ : %@");
}

void sub_100292218(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_1002922B4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 persistentStores];
  v5 = [v4 firstObject];
  v6 = [v5 URL];
  sub_1000042E4();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Creating managed object context with persistent store %@", v7, 0xCu);
}

void sub_100292380(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_100292490(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "setTestGame: rejected non-allowed bundleID: %@", &v2, 0xCu);
}

void sub_100292508(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "GKDataRequestManager+Nearby - Nearby invite NC response type not handled: %ld for incoming dictionary:%@", &v3, 0x16u);
}

void sub_100292590(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "GKDataRequestManager+Nearby: handleNearbyInviteResponse: - No Client Proxy Found for incoming dictionary:%@", &v2, 0xCu);
}

void sub_100292674(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_100292714(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_1002927B4(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_100292854(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_1002928F4(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_100292994(void *a1)
{
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  sub_100005FA8();
  sub_10000467C(&_mh_execute_header, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);
}

void sub_100292A34(double a1, double a2)
{
  v2 = sub_100005750(a1, a2);
  *v3 = 136315394;
  sub_100004394(v3, "finishStartupMoreNotifications", v2);
  sub_10015C51C(&_mh_execute_header, v4, v5, "%s elapsed seconds:%g", v6);
}

void sub_100292A78(double a1, double a2)
{
  v2 = sub_100005750(a1, a2);
  *v3 = 136315394;
  sub_100004394(v3, "setupGameModeListener", v2);
  sub_10015C51C(&_mh_execute_header, v4, v5, "%s elapsed seconds:%g", v6);
}

void sub_100292ABC(double a1, double a2)
{
  v2 = sub_100005750(a1, a2);
  *v3 = 136315394;
  sub_100004394(v3, "finishStartup", v2);
  sub_10015C51C(&_mh_execute_header, v4, v5, "%s elapsed seconds:%g", v6);
}

void sub_100292B00()
{
  sub_1000042E4();
  v3 = 2112;
  v4 = v0;
  sub_10015C51C(&_mh_execute_header, v1, v1, "connection: %@ publicToken: %@", v2);
}

void sub_100292B7C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 currentEnvironment]);
  sub_1000042E4();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to remove all credentials for environment: %@, error: %@", v7, 0x16u);
}

void sub_100292CC0(double a1, double a2)
{
  v2 = sub_100005750(a1, a2);
  *v3 = 136315394;
  sub_100004394(v3, "acceptConnection", v2);
  sub_10015C51C(&_mh_execute_header, v4, v5, "%s elapsed seconds:%g", v6);
}

void sub_100292F84(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Migrated contacts integration info credentials. error: %@", &v2, 0xCu);
}

void sub_100292FFC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKDispatchGroup+DaemonAdditions.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"queue != nil"}];
}

void sub_100293114(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving CKRecord (for Messages Invite) because of: %@", &v2, 0xCu);
}

void sub_1002931D0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "participant is a guest with identifier = %@", &v2, 0xCu);
}

void sub_1002932F0()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042A8(&_mh_execute_header, v0, v1, "_sendAsynchronousRequest:Signature error:%@", v2, v3, v4, v5, v6);
}

void sub_1002933C4()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042C4(&_mh_execute_header, v0, v1, "_loadDataForBagKey:Failed to get URL from bag for bagKey:%@.Error is: %@");
}

void sub_100293438()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042A8(&_mh_execute_header, v0, v1, "_loadDataForBagKey:No request for NSURLRequest, likely due to invalid URL. This will result to an alert showing '...error communicating with the server'. bagKey was:%@", v2, v3, v4, v5, v6);
}

void sub_100293540()
{
  sub_100004670(__stack_chk_guard);
  sub_10000430C();
  sub_1000042A8(&_mh_execute_header, v0, v1, "Error - This will result showing an alert '...error communicating with the server'. Invalid request when reading data for url: %@", v2, v3, v4, v5, v6);
}

void sub_1002935A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 error];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will not proceed to execute commands due to error: %@", &v5, 0xCu);
}

void sub_100293650(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find host with pid %d", v2, 8u);
}

void sub_100293784(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SUCCESFULLY SAVED(%@)", &v2, 0xCu);
}

void sub_100293EA0(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Done waiting for message v2 query. Available handles: %@, Unavailable handles: %@", buf, 0x16u);
}

void sub_100293F10(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a2 count]);
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 count]);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to convert unprefixedHandles(count: %@) to ids handles(converted: %@).", &v8, 0x16u);
}

void sub_100294014(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 count];
  sub_1000042E4();
  v7 = 2112;
  v8 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to sync %lu handles due to %@", v6, 0x16u);
}

void sub_10029413C(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 status];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Unrecognized IDS status value: %ld", &v4, 0xCu);
}

void sub_100294324(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Me contact error: %@", &v2, 0xCu);
}

void sub_1002943D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Contacts enumeration error: %@", &v2, 0xCu);
}

void sub_1002944EC(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 identifier];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Manually grabbing the handles in memory since can be cached for the contact identifier: %@", a1, 0xCu);
}

void sub_100294570(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received error attempting to get relationships for suggestions: %@", &v2, 0xCu);
}

void sub_10029479C()
{
  sub_1000043A8();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10029480C()
{
  sub_1000043A8();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10029487C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error while fetching contacts update interval state: %@", &v2, 0xCu);
}

void sub_1002948F4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error while fetching contacts cohort state: %@", &v2, 0xCu);
}

void sub_10029496C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Contacts integration ineligible for reasons: %@", &v2, 0xCu);
}

void sub_1002949E4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error while creating cache directory:%@", &v2, 0xCu);
}

void sub_100294A5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error writing new local player avatar image (%@) to image cache: %@", &v3, 0x16u);
}

void sub_100294B0C(void *a1, uint64_t a2, const char *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromSelector(a3);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ doesn't implement %@; Will not load or process information in the bulletin", &v8, 0x16u);
}

void sub_100294C28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: No Action: %@", &v2, 0xCu);
}

void sub_100294CA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "invokeASCAppLaunchTrampoline failed with error: %@", &v5, 0xCu);
}

void sub_100294D48(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 adamID];
  v5 = [a2 bundleID];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not create appLaunchTrampolineURL with adamID: %@, bundleID: %@", &v6, 0x16u);
}

void sub_100294E18(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid system push (%d)", v2, 8u);
}

void sub_100294E90(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Expiring caches for store bag key %@", &v2, 0xCu);
}

void sub_100294F08(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Failed to clear entity cache for bagKey: %@, error: %@", &v4, 0x16u);
}

void sub_10029511C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "loadLocalizedGameNameForBundleID was called with no handler - returning -bundleID was:%@", &v2, 0xCu);
}

void sub_100295194(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "loadLocalizedGameNameForBundleID (%@) - Error getting localized game name: %@", &v4, 0x16u);
}

void sub_100295248(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered an unsupported IDS URI type: %ld", &v2, 0xCu);
}

void sub_100295430(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 originatorPlayerID];
  sub_1000042E4();
  v8 = 2112;
  v9 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "loadDataWithHandler - Error loading info about originator player (%@): %@", v7, 0x16u);
}

void sub_1002957CC()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100295808()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295878()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002958E8()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100295924()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295994()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295A04()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100295A40()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295AB0()
{
  sub_100004338();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100295AEC()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295B5C()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295BCC()
{
  sub_1000042E4();
  sub_100004664();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100295C3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 64);
  v5 = a3;
  v6 = NSStringFromSelector(v4);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "error:%@ while decoding invitedPlayers archive in %@", &v7, 0x16u);
}

void sub_100295CFC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Done uploadLogsForRadar: %@, from: %@", &v4, 0x16u);
}

void sub_100295DEC(void *a1, uint64_t a2, const char *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = v5;
  v7 = NSStringFromSelector(a3);
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%@ doesn't implement %@; Subclasses should set launch event", &v8, 0x16u);
}

void sub_100296064(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch suggestion settings: %@", &v2, 0xCu);
}

void sub_1002960DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Will rerank the following contact assocication IDs with the service: %@", &v2, 0xCu);
}

void sub_100296154(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received reranked contact assocication IDs from service: %@", &v3, 0xCu);
}

void sub_1002961D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 cachedSortedAssociationIDs];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will not rerank contact association IDs with service since we have cached values: %@", &v5, 0xCu);
}

void sub_10029633C()
{
  sub_1000042E4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "GKBulletinController+Common failed to remove store at: %@, error: %@", v2, 0x16u);
}

void sub_1002964A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  v5 = a3;
  v6 = NSStringFromSelector(v4);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "GKBulletinController+Common error:%@ while decoding result archive in %@", &v7, 0x16u);
}

void sub_100296568(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  [a2 count];
  sub_1000042E4();
  v7 = 2112;
  v8 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "GKBulletinController+Common loaded %lu bulletin(s): %@", v6, 0x16u);
}

void sub_1002966B4(char a1, NSObject *a2)
{
  v2 = @"no";
  if (a1)
  {
    v2 = @"yes";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "GKBulletinController ready (for tests? %@)", &v3, 0xCu);
}

void sub_100296744(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create UNNotificationAttachment: %@", &v2, 0xCu);
}

void sub_1002967BC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized command sent to contacts integration bulletin: %d", v2, 8u);
}

void sub_100296834(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received error when attempting to clear caches: %@", &v2, 0xCu);
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Ref<A>.id.getter()
{
  return Ref<A>.id.getter();
}

{
  return Ref<A>.id.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}