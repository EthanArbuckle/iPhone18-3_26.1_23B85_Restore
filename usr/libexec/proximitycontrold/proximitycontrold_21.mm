uint64_t sub_1001E9140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDisplayContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E91A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_1001E4174(v6, v1 + v4, a1);
}

BOOL sub_1001E9278(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1);
  if (v6 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 == 1;
}

uint64_t sub_1001E93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  result = (*(v4 + 48))(v11, 1, v3);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v14 = *(v4 + 32);
    v14(v8, v11, v3);
    *(a2 + 24) = v3;
    v15 = sub_10000F798(a2);
    return (v14)(v15, v8, v3);
  }

  return result;
}

uint64_t sub_1001E9554(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v16 = sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v16);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(v3 + 16);
  v18 = a1;
  v9(&v16 - v7, a1);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v11 = *(v3 + 32);
  v12 = v8;
  v13 = v16;
  v11(v17 + v10, v12, v16);
  (v9)(v6, a1, v13);
  v14 = swift_allocObject();
  v11(v14 + v10, v6, v13);
  sub_100035D04(&qword_10034C878, &qword_10028C158);
  sub_10000E244(&qword_10034CA20, &qword_10034C878, &qword_10028C158);
  Publisher.sink(receiveCompletion:receiveValue:)();

  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_1001E97BC(char a1)
{
  if ((a1 & 1) == 0 && !_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

uint64_t sub_1001E9848()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034C850);
  sub_100003078(v0, qword_10034C850);
  return Logger.init(subsystem:category:)();
}

void *sub_1001E98C8()
{
  type metadata accessor for ProximityHandoffService();
  swift_allocObject();
  result = sub_1001E9904();
  qword_10038B5A0 = result;
  return result;
}

void *sub_1001E9904()
{
  v1 = v0;
  v36 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v36);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100035CB8();
  v35[0] = "previous current ";
  v35[1] = v10;
  static DispatchQoS.default.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1001ED750(&qword_100339328, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_10000E244(&qword_100339338, &qword_100339330, &unk_10026F070);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v36);
  v0[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for HandoffInteractionsManager();
  swift_allocObject();
  v0[4] = sub_100129670();
  type metadata accessor for HandoffSuppressionManagerState();
  v11 = swift_allocObject();
  v12 = sub_100035D04(&qword_100339340, &qword_10028C4E0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v11 + 16) = sub_10002B83C(&_swiftEmptySetSingleton, 0, 0, 0, 0, 0);
  type metadata accessor for HandoffSuppressionManager();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v0[5] = v15;
  v0[6] = &_swiftEmptySetSingleton;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_10034C850);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Init", v19, 2u);
  }

  v20 = SFProximityHandoffMachServiceName.getter();
  v22 = v21;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v37 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100017494(v20, v22, &v37);
    _os_log_impl(&_mh_execute_header, v23, v24, "Registering mach service %s", v25, 0xCu);
    sub_10000903C(v26);
  }

  sub_100035D04(&qword_10034C9D8, &qword_10028C4E8);
  v27 = v1[3];
  v28 = SFXPCListener.__allocating_init(machServiceName:queue:)();
  v1[2] = v28;
  v29 = v28;

  SFXPCListener.contextProvider.setter();

  v30 = v1[2];
  SFXPCListener.didAddConnectionHandler.setter();

  v31 = v1[2];

  v32 = v31;
  SFXPCListener.didRemoveConnectionHandler.setter();

  v33 = v1[2];
  SFXPCListener.resume()();

  return v1;
}

void sub_1001E9E68(uint64_t a1)
{
  v2 = type metadata accessor for SFClientIdentity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_10034C850);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_1001ED750(&qword_10034C9E0, &type metadata accessor for SFClientIdentity);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_100017494(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Client added: %s", v10, 0xCu);
    sub_10000903C(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void sub_1001EA0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v46 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v53 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFClientIdentity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_10034C850);
  v21 = *(v15 + 16);
  v52 = a1;
  v21(v18, a1, v14);
  v50 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v49 = v10;
    v47 = v26;
    v55 = v26;
    *v25 = 136315138;
    sub_1001ED750(&qword_10034C9E0, &type metadata accessor for SFClientIdentity);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v8;
    v29 = v11;
    v31 = v30;
    (*(v15 + 8))(v18, v14);
    v32 = sub_100017494(v27, v31, &v55);
    v11 = v29;
    v8 = v28;

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Client removed: %s", v25, 0xCu);
    sub_10000903C(v47);
    v10 = v49;

    a2 = v48;
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v33 = v51;
  SFClientIdentity.connectionID.getter();
  if ((*(v11 + 48))(v33, 1, v10) == 1)
  {
    sub_100057640(v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "### No connectionID?", v36, 2u);
    }
  }

  else
  {
    v37 = v11;
    (*(v11 + 32))(v53, v33, v10);
    v38 = *(*(a2 + 40) + 16);
    v39 = *(v38 + 16);
    v40 = *(v39 + 24);

    CurrentValueSubject.value.getter();
    v41 = v54;
    if (v54)
    {
    }

    else
    {
      v42 = *(v39 + 16);
      CurrentValueSubject.value.getter();

      v41 = v55;
    }

    v55 = v41;
    v43 = v53;
    sub_100067BF4(v53, v8);
    sub_100057640(v8);
    v44 = v55;
    v45 = *(v38 + 16);

    sub_1001C0474(v44);

    sub_100057010();
    (*(v37 + 8))(v43, v10);
  }
}

uint64_t ProximityHandoffService.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t ProximityHandoffService.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t PCProximityHandoffServiceInvocations.SuppressHandoffAction.invoke(with:context:client:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v40 = a1;
  v37 = a4;
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v38 = v35 - v7;
  v8 = type metadata accessor for UUID();
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFClientAccessLevel();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v35 - v17;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v35[1] = sub_100003078(v19, qword_10034C850);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35[0] = v8;
    *v22 = 67109120;
    *(v22 + 4) = v40 & 1;
    _os_log_impl(&_mh_execute_header, v20, v21, "SuppressHandoffAction invoked: %{BOOL}d", v22, 8u);
    v8 = v35[0];
  }

  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  v23 = v41;
  SFClientAccessLevel.verifyHasAccess(to:)();
  if (v23)
  {
    v24 = *(v12 + 8);
    v24(v16, v11);
    return (v24)(v18, v11);
  }

  else
  {
    v26 = *(v12 + 8);
    v26(v16, v11);
    v26(v18, v11);
    v27 = v38;
    SFClientIdentity.connectionID.getter();
    v28 = v39;
    if ((*(v39 + 48))(v27, 1, v8) == 1)
    {
      sub_100057640(v27);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "### No connectionID?", v31, 2u);
      }

      sub_10001618C();
      swift_allocError();
      *v32 = 0xD000000000000026;
      *(v32 + 8) = 0x80000001002A4E90;
      *(v32 + 16) = 9;
      return swift_willThrow();
    }

    else
    {
      v33 = v36;
      (*(v28 + 32))(v36, v27, v8);
      v34 = *(a2 + 40);
      sub_1000572EC(v33, v40 & 1);
      VoidResponse.init()();
      return (*(v28 + 8))(v33, v8);
    }
  }
}

uint64_t sub_1001EAAFC()
{
  v1 = *v0;
  sub_1001ED750(&qword_10034CA10, &type metadata accessor for PCProximityHandoffServiceInvocations.SuppressHandoffAction);
  return _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)();
}

uint64_t PCProximityHandoffServiceInvocations.SetDaemonKeepAliveEnabled.invoke(with:context:client:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v31 = type metadata accessor for SFClientAccessLevel();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_10034C850);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = a2;
    v15 = v14;
    v34 = v14;
    *v13 = 136315138;
    if (v33)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    v29 = v3;
    if (v33)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = v7;
    v19 = v9;
    v20 = sub_100017494(v16, v17, &v34);
    v3 = v29;

    *(v13 + 4) = v20;
    v9 = v19;
    v7 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "UserAlertAction invoked: %s", v13, 0xCu);
    sub_10000903C(v15);
  }

  if (IsAppleInternalBuild())
  {
    SFClientIdentity.accessLevel.getter();
    static SFClientAccessLevel.proximityHandoffInteractions.getter();
    v21 = v32;
    SFClientAccessLevel.verifyHasAccess(to:)();
    if (v21)
    {
      v22 = *(v3 + 8);
      v23 = v31;
      v22(v7, v31);
      return (v22)(v9, v23);
    }

    else
    {
      v26 = *(v3 + 8);
      v27 = v31;
      v26(v7, v31);
      v26(v9, v27);
      sub_100129354(v33 & 1);
      return VoidResponse.init()();
    }
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v25 = 0xD000000000000015;
    *(v25 + 8) = 0x80000001002A4EC0;
    *(v25 + 16) = 12;
    return swift_willThrow();
  }
}

uint64_t sub_1001EAF2C()
{
  v1 = *v0;
  sub_1001ED750(&qword_10034CA08, &type metadata accessor for PCProximityHandoffServiceInvocations.SetDaemonKeepAliveEnabled);
  return _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)();
}

uint64_t PCProximityHandoffServiceInvocations.UserAlertAction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = type metadata accessor for SFClientAccessLevel();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction.Parameters();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EB148, 0, 0);
}

uint64_t sub_1001EB148()
{
  v30 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v29);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "UserAlertAction invoked: %s", v14, 0xCu);
    sub_10000903C(v28);
  }

  else
  {
    v19 = v0[9];
    v20 = v0[10];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[7];
  v21 = v0[8];
  v23 = v0[5];
  v24 = v0[6];
  v25 = v0[4];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v0[13] = 0;
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  if (qword_1003392E8 != -1)
  {
    swift_once();
  }

  v0[14] = qword_10038B6D0;

  return (_swift_task_switch)(sub_1001EB470);
}

uint64_t sub_1001EB470()
{
  v2 = v0[13];
  v1 = v0[14];
  sub_1002518B8(v0[3]);
  if (v2)
  {
    v4 = v0[11];
    v3 = v0[12];
    v6 = v0[7];
    v5 = v0[8];

    v7 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001EB550, 0, 0);
}

uint64_t sub_1001EB550()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[2];
  VoidResponse.init()();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001EB5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_1001ED750(&qword_10034CA00, &type metadata accessor for PCProximityHandoffServiceInvocations.UserAlertAction);
  *v18 = v15;
  v18[1] = sub_1001EB718;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001EB718(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1001EB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10009D6D4;

  return PCProximityHandoffServiceInvocations.UserAlertAction.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFNearbySharingInteractionViewState();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for SFClientAccessLevel();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EBAC8, 0, 0);
}

uint64_t sub_1001EBAC8()
{
  v46 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v45);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "NearbySharingInteractionViewUpdate invoked: %s", v14, 0xCu);
    sub_10000903C(v44);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  v25 = v0[5];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  v27 = *(v0[4] + 32);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v0[10];
    v28 = v0[11];
    v31 = v0[8];
    v30 = v0[9];
    v32 = v0[6];
    v33 = v0[7];
    v34 = v0[3];
    SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.interactionID.getter();
    SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.viewState.getter();
    sub_10012008C(v28, v31);
    swift_unknownObjectRelease();
    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);
  }

  v35 = v0[18];
  v36 = v0[19];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[11];
  v40 = v0[8];
  v41 = v0[2];
  VoidResponse.init()();

  v42 = v0[1];

  return v42();
}

uint64_t sub_1001EBE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_1001ED750(&qword_10034C9F8, &type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate);
  *v18 = v15;
  v18[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001EBF90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SFProximityHandoff.Content.Action();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for SFProximityHandoff.Content();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for SFClientAccessLevel();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001EC238, 0, 0);
}

uint64_t sub_1001EC238()
{
  v46 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v45);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "PerformHandoffContentAction invoked: %s", v14, 0xCu);
    sub_10000903C(v44);
  }

  else
  {
    v19 = v0[16];
    v20 = v0[17];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];
  v25 = v0[5];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  v27 = *(v0[4] + 32);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v0[10];
    v28 = v0[11];
    v31 = v0[8];
    v30 = v0[9];
    v32 = v0[6];
    v33 = v0[7];
    v34 = v0[3];
    SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.content.getter();
    SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.action.getter();
    sub_100121010(v28, v31);
    swift_unknownObjectRelease();
    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);
  }

  v35 = v0[18];
  v36 = v0[19];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[11];
  v40 = v0[8];
  v41 = v0[2];
  VoidResponse.init()();

  v42 = v0[1];

  return v42();
}

uint64_t sub_1001EC5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_1001ED750(&qword_10034C9F0, &type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction);
  *v18 = v15;
  v18[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001EC700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.PerformHandoffContentAction.invoke(with:context:client:)(a1, a2, v8, a4);
}

uint64_t SFProximityHandoffInvocations.ProximityHandoffInteractions.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_100035D04(&qword_10034C868, &qword_10028C148);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_100035D04(&qword_10034C870, &qword_10028C150);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = sub_100035D04(&qword_10034C878, &qword_10028C158);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = sub_100035D04(&qword_10034C880, &qword_10028C160);
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = type metadata accessor for SFClientAccessLevel();
  v4[20] = v17;
  v18 = *(v17 - 8);
  v4[21] = v18;
  v19 = *(v18 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v20 = type metadata accessor for VoidParameters();
  v4[24] = v20;
  v21 = *(v20 - 8);
  v4[25] = v21;
  v22 = *(v21 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001ECA90, 0, 0);
}

uint64_t sub_1001ECA90()
{
  v49 = v0;
  if (qword_1003391B8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10034C850);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  if (v9)
  {
    v11 = v0[25];
    v12 = v0[26];
    v13 = v0[24];
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_100017494(v15, v17, &v48);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ProximityHandoffInteractions invoked: %s", v14, 0xCu);
    sub_10000903C(v46);
  }

  else
  {
    v19 = v0[24];
    v20 = v0[25];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[20];
  v24 = v0[21];
  v25 = v0[7];
  SFClientIdentity.accessLevel.getter();
  static SFClientAccessLevel.proximityHandoffInteractions.getter();
  SFClientAccessLevel.verifyHasAccess(to:)();
  v26 = *(v24 + 8);
  v26(v22, v23);
  v26(v21, v23);
  v43 = v0[27];
  v44 = v0[26];
  v45 = v0[23];
  v47 = v0[22];
  v41 = v0[17];
  v42 = v0[18];
  v33 = v0[16];
  v37 = v0[19];
  v38 = v0[15];
  v27 = v0[12];
  v28 = v0[13];
  v29 = v0[11];
  v34 = v0[9];
  v35 = v0[10];
  v36 = v0[8];
  v39 = v0[14];
  v40 = v0[4];
  v0[2] = *(*(v0[6] + 32) + 16);

  sub_100035D04(&qword_100346240, qword_10027D0D0);
  sub_100035D04(&qword_100339B30, &unk_1002704F0);
  sub_10000E244(&qword_100346248, &qword_100346240, qword_10027D0D0);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10034C888, &qword_10034C870, &qword_10028C150);
  v30 = Publisher.eraseToAnyPublisher()();

  (*(v27 + 8))(v28, v29);
  v0[3] = v30;
  sub_100035D04(&qword_10034C890, &qword_10028C168);
  sub_100035D04(&qword_10034C898, qword_10028C170);
  sub_10000E244(&qword_10034C8A0, &qword_10034C890, &qword_10028C168);
  Publisher.map<A>(_:)();

  *(swift_task_alloc() + 16) = v33;
  (*(v34 + 104))(v35, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v36);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v38 + 8))(v33, v39);
  sub_10000E244(&qword_10034C8A8, &qword_10034C880, &qword_10028C160);
  sub_1001ED4B8(&qword_10034C8B0, &qword_10034C8B8);
  sub_1001ED4B8(&qword_10034C8C0, &qword_10034C8C8);
  AsyncSequence<>.xpc.getter();
  (*(v42 + 8))(v37, v41);

  v31 = v0[1];

  return v31();
}

