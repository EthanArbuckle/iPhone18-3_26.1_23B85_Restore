BOOL sub_1005B7594()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 integerForKey:v5];

  if (v6 >= 2)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984940);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315394;
      _s28VisionUnlockiOSUpsellManagerCMa();

      v12 = String.init<A>(describing:)();
      v14 = sub_10000C4E4(v12, v13, &v16);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Already dismissed %ld times, not showing upsell", v10, 0x16u);
      sub_10000C60C(v11);
    }
  }

  return v6 < 2;
}

uint64_t sub_1005B7770(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_1005B7794, v2, 0);
}

uint64_t sub_1005B7794()
{
  v21 = v0;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[12] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE8;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_1009A0C98;
    v5 = *(qword_1009A0C98 + 120);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v6 = 3;
      }

      else if (v5 == 3)
      {
        v6 = 9;
      }

      else
      {
        v6 = 17;
      }

LABEL_21:
      v15 = sub_1004FE068(v6);
      v16 = swift_task_alloc();
      v0[13] = v16;
      *v16 = v0;
      v16[1] = sub_1005B7B0C;

      return sub_100696394(v15);
    }

    if (*(qword_1009A0C98 + 120))
    {
      v6 = 5;
      goto LABEL_21;
    }

    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984940);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = *(v4 + 120);
      if (v12 <= 1)
      {
        if (*(v4 + 120))
        {
          v13 = 0xEE00656E6F68506BLL;
          v14 = 0x636F6C6E5563616DLL;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
        }
      }

      else if (v12 == 2)
      {
        v13 = 0xEC00000043737361;
        v14 = 0x6C436B636F6C6E75;
      }

      else if (v12 == 3)
      {
        v13 = 0xEF6B636F6C6E5565;
        v14 = 0x646F4D7473657567;
      }

      else
      {
        v13 = 0xEF534F696B636F6CLL;
        v14 = 0x6E556E6F69736976;
      }

      v18 = sub_10000C4E4(v14, v13, &v20);

      *(v10 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing SFAuthenticationType for pairingType of %s. This is a coding error, please file a radar", v10, 0xCu);
      sub_10000C60C(v11);
    }
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_1005B7B0C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1005B7C24, v3, 0);
}

void sub_1005B7C24()
{
  v1 = *(v0 + 112);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 112);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    sub_10002764C();
    Set.Iterator.init(_cocoa:)();
    v1 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);
    v10 = *(v0 + 112);

    v5 = 0;
  }

  v32 = v4;
  v33 = v3;
  v11 = (v4 + 64) >> 6;
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_30:
      v15 = 0;
      goto LABEL_31;
    }

    *(v0 + 64) = v16;
    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    swift_dynamicCast();
    v15 = *(v0 + 56);
    v14 = v6;
    if (!v15)
    {
      goto LABEL_31;
    }

LABEL_20:
    v34 = v14;
    v17 = [v15 uniqueID];
    if (!v17)
    {
      goto LABEL_10;
    }

    v18 = v17;
    v19 = v1;
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v21 && v24 == v20)
    {

      v1 = v19;
      v3 = v33;
LABEL_28:
      v29 = [v15 unlockEnabled];

      v6 = v34;
      if ((v29 & 1) == 0)
      {
        v15 = 1;
LABEL_31:
        v30 = *(v0 + 112);

        sub_100027D64();

        v31 = *(v0 + 8);

        v31(v15);
        return;
      }
    }

    else
    {
      v26 = *(v0 + 72);
      v27 = *(v0 + 80);
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v1 = v19;
      v3 = v33;
      if (v28)
      {
        goto LABEL_28;
      }

LABEL_10:

      v6 = v34;
    }
  }

  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_16:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      goto LABEL_30;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1005B7F0C()
{
  v1[5] = v0;
  v2 = type metadata accessor for AuthenticationSecurityRequest(0);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1005B7FA0, v0, 0);
}

uint64_t sub_1005B7FA0()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[8] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE8;
    v3 = v1;
    if (v2 != -1)
    {
      v19 = v3;
      swift_once();
      v3 = v19;
    }

    v4 = *(qword_1009A0C98 + 120);
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = (sub_1004FE8E0(3uLL) & 1) == 0;
        v6 = 2050;
        v7 = 2688;
      }

      else if (v4 == 3)
      {
        v5 = (sub_1004FE8E0(9uLL) & 1) == 0;
        v6 = 34816;
        v7 = 34818;
      }

      else
      {
        v5 = (sub_1004FE8E0(0x11uLL) & 1) == 0;
        v6 = 35552;
        v7 = 526338;
      }

      if (v5)
      {
        v16 = v6;
      }

      else
      {
        v16 = v7;
      }

      goto LABEL_25;
    }

    if (*(qword_1009A0C98 + 120))
    {
      sub_1004FE8E0(5uLL);
      v16 = 34816;
LABEL_25:
      v17 = v0[7];
      v18 = v17 + *(v0[6] + 20);
      Date.init()();
      *v17 = v16;

      return _swift_task_switch(sub_1005B821C, 0, 0);
    }

    v8 = v3;
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100984940);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not get pairing type for visionunlockios. This is a coding error. Check SDAuthenticationSession", v12, 2u);
    }
  }

  v13 = v0[7];

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_1005B821C()
{
  v1 = (v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
  swift_beginAccess();
  v2 = *sub_10002CDC0(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1005B82E4;
  v4 = v0[7];

  return sub_100351944(v4);
}

uint64_t sub_1005B82E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1005B8498;
  }

  else
  {
    v6 = sub_1005B8410;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B8410()
{
  v1 = *(v0 + 56);

  sub_1005C0A1C(v1, type metadata accessor for AuthenticationSecurityRequest);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_1005B8498()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984940);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[8];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got policy error %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  sub_1005C0A1C(v0[7], type metadata accessor for AuthenticationSecurityRequest);
  v11 = v0[7];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1005B8670()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  if (*(v0 + 144))
  {
    v5 = *(v0 + 144);

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v9 = sub_1002B281C(0, 0, v4, &unk_10080C5E0, v8);
  v10 = *(v0 + 144);
  *(v0 + 144) = v9;
}

uint64_t sub_1005B87E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005B88A8, 0, 0);
}

uint64_t sub_1005B88A8()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    static Task<>.checkCancellation()();
    v6 = v0[11];
    static Clock<>.continuous.getter();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1005B8A14;
    v8 = v0[11];

    return sub_10002ED10(0x43561A8829300000, 16, 0, 0, 1);
  }

  else
  {
    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1005B8A14()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_1005B8D08;
  }

  else
  {
    v5 = sub_1005B8B7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005B8B7C()
{
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984940);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissal timer fired", v4, 2u);
  }

  v5 = v0[8];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1005B8D74, Strong, 0);
  }

  else
  {
    v7 = v0[12];

    v8 = v0[11];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1005B8D08()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005B8D74()
{
  v1 = *(v0 + 120);
  sub_1005B8E50();

  return _swift_task_switch(sub_1005B8DE4, 0, 0);
}

uint64_t sub_1005B8DE4()
{
  v1 = v0[12];

  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void sub_1005B8E50()
{
  *(v0 + 120) = 0;
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();

    v2 = *(v0 + 144);
  }

  *(v0 + 144) = 0;

  v3 = [objc_opt_self() sharedManager];
  [v3 visionUnlockiOSRemoveAll];
}

void sub_1005B8F1C()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  swift_beginAccess();
  v6 = *(v0 + 112);

  v8 = sub_1002FB66C(v7);
  v10 = v9;

  if (v10)
  {
    v11 = [objc_opt_self() sharedTransport];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 idsDeviceForUniqueID:v13];

    if (v14)
    {
      if (qword_100973AE0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_100984940);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v29 = v19;
        *v18 = 136315138;
        v20 = sub_10000C4E4(v8, v10, &v29);

        *(v18 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Upsell notification tapped for visionOS unlock pairing. Registering %s", v18, 0xCu);
        sub_10000C60C(v19);
      }

      else
      {
      }

      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
      v27 = sub_1005BCE80(&qword_100984C00, v26, _s28VisionUnlockiOSUpsellManagerCMa);
      v28 = swift_allocObject();
      v28[2] = v1;
      v28[3] = v27;
      v28[4] = v1;
      v28[5] = v14;
      swift_retain_n();
      sub_1002B3098(0, 0, v5, &unk_10080C590, v28);

      return;
    }
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100984940);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring upsell notification action, no eligibleDevice", v24, 2u);
  }
}

uint64_t sub_1005B9304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_100005C04;

  return sub_1005BD238(a5, a4);
}

void sub_1005B93A0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52 - v5;
  sub_10028088C(&qword_100978508, &unk_1007FB610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8A60;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_36;
  }

  v8 = inited;
  *(inited + 32) = kCFUserNotificationAlertHeaderKey;
  v9 = 0x8000000100797790;
  v10 = kCFUserNotificationAlertHeaderKey;
  v11 = String._bridgeToObjectiveC()();
  v12 = SFLocalizedStringForKey();

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = (v8 + 40);
    *(v8 + 64) = &type metadata for String;
    if (v15)
    {
      *v16 = v13;
      v9 = v15;
      goto LABEL_7;
    }
  }

  else
  {
    v16 = (v8 + 40);
    *(v8 + 64) = &type metadata for String;
  }

  *v16 = 0xD000000000000021;
LABEL_7:
  *(v8 + 48) = v9;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v8 + 72) = kCFUserNotificationAlertMessageKey;
  v17 = 0x80000001007977C0;
  v18 = kCFUserNotificationAlertMessageKey;
  v19 = String._bridgeToObjectiveC()();
  v20 = SFLocalizedStringForKey();

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = (v8 + 80);
    *(v8 + 104) = &type metadata for String;
    if (v23)
    {
      *v24 = v21;
      v17 = v23;
      goto LABEL_13;
    }
  }

  else
  {
    v24 = (v8 + 80);
    *(v8 + 104) = &type metadata for String;
  }

  *v24 = 0xD000000000000020;
LABEL_13:
  *(v8 + 88) = v17;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v8 + 112) = kCFUserNotificationDefaultButtonTitleKey;
  v25 = kCFUserNotificationDefaultButtonTitleKey;
  v26 = String._bridgeToObjectiveC()();
  v27 = SFLocalizedStringForKey();

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = (v8 + 120);
    *(v8 + 144) = &type metadata for String;
    if (v30)
    {
      *v31 = v28;
      goto LABEL_19;
    }
  }

  else
  {
    v31 = (v8 + 120);
    *(v8 + 144) = &type metadata for String;
  }

  *v31 = 0x6961674120797254;
  v30 = 0xE90000000000006ELL;
LABEL_19:
  *(v8 + 128) = v30;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v8 + 152) = kCFUserNotificationAlternateButtonTitleKey;
  v32 = kCFUserNotificationAlternateButtonTitleKey;
  v33 = String._bridgeToObjectiveC()();
  v34 = SFLocalizedStringForKey();

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = (v8 + 160);
    *(v8 + 184) = &type metadata for String;
    if (v37)
    {
      *v38 = v35;
      goto LABEL_25;
    }
  }

  else
  {
    v38 = (v8 + 160);
    *(v8 + 184) = &type metadata for String;
  }

  *v38 = 0x6C65636E6143;
  v37 = 0xE600000000000000;
LABEL_25:
  *(v8 + 168) = v37;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v8 + 192) = kCFUserNotificationAlertTopMostKey;
  *(v8 + 224) = &type metadata for Bool;
  *(v8 + 200) = 1;
  v39 = SBUserNotificationForcesModalAlertAppearance;
  if (!SBUserNotificationForcesModalAlertAppearance)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  *(v8 + 232) = SBUserNotificationForcesModalAlertAppearance;
  *(v8 + 264) = &type metadata for Bool;
  *(v8 + 240) = 1;
  v40 = SBUserNotificationDisplayActionButtonOnLockScreen;
  if (!SBUserNotificationDisplayActionButtonOnLockScreen)
  {
    goto LABEL_41;
  }

  *(v8 + 272) = SBUserNotificationDisplayActionButtonOnLockScreen;
  *(v8 + 304) = &type metadata for Bool;
  *(v8 + 280) = 1;
  v41 = v40;
  v42 = v39;
  v43 = kCFUserNotificationAlertTopMostKey;
  sub_100281720(v8);
  swift_setDeallocating();
  sub_10028088C(&qword_100974638, &qword_1007FB620);
  swift_arrayDestroy();
  v53 = 0;
  type metadata accessor for CFString(0);
  sub_1005BCE80(&qword_100975630, 255, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &v53, isa);

  if (v45)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    CFUserNotificationReceiveResponse(v45, 0.0, (v46 + 16));
    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    sub_1002A9938(v52, v54);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v46;
    v48[5] = a1;
    sub_1002AF998(v54, (v48 + 6));

    sub_1002B3098(0, 0, v6, &unk_10080C5B8, v48);
  }

  else
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000C4AC(v49, qword_100984940);
    v45 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 67109120;
      swift_beginAccess();
      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v50, "Failed to show CFUserNotification. Error: %d", v51, 8u);
    }
  }
}

uint64_t sub_1005B9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1005B9A50, 0, 0);
}

uint64_t sub_1005B9A50()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16) & 3;
  if (v2 == 3)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100984940);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_19;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Cancel button tapped or notification timed out";
    goto LABEL_18;
  }

  if (!v2)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_100984940);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Retry button tapped", v6, 2u);
    }

    v7 = v0[7];

    v8 = v7[3];
    v9 = v7[4];
    v10 = sub_10002CDC0(v7, v8);
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_1005B9D50;
    v12 = v0[6];

    return sub_1005BEBC0(v10, v12, v8, v9);
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984940);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Unknown response";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
  }

LABEL_19:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1005B9D50()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1005B9E44()
{
  *(v0 + 120) = 0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 integerForKey:v5];

  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else if (qword_100973AE0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100984940);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_10000C4E4(v2, v1, &v15);
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating dismissal count for %s to %ld", v11, 0x16u);
    sub_10000C60C(v12);
  }

  v13 = [v3 standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  [v13 setInteger:v7 forKey:v14];
}

uint64_t sub_1005BA064()
{
  v1 = v0[14];

  v2 = v0[18];

  v3 = v0[20];

  v4 = v0[22];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005BA0D8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v23);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
  v28[4] = &off_1008EA2C0;
  v28[0] = a1;
  v12 = qword_100973AE0;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100984940);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "VisionUnlock setup failed, asking user to retry", v17, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1009A0C98 + 112);
  sub_1002A9938(v28, v27);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1002AF998(v27, v19 + 24);
  aBlock[4] = sub_1005BEAF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8C88;
  v20 = _Block_copy(aBlock);
  v21 = v18;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100976140, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v24 + 8))(v7, v4);
  (*(v8 + 8))(v11, v23);

  return sub_10000C60C(v28);
}

uint64_t sub_1005BA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v26);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a3;
  v31[4] = a4;
  v16 = sub_10002F604(v31);
  (*(*(a3 - 8) + 16))(v16, a1, a3);
  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100984940);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "VisionUnlock setup failed, asking user to retry", v20, 2u);
  }

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v21 = *(qword_1009A0C98 + 112);
  sub_1002A9938(v31, v30);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  sub_1002AF998(v30, v22 + 24);
  aBlock[4] = sub_1005C0A90;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8D78;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_1005BCE80(&qword_100976140, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_10044EDD8(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v27 + 8))(v11, v8);
  (*(v12 + 8))(v15, v26);

  return sub_10000C60C(v31);
}

