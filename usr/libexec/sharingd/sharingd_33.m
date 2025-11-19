unint64_t sub_1004C361C()
{
  result = qword_100980610;
  if (!qword_100980610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980610);
  }

  return result;
}

unint64_t sub_1004C36A4()
{
  result = qword_100980618;
  if (!qword_100980618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980618);
  }

  return result;
}

unint64_t sub_1004C36FC()
{
  result = qword_100980620;
  if (!qword_100980620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980620);
  }

  return result;
}

unint64_t sub_1004C3754()
{
  result = qword_100980628;
  if (!qword_100980628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980628);
  }

  return result;
}

unint64_t sub_1004C37AC()
{
  result = qword_100980630;
  if (!qword_100980630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980630);
  }

  return result;
}

unint64_t sub_1004C3804()
{
  result = qword_100980638;
  if (!qword_100980638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980638);
  }

  return result;
}

unint64_t sub_1004C385C()
{
  result = qword_100980640;
  if (!qword_100980640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980640);
  }

  return result;
}

uint64_t sub_1004C38BC(uint64_t a1)
{
  v1 = *(a1 + 80);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for CheckedContinuation();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004C39A4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980650);
  v1 = sub_10000C4AC(v0, qword_100980650);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004C3A6C(uint64_t a1)
{
  v24 = a1;
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x50);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v5 = type metadata accessor for CheckedContinuation();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v26 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v25 = *(v1 + *((v3 & v2) + 0x58));
  os_unfair_lock_lock(v25 + 4);
  v16 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v17 = *(v7 + 16);
  v17(v15, v1 + v16, v6);
  v18 = *(v5 - 8);
  (*(v18 + 56))(v13, 1, 1, v5);
  swift_beginAccess();
  v19 = v1 + v16;
  v20 = v26;
  (*(v7 + 40))(v19, v13, v6);
  swift_endAccess();
  os_unfair_lock_unlock(v25 + 4);
  v17(v20, v15, v6);
  if ((*(v18 + 48))(v20, 1, v5) == 1)
  {
    v21 = *(v7 + 8);
    v21(v15, v6);
    return (v21)(v20, v6);
  }

  else
  {
    sub_1004C3D8C(v24, v5);
    (*(v7 + 8))(v15, v6);
    return (*(v18 + 8))(v20, v5);
  }
}

uint64_t sub_1004C3D8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = type metadata accessor for Result();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1004C3FE8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1004C4334();
}

id sub_1004C4068()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x58);
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  *&v0[*((swift_isaMask & *v0) + 0x60)] = 0;
  v6 = *((swift_isaMask & *v0) + 0x68);
  v7 = *((v3 & v2) + 0x50);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v8 = type metadata accessor for CheckedContinuation();
  (*(*(v8 - 8) + 56))(&v0[v6], 1, 1, v8);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1004C41EC(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *&a1[*((swift_isaMask & *a1) + 0x58)];

  v5 = *((swift_isaMask & *a1) + 0x68);
  v6 = *((v3 & v2) + 0x50);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for CheckedContinuation();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(&a1[v5], v7);
}

uint64_t sub_1004C4334()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  type metadata accessor for Optional();
  sub_100280938(&unk_10097A930, &unk_1007F9050);
  v2 = type metadata accessor for Result();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v15 - v5);
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100980650);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "SDAirDropRemoteViewController did deactivate", v10, 2u);
  }

  v11 = type metadata accessor for SFError();
  sub_10044FED8();
  v12 = swift_allocError();
  *v13 = 0xD000000000000018;
  v13[1] = 0x8000000100792CF0;
  v13[2] = 0xD000000000000064;
  v13[3] = 0x8000000100792D10;
  v13[4] = 114;
  (*(*(v11 - 8) + 104))(v13, enum case for SFError.unexpected(_:), v11);
  *v6 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1004C3A6C(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_1004C45C4(const char *a1)
{
  if (qword_100973938 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100980650);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_1004C46B4()
{
  sub_10000C60C((v0 + 112));
  sub_1004C4868(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary19UserProfilesMonitor_continuation);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for UserProfilesMonitor()
{
  result = qword_100980728;
  if (!qword_100980728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C4750()
{
  sub_1004C47F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1004C47F4()
{
  if (!qword_100980738)
  {
    sub_100280938(&unk_100980740, &qword_1008103E0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100980738);
    }
  }
}

uint64_t sub_1004C4868(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100980800, &unk_100806E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C48E0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977DA8, &unk_100806FB0);
  v4 = sub_100011630(&unk_100980910, &qword_100977DA8, &unk_100806FB0);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1004C49D8;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C49D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1004C4B84;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1004C4B68;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1004C4B84()
{
  v0[3] = v0[7];
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004C4C2C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_10097AD20, &qword_100806FA0);
  v4 = sub_100011630(&qword_100980908, &qword_10097AD20, &qword_100806FA0);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1004C4D24;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C4D24()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1004CDBF4;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1004CDBF8;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1004C4EB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10028088C(&qword_1009808D8, &qword_100806F08);
  v4 = sub_100011630(&qword_1009808F0, &qword_1009808D8, &qword_100806F08);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1004C4D24;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1004C4FAC()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for NWBrowser.Descriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
  {
    v13 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController);
    sub_1005C26B4(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
    v14 = [objc_allocWithZone(RPClient) init];
    v15 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
    *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient) = v14;

    strcpy(v11, "_airdrop._tcp.");
    v11[15] = -18;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0;
    (*(v7 + 104))(v11, enum case for NWBrowser.Descriptor.bonjourWithTXTRecord(_:), v6);
    type metadata accessor for NWParameters();
    static NWParameters.tcp.getter();
    NWParameters.allowLocalEndpointReuse.setter();
    NWParameters.includePeerToPeer.setter();
    v16 = type metadata accessor for NWBrowser();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = NWBrowser.init(for:using:)();
    v20 = *(v1 + v12);
    *(v1 + v12) = v19;
    swift_retain_n();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    NWBrowser.browseResultsChangedHandler.setter();

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    swift_weakInit();

    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    NWBrowser.stateUpdateHandler.setter();

    v24 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browserQueue);
    NWBrowser.start(queue:)();
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = qword_1009735E0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = static AirDropActor.shared;
    v29 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
    v30 = swift_allocObject();
    v30[2] = v28;
    v30[3] = v29;
    v30[4] = v26;

    sub_1002B281C(0, 0, v5, &unk_100806EF8, v30);
  }

  return result;
}

void sub_1004C5400()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
  {
    return;
  }

  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController);
  v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger);

  sub_1005C26DC(v4);
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient;
  v6 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
  if (v6)
  {
    [v6 invalidate];
  }

  NWBrowser.cancel()();
  sub_10055FC6C();
  v7 = String._bridgeToObjectiveC()();

  v8 = *(v4 + 24);
  if (v8)
  {
    if (v8 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:
        if ((v8 & 0xC000000000000001) != 0)
        {
LABEL_29:

          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v31 = *(v30 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
          v9 = v31;
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v9 = *(*(v8 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_12;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_12:
  sub_100086D20(@"BonjourBrowse", @"Stop", v7, v9);

  v10 = *(v2 + v1);
  *(v2 + v1) = 0;

  v11 = *(v2 + v5);
  *(v2 + v5) = 0;

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v1 = v13 + 64;
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v5 = (v14 + 63) >> 6;
  v17 = *(v2 + v12);

  v18 = 0;
  while (v16)
  {
LABEL_21:
    v20 = *(*(v13 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));
    if (*&v20[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection])
    {
      v21 = v20;

      NWConnection.forceCancel()();
    }

    else
    {
      v22 = v20;
    }

    v7 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection];
    if (v7)
    {
      v23 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection];

      NWConnection.forceCancel()();
    }

    v16 &= v16 - 1;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v19 >= v5)
    {
      break;
    }

    v16 = *(v1 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_21;
    }
  }

  v24 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
  swift_beginAccess();
  v25 = *(v2 + v24);
  *(v2 + v24) = &_swiftEmptyDictionarySingleton;

  v26 = *(v2 + v12);
  *(v2 + v12) = &_swiftEmptyDictionarySingleton;

  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  v28 = *(v2 + v27);
  *(v2 + v27) = &_swiftEmptyDictionarySingleton;

  v29 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery);
  CurrentValueSubject.send(completion:)();
}

uint64_t sub_1004C5738()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980808);
  v1 = sub_10000C4AC(v0, qword_100980808);
  if (qword_1009736E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1004C5800()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
    v5 = Strong;
    swift_beginAccess();
    v6 = *(*(v5 + v4) + 16);
    swift_unknownObjectRelease();
    v7 = 2;
    if (!v6)
    {
      v7 = 5;
    }
  }

  else
  {
    v7 = 5;
  }

  return v7 >= v2;
}

uint64_t sub_1004C58B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = qword_1009735E0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v13 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = a1;
  v14[6] = a2;

  sub_1002B3398(0, 0, v7, &unk_100806F88, v14);
}

uint64_t sub_1004C5ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C5B5C, v7, 0);
}

uint64_t sub_1004C5B5C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004C5BF8(*(v0 + 56), *(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004C5BF8(uint64_t a1, uint64_t a2)
{
  v165 = a1;
  v173 = type metadata accessor for NWEndpoint();
  v4 = *(v173 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v173);
  v8 = (&v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v159 = &v130 - v10;
  v11 = __chkstk_darwin(v9);
  v145 = (&v130 - v12);
  v13 = __chkstk_darwin(v11);
  v162 = &v130 - v14;
  v15 = __chkstk_darwin(v13);
  v132 = (&v130 - v16);
  v17 = __chkstk_darwin(v15);
  v131 = &v130 - v18;
  v19 = __chkstk_darwin(v17);
  v161 = &v130 - v20;
  __chkstk_darwin(v19);
  v140 = &v130 - v21;
  v147 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v166 = *(v147 - 8);
  v22 = *(v166 + 64);
  __chkstk_darwin(v147);
  v146 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for NWBrowser.Result();
  v24 = *(v177 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v177);
  v176 = (&v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v151 = &v130 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = (&v130 - v31);
  __chkstk_darwin(v30);
  v148 = &v130 - v33;
  v34 = type metadata accessor for NWBrowser.Result.Change();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v156 = &v130 - v40;
  v164 = v2;
  v41 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus];
  sub_100469844();
  v42 = v32;
  v43 = v35;
  v44 = v39;
  v174 = v46;
  v175 = v45;
  v47 = a2 + 56;
  v48 = 1 << *(a2 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a2 + 56);
  v163 = (v48 + 63) >> 6;
  v155 = v43 + 16;
  v154 = v43 + 32;
  v153 = v43 + 88;
  v152 = enum case for NWBrowser.Result.Change.removed(_:);
  v143 = enum case for NWBrowser.Result.Change.changed(_:);
  v139 = (v43 + 8);
  v149 = (v43 + 96);
  v167 = (v24 + 32);
  v138 = (v166 + 32);
  v172 = (v4 + 16);
  v171 = (v4 + 88);
  v170 = enum case for NWEndpoint.service(_:);
  v51 = (v4 + 8);
  v52 = (v4 + 96);
  v53 = v34;
  v168 = v52;
  v169 = v51;
  v137 = (v166 + 8);
  v158 = v24;
  v166 = v24 + 8;
  v160 = a2;

  v54 = 0;
  v142 = v42;
  v150 = v34;
  v157 = a2 + 56;
  v144 = v43;
  while (1)
  {
    if (v50)
    {
      v55 = v162;
      v56 = v161;
      goto LABEL_11;
    }

    v55 = v162;
    v56 = v161;
    do
    {
      v57 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v57 >= v163)
      {

        v101 = v165 + 56;
        v102 = 1 << *(v165 + 32);
        v103 = -1;
        if (v102 < 64)
        {
          v103 = ~(-1 << v102);
        }

        v104 = v103 & *(v165 + 56);
        v105 = (v102 + 63) >> 6;

        v106 = 0;
        v107 = v177;
        while (1)
        {
          v108 = v159;
          if (!v104)
          {
            break;
          }

LABEL_40:
          v110 = v158;
          v111 = v151;
          (*(v158 + 16))(v151, *(v165 + 48) + *(v158 + 72) * (__clz(__rbit64(v104)) | (v106 << 6)), v107);
          v112 = *(v110 + 32);
          v42 = v176;
          v112(v176, v111, v107);
          NWBrowser.Result.endpoint.getter();
          v113 = v173;
          (*v172)(v8, v108, v173);
          v114 = (*v171)(v8, v113);
          if (v114 != v170)
          {
            goto LABEL_53;
          }

          v104 &= v104 - 1;
          (*v169)(v108, v113);
          (*v168)(v8, v113);
          v115 = *v8;
          v116 = v8[1];
          v117 = v8[3];

          v118 = v8[5];

          v119 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
          sub_100005508(v8 + *(v119 + 80), &qword_1009787A8, &unk_1007FB990);
          if (v115 == v175 && v116 == v174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v42 = v164, (sub_1004C6D44(v176) & 1) == 0))
          {
            v107 = v177;
            (*v166)(v176, v177);
          }

          else
          {
            v120 = v176;
            v42 = v164;
            sub_1004C7A80(v176, v115, v116);

            v107 = v177;
            (*v166)(v120, v177);
          }
        }

        while (1)
        {
          v109 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            goto LABEL_52;
          }

          if (v109 >= v105)
          {
            break;
          }

          v104 = *(v101 + 8 * v109);
          ++v106;
          if (v104)
          {
            v106 = v109;
            goto LABEL_40;
          }
        }

        v121 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
        v122 = v164;
        swift_beginAccess();
        v123 = *&v122[v121];
        v124 = *(v123 + 16);
        if (v124)
        {
          v125 = sub_10028F5DC(*(v123 + 16), 0);
          v126 = sub_100292394(&v178, v125 + 4, v124, v123);

          sub_100027D64();
          if (v126 != v124)
          {
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
LABEL_49:
          v125 = _swiftEmptyArrayStorage;
        }

        v178 = v125;
        v127 = v164;

        sub_1004CCCD0(&v178, v127);

        v128 = *&v127[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery];
        CurrentValueSubject.send(_:)();
      }

      v50 = *(v47 + 8 * v57);
      ++v54;
    }

    while (!v50);
    v54 = v57;
LABEL_11:
    v58 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v59 = v156;
    (*(v43 + 16))(v156, *(v160 + 48) + *(v43 + 72) * (v58 | (v54 << 6)), v53);
    (*(v43 + 32))(v44, v59, v53);
    v60 = (*(v43 + 88))(v44, v53);
    if (v60 == v152)
    {
      break;
    }

    if (v60 == v143)
    {
      (*v149)(v44, v53);
      v71 = sub_10028088C(&qword_1009808F8, &qword_100806F90);
      v72 = *(v71 + 64);
      (*v167)(v148, v44, v177);
      (*v138)(v146, &v44[v72], v147);
      v73 = v140;
      NWBrowser.Result.endpoint.getter();
      v42 = v173;
      v136 = *v172;
      v136(v56, v73, v173);
      v135 = *v171;
      v74 = v135(v56, v42);
      if (v74 != v170)
      {
        goto LABEL_53;
      }

      v141 = *(v71 + 48);
      v75 = v73;
      v76 = *v169;
      (*v169)(v75, v42);
      v134 = *v168;
      v134(v56, v42);
      v78 = *v56;
      v77 = v56[1];
      v79 = v56[3];

      v80 = v56[5];

      v133 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
      sub_100005508(v56 + *(v133 + 80), &qword_1009787A8, &unk_1007FB990);
      v47 = v157;
      if (v78 == v175 && v77 == v174)
      {

        v53 = v150;
LABEL_29:
        (*v137)(v146, v147);
        v99 = *v166;
        v100 = v177;
        (*v166)(v148, v177);
        v99(&v44[v141], v100);
        goto LABEL_30;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v53 = v150;
      if ((v86 & 1) != 0 || (sub_1004C6D44(v148) & 1) == 0)
      {
        goto LABEL_29;
      }

      v87 = v131;
      NWBrowser.Result.endpoint.getter();
      v42 = v132;
      v88 = v173;
      v136(v132, v87, v173);
      v89 = v135(v42, v88);
      if (v89 != v170)
      {
        goto LABEL_53;
      }

      v76(v87, v88);
      v134(v42, v88);
      v91 = *v42;
      v90 = v42[1];
      v92 = v42[3];

      v93 = v42[5];

      sub_100005508(v42 + *(v133 + 80), &qword_1009787A8, &unk_1007FB990);
      v94 = v148;
      v95 = v91;
      v96 = v146;
      sub_1004C716C(v148, v95, v90);

      (*v137)(v96, v147);
      v97 = *v166;
      v98 = v177;
      (*v166)(v94, v177);
      v97(&v44[v141], v98);
      v42 = v142;
      v53 = v150;
LABEL_14:
      v47 = v157;
    }

    else
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      sub_10000C4AC(v81, qword_100980808);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      v84 = os_log_type_enabled(v82, v83);
      v47 = v157;
      if (v84)
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Unknown bonjour result change", v85, 2u);
        v53 = v150;
      }

      (*v139)(v44, v53);
LABEL_30:
      v42 = v142;
    }
  }

  v61 = v8;
  (*v149)(v44, v53);
  v62 = v177;
  (*v167)(v42, v44, v177);
  v63 = v42;
  NWBrowser.Result.endpoint.getter();
  v64 = v173;
  v42 = v145;
  (*v172)(v145, v55, v173);
  v65 = (*v171)(v42, v64);
  if (v65 == v170)
  {
    (*v169)(v55, v64);
    (*v168)(v42, v64);
    v66 = *v42;
    v67 = v42[1];
    v68 = v42[3];

    v69 = v42[5];

    v70 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
    sub_100005508(v42 + *(v70 + 80), &qword_1009787A8, &unk_1007FB990);
    sub_1004C7694(v66, v67);

    (*v166)(v63, v62);
    v42 = v63;
    v8 = v61;
    v53 = v150;
    v43 = v144;
    goto LABEL_14;
  }

LABEL_53:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1004C6CB0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_1004CCD68(a1);
  }

  return result;
}