uint64_t sub_1001ED11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = async function pointer to _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)[1];
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = sub_1001ED750(&qword_10034C9E8, &type metadata accessor for SFProximityHandoffInvocations.ProximityHandoffInteractions);
  *v18 = v15;
  v18[1] = sub_1001ED928;

  return _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1001ED250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000E6584;

  return SFProximityHandoffInvocations.ProximityHandoffInteractions.invoke(with:context:client:)(a1, a2, v8, a4);
}

void *sub_1001ED308(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001ED37C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001ED3AC(void *a1)
{
  v2 = sub_100035D04(&qword_10034CA28, &qword_10028C4F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v8 - v5;
  v8[1] = *a1;

  sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1001ED4B8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_10034C898, qword_10028C170);
    sub_1001ED750(a2, &type metadata accessor for SFProximityHandoff.Interaction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001ED750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001ED798(char *a1)
{
  v2 = *(*(sub_100035D04(&qword_10034CA18, &qword_10028C4F0) - 8) + 80);
  v3 = *a1;

  return sub_1001E97BC(v3);
}

uint64_t sub_1001ED814()
{
  v1 = sub_100035D04(&qword_10034CA18, &qword_10028C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001ED8A8(void *a1)
{
  v2 = *(*(sub_100035D04(&qword_10034CA18, &qword_10028C4F0) - 8) + 80);

  return sub_1001ED3AC(a1);
}

uint64_t sub_1001EDFCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1001EE04C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001EE0C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    return UUID.uuidString.getter();
  }

  v0 = [v3 effectiveIdentifier];

  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v1;
}

Swift::Int sub_1001EEA5C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EEB00()
{
  v1 = *v0;
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001EEB8C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  type metadata accessor for UUID();
  sub_1001EEC94(&qword_100339848, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EEC2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

uint64_t sub_1001EEC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001EEFB8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034CA38);
  sub_100003078(v0, qword_10034CA38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001EF03C()
{
  v1 = sub_100035D04(&qword_10034CCA8, &qword_10028C7A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v34 - v4;
  v6 = sub_100035D04(&qword_10034CCB0, &qword_10028C7A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v11 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_100035D04(&qword_10034CCC8, qword_10028C7C8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v21 = &v34 - v20;
  if (*(v0 + 64))
  {
    v22 = *(v0 + 64);
  }

  else
  {
    v41 = v18;
    v42 = v19;
    v40 = v21;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002725A0;
    v35 = v1;
    v43 = *(v0 + 40);

    v39 = v12;
    v36 = v2;
    sub_100035D04(&qword_10034CC68, &qword_10028C770);
    v37 = v15;
    v38 = v11;
    sub_10000E244(&qword_10034CCF0, &qword_10034CC68, &qword_10028C770);
    v23 = v0;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CCF8, &qword_10034CCB0, &qword_10028C7A8);
    v24 = Publisher.eraseToAnyPublisher()();

    (*(v7 + 8))(v10, v6);
    v25 = v34;
    *(v34 + 32) = v24;
    v43 = *(v23 + 48);

    sub_100035D04(&qword_10034CC70, &qword_10028C778);
    sub_10000E244(&qword_10034CD00, &qword_10034CC70, &qword_10028C778);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD08, &qword_10034CCA8, &qword_10028C7A0);
    v26 = v35;
    v27 = Publisher.eraseToAnyPublisher()();

    (*(v36 + 8))(v5, v26);
    *(v25 + 40) = v27;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
    v28 = v37;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for DeviceActivity();
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0);
    v29 = v40;
    v30 = v38;
    Publisher.compactMap<A>(_:)();

    (*(v39 + 8))(v28, v30);
    sub_10000E244(qword_10034CD20, &qword_10034CCC8, qword_10028C7C8);
    v31 = v41;
    v22 = Publisher.eraseToAnyPublisher()();
    (*(v42 + 8))(v29, v31);
    v32 = *(v23 + 64);
    *(v23 + 64) = v22;
  }

  return v22;
}

uint64_t sub_1001EF664()
{
  v1 = sub_100035D04(&qword_10034CCA0, &qword_10028C798);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v52 - v4;
  v6 = sub_100035D04(&qword_10034CCA8, &qword_10028C7A0);
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v65 = &v52 - v8;
  v9 = sub_100035D04(&qword_10034CCB0, &qword_10028C7A8);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  __chkstk_darwin(v9);
  v62 = &v52 - v11;
  v12 = sub_100035D04(&qword_10034CCB8, &qword_10028C7B0);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_100035D04(&qword_10034CCC0, &qword_10028C7B8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  v21 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  __chkstk_darwin(v21);
  v68 = &v52 - v23;
  v24 = sub_100035D04(&qword_10034CCC8, qword_10028C7C8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v29 = &v52 - v28;
  if (v0[9])
  {
    v30 = v0[9];
  }

  else
  {
    v59 = v26;
    v60 = v27;
    v58 = v29;
    sub_100035D04(&qword_10034A390, &qword_100287650);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100274B30;
    v54 = v5;
    v70 = v0[3];

    v56 = v2;
    v57 = v21;
    sub_100035D04(&qword_10034CC58, &qword_10028C760);
    v55 = v1;
    sub_10000E244(&qword_10034CCD0, &qword_10034CC58, &qword_10028C760);
    Publisher.map<A>(_:)();
    v52 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000E244(&qword_10034CCD8, &qword_10034CCC0, &qword_10028C7B8);
    v31 = Publisher.eraseToAnyPublisher()();

    (*(v17 + 8))(v20, v16);
    v32 = v53;
    *(v53 + 32) = v31;
    v33 = v0;
    v70 = v0[4];

    sub_100035D04(&qword_10034CC60, &qword_10028C768);
    sub_10000E244(&qword_10034CCE0, &qword_10034CC60, &qword_10028C768);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CCE8, &qword_10034CCB8, &qword_10028C7B0);
    v34 = Publisher.eraseToAnyPublisher()();

    (*(v61 + 8))(v15, v12);
    v32[5] = v34;
    v35 = v32;
    v70 = v0[5];

    sub_100035D04(&qword_10034CC68, &qword_10028C770);
    sub_10000E244(&qword_10034CCF0, &qword_10034CC68, &qword_10028C770);
    v36 = v62;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CCF8, &qword_10034CCB0, &qword_10028C7A8);
    v37 = v64;
    v38 = Publisher.eraseToAnyPublisher()();

    (*(v63 + 8))(v36, v37);
    v35[6] = v38;
    v70 = v0[6];

    sub_100035D04(&qword_10034CC70, &qword_10028C778);
    sub_10000E244(&qword_10034CD00, &qword_10034CC70, &qword_10028C778);
    v39 = v65;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD08, &qword_10034CCA8, &qword_10028C7A0);
    v40 = v67;
    v41 = Publisher.eraseToAnyPublisher()();

    (*(v66 + 8))(v39, v40);
    v35[7] = v41;
    v70 = v0[7];

    sub_100035D04(&qword_10034CC78, &qword_10028C780);
    sub_10000E244(&qword_10034CD10, &qword_10034CC78, &qword_10028C780);
    v42 = v54;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10034CD18, &qword_10034CCA0, &qword_10028C798);
    v43 = v55;
    v44 = v42;
    v45 = Publisher.eraseToAnyPublisher()();

    (*(v56 + 8))(v44, v43);
    v35[8] = v45;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
    v46 = v68;
    Publishers.MergeMany.init(_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for DeviceActivity();
    sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0);
    v47 = v57;
    v48 = v58;
    Publisher.compactMap<A>(_:)();

    (*(v69 + 8))(v46, v47);
    sub_10000E244(qword_10034CD20, &qword_10034CCC8, qword_10028C7C8);
    v49 = v59;
    v30 = Publisher.eraseToAnyPublisher()();
    (*(v60 + 8))(v48, v49);
    v50 = v0[9];
    v33[9] = v30;
  }

  return v30;
}

uint64_t sub_1001F00B0()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 24);

  CurrentValueSubject.value.getter();
  v4 = v39;
  if (v39 == 1)
  {
    v5 = *(v2 + 16);
    CurrentValueSubject.value.getter();

    v4 = v40;
  }

  else
  {
  }

  v41[4] = v4;
  v6 = v1[4];
  v7 = *(v6 + 24);

  CurrentValueSubject.value.getter();
  v8 = v39;
  if (v39 == 1)
  {
    v9 = *(v6 + 16);
    CurrentValueSubject.value.getter();

    v8 = v40;
  }

  else
  {
  }

  v41[5] = v8;
  v10 = v1[5];
  v11 = *(v10 + 24);

  CurrentValueSubject.value.getter();
  v12 = v39;
  if (v39 != 1)
  {

    if (!v39)
    {
      goto LABEL_12;
    }

LABEL_11:
    v14 = [v12 isVideo];

    if (v14)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v13 = *(v10 + 16);
  CurrentValueSubject.value.getter();

  v12 = v40;
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_12:
  v15 = v1[5];
  v16 = *(v15 + 24);

  CurrentValueSubject.value.getter();
  v17 = v39;
  if (v39 == 1)
  {
    v18 = *(v15 + 16);
    CurrentValueSubject.value.getter();

    v17 = v40;
    if (v40)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v39)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v41[6] = v17;
  v19 = v1[6];
  v20 = *(v19 + 24);

  CurrentValueSubject.value.getter();
  v21 = v39;
  if (v39 == 1)
  {
    v22 = *(v19 + 16);
    CurrentValueSubject.value.getter();

    v21 = v40;
  }

  else
  {
  }

  v41[7] = v21;
  v23 = v1[7];
  v24 = *(v23 + 24);

  CurrentValueSubject.value.getter();
  v25 = v39;
  if (v39 == 1)
  {
    v26 = *(v23 + 16);
    CurrentValueSubject.value.getter();

    v25 = v40;
  }

  else
  {
  }

  v27 = 0;
  v41[8] = v25;
LABEL_24:
  if (v27 <= 5)
  {
    v28 = 5;
  }

  else
  {
    v28 = v27;
  }

  while (1)
  {
    if (v27 == 5)
    {
      sub_100035D04(&qword_10034B4F0, &unk_10027C100);
      result = swift_arrayDestroy();
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_56;
      }

      v33 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_35;
      }

LABEL_57:

      return 0;
    }

    if (v28 == v27)
    {
      break;
    }

    v29 = &v41[v27++];
    if (v29[4])
    {
      v30 = v29[4];
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = _CocoaArrayWrapper.endIndex.getter();
  v33 = result;
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_35:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v33 != 1)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = _swiftEmptyArrayStorage[4];
    swift_unknownObjectRetain();
    if (v33 != 1)
    {
LABEL_38:
      v35 = 1;
      do
      {
        v36 = v34;
        v37 = v35;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v35 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if ((v37 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v37 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v34 = _swiftEmptyArrayStorage[v37 + 4];
            swift_unknownObjectRetain();
            v35 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_53;
            }
          }

          v38 = [v34 pcactivityType];
          if (v38 < [v36 pcactivityType])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v37;
          if (v35 == v33)
          {
            v34 = v36;
            goto LABEL_51;
          }
        }

        swift_unknownObjectRelease();
      }

      while (v35 != v33);
    }

LABEL_51:

    return v34;
  }

  __break(1u);
  return result;
}

void sub_1001F0504(void *a1)
{
  v2 = v1;
  v82 = type metadata accessor for Date();
  v4 = *(v82 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v82);
  v79 = (&v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v78 = &v76 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v76 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v76 - v14;
  __chkstk_darwin(v13);
  v17 = (&v76 - v16);
  if (qword_1003391C8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100003078(v18, qword_10034CA38);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v76 = v19;
    v77 = v4;
    v80 = v2;
    v81 = v17;
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100017494(0x6C41656C646E6168, 0xEF293A5F286D7261, aBlock);
    *(v23 + 12) = 2080;
    v24 = a1;
    v25 = v15;
    if (a1)
    {
      v83 = v20;
      sub_100003118(0, &qword_10034CC98, PCAlarmActivity_ptr);
      v26 = v20;
      v27 = String.init<A>(describing:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
      v27 = 7104878;
    }

    v30 = sub_100017494(v27, v29, aBlock);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: alarm=%s", v23, 0x16u);
    swift_arrayDestroy();

    v15 = v25;
    v2 = v80;
    v17 = v81;
    a1 = v24;
    v4 = v77;
  }

  else
  {
  }

  [v2[10] invalidate];
  v31 = v2[10];
  v2[10] = 0;

  if (!a1)
  {
    goto LABEL_15;
  }

  v32 = v20;
  v33 = [v32 fireDate];
  if (!v33)
  {

LABEL_15:
    v51 = v2[3];

    sub_1001C0E34(0);

    return;
  }

  v80 = a1;
  v34 = v33;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.advanced(by:)();
  Date.init()();
  LOBYTE(v34) = static Date.< infix(_:_:)();
  v35 = v12;
  v36 = v82;
  v77 = v4[1];
  (v77)(v35, v82);
  v37 = v4[2];
  if (v34)
  {
    v38 = v78;
    v37(v78, v15, v36);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v76 = v41;
      v42 = swift_slowAlloc();
      v81 = v17;
      v79 = v42;
      aBlock[0] = v42;
      *v41 = 136315138;
      sub_1001F1888(&qword_100345628, &type metadata accessor for Date);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v2;
      v45 = v15;
      v47 = v46;
      (v77)(v38, v36);
      v48 = sub_100017494(v43, v47, aBlock);
      v15 = v45;
      v2 = v44;

      v49 = v76;
      *(v76 + 1) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "alarmExposureDate is past - exposing alarm now(%s)", v49, 0xCu);
      sub_10000903C(v79);
      v17 = v81;

      v50 = v77;
    }

    else
    {

      v50 = v77;
      (v77)(v38, v36);
    }

    v63 = v2[3];
    v64 = v32;

    sub_1001C0E34(v80);

    v50(v15, v36);
    v50(v17, v36);
  }

  else
  {
    v52 = v79;
    v37(v79, v15, v36);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v78 = v55;
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v55 = 136315138;
      sub_1001F1888(&qword_100345628, &type metadata accessor for Date);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v2;
      v57 = v15;
      v58 = v17;
      v60 = v59;
      (v77)(v52, v36);
      v61 = sub_100017494(v56, v60, aBlock);
      v17 = v58;
      v15 = v57;
      v2 = v80;

      v62 = v78;
      *(v78 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "alarmExposureDate is future - scheduling exposure(%s)", v62, 0xCu);
      sub_10000903C(v81);
    }

    else
    {

      (v77)(v52, v36);
    }

    v65 = v2[3];

    sub_1001C0E34(0);

    v66 = swift_allocObject();
    *(v66 + 16) = v2;
    *(v66 + 24) = v32;
    v67 = objc_allocWithZone(NSTimer);
    v68 = v32;

    v69 = v15;
    isa = Date._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_1001F1874;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100002B88;
    aBlock[3] = &unk_100311B70;
    v71 = _Block_copy(aBlock);
    v72 = [v67 initWithFireDate:isa interval:0 repeats:v71 block:0.0];
    _Block_release(v71);

    v73 = [objc_opt_self() mainRunLoop];
    [v73 addTimer:v72 forMode:NSRunLoopCommonModes];

    v74 = v77;
    (v77)(v69, v36);
    v74(v17, v36);
    v75 = v2[10];
    v2[10] = v72;
  }
}

