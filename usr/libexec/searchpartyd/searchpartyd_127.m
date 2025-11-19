uint64_t sub_100D4D4B4()
{
  *(v0 + 328) = *(v0 + 320);
  v1 = *(v0 + 176);

  return _swift_task_switch(sub_100D4D524, v1, 0);
}

uint64_t sub_100D4D524()
{
  v1 = v0[28];

  v2 = v0[41];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100D4D588()
{
  v1 = *(v0 + 264);
  if (*(v0 + 208))
  {
    v2 = *(v0 + 264);

    v6 = *(v0 + 248);
    v7 = (*(v0 + 240) - 1) & *(v0 + 240);
    if (v7)
    {
      v3 = *(v0 + 224);
LABEL_12:
      *(v0 + 240) = v7;
      *(v0 + 248) = v6;
      v19 = (*(v3 + 6) + 88 * (__clz(__rbit64(v7)) | (v6 << 6)));
      v21 = v19[2];
      v20 = v19[3];
      *(v0 + 256) = v19[9];
      *(v0 + 264) = v19[10];
      *(v0 + 120) = v21;
      *(v0 + 128) = v20;
      *(v0 + 136) = 64;
      *(v0 + 144) = 0xE100000000000000;
      sub_1000DF96C();

      v22 = StringProtocol.contains<A>(_:)();
      v23 = String._bridgeToObjectiveC()();
      if ((v22 & 1) == 0)
      {
        v24 = IDSCopyIDForPhoneNumber();

        if (v24)
        {
          v25 = 1;
LABEL_17:
          *(v0 + 354) = v25;
          v26 = *(v0 + 184);

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          *(v0 + 272) = v29;
          *(v0 + 280) = v27;
          v3 = sub_100D4CEC0;
          v4 = v26;
          v5 = 0;

          return _swift_task_switch(v3, v4, v5);
        }

LABEL_27:
        __break(1u);
        return _swift_task_switch(v3, v4, v5);
      }

      v24 = IDSCopyIDForEmailAddress();

      if (v24)
      {
        v25 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v18 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v3 = *(v0 + 224);
        if (v18 >= (((1 << *(v0 + 353)) + 63) >> 6))
        {
          v32 = *(v0 + 208);

          sub_100D4F70C();
          swift_allocError();
          *v33 = 1;
          swift_willThrow();
          goto LABEL_22;
        }

        v7 = *(v3 + v18 + 7);
        ++v6;
        if (v7)
        {
          v6 = v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v1)
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 224);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v0 + 352);
    swift_beginAccess();

    sub_1001E0414(v8, v1, v13, v12, v11);
    swift_endAccess();

    v14 = *(v0 + 256);
    v15 = *(v0 + 264);
    v16 = *(v0 + 8);

    return v16(v14, v15);
  }

  else
  {
    v30 = *(v0 + 224);
    sub_100D4F70C();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();

LABEL_22:
    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_100D4D8BC()
{
  v1 = *(v0 + 208);
  if (!v1)
  {

    goto LABEL_9;
  }

  if (*(v0 + 336) != *(v0 + 200) || v1 != *(v0 + 344))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 336);
    v5 = *(v0 + 208);
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      v7 = *(v0 + 208);
      goto LABEL_12;
    }

LABEL_9:
    v8 = *(v0 + 264);

    v12 = *(v0 + 248);
    v13 = (*(v0 + 240) - 1) & *(v0 + 240);
    if (v13)
    {
      v9 = *(v0 + 224);
LABEL_20:
      *(v0 + 240) = v13;
      *(v0 + 248) = v12;
      v26 = (*(v9 + 6) + 88 * (__clz(__rbit64(v13)) | (v12 << 6)));
      v28 = v26[2];
      v27 = v26[3];
      *(v0 + 256) = v26[9];
      *(v0 + 264) = v26[10];
      *(v0 + 120) = v28;
      *(v0 + 128) = v27;
      *(v0 + 136) = 64;
      *(v0 + 144) = 0xE100000000000000;
      sub_1000DF96C();

      v29 = StringProtocol.contains<A>(_:)();
      v30 = String._bridgeToObjectiveC()();
      if ((v29 & 1) == 0)
      {
        v31 = IDSCopyIDForPhoneNumber();

        if (v31)
        {
          v32 = 1;
LABEL_25:
          *(v0 + 354) = v32;
          v33 = *(v0 + 184);

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          *(v0 + 272) = v36;
          *(v0 + 280) = v34;
          v9 = sub_100D4CEC0;
          v10 = v33;
          v11 = 0;

          return _swift_task_switch(v9, v10, v11);
        }

LABEL_35:
        __break(1u);
        return _swift_task_switch(v9, v10, v11);
      }

      v31 = IDSCopyIDForEmailAddress();

      if (v31)
      {
        v32 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      while (1)
      {
        v25 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v9 = *(v0 + 224);
        if (v25 >= (((1 << *(v0 + 353)) + 63) >> 6))
        {
          v39 = *(v0 + 208);

          sub_100D4F70C();
          swift_allocError();
          *v40 = 1;
          swift_willThrow();
          goto LABEL_30;
        }

        v13 = *(v9 + v25 + 7);
        ++v12;
        if (v13)
        {
          v12 = v25;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_12:

  v14 = *(v0 + 264);
  if (v14)
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v18 = *(v0 + 168);
    v17 = *(v0 + 176);
    v19 = *(v0 + 160);
    v20 = *(v0 + 352);
    swift_beginAccess();

    sub_1001E0414(v15, v14, v20, v19, v18);
    swift_endAccess();

    v21 = *(v0 + 256);
    v22 = *(v0 + 264);
    v23 = *(v0 + 8);

    return v23(v21, v22);
  }

  else
  {
    v37 = *(v0 + 224);
    sub_100D4F70C();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();

LABEL_30:
    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_100D4DC48()
{
  v1 = v0[26];

  v2 = v0[29];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100D4DCAC@<X0>(void *a1@<X8>)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_100D4DDA8()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D4DE2C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100D4DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FamilyCircleService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100D4DF98(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FamilyCircleService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100D4E040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100D4B818();
}

uint64_t sub_100D4E0EC()
{
  v1 = *(v0[2] + 136);
  v0[3] = v1;
  if (v1)
  {
    v2 = async function pointer to DarwinNotification.Listener.run()[1];

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_100D4E1C8;

    return DarwinNotification.Listener.run()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100D4E1C8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[2];

    return _swift_task_switch(sub_100D4E304, v4, 0);
  }

  else
  {
    v5 = v3[3];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100D4E304()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_100D4E368()
{
  v1 = *v0;
  type metadata accessor for FamilyCircleService();
  sub_100D4F760(&unk_1016AF840, v2, type metadata accessor for FamilyCircleService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D4E460()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFC8);
  sub_1000076D4(v0, qword_10177BFC8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D4E4E0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFE0);
  sub_1000076D4(v0, qword_10177BFE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D4E560(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  *(v3 + 296) = a1;
  return _swift_task_switch(sub_100D4E584, 0, 0);
}

uint64_t sub_100D4E584()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  *(v0 + 136) = qword_101699690;
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_100D4E658;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 296);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_100D4E658(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  v6[19] = a1;
  v6[20] = a2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else if (a2)
  {
    v11 = async function pointer to unsafeBlocking<A>(_:)[1];
    v12 = swift_task_alloc();
    v6[21] = v12;
    v13 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
    *v12 = v8;
    v12[1] = sub_100D4E860;

    return unsafeBlocking<A>(_:)(v6 + 11, sub_100D4DCAC, 0, v13);
  }

  else
  {
    v14 = *(v8 + 8);

    return v14(a1, 0);
  }
}

uint64_t sub_100D4E860()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);

    v5 = sub_100D4F690;
  }

  else
  {
    v5 = sub_100D4E97C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100D4E97C()
{
  v1 = v0[11];
  v0[23] = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_100D4F6A8();
    sub_100D4F760(&qword_1016A4758, 255, sub_100D4F6A8);
    Set.Iterator.init(_cocoa:)();
    v2 = v0[2];
    v3 = v0[3];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[6];
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v7;
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

    v4 = 0;
  }

  v0[25] = v3;
  v0[26] = v5;
  v0[24] = v2;
  v0[27] = v4;
  v0[28] = v6;
  if (v2 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  v12 = v4;
  if (v6)
  {
LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    while (1)
    {
      v0[30] = v12;
      v0[31] = v13;
      v0[29] = v14;
      if (!v14)
      {
LABEL_20:
        v17 = v0[26];
        v18 = v0[24];
        goto LABEL_21;
      }

      v16 = [v14 appleID];
      if (v16)
      {
        break;
      }

      v2 = v0[24];
      v4 = v12;
      v6 = v13;
      v0[27] = v12;
      v0[28] = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      v15 = __CocoaSet.Iterator.next()();
      if (!v15)
      {
        goto LABEL_20;
      }

      v0[14] = v15;
      sub_100D4F6A8();
      swift_dynamicCast();
      v14 = v0[13];
      v12 = v4;
      v13 = v6;
    }

    v23 = v16;
    v0[7] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0[8] = v24;
    v0[9] = 64;
    v0[10] = 0xE100000000000000;
    sub_1000DF96C();
    v25 = v23;
    if (StringProtocol.contains<A>(_:)())
    {
      v26 = IDSCopyIDForEmailAddress();

      if (v26)
      {
        v27 = 0;
LABEL_29:

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v0[32] = v30;
        v31 = swift_task_alloc();
        v0[33] = v31;
        *v31 = v0;
        v31[1] = sub_100D4ED1C;
        v32 = v0[17];

        sub_101269AA4(v27, v28, v30);
        return;
      }

LABEL_33:
      __break(1u);
    }

    else
    {
      v26 = IDSCopyIDForPhoneNumber();

      if (v26)
      {
        v27 = 1;
        goto LABEL_29;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= ((v0[26] + 64) >> 6))
    {
      break;
    }

    v11 = *(v0[25] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  v19 = v0[25];
  v20 = v0[23];
  v21 = v0[20];
  sub_1000128F8();

  v22 = v0[1];

  v22(0, 0);
}

uint64_t sub_100D4ED1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 264);
  v6 = *(*v3 + 256);
  v9 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v7 = sub_100D4F220;
  }

  else
  {
    v7 = sub_100D4EE54;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_100D4EE54()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    if (*(v0 + 272) == *(v0 + 152) && v1 == *(v0 + 160))
    {
      v17 = *(v0 + 184);
      v18 = *(v0 + 280);

      goto LABEL_22;
    }

    v3 = *(v0 + 280);
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      v5 = *(v0 + 184);

      v6 = *(v0 + 160);
LABEL_22:
      v19 = *(v0 + 232);

      v20 = [v19 altDSID];
      v21 = *(v0 + 224);
      v22 = *(v0 + 232);
      v24 = *(v0 + 208);
      v23 = *(v0 + 216);
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);
      if (v20)
      {
        v27 = v20;
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        sub_1000128F8();
        v31 = v30;
        v32 = v28;
      }

      else
      {

        sub_1000128F8();
LABEL_27:
        v32 = 0;
        v31 = 0;
      }

      v38 = *(v0 + 8);

      v38(v32, v31);
      return;
    }
  }

  v7 = *(v0 + 240);
  for (i = *(v0 + 248); ; i = v13)
  {
    *(v0 + 216) = v7;
    *(v0 + 224) = i;
    v9 = *(v0 + 192);
    if (v9 < 0)
    {
      v15 = __CocoaSet.Iterator.next()();
      if (!v15)
      {
        goto LABEL_25;
      }

      *(v0 + 112) = v15;
      sub_100D4F6A8();
      swift_dynamicCast();
      v14 = *(v0 + 104);
      v12 = v7;
      v13 = i;
    }

    else
    {
      v10 = v7;
      v11 = i;
      v12 = v7;
      if (!i)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_26;
          }

          v11 = *(*(v0 + 200) + 8 * v12);
          ++v10;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_14:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v9 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    }

    *(v0 + 240) = v12;
    *(v0 + 248) = v13;
    *(v0 + 232) = v14;
    if (!v14)
    {
LABEL_25:
      v33 = *(v0 + 208);
      v34 = *(v0 + 192);
LABEL_26:
      v35 = *(v0 + 200);
      v36 = *(v0 + 184);
      v37 = *(v0 + 160);
      sub_1000128F8();

      goto LABEL_27;
    }

    v16 = [v14 appleID];
    if (v16)
    {
      break;
    }

    v7 = v12;
  }

  v39 = v16;
  *(v0 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = v40;
  *(v0 + 72) = 64;
  *(v0 + 80) = 0xE100000000000000;
  sub_1000DF96C();
  v41 = v39;
  if (StringProtocol.contains<A>(_:)())
  {
    v42 = IDSCopyIDForEmailAddress();

    if (v42)
    {
      v43 = 0;
      goto LABEL_36;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v42 = IDSCopyIDForPhoneNumber();

  if (!v42)
  {
    goto LABEL_41;
  }

  v43 = 1;
LABEL_36:

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  *(v0 + 256) = v46;
  v47 = swift_task_alloc();
  *(v0 + 264) = v47;
  *v47 = v0;
  v47[1] = sub_100D4ED1C;
  v48 = *(v0 + 136);

  sub_101269AA4(v43, v44, v46);
}

void sub_100D4F220()
{
  if (qword_101694E38 != -1)
  {
LABEL_34:
    swift_once();
  }

  v1 = v0[29];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BFC8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v0[12] = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 appleID];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104846;
    }

    v16 = v0[36];
    v17 = v0[29];
    v18 = sub_1000136BC(v11, v13, v0 + 12);

    *(v7 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on getting correlationIdentifier for appleID: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  else
  {
    v14 = v0[36];
    v15 = v0[29];
  }

  v19 = v0[30];
  for (i = v0[31]; ; i = v25)
  {
    v0[27] = v19;
    v0[28] = i;
    v21 = v0[24];
    if (v21 < 0)
    {
      v27 = __CocoaSet.Iterator.next()();
      if (!v27)
      {
        goto LABEL_21;
      }

      v0[14] = v27;
      sub_100D4F6A8();
      swift_dynamicCast();
      v26 = v0[13];
      v24 = v19;
      v25 = i;
    }

    else
    {
      v22 = v19;
      v23 = i;
      v24 = v19;
      if (!i)
      {
        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v24 >= ((v0[26] + 64) >> 6))
          {
            goto LABEL_22;
          }

          v23 = *(v0[25] + 8 * v24);
          ++v22;
          if (v23)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_14:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v21 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    }

    v0[30] = v24;
    v0[31] = v25;
    v0[29] = v26;
    if (!v26)
    {
LABEL_21:
      v29 = v0[26];
      v30 = v0[24];
LABEL_22:
      v31 = v0[25];
      v32 = v0[23];
      v33 = v0[20];
      sub_1000128F8();

      v34 = v0[1];

      v34(0, 0);
      return;
    }

    v28 = [v26 appleID];
    if (v28)
    {
      break;
    }

    v19 = v24;
  }

  v35 = v28;
  v0[7] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[8] = v36;
  v0[9] = 64;
  v0[10] = 0xE100000000000000;
  sub_1000DF96C();
  v37 = v35;
  if (StringProtocol.contains<A>(_:)())
  {
    v38 = IDSCopyIDForEmailAddress();

    if (v38)
    {
      v39 = 0;
      goto LABEL_30;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v38 = IDSCopyIDForPhoneNumber();

  if (!v38)
  {
    goto LABEL_36;
  }

  v39 = 1;
LABEL_30:

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v0[32] = v42;
  v43 = swift_task_alloc();
  v0[33] = v43;
  *v43 = v0;
  v43[1] = sub_100D4ED1C;
  v44 = v0[17];

  sub_101269AA4(v39, v40, v42);
}

unint64_t sub_100D4F6A8()
{
  result = qword_1016996A0;
  if (!qword_1016996A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016996A0);
  }

  return result;
}

unint64_t sub_100D4F70C()
{
  result = qword_1016BA710;
  if (!qword_1016BA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA710);
  }

  return result;
}

uint64_t sub_100D4F760(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100D4F7A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100D4BD8C(a1, v1);
}

uint64_t sub_100D4F840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_100D4A8B0(a1, v4, v5, v7);
}

unint64_t sub_100D4F914()
{
  result = qword_1016BA738;
  if (!qword_1016BA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA738);
  }

  return result;
}

uint64_t sub_100D4F96C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA8B8, &qword_1013E5320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52B60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v17 = v16;
  v15[23] = 0;
  sub_1001022C4(&v17, v15);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v16, *(&v16 + 1));
  }

  else
  {
    sub_100016590(v16, *(&v16 + 1));
    LOBYTE(v16) = *(v3 + 16);
    v15[0] = 1;
    sub_1005132CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 3);
    v12 = *(v3 + 4);
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = *(v3 + 40);
    v15[0] = 3;
    sub_1001E8200();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + 41);
    v15[0] = 4;
    sub_100513320();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v16 = *(v3 + 6);
    v15[0] = 5;
    sub_1000BC4D4(&qword_1016BA8A8, &qword_1013E5318);
    sub_100D52BB4(&qword_1016BA8C0, &qword_1016BA7E0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D4FC58(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA8D8, &qword_1013E5330);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52C80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_100017D5C(v15, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for OwnSubmitLocationInfo() + 20);
    LOBYTE(v15) = 1;
    type metadata accessor for Date();
    sub_100D52D94(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D4FE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Date();
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016BA8C8, &qword_1013E5328);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OwnSubmitLocationInfo();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52C80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v20 = v10;
  v15 = v13;
  v17 = v23;
  v16 = v24;
  v27 = 0;
  sub_1000E307C();
  v18 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v26;
  LOBYTE(v26) = 1;
  sub_100D52D94(&qword_101697F40, &type metadata accessor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v9, v18);
  (*(v21 + 32))(&v15[*(v20 + 20)], v6, v16);
  sub_100D52CD4(v15, v22);
  sub_100007BAC(a1);
  return sub_100D52D38(v15);
}

uint64_t sub_100D50158(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA858, &qword_1013E52F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52108();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v3[2];
  v14 = 0;
  sub_100D5215C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v15 = *(v3 + 6);
    v14 = 1;
    sub_1000BC4D4(&qword_1016BA870, &qword_1013E5300);
    sub_100D52AE8(&qword_1016BA878, sub_100D520B4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D50338(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BA928, &qword_1013E5700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D53134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D504D8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701869940;
  v4 = 1701080941;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6570795479656BLL;
  if (v1 != 1)
  {
    v5 = 0x64496572616873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D50580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D521B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D505A8(uint64_t a1)
{
  v2 = sub_100D52B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D505E4(uint64_t a1)
{
  v2 = sub_100D52B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D50628()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

double sub_100D50660@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100D523A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100D506C8(uint64_t a1)
{
  v2 = sub_100D52C80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D50704(uint64_t a1)
{
  v2 = sub_100D52C80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D50770()
{
  if (*v0)
  {
    result = 0x74696D627573;
  }

  else
  {
    result = 0x6F43746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_100D507B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74696D627573 && a2 == 0xE600000000000000)
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

uint64_t sub_100D50894(uint64_t a1)
{
  v2 = sub_100D52108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D508D0(uint64_t a1)
{
  v2 = sub_100D52108();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100D5090C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100D527EC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100D50974()
{
  v1 = 0x526873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x6449746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41747865746E6F63;
  }
}

uint64_t sub_100D509E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D53188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D50A08(uint64_t a1)
{
  v2 = sub_100D53134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D50A44(uint64_t a1)
{
  v2 = sub_100D53134();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100D50A80@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100D532B0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100D50ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 240) = a2;
  *(v3 + 248) = a3;
  *(v3 + 256) = *a1;
  *(v3 + 272) = *(a1 + 16);
  *(v3 + 280) = *(a1 + 24);
  *(v3 + 296) = *(a1 + 40);
  v4 = type metadata accessor for HashAlgorithm();
  *(v3 + 304) = v4;
  v5 = *(v4 - 8);
  *(v3 + 312) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 320) = swift_task_alloc();
  v7 = type metadata accessor for OwnSubmitLocationInfo();
  *(v3 + 328) = v7;
  v8 = *(v7 - 8);
  *(v3 + 336) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 344) = swift_task_alloc();
  v10 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v3 + 352) = v10;
  v11 = *(v10 - 8);
  *(v3 + 360) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v3 + 376) = v13;
  v14 = *(v13 - 8);
  *(v3 + 384) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_100D50CD4, 0, 0);
}

id sub_100D50CD4()
{
  v0[24] = sub_100907E70(_swiftEmptyArrayStorage);
  v81 = v0 + 24;
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
    goto LABEL_26;
  }

  v2 = result;
  v3 = [result serverFriendlyDescription];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v10 = v0[30];
  sub_1001DD5B8(v4, v6, 0xD000000000000011, 0x800000010134EA40);
  v11 = v0[24];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(49, 0xE100000000000000, 0x562D747065636341, 0xEE006E6F69737265, isUniquelyReferenced_nonNull_native);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(0xD000000000000010, 0x800000010134F5C0, 0x2D746E65746E6F43, 0xEC00000065707954, v13);
  v14 = v11;
  v0[24] = v11;
  v85 = v0;
  v15 = v10;
  Date.init()();
  v16 = Date.epoch.getter();
  (*(v8 + 8))(v7, v9);
  v85[29] = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v98 = v14;
  v21 = v85;
  sub_100FFACA0(v17, v19, 0xD000000000000015, 0x8000000101360770, v20);
  v85[24] = v14;
  v84 = v15;
  v22 = *(v15 + 16);
  if (v22)
  {
    v93 = v85[42];
    v94 = v85[43];
    v92 = v85[41];
    v23 = v85[30];
    result = sub_1011240B0(0, v22, 0);
    if (*(v15 + 16))
    {
      v24 = 0;
      v90 = v81 - 15;
      v91 = v81 - 10;
      v25 = _swiftEmptyArrayStorage;
      v82 = v23 + 32;
      v83 = v22;
      v26 = 1;
      while (1)
      {
        v89 = v26;
        sub_10001F280(v82 + 40 * v24, v90);
        v27 = v21[12];
        v28 = v21[13];
        sub_1000035D0(v90, v27);
        (*(v28 + 64))(v27, v28);
        swift_getAssociatedTypeWitness();
        sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
        v29 = _arrayForceCast<A, B>(_:)();

        v30 = *(v29 + 16);
        if (v30)
        {
          v87 = v25;
          sub_1011240D0(0, v30, 0);
          v31 = v29 + 32;
          do
          {
            v96 = v30;
            v32 = v21[43];
            sub_10001F280(v31, v91);
            v33 = v21[17];
            v34 = v21[18];
            sub_1000035D0(v91, v33);
            v35 = (*(v34 + 24))(v33, v34);
            v37 = v36;
            v38 = v21;
            v39 = v21[17];
            v40 = v21[18];
            sub_1000035D0(v91, v39);
            v41 = v32 + *(v92 + 20);
            (*(v40 + 32))(v39, v40);
            *v32 = v35;
            *(v94 + 8) = v37;
            sub_100007BAC(v91);
            v98 = _swiftEmptyArrayStorage;
            v43 = _swiftEmptyArrayStorage[2];
            v42 = _swiftEmptyArrayStorage[3];
            if (v43 >= v42 >> 1)
            {
              sub_1011240D0(v42 > 1, v43 + 1, 1);
            }

            v44 = v38[43];
            _swiftEmptyArrayStorage[2] = v43 + 1;
            sub_100D51DC0(v44, _swiftEmptyArrayStorage + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v43);
            v31 += 40;
            v30 = v96 - 1;
            v21 = v38;
          }

          while (v96 != 1);

          v25 = v87;
        }

        else
        {
        }

        v45 = v21[12];
        v46 = v21[13];
        sub_1000035D0(v90, v45);
        v86 = (*(v46 + 40))(v45, v46);
        v88 = v47;
        v48 = v21[12];
        v49 = v21[13];
        sub_1000035D0(v90, v48);
        v50 = (*(v49 + 48))(v48, v49);
        v51 = v21[12];
        v52 = v21[13];
        sub_1000035D0(v90, v51);
        v53 = (*(v52 + 72))(v51, v52);
        v55 = v54;
        v56 = v21[12];
        v57 = v21[13];
        sub_1000035D0(v90, v56);
        v58 = (*(v57 + 80))(v56, v57);
        v59 = v21[12];
        v60 = v21[13];
        sub_1000035D0(v90, v59);
        v61 = (*(v60 + 56))(v59, v60);
        result = sub_100007BAC(v90);
        v63 = v25[2];
        v62 = v25[3];
        if (v63 >= v62 >> 1)
        {
          result = sub_1011240B0((v62 > 1), v63 + 1, 1);
        }

        v25[2] = v63 + 1;
        v64 = &v25[7 * v63];
        v64[4] = v86;
        v64[5] = v88;
        *(v64 + 48) = v50;
        *(v64 + 49) = v98;
        *(v64 + 13) = *(&v98 + 3);
        v64[7] = v53;
        v64[8] = v55;
        *(v64 + 72) = v58;
        *(v64 + 73) = v61;
        *(v64 + 39) = v100;
        *(v64 + 74) = v99;
        v64[10] = _swiftEmptyArrayStorage;
        v24 = v89;
        if (v89 == v83)
        {
          break;
        }

        v26 = v89 + 1;
        v21 = v85;
        if (v89 >= *(v84 + 16))
        {
          goto LABEL_25;
        }
      }

      v21 = v85;
      v65 = v85[30];

      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v66 = v85[30];

  v25 = _swiftEmptyArrayStorage;
LABEL_22:
  v68 = v21[45];
  v67 = v21[46];
  v69 = v21[44];
  v70 = v21[37];
  v71 = v85[36];
  v95 = *(v85 + 16);
  v97 = *(v85 + 17);
  v72 = type metadata accessor for JSONEncoder();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v85[50] = JSONEncoder.init()();
  *v67 = sub_100281AE0;
  v67[1] = 0;
  (*(v68 + 104))(v67, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v69);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  *(v85 + 1) = v95;
  *(v85 + 2) = v97;
  v85[6] = v71;
  v85[7] = v70;
  v85[8] = v25;
  sub_100D51E24();
  v75 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v85[51] = 0;
  v85[52] = v75;
  v85[53] = v76;
  v77 = v85[37];
  v78 = v85[35];
  v79 = v85[33];

  v80 = swift_task_alloc();
  v85[54] = v80;
  *v80 = v85;
  v80[1] = sub_100D515D8;

  return sub_100E9DE8C();
}

uint64_t sub_100D515D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v6 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return _swift_task_switch(sub_100D516D8, 0, 0);
}

uint64_t sub_100D516D8()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[52];
  v4 = v0[53];
  v5 = v0[51];
  v6 = v0[39];
  v7 = v0[40];
  v0[27] = v2;
  v18 = v6;
  v19 = v0[38];
  v20 = v7;
  v0[28] = v1;
  v0[22] = &type metadata for Data;
  v0[23] = &protocol witness table for Data;
  v0[19] = v3;
  v0[20] = v4;
  v8 = sub_1000035D0(v0 + 19, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v3, v4);
  sub_100017DB0(v9, v10);
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 19);
  v11 = v0[28];
  v0[57] = v0[27];
  v0[58] = v11;
  (*(v18 + 104))(v20, enum case for HashAlgorithm.sha256(_:), v19);
  v12 = Data.hash(algorithm:)();
  v14 = v13;
  v0[59] = v12;
  v0[60] = v13;
  (*(v18 + 8))(v20, v19);
  v15 = swift_task_alloc();
  v0[61] = v15;
  *v15 = v0;
  v15[1] = sub_100D518A8;
  v16 = v0[31];

  return sub_100EA87F4(v12, v14, v16);
}

uint64_t sub_100D518A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 488);
  v6 = *v2;
  *(*v2 + 496) = v1;

  if (v1)
  {
    v7 = sub_100D51B28;
  }

  else
  {
    v8 = v4[59];
    v9 = v4[60];
    v4[63] = a1;
    sub_100016590(v8, v9);
    v7 = sub_100D519D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D519D8()
{
  v21 = v0;
  v2 = v0[62];
  v1 = v0[63];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[50];
  v6 = v0[31];
  v7 = v0[24];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v7;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v20);

  sub_100016590(v4, v3);

  v9 = v20;
  v11 = v0[52];
  v10 = v0[53];
  v0[24] = v20;
  v0[25] = v11;
  v0[26] = v10;

  sub_100017D5C(v11, v10);

  sub_100016590(v11, v10);
  v13 = v0[52];
  v12 = v0[53];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[43];
  v17 = v0[40];

  v18 = v0[1];

  return v18(v9, v13, v12);
}

uint64_t sub_100D51B28()
{
  v1 = v0[57];
  v2 = v0[58];
  sub_100016590(v0[59], v0[60]);
  sub_100016590(v1, v2);
  if (qword_101694D10 != -1)
  {
    swift_once();
  }

  v3 = v0[62];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BC88);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[62];
  v9 = v0[50];
  v10 = v0[31];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate attestation header: %{public}@.", v11, 0xCu);
    sub_100288C6C(v12);
  }

  else
  {
    v14 = v0[50];
  }

  v15 = v0[52];
  v16 = v0[53];
  v0[25] = v15;
  v0[26] = v16;
  v17 = v0[24];

  sub_100017D5C(v15, v16);

  sub_100016590(v15, v16);
  v18 = v0[52];
  v19 = v0[53];
  v20 = v0[49];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[40];

  v24 = v0[1];

  return v24(v17, v18, v19);
}

uint64_t type metadata accessor for OwnSubmitLocationInfo()
{
  result = qword_1016BA7A0;
  if (!qword_1016BA7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D51DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnSubmitLocationInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D51E24()
{
  result = qword_1016BA740;
  if (!qword_1016BA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA740);
  }

  return result;
}

uint64_t sub_100D51E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100D51EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100D51F64(uint64_t a1)
{
  *(a1 + 8) = sub_100D52D94(&qword_1016BA7D8, type metadata accessor for OwnSubmitLocationInfo);
  result = sub_100D52D94(&qword_1016BA7E0, type metadata accessor for OwnSubmitLocationInfo);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D52030(uint64_t a1)
{
  *(a1 + 8) = sub_100D52060();
  result = sub_100D520B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D52060()
{
  result = qword_1016BA848;
  if (!qword_1016BA848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA848);
  }

  return result;
}

unint64_t sub_100D520B4()
{
  result = qword_1016BA850;
  if (!qword_1016BA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA850);
  }

  return result;
}

unint64_t sub_100D52108()
{
  result = qword_1016BA860;
  if (!qword_1016BA860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA860);
  }

  return result;
}

unint64_t sub_100D5215C()
{
  result = qword_1016BA868;
  if (!qword_1016BA868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA868);
  }

  return result;
}

uint64_t sub_100D521B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496572616873 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100D523A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA898, &qword_1013E5310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v28) = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v32;
  v11 = v33;
  LOBYTE(v28) = 1;
  sub_100513224();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v11;
  LODWORD(v11) = v32;
  LOBYTE(v32) = 2;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v11;
  v26 = v13;
  LOBYTE(v28) = 3;
  sub_10064666C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v32;
  LOBYTE(v28) = 4;
  sub_100513278();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v27;
  v22 = v32;
  sub_1000BC4D4(&qword_1016BA8A8, &qword_1013E5318);
  v40 = 5;
  sub_100D52BB4(&qword_1016BA8B0, &qword_1016BA7D8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v21 = v41;
  *&v28 = v12;
  *(&v28 + 1) = v14;
  LOBYTE(v14) = v25;
  LOBYTE(v29) = v25;
  v15 = v24;
  v16 = v26;
  *(&v29 + 1) = v24;
  *&v30 = v26;
  v17 = v22;
  v18 = v23;
  BYTE8(v30) = v23;
  BYTE9(v30) = v22;
  v31 = v41;
  sub_1003CA224(&v28, &v32);
  sub_100007BAC(a1);
  v32 = v12;
  v33 = v27;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v37 = v18;
  v38 = v17;
  v39 = v21;
  result = sub_100D52C50(&v32);
  v20 = v29;
  *a2 = v28;
  *(a2 + 16) = v20;
  *(a2 + 32) = v30;
  *(a2 + 48) = v31;
  return result;
}

uint64_t sub_100D527EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA880, &qword_1013E5308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D52108();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  sub_100D52A94();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v12 = v26;
  v17 = v25;
  v18 = v23;
  sub_1000BC4D4(&qword_1016BA870, &qword_1013E5300);
  v27 = 1;
  sub_100D52AE8(&qword_1016BA890, sub_100D52060);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v13 = v21;

  sub_100007BAC(a1);

  v16 = v18;
  *a2 = v19;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v11;
  a2[4] = v17;
  a2[5] = v12;
  a2[6] = v13;
  return result;
}