uint64_t sub_1005BA908(uint64_t a1, uint64_t a2)
{
  if (qword_100973C50 != -1)
  {
    goto LABEL_36;
  }

  while (qword_1009A10A8)
  {
    v31 = a1;
    v32 = a2;
    v2 = qword_100973AE8;
    v3 = qword_1009A10A8;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_100695AC4(*(qword_1009A0C98 + 120), 5);
    v29 = v3;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
      sub_10002764C();
      a1 = Set.Iterator.init(_cocoa:)();
      v6 = v34;
      v30 = v35;
      v7 = v36;
      v8 = v37;
      v9 = v38;
    }

    else
    {
      v10 = -1 << *(v4 + 32);
      v30 = v4 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v4 + 56);

      v8 = 0;
      v6 = a1;
    }

    v13 = (v7 + 64) >> 6;
    while (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr), swift_dynamicCast(), v17 = v33, v16 = v9, !v33))
      {
LABEL_32:
        v26 = 0;
        v17 = v29;
        goto LABEL_34;
      }

LABEL_24:
      v18 = [v17 uniqueID];
      if (v18)
      {
        v19 = v18;
        v20 = v6;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == v31 && v23 == v32)
        {

          v26 = 1;
          goto LABEL_34;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v20;
        v9 = v16;
        if (v25)
        {
          v26 = 1;
          v17 = v29;
LABEL_34:

          sub_100027D64();

          return v26;
        }
      }

      else
      {

        v9 = v16;
      }
    }

    v14 = v8;
    v15 = v9;
    if (v9)
    {
LABEL_20:
      v16 = (v15 - 1) & v15;
      v17 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v17)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        v26 = 0;
        v17 = v29;
        goto LABEL_34;
      }

      v15 = *(v30 + 8 * v8);
      ++v14;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    v27 = a1;
    v28 = a2;
    swift_once();
    a1 = v27;
    a2 = v28;
  }

  return 0;
}

uint64_t sub_1005BAC70@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (a2 == 19)
  {
    v6 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    result = 0;
    v8 = 2;
  }

  else
  {
    if (a2 != 20)
    {
      _StringGuts.grow(_:)(32);

      v14._countAndFlagsBits = sub_100027340();
      String.append(_:)(v14);

      v15 = sub_100010F88(1, 0xD00000000000001ELL, 0x80000001007975C0);
      v17 = v16;
      sub_1000115C8();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      return swift_willThrow();
    }

    if (a1)
    {
      v25 = a3;
      v4 = [a1 bundleID];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }

      v19 = [a1 appName];
      if (v19)
      {
        v20 = v19;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v21;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v22 = [a1 acmContext];
      if (v22)
      {
        v23 = v22;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v24;
      }

      else
      {
        v11 = 0;
        v12 = 0xF000000000000000;
      }

      result = [a1 biometricOnly];
      a3 = v25;
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      result = 2;
      v12 = 0xF000000000000000;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = result;
  return result;
}

void sub_1005BAE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedManager];
  sub_1000116BC(a2, a3);
  v6 = String._bridgeToObjectiveC()();

  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8830;
  AnyHashable.init<A>(_:)();
  v8 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = a2;
  AnyHashable.init<A>(_:)();
  v10 = sub_1000116BC(a2, a3);
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v10;
  *(inited + 224) = v11;
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009832B0, &unk_1007F64D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 visionUnlockiOSPostFailureNotificationWithMessage:v6 userInfo:isa];
}

uint64_t sub_1005BB0A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 608) = a4;
  *(v4 + 744) = a3;
  *(v4 + 600) = a2;
  *(v4 + 592) = a1;
  v5 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v4 + 632) = v6;
  v7 = *(v6 - 8);
  *(v4 + 640) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 648) = swift_task_alloc();
  v9 = type metadata accessor for URLQueryItem();
  *(v4 + 656) = v9;
  v10 = *(v9 - 8);
  *(v4 + 664) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 672) = swift_task_alloc();

  return _swift_task_switch(sub_1005BB210, 0, 0);
}

uint64_t sub_1005BB210()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 744);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  _StringGuts.grow(_:)(105);
  v5._countAndFlagsBits = 0xD000000000000050;
  v5._object = 0x80000001007973D0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v4;
  v6._object = v3;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3A726F7272650A2ELL;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  v8 = SFAuthenticationErrorCodeToString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x3A6E6F736165720ALL;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  v14._countAndFlagsBits = sub_1000116BC(v2, v1);
  String.append(_:)(v14);

  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  if (v2 == 42)
  {
    v107 = 0x80000001007974C0;

    v19._countAndFlagsBits = 0xD000000000000075;
    v19._object = 0x80000001007974E0;
    String.append(_:)(v19);

    v106 = 0xD000000000000015;
    v108 = v112;
    v17 = 0xE700000000000000;
    v18 = 0x37323138353131;
    goto LABEL_5;
  }

  if (v2 == 9)
  {
    v107 = 0x8000000100797560;

    v16._countAndFlagsBits = 0xD00000000000003ALL;
    v16._object = 0x8000000100797580;
    String.append(_:)(v16);

    v106 = 0xD000000000000017;
    v108 = v112;
    v17 = 0xE600000000000000;
    v18 = 0x383830323839;
LABEL_5:
    v20 = 0xE800000000000000;
    v21 = 0x534F6E6F69736976;
    goto LABEL_7;
  }

  v17 = 0xE600000000000000;
  v18 = 0x313739313437;
  v107 = 0xEB000000006B636FLL;
  v108 = v112;
  v106 = 0x6C6E55206F747541;
  v20 = 0xE300000000000000;
  v21 = 7105633;
LABEL_7:
  *(v111 + 680) = 0xE000000000000000;
  v110 = *(v111 + 664);
  v22 = *(v111 + 744);
  sub_10028088C(&qword_100984BD8, &qword_10080C508);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_10080C370;
  strcpy(inited + 32, "Classification");
  *(inited + 47) = -18;
  *(inited + 6) = 0x2073756F69726553;
  *(inited + 7) = 0xEB00000000677542;
  *(inited + 8) = 0x6E656E6F706D6F43;
  *(inited + 9) = 0xEB00000000444974;
  *(inited + 10) = v18;
  v24 = v111;
  *(inited + 11) = v17;
  strcpy(inited + 96, "ComponentName");
  *(inited + 55) = -4864;
  *(inited + 14) = v106;
  *(inited + 15) = v107;
  *(inited + 16) = 0xD000000000000010;
  *(inited + 17) = 0x8000000100797430;
  *(inited + 18) = v21;
  *(inited + 19) = v20;
  *(inited + 20) = 0x7364726F7779654BLL;
  *(inited + 21) = 0xE800000000000000;
  *(inited + 22) = 0x36343939323032;
  *(inited + 23) = 0xE700000000000000;
  *(inited + 24) = 0x6375646F72706552;
  *(inited + 25) = 0xEF7974696C696269;
  strcpy(inited + 208, "I Didn't Try");
  *(inited + 221) = 0;
  *(inited + 111) = -5120;
  *(inited + 28) = 0x656C746954;
  *(inited + 29) = 0xE500000000000000;
  _StringGuts.grow(_:)(30);

  v25 = SFAuthenticationErrorCodeToString();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  *(inited + 30) = 0xD00000000000001CLL;
  *(inited + 31) = 0x8000000100797450;
  strcpy(inited + 256, "DeviceClasses");
  *(inited + 135) = -4864;
  strcpy(inited + 272, "iPhone, Vision");
  *(inited + 287) = -18;
  *(inited + 36) = 0x7470697263736544;
  *(inited + 37) = 0xEB000000006E6F69;
  *(inited + 38) = v108;
  *(inited + 39) = 0xE000000000000000;

  v30 = sub_1002821C8(inited);
  *(v111 + 688) = v30;
  swift_setDeallocating();
  sub_10028088C(&qword_100984BE0, &qword_10080C510);
  swift_arrayDestroy();
  v31 = v30 + 64;
  v32 = -1;
  v33 = -1 << *(v30 + 32);
  if (-v33 < 64)
  {
    v32 = ~(-1 << -v33);
  }

  v34 = v32 & *(v30 + 64);
  v35 = (63 - v33) >> 6;

  v36 = 0;
  v37 = _swiftEmptyArrayStorage;
  v109 = v30;
  *(v111 + 696) = _swiftEmptyArrayStorage;
  if (v34)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      do
      {
LABEL_14:
        v39 = v24[84];
        v40 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
        v41 = (*(v30 + 48) + v40);
        v42 = *v41;
        v43 = v41[1];
        v44 = (*(v30 + 56) + v40);
        v45 = *v44;
        v46 = v44[1];

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10028F368(0, v37[2] + 1, 1, v37);
        }

        v48 = v37[2];
        v47 = v37[3];
        inited = (v48 + 1);
        v24 = v111;
        v30 = v109;
        if (v48 >= v47 >> 1)
        {
          v37 = sub_10028F368(v47 > 1, v48 + 1, 1, v37);
        }

        v34 &= v34 - 1;
        v49 = *(v111 + 672);
        v50 = *(v111 + 656);
        v37[2] = inited;
        (*(v110 + 32))(v37 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v48, v49, v50);
        *(v111 + 696) = v37;
      }

      while (v34);
    }
  }

  v51 = objc_allocWithZone(NSURLComponents);
  v52 = String._bridgeToObjectiveC()();
  inited = [v51 initWithString:v52];
  v24[88] = inited;

  if (!inited)
  {
    v60 = v24[80];
    v61 = v24[79];
    v62 = v24[78];

    (*(v60 + 56))(v62, 1, 1, v61);
    goto LABEL_27;
  }

  v53 = v24[82];
  v54 = inited;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v54 setQueryItems:isa];

  v56 = [v54 URL];
  if (v56)
  {
    v57 = v24[77];
    v58 = v56;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v63 = v24[80];
  v64 = v24[79];
  v65 = v24[78];
  v66 = v24[77];
  (*(v63 + 56))(v66, v59, 1, v64);
  sub_10002C4E4(v66, v65, &unk_100974E00, &qword_1007F8940);
  if ((*(v63 + 48))(v65, 1, v64) == 1)
  {

LABEL_27:

    sub_100005508(v24[78], &unk_100974E00, &qword_1007F8940);
    if (qword_100973AE0 == -1)
    {
LABEL_28:
      v67 = type metadata accessor for Logger();
      sub_10000C4AC(v67, qword_100984940);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "VisionOS unlock bug report failed to create url", v70, 2u);
      }

      goto LABEL_31;
    }

LABEL_52:
    swift_once();
    goto LABEL_28;
  }

  (*(v24[80] + 32))(v24[81], v24[78], v24[79]);
  v77 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v24[89] = v77;
  if (v77)
  {
    v78 = v77;
    sub_10028088C(&qword_100985A60, &unk_100808040);
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_1007F5670;
    v24[71] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24[72] = v80;
    AnyHashable.init<A>(_:)();
    *(v79 + 96) = &type metadata for Bool;
    *(v79 + 72) = 1;
    sub_10027FD18(v79);
    swift_setDeallocating();
    sub_100005508(v79 + 32, &qword_1009832B0, &unk_1007F64D0);
    v81 = Dictionary._bridgeToObjectiveC()().super.isa;

    v82 = [objc_opt_self() optionsWithDictionary:v81];
    v24[90] = v82;

    v83 = String._bridgeToObjectiveC()();
    v24[91] = v83;
    v24[2] = v24;
    v24[7] = v24 + 73;
    v24[3] = sub_1005BC030;
    v84 = swift_continuation_init();
    v24[70] = sub_10028088C(&qword_100984BE8, &unk_10080C518);
    v24[67] = v84;
    v24[63] = _NSConcreteStackBlock;
    v24[64] = 1107296256;
    v24[65] = sub_10034B0A4;
    v24[66] = &unk_1008E8B70;
    [v78 openApplication:v83 withOptions:v82 completion:v24 + 63];
    v85 = v24 + 2;

    return _swift_continuation_await(v85);
  }

  v85 = [objc_opt_self() defaultWorkspace];
  if (!v85)
  {
    __break(1u);
    return _swift_continuation_await(v85);
  }

  v86 = v85;
  v87 = v24[87];
  v88 = v24[86];
  v89 = v24[85];
  v90 = v24[81];

  URL._bridgeToObjectiveC()(v91);
  v93 = v92;
  LODWORD(v89) = [v86 openSensitiveURL:v92 withOptions:0];

  if (!v89)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v104 = type metadata accessor for Logger();
    sub_10000C4AC(v104, qword_100984940);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v105 = os_log_type_enabled(v95, v96);
    v98 = v24[88];
    v99 = v24[81];
    v100 = v24[80];
    v101 = v24[79];
    if (v105)
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      v103 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_48;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  sub_10000C4AC(v94, qword_100984940);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v24[88];
  v99 = v24[81];
  v100 = v24[80];
  v101 = v24[79];
  if (!v97)
  {
    goto LABEL_49;
  }

  v102 = swift_slowAlloc();
  *v102 = 0;
  v103 = "VisionOS Unlock bug report opened";
LABEL_48:
  _os_log_impl(&_mh_execute_header, v95, v96, v103, v102, 2u);

LABEL_50:
  (*(v100 + 8))(v99, v101);
LABEL_31:
  v71 = v24[84];
  v72 = v24[81];
  v73 = v24[78];
  v74 = v24[77];

  v75 = v24[1];

  return v75();
}

uint64_t sub_1005BC030()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 736) = v2;
  if (v2)
  {
    v3 = sub_1005BC3FC;
  }

  else
  {
    v3 = sub_1005BC140;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_1005BC140()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);

  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  LODWORD(v7) = [v4 openSensitiveURL:v10 withOptions:0];

  if (!v7)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100984940);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 704);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v19 = *(v0 + 632);
    if (v23)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100984940);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 704);
  v17 = *(v0 + 648);
  v18 = *(v0 + 640);
  v19 = *(v0 + 632);
  if (!v15)
  {
    goto LABEL_12;
  }

  v20 = swift_slowAlloc();
  *v20 = 0;
  v21 = "VisionOS Unlock bug report opened";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v13, v14, v21, v20, 2u);

LABEL_13:
  (*(v18 + 8))(v17, v19);
  v24 = *(v0 + 672);
  v25 = *(v0 + 648);
  v26 = *(v0 + 624);
  v27 = *(v0 + 616);

  v28 = *(v0 + 8);

  return v28();
}

id sub_1005BC3FC()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  swift_willThrow();

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[85];
  v10 = v0[81];

  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  LODWORD(v9) = [v6 openSensitiveURL:v12 withOptions:0];

  if (!v9)
  {
    if (qword_100973AE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100984940);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v15, v16);
    v18 = v0[88];
    v19 = v0[81];
    v20 = v0[80];
    v21 = v0[79];
    if (v25)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "VisionOS Unlock bug report failed to open. User must unlock";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100984940);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[88];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[79];
  if (!v17)
  {
    goto LABEL_12;
  }

  v22 = swift_slowAlloc();
  *v22 = 0;
  v23 = "VisionOS Unlock bug report opened";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v15, v16, v23, v22, 2u);