uint64_t sub_1001F0DD8(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v19 = qword_10038B5B8;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v13;
  v14[4] = a3;
  aBlock[4] = sub_1001F187C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100311BE8;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  v17 = a3;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1001F1888(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

uint64_t sub_1001F1124(void *a1, uint64_t a2, void *a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 80);
    *(Strong + 80) = 0;
  }

  if (qword_1003391C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034CA38);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Alarm is now within 24hrs - exposing now", v9, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 24);

    v12 = a3;
    sub_1001C0E34(a3);
  }

  return result;
}

unint64_t sub_1001F129C()
{
  v1 = v0;
  sub_100035D04(&qword_10034CC80, &qword_10028C788);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B30;
  *(inited + 32) = 0x6D72616C61;
  *(inited + 40) = 0xE500000000000000;
  v3 = v0[3];
  v4 = *(v3 + 24);

  CurrentValueSubject.value.getter();
  v5 = v31;
  if (v31 == 1)
  {
    v6 = *(v3 + 16);
    CurrentValueSubject.value.getter();

    v5 = v30;
  }

  else
  {
  }

  *(inited + 48) = v5;
  strcpy((inited + 56), "announcement");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v7 = v1[4];
  v8 = *(v7 + 24);

  CurrentValueSubject.value.getter();
  v9 = v31;
  if (v31 == 1)
  {
    v10 = *(v7 + 16);
    CurrentValueSubject.value.getter();

    v9 = v30;
  }

  else
  {
  }

  *(inited + 72) = v9;
  *(inited + 80) = 1819042147;
  *(inited + 88) = 0xE400000000000000;
  v11 = v1[5];
  v12 = *(v11 + 24);

  CurrentValueSubject.value.getter();
  v13 = v31;
  if (v31 == 1)
  {
    v14 = *(v11 + 16);
    CurrentValueSubject.value.getter();

    v13 = v30;
  }

  else
  {
  }

  *(inited + 96) = v13;
  *(inited + 104) = 0x616964656DLL;
  *(inited + 112) = 0xE500000000000000;
  v15 = v1[6];
  v16 = *(v15 + 24);

  CurrentValueSubject.value.getter();
  v17 = v31;
  if (v31 == 1)
  {
    v18 = *(v15 + 16);
    CurrentValueSubject.value.getter();

    v17 = v30;
  }

  else
  {
  }

  *(inited + 120) = v17;
  *(inited + 128) = 0x72656D6974;
  *(inited + 136) = 0xE500000000000000;
  v19 = v1[7];
  v20 = *(v19 + 24);

  CurrentValueSubject.value.getter();
  v21 = v31;
  if (v31 == 1)
  {
    v22 = *(v19 + 16);
    CurrentValueSubject.value.getter();

    v21 = v30;
  }

  else
  {
  }

  *(inited + 144) = v21;
  v23 = sub_10024CD24(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034CC88, &qword_10028C790);
  swift_arrayDestroy();
  sub_1001EECDC(v23);

  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  _StringGuts.grow(_:)(19);

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 62;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  return 0xD000000000000010;
}

uint64_t sub_1001F1618()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  return v0;
}

uint64_t sub_1001F1678()
{
  sub_1001F1618();

  return swift_deallocClassInstance();
}

void *sub_1001F16D0()
{
  v0[2] = 0;
  v1 = sub_100035D04(&qword_10034CC58, &qword_10028C760);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = sub_10002F554(0, 0, 0, 0, 0, 0);
  v4 = sub_100035D04(&qword_10034CC60, &qword_10028C768);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[4] = sub_10002F5D4(0, 0, 0, 0, 0, 0);
  v7 = sub_100035D04(&qword_10034CC68, &qword_10028C770);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[5] = sub_10002F654(0, 0, 0, 0, 0, 0);
  v10 = sub_100035D04(&qword_10034CC70, &qword_10028C778);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[6] = sub_10002F6D4(0, 0, 0, 0, 0, 0);
  v13 = sub_100035D04(&qword_10034CC78, &qword_10028C780);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[7] = sub_10002F754(0, 0, 0, 0, 0, 0);
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = 0;
  return v0;
}

uint64_t sub_1001F1888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F18D4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1001F1928(uint64_t a1)
{
  sub_100035CB8();
  if (v2 <= 0x3F)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    type metadata accessor for ClosedRange();
    if (v5 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        sub_1001F1DC4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001F19E8(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v7 + ((v7 + v6 + ((v7 + v6) & ~v6) + ((v6 + 8) & ~v6)) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v18 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1001F1B44(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + v8) & ~v8) + v9;
  v11 = ((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v15 = 0;
    v16 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a3 - v7;
    if (((v9 + ((((v8 + 8) | v8) + v10) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v15)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if ((v6 & 0x80000000) != 0)
        {
          v21 = ((a1 + v8 + 8) & ~v8);
          if (v6 >= a2)
          {
            v25 = *(v5 + 56);
            v26 = (a1 + v8 + 8) & ~v8;

            v25(v26);
          }

          else
          {
            if (v10 <= 3)
            {
              v22 = ~(-1 << (8 * v10));
            }

            else
            {
              v22 = -1;
            }

            if (v10)
            {
              v23 = v22 & (~v6 + a2);
              if (v10 <= 3)
              {
                v24 = v10;
              }

              else
              {
                v24 = 4;
              }

              bzero(v21, v10);
              if (v24 > 2)
              {
                if (v24 == 3)
                {
                  *v21 = v23;
                  v21[2] = BYTE2(v23);
                }

                else
                {
                  *v21 = v23;
                }
              }

              else if (v24 == 1)
              {
                *v21 = v23;
              }

              else
              {
                *v21 = v23;
              }
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v20 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v20 = a2 - 1;
          }

          *a1 = v20;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  if (v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = ~v7 + a2;
    v19 = a1;
    bzero(a1, v11);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v11) = v17;
    }

    else
    {
      *(a1 + v11) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v11) = v17;
  }
}

void sub_1001F1DC4()
{
  if (!qword_10034CDA8)
  {
    sub_100035D4C(&qword_10033EFE8, &unk_100275EA0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10034CDA8);
    }
  }
}

unint64_t sub_1001F1E3C()
{
  result = qword_10034CDB0;
  if (!qword_10034CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CDB0);
  }

  return result;
}

uint64_t sub_1001F1E90(uint64_t a1)
{
  v2 = _swiftEmptyDictionarySingleton;
  v41 = _swiftEmptyDictionarySingleton;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    sub_100051658(*(a1 + 48) + 40 * v13, v38);
    sub_1001F5060(*(a1 + 56) + 32 * v13, v39 + 8);
    v35 = v39[0];
    v36 = v39[1];
    v37 = v40;
    v33 = v38[0];
    v34 = v38[1];
    sub_1001F5060(&v35 + 8, &v28);
    if (*(&v29 + 1))
    {
      sub_1000516B4(&v28, v32);
      v30[0] = v35;
      v30[1] = v36;
      v31 = v37;
      v28 = v33;
      v29 = v34;
      sub_1000516B4(v32, v27);
      v14 = v2[2];
      if (v2[3] <= v14)
      {
        sub_100087490(v14 + 1, 1);
        v2 = v41;
      }

      result = AnyHashable._rawHashValue(seed:)(v2[5]);
      v15 = v2 + 8;
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~v2[(v17 >> 6) + 8]) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = v15[v18];
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~v2[(v17 >> 6) + 8])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = v2[6] + 40 * v19;
      v25 = v28;
      v26 = v29;
      *(v24 + 32) = *&v30[0];
      *v24 = v25;
      *(v24 + 16) = v26;
      sub_1000516B4(v27, (v2[7] + 32 * v19));
      ++v2[2];
      v10 = v30 + 8;
    }

    else
    {
      sub_1000097E8(&v33, &qword_10034CDC8, &qword_10028C938);
      v10 = &v28;
    }

    result = sub_1000097E8(v10, &unk_100339680, &qword_100278390);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1001F2568(void *a1)
{
  v2 = sub_100035D04(&qword_10034CEA0, &qword_10028CAB8);
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  __chkstk_darwin(v2);
  v74 = &v66 - v4;
  v5 = type metadata accessor for URL();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  __chkstk_darwin(v5);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_10034CEA8, &qword_10028CAC0);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  __chkstk_darwin(v8);
  v70 = &v66 - v10;
  v71 = sub_100035D04(&qword_10034CEB0, &qword_10028CAC8);
  v69 = *(v71 - 8);
  v11 = *(v69 + 64);
  __chkstk_darwin(v71);
  v68 = &v66 - v12;
  v13 = sub_100035D04(&qword_10034CEB8, &qword_10028CAD0);
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  __chkstk_darwin(v13);
  v83 = &v66 - v15;
  v82 = sub_100035D04(&qword_10034CEC0, &qword_10028CAD8);
  v67 = *(v82 - 8);
  v16 = *(v67 + 64);
  __chkstk_darwin(v82);
  v81 = &v66 - v17;
  v18 = type metadata accessor for UUID();
  v80 = *(v18 - 8);
  v19 = *(v80 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = type metadata accessor for LaunchAppRequest.Option();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_100035D04(&qword_10034CEC8, &qword_10028CAE0);
  v89 = *(v29 - 8);
  v90 = v29;
  v30 = *(v89 + 64);
  __chkstk_darwin(v29);
  v32 = &v66 - v31;
  v33 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001F5340();
  v88 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001F5394(v86, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v43 = v24;
    v44 = v22;
    v46 = v81;
    v45 = v82;
    v47 = v83;
    v48 = v84;
    v49 = v85;
    v50 = v18;
    if (EnumCaseMultiPayload)
    {
      v63 = v80;
      v64 = v44;
      (*(v80 + 32))(v44, v28, v50);
      v92 = 1;
      sub_1001F54F4();
      v65 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001F5600(&qword_1003437D8, &type metadata accessor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v48 + 8))(v47, v49);
      (*(v63 + 8))(v64, v50);
      return (*(v89 + 8))(v65, v90);
    }

    else
    {
      v51 = v80;
      (*(v80 + 32))(v43, v28, v18);
      v91 = 0;
      sub_1001F5548();
      v52 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1001F5600(&qword_1003437D8, &type metadata accessor for UUID);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v67 + 8))(v46, v45);
      (*(v51 + 8))(v43, v50);
      return (*(v89 + 8))(v52, v90);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v54 = *v28;
    v55 = v28[1];
    v93 = 2;
    sub_1001F54A0();
    v56 = v68;
    v57 = v90;
    v58 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v71;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v69 + 8))(v56, v59);
    return (*(v89 + 8))(v58, v57);
  }

  else
  {
    v35 = v87;
    if (EnumCaseMultiPayload == 3)
    {
      LODWORD(v86) = *(v28 + *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48));
      v37 = v75;
      v36 = v76;
      v38 = v79;
      (*(v75 + 32))(v79, v28, v76);
      v97 = 4;
      sub_1001F53F8();
      v39 = v74;
      v40 = v90;
      v41 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v96 = 0;
      sub_1001F5600(&qword_100348538, &type metadata accessor for URL);
      v42 = v78;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v35)
      {
        (*(v77 + 8))(v39, v42);
        (*(v37 + 8))(v38, v36);
      }

      else
      {
        v95 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v77 + 8))(v39, v42);
        (*(v37 + 8))(v79, v36);
      }

      return (*(v89 + 8))(v41, v40);
    }

    else
    {
      v94 = 3;
      sub_1001F544C();
      v60 = v70;
      v61 = v90;
      v62 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v72 + 8))(v60, v73);
      return (*(v89 + 8))(v62, v61);
    }
  }
}

void sub_1001F2F24()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LaunchAppRequest.Option();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5394(v0, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      v17 = 1;
    }

    else
    {
      (*(v7 + 32))(v10, v14, v6);
      v17 = 0;
    }

    Hasher._combine(_:)(v17);
    sub_1001F5600(&qword_100339848, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v18 = *v14;
    v19 = v14[1];
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v16 = *(v14 + *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48));
    (*(v2 + 32))(v5, v14, v1);
    Hasher._combine(_:)(4uLL);
    sub_1001F5600(&qword_10034CF38, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(v16);
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    Hasher._combine(_:)(3uLL);
  }
}

uint64_t sub_1001F327C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = sub_100035D04(&qword_10034CF08, &qword_10028CAF0);
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v100 = &v79 - v6;
  v7 = sub_100035D04(&qword_10034CF10, &qword_10028CAF8);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  __chkstk_darwin(v7);
  v94 = &v79 - v9;
  v85 = sub_100035D04(&qword_10034CF18, &qword_10028CB00);
  v88 = *(v85 - 8);
  v10 = *(v88 + 64);
  __chkstk_darwin(v85);
  v99 = &v79 - v11;
  v87 = sub_100035D04(&qword_10034CF20, &qword_10028CB08);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  __chkstk_darwin(v87);
  v98 = &v79 - v13;
  v84 = sub_100035D04(&qword_10034CF28, &qword_10028CB10);
  v83 = *(v84 - 8);
  v14 = *(v83 + 64);
  __chkstk_darwin(v84);
  v93 = &v79 - v15;
  v16 = sub_100035D04(&qword_10034CF30, &unk_10028CB18);
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = *(v96 + 64);
  __chkstk_darwin(v16);
  v19 = &v79 - v18;
  v95 = type metadata accessor for LaunchAppRequest.Option();
  v20 = *(*(v95 - 8) + 64);
  v21 = __chkstk_darwin(v95);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = (&v79 - v25);
  v27 = __chkstk_darwin(v24);
  v29 = &v79 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v79 - v31;
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v102 = a1;
  sub_10000EBC0(a1, v35);
  sub_1001F5340();
  v37 = v103;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    goto LABEL_10;
  }

  v79 = v26;
  v80 = v32;
  v81 = v29;
  v39 = v98;
  v38 = v99;
  v82 = v23;
  v41 = v100;
  v40 = v101;
  v103 = v34;
  v42 = v97;
  v43 = KeyedDecodingContainer.allKeys.getter();
  v44 = (2 * *(v43 + 16)) | 1;
  v104 = v43;
  v105 = v43 + 32;
  v106 = 0;
  v107 = v44;
  v45 = sub_100218020();
  if (v45 == 5 || v106 != v107 >> 1)
  {
    v49 = type metadata accessor for DecodingError();
    swift_allocError();
    v51 = v50;
    v52 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v51 = v95;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v49 - 8) + 104))(v51, enum case for DecodingError.typeMismatch(_:), v49);
    swift_willThrow();
    (*(v96 + 8))(v19, v42);
    swift_unknownObjectRelease();