unint64_t sub_100D52A94()
{
  result = qword_1016BA888;
  if (!qword_1016BA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA888);
  }

  return result;
}

uint64_t sub_100D52AE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BA870, &qword_1013E5300);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100D52B60()
{
  result = qword_1016BA8A0;
  if (!qword_1016BA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8A0);
  }

  return result;
}

uint64_t sub_100D52BB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016BA8A8, &qword_1013E5318);
    sub_100D52D94(a2, type metadata accessor for OwnSubmitLocationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100D52C80()
{
  result = qword_1016BA8D0;
  if (!qword_1016BA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8D0);
  }

  return result;
}

uint64_t sub_100D52CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnSubmitLocationInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D52D38(uint64_t a1)
{
  v2 = type metadata accessor for OwnSubmitLocationInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D52D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100D52E20()
{
  result = qword_1016BA8E0;
  if (!qword_1016BA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8E0);
  }

  return result;
}

unint64_t sub_100D52E78()
{
  result = qword_1016BA8E8;
  if (!qword_1016BA8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8E8);
  }

  return result;
}

unint64_t sub_100D52ED0()
{
  result = qword_1016BA8F0;
  if (!qword_1016BA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8F0);
  }

  return result;
}

unint64_t sub_100D52F28()
{
  result = qword_1016BA8F8;
  if (!qword_1016BA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA8F8);
  }

  return result;
}

unint64_t sub_100D52F80()
{
  result = qword_1016BA900;
  if (!qword_1016BA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA900);
  }

  return result;
}

unint64_t sub_100D52FD8()
{
  result = qword_1016BA908;
  if (!qword_1016BA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA908);
  }

  return result;
}

unint64_t sub_100D53030()
{
  result = qword_1016BA910;
  if (!qword_1016BA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA910);
  }

  return result;
}

unint64_t sub_100D53088()
{
  result = qword_1016BA918;
  if (!qword_1016BA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA918);
  }

  return result;
}

unint64_t sub_100D530E0()
{
  result = qword_1016BA920;
  if (!qword_1016BA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA920);
  }

  return result;
}

unint64_t sub_100D53134()
{
  result = qword_1016BA930;
  if (!qword_1016BA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA930);
  }

  return result;
}

uint64_t sub_100D53188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41747865746E6F63 && a2 == 0xEA00000000007070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x526873696C627570 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100D532B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016BA938, &qword_1013E5708);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D53134();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100007BAC(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_100D53510()
{
  result = qword_1016BA940;
  if (!qword_1016BA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA940);
  }

  return result;
}

unint64_t sub_100D53568()
{
  result = qword_1016BA948;
  if (!qword_1016BA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA948);
  }

  return result;
}

unint64_t sub_100D535C0()
{
  result = qword_1016BA950;
  if (!qword_1016BA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA950);
  }

  return result;
}

id sub_100D538B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerAPSBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D53918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10002E98C(a1, a2);
      swift_unknownObjectRelease();
      static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_101385D80;
      v6 = Data.hexString.getter();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_100008C00();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      os_log(_:dso:log:_:_:)();

      return sub_100006654(a1, a2);
    }
  }

  return result;
}

uint64_t sub_100D53B18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10002E98C(a1, a2);
      swift_unknownObjectRelease();
      static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10138B360;
      v15 = Data.hexString.getter();
      v17 = v16;
      *(v14 + 56) = &type metadata for String;
      v18 = sub_100008C00();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      *(v14 + 96) = &type metadata for String;
      *(v14 + 104) = v18;
      *(v14 + 64) = v18;
      *(v14 + 72) = a3;
      *(v14 + 80) = a4;
      *(v14 + 136) = &type metadata for String;
      *(v14 + 144) = v18;
      *(v14 + 112) = a5;
      *(v14 + 120) = a6;

      os_log(_:dso:log:_:_:)();

      return sub_100006654(a1, a2);
    }
  }

  return result;
}