LABEL_13:
  (*(v20 + 8))(v19, v21);
  v26 = v0[84];
  v27 = v0[81];
  v28 = v0[78];
  v29 = v0[77];

  v30 = v0[1];

  return v30();
}

void sub_1005BC6C4(int a1)
{
  if (a1 > 19)
  {
    goto LABEL_8;
  }

  switch(a1)
  {
    case 4:
LABEL_14:
      v8 = String._bridgeToObjectiveC()();
      v9 = SFLocalizedStringForKey();

      if (!v9)
      {
        __break(1u);
        goto LABEL_30;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_17:
      v11 = String._bridgeToObjectiveC()();
      v12 = SFLocalizedStringForKey();

      if (v12)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v13 = String._bridgeToObjectiveC()();
        v4 = SFLocalizedStringForKey();

        if (!v4)
        {
          __break(1u);
          break;
        }

LABEL_28:
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    case 5:
      goto LABEL_23;
    case 17:
      v1 = String._bridgeToObjectiveC()();
      v2 = SFLocalizedStringForKey();

      if (!v2)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = String._bridgeToObjectiveC()();
      v4 = SFLocalizedStringForKey();

      if (v4)
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_8:
      switch(a1)
      {
        case 43:
          goto LABEL_17;
        case 39:
          goto LABEL_26;
        case 20:
          v5 = String._bridgeToObjectiveC()();
          v6 = SFLocalizedStringForKey();

          if (!v6)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v7 = String._bridgeToObjectiveC()();
          v4 = SFLocalizedStringForKey();

          if (v4)
          {
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_14;
      }

      break;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = SFLocalizedStringForKey();

  if (!v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_23:
  v17 = String._bridgeToObjectiveC()();
  v18 = SFLocalizedStringForKey();

  if (!v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_26:
  v20 = String._bridgeToObjectiveC()();
  v21 = SFLocalizedStringForKey();

  if (!v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = String._bridgeToObjectiveC()();
  v4 = SFLocalizedStringForKey();

  if (v4)
  {
    goto LABEL_28;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_1005BCBC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B14A8(a1, v4, v5, v6);
}

uint64_t sub_1005BCC74()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100005C00;

  return sub_1005B1170();
}

uint64_t sub_1005BCD20()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100005C00;

  return sub_1005B0C00();
}

uint64_t sub_1005BCDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005B0A90(a1, v4, v5, v6);
}

uint64_t sub_1005BCE80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1005BCEC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 64);
  v10 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100005C04;

  return sub_1005B4270(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_1005BCFE4(uint64_t a1)
{
  v4 = *(_s7RequestVMa() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1006B6BEC(a1, v6, v1 + v5);
}

uint64_t sub_1005BD0C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B48BC(a1, v4, v5, v6);
}

uint64_t sub_1005BD178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005B9304(a1, v4, v5, v7, v6);
}

uint64_t sub_1005BD238(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v4 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v2[9] = *(v6 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005BD3BC, a2, 0);
}

void sub_1005BD3BC()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[16] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[17] = sub_10000C4AC(v4, qword_100984940);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Handle visionUnlock upsell notification tapped", v7, 2u);
    }

    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001007976E0;
      v10 = 0xD000000000000012;
    }

    v0[18] = v12;
    v23 = String._bridgeToObjectiveC()();
    v24 = SFLocalizedStringForKey();

    if (v24)
    {
      v25 = v0[4];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1007F5670;
      *(v26 + 56) = &type metadata for String;
      v27 = sub_100026764();
      *(v26 + 64) = v27;
      *(v26 + 32) = v10;
      *(v26 + 40) = v12;

      v28 = static String.localizedStringWithFormat(_:_:)();
      v30 = v29;

      v0[19] = v30;
      v31 = [v25 name];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = String._bridgeToObjectiveC()();
          v38 = SFLocalizedStringForKey();

          if (v38)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_1007F5670;
            *(v39 + 56) = &type metadata for String;
            *(v39 + 64) = v27;
            *(v39 + 32) = v33;
            *(v39 + 40) = v35;
            v40 = static String.localizedStringWithFormat(_:_:)();
            v42 = v41;

LABEL_28:
            v0[20] = v42;

            v46 = swift_task_alloc();
            v0[21] = v46;
            *v46 = v0;
            v46[1] = sub_1005BD948;

            sub_1006EE8C0(v28, v30, v40, v42, 0);
            return;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      v43 = String._bridgeToObjectiveC()();
      v44 = SFLocalizedStringForKey();

      if (v44)
      {
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v45;

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984940);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get shared SDAuthenticationManager for visionUnlock upsell", v16, 2u);
  }

  v17 = v0[15];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  v21 = v0[6];

  v22 = v0[1];

  v22();
}

uint64_t sub_1005BD948(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 168);
  v7 = *v3;
  v5[22] = a1;
  v5[23] = a2;

  v8 = v4[20];
  v9 = v4[19];
  if (v2)
  {
    v10 = v5[18];
    v11 = v5[5];

    swift_bridgeObjectRelease_n();

    v12 = sub_1005BDD70;
    v13 = v11;
  }

  else
  {
    v14 = v5[5];

    v12 = sub_1005BDAE8;
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1005BDAE8()
{
  v1 = [*(v0 + 32) uniqueIDOverride];
  if (v1)
  {
    v3 = v1;
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v32 = *(v0 + 128);
    v36 = *(v0 + 120);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 56);

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v12;
    v31 = v11;

    UUID.init()();
    v13 = v6;
    v33 = v6;
    UUID.uuidString.getter();
    *(v0 + 276) = 0;
    v14 = *(v9 + 16);
    *(v0 + 192) = v14;
    *(v0 + 200) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15 = v7;
    v14(v7, v13, v10);
    v16 = *(v9 + 80);
    *(v0 + 272) = v16;
    v17 = (v16 + 24) & ~v16;
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v32;
    v21 = *(v9 + 32);
    *(v0 + 208) = v21;
    *(v0 + 216) = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v20 + v17, v15, v10);
    *(v20 + v18) = 12;
    v22 = (v20 + v19);
    *v22 = v31;
    v22[1] = v30;
    v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v23 = v34;
    v23[1] = v35;
    v24 = v32;
    sub_100294008(v34, v35);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v25 = *(v9 + 8);
    *(v0 + 224) = v25;
    *(v0 + 232) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v33, v10);
    v26 = async function pointer to SFProgressTask.finalValue.getter[1];
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = sub_1005BDE7C;
    v28 = *(v0 + 120);
    v2 = *(v0 + 104);
    v1 = (v0 + 277);
  }

  else
  {
    __break(1u);
  }

  return SFProgressTask.finalValue.getter(v1, v2);
}

uint64_t sub_1005BDD70()
{
  v1 = v0[17];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upsell passcode cancelled", v6, 2u);
  }

  v7 = v0[15];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005BDE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1005BE244;
  }

  else
  {
    v6 = sub_1005BDFA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005BDFA8()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[5];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v25 = v0[15];
    v6 = v0[13];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v0[3] = v7;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: visionUnlock upsell setup successful", v8, 0xCu);
    sub_10000C60C(v9);

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[4];
  v17 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[32] = v17;
  v18 = v17;
  v19 = [v16 uniqueIDOverride];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  [v18 setIdsDeviceID:v21];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v22 = v0[10];
  v23 = qword_1009A0C98;
  v0[33] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BE49C, v23, 0);
}

uint64_t sub_1005BE244()
{
  v1 = v0[31];
  v2 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to contact visionOS device for upsell enablement. %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[31];
  v11 = v0[4];
  v10 = v0[5];

  sub_1005BA0D8(v11, v10);

  v12 = v0[4];
  v13 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[32] = v13;
  v14 = v13;
  v15 = [v12 uniqueIDOverride];
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v14 setIdsDeviceID:v17];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v18 = v0[10];
  v19 = qword_1009A0C98;
  v0[33] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BE49C, v19, 0);
}

uint64_t sub_1005BE49C()
{
  v1 = *(*(v0 + 264) + 120);
  if (v1 >= 4)
  {

LABEL_4:
    v3 = *(v0 + 264);
    v25 = *(v0 + 256);
    v26 = *(v0 + 208);
    v4 = *(v0 + 272);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 128);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    v24 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v27 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v5(v8, v9, v11);
    v14 = sub_1005BCE80(&qword_100984BD0, v13, _s22VisionUnlockiOSManagerCMa);
    v15 = (v4 + 56) & ~v4;
    v16 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 2) = v3;
    *(v17 + 3) = v14;
    *(v17 + 4) = v3;
    *(v17 + 5) = v25;
    *(v17 + 6) = 19;
    v26(&v17[v15], v8, v11);
    *&v17[v16] = 0;
    *&v17[(v16 + 15) & 0xFFFFFFFFFFFFFFF8] = v7;
    v18 = v7;
    swift_retain_n();
    v19 = v18;
    v20 = v25;
    sub_1002B3098(0, 0, v27, &unk_100810730, v17);

    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 256);
LABEL_6:

  v21 = *(v0 + 232);
  v22 = *(v0 + 40);
  (*(v0 + 224))(*(v0 + 80), *(v0 + 56));

  return _swift_task_switch(sub_1005BE7A0, v22, 0);
}

uint64_t sub_1005BE7A0()
{
  v26 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 176);
    v23 = *(v0 + 184);
    v24 = *(v0 + 128);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v25);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: unlock on upsell successful", v8, 0xCu);
    sub_10000C60C(v9);

    sub_100026AC0(v6, v23);
  }

  else
  {
    v13 = *(v0 + 256);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);

    sub_100026AC0(v15, v14);
  }

  v16 = *(v0 + 120);
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(v0 + 48);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005BE998(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_100005C00;

  return sub_1006A3D30(a1, v9, v1 + v5, v10, v11, v12, v13, v14);
}

uint64_t sub_1005BEAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005B9A2C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1005BEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  v7 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v4[10] = *(v9 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = *(a3 - 8);
  v14 = v13;
  v4[17] = v13;
  v15 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  (*(v14 + 16))();

  return _swift_task_switch(sub_1005BEDC8, a2, 0);
}

void sub_1005BEDC8()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  v0[19] = qword_1009A10A8;
  if (v1)
  {
    v2 = qword_100973AE0;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[20] = sub_10000C4AC(v4, qword_100984940);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Handle visionUnlock upsell notification tapped", v7, 2u);
    }

    v8 = String._bridgeToObjectiveC()();
    v9 = SFLocalizedStringForKey();

    if (v9)
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001007976E0;
      v10 = 0xD000000000000012;
    }

    v0[21] = v12;
    v23 = String._bridgeToObjectiveC()();
    v24 = SFLocalizedStringForKey();

    if (v24)
    {
      v25 = v0[18];
      v27 = v0[5];
      v26 = v0[6];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007F5670;
      *(v28 + 56) = &type metadata for String;
      v29 = sub_100026764();
      *(v28 + 64) = v29;
      *(v28 + 32) = v10;
      *(v28 + 40) = v12;

      v30 = static String.localizedStringWithFormat(_:_:)();
      v32 = v31;

      v0[22] = v32;
      v33 = (*(v26 + 56))(v27, v26);
      if (v34)
      {
        v35 = v33;
        v36 = v34;
        v37 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v37 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = String._bridgeToObjectiveC()();
          v39 = SFLocalizedStringForKey();

          if (v39)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_1007F5670;
            *(v40 + 56) = &type metadata for String;
            *(v40 + 64) = v29;
            *(v40 + 32) = v35;
            *(v40 + 40) = v36;
            v41 = static String.localizedStringWithFormat(_:_:)();
            v43 = v42;

LABEL_28:
            v0[23] = v43;

            v47 = swift_task_alloc();
            v0[24] = v47;
            *v47 = v0;
            v47[1] = sub_1005BF380;

            sub_1006EE8C0(v30, v32, v41, v43, 0);
            return;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      v44 = String._bridgeToObjectiveC()();
      v45 = SFLocalizedStringForKey();

      if (v45)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v46;

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_100973AE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100984940);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to get shared SDAuthenticationManager for visionUnlock upsell", v16, 2u);
  }

  v17 = v0[16];
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[11];
  v21 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[5]);

  v22 = v0[1];

  v22();
}

uint64_t sub_1005BF380(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 192);
  v7 = *v3;
  v5[25] = a1;
  v5[26] = a2;

  v8 = v4[23];
  v9 = v4[22];
  if (v2)
  {
    v10 = v5[21];
    v11 = v5[4];

    swift_bridgeObjectRelease_n();

    v12 = sub_1005BF8D0;
    v13 = v11;
  }

  else
  {
    v14 = v5[4];

    v12 = sub_1005BF520;
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1005BF520()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v3 + 8);
  *(v0 + 216) = v4;
  *(v0 + 224) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0xCB13000000000000;
  v5 = v4(v2);
  v33 = v6;
  v34 = v5;
  if (v6)
  {
    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v32 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v29 = *(v0 + 152);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);

    UUID.init()();
    UUID.uuidString.getter();
    *(v0 + 316) = 0;
    v14 = *(v12 + 16);
    *(v0 + 232) = v14;
    *(v0 + 240) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v10, v9, v13);
    v15 = *(v12 + 80);
    *(v0 + 312) = v15;
    v16 = (v15 + 24) & ~v15;
    v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = v29;
    v20 = *(v12 + 32);
    *(v0 + 248) = v20;
    *(v0 + 256) = (v12 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v19 + v16, v10, v13);
    *(v19 + v17) = 12;
    v21 = (v19 + v18);
    *v21 = v34;
    v21[1] = v33;
    v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v30;
    v22[1] = v31;
    v23 = v29;
    sub_100294008(v30, v31);
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v24 = *(v12 + 8);
    *(v0 + 264) = v24;
    *(v0 + 272) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v9, v13);
    v25 = async function pointer to SFProgressTask.finalValue.getter[1];
    v26 = swift_task_alloc();
    *(v0 + 280) = v26;
    *v26 = v0;
    v26[1] = sub_1005BF7A4;
    v27 = *(v0 + 128);
    v6 = *(v0 + 112);
    v5 = v0 + 317;
  }

  else
  {
    __break(1u);
  }

  return SFProgressTask.finalValue.getter(v5, v6);
}

uint64_t sub_1005BF7A4()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1005BFC98;
  }

  else
  {
    v6 = sub_1005BFA18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005BF8D0()
{
  v1 = v0[20];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upsell passcode cancelled", v6, 2u);
  }

  else
  {

    v2 = v5;
  }

  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  v11 = v0[7];
  (*(v0[17] + 8))(v0[18], v0[5]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005BFA18()
{
  v30 = v0;
  v1 = v0[20];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v28 = v0[16];
    v6 = v0[14];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v0[3] = v7;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v29);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: visionUnlock upsell setup successful", v8, 0xCu);
    sub_10000C60C(v9);

    (*(v5 + 8))(v28, v6);
  }

  else
  {
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];

    (*(v14 + 8))(v13, v15);
  }

  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[18];
  v20 = v0[5];
  v19 = v0[6];
  v21 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[37] = v21;
  v22 = v21;
  v17(v20, v19);
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v22 setIdsDeviceID:v24];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v25 = v0[11];
  v26 = qword_1009A0C98;
  v0[38] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BFEE4, v26, 0);
}