uint64_t sub_1004C6D44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for NWBrowser.Result();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10062FEA4();
  if (v18)
  {
    return 0;
  }

  v20 = v17;
  v21 = sub_10057E764(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceFilters));
  result = 1;
  if ((v21 & 1) != 0 && (v20 & 0x4000) == 0)
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100980808);
    (*(v13 + 16))(v16, a1, v12);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v34 = v24;
      v25 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v25 = 136315138;
      NWBrowser.Result.endpoint.getter();
      (*(v5 + 16))(v9, v11, v4);
      if ((*(v5 + 88))(v9, v4) != enum case for NWEndpoint.service(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      (*(v5 + 8))(v11, v4);
      (*(v13 + 8))(v16, v12);
      (*(v5 + 96))(v9, v4);
      v26 = *v9;
      v27 = v9[1];
      v28 = v9[3];

      v29 = v9[5];

      v30 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
      sub_100005508(v9 + *(v30 + 80), &qword_1009787A8, &unk_1007FB990);
      v31 = sub_10000C4E4(v26, v27, &v35);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v34, "Ignoring %s since it is missing nearby sharing flag", v25, 0xCu);
      sub_10000C60C(v33);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    return 0;
  }

  return result;
}

void sub_1004C716C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33[-1] - v8;
  v10 = type metadata accessor for NWBrowser.Result.Change.Flags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NWBrowser.Result.Change.Flags.metadataChanged.getter();
  sub_1004CDBAC(&qword_100980900, &type metadata accessor for NWBrowser.Result.Change.Flags);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if (sub_1006305DC())
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000C4AC(v16, qword_100980808);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_10000C4E4(a2, a3, v33);
        _os_log_impl(&_mh_execute_header, v17, v18, "Bonjour TXT record change for service name %s", v19, 0xCu);
        sub_10000C60C(v20);
      }

      sub_1004C7694(a2, a3);
      v21 = type metadata accessor for NWBrowser.Result();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v9, a1, v21);
      (*(v22 + 56))(v9, 0, 1, v21);
      swift_beginAccess();

      sub_1002B1D78(v9, a2, a3);
      swift_endAccess();
    }

    else
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_100980808);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10000C4E4(a2, a3, v33);
        _os_log_impl(&_mh_execute_header, v28, v29, "AWDL not yet available for serviceName %s", v30, 0xCu);
        sub_10000C60C(v31);
      }
    }
  }

  else
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100980808);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unhandled Bonjour service change", v26, 2u);
    }
  }
}

uint64_t sub_1004C7694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for NWBrowser.Result();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  swift_beginAccess();

  sub_1002B1D78(v13, a1, a2);
  swift_endAccess();
  swift_beginAccess();

  sub_1002B1F50(0, 1, a1, a2);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (*(v16 + 16) && (v17 = sub_100012854(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    if (*&v19[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection])
    {
      v20 = v19;

      NWConnection.forceCancel()();
    }

    else
    {
      v21 = v19;
    }

    if (*&v19[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection])
    {
      v22 = *&v19[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection];

      NWConnection.forceCancel()();
    }
  }

  else
  {
    swift_endAccess();
    v19 = 0;
  }

  swift_beginAccess();

  sub_1002B2084(0, a1, a2);
  swift_endAccess();
  v23 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v24 = *(v23 - 8);
  (*(v24 + 56))(v9, 1, 1, v23);
  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();

  sub_1002B0958(v9, a1, a2);
  swift_endAccess();
  v26 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler + 8);
  v27 = *(v3 + v25);
  v28 = v27[2];
  if (!v28)
  {
    (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler))(_swiftEmptyArrayStorage);
    goto LABEL_14;
  }

  v33 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
  v34 = v19;
  v29 = sub_10028F688(v28, 0);
  v30 = sub_100291D40(&v35, v29 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v28, v27);

  result = sub_100027D64();
  if (v30 == v28)
  {
    v19 = v34;
    v33(v29);
LABEL_14:
  }

  __break(1u);
  return result;
}

void sub_1004C7A80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20[-1] - v8;
  if (sub_1004C8A6C(a2, a3))
  {
    if (sub_1006305DC())
    {
      v10 = type metadata accessor for NWBrowser.Result();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v9, a1, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      swift_beginAccess();

      sub_1002B1D78(v9, a2, a3);
      swift_endAccess();
      return;
    }

    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_100980808);

    v19 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10000C4E4(a2, a3, v20);
      v16 = "AWDL not yet available for serviceName %s";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_100980808);

    v19 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10000C4E4(a2, a3, v20);
      v16 = "Already discovering/discovered %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, v13, v16, v14, 0xCu);
      sub_10000C60C(v15);

      return;
    }
  }

  v18 = v19;
}

uint64_t sub_1004C7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C7EB0, v5, 0);
}

uint64_t sub_1004C7EB0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger);
  sub_10055FC6C();
  v2 = String._bridgeToObjectiveC()();

  v3 = *(v1 + 24);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
  }

LABEL_9:
  sub_100086D20(@"BonjourBrowse", @"Start", v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004C7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C8094, v5, 0);
}

uint64_t sub_1004C8094()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
  {
    sub_10047FAC0();
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser;
    v6 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_bonjourBrowser);
    if (v6)
    {
      v7 = v6;
      sub_1004C5400();

      v6 = *(v4 + v5);
    }

    *(v4 + v5) = 0;

    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  **(v0 + 40) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004C8188(uint64_t a1)
{
  v85 = type metadata accessor for NWBrowser.Result();
  v82 = *(v85 - 8);
  v2 = *(v82 + 64);
  __chkstk_darwin(v85);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NWEndpoint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v74 - v12);
  __chkstk_darwin(v11);
  v15 = &v74 - v14;
  NWBrowser.Result.endpoint.getter();
  v83 = *(v6 + 16);
  v83(v13, v15, v5);
  if ((*(v6 + 88))(v13, v5) == enum case for NWEndpoint.service(_:))
  {
    v16 = v6 + 8;
    v84 = *(v6 + 8);
    v84(v15, v5);
    (*(v6 + 96))(v13, v5);
    v18 = *v13;
    v17 = v13[1];
    v19 = v13[3];

    v20 = v13[5];

    v21 = sub_10028088C(&qword_1009808E8, &qword_100806F50);
    sub_100005508(v13 + *(v21 + 80), &qword_1009787A8, &unk_1007FB990);
    v22 = sub_10062FEA4();
    if (v23)
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100980808);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v25, v26))
      {

LABEL_18:

        return 0;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v18;
      v30 = v28;
      v89 = v28;
      *v27 = 136315138;
      v31 = sub_10000C4E4(v29, v17, &v89);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Missing TXT record for Bonjour service %s", v27, 0xCu);
      sub_10000C60C(v30);

LABEL_17:

      goto LABEL_18;
    }

    v32 = *(v86 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_rpClient);
    if (!v32)
    {

      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000C4AC(v45, qword_100980808);
      v25 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v25, v46))
      {
        goto LABEL_18;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v25, v46, "Missing RPClient for Bonjour browser", v47, 2u);
      goto LABEL_17;
    }

    v77 = v16;
    v79 = v22;
    v33 = qword_100973940;
    v78 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v80 = v18;
    v34 = type metadata accessor for Logger();
    sub_10000C4AC(v34, qword_100980808);
    v35 = v82;
    v36 = v85;
    (*(v82 + 16))(v4, a1, v85);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v76 = v38;
    v39 = os_log_type_enabled(v37, v38);
    v81 = v10;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_10000C4E4(v80, v17, &v89);
      *(v40 + 12) = 2080;
      v75 = v37;
      NWBrowser.Result.interfaces.getter();
      type metadata accessor for NWInterface();
      v74 = Array.description.getter();
      v42 = v41;

      (*(v35 + 8))(v4, v85);
      v43 = sub_10000C4E4(v74, v42, &v89);
      v10 = v81;

      *(v40 + 14) = v43;
      v44 = v75;
      _os_log_impl(&_mh_execute_header, v75, v76, "Creating service %s from interfaces %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v35 + 8))(v4, v36);
    }

    NWBrowser.Result.endpoint.getter();
    v49 = *(v86 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus);
    v50 = *(v86 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_nearbyAgent);
    v51 = v10;
    v52 = *(v86 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_idmsService);
    v53 = *(v86 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browserQueue);
    v86 = type metadata accessor for SDAirDropBonjourDiscoverConnection();
    v54 = objc_allocWithZone(v86);
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection] = 0;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection] = 0;
    v55 = &v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_knownAltDSID];
    *v55 = 0;
    v55[1] = 0;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnectionTimeout] = 5;
    v56 = &v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_serviceName];
    *v56 = v80;
    v56[1] = v17;
    v83(&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_endpoint], v51, v5);
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportFlags] = v79;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceStatus] = v49;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_nearbyAgent] = v50;
    v57 = type metadata accessor for SDAirDropDeviceSupportManager();
    v58 = objc_allocWithZone(v57);
    *&v58[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus] = v49;
    *&v58[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent] = v50;
    v88.receiver = v58;
    v88.super_class = v57;
    v59 = v49;
    v60 = v50;
    v61 = v59;
    v62 = v60;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_deviceSupportManager] = objc_msgSendSuper2(&v88, "init");
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_idmsService] = v52;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_browserQueue] = v53;
    v63 = v78;
    *&v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_rpClient] = v78;
    v64 = v63;
    v65 = v52;
    v66 = v53;
    v67 = sub_10046938C();
    v68 = sub_100636668(v67);
    v70 = v69;

    v71 = &v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_tlsCertDigestDescription];
    *v71 = v68;
    v71[1] = v70;
    type metadata accessor for SFAirDropUserDefaults();
    v72 = static SFAirDropUserDefaults.shared.getter();
    LOBYTE(v68) = SFAirDropUserDefaults.privacyImprovements.getter();

    v54[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_privacyImprovements] = v68 & 1;
    v87.receiver = v54;
    v87.super_class = v86;
    v73 = objc_msgSendSuper2(&v87, "init");

    v84(v81, v5);
    return v73;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C8A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (*(v11 + 16) && (v12 = sub_100012854(a1, a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    v17 = *(v16 - 8);
    sub_1002940CC(v15 + *(v17 + 72) * v14, v9);
    (*(v17 + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  swift_endAccess();
  type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v18 = (*(*(v16 - 8) + 48))(v9, 1, v16);
  sub_100005508(v9, &qword_1009763E0, &qword_1007F95D0);
  if (v18 == 1)
  {
    v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
    swift_beginAccess();
    if (*(*(v3 + v19) + 16))
    {
      sub_100012854(a1, a2);
      v21 = v20 ^ 1;
    }

    else
    {
      v21 = 1;
    }

    swift_endAccess();
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1004C8CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C8D60, v5, 0);
}

uint64_t sub_1004C8D60()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_deviceStatus) bluetoothEnabled];
  v2 = *(v0 + 16);
  if (v1)
  {
    if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_browser))
    {
      v3 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController);
      sub_1005C26B4(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
    }
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_bleController);
    sub_1005C26DC(*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_sessionLogger));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004C9070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = *(*(sub_10028088C(&qword_1009763D0, &unk_1007F95C0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v6 = *(*(sub_10028088C(&qword_1009763E0, &qword_1007F95D0) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v4[34] = v7;
  v8 = *(v7 - 8);
  v4[35] = v8;
  v9 = *(v8 + 64) + 15;
  v4[36] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v4[37] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004C91E0, v10, 0);
}

uint64_t sub_1004C91E0()
{
  v1 = v0[31];
  v2 = sub_1004C8188(v0[28]);
  v0[38] = v2;
  if (v2)
  {
    v3 = v2;
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v0[39] = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
    swift_beginAccess();

    v3;
    sub_1002B2084(v3, v6, v5);
    swift_endAccess();
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_1004C9348;
    v8 = v0[36];

    return sub_1003C448C(v8);
  }

  else
  {
    v10 = v0[36];
    v11 = v0[32];
    v12 = v0[33];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004C9348()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 296);
  if (v0)
  {
    v6 = sub_1004C9A08;
  }

  else
  {
    v6 = sub_1004C9474;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004C9474()
{
  v55 = v0;
  if (qword_100973940 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100980808);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v54 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000C4E4(v6, v5, &v54);
    _os_log_impl(&_mh_execute_header, v3, v4, "Bonjour service %s completed discovery", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v9 = *(v0 + 280);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  sub_1002940CC(*(v0 + 288), v11);
  (*(v9 + 56))(v11, 0, 1, v10);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  swift_beginAccess();

  sub_1002B0958(v11, v15, v14);
  swift_endAccess();
  swift_beginAccess();

  sub_1002B1F50(0, 1, v15, v14);
  swift_endAccess();
  v17 = type metadata accessor for NWBrowser.Result();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = &unk_100980000;
  swift_beginAccess();

  sub_1002B1D78(v12, v15, v14);
  swift_endAccess();
  v19 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
  v20 = *(v13 + v16);
  v21 = v20[2];
  if (v21)
  {
    v51 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler + 8);
    v52 = *(v13 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_endpointsUpdateHandler);
    v22 = *(v0 + 280);
    v23 = sub_10028F688(v21, 0);
    v24 = sub_100291D40(&v54, v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21, v20);

    result = sub_100027D64();
    if (v24 != v21)
    {
      __break(1u);
      goto LABEL_25;
    }

    v18 = &unk_100980000;
    v19 = v52;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v26 = *(v0 + 288);
  v19(v23);

  sub_100294130(v26);
  v27 = *(v0 + 328);
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = *(v0 + 232);
  swift_beginAccess();

  sub_1002B2084(0, v32, v30);
  swift_endAccess();
  if (*(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection))
  {
    v33 = *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection);

    NWConnection.forceCancel()();
  }

  v34 = *(v0 + 304);
  if (*(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection))
  {
    v35 = *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection);

    NWConnection.forceCancel()();
  }

  v36 = *(v0 + 248);
  v37 = v18[270];
  swift_beginAccess();
  v38 = *(v36 + v37);
  v39 = *(v38 + 16);
  if (v39)
  {
    v53 = v27;
    v40 = sub_10028F5DC(v39, 0);
    v41 = sub_100292394(&v54, v40 + 4, v39, v38);

    result = sub_100027D64();
    if (v41 == v39)
    {
      v27 = v53;
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v40 = _swiftEmptyArrayStorage;
LABEL_17:
  v42 = *(v0 + 248);
  v54 = v40;
  v43 = v42;

  sub_1004CCCD0(&v54, v43);
  if (v27)
  {
  }

  else
  {
    v44 = *(v0 + 304);
    v45 = *(v0 + 248);

    v46 = *&v45[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery];
    *(v0 + 208) = v54;
    CurrentValueSubject.send(_:)();

    sub_100015D04(0);
    v47 = *(v0 + 288);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_1004C9A08()
{
  v64 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  v5 = *(v2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v2 + v4);
  v7 = v63;
  *(v2 + v4) = 0x8000000000000000;
  v8 = sub_100012854(v3, v1);
  v10 = *(v7 + 2);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_27;
  }

  v14 = v9;
  if (*(v7 + 3) < v13)
  {
    v16 = v0[29];
    v15 = v0[30];
    sub_100576804(v13, isUniquelyReferenced_nonNull_native);
    v7 = v63;
    v8 = sub_100012854(v16, v15);
    if ((v14 & 1) != (v17 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_8:
    *(v2 + v4) = v7;
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v62 = v8;
  sub_1002D1528();
  v8 = v62;
  v7 = v63;
  *(v2 + v4) = v63;
  if ((v14 & 1) == 0)
  {
LABEL_9:
    v19 = v8;
    sub_10057D230(v8, v0[29], v0[30], 0, v7);

    v8 = v19;
  }

LABEL_10:
  v20 = *(v7 + 7);
  v21 = *(v20 + 8 * v8);
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v12)
  {
    *(v20 + 8 * v8) = v22;
    swift_endAccess();
    if (qword_100973940 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_12:
  v23 = v0[41];
  v24 = v0[30];
  v25 = type metadata accessor for Logger();
  sub_10000C4AC(v25, qword_100980808);

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[41];
  if (v28)
  {
    v31 = v0[29];
    v30 = v0[30];
    v32 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_10000C4E4(v31, v30, &v63);
    *(v32 + 12) = 2080;
    swift_getErrorValue();
    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[16];
    v36 = Error.flatDescription.getter();
    v38 = sub_10000C4E4(v36, v37, &v63);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v26, v27, "Bonjour service %s failed discovery -  %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = v0[38];
  v39 = v0[39];
  v41 = v0[30];
  v42 = v0[31];
  v43 = v0[29];
  swift_beginAccess();

  sub_1002B2084(0, v43, v41);
  swift_endAccess();
  if (*(v40 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection))
  {
    v44 = *(v40 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_discoverConnection);

    NWConnection.forceCancel()();
  }

  v45 = v0[38];
  if (*(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection))
  {
    v46 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropBonjourDiscoverConnection_identityShareConnection);

    NWConnection.forceCancel()();
  }

  v47 = v0[31];
  v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
  swift_beginAccess();
  v49 = *(v47 + v48);
  v50 = *(v49 + 16);
  if (!v50)
  {
    goto LABEL_22;
  }

  v51 = sub_10028F5DC(*(v49 + 16), 0);
  v52 = sub_100292394(&v63, v51 + 4, v50, v49);

  sub_100027D64();
  if (v52 != v50)
  {
    __break(1u);
LABEL_22:
    v51 = _swiftEmptyArrayStorage;
  }

  v53 = v0[31];
  v63 = v51;
  v54 = v53;

  sub_1004CCCD0(&v63, v54);
  v55 = v0[38];
  v56 = v0[31];

  v57 = *&v56[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery];
  v0[26] = v63;
  CurrentValueSubject.send(_:)();

  sub_100015D04(sub_100036738);
  v58 = v0[36];
  v59 = v0[32];
  v60 = v0[33];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1004C9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10028088C(&qword_1009808D0, &qword_100806F00);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_10028088C(&qword_1009808D8, &qword_100806F08);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v11 = static AirDropActor.shared;
  v4[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004CA0E4, v11, 0);
}

uint64_t sub_1004CA0E4()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v3 = v0[15];
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    v0[8] = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesNeedingDiscovery);
    sub_10028088C(&unk_10097F380, &qword_100806F10);
    sub_100011630(&qword_1009808E0, &unk_10097F380, &qword_100806F10);
    Publisher<>.values.getter();
    AsyncPublisher.makeAsyncIterator()();
    (*(v5 + 8))(v4, v6);
    v7 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v0[18] = v7;
    v0[19] = v8;
    swift_beginAccess();
    v9 = v0[18];
    v10 = v0[16];
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1004CA330;
    v12 = v0[15];

    return sub_1004C4EB4(v10, v9);
  }

  else
  {
    v14 = v0[15];
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1004CA330(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(*v2 + 168) = a1;

  if (!v1)
  {
    v6 = *(v3 + 128);

    return _swift_task_switch(sub_1004CA444, v6, 0);
  }

  return result;
}

uint64_t sub_1004CA444()
{
  v33 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100980808);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10000C4E4(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Service names to discover %s", v5, 0xCu);
      sub_10000C60C(v6);
    }

    v10 = *(v0 + 136);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 152);
      v14 = *(v0 + 136);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315138;
      v17 = *(v14 + v13);

      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = sub_10000C4E4(v18, v20, &v32);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current service name timeouts %s", v15, 0xCu);
      sub_10000C60C(v16);
    }

    v22 = *(v0 + 136);
    sub_1004CA7DC(v1);

    v23 = *(v0 + 144);
    v24 = *(v0 + 128);
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *v25 = v0;
    v25[1] = sub_1004CA330;
    v26 = *(v0 + 120);

    return sub_1004C4EB4(v24, v23);
  }

  else
  {
    v28 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v29 = *(v0 + 120);
    v30 = *(v0 + 96);

    v31 = *(v0 + 8);

    return v31();
  }
}

void sub_1004CA7DC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v66 - v6;
  v8 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v76 = &v66 - v10;
  v11 = *(a1 + 16);
  v73 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToCurrentDiscoverConnections;
  v74 = v11;
  if (!v11)
  {
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v12 = 0;
  v71 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToAirDropEndpoints;
  v13 = a1 + 40;
  v14 = _swiftEmptyArrayStorage;
  v72 = v7;
  v66 = a1 + 40;
  do
  {
    v70 = v14;
    v15 = (v13 + 16 * v12);
    v16 = v12;
    while (1)
    {
      if (v16 >= v74)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
LABEL_48:
        v62 = type metadata accessor for Logger();
        sub_10000C4AC(v62, qword_100980808);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "Discover requests maxed out, waiting for them to complete", v65, 2u);
        }

        return;
      }

      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_52;
      }

      v17 = *(v15 - 1);
      v18 = *v15;
      v19 = v75;
      v20 = v71;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (*(v21 + 16))
      {

        v22 = sub_100012854(v17, v18);
        if (v23)
        {
          v24 = v22;
          v68 = *(v21 + 56);
          v25 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
          v26 = *(v25 - 8);
          v69 = v17;
          v27 = v26;
          v28 = v68 + *(v26 + 72) * v24;
          v29 = v76;
          sub_1002940CC(v28, v76);
          (*(v27 + 56))(v29, 0, 1, v25);
          v12 = v16 + 1;
          v17 = v69;
        }

        else
        {
          v25 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
          (*(*(v25 - 8) + 56))(v76, 1, 1, v25);
        }
      }

      else
      {
        v25 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        (*(*(v25 - 8) + 56))(v76, 1, 1, v25);
      }

      swift_endAccess();
      type metadata accessor for SDAirDropDiscoveredEndpoint(0);
      if ((*(*(v25 - 8) + 48))(v76, 1, v25) == 1)
      {
        break;
      }

      sub_100005508(v76, &qword_1009763E0, &qword_1007F95D0);
LABEL_5:
      ++v16;
      v15 += 2;
      v7 = v72;
      if (v12 == v74)
      {
        v14 = v70;
        goto LABEL_25;
      }
    }

    sub_100005508(v76, &qword_1009763E0, &qword_1007F95D0);
    v30 = v75;
    v31 = v73;
    swift_beginAccess();
    if (*(*(v30 + v31) + 16))
    {
      sub_100012854(v17, v18);
      if (v32)
      {
        swift_endAccess();

        goto LABEL_5;
      }
    }

    swift_endAccess();
    v14 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10028FBDC(0, v14[2] + 1, 1);
      v14 = v81;
    }

    v13 = v66;
    v35 = v14[2];
    v34 = v14[3];
    if (v35 >= v34 >> 1)
    {
      sub_10028FBDC((v34 > 1), v35 + 1, 1);
      v14 = v81;
    }

    v14[2] = v35 + 1;
    v36 = &v14[2 * v35];
    v36[4] = v17;
    v36[5] = v18;
    v7 = v72;
  }

  while (v12 != v74);
LABEL_25:
  v74 = v14[2];
  if (v74)
  {
    v71 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_delegate;
    swift_beginAccess();
    v37 = 0;
    v38 = v14 + 5;
    v70 = v14;
    do
    {
      if (v37 >= v14[2])
      {
        goto LABEL_53;
      }

      v40 = *(v38 - 1);
      v39 = *v38;
      v41 = *(*(v75 + v73) + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v43 = OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_transferringConnectables;
        v44 = Strong;
        swift_beginAccess();
        v45 = *(*(v44 + v43) + 16);

        swift_unknownObjectRelease();
        if (v45)
        {
          if (v41 > 2)
          {
            goto LABEL_47;
          }

          goto LABEL_36;
        }
      }

      else
      {
      }

      if (v41 > 5)
      {
LABEL_47:

        if (qword_100973940 != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }

LABEL_36:
      v76 = v37;
      v46 = type metadata accessor for TaskPriority();
      v47 = *(v46 - 8);
      (*(v47 + 56))(v7, 1, 1, v46);
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = qword_1009735E0;

      v50 = v7;
      if (v49 != -1)
      {
        swift_once();
      }

      v51 = static AirDropActor.shared;
      v52 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
      v53 = swift_allocObject();
      v53[2] = v51;
      v53[3] = v52;
      v53[4] = v48;
      v53[5] = v40;
      v53[6] = v39;

      v54 = v67;
      sub_1004CBCCC(v50, v67);
      v55 = (*(v47 + 48))(v54, 1, v46);

      v7 = v50;
      if (v55 == 1)
      {
        sub_100005508(v54, &qword_100976160, &qword_1007F8770);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v47 + 8))(v54, v46);
      }

      v56 = v53[2];
      v57 = v53[3];
      swift_unknownObjectRetain();

      if (v56)
      {
        swift_getObjectType();
        v58 = dispatch thunk of Actor.unownedExecutor.getter();
        v60 = v59;
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      sub_100005508(v50, &qword_100976160, &qword_1007F8770);
      v61 = swift_allocObject();
      *(v61 + 16) = &unk_100806F30;
      *(v61 + 24) = v53;
      if (v60 | v58)
      {
        v77 = 0;
        v78 = 0;
        v79 = v58;
        v80 = v60;
      }

      v37 = v76 + 1;
      swift_task_create();

      v38 += 2;
      v14 = v70;
    }

    while (v74 != v37);
  }
}

BOOL sub_1004CB0D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
  swift_beginAccess();
  v9 = *(a3 + v8);
  if (*(v9 + 16) && (v10 = sub_100012854(v5, v4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + v8);
  if (*(v13 + 16) && (v14 = sub_100012854(v6, v7), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  return v12 < v16;
}

uint64_t sub_1004CB1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for NWBrowser.Result();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v6[14] = static AirDropActor.shared;

  return _swift_task_switch(sub_1004CB2A4, v10, 0);
}

uint64_t sub_1004CB2A4()
{
  v43 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToBrowseResult;
    swift_beginAccess();
    v5 = *&v3[v4];
    if (*(v5 + 16) && (v6 = sub_100012854(v0[9], v0[10]), (v7 & 1) != 0))
    {
      v8 = v0[10];
      v9 = v0[9];
      (*(v0[12] + 16))(v0[13], *(v5 + 56) + *(v0[12] + 72) * v6, v0[11]);
      swift_endAccess();
      if (sub_1004C8A6C(v9, v8))
      {
        if (sub_1004C5800())
        {
          v10 = swift_task_alloc();
          v0[16] = v10;
          *v10 = v0;
          v10[1] = sub_1004CB758;
          v11 = v0[13];
          v12 = v0[9];
          v13 = v0[10];

          return sub_1004C9070(v11, v12, v13);
        }

        if (qword_100973940 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000C4AC(v33, qword_100980808);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        v36 = os_log_type_enabled(v34, v35);
        v38 = v0[12];
        v37 = v0[13];
        v39 = v0[11];
        if (v36)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Discover requests maxed out, waiting for them to complete", v40, 2u);
        }

        else
        {
        }

        (*(v38 + 8))(v37, v39);
      }

      else
      {
        if (qword_100973940 != -1)
        {
          swift_once();
        }

        v21 = v0[10];
        v22 = type metadata accessor for Logger();
        sub_10000C4AC(v22, qword_100980808);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        v25 = os_log_type_enabled(v23, v24);
        v26 = v0[12];
        v27 = v0[13];
        v28 = v0[11];
        if (v25)
        {
          v41 = v0[13];
          v30 = v0[9];
          v29 = v0[10];
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v42 = v32;
          *v31 = 136315138;
          *(v31 + 4) = sub_10000C4E4(v30, v29, &v42);
          _os_log_impl(&_mh_execute_header, v23, v24, "Already discovering/discovered %s", v31, 0xCu);
          sub_10000C60C(v32);

          (*(v26 + 8))(v41, v28);
        }

        else
        {

          (*(v26 + 8))(v27, v28);
        }
      }
    }

    else
    {
      swift_endAccess();
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100980808);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Missing browse result for service name, endpoint may have disappeared", v18, 2u);
      }
    }
  }

  v19 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1004CB758()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_1004CB868, v2, 0);
}