uint64_t sub_100D53D74(void *a1)
{
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = a1;
      sub_100291298(v3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

unint64_t sub_100D53E74(uint64_t a1)
{
  *(a1 + 8) = sub_100D53EA4();
  result = sub_10027FC0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D53EA4()
{
  result = qword_1016BA9F0;
  if (!qword_1016BA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BA9F0);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryIdentityPairingLockAckEndPoint()
{
  result = qword_1016BAA50;
  if (!qword_1016BAA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D53F6C()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v2 = URLComponents.path.modify();
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  v3._object = 0x8000000101370560;
  String.append(_:)(v3);
  v2(&v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C218;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = [v4 stringForKey:v7];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100D5415C(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v11, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, *(&v6 + 1));
  if (!v2)
  {
    v10 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
  }

  return sub_100007BAC(v7);
}

double sub_100D542E8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100D54444(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100D54344@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 32)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 1)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 100)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a5;
    a7[3] = a6;
    a7[4] = a3;
    a7[5] = a4;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100D54444@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v19, v20);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v19);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v19, v20);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v22 = v11;
    sub_10015049C(v19, v20);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v14 = v13;
    sub_100017D5C(v12, v13);
    sub_1000E0A3C();
    v15 = DataProtocol.intValue.getter();
    sub_10002EA98(v15, v12, v14, v18);
    sub_100016590(v18[0], v18[1]);
    sub_100D54344(v8, v9, v10, v22, v12, v14, v21);
    sub_100007BAC(v19);
    result = sub_100007BAC(a1);
    v17 = v21[1];
    *a2 = v21[0];
    a2[1] = v17;
    a2[2] = v21[2];
  }

  return result;
}

uint64_t sub_100D54608@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = result;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = *(result + 16);
  v12 = *(result + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_8:
    LODWORD(v11) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v11 = v11;
  }

LABEL_10:
  if (v11 != 32)
  {
    goto LABEL_52;
  }

  v15 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (v15)
    {
      goto LABEL_20;
    }

    v16 = BYTE6(a4);
    if (BYTE6(a4))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  if (v15 == 2)
  {
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);
    if (v17 == v18)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = __OFSUB__(v18, v17);
    v16 = v18 - v17;
    if (!v14)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    if (!((a3 ^ (a3 << 32)) >> 32))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    LODWORD(v16) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v16 = v16;
LABEL_23:
    if (v16 > 100)
    {
      goto LABEL_43;
    }

    if (v15 == 2)
    {
      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v14 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v14)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (v15 == 1)
    {
      LODWORD(v19) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v19 = v19;
      goto LABEL_32;
    }

    v19 = BYTE6(a4);
LABEL_32:
    v22 = 100 - v19;
    if (__OFSUB__(100, v19))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    sub_100017D5C(a3, a4);
    *&v34[0] = sub_100845C88(v22);
    *(&v34[0] + 1) = v23;
    sub_100776394(v34, 0);
    v24 = v34[0];
    Data.append(_:)();
    result = sub_100016590(v24, *(&v24 + 1));
    if (v15 == 2)
    {
      v27 = *(a3 + 16);
      v26 = *(a3 + 24);
      v14 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v14)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    else
    {
      if (v15 != 1)
      {
LABEL_41:
        sub_1000198E8();
        v28 = FixedWidthInteger.data.getter();
        v30 = v29;
        sub_100016590(a3, a4);
        sub_100D54344(v8, a2, v28, v30, a3, a4, v34);
        sub_100017D5C(a3, a4);
        result = sub_100016590(a3, a4);
        v31 = v34[1];
        *a5 = v34[0];
        a5[1] = v31;
        a5[2] = v34[2];
        return result;
      }

      LODWORD(v25) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_50;
      }

      v25 = v25;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25 > 0xFF)
      {
        __break(1u);
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_100D54898(uint64_t a1)
{
  *(a1 + 8) = sub_100D548C8();
  result = sub_10027FCB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D548C8()
{
  result = qword_1016BAA88;
  if (!qword_1016BAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAA88);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryPairingLockAckEndpoint()
{
  result = qword_1016BAAE8;
  if (!qword_1016BAAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D54990()
{
  v1 = *(*v0 + 16);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  URLComponents.path.setter();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_100D54B58@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for FMNAccountType.pairingLock(_:);
  v3 = type metadata accessor for FMNAccountType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for PairingLockUpdateEndPoint() + 20);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.path.setter();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v5 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074618(v7);

  return URLComponents.host.setter();
}

uint64_t type metadata accessor for PairingLockUpdateEndPoint()
{
  result = qword_1016BAB78;
  if (!qword_1016BAB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D54D28()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BFF8);
  sub_1000076D4(v0, qword_10177BFF8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D54DAC()
{
  type metadata accessor for SecureLocationsInfo();
  swift_allocObject();
  result = sub_100D54DE8();
  qword_10177C010 = result;
  return result;
}

uint64_t sub_100D54DE8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  return v0;
}

uint64_t sub_100D55010()
{
  v1 = *(v0 + 80);
  v4 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_100D552C8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_100D55098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v13[2] = *(a1 + 56);
  v13[3] = v3;
  v13[4] = *(a1 + 88);
  v14 = *(a1 + 104);
  v4 = *(a1 + 40);
  v13[0] = *(a1 + 24);
  v13[1] = v4;
  v5 = v3;
  if (v3)
  {
    v6 = *(a1 + 40);
    *a2 = *(a1 + 24);
    *(a2 + 16) = v6;
    *(a2 + 32) = *(a1 + 56);
    v7 = *(a1 + 96);
    *(a2 + 56) = *(a1 + 80);
    *(a2 + 72) = v7;
  }

  else
  {
    v8 = *(a1 + 72);
    v11[2] = *(a1 + 56);
    v11[3] = v8;
    v11[4] = *(a1 + 88);
    v12 = *(a1 + 104);
    v9 = *(a1 + 40);
    v11[0] = *(a1 + 24);
    v11[1] = v9;
    *(a1 + 24) = 16843009;
    *(a1 + 32) = 5;
    *(a1 + 40) = xmmword_1013E5BF0;
    *(a1 + 56) = 1;
    v5 = 0xE400000000000000;
    *(a1 + 64) = 808334897;
    *(a1 + 72) = 0xE400000000000000;
    *(a1 + 80) = 808334129;
    *(a1 + 88) = 0xE400000000000000;
    *(a1 + 96) = 3157561;
    *(a1 + 104) = 0xE300000000000000;
    sub_100D551F0(v11);
    *a2 = 16843009;
    *(a2 + 8) = 5;
    *(a2 + 16) = xmmword_1013E5BF0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 808334897;
    *(a2 + 56) = 808334129;
    *(a2 + 64) = 0xE400000000000000;
    *(a2 + 72) = 3157561;
    *(a2 + 80) = 0xE300000000000000;
  }

  *(a2 + 48) = v5;
  return sub_100D55258(v13, v11);
}

uint64_t sub_100D551F0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BAC58, &qword_1013E5C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D55258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BAC58, &qword_1013E5C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D552C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t sub_100D55318()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C018);
  v1 = sub_1000076D4(v0, qword_10177C018);
  if (qword_101694E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C030);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100D553E0()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100D554A4, v0, 0);
}

uint64_t sub_100D554A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v3 + 128);
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_100D57208;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100997768;
  v0[5] = &unk_10164FF68;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, v6);
  _Block_release(v6);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v10 = sub_100D57398(&qword_1016BAD90, v9, type metadata accessor for DistributedNotificationService);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v10;
  v11[4] = v3;
  v11[5] = v2;
  swift_retain_n();
  sub_10025EDD4(0, 0, v1, &unk_1013E5E00, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100D556A0(void *a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v7;
      v12[5] = v8;
      v12[6] = v10;
      sub_10025EDD4(0, 0, v5, &unk_1013E5E10, v12);
    }
  }

  return result;
}

uint64_t sub_100D557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100D55820, a4, 0);
}

uint64_t sub_100D55820()
{
  v1 = *(v0 + 16);
  sub_100D55B98(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D55884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_100D55928;

  return static Task<>.sleep(nanoseconds:)(30000000000);
}

uint64_t sub_100D55928()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  v5 = *(v2 + 16);
  if (v0)
  {

    v6 = sub_100D573E0;
  }

  else
  {
    v6 = sub_100D55A60;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100D55A60()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144) == 1)
  {
    if (qword_101694E58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C018);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = 30;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stop special launch event processing -- %llu seconds have passed since launch", v5, 0xCu);
    }

    *(v1 + 144) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100D55B98(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(*(v2 + 136) + 16);
  if (*(v2 + 144) == 1 && !*(v2 + 160))
  {
    if (qword_101694E58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C018);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v10 = 136315138;
      v26[0] = v25;
      _StringGuts.grow(_:)(29);

      v11._countAndFlagsBits = a1;
      v11._object = a2;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 93;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = sub_1000136BC(0xD00000000000001ALL, 0x80000001013706E0, v26);

      *(v10 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "Storing launchEvent: %s", v10, 0xCu);
      sub_100007BAC(v25);
    }

    *(v2 + 144) = 0;
    v14 = *(v2 + 160);
    *(v3 + 152) = a1;
    *(v3 + 160) = a2;
  }

  if (qword_101694E58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C018);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315394;
    v26[0] = v19;
    _StringGuts.grow(_:)(29);

    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 93;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = sub_1000136BC(0xD00000000000001ALL, 0x80000001013706E0, v26);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v16, v17, "Publishing %s to %ld clients.", v18, 0x16u);
    sub_100007BAC(v19);
  }

  v23 = type metadata accessor for Transaction();
  __chkstk_darwin(v23);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100D55F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v8 = sub_1000BC4D4(&qword_1016BAD98, &qword_1013E5DF0);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  v12 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  result = *(a2 + 136);
  v18 = *(result + 16);
  if (v18)
  {
    v26[0] = *(a2 + 136);
    v26[1] = v4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = result + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v30 = *(v19 + 56);
    v31 = v20;
    v35 = v19;
    v22 = (v19 - 8);
    v29 = a3;
    v23 = (v28 + 8);

    v28 = v8;
    v24 = a1;
    v25 = v27;
    do
    {
      v31(v16, v21, v12);
      v32 = v24;
      v33 = v29;
      v34 = v25;

      AsyncStream.Continuation.yield(_:)();
      (*v22)(v16, v12);
      (*v23)(v11, v28);
      v21 += v30;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_100D561A8(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016BAD98, &qword_1013E5DF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - v6;
  v8 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v27 - v11;
  v13 = *(v9 + 16);
  v27[0] = a1;
  v13(v27 - v11, a1, v8);
  v14 = v1[17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[17] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100A5EB84(0, v14[2] + 1, 1, v14);
    v1[17] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100A5EB84(v16 > 1, v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  result = (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v12, v8);
  v1[17] = v14;
  v19 = v1[20];
  if (v19)
  {
    v20 = v1[19];
    v21 = qword_101694E58;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C018);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Publishing LaunchEvent to new client", v25, 2u);
    }

    v26 = type metadata accessor for Transaction();
    __chkstk_darwin(v26);
    v27[-4] = v27[0];
    v27[-3] = v20;
    v27[-2] = v19;
    static Transaction.named<A>(_:with:)();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_100D56510()
{

  sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  return AsyncStream.Continuation.yield(_:)();
}

uint64_t sub_100D56584()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 160);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100D56608()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD00000000000001ELL;
  *(v0 + 120) = 0x80000001013E5C40;
  sub_1000BC488();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100D57398(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = _swiftEmptyArrayStorage;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return v0;
}

uint64_t sub_100D5687C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DistributedNotificationService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100D56924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DistributedNotificationService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100D569E8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DistributedNotificationService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100D56A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100D553E0();
}

uint64_t sub_100D56B1C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DistributedNotificationService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100D56BC4()
{
  v1 = *v0;
  type metadata accessor for DistributedNotificationService();
  sub_100D57398(&qword_1016A51C8, v2, type metadata accessor for DistributedNotificationService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100D56C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_10025EDD4(0, 0, v12, &unk_1013E5DE8, v15);
}

uint64_t sub_100D56E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100D56E38, a4, 0);
}

uint64_t sub_100D56E38()
{
  v1 = v0[2];
  sub_100D561A8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100D56E98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v2[2] = a2;
  v2[3] = v3;
  v2[4] = v4;
  return _swift_task_switch(sub_100D56EC0, 0, 0);
}

uint64_t sub_100D56EC0()
{
  v1 = sub_10111EACC(v0[3], v0[4], v0[2]);
  v2 = v0[1];
  v3 = v1 & 1;

  return v2(v3);
}

unint64_t sub_100D56F28()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(29);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001ALL;
}

uint64_t sub_100D57044(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100D56E18(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100D57148()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C030);
  sub_1000076D4(v0, qword_10177C030);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100D571C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100D56510();
}

uint64_t sub_100D57210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100D55884(a1, v4, v5, v7);
}

uint64_t sub_100D572D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100D557FC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100D57398(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100D573E4(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  type metadata accessor for SPPairingSessionError(0);
  sub_100D58E48(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.code.getter();
  if ((v15 - 2) > 0x12)
  {
    *(a4 + 16) = 0;
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *(a4 + 16) = byte_1013E629E[v15 - 2];
    if (!a3)
    {
LABEL_5:
      v8 = _BridgedStoredNSError.userInfo.getter();
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v8 + 16))
      {
        v11 = sub_100771D58(v9, v10);
        v13 = v12;

        if (v13)
        {
          sub_100013894(*(v8 + 56) + 32 * v11, &v17);

          if (swift_dynamicCast())
          {
            a2 = v15;
            a3 = v16;
            goto LABEL_12;
          }

LABEL_11:
          a2 = 0;
          a3 = 0xE000000000000000;
          goto LABEL_12;
        }
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  *a4 = a2;
  *(a4 + 8) = a3;
  v14 = type metadata accessor for PairingError(0);
  static Date.trustedNow.getter(a4 + *(v14 + 24));
}

unint64_t sub_100D57594()
{
  sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v10 = sub_100D578DC(*(v0 + 16));
  v11 = v3;
  v4._countAndFlagsBits = 2108704;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  String.append(_:)(*v0);
  v5._countAndFlagsBits = 2108704;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6 = *(type metadata accessor for PairingError(0) + 24);
  type metadata accessor for Date();
  sub_100D58E48(&qword_1016969A0, &type metadata accessor for Date);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v8 = sub_100907E70(inited);
  swift_setDeallocating();
  sub_100D58E90(inited + 32);
  type metadata accessor for SPPairingSessionError(0);
  sub_1006953B0(v8);

  sub_100D58E48(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return v10;
}

unint64_t sub_100D578DC(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0x64616552746F6E2ELL;
      break;
    case 2:
      result = 0x656E654779656B2ELL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6B726F7774656E2ELL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x64696C61766E692ELL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x746E65687475612ELL;
      break;
    case 9:
      result = 0x746E756F6363612ELL;
      break;
    case 10:
      result = 0x636552657661732ELL;
      break;
    case 11:
      result = 0x696E756D6D6F632ELL;
      break;
    case 12:
      result = 0x754F64656D69742ELL;
      break;
    case 13:
      result = 0x70707553746F6E2ELL;
      break;
    case 14:
      result = 0x797265747461622ELL;
      break;
    case 15:
      result = 0x67696C45746F6E2ELL;
      break;
    case 16:
      result = 0x655274696D696C2ELL;
      break;
    case 17:
      result = 0x64656B636F6C2ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100D57B30@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D592F0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D57C0C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BAF18, &qword_1013E6078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D591F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[14] = *(v3 + 16);
    v15[13] = 1;
    sub_100D5929C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(type metadata accessor for PairingError(0) + 24);
    v15[12] = 2;
    type metadata accessor for Date();
    sub_100D58E48(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100D57E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for Date();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&qword_1016BAF00, &qword_1013E6070);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PairingError(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D591F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v22 = v10;
  v23 = v6;
  v16 = v26;
  v15 = v27;
  v32 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v13 + 1) = v17;
  v21 = v17;
  v30 = 1;
  sub_100D59248();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v16;
  v13[16] = v31;
  v29 = 2;
  sub_100D58E48(&qword_101697F40, &type metadata accessor for Date);
  v19 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v9, v28);
  (*(v24 + 32))(&v13[*(v22 + 24)], v19, v15);
  sub_10024534C(v13, v25, type metadata accessor for PairingError);
  sub_100007BAC(a1);
  return sub_1002453BC(v13, type metadata accessor for PairingError);
}

uint64_t sub_100D58190(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BAEF0, &qword_1013E6068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D5913C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  sub_100D58E48(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for PairingErrorRecord(0) + 20);
    v11[14] = 1;
    type metadata accessor for PairingError(0);
    sub_100D58E48(&qword_1016BAEF8, type metadata accessor for PairingError);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100D58390@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for PairingError(0);
  v4 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v30);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_1016BAED8, &qword_1013E6060);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PairingErrorRecord(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D5913C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_100D58E48(&qword_101698300, &type metadata accessor for UUID);
  v18 = v28;
  v19 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_100D58E48(&qword_1016BAEE8, type metadata accessor for PairingError);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_100D59190(v6, &v24[*(v23 + 20)]);
  sub_10024534C(v20, v25, type metadata accessor for PairingErrorRecord);
  sub_100007BAC(a1);
  return sub_1002453BC(v20, type metadata accessor for PairingErrorRecord);
}

uint64_t sub_100D58784()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 1702125924;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F666E4972657375;
  }
}