uint64_t sub_1005BFC98()
{
  v1 = v0[36];
  v2 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to contact visionOS device for upsell enablement. %@", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v9 = v0[36];
  v10 = v0[18];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];

  sub_1005BA4E4(v10, v13, v12, v11);

  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[18];
  v18 = v0[5];
  v17 = v0[6];
  v19 = [objc_allocWithZone(SFAuthenticationOptions) init];
  v0[37] = v19;
  v20 = v19;
  v15(v18, v17);
  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v20 setIdsDeviceID:v22];

  if (qword_100973AE8 != -1)
  {
    swift_once();
  }

  v23 = v0[11];
  v24 = qword_1009A0C98;
  v0[38] = qword_1009A0C98;
  UUID.init()();

  return _swift_task_switch(sub_1005BFEE4, v24, 0);
}

uint64_t sub_1005BFEE4()
{
  v1 = *(*(v0 + 304) + 120);
  if (v1 >= 4)
  {

LABEL_4:
    v3 = *(v0 + 304);
    v25 = *(v0 + 296);
    v26 = *(v0 + 248);
    v4 = *(v0 + 312);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 152);
    v8 = *(v0 + 104);
    v9 = *(v0 + 88);
    v24 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v27 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v5(v8, v9, v11);
    v14 = sub_1005BCE80(&qword_100984BD0, v13, _s22VisionUnlockiOSManagerCMa);
    v15 = (v4 + 56) & ~v4;
    v16 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 2) = v3;
    *(v17 + 3) = v14;
    *(v17 + 4) = v3;
    *(v17 + 5) = v25;
    *(v17 + 6) = 19;
    v26(&v17[v15], v8, v11);
    *&v17[v16] = 0;
    *&v17[(v16 + 15) & 0xFFFFFFFFFFFFFFF8] = v7;
    v18 = v7;
    swift_retain_n();
    v19 = v18;
    v20 = v25;
    sub_1002B3098(0, 0, v27, &unk_10080C5D0, v17);

    goto LABEL_6;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 296);
LABEL_6:

  v21 = *(v0 + 272);
  v22 = *(v0 + 32);
  (*(v0 + 264))(*(v0 + 88), *(v0 + 64));

  return _swift_task_switch(sub_1005C01E8, v22, 0);
}

uint64_t sub_1005C01E8()
{
  v26 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 32);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 152);
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    _s28VisionUnlockiOSUpsellManagerCMa();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v25);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: unlock on upsell successful", v8, 0xCu);
    sub_10000C60C(v9);

    sub_100026AC0(v6, v23);
  }

  else
  {
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    v15 = *(v0 + 152);

    sub_100026AC0(v14, v13);
  }

  v16 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 88);
  v20 = *(v0 + 56);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 40));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1005C0404()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  sub_100026AC0(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_1005C0504()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1005C0604(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100005C00;

  return sub_1005B164C(a1, v7, v8, v9, v10, v11, v1 + v5, v12);
}

uint64_t sub_1005C0760()
{
  v1 = *(v0 + 16);

  sub_10000C60C((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1005C07A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005B87E8(a1, v4, v5, v6);
}

uint64_t sub_1005C0854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C08BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005C0924(uint64_t a1)
{
  v4 = *(type metadata accessor for AuthenticationDevice() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005B607C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1005C0A1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1005C0AA8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount] = 0;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_1009A0960);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v12.receiver = v3;
  v12.super_class = v0;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_1005C0C2C(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = type metadata accessor for UUID();
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v3[30] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = *(*(sub_10028088C(&qword_10097A7F0, &unk_1007FB600) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v3[35] = v11;
  v12 = *(v11 - 8);
  v3[36] = v12;
  v13 = *(v12 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_1005C0E10, v2, 0);
}

uint64_t sub_1005C0E10()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[26];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000FF90(v4 + v5, v3, &qword_10097A7F0, &unk_1007FB600);
  v6 = *(v2 + 48);
  if ((v6)(v3, 1, v1) != 1)
  {
    v7 = v0[26];
    (*(v0[36] + 32))(v0[38], v0[34], v0[35]);
    if (*(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount))
    {
      v62 = v7;
      v63 = v6;
      v61 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount;
      v8 = v0[33];
      v9 = v0[30];
      v10 = v0[31];
      v11 = v0[27];
      v12 = v0[28];
      v13 = v0[26];
      (*(v12 + 16))(v8, v0[24], v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      v14 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
      swift_beginAccess();
      v15 = *(v9 + 48);
      sub_10000FF90(v8, v10, &unk_100976120, &qword_1007F9260);
      v16 = v13 + v14;
      v17 = v15;
      v18 = v10;
      sub_10000FF90(v16, v10 + v17, &unk_100976120, &qword_1007F9260);
      v19 = *(v12 + 48);
      if (v19(v18, 1, v11) == 1)
      {
        v20 = v0[27];
        sub_100005508(v0[33], &unk_100976120, &qword_1007F9260);
        if (v19(v18 + v17, 1, v20) == 1)
        {
          sub_100005508(v0[31], &unk_100976120, &qword_1007F9260);
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v21 = v0[27];
      sub_10000FF90(v0[31], v0[32], &unk_100976120, &qword_1007F9260);
      v22 = v19(v18 + v17, 1, v21);
      v23 = v0[32];
      v24 = v0[33];
      if (v22 == 1)
      {
        v25 = v0[27];
        v26 = v0[28];
        sub_100005508(v0[33], &unk_100976120, &qword_1007F9260);
        (*(v26 + 8))(v23, v25);
LABEL_9:
        sub_100005508(v0[31], &unk_100987030, &qword_1007F9330);
        goto LABEL_10;
      }

      v60 = v0[31];
      v38 = v0[28];
      v37 = v0[29];
      v39 = v0[27];
      (*(v38 + 32))(v37, v18 + v17, v39);
      sub_1005C1EC4();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v37, v39);
      sub_100005508(v24, &unk_100976120, &qword_1007F9260);
      v41(v23, v39);
      sub_100005508(v60, &unk_100976120, &qword_1007F9260);
      if (v40)
      {
LABEL_16:
        v43 = v0[37];
        v42 = v0[38];
        v44 = v0[35];
        v45 = v0[25];
        Date.init()();
        v63(v45, 1, v44);
        Date.timeIntervalSince(_:)();
        v47 = v46;
        v48 = v46;
        sub_10028088C(&qword_10097A3D0, &qword_1007FD5E0);
        result = swift_initStackObject();
        *(result + 32) = 0x6E6F697461727564;
        *(result + 16) = xmmword_1007FA7E0;
        *(result + 40) = 0xE800000000000000;
        if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v47 > -9.22337204e18)
        {
          if (v47 < 9.22337204e18)
          {
            v49 = result;
            v50 = v0[37];
            v64 = v0[38];
            v51 = v0[35];
            v52 = v0[36];
            v53 = v0[26];
            *(result + 48) = Int._bridgeToObjectiveC()();
            v49[7].super.super.isa = 0x7461426C61746F74;
            v49[8].super.super.isa = 0xEF746E756F436863;
            if (*(v62 + v61) < 30)
            {
              v54 = *(v62 + v61);
            }

            v49[9].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
            v49[10].super.super.isa = 0xD000000000000012;
            v49[11].super.super.isa = 0x8000000100797850;
            if (*(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount) < 30)
            {
              v55 = *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount);
            }

            v49[12].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
            v49[13].super.super.isa = 0x6F6B636142646964;
            v49[14].super.super.isa = 0xEA00000000006666;
            v49[15].super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
            v56 = sub_100281A6C(v49);
            swift_setDeallocating();
            sub_10028088C(&qword_10097A3D8, &qword_1007FD5E8);
            swift_arrayDestroy();
            v57 = String._bridgeToObjectiveC()();
            sub_1003CE55C(v56);

            sub_100332530();
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            SFMetricsLog();

            v59 = *(v52 + 8);
            v59(v50, v51);
            v59(v64, v51);
            goto LABEL_12;
          }

LABEL_26:
          __break(1u);
          return result;
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    (*(v0[36] + 8))(v0[38], v0[35]);
    goto LABEL_11;
  }

  sub_100005508(v0[34], &qword_10097A7F0, &unk_1007FB600);
LABEL_11:
  v27 = v0[26];
  sub_1005C18F4();
LABEL_12:
  v29 = v0[37];
  v28 = v0[38];
  v31 = v0[33];
  v30 = v0[34];
  v33 = v0[31];
  v32 = v0[32];
  v34 = v0[29];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1005C149C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v3[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = *(*(sub_10028088C(&unk_100976120, &qword_1007F9260) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005C15E0, v2, 0);
}

uint64_t sub_1005C15E0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  (*(v5 + 16))(v1, v0[6], v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  v8 = *(v3 + 48);
  sub_10000FF90(v1, v2, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v6 + v7, v2 + v8, &unk_100976120, &qword_1007F9260);
  v9 = *(v5 + 48);
  if (v9(v2, 1, v4) != 1)
  {
    v11 = v0[8];
    sub_10000FF90(v0[12], v0[13], &unk_100976120, &qword_1007F9260);
    v12 = v9(v2 + v8, 1, v11);
    v13 = v0[13];
    v14 = v0[14];
    if (v12 != 1)
    {
      v17 = v0[12];
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      (*(v19 + 32))(v18, v2 + v8, v20);
      sub_1005C1EC4();
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v19 + 8);
      v22(v18, v20);
      sub_100005508(v14, &unk_100976120, &qword_1007F9260);
      v22(v13, v20);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v15 = v0[8];
    v16 = v0[9];
    sub_100005508(v0[14], &unk_100976120, &qword_1007F9260);
    (*(v16 + 8))(v13, v15);
LABEL_6:
    sub_100005508(v0[12], &unk_100987030, &qword_1007F9330);
    goto LABEL_9;
  }

  v10 = v0[8];
  sub_100005508(v0[14], &unk_100976120, &qword_1007F9260);
  if (v9(v2 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_100005508(v0[12], &unk_100976120, &qword_1007F9260);
LABEL_8:
  *(v0[7] + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount) = v0[5];
LABEL_9:
  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[12];
  v26 = v0[10];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1005C18F4()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  sub_10000C788(v8, v0 + v10, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000C788(v4, v0 + v12, &qword_10097A7F0, &unk_1007FB600);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount) = 0;
  return result;
}

uint64_t sub_1005C1C60()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken, &unk_100976120, &qword_1007F9260);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart, &qword_10097A7F0, &unk_1007FB600);
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SDAirDropIDMSServiceTelemetry()
{
  result = qword_100984C80;
  if (!qword_100984C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005C1D6C()
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1005C1EC4()
{
  result = qword_1009761E0;
  if (!qword_1009761E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009761E0);
  }

  return result;
}

uint64_t sub_1005C1F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v22 = a2;
  v23 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v24 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v15 + 16))(&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v15 + 32))(v19 + v18, &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v9, v6);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1005C2394(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_1005C2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1005C2A08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005C2704(0, &unk_1008E9030, sub_1005C6F28, &unk_1008E9048);
  v12 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005C7248;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E9250;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_1005C2D44()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984C90);
  v1 = sub_10000C4AC(v0, qword_100984C90);
  if (qword_1009736D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005C2E0C()
{
  result = [objc_allocWithZone(type metadata accessor for SDAirDropBLEController()) init];
  qword_1009A0CA0 = result;
  return result;
}

id sub_1005C2E98()
{
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v15);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  result = [objc_opt_self() sharedMonitor];
  v14 = result;
  if (result)
  {
    v13 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    static DispatchQoS.utility.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_100014494(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10028088C(&unk_10097A630, &unk_1007F5680);
    sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
    v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v10 = ObjectType;
    v11 = objc_allocWithZone(ObjectType);
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser] = 0;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser] = 0;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner] = 0;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer] = 0;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers] = &_swiftEmptyDictionarySingleton;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceStatus] = v14;
    *&v11[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue] = v9;
    v17.receiver = v11;
    v17.super_class = v10;
    v12 = objc_msgSendSuper2(&v17, "init");
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005C3210(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceStatus) myShortHashesForAirDrop];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007F5670;
      *(inited + 32) = AirDropID.getter();
      *(inited + 40) = v15;
      v16 = sub_1005581A0(inited, 2, 4);
      v17 = v6;
      v19 = v18;
      v53 = &off_1008D7CB0;
      sub_100294008(v16, v18);
      sub_100403C08(v16, v19);
      sub_10040367C(&off_1008D7CD8);
      v11 = sub_10057EA7C(v53);
      v13 = v20;

      v21 = v19;
      v6 = v17;
      sub_100026AC0(v16, v21);
      swift_setDeallocating();
      v22 = *(inited + 16);
      swift_arrayDestroy();
    }

    v23 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser;
    if (*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser])
    {
      sub_100026AC0(v11, v13);
    }

    else
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_100984C90);
      sub_100294008(v11, v13);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      sub_100026AC0(v11, v13);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v50 = a2;
        v28 = v27;
        v48 = v27;
        v49 = swift_slowAlloc();
        v52 = v49;
        *v28 = 136315138;
        v51 = sub_100467BE4(v11, v13);
        v47 = v26;
        sub_10028088C(&unk_100976C20, &unk_1007F9D80);
        sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80);
        v29 = BidirectionalCollection<>.joined(separator:)();
        v31 = v30;

        v32 = sub_10000C4E4(v29, v31, &v52);

        v33 = v48;
        *(v48 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v47, "Starting advertisement for AirDrop %s", v33, 0xCu);
        sub_10000C60C(v49);

        a2 = v50;
      }

      v34 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue];
      v35 = objc_allocWithZone(type metadata accessor for SDBLEAdvertiser());
      sub_100294008(v11, v13);
      v36 = sub_1005948A4(v34, v11, v13, 0x3200000100);
      v37 = *&v8[v23];
      *&v8[v23] = v36;

      v38 = *&v8[v23];
      if (v38)
      {
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v38;

        sub_100594A00(sub_1005C6F30, v39);
      }

      v41 = type metadata accessor for TaskPriority();
      (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
      v42 = qword_1009735E0;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = static AirDropActor.shared;
      v44 = sub_100014494(&qword_100977C00, type metadata accessor for AirDropActor);
      v45 = swift_allocObject();
      v45[2] = v43;
      v45[3] = v44;
      v45[4] = a2;

      sub_1002B3098(0, 0, v6, &unk_10080C6C0, v45);
      sub_100026AC0(v11, v13);
    }
  }
}

void sub_1005C37A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser);
    if (v2)
    {
      v3 = v2;

      sub_100596038(22);
      v1 = v3;
    }
  }
}

uint64_t sub_1005C3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C38B4, v5, 0);
}