uint64_t sub_1004CB868()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 104);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004CBA8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004C8CC4(a1, v4, v5, v6);
}

uint64_t sub_1004CBB48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1004C6CB0(a1);
}

uint64_t sub_1004CBB50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C9F74(a1, v4, v5, v6);
}

uint64_t sub_1004CBC04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004CB1A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CBCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CBD3C(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 4;
  v12 = a3 - __src;
  v13 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    if (a4 != __src || &__src[2 * v14] <= a4)
    {
      memmove(a4, __src, 16 * v14);
    }

    v51 = &v5[2 * v14];
    if (v12 >= 16 && v7 > v8)
    {
      v48 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
      v50 = v5;
LABEL_35:
      v47 = v7 - 2;
      v6 -= 2;
      v31 = v51;
      do
      {
        v32 = *(v31 - 2);
        v33 = *(v31 - 1);
        v31 -= 2;
        v34 = *(v7 - 2);
        v35 = *(v7 - 1);
        swift_beginAccess();
        v36 = *(a5 + v48);
        v37 = *(v36 + 16);

        if (v37 && (v38 = sub_100012854(v32, v33), (v39 & 1) != 0))
        {
          v40 = *(*(v36 + 56) + 8 * v38);
        }

        else
        {
          v40 = 0;
        }

        v41 = *(a5 + v48);
        if (*(v41 + 16) && (v42 = sub_100012854(v34, v35), (v43 & 1) != 0))
        {
          v44 = *(*(v41 + 56) + 8 * v42);
        }

        else
        {
          v44 = 0;
        }

        swift_endAccess();

        v45 = v6 + 2;
        if (v40 < v44)
        {
          v5 = v50;
          if (v45 != v7)
          {
            *v6 = *v47;
          }

          if (v51 <= v50 || (v7 -= 2, v47 <= v8))
          {
            v7 = v47;
            goto LABEL_54;
          }

          goto LABEL_35;
        }

        v5 = v50;
        if (v45 != v51)
        {
          *v6 = *v31;
        }

        v6 -= 2;
        v51 = v31;
      }

      while (v31 > v50);
      v51 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[2 * v11] <= a4)
    {
      memmove(a4, __dst, 16 * v11);
    }

    v51 = &v5[2 * v11];
    if (v9 >= 16 && v7 < v6)
    {
      v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
      while (1)
      {
        v16 = *v7;
        v17 = v7[1];
        v49 = v5;
        v18 = *v5;
        v19 = v5[1];
        swift_beginAccess();
        v20 = *(a5 + v15);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = sub_100012854(v16, v17);
        if (v23)
        {
          v24 = *(*(v20 + 56) + 8 * v22);
        }

        else
        {
LABEL_15:
          v24 = 0;
        }

        v25 = *(a5 + v15);
        if (*(v25 + 16) && (v26 = sub_100012854(v18, v19), (v27 & 1) != 0))
        {
          v28 = *(*(v25 + 56) + 8 * v26);
        }

        else
        {
          v28 = 0;
        }

        swift_endAccess();

        if (v24 >= v28)
        {
          break;
        }

        v29 = v7;
        v30 = v8 == v7;
        v7 += 2;
        v5 = v49;
        if (!v30)
        {
          goto LABEL_25;
        }

LABEL_26:
        v8 += 2;
        if (v5 >= v51 || v7 >= v6)
        {
          goto LABEL_28;
        }
      }

      v29 = v49;
      v5 = v49 + 2;
      if (v8 == v49)
      {
        goto LABEL_26;
      }

LABEL_25:
      *v8 = *v29;
      goto LABEL_26;
    }

LABEL_28:
    v7 = v8;
  }