LABEL_10:
    v53 = v102;
    return sub_10000903C(v53);
  }

  if (v45 <= 1u)
  {
    if (v45)
    {
      v108 = 1;
      sub_1001F54F4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v96;
      type metadata accessor for UUID();
      sub_1001F5600(&qword_1003437F0, &type metadata accessor for UUID);
      v67 = v87;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v86 + 8))(v39, v67);
      (*(v62 + 8))(v19, v42);
      swift_unknownObjectRelease();
      v74 = v81;
      swift_storeEnumTagMultiPayload();
      v63 = v103;
      sub_1001F559C(v74, v103);
    }

    else
    {
      v108 = 0;
      sub_1001F5548();
      v55 = v93;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v56 = v96;
      type metadata accessor for UUID();
      sub_1001F5600(&qword_1003437F0, &type metadata accessor for UUID);
      v65 = v80;
      v66 = v84;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v83 + 8))(v55, v66);
      (*(v56 + 8))(v19, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v63 = v103;
      sub_1001F559C(v65, v103);
    }

    v64 = v102;
    v46 = v40;
  }

  else
  {
    v46 = v40;
    if (v45 == 2)
    {
      v108 = 2;
      sub_1001F54A0();
      v57 = v38;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = v85;
      v68 = KeyedDecodingContainer.decode(_:forKey:)();
      v70 = v69;
      (*(v88 + 8))(v57, v58);
      (*(v96 + 8))(v19, v42);
      swift_unknownObjectRelease();
      v71 = v79;
      *v79 = v68;
      *(v71 + 8) = v70;
      swift_storeEnumTagMultiPayload();
      v63 = v103;
      sub_1001F559C(v71, v103);
      v64 = v102;
      v46 = v40;
    }

    else
    {
      if (v45 == 3)
      {
        v108 = 3;
        sub_1001F544C();
        v47 = v94;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v48 = v96;
        (*(v89 + 8))(v47, v90);
        (*(v48 + 8))(v19, v42);
        swift_unknownObjectRelease();
        v63 = v103;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v108 = 4;
        sub_1001F53F8();
        v59 = v41;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v60 = v96;
        type metadata accessor for URL();
        v108 = 0;
        sub_1001F5600(&qword_100348498, &type metadata accessor for URL);
        v61 = v91;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v108 = 1;
        v72 = KeyedDecodingContainer.decode(_:forKey:)();
        v73 = v92;
        v75 = v72;
        v76 = *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48);
        (*(v73 + 8))(v59, v61);
        (*(v60 + 8))(v19, v42);
        swift_unknownObjectRelease();
        v77 = v75 & 1;
        v78 = v82;
        v82[v76] = v77;
        swift_storeEnumTagMultiPayload();
        v63 = v103;
        sub_1001F559C(v78, v103);
        v46 = v101;
      }

      v64 = v102;
    }
  }

  sub_1001F559C(v63, v46);
  v53 = v64;
  return sub_10000903C(v53);
}

uint64_t sub_1001F3F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000)
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

uint64_t sub_1001F4004(uint64_t a1)
{
  v2 = sub_1001F5548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4040(uint64_t a1)
{
  v2 = sub_1001F5548();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001F407C()
{
  v1 = *v0;
  v2 = 0x55794D6563726F66;
  if (v1 != 3)
  {
    v2 = 7107189;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000024;
  }

  v3 = 0xD000000000000016;
  if (*v0)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001F4124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001F5CDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001F414C(uint64_t a1)
{
  v2 = sub_1001F5340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4188(uint64_t a1)
{
  v2 = sub_1001F5340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F41E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010029AF90 == a2)
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

uint64_t sub_1001F4274(uint64_t a1)
{
  v2 = sub_1001F54F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F42B0(uint64_t a1)
{
  v2 = sub_1001F54F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F42EC(uint64_t a1)
{
  v2 = sub_1001F544C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4328(uint64_t a1)
{
  v2 = sub_1001F544C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F4378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79654B726F66 && a2 == 0xE600000000000000)
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

uint64_t sub_1001F43FC(uint64_t a1)
{
  v2 = sub_1001F54A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F4438(uint64_t a1)
{
  v2 = sub_1001F54A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F4474()
{
  if (*v0)
  {
    result = 0x7469736E65537369;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1001F44AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001F4584(uint64_t a1)
{
  v2 = sub_1001F53F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F45C0(uint64_t a1)
{
  v2 = sub_1001F53F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1001F4630()
{
  Hasher.init(_seed:)();
  sub_1001F2F24();
  return Hasher._finalize()();
}

Swift::Int sub_1001F4674()
{
  Hasher.init(_seed:)();
  sub_1001F2F24();
  return Hasher._finalize()();
}

uint64_t sub_1001F46B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100035D04(&qword_10034CDB8, &unk_10028C920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  AnyHashable.init<A>(_:)();
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10019DEDC();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;

  if (v3)
  {
    sub_1000516C4(inited + 32);
    *(inited + 16) = 0;
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v9;
    *(inited + 80) = v11;
    AnyHashable.init<A>(_:)();
    if (a3)
    {
      v12 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
      v13 = a3;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      *(inited + 152) = 0;
      *(inited + 160) = 0;
    }

    *(inited + 144) = v13;
    *(inited + 168) = v12;

    AnyHashable.init<A>(_:)();
    v14 = *(v6 + 48);
    v15 = *(v6 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100035D04(&qword_100349CB0, &qword_1002855A8);
    sub_1001F49D8();
    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    *(inited + 240) = &type metadata for Data;
    *(inited + 216) = v16;
    *(inited + 224) = v18;
    v20 = sub_10024DBB0(inited);
    swift_setDeallocating();
    sub_100035D04(&qword_10034CDC0, &qword_10028C930);
    swift_arrayDestroy();
    inited = sub_1001F1E90(v20);
  }

  return inited;
}

unint64_t sub_1001F49D8()
{
  result = qword_100349D10;
  if (!qword_100349D10)
  {
    sub_100035D4C(&qword_100349CB0, &qword_1002855A8);
    sub_1001F5600(&qword_100349D18, type metadata accessor for LaunchAppRequest.Option);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100349D10);
  }

  return result;
}

uint64_t type metadata accessor for LaunchAppRequest.Option()
{
  result = qword_10034CE40;
  if (!qword_10034CE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001F4AD8(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for URL();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = type metadata accessor for LaunchAppRequest.Option();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v54 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = &v54 - v21;
  __chkstk_darwin(v20);
  v24 = &v54 - v23;
  v25 = sub_100035D04(&qword_10034CF40, &qword_10028CB28);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v54 - v28;
  v30 = (&v54 + *(v27 + 56) - v28);
  sub_1001F5394(v58, &v54 - v28);
  sub_1001F5394(v59, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = v57;
    if (EnumCaseMultiPayload)
    {
      sub_1001F5394(v29, v22);
      v49 = v5;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v42 + 8))(v22, v5);
        goto LABEL_24;
      }

      (*(v42 + 32))(v9, v30, v5);
      v41 = static UUID.== infix(_:_:)();
      v50 = *(v42 + 8);
      v50(v9, v49);
      v50(v22, v49);
    }

    else
    {
      sub_1001F5394(v29, v24);
      v43 = v5;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v42 + 8))(v24, v5);
        goto LABEL_24;
      }

      (*(v42 + 32))(v11, v30, v5);
      v41 = static UUID.== infix(_:_:)();
      v51 = *(v42 + 8);
      v51(v11, v43);
      v51(v24, v43);
    }

    sub_1001F5648(v29);
    return v41 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1001F5394(v29, v19);
    v45 = *v19;
    v44 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v45 == *v30 && v44 == v30[1])
      {
        v52 = v30[1];
      }

      else
      {
        v47 = v30[1];
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      sub_1001F5648(v29);
      v41 = 1;
      return v41 & 1;
    }

LABEL_24:
    sub_1000097E8(v29, &qword_10034CF40, &qword_10028CB28);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  sub_1001F5394(v29, v16);
  v32 = *(sub_100035D04(&qword_10034CED8, &qword_10028CAE8) + 48);
  v33 = v16[v32];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v55 + 8))(v16, v56);
    goto LABEL_24;
  }

  v34 = *(v30 + v32);
  v36 = v54;
  v35 = v55;
  v37 = v30;
  v38 = v56;
  (*(v55 + 32))(v54, v37, v56);
  v39 = static URL.== infix(_:_:)();
  v40 = *(v35 + 8);
  v40(v36, v38);
  v40(v16, v38);
  if ((v39 & 1) == 0)
  {
LABEL_16:
    sub_1001F5648(v29);
LABEL_25:
    v41 = 0;
    return v41 & 1;
  }

  sub_1001F5648(v29);
  v41 = v33 ^ v34 ^ 1;
  return v41 & 1;
}

uint64_t sub_1001F5060(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100339680, &qword_100278390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001F50D0()
{
  sub_1001F517C(319, &qword_10034CE50);
  if (v0 <= 0x3F)
  {
    sub_1001F517C(319, &qword_10034CE58);
    if (v1 <= 0x3F)
    {
      sub_1001F51C4();
      if (v2 <= 0x3F)
      {
        sub_1001F51F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1001F517C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for UUID();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *sub_1001F51C4()
{
  result = qword_10034CE60;
  if (!qword_10034CE60)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10034CE60);
  }

  return result;
}

void sub_1001F51F4()
{
  if (!qword_10034CE68)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10034CE68);
    }
  }
}

uint64_t sub_1001F5260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001F52A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001F5340()
{
  result = qword_10034CED0;
  if (!qword_10034CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CED0);
  }

  return result;
}

uint64_t sub_1001F5394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAppRequest.Option();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001F53F8()
{
  result = qword_10034CEE0;
  if (!qword_10034CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEE0);
  }

  return result;
}

unint64_t sub_1001F544C()
{
  result = qword_10034CEE8;
  if (!qword_10034CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEE8);
  }

  return result;
}

unint64_t sub_1001F54A0()
{
  result = qword_10034CEF0;
  if (!qword_10034CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEF0);
  }

  return result;
}

unint64_t sub_1001F54F4()
{
  result = qword_10034CEF8;
  if (!qword_10034CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CEF8);
  }

  return result;
}

unint64_t sub_1001F5548()
{
  result = qword_10034CF00;
  if (!qword_10034CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF00);
  }

  return result;
}

uint64_t sub_1001F559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAppRequest.Option();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F5600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F5648(uint64_t a1)
{
  v2 = type metadata accessor for LaunchAppRequest.Option();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001F5708()
{
  result = qword_10034CF48;
  if (!qword_10034CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF48);
  }

  return result;
}

unint64_t sub_1001F5760()
{
  result = qword_10034CF50;
  if (!qword_10034CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF50);
  }

  return result;
}

unint64_t sub_1001F57B8()
{
  result = qword_10034CF58;
  if (!qword_10034CF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF58);
  }

  return result;
}

unint64_t sub_1001F5810()
{
  result = qword_10034CF60;
  if (!qword_10034CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF60);
  }

  return result;
}

unint64_t sub_1001F5868()
{
  result = qword_10034CF68;
  if (!qword_10034CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF68);
  }

  return result;
}

unint64_t sub_1001F58C0()
{
  result = qword_10034CF70;
  if (!qword_10034CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF70);
  }

  return result;
}

unint64_t sub_1001F5918()
{
  result = qword_10034CF78;
  if (!qword_10034CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF78);
  }

  return result;
}

unint64_t sub_1001F5970()
{
  result = qword_10034CF80;
  if (!qword_10034CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF80);
  }

  return result;
}

unint64_t sub_1001F59C8()
{
  result = qword_10034CF88;
  if (!qword_10034CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF88);
  }

  return result;
}

unint64_t sub_1001F5A20()
{
  result = qword_10034CF90;
  if (!qword_10034CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF90);
  }

  return result;
}

unint64_t sub_1001F5A78()
{
  result = qword_10034CF98;
  if (!qword_10034CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CF98);
  }

  return result;
}

unint64_t sub_1001F5AD0()
{
  result = qword_10034CFA0;
  if (!qword_10034CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFA0);
  }

  return result;
}

unint64_t sub_1001F5B28()
{
  result = qword_10034CFA8;
  if (!qword_10034CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFA8);
  }

  return result;
}

unint64_t sub_1001F5B80()
{
  result = qword_10034CFB0;
  if (!qword_10034CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFB0);
  }

  return result;
}

unint64_t sub_1001F5BD8()
{
  result = qword_10034CFB8;
  if (!qword_10034CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFB8);
  }

  return result;
}

unint64_t sub_1001F5C30()
{
  result = qword_10034CFC0;
  if (!qword_10034CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFC0);
  }

  return result;
}

unint64_t sub_1001F5C88()
{
  result = qword_10034CFC8;
  if (!qword_10034CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFC8);
  }

  return result;
}

uint64_t sub_1001F5CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001002A51E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001002A5200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001002A5220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55794D6563726F66 && a2 == 0xEB00000000726573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1001F5E9C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034CFD0);
  sub_100003078(v0, qword_10034CFD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F5F1C()
{
  result = sub_1001F5F40();
  byte_10038B5A8 = result & 1;
  return result;
}

uint64_t sub_1001F5F40()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1504);
  v1 = sub_1000177F8();

  if (v1 == 2 || (v1 & 1) == 0)
  {
    DeviceClass = GestaltGetDeviceClass();
    v12 = DeviceClass;
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003078(v13, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v3, v14))
      {
        goto LABEL_36;
      }

      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 1) = v12;
      v6 = "Device class (%d) is communal";