uint64_t sub_1005C38B4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v3 = getpid();
    goto LABEL_11;
  }

  result = sub_10055FC6C();
  v3 = *(v1 + 24);
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = result;
      v5 = _CocoaArrayWrapper.endIndex.getter();
      result = v4;
      if (v5)
      {
LABEL_5:
        if ((v3 & 0xC000000000000001) != 0)
        {

          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v3 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v3 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v3 = 0;
  }

LABEL_11:
  v6 = String._bridgeToObjectiveC()();

  sub_100086D20(@"BluetoothAdvertise", @"Start", v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1005C3A44(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser;
    v10 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser];
    if (v10)
    {
      v11 = v10;
      sub_1005958B0(0, 0, 0.0);

      v12 = *&v8[v9];
      *&v8[v9] = 0;

      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = qword_1009735E0;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = static AirDropActor.shared;
      v16 = sub_100014494(&qword_100977C00, type metadata accessor for AirDropActor);
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = v16;
      v17[4] = a2;

      sub_1002B3098(0, 0, v6, &unk_10080C6D8, v17);
    }

    else
    {
    }
  }
}

uint64_t sub_1005C3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C3CE8, v5, 0);
}

uint64_t sub_1005C3CE8()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v3 = getpid();
    goto LABEL_11;
  }

  result = sub_10055FC6C();
  v3 = *(v1 + 24);
  if (v3)
  {
    if (v3 >> 62)
    {
      v4 = result;
      v5 = _CocoaArrayWrapper.endIndex.getter();
      result = v4;
      if (v5)
      {
LABEL_5:
        if ((v3 & 0xC000000000000001) != 0)
        {

          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v3 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
          swift_unknownObjectRelease();
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v3 = *(*(v3 + 32) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropAgentClient_pid);
        }

        goto LABEL_11;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v3 = 0;
  }

LABEL_11:
  v6 = String._bridgeToObjectiveC()();

  sub_100086D20(@"BluetoothAdvertise", @"Stop", v6, v3);

  v7 = *(v0 + 8);

  return v7();
}

void sub_1005C3E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner;
    if (!*&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner])
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a4;
      v17 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
      swift_beginAccess();

      v18 = *&v8[v17];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *&v8[v17];
      *&v8[v17] = 0x8000000000000000;
      sub_10057C0D4(sub_1005C6D14, v16, a2, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v41;
      swift_endAccess();
      v20 = [objc_allocWithZone(CBDiscovery) init];
      [v20 setDispatchQueue:*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue]];
      [v20 addDiscoveryType:1];
      [v20 setUseCase:131090];
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = sub_1005C6D44;
      v40 = v21;
      v35 = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100035F94;
      v38 = &unk_1008E8F30;
      v22 = _Block_copy(&v35);
      v23 = v8;

      [v20 setDeviceFoundHandler:v22];
      _Block_release(v22);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = sub_1005C6D64;
      v40 = v24;
      v35 = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100035F94;
      v38 = &unk_1008E8F58;
      v25 = _Block_copy(&v35);

      [v20 setDeviceLostHandler:v25];
      _Block_release(v25);
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100984C90);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Starting to scan for AirDrop", v29, 2u);
      }

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v39 = sub_1005C6D84;
      v40 = v30;
      v35 = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1005CC610;
      v38 = &unk_1008E8F80;
      v31 = _Block_copy(&v35);

      [v20 activateWithCompletion:v31];
      _Block_release(v31);
      v32 = *&v8[v9];
      *&v8[v9] = v20;
      v33 = v20;

      v15 = String._bridgeToObjectiveC()();
      v34 = getpid();
      sub_100086D20(@"BluetoothScanning", @"Start", v15, v34);

      goto LABEL_15;
    }
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984C90);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to start scanning but already scanning", v13, 2u);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1005C442C(a2, a3, a4, &unk_1008E8FB8, sub_1005C6E68, &unk_1008E8FD0);
LABEL_15:
  }
}

uint64_t sub_1005C442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v28 = a3;
  v29 = a5;
  v26 = a4;
  v27 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v30 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v17 + 32))(v21 + v20, &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v22 = (v21 + ((v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  aBlock[4] = v29;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100014494(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v34 + 8))(v11, v8);
  (*(v32 + 8))(v15, v33);
}

uint64_t sub_1005C4810(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
    swift_beginAccess();
    v14 = *(v2 + v13);
    v15 = 1 << *(v14 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v14 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = a2 & 1;

    for (i = 0; v17; result = )
    {
      v21 = i;
LABEL_10:
      v22 = *(v14 + 56) + ((v21 << 10) | (16 * __clz(__rbit64(v17))));
      v24 = *v22;
      v23 = *(v22 + 8);
      v17 &= v17 - 1;
      v27 = a1;
      v26 = v19;

      v24(&v27, &v26);
    }

    while (1)
    {
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
      }

      v17 = *(v14 + 64 + 8 * v21);
      ++i;
      if (v17)
      {
        i = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005C4A28(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005C4810(a1, a3 & 1);
  }
}

void sub_1005C4A98(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100984C90);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000C4E4(v6, v7, &v15);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to start scanning for AirDrop: %s", v4, 0xCu);
      sub_10000C60C(v5);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v10 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
      *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner] = 0;
    }
  }

  else
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100984C90);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Started scanning for AirDrop", v13, 2u);
    }
  }
}

void sub_1005C4E9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner;
    v11 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
    if (v11)
    {
      v12 = qword_100973AF0;
      v13 = v11;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_100984C90);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Stopping to scan for AirDrop", v17, 2u);
      }

      (*(v4 + 16))(v7, a2, v3);
      swift_beginAccess();
      sub_1002B2214(0, 0, v7);
      swift_endAccess();
      [v13 invalidate];
      v18 = *&v9[v10];
      *&v9[v10] = 0;

      v19 = String._bridgeToObjectiveC()();
      v20 = getpid();
      sub_100086D20(@"BluetoothScanning", @"Stop", v19, v20);

      goto LABEL_13;
    }
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100984C90);
  v19 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v19, v22, "Attempting to stop scanning but not scanning", v23, 2u);
  }

LABEL_13:
}

void sub_1005C52E0(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_deviceUpdatesHandlers;
    swift_beginAccess();

    v11 = *&v8[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *&v8[v10];
    *&v8[v10] = 0x8000000000000000;
    sub_10057C0D4(sub_1005C728C, v9, a2, isUniquelyReferenced_nonNull_native);
    *&v8[v10] = v22;
    swift_endAccess();
    v13 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner];
    if (v13)
    {
      v14 = [v13 discoveredDevices];
      sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v8;
      if (v15 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          a3(v18, 1);

          ++v17;
          if (v20 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:

      v8 = v21;
    }
  }
}

void sub_1005C54F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v4 + 16))(v7, a2, v3);
    swift_beginAccess();
    sub_1002B2214(0, 0, v7);
    swift_endAccess();
  }
}

void sub_1005C56F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner), v2 = Strong, v3 = v1, v2, v1))
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100984C90);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting aggressive scan for Ask to AirDrop", v7, 2u);
    }

    [v3 setBleScanRate:50];
    [v3 setDiscoveryFlags:0x240000000];
    [v3 setUseCase:131093];
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_1005C594C();
    }
  }

  else
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100984C90);
    v3 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, v11, "Attempting to scan aggressively for Ask to AirDrop but not scanning yet", v12, 2u);
    }
  }
}

uint64_t sub_1005C594C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  v4 = __chkstk_darwin(v2);
  v51 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v48 = (&v42 - v6);
  v7 = type metadata accessor for DispatchTime();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  v9 = __chkstk_darwin(v7);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v42 - v11;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v45 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v45);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  static OS_dispatch_source.TimerFlags.strict.getter();
  v26 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
  v27 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v24, v20);
  v28 = *(v1 + v25);
  *(v1 + v25) = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v42 = v27;
  ObjectType = swift_getObjectType();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1005C7214;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E91D8;
  v31 = _Block_copy(aBlock);

  v54 = ObjectType;
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_1005944AC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v31);
  (*(v12 + 8))(v15, v45);
  (*(v43 + 8))(v19, v44);

  v32 = v46;
  static DispatchTime.now()();
  v33 = v48;
  *v48 = 10;
  v35 = v52;
  v34 = v53;
  (*(v52 + 104))(v33, enum case for DispatchTimeInterval.seconds(_:), v53);
  v36 = v47;
  + infix(_:_:)();
  v37 = *(v35 + 8);
  v37(v33, v34);
  v38 = v50;
  v39 = *(v49 + 8);
  v39(v32, v50);
  sub_1002EAB84(v33);
  v40 = v51;
  sub_1002EABF8(v51);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v37(v40, v34);
  v37(v33, v34);
  v39(v36, v38);
  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

void sub_1005C5EFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_scanner), v2 = Strong, v3 = v1, v2, !v1))
  {
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100984C90);
    v3 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v3, v14, "Attempting to stop aggressive scan for Ask to AirDrop but not scanning yet", v15, 2u);
    }

    goto LABEL_15;
  }

  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984C90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping aggressive scan for Ask to AirDrop", v7, 2u);
  }

  [v3 setBleScanRate:0];
  [v3 setUseCase:131090];
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_15:

    return;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer;
  if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer))
  {
    v11 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  v12 = *&v9[v10];
  *&v9[v10] = 0;

  swift_unknownObjectRelease();
}

void sub_1005C617C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser];
  if (!v1 || (v2 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], v3 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8], v3 >> 60 == 15))
  {

LABEL_5:
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100984C90);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Attempting to start Ask to AirDrop without already advertising", v7, 2u);
    }

    return;
  }

  v8 = Strong;
  v9 = *v2;
  v10 = v2[2];
  v11 = v1;
  sub_1002A9924(v9, v3);
  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100984C90);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Adding Ask to AirDrop data to advertisement", v15, 2u);
  }

  sub_1002A9924(v9, v3);
  v16 = SFDeviceClassCodeGet();
  v17 = SFDeviceModelCodeGet();
  sub_1005968E8(v9, v3, v10 & 0xFFFFFFFFFFFF0000 | v17 & 0x1Fu | (32 * v16) | 0x1800000);
  sub_100594630(50);
  sub_100594658(131093);
  sub_10028BCC0(v9, v3);

  sub_100026AC0(v9, v3);
}

void sub_1005C641C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_airDropAdvertiser);
  v2 = Strong;
  v3 = v1;

  if (!v1)
  {
    goto LABEL_5;
  }

  v4 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  v5 = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8];
  if (v5 >> 60 == 15)
  {

LABEL_5:
    if (qword_100973AF0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100984C90);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to stop Ask to AirDrop without already advertising", v9, 2u);
    }

    return;
  }

  v10 = *v4;
  v11 = v4[2];
  sub_100294008(*v4, *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
  if (qword_100973AF0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100984C90);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing Ask to AirDrop data from advertisement", v15, 2u);
  }

  sub_1002A9924(v10, v5);
  sub_1005968E8(v10, v5, v11 & 0xFFFFFFFFFE7F0000);
  sub_100594630(0);
  sub_100594658(131090);
  sub_10028BCC0(v10, v5);

  sub_100026AC0(v10, v5);
}

void sub_1005C669C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser;
    if (*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser))
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000C4AC(v3, qword_100984C90);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Attempting to start advertising temp auth tag but already advertising", v6, 2u);
      }
    }

    else
    {
      if (qword_100973AF0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_100984C90);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Starting to advertise temp auth tag", v10, 2u);
      }

      v11 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue];
      v12 = objc_allocWithZone(type metadata accessor for SDBLEAdvertiser());
      v13 = sub_1005948A4(v11, 0, 0xF000000000000000, 0);
      v14 = *&v1[v2];
      *&v1[v2] = v13;

      v15 = *&v1[v2];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      sub_100594658(131094);

      v17 = *&v1[v2];
      if (!v17)
      {
        goto LABEL_17;
      }

      v18 = v17;
      sub_100594630(30);

      v19 = *&v1[v2];
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v19;
      sub_100594A00(0, 0);

      v21 = *&v1[v2];
      if (v21)
      {
        v22 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = v21;

        sub_1005958B0(sub_1005C7288, v22, 15.0);
      }

      else
      {
LABEL_17:
      }
    }
  }
}

void sub_1005C697C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser];
    if (v2)
    {
      v3 = qword_100973AF0;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_100984C90);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Stop advertising temp auth tag", v8, 2u);
      }

      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1005958B0(sub_1005C7224, v9, 0.0);
    }

    else
    {
    }
  }
}

void sub_1005C6B10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser];
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_nearbyInfoV2Advertiser] = 0;
  }
}

void sub_1005C6B70()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_queue);
    *v4 = v7;
    (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v1 + 8))(v4, v0);
    if (v7)
    {
      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBLEController_aggressiveScannerTimer])
      {
        sub_1005C2394(sub_1005C70A8, &unk_1008E9110);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005C6D14(void *a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1005C6D8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1005C6E80(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_1005C6F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005C3818(a1, v4, v5, v6);
}

uint64_t sub_1005C6FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005C3C4C(a1, v4, v5, v6);
}

uint64_t sub_1005C70B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1005C718C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

id sub_1005C72C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1005C73B0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984D08);
  v1 = sub_10000C4AC(v0, qword_100984D08);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005C7478(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005C7684, v15, 0);
}

uint64_t sub_1005C7684()
{
  v56 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[2];
  SFAirDropReceive.AskRequest.type.getter();
  LOBYTE(v4) = SFAirDrop.TransferType.isLinks.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[11];
    v6 = v0[2];
    v7 = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = v7;
    v9 = 0;
    v10 = v7 + 56;
    v11 = -1;
    v12 = -1 << *(v7 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v7 + 56);
    v14 = (63 - v12) >> 6;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v0[12];
      v17 = v0[10];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v5 + 16))(v16, *(v8 + 48) + *(v5 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1005C8694();
      (*(v5 + 8))(v16, v17);
      if ((v19 & 1) == 0)
      {

        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        sub_1000276B4(0, &qword_100978130, LSBundleRecord_ptr);
        v21 = sub_1005C72C8(0xD00000000000001CLL, 0x80000001007883D0, 1);
        v42 = v0[3];
        v43 = *(v42 + 16);
        *(v42 + 16) = v21;

        goto LABEL_18;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = v0[2];
    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100984D08);
    (*(v23 + 16))(v22, v25, v24);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[8];
    v31 = v0[9];
    v32 = v0[7];
    if (v29)
    {
      v34 = v0[5];
      v33 = v0[6];
      v35 = v0[4];
      v53 = v28;
      v36 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v36 = 136315394;
      v51 = v27;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002891F4();
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v32;
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      (*(v30 + 8))(v31, v37);
      v40 = sub_10000C4E4(v50, v39, &v55);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v41;
      *v52 = v41;
      _os_log_impl(&_mh_execute_header, v51, v53, "Failed to get ShareBear for ask request %s: %@", v36, 0x16u);
      sub_100005508(v52, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v54);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

LABEL_18:
    v20 = *(v0[3] + 16) != 0;
  }

  else
  {
LABEL_13:
    v20 = 0;
  }

  v44 = v0[15];
  v45 = v0[12];
  v46 = v0[9];
  v47 = v0[6];

  v48 = v0[1];

  return v48(v20);
}

uint64_t sub_1005C7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1005C7F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerSharediCloudDocumentsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1005C7FC8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1005C7478(a1);
}