LABEL_54:
  if (v7 != v5 || v7 >= (v5 + ((v51 - v5 + (v51 - v5 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v7, v5, 16 * ((v51 - v5) / 16));
  }

  return 1;
}

void sub_1004CC0E0(char **a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_1004973B4(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __dst = (v9 + 16 * *v10);
      __src = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_1004CBD3C(__dst, __src, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1004CC280(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v6 = a3[1];
  v138 = _swiftEmptyArrayStorage;
  if (v6 >= 1)
  {
    v135 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v124 = a5;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v134 = v5;
    while (1)
    {
      v125 = v8;
      if (v7 + 1 >= v6)
      {
        v19 = v7 + 1;
      }

      else
      {
        v127 = v6;
        v9 = v7;
        v10 = *a3;
        v11 = (*a3 + 16 * (v7 + 1));
        v12 = v11[1];
        v137[0] = *v11;
        v137[1] = v12;
        v13 = (v10 + 16 * v7);
        v14 = v13[1];
        v136[0] = *v13;
        v136[1] = v14;

        v131 = sub_1004CB0D0(v137, v136, v124);
        if (v130)
        {

          goto LABEL_109;
        }

        v15 = (v9 + 2);
        v117 = v9;
        v16 = 16 * v9;
        v17 = (v10 + 16 * v9 + 40);
        while (1)
        {
          v19 = v127;
          if (v127 == v15)
          {
            break;
          }

          v20 = *(v17 - 1);
          v21 = *v17;
          v22 = *(v17 - 3);
          v23 = *(v17 - 2);
          swift_beginAccess();
          v24 = *(v5 + v135);
          v25 = *(v24 + 16);

          if (v25 && (v26 = sub_100012854(v20, v21), (v27 & 1) != 0))
          {
            v28 = *(*(v24 + 56) + 8 * v26);
          }

          else
          {
            v28 = 0;
          }

          v29 = *(v5 + v135);
          if (*(v29 + 16) && (v30 = sub_100012854(v22, v23), (v31 & 1) != 0))
          {
            v18 = *(*(v29 + 56) + 8 * v30);
          }

          else
          {
            v18 = 0;
          }

          v8 = v125;
          swift_endAccess();

          ++v15;
          v17 += 2;
          if (((v131 ^ (v28 >= v18)) & 1) == 0)
          {
            v19 = (v15 - 1);
            break;
          }
        }

        v7 = v117;
        if (v131)
        {
          if (v19 < v117)
          {
            goto LABEL_132;
          }

          if (v117 < v19)
          {
            v32 = 0;
            v33 = 16 * v19;
            v34 = v117;
            do
            {
              if (v34 != (v19 + v32 - 1))
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v36 = (v35 + v16);
                v37 = v35 + v33;
                v38 = *v36;
                v39 = v36[1];
                *v36 = *(v37 - 16);
                *(v37 - 16) = v38;
                *(v37 - 8) = v39;
              }

              ++v34;
              --v32;
              v33 -= 16;
              v16 += 16;
            }

            while (v34 < v19 + v32);
          }
        }
      }

      v40 = a3[1];
      if (v19 >= v40)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v19, v7))
      {
        goto LABEL_129;
      }

      if (v19 - v7 >= a4)
      {
        goto LABEL_37;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_130;
      }

      if (v7 + a4 >= v40)
      {
        v41 = a3[1];
      }

      else
      {
        v41 = v7 + a4;
      }

      if (v41 < v7)
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:

        __break(1u);
LABEL_134:

        __break(1u);
LABEL_135:

        __break(1u);
LABEL_136:

        __break(1u);
LABEL_137:

        __break(1u);
        return;
      }

      if (v19 == v41)
      {
LABEL_37:
        v42 = v19;
        if (v19 < v7)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v133 = *a3;
        v95 = (*a3 + 16 * v19);
        v118 = v7;
        v96 = v7 - v19;
        v121 = v41;
        do
        {
          v129 = v19;
          v97 = (v133 + 16 * v19);
          v98 = *v97;
          v99 = v97[1];
          v122 = v96;
          v123 = v95;
          v100 = v96;
          do
          {
            v101 = *(v95 - 2);
            v102 = *(v95 - 1);
            v5 = v95 - 2;
            swift_beginAccess();
            v103 = *(v134 + v135);
            v104 = *(v103 + 16);

            if (v104 && (v105 = sub_100012854(v98, v99), (v106 & 1) != 0))
            {
              v107 = *(*(v103 + 56) + 8 * v105);
            }

            else
            {
              v107 = 0;
            }

            v108 = *(v134 + v135);
            if (*(v108 + 16) && (v109 = sub_100012854(v101, v102), (v110 & 1) != 0))
            {
              v111 = *(*(v108 + 56) + 8 * v109);
            }

            else
            {
              v111 = 0;
            }

            swift_endAccess();

            if (v107 >= v111)
            {
              break;
            }

            if (!v133)
            {
              goto LABEL_133;
            }

            v98 = *v95;
            v99 = v95[1];
            *v95 = *v5;
            *(v95 - 1) = v99;
            *(v95 - 2) = v98;
            v95 -= 2;
          }

          while (!__CFADD__(v100++, 1));
          v19 = (v129 + 1);
          v95 = v123 + 2;
          v96 = v122 - 1;
          v42 = v121;
        }

        while (v129 + 1 != v121);
        v5 = v134;
        v8 = v125;
        v7 = v118;
        if (v121 < v118)
        {
          goto LABEL_128;
        }
      }

      v120 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10028E6A8(0, *(v8 + 2) + 1, 1, v8);
      }

      v44 = *(v8 + 2);
      v43 = *(v8 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v8 = sub_10028E6A8((v43 > 1), v44 + 1, 1, v8);
      }

      *(v8 + 2) = v45;
      v46 = v8 + 32;
      v47 = &v8[16 * v44 + 32];
      *v47 = v7;
      *(v47 + 1) = v120;
      v138 = v8;
      v128 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v8 + 4);
            v50 = *(v8 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_57:
            if (v52)
            {
              goto LABEL_119;
            }

            v65 = &v8[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_122;
            }

            v71 = &v46[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_126;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v75 = &v8[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_71:
          if (v70)
          {
            goto LABEL_121;
          }

          v78 = &v46[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_124;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v86 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v87 = &v46[16 * v48 - 16];
          v5 = *v87;
          v88 = v48;
          v89 = &v46[16 * v48];
          v90 = *(v89 + 1);
          v132 = (v86 + 16 * *v87);
          v91 = (v86 + 16 * *v89);
          v92 = (v86 + 16 * v90);
          v93 = v124;
          sub_1004CBD3C(v132, v91, v92, v128, v93);
          if (v130)
          {

            v138 = v8;
            v5 = v134;
            goto LABEL_109;
          }

          if (v90 < v5)
          {
            goto LABEL_114;
          }

          v94 = *(v8 + 2);
          if (v88 > v94)
          {
            goto LABEL_115;
          }

          *v87 = v5;
          *(v87 + 1) = v90;
          if (v88 >= v94)
          {
            goto LABEL_116;
          }

          v45 = v94 - 1;
          memmove(v89, v89 + 16, 16 * (v94 - 1 - v88));
          *(v8 + 2) = v94 - 1;
          v5 = v134;
          v46 = v8 + 32;
          if (v94 <= 2)
          {
LABEL_3:
            v138 = v8;
            goto LABEL_4;
          }
        }

        v53 = &v46[16 * v45];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_117;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_118;
        }

        v60 = &v8[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_120;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_123;
        }

        if (v64 >= v56)
        {
          v82 = &v46[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_127;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_4:
      v6 = a3[1];
      v7 = v120;
      if (v120 >= v6)
      {
        goto LABEL_106;
      }
    }
  }

  v113 = a5;
LABEL_106:
  v114 = *a1;
  if (!*a1)
  {
    goto LABEL_137;
  }

  v115 = v5;
  sub_1004CC0E0(&v138, v114, a3, v115);
  if (v130)
  {

LABEL_109:
  }

  else
  {
  }
}

uint64_t sub_1004CCA20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser_serviceNamesToRetryCount;
    v27 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_5:
    v25 = v6;
    v26 = a3;
    v8 = (v27 + 16 * a3);
    v10 = *v8;
    v9 = v8[1];
    v24 = v7;
    while (1)
    {
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      swift_beginAccess();
      v13 = *(a5 + v5);
      v14 = *(v13 + 16);

      if (v14 && (v15 = sub_100012854(v10, v9), (v16 & 1) != 0))
      {
        v17 = *(*(v13 + 56) + 8 * v15);
      }

      else
      {
        v17 = 0;
      }

      v18 = *(a5 + v5);
      if (*(v18 + 16) && (v19 = sub_100012854(v12, v11), (v20 & 1) != 0))
      {
        v21 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v21 = 0;
      }

      swift_endAccess();

      if (v17 >= v21)
      {
LABEL_4:
        a3 = v26 + 1;
        v6 = v25 + 2;
        v7 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v10 = *v6;
      v9 = v6[1];
      *v6 = *(v6 - 1);
      *(v6 - 1) = v9;
      *(v6 - 2) = v10;
      v6 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004CCBA0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v10[0] = v8 + 4;
      v10[1] = v7;
      v9 = v4;
      sub_1004CC280(v10, v11, a1, v6, v9);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1004CCA20(0, v3, 1, a1, v4);
  }
}

void sub_1004CCCD0(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1004978F4(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_1004CCBA0(v7, v6);

  *a1 = v3;
}

void sub_1004CCD68(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v76 - v4;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v76 - v13;
  v15 = __chkstk_darwin(v12);
  v77 = v76 - v16;
  __chkstk_darwin(v15);
  v18 = v76 - v17;
  v19 = type metadata accessor for NWBrowser.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == enum case for NWBrowser.State.failed(_:))
  {
    v77 = v5;
    (*(v20 + 96))(v23, v19);
    (*(v7 + 32))(v14, v23, v6);
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100980808);
    v26 = *(v7 + 16);
    v26(v11, v14, v6);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v76[1] = v7;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76[0] = v14;
      v32 = v31;
      *v30 = 138412290;
      sub_1004CDBAC(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v26(v33, v11, v6);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v7 + 8);
      v35(v11, v6);
      *(v30 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "AirDrop bonjour browser failed with error %@", v30, 0xCu);
      sub_100005508(v32, &qword_100975400, &qword_1007F65D0);
      v14 = v76[0];
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v11, v6);
    }

    v47 = type metadata accessor for TaskPriority();
    v48 = v77;
    (*(*(v47 - 8) + 56))(v77, 1, 1, v47);
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = qword_1009735E0;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = static AirDropActor.shared;
    v52 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
    v53 = swift_allocObject();
    v53[2] = v51;
    v53[3] = v52;
    v53[4] = v49;

    sub_1002B3398(0, 0, v48, &unk_100806F60, v53);

    v35(v14, v6);
    return;
  }

  if (v24 == enum case for NWBrowser.State.waiting(_:))
  {
    (*(v20 + 96))(v23, v19);
    v36 = v18;
    (*(v7 + 32))(v18, v23, v6);
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_100980808);
    v38 = *(v7 + 16);
    v39 = v77;
    v38(v77, v36, v6);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v42 = 138412290;
      sub_1004CDBAC(&qword_100977BF8, &type metadata accessor for NWError);
      swift_allocError();
      v38(v43, v39, v6);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v7 + 8);
      v45(v39, v6);
      *(v42 + 4) = v44;
      v46 = v78;
      *v78 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "AirDrop bonjour browser waiting with error %@", v42, 0xCu);
      sub_100005508(v46, &qword_100975400, &qword_1007F65D0);

      v45(v36, v6);
    }

    else
    {

      v59 = *(v7 + 8);
      v59(v39, v6);
      v59(v36, v6);
    }

    return;
  }

  if (v24 == enum case for NWBrowser.State.setup(_:))
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_10000C4AC(v54, qword_100980808);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_21;
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "AirDrop bonjour browser setting up";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v55, v56, v58, v57, 2u);

LABEL_21:

    return;
  }

  if (v24 == enum case for NWBrowser.State.ready(_:))
  {
    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000C4AC(v60, qword_100980808);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "AirDrop bonjour browser ready", v63, 2u);
    }

    v64 = type metadata accessor for TaskPriority();
    (*(*(v64 - 8) + 56))(v5, 1, 1, v64);
    v65 = qword_1009735E0;
    v66 = v78;
    v67 = v5;
    if (v65 != -1)
    {
      swift_once();
    }

    v68 = static AirDropActor.shared;
    v69 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor);
    v70 = swift_allocObject();
    v70[2] = v68;
    v70[3] = v69;
    v70[4] = v66;

    sub_1002B3098(0, 0, v67, &unk_100806F78, v70);
  }

  else
  {
    if (v24 == enum case for NWBrowser.State.cancelled(_:))
    {
      if (qword_100973940 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_10000C4AC(v71, qword_100980808);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_21;
      }

      v57 = swift_slowAlloc();
      *v57 = 0;
      v58 = "AirDrop bonjour browser cancelled";
      goto LABEL_20;
    }

    if (qword_100973940 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_100980808);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "AirDrop bonjour browser in unknown state", v75, 2u);
    }

    (*(v20 + 8))(v23, v19);
  }
}

uint64_t sub_1004CD97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1004C7FF8(a1, v4, v5, v6);
}

uint64_t sub_1004CDA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1004C7E14(a1, v4, v5, v6);
}

uint64_t sub_1004CDAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1004C5ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004CDBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004CDBFC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100980920);
  v1 = sub_10000C4AC(v0, qword_100980920);
  if (qword_100973710 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0978);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004CDCC4()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transferObserver;
  *&v0[v1] = [objc_allocWithZone(SFAirDropTransferObserver) init];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter;
  type metadata accessor for SDAirDropRateLimiter();
  v3 = swift_allocObject();
  *(v3 + 40) = _swiftEmptyArrayStorage;
  *(v3 + 16) = 3;
  *(v3 + 24) = xmmword_100806FC0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SDAirDropAlertManager();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_1004CDDB8()
{
  v1 = v0;
  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100980920);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activate AirDrop alert manager.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transferObserver);
  [v6 setDelegate:v1];

  return [v6 activate];
}

uint64_t sub_1004CDF18()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
  result = swift_beginAccess();
  v30 = v1;
  v3 = *(v0 + v1);
  v29 = v3 >> 62;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_70;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v29)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v6 = result;
      }

      else
      {
        v6 = *(v4 + 16);
      }

      goto LABEL_21;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_61;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = [*(v7 + 16) metaData];
    v9 = [v8 isVerifiableIdentity];

    if (!v9)
    {
      break;
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_62;
    }
  }

  v11 = [*(v7 + 16) cancelAction];
  [v11 triggerAction];

  v12 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    if (v29)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v12 != result)
      {
LABEL_24:
        v4 = v6 + 5;
        do
        {
          v14 = v4 - 4;
          if ((v3 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v15 = *(v3 + 8 * v4);
          }

          v16 = [*(v15 + 16) metaData];
          v17 = [v16 isVerifiableIdentity];

          if (v17)
          {

            if (v14 != v6)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_73;
                }

                v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v22)
                {
                  goto LABEL_74;
                }

                if (v14 >= v22)
                {
                  goto LABEL_75;
                }

                v18 = *(v3 + 8 * v6 + 32);
                v19 = *(v3 + 8 * v4);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v0 + v30) = v3;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1002D8B8C(v3);
                *(v0 + v30) = v3;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_67;
              }

              v24 = v3 & 0xFFFFFFFFFFFFFF8;
              if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_68;
              }

              v25 = v24 + 8 * v6;
              v26 = *(v25 + 32);
              *(v25 + 32) = v19;

              *(v0 + v30) = v3;
              if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1002D8B8C(v3);
                *(v0 + v30) = v3;
                v24 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  result = _CocoaArrayWrapper.endIndex.getter();
                  v5 = result;
                  goto LABEL_3;
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v14 >= *(v24 + 16))
              {
                goto LABEL_69;
              }

              v27 = *(v24 + 8 * v4);
              *(v24 + 8 * v4) = v18;

              *(v0 + v30) = v3;
            }

            v10 = __OFADD__(v6++, 1);
            if (v10)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v20 = [*(v15 + 16) cancelAction];
            if (v20)
            {
              v21 = v20;
              [v20 triggerAction];
            }
          }

          v10 = __OFADD__(v14, 1);
          v28 = v4 - 3;
          if (v10)
          {
            goto LABEL_65;
          }

          if (v3 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v4;
        }

        while (v28 != result);
      }
    }

    else
    {
      result = *(v4 + 16);
      if (v12 != result)
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    if (v3 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v13 = result;
      if (result >= v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v6)
      {
LABEL_23:
        sub_10057E738(v6, v13);
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1004CE350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAirDropAlertManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004CE414(void *a1)
{
  v2 = v1;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v4 = static NSUserDefaults.airdrop.getter();
  v5 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

  if (v5)
  {
    if (qword_100973948 != -1)
    {
LABEL_162:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100980920);
    v7 = a1;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v196 = v10;
      *v9 = 136315138;
      v11 = [v7 identifier];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10000C4E4(v12, v14, &v196);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Feature Flag for ModernProgress turned on, Alert is not generated for AirDrop %s", v9, 0xCu);
      sub_10000C60C(v10);
    }

    else
    {
    }

    return;
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (*(v21 + 16) && (, v22 = sub_100012854(v17, v19), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v22);
  }

  else
  {

    v25 = 0;
  }

  v195 = v25;
  v181 = [a1 userResponse];
  v188 = [a1 userResponse];
  if ([a1 transferState] == 2 && (v26 = objc_msgSend(a1, "transferProgress")) != 0)
  {

    v184 = 1;
  }

  else
  {
    v184 = 0;
  }

  v27 = [a1 transferState] == 3 || objc_msgSend(a1, "transferState") == 9;
  v182 = v27;
  v185 = [a1 transferState];
  v183 = [a1 transferState];
  v28 = [a1 transferState];
  if (v25)
  {
    v29 = *(v25 + 32);
  }

  else
  {
    v29 = 1;
  }

  v180 = v29;
  osloga = v25;
  v187 = v28;
  v30 = [a1 transferProgress];
  if (v30)
  {
    v31 = v30;
    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007F5670;
    *(v32 + 56) = sub_1000276B4(0, &qword_1009809A0, NSProgress_ptr);
    *(v32 + 64) = sub_1004D0470(&qword_1009809A8, &qword_1009809A0, NSProgress_ptr);
    *(v32 + 32) = v31;
    v33 = v31;
    v34 = String.init(format:_:)();
    v36 = v35;
  }

  else
  {
    v36 = 0xE600000000000000;
    v34 = 0x3E656E6F6E3CLL;
  }

  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_100980920);
  v38 = a1;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v190 = v38;
  v186 = v2;
  if (os_log_type_enabled(v39, v40))
  {
    v179 = v34;
    v41 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    *v41 = 136316162;
    v42 = [v38 identifier];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10000C4E4(v43, v45, &v196);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    v47 = SFAirDropTransferStateToString();
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0x8000000100789F30;
      v49 = 0xD000000000000015;
    }

    v52 = sub_10000C4E4(v49, v51, &v196);

    *(v41 + 14) = v52;
    *(v41 + 22) = 2080;
    [v38 userResponse];
    v53 = SFAirDropTransferUserResponseToString();
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_10000C4E4(v54, v56, &v196);

    *(v41 + 24) = v57;
    *(v41 + 32) = 2080;
    if (osloga)
    {
      v58 = 7562617;
    }

    else
    {
      v58 = 28526;
    }

    if (osloga)
    {
      v59 = 0xE300000000000000;
    }

    else
    {
      v59 = 0xE200000000000000;
    }

    v60 = sub_10000C4E4(v58, v59, &v196);

    *(v41 + 34) = v60;
    *(v41 + 42) = 2080;
    *(v41 + 44) = sub_10000C4E4(v179, v36, &v196);
    _os_log_impl(&_mh_execute_header, v39, v40, "Transfer %s updated with state: %s, userResponse: %s, alert item exists: %s, progress: %s", v41, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (v188 == 2)
  {

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = 2;
      v64 = swift_slowAlloc();
      *v64 = 0;
      v65 = "Transfer cancelled by receiver";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v61, v62, v65, v64, 2u);

      v66 = 0;
      v67 = 0;
      goto LABEL_52;
    }

LABEL_50:

    v66 = 0;
    v67 = 0;
LABEL_51:
    v63 = 2;
    goto LABEL_52;
  }

  if (v185 == 7)
  {

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Transfer state changed to readyForOpen. Dismissing any existing alert.", v70, 2u);
    }

    v66 = 0;
    v67 = 0;
    v63 = 1;
  }

  else
  {
    if (v183 == 8)
    {

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = 2;
        v64 = swift_slowAlloc();
        *v64 = 0;
        v65 = "Transfer state changed to terminated. Dismissing any existing alert.";
        goto LABEL_42;
      }

      goto LABEL_50;
    }

    if (v182)
    {

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v105, v106, "Sender cancelled or transfer failed", v107, 2u);
      }

      v66 = 0;
      v67 = v181 == 1 || [v38 failureReason] == 2;
      goto LABEL_51;
    }

    if (osloga)
    {
      v126 = BYTE1(osloga[4].isa);
    }

    else
    {
      v126 = 0;
    }

    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v196 = v150;
      *v149 = 136315138;
      if (v126)
      {
        v151 = 7562617;
      }

      else
      {
        v151 = 28526;
      }

      if (v126)
      {
        v152 = 0xE300000000000000;
      }

      else
      {
        v152 = 0xE200000000000000;
      }

      v153 = sub_10000C4E4(v151, v152, &v196);

      *(v149 + 4) = v153;
      _os_log_impl(&_mh_execute_header, v147, v148, "Current alert is showing progress: %s", v149, 0xCu);
      sub_10000C60C(v150);
    }

    v67 = [v38 needsAction];
    if (v126)
    {
      v154 = [v38 transferProgress];
      if (!v154)
      {
        __break(1u);
        return;
      }

      v155 = v154;

      v156 = [v155 isFinished];

      if ((v156 & 1) != 0 || (v187 | 2) == 6)
      {
        v66 = 0;
        v63 = 1;
        goto LABEL_52;
      }
    }

    else
    {

      v67 = (v184 | v67) & v180;
    }

    v63 = 0;
    v66 = 1;
  }