LABEL_15:
      v7 = v14;
      v8 = v3;
      v9 = v15;
      v10 = 8;
      goto LABEL_16;
    }

    if ((DeviceClass - 4) >= 0xFFFFFFFD)
    {
      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100003078(v25, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v12;
        v24 = "Device class (%d) is handheld";
        goto LABEL_30;
      }
    }

    else
    {
      v17 = sub_1001235F8();
      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();

        v17 = v18;
      }

      v19 = v17;
      v20 = [v19 hasPrefix:@"Watch"];

      if (!v20)
      {
        if (qword_1003391D0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003078(v26, qword_10034CFD0);
        v3 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v3, v14))
        {
          goto LABEL_36;
        }

        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 1) = v12;
        v6 = "Device class (%d) is unsupported, defaulting to 'anchor'";
        goto LABEL_15;
      }

      if (qword_1003391D0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100003078(v21, qword_10034CFD0);
      v3 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = v12;
        v24 = "Device class (%d) is watch";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v3, v22, v24, v23, 8u);
        v16 = 0;
        goto LABEL_17;
      }
    }

    v16 = 0;
    goto LABEL_37;
  }

  if (qword_1003391D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034CFD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v3, v4))
  {
LABEL_36:
    v16 = 1;
    goto LABEL_37;
  }

  v5 = swift_slowAlloc();
  *v5 = 0;
  v6 = "Role=anchor via override";
  v7 = v4;
  v8 = v3;
  v9 = v5;
  v10 = 2;
LABEL_16:
  _os_log_impl(&_mh_execute_header, v8, v7, v6, v9, v10);
  v16 = 1;
LABEL_17:

LABEL_37:

  return v16;
}

uint64_t sub_1001F638C()
{
  if (*v0)
  {
    return 0x726F68636E61;
  }

  else
  {
    return 0x656C69626F6DLL;
  }
}

uint64_t sub_1001F63B8()
{
  if ([v0 service] == 3)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 activeConversationForCall:v0];

    if (v2 && (v3 = [v2 presentationContext], v4 = objc_msgSend(v3, "mode"), v3, v2, v4 <= 2))
    {
      return qword_10028D1C0[v4];
    }

    else
    {
      return 0;
    }
  }

  else if ([v0 isEndpointOnCurrentDevice])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_1001F64AC()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = qword_100339180;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_10038B4E8;
    v5 = sub_1001C5784(v2);
    v7 = v6;
    v8 = ~v6;

    if (v8)
    {
      if ((v7 & 1) == 0)
      {
        v11 = sub_1001F63B8();
        swift_unknownObjectRelease();
        sub_100036718(v5, v7);
        return v11;
      }

      v9 = [v5 presentationContext];
      v10 = [v9 mode];
      swift_unknownObjectRelease();
      sub_100036718(v5, v7);

      if (v10 < 3)
      {
        return qword_10028D1C0[v10];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return [v0 direction];
}

unint64_t sub_1001F6654()
{
  result = qword_10034CFE8;
  if (!qword_10034CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034CFE8);
  }

  return result;
}

uint64_t sub_1001F66B8(void *a1, int a2)
{
  v16 = a2;
  v3 = sub_100035D04(&qword_10034CFF0, &qword_10028D318);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = sub_100035D04(&qword_10034CFF8, &qword_10028D320);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001F6AA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001F6AF8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v17 = v16;
  sub_1001F6B4C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1001F68E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657461745364656CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1001F696C(uint64_t a1)
{
  v2 = sub_1001F6AA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F69A8(uint64_t a1)
{
  v2 = sub_1001F6AA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F69E4(uint64_t a1)
{
  v2 = sub_1001F6AF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F6A20(uint64_t a1)
{
  v2 = sub_1001F6AF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001F6A5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001F6BA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1001F6AA4()
{
  result = qword_10034D000;
  if (!qword_10034D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D000);
  }

  return result;
}

unint64_t sub_1001F6AF8()
{
  result = qword_10034D008;
  if (!qword_10034D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D008);
  }

  return result;
}

unint64_t sub_1001F6B4C()
{
  result = qword_10034D010;
  if (!qword_10034D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D010);
  }

  return result;
}

unint64_t sub_1001F6BA0(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_10034D018, &qword_10028D328);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_100035D04(&qword_10034D020, &unk_10028D330);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = a1[4];
  v12 = sub_10000EBC0(a1, a1[3]);
  sub_1001F6AA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v14 = v26;
  v13 = v27;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v28 = v15;
  v29 = v15 + 32;
  v30 = 0;
  v31 = v16;
  v17 = v10;
  if ((sub_100218014() & 1) != 0 || v30 != v31 >> 1)
  {
    v18 = v7;
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(sub_100035D04(&qword_10033EA78, &qword_100275A60) + 48);
    *v21 = &type metadata for FollowerOutput;
    v12 = v17;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v14 + 8))(v17, v18);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    sub_10000903C(a1);
    return v12;
  }

  sub_1001F6AF8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  sub_1001F6F28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v6, v3);
  (*(v14 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v12 = v32;
  sub_10000903C(v25);
  return v12;
}

unint64_t sub_1001F6F28()
{
  result = qword_10034D028;
  if (!qword_10034D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D028);
  }

  return result;
}

unint64_t sub_1001F6FA0()
{
  result = qword_10034D030;
  if (!qword_10034D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D030);
  }

  return result;
}

unint64_t sub_1001F6FF8()
{
  result = qword_10034D038;
  if (!qword_10034D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D038);
  }

  return result;
}

unint64_t sub_1001F7050()
{
  result = qword_10034D040;
  if (!qword_10034D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D040);
  }

  return result;
}

unint64_t sub_1001F70A8()
{
  result = qword_10034D048;
  if (!qword_10034D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D048);
  }

  return result;
}

unint64_t sub_1001F7100()
{
  result = qword_10034D050;
  if (!qword_10034D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D050);
  }

  return result;
}

unint64_t sub_1001F7158()
{
  result = qword_10034D058;
  if (!qword_10034D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D058);
  }

  return result;
}

uint64_t sub_1001F71AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1001F72D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1001F7480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1001F7510(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

unint64_t sub_1001F74BC()
{
  result = qword_10034D060;
  if (!qword_10034D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D060);
  }

  return result;
}

uint64_t sub_1001F7510(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465736F6C63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (a1 == 0x6165707041646964 && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0x646570706174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  if (a1 == 0x657070416C6C6977 && a2 == 0xEA00000000007261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  sub_10001369C();
  v6 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
  v7 = *(v6 + 16);
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = (v6 + 32 * v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];

  v13 = static String._fromSubstring(_:)();

  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    v14 = StringProtocol.contains<A>(_:)();

    if (v14)
    {
      return v13;
    }

LABEL_6:

    return 0;
  }

  return v13;
}

uint64_t sub_1001F7854()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v7 = v8(v6, v2);
    v9 = 1000000000 * *v6;
    if ((*v6 * 1000000000) >> 64 == v9 >> 63)
    {
      return v9 / 1000000;
    }

    __break(1u);
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v10 = *(v3 + 96);
    v3 += 96;
    v7 = v10(v6, v2);
    v9 = 1000000 * *v6;
    if ((*v6 * 1000000) >> 64 == v9 >> 63)
    {
      return v9 / 1000000;
    }

    __break(1u);
  }

  if (v7 != enum case for DispatchTimeInterval.microseconds(_:))
  {
    goto LABEL_10;
  }

  v11 = *(v3 + 96);
  v3 += 96;
  v7 = v11(v6, v2);
  v9 = 1000 * *v6;
  if ((*v6 * 1000) >> 64 == v9 >> 63)
  {
    return v9 / 1000000;
  }

  __break(1u);
LABEL_10:
  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    return v9 / 1000000;
  }

  if (v7 == enum case for DispatchTimeInterval.never(_:))
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    return v9 / 1000000;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001F7AD0()
{
  v9[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  v9[1] = _swiftEmptyArrayStorage;
  sub_1001F8B20(&qword_100339328, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_100179108(&qword_100339338, &qword_100339330, &unk_10026F070);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9[0]);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10038B5B0 = result;
  return result;
}

uint64_t sub_1001F7D30()
{
  v9[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v9[0]);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_100003118(0, &qword_10034D108, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.default.getter();
  v9[1] = &_swiftEmptyArrayStorage;
  sub_1001F8B20(&qword_10034D110, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100035D04(&qword_10034D118, &unk_10028D7A0);
  sub_100179108(&unk_10034D120, &qword_10034D118, &unk_10028D7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9[0]);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10038B5B8 = result;
  return result;
}

uint64_t sub_1001F7F94()
{
  type metadata accessor for WorkActor();
  v0 = swift_allocObject();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  result = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_10038B5C0 = v0;
  return result;
}

uint64_t sub_1001F801C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1001F8024()
{
  if (qword_1003391F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001F8080(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_1001F80B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == enum case for DispatchTimeInterval.seconds(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v8(v6, v2);
    result = 1000000000 * *v6;
    if ((*v6 * 1000000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    v9 = *(v3 + 96);
    v3 += 96;
    v9(v6, v2);
    result = 1000000 * *v6;
    if ((*v6 * 1000000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.microseconds(_:))
  {
    v10 = *(v3 + 96);
    v3 += 96;
    v10(v6, v2);
    result = 1000 * *v6;
    if ((*v6 * 1000) >> 64 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else if (result == enum case for DispatchTimeInterval.never(_:))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL static DispatchTimeInterval.< infix(_:_:)()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = enum case for DispatchTimeInterval.never(_:);
  v6 = v1[13];
  v6(v4, enum case for DispatchTimeInterval.never(_:), v0);
  v7 = static DispatchTimeInterval.== infix(_:_:)();
  v8 = v1[1];
  v8(v4, v0);
  if (v7)
  {
    return 0;
  }

  v6(v4, v5, v0);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v8(v4, v0);
  if (v10)
  {
    return 1;
  }

  v11 = sub_1001F80B8();
  return v11 < sub_1001F80B8();
}

BOOL sub_1001F84E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_1001F80B8();
  return v14 < sub_1001F80B8();
}

BOOL sub_1001F8658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_1001F80B8();
  return v14 >= sub_1001F80B8();
}

BOOL sub_1001F87CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_1001F80B8();
  return v14 >= sub_1001F80B8();
}

BOOL sub_1001F8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_1001F80B8();
  return v14 < sub_1001F80B8();
}

uint64_t sub_1001F8B20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1001F8B68()
{
  v1 = v0;
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D130);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136315138;
    _StringGuts.grow(_:)(24);

    aBlock = 0xD000000000000015;
    v32 = 0x80000001002A5450;
    String.append(_:)(v0[1]);
    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    v8 = sub_100017494(0xD000000000000015, 0x80000001002A5450, &v37);

    *(v5 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting player for %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  object = v0[2]._object;
  aBlock = 0;
  v10 = [object startAndReturnError:&aBlock];
  v11 = aBlock;
  if (v10)
  {
    countAndFlagsBits = v1[3]._countAndFlagsBits;
    aBlock = 0;
    v13 = v11;
    v14 = [countAndFlagsBits startAtTime:&aBlock error:0.0];
    v11 = aBlock;
    if (v14)
    {
      v35 = sub_1001F9C58;
      v36 = 0;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1001F9E70;
      v34 = &unk_100312420;
      v15 = _Block_copy(&aBlock);
      v16 = v11;
      [object notifyWhenPlayersFinished:v15];
      _Block_release(v15);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37 = v20;
        *v19 = 136315138;
        aBlock = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        aBlock = 0xD000000000000015;
        v32 = 0x80000001002A5450;
        String.append(_:)(v1[1]);
        v21._countAndFlagsBits = 62;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = sub_100017494(aBlock, v32, &v37);

        *(v19 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "Started player for %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      goto LABEL_11;
    }
  }

  v23 = v11;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v25 = 136315394;
    aBlock = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    aBlock = 0xD000000000000015;
    v32 = 0x80000001002A5450;
    String.append(_:)(v1[1]);
    v28._countAndFlagsBits = 62;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = sub_100017494(aBlock, v32, &v37);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2112;
    swift_errorRetain();
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v30;
    *v26 = v30;
    _os_log_impl(&_mh_execute_header, v17, v24, "### Failed to start haptics for %s: %@", v25, 0x16u);
    sub_1000030B0(v26);

    sub_10000903C(v27);

LABEL_11:

    return;
  }
}

uint64_t sub_1001F90F0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D130);
  sub_100003078(v0, qword_10034D130);
  return Logger.init(subsystem:category:)();
}

void *sub_1001F9170(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  v9 = a3;
  v10 = [v9 configurationDictionary];
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10011A414(v11);

  v12 = objc_allocWithZone(CHHapticEngine);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock = 0;
  v14 = [v12 initWithAudioSession:0 sessionIsShared:0 options:isa error:&aBlock];

  v15 = aBlock;
  if (v14)
  {
    v4[5] = v14;
    v16 = v14;
    v17 = v4[4];
    aBlock = 0;
    v18 = v15;
    v19 = [v16 createPlayerWithPattern:v17 error:&aBlock];
    v15 = aBlock;
    if (v19)
    {
      v20 = a1;
      v21 = v9;
      v4[6] = v19;
      v22 = v4[5];
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = v20;
      v24[4] = a2;
      v52 = sub_1001F9F40;
      v53 = v24;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_100018AB8;
      v51 = &unk_1003123D0;
      v25 = _Block_copy(&aBlock);
      v26 = v15;
      v27 = v22;

      [v27 setResetHandler:v25];
      _Block_release(v25);

      v28 = v4[5];
      v52 = sub_1001F9B04;
      v53 = 0;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_1001F9C04;
      v51 = &unk_1003123F8;
      v29 = _Block_copy(&aBlock);
      v30 = v28;
      [v30 setStoppedHandler:v29];
      _Block_release(v29);

      if (qword_1003391F8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100003078(v31, qword_10034D130);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Haptic engine setup successfully", v34, 2u);
      }

      return v4;
    }

    v47 = v16;
  }

  else
  {
    v47 = 0;
  }

  v35 = v15;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100003078(v36, qword_10034D130);

  swift_errorRetain();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v46 = v9;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v39 = 136315394;
    v42 = sub_100017494(a1, a2, &aBlock);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v43;
    *v40 = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "### Haptics for %s failed to initialize: %@", v39, 0x16u);
    sub_1000030B0(v40);
    v9 = v46;

    sub_10000903C(v41);
  }

  else
  {
  }

  swift_willThrow();
  v44 = v4[3];

  if (v47)
  {
  }

  swift_deallocPartialClassInstance();
  return v4;
}

void sub_1001F976C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034D130);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100017494(a2, a3, &v25);
      _os_log_impl(&_mh_execute_header, v8, v9, "Restarting haptic engine %s", v10, 0xCu);
      sub_10000903C(v11);
    }

    v12 = *(v6 + 40);
    v25 = 0;
    v13 = [v12 startAndReturnError:&v25];
    v14 = v25;
    if (v13)
    {

      v15 = v14;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100017494(a2, a3, &v25);
        _os_log_impl(&_mh_execute_header, v16, v17, "Restarted haptic engine %s", v18, 0xCu);
        sub_10000903C(v19);
      }

      goto LABEL_11;
    }

    v20 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v16, v21, "### Failed restarting haptic engine: %@", v22, 0xCu);
      sub_1000030B0(v23);