void sub_1005C8088(uint64_t a1, int a2)
{
  v40 = a2;
  v2 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  *&v39 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v9 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v9, v8);

  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v14 = 0;
  if (v12(v8, 1, v10) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v11 + 8))(v8, v10);
  }

  countAndFlagsBits = SFSharediCloudDocumentsLinkToAppName();

  if (countAndFlagsBits)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = String.lowercased()();
    countAndFlagsBits = v17._countAndFlagsBits;
    object = v17._object;
  }

  else
  {
    object = 0;
  }

  v19 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB398(v19, v6);

  if (v12(v6, 1, v10) == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(v11 + 8))(v6, v10);
  }

  v23 = v39;
  v24 = 0xD00000000000001CLL;
  v25 = SFSharediCloudDocumentsLinkToFileName();

  if (v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v23 == 1 && object && v28)
    {
      v29 = "SHARED_NUMBERS_DOCUMENT_LINK";
      if (countAndFlagsBits == 0x65746F6E79656BLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v29 = "SHARED_PAGES_DOCUMENT_LINK", countAndFlagsBits == 0x737265626D756ELL) && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_23:
        sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
        inited = swift_initStackObject();
        v39 = xmmword_1007F5670;
        *(inited + 16) = xmmword_1007F5670;
        *(inited + 32) = v24;
        *(inited + 40) = v29 | 0x8000000000000000;
        *(inited + 48) = 1;

        sub_1003D8D18(inited, v40 & 1);
        swift_setDeallocating();
        sub_100005508(inited + 32, &qword_100981D40, &unk_1007FA6C0);
        v31 = String._bridgeToObjectiveC()();

        v32 = SFLocalizedStringForKey();

        if (v32)
        {

          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
          v33 = swift_allocObject();
          *(v33 + 16) = v39;
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = sub_100026764();
          *(v33 + 32) = v26;
          *(v33 + 40) = v28;
          static String.localizedStringWithFormat(_:_:)();

LABEL_27:

          return;
        }

        goto LABEL_29;
      }

      v29 = "SHARED_ICLOUD_DOCUMENT_LINK";
      if (countAndFlagsBits == 0x7365676170 && object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v24 = 0xD00000000000001ALL;
        goto LABEL_23;
      }
    }
  }

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v34 = swift_initStackObject();
  v39 = xmmword_1007F5670;
  *(v34 + 16) = xmmword_1007F5670;
  *(v34 + 32) = 0xD00000000000001BLL;
  v35 = v34 + 32;
  *(v34 + 40) = 0x8000000100797A30;
  *(v34 + 48) = v23;
  sub_1003D8D18(v34, v40 & 1);
  swift_setDeallocating();
  sub_100005508(v35, &qword_100981D40, &unk_1007FA6C0);
  v36 = String._bridgeToObjectiveC()();

  v37 = SFLocalizedStringForKey();

  if (v37)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v38 = swift_allocObject();
    *(v38 + 16) = v39;
    *(v38 + 56) = &type metadata for Int;
    *(v38 + 64) = &protocol witness table for Int;
    *(v38 + 32) = v23;
    static String.localizedStringWithFormat(_:_:)();
    goto LABEL_27;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1005C8694()
{
  v0 = objc_opt_self();
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v31[0] = 0;
  v4 = [v0 appLinksWithURL:v2 limit:0x7FFFFFFFFFFFFFFFLL error:v31];

  v5 = v31[0];
  if (v4)
  {
    sub_1000276B4(0, &qword_10097B738, LSAppLink_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v5;

    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      v29 = v6 & 0xFFFFFFFFFFFFFF8;
      v30 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v30)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_21;
          }

          v10 = *(v6 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 targetApplicationRecord];
        v14 = [v13 bundleIdentifier];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v31[0] = v15;
          v31[1] = v17;
          __chkstk_darwin(v18);
          v28[2] = v31;
          v19 = sub_10039026C(sub_100345B28, v28, &off_1008D6FD8);

          if (v19)
          {

            sub_10032B298(&unk_1008D6FF8);
            return 1;
          }
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    sub_10032B298(&unk_1008D6FF8);
  }

  else
  {
    v21 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973B00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100984D08);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get app links with error %@", v25, 0xCu);
      sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1005C8A68()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984E00);
  v1 = sub_10000C4AC(v0, qword_100984E00);
  if (qword_100973770 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005C8BF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1005C8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 241) = a5;
  *(v5 + 24) = a4;
  v6 = sub_10028088C(&qword_100984EA0, &qword_10080C7D0);
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  v9 = *(*(sub_10028088C(&qword_100984EA8, &qword_10080C7D8) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v10 = sub_10028088C(&qword_100984EB0, &qword_10080C7E0);
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v13 = sub_10028088C(&qword_100984EB8, &qword_10080C7E8);
  *(v5 + 96) = v13;
  v14 = *(v13 - 8);
  *(v5 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v16 = type metadata accessor for LSKStatusOptions.Scope();
  *(v5 + 120) = v16;
  v17 = *(v16 - 8);
  *(v5 + 128) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v19 = type metadata accessor for LSKStatusOptions();
  *(v5 + 144) = v19;
  v20 = *(v19 - 8);
  *(v5 + 152) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v22 = sub_10028088C(&qword_100984EC0, &qword_10080C7F0);
  *(v5 + 168) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return _swift_task_switch(sub_1005C8FF4, 0, 0);
}

uint64_t sub_1005C8FF4()
{
  v20 = *(v0 + 184);
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 24);
  v17 = *(*(v0 + 168) + 48);
  v18 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKClient);
  *(v0 + 240) = *(v0 + 241);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKKey;
  (*(v2 + 104))(v3, enum case for LSKStatusOptions.Scope.sameAccount(_:), v4);
  sub_10028088C(&qword_100984EC8, &qword_10080C7F8);
  v7 = type metadata accessor for LSKStatusOptions.DeviceType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007F5670;
  (*(v8 + 104))(v11 + v10, enum case for LSKStatusOptions.DeviceType.n301(_:), v7);
  LSKStatusOptions.init(scope:publishToDeviceTypes:)();
  v12 = async function pointer to LSKLocalStatusClient.publish<A>(_:for:options:)[1];
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_1005C9214;
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);

  return LSKLocalStatusClient.publish<A>(_:for:options:)(v14, v20 + v17, v0 + 240, v5 + v6, v15, &type metadata for Bool, &protocol witness table for Bool, &protocol witness table for Bool);
}

uint64_t sub_1005C9214()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1005C9FF4;
  }

  else
  {
    v6 = sub_1005C9384;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005C9384()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[12];
  v4 = v0[13];
  sub_1005CBDB0(v0[23], v1);
  v5 = *(v2 + 48);
  v6 = (*(v4 + 48))(v1 + v5, 1, v3);
  v7 = v0[22];
  if (v6 == 1)
  {
    v8 = v0[4];
    v9 = v0[5];
    sub_100005508(v1 + v5, &qword_100984ED0, &qword_10080C800);
    (*(v9 + 8))(v7, v8);
    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100984E00);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[23];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Not scanning for deliveries", v15, 2u);
    }

    sub_100005508(v14, &qword_100984EC0, &qword_10080C7F0);
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[11];
    v23 = v0[7];
    v22 = v0[8];
    v24 = v0[6];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[11];
    v28 = v0[4];
    v29 = v0[5];
    (*(v0[13] + 32))(v0[14], v1 + v5, v0[12]);
    v30 = *(v29 + 8);
    v0[26] = v30;
    v0[27] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v7, v28);
    LSKPublishedStatusSequence.makeAsyncIterator()();
    v31 = sub_100011630(&qword_100984ED8, &qword_100984EB0, &qword_10080C7E0);
    v32 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v33 = swift_task_alloc();
    v0[28] = v33;
    *v33 = v0;
    v33[1] = sub_1005C96AC;
    v34 = v0[11];
    v35 = v0[8];
    v36 = v0[9];

    return dispatch thunk of AsyncIteratorProtocol.next()(v35, v36, v31);
  }
}

uint64_t sub_1005C96AC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1005C9D08;
  }

  else
  {
    v3 = sub_1005C97C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005C97C0()
{
  v60 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 241);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    if (v4)
    {
      v5 = 0x64656C62616E65;
    }

    else
    {
      v5 = 0x64656C6261736964;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100984E00);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 184);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);
    if (v10)
    {
      v57 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v59 = v16;
      *v15 = 136315138;
      v17 = sub_10000C4E4(v5, v6, &v59);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Finished delivering cellular slicing status: %s", v15, 0xCu);
      sub_10000C60C(v16);

      (*(v12 + 8))(v13, v14);
      v18 = v57;
    }

    else
    {

      (*(v12 + 8))(v13, v14);
      v18 = v11;
    }

    sub_100005508(v18, &qword_100984EC0, &qword_10080C7F0);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 136);
    v43 = *(v0 + 112);
    v44 = *(v0 + 88);
    v46 = *(v0 + 56);
    v45 = *(v0 + 64);
    v47 = *(v0 + 48);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 56), v1, v2);
    if (qword_100973B08 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 48);
    v20 = *(v0 + 56);
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100984E00);
    (*(v22 + 16))(v19, v20, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 208);
    v28 = *(v0 + 216);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v31 = *(v0 + 32);
    if (v26)
    {
      v56 = v25;
      v32 = swift_slowAlloc();
      v58 = v30;
      v59 = swift_slowAlloc();
      v33 = v59;
      *v32 = 136315138;
      v34 = LSKPublishedStatus.debugDescription.getter();
      v36 = v35;
      v27(v29, v31);
      v37 = sub_10000C4E4(v34, v36, &v59);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v24, v56, "Delivery update: %s", v32, 0xCu);
      sub_10000C60C(v33);

      v38 = v58;
    }

    else
    {

      v27(v29, v31);
      v38 = v30;
    }

    v27(v38, v31);
    v50 = sub_100011630(&qword_100984ED8, &qword_100984EB0, &qword_10080C7E0);
    v51 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v52 = swift_task_alloc();
    *(v0 + 224) = v52;
    *v52 = v0;
    v52[1] = sub_1005C96AC;
    v53 = *(v0 + 88);
    v54 = *(v0 + 64);
    v55 = *(v0 + 72);

    return dispatch thunk of AsyncIteratorProtocol.next()(v54, v55, v50);
  }
}

uint64_t sub_1005C9D08()
{
  *(v0 + 16) = *(v0 + 232);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005C9D9C, 0, 0);
}

uint64_t sub_1005C9D9C()
{
  v1 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v2, v4);
  sub_100005508(v1, &qword_100984EC0, &qword_10080C7F0);
  v5 = v0[29];
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100984E00);
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
    _os_log_impl(&_mh_execute_header, v7, v8, "### Failed to publish for cellular slicing capability: %@", v9, 0xCu);
    sub_100005508(v10, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[20];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005C9FF4()
{
  v1 = v0[25];
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984E00);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Failed to publish for cellular slicing capability: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005CA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_10028088C(&qword_100984E80, &qword_10080C7A8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100984E88, &qword_10080C7B0);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100984E90, &qword_10080C7B8);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1005CA568, 0, 0);
}

uint64_t sub_1005CA568()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKClient);
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKKey;
  v4 = async function pointer to LSKLocalStatusClient.subscribe<A>(to:)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1005CA63C;
  v6 = v0[13];

  return LSKLocalStatusClient.subscribe<A>(to:)(v6, v1 + v3, &type metadata for Bool, &protocol witness table for Bool, &protocol witness table for Bool);
}

uint64_t sub_1005CA63C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1005CB0A4;
  }

  else
  {
    v3 = sub_1005CA750;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005CA750()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  LSKObservationsSequence.makeAsyncIterator()();
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated;
  v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock;
  v0[17] = v4;
  v5 = sub_100011630(&qword_100984E98, &qword_100984E88, &qword_10080C7B0);
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1005CA848;
  v8 = v0[10];
  v9 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v9, v5);
}

uint64_t sub_1005CA848()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1005CAE1C;
  }

  else
  {
    v3 = sub_1005CA95C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1005CA980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = v3;
  v4 = *(v3 + 160);
  if (v4)
  {
    v44 = *(v4 + 16);
    if (v44)
    {
      v5 = 0;
      v6 = *(*(v3 + 32) + *(v3 + 128));
      v7 = *(*(v3 + 48) + 80);
      v43 = v4 + ((v7 + 32) & ~v7);
      v8 = *(v3 + 152);
      v42 = *(v3 + 160);
      v41 = v6;
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
        }

        v9 = *(v3 + 48);
        v10 = *(v3 + 56);
        v11 = *(v3 + 40);
        (*(v9 + 16))(v10, v43 + *(v9 + 72) * v5, v11);
        v45 = LSKLocalStatusObservation.deviceIDSIdentifier.getter();
        v13 = v12;
        LSKLocalStatusObservation.value.getter();
        (*(v9 + 8))(v10, v11);
        v14 = *(v3 + 168);
        if (qword_100973B08 != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_10000C4AC(v15, qword_100984E00);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v46 = v19;
          *v18 = 67109378;
          *(v18 + 4) = v14;
          *(v18 + 8) = 2080;
          v20 = v45;
          *(v18 + 10) = sub_10000C4E4(v45, v13, &v46);
          _os_log_impl(&_mh_execute_header, v16, v17, "Observed cellular slicing state of %{BOOL}d for %s", v18, 0x12u);
          sub_10000C60C(v19);
          v6 = v41;

          v4 = v42;
        }

        else
        {

          v20 = v45;
        }

        v21 = *(v3 + 32);
        v22 = swift_task_alloc();
        *(v22 + 16) = v21;
        *(v22 + 24) = v20;
        *(v22 + 32) = v13;
        *(v22 + 40) = v14;
        v23 = swift_task_alloc();
        *(v23 + 16) = sub_1005CBC7C;
        *(v23 + 24) = v22;
        os_unfair_lock_lock(v6 + 4);
        sub_1002F5418(v24);
        if (v8)
        {
          break;
        }

        v25 = *(v3 + 136);
        v26 = *(v3 + 32);
        os_unfair_lock_unlock(v6 + 4);

        v27 = *(v26 + v25);
        if (v27)
        {
          v28 = *(*(v3 + 32) + *(v3 + 136) + 8);

          v27(v45, v13);
          sub_100015D04(v27);
        }

        ++v5;

        v8 = 0;
        if (v44 == v5)
        {
          goto LABEL_14;
        }
      }

      os_unfair_lock_unlock(v6 + 4);
    }

    else
    {
LABEL_14:

      v29 = sub_100011630(&qword_100984E98, &qword_100984E88, &qword_10080C7B0);
      v30 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v31 = swift_task_alloc();
      *(v3 + 144) = v31;
      *v31 = v3;
      v31[1] = sub_1005CA848;
      v32 = *(v3 + 80);
      a2 = *(v3 + 64);
      a1 = v3 + 16;
      a3 = v29;

      return dispatch thunk of AsyncIteratorProtocol.next()(a1, a2, a3);
    }
  }

  else
  {
    v34 = *(v3 + 96);
    v33 = *(v3 + 104);
    v35 = *(v3 + 88);
    (*(*(v3 + 72) + 8))(*(v3 + 80), *(v3 + 64));
    (*(v34 + 8))(v33, v35);
    v36 = *(v3 + 104);
    v37 = *(v3 + 80);
    v38 = *(v3 + 56);

    v39 = *(v3 + 8);

    return v39();
  }
}