LABEL_52:
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v73 = 136315394;
    if (v67)
    {
      v74 = 1702195828;
    }

    else
    {
      v74 = 0x65736C6166;
    }

    if (v67)
    {
      v75 = 0xE400000000000000;
    }

    else
    {
      v75 = 0xE500000000000000;
    }

    v76 = sub_10000C4E4(v74, v75, v194);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v196 = v63;
    LOBYTE(v197) = v66;
    sub_10028088C(&unk_100980990, &qword_100807018);
    v77 = String.init<A>(describing:)();
    v79 = sub_10000C4E4(v77, v78, v194);

    *(v73 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v71, v72, "showAlert: %s, dismissAlert: %s", v73, 0x16u);
    swift_arrayDestroy();
  }

  if ((v67 | v66 ^ 1) != 1)
  {
    v100 = [v38 metaData];
    v101 = [v100 didAutoAccept];

    if ((v101 & 1) != 0 && v187 == 1)
    {
      [objc_opt_self() playAlertForType:12];
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Play auto-accept sound", v104, 2u);
      }
    }

    goto LABEL_76;
  }

  if (osloga)
  {
    if (v66)
    {
      v80 = 0;
    }

    else
    {
      v80 = v63;
    }

    sub_1004FB9C8(v80);
  }

  swift_beginAccess();
  v195 = 0;

  v81 = [v38 identifier];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = v186;
  swift_beginAccess();
  sub_1002B20AC(0, v82, v84);
  swift_endAccess();
  if ((v67 & 1) == 0)
  {
    return;
  }

  if (!v184)
  {
    v108 = *(v186 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter);
    if (sub_10046738C())
    {
      if ([v38 needsAction])
      {
        v109 = [v38 metaData];
        v110 = [v109 isVerifiableIdentity];

        if ((v110 & 1) == 0)
        {
          v169 = v38;
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            *v172 = 138412290;
            *(v172 + 4) = v169;
            *v173 = v169;
            v174 = v169;
            _os_log_impl(&_mh_execute_header, v170, v171, "Rate limited. Auto-declining transfer %@.", v172, 0xCu);
            sub_10028924C(v173);
          }

          v175 = [v169 cancelAction];
          [v175 triggerAction];

          return;
        }
      }
    }

    v111 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = v111;
    *(v112 + 24) = v38;
    v113 = v38;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *v116 = 136315394;
      v117 = [v113 identifier];
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      v121 = sub_10000C4E4(v118, v120, &v196);

      *(v116 + 4) = v121;
      *(v116 + 12) = 2080;
      v122 = v187;
      if (v187 == 1)
      {
        v123 = 1702195828;
      }

      else
      {
        v123 = 0x65736C6166;
      }

      if (v187 == 1)
      {
        v124 = 0xE400000000000000;
      }

      else
      {
        v124 = 0xE500000000000000;
      }

      v125 = sub_10000C4E4(v123, v124, &v196);

      *(v116 + 14) = v125;
      _os_log_impl(&_mh_execute_header, v114, v115, "Making new IncomingAirDropAlert for transfer %s, playSound: %s", v116, 0x16u);
      swift_arrayDestroy();
      v85 = v186;
    }

    else
    {

      v122 = v187;
    }

    type metadata accessor for IncomingAirDropAlert();
    swift_allocObject();
    sub_1004FBC34(v113, v122 == 1, sub_1004D0468, v112);

LABEL_105:

    v137 = [v38 identifier];
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    swift_beginAccess();

    sub_1002B20AC(v141, v138, v140);
    swift_endAccess();
    if (!v184)
    {
      if (*(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert) == 1)
      {
        v142 = Logger.logObject.getter();
        v143 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&_mh_execute_header, v142, v143, "Active alert present, enqueue this one later.", v144, 2u);
        }

        v145 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v85 + v145) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v85 + v145) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v178 = *((*(v85 + v145) & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
LABEL_76:

        return;
      }

      *(v85 + OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert) = 1;
    }

    sub_1004FACFC();

    return;
  }

  v193 = [v38 transferProgress];
  sub_10028088C(&qword_100980988, &qword_100807010);
  Optional.unwrap(_:file:line:)();

  v86 = v196;
  *&v87 = COERCE_DOUBLE(NSProgress.estimatedTimeRemaining.getter());
  if (v88)
  {
    [objc_opt_self() airDropProgressUIMaxPercentage];
    v90 = v89;
    [v86 fractionCompleted];
    v92 = v91;
    v93 = [v38 metaData];
    v94 = [v93 items];

    sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
    sub_1004D0470(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr);
    v95 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v189 = v86;
    if ((v95 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v96 = v196;
      a1 = v197;
      v97 = v198;
      v98 = v199;
      v99 = v200;
    }

    else
    {
      v157 = -1 << *(v95 + 32);
      a1 = (v95 + 56);
      v97 = ~v157;
      v158 = -v157;
      if (v158 < 64)
      {
        v159 = ~(-1 << v158);
      }

      else
      {
        v159 = -1;
      }

      v99 = v159 & *(v95 + 56);

      v98 = 0;
      v96 = v95;
    }

    v160 = v90;
    v161 = (v97 + 64) >> 6;
    do
    {
      if (v96 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_148;
        }

        swift_dynamicCast();
        v162 = v193;
        if (!v193)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v164 = v98;
        v165 = v99;
        if (!v99)
        {
          while (1)
          {
            v98 = v164 + 1;
            if (__OFADD__(v164, 1))
            {
              break;
            }

            if (v98 >= v161)
            {
              goto LABEL_148;
            }

            v165 = *(a1 + v98);
            ++v164;
            if (v165)
            {
              goto LABEL_138;
            }
          }

          __break(1u);
          goto LABEL_162;
        }

LABEL_138:
        v99 = (v165 - 1) & v165;
        v162 = *(*(v96 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v165)))));
        if (!v162)
        {
LABEL_148:
          sub_100027D64();

          v166 = 0;
LABEL_149:
          v86 = v189;
          v129 = Logger.logObject.getter();
          v167 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v129, v167))
          {
            goto LABEL_152;
          }

          v168 = swift_slowAlloc();
          *v168 = 134218496;
          *(v168 + 4) = v92;
          *(v168 + 12) = 2048;
          *(v168 + 14) = v160;
          *(v168 + 22) = 1024;
          *(v168 + 24) = v166;
          _os_log_impl(&_mh_execute_header, v129, v167, "Skip showing progress. Completed: (%f), Show alert if progress below: (%f), transfer has files: %{BOOL}d.", v168, 0x1Cu);
          goto LABEL_151;
        }
      }

      v163 = [v162 isFile];
    }

    while (!v163);
    sub_100027D64();

    if (v92 >= v160)
    {
      v166 = 1;
      goto LABEL_149;
    }

    v129 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();
    v86 = v189;
    if (os_log_type_enabled(v129, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 134218496;
      *(v177 + 4) = v92;
      *(v177 + 12) = 2048;
      *(v177 + 14) = v160;
      *(v177 + 22) = 1024;
      *(v177 + 24) = 1;
      _os_log_impl(&_mh_execute_header, v129, v176, "Progress: Showing, fracCompleted(%f). showAlertIfProgressBelow(%f). transferHasFiles = %{BOOL}d", v177, 0x1Cu);
      v85 = v186;
      v38 = v190;
      goto LABEL_99;
    }

    v85 = v186;
    v38 = v190;
    goto LABEL_100;
  }

  v127 = v87;
  v128 = *&v87;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  v131 = os_log_type_enabled(v129, v130);
  if (v128 > 2.0)
  {
    if (v131)
    {
      v132 = swift_slowAlloc();
      *v132 = 134218240;
      *(v132 + 4) = v127;
      *(v132 + 12) = 2048;
      *(v132 + 14) = 0x4000000000000000;
      _os_log_impl(&_mh_execute_header, v129, v130, "Progress: Showing, timeRemaining(%f) > %f", v132, 0x16u);
LABEL_99:
    }

LABEL_100:

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "Make new progress alert with no sound", v135, 2u);
    }

    type metadata accessor for IncomingAirDropAlert();
    swift_allocObject();
    v136 = sub_1004FBC34(v38, 0, 0, 0);

    *(v136 + 33) = 1;
    goto LABEL_105;
  }

  if (v131)
  {
    v146 = swift_slowAlloc();
    *v146 = 134218240;
    *(v146 + 4) = v127;
    *(v146 + 12) = 2048;
    *(v146 + 14) = 0x4000000000000000;
    _os_log_impl(&_mh_execute_header, v129, v130, "Progress: Skipping, timeRemaining(%f) ≤ %f", v146, 0x16u);
LABEL_151:
  }

LABEL_152:
}

void sub_1004CFD14(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a3 metaData];
    v8 = [v7 isVerifiableIdentity];

    if ((v8 & 1) == 0)
    {
      if (a1 == 1)
      {
        v16 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter];
        v17 = *(v16 + 40);
        *(v16 + 40) = _swiftEmptyArrayStorage;

        v18 = airdrop_log();
        if (!v18)
        {
          __break(1u);
          return;
        }

        v19 = v18;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      else if (a1 == 2)
      {
        v9 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter;
        v10 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_rateLimiter];

        sub_100467580();

        v11 = *&v6[v9];

        LOBYTE(v9) = sub_10046738C();

        if (v9)
        {
          if (qword_100973948 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          sub_10000C4AC(v12, qword_100980920);
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v13, v14, "Rate limited. Auto-declining queued transfers.", v15, 2u);
          }

          sub_1004CDF18();
        }
      }
    }

    v20 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_queuedAlerts;
    swift_beginAccess();
    v21 = *&v6[v20];
    if (v21 >> 62)
    {
      if (v21 < 0)
      {
        v26 = *&v6[v20];
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_15;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      if (qword_100973948 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000C4AC(v22, qword_100980920);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Dequeuing last dismissed alert and presenting next", v25, 2u);
      }

      swift_beginAccess();
      sub_100450010();
      swift_endAccess();
      sub_1004FACFC();

LABEL_28:

      return;
    }

    v6[OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_hasActiveAlert] = 0;
    if (qword_100973948 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000C4AC(v27, qword_100980920);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Last alert dismissed", v30, 2u);
    }

    v6 = v28;
    goto LABEL_28;
  }
}

uint64_t sub_1004D01A0(void *a1)
{
  v2 = v1;
  if (qword_100973948 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100980920);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Clearing alerts for transfer: %@.", v8, 0xCu);
    sub_10028924C(v9);
  }

  v11 = [v5 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary21SDAirDropAlertManager_transfersToAlerts;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (*(v16 + 16) && (v17 = *(v2 + v15), , v18 = sub_100012854(v12, v14), v20 = v19, , (v20 & 1) != 0))
  {
    v21 = *(*(v16 + 56) + 8 * v18);

    if (*(v21 + 24))
    {
      sub_1004FB9C8(0);
    }
  }

  else
  {
  }

  v22 = [v5 identifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  swift_beginAccess();
  sub_1002B20AC(0, v23, v25);
  return swift_endAccess();
}

uint64_t sub_1004D0470(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000276B4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004D04B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009809B0);
  v1 = sub_10000C4AC(v0, qword_1009809B0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004D057C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  v3(a1 + v4[7], 1, 1, v2);
  v3(a1 + v4[8], 1, 1, v2);
  v3(a1 + v4[9], 1, 1, v2);
  v3(a1 + v4[10], 1, 1, v2);
  v3(a1 + v4[11], 1, 1, v2);
  v3(a1 + v4[12], 1, 1, v2);
  *(a1 + v4[13]) = 0;
  v3(a1 + v4[14], 1, 1, v2);
  v3(a1 + v4[15], 1, 1, v2);
  v3(a1 + v4[16], 1, 1, v2);
  result = (v3)(a1 + v4[17], 1, 1, v2);
  v6 = a1 + v4[18];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + v4[19]) = 2;
  v7 = (a1 + v4[20]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v4[21]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void sub_1004D07BC()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v49 = &v47 - v3;
  v4 = type metadata accessor for AuthenticationSecurityRequest(0);
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v47 - v8);
  v10 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_11;
  }

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v22 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  v23 = v22 > 0x16;
  v24 = (1 << v22) & 0x7E658E;
  if (!v23 && v24 != 0)
  {
    Date.init()();
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
    v27 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
    swift_beginAccess();
    sub_10000C788(v13, &v0[v27], &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    v28 = *&v0[v21];
    if (v28 > 0x15)
    {
      v29 = 786431;
    }

    else
    {
      v29 = qword_100807180[v28];
    }

    v30 = v9 + *(v4 + 20);
    static Date.distantFuture.getter();
    *v9 = v29;
    v31 = type metadata accessor for TaskPriority();
    v32 = v49;
    (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
    sub_1004E57A0(v9, v7, type metadata accessor for AuthenticationSecurityRequest);
    v33 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v0;
    sub_100464F60(v7, v34 + v33);
    v35 = v0;
    sub_1002B3098(0, 0, v32, &unk_100807140, v34);

    sub_1004E5900(v9, type metadata accessor for AuthenticationSecurityRequest);
    return;
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v36 = type metadata accessor for Logger();
  sub_10000C4AC(v36, qword_1009809B0);
  v37 = v0;
  v38 = v0;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136315138;
    v43 = *&v37[v21];
    v44 = sub_100027340();
    v46 = sub_10000C4E4(v44, v45, &v50);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "Authentication type %s does not support this method", v41, 0xCu);
    sub_10000C60C(v42);
  }
}

uint64_t sub_1004D0D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[42] = v6;
  v7 = *(v6 - 8);
  v5[43] = v7;
  v8 = *(v7 + 64) + 15;
  v5[44] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[45] = v9;
  v10 = *(v9 - 8);
  v5[46] = v10;
  v11 = *(v10 + 64) + 15;
  v5[47] = swift_task_alloc();

  return _swift_task_switch(sub_1004D0E20, 0, 0);
}

uint64_t sub_1004D0E20()
{
  v1 = v0[40];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, (v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
  if (v0[23])
  {
    sub_1002A9938((v0 + 20), (v0 + 25));
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0(v0 + 25, v0[28]) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    v4 = *sub_10002CDC0(v3, v3[3]);
    v5 = swift_task_alloc();
    v0[48] = v5;
    *v5 = v0;
    v5[1] = sub_1004D11A0;
    v6 = v0[41];

    return sub_100351944(v6);
  }

  else
  {
    sub_100005508((v0 + 20), &qword_10097A9C8, &unk_1007FDD40);
    v8 = v0[47];
    v9 = v0[44];
    v21 = v0[46];
    v22 = v0[45];
    v10 = v0[42];
    v11 = v0[43];
    v12 = v0[40];
    v20 = *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v0[6] = sub_1004E5960;
    v0[7] = v13;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E4F20;
    v14 = _Block_copy(v0 + 2);
    v15 = v12;
    static DispatchQoS.unspecified.getter();
    v0[36] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v11 + 8))(v9, v10);
    (*(v21 + 8))(v8, v22);
    v16 = v0[7];

    v17 = v0[47];
    v18 = v0[44];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1004D11A0()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1004D14FC;
  }

  else
  {
    v3 = sub_1004D12B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D12B4()
{
  sub_10000C60C(v0 + 25);
  v1 = v0[47];
  v2 = v0[44];
  v15 = v0[46];
  v16 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[40];
  v14 = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[6] = sub_1004E5960;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E4F20;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  static DispatchQoS.unspecified.getter();
  v0[36] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v4 + 8))(v2, v3);
  (*(v15 + 8))(v1, v16);
  v9 = v0[7];

  v10 = v0[47];
  v11 = v0[44];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004D14FC()
{
  v1 = v0[49];
  sub_10000C60C(v0 + 25);
  v0[37] = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  v2 = swift_dynamicCast();
  v3 = v0[49];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v27 = v7;
  v28 = v0[46];
  v9 = v0[40];
  if (v2)
  {

    v10 = *(v0 + 100);
    v25 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v0[18] = sub_1004E5990;
    v0[19] = v11;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008E4FC0;
    v12 = _Block_copy(v0 + 14);
    v13 = v9;
    static DispatchQoS.unspecified.getter();
    v0[39] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v27 + 8))(v6, v8);
    (*(v28 + 8))(v4, v5);
    v14 = v0[19];

    v15 = v0[37];
  }

  else
  {
    v16 = v0[37];

    v26 = *&v9[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v9;
    v0[12] = sub_1004E5988;
    v0[13] = v17;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008E4F70;
    v18 = _Block_copy(v0 + 8);
    swift_errorRetain();
    v19 = v9;
    static DispatchQoS.unspecified.getter();
    v0[38] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v27 + 8))(v6, v8);
    (*(v28 + 8))(v4, v5);
    v20 = v0[13];
  }

  v21 = v0[47];
  v22 = v0[44];

  v23 = v0[1];

  return v23();
}

void sub_1004D1984()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v8 + 16) = 64;
  *(v8 + 32) = 0u;
  v9 = (v8 + 32);
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  v10 = SecRandomCopyBytes(kSecRandomDefault, 0x40uLL, (v8 + 32));
  if (!v10)
  {
    v15 = sub_1004E53D0(v9, 64);
    v17 = v16;

    v18 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
    v19 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
    v20 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8);
    *v18 = v15;
    v18[1] = v17;
    sub_10028BCC0(v19, v20);
    return;
  }

  LODWORD(v1) = v10;

  if (qword_100973950 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009809B0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error generating ranging key (status = %d)", v14, 8u);
  }
}

uint64_t sub_1004D1BE8()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v76[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v22 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8);
  if (v22 >> 60 == 15)
  {
    return sub_1004D2760(10);
  }

  v24 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken);
  v25 = objc_allocWithZone(SDAuthenticationRequest);
  v79 = v24;
  v80 = v22;
  sub_100294008(v24, v22);
  v26 = [v25 init];
  v21 = v26;
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo);
    v28 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8);
    v29 = v26;
    v30 = v26;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v30 setAwdlInfo:isa];

    [v30 setVersion:1];
    v32 = v30;
    UUID.uuidString.getter();
    v21 = String._bridgeToObjectiveC()();

    [v32 setSessionID:v21];

    if (!HIDWORD(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type)))
    {
      [v32 setType:?];
      v21 = v29;
      goto LABEL_7;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
    goto LABEL_25;
  }