LABEL_11:

      return;
    }
  }
}

void sub_1001F9B04(uint64_t a1)
{
  if (qword_1003391F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D130);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Stopped haptic engine for (%ld)", v4, 0xCu);
  }
}

uint64_t sub_1001F9C04(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1001F9C58(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_10034D130);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "### Players finished with error: %@", v4, 0xCu);
      sub_1000030B0(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003391F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034D130);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Players finished", v10, 2u);
    }
  }

  return 1;
}

uint64_t sub_1001F9E70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

uint64_t sub_1001F9ECC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001F9F5C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D200);
  sub_100003078(v0, qword_10034D200);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F9FE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001FA054()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034D440, &qword_10028DA50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-v5];
  v7 = sub_100035D04(&qword_10034D448, &qword_10028DA58);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v10 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine__state;
  v16[15] = 0;
  Published.init(initialValue:)();
  (*(v3 + 32))(v1 + v10, v6, v2);
  v11 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  if (qword_100339200 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100003078(v12, qword_10034D200);
  (*(*(v12 - 8) + 16))(v1 + v11, v13, v12);
  sub_100035D04(&qword_1003425C0, &qword_100278430);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100274B70;
  *(v14 + 32) = _swiftEmptyArrayStorage;
  *(v14 + 40) = 1025;
  *(v14 + 48) = _swiftEmptyArrayStorage;
  *(v14 + 56) = 0;
  *(v14 + 64) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 72) = 0;
  *(v14 + 80) = _swiftEmptyArrayStorage;
  *(v14 + 88) = 514;
  *(v14 + 96) = _swiftEmptyArrayStorage;
  *(v14 + 104) = 1;
  *(v14 + 112) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 120) = 0;
  *(v14 + 128) = _swiftEmptyArrayStorage;
  *(v14 + 136) = 0;
  *(v14 + 144) = _swiftEmptyArrayStorage;
  *(v14 + 152) = 2;
  *(v14 + 160) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 168) = 0;
  *(v14 + 176) = _swiftEmptyArrayStorage;
  *(v14 + 184) = 256;
  *(v14 + 192) = _swiftEmptyArrayStorage;
  *(v14 + 200) = 2;
  *(v14 + 208) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 216) = 0;
  *(v14 + 224) = _swiftEmptyArrayStorage;
  *(v14 + 232) = 768;
  *(v14 + 240) = _swiftEmptyArrayStorage;
  *(v14 + 248) = 2;
  *(v14 + 256) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 264) = 0;
  *(v14 + 272) = _swiftEmptyArrayStorage;
  *(v14 + 280) = 1025;
  *(v14 + 288) = _swiftEmptyArrayStorage;
  *(v14 + 296) = 2;
  *(v14 + 304) = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  *(v14 + 312) = 0;
  *(v1 + 16) = v14;
  return v1;
}

uint64_t sub_1001FA2D4()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine__state;
  v4 = sub_100035D04(&qword_10034D440, &qword_10028DA50);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = OBJC_IVAR____TtC17proximitycontrold31ContextDeliveryModeStateMachine_log;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContextDeliveryModeStateMachine()
{
  result = qword_10034D248;
  if (!qword_10034D248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FA420()
{
  sub_1001FA508();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001FA508()
{
  if (!qword_10034D258)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10034D258);
    }
  }
}

unint64_t sub_1001FA578(uint64_t a1)
{
  result = sub_1001FA5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA5A0()
{
  result = qword_10034D350;
  if (!qword_10034D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D350);
  }

  return result;
}

uint64_t sub_1001FA5F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContextDeliveryModeStateMachine();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001FA638@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v5;
  return result;
}

uint64_t sub_1001FA6B8(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1001FA72C(uint64_t a1)
{
  result = sub_1001FA754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA754()
{
  result = qword_10034D358;
  if (!qword_10034D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D358);
  }

  return result;
}

unint64_t sub_1001FA7AC(uint64_t a1)
{
  result = sub_1001FA7D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA7D4()
{
  result = qword_10034D360;
  if (!qword_10034D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D360);
  }

  return result;
}

unint64_t sub_1001FA82C()
{
  result = qword_10034D368;
  if (!qword_10034D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D368);
  }

  return result;
}

unint64_t sub_1001FA884()
{
  result = qword_10034D370;
  if (!qword_10034D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D370);
  }

  return result;
}

unint64_t sub_1001FA8DC()
{
  result = qword_10034D378;
  if (!qword_10034D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D378);
  }

  return result;
}

unint64_t sub_1001FA93C(uint64_t a1)
{
  result = sub_1001FA964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001FA964()
{
  result = qword_100348678;
  if (!qword_100348678)
  {
    type metadata accessor for ContextDeliveryModeStateMachine();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100348678);
  }

  return result;
}

uint64_t sub_1001FA9BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1001FAA3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1001FAAB0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D450);
  sub_100003078(v0, qword_10034D450);
  return Logger.init(subsystem:category:)();
}

void sub_1001FAB30(Swift::UInt a1)
{
  if (qword_100339208 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D450);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000013, 0x80000001002A5530, v25);
    *(v5 + 12) = 2080;
    v6 = sub_1000C06B0(a1);
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = sub_100017494(v7, v9, v25);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: assetType=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v11 = sub_100063E3C(&v26, a1);
  swift_endAccess();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315138;
      v17 = sub_1000C06B0(a1);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100017494(v18, v20, v25);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Prewarming assetType: %s", v15, 0xCu);
      sub_10000903C(v16);
    }

    v22 = objc_opt_self();
    v23 = [v22 sharedInstance];
    [v23 prewarmBundleForAssetType:a1];

    v12 = [v22 sharedInstance];
    [v12 prewarmAlternateBundleForAssetType:a1];
  }

  else if (v14)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AssetType already prewarmed", v24, 2u);
  }
}

uint64_t sub_1001FAEBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1001FAF20(uint64_t a1)
{
  if (qword_100339210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D568);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_1000092A0();
    v11 = sub_100017494(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Executing Handoff with %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (*(v1 + 96))
  {
    v12 = 2;
LABEL_7:
    sub_1000F380C();
    swift_allocError();
    *v13 = v12;
    swift_willThrow();
    return;
  }

  sub_1001FB23C();
  if (!v2)
  {
    if (!*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive + 8))
    {
      v12 = 0;
      goto LABEL_7;
    }

    v14 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_mediaRouteIDActive);
    v15 = objc_allocWithZone(PCProximityEvent);

    v16 = String._bridgeToObjectiveC()();

    v17 = [v15 initWithType:1 mediaRemoteID:v16 info:0];

    [v17 setExpectsDisplayContext:1];
    sub_10001BD68(v17);
  }
}

uint64_t sub_1001FB174()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D568);
  v1 = sub_100003078(v0, qword_10034D568);
  if (qword_100338F88 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001FB23C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_10000DF0C();
  v2 = v1;

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_5:
    sub_1000F380C();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1001FB334()
{
  result = qword_10034D580;
  if (!qword_10034D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D580);
  }

  return result;
}

uint64_t sub_1001FB388(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return (_swift_task_switch)(sub_1001FB424, v5, v4);
}

uint64_t sub_1001FB424()
{
  v28 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10038B4D0);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A5560, v27);
    *(v9 + 12) = 2080;
    v11 = sub_1000092A0();
    v13 = sub_100017494(v11, v12, v27);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v8;
    *v10 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: device=%s, call=%@", v9, 0x20u);
    sub_1000030B0(v10);

    swift_arrayDestroy();
  }

  if ([*(v0 + 24) service] == 3)
  {
    v15 = [*(*(v0 + 32) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) activeConversationForCall:*(v0 + 24)];
    *(v0 + 80) = v15;
    if (v15)
    {
      v16 = v15;
      v17 = swift_task_alloc();
      *(v0 + 88) = v17;
      *v17 = v0;
      v17[1] = sub_1001FB970;
      v18 = *(v0 + 32);
      v19 = *(v0 + 16);

      return sub_1001FC6B8(v19, v16);
    }

    else
    {
      v24 = *(v0 + 40);

      sub_1001FD658();
      swift_allocError();
      *v25 = 6;
      *(v25 + 8) = 2;
      swift_willThrow();
      v26 = *(v0 + 8);

      return v26();
    }
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 64) = v21;
    *v21 = v0;
    v21[1] = sub_1001FB7D0;
    v22 = *(v0 + 32);
    v23 = *(v0 + 16);

    return sub_1001FBBE8(v23);
  }
}

uint64_t sub_1001FB7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1001FBB18;
  }

  else
  {
    v7 = sub_1001FB90C;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_1001FB90C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FB970()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1001FBB7C;
  }

  else
  {
    v7 = sub_1001FBAAC;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_1001FBAAC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001FBB18()
{
  v1 = v0[5];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1001FBB7C()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FBBE8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v7;
  v2[13] = v6;

  return (_swift_task_switch)(sub_1001FBCDC, v7, v6);
}

uint64_t sub_1001FBCDC()
{
  v57 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10038B4D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v56[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD00000000000001ALL, 0x80000001002A5580, v56);
    *(v6 + 12) = 2080;
    v7 = sub_1000092A0();
    v9 = sub_100017494(v7, v8, v56);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: device=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v0 + 56);
  sub_1001C62E0(*(v0 + 48));
  *(v0 + 112) = v11;
  if (!v11)
  {
    v18 = *(v0 + 88);

    sub_1001FD658();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 2;
    swift_willThrow();
LABEL_19:
    v26 = *(v0 + 80);

    v27 = *(v0 + 8);

    return v27();
  }

  v12 = v11;
  if (![v11 isHomePodFamily])
  {
    v20 = *(v0 + 88);

    v21 = [v12 deviceType];
    sub_1001FD658();
    swift_allocError();
    *v22 = v21;
    v23 = 1;
LABEL_17:
    *(v22 + 8) = v23;
    swift_willThrow();
LABEL_18:

    goto LABEL_19;
  }

  v13 = *(*(*(v0 + 56) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state) + 16);
  v14 = *(v13 + 24);

  CurrentValueSubject.value.getter();
  v15 = *(v0 + 40);
  if (v15 == 254)
  {
    v16 = *(v13 + 16);
    CurrentValueSubject.value.getter();

    v17 = *(v0 + 16);
    v15 = *(v0 + 24);
  }

  else
  {
    v17 = *(v0 + 32);
  }

  *(v0 + 120) = v17;
  *(v0 + 25) = v15;
  if (v15 == 255)
  {
    v25 = *(v0 + 88);
    goto LABEL_16;
  }

  if (v15)
  {
    v24 = *(v0 + 88);
    sub_100036718(v17, v15);
LABEL_16:

    sub_1001FD658();
    swift_allocError();
    *v22 = 0;
    v23 = 2;
    goto LABEL_17;
  }

  v29 = [v17 callStatus];
  if (v29 - 1 >= 2)
  {
    v32 = v29;
    v33 = *(v0 + 88);

    sub_1001FD658();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = 0;
    swift_willThrow();
    sub_100036718(v17, v15);
    goto LABEL_18;
  }

  if ([v17 isEndpointOnCurrentDevice])
  {
    v30 = v12;
    v31 = 1;
  }

  else
  {
    v35 = [*(*(v0 + 56) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) routeController];
    v36 = [v35 receiverRoute];

    v30 = v36;
    v31 = 2;
    if (!v30)
    {
      v54 = *(v0 + 88);

      sub_1001FD658();
      swift_allocError();
      *v55 = 2;
      *(v55 + 8) = 2;
      swift_willThrow();

      sub_100036718(v17, v15);
      goto LABEL_19;
    }
  }

  *(v0 + 128) = v30;
  v37 = v30;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v40 = 136315394;
    v43 = PCInteractionDirection.description.getter(v31);
    v45 = sub_100017494(v43, v44, v56);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v37;
    v46 = v37;
    _os_log_impl(&_mh_execute_header, v38, v39, "Handing off call in direction %s to route %@", v40, 0x16u);
    sub_1000030B0(v41);

    sub_10000903C(v42);
  }

  v47 = [*(*(v0 + 56) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) routeController];
  [v47 pickRoute:v37];

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = 2;
    _os_log_impl(&_mh_execute_header, v48, v49, "Scheduling success in %lds", v50, 0xCu);
  }

  v51 = *(v0 + 80);

  static Clock<>.continuous.getter();
  v52 = swift_task_alloc();
  *(v0 + 136) = v52;
  *v52 = v0;
  v52[1] = sub_1001FC3F8;
  v53 = *(v0 + 80);

  return sub_1001FD6AC(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001FC3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = sub_1001FC620;
  }

  else
  {
    v7 = sub_1001FC580;
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t sub_1001FC580()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 25);

  sub_100036718(v1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001FC620()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 25);

  sub_100036718(v1, v4);

  v5 = *(v0 + 144);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001FC6B8(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for UUID();
  v3[37] = v4;
  v5 = *(v4 - 8);
  v3[38] = v5;
  v6 = *(v5 + 64) + 15;
  v3[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[40] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[41] = v8;
  v3[42] = v7;

  return (_swift_task_switch)(sub_1001FC7B0, v8, v7);
}

uint64_t sub_1001FC7B0()
{
  v45 = v0;
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10038B4D0);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100017494(0xD00000000000002ALL, 0x80000001002A55C0, v44);
    *(v9 + 12) = 2080;
    v11 = sub_1000092A0();
    v13 = sub_100017494(v11, v12, v44);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v8;
    *v10 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: device=%s, conversation=%@", v9, 0x20u);
    sub_1000030B0(v10);

    swift_arrayDestroy();
  }

  v15 = *(v0 + 272);
  v16 = sub_1001CB464();
  *(v0 + 344) = v16;
  if (v16)
  {
    v17 = v16;
    v18 = [*(v0 + 280) presentationContext];
    v19 = [v18 mode];

    if (v19 == 2)
    {
      v20 = v0 + 16;
      v32 = *(v0 + 304);
      v31 = *(v0 + 312);
      v33 = *(v0 + 296);
      v34 = *(v0 + 280);
      v35 = [*(*(v0 + 288) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) neighborhoodActivityConduit];
      *(v0 + 376) = v35;
      v36 = [v34 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 384) = isa;
      (*(v32 + 8))(v31, v33);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 400;
      *(v0 + 24) = sub_1001FCF28;
      v38 = swift_continuation_init();
      *(v0 + 200) = sub_100035D04(&qword_10034D598, &unk_10028DC00);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1001FD20C;
      *(v0 + 168) = &unk_100312628;
      *(v0 + 176) = v38;
      [v35 pullConversation:isa fromTVDevice:v17 completion:v0 + 144];
      goto LABEL_11;
    }

    if (!v19)
    {
      v20 = v0 + 80;
      v22 = *(v0 + 304);
      v21 = *(v0 + 312);
      v23 = *(v0 + 296);
      v24 = *(v0 + 280);
      v25 = [*(*(v0 + 288) + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) neighborhoodActivityConduit];
      *(v0 + 352) = v25;
      v26 = [v24 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 360) = v27;
      (*(v22 + 8))(v21, v23);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 401;
      *(v0 + 88) = sub_1001FCD70;
      v28 = swift_continuation_init();
      *(v0 + 264) = sub_100035D04(&qword_10034D598, &unk_10028DC00);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1001FD20C;
      *(v0 + 232) = &unk_100312650;
      *(v0 + 240) = v28;
      [v25 handoffConversation:v27 toTVDevice:v17 completion:v0 + 208];
LABEL_11:

      return _swift_continuation_await(v20);
    }

    v39 = *(v0 + 320);

    sub_1001FD658();
    swift_allocError();
    *v40 = 3;
    *(v40 + 8) = 2;
    swift_willThrow();
  }

  else
  {
    v29 = *(v0 + 320);

    sub_1001FD658();
    swift_allocError();
    *v30 = 5;
    *(v30 + 8) = 2;
    swift_willThrow();
  }

  v41 = *(v0 + 312);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1001FCD70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 368) = v3;
  v4 = *(v1 + 336);
  v5 = *(v1 + 328);
  if (v3)
  {
    v6 = sub_1001FD0E0;
  }

  else
  {
    v6 = sub_1001FCEA0;
  }

  return (_swift_task_switch)(v6, v5, v4);
}