uint64_t sub_100D587D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100D59584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100D587F8(uint64_t a1)
{
  v2 = sub_100D591F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D58834(uint64_t a1)
{
  v2 = sub_100D591F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D588A0()
{
  v1._countAndFlagsBits = sub_100D578DC(*(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 60;
}

uint64_t sub_100D58928()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C048);
  sub_1000076D4(v0, qword_10177C048);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100D58A84()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_100D58AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_100D58BA0(uint64_t a1)
{
  v2 = sub_100D5913C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D58BDC(uint64_t a1)
{
  v2 = sub_100D5913C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100D58C48()
{
  type metadata accessor for UUID();
  sub_100D58E48(&qword_101696930, &type metadata accessor for UUID);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3 = v0 + *(type metadata accessor for PairingErrorRecord(0) + 20);
  v4._countAndFlagsBits = sub_100D578DC(*(v3 + 16));
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(*v3);
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 60;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = *(type metadata accessor for PairingError(0) + 24);
  type metadata accessor for Date();
  sub_100D58E48(&qword_1016969A0, &type metadata accessor for Date);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 62;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  return 60;
}

uint64_t sub_100D58E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D58E90(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D58F20()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100D58FDC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PairingError(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100D59064()
{
  result = qword_1016BAEC8;
  if (!qword_1016BAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAEC8);
  }

  return result;
}

uint64_t sub_100D590B8(uint64_t a1)
{
  *(a1 + 8) = sub_100D58E48(&qword_1016BAED0, type metadata accessor for PairingErrorRecord);
  result = sub_100D58E48(&unk_1016B1850, type metadata accessor for PairingErrorRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D5913C()
{
  result = qword_1016BAEE0;
  if (!qword_1016BAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAEE0);
  }

  return result;
}

uint64_t sub_100D59190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D591F4()
{
  result = qword_1016BAF08;
  if (!qword_1016BAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF08);
  }

  return result;
}

unint64_t sub_100D59248()
{
  result = qword_1016BAF10;
  if (!qword_1016BAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF10);
  }

  return result;
}

unint64_t sub_100D5929C()
{
  result = qword_1016BAF20;
  if (!qword_1016BAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF20);
  }

  return result;
}

unint64_t sub_100D592F0(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t sub_100D59300()
{
  result = qword_1016BAF28;
  if (!qword_1016BAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF28);
  }

  return result;
}

unint64_t sub_100D59378()
{
  result = qword_1016BAF30;
  if (!qword_1016BAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF30);
  }

  return result;
}

unint64_t sub_100D593D0()
{
  result = qword_1016BAF38;
  if (!qword_1016BAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF38);
  }

  return result;
}

unint64_t sub_100D59428()
{
  result = qword_1016BAF40;
  if (!qword_1016BAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF40);
  }

  return result;
}

unint64_t sub_100D59480()
{
  result = qword_1016BAF48;
  if (!qword_1016BAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF48);
  }

  return result;
}

unint64_t sub_100D594D8()
{
  result = qword_1016BAF50;
  if (!qword_1016BAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF50);
  }

  return result;
}

unint64_t sub_100D59530()
{
  result = qword_1016BAF58;
  if (!qword_1016BAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF58);
  }

  return result;
}

uint64_t sub_100D59584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100D5969C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100D59848(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100D596CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = v5;
  }

LABEL_10:
  if (v5 != 32)
  {
    goto LABEL_24;
  }

  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v10 = v10;
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v9 != 2)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v8 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v8)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v10 != 113)
  {
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_100D59770(uint64_t a1)
{
  *(a1 + 8) = sub_100D597A0();
  result = sub_100D597F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D597A0()
{
  result = qword_1016BAF60;
  if (!qword_1016BAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF60);
  }

  return result;
}

unint64_t sub_100D597F4()
{
  result = qword_1016BAF68;
  if (!qword_1016BAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF68);
  }

  return result;
}

uint64_t sub_100D59848(uint64_t *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v12, v13);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_10015049C(v12, v13);
    v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v4 = sub_100D596CC(v7, v8, v9, v11);
  }

  sub_100007BAC(v12);
  sub_100007BAC(a1);
  return v4;
}

uint64_t sub_100D5998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 392) = v18;
  *(v8 + 376) = v17;
  *(v8 + 360) = a6;
  *(v8 + 368) = a8;
  *(v8 + 520) = a7;
  *(v8 + 344) = a4;
  *(v8 + 352) = a5;
  *(v8 + 328) = a2;
  *(v8 + 336) = a3;
  *(v8 + 320) = a1;
  v9 = type metadata accessor for BinaryDecoder();
  *(v8 + 400) = v9;
  v10 = *(v9 - 8);
  *(v8 + 408) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v12 = type metadata accessor for BinaryEncoder();
  *(v8 + 424) = v12;
  v13 = *(v12 - 8);
  *(v8 + 432) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();

  return _swift_task_switch(sub_100D59AD0, 0, 0);
}

uint64_t sub_100D59AD0()
{
  v33 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  BinaryEncoder.init()();
  BinaryDecoder.init()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 336);
  v4 = type metadata accessor for Logger();
  *(v0 + 448) = sub_1000076D4(v4, qword_10177B048);
  sub_1001011C0(v3, v0 + 16);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v32);
    *(v7 + 12) = 2082;
    sub_1001011C0(v0 + 16, v0 + 256);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    sub_100007BAC((v0 + 16));
    v11 = sub_1000136BC(v8, v10, v32);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Sending command: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v0 + 16));
  }

  v12 = *(v0 + 440);
  v13 = *(v0 + 336);
  v14 = v13[5];
  sub_1000035D0(v13, v13[3]);
  v15 = BinaryEncoder.encode<A>(_:)();
  *(v0 + 456) = v15;
  *(v0 + 464) = v16;
  if (*(v0 + 520) == 1)
  {
    v17 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v18 = swift_task_alloc();
    *(v0 + 472) = v18;
    *v18 = v0;
    v18[1] = sub_100D59F44;
    v19 = *(v0 + 392);
    v20 = *(v0 + 376);
    v21 = *(v0 + 328);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(v20, v19);
  }

  else
  {
    v22 = v15;
    v23 = v16;
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    sub_100017D5C(v22, v23);
    v25 = *(v0 + 520);
    v26 = *(v0 + 328);
    v27 = swift_allocObject();
    *(v0 + 496) = v27;
    v28 = *(v0 + 384);
    *(v27 + 16) = *(v0 + 368);
    *(v27 + 32) = v28;
    *(v27 + 48) = v25;
    *(v27 + 56) = v26;
    *(v27 + 64) = v24;
    v29 = async function pointer to withTimeout<A>(_:block:)[1];
    swift_unknownObjectRetain();
    v30 = swift_task_alloc();
    *(v0 + 504) = v30;
    *v30 = v0;
    v30[1] = sub_100D5A18C;

    return withTimeout<A>(_:block:)(v0 + 304, 0x8AC7230489E80000, 0, &unk_1013E6480, v27, &type metadata for Data);
  }
}

uint64_t sub_100D59F44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;
  *(*v2 + 480) = v1;

  if (v1)
  {
    v7 = sub_100D5A8C0;
  }

  else
  {
    *(v4 + 488) = a1;
    v7 = sub_100D5A06C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100D5A06C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = fragment(data:mtu:)();
  v5 = *(v0 + 520);
  v6 = *(v0 + 328);
  v7 = swift_allocObject();
  *(v0 + 496) = v7;
  v8 = *(v0 + 384);
  *(v7 + 16) = *(v0 + 368);
  *(v7 + 32) = v8;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *(v7 + 64) = v4;
  v9 = async function pointer to withTimeout<A>(_:block:)[1];
  swift_unknownObjectRetain();
  v10 = swift_task_alloc();
  *(v0 + 504) = v10;
  *v10 = v0;
  v10[1] = sub_100D5A18C;

  return withTimeout<A>(_:block:)(v0 + 304, 0x8AC7230489E80000, 0, &unk_1013E6480, v7, &type metadata for Data);
}

uint64_t sub_100D5A18C()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 496);

  if (v0)
  {
    v6 = sub_100D5A984;
  }

  else
  {
    v6 = sub_100D5A2C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100D5A2C0()
{
  v67 = v0;
  v1 = *(v0 + 448);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  sub_1001011C0(*(v0 + 336), v0 + 64);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v66);
    *(v6 + 12) = 2082;
    sub_1001011C0(v0 + 64, v0 + 208);
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    sub_100007BAC((v0 + 64));
    v10 = sub_1000136BC(v7, v9, v66);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Sent command: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC((v0 + 64));
  }

  v11 = *(v0 + 448);
  sub_100017D5C(v3, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    result = swift_slowAlloc();
    v16 = result;
    v66[0] = result;
    *v14 = 134218242;
    v17 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v17 != 2)
      {
        v18 = 0;
        goto LABEL_16;
      }

      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(v2);
LABEL_16:
      *(v14 + 4) = v18;
      sub_100016590(v3, v2);
      *(v14 + 12) = 2082;
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, v66);

      *(v14 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Length: %ld received raw response: %{public}s", v14, 0x16u);
      sub_100007BAC(v16);

      goto LABEL_17;
    }

    LODWORD(v18) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_16;
  }

  sub_100016590(v3, v2);
LABEL_17:

  v25 = *(v0 + 512);
  v26 = *(v0 + 416);
  v27 = *(v0 + 320);
  v28 = *(v0 + 352);
  *(v27 + 24) = *(v0 + 344);
  *(v27 + 32) = v28;
  sub_1000280DC(v27);
  BinaryDecoder.decode<A>(_:from:)();
  v29 = v3;
  if (v25)
  {
    v31 = *(v0 + 456);
    v30 = *(v0 + 464);
    v64 = *(v0 + 440);
    v32 = v2;
    v34 = *(v0 + 424);
    v33 = *(v0 + 432);
    v35 = *(v0 + 408);
    v36 = *(v0 + 416);
    v37 = *(v0 + 400);
    v38 = *(v0 + 320);
    sub_100016590(v29, v32);
    sub_100016590(v31, v30);
    (*(v35 + 8))(v36, v37);
    (*(v33 + 8))(v64, v34);
    sub_100101758(v38);
    v39 = *(v0 + 440);
    v40 = *(v0 + 416);

    v41 = *(v0 + 8);
  }

  else
  {
    v65 = v3;
    v42 = *(v0 + 448);
    sub_1001011C0(*(v0 + 320), v0 + 112);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    v45 = os_log_type_enabled(v43, v44);
    v62 = *(v0 + 456);
    v63 = *(v0 + 464);
    v47 = *(v0 + 432);
    v46 = *(v0 + 440);
    v49 = *(v0 + 416);
    v48 = *(v0 + 424);
    v50 = *(v0 + 400);
    v51 = *(v0 + 408);
    if (v45)
    {
      v61 = *(v0 + 440);
      v52 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, v66);
      *(v52 + 12) = 2082;
      sub_1001011C0(v0 + 112, v0 + 160);
      sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
      v59 = v50;
      v60 = v49;
      v53 = String.init<A>(describing:)();
      v55 = v54;
      sub_100007BAC((v0 + 112));
      v56 = sub_1000136BC(v53, v55, v66);

      *(v52 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v43, v44, "%s Received response: %{public}s", v52, 0x16u);
      swift_arrayDestroy();

      sub_100016590(v65, v2);
      sub_100016590(v62, v63);
      (*(v51 + 8))(v60, v59);
      (*(v47 + 8))(v61, v48);
    }

    else
    {

      sub_100016590(v65, v2);
      sub_100016590(v62, v63);
      sub_100007BAC((v0 + 112));
      (*(v51 + 8))(v49, v50);
      (*(v47 + 8))(v46, v48);
    }

    v57 = *(v0 + 440);
    v58 = *(v0 + 416);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_100D5A8C0()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[51];
  sub_100016590(v0[57], v0[58]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[60];
  v8 = v0[55];
  v9 = v0[52];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D5A984()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[50];
  v6 = v0[51];
  sub_100016590(v0[57], v0[58]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[64];
  v8 = v0[55];
  v9 = v0[52];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D5AA48(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a1;
  v13 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v8[5] = v13;
  v14 = *(v13 - 8);
  v8[6] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v8[7] = v16;
  v17 = swift_task_alloc();
  v8[8] = v17;
  if (a2)
  {
    v18 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
    v16 = v17;
    v19 = swift_task_alloc();
    v8[9] = v19;
    *v19 = v8;
    v20 = sub_100D5ABE0;
  }

  else
  {
    v21 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
    v19 = swift_task_alloc();
    v8[15] = v19;
    *v19 = v8;
    v20 = sub_100D5AF74;
  }

  v19[1] = v20;

  return dispatch thunk of CharacteristicProtocol.write(data:)(v16, a4, a6, a8);
}

uint64_t sub_100D5ABE0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100C10EA4, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence<>.reassemble()[1];
    v5 = swift_task_alloc();
    v3[11] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_100D5AD6C;
    v7 = v3[8];
    v8 = v3[5];

    return AsyncSequence<>.reassemble()(v8, v6);
  }
}

uint64_t sub_100D5AD6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  v6[12] = v2;

  v9 = v6[8];
  v10 = v6[6];
  v11 = v6[5];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_100C11160;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_100D5AEF8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100D5AEF8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  **(v0 + 32) = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100D5AF74()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100D5B470, 0, 0);
  }

  else
  {
    v4 = async function pointer to AsyncSequence.first()[1];
    v5 = swift_task_alloc();
    v3[17] = v5;
    v6 = sub_10048E70C();
    *v5 = v3;
    v5[1] = sub_100D5B104;
    v7 = v3[7];
    v8 = v3[5];

    return AsyncSequence.first()(v3 + 2, v8, v6);
  }
}

uint64_t sub_100D5B104()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v5 = sub_100C113B4;
  }

  else
  {
    v5 = sub_100D5B26C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100D5B26C()
{
  v15 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177B048);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1000136BC(0xD00000000000003CLL, 0x800000010136F580, &v14);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalid response!", v5, 0xCu);
      sub_100007BAC(v6);
    }

    type metadata accessor for OwnerCommandService.Error(0);
    sub_100D5B5B8();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[7];
    v7 = v0[8];

    v9 = v0[1];
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[4];
    *v12 = v0[2];
    v12[1] = v1;

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100D5B470()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100D5B4DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100D5AA48(a1, v8, v10, v9, v4, v5, v6, v7);
}

unint64_t sub_100D5B5B8()
{
  result = qword_1016A7818;
  if (!qword_1016A7818)
  {
    type metadata accessor for OwnerCommandService.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7818);
  }

  return result;
}