LABEL_7:
  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v34 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  if (v34 > 0x17 || ((1 << v34) & 0xFE7FF8) == 0)
  {
    if (v21)
    {
      v67 = v21;
      v68 = v21;
      v69 = Data._bridgeToObjectiveC()().super.isa;
      [v67 setRangingToken:v69];

      v21 = v68;
    }

    v70 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate;
    swift_beginAccess();
    sub_10000FF90(v1 + v70, v8, &qword_10097A7F0, &unk_1007FB600);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      if (v21)
      {
        v71 = v21;
        v72 = v21;
        Date.timeIntervalSince1970.getter();
        [v72 setUnlockDate:?];

        v21 = v71;
      }

      (*(v10 + 8))(v13, v9);
    }
  }

  Date.init()();
  (*(v10 + 56))(v6, 0, 1, v9);
  v35 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
  swift_beginAccess();
  v36 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000C788(v6, v35 + *(v36 + 32), &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  if (v21)
  {
    v37 = [v21 data];
    if (v37)
    {
      v38 = v37;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (qword_100973950 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_1009809B0);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Sending authentication request", v45, 2u);
      }

      v46 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v1 + v46, &v83, &qword_100982080, &unk_1007FDD30);
      if (v84)
      {
        sub_1000121F8(&v83, v85);
        v47 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v1 + v47, &v83, &qword_10097A9C8, &unk_1007FDD40);
        if (v84)
        {
          sub_1002A9938(&v83, v82);
          sub_100005508(&v83, &qword_10097A9C8, &unk_1007FDD40);
          v48 = *sub_10002CDC0(v82, v82[3]);
          LODWORD(v49) = sub_1004FE08C(*(v1 + v33));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v42, qword_1009895D8);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v78 = v39;
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v81 = v53;
            *v52 = 136315138;
            v54 = v49;
            v77 = v49;
            if (v49 <= 2u)
            {
              v55 = 0xEB0000000074656ELL;
              v49 = v21;
              if (v54)
              {
                if (v54 == 1)
                {
                  v55 = 0xE800000000000000;
                  v56 = 0x6C61636F4C736469;
                }

                else
                {
                  v56 = 0x7265746E49736469;
                }
              }

              else
              {
                v55 = 0xEB00000000746E65;
                v56 = 0x674179627261656ELL;
              }
            }

            else
            {
              v49 = v21;
              if (v54 > 4)
              {
                if (v54 == 5)
                {
                  v55 = 0x80000001007888E0;
                  v56 = 0xD000000000000010;
                }

                else
                {
                  v55 = 0xED000068746F6F74;
                  v56 = 0x65756C4265726F63;
                }
              }

              else if (v54 == 3)
              {
                v55 = 0xE900000000000054;
                v56 = 0x4274726F70706172;
              }

              else
              {
                v55 = 0xEB000000004C4457;
                v56 = 0x4174726F70706172;
              }
            }

            v73 = sub_10000C4E4(v56, v55, &v81);

            *(v52 + 4) = v73;
            _os_log_impl(&_mh_execute_header, v50, v51, "Using transport type %s", v52, 0xCu);
            sub_10000C60C(v53);

            v21 = v49;
            v39 = v78;
            LOBYTE(v49) = v77;
          }

          else
          {
          }

          v74 = *(v48 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v39, v41, v85, 0, v49);
          sub_10000C60C(v85);
          v65 = v82;
          goto LABEL_52;
        }

        sub_10000C60C(v85);
        v66 = &v83;
      }

      else
      {
        sub_100005508(&v83, &qword_100982080, &unk_1007FDD30);
        v63 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v1 + v63, v85, &qword_10097A9C8, &unk_1007FDD40);
        if (v85[3])
        {
          sub_1002A9938(v85, &v83);
          sub_100005508(v85, &qword_10097A9C8, &unk_1007FDD40);
          v64 = *sub_10002CDC0(&v83, v84);
          sub_1006D3874(v39, v41, 0, *(v1 + v33));
          v65 = &v83;
LABEL_52:
          sub_10000C60C(v65);
          goto LABEL_53;
        }

        v66 = v85;
      }

      sub_100005508(v66, &qword_10097A9C8, &unk_1007FDD40);
LABEL_53:
      v75 = v80;
      sub_1004FD4B0(0, 1);

      sub_10028BCC0(v79, v75);
      return sub_100026AC0(v39, v41);
    }
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_56;
  }

LABEL_25:
  v57 = type metadata accessor for Logger();
  sub_10000C4AC(v57, qword_1009809B0);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  v60 = os_log_type_enabled(v58, v59);
  v61 = v80;
  if (v60)
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "Error converting request to data", v62, 2u);
  }

  sub_1004D2760(10);
  return sub_10028BCC0(v79, v61);
}

uint64_t sub_1004D2760(uint64_t a1)
{
  v3 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23[-1] - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    Date.init()();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    v16 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
    swift_beginAccess();
    v17 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v6, v16 + *(v17 + 20), &qword_10097A7F0, &unk_1007FB600);
    v18 = v16 + *(v17 + 72);
    *v18 = a1;
    *(v18 + 4) = 0;
    v19 = swift_endAccess();
    sub_1004D8F00(v19);
    v20 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v1 + v20, v24, &qword_10097A9C8, &unk_1007FDD40);
    if (v25)
    {
      sub_1002A9938(v24, v23);
      sub_100005508(v24, &qword_10097A9C8, &unk_1007FDD40);
      v21 = sub_10002CDC0(v23, v23[3]);
      sub_100461318(v1, a1, 0, 0xE000000000000000, *v21);
      return sub_10000C60C(v23);
    }

    else
    {
      return sub_100005508(v24, &qword_10097A9C8, &unk_1007FDD40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D2A30()
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009809B0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unexpected error: %s", v3, 0xCu);
    sub_10000C60C(v4);
  }

  return sub_1004D2760(10);
}

void sub_1004D2BBC(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v171 = &v157 - v5;
  v177 = type metadata accessor for DispatchWorkItemFlags();
  v176 = *(v177 - 8);
  v6 = *(v176 + 64);
  __chkstk_darwin(v177);
  v174 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS();
  v173 = *(v175 - 8);
  v8 = *(v173 + 64);
  __chkstk_darwin(v175);
  v172 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v178 = *(v10 - 8);
  v11 = *(v178 + 64);
  __chkstk_darwin(v10);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v157 - v19;
  v180 = type metadata accessor for Date();
  v179 = *(v180 - 8);
  v21 = *(v179 + 64);
  __chkstk_darwin(v180);
  v181 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = v1;
  v28 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v170 = v29;
    if (qword_100973950 == -1)
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
  v30 = type metadata accessor for Logger();
  v31 = sub_10000C4AC(v30, qword_1009809B0);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "Handling authentication request %@", v35, 0xCu);
    sub_100005508(v36, &qword_100975400, &qword_1007F65D0);
  }

  v38 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v39 = v182;
  v40 = *&v182[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v40 <= 0x16 && ((1 << v40) & 0x7E658E) != 0)
  {
    v41 = v182;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&aBlock = v45;
      *v44 = 136315138;
      v46 = *&v39[v38];
      v47 = sub_100027340();
      v49 = sub_10000C4E4(v47, v48, &aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "Authentication type %s does not support handling this message", v44, 0xCu);
      sub_10000C60C(v45);
    }

    return;
  }

  v165 = v31;
  v50 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v39[v50], &aBlock, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&aBlock, &v189, &qword_100982080, &unk_1007FDD30);
  if (!v190)
  {
    sub_100005508(&v189, &qword_100982080, &unk_1007FDD30);
    v57 = sub_100010F88(10, 0x2072656570206F4ELL, 0xEE00656369766564);
    v59 = v58;
    sub_1000115C8();
    v60 = swift_allocError();
    *v61 = v57;
    *(v61 + 8) = v59;
    swift_willThrow();
    sub_100005508(&aBlock, &qword_100982080, &unk_1007FDD30);
LABEL_30:
    v191 = v60;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_1004D610C(aBlock, *(&aBlock + 1));
    }

    else
    {

      v95 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_1004D610C(v95, v96);
    }

    return;
  }

  v166 = v38;
  sub_100005508(&aBlock, &qword_100982080, &unk_1007FDD30);
  sub_1000121F8(&v189, &v191);
  [v32 sessionStartDate];
  v51 = v181;
  Date.init(timeIntervalSince1970:)();
  v52 = v179;
  v53 = *(v179 + 16);
  v54 = v180;
  v168 = v179 + 16;
  v167 = v53;
  v53(v20, v51, v180);
  v169 = *(v52 + 56);
  v169(v20, 0, 1, v54);
  v55 = &v39[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
  swift_beginAccess();
  sub_10000C788(v20, v55, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  if ([v32 hasUnlockDate])
  {
    [v32 unlockDate];
    if (v56 == 0.0)
    {
      v54 = v180;
      v167(v18, v181, v180);
    }

    else
    {
      [v32 unlockDate];
      Date.init(timeIntervalSince1970:)();
      v54 = v180;
    }

    v169(v18, 0, 1, v54);
    swift_beginAccess();
    v62 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v18, v55 + *(v62 + 68), &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
  }

  v167(v20, v181, v54);
  v169(v20, 0, 1, v54);
  swift_beginAccess();
  v63 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000C788(v20, v55 + v63[7], &qword_10097A7F0, &unk_1007FB600);
  v64 = v63[8];
  sub_100005508(v55 + v64, &qword_10097A7F0, &unk_1007FB600);
  v167((v55 + v64), v181, v54);
  v65 = (v55 + v64);
  v66 = v169;
  v169(v65, 0, 1, v54);
  swift_endAccess();
  Date.init()();
  v66(v20, 0, 1, v54);
  swift_beginAccess();
  sub_10000C788(v20, v55 + v63[9], &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();
  v67 = v166;
  v68 = *&v39[v166];
  if ((v68 - 1) < 4 || (v69 = 0, v68 == 19))
  {
    v70 = [v32 awdlInfo];
    if (v70)
    {
      v71 = v70;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v76 = sub_1001114F4(isa);

      if (v76)
      {
        v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100026AC0(v72, v74);

        goto LABEL_22;
      }

      sub_100026AC0(v72, v74);
    }

    v90 = 0x8000000100791890;
LABEL_28:
    v91 = sub_100010F88(10, 0xD00000000000001FLL, v90);
    v93 = v92;
    sub_1000115C8();
    v60 = swift_allocError();
    *v94 = v91;
    *(v94 + 8) = v93;
    swift_willThrow();
LABEL_29:
    (*(v179 + 8))(v181, v180);
    sub_10000C60C(&v191);
    goto LABEL_30;
  }

LABEL_22:
  v77 = [v32 aksToken];
  v78 = v178;
  if (!v77)
  {

    v90 = 0x80000001007931E0;
    goto LABEL_28;
  }

  v169 = v69;
  v79 = v77;
  v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;

  sub_1002A9938(&v191, &aBlock);
  (*(v78 + 16))(v13, &v39[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID], v10);
  v83 = *&v39[v67];
  v84 = type metadata accessor for SDAuthenticationAKSAuthSession();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  v87 = swift_allocObject();
  *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksSession) = 0;
  v88 = [objc_opt_self() sharedManager];
  if (!v88)
  {
    __break(1u);
    return;
  }

  *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_aksManager) = v88;
  *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_role) = 0;
  sub_1000121F8(&aBlock, v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_peerDevice);
  (*(v78 + 32))(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_sessionID, v13, v10);
  *(v87 + OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationAKSAuthSession_type) = v83;
  v89 = *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession];
  *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession] = v87;

  sub_100294008(v80, v82);
  sub_100669814(0, 0xF000000000000000);
  sub_100669484(v80, v82);
  v98 = v97;
  sub_100026AC0(v80, v82);
  v178 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;

  v101 = sub_1006696B8();
  v168 = v100;
  v163 = v87;
  v164 = v101;
  v167 = v102;
  v103 = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (!v103)
  {

    v114 = sub_100010F88(10, 0xD000000000000031, 0x8000000100793200);
    v116 = v115;
    sub_1000115C8();
    v60 = swift_allocError();
    *v117 = v114;
    *(v117 + 8) = v116;
    swift_willThrow();
    sub_100026AC0(v178, v168);
    sub_100026AC0(v164, v167);
LABEL_52:
    sub_100026AC0(v80, v82);

    goto LABEL_29;
  }

  v104 = v103;
  UUID.uuidString.getter();
  v105 = String._bridgeToObjectiveC()();

  [v104 setSessionID:v105];

  [v104 setVersion:1];
  v106 = v178;
  v107 = v168;
  v108 = Data._bridgeToObjectiveC()().super.isa;
  [v104 setAksToken:v108];

  v109 = *&v39[v67];
  if ((v109 - 1) < 4 || v109 == 19)
  {
    v110 = *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession];
    if (v110)
    {
      v111 = *(v110 + 16);
      v112 = *(v110 + 24);
      sub_100294008(v111, v112);
      v113.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100026AC0(v111, v112);
    }

    else
    {
      v113.super.isa = 0;
    }

    [v104 setAwdlInfo:v113.super.isa];
  }

  v118 = [v104 data];
  if (!v118)
  {

    v143 = sub_100010F88(10, 0xD000000000000022, 0x8000000100793240);
    v145 = v144;
    sub_1000115C8();
    v146 = v106;
    v147 = v107;
    v60 = swift_allocError();
    *v148 = v143;
    *(v148 + 8) = v145;
    swift_willThrow();
    sub_100026AC0(v146, v147);
    sub_100026AC0(v164, v167);

    goto LABEL_52;
  }

  v160 = v80;
  v161 = v82;
  v119 = v118;
  v162 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v121 = v120;

  v122 = v104;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v125 = 138412290;
    *(v125 + 4) = v122;
    *v126 = v104;
    v127 = v122;
    _os_log_impl(&_mh_execute_header, v123, v124, "Sending authentication response: %@", v125, 0xCu);
    sub_100005508(v126, &qword_100975400, &qword_1007F65D0);
  }

  sub_1002A9938(&v191, &v189);
  v128 = swift_allocObject();
  v129 = v182;
  v130 = v162;
  v128[2] = v182;
  v128[3] = v130;
  v128[4] = v121;
  sub_1000121F8(&v189, (v128 + 5));
  v187 = sub_1004E5648;
  v188 = v128;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v185 = sub_100011678;
  v186 = &unk_1008E4D90;
  v131 = _Block_copy(&aBlock);
  v158 = v129;
  v159 = v121;
  sub_100294008(v130, v121);
  v132 = v172;
  static DispatchQoS.unspecified.getter();
  v183 = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  v133 = v174;
  v134 = v177;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v131);
  (*(v176 + 8))(v133, v134);
  (*(v173 + 8))(v132, v175);

  v135 = [objc_opt_self() standardUserDefaults];
  v136 = String._bridgeToObjectiveC()();
  LOBYTE(v131) = [v135 BOOLForKey:v136];

  if ((v131 & 1) != 0 || (v149 = *&v129[v67], (v149 - 1) >= 4) && v149 != 19)
  {

    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    v139 = os_log_type_enabled(v137, v138);
    v140 = v160;
    v141 = v168;
    if (v139)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "Skipping ranging", v142, 2u);
    }

    sub_100026AC0(v106, v141);

    sub_100026AC0(v164, v167);
    sub_100026AC0(v162, v159);

    sub_100026AC0(v140, v161);

    (*(v179 + 8))(v181, v180);
    sub_10000C60C(&v191);
    v158[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded] = 1;
  }

  else
  {
    v150 = type metadata accessor for TaskPriority();
    v151 = v171;
    (*(*(v150 - 8) + 56))(v171, 1, 1, v150);
    v152 = swift_allocObject();
    v152[2] = 0;
    v152[3] = 0;
    v153 = v158;
    v152[4] = v169;
    v152[5] = v153;
    v154 = v164;
    v155 = v167;
    v152[6] = v164;
    v152[7] = v155;
    v156 = v153;
    sub_100294008(v154, v155);
    sub_1002B3098(0, 0, v151, &unk_100807130, v152);
    sub_100026AC0(v106, v168);

    sub_100026AC0(v154, v155);
    sub_100026AC0(v162, v159);

    sub_100026AC0(v160, v161);

    (*(v179 + 8))(v181, v180);
    sub_10000C60C(&v191);
  }
}

uint64_t sub_1004D4304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v8, v24, &qword_10097A9C8, &unk_1007FDD40);
  if (!v25)
  {
    return sub_100005508(v24, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v24, v23);
  sub_100005508(v24, &qword_10097A9C8, &unk_1007FDD40);
  v9 = *sub_10002CDC0(v23, v23[3]);
  v10 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
  if (qword_100973C48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009895D8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v21 = v9;
    v22 = v15;
    if (v10 <= 2u)
    {
      v16 = 0xEB0000000074656ELL;
      if (v10)
      {
        if (v10 == 1)
        {
          v16 = 0xE800000000000000;
          v17 = 0x6C61636F4C736469;
        }

        else
        {
          v17 = 0x7265746E49736469;
        }
      }

      else
      {
        v16 = 0xEB00000000746E65;
        v17 = 0x674179627261656ELL;
      }
    }

    else if (v10 > 4u)
    {
      if (v10 == 5)
      {
        v16 = 0x80000001007888E0;
        v17 = 0xD000000000000010;
      }

      else
      {
        v16 = 0xED000068746F6F74;
        v17 = 0x65756C4265726F63;
      }
    }

    else if (v10 == 3)
    {
      v16 = 0xE900000000000054;
      v17 = 0x4274726F70706172;
    }

    else
    {
      v16 = 0xEB000000004C4457;
      v17 = 0x4174726F70706172;
    }

    v19 = sub_10000C4E4(v17, v16, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Using transport type %s", v14, 0xCu);
    sub_10000C60C(v15);

    v9 = v21;
  }

  else
  {
  }

  v20 = *(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
  sub_1005CCC7C(a2, a3, a4, 1u, v10);
  return sub_10000C60C(v23);
}

uint64_t sub_1004D463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1004D475C, 0, 0);
}