uint64_t sub_1001FCEA0()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[40];

  v5 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FCF28()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 392) = v3;
  v4 = *(v1 + 336);
  v5 = *(v1 + 328);
  if (v3)
  {
    v6 = sub_1001FD174;
  }

  else
  {
    v6 = sub_1001FD058;
  }

  return (_swift_task_switch)(v6, v5, v4);
}

uint64_t sub_1001FD058()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[40];

  v5 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FD0E0()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[40];

  swift_willThrow();

  v6 = v0[46];
  v7 = v0[39];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001FD174()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[43];
  v5 = v0[40];

  swift_willThrow();

  v6 = v0[49];
  v7 = v0[39];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001FD20C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000EBC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100035D04(&unk_100346020, &qword_100271A00);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_1001FD2D8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0;
      _StringGuts.grow(_:)(22);
      v2._countAndFlagsBits = 0xD000000000000014;
      v2._object = 0x80000001002A5630;
      String.append(_:)(v2);
      type metadata accessor for TURouteDeviceType(0);
      _print_unlocked<A, B>(_:_:)();
      return v9;
    }

    v5 = 0x6C6C6163206F4ELL;
    v6 = 0x7265766E6F436F6ELL;
    if (a1 != 6)
    {
      v6 = 0x66736E6172546F6ELL;
    }

    v7 = 0x6F7220656C617453;
    if (a1 != 4)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 5)
    {
      v6 = v7;
    }

    v8 = 0x6C61636F6C206F4ELL;
    if (a1 != 2)
    {
      v8 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6574756F72206F4ELL;
    }

    if (a1 > 1)
    {
      v5 = v8;
    }

    if (a1 <= 3)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if ((a1 & 0x100000000) == 0)
    {
      v3._countAndFlagsBits = TUCallStatus.description.getter(a1);
      v9 = 0xD000000000000010;
      String.append(_:)(v3);

      return v9;
    }

    return 0xD000000000000013;
  }
}

uint64_t TUCallStatus.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 1701602409;
      case 1:
        return 0x657669746361;
      case 2:
        return 1684825448;
    }

LABEL_13:
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 2629695;
  }

  if (a1 > 4)
  {
    if (a1 == 5 || a1 == 6)
    {
      return 0x656E6E6F63736964;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v1 = 1684956531;
  }

  else
  {
    v1 = 1735289202;
  }

  return v1 | 0x676E6900000000;
}

unint64_t sub_1001FD658()
{
  result = qword_10034D588;
  if (!qword_10034D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D588);
  }

  return result;
}

uint64_t sub_1001FD6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return (_swift_task_switch)(sub_1001FD7AC, 0, 0);
}

uint64_t sub_1001FD7AC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1001FDB64(&qword_100349618, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001FDB64(&qword_10034D590, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1001FD93C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1001FD93C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (!v0)
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001FDAF8, 0, 0);
}

uint64_t sub_1001FDAF8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1001FDB64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001FDBAC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1001FDBC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id sub_1001FDBF4()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = qword_10038B0B8;
  v1 = *(qword_10038B0B8 + 1416);
  sub_10005F4E4();

  v2 = v0[178];
  sub_10005F4E4();

  v3 = v0[179];
  sub_10005F4E4();

  v4 = v0[180];
  sub_10005F4E4();

  v9 = nullsub_1(v5, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v0[181];
  sub_10005F4E4();
  v18 = v17;

  v19 = objc_allocWithZone(FluidSpring);

  return [v19 initWithParameters:v9 retargetImpuse:{v11, v13, v15, v18}];
}

uint64_t sub_1001FDD90()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1001FDDF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 313))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001FDE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 313) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_1001FDF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1001FDF50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FDFA0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v6 = sub_100035D04(&qword_10034D688, &qword_10028DF70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001FE8CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    sub_1001FE974();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001FE12C()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1868983913;
  }
}

uint64_t sub_1001FE150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001FE22C(uint64_t a1)
{
  v2 = sub_1001FE8CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001FE268(uint64_t a1)
{
  v2 = sub_1001FE8CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001FE2A4(uint64_t a1)
{
  v2 = sub_1001FE414();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001FE2E0(uint64_t a1)
{
  v2 = sub_1001FE414();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001FE330()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_1001FE468(*(v0 + 16));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 656423463;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 39;
}

uint64_t sub_1001FE3C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001FE6DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1001FE414()
{
  result = qword_10034D668;
  if (!qword_10034D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D668);
  }

  return result;
}

unint64_t sub_1001FE468(char a1)
{
  result = 0x4979646165726C41;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 5:
      result = 0xD000000000000012;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 6:
      result = 0x6974696E49746F4ELL;
      break;
    case 7:
      result = 0x6F6974617265704FLL;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x7463657078656E55;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6E776F6E6B6E55;
      break;
    case 12:
      result = 0x726F707075736E55;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_1001FE5F8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001FEB9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001FE6DC(uint64_t *a1)
{
  v3 = sub_100035D04(&qword_10034D670, &qword_10028DF68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1001FE8CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[13] = 1;
    sub_1001FE920();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000903C(a1);
  return v8;
}

unint64_t sub_1001FE8CC()
{
  result = qword_10034D678;
  if (!qword_10034D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D678);
  }

  return result;
}

unint64_t sub_1001FE920()
{
  result = qword_10034D680;
  if (!qword_10034D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D680);
  }

  return result;
}

unint64_t sub_1001FE974()
{
  result = qword_10034D690;
  if (!qword_10034D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D690);
  }

  return result;
}

unint64_t sub_1001FE9EC()
{
  result = qword_10034D698;
  if (!qword_10034D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D698);
  }

  return result;
}

unint64_t sub_1001FEA44()
{
  result = qword_10034D6A0;
  if (!qword_10034D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6A0);
  }

  return result;
}

unint64_t sub_1001FEA9C()
{
  result = qword_10034D6A8;
  if (!qword_10034D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6A8);
  }

  return result;
}

unint64_t sub_1001FEAF4()
{
  result = qword_10034D6B0;
  if (!qword_10034D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6B0);
  }

  return result;
}

unint64_t sub_1001FEB48()
{
  result = qword_10034D6B8;
  if (!qword_10034D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034D6B8);
  }

  return result;
}

unint64_t sub_1001FEB9C(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_1001FEBAC(void (*a1)(void ***), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v16 = [Strong dispatchQueue], Strong, (v25 = v16) != 0))
  {
    v17 = swift_allocObject();
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = sub_100202B0C;
    v19[4] = v14;
    v33 = sub_1002028D0;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100018AB8;
    v32 = &unk_100312EE8;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    (*(v27 + 8))(v13, v26);
  }

  else
  {

    sub_10001618C();
    v23 = swift_allocError();
    *v24 = 0xD00000000000001CLL;
    *(v24 + 8) = 0x80000001002A57D0;
    *(v24 + 16) = 9;
    aBlock = v23;
    LOBYTE(v30) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1001FEFC4(void (*a1)(void ***), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong && (v16 = [Strong dispatchQueue], , (v24 = v16) != 0))
  {
    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_100202B0C;
    v18[4] = v14;
    v32 = sub_10020288C;
    v33 = v18;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100018AB8;
    v31 = &unk_100312DF8;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v26 + 8))(v13, v25);
  }

  else
  {

    sub_10001618C();
    v22 = swift_allocError();
    *v23 = 0xD00000000000001CLL;
    *(v23 + 8) = 0x80000001002A57D0;
    *(v23 + 16) = 9;
    aBlock = v22;
    LOBYTE(v29) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1001FF3E4(void (*a1)(void ***), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v16 = [Strong dispatchQueue], Strong, (v25 = v16) != 0))
  {
    v17 = swift_allocObject();
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = sub_100202B0C;
    v19[4] = v14;
    v33 = sub_100202848;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100018AB8;
    v32 = &unk_100312D08;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v25;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    (*(v27 + 8))(v13, v26);
  }

  else
  {

    sub_10001618C();
    v23 = swift_allocError();
    *v24 = 0xD00000000000001CLL;
    *(v24 + 8) = 0x80000001002A57D0;
    *(v24 + 16) = 9;
    aBlock = v23;
    LOBYTE(v30) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1001FF7FC(void (*a1)(void ***), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong && (v16 = [Strong dispatchQueue], , (v24 = v16) != 0))
  {
    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1002027B4;
    v18[4] = v14;
    v32 = sub_1002027B8;
    v33 = v18;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100018AB8;
    v31 = &unk_100312B50;
    v19 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_1002027FC(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    (*(v26 + 8))(v13, v25);
  }

  else
  {

    sub_10001618C();
    v22 = swift_allocError();
    *v23 = 0xD00000000000001CLL;
    *(v23 + 8) = 0x80000001002A57D0;
    *(v23 + 16) = 9;
    aBlock = v22;
    LOBYTE(v29) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1001FFC1C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1001FFC5C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10007E4B8(v16, v14);
    v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;
    v21[5] = a3;
    sub_10007E4B8(v14, v21 + v20);
    aBlock[4] = a5;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = a6;
    v22 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v22];
    _Block_release(v22);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v23 = 0x666C6573206C696ELL;
    *(v23 + 8) = 0xE800000000000000;
    *(v23 + 16) = 9;
    a2();
  }
}

uint64_t sub_1001FFED0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for Logger();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10007E4B8(v16, v14);
    v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a2;
    v21[5] = a3;
    sub_10007E4B8(v14, v21 + v20);
    aBlock[4] = a5;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100124498;
    aBlock[3] = a6;
    v22 = _Block_copy(aBlock);

    [v18 activateWithCompletion:v22];
    _Block_release(v22);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v24 = 0x666C6573206C696ELL;
    *(v24 + 8) = 0xE800000000000000;
    *(v24 + 16) = 9;
    a2();
  }
}

uint64_t sub_100200498(char a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v32 = a3;
  v33 = a8;
  v14 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  result = __chkstk_darwin(v18);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2)
    {
      result = (a2)(0);
    }

    goto LABEL_15;
  }

  sub_1000EF05C(a4, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    result = sub_1000097E8(v17, &unk_10033D8B0, &qword_100275520);
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(v19 + 32))(v23, v17, v18);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v26 = 136315394;
    *(v26 + 4) = sub_100017494(a5, a6, &v34);
    *(v26 + 12) = 2112;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
    }

    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v27;
    v28 = v30;
    *v30 = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s %@", v26, 0x16u);
    sub_1000097E8(v28, &qword_100339940, &unk_100272C50);

    sub_10000903C(v31);
  }

  result = (*(v19 + 8))(v23, v18);
  if (a2)
  {
LABEL_12:
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
    }

    a2();
  }

LABEL_15:
  if (a7)
  {
    return a7(result);
  }

  return result;
}

uint64_t sub_100200810(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v37 = a3;
  v38 = a8;
  v14 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  result = __chkstk_darwin(v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000EF05C(a4, v17);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      result = sub_1000097E8(v17, &unk_10033D8B0, &qword_100275520);
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    (*(v19 + 32))(v23, v17, v18);

    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v36 = v25;
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v26 = 136315394;
      *(v26 + 4) = sub_100017494(a5, a6, &v40);
      *(v26 + 12) = 2112;
      v39 = a1;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
      }

      else
      {
        swift_allocError();
        *v27 = a1;
      }

      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v28;
      v29 = v34;
      *v34 = v28;
      _os_log_impl(&_mh_execute_header, v24, v36, "%s %@", v26, 0x16u);
      sub_1000097E8(v29, &qword_100339940, &unk_100272C50);

      sub_10000903C(v35);
    }

    result = (*(v19 + 8))(v23, v18);
    if (a2)
    {
LABEL_13:
      v40 = a1;
      swift_errorRetain();
      sub_100035D04(&unk_100346020, &qword_100271A00);
      v30 = _getErrorEmbeddedNSError<A>(_:)();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = swift_allocError();
        *v32 = a1;
      }

      a2(v31);
    }
  }

  else if (a2)
  {
    result = (a2)(0);
  }

LABEL_17:
  if (a7)
  {
    return a7(result);
  }

  return result;
}

uint64_t sub_100200C10()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D6C0);
  sub_100003078(v0, qword_10034D6C0);
  return Logger.init(subsystem:category:)();
}