uint64_t sub_1005CAE1C()
{
  *(v0 + 24) = *(v0 + 152);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1005CAEB0, 0, 0);
}

uint64_t sub_1005CAEB0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100984E00);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "### Failed to subscribe to cellular slicing availability: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005CB0A4()
{
  v1 = v0[15];
  if (qword_100973B08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984E00);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "### Failed to subscribe to cellular slicing availability: %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005CB264(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  swift_beginAccess();
  v9 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_10057C2B0(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_1005CB4D4(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for TerminusFeatureFlag;
  v8[4] = sub_1005CBB2C();
  v4 = isFeatureEnabled(_:)();
  sub_10000C60C(v8);
  result = 0;
  if (v4)
  {
    if (a2)
    {
      v6 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock);
      v7 = __chkstk_darwin(0);
      __chkstk_darwin(v7);
      os_unfair_lock_lock(v6 + 4);
      sub_1000156CC(v8);
      os_unfair_lock_unlock(v6 + 4);
      return LOBYTE(v8[0]);
    }
  }

  return result;
}

uint64_t sub_1005CB5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_100012854(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v13 = *(*(v10 + 56) + v11);

LABEL_6:
  *a4 = v13;
  return result;
}

id sub_1005CB6F4()
{
  v1 = v0;
  v2 = type metadata accessor for LSKDomain();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_cellularSlicingObservations;
  *&v1[v7] = sub_100281D9C(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_tetheringLSKClient;
  v9 = type metadata accessor for LSKLocalStatusClient();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v1[v8] = LSKLocalStatusClient.init()();
  (*(v3 + 104))(v6, enum case for LSKDomain.personalHotspot(_:), v2);
  LSKKey.init(domain:name:)();
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_lock;
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v1[v12] = v13;
  v14 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary28SDLocalCellularStatusManager_statusUpdated];
  v15 = type metadata accessor for SDLocalCellularStatusManager();
  *v14 = 0;
  *(v14 + 1) = 0;
  v17.receiver = v1;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_1005CB8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDLocalCellularStatusManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDLocalCellularStatusManager()
{
  result = qword_100984E60;
  if (!qword_100984E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005CBA14()
{
  sub_1005CBACC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1005CBACC()
{
  if (!qword_100984E70)
  {
    v0 = type metadata accessor for LSKKey();
    if (!v1)
    {
      atomic_store(v0, &qword_100984E70);
    }
  }
}

unint64_t sub_1005CBB2C()
{
  result = qword_100984E78;
  if (!qword_100984E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984E78);
  }

  return result;
}

uint64_t sub_1005CBBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005CA3CC(a1, v4, v5, v6);
}

uint64_t sub_1005CBCA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_1005CBCEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1005C8D10(a1, v4, v5, v6, v7);
}

uint64_t sub_1005CBDB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100984EC0, &qword_10080C7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1005CBE20()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

unint64_t sub_1005CBE8C()
{
  result = qword_100984EE8;
  if (!qword_100984EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984EE8);
  }

  return result;
}

Swift::Int sub_1005CBEE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC028()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC140()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC24C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC39C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1005CC4CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1005CC610(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1005CC67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v6, a3);
}

uint64_t sub_1005CC73C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984EF0);
  v1 = sub_10000C4AC(v0, qword_100984EF0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005CC81C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1005CC958@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005D7D10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005CC988@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000074656ELL;
  v3 = *v1;
  v4 = 0xEB00000000746E65;
  v5 = 0x674179627261656ELL;
  v6 = 0x80000001007888E0;
  v7 = 0xD000000000000010;
  if (v3 != 5)
  {
    v7 = 0x65756C4265726F63;
    v6 = 0xED000068746F6F74;
  }

  v8 = 0xE900000000000054;
  v9 = 0x4274726F70706172;
  result = 0x4174726F70706172;
  if (v3 != 3)
  {
    v9 = 0x4174726F70706172;
    v8 = 0xEB000000004C4457;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = 0x6C61636F4C736469;
  if (v3 == 1)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v11 = 0x7265746E49736469;
  }

  if (*v1)
  {
    v5 = v11;
    v4 = v2;
  }

  if (*v1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 <= 2u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_1005CCA8C(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport;
      }

      else
      {
        v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport;
      }
    }

    else
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport;
    }

    goto LABEL_15;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT;
    }

    else
    {
      v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL;
    }

    goto LABEL_15;
  }

  if (a1 != 5)
  {
    v3 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport;
LABEL_15:
    v8 = *(v2 + v3);
    swift_unknownObjectRetain();
    return v8;
  }

  sub_1004FFD8C(a2, &v9);
  if (v10)
  {
    v4 = sub_1000121F8(&v9, v11);
    v5 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_transportLock);
    v6 = __chkstk_darwin(v4);
    __chkstk_darwin(v6);
    os_unfair_lock_lock(v5 + 4);
    sub_1003FC8BC(&v9);
    os_unfair_lock_unlock(v5 + 4);
    *&v8 = v9;
    sub_10000C60C(v11);
    return v8;
  }

  sub_100005508(&v9, &qword_100982080, &unk_1007FDD30);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005CCC7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984EF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TransportManager: sending", v12, 2u);
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    *v15 = 136315138;
    v17 = sub_1004FECE8(a4);
    v19 = a1;
    v20 = a2;
    v21 = sub_10000C4E4(v17, v18, v28);

    *(v15 + 4) = v21;
    a2 = v20;
    a1 = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "TransportManager: sending message of type: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  sub_1002A9938(a3, v28);
  sub_1005CCA8C(a5, v28);
  v23 = v22;
  sub_100005508(v28, &qword_100982080, &unk_1007FDD30);
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 48))(a1, a2, a3, a4, ObjectType, v23);
  swift_unknownObjectRelease();
  return v25 | ((HIDWORD(v25) & 1) << 32);
}

uint64_t sub_1005CCEF8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100984EF0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TransportManager: handling", v13, 2u);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v25 = a3;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    v18 = sub_1004FECE8(a3);
    v20 = sub_10000C4E4(v18, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransportManager: handling message of type: %s", v16, 0xCu);
    sub_10000C60C(v17);
  }

  v21 = v5 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 8))(a1, a2, v25, a4, ObjectType, v23);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CD160(int a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v29 = a5;
  v31 = a3;
  v32 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = type metadata accessor for DispatchQoS();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v33);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100984EF0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "TransportManager: handling error", v20, 2u);
  }

  v21 = *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = a1;
  *(v22 + 32) = a2;
  v24 = v31;
  v23 = v32;
  *(v22 + 40) = v31;
  *(v22 + 48) = v23;
  *(v22 + 56) = v29;
  aBlock[4] = sub_1005D7F14;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E9830;
  v25 = _Block_copy(aBlock);
  v26 = v6;

  sub_100294008(v24, v23);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v30 + 8))(v12, v9);
  (*(v13 + 8))(v16, v33);
}

uint64_t sub_1005CD4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a3, a4, a5, a6, ObjectType, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CD5C8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport + 8];
  v13 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_nearbyAgentTransport];
  ObjectType = swift_getObjectType();
  result = (*(v12 + 32))(ObjectType, v12);
  if (result)
  {
    v16 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport];
    v17 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport + 8];
    v18 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsLocalTransport];
    v19 = swift_getObjectType();
    result = (*(v17 + 32))(v19, v17);
    if (result)
    {
      v20 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport];
      v21 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_idsInternetTransport + 8];
      v22 = swift_getObjectType();
      result = (*(v21 + 32))(v22, v21);
      if (result)
      {
        v23 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT];
        v24 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportBT + 8];
        v25 = swift_getObjectType();
        result = (*(v24 + 32))(v25, v24);
        if (result)
        {
          v26 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL];
          v27 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportTransportAWDL + 8];
          v28 = swift_getObjectType();
          result = (*(v27 + 32))(v28, v27);
          if (result)
          {
            v29 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport];
            v30 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_coreBluetoothTransport + 8];
            v31 = swift_getObjectType();
            result = (*(v30 + 32))(v31, v30);
            if (result)
            {
              v32 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue];
              v33 = swift_allocObject();
              *(v33 + 16) = v1;
              aBlock[4] = sub_1005D7F0C;
              aBlock[5] = v33;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100011678;
              aBlock[3] = &unk_1008E97E0;
              v34 = _Block_copy(aBlock);
              v35 = v1;
              static DispatchQoS.unspecified.getter();
              v36[1] = _swiftEmptyArrayStorage;
              sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
              sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
              sub_100013EB8();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v34);
              (*(v3 + 8))(v6, v2);
              (*(v8 + 8))(v11, v7);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1005CD9A4(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005CDA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SDAuthenticationTransportRapportInfraWiFiOnly();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1004FFD8C(a3, &v10);
    if (v11)
    {
      sub_1000121F8(&v10, v12);
      v5 = v13;
      v6 = v14;
      sub_10002CDC0(v12, v13);
      result = (*(v6 + 8))(v5, v6);
      if (v7)
      {
        v8 = result;
        v9 = v7;
        swift_beginAccess();
        sub_1002B24B4(0, 0, v8, v9);
        swift_endAccess();
        return sub_10000C60C(v12);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return sub_100005508(&v10, &qword_100982080, &unk_1007FDD30);
    }
  }

  return result;
}

uint64_t sub_1005CDB38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_10002CDC0(a2, v4);
  v25 = *(v5 + 8);
  result = v25(v4, v5);
  if (!v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v7;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_rapportInfraWiFiTransportsByIdentifier;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {
    v12 = sub_100012854(v8, v9);
    v14 = v13;

    if (v14)
    {
      v26 = *(*(v11 + 56) + 16 * v12);
      swift_endAccess();
      *a3 = v26;
      return swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAuthenticationTransportManager_queue);
  type metadata accessor for SDAuthenticationTransportRapportInfraWiFiOnly();
  v16 = swift_allocObject();
  *(v16 + 56) = 0;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v17 = objc_allocWithZone(RPCompanionLinkClient);
  v18 = v15;
  v19 = [v17 init];
  *(v16 + 48) = v19;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  [v19 setDispatchQueue:v18];
  *(v16 + 64) = 0x2020000400004;
  result = v25(v4, v5);
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = result;
  v22 = v20;
  swift_beginAccess();

  v23 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1005D7D5C(v16, v21, v22, isUniquelyReferenced_nonNull_native, &v28);

  *(a1 + v10) = v28;
  result = swift_endAccess();
  *a3 = v16;
  *(a3 + 8) = &off_1008E9580;
  return result;
}

void sub_1005CDEB4(uint64_t a1)
{
  if (a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100984EF0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_errorRetain();
      sub_10028088C(&unk_100985A40, &qword_1007FE740);
      v5 = String.init<A>(describing:)();
      v7 = sub_10000C4E4(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Error sending data: %s", v3, 0xCu);
      sub_10000C60C(v4);

      return;
    }
  }

  else
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Sent data", v10, 2u);
    }
  }
}

void sub_1005CE104()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v0 - 8);
  v1 = *(v68 + 64);
  __chkstk_darwin(v0);
  v3 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v4);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v63 - v13;
  v15 = type metadata accessor for UUID();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = Notification.userInfo.getter();
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v21;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v22 = sub_100570754(&aBlock), (v23 & 1) == 0))
  {

    sub_100285E74(&aBlock);
LABEL_14:
    v79 = 0u;
    v80 = 0u;
    goto LABEL_15;
  }

  sub_10000C5B0(*(v20 + 56) + 32 * v22, &v79);
  sub_100285E74(&aBlock);

  if (!*(&v80 + 1))
  {
LABEL_15:
    v34 = &unk_1009746F0;
    v35 = &qword_1007F90B0;
    v36 = &v79;
LABEL_16:
    sub_100005508(v36, v34, v35);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v65 = aBlock;
  v66 = v72;
  v24 = Notification.userInfo.getter();
  if (!v24)
  {
    sub_100026AC0(v65, v66);
    v79 = 0u;
    v80 = 0u;
    goto LABEL_24;
  }

  v25 = v24;
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v26;
  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v27 = sub_100570754(&aBlock), (v28 & 1) == 0))
  {

    sub_100285E74(&aBlock);
    v79 = 0u;
    v80 = 0u;
    sub_100026AC0(v65, v66);
LABEL_24:
    v41 = v70;
    sub_100005508(&v79, &unk_1009746F0, &qword_1007F90B0);
LABEL_25:
    (*(v41 + 56))(v14, 1, 1, v15);
LABEL_26:
    v34 = &unk_100976120;
    v35 = &qword_1007F9260;
    v36 = v14;
    goto LABEL_16;
  }

  sub_10000C5B0(*(v25 + 56) + 32 * v27, &v79);
  sub_100285E74(&aBlock);

  if (!*(&v80 + 1))
  {
    sub_100026AC0(v65, v66);
    goto LABEL_24;
  }

  v29 = v65;
  v30 = v66;
  sub_1000276B4(0, &qword_100985A88, SFBLEDevice_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100026AC0(v29, v30);
    v41 = v70;
    goto LABEL_25;
  }

  v31 = aBlock;
  v32 = [aBlock identifier];

  if (v32)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v42 = v70;
  (*(v70 + 56))(v12, v33, 1, v15);
  sub_1005D8888(v12, v14);
  v43 = (*(v42 + 48))(v14, 1, v15);
  v44 = v66;
  if (v43 == 1)
  {
    sub_100026AC0(v65, v66);
    goto LABEL_26;
  }

  (*(v42 + 32))(v18, v14, v15);
  v45 = objc_allocWithZone(SDAutoUnlockSessionWrapper);
  v46 = v65;
  sub_100294008(v65, v44);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v46, v44);
  v48 = [v45 initWithData:isa];
  v49 = v44;
  v50 = v48;

  if (v50)
  {
    if ([v50 hasEncryptedPayload])
    {
      v51 = v69;
      v53 = v69[6];
      v52 = v69[7];

      v64 = v53(v50, v18);
      v55 = v54;

      if (v55 >> 60 != 15)
      {
        v56 = v55;
        v63[2] = v51[2];
        v57 = swift_allocObject();
        swift_weakInit();
        v58 = swift_allocObject();
        v59 = v64;
        v58[2] = v64;
        v58[3] = v56;
        v63[0] = v56;
        v58[4] = v50;
        v58[5] = v57;
        v63[1] = v57;
        v75 = sub_1005D88F8;
        v76 = v58;
        aBlock = _NSConcreteStackBlock;
        v72 = 1107296256;
        v73 = sub_100011678;
        v74 = &unk_1008E9B50;
        v60 = _Block_copy(&aBlock);
        v61 = v59;
        v62 = v63[0];
        sub_1002A9924(v61, v63[0]);
        v69 = v50;

        static DispatchQoS.unspecified.getter();
        *&v79 = _swiftEmptyArrayStorage;
        sub_1000054C0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags);
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100013EB8();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v60);

        sub_10028BCC0(v64, v62);
        sub_100026AC0(v65, v66);
        (*(v68 + 8))(v3, v0);
        (*(v67 + 8))(v7, v4);
        (*(v70 + 8))(v18, v15);

        return;
      }
    }

    (*(v70 + 8))(v18, v15);
    sub_100026AC0(v65, v66);
  }

  else
  {
    (*(v70 + 8))(v18, v15);
    sub_100026AC0(v46, v49);
  }