uint64_t sub_100D5B610(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

unint64_t sub_100D5B64C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v84[10] = v1[10];
  v84[11] = v3;
  v84[12] = v1[12];
  v85 = *(v1 + 26);
  v4 = v1[7];
  v84[6] = v1[6];
  v84[7] = v4;
  v5 = v1[9];
  v84[8] = v1[8];
  v84[9] = v5;
  v6 = v1[3];
  v84[2] = v1[2];
  v84[3] = v6;
  v7 = v1[5];
  v84[4] = v1[4];
  v84[5] = v7;
  v8 = v1[1];
  v84[0] = *v1;
  v84[1] = v8;
  v9 = sub_1001DA684(v84);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v23 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v24 = swift_allocObject();
        *a1 = v24;
        memmove((v24 + 16), v23, 0xD8uLL);
        v25 = v1[11];
        v80 = v1[10];
        v81 = v25;
        v82 = v1[12];
        v83 = *(v1 + 26);
        v26 = v1[7];
        v76 = v1[6];
        v77 = v26;
        v27 = v1[9];
        v78 = v1[8];
        v79 = v27;
        v28 = v1[3];
        v72 = v1[2];
        v73 = v28;
        v29 = v1[5];
        v74 = v1[4];
        v75 = v29;
        v30 = v1[1];
        v70 = *v1;
        v71 = v30;
        v31 = sub_10004CA28(&v70);
        v32 = &unk_1016B0720;
        v33 = &unk_1013CDFD0;
      }

      else
      {
        v50 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsLEFinalizePairingCommandPayload;
        a1[4] = sub_10099FFE8();
        v51 = swift_allocObject();
        *a1 = v51;
        memmove((v51 + 16), v50, 0xC0uLL);
        v52 = v1[11];
        v80 = v1[10];
        v81 = v52;
        v82 = v1[12];
        v83 = *(v1 + 26);
        v53 = v1[7];
        v76 = v1[6];
        v77 = v53;
        v54 = v1[9];
        v78 = v1[8];
        v79 = v54;
        v55 = v1[3];
        v72 = v1[2];
        v73 = v55;
        v56 = v1[5];
        v74 = v1[4];
        v75 = v56;
        v57 = v1[1];
        v70 = *v1;
        v71 = v57;
        v31 = sub_10004CA28(&v70);
        v32 = &unk_1016B0718;
        v33 = &unk_1013CDFC8;
      }
    }

    else
    {
      if (!v9)
      {
        v11 = sub_10004CA28(v84);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v12 = swift_allocObject();
        *a1 = v12;
        v13 = v11[1];
        *(v12 + 16) = *v11;
        *(v12 + 32) = v13;
        v14 = v1[1];
        v70 = *v1;
        v71 = v14;
        v15 = v1[5];
        v74 = v1[4];
        v75 = v15;
        v16 = v1[3];
        v72 = v1[2];
        v73 = v16;
        v17 = v1[9];
        v78 = v1[8];
        v79 = v17;
        v18 = v1[7];
        v76 = v1[6];
        v77 = v18;
        v83 = *(v1 + 26);
        v19 = v1[12];
        v81 = v1[11];
        v82 = v19;
        v80 = v1[10];
        v20 = sub_10004CA28(&v70);
        v21 = v20[2];
        v22 = v20[3];
        sub_100017D5C(*v20, v20[1]);
        return sub_100017D5C(v21, v22);
      }

      v42 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v43 = swift_allocObject();
      *a1 = v43;
      memmove((v43 + 16), v42, 0x50uLL);
      v44 = v1[11];
      v80 = v1[10];
      v81 = v44;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v45 = v1[7];
      v76 = v1[6];
      v77 = v45;
      v46 = v1[9];
      v78 = v1[8];
      v79 = v46;
      v47 = v1[3];
      v72 = v1[2];
      v73 = v47;
      v48 = v1[5];
      v74 = v1[4];
      v75 = v48;
      v49 = v1[1];
      v70 = *v1;
      v71 = v49;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_10169EAC0;
      v33 = &unk_10139E338;
    }

    return sub_1000D2A70(v31, v69, v32, v33);
  }

  if (v9 <= 5)
  {
    if (v9 == 4)
    {
      v34 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsMCFinalizePairingCommandPayload;
      a1[4] = sub_1009A1FAC();
      v35 = swift_allocObject();
      *a1 = v35;
      memmove((v35 + 16), v34, 0xC0uLL);
      v36 = v1[11];
      v80 = v1[10];
      v81 = v36;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v37 = v1[7];
      v76 = v1[6];
      v77 = v37;
      v38 = v1[9];
      v78 = v1[8];
      v79 = v38;
      v39 = v1[3];
      v72 = v1[2];
      v73 = v39;
      v40 = v1[5];
      v74 = v1[4];
      v75 = v40;
      v41 = v1[1];
      v70 = *v1;
      v71 = v41;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_1016B82A8;
      v33 = &unk_1013E7AE0;
    }

    else
    {
      v58 = sub_10004CA28(v84);
      a1[3] = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      a1[4] = sub_1009A00FC();
      v59 = swift_allocObject();
      *a1 = v59;
      v60 = v58[3];
      v62 = *v58;
      v61 = v58[1];
      v59[3] = v58[2];
      v59[4] = v60;
      v59[1] = v62;
      v59[2] = v61;
      v63 = v1[11];
      v80 = v1[10];
      v81 = v63;
      v82 = v1[12];
      v83 = *(v1 + 26);
      v64 = v1[7];
      v76 = v1[6];
      v77 = v64;
      v65 = v1[9];
      v78 = v1[8];
      v79 = v65;
      v66 = v1[3];
      v72 = v1[2];
      v73 = v66;
      v67 = v1[5];
      v74 = v1[4];
      v75 = v67;
      v68 = v1[1];
      v70 = *v1;
      v71 = v68;
      v31 = sub_10004CA28(&v70);
      v32 = &unk_1016B0710;
      v33 = &unk_1013CDFC0;
    }

    return sub_1000D2A70(v31, v69, v32, v33);
  }

  if (v9 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else if (v9 == 7)
  {
    a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
    result = sub_1009A0048();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

uint64_t sub_100D5BB2C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Endianness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = *(v3 + 176);
  v77[10] = *(v3 + 160);
  v77[11] = v11;
  v77[12] = *(v3 + 192);
  v78 = *(v3 + 208);
  v12 = *(v3 + 112);
  v77[6] = *(v3 + 96);
  v77[7] = v12;
  v13 = *(v3 + 144);
  v77[8] = *(v3 + 128);
  v77[9] = v13;
  v14 = *(v3 + 48);
  v77[2] = *(v3 + 32);
  v77[3] = v14;
  v15 = *(v3 + 80);
  v77[4] = *(v3 + 64);
  v77[5] = v15;
  v16 = *(v3 + 16);
  v77[0] = *v3;
  v77[1] = v16;
  v17 = sub_1001DA684(v77);
  if (v17 > 3)
  {
    if (v17 > 5)
    {
      if (v17 == 8)
      {
        v18 = 516;
      }

      else if (v17 == 7)
      {
        v18 = 260;
      }

      else
      {
        v18 = 267;
      }

      goto LABEL_17;
    }

    if (v17 != 4)
    {
      sub_10004CA28(v77);
      v18 = 259;
      goto LABEL_17;
    }

LABEL_12:
    sub_10004CA28(v77);
    v18 = 258;
    goto LABEL_17;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      sub_10004CA28(v77);
      v18 = 257;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v17)
  {
    sub_10004CA28(v77);
    v18 = 256;
  }

  else
  {
    sub_10004CA28(v77);
    v18 = 268;
  }

LABEL_17:
  LOWORD(v44) = v18;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v6 + 8))(v9, v5);
  LOWORD(v44) = v58;
  sub_10015049C(v73, v74);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v2)
  {
    v19 = *(v3 + 176);
    v75[10] = *(v3 + 160);
    v75[11] = v19;
    v75[12] = *(v3 + 192);
    v76 = *(v3 + 208);
    v20 = *(v3 + 112);
    v75[6] = *(v3 + 96);
    v75[7] = v20;
    v21 = *(v3 + 144);
    v75[8] = *(v3 + 128);
    v75[9] = v21;
    v22 = *(v3 + 48);
    v75[2] = *(v3 + 32);
    v75[3] = v22;
    v23 = *(v3 + 80);
    v75[4] = *(v3 + 64);
    v75[5] = v23;
    v24 = *(v3 + 16);
    v75[0] = *v3;
    v75[1] = v24;
    v25 = sub_1001DA684(v75);
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
        sub_10004CA28(v75);
        sub_100D5B64C(v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v52 = v66;
          v53 = v67;
          v54 = v68;
          v55 = v69;
          v48 = v62;
          v49 = v63;
          v50 = v64;
          v51 = v65;
          v44 = v58;
          v45 = v59;
          v46 = v60;
          v47 = v61;
          v38 = v66;
          v39 = v67;
          v40 = v68;
          v41 = v69;
          v34 = v62;
          v35 = v63;
          v36 = v64;
          v37 = v65;
          v30 = v58;
          v31 = v59;
          v32 = v60;
          v33 = v61;
          sub_10015049C(v73, v74);
          sub_1008BC3E0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1008BC2B4(&v44);
          return sub_100007BAC(v73);
        }

        sub_100D5B64C(v72);
        if (swift_dynamicCast())
        {
          v52 = v66;
          v53 = v67;
          v54 = v68;
          v55 = v69;
          v48 = v62;
          v49 = v63;
          v50 = v64;
          v51 = v65;
          v44 = v58;
          v45 = v59;
          v46 = v60;
          v47 = v61;
          v38 = v66;
          v39 = v67;
          v40 = v68;
          v41 = v69;
          v34 = v62;
          v35 = v63;
          v36 = v64;
          v37 = v65;
          v30 = v58;
          v31 = v59;
          v32 = v60;
          v33 = v61;
          sub_10015049C(v73, v74);
          sub_1001BF4A0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1009A0384(&v44);
          return sub_100007BAC(v73);
        }
      }

      else if (v25)
      {
        if (v25 == 1)
        {
          sub_10004CA28(v75);
          sub_100D5B64C(v72);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v46 = v60;
            v47 = v61;
            v48 = v62;
            v44 = v58;
            v45 = v59;
            v32 = v60;
            v33 = v61;
            v34 = v62;
            v30 = v58;
            v31 = v59;
            sub_10015049C(v73, v74);
            sub_100392A9C();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DAB9C(&v44);
            return sub_100007BAC(v73);
          }
        }

        else
        {
          sub_10004CA28(v75);
          sub_100D5B64C(v72);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v54 = v68;
            v55 = v69;
            v56 = v70;
            v50 = v64;
            v51 = v65;
            v52 = v66;
            v53 = v67;
            v46 = v60;
            v47 = v61;
            v48 = v62;
            v49 = v63;
            v44 = v58;
            v45 = v59;
            v40 = v68;
            v41 = v69;
            v42 = v70;
            v36 = v64;
            v37 = v65;
            v38 = v66;
            v39 = v67;
            v32 = v60;
            v33 = v61;
            v34 = v62;
            v35 = v63;
            v57 = v71;
            v43 = v71;
            v30 = v58;
            v31 = v59;
            sub_10015049C(v73, v74);
            sub_10040F2C0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DA914(&v44);
            return sub_100007BAC(v73);
          }
        }
      }

      else
      {
        sub_10004CA28(v75);
        sub_100D5B64C(&v58);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v26 = v44;
          v27 = v45;
          v58 = v44;
          v59 = v45;
          sub_10015049C(v73, v74);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v26, *(&v26 + 1));
          sub_100016590(v27, *(&v27 + 1));
          return sub_100007BAC(v73);
        }
      }

LABEL_44:
      sub_100D5CF00();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();
      return sub_100007BAC(v73);
    }

    if (v25 > 6)
    {
      if (v25 == 7)
      {
        sub_100D5B64C(&v58);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_10015049C(v73, v74);
        sub_1009A0330();
      }

      else
      {
        sub_100D5B64C(&v58);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_44;
        }

        sub_10015049C(v73, v74);
        sub_10027FBB8();
      }
    }

    else
    {
      if (v25 == 5)
      {
        sub_10004CA28(v75);
        sub_100D5B64C(v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v44 = v58;
          v45 = v59;
          v46 = v60;
          v47 = v61;
          v30 = v58;
          v31 = v59;
          v32 = v60;
          v33 = v61;
          sub_10015049C(v73, v74);
          sub_1008894E4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_1001DA6B0(&v44);
          return sub_100007BAC(v73);
        }

        goto LABEL_44;
      }

      sub_100D5B64C(&v58);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_44;
      }

      sub_10015049C(v73, v74);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v73);
}

double sub_100D5C49C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100D5CB48(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

void sub_100D5C540(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BD44(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_1001DA870(&v47);
            goto LABEL_29;
          }
        }

        else
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_100D5CF54(&v47);
            goto LABEL_29;
          }
        }

        goto LABEL_30;
      }

      if (a1 != 4)
      {
        sub_10001F280(a2, v46);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v32 = v18;
          v33 = v19;
          v34 = v20;
          v35 = v21;
          sub_1009A1D78(&v32);
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      sub_10001F280(a2, v46);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10001F280(a2, v46);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v40 = v26;
          v41 = v27;
          v42 = v28;
          v43 = v29;
          v36 = v22;
          v37 = v23;
          v38 = v24;
          v39 = v25;
          v32 = v18;
          v33 = v19;
          v34 = v20;
          v35 = v21;
          sub_1001DA318(&v32);
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      sub_100007BAC(a2);
      v40 = v26;
      v41 = v27;
      v42 = v28;
      v43 = v29;
      v36 = v22;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v32 = v18;
      v33 = v19;
      v34 = v20;
      v35 = v21;
      sub_1001DA3BC(&v32);
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v32);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            sub_1001DACD4(&v47);
LABEL_29:
            v9 = v58;
            *(a3 + 160) = v57;
            *(a3 + 176) = v9;
            *(a3 + 192) = v59;
            *(a3 + 208) = v60;
            v10 = v54;
            *(a3 + 96) = v53;
            *(a3 + 112) = v10;
            v11 = v56;
            *(a3 + 128) = v55;
            *(a3 + 144) = v11;
            v12 = v50;
            *(a3 + 32) = v49;
            *(a3 + 48) = v12;
            v13 = v52;
            *(a3 + 64) = v51;
            *(a3 + 80) = v13;
            v14 = v48;
            *a3 = v47;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_30;
        }

        sub_10001F280(a2, &v18);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v32 = v16;
          v33 = v17;
          sub_1009A1EBC(&v32);
          goto LABEL_27;
        }

LABEL_30:
        sub_100D5CF00();
        swift_allocError();
        *v15 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v46);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v28 = v42;
          v29 = v43;
          v30 = v44;
          v31 = v45;
          v24 = v38;
          v25 = v39;
          v26 = v40;
          v27 = v41;
          v20 = v34;
          v21 = v35;
          v22 = v36;
          v23 = v37;
          v18 = v32;
          v19 = v33;
          sub_1009A1E1C(&v18);
          v57 = v28;
          v58 = v29;
          v59 = v30;
          v60 = v31;
          v53 = v24;
          v54 = v25;
          v55 = v26;
          v56 = v27;
          v49 = v20;
          v50 = v21;
          v51 = v22;
          v52 = v23;
          v7 = v18;
          v8 = v19;
LABEL_28:
          v47 = v7;
          v48 = v8;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      sub_10001F280(a2, v46);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_30;
      }

      sub_100007BAC(a2);
      v34 = v20;
      v35 = v21;
      v36 = v22;
      v32 = v18;
      v33 = v19;
      sub_1001DAAA0(&v32);
    }

LABEL_27:
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v53 = v38;
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v49 = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v7 = v32;
    v8 = v33;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_100D5CB48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  v38 = a1;
  sub_1000035D0(a1, v9);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v41, v41[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v11 = v38;
  }

  else
  {
    v12 = v37;
    v44 = v39[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v13 = v40[0];
    v14 = sub_100391628(v40[0]);
    if (v14 != 8)
    {
      v23 = v14;
      v24 = sub_10099BD44(v14);
      v26 = v25;
      v27 = v38;
      sub_10001F280(v38, v39);
      v40[3] = v24;
      v40[4] = v26;
      sub_1000280DC(v40);
      v28 = *(v26 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v40, v39);
      sub_100D5C540(v23, v39, v42);
      sub_100007BAC(v40);
      sub_100007BAC(v41);
      result = sub_100007BAC(v27);
      v30 = v42[11];
      *(v12 + 160) = v42[10];
      *(v12 + 176) = v30;
      *(v12 + 192) = v42[12];
      *(v12 + 208) = v43;
      v31 = v42[7];
      *(v12 + 96) = v42[6];
      *(v12 + 112) = v31;
      v32 = v42[9];
      *(v12 + 128) = v42[8];
      *(v12 + 144) = v32;
      v33 = v42[3];
      *(v12 + 32) = v42[2];
      *(v12 + 48) = v33;
      v34 = v42[5];
      *(v12 + 64) = v42[4];
      *(v12 + 80) = v34;
      v35 = v42[1];
      *v12 = v42[0];
      *(v12 + 16) = v35;
      return result;
    }

    static os_log_type_t.error.getter();
    v11 = v38;
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    LOWORD(v40[0]) = v13;
    v16 = FixedWidthInteger.data.getter();
    v18 = v17;
    v19 = Data.hexString.getter();
    v21 = v20;
    sub_100016590(v16, v18);
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v19;
    *(v15 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    sub_100D5CF00();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v41);
  return sub_100007BAC(v11);
}

unint64_t sub_100D5CF00()
{
  result = qword_1016BAF70;
  if (!qword_1016BAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF70);
  }

  return result;
}

double sub_100D5CF54(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}

uint64_t sub_100D5CF9C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  v1 = v0[25];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[24], v1);
  }

  return _swift_deallocObject(v0, 208);
}

unint64_t sub_100D5D050()
{
  result = qword_1016BAF78;
  if (!qword_1016BAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF78);
  }

  return result;
}

uint64_t sub_100D5D0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v123 = a3;
  v120 = a2;
  v5 = type metadata accessor for UUID();
  v117 = *(v5 - 8);
  v118 = v5;
  v6 = *(v117 + 64);
  __chkstk_darwin(v5);
  v116 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v114 - v10;
  v119 = type metadata accessor for AirTagVersionNumber();
  v12 = *(v119 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v119);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v114 - v17;
  v19 = type metadata accessor for AccessoryMetadata(0);
  v121 = *(v19 - 1);
  v20 = *(v121 + 64);
  __chkstk_darwin(v19);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  sub_1000035D0(a1, v24);
  v25 = (*(v23 + 176))(v24, v23);
  if (v26 >> 60 == 15)
  {
    if (qword_1016951D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C578);
    sub_10001F280(a1, v128);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v125[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = v129;
      v32 = v130;
      sub_1000035D0(v128, v129);
      v34 = v116;
      (*(*(*(v32 + 8) + 8) + 32))(v33);
      sub_1002FFBAC();
      v35 = v118;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v117 + 8))(v34, v35);
      sub_100007BAC(v128);
      v39 = sub_1000136BC(v36, v38, v125);

      *(v30 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "No productData for %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);

LABEL_6:
      sub_100006654(v120, v123);

LABEL_11:
      sub_100007BAC(a1);
      return (*(v121 + 56))(v122, 1, 1, v19);
    }

    sub_100006654(v120, v123);

    v53 = v128;
    goto LABEL_10;
  }

  v114 = v25;
  v115 = v26;
  v40 = a1[3];
  v41 = a1[4];
  sub_1000035D0(a1, v40);
  v42 = (*(v41 + 24))(v40, v41);
  v44 = sub_10098E9DC(v42, v43);
  if ((v44 & 0x100000000) != 0)
  {
    v55 = a1[3];
    v56 = a1[4];
    sub_1000035D0(a1, v55);
    (*(v56 + 24))(v55, v56);
    AirTagVersionNumber.init(string:)();
    v57 = v12;
    v58 = *(v12 + 48);
    v59 = v119;
    if (v58(v11, 1, v119) == 1)
    {
      sub_100D5DCA0(v11);
      v60 = a1[3];
      v61 = a1[4];
      sub_1000035D0(a1, v60);
      v62 = (*(v61 + 24))(v60, v61);
      v64 = sub_100B68688(v62, v63);
      if (v66)
      {
        v67 = a1[3];
        v68 = a1[4];
        sub_1000035D0(a1, v67);
        if (((*(v68 + 144))(v67, v68) & 1) == 0 || v123 >> 60 == 15)
        {
          if (qword_1016951D8 != -1)
          {
            swift_once();
          }

          v97 = type metadata accessor for Logger();
          sub_1000076D4(v97, qword_10177C578);
          sub_10001F280(a1, v128);
          sub_10001F280(a1, v125);
          v28 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v98))
          {
            v99 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            *v99 = 141558531;
            *(v99 + 4) = 1752392040;
            *(v99 + 12) = 2081;
            v101 = v129;
            v100 = v130;
            sub_1000035D0(v128, v129);
            v102 = v116;
            (*(*(*(v100 + 8) + 8) + 32))(v101);
            sub_1002FFBAC();
            v103 = v118;
            v104 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = v105;
            (*(v117 + 8))(v102, v103);
            sub_100007BAC(v128);
            v107 = sub_1000136BC(v104, v106, &v124);

            *(v99 + 14) = v107;
            *(v99 + 22) = 2082;
            v108 = v126;
            v109 = v127;
            sub_1000035D0(v125, v126);
            v110 = (*(v109 + 24))(v108, v109);
            v112 = v111;
            sub_100007BAC(v125);
            v113 = sub_1000136BC(v110, v112, &v124);

            *(v99 + 24) = v113;
            _os_log_impl(&_mh_execute_header, v28, v98, "Invalid FW version for %{private,mask.hash}s %{public}s", v99, 0x20u);
            swift_arrayDestroy();

            sub_100006654(v114, v115);
            goto LABEL_6;
          }

          sub_100006654(v114, v115);
          sub_100006654(v120, v123);

          sub_100007BAC(v128);
          v53 = v125;
LABEL_10:
          sub_100007BAC(v53);
          goto LABEL_11;
        }

        v70 = a1[3];
        v69 = a1[4];
        sub_1000035D0(a1, v70);
        (*(*(*(v69 + 8) + 8) + 32))(v70);
        (*(v57 + 56))(&v22[v19[9]], 1, 1, v59);
        v71 = &v22[v19[11]];
        *v71 = 0;
        *(v71 + 1) = 0;
        v71[16] = 1;
        v72 = &v22[v19[16]];
        sub_100006654(v114, v115);
        v45 = 0;
        LOBYTE(v46) = 0;
        LOBYTE(v18) = 0;
        *v72 = 0;
        *(v72 + 1) = 0xE000000000000000;
        v73 = &v22[v19[5]];
        v74 = v123;
        *v73 = v120;
        *(v73 + 1) = v74;
      }

      else
      {
        v82 = v64;
        v83 = v65;
        v46 = a1[3];
        v84 = a1[4];
        sub_1000035D0(a1, v46);
        (*(*(*(v84 + 8) + 8) + 32))(v46);
        (*(v57 + 56))(&v22[v19[9]], 1, 1, v59);
        v85 = &v22[v19[11]];
        v86 = &v22[v19[16]];
        sub_100006654(v120, v123);
        v45 = 0;
        LOBYTE(v46) = 0;
        LOBYTE(v18) = 0;
        *v86 = 0;
        *(v86 + 1) = 0xE000000000000000;
        v87 = &v22[v19[5]];
        v88 = v115;
        *v87 = v114;
        *(v87 + 1) = v88;
        *v85 = v82;
        *(v85 + 1) = v83;
        v85[16] = 0;
      }
    }

    else
    {
      v75 = *(v57 + 32);
      v117 = v57 + 32;
      v118 = v75;
      v75(v18, v11, v59);
      v77 = a1[3];
      v76 = a1[4];
      sub_1000035D0(a1, v77);
      (*(*(*(v76 + 8) + 8) + 32))(v77);
      (*(v57 + 16))(v16, v18, v59);
      v46 = v19[9];
      v116 = *(v57 + 56);
      (v116)(&v22[v46], 1, 1, v59);
      v78 = &v22[v19[11]];
      *v78 = 0;
      *(v78 + 1) = 0;
      v78[16] = 1;
      v79 = &v22[v19[16]];
      sub_100006654(v120, v123);
      (*(v57 + 8))(v18, v59);
      *v79 = 0;
      *(v79 + 1) = 0xE000000000000000;
      v80 = &v22[v19[5]];
      v81 = v115;
      *v80 = v114;
      *(v80 + 1) = v81;
      sub_100D5DCA0(&v22[v46]);
      v118(&v22[v46], v16, v59);
      (v116)(&v22[v46], 0, 1, v59);
      v45 = 0;
      LOBYTE(v46) = 0;
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    v45 = v44;
    v46 = v44 >> 16;
    v18 = (v44 >> 24);
    v48 = a1[3];
    v47 = a1[4];
    sub_1000035D0(a1, v48);
    (*(*(*(v47 + 8) + 8) + 32))(v48);
    (*(v12 + 56))(&v22[v19[9]], 1, 1, v119);
    v49 = &v22[v19[11]];
    *v49 = 0;
    *(v49 + 1) = 0;
    v49[16] = 1;
    v50 = &v22[v19[16]];
    sub_100006654(v120, v123);
    *v50 = 0;
    *(v50 + 1) = 0xE000000000000000;
    v51 = &v22[v19[5]];
    v52 = v115;
    *v51 = v114;
    *(v51 + 1) = v52;
  }

  v89 = &v22[v19[8]];
  *v89 = v45;
  v89[2] = v46;
  v89[3] = v18;
  v90 = &v22[v19[7]];
  *v90 = 0;
  *(v90 + 1) = 0;
  v91 = &v22[v19[6]];
  *v91 = 0;
  *(v91 + 1) = 0;
  v92 = &v22[v19[10]];
  *v92 = 0;
  v92[4] = 1;
  v93 = &v22[v19[12]];
  *v93 = 0;
  v93[8] = 1;
  v94 = &v22[v19[13]];
  *v94 = 0;
  v94[4] = 1;
  v22[v19[14]] = 4;
  v22[v19[15]] = 5;
  v95 = &v22[v19[17]];
  *v95 = 0;
  v95[4] = 1;
  v96 = v122;
  sub_100D5DD08(v22, v122);
  (*(v121 + 56))(v96, 0, 1, v19);
  return sub_100007BAC(a1);
}