id sub_100200E6C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_invalidationHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_interruptionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment] = 0;
  v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] = 0;
  *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_tasks] = &_swiftEmptySetSingleton;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034D6C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HandoffFeature();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_100200FCC()
{
  v1 = v0;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D6C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HandoffFeature();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100201174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v84 = a2;
  v90 = a1;
  v4 = sub_100035D04(&qword_10034D730, &qword_10028E258);
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  __chkstk_darwin(v4);
  v87 = &v75 - v6;
  v7 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v92 = v10;
  v93 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v75 - v11;
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v82 = &v75 - v15;
  v16 = sub_100035D04(&qword_10034D738, &unk_10028E260);
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  __chkstk_darwin(v16);
  v91 = &v75 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100003078(v24, qword_10034D6C0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Activate", v28, 2u);
  }

  if ((v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_isActive] = 1;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v34 = qword_10038B5B8;
    *v23 = qword_10038B5B8;
    (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    (*(v20 + 8))(v23, v19);
    if ((v34 & 1) == 0)
    {
      __break(1u);
      return;
    }

    type metadata accessor for Stopwatch();
    v36 = swift_allocObject();
    v80 = v12;
    v81 = v36;
    *(v36 + 16) = 1;
    *(v36 + 24) = 0;
    *(v36 + 32) = 1;
    *(v36 + 40) = 0;
    *(v36 + 48) = 1;
    *(v36 + 24) = UpTicks()();
    *(v36 + 32) = 0;
    *(v36 + 16) = 0;
    v37 = type metadata accessor for HandoffEnvironment();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = sub_10014354C();
    v41 = *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment];
    *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment] = v40;
    v42 = v40;

    v43 = *(v42 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);
    v79 = v42;
    *(v43 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v94) = *(v43 + 24);
    CurrentValueSubject.send(_:)();

    swift_allocObject();
    swift_weakInit();
    v44 = sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = Future.init(_:)();
    v77 = v25;
    v94 = v47;
    v95 = *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_dispatchQueue];
    v48 = v95;
    v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v50 = v82;
    (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
    sub_100035CB8();
    v78 = v3;
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0);
    sub_1002027FC(&qword_10034B420, sub_100035CB8);
    v51 = v48;
    Publisher.receive<A>(on:options:)();
    sub_1000097E8(v50, &qword_10034C680, &qword_100270390);

    v52 = *(v24 - 8);
    v82 = *(v52 + 16);
    v53 = v80;
    (v82)(v80, v25, v24);
    v76 = *(v52 + 56);
    v76(v53, 0, 1, v24);
    v54 = v93;
    sub_1000EF05C(v53, v93);
    v55 = *(v83 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v81;
    *(v56 + 24) = xmmword_10027DE30;
    sub_10007E4B8(v54, v56 + ((v55 + 40) & ~v55));
    sub_10000E244(&qword_10034D740, &qword_10034D738, &unk_10028E260);
    swift_retain_n();
    v57 = v86;
    v58 = v87;
    v59 = v91;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10034D748, &qword_10034D730, &qword_10028E258);
    v60 = v89;
    v61 = Publisher.eraseToAnyPublisher()();
    v83 = v61;

    (*(v88 + 8))(v58, v60);
    v62 = v80;
    sub_1000097E8(v80, &unk_10033D8B0, &qword_100275520);
    (*(v85 + 8))(v59, v57);
    v63 = swift_allocObject();
    v64 = v77;
    v65 = v78;
    *(v63 + 16) = v78;
    (v82)(v62, v64, v24);
    v76(v62, 0, 1, v24);
    v94 = v61;
    v66 = v62;
    v67 = v93;
    sub_1000EF05C(v62, v93);
    v68 = (v55 + 32) & ~v55;
    v69 = (v92 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    v71 = v84;
    *(v70 + 16) = v90;
    *(v70 + 24) = v71;
    sub_10007E4B8(v67, v70 + v68);
    v72 = v70 + v69;
    strcpy((v70 + v69), "### Activate");
    *(v72 + 13) = 0;
    *(v72 + 14) = -5120;
    v73 = (v70 + ((v69 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v73 = sub_1002022A4;
    v73[1] = v63;
    v74 = v65;

    sub_100035D04(&qword_10034D750, qword_10028E270);
    sub_10000E244(&qword_10034D758, &qword_10034D750, qword_10028E270);
    Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v66, &unk_10033D8B0, &qword_100275520);

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    goto LABEL_14;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Environment already initialized - setting isEnabled to true", v31, 2u);
  }

  v32 = *&v3[OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment];
  if (v32)
  {
    v33 = *(v32 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);
    *(v33 + 24) = 1;

    sub_10005E50C();
    LOBYTE(v94) = *(v33 + 24);
    CurrentValueSubject.send(_:)();

LABEL_14:
  }
}

void sub_100201D80()
{
  v1 = v0;
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D6C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "invalidate()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffFeature_environment);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled);
    *(v7 + 24) = 0;

    sub_10005E50C();
    v8 = *(v7 + 24);
    CurrentValueSubject.send(_:)();
  }
}

uint64_t sub_100202220()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100200148(v2, v3, v4, v5);
}

uint64_t sub_1002022A8(uint64_t *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);
  v13 = *(v1 + v6 + 8);
  v14 = *a1;

  return sub_100200810(v14, v7, v8, v1 + v4, v10, v11, v12, v13);
}

void sub_1002026CC()
{
  if (qword_100339218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034D6C0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "activated()", v2, 2u);
  }
}

uint64_t sub_1002027FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100202914()
{
  v1 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100202A3C(uint64_t a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_10014B240(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100202B10(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &unk_10034D8B0;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_10000E244(&unk_10034D8C8, v3, &qword_10028E2D0);
      for (i = 0; i != v15; ++i)
      {
        sub_100035D04(v3, &qword_10028E2D0);
        v19 = v3;
        v20 = sub_100128B4C(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100003118(0, &qword_10033AE48, NSLayoutConstraint_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100202E08()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034D760);
  sub_100003078(v0, qword_10034D760);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100202E8C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject);
    sub_100035D04(&unk_10034D890, &unk_10027C0F0);
    sub_10000E244(&unk_1003450A0, &unk_10034D890, &unk_10027C0F0);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_100202F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v137 = &v110 - v6;
  v7 = sub_100035D04(&qword_10034D8D8, &qword_10028E2D8);
  v135 = *(v7 - 8);
  v136 = v7;
  v8 = *(v135 + 64);
  __chkstk_darwin(v7);
  v134 = &v110 - v9;
  v10 = type metadata accessor for Logger();
  v130 = *(v10 - 8);
  v11 = v130[8];
  __chkstk_darwin(v10);
  v122 = v12;
  v140 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100035D04(&unk_10034D8E0, &qword_10028E2E0);
  v125 = *(v126 - 8);
  v13 = *(v125 + 64);
  __chkstk_darwin(v126);
  v124 = &v110 - v14;
  v119 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  __chkstk_darwin(v119);
  v17 = &v110 - v16;
  v117 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v18 = *(v117 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v117);
  v21 = &v110 - v20;
  v123 = sub_100035D04(&qword_10034D8F8, &qword_10028E2E8);
  v121 = *(v123 - 8);
  v22 = *(v121 + 64);
  __chkstk_darwin(v123);
  v120 = &v110 - v23;
  v129 = sub_100035D04(&unk_10034D900, &unk_10028E2F0);
  v128 = *(v129 - 8);
  v24 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v110 - v25;
  v26 = sub_100035D04(&qword_100345030, &qword_10027C0E0);
  v132 = *(v26 - 8);
  v133 = v26;
  v27 = *(v132 + 64);
  __chkstk_darwin(v26);
  v131 = &v110 - v28;
  *&v1[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  *&v2[v29] = [objc_allocWithZone(UIImageView) init];
  v30 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  *&v2[v30] = [objc_allocWithZone(UIImageView) init];
  v31 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_hintViewControllerEventSubject;
  v32 = sub_100035D04(&unk_10034D890, &unk_10027C0F0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *&v2[v31] = PassthroughSubject.init()();
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___hintViewControllerEventPublisher] = 0;
  v35 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tapGestureRecognizer;
  *&v2[v35] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_tasks] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activeLayoutMode] = 1;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageViewHeight] = 0x4036000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageViewHeight] = 0x4036000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_heightOffsetMin] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_outsidePadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___viewConstraints] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___activityImageViewConstraints] = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland____lazy_storage___deviceImageViewConstraints] = 0;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v141 = v10;
  v139 = sub_100003078(v10, qword_10034D760);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Init", v38, 2u);
  }

  *&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] = a1;
  v39 = type metadata accessor for HintViewControllerDynamicIsland();
  v146.receiver = v2;
  v146.super_class = v39;

  v40 = objc_msgSendSuper2(&v146, "initWithNibName:bundle:", 0, 0);
  v41 = *(*(a1 + 16) + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v40;
  static Published.subscript.getter();

  v43 = sub_1000BDC5C();
  v45 = v44;

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v43;
  }

  v47 = sub_100131BD8(v46);
  v142 = 0x6C6C69662ELL;
  v143 = 0xE500000000000000;
  v144 = v47;
  v145 = v48;
  v144 = String.init<A>(_:)();
  v145 = v49;
  String.append<A>(contentsOf:)();
  v50 = String._bridgeToObjectiveC()();

  v51 = [objc_opt_self() systemImageNamed:v50];

  if (v51)
  {
    v52 = [objc_opt_self() configurationWithPointSize:4 weight:16.0];
    v53 = [v51 imageByApplyingSymbolConfiguration:v52];
  }

  else
  {
    v53 = 0;
  }

  v54 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView;
  v55 = *&v42[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_deviceImageView];
  v116 = v53;
  [v55 setImage:v53];
  [*&v42[v54] setContentMode:1];
  v56 = *&v42[v54];
  v57 = objc_opt_self();
  v58 = v56;
  v59 = [v57 whiteColor];
  [v58 setTintColor:v59];

  v60 = OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView;
  v61 = [*&v42[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView] layer];
  [v61 setCornerCurve:kCACornerCurveContinuous];

  v62 = [*&v42[v60] layer];
  [v62 setCornerRadius:4.0];

  v63 = [*&v42[v60] layer];
  [v63 setShouldRasterize:1];

  v64 = [*&v42[v60] layer];
  v65 = [objc_opt_self() mainScreen];
  [v65 scale];
  v67 = v66;

  [v64 setRasterizationScale:v67 + v67];
  [*&v42[v60] setClipsToBounds:1];
  v68 = *(*(*(a1 + 16) + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v69 = *&v42[v60];
  sub_1001F00B0();
  swift_unknownObjectRelease();
  v70 = *(*(*(a1 + 16) + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity);
  v71 = sub_1001F00B0();
  v115 = v42;
  if (v71)
  {
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = [v72 image];
    }

    else
    {
      v73 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0;
  }

  [v69 setImage:v73];

  v74 = *(a1 + 16);
  v114 = a1;
  v75 = *(*(v74 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v142 = sub_1001EF664();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v113 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
  Publisher.map<A>(_:)();

  v138 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380);
  v76 = v117;
  Publisher.removeDuplicates(by:)();
  sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510);
  v77 = v119;
  v78 = Publisher.eraseToAnyPublisher()();
  (*(v118 + 8))(v17, v77);
  (*(v18 + 8))(v21, v76);
  v142 = v78;
  v79 = *(*(a1 + 16) + 24);
  v144 = sub_100070630();
  v80 = sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  v118 = sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
  v81 = v120;
  v119 = v80;
  Publishers.CombineLatest.init(_:_:)();
  LOBYTE(v79) = static os_log_type_t.info.getter();
  v82 = v130;
  v117 = v130[2];
  v83 = v140;
  v84 = v141;
  (v117)(v140, v139, v141);
  v112 = *(v82 + 80);
  v85 = &v122[(v112 + 64) & ~v112];
  v86 = (v112 + 64) & ~v112;
  v111 = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1002043E4;
  *(v87 + 24) = 0;
  *(v87 + 32) = 0;
  *(v87 + 40) = 0xE000000000000000;
  *(v87 + 48) = 0;
  *(v87 + 56) = 0xE000000000000000;
  v122 = v82[4];
  (v122)(v87 + v86, v83, v84);
  v85[v87] = v79;
  sub_100035D04(&qword_10034B590, &qword_100289820);
  sub_10000E244(&qword_10034D950, &qword_10034D8F8, &qword_10028E2E8);
  v88 = v124;
  v89 = v123;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034D958, &unk_10034D8E0, &qword_10028E2E0);
  v90 = v126;
  v91 = Publisher.eraseToAnyPublisher()();
  (*(v125 + 8))(v88, v90);
  (*(v121 + 8))(v81, v89);
  v142 = v91;
  v92 = swift_allocObject();
  v93 = v115;
  swift_unknownObjectWeakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1002077E4;
  *(v94 + 24) = v92;
  v130 = v93;
  sub_100035D04(&qword_10034D960, qword_10028E348);
  sub_10000E244(&qword_10034D968, &qword_10034D960, qword_10028E348);
  v95 = v127;
  Publisher.map<A>(_:)();

  LOBYTE(v93) = static os_log_type_t.info.getter();
  v96 = v140;
  v97 = v141;
  (v117)(v140, v139, v141);
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  *(v98 + 32) = 0xD000000000000011;
  *(v98 + 40) = 0x80000001002A5BB0;
  *(v98 + 48) = 0;
  *(v98 + 56) = 0xE000000000000000;
  (v122)(v98 + v111, v96, v97);
  v85[v98] = v93;
  sub_10000E244(&qword_10034D970, &unk_10034D900, &unk_10028E2F0);
  v99 = v134;
  v100 = v129;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034D978, &qword_10034D8D8, &qword_10028E2D8);
  v101 = v136;
  v102 = Publisher.eraseToAnyPublisher()();
  (*(v135 + 8))(v99, v101);
  (*(v128 + 8))(v95, v100);
  v142 = v102;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v103 = static OS_dispatch_queue.main.getter();
  v144 = v103;
  v104 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v105 = v137;
  (*(*(v104 - 8) + 56))(v137, 1, 1, v104);
  sub_1000513CC();
  v106 = v131;
  Publisher.receive<A>(on:options:)();
  sub_100056CC4(v105);

  swift_allocObject();
  v107 = v130;
  swift_unknownObjectWeakInit();

  sub_10000E244(&qword_10034D980, &qword_100345030, &qword_10027C0E0);
  v108 = v133;
  Publisher<>.sink(receiveValue:)();

  (*(v132 + 8))(v106, v108);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v107;
}

void *sub_1002043F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    if (a2)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        v4 = result;
        swift_unknownObjectRetain();
        return v4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100204478(id *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_activityImageView);

    if (v1)
    {
      v1 = [v1 image];
    }

    [v4 setImage:v1];
  }
}

id sub_10020454C()
{
  v1 = v0;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034D760);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HintViewControllerDynamicIsland();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100204898(void *a1)
{
  v2 = v1;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D760);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD00000000000001FLL, 0x8000000100298670, v30);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = [a1 requestIdentifier];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  if (v11 == UUID.uuidString.getter() && v13 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_12:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 3uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_100204C6C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10034D760);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, v33);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100017494(v5, v7, v33);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s reason=%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v12 = [a1 requestIdentifier];
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = *(*&v3[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  if (v14 == UUID.uuidString.getter() && v16 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_15:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136315138;
        v24 = [a1 requestIdentifier];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v33[0] = v26;
        v33[1] = v28;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100017494(v29, v30, &v34);

        *(v22 + 4) = v31;
        _os_log_impl(&_mh_execute_header, oslog, v21, "### Unrecognized requestID %s", v22, 0xCu);
        sub_10000903C(v23);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 2);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1002050FC(void *a1)
{
  v2 = v1;
  if (qword_100339220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034D760);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000020, 0x8000000100298610, v30);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v9 = [a1 requestIdentifier];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *(*&v2[OBJC_IVAR____TtC17proximitycontrold31HintViewControllerDynamicIsland_viewModel] + 16) + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  if (v11 == UUID.uuidString.getter() && v13 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_12:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 2uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}