uint64_t sub_1004D475C()
{
  v1 = 0xD000000000000012;
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = *(*(v0 + 104) + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
    *(v0 + 176) = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      *(v0 + 184) = v4;
      *v4 = v0;
      v4[1] = sub_1004D4988;
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);

      return sub_10042CEDC(v2, v5, v6);
    }

    v8 = " have AWDL info";
  }

  else
  {
    v8 = "t response to data";
    v1 = 0xD00000000000004FLL;
  }

  v9 = sub_100010F88(10, v1, v8 | 0x8000000000000000);
  v11 = v10;
  sub_1000115C8();
  v12 = swift_allocError();
  *v13 = v9;
  *(v13 + 8) = v11;
  swift_willThrow();
  *(v0 + 80) = v12;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v14 = swift_dynamicCast();
  v15 = *(v0 + 104);
  if (v14)
  {

    sub_1004D610C(*(v0 + 64), *(v0 + 72));

    v16 = *(v0 + 80);
  }

  else
  {
    v17 = *(v0 + 80);

    v18 = sub_100010F88(10, 0, 0xE000000000000000);
    sub_1004D610C(v18, v19);
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 144);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1004D4988(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_1004D4E8C;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v7 = sub_1004D4AB4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004D4AB4()
{
  v1 = *(v0 + 200);
  *(v0[13] + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded) = v1;
  if (v1 == 1)
  {
    v2 = v0[24];
    v3 = v0[13];
    sub_1004D4FB0();
    v4 = v0[22];

    if (v2)
    {
      v0[10] = v2;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v5 = swift_dynamicCast();
      v6 = v0[13];
      if (v5)
      {

        sub_1004D610C(*(v0 + 16), v0[9]);

        v7 = v0[10];
      }

      else
      {
        v21 = v0[10];

        v22 = sub_100010F88(10, 0, 0xE000000000000000);
        sub_1004D610C(v22, v23);
      }
    }
  }

  else
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009809B0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Out of range", v11, 2u);
    }

    v12 = v0[21];
    v29 = v0[22];
    v30 = v0[20];
    v31 = v0[19];
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    v16 = v0[13];

    v28 = *&v16[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v0[6] = sub_1004E572C;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008E4E08;
    v18 = _Block_copy(v0 + 2);
    v19 = v16;
    static DispatchQoS.unspecified.getter();
    v0[11] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v18);
    (*(v14 + 8))(v13, v15);
    (*(v30 + 8))(v12, v31);
    v20 = v0[7];
  }

  v24 = v0[21];
  v25 = v0[18];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1004D4E8C()
{
  v1 = *(v0 + 176);

  *(v0 + 80) = *(v0 + 192);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 104);
  if (v2)
  {

    sub_1004D610C(*(v0 + 64), *(v0 + 72));

    v4 = *(v0 + 80);
  }

  else
  {
    v5 = *(v0 + 80);

    v6 = sub_100010F88(10, 0, 0xE000000000000000);
    sub_1004D610C(v6, v7);
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 144);

  v10 = *(v0 + 8);

  return v10();
}

void sub_1004D4FB0()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8];
  if (v15 >> 60 == 15)
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_1009809B0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Auth token not present yet", v19, 2u);
    }

LABEL_19:

    return;
  }

  v50 = v12;
  v51 = v11;
  v20 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken];
  v21 = v0[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded];
  sub_100294008(v20, v15);
  if (v21 != 1)
  {
    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_1009809B0);
    v17 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v17, v29, "Ranging not succeeded yet", v30, 2u);
    }

    sub_10028BCC0(v20, v15);
    goto LABEL_19;
  }

  v49 = v5;
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_1009809B0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v4;
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Consuming auth token", v25, 2u);
    v2 = v1;
    v4 = v48;
  }

  if (*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession])
  {
    sub_1002A9924(v20, v15);

    sub_100669484(v20, v15);
    v27 = v26;
    sub_10028BCC0(v20, v15);
    if (v2)
    {
    }

    else
    {
      v48 = v20;
      v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100026AC0(v36, v37);

      if (sub_1004D9EE0())
      {
        v47 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
        v38 = swift_allocObject();
        *(v38 + 16) = v3;
        aBlock[4] = sub_1004E5768;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100011678;
        aBlock[3] = &unk_1008E4E58;
        v46 = _Block_copy(aBlock);
        v39 = v3;
        static DispatchQoS.unspecified.getter();
        aBlock[7] = _swiftEmptyArrayStorage;
        v45[1] = sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v40 = v46;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v40);
        sub_10028BCC0(v48, v15);
        (*(v49 + 8))(v8, v4);
        (*(v50 + 8))(v14, v51);

        return;
      }

      v41 = sub_100010F88(10, 0xD000000000000045, 0x80000001007932C0);
      v43 = v42;
      sub_1000115C8();
      swift_allocError();
      *v44 = v41;
      *(v44 + 8) = v43;
      swift_willThrow();

      v20 = v48;
    }
  }

  else
  {
    v31 = sub_100010F88(10, 0xD000000000000013, 0x8000000100791830);
    v32 = v20;
    v34 = v33;
    sub_1000115C8();
    swift_allocError();
    *v35 = v31;
    *(v35 + 8) = v34;
    v20 = v32;
    swift_willThrow();
  }

  sub_10028BCC0(v20, v15);
}

void sub_1004D568C(unint64_t a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_21;
  }

  v16 = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  v2 = v16;
  if (v16)
  {
    [v16 setVersion:1];
    v17 = v2;
    UUID.uuidString.getter();
    v18 = String._bridgeToObjectiveC()();

    [v17 setSessionID:v18];

    [v17 setSuccess:HIDWORD(a1) & 1];
    if ((a1 & 0x100000000) == 0)
    {
      [v17 setErrorCode:a1];
    }

    v19 = [v17 data];
    if (v19)
    {
      v20 = v19;
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (qword_100973950 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_1009809B0);
      v25 = v17;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v66 = a1;
        v65 = v8;
        v29 = v21;
        v30 = v23;
        v31 = v28;
        v32 = v24;
        v33 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v25;
        *v33 = v2;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Sending confirmation: %@", v31, 0xCu);
        sub_100005508(v33, &qword_100975400, &qword_1007F65D0);
        v24 = v32;

        v23 = v30;
        v21 = v29;
        v8 = v65;
        a1 = v66;
      }

      v35 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v3 + v35, &v69, &qword_100982080, &unk_1007FDD30);
      if (v70)
      {
        sub_1000121F8(&v69, v71);
        v36 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v3 + v36, &v69, &qword_10097A9C8, &unk_1007FDD40);
        if (v70)
        {
          sub_1002A9938(&v69, v67);
          sub_100005508(&v69, &qword_10097A9C8, &unk_1007FDD40);
          v37 = *sub_10002CDC0(v67, v67[3]);
          LODWORD(v38) = sub_1004FE08C(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          sub_10000C4AC(v24, qword_1009895D8);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v63 = v37;
            v66 = v25;
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v68 = v42;
            *v41 = 136315138;
            v64 = v23;
            LODWORD(v65) = v38;
            if (v38 <= 2u)
            {
              v43 = 0xEB0000000074656ELL;
              if (v38)
              {
                if (v38 == 1)
                {
                  v43 = 0xE800000000000000;
                  v44 = 0x6C61636F4C736469;
                }

                else
                {
                  v44 = 0x7265746E49736469;
                }
              }

              else
              {
                v43 = 0xEB00000000746E65;
                v44 = 0x674179627261656ELL;
              }
            }

            else if (v38 > 4u)
            {
              if (v38 == 5)
              {
                v43 = 0x80000001007888E0;
                v44 = 0xD000000000000010;
              }

              else
              {
                v43 = 0xED000068746F6F74;
                v44 = 0x65756C4265726F63;
              }
            }

            else if (v38 == 3)
            {
              v43 = 0xE900000000000054;
              v44 = 0x4274726F70706172;
            }

            else
            {
              v43 = 0xEB000000004C4457;
              v44 = 0x4174726F70706172;
            }

            v38 = sub_10000C4E4(v44, v43, &v68);

            *(v41 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v39, v40, "Using transport type %s", v41, 0xCu);
            sub_10000C60C(v42);

            v23 = v64;
            v25 = v66;
            LOBYTE(v38) = v65;
            v37 = v63;
          }

          else
          {
          }

          v54 = *(v37 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          v51 = sub_1005CCC7C(v21, v23, v71, 2u, v38);
          v52 = HIDWORD(v51) & 1;
          sub_10000C60C(v71);
          sub_10000C60C(v67);
LABEL_41:
          *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_isConfirmationSent) = 1;
          if ((a1 & 0x100000000) != 0)
          {
            if (v52)
            {
              Date.init()();
              v55 = type metadata accessor for Date();
              (*(*(v55 - 8) + 56))(v8, 0, 1, v55);
              v56 = v3 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
              swift_beginAccess();
              v57 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
              sub_10000C788(v8, v56 + *(v57 + 20), &qword_10097A7F0, &unk_1007FB600);
              v58 = swift_endAccess();
              sub_1004D8F00(v58);
              v59 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
              swift_beginAccess();
              sub_10000FF90(v3 + v59, v71, &qword_10097A9C8, &unk_1007FDD40);
              if (v72)
              {
                sub_1002A9938(v71, &v69);
                sub_100005508(v71, &qword_10097A9C8, &unk_1007FDD40);
                v60 = sub_10002CDC0(&v69, v70);
                sub_1004E0C14(v3, *v60);

                sub_100026AC0(v21, v23);
                sub_10000C60C(&v69);
              }

              else
              {

                sub_100026AC0(v21, v23);
                sub_100005508(v71, &qword_10097A9C8, &unk_1007FDD40);
              }

              return;
            }

            v61 = v51;
          }

          else
          {
            v61 = a1;
          }

          sub_1004D2760(v61);

          sub_100026AC0(v21, v23);
          return;
        }

        sub_10000C60C(v71);
        v53 = &v69;
      }

      else
      {
        sub_100005508(&v69, &qword_100982080, &unk_1007FDD30);
        v49 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v3 + v49, v71, &qword_10097A9C8, &unk_1007FDD40);
        if (v72)
        {
          sub_1002A9938(v71, &v69);
          sub_100005508(v71, &qword_10097A9C8, &unk_1007FDD40);
          v50 = *sub_10002CDC0(&v69, v70);
          v51 = sub_1006D3874(v21, v23, 2u, *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          v52 = HIDWORD(v51) & 1;
          sub_10000C60C(&v69);
          goto LABEL_41;
        }

        v53 = v71;
      }

      sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
      v51 = 0;
      LOBYTE(v52) = 1;
      goto LABEL_41;
    }
  }

  else
  {
    [0 setSuccess:HIDWORD(a1) & 1];
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_50;
  }

LABEL_21:
  v45 = type metadata accessor for Logger();
  sub_10000C4AC(v45, qword_1009809B0);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Error converting confirmation to data", v48, 2u);
  }

  sub_1004D2760(10);
}

uint64_t sub_1004D610C(int a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = sub_1004E5770;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E4EA8;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_1004D63F8(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v74 - v6;
  v8 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v74 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (qword_100973950 == -1)
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
  v19 = type metadata accessor for Logger();
  v20 = sub_10000C4AC(v19, qword_1009809B0);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Handling authentication response %@", v24, 0xCu);
    sub_100005508(v25, &qword_100975400, &qword_1007F65D0);
  }

  v27 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v28 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
  if (v28 <= 0x16 && ((1 << v28) & 0x7E658E) != 0)
  {
    v79 = v7;
    v80 = v20;
    Date.init()();
    v29 = type metadata accessor for Date();
    v30 = *(*(v29 - 8) + 56);
    v30(v11, 0, 1, v29);
    v31 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics];
    swift_beginAccess();
    v32 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_10000C788(v11, &v31[*(v32 + 36)], &qword_10097A7F0, &unk_1007FB600);
    swift_endAccess();
    sub_1004FDD9C();
    if ([v21 hasErrorCode])
    {
      sub_1004D2760([v21 errorCode]);
      return;
    }

    v33 = [v21 awdlInfo];
    if (v33)
    {
      v78 = v2;
      v75 = v27;
      v34 = v33;
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v39 = sub_1001114F4(isa);

      if (v39)
      {
        v76 = v35;
        v77 = v37;
        v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = v78;
        v42 = &v78[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken];
        v43 = *&v78[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8];
        if (v43 >> 60 == 15)
        {

          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "Could not find ranging token", v46, 2u);
          }

          LOBYTE(v81) = 0;
          sub_1004D568C(0xAuLL);
          sub_100026AC0(v76, v77);
        }

        else
        {
          v50 = *v42;
          sub_100294008(*v42, *&v78[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8]);
          Date.init()();
          v30(v11, 0, 1, v29);
          swift_beginAccess();
          sub_10000C788(v11, &v31[*(v32 + 40)], &qword_10097A7F0, &unk_1007FB600);
          swift_endAccess();
          v51 = [objc_opt_self() standardUserDefaults];
          v52 = String._bridgeToObjectiveC()();
          v53 = [v51 BOOLForKey:v52];

          if (v53)
          {
            v54 = v50;

            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();
            v57 = os_log_type_enabled(v55, v56);
            v58 = v76;
            if (v57)
            {
              v59 = swift_slowAlloc();
              *v59 = 0;
              _os_log_impl(&_mh_execute_header, v55, v56, "Default classCUnlockSkipRanging is set. Skipping ranging", v59, 2u);
            }

            v41[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingSucceeded] = 1;
            v60 = v77;
            if (*&v41[v75] == 1)
            {
              LOBYTE(v81) = 1;
              sub_1004D568C(0x100000000uLL);
            }

            sub_100026AC0(v58, v60);
            sub_10028BCC0(v54, v43);
          }

          else
          {
            v70 = type metadata accessor for TaskPriority();
            v71 = v79;
            (*(*(v70 - 8) + 56))(v79, 1, 1, v70);
            v72 = swift_allocObject();
            v72[2] = 0;
            v72[3] = 0;
            v72[4] = v41;
            v72[5] = v40;
            v72[6] = v50;
            v72[7] = v43;
            v73 = v41;
            sub_1002A9924(v50, v43);
            sub_1002B3098(0, 0, v71, &unk_1008070E8, v72);
            sub_100026AC0(v76, v77);
            sub_10028BCC0(v50, v43);
          }
        }

        return;
      }

      sub_100026AC0(v35, v37);
    }

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Message does not have AWDL info", v49, 2u);
    }

    LOBYTE(v81) = 0;
    sub_1004D568C(0xAuLL);
  }

  else
  {
    v61 = v2;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v81 = v65;
      *v64 = 136315138;
      v66 = *&v2[v27];
      v67 = sub_100027340();
      v69 = sub_10000C4E4(v67, v68, &v81);

      *(v64 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "Authentication type %s does not support handling this message", v64, 0xCu);
      sub_10000C60C(v65);
    }
  }
}

uint64_t sub_1004D6D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004D6E20, 0, 0);
}

uint64_t sub_1004D6E20()
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009809B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting ranging as initiator", v4, 2u);
  }

  v5 = v0[16];

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  v0[26] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_1004D71CC;
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];

    return sub_10042CEDC(v10, v8, v9);
  }

  else
  {
    v23 = v0[25];
    v12 = v0[22];
    v25 = v0[24];
    v26 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[16];
    v24 = *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
    v16 = swift_allocObject();
    *(v16 + 16) = 2;
    *(v16 + 24) = v15;
    v0[12] = sub_1004E52EC;
    v0[13] = v16;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008E4CF0;
    v17 = _Block_copy(v0 + 8);
    v18 = v15;
    static DispatchQoS.unspecified.getter();
    v0[15] = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v13 + 8))(v12, v14);
    (*(v25 + 8))(v23, v26);
    v19 = v0[13];

    v20 = v0[25];
    v21 = v0[22];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1004D71CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = sub_1004D7550;
  }

  else
  {
    v8 = *(v4 + 208);

    *(v4 + 232) = a1 & 1;
    v7 = sub_1004D7300;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004D7300()
{
  v1 = *(v0 + 232);
  v14 = v0[25];
  v2 = v0[22];
  v16 = v0[24];
  v17 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v15 = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[12] = sub_1004E52EC;
  v0[13] = v6;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100011678;
  v0[11] = &unk_1008E4CF0;
  v7 = _Block_copy(v0 + 8);
  v8 = v5;
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v16 + 8))(v14, v17);
  v9 = v0[13];

  v10 = v0[25];
  v11 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004D7550()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v17 = v0[24];
  v18 = v0[23];
  v4 = v0[22];
  v16 = v0[21];
  v5 = v0[20];
  v6 = v0[16];

  v15 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  v0[6] = sub_1004E52E4;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008E4CA0;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v16 + 8))(v4, v5);
  (*(v17 + 8))(v3, v18);
  v10 = v0[7];

  v11 = v0[25];
  v12 = v0[22];

  v13 = v0[1];

  return v13();
}

void sub_1004D77C0(char a1)
{
  if (a1 == 2 || (a1 & 1) == 0)
  {
    v1 = 9;
  }

  else
  {
    v1 = 0x100000000;
  }

  sub_1004D568C(v1);
}

void sub_1004D7820()
{
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    sub_1004D568C(v0);
  }

  else
  {
    sub_1004D568C(0xAuLL);
  }
}