uint64_t sub_100D5DCA0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169A0C0, &unk_10139DBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D5DD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D5DD7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D5DE2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100D5DDA8(uint64_t a1)
{
  *(a1 + 8) = sub_100D5DDD8();
  result = sub_10059BEF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D5DDD8()
{
  result = qword_1016BAF80;
  if (!qword_1016BAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BAF80);
  }

  return result;
}

uint64_t sub_100D5DE2C(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v15, v15[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    sub_100017D5C(v7, v8);
    static Endianness.current.getter();
    sub_1000198E8();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v14 != 1)
    {
      v6 = v13;
      sub_100016590(v9, v10);
      sub_100007BAC(v15);
      sub_100007BAC(a1);
      return v6;
    }

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v11, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
  }

  sub_100007BAC(v15);
  sub_100007BAC(a1);
  return v6;
}

void sub_100D5E024()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StableIdentifier();
    if (v1 <= 0x3F)
    {
      sub_100395648();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BAFF8);
          if (v4 <= 0x3F)
          {
            sub_1002359B8(319, &qword_1016BB000);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100D5E184(void *a1@<X0>, void *a2@<X8>)
{
  v132 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v115 - v5;
  v7 = type metadata accessor for Date();
  v134 = *(v7 - 8);
  v135 = v7;
  v8 = *(v134 + 64);
  __chkstk_darwin(v7);
  v133 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v115 - v12);
  v14 = type metadata accessor for StableIdentifier();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v136 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v115 - v20;
  v139 = type metadata accessor for UUID();
  v22 = *(v139 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v139);
  v138 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = CKRecord.recordType.getter();
  v27 = v26;
  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (v25 == qword_10177C060 && v27 == *algn_10177C068)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_100D64CF8();
      swift_allocError();
      *v41 = 0;
      goto LABEL_16;
    }
  }

  v29 = [a1 recordID];
  v30 = [v29 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v22;

  UUID.init(uuidString:)();
  v31 = v140;

  v32 = v139;
  if ((*(v31 + 48))(v21, 1, v139) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    sub_100D64CF8();
    swift_allocError();
    *v33 = 2;
LABEL_16:
    swift_willThrow();

    return;
  }

  (*(v31 + 32))(v138, v21, v32);
  v34 = [a1 encryptedValues];
  v35 = String._bridgeToObjectiveC()();
  v36 = [v34 objectForKeyedSubscript:v35];

  if (!v36)
  {
    goto LABEL_28;
  }

  v142 = v36;
  v37 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v130 = v37;
  v131 = v34;
  v38 = v141;
  v39 = objc_autoreleasePoolPush();
  v40 = v137;
  sub_1010DB40C(v38, *(&v38 + 1), v13);
  if (v40)
  {
    objc_autoreleasePoolPop(v39);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v39);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016BB090, &unk_1013D6A90);
LABEL_14:
    v32 = v139;
LABEL_28:
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_101385D80;
    *(v52 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v52 + 64) = sub_10013A2D8();
    *(v52 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v53 = a1;
    v54 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_100D64CF8();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v140 + 8))(v138, v32);
    return;
  }

  v42 = v136;
  sub_100D658B4(v13, v136, type metadata accessor for StableIdentifier);
  v43 = String._bridgeToObjectiveC()();
  v44 = [v131 objectForKeyedSubscript:v43];

  if (!v44)
  {
    sub_100032704(v42, type metadata accessor for StableIdentifier);
    (*(v134 + 56))(v6, 1, 1, v135);
    goto LABEL_21;
  }

  *&v141 = v44;
  v45 = v135;
  v46 = swift_dynamicCast();
  v47 = v134;
  (*(v134 + 56))(v6, v46 ^ 1u, 1, v45);
  if ((*(v47 + 48))(v6, 1, v45) == 1)
  {
    sub_100032704(v42, type metadata accessor for StableIdentifier);
LABEL_21:
    v32 = v139;
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    goto LABEL_28;
  }

  v48 = v133;
  (*(v47 + 32))(v133, v6, v45);
  v49 = String._bridgeToObjectiveC()();
  v50 = [v131 objectForKeyedSubscript:v49];

  v32 = v139;
  if (!v50)
  {
    (*(v47 + 8))(v48, v45);
LABEL_27:
    sub_100032704(v136, type metadata accessor for StableIdentifier);
    goto LABEL_28;
  }

  v142 = v50;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v47 + 8))(v133, v45);
    goto LABEL_27;
  }

  v51 = v141;
  sub_100017D5C(v141, *(&v141 + 1));
  sub_1004A4714(v51, *(&v51 + 1), &v141);
  v137 = v51;
  v129 = 0;
  v56 = v141;
  v57 = String._bridgeToObjectiveC()();
  v58 = v131;
  v59 = [v131 objectForKeyedSubscript:v57];

  if (!v59)
  {
    v67 = *(&v56 + 1);
    v66 = v56;
LABEL_39:
    sub_100016590(v66, v67);
    v65 = v137;
    goto LABEL_40;
  }

  *v128 = v56;
  v142 = v59;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = *v128;
    v67 = *&v128[8];
    goto LABEL_39;
  }

  v60 = v141;
  sub_100017D5C(v141, *(&v141 + 1));
  v61 = v129;
  v62 = sub_10049BD68(v60, *(&v60 + 1));
  v64 = v137;
  if (v61)
  {

    sub_100016590(*v128, *&v128[8]);
    sub_100016590(v60, *(&v60 + 1));
    v65 = v64;
LABEL_40:
    sub_100016590(v65, *(&v51 + 1));
    (*(v47 + 8))(v133, v135);
    sub_100032704(v136, type metadata accessor for StableIdentifier);
    goto LABEL_28;
  }

  v125 = v62;
  v126 = v63;
  v129 = *(&v60 + 1);
  v127 = v60;
  v68 = String._bridgeToObjectiveC()();
  v69 = [v58 objectForKeyedSubscript:v68];

  if (!v69 || (v142 = v69, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v128, *&v128[8]);
    sub_100016590(v125, v126);
    v66 = v127;
    v67 = v129;
    goto LABEL_39;
  }

  v70 = v141;
  sub_100017D5C(v141, *(&v141 + 1));
  v124 = v70;
  v122 = sub_10049C0AC(v70, *(&v70 + 1));
  v123 = v71;
  v72 = String._bridgeToObjectiveC()();
  v73 = [v58 objectForKeyedSubscript:v72];

  if (!v73 || (v142 = v73, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v128, *&v128[8]);
    sub_100016590(v125, v126);
    sub_100016590(v122, v123);
LABEL_56:
    sub_100016590(v124, *(&v124 + 1));
    sub_100016590(v127, v129);
    sub_100016590(v137, *(&v51 + 1));
    (*(v134 + 8))(v133, v135);
    sub_100032704(v136, type metadata accessor for StableIdentifier);
    goto LABEL_14;
  }

  v121 = *(&v141 + 1);
  v74 = v141;
  v75 = String._bridgeToObjectiveC()();
  v76 = [v131 objectForKeyedSubscript:v75];

  if (!v76 || (v142 = v76, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v128, *&v128[8]);
    sub_100016590(v125, v126);
    sub_100016590(v122, v123);
LABEL_55:

    goto LABEL_56;
  }

  v120 = v141;
  v77 = String._bridgeToObjectiveC()();
  v78 = [v131 objectForKeyedSubscript:v77];

  if (!v78 || (*&v141 = v78, (swift_dynamicCast() & 1) == 0) || (v118 = v142, v79 = String._bridgeToObjectiveC()(), v80 = [v131 objectForKeyedSubscript:v79], v79, !v80) || (*&v141 = v80, (swift_dynamicCast() & 1) == 0))
  {
    sub_100016590(*v128, *&v128[8]);
    sub_100016590(v125, v126);
    sub_100016590(v122, v123);

    goto LABEL_55;
  }

  v117 = v142;
  v81 = String._bridgeToObjectiveC()();
  v82 = [v131 objectForKeyedSubscript:v81];

  if (v82 && (*&v141 = v82, swift_dynamicCast()))
  {
    v83 = v142;
  }

  else
  {
    v83 = 0;
  }

  v84 = sub_1012C7DEC(v83);
  v119 = type metadata accessor for OwnedBeaconRecord();
  *(v132 + v119[19]) = v84;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v131 objectForKeyedSubscript:v85];

  if (v86 && (*&v141 = v86, swift_dynamicCast()))
  {
    v87 = v142;
  }

  else
  {
    v87 = 0;
  }

  v88 = v132;
  *(v132 + v119[20]) = v87;
  v116 = objc_autoreleasePoolPush();
  v89 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v89];
  [v89 finishEncoding];
  v90 = [v89 encodedData];
  v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  objc_autoreleasePoolPop(v116);
  *v88 = v91;
  v88[1] = v93;
  v94 = v119;
  (*(v140 + 16))(v88 + v119[5], v138, v139);
  sub_10003263C(v136, v88 + v94[6], type metadata accessor for StableIdentifier);
  (*(v134 + 16))(v88 + v94[8], v133, v135);
  v95 = (v88 + v94[9]);
  v96 = *&v128[8];
  *v95 = *v128;
  v95[1] = v96;
  v97 = String._bridgeToObjectiveC()();
  v98 = [v131 objectForKeyedSubscript:v97];

  *&v128[8] = xmmword_10138BBF0;
  if (v98 && (v142 = v98, (swift_dynamicCast() & 1) != 0))
  {
    sub_1004A4714(v141, *(&v141 + 1), &v141);
    v101 = v141;
  }

  else
  {
    v101 = *&v128[8];
  }

  *(v132 + v119[10]) = v101;
  v99 = String._bridgeToObjectiveC()();
  v100 = [v131 objectForKeyedSubscript:v99];

  if (v100)
  {
    v142 = v100;
    if (swift_dynamicCast())
    {
      sub_1004A4714(v141, *(&v141 + 1), &v141);
      *&v128[8] = v141;
    }
  }

  v102 = v119;
  v103 = v132;
  *(v132 + v119[11]) = *&v128[8];
  v104 = v102[18];
  v105 = (v103 + v102[12]);
  *v105 = v125;
  v105[1] = v126;
  v106 = (v103 + v102[13]);
  *v106 = v122;
  v106[1] = v123;
  v107 = (v103 + v102[14]);
  v108 = v121;
  *v107 = v74;
  v107[1] = v108;
  *(v103 + v102[15]) = v120;
  *(v103 + v102[16]) = v118;
  *(v103 + v102[17]) = v117;
  v109 = String._bridgeToObjectiveC()();
  v110 = [v131 objectForKeyedSubscript:v109];

  if (v110 && (*&v141 = v110, (swift_dynamicCast() & 1) != 0))
  {
    v111 = v142;
    if (v142 >= 3)
    {
      v111 = 3;
    }
  }

  else
  {
    v111 = 3;
  }

  *(v132 + v104) = v111;
  v112 = String._bridgeToObjectiveC()();
  v113 = [v131 objectForKeyedSubscript:v112];

  if (v113 && (v142 = v113, (swift_dynamicCast() & 1) != 0))
  {
    v114 = v132 + v119[7];
    UUID.init(uuidString:)();
    swift_unknownObjectRelease();

    sub_100016590(v124, *(&v124 + 1));
    sub_100016590(v127, v129);
    sub_100016590(v137, *(&v51 + 1));

    (*(v134 + 8))(v133, v135);
    sub_100032704(v136, type metadata accessor for StableIdentifier);
    (*(v140 + 8))(v138, v139);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100016590(v124, *(&v124 + 1));
    sub_100016590(v127, v129);
    sub_100016590(v137, *(&v51 + 1));

    (*(v134 + 8))(v133, v135);
    sub_100032704(v136, type metadata accessor for StableIdentifier);
    (*(v140 + 8))(v138, v139);
    (*(v140 + 56))(v132 + v119[7], 1, 1, v139);
  }
}

uint64_t sub_100D5F668()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = type metadata accessor for OwnedBeaconRecord();
  v9 = v8[6];
  sub_10003263C(v0 + v9, v7, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_100032704(v7, type metadata accessor for StableIdentifier);
  if (EnumCaseMultiPayload != 1)
  {
    sub_10003263C(v0 + v9, v5, type metadata accessor for StableIdentifier);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 3)
    {
      v17 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v18 = *&v5[v17[12] + 8];

      v19 = *&v5[v17[16] + 8];

      v16 = v17[20];
    }

    else
    {
      if (v11 != 2)
      {
        sub_100032704(v5, type metadata accessor for StableIdentifier);
        return 0;
      }

      v12 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v13 = *&v5[v12[12] + 8];

      v14 = *&v5[v12[16] + 8];

      v15 = *&v5[v12[20] + 8];

      v16 = v12[28];
    }

    v20 = *&v5[v16 + 8];

    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 8))(v5, v21);
  }

  return sub_100314604(*(v0 + v8[16]), *(v0 + v8[17]));
}

uint64_t sub_100D5F8B4()
{
  v1[14] = v0;
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v1[15] = v2;
  v1[16] = *(v2 + 64);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100D5F978, 0, 0);
}

uint64_t sub_100D5F978()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = 0x7365547265646E75;
  *(v0 + 104) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 232))
  {
    v1 = 1;
LABEL_16:
    v18 = *(v0 + 136);

    v19 = *(v0 + 8);

    return v19(v1 & 1);
  }

  My = type metadata accessor for Feature.FindMy();
  *(v0 + 40) = My;
  v3 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  *(v0 + 48) = v3;
  v4 = sub_1000280DC((v0 + 16));
  v5 = *(*(My - 8) + 104);
  v5(v4, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  v6 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 16));
  if ((v6 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C218;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 isInternalBuild];

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v7 BOOLForKey:v10];

    if (v11)
    {
      v12 = *(v0 + 112);
      v13 = sub_1000322C8();
LABEL_13:
      v1 = v13;
      goto LABEL_16;
    }
  }

  *(v0 + 80) = My;
  *(v0 + 88) = v3;
  v14 = sub_1000280DC((v0 + 56));
  v5(v14, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  v15 = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 56));
  v16 = *(v0 + 112);
  if (v15)
  {
    v13 = sub_100D60B1C();
    goto LABEL_13;
  }

  *(v0 + 144) = sub_100D5F668();
  *(v0 + 152) = v17;
  if (v17 >> 60 == 15)
  {
LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  *(v0 + 160) = v22;
  *v22 = v0;
  v22[1] = sub_100D5FCC4;

  return daemon.getter();
}