LABEL_17:
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_100984EF0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Received corrupt wrapper", v40, 2u);
  }
}

void sub_1005CEA18(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100984EF0);
  sub_100294008(a1, a2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100026AC0(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136315138;
    v11 = Data.description.getter();
    v13 = sub_10000C4E4(v11, v12, v28);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received data: %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  v14 = [a3 messageType];
  v15 = sub_1004FFD78(v14);
  if (v15 == 13)
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Received unknown message type %u", v17, 8u);
    }
  }

  else
  {
    v18 = v15;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = swift_unknownObjectWeakLoadStrong();
      v22 = *(v20 + 40);

      if (v21)
      {
        v23 = [objc_opt_self() sharedTransport];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 activeDevice];

          if (v25)
          {
            ObjectType = swift_getObjectType();
            v28[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
            v28[4] = &off_1008EA2C0;
            v28[0] = v25;
            (*(v22 + 8))(a1, a2, v18, v28, ObjectType, v22);
            swift_unknownObjectRelease();
            sub_10000C60C(v28);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1005CEE7C()
{
  sub_10004C60C(v0 + 32);
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1005CEEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1005CEF70(void *a1)
{
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_queue] = a1;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_ready] = 1;
  v3 = objc_allocWithZone(IDSService);
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithService:v5];

  if (v6)
  {

    v15 = sub_1000276B4(0, &unk_100985A30, IDSService_ptr);
    v16 = &off_1008E2EE8;
    *&v14 = v6;
    sub_1000121F8(&v14, &v1[OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService]);
    v13.receiver = v1;
    v13.super_class = type metadata accessor for SDAuthenticationTransportIDSService();
    v7 = objc_msgSendSuper2(&v13, "init");
    sub_1002A9938(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService, &v14);
    v8 = v15;
    v9 = v16;
    sub_10002CDC0(&v14, v15);
    v10 = v9[2];
    v11 = v4;
    v12 = v7;
    v10(v7, v4, v8, v9);

    sub_10000C60C(&v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005CF114(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v5 = v4;
  v8 = a4;
  v9 = objc_allocWithZone(IDSProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithProtobufData:isa type:(v8 + 2006) isResponse:0];

  v12 = a3[3];
  v13 = a3[4];
  sub_10002CDC0(a3, v12);
  v14 = (*(v13 + 32))(v12, v13);
  sub_10028088C(&qword_100985A68, &qword_10080CDB8);
  if (v14)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v16;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    sub_1002A9938(a3, &v45);
    sub_10028088C(&unk_100985A70, &unk_10080CDC0);
    sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
    if (swift_dynamicCast())
    {
      v17 = v44;
    }

    else
    {
      v17 = 0;
    }

    v18 = IDSCopyIDForDevice();

    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v45 = v19;
    v46 = v21;
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    sub_1005D808C();
  }

  AnyHashable.init<A>(_:)();
  v22 = sub_1002F31EC(inited);
  swift_setDeallocating();
  sub_100285E74(inited + 32);
  sub_10028088C(&qword_100985A60, &unk_100808040);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1007F8830;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v24;
  AnyHashable.init<A>(_:)();
  *(v23 + 96) = &type metadata for Int;
  *(v23 + 72) = 15;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v25;
  AnyHashable.init<A>(_:)();
  *(v23 + 168) = &type metadata for Bool;
  v26 = v14 & 1;
  *(v23 + 144) = v26;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v27;
  AnyHashable.init<A>(_:)();
  *(v23 + 240) = &type metadata for Bool;
  *(v23 + 216) = v26;
  v28 = sub_10027FD18(v23);
  swift_setDeallocating();
  sub_10028088C(&qword_1009832B0, &unk_1007F64D0);
  swift_arrayDestroy();
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v29 = NSString.init(stringLiteral:)();
  sub_1002A9938(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_idsService, &v45);
  v30 = v47;
  v31 = v48;
  sub_10002CDC0(&v45, v47);
  v44 = v29;
  (*(v31 + 24))(v11, v22, 300, v28, &v44, v30, v31);

  v32 = v44;
  v33 = v44;

  sub_10000C60C(&v45);
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100984EF0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v37 = 136315394;
    v40 = sub_1004FECE8(a4);
    v42 = sub_10000C4E4(v40, v41, &v45);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2112;
    *(v37 + 14) = v33;
    *v38 = v32;
    v33 = v33;
    _os_log_impl(&_mh_execute_header, v35, v36, "Sent %s: %@", v37, 0x16u);
    sub_100005508(v38, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v39);
  }

  return 0x100000000;
}

id sub_1005CF9F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAuthenticationTransportIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005CFAE8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1005CFB34(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100984EF0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Successfully activated and registered request", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100984EF0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Received error upon activation: %@)", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);

LABEL_10:

    return;
  }
}

void sub_1005CFD84(char a1)
{
  v2 = v1;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100984EF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    v9 = sub_1004FECE8(a1);
    v11 = sub_10000C4E4(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering for %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = *(v2 + 32);
  sub_1004FECE8(a1);
  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v15;
  v18[4] = sub_1005D8080;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005CC67C;
  v18[3] = &unk_1008E9AD8;
  v17 = _Block_copy(v18);

  [v13 registerEventID:v14 options:0 handler:v17];
  _Block_release(v17);
}

void sub_1005CFFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100984EF0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v9 = 136315138;
    v11 = sub_1004FECE8(a3);
    v13 = sub_10000C4E4(v11, v12, v40);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v14 = sub_100570754(v40), (v15 & 1) == 0))
  {
    sub_100285E74(v40);
LABEL_19:

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      v31 = Dictionary.description.getter();
      v33 = sub_10000C4E4(v31, v32, v40);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get data: %s", v29, 0xCu);
      sub_10000C60C(v30);
    }

    goto LABEL_28;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v14, &v43);
  sub_100285E74(v40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_22:
    v43 = 0u;
    v44 = 0u;
    goto LABEL_23;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v16 = sub_100570754(v40), (v17 & 1) == 0))
  {
    sub_100285E74(v40);
    goto LABEL_22;
  }

  sub_10000C5B0(*(a2 + 56) + 32 * v16, &v43);
  sub_100285E74(v40);
  if (!*(&v44 + 1))
  {
LABEL_23:
    sub_100005508(&v43, &unk_1009746F0, &qword_1007F90B0);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v27 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v34))
    {
LABEL_27:
      sub_100026AC0(1635017060, 0xE400000000000000);
LABEL_28:

      return;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "No sender IDS ID";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v27, v34, v36, v35, 2u);

    goto LABEL_27;
  }

  v19 = v40[0];
  v18 = v40[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v21 = *(Strong + 16), v22 = *(Strong + 24), swift_unknownObjectRetain(), , !v21))
  {

    v27 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v34))
    {
      goto LABEL_27;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "No delegate to send date to";
    goto LABEL_26;
  }

  v39 = a2;
  v23 = [objc_opt_self() sharedTransport];
  if (v23)
  {
    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    v26 = [v24 idsDeviceForUniqueID:v25];

    if (v26)
    {

      v41 = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
      v42 = &off_1008EA2C0;
      v40[0] = v26;
    }

    else
    {
      v41 = type metadata accessor for AuthenticationDevice();
      v42 = &off_1008EA310;
      v37 = sub_10002F604(v40);

      sub_1005E7C74(v19, v18, v39, v37);
    }

    ObjectType = swift_getObjectType();
    (*(v22 + 8))(1635017060, 0xE400000000000000, a3, v40, ObjectType, v22);
    sub_100026AC0(1635017060, 0xE400000000000000);
    swift_unknownObjectRelease();
    sub_10000C60C(v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005D05E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005D064C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = [*(v5 + 48) destinationDevice];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 identifier];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a3 && v15 == a4)
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        LOBYTE(v12) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v17 = [*(v5 + 48) destinationDevice];
  if (v17 && (v17, (v12 & 1) == 0) || *(v5 + 56) == 1)
  {
    [*(v5 + 48) invalidate];
    v18 = [objc_allocWithZone(RPCompanionLinkClient) init];
    v19 = *(v5 + 48);
    *(v5 + 48) = v18;
  }

  v20 = [*(v5 + 48) destinationDevice];
  if (v20 && (v20, (v12 & 1) != 0) && *(v5 + 56) != 1)
  {
    sub_1005D1378(a5, a1, a2);
  }

  else
  {
    v21 = [objc_allocWithZone(RPCompanionLinkDevice) init];
    v22 = String._bridgeToObjectiveC()();
    [v21 setIdentifier:v22];

    [*(v5 + 48) setDestinationDevice:v21];
    [*(v5 + 48) setControlFlags:*(v5 + 64)];
    v23 = *(v5 + 48);
    v42 = sub_1005D805C;
    v43 = v5;
    v36 = a4;
    v24 = a2;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100011678;
    v41 = &unk_1008E99E8;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v26 setInvalidationHandler:v25];
    _Block_release(v25);

    v27 = *(v5 + 48);
    v42 = sub_1005D8064;
    v43 = v5;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100011678;
    v41 = &unk_1008E9A10;
    v28 = _Block_copy(&aBlock);

    v29 = v27;

    [v29 setErrorFlagsChangedHandler:v28];
    _Block_release(v28);

    v30 = *(v5 + 48);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a1;
    *(v32 + 32) = a2;
    *(v32 + 40) = a5;
    *(v32 + 48) = a3;
    *(v32 + 56) = v36;
    v42 = sub_1005D806C;
    v43 = v32;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1005CC610;
    v41 = &unk_1008E9A60;
    v33 = _Block_copy(&aBlock);
    v34 = v30;
    sub_100294008(a1, v24);

    [v34 activateWithCompletion:v33];
    _Block_release(v33);
  }

  LOBYTE(aBlock) = 1;
  return 0x100000000;
}

void sub_1005D0AA0(uint64_t a1)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "rpSender object invalidated", v5, 2u);
  }

  *(a1 + 56) = 1;
}

id sub_1005D0B84(uint64_t a1)
{
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v5 = 136315394;
    v21 = [*(a1 + 48) errorFlags];
    type metadata accessor for RPErrorFlags(0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = [*(a1 + 48) destinationDevice];
    if (v9 && (v10 = v9, v11 = [v9 identifier], v10, v11))
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = v12;
    }

    else
    {
      v14 = 0x8000000100798270;
      v15 = 0xD00000000000001BLL;
    }

    v16 = sub_10000C4E4(v15, v14, &v22);

    *(v5 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error Flags Changed to: %s for RPCompanionLinkClient with device %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  result = [*(a1 + 48) errorFlags];
  if ((result & 0x200) != 0)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Invalidating due to connection lost, cleaning up RPCompanionLinkClient", v20, 2u);
    }

    return [*(a1 + 48) invalidate];
  }

  return result;
}

uint64_t sub_1005D0E3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973B10 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100984EF0);
    swift_errorRetain();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = 7562617;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v13 = 138412546;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2080;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong && (v18 = *(Strong + 32), swift_unknownObjectRetain(), , v18))
      {
        swift_unknownObjectRelease();
        v19 = 0xE200000000000000;
        v12 = 28526;
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      v33 = sub_10000C4E4(v12, v19, &v44);

      *(v13 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v10, v11, "Received error upon activation: %@). Delegate is nil: %s", v13, 0x16u);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v15);
    }

    else
    {
    }

    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v36 = *(v34 + 32);
      v35 = *(v34 + 40);
      swift_unknownObjectRetain();

      if (v36)
      {
        swift_getObjectType();
        v37 = _convertErrorToNSError(_:)();
        v38 = sub_1004FFBC4(v37, 25);
        (*(v35 + 16))(v38);

LABEL_22:

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      *(v22 + 56) = 0;
      *(v22 + 24) = 1;
      if (*(v22 + 32))
      {
        v23 = *(v22 + 40);
        v24 = *(v22 + 32);
        ObjectType = swift_getObjectType();
        v26 = *(v23 + 24);
        swift_unknownObjectRetain();
        v26(ObjectType, v23);
        swift_unknownObjectRelease();
      }

      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000C4AC(v27, qword_100984EF0);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10000C4E4(a6, a7, &v43);
        _os_log_impl(&_mh_execute_header, v28, v29, "Successfully activated for connecting to IDS ID %s", v30, 0xCu);
        sub_10000C60C(v31);
      }

      sub_1005D1378(a5, a3, a4);
    }

    else
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v40 = *(result + 32);
        v39 = *(result + 40);
        swift_unknownObjectRetain();

        if (v40)
        {
          swift_getObjectType();
          v41 = sub_100010F88(10, 0xD000000000000029, 0x8000000100798240);
          (*(v39 + 16))(v41);
          goto LABEL_22;
        }
      }
    }
  }

  return result;
}

void sub_1005D1378(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  sub_1004FECE8(a1);
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();

  sub_10028088C(&qword_100985A60, &unk_100808040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  sub_100294008(a2, a3);
  sub_10027FD18(inited);
  swift_setDeallocating();
  sub_100005508(inited + 32, &qword_1009832B0, &unk_1007F64D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a1;
  aBlock[4] = sub_1005D804C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005CC610;
  aBlock[3] = &unk_1008E99C0;
  v14 = _Block_copy(aBlock);
  sub_100294008(a2, a3);

  [v8 sendEventID:v9 event:isa options:0 completion:v14];
  _Block_release(v14);
}

void sub_1005D15C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 code];

    if (v9 == -71148)
    {
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_100984EF0);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "rpSender was invalidated. Retrying", v13, 2u);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + 56) = 1;
      }

      swift_beginAccess();
      v15 = swift_weakLoadStrong();
      if (v15)
      {
        v16 = *(v15 + 48);

        v17 = [v16 destinationDevice];

        if (v17)
        {
          v18 = [v17 identifier];

          if (v18)
          {
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v21 = v20;

            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_1005D064C(a3, a4, v19, v21, a5);
            }

            else
            {
            }

            return;
          }
        }
      }
    }

    else
    {
      if (qword_100973B10 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000C4AC(v29, qword_100984EF0);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "Received error for sending request: %@", v32, 0xCu);
        sub_100005508(v33, &qword_100975400, &qword_1007F65D0);
      }

      swift_beginAccess();
      v35 = swift_weakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        swift_unknownObjectRetain();

        if (v36)
        {
          swift_getObjectType();
          v38 = _convertErrorToNSError(_:)();
          v39 = sub_1004FFBC4(v38, 25);
          (*(v37 + 16))(v39);

          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1005D1B5C();

        return;
      }
    }

    return;
  }

  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100984EF0);
  oslog = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315138;
    v26 = sub_1004FECE8(a5);
    v28 = sub_10000C4E4(v26, v27, &v41);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, oslog, v23, "Sent request: %s", v24, 0xCu);
    sub_10000C60C(v25);
  }

  else
  {
  }
}

id sub_1005D1B5C()
{
  v1 = v0;
  if (qword_100973B10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100984EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationTransportRapport();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Disconnecting", v5, 0xCu);
    sub_10000C60C(v6);
  }

  *(v1 + 56) = 1;
  return [*(v1 + 48) invalidate];
}