uint64_t sub_1004D78BC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100973950 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009809B0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling token %@", v15, 0xCu);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
  }

  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v19 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type);
  v20 = v19 > 0x16;
  v21 = (1 << v19) & 0x7E658E;
  if (v20 || v21 == 0)
  {
    v37 = [v12 aksToken];
    if (v37)
    {
      v38 = v37;
      v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = (v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken);
      v43 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken);
      v44 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8);
      *v42 = v39;
      v42[1] = v41;
      sub_100294008(v39, v41);
      sub_10028BCC0(v43, v44);
      sub_1004D4FB0();
      return sub_100026AC0(v39, v41);
    }

    v27 = 0xD000000000000024;
    v28 = 0x8000000100793310;
  }

  else
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v23._object = 0x8000000100793340;
    v23._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v23);
    v24 = *(v2 + v18);
    v25._countAndFlagsBits = sub_100027340();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0xD000000000000027;
    v26._object = 0x8000000100793360;
    String.append(_:)(v26);
    v27 = v45;
    v28 = v46;
  }

  v29 = sub_100010F88(10, v27, v28);
  v31 = v30;
  sub_1000115C8();
  v32 = swift_allocError();
  *v33 = v29;
  *(v33 + 8) = v31;
  swift_willThrow();
  v47 = v32;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v34 = v45;
    v35 = v46;
  }

  else
  {
    v34 = sub_100010F88(10, 0, 0xE000000000000000);
  }

  sub_1004D610C(v34, v35);

  LOBYTE(v45) = 0;
  sub_1004D568C(0xAuLL);
}

void sub_1004D7D10()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1004FDD9C();
  if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_isConfirmationSent) & 1) == 0)
  {
    v12[12] = 0;
    sub_1004D568C(0xEuLL);
    return;
  }

  if (qword_100973950 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009809B0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Can't cancel session that is already finished", v11, 2u);
  }
}

void sub_1004D7F08()
{
  v1 = type metadata accessor for RangingMetrics(0);
  v2 = *(*(v1 - 1) + 64);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002E3A98();
  v5 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC16DaemoniOSLibrary30SDAuthenticationRangingSession_metrics;
    swift_beginAccess();
    sub_1004E57A0(v5 + v6, v4, type metadata accessor for RangingMetrics);
    v7 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
    swift_beginAccess();
    v8 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
    sub_1000168F4(v4, v7 + v8[10]);
    sub_1000168F4(&v4[v1[5]], v7 + v8[11]);
    sub_1000168F4(&v4[v1[6]], v7 + v8[12]);
    *(v7 + v8[13]) = v4[v1[7]];
    sub_1000168F4(&v4[v1[8]], v7 + v8[14]);
    sub_1000168F4(&v4[v1[9]], v7 + v8[15]);
    swift_endAccess();
    sub_1004E5900(v4, type metadata accessor for RangingMetrics);
  }

  sub_1004D8098();
}

void sub_1004D8098()
{
  v1 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v111 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v110 = &v106 - v6;
  v7 = __chkstk_darwin(v5);
  v109 = &v106 - v8;
  v9 = __chkstk_darwin(v7);
  v108 = &v106 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v106 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v106 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v106 - v18;
  __chkstk_darwin(v17);
  v21 = &v106 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v29 = [objc_allocWithZone(SFWatchAuthenticationEvent) init];
  if ((*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v30 = v29;
  v107 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  [v29 setAuthenticationType:?];
  v112 = v0;
  v31 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics;
  swift_beginAccess();
  v32 = (v31 + *(v1 + 72));
  v33 = *(v32 + 4);
  if ((v33 & 1) == 0)
  {
    [v30 setFailureReason:*v32];
  }

  [v30 setSucceeded:v33];
  [v30 setScreenOn:*(v31 + *(v1 + 76)) & 1];
  sub_1004E57A0(v31, v21, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v34 = sub_1004DB10C();
  v106 = v1;
  v36 = v35;
  sub_1004E5900(v21, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v37 = *&v34;
  if (v36)
  {
    v37 = 0.0;
  }

  [v30 setDiscoveryDuration:v37];
  sub_1004E57A0(v31, v19, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v38 = sub_1004DB3CC();
  v40 = v39;
  sub_1004E5900(v19, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v41 = *&v38;
  if (v40)
  {
    v41 = 0.0;
  }

  [v30 setKeyExchangeDuration:v41];
  sub_1004E57A0(v31, v16, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v42 = sub_1004DB68C();
  v44 = v43;
  sub_1004E5900(v16, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v45 = *&v42;
  if (v44)
  {
    v45 = 0.0;
  }

  [v30 setAwdlBringUpDuration:v45];
  sub_1004E57A0(v31, v13, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v46 = sub_1004DBC50();
  v48 = v47;
  sub_1004E5900(v13, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v49 = *&v46;
  if (v48)
  {
    v49 = 0.0;
  }

  [v30 setRangingDuration:v49];
  v50 = v108;
  sub_1004E57A0(v31, v108, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v51 = sub_1004DB94C();
  v53 = v52;
  sub_1004E5900(v50, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v54 = *&v51;
  if (v53)
  {
    v54 = 0.0;
  }

  [v30 setPeerFoundDuration:v54];
  v55 = v109;
  sub_1004E57A0(v31, v109, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v56 = sub_1004DAE5C();
  v58 = v57;
  sub_1004E5900(v55, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v59 = *&v56;
  if (v58)
  {
    v59 = 0.0;
  }

  [v30 setTotalDuration:v59];
  v60 = v110;
  sub_1004E57A0(v31, v110, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v61 = sub_1004DBF10();
  v63 = v62;
  sub_1004E5900(v60, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v64 = *&v61;
  if (v63)
  {
    v64 = 0.0;
  }

  [v30 setTimeSinceBoot:v64];
  v65 = v111;
  sub_1004E57A0(v31, v111, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v66 = sub_1004DC1C0();
  v68 = v67;
  sub_1004E5900(v65, type metadata accessor for SDAuthenticationLockSession.Metrics);
  v69 = *&v66;
  if (v68)
  {
    v69 = 0.0;
  }

  [v30 setTimeSinceRemoteUnlocked:v69];
  v70 = v112;
  v71 = sub_10000D6C4(*(v112 + v107));
  v72 = sub_100693048(v71);

  v73 = sub_10000EEDC(v72);

  LOBYTE(v72) = sub_10000CEB0(1uLL, v73);

  if (v72)
  {
    v74 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
    swift_beginAccess();
    sub_10000FF90(v70 + v74, v113, &qword_10097A9C8, &unk_1007FDD40);
    v75 = v114;
    if (v114)
    {
      v76 = sub_10002CDC0(v113, v114);
      v77 = *(v75 - 8);
      v78 = *(v77 + 64);
      __chkstk_darwin(v76);
      v80 = (&v106 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v77 + 16))(v80);
      sub_100005508(v113, &qword_10097A9C8, &unk_1007FDD40);
      v81 = *v80;
      sub_1006D2C1C();
      (*(v77 + 8))(v80, v75);

      v70 = v112;
    }

    else
    {
      sub_100005508(v113, &qword_10097A9C8, &unk_1007FDD40);
    }

    v86 = String._bridgeToObjectiveC()();

    [v30 setWatchHardwareModel:v86];

    sub_10000FF90(v70 + v74, v113, &qword_10097A9C8, &unk_1007FDD40);
    v87 = v114;
    if (v114)
    {
      v88 = sub_10002CDC0(v113, v114);
      v89 = *(v87 - 8);
      v90 = *(v89 + 64);
      __chkstk_darwin(v88);
      v92 = (&v106 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v89 + 16))(v92);
      sub_100005508(v113, &qword_10097A9C8, &unk_1007FDD40);
      v93 = *v92;
      sub_1006D2C1C();
      (*(v89 + 8))(v92, v87);
    }

    else
    {
      sub_100005508(v113, &qword_10097A9C8, &unk_1007FDD40);
    }

    v98 = String._bridgeToObjectiveC()();

    [v30 setWatchSoftwareVersion:v98];

    v99 = [v30 watchHardwareModel];
    if (!v99)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = String._bridgeToObjectiveC()();
    }

    [v30 setRemoteHardwareModel:v99];

    v100 = [v30 watchSoftwareVersion];
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = String._bridgeToObjectiveC()();
    }

    v104 = &selRef_setRemoteSoftwareVersion_;
  }

  else
  {
    v82 = v106;
    v83 = (v31 + *(v106 + 80));
    if (v83[1])
    {
      v84 = *v83;
      v85 = v83[1];
    }

    v94 = String._bridgeToObjectiveC()();

    [v30 setRemoteHardwareModel:v94];

    v95 = (v31 + *(v82 + 84));
    if (v95[1])
    {
      v96 = *v95;
      v97 = v95[1];
    }

    v102 = String._bridgeToObjectiveC()();

    [v30 setRemoteSoftwareVersion:v102];

    v103 = String._bridgeToObjectiveC()();
    [v30 setWatchHardwareModel:v103];

    v101 = String._bridgeToObjectiveC()();
    v104 = &selRef_setWatchSoftwareVersion_;
  }

  [v30 *v104];

  v105 = String._bridgeToObjectiveC()();
  [v30 setApproveClientBundleID:v105];

  [v30 submitEvent];
}

uint64_t sub_1004D8B4C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_100973950 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009809B0);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10000C4E4(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Response timer fired for %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  return sub_1004D2760(12);
}

uint64_t sub_1004D8DE8(_BYTE *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = _s12StateMetricsVMa(0);
  v7 = v6[5];
  v8 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_1000168F4(&a1[v7], v3 + v8[16]);
  *(v3 + v8[19]) = *a1;
  v9 = *&a1[v6[7]];
  if (*(v9 + 16) && (v10 = sub_10057091C(a2), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = (v3 + v8[20]);
  v16 = v15[1];

  *v15 = v14;
  v15[1] = v13;
  v17 = *&a1[v6[8]];
  if (*(v17 + 16) && (v18 = sub_10057091C(a2), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = (v3 + v8[21]);
  v24 = v23[1];

  *v23 = v22;
  v23[1] = v21;
  return result;
}

uint64_t sub_1004D9EE0()
{
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type) == 4)
  {
    result = sub_10005CF6C();
    if (!result)
    {
      return result;
    }

    if (qword_100973950 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_1009809B0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BIO ARM SUCCEEDED", v5, 2u);
    }
  }

  return 1;
}

void sub_1004D9FDC(uint64_t a1)
{
  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009809B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Sending confirmation", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v6, v9, &qword_10097A9C8, &unk_1007FDD40);
  if (v10)
  {
    sub_1002A9938(v9, v8);
    sub_100005508(v9, &qword_10097A9C8, &unk_1007FDD40);
    v7 = sub_10002CDC0(v8, v8[3]);
    sub_1004E0C14(a1, *v7);
    sub_10000C60C(v8);
  }

  else
  {
    sub_100005508(v9, &qword_10097A9C8, &unk_1007FDD40);
  }

  v9[0] = 1;
  sub_1004D568C(0x100000000uLL);
}

void sub_1004DA17C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SDAuthenticationResponse) init];
  v7 = v6;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v6)
  {
    [v6 setVersion:1];
    v9 = v7;
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setSessionID:v10];

    [v9 setErrorCode:a1];
    v11 = [v9 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(v3 + v16, &v53, &qword_100982080, &unk_1007FDD30);
      if (v54)
      {
        sub_1000121F8(&v53, v55);
        v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(v3 + v17, &v53, &qword_10097A9C8, &unk_1007FDD40);
        if (v54)
        {
          sub_1002A9938(&v53, v52);
          sub_100005508(&v53, &qword_10097A9C8, &unk_1007FDD40);
          v50 = *sub_10002CDC0(v52, v52[3]);
          v18 = sub_1004FE08C(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_10000C4AC(v19, qword_1009895D8);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v51 = v23;
            *v22 = 136315138;
            v24 = v18;
            v49 = v18;
            v47 = v23;
            buf = v22;
            if (v18 <= 2u)
            {
              v25 = 0xEB0000000074656ELL;
              if (v24)
              {
                if (v24 == 1)
                {
                  v25 = 0xE800000000000000;
                  v26 = 0x6C61636F4C736469;
                }

                else
                {
                  v26 = 0x7265746E49736469;
                }
              }

              else
              {
                v25 = 0xEB00000000746E65;
                v26 = 0x674179627261656ELL;
              }
            }

            else if (v18 > 4u)
            {
              if (v18 == 5)
              {
                v25 = 0x80000001007888E0;
                v26 = 0xD000000000000010;
              }

              else
              {
                v25 = 0xED000068746F6F74;
                v26 = 0x65756C4265726F63;
              }
            }

            else if (v18 == 3)
            {
              v25 = 0xE900000000000054;
              v26 = 0x4274726F70706172;
            }

            else
            {
              v25 = 0xEB000000004C4457;
              v26 = 0x4174726F70706172;
            }

            v45 = sub_10000C4E4(v26, v25, &v51);

            *(buf + 4) = v45;
            _os_log_impl(&_mh_execute_header, v20, v21, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v47);

            v18 = v49;
          }

          else
          {
          }

          v46 = *(v50 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_transportManager);
          sub_1005CCC7C(v13, v15, v55, 1u, v18);
          sub_100026AC0(v13, v15);
          sub_10000C60C(v55);
          sub_10000C60C(v52);
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        }

        else
        {
          sub_10000C60C(v55);
          sub_100026AC0(v13, v15);
          sub_100005508(&v53, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_18;
      }

      sub_100026AC0(v13, v15);
      sub_100005508(&v53, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973950 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_1009809B0);
  v28 = v7;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v7;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not convert response to data: %@", v31, 0xCu);
    sub_100005508(v32, &qword_100975400, &qword_1007F65D0);
  }

LABEL_18:
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v3 + v34, v55, &qword_10097A9C8, &unk_1007FDD40);
  if (v55[3])
  {
    sub_1002A9938(v55, &v53);
    sub_100005508(v55, &qword_10097A9C8, &unk_1007FDD40);
    v35 = sub_10002CDC0(&v53, v54);
    v36 = sub_1000116BC(a1, a2);
    sub_100461318(v3, a1, v36, v37, *v35);

    sub_10000C60C(&v53);
  }

  else
  {
    sub_100005508(v55, &qword_10097A9C8, &unk_1007FDD40);
  }

  if (p_opt_class_meths[298] != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000C4AC(v38, qword_1009809B0);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    sub_1000115C8();
    swift_allocError();
    *v43 = a1;
    *(v43 + 8) = a2;

    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v44;
    *v42 = v44;
    _os_log_impl(&_mh_execute_header, v39, v40, "Session failed with error: %@", v41, 0xCu);
    sub_100005508(v42, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_1004DA950()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate, &qword_10097A7F0, &unk_1007FB600);
  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_rangingToken + 8));
  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_aksAuthSession);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_authToken + 8));
  return sub_1004E5900(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_metrics, type metadata accessor for SDAuthenticationLockSession.Metrics);
}

void sub_1004DAAA4()
{
  sub_1004DAD28(319, &qword_10097DB80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SDAuthenticationLockSession.Metrics(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004DABF0()
{
  sub_1004DAD28(319, &qword_10097DB80, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1004DAD28(319, &unk_100980A98, type metadata accessor for SFAuthenticationErrorCode);
    if (v1 <= 0x3F)
    {
      sub_1002F2B90(319, &qword_100975790);
      if (v2 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004DAD28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004DAD7C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationLockSession_lastUnlockDate;
  swift_beginAccess();
  sub_10000C788(a1, v3 + v4, &qword_10097A7F0, &unk_1007FB600);
  return swift_endAccess();
}

uint64_t sub_1004DAE5C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  sub_10000FF90(v0, v7, &qword_10097A7F0, &unk_1007FB600);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = v7;
LABEL_5:
    sub_100005508(v17, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v18 = v7;
  v19 = *(v9 + 32);
  v19(v15, v18, v8);
  v20 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v20 + 20), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v16(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v17 = v5;
    goto LABEL_5;
  }

  v19(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v9 + 8);
  v24(v13, v8);
  v24(v15, v8);
  return v23;
}

uint64_t sub_1004DB10C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v16 + 24), v7, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_10000FF90(v0 + *(v16 + 28), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1004DB3CC()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v16 + 32), v7, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_10000FF90(v0 + *(v16 + 36), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1004DB68C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  sub_10000FF90(v0 + *(v16 + 40), v7, &qword_10097A7F0, &unk_1007FB600);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    v18 = v7;
LABEL_5:
    sub_100005508(v18, &qword_10097A7F0, &unk_1007FB600);
    return 0;
  }

  v27 = v13;
  v19 = v7;
  v20 = *(v9 + 32);
  v20(v15, v19, v8);
  sub_10000FF90(v0 + *(v16 + 44), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v17(v5, 1, v8) == 1)
  {
    (*(v9 + 8))(v15, v8);
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v27;
  v20(v27, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = *(v9 + 8);
  v25(v22, v8);
  v25(v15, v8);
  return v24;
}

uint64_t sub_1004DB94C()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = type metadata accessor for SDAuthenticationLockSession.Metrics(0);
  if (*(v0 + *(v16 + 52)))
  {
    *&result = 0.0;
    return result;
  }

  v18 = v16;
  sub_10000FF90(v0 + *(v16 + 48), v7, &qword_10097A7F0, &unk_1007FB600);
  v19 = v9[6];
  if (v19(v7, 1, v8) == 1)
  {
    v20 = v7;
LABEL_7:
    sub_100005508(v20, &qword_10097A7F0, &unk_1007FB600);
    *&result = 0.0;
    return result;
  }

  v31 = v9;
  v21 = v7;
  v22 = v9[4];
  v22(v15, v21, v8);
  sub_10000FF90(v0 + *(v18 + 40), v5, &qword_10097A7F0, &unk_1007FB600);
  if (v19(v5, 1, v8) == 1)
  {
    (v31[1])(v15, v8);
    v20 = v5;
    goto LABEL_7;
  }

  v22(v13, v5, v8);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  *&v25 = COERCE_DOUBLE(sub_1004DB68C());
  v27 = v26;
  v28 = v31[1];
  v28(v13, v8);
  v28(v15, v8);
  v29 = *&v25;
  if (v27)
  {
    v29 = 0.0;
  }

  *&result = v24 - v29;
  return result;
}