uint64_t sub_100D5FCC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v12 = *v1;
  v3[21] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[22] = v6;
  v7 = type metadata accessor for Daemon();
  v3[23] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100D64C00(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100D64C00(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100D5FEA4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100D5FEA4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v10 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[21];

    v7 = sub_100D60538;
    v8 = 0;
  }

  else
  {
    v7 = sub_100D5FFE0;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100D5FFE0()
{
  v1 = v0[24];
  v2 = v0[25];
  v0[26] = sub_100045EDC();
  v3 = v0[23];
  v4 = v0[21];
  if (v2)
  {

    sub_100D64C00(&qword_1016969E0, &type metadata accessor for Daemon);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100D604C4;
  }

  else
  {
    sub_100D64C00(&qword_1016969E0, &type metadata accessor for Daemon);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100D60108;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100D60108()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_100D6017C, 0, 0);
}

uint64_t sub_100D6017C()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[15];
  sub_10003263C(v0[14], v2, type metadata accessor for OwnedBeaconRecord);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[27] = v5;
  *(v5 + 16) = v1;
  sub_100D658B4(v2, v5 + v4, type metadata accessor for OwnedBeaconRecord);
  v6 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v7 = swift_task_alloc();
  v0[28] = v7;
  v8 = sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  *v7 = v0;
  v7[1] = sub_100D602E0;

  return unsafeBlocking<A>(context:_:)(v0 + 233, 0xD00000000000001BLL, 0x8000000101370840, sub_100D6591C, v5, v8);
}

uint64_t sub_100D602E0()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return _swift_task_switch(sub_100D603F8, 0, 0);
}

uint64_t sub_100D603F8()
{
  v1 = *(v0 + 233);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v6 = *(v0 + 208);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v5 = sub_100DE6748(v8, v7);

    sub_100006654(v8, v7);
  }

  else
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);

    sub_100006654(v3, v4);
    v5 = 1;
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 8);

  return v10(v5);
}

uint64_t sub_100D604C4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_100D60538, 0, 0);
}

uint64_t sub_100D60538()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_100DE6748(v1, v2);
  sub_100006654(v1, v2);
  v4 = v0[17];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_100D605C4()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OwnedBeaconRecord();
  sub_10003263C(v0 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = v4[1];
      v27 = v4[3];
      v28 = v4[4];
      v29 = v4[5];

      v37 = v28;
      v38 = v29;
      sub_1000DF96C();
      v30 = Data.init<A>(hexString:)();
      if (v31 >> 60 == 15)
      {
        return 0;
      }

      v32 = v30;
      v33 = v31;
      v37 = v30;
      v38 = v31;
      sub_1000E0A3C();
      if (DataProtocol.isNull.getter())
      {
        sub_100006654(v32, v33);
        return 0;
      }

      v36 = Data.trimmed.getter();
      sub_100006654(v32, v33);
      return v36;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v14 = *(v4 + v13[12] + 8);

    v15 = *(v4 + v13[16] + 8);

    v16 = (v4 + v13[20]);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v4 + v13[28] + 8);

    v37 = v17;
    v38 = v18;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_6:
    sub_100032704(v4, type metadata accessor for StableIdentifier);
    return 0;
  }

  v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v8 = *(v4 + v7[12] + 8);

  v9 = *(v4 + v7[16] + 8);

  v10 = (v4 + v7[20]);
  v12 = *v10;
  v11 = v10[1];
  v37 = v12;
  v38 = v11;
LABEL_8:
  sub_1000DF96C();
  v20 = Data.init<A>(hexString:)();
  if (v21 >> 60 == 15)
  {
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 8))(v4, v22);
    return 0;
  }

  v23 = v20;
  v24 = v21;
  v37 = v20;
  v38 = v21;
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v25 = 0;
  }

  else
  {
    v25 = Data.trimmed.getter();
  }

  sub_100006654(v23, v24);
  v35 = type metadata accessor for UUID();
  (*(*(v35 - 8) + 8))(v4, v35);
  return v25;
}

uint64_t sub_100D608FC()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  sub_10003263C(v0 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v16 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v17 = *&v4[v16[12] + 8];

      v18 = *&v4[v16[16] + 8];

      v19 = *&v4[v16[20] + 8];

      v12 = v4[v16[24]];
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 8))(v4, v20);
      v13 = 0;
      return v12 | (v13 << 8);
    }

LABEL_6:
    sub_100032704(v4, type metadata accessor for StableIdentifier);
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 8);
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

  v7 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
  v8 = *&v4[v7[12] + 8];

  v9 = *&v4[v7[16] + 8];

  v10 = *&v4[v7[20] + 8];

  v11 = &v4[v7[24]];
  v12 = *v11;
  v13 = v11[1];
  v14 = *&v4[v7[28] + 8];

  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v4, v15);
  return v12 | (v13 << 8);
}

uint64_t sub_100D60B1C()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  sub_10003263C(v0 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v12 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v13 = *&v4[v12[12] + 8];

    v14 = *&v4[v12[16] + 8];

    v11 = v12[20];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v8 = *&v4[v7[12] + 8];

    v9 = *&v4[v7[16] + 8];

    v10 = *&v4[v7[20] + 8];

    v11 = v7[28];
LABEL_5:
    v15 = *&v4[v11 + 8];

    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v4, v16);
    return 1;
  }

  sub_100032704(v4, type metadata accessor for StableIdentifier);
  return 0;
}

id sub_100D60CD0()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  sub_10003263C(v0 + *(v5 + 24), v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032704(v4, type metadata accessor for StableIdentifier);
      v12 = &SPBeaconTypeDurian;
    }

    else
    {
      sub_100032704(v4, type metadata accessor for StableIdentifier);
      v12 = &SPBeaconTypeSelfBeaconing;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *&v4[v13[12] + 8];

      v15 = *&v4[v13[16] + 8];

      v16 = *&v4[v13[20] + 8];

      v17 = *&v4[v13[28] + 8];

      v11 = &SPBeaconTypeAccessory;
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v8 = *&v4[v7[12] + 8];

      v9 = *&v4[v7[16] + 8];

      v10 = *&v4[v7[20] + 8];

      v11 = &SPBeaconTypeHele;
LABEL_8:
      v18 = *v11;
      v19 = type metadata accessor for UUID();
      v20 = *(*(v19 - 8) + 8);
      v21 = v18;
      v20(v4, v19);
      return v21;
    }

    sub_100032704(v4, type metadata accessor for StableIdentifier);
    v12 = &SPBeaconTypeVirtualMeDevice;
  }

  v23 = *v12;

  return v23;
}

uint64_t sub_100D60F40()
{
  result = String.init<A>(_:)();
  qword_10177C060 = result;
  *algn_10177C068 = v1;
  return result;
}

uint64_t sub_100D60FA4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177C070);
  sub_1000076D4(v0, qword_10177C070);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

void sub_100D61104()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() handleWithEmailAddress:v0];

  qword_10177C088 = v1;
}

uint64_t sub_100D61180(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016BB0F0, &qword_1013E7DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D65990();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v41 = *v3;
  v42 = v11;
  v43 = 0;
  sub_100017D5C(v41, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v41, v42);
  if (!v2)
  {
    v12 = type metadata accessor for OwnedBeaconRecord();
    v13 = *(v12 + 20);
    LOBYTE(v41) = 1;
    type metadata accessor for UUID();
    sub_100D64C00(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v40 = v12;
    v14 = *(v12 + 24);
    LOBYTE(v41) = 2;
    type metadata accessor for StableIdentifier();
    sub_100D64C00(&qword_1016AE778, type metadata accessor for StableIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v40;
    v16 = v40[7];
    LOBYTE(v41) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v15[8];
    LOBYTE(v41) = 4;
    type metadata accessor for Date();
    sub_100D64C00(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v40;
    v20 = (v3 + v40[9]);
    v21 = v20[1];
    v41 = *v20;
    v42 = v21;
    v43 = 5;
    sub_100017D5C(v41, v21);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v41, v42);
    v22 = (v3 + v19[10]);
    v23 = v22[1];
    v41 = *v22;
    v42 = v23;
    v43 = 6;
    sub_10002E98C(v41, v23);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v41, v42);
    v24 = (v3 + v19[11]);
    v25 = v24[1];
    v41 = *v24;
    v42 = v25;
    v43 = 7;
    sub_10002E98C(v41, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v41, v42);
    v26 = (v3 + v19[12]);
    v27 = v26[1];
    v41 = *v26;
    v42 = v27;
    v43 = 8;
    sub_100017D5C(v41, v27);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v41, v42);
    v28 = (v3 + v19[13]);
    v29 = v28[1];
    v41 = *v28;
    v42 = v29;
    v43 = 9;
    sub_100017D5C(v41, v29);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v41, v42);
    v30 = (v3 + v19[14]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v41) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = (v3 + v40[15]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v41) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v3 + v40[16]);
    LOBYTE(v41) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + v40[17]);
    LOBYTE(v41) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v41) = *(v3 + v40[19]);
    v43 = 14;
    sub_100D65A38();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = *(v3 + v40[20]);
    LOBYTE(v41) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100D6178C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  v11 = *v0;
  v12 = v0[1];
  Data.hash(into:)();
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = v13[5];
  sub_100D64C00(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = v1 + v13[6];
  sub_1010DC2EC();
  sub_1000D2A70(v1 + v13[7], v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v16 = v13[8];
  type metadata accessor for Date();
  sub_100D64C00(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v17 = (v1 + v13[9]);
  v18 = *v17;
  v19 = v17[1];
  sub_100017D5C(*v17, v19);
  Data.hash(into:)();
  sub_100016590(v18, v19);
  v20 = (v1 + v13[10]);
  v21 = v20[1];
  if (v21 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *v20;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v22, v21);
    Data.hash(into:)();
    sub_100006654(v22, v21);
  }

  v23 = (v1 + v13[11]);
  v24 = v23[1];
  if (v24 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = *v23;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v25, v24);
    Data.hash(into:)();
    sub_100006654(v25, v24);
  }

  v26 = (v1 + v13[12]);
  v27 = *v26;
  v28 = v26[1];
  sub_100017D5C(*v26, v28);
  Data.hash(into:)();
  sub_100016590(v27, v28);
  v29 = (v1 + v13[13]);
  v30 = *v29;
  v31 = v29[1];
  sub_100017D5C(*v29, v31);
  Data.hash(into:)();
  sub_100016590(v30, v31);
  v32 = (v1 + v13[14]);
  v33 = *v32;
  v34 = v32[1];
  String.hash(into:)();
  v35 = (v1 + v13[15]);
  v36 = *v35;
  v37 = v35[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v13[16]));
  Hasher._combine(_:)(*(v1 + v13[17]));
  v38 = *(v1 + v13[18]);
  if (v38 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v38);
  }

  Hasher._combine(_:)(*(v1 + v13[19]));
  Hasher._combine(_:)(*(v1 + v13[20]));
}

uint64_t sub_100D61C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for Date();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  __chkstk_darwin(v3);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - v8;
  v66 = type metadata accessor for StableIdentifier();
  v9 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016BB0B0, &qword_1013E7DE8);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  __chkstk_darwin(v15);
  v18 = &v59 - v17;
  v19 = type metadata accessor for OwnedBeaconRecord();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[*(v21 + 72)] = 3;
  v24 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100D65990();
  v73 = v18;
  v25 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100007BAC(a1);
  }

  v26 = v70;
  v60 = v11;
  v61 = v19;
  v62 = a1;
  v74 = v23;
  v76 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v74;
  *v74 = v75;
  LOBYTE(v75) = 1;
  sub_100D64C00(&qword_101698300, &type metadata accessor for UUID);
  v29 = v60;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v61;
  (*(v69 + 32))(&v28[v61[5]], v14, v29);
  LOBYTE(v75) = 2;
  sub_100D64C00(&unk_1016BB0C0, type metadata accessor for StableIdentifier);
  v66 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100D658B4(v26, &v28[v30[6]], type metadata accessor for StableIdentifier);
  LOBYTE(v75) = 3;
  v31 = v65;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v31, &v28[v30[7]]);
  LOBYTE(v75) = 4;
  sub_100D64C00(&qword_101697F40, &type metadata accessor for Date);
  v32 = v64;
  v33 = v68;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v67 + 32))(&v28[v30[8]], v32, v33);
  v76 = 5;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v28[v30[9]] = v75;
  v76 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v28[v30[10]] = v75;
  v76 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v74[v61[11]] = v75;
  v76 = 8;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v70 = 0;
  *&v74[v61[12]] = v75;
  v76 = 9;
  sub_10049E3BC();
  v34 = v70;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v70 = v34;
  if (v34)
  {
    (*(v71 + 8))(v73, v72);
    LODWORD(v72) = 0;
    LODWORD(v73) = 0;
    LODWORD(v71) = 1;
  }

  else
  {
    *&v74[v61[13]] = v75;
    LOBYTE(v75) = 10;
    v35 = v70;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v70 = v35;
    if (v35)
    {
      (*(v71 + 8))(v73, v72);
      LODWORD(v73) = 0;
      LODWORD(v71) = 1;
      LODWORD(v72) = 1;
    }

    else
    {
      v38 = &v74[v61[14]];
      *v38 = v36;
      v38[1] = v37;
      LOBYTE(v75) = 11;
      v39 = v70;
      v40 = KeyedDecodingContainer.decode(_:forKey:)();
      v70 = v39;
      if (!v39)
      {
        v47 = &v74[v61[15]];
        *v47 = v40;
        v47[1] = v41;
        LOBYTE(v75) = 12;
        v48 = v70;
        v49 = KeyedDecodingContainer.decode(_:forKey:)();
        v70 = v48;
        if (!v48)
        {
          *&v74[v61[16]] = v49;
          LOBYTE(v75) = 13;
          v50 = v70;
          v51 = KeyedDecodingContainer.decode(_:forKey:)();
          v70 = v50;
          if (!v50)
          {
            *&v74[v61[17]] = v51;
            v76 = 14;
            sub_100D659E4();
            v52 = v70;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v70 = v52;
            if (!v52)
            {
              v74[v61[19]] = v75;
              LOBYTE(v75) = 15;
              v53 = v70;
              v54 = KeyedDecodingContainer.decode(_:forKey:)();
              v70 = v53;
              if (!v53)
              {
                v56 = v54;
                (*(v71 + 8))(v73, v72);
                v57 = v56 & 1;
                v58 = v74;
                v74[v61[20]] = v57;
                sub_10003263C(v58, v63, type metadata accessor for OwnedBeaconRecord);
                sub_100007BAC(v62);
                return sub_100032704(v58, type metadata accessor for OwnedBeaconRecord);
              }
            }
          }
        }

        (*(v71 + 8))(v73, v72);
        sub_100007BAC(v62);
        sub_100016590(*v74, *(v74 + 1));
        v43 = 1;
        LODWORD(v73) = 1;
        LODWORD(v72) = 1;
        LODWORD(v71) = 1;
        goto LABEL_22;
      }

      (*(v71 + 8))(v73, v72);
      LODWORD(v71) = 1;
      LODWORD(v72) = 1;
      LODWORD(v73) = 1;
    }
  }

  v42 = v66;
  sub_100007BAC(v62);
  sub_100016590(*v74, *(v74 + 1));
  v43 = 0;
  if (!v42)
  {
LABEL_22:
    (*(v69 + 8))(&v74[v61[5]], v60);
  }

  v44 = v61;
  v45 = v74;
  sub_100032704(&v74[v61[6]], type metadata accessor for StableIdentifier);
  sub_10000B3A8(&v45[v44[7]], &qword_1016980D0, &unk_10138F3B0);
  (*(v67 + 8))(&v45[v44[8]], v68);
  sub_100016590(*&v45[v44[9]], *&v45[v44[9] + 8]);
  sub_100006654(*&v45[v44[10]], *&v45[v44[10] + 8]);
  result = sub_100006654(*&v45[v44[11]], *&v45[v44[11] + 8]);
  if (v71)
  {
    result = sub_100016590(*&v45[v44[12]], *&v45[v44[12] + 8]);
    if (v72)
    {
      goto LABEL_25;
    }

LABEL_14:
    if (!v73)
    {
      goto LABEL_26;
    }

LABEL_15:
    v46 = *&v45[v44[14] + 8];

    if (v43)
    {
      goto LABEL_27;
    }

    return result;
  }

  if (!v72)
  {
    goto LABEL_14;
  }

LABEL_25:
  result = sub_100016590(*&v45[v44[13]], *&v45[v44[13] + 8]);
  if (v73)
  {
    goto LABEL_15;
  }

LABEL_26:
  if (v43)
  {
LABEL_27:
    v55 = *&v45[v44[15] + 8];
  }

  return result;
}

uint64_t sub_100D62988(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_100D629C0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

BOOL sub_100D62A10(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v6, type metadata accessor for StableIdentifier);
  v7 = swift_getEnumCaseMultiPayload() == 0;
  sub_100032704(v6, type metadata accessor for StableIdentifier);
  return v7;
}

BOOL sub_100D62AE0(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v6, type metadata accessor for StableIdentifier);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  sub_100032704(v6, type metadata accessor for StableIdentifier);
  return v7;
}

uint64_t sub_100D62BB8()
{
  v1 = type metadata accessor for StableIdentifier();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v25[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  sub_10003263C(v0 + v5[6], v4, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032704(v4, type metadata accessor for StableIdentifier);
      My = type metadata accessor for Feature.FindMy();
      v26 = My;
      v27 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v21 = sub_1000280DC(v25);
      (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
      v12 = isFeatureEnabled(_:)();
      sub_100007BAC(v25);
      return v12 & 1;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v7 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v8 = *&v4[v7[12] + 8];

      v9 = *&v4[v7[16] + 8];

      v10 = *&v4[v7[20] + 8];

      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 8))(v4, v11);
      v12 = 1;
      return v12 & 1;
    }

LABEL_6:
    sub_100032704(v4, type metadata accessor for StableIdentifier);
    v12 = 0;
    return v12 & 1;
  }

  v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
  v14 = *&v4[v13[12] + 8];

  v15 = *&v4[v13[16] + 8];

  v16 = *&v4[v13[20] + 8];

  v17 = *&v4[v13[28] + 8];

  v18 = type metadata accessor for Feature.FindMy();
  v26 = v18;
  v27 = sub_100D64C00(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v19 = sub_1000280DC(v25);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.FindMy.spPlaySoundAll(_:), v18);
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100007BAC(v25);
  v12 = (v18 & 1) != 0 || sub_100E0EA64(*(v0 + v5[16]), *(v0 + v5[17]));
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 8))(v4, v22);
  return v12 & 1;
}

BOOL sub_100D62F40(uint64_t a1)
{
  v3 = type metadata accessor for StableIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003263C(v1 + *(a1 + 24), v6, type metadata accessor for StableIdentifier);
  v7 = swift_getEnumCaseMultiPayload() == 4;
  sub_100032704(v6, type metadata accessor for StableIdentifier);
  return v7;
}

Swift::Int sub_100D6304C()
{
  Hasher.init(_seed:)();
  sub_100D6178C();
  return Hasher._finalize()();
}

Swift::Int sub_100D63090()
{
  Hasher.init(_seed:)();
  sub_100D6178C();
  return Hasher._finalize()();
}

uint64_t sub_100D6314C(id *a1)
{
  v2 = type metadata accessor for Date();
  v138 = *(v2 - 8);
  v139 = v2;
  v3 = *(v138 + 64);
  __chkstk_darwin(v2);
  v130 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v5 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134);
  v135 = &v129 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v131 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v136 = &v129 - v12;
  __chkstk_darwin(v11);
  v137 = &v129 - v13;
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v132 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v129 - v18;
  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  v21 = *a1;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_100008C00();
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v27 = [v21 encryptedValues];
  ObjectType = swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v28 = v143;
  v142 = type metadata accessor for OwnedBeaconRecord();
  v29 = v142[6];
  v30 = sub_1010DA578();
  v133 = v19;
  if (!*(&v28 + 1))
  {

    v32 = v140;
LABEL_6:
    v34 = sub_1010DA578();
    *(&v144 + 1) = &type metadata for String;
    v145 = &protocol witness table for String;
    *&v143 = v34;
    *(&v143 + 1) = v35;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_7;
  }

  if (v28 == __PAIR128__(v31, v30))
  {

    v32 = v140;
    goto LABEL_7;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v32 = v140;
  if ((v33 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  CKRecordKeyValueSetting.subscript.getter();
  v36 = v143;
  v37 = v142[7];
  v38 = v133;
  sub_1000D2A70(v32 + v37, v133, &qword_1016980D0, &unk_10138F3B0);
  v39 = type metadata accessor for UUID();
  v40 = *(v39 - 8);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    sub_10000B3A8(v38, &qword_1016980D0, &unk_10138F3B0);
    if (!*(&v36 + 1))
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v129 = v36;
  v42 = UUID.uuidString.getter();
  v44 = v43;
  (*(v40 + 8))(v38, v39);
  if (*(&v36 + 1))
  {
    if (v44)
    {
      if (v129 != v42 || *(&v36 + 1) != v36)
      {
        v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v45 = v137;
        if (v128)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

LABEL_20:
      v45 = v137;
      goto LABEL_23;
    }
  }

  else if (!v44)
  {
    goto LABEL_20;
  }

LABEL_17:

  v45 = v137;
LABEL_18:
  v46 = v132;
  sub_1000D2A70(v140 + v37, v132, &qword_1016980D0, &unk_10138F3B0);
  if (v41(v46, 1, v39) == 1)
  {
    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
    v143 = 0u;
    v144 = 0u;
    v145 = 0;
  }

  else
  {
    v47 = UUID.uuidString.getter();
    *(&v144 + 1) = &type metadata for String;
    v145 = &protocol witness table for String;
    *&v143 = v47;
    *(&v143 + 1) = v48;
    (*(v40 + 8))(v46, v39);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_23:
  v49 = v45;
  v50 = v139;
  CKRecordKeyValueSetting.subscript.getter();
  v51 = v138;
  v52 = *(v138 + 16);
  v132 = v142[8];
  v133 = v52;
  v53 = v136;
  v52(v136, v140 + v132, v50);
  (*(v51 + 56))(v53, 0, 1, v50);
  v54 = v135;
  v55 = *(v134 + 48);
  sub_1000D2A70(v49, v135, &unk_101696900, &unk_10138B1E0);
  v56 = v50;
  sub_1000D2A70(v53, v54 + v55, &unk_101696900, &unk_10138B1E0);
  v57 = *(v51 + 48);
  if (v57(v54, 1, v50) == 1)
  {
    sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
    v58 = v139;
    sub_10000B3A8(v49, &unk_101696900, &unk_10138B1E0);
    if (v57(v54 + v55, 1, v58) == 1)
    {
      sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
      v59 = v140;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v60 = v131;
  sub_1000D2A70(v54, v131, &unk_101696900, &unk_10138B1E0);
  if (v57(v54 + v55, 1, v50) == 1)
  {
    v61 = v60;
    sub_10000B3A8(v136, &unk_101696900, &unk_10138B1E0);
    v58 = v139;
    sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
    (*(v138 + 8))(v61, v58);
LABEL_28:
    sub_10000B3A8(v54, &unk_1016B1660, &unk_10138CE10);
    v59 = v140;
LABEL_29:
    *(&v144 + 1) = v58;
    v145 = &protocol witness table for Date;
    v62 = sub_1000280DC(&v143);
    v133(v62, v59 + v132, v58);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_30;
  }

  v73 = v138;
  v74 = v130;
  (*(v138 + 32))(v130, v54 + v55, v56);
  sub_100D64C00(&qword_101698290, &type metadata accessor for Date);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v73 + 8);
  v76(v74, v139);
  sub_10000B3A8(v136, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v137, &unk_101696900, &unk_10138B1E0);
  v76(v60, v139);
  v58 = v139;
  sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
  v59 = v140;
  if ((v75 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  CKRecordKeyValueSetting.subscript.getter();
  v63 = v143;
  v64 = v59 + v142[9];
  v66 = *v64;
  v65 = *(v64 + 8);
  if (*(&v143 + 1) >> 60 == 15)
  {
    if (v65 >> 60 == 15)
    {
      sub_100017D5C(*v64, *(v64 + 8));
      sub_100006654(v63, *(&v63 + 1));
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v65 >> 60 == 15)
  {
LABEL_34:
    sub_100017D5C(*v64, *(v64 + 8));
    sub_100006654(v63, *(&v63 + 1));
    sub_100006654(v66, v65);
LABEL_35:
    v67 = *v64;
    v68 = *(v64 + 8);
    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v67;
    *(&v143 + 1) = v68;
    sub_100017D5C(v67, v68);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_36;
  }

  sub_100017D5C(*v64, *(v64 + 8));
  sub_100017D5C(v66, v65);
  sub_10002E98C(v63, *(&v63 + 1));
  v77 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v63, *(&v63 + 1), v66, v65);
  sub_100016590(v66, v65);
  sub_100006654(v63, *(&v63 + 1));
  sub_100006654(v66, v65);
  sub_100006654(v63, *(&v63 + 1));
  if ((v77 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  v69 = v140;
  v139 = v140 + v142[10];
  v70 = *(v139 + 8);
  if (v70 >> 60 == 15)
  {
    goto LABEL_46;
  }

  v71 = *v139;
  sub_100017D5C(*v139, v70);
  CKRecordKeyValueSetting.subscript.getter();
  v72 = v143;
  sub_10002E98C(v71, v70);
  if (*(&v72 + 1) >> 60 == 15)
  {
    sub_100006654(v72, *(&v72 + 1));
    sub_100006654(v71, v70);
LABEL_44:
    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v71;
    *(&v143 + 1) = v70;
    sub_10002E98C(v71, v70);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_45;
  }

  sub_10002E98C(v71, v70);
  sub_10002E98C(v72, *(&v72 + 1));
  v78 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v72, *(&v72 + 1), v71, v70);
  sub_100006654(v71, v70);
  sub_100006654(v72, *(&v72 + 1));
  sub_100006654(v71, v70);
  sub_100006654(v72, *(&v72 + 1));
  if ((v78 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  sub_100006654(v71, v70);
LABEL_46:
  CKRecordKeyValueSetting.subscript.getter();
  v79 = v143;
  v80 = v69 + v142[12];
  v81 = *v80;
  v82 = *(v80 + 8);
  if (*(&v143 + 1) >> 60 == 15)
  {
    if (v82 >> 60 == 15)
    {
      sub_100017D5C(*v80, *(v80 + 8));
      sub_100006654(v79, *(&v79 + 1));
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (v82 >> 60 == 15)
  {
LABEL_50:
    sub_100017D5C(*v80, *(v80 + 8));
    sub_100006654(v79, *(&v79 + 1));
    sub_100006654(v81, v82);
LABEL_51:
    v83 = *v80;
    v84 = *(v80 + 8);
    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v83;
    *(&v143 + 1) = v84;
    sub_100017D5C(v83, v84);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_52;
  }

  sub_100017D5C(*v80, *(v80 + 8));
  sub_100017D5C(v81, v82);
  sub_10002E98C(v79, *(&v79 + 1));
  v109 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v79, *(&v79 + 1), v81, v82);
  sub_100016590(v81, v82);
  sub_100006654(v79, *(&v79 + 1));
  sub_100006654(v81, v82);
  sub_100006654(v79, *(&v79 + 1));
  if ((v109 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_52:
  CKRecordKeyValueSetting.subscript.getter();
  v85 = v143;
  v86 = v140 + v142[13];
  v87 = *v86;
  v88 = *(v86 + 8);
  if (*(&v143 + 1) >> 60 != 15)
  {
    if (v88 >> 60 != 15)
    {
      sub_100017D5C(*v86, *(v86 + 8));
      sub_100017D5C(v87, v88);
      sub_10002E98C(v85, *(&v85 + 1));
      LODWORD(v138) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v85, *(&v85 + 1), v87, v88);
      sub_100016590(v87, v88);
      sub_100006654(v85, *(&v85 + 1));
      sub_100006654(v87, v88);
      sub_100006654(v85, *(&v85 + 1));
      if (v138)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

LABEL_56:
    sub_100017D5C(*v86, *(v86 + 8));
    sub_100006654(v85, *(&v85 + 1));
    sub_100006654(v87, v88);
LABEL_57:
    v89 = *v86;
    v90 = *(v86 + 8);
    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v89;
    *(&v143 + 1) = v90;
    sub_100017D5C(v89, v90);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_58;
  }

  if (v88 >> 60 != 15)
  {
    goto LABEL_56;
  }

  sub_100017D5C(*v86, *(v86 + 8));
  sub_100006654(v85, *(&v85 + 1));
LABEL_58:
  CKRecordKeyValueSetting.subscript.getter();
  v91 = v140;
  v92 = (v140 + v142[14]);
  v94 = *v92;
  v93 = v92[1];
  if (!*(&v143 + 1))
  {
    goto LABEL_62;
  }

  if (v143 == __PAIR128__(v93, v94))
  {

    goto LABEL_63;
  }

  v95 = *v92;
  v96 = v92[1];
  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v97 & 1) == 0)
  {
LABEL_62:
    *(&v144 + 1) = &type metadata for String;
    v145 = &protocol witness table for String;
    *&v143 = v94;
    *(&v143 + 1) = v93;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_63:
  CKRecordKeyValueSetting.subscript.getter();
  v98 = (v91 + v142[15]);
  v100 = *v98;
  v99 = v98[1];
  if (!*(&v143 + 1))
  {
    goto LABEL_68;
  }

  if (v143 != __PAIR128__(v99, v100))
  {
    v101 = *v98;
    v102 = v98[1];
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v103)
    {
      goto LABEL_69;
    }

LABEL_68:
    *(&v144 + 1) = &type metadata for String;
    v145 = &protocol witness table for String;
    *&v143 = v100;
    *(&v143 + 1) = v99;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_69;
  }

LABEL_69:
  CKRecordKeyValueSetting.subscript.getter();
  v104 = *(v91 + v142[16]);
  if ((BYTE8(v143) & 1) != 0 || v143 != v104)
  {
    *(&v144 + 1) = &type metadata for Int;
    v145 = &protocol witness table for Int;
    *&v143 = v104;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v105 = *(v91 + v142[17]);
  if ((BYTE8(v143) & 1) != 0 || v143 != v105)
  {
    *(&v144 + 1) = &type metadata for Int;
    v145 = &protocol witness table for Int;
    *&v143 = v105;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v106 = *(v91 + v142[18]);
  if (BYTE8(v143))
  {
    if (v106 == 3)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

  if (v106 == 3)
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    *(&v143 + 1) = 0;
    *&v144 = 0;
LABEL_86:
    *&v143 = v106;
    *(&v144 + 1) = v107;
    v145 = v108;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_87;
  }

  if (v143 != v106)
  {
LABEL_85:
    v108 = &protocol witness table for Int;
    v107 = &type metadata for Int;
    goto LABEL_86;
  }

LABEL_87:
  CKRecordKeyValueSetting.subscript.getter();
  v110 = *(v91 + v142[19]);
  if ((BYTE8(v143) & 1) != 0 || v143 != v110)
  {
    *(&v144 + 1) = &type metadata for Int;
    v145 = &protocol witness table for Int;
    *&v143 = v110;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v111 = *(v139 + 8);
  if (v111 >> 60 != 15)
  {
    v115 = *v139;
    sub_100017D5C(*v139, *(v139 + 8));
    CKRecordKeyValueSetting.subscript.getter();
    v116 = v143;
    sub_10002E98C(v115, v111);
    if (*(&v116 + 1) >> 60 == 15)
    {
      sub_100006654(v116, *(&v116 + 1));
      sub_100006654(v115, v111);
    }

    else
    {
      sub_10002E98C(v115, v111);
      sub_10002E98C(v116, *(&v116 + 1));
      v117 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v116, *(&v116 + 1), v115, v111);
      sub_100006654(v115, v111);
      sub_100006654(v116, *(&v116 + 1));
      sub_100006654(v115, v111);
      sub_100006654(v116, *(&v116 + 1));
      if (v117)
      {
LABEL_97:
        sub_100006654(v115, v111);
        goto LABEL_98;
      }
    }

    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v115;
    *(&v143 + 1) = v111;
    sub_10002E98C(v115, v111);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_97;
  }

  v112 = String._bridgeToObjectiveC()();
  v113 = [v27 objectForKeyedSubscript:v112];

  if (v113)
  {
    swift_unknownObjectRelease();
    v114 = String._bridgeToObjectiveC()();
    [v27 setObject:0 forKeyedSubscript:v114];
  }

LABEL_98:
  v118 = v91 + v142[11];
  v119 = *(v118 + 8);
  if (v119 >> 60 != 15)
  {
    v123 = *v118;
    sub_100017D5C(*v118, *(v118 + 8));
    CKRecordKeyValueSetting.subscript.getter();
    v124 = v143;
    sub_10002E98C(v123, v119);
    if (*(&v124 + 1) >> 60 == 15)
    {
      sub_100006654(v124, *(&v124 + 1));
      sub_100006654(v123, v119);
    }

    else
    {
      sub_10002E98C(v123, v119);
      sub_10002E98C(v124, *(&v124 + 1));
      v125 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v124, *(&v124 + 1), v123, v119);
      sub_100006654(v123, v119);
      sub_100006654(v124, *(&v124 + 1));
      sub_100006654(v123, v119);
      sub_100006654(v124, *(&v124 + 1));
      if (v125)
      {
LABEL_105:
        sub_100006654(v123, v119);
        goto LABEL_106;
      }
    }

    *(&v144 + 1) = &type metadata for Data;
    v145 = &protocol witness table for Data;
    *&v143 = v123;
    *(&v143 + 1) = v119;
    sub_100017D5C(v123, v119);
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_105;
  }

  v120 = String._bridgeToObjectiveC()();
  v121 = [v27 objectForKeyedSubscript:v120];

  if (v121)
  {
    swift_unknownObjectRelease();
    v122 = String._bridgeToObjectiveC()();
    [v27 setObject:0 forKeyedSubscript:v122];
  }

LABEL_106:
  CKRecordKeyValueSetting.subscript.getter();
  v126 = *(v91 + v142[20]);
  if (v143 == 2 || ((v126 ^ v143) & 1) != 0)
  {
    *(&v144 + 1) = &type metadata for Bool;
    v145 = &protocol witness table for Bool;
    LOBYTE(v143) = v126;
    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_100D64960(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65644970756F7267;
      break;
    case 4:
      result = 0x44676E6972696170;
      break;
    case 5:
      result = 0x6553646572616873;
      break;
    case 6:
      v3 = 5;
      goto LABEL_16;
    case 7:
      v3 = 11;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x4B65746176697270;
      break;
    case 9:
      result = 0x654B63696C627570;
      break;
    case 10:
      result = 0x6C65646F6DLL;
      break;
    case 11:
      result = 0x65566D6574737973;
      break;
    case 12:
      result = 0x6449726F646E6576;
      break;
    case 13:
      result = 0x49746375646F7270;
      break;
    case 14:
      result = 0x4C79726574746162;
      break;
    case 15:
      result = 0x7375655A7369;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_100D64B7C(uint64_t a1)
{
  *(a1 + 8) = sub_100D64C00(&qword_1016BB070, type metadata accessor for OwnedBeaconRecord);
  result = sub_100D64C00(&qword_1016B1538, type metadata accessor for OwnedBeaconRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100D64C00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D64C48(uint64_t a1)
{
  result = sub_100D64C00(&qword_1016B1530, type metadata accessor for OwnedBeaconRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100D64CA0(uint64_t a1)
{
  result = sub_100D64C00(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D64CF8()
{
  result = qword_1016BB098;
  if (!qword_1016BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BB098);
  }

  return result;
}

uint64_t sub_100D64D4C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100D64960(*a1);
  v5 = v4;
  if (v3 == sub_100D64960(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D64DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100D64960(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D64E38()
{
  sub_100D64960(*v0);
  String.hash(into:)();
}

Swift::Int sub_100D64E8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100D64960(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}