uint64_t sub_10047773C()
{
  v1 = v0[41];
  v2 = v0[38];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendWebPresentmentPermissionsTimeoutEvent(timedOut:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004777F4()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[34];
  v4 = v0[32];

  v0[25] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v5 = v0[44];
    v7 = v0[34];
    v6 = v0[35];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];

    (*(v9 + 32))(v6, v7, v8);
    sub_100478740(&qword_1008450E8, &type metadata accessor for TimeoutError);
    swift_allocError();
    (*(v9 + 16))(v13, v6, v8);
    (*(v11 + 104))(v10, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v12);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v9 + 8))(v6, v8);
    v14 = v0[25];
  }

  else
  {
    v15 = v0[25];

    v16 = v0[44];
  }

  v17 = v0[41];
  v18 = v0[38];
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[31];
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendWebPresentmentPermissionsTimeoutEvent(timedOut:)();

  v22 = v0[1];

  return v22();
}

uint64_t sub_100477AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100477B14, 0, 0);
}

uint64_t sub_100477B14()
{
  sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100477BBC;
  v2 = v0[4];

  return sub_10046D634(v2);
}

uint64_t sub_100477BBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100477D08, 0, 0);
  }
}

uint64_t sub_100477D80()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 240) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  v6 = v0[5];

  sub_10000BB78(v0 + 6);
  sub_10000BB78(v0 + 11);
  sub_10000BB78(v0 + 18);
  sub_10000BB78(v0 + 23);
  v7 = v0[28];

  v8 = v0[29];

  v9 = (v0 + v3);
  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 40);
  if (v12 >> 60 != 15)
  {
    sub_10000B90C(v9[4], v12);
  }

  v13 = v9[7];
  if (v13 >> 60 != 15)
  {
    sub_10000B90C(v9[6], v13);
  }

  v14 = v9[9];

  v15 = v9[10];

  v16 = v9[12];

  v17 = v9[14];

  v18 = (v9 + v1[12]);
  v19 = type metadata accessor for CredentialRevocationInfo();
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    sub_10000B90C(*v18, v18[1]);
    v20 = v18[3];
    if (v20 >> 60 != 15)
    {
      sub_10000B90C(v18[2], v20);
    }

    v21 = *(v19 + 24);
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 8))(v18 + v21, v22);
  }

  v23 = (v9 + v1[13]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_10000B90C(*v23, v24);
  }

  v25 = (v9 + v1[14]);
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_10000B90C(*v25, v26);
  }

  v27 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v0 + v27 + 8);

  return _swift_deallocObject(v0, v27 + 16, v2 | 7);
}

uint64_t sub_100477FD0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v5 = (*(v4 + 80) + 240) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[29];
  v11 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100027B9C;

  return sub_100475B34(a1, v6, v7, v8, v9, (v1 + 6), v10, v1 + v5);
}

uint64_t sub_100478124()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 216) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 4);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);
  v6 = v0[26];

  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);
  if (v10 >> 60 != 15)
  {
    sub_10000B90C(v7[4], v10);
  }

  v11 = v7[7];
  if (v11 >> 60 != 15)
  {
    sub_10000B90C(v7[6], v11);
  }

  v12 = v7[9];

  v13 = v7[10];

  v14 = v7[12];

  v15 = v7[14];

  v16 = (v7 + v1[12]);
  v17 = type metadata accessor for CredentialRevocationInfo();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_10000B90C(*v16, v16[1]);
    v18 = v16[3];
    if (v18 >> 60 != 15)
    {
      sub_10000B90C(v16[2], v18);
    }

    v19 = *(v17 + 24);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(v16 + v19, v20);
  }

  v21 = (v7 + v1[13]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_10000B90C(*v21, v22);
  }

  v23 = (v7 + v1[14]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_10000B90C(*v23, v24);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10047834C(uint64_t a1)
{
  v4 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004771BC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100478440()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 200) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);
  v5 = v0[24];

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);
  if (v9 >> 60 != 15)
  {
    sub_10000B90C(v6[4], v9);
  }

  v10 = v6[7];
  if (v10 >> 60 != 15)
  {
    sub_10000B90C(v6[6], v10);
  }

  v11 = v6[9];

  v12 = v6[10];

  v13 = v6[12];

  v14 = v6[14];

  v15 = (v6 + v1[12]);
  v16 = type metadata accessor for CredentialRevocationInfo();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    sub_10000B90C(*v15, v15[1]);
    v17 = v15[3];
    if (v17 >> 60 != 15)
    {
      sub_10000B90C(v15[2], v17);
    }

    v18 = *(v16 + 24);
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
  }

  v20 = (v6 + v1[13]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_10000B90C(*v20, v21);
  }

  v22 = (v6 + v1[14]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_10000B90C(*v22, v23);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100478660(uint64_t a1)
{
  v4 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v5 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_100477AF0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_100478740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100478788()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 8);
  v1 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004787D0()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100478808(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1004788B0;

  return sub_100476090(a1, a2, v2 + 16);
}

uint64_t sub_1004788B0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1004789B4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100041F04;

  return sub_1004762FC(a1, a2, v7);
}

uint64_t sub_100478A84()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 208) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0[2];

  sub_10000BB78(v0 + 3);
  sub_10000BB78(v0 + 8);
  sub_10000BB78(v0 + 15);
  sub_10000BB78(v0 + 20);
  v6 = v0[25];

  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 40);
  if (v10 >> 60 != 15)
  {
    sub_10000B90C(v7[4], v10);
  }

  v11 = v7[7];
  if (v11 >> 60 != 15)
  {
    sub_10000B90C(v7[6], v11);
  }

  v12 = v7[9];

  v13 = v7[10];

  v14 = v7[12];

  v15 = v7[14];

  v16 = (v7 + v1[12]);
  v17 = type metadata accessor for CredentialRevocationInfo();
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    sub_10000B90C(*v16, v16[1]);
    v18 = v16[3];
    if (v18 >> 60 != 15)
    {
      sub_10000B90C(v16[2], v18);
    }

    v19 = *(v17 + 24);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(v16 + v19, v20);
  }

  v21 = (v7 + v1[13]);
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_10000B90C(*v21, v22);
  }

  v23 = (v7 + v1[14]);
  v24 = v23[1];
  if (v24 >> 60 != 15)
  {
    sub_10000B90C(*v23, v24);
  }

  v25 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v0 + v25 + 8);

  v29 = *(v0 + v26 + 8);

  v30 = *(v0 + v27 + 8);

  return _swift_deallocObject(v0, v27 + 16, v2 | 7);
}

uint64_t sub_100478CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v7 = (*(v6 + 80) + 208) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = (v3 + v8);
  v13 = *v12;
  v14 = v12[1];
  v16 = *(v3 + v9);
  v15 = *(v3 + v9 + 8);
  v17 = *(v3 + v10);
  v18 = *(v3 + v10 + 8);
  v19 = swift_task_alloc();
  *(v5 + 16) = v19;
  *v19 = v5;
  v19[1] = sub_100041F04;

  return sub_10047651C(a1, a2, a3, v11, v3 + 24, v3 + v7, v13, v14);
}

uint64_t sub_100478E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100478EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100478F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100478F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_100478FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10047A054()
{
  swift_defaultActor_initialize();
  v1._countAndFlagsBits = 0x6166346163346664;
  v2._object = 0x80000001007186B0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  logMilestone(tag:description:)(v1, v2);
  v3 = [objc_opt_self() sharedSubscriber];
  v6[4] = sub_10047BBDC;
  v7 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10047A680;
  v6[3] = &unk_1008122E0;
  v4 = _Block_copy(v6);

  [v3 registerAccountChangeEventHandler:v4];
  _Block_release(v4);

  return v0;
}

uint64_t sub_10047A178(void *a1, int a2, uint64_t a3)
{
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v12 = a1;

  sub_1003E653C(0, 0, v9, &unk_1006E55B0, v11);
}

uint64_t sub_10047A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_10047A2C4, 0, 0);
}

uint64_t sub_10047A2C4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_7:
    v7 = *(v0 + 8);

    return v7();
  }

  v2 = *(v0 + 48);
  if (v2 != 3)
  {
    if (v2 == 1)
    {
      v3 = v1;
      v4 = swift_task_alloc();
      *(v0 + 32) = v4;
      *v4 = v0;
      v4[1] = sub_10047A428;
      v5 = *(v0 + 24);

      return sub_10047A6F8(v3);
    }

    goto LABEL_7;
  }

  v8 = v1;
  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = sub_10047A584;
  v10 = *(v0 + 24);

  return sub_10047B104(v8);
}

uint64_t sub_10047A428()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_10047A524, 0, 0);
}

uint64_t sub_10047A524()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A584()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10047BD10, 0, 0);
}

void sub_10047A680(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_10047A6F8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10047A7B8, v1, 0);
}

void sub_10047A7B8()
{
  v41 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136446210;
    v9 = [v6 accountType];
    v10 = *(v0 + 80);
    if (v9)
    {
      v11 = v9;
      v12 = [v9 identifier];

      if (v12)
      {
        v13 = *(v0 + 104);
        v39 = *(v0 + 112);
        v14 = *(v0 + 96);
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100141FE4(v15, v17, &v40);

        *(v7 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v4, v5, "Received appleAccountCreated message, of account type %{public}s", v7, 0xCu);
        sub_10000BB78(v8);

        (*(v13 + 8))(v39, v14);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 96);

  (*(v20 + 8))(v19, v21);
LABEL_6:
  v22 = *(v0 + 80);
  type metadata accessor for DIPAccountManager();
  if (static DIPAccountManager.isPrimaryAppleAccount(account:)())
  {
    static DIPAccountManager.sharedInstance.getter();
    v23 = *(v0 + 48);
    sub_10000BA08((v0 + 16), *(v0 + 40));
    dispatch thunk of DIPAccountManagerProtocol.reloadPrimaryAccount()();
    sub_10000BB78((v0 + 16));
    if (qword_100832B40 != -1)
    {
      swift_once();
    }

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    *v24 = v0;
    v24[1] = sub_10047AC88;

    sub_100024CD8();
    return;
  }

  v25 = [*(v0 + 80) accountType];
  if (!v25)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = [v25 identifier];

  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_19;
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v30)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v28 == v31 && v30 == v32)
  {

LABEL_24:
    if (qword_100832D40 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v36 = qword_100882578;
    v37 = unk_100882580;
    *(v0 + 128) = qword_100882578;
    *(v0 + 136) = v37;

    v38 = swift_task_alloc();
    *(v0 + 144) = v38;
    *v38 = v0;
    v38[1] = sub_10047AFB4;

    sub_1006802D4(0, v36, v37);
    return;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_24;
  }

LABEL_20:
  v33 = *(v0 + 112);

  v34 = *(v0 + 8);

  v34();
}

uint64_t sub_10047AC88()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10047AD98, v2, 0);
}

id sub_10047AD98()
{
  result = [*(v0 + 80) accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result identifier];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_11;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v6)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v4 == v7 && v6 == v8)
  {

LABEL_16:
    if (qword_100832D40 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_100882578;
    v14 = unk_100882580;
    *(v0 + 128) = qword_100882578;
    *(v0 + 136) = v14;

    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_10047AFB4;

    return sub_1006802D4(0, v13, v14);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

LABEL_12:
  v11 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10047AFB4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *(v1 + 112);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10047B104(uint64_t a1)
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
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10047B1F4, v1, 0);
}

void sub_10047B1F4()
{
  v47 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136446210;
    v9 = [v6 accountType];
    v10 = *(v0 + 16);
    if (v9)
    {
      v11 = v9;
      v12 = [v9 identifier];

      if (v12)
      {
        v45 = *(v0 + 80);
        v14 = *(v0 + 32);
        v13 = *(v0 + 40);
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100141FE4(v15, v17, &v46);

        *(v7 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v4, v5, "Received appleAccountDeleted message, of account type %{public}s", v7, 0xCu);
        sub_10000BB78(v8);

        v19 = *(v13 + 8);
        v19(v45, v14);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);

  v19 = *(v22 + 8);
  v19(v20, v21);
LABEL_6:
  *(v0 + 88) = v19;
  v23 = *(v0 + 16);
  type metadata accessor for DIPAccountManager();
  if (static DIPAccountManager.isPrimaryAppleAccount(account:)())
  {
    v24 = *(v0 + 72);
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "User logged out of primary Apple Account, cleaning up state", v27, 2u);
    }

    v28 = *(v0 + 72);
    v29 = *(v0 + 32);
    v30 = *(v0 + 40);

    v19(v28, v29);
    if (qword_100832CA8 != -1)
    {
      swift_once();
    }

    v31 = qword_1008823D8;
    v32 = swift_task_alloc();
    *(v0 + 96) = v32;
    *v32 = v0;
    v32[1] = sub_10047B654;

    sub_100589394(&off_1007FC060, v31);
  }

  else
  {
    v33 = *(v0 + 48);
    defaultLogger()();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Account is not the primary Apple Account, disregarding", v36, 2u);
    }

    v38 = *(v0 + 72);
    v37 = *(v0 + 80);
    v40 = *(v0 + 56);
    v39 = *(v0 + 64);
    v42 = *(v0 + 40);
    v41 = *(v0 + 48);
    v43 = *(v0 + 32);

    v19(v41, v43);

    v44 = *(v0 + 8);

    v44();
  }
}

uint64_t sub_10047B654()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10047B764, v2, 0);
}

uint64_t sub_10047B764()
{
  v1 = [*(v0 + 16) aa_personID];
  if (!v1)
  {
    v8 = *(v0 + 64);
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Account DSID is nil, unable to deregister push notifications", v16, 2u);
    }

    v12(v13, v14);
    v17 = *(v0 + 56);
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Done cleaning up state after user logout; terminating process", v20, 2u);
    }

    v21 = *(v0 + 88);
    v22 = *(v0 + 56);
    v25 = v0 + 32;
    v23 = *(v0 + 32);
    v24 = *(v25 + 8);

    v21(v22, v23);
    exit(0);
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 104) = v5;
  if (qword_100832B40 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_10047B9BC;

  return sub_10002543C(v3, v5);
}

uint64_t sub_10047B9BC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_10047BAE8, v3, 0);
}

void sub_10047BAE8()
{
  v1 = v0[7];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done cleaning up state after user logout; terminating process", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[7];
  v9 = v0 + 4;
  v7 = v0[4];
  v8 = v9[1];

  v5(v6, v7);
  exit(0);
}

uint64_t sub_10047BBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047BBFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10047BC44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10047A2A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10047BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v9 = *(a2 - 8);
  v4[3] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[4] = v11;
  v12 = async function pointer to Task.value.getter[1];
  v13 = swift_task_alloc();
  v4[5] = v13;
  *v13 = v4;
  v13[1] = sub_10047BE38;

  return Task.value.getter(v11, a1, a2, a3, a4);
}

uint64_t sub_10047BE38()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10047BFC8;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v4 = sub_10047BF64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10047BF64()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10047BFC8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_10047C02C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  Task.cancel()();
}

uint64_t sub_10047C040(void *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10047BD14(v4, v6, v7, v8);
}

uint64_t sub_10047C0E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    sub_100020260(v1 + 16, v15);
    sub_100007224(&unk_100845310, &unk_1006E6D00);
    v11 = String.init<A>(describing:)();
    v13 = sub_100141FE4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "AnyTaskBox deiniting %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v3 + 8))(v6, v2);
  sub_10000BB78((v1 + 16));
  return v1;
}

uint64_t sub_10047C2C4()
{
  sub_10047C0E0();

  return swift_deallocClassInstance();
}

uint64_t sub_10047C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10047C33C, 0, 0);
}

uint64_t sub_10047C33C()
{
  v1 = v0[4];
  v2 = v0[3] + 16;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10047C450;
  v7 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v7, &unk_1006E5690);
}

uint64_t sub_10047C450()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10047C598, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10047C598()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_10047C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return _swift_task_switch(sub_10047C628, 0, 0);
}

uint64_t sub_10047C628()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *v1;
  v0[10] = *v1;
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v2;
  v5 = _s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lFTu[1];

  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = sub_100007224(&qword_100845308, &qword_1006E56A8);
  v8 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v6 = v0;
  v6[1] = sub_10047C788;
  v9 = v0[7];

  return __s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, v0 + 5, &unk_1006E56A0, v4, v7, v8, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_10047C788()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10047C8E8, 0, 0);
  }

  else
  {
    v6 = *(v2 + 88);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_10047C8E8()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10047C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10047C96C, 0, 0);
}

uint64_t sub_10047C96C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10047CA90;

  return v8(v2, v3);
}

uint64_t sub_10047CA90()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10047CBC4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_10047CBE8()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10047CC44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_10047C604(a1, v5, v4);
}

uint64_t sub_10047CCF0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_10047CD44(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10047C94C(a1, v6, a2);
}

NSObject *sub_10047CDF4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(NSXPCListener);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithMachServiceName:v7];

  *&v0[OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener] = v8;
  v9 = type metadata accessor for DIDocUploadSessionListener();
  v19.receiver = v0;
  v19.super_class = v9;
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener;
  v12 = *&v10[OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener];
  v13 = v10;
  [v12 setDelegate:v13];
  [*&v10[v11] resume];
  defaultLogger()();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "DIDocUploadSessionListener started.", v16, 2u);

    v17 = v13;
  }

  else
  {
    v17 = v14;
    v14 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_10047D0A0(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

id sub_10047D294(uint64_t (*a1)(void), const char *a2, uint64_t (*a3)(uint64_t))
{
  v7 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = a1();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a2, v15, 2u);
  }

  v16 = (*(v9 + 8))(v12, v8);
  v17 = a3(v16);
  v19.receiver = v7;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "dealloc");
}

uint64_t sub_10047D48C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10047D550, 0, 0);
}

uint64_t sub_10047D550()
{
  v1 = v0[7];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DIDocUploadSessionProxy: uploadDocData", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];

  (*(v6 + 8))(v5, v8);
  sub_10047E0C8();
  v0[8] = *(v0[4] + OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_docUploadHandler);

  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_10047D73C;
  v11 = v0[2];
  v10 = v0[3];

  return sub_100045AB8(v11, v10);
}

uint64_t sub_10047D73C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 72);
  v7 = *v3;
  v7[10] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10047D8A0, 0, 0);
  }

  else
  {
    v9 = v7[7];
    v8 = v7[8];

    v10 = v7[1];

    return v10(a1, a2);
  }
}

uint64_t sub_10047D8A0()
{
  v1 = v0[8];

  v2 = v0[7];
  sub_10047ECE8(v0[10], 0xD000000000000020, 0x80000001007189F0, 96);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10047DAEC(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_10001F8D4(0, &qword_100845400, DIUploadAsset_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_10047DBE4;

  return sub_10047D48C(v7, v8);
}

uint64_t sub_10047DBE4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (v4)
  {
    v13 = _convertErrorToNSError(_:)();

    v14 = v13;
    v15 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(a1, a2);
    v15 = isa;
    v14 = 0;
    v13 = isa;
  }

  v17 = *(v7 + 32);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_10047DDB4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "DIDocUploadSessionProxy: cancelUploads", v10, 2u);
  }

  (*(v3 + 8))(v7, v2);
  sub_10047E0C8();
  v11 = *(v1 + OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_docUploadHandler);

  sub_100047668();
}

void sub_10047E0C8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = v1;
    v30 = v16;
    v37 = v16;
    *v15 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v6;
    v18 = Strong;
    v36 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v32 = v11;
    v19 = Optional.debugDescription.getter();
    v20 = v3;
    v22 = v21;

    v23 = sub_100141FE4(v19, v22, &v37);
    v3 = v20;

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "DIDocUploadSessionProxy.checkEntitlement: Checking connection %s", v15, 0xCu);
    sub_10000BB78(v30);

    v2 = v33;

    (*(v7 + 8))(v10, v31);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26._countAndFlagsBits = 0xD000000000000022;
    v26._object = 0x8000000100718920;
    if (NSXPCConnection.isEntitled(_:)(v26))
    {
      v27._countAndFlagsBits = 0x3931363136363933;
      v28._countAndFlagsBits = 0xD000000000000055;
      v28._object = 0x8000000100718990;
      v27._object = 0xE800000000000000;
      logMilestone(tag:description:)(v27, v28);
    }

    else
    {
      (*(v3 + 104))(v35, enum case for DIPError.Code.missingEntitlement(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v3 + 104))(v35, enum case for DIPError.Code.missingEntitlement(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

id sub_10047E5E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating DIDocUploadSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  result = os_transaction_create();
  if (result)
  {
    *&v1[OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    type metadata accessor for DocUploadHandler();
    v11 = swift_allocObject();
    type metadata accessor for DocUploadHandler.UploadRequestTracker();
    v12 = swift_allocObject();
    sub_100007224(&qword_100845418, &qword_1006E5718);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v12 + 16) = v13;
    *(v11 + 16) = v12;
    *&v1[OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_docUploadHandler] = v11;
    v14 = type metadata accessor for DIDocUploadSessionProxy();
    v15.receiver = v1;
    v15.super_class = v14;
    return objc_msgSendSuper2(&v15, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10047E7FC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &aBlock - v8;
  defaultLogger()();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = [v10 processIdentifier];

    _os_log_impl(&_mh_execute_header, v11, v12, "DIDocUploadSessionListener connection received from %d.", v13, 8u);
  }

  else
  {

    v11 = v10;
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  v15 = sub_1004CFB84();
  v16 = *(v15 + 52);
  v17 = (*(v15 + 48) + 7) & 0x1FFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BF740;
  *(v18 + 32) = sub_10001F8D4(0, &qword_100845408, NSArray_ptr);
  *(v18 + 40) = sub_10001F8D4(0, &qword_100845400, DIUploadAsset_ptr);
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DIDocUploadSessionXPCProtocol];
  [v10 setExportedInterface:v19];

  v20 = [v10 exportedInterface];
  if (v20)
  {
    v21 = v20;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  v22 = sub_1004CFB84();
  v23 = *(v22 + 52);
  v24 = (*(v22 + 48) + 7) & 0x1FFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006BF520;
  *(v25 + 32) = sub_10001F8D4(0, &qword_100845410, DIDocUploadSettings_ptr);
  v26 = [v10 exportedInterface];
  if (v26)
  {
    v27 = v26;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "DIDocUploadSessionListener: Set allowed classes on listener. ***", v30, 2u);
  }

  v14(v7, v2);
  v31 = objc_allocWithZone(type metadata accessor for DIDocUploadSessionProxy());
  v32 = v10;
  v33 = sub_10047E5E0();

  [v32 setExportedObject:v33];
  v41 = sub_10047D088;
  v42 = 0;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100503A7C;
  v40 = &unk_1008123D0;
  v34 = _Block_copy(&aBlock);
  [v32 setInvalidationHandler:v34];
  _Block_release(v34);
  v41 = sub_10047D094;
  v42 = 0;
  aBlock = _NSConcreteStackBlock;
  v38 = 1107296256;
  v39 = sub_100503A7C;
  v40 = &unk_1008123F8;
  v35 = _Block_copy(&aBlock);
  [v32 setInterruptionHandler:v35];
  _Block_release(v35);
  [v32 resume];
  return 1;
}

uint64_t sub_10047ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v23[2] = a2;
  v23[0] = a1;
  v24 = type metadata accessor for Logger();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for DIPError.Code.internalError(_:), v8);

  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v18 = *(v14 + 16);
  v18(v19, v17, v13);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v4 + 8))(v7, v24);

  swift_allocError();
  v18(v20, v17, v13);
  sub_10001F8D4(0, &qword_1008453F0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = static NSError.mapFromError(_:domain:mapper:)();

  (*(v14 + 8))(v17, v13);

  return v21;
}

uint64_t sub_10047F070()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10047F0C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_10047DAEC(v2, v3, v5, v4);
}

uint64_t sub_10047F184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10047F1A8(_OWORD *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceDigitalPresentmentXPC.getter();
  v8 = objc_allocWithZone(NSXPCListener);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithMachServiceName:v9];

  *&v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener] = v10;
  v11 = &v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment];
  v12 = a1[5];
  *(v11 + 4) = a1[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = a1[6];
  v13 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v13;
  v14 = a1[3];
  *(v11 + 2) = a1[2];
  *(v11 + 3) = v14;
  sub_100484954(a1, v25);
  v15 = type metadata accessor for DigitalPresentmentListener();
  v24.receiver = v1;
  v24.super_class = v15;
  v16 = objc_msgSendSuper2(&v24, "init");
  v17 = OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener;
  v18 = *&v16[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener];
  v19 = v16;
  [v18 setDelegate:v19];
  [*&v16[v17] resume];
  defaultLogger()();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Digital presentment XPC listener is started", v22, 2u);

    sub_1004849B0(a1);
  }

  else
  {

    sub_1004849B0(a1);
  }

  (*(v4 + 8))(v7, v3);
  return v19;
}

id sub_10047F3F8()
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Digital presentment listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener] invalidate];
  v10 = type metadata accessor for DigitalPresentmentListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_10047F684(const char *a1)
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
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

void *sub_10047F874()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroying DigitalPresentmentSessionProxy", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_unknownObjectWeakDestroy();
  v10 = v1[15];

  v11 = v1[16];
  v12 = v1[17];
  v13 = v1[18];
  v14 = v1[19];
  v15 = v1[20];
  v16 = v1[21];
  v17 = v1[22];
  v18 = v1[23];
  v19 = v1[24];
  v20 = v1[25];
  v22 = v1[26];
  v21 = v1[27];
  v23 = v1[29];
  v28 = v1[28];
  v27[1] = v21;
  v27[2] = v23;
  sub_10001FE8C(v11);
  sub_10001FE8C(v13);
  sub_10001FE8C(v15);
  sub_10001FE8C(v17);
  sub_10001FE8C(v19);
  sub_10001FE8C(v22);
  sub_10001FE8C(v28);
  v24 = v1[30];
  swift_unknownObjectRelease();
  v25 = v1[31];

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10047FA58()
{
  sub_10047F874();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10047FA84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10047FC70, v1, 0);
}

uint64_t sub_10047FC70()
{
  v1 = v0[20];
  v2 = v0[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentSessionProxy canRequestDocument %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[6];

  v14 = *(v12 + 8);
  v0[21] = v14;
  v0[22] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  sub_10048241C();
  v15 = v0[15];
  v16 = v0[5];
  v17 = *(v0[6] + 120);
  XPCIdentityDocumentCompoundDescriptor.value.getter();
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_1004800AC;
  v19 = v0[15];

  return sub_100138C78(v19);
}

uint64_t sub_1004800AC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[4] = v1;
  *(v4 + 24) = a1;
  v4[2] = v2;
  v5 = v3[23];
  v6 = v3[15];
  v7 = v3[14];
  v8 = v3[13];
  v9 = *v2;
  v4[24] = v1;

  (*(v7 + 8))(v6, v8);
  v10 = v3[6];
  if (v1)
  {
    v11 = sub_100480398;
  }

  else
  {
    v11 = sub_100480240;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100480240()
{
  v1 = *(v0 + 152);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy canRequestDocument returning successfully", v4, 2u);
  }

  v16 = *(v0 + 24);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v15 = *(v0 + 72);

  v6(v8, v10);

  v13 = *(v0 + 8);

  return v13(v16);
}

uint64_t sub_100480398()
{
  v1 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v2 = v0[18];
  v11 = v0[16];
  v16 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12(v2, v11);

  swift_allocError();
  v6(v8, v3, v5);
  sub_100175618();

  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1004807C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100480884;

  return sub_10047FA84(v5);
}

uint64_t sub_100480884(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100480A38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100480C00, v1, 0);
}

uint64_t sub_100480C00()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy present (callback)", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[17] = v9;
  v9(v5, v6);
  if (*(v8 + 248))
  {
    v10 = v0[5];
    v11 = *(v0[9] + 104);
    v11(v0[10], enum case for DIPError.Code.digitalPresentmentRequestAlreadyInProgress(_:), v0[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v12 = v0[14];
    v45 = v0[16];
    v46 = v0[15];
    v42 = v0[13];
    v43 = v0[12];
    v44 = v0[17];
    v47 = v0[11];
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[6];
    v11(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v16 = *(v15 + 16);
    v16(v17, v13, v14);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v44(v12, v43);

    swift_allocError();
    v16(v18, v13, v14);
    sub_100175618();

    swift_willThrow();

    (*(v15 + 8))(v13, v14);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[15];
    v22 = v0[11];
    v24 = v0[3];
    v23 = v0[4];
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v27 = sub_10048349C(&qword_100845570, v26, type metadata accessor for DigitalPresentmentSessionProxy);
    v28 = swift_allocObject();
    v28[2] = v23;
    v28[3] = v27;
    v28[4] = v23;
    v28[5] = v24;
    swift_retain_n();
    v29 = v24;
    v30 = sub_100130C34(0, 0, v22, &unk_1006E57E8, v28);
    v0[18] = v30;
    v31 = *(v8 + 248);
    *(v8 + 248) = v30;

    defaultLogger()();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "DigitalPresentmentSessionProxy requestDocument returning successfully", v34, 2u);
    }

    v35 = v0[15];
    v36 = v0[12];
    v37 = v0[13];

    v9(v35, v36);
    v38 = async function pointer to Task.value.getter[1];
    v39 = swift_task_alloc();
    v0[19] = v39;
    v40 = type metadata accessor for DigitalPresentmentResponse();
    v41 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v39 = v0;
    v39[1] = sub_100481234;

    return Task.value.getter(v0 + 2, v30, v40, v41, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100481234()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100481424;
  }

  else
  {
    v6 = sub_100481360;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100481360()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[2];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100481424()
{
  v1 = v0[18];
  v2 = v0[9];

  v3 = v0[20];
  v4 = v0[14];
  v16 = v0[16];
  v17 = v0[15];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[17];
  v18 = v0[11];
  v5 = v0[7];
  v7 = v0[5];
  v6 = v0[6];
  (*(v2 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v6 + 16);
  v8(v9, v5, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v15(v4, v14);

  swift_allocError();
  v8(v10, v5, v7);
  sub_100175618();

  swift_willThrow();

  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004816D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1004816F4, a4, 0);
}

uint64_t sub_1004816F4()
{
  v1 = v0[3];
  sub_10048241C();
  v2 = *(v0[3] + 120);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1004817EC;
  v4 = v0[4];

  return sub_100139FD8(v4);
}

uint64_t sub_1004817EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_10048199C;
  }

  else
  {
    v4[7] = a1;
    v8 = sub_100481928;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100481928()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  v2 = *(v1 + 248);
  *(v1 + 248) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10048199C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 + 248);
  *(v2 + 248) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100481B94(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_100480A38(v5);
}

uint64_t sub_100481C58(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100481E14()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100481ED4, v0, 0);
}

uint64_t sub_100481ED4()
{
  v14 = v0;
  v1 = v0[5];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEF29287473657571, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (*(v0[2] + 248))
  {
    type metadata accessor for DigitalPresentmentResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100482234(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004822DC;

  return sub_100481E14();
}

uint64_t sub_1004822DC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2, 0);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

void sub_10048241C()
{
  v0 = type metadata accessor for DIPError.Code();
  v39 = *(v0 - 8);
  v1 = *(v39 + 64);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Logger();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v40);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = [objc_opt_self() standardUserDefaults];
  v12._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDigitalPresentmentFirstParty.getter();
  v13 = NSUserDefaults.internalBool(forKey:)(v12);

  if (v13)
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Forcing digital presentment entitlement due to user defaults setting", v16, 2u);
    }

    (*(v4 + 8))(v10, v40);
  }

  else
  {
    v38 = v0;
    defaultLogger()();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    v19 = os_log_type_enabled(v17, v18);
    v37 = v3;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v36;
      *v20 = 136315138;
      Strong = swift_unknownObjectWeakLoadStrong();
      v42 = Strong;
      sub_100007224(&unk_100845850, &qword_1006E5A50);
      v22 = Optional.debugDescription.getter();
      v24 = v23;

      v25 = sub_100141FE4(v22, v24, &v43);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Checking connection %s", v20, 0xCu);
      sub_10000BB78(v36);
    }

    (*(v4 + 8))(v8, v40);
    v26 = swift_unknownObjectWeakLoadStrong();
    v27 = v38;
    if (v26)
    {
      v28 = v26;
      v29._countAndFlagsBits = 0xD00000000000002FLL;
      v29._object = 0x8000000100718CB0;
      if (!NSXPCConnection.isEntitled(_:)(v29) && (v30._countAndFlagsBits = 0xD000000000000026, v30._object = 0x8000000100718CE0, !NSXPCConnection.isEntitled(_:)(v30)) || (v31._countAndFlagsBits = 0xD000000000000044, v31._object = 0x8000000100718D50, !NSXPCConnection.isEntitled(_:)(v31)) && (v32._countAndFlagsBits = 0xD000000000000030, v32._object = 0x8000000100718DA0, !NSXPCConnection.isEntitled(_:)(v32)))
      {
        (*(v39 + 104))(v37, enum case for DIPError.Code.missingEntitlement(_:), v27);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError);
        v34 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v41 = v34;
        swift_willThrow();
      }
    }

    else
    {
      (*(v39 + 104))(v37, enum case for DIPError.Code.missingEntitlement(_:), v38);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError);
      v33 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v41 = v33;
      swift_willThrow();
    }
  }
}

uint64_t sub_100482B14(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v89 = a5;
  v90 = a6;
  v12 = type metadata accessor for DateProvider();
  v86 = *(v12 - 8);
  v13 = v86[8];
  v14 = __chkstk_darwin(v12);
  v16 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v82 - v17;
  v87 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider();
  v19 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115[3] = type metadata accessor for DigitalPresentmentRequestValidator();
  v115[4] = &off_100809E20;
  v115[0] = a3;
  swift_defaultActor_initialize();
  *(a7 + 328) = 0;
  v21 = *(a1 + 80);
  *(a7 + 176) = *(a1 + 64);
  *(a7 + 192) = v21;
  *(a7 + 208) = *(a1 + 96);
  v22 = *(a1 + 16);
  *(a7 + 112) = *a1;
  *(a7 + 128) = v22;
  v23 = *(a1 + 48);
  *(a7 + 144) = *(a1 + 32);
  *(a7 + 160) = v23;
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[3];
  *(a7 + 296) = a2[2];
  *(a7 + 312) = v26;
  *(a7 + 264) = v24;
  *(a7 + 280) = v25;
  v27 = *(a1 + 80);
  if (v27)
  {
    v28 = *(a1 + 88);
    sub_100484954(a1, &v109);
    sub_100484954(a1, &v109);
    v29 = sub_10001F640(v27);
    v27(&v112, v29);
    sub_10001FE8C(v27);
  }

  else
  {
    v113 = &type metadata for DigitalPresentmentDeveloperTestModeHelper;
    v114 = &off_100809B88;
    v30 = swift_allocObject();
    *&v112 = v30;
    v30[5] = type metadata accessor for DeviceInformationProvider();
    v30[6] = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v30 + 2);
    sub_100484954(a1, &v109);
    sub_100484954(a1, &v109);
    DeviceInformationProvider.init()();
    type metadata accessor for UserDefaultsConfiguration();
    v30[7] = static UserDefaultsConfiguration.standard.getter();
  }

  sub_10001F358(&v112, a7 + 336);
  sub_100020260(a7 + 336, &v112);
  sub_10000BA08(&v112, v113);
  v31 = sub_100134AD0();
  sub_100020260(a7 + 336, &v106);
  sub_10000BA08(&v106, *(&v107 + 1));
  if (sub_100134AD0())
  {
    v32 = 0xED0000747365742DLL;
  }

  else
  {
    v32 = 0xE800000000000000;
  }

  v33 = *a1;
  if (*a1)
  {
    v34 = *(a1 + 8);

    v33(&v109, v35);
    sub_1004849B0(a1);
    sub_10001FE8C(v33);
  }

  else
  {
    v36 = type metadata accessor for DigitalPresentmentSessionManager();
    swift_allocObject();
    v37 = sub_10015D65C(v31 & 1, 0x797469746E656469, v32, 1);
    v110 = v36;
    v111 = &off_100809E48;
    sub_1004849B0(a1);
    *&v109 = v37;
  }

  sub_10000BB78(&v106);
  sub_10000BB78(&v112);
  sub_10001F358(&v109, a7 + 224);
  v38 = type metadata accessor for BiometricsHelper();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = BiometricsHelper.init()();
  *(a7 + 400) = v38;
  *(a7 + 408) = &protocol witness table for BiometricsHelper;
  *(a7 + 376) = v41;
  sub_100020260(v115, a7 + 416);
  v42 = v89;
  v43 = v90;
  *(a7 + 456) = a4;
  *(a7 + 464) = v42;
  sub_100484A5C(v43, &v112);
  if (v113)
  {
    sub_10000BE18(v43, &qword_100843230, &qword_1006E0DC0);
    sub_1004849B0(a1);
    sub_10000BB78(v115);
    sub_10001F358(&v112, &v109);
  }

  else
  {
    sub_10000BE18(&v112, &qword_100843230, &qword_1006E0DC0);
    sub_100020260(a7 + 224, &v109);
    type metadata accessor for PassManager();
    v89 = swift_allocObject();
    v85 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    v84 = type metadata accessor for DigitalPresentmentUIPresenter();
    v44 = v88;
    DeviceInformationProvider.init()();
    v113 = type metadata accessor for DeviceInformationProvider();
    v114 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v112);
    DeviceInformationProvider.init()();
    type metadata accessor for KRLTrustValidator();
    v106 = 0u;
    v107 = 0u;
    v108 = 0;
    swift_allocObject();
    v45 = sub_10010F338();

    DateProvider.init()();
    v46 = v86;
    (v86[2])(v16, v18, v12);
    v47 = sub_1003A0748(&v106, v45, v16);

    (v46[1])(v18, v12);
    v48 = v110;
    v49 = sub_10001F370(&v109, v110);
    v86 = v82;
    v50 = *(*(v48 - 8) + 64);
    __chkstk_darwin(v49);
    v52 = (v82 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v52;
    v55 = type metadata accessor for DigitalPresentmentSessionManager();
    *(&v107 + 1) = v55;
    v108 = &off_100809E48;
    *&v106 = v54;
    v104 = v87;
    v105 = &off_100810218;
    v56 = sub_100032DBC(v103);
    sub_1003EADF0(v44, v56);
    v57 = type metadata accessor for PresentmentKeyRevocationValidator();
    v101 = v57;
    v102 = &off_100809510;
    v100[0] = v47;
    v83 = type metadata accessor for WalletPassPresentmentManager();
    v58 = swift_allocObject();
    v59 = sub_10001F370(&v106, v55);
    v82[2] = v82;
    v60 = *(*(v55 - 8) + 64);
    __chkstk_darwin(v59);
    v62 = (v82 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62);
    v64 = v104;
    v65 = sub_10001F370(v103, v104);
    v82[1] = v82;
    v66 = *(*(v64 - 8) + 64);
    __chkstk_darwin(v65);
    v68 = v82 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v68);
    v70 = v101;
    v71 = sub_10001F370(v100, v101);
    v82[0] = v82;
    v72 = *(*(v70 - 8) + 64);
    __chkstk_darwin(v71);
    v74 = (v82 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74);
    v76 = *v62;
    v77 = *v74;
    v98 = v55;
    v99 = &off_100809E48;
    *&v97 = v76;
    v95 = v87;
    v96 = &off_100810218;
    v78 = sub_100032DBC(&v94);
    sub_1003EAE54(v68, v78);
    v92 = v57;
    v93 = &off_100809510;
    *&v91 = v77;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v88);
    *(v58 + 272) = 0u;
    *(v58 + 288) = 0u;
    *(v58 + 304) = 0;
    sub_10001F358(&v97, v58 + 112);
    v79 = v85;
    *(v58 + 152) = v89;
    *(v58 + 160) = v79;
    v80 = v84;
    *(v58 + 168) = &off_100809DF0;
    *(v58 + 176) = v80;
    *(v58 + 184) = &off_100809F18;
    sub_10001F358(&v94, v58 + 192);
    sub_10001F358(&v112, v58 + 232);
    sub_10001F358(&v91, v58 + 312);
    sub_10000BB78(v100);
    sub_10000BB78(v103);
    sub_10000BB78(&v106);
    sub_10000BB78(&v109);
    v110 = v83;
    v111 = &off_100810230;
    sub_1004849B0(a1);
    *&v109 = v58;
    sub_10000BE18(v90, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(v115);
  }

  sub_10001F358(&v109, a7 + 472);
  return a7;
}

uint64_t sub_10048349C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1004834E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10048352C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_1004816D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1004835EC()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10048362C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100482234(v2, v3);
}

uint64_t sub_1004836E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100481B94(v2, v3, v4);
}

uint64_t sub_100483794()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004807C0(v2, v3, v4);
}

char *sub_100483848()
{
  v0 = type metadata accessor for Logger();
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v58 - v12;
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v16._countAndFlagsBits = 0xD000000000000044;
  v16._object = 0x8000000100718D50;
  v17 = NSXPCConnection.getArrayEntitlement(name:)(v16);
  v58 = v0;
  v59 = v4;
  if (v17)
  {
    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v61 = v21;
      *v20 = 136315138;
      v22 = Array.description.getter();
      v24 = sub_100141FE4(v22, v23, &v61);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Using external merchants entitlement, values: %s", v20, 0xCu);
      sub_10000BB78(v21);
      v0 = v58;
    }

    v25 = *(v60 + 8);
    v25(v15, v0);
  }

  else
  {
    v26._countAndFlagsBits = 0xD000000000000030;
    v26._object = 0x8000000100718DA0;
    if (NSXPCConnection.getArrayEntitlement(name:)(v26))
    {
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v61 = v30;
        *v29 = 136315138;
        v31 = Array.description.getter();
        v33 = v7;
        v34 = sub_100141FE4(v31, v32, &v61);
        v0 = v58;

        *(v29 + 4) = v34;
        v7 = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Using internal merchants entitlement, values: %s", v29, 0xCu);
        sub_10000BB78(v30);
      }

      v25 = *(v60 + 8);
      v25(v13, v0);
    }

    else
    {
      defaultLogger()();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "No merchants entitlement is present, defaulting to empty value", v57, 2u);
      }

      v25 = *(v60 + 8);
      v25(v10, v0);
    }
  }

  v35._countAndFlagsBits = 0xD00000000000002FLL;
  v35._object = 0x8000000100718CB0;
  v36 = NSXPCConnection.getDictionaryOfStringArraysEntitlement(name:)(v35);
  if (v36)
  {
    v37 = sub_1001292C4(v36);
  }

  else
  {
    v38._object = 0x8000000100718CE0;
    v38._countAndFlagsBits = 0xD000000000000026;
    if (NSXPCConnection.isEntitled(_:)(v38))
    {
      sub_100007224(&qword_100842988, &unk_1006E5850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006BF740;
      *(inited + 32) = 256;
      v37 = sub_1003C5778(1, 3, 1, inited);
      *(v37 + 2) = 3;
      v37[34] = 2;
    }

    else
    {

      defaultLogger()();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No digital presentment entitlement is present, defaulting to empty value", v42, 2u);
      }

      v25(v7, v0);
      v37 = _swiftEmptyArrayStorage;
    }
  }

  v43 = v59;
  defaultLogger()();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61 = v47;
    *v46 = 136315138;
    v48 = sub_1001290E0();
    v50 = v49;

    v51 = sub_100141FE4(v48, v50, &v61);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "Digital presentment: calling process has entitlements: %s", v46, 0xCu);
    sub_10000BB78(v47);

    v52 = v59;
    v53 = v58;
  }

  else
  {

    v52 = v43;
    v53 = v0;
  }

  v25(v52, v53);
  return v37;
}

BOOL sub_100484008()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDigitalPresentmentFirstParty.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v14 = 1;
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Forcing digital presentment first party client due to user defaults setting", v13, 2u);
    v14 = 1;
  }

  else
  {
    v15._object = 0x8000000100718F30;
    v15._countAndFlagsBits = 0xD000000000000037;
    v14 = NSXPCConnection.isEntitled(_:)(v15);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      v7 = v5;
      goto LABEL_9;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v16, "DigitalPresentmentSessionProxy.hasFirstPartyClientEntitlement: result = %{BOOL}d", v17, 8u);
    v7 = v5;
  }

LABEL_9:

  (*(v1 + 8))(v7, v0);
  return v14;
}

uint64_t sub_100484268(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v3 + 248) = 0;
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating DigitalPresentmentSessionProxy", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  swift_unknownObjectWeakAssign();
  v14 = a2[5];
  *(v3 + 192) = a2[4];
  *(v3 + 208) = v14;
  *(v3 + 224) = a2[6];
  v15 = a2[1];
  *(v3 + 128) = *a2;
  *(v3 + 144) = v15;
  v16 = a2[3];
  *(v3 + 160) = a2[2];
  *(v3 + 176) = v16;
  sub_100484954(a2, v42);
  result = os_transaction_create();
  if (result)
  {
    *(v3 + 240) = result;
    v18 = sub_100483848();
    v20 = v19;
    v22 = v21;
    [a1 auditToken];
    v44 = sub_100484008();
    v45 = v18;
    v46 = v20;
    v47 = v22;
    v23 = *(v3 + 208);
    v42[4] = *(v3 + 192);
    v42[5] = v23;
    v42[6] = *(v3 + 224);
    v24 = *(v3 + 144);
    v42[0] = *(v3 + 128);
    v42[1] = v24;
    v25 = *(v3 + 176);
    v42[2] = *(v3 + 160);
    v42[3] = v25;
    v26 = type metadata accessor for DigitalPresentmentRequestValidator();
    memset(v40, 0, sizeof(v40));
    v41 = 0;
    v27 = swift_allocObject();
    v28 = type metadata accessor for IdentityDocumentPresentmentConfigurationBuilder();
    v39[3] = v26;
    v39[4] = &off_100809E20;
    v39[0] = v27;
    type metadata accessor for DigitalPresentmentFlow();
    v29 = swift_allocObject();
    v30 = sub_10001F370(v39, v26);
    v31 = *(*(v26 - 8) + 64);
    __chkstk_darwin(v30);
    v33 = (&v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v33;
    sub_100484954(v42, &v38);
    v36 = sub_100482B14(v42, &v43, v35, v28, &off_10080A000, v40, v29);
    sub_10000BB78(v39);
    *(v3 + 120) = v36;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004845CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "DigitalPresentmentListener connection received from %d", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for DigitalPresentmentXPCInterface();
  v13 = static DigitalPresentmentXPCInterface.interface()();
  [v9 setExportedInterface:v13];

  v14 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 80);
  v28[4] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 64);
  v28[5] = v14;
  v28[6] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 96);
  v15 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 16);
  v28[0] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment);
  v28[1] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 48);
  v28[2] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 32);
  v28[3] = v16;
  type metadata accessor for DigitalPresentmentSessionProxy();
  swift_allocObject();
  v17 = v9;
  sub_100484954(v28, &aBlock);
  v18 = sub_100484268(v17, v28);
  sub_1004849B0(v28);

  [v17 setExportedObject:v18];

  v26 = sub_10047F66C;
  v27 = 0;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100503A7C;
  v25 = &unk_1008125B0;
  v19 = _Block_copy(&aBlock);
  [v17 setInvalidationHandler:v19];
  _Block_release(v19);
  v26 = sub_10047F678;
  v27 = 0;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100503A7C;
  v25 = &unk_1008125D8;
  v20 = _Block_copy(&aBlock);
  [v17 setInterruptionHandler:v20];
  _Block_release(v20);
  [v17 resume];
  return 1;
}

uint64_t sub_100484A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100484A1C()
{
  sub_10000BB78((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100484A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843230, &qword_1006E0DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100484AEC()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v14 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v14);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyQueue;
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100485E38(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = &v0[OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_deviceLockStateNotification];
  *v9 = 0xD00000000000001FLL;
  *(v9 + 1) = 0x8000000100719130;
  *&v0[OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken] = -1;
  v10 = type metadata accessor for DIPLockStateMonitor();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_100484DB8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v51 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v48 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v46 - v16;
  defaultLogger()();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v52 = a2;
  v53 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v60 = v3;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47 = v5;
    v24 = v12;
    v25 = v11;
    v26 = v23;
    aBlock = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "Trying to register for phone lock/unlock events for prearming watch with pairingID: %s", v22, 0xCu);
    sub_10000BB78(v26);
    v11 = v25;
    v12 = v24;
    v5 = v47;

    v4 = v60;
  }

  v27 = *(v12 + 8);
  v27(v17, v11);
  v28 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken;
  result = swift_beginAccess();
  if (*(v5 + v28) == -1)
  {
    v46[0] = v27;
    v46[1] = v12;
    v47 = v11;
    v60 = v4;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    v32 = v52;
    v33 = v53;
    v31[2] = v30;
    v31[3] = v33;
    v31[4] = v32;
    v34 = *(v5 + OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_deviceLockStateNotification);
    v35 = *(v5 + OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_deviceLockStateNotification + 8);
    v36 = *(v5 + OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyQueue);
    v58 = sub_100485E14;
    v59 = v31;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_1004856F8;
    v57 = &unk_100812678;
    v37 = _Block_copy(&aBlock);

    v38 = String.utf8CString.getter();
    swift_beginAccess();
    LODWORD(v36) = notify_register_dispatch((v38 + 32), (v5 + v28), v36, v37);
    swift_endAccess();
    _Block_release(v37);

    if (v36)
    {
      *(v5 + v28) = -1;
      aBlock = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v39._countAndFlagsBits = 0xD00000000000005ALL;
      v39._object = 0x8000000100719030;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v33;
      v40._object = v32;
      String.append(_:)(v40);
      (*(v49 + 104))(v51, enum case for DIPError.Code.unableToRegisterForPhoneLockUnlockEvents(_:), v50);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v41 = v48;
      defaultLogger()();

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_100141FE4(v33, v32, &aBlock);
        _os_log_impl(&_mh_execute_header, v42, v43, "Successfully registered for phone lock state notifications to prearm watch with pairingID: %s", v44, 0xCu);
        sub_10000BB78(v45);
      }

      else
      {
      }

      return (v46[0])(v41, v47);
    }
  }

  return result;
}

void sub_100485408(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      state64 = 0;
      notify_get_state(a1, &state64);
      defaultLogger()();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = v17;
        v24 = swift_slowAlloc();
        v27 = v24;
        *v17 = 136446210;
        swift_beginAccess();
        if (state64)
        {
          v18 = 0x64656B636F6CLL;
        }

        else
        {
          v18 = 0x64656B636F6C6E75;
        }

        v25 = a4;
        if (state64)
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v19 = 0xE800000000000000;
        }

        v20 = sub_100141FE4(v18, v19, &v27);

        v21 = v23;
        *(v23 + 1) = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "lockStateMonitor: Screen %{public}s", v21, 0xCu);
        sub_10000BB78(v24);
      }

      (*(v7 + 8))(v10, v6);
      swift_beginAccess();
      if (!state64)
      {
        v22 = String._bridgeToObjectiveC()();
        [v14 lockStateMonitor:v12 deviceLockDidUpdate:0 watchPairingID:v22];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1004856F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1004857EC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (v14 == -1)
  {
    defaultLogger()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      if (a2)
      {
        v26 = a2;
      }

      else
      {
        a1 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_100141FE4(a1, v26, &v28);

      *(v24 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring the call to unregisterFromDeviceLockNotifications, already unregistered for watch with pairingID: %s", v24, 0xCu);
      sub_10000BB78(v25);
    }

    return (*(v6 + 8))(v10, v5);
  }

  else
  {
    notify_cancel(v14);
    *(v2 + v13) = -1;
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315138;
      if (a2)
      {
        v19 = a2;
      }

      else
      {
        a1 = 0;
        v19 = 0xE000000000000000;
      }

      v20 = sub_100141FE4(a1, v19, &v28);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully unregistered for phone lock state notifications for watch with pairingID: %s", v17, 0xCu);
      sub_10000BB78(v18);
    }

    return (*(v6 + 8))(v12, v5);
  }
}

id sub_100485B84()
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Deallocating DIPLockStateMonitor", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_1004857EC(0, 0);
  v10 = type metadata accessor for DIPLockStateMonitor();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_100485D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100485DD4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100485E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100485E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100485EA8()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v20[3] = v5;
  v20[4] = &off_10080ADD0;
  v20[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v20, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v18 = v5;
  v19 = &off_10080ADD0;
  *&v17 = v14;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v15 = *(qword_1008824A8 + 152);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v17, v8 + 24);
  *(v8 + 64) = v7;
  sub_10000BB78(v20);
  return v8;
}

unint64_t sub_1004860F4()
{
  result = sub_100486730();
  qword_100882350 = result;
  *algn_100882358 = v1;
  qword_100882360 = v2;
  unk_100882368 = v3;
  return result;
}

void sub_10048611C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v14[4] = sub_100486378;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1003E854C;
  v14[3] = &unk_1008126C8;
  v9 = _Block_copy(v14);

  v10 = a4;

  v11 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v11 + 32), v10, v9);

  _Block_release(v9);
  sub_1004B0184(v10, a1, a2, a3);
  v12._countAndFlagsBits = 0x6331386362376136;
  v13._object = 0x8000000100719170;
  v12._object = 0xE800000000000000;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  logMilestone(tag:description:)(v12, v13);
}

uint64_t sub_100486294(void *a1)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v3 = result;
    if (!strcmp(result, "Application Installed"))
    {

      return sub_100486B0C(a1);
    }

    else
    {
      result = strcmp(v3, "Application Uninstalled");
      if (!result)
      {

        return sub_100486FB4(a1);
      }
    }
  }

  return result;
}

uint64_t sub_100486330()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100486378(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100486294(a1);
}

uint64_t sub_100486384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004863BC()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[6] = qword_100882578;
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1004864C8;
  v4 = v0[5];

  return sub_100680A68(v4, v1, v2);
}

uint64_t sub_1004864C8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100486614()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[6] = qword_100882578;
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100487664;
  v4 = v0[5];

  return sub_10068CE1C(v4, v1);
}

unint64_t sub_100486730()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_100487608();
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = sub_100485EA8();
  type metadata accessor for IdentityProofingActionNotificationFlow();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v11 = swift_allocObject();
  type metadata accessor for IdentityWatchProvisioningManagerFactory();
  v12 = swift_allocObject();
  type metadata accessor for IdentityProofingUserNotificationProviderFactory();
  v13 = swift_allocObject();
  type metadata accessor for IdentityProvisioningCompletionManager();
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  v14[6] = v13;
  return 0xD000000000000018;
}

size_t sub_1004869E0(void *a1)
{
  v1 = xpc_dictionary_get_array(a1, "bundleIDs");
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = xpc_array_get_count(v1);
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_18:
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = xpc_array_get_string(v2, v5);
      if (result)
      {
        v7 = String.init(cString:)();
        v9 = v8;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C5110(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          result = sub_1003C5110((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v11 + 1;
        v12 = &v6[16 * v11];
        *(v12 + 4) = v7;
        *(v12 + 5) = v9;
      }

      if (v4 == v5)
      {
        break;
      }

      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100486B0C(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - v4;
  v43 = type metadata accessor for Logger();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v43);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Application install event received", v21, 2u);
  }

  v22 = *(v6 + 8);
  v22(v18, v43);
  v23 = xpc_dictionary_get_value(a1, "UserInfo");
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  type = xpc_get_type(v23);
  v26 = xpc_dictionary_create(0, 0, 0);
  v27 = xpc_get_type(v26);
  swift_unknownObjectRelease();
  if (type != v27)
  {
    swift_unknownObjectRelease();
LABEL_6:
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Application install event: no user info dictionary", v30, 2u);
    }

    v31 = v10;
    return (v22)(v31, v43);
  }

  if (xpc_dictionary_get_BOOL(v24, "isPlaceholder"))
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Skipping application install event because it refers to a placeholder", v35, 2u);
    }

    swift_unknownObjectRelease();
    v31 = v16;
    return (v22)(v31, v43);
  }

  v36 = sub_1004869E0(v24);
  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "XPC application install event: received install event", v39, 2u);
  }

  v22(v13, v43);
  v40 = type metadata accessor for TaskPriority();
  (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v36;
  sub_1003E653C(0, 0, v5, &unk_1006E5890, v41);

  return swift_unknownObjectRelease();
}

uint64_t sub_100486FB4(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42 - v4;
  v43 = type metadata accessor for Logger();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v43);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - v15;
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Application uninstall event received", v21, 2u);
  }

  v22 = *(v6 + 8);
  v22(v18, v43);
  v23 = xpc_dictionary_get_value(a1, "UserInfo");
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  type = xpc_get_type(v23);
  v26 = xpc_dictionary_create(0, 0, 0);
  v27 = xpc_get_type(v26);
  swift_unknownObjectRelease();
  if (type != v27)
  {
    swift_unknownObjectRelease();
LABEL_6:
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Application uninstall event: no user info dictionary", v30, 2u);
    }

    v31 = v10;
    return (v22)(v31, v43);
  }

  if (xpc_dictionary_get_BOOL(v24, "isPlaceholder"))
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Skipping application uninstall event because it refers to a placeholder", v35, 2u);
    }

    swift_unknownObjectRelease();
    v31 = v16;
    return (v22)(v31, v43);
  }

  v36 = sub_1004869E0(v24);
  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "XPC application uninstall event: received uninstall event", v39, 2u);
  }

  v22(v13, v43);
  v40 = type metadata accessor for TaskPriority();
  (*(*(v40 - 8) + 56))(v5, 1, 1, v40);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v36;
  sub_1003E653C(0, 0, v5, &unk_1006E58A0, v41);

  return swift_unknownObjectRelease();
}

uint64_t sub_100487460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10048639C(a1, v4, v5, v6);
}

uint64_t sub_100487514()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100487554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004865F4(a1, v4, v5, v6);
}

unint64_t sub_100487608()
{
  result = qword_1008465A0;
  if (!qword_1008465A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008465A0);
  }

  return result;
}

void *sub_100487668()
{
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v25 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v30[0] = _swiftEmptyArrayStorage;
  sub_100485E38(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v9 = qword_100881E48;
  v10 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;

  v12 = sub_10031623C();
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v13 = swift_allocObject();
  *(v13 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v14 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  type metadata accessor for IdentityProofingUploadsHelper();
  v16 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v16 + 16) = static NetworkMonitor.shared.getter();
  *(v16 + 24) = v15;
  v30[3] = v10;
  v30[4] = &off_10080ADD0;
  v30[0] = v11;
  type metadata accessor for IdentityProofingUpdateManager();
  v17 = swift_allocObject();
  v18 = sub_10001F370(v30, v10);
  v19 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v28 = v10;
  v29 = &off_10080ADD0;
  *&v27 = v23;
  v17[2] = v8;
  v17[3] = v9;
  sub_10001F358(&v27, (v17 + 4));
  v17[9] = v12;
  v17[10] = v13;
  v17[11] = v16;
  sub_10000BB78(v30);
  return v17;
}

uint64_t sub_100487AB4()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v18[3] = v0;
  v18[4] = &off_10080D6B8;
  v18[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v0);
  v9 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v16 = v0;
  v17 = &off_10080D6B8;
  *&v15 = v13;
  *(v7 + 64) = 90;
  sub_10001F358(&v15, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v18);

  return v7;
}

NSObject *sub_100487CA0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_watchSessionManager;
  type metadata accessor for IdentityProofingConfigProvider();
  v8 = swift_allocObject();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v9 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for IdentityProofingTextReplacementHelperProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v16 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  *(v14 + 112) = v8;
  *(v14 + 120) = v10;
  v33[3] = v11;
  v33[4] = &off_10080C400;
  v33[0] = v14;
  v17 = objc_allocWithZone(type metadata accessor for IdentityWatchSessionManagementListener());
  *&v1[v7] = sub_1004B1300(v33);
  machServiceIdentityManagementUI.getter();
  v18 = objc_allocWithZone(NSXPCListener);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithMachServiceName:v19];

  *&v1[OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener] = v20;
  v21 = type metadata accessor for IdentityManagementListener();
  v32.receiver = v1;
  v32.super_class = v21;
  v22 = objc_msgSendSuper2(&v32, "init");
  v23 = OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener;
  v24 = *&v22[OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener];
  v25 = v22;
  [v24 setDelegate:v25];
  [*&v22[v23] resume];
  defaultLogger()();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Identity management listener is started", v28, 2u);

    v29 = v25;
  }

  else
  {
    v29 = v26;
    v26 = v25;
  }

  (*(v3 + 8))(v6, v2);
  return v25;
}

id sub_100487FC4()
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Identity management listener is tearing down", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for IdentityManagementListener();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_100488194(uint64_t a1, const char *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    defaultLogger()();
    v15 = v14;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v5;
      v35 = v19;
      v20 = v19;
      *v18 = 136315394;
      v21 = v15;
      v22 = [v21 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = a2;
      v25 = v24;

      v26 = sub_100141FE4(v23, v25, &v35);

      *(v18 + 4) = v26;
      *(v18 + 12) = 1024;
      LODWORD(v25) = [v21 processIdentifier];

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, v33, v18, 0x12u);
      sub_10000BB78(v20);

      return (*(v6 + 8))(v10, v34);
    }

    v31 = *(v6 + 8);
    v32 = v10;
  }

  else
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, a3, v30, 2u);
    }

    v31 = *(v6 + 8);
    v32 = v12;
  }

  return v31(v32, v5);
}

uint64_t sub_100488518()
{
  *(v1 + 24) = v0;
  v2 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1004885B4, 0, 0);
}

uint64_t sub_1004885B4()
{
  v1 = *(v0[3] + 40);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v3;

    v2 = sub_1003E6B50(0, 0, v4, &unk_1006E5AA8, v6);
    *(v1 + 16) = v2;
  }

  v0[5] = v2;

  os_unfair_lock_unlock((v1 + 24));
  v7 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  v9 = type metadata accessor for IdentityProofingFlow();
  *v8 = v0;
  v8[1] = sub_100488734;

  return Task<>.value.getter(v0 + 2, v2, v9);
}

uint64_t sub_100488734()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_100488830, 0, 0);
}

uint64_t sub_100488830()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1004888A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[72] = a4;
  v4[71] = a1;
  v5 = type metadata accessor for UUID();
  v4[73] = v5;
  v6 = *(v5 - 8);
  v4[74] = v6;
  v7 = *(v6 + 64) + 15;
  v4[75] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v4[76] = v8;
  v9 = *(v8 - 8);
  v4[77] = v9;
  v10 = *(v9 + 64) + 15;
  v4[78] = swift_task_alloc();

  return _swift_task_switch(sub_1004889C0, 0, 0);
}

uint64_t sub_1004889C0()
{
  v98 = v0;
  v92 = *(*(v0 + 576) + 72);
  *(v0 + 632) = v92;
  *(v0 + 640) = type metadata accessor for IdentityProofingPendingActionsFlowFactory();
  v91 = swift_allocObject();
  *(v0 + 648) = v91;
  type metadata accessor for IdentityProofingConfigProvider();
  v90 = swift_allocObject();
  *(v0 + 656) = v90;
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  v3 = type metadata accessor for IdentityProofingAttributeConfigHelper();
  *(v0 + 664) = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = IdentityProofingAttributeConfigHelper.init()();
  *(v0 + 672) = type metadata accessor for IdentityProofingAssetsProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  if (qword_100832C40 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  v10 = *(v0 + 608);
  v11 = qword_100882300;
  *(v0 + 680) = qword_100882300;
  type metadata accessor for IdentityProofingAuthCodeUIProvider();
  v12 = swift_allocObject();
  *(v0 + 688) = v12;
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = v1;
  v12[3] = v2;
  v12[4] = v7;
  v12[5] = v11;
  *(v0 + 696) = type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v13 = swift_allocObject();
  *(v0 + 704) = type metadata accessor for IdentityProofingWorkflowProvider();
  v14 = swift_allocObject();
  *(v0 + 712) = v14;
  *(v14 + 16) = v13;
  v15 = type metadata accessor for IdentityProofingLivenessConfigProvider();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v86 = sub_1002BCD94();
  *(v0 + 720) = v86;
  v18 = *(v3 + 48);
  v19 = *(v3 + 52);
  swift_allocObject();
  v20 = IdentityProofingAttributeConfigHelper.init()();
  v21 = swift_allocObject();
  *(v0 + 728) = v21;
  *(v21 + 16) = v20;
  type metadata accessor for IdentityProofingTermsAndConditionsProvider();
  *(v0 + 736) = swift_allocObject();
  v22 = type metadata accessor for IdentityProofingActionNotificationFlow();
  *(v0 + 744) = v22;
  v93 = v22;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v0 + 752) = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v23 = enum case for DispatchQoS.QoSClass.default(_:);
  *(v0 + 976) = enum case for DispatchQoS.QoSClass.default(_:);
  v24 = *(v9 + 104);
  *(v0 + 760) = v24;
  *(v0 + 768) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v82 = v23;
  v81 = v24;
  v24(v8);
  v83 = static OS_dispatch_queue.global(qos:)();
  *(v0 + 776) = v83;
  v25 = *(v9 + 8);
  *(v0 + 784) = v25;
  *(v0 + 792) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = v25;
  v25(v8, v10);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v79 = *(v0 + 624);
  v80 = *(v0 + 608);
  v87 = *(v0 + 600);
  v88 = *(v0 + 592);
  v89 = *(v0 + 584);
  v26 = qword_100882220;
  *(v0 + 40) = type metadata accessor for IdentityBiometricStoreHelper();
  *(v0 + 48) = &off_10080A0A8;
  *(v0 + 16) = v26;
  *(v0 + 800) = swift_allocObject();
  type metadata accessor for IdentityProofingCleanupProviderFactory();
  *(v0 + 808) = swift_allocObject();
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  type metadata accessor for IdentityProvisioningManager();
  memset(v96, 0, sizeof(v96));
  v97 = 0;
  swift_allocObject();

  *(v0 + 816) = sub_1002EA490(v94, v96, 0, 0);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = type metadata accessor for IdentityProofingTextReplacementHelperProvider();
  *(v0 + 824) = v30;
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  swift_defaultActor_initialize();
  v34 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v35 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v0 + 832) = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  *(v0 + 840) = v37;
  *(v0 + 848) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v37(v33 + v34, 1, 1, v35);
  *(v33 + 112) = v27;
  *(v33 + 120) = v29;
  type metadata accessor for IdentityProofingUserConsentWebService();
  *(v0 + 856) = swift_allocObject();
  v38 = swift_allocObject();
  v39 = swift_allocObject();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  v41 = *(v30 + 48);
  v42 = *(v30 + 52);
  v43 = swift_allocObject();
  *(v0 + 864) = v43;
  swift_defaultActor_initialize();
  v37(v43 + OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow, 1, 1, v35);
  *(v43 + 112) = v38;
  *(v43 + 120) = v40;
  *(v0 + 56) = v77;
  *(v0 + 80) = v93;
  *(v0 + 88) = &off_10080ADD0;
  *(v0 + 120) = v30;
  *(v0 + 128) = &off_10080C400;
  *(v0 + 96) = v33;
  type metadata accessor for IdentityProofingFlow();
  v44 = swift_allocObject();
  *(v0 + 872) = v44;
  sub_10001F370(v0 + 56, v93);
  v45 = *(v93 - 8);
  *(v0 + 880) = v45;
  v46 = v45;
  v85 = *(v45 + 64) + 15;
  v47 = swift_task_alloc();
  *(v0 + 888) = v47;
  v78 = *(v46 + 16);
  v78();
  v48 = *(v0 + 120);
  sub_10001F370(v0 + 96, v48);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64) + 15;
  v51 = swift_task_alloc();
  *(v0 + 896) = v51;
  (*(v49 + 16))();
  v52 = *v47;
  v53 = *v51;
  *(v0 + 160) = v93;
  *(v0 + 168) = &off_10080ADD0;
  *(v0 + 136) = v52;
  *(v0 + 200) = v30;
  *(v0 + 208) = &off_10080C400;
  *(v0 + 176) = v53;
  v44[3] = 0;
  v54 = dispatch_group_create();
  *(v0 + 904) = v54;
  v44[4] = v54;
  v55 = v54;
  v56 = dispatch_group_create();
  *(v0 + 912) = v56;
  v44[5] = v56;
  v44[7] = 0;
  *(v0 + 920) = type metadata accessor for IdentityProofingDatabaseProvider();
  v44[34] = swift_allocObject();
  v44[13] = v90;
  v44[14] = v86;
  v44[6] = v92;
  v44[11] = v83;
  v44[12] = v91;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v81(v79, v82, v80);
  swift_retain_n();
  v57 = v92;
  v58 = v56;

  v59 = v83;
  v60 = static OS_dispatch_queue.global(qos:)();
  v84(v79, v80);
  *(v0 + 240) = v93;
  *(v0 + 248) = &off_10080ADD0;
  *(v0 + 216) = v76;
  type metadata accessor for IdentityProofingCleanupProvider();
  v61 = swift_allocObject();
  v62 = sub_10001F370(v0 + 216, v93);
  v63 = swift_task_alloc();
  (v78)(v63, v62, v93);
  v64 = *v63;
  *(v0 + 280) = v93;
  *(v0 + 288) = &off_10080ADD0;
  *(v0 + 256) = v64;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  sub_10001F358((v0 + 256), v61 + 24);
  *(v61 + 64) = v60;
  sub_10000BB78((v0 + 216));

  v44[15] = v61;
  v65 = swift_allocObject();
  v66 = type metadata accessor for IdentitySelfHealer();
  v67 = objc_allocWithZone(v66);
  v68 = &v67[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v68 = 0;
  *(v68 + 1) = 0;
  *&v67[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v65;
  *(v0 + 552) = v67;
  *(v0 + 560) = v66;
  v69 = objc_msgSendSuper2((v0 + 552), "init");
  *(v0 + 928) = v69;
  v70 = v44[3];
  v44[3] = v69;

  v71 = v69;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 936) = v72;
  v73 = *(v88 + 8);
  *(v0 + 944) = v73;
  *(v0 + 952) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v73(v87, v89);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v74 = swift_task_alloc();
  *(v0 + 960) = v74;
  *v74 = v0;
  v74[1] = sub_1004893D0;

  return sub_1005FB45C(v0 + 296, v69, &off_10080DB50, 0, 0);
}

uint64_t sub_1004893D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v4 = *(*v1 + 936);
  v5 = *(*v1 + 928);
  v7 = *v1;
  *(v2 + 968) = a1;

  sub_10000BB78((v2 + 296));

  return _swift_task_switch(sub_100489518, 0, 0);
}

uint64_t sub_100489518()
{
  v167 = *(v0 + 920);
  v1 = *(v0 + 872);
  v145 = *(v0 + 880);
  v147 = *(v0 + 848);
  v129 = *(v0 + 832);
  v131 = *(v0 + 840);
  v151 = *(v0 + 816);
  v122 = *(v0 + 808);
  v2 = *(v0 + 800);
  v115 = *(v0 + 784);
  v117 = *(v0 + 792);
  v159 = *(v0 + 776);
  v3 = *(v0 + 760);
  v4 = *(v0 + 976);
  v152 = *(v0 + 976);
  v112 = *(v0 + 752);
  v141 = *(v0 + 744);
  v133 = *(v0 + 736);
  v169 = *(v0 + 720);
  v5 = *(v0 + 712);
  v161 = *(v0 + 688);
  v139 = *(v0 + 680);
  v135 = *(v0 + 672);
  v149 = *(v0 + 664);
  v165 = *(v0 + 656);
  v157 = *(v0 + 648);
  v137 = *(v0 + 640);
  v143 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 608);
  v125 = *(v0 + 968);

  v127 = *(v0 + 904);
  v1[2] = v125;
  v1[8] = v5;
  v1[9] = v2;
  v119 = dispatch_group_create();
  v3(v6, v4, v7);
  v8 = static OS_dispatch_queue.global(qos:)();
  v115(v6, v7);
  v1[16] = v122;
  v1[19] = v151;
  v171 = v1;
  type metadata accessor for IdentityProofingWatchProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v143;
  v1[18] = v9;
  v143;

  v10 = v119;
  v123 = v8;
  v120 = sub_100487668();
  v11 = type metadata accessor for IdentityProofingProducedAssetManager();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 81) = 0u;
  v3(v6, v152, v7);
  v15 = static OS_dispatch_queue.global(qos:)();
  v115(v6, v7);
  *(v14 + 136) = v15;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 169) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0u;
  *(v14 + 224) = 0u;
  v16 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  v17 = type metadata accessor for PDF417Data();
  v153 = *(*(v17 - 8) + 56);
  v154 = v17;
  v153(v14 + v16, 1, 1);
  v18 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  *(v14 + v18) = sub_10003CDF8(_swiftEmptyArrayStorage);
  v19 = (v14 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
  *v19 = 0;
  v19[1] = 0;
  *(v14 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC) = 0;
  *(v14 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash) = xmmword_1006BF650;
  v20 = v14 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = type metadata accessor for IdentityProofingAssetUploadManager();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 2) = &_swiftEmptyDictionarySingleton;
  *(v24 + 3) = &_swiftEmptyDictionarySingleton;
  *(v24 + 4) = &_swiftEmptyDictionarySingleton;
  *(v24 + 5) = 0;
  v25 = OBJC_IVAR____TtC8coreidvd34IdentityProofingAssetUploadManager_livenessFlowInternalDiagnosticsVideoURL;
  v26 = type metadata accessor for URL();
  (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
  *(v14 + 104) = v10;
  *(v14 + 112) = v123;
  *(v14 + 120) = v127;
  *(v14 + 16) = v24;
  *(v14 + 24) = v120;
  *(v14 + 32) = v125;
  v171[33] = v14;
  type metadata accessor for IdentityProofingBiomeFedStatsUIConfigProvider();
  v27 = swift_allocObject();
  v27[2] = &_swiftEmptySetSingleton;
  v27[3] = 0xD00000000000001FLL;
  v27[4] = 0x8000000100719FD0;
  v27[5] = 1852402547;
  v27[6] = 0xE400000000000000;
  v27[7] = 0x6E6F697369636564;
  v27[8] = 0xE800000000000000;
  v28 = type metadata accessor for IdentityProofingFetchedAssetManager();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  *(v31 + 40) = swift_allocObject();
  *(v31 + 72) = 0xD00000000000002BLL;
  *(v31 + 80) = 0x8000000100719FF0;
  *(v31 + 88) = _swiftEmptyArrayStorage;
  *(v31 + 96) = 2;
  *(v31 + 112) = 0;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0x4024000000000000;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 176) = 0;
  v131(v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow, 1, 1, v129);
  *(v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = 0;
  v32 = (v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair);
  v32[1] = 0u;
  v32[2] = 0u;
  *v32 = 0u;
  *(v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount) = 3;
  v33 = (v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  *v33 = 0;
  v33[1] = 0;
  *(v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;
  *(v31 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) = 0;
  *(v31 + 16) = v125;
  *(v31 + 24) = v5;
  *(v31 + 32) = v14;
  *(v31 + 48) = v133;
  *(v31 + 56) = v165;
  *(v31 + 104) = v10;
  *(v31 + 120) = v123;
  *(v31 + 64) = v27;
  v171[32] = v31;
  v34 = *(v149 + 48);
  v35 = *(v149 + 52);
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  v150 = v10;
  v148 = v123;

  v36 = IdentityProofingAttributeConfigHelper.init()();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  type metadata accessor for IdentityProofingLivenessStepUpUIProvider();
  v38 = swift_allocObject();
  v38[2] = swift_allocObject();
  v38[3] = v165;
  v38[4] = v14;
  v38[5] = v31;
  v38[6] = v37;
  v38[7] = v139;
  v113 = v38;
  v38[8] = v169;
  sub_100020260(v0 + 136, v0 + 336);
  v39 = v171[33];
  v40 = *(v0 + 360);
  v41 = sub_10001F370(v0 + 336, v40);
  v42 = *(v40 - 8);
  v43 = *(v42 + 64) + 15;
  v44 = swift_task_alloc();
  (*(v42 + 16))(v44, v41, v40);
  v45 = *v44;
  *(v0 + 400) = v141;
  *(v0 + 408) = &off_10080ADD0;
  *(v0 + 376) = v45;
  type metadata accessor for IdentityProofingActionNotificationProvider();
  v46 = swift_allocObject();
  v47 = sub_10001F370(v0 + 376, v141);
  v48 = *(v145 + 64) + 15;
  v49 = swift_task_alloc();
  (*(v145 + 16))(v49, v47, v141);
  v50 = *v49;
  v46[5] = v141;
  v46[6] = &off_10080ADD0;
  v46[2] = v50;
  v51 = swift_allocObject();
  v46[8] = v39;
  v46[9] = v51;
  v46[7] = v31;
  swift_retain_n();
  swift_retain_n();

  sub_10000BB78((v0 + 376));

  sub_10000BB78((v0 + 336));

  v52 = sub_1002A5B90();
  type metadata accessor for IdentityProofingCancellationProvider();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v46;
  v171[17] = v53;
  v54 = v171[15];
  v55 = qword_100832C50;

  v56 = v159;

  v170 = v46;

  v155 = v54;

  if (v55 != -1)
  {
    swift_once();
  }

  v130 = *(v0 + 944);
  v132 = *(v0 + 952);
  v57 = *(v0 + 920);
  v144 = *(v0 + 896);
  v146 = *(v0 + 888);
  v158 = *(v0 + 872);
  v134 = *(v0 + 856);
  v136 = *(v0 + 864);
  v140 = *(v0 + 824);
  v121 = *(v0 + 816);
  v124 = *(v0 + 808);
  v164 = *(v0 + 800);
  v168 = *(v0 + 776);
  v118 = *(v0 + 736);
  v162 = *(v0 + 728);
  v126 = *(v0 + 720);
  v163 = *(v0 + 712);
  v58 = *(v0 + 696);
  v109 = *(v0 + 704);
  v160 = *(v0 + 688);
  v108 = *(v0 + 680);
  v166 = *(v0 + 656);
  v59 = *(v0 + 648);
  v142 = *(v0 + 624);
  v116 = *(v0 + 600);
  v128 = *(v0 + 584);
  v138 = *(v0 + 568);
  v106 = qword_100882310;
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v60 = swift_allocObject();
  *(v60 + 16) = 3600;
  v61 = swift_allocObject();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  type metadata accessor for IdentityProofingUploadsHelper();
  v63 = swift_allocObject();
  type metadata accessor for NetworkMonitor();

  *(v63 + 16) = static NetworkMonitor.shared.getter();
  *(v63 + 24) = v62;
  type metadata accessor for PassManager();
  v64 = swift_allocObject();
  v65 = swift_allocObject();
  v66 = [objc_allocWithZone(PKPaymentService) init];
  *(v0 + 440) = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  *(v0 + 448) = &off_10080C410;
  *(v0 + 416) = v66;
  type metadata accessor for IdentityPendingProvisioningManager();
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  sub_10001F358((v0 + 416), v67 + 24);
  type metadata accessor for IdentityProofingDisplayManager();
  v68 = swift_allocObject();
  v68[2] = 0;
  v69 = swift_allocObject();
  v68[5] = v160;
  v68[6] = v113;
  v68[17] = v166;
  v68[18] = v162;
  v68[3] = v168;
  v68[4] = v59;
  v68[19] = v31;
  v68[7] = v69;
  v68[8] = v106;
  v68[9] = v60;
  v68[10] = v63;
  v68[11] = v64;
  v68[12] = v163;
  v68[13] = v155;
  v68[14] = v164;
  v68[15] = v67;
  v68[16] = v108;
  *(v158 + 240) = v68;
  v103 = v171[2];
  v70 = *(v158 + 24);
  v101 = *(v158 + 48);
  v71 = *(v158 + 112);
  v156 = *(v158 + 120);
  v72 = v171[17];
  v107 = *(v158 + 104);
  type metadata accessor for IdentityProofingLivenessDataProvider();
  v114 = swift_allocObject();
  *(v114 + 16) = v71;
  v73 = *(v158 + 88);
  v102 = v171[32];
  v104 = v171[33];
  v105 = v171[18];
  sub_100020260(v0 + 16, v0 + 456);
  v172 = swift_allocObject();
  *(v172 + 16) = 3600;
  v74 = swift_allocObject();
  v75 = swift_allocObject();
  *(v75 + 16) = v74;
  v76 = swift_allocObject();
  v77 = v70;

  v110 = v101;

  v78 = v73;

  v79 = v103;
  *(v76 + 16) = static NetworkMonitor.shared.getter();
  *(v76 + 24) = v75;
  v111 = sub_100487AB4();
  v80 = type metadata accessor for IdentityProofingRequestManager();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  v83[3] = 0;
  v83[7] = swift_allocObject();
  (v153)(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data, 1, 1, v154);
  *(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = 0;
  *(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage) = xmmword_1006BF650;
  v84 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  *v84 = 0;
  v84[1] = 0;
  v85 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId);
  *v85 = 0;
  v85[1] = 0;
  v86 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
  *v86 = 0;
  v86[1] = 0;
  v87 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  *v87 = 0;
  v87[1] = 0;
  v88 = v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
  *v88 = 0;
  v88[8] = 1;
  v89 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_termsAndConditions);
  *v89 = 0;
  v89[1] = 0;
  v90 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  *v90 = 0;
  v90[1] = 0;
  *(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = 0;
  v83[2] = v79;
  v83[3] = v70;
  v83[4] = v107;
  v83[5] = v110;
  v83[6] = v156;
  v83[10] = v72;
  v83[11] = v114;
  v83[12] = v170;
  v83[13] = v78;
  v83[14] = v102;
  v83[15] = v104;
  v83[8] = v105;
  v83[16] = v172;
  sub_100020260(v0 + 456, v0 + 496);
  type metadata accessor for IdentityProofingCredentialProvider();
  v91 = swift_allocObject();
  *(v91 + 16) = v102;
  v92 = *(v0 + 512);
  *(v91 + 24) = *(v0 + 496);
  *(v91 + 40) = v92;
  *(v91 + 56) = *(v0 + 528);
  v83[9] = v91;
  v83[17] = v76;
  *(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_biomeManager) = v111;

  v93 = v78;

  UUID.init()();
  v94 = UUID.uuidString.getter();
  v96 = v95;

  v130(v116, v128);
  sub_10000BB78((v0 + 456));
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 136));
  v97 = (v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  v98 = *(v83 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId + 8);
  *v97 = v94;
  v97[1] = v96;

  *(v158 + 248) = v83;
  sub_10001F358((v0 + 176), v158 + 160);
  *(v158 + 80) = v134;
  *(v158 + 200) = v136;
  *(v158 + 208) = *(v0 + 536);
  *(v158 + 224) = v140;
  *(v158 + 232) = &off_10080C400;
  sub_10000BB78((v0 + 96));

  sub_10000BB78((v0 + 56));

  *v138 = v158;

  v99 = *(v0 + 8);

  return v99();
}

uint64_t sub_10048A4CC()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v20[3] = v5;
  v20[4] = &off_10080ADD0;
  v20[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v20, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v18 = v5;
  v19 = &off_10080ADD0;
  *&v17 = v14;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v15 = *(qword_1008824A8 + 152);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v17, v8 + 24);
  *(v8 + 64) = v7;
  sub_10000BB78(v20);
  return v8;
}

uint64_t sub_10048A728()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "error: identity management ui client init %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10048A8F4(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  *(v3 + 80) = v10;
  v11 = *(v10 - 8);
  *(v3 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10048AA70, 0, 0);
}

uint64_t sub_10048AA70()
{
  v1 = *(v0 + 24);
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_10048AD4C;
  v3 = *(v0 + 24);

  return sub_100488518();
}

uint64_t sub_10048AD4C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_10048AE4C, 0, 0);
}

uint64_t sub_10048AE4C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 264);
  v3 = *(v1 + 56);
  *(v0 + 120) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_10048AF04;
  v6 = *(v0 + 144);
  v7 = *(v0 + 16);

  return sub_1001CBE48(v3, v6, v7);
}

uint64_t sub_10048AF04()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10048B078, 0, 0);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[15];
    v6 = v3[12];
    v7 = v3[9];
    v8 = v3[6];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_10048B078()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  v8 = v0[5];
  v7 = v0[6];
  v14 = v0[4];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v9 = *(v4 + 16);
  v9(v10, v5, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v8 + 8))(v7, v14);

  swift_allocError();
  v9(v11, v5, v6);
  swift_willThrow();

  (*(v4 + 8))(v5, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10048B464(uint64_t a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1004A86EC;

  return sub_10048A8F4(a1, a2);
}

uint64_t sub_10048B528(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10048B6E8, 0, 0);
}

uint64_t sub_10048B6E8()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting prepareForProofingDisplay", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[4];

  v9 = *(v7 + 8);
  v0[16] = v9;
  v9(v5, v6);
  v10._countAndFlagsBits = 0x6664373163653865;
  v11._object = 0x8000000100719F50;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = 0xD000000000000022;
  logMilestone(tag:description:)(v10, v11);
  sub_1004A14E4();
  v12 = v0[11];
  v13 = v0[4];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;

  sub_1003E653C(0, 0, v12, &unk_1006E5A70, v15);

  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_10048BB40;
  v17 = v0[4];

  return sub_100488518();
}

uint64_t sub_10048BB40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;
  v3[18] = a1;

  v6 = swift_task_alloc();
  v3[19] = v6;
  *v6 = v5;
  v6[1] = sub_10048BCA0;
  v7 = v3[3];
  v8 = v3[2];

  return sub_1003094B0(v8, v7);
}

uint64_t sub_10048BCA0(uint64_t a1)
{
  v4 = *(*v2 + 152);
  v5 = *v2;
  v5[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048BE34, 0, 0);
  }

  else
  {
    v6 = v5[18];
    v8 = v5[14];
    v7 = v5[15];
    v10 = v5[10];
    v9 = v5[11];
    v11 = v5[7];

    v12 = v5[1];

    return v12(a1);
  }
}

uint64_t sub_10048BE34()
{
  v1 = v0[18];

  v2 = v0[20];
  v14 = v0[16];
  v15 = v0[15];
  v3 = v0[14];
  v12 = v0[13];
  v13 = v0[12];
  v16 = v0[11];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10048C0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100007224(&qword_100840E28, &unk_1006DD980);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_100845870, &qword_1006E5A80) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_100007224(&qword_100845878, &qword_1006E5A88);
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = sub_100007224(&unk_100845880, &qword_1006E5A90);
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10048C2B8, 0, 0);
}

uint64_t sub_10048C2B8()
{
  v1 = v0[15];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityManagementSessionProxy Starting to listen for display error messages", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];

  v8 = *(v7 + 8);
  v0[16] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_10048C3EC;
  v10 = v0[2];

  return sub_100488518();
}

uint64_t sub_10048C3EC(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10048C4EC, 0, 0);
}

uint64_t sub_10048C4EC()
{
  v1 = v0[18];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  sub_1003091E0(v3);

  AsyncCompactMapSequence.base.getter();
  sub_1000BA30C(&qword_100840E30, &qword_100840E28, &unk_1006DD980);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v4 + 8))(v3, v5);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_10048C684;
  v10 = v0[11];

  return sub_10048C9F8(0, 0);
}

uint64_t sub_10048C684(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v7 = *v3;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;

  if (!v2)
  {

    return _swift_task_switch(sub_10048C798, 0, 0);
  }

  return result;
}

uint64_t sub_10048C798()
{
  if (v0[21])
  {
    v1 = v0[2];
    v2 = *(v1 + 80);
    if (v2)
    {
      v3 = v0[20];
      v4 = *(v1 + 80);
      swift_unknownObjectRetain();
      v5 = String._bridgeToObjectiveC()();

      [v2 didGetProofingDisplayErrorMessage:v5];
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = v0[21];
    }

    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_10048C684;
    v22 = v0[11];

    return sub_10048C9F8(0, 0);
  }

  else
  {
    v6 = v0[14];
    (*(v0[10] + 8))(v0[11], v0[9]);
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "IdentityManagementSessionProxy Finished listening for display error messages", v9, 2u);
    }

    v10 = v0[15];
    v11 = v0[16];
    v13 = v0[13];
    v12 = v0[14];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[8];
    v17 = v0[5];
    v23 = v0[4];

    v11(v12, v14);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10048C9F8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_10048CA8C, v4, v6);
}

uint64_t sub_10048CA8C()
{
  v1 = v0[12];
  v0[15] = sub_100007224(&unk_100845880, &qword_1006E5A90);
  v0[16] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v2 = sub_100007224(&qword_100845870, &qword_1006E5A80);
  v3 = sub_1000BA30C(&unk_100845890, &qword_100845870, &qword_1006E5A80);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_10048CBB4;
  v7 = v0[10];
  v8 = v0[11];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v7, v8, v5, v2, v3);
}

uint64_t sub_10048CBB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_10048CE3C;
  }

  else
  {
    (*(v2 + 128))();
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_10048CCDC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10048CCDC()
{
  v1 = v0[9];
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[15];
    v3 = v0[12];
    v0[8] = v1;
    v4 = AsyncCompactMapSequence.Iterator.transform.getter();
    v0[19] = v5;
    v10 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_10048CEB0;

    return (v10)(v0 + 6, v0 + 8);
  }

  else
  {
    v9 = v0[1];

    return v9(0, 0);
  }
}

uint64_t sub_10048CE3C()
{
  (*(v0 + 128))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048CEB0()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v8 = *v0;

  v5 = *(v1 + 112);
  v6 = *(v1 + 104);

  return _swift_task_switch(sub_10048D010, v6, v5);
}

uint64_t sub_10048D010()
{
  if (v0[7])
  {
    v1 = v0[6];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = v0[12];
    v0[15] = sub_100007224(&unk_100845880, &qword_1006E5A90);
    v0[16] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    v5 = sub_100007224(&qword_100845870, &qword_1006E5A80);
    v6 = sub_1000BA30C(&unk_100845890, &qword_100845870, &qword_1006E5A80);
    v7 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_10048CBB4;
    v10 = v0[10];
    v11 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v10, v11, v8, v5, v6);
  }
}

uint64_t sub_10048D30C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A8580;

  return sub_10048B528(v7, a2);
}

uint64_t sub_10048D580(void *a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v5[6] = v9;
  v10 = a1;
  v11 = a2;

  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_10048D68C;

  return sub_1004A3C88(v10, v11);
}

uint64_t sub_10048D68C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 40);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10048D868(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10048D9EC, 0, 0);
}

uint64_t sub_10048D9EC()
{
  v1 = v0[18];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchImageQualitySettings", v4, 2u);
  }

  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[8];

  v9 = *(v7 + 8);
  v0[19] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_10048DDB4;
  v12 = v0[8];

  return sub_100488518();
}

uint64_t sub_10048DDB4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  v3[21] = a1;

  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v5;
  v6[1] = sub_10048DF00;
  v7 = v3[7];

  return sub_10030B5F0(v7);
}

uint64_t sub_10048DF00(uint64_t a1)
{
  v4 = *(*v2 + 176);
  v5 = *v2;
  v5[23] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048E08C, 0, 0);
  }

  else
  {
    v6 = v5[21];
    v8 = v5[17];
    v7 = v5[18];
    v9 = v5[14];
    v10 = v5[11];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_10048E08C()
{
  v1 = v0[21];

  v2 = v0[23];
  v14 = v0[19];
  v15 = v0[18];
  v3 = v0[17];
  v4 = v0[14];
  v12 = v0[16];
  v13 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10048E47C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10048D868(v5);
}

uint64_t sub_10048E6D0(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = a1;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1004A8580;

  return sub_1004A43B8(v6);
}

uint64_t sub_10048E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10048E934, 0, 0);
}

uint64_t sub_10048E934()
{
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting provisionIdentity", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[11];

  v9 = *(v7 + 8);
  v0[22] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_10048ED00;
  v12 = v0[11];

  return sub_100488518();
}

uint64_t sub_10048ED00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;
  v3[24] = a1;

  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v5;
  v6[1] = sub_10048EE88;
  v7 = v3[10];
  v8 = v3[9];
  v9 = v3[8];
  v10 = v3[7];

  return sub_10030FB1C(v10, v9, v8, v7);
}

uint64_t sub_10048EE88()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10048F000, 0, 0);
  }

  else
  {
    v4 = v3[24];
    v6 = v3[20];
    v5 = v3[21];
    v7 = v3[17];
    v8 = v3[14];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_10048F000()
{
  v1 = v0[24];

  v2 = v0[26];
  v14 = v0[22];
  v15 = v0[21];
  v3 = v0[20];
  v4 = v0[17];
  v12 = v0[19];
  v13 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10048F40C(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a1;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_10048F500;

  return sub_10048E7A8(v11, v8, v10, a3);
}

uint64_t sub_10048F500()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 32);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_10048F6C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 216) = a4;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  v8 = *(v7 - 8);
  *(v6 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  v10 = type metadata accessor for DIPError();
  *(v6 + 120) = v10;
  v11 = *(v10 - 8);
  *(v6 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v6 + 144) = v13;
  v14 = *(v13 - 8);
  *(v6 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10048F854, 0, 0);
}

uint64_t sub_10048F854()
{
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing flow", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[11];

  v9 = *(v7 + 8);
  v0[22] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_10048FC20;
  v12 = v0[11];

  return sub_100488518();
}

uint64_t sub_10048FC20(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10048FD20, 0, 0);
}

uint64_t sub_10048FD20()
{
  v1 = *(*(v0 + 192) + 248);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_10048FDC4;
  v3 = *(v0 + 216);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);

  return sub_1001D2B9C(v7, v6, v4, v3, v5);
}

uint64_t sub_10048FDC4(uint64_t a1)
{
  v4 = *(*v2 + 200);
  v5 = *v2;
  v5[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048FF50, 0, 0);
  }

  else
  {
    v6 = v5[24];
    v8 = v5[20];
    v7 = v5[21];
    v9 = v5[17];
    v10 = v5[14];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_10048FF50()
{
  v1 = v0[24];

  v2 = v0[26];
  v14 = v0[22];
  v15 = v0[21];
  v3 = v0[20];
  v4 = v0[17];
  v12 = v0[19];
  v13 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100490374(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void *aBlock, uint64_t a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  v13 = a1;
  v14 = a2;

  v15 = swift_task_alloc();
  v7[6] = v15;
  *v15 = v7;
  v15[1] = sub_100490474;

  return sub_10048F6C4(v13, v14, a3, a4, a5);
}

uint64_t sub_100490474(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100490650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1004907D0, 0, 0);
}

uint64_t sub_1004907D0()
{
  v1 = *(v0 + 48);
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_100490AAC;
  v3 = *(v0 + 48);

  return sub_100488518();
}

uint64_t sub_100490AAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = a1;

  v6 = swift_task_alloc();
  v3[18] = v6;
  *v6 = v5;
  v6[1] = sub_100490C34;
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[3];
  v10 = v3[2];

  return sub_10030C5AC(v10, v9, v8, v7);
}

uint64_t sub_100490C34(uint64_t a1)
{
  v4 = *(*v2 + 144);
  v5 = *v2;
  v5[19] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100490DAC, 0, 0);
  }

  else
  {
    v6 = v5[17];
    v7 = v5[15];
    v8 = v5[12];
    v9 = v5[9];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100490DAC()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v13 = v0[7];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v3 + 16);
  v8(v9, v4, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v7 + 8))(v6, v13);

  swift_allocError();
  v8(v10, v4, v5);
  swift_willThrow();

  (*(v3 + 8))(v4, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004911AC(void *a1, void *a2, int a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[6] = v9;
  v11 = a1;
  v12 = a2;

  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1004912AC;

  return sub_100490650(v11, v12, v8, v10);
}

uint64_t sub_1004912AC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  v12 = *(v5 + 40);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 40), a1, 0);
    _Block_release(v12);
  }

  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1004914A4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10049161C, 0, 0);
}

uint64_t sub_10049161C()
{
  v1 = *(v0 + 16);
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1004918F0;
  v3 = *(v0 + 16);

  return sub_100488518();
}

uint64_t sub_1004918F0(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1004919F0, 0, 0);
}

uint64_t sub_1004919F0()
{
  v1 = *(*(v0 + 104) + 248);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_100491A84;

  return sub_1001DD4A8();
}

uint64_t sub_100491A84(uint64_t a1)
{
  v4 = *(*v2 + 112);
  v5 = *v2;
  v5[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100491BFC, 0, 0);
  }

  else
  {
    v6 = v5[13];
    v7 = v5[11];
    v8 = v5[8];
    v9 = v5[5];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100491BFC()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v7 = v0[4];
  v6 = v0[5];
  v13 = v0[3];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v3 + 16);
  v8(v9, v4, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v7 + 8))(v6, v13);

  swift_allocError();
  v8(v10, v4, v5);
  swift_willThrow();

  (*(v3 + 8))(v4, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100491FC4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_1004914A4();
}

uint64_t sub_10049206C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004921E4, 0, 0);
}

uint64_t sub_1004921E4()
{
  v1 = *(v0 + 24);
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1004924B8;
  v3 = *(v0 + 24);

  return sub_100488518();
}

uint64_t sub_1004924B8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1004925B8, 0, 0);
}

uint64_t sub_1004925B8()
{
  v1 = *(v0[14] + 248);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_100492654;
  v3 = v0[2];

  return sub_1001DDE38(v3);
}

uint64_t sub_100492654(uint64_t a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  v5[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004927CC, 0, 0);
  }

  else
  {
    v6 = v5[14];
    v7 = v5[12];
    v8 = v5[9];
    v9 = v5[6];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1004927CC()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v13 = v0[4];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v8 = *(v3 + 16);
  v8(v9, v4, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v7 + 8))(v6, v13);

  swift_allocError();
  v8(v10, v4, v5);
  swift_willThrow();

  (*(v3 + 8))(v4, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100492BA8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10049206C(a1);
}

uint64_t sub_100492C68()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100492DEC, 0, 0);
}

uint64_t sub_100492DEC()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting to fetch Identity Proofing Terms and Conditions", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[18] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_1004931B0;
  v12 = v0[7];

  return sub_100488518();
}

uint64_t sub_1004931B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v7 = *v1;
  *(v3 + 160) = a1;

  v5 = swift_task_alloc();
  *(v3 + 168) = v5;
  *v5 = v7;
  v5[1] = sub_1004932E0;

  return sub_10030AE94();
}

uint64_t sub_1004932E0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 168);
  v7 = *v3;
  v7[22] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100493474, 0, 0);
  }

  else
  {
    v8 = v7[20];
    v10 = v7[16];
    v9 = v7[17];
    v11 = v7[13];
    v12 = v7[10];

    v13 = v7[1];

    return v13(a1, a2);
  }
}

uint64_t sub_100493474()
{
  v1 = v0[20];

  v2 = v0[22];
  v14 = v0[18];
  v15 = v0[17];
  v3 = v0[16];
  v4 = v0[13];
  v12 = v0[15];
  v13 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10049384C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004938F4;

  return sub_100492C68();
}

uint64_t sub_1004938F4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100493A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100493C14, 0, 0);
}

uint64_t sub_100493C14()
{
  v1 = v0[21];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing flow with authCode", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v8 = v0[11];

  v9 = *(v7 + 8);
  v0[22] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_100493FE0;
  v12 = v0[11];

  return sub_100488518();
}

uint64_t sub_100493FE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;
  v3[24] = a1;

  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v5;
  v6[1] = sub_100494168;
  v7 = v3[10];
  v8 = v3[9];
  v9 = v3[8];
  v10 = v3[7];

  return sub_10030C194(v10, v9, v8, v7);
}

uint64_t sub_100494168(uint64_t a1)
{
  v4 = *(*v2 + 200);
  v5 = *v2;
  v5[26] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004942F4, 0, 0);
  }

  else
  {
    v6 = v5[24];
    v8 = v5[20];
    v7 = v5[21];
    v9 = v5[17];
    v10 = v5[14];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_1004942F4()
{
  v1 = v0[24];

  v2 = v0[26];
  v14 = v0[22];
  v15 = v0[21];
  v3 = v0[20];
  v4 = v0[17];
  v12 = v0[19];
  v13 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100494700(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a1;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1004947F4;

  return sub_100493A88(v11, v8, v10, a3);
}

uint64_t sub_1004947F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_100494B64(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = a1;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_100494C3C;

  return sub_1004A4E18(v6);
}

uint64_t sub_100494C3C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100494DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100494F68, 0, 0);
}

uint64_t sub_100494F68()
{
  v23 = v0;
  v1 = v0[16];
  v2 = v0[5];
  v3 = v0[3];
  defaultLogger()();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v20 = v0[13];
    v21 = v0[16];
    v8 = v0[4];
    v7 = v0[5];
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v11 = 136380931;
    *(v11 + 4) = sub_100141FE4(v10, v9, v22);
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_100141FE4(v8, v7, v22);
    _os_log_impl(&_mh_execute_header, v4, v5, "Checking proofing status for %{private}s in %{private}s", v11, 0x16u);
    swift_arrayDestroy();

    v12 = *(v6 + 8);
    v12(v21, v20);
  }

  else
  {
    v13 = v0[16];
    v14 = v0[13];
    v15 = v0[14];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v0[17] = v12;
  v16 = v0[6];
  sub_1004A14E4();
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = sub_1004953B0;
  v18 = v0[6];

  return sub_100488518();
}

uint64_t sub_1004953B0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1004954B0, 0, 0);
}

uint64_t sub_1004954B0()
{
  v1 = *(v0[19] + 272);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_100495550;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1002DCF70(v6, v5, v3, v4);
}

uint64_t sub_100495550(uint64_t a1)
{
  v4 = *(*v2 + 160);
  v5 = *v2;
  v5[21] = a1;
  v5[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004957FC, 0, 0);
  }

  else
  {
    v6 = v5[19];
    v7 = swift_task_alloc();
    v5[23] = v7;
    *v7 = v5;
    v7[1] = sub_1004956D4;

    return sub_10059D940(a1);
  }
}

uint64_t sub_1004956D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_100495B08;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_100495A5C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004957FC()
{
  v1 = v0[22];
  v2 = v0[19];

  v14 = v0[17];
  v15 = v0[16];
  v3 = v0[15];
  v4 = v0[12];
  v12 = v0[14];
  v13 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100495A5C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];
  v8 = v0[25];

  return v7(v8);
}

uint64_t sub_100495B08()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);

  v14 = *(v0 + 136);
  v15 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v12 = *(v0 + 112);
  v13 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  (*(*(v0 + 64) + 104))(*(v0 + 72), enum case for DIPError.Code.internalError(_:), *(v0 + 56));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100495F04(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100496000;

  return sub_100494DDC(v5, v7, v8, v10);
}

uint64_t sub_100496000(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 24), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_1004961E4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100496368, 0, 0);
}

uint64_t sub_100496368()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if proofing flow is available", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1004966E4;
  v11 = v0[2];

  return sub_100488518();
}

uint64_t sub_1004966E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v3 + 120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  *v5 = v7;
  v5[1] = sub_100496814;

  return sub_10030EE9C();
}

uint64_t sub_100496814(uint64_t a1)
{
  v4 = *(*v2 + 128);
  v5 = *v2;
  v5[17] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004969A0, 0, 0);
  }

  else
  {
    v6 = v5[15];
    v8 = v5[11];
    v7 = v5[12];
    v9 = v5[8];
    v10 = v5[5];

    v11 = v5[1];

    return v11(a1);
  }
}

uint64_t sub_1004969A0()
{
  v1 = v0[15];

  v2 = v0[17];
  v14 = v0[13];
  v15 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  v12 = v0[10];
  v13 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v7 = *(v5 + 16);
  v7(v8, v4, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v14(v3, v13);

  swift_allocError();
  v7(v9, v4, v6);
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100496D78(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_1004961E4();
}

uint64_t sub_100496E20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100496FA4, 0, 0);
}

uint64_t sub_100496FA4()
{
  v1 = v0[13];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if a watch is paired to this device and if its preflight check is successful.", v4, 2u);
  }

  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1004972D4;
  v10 = v0[3];

  return sub_100488518();
}

uint64_t sub_1004972D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = a1;

  v6 = swift_task_alloc();
  v3[16] = v6;
  *v6 = v5;
  v6[1] = sub_100497420;
  v7 = v3[2];

  return sub_100309908(v7);
}

uint64_t sub_100497420(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v12 = *v1;

  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[9];
  v9 = v3[6];

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t sub_100497744(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100497808;

  return sub_100496E20(v5);
}

uint64_t sub_100497808(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_10049796C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100497AF0, 0, 0);
}

uint64_t sub_100497AF0()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking watch passes.", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100497E68;
  v10 = v0[2];

  return sub_100488518();
}

uint64_t sub_100497E68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(v3 + 112) = a1;

  v5 = swift_task_alloc();
  *(v3 + 120) = v5;
  *v5 = v7;
  v5[1] = sub_100497F98;

  return sub_10030A28C();
}

uint64_t sub_100497F98(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 40);
  v11 = *v1;

  v9 = *(v11 + 8);

  return v9(a1);
}

uint64_t sub_1004982AC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100498354;

  return sub_10049796C();
}

uint64_t sub_100498354(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1004984E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1004986A8, 0, 0);
}

uint64_t sub_1004986A8()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = IdentityBoundACLType.rawValue.getter();
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting global bound ACL %{public}ld", v5, 0xCu);
  }

  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[5];

  v10 = *(v8 + 8);
  v0[17] = v10;
  v0[18] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  sub_1004A14E4();
  v11 = *(v0[5] + 56);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_100498A54;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return sub_1001780FC(v15, v13, v14);
}

uint64_t sub_100498A54()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100498CA8;
  }

  else
  {
    v3 = sub_100498B68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100498B68()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[5];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1003E653C(0, 0, v4, &unk_1006E5A60, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100498CA8()
{
  v1 = v0[20];
  v12 = v0[17];
  v13 = v0[18];
  v2 = v0[15];
  v11 = v0[13];
  v14 = v0[16];
  v15 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12(v2, v11);

  swift_allocError();
  v6(v8, v3, v5);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100498F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100498FC0, 0, 0);
}

uint64_t sub_100498FC0()
{
  v1 = *(*(*(v0 + 16) + 72) + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100499064;

  return sub_1006738C8();
}

uint64_t sub_100499064(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100499164, 0, 0);
}

uint64_t sub_100499164()
{
  v19 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = [*(v0 + 56) deviceID];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(0xD00000000000001DLL, 0x8000000100719F10, &v18);
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Watch Paired and a new GlobalAuthACL set, marking any prearmtrust for deletion", v13, 0xCu);
      sub_10000BB78(v14);
    }

    (*(v11 + 8))(v10, v12);
    sub_10058FE8C(v4, v6);
  }

  v15 = *(v0 + 40);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1004994B8(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v4[4] = v8;
  v4[5] = v10;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1004995A4;

  return sub_1004984E8(v8, v10, a2);
}

uint64_t sub_1004995A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  sub_10000B90C(v7, v6);
  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100499768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1004998F4, 0, 0);
}

uint64_t sub_1004998F4()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting modified global bound ACL", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[17] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(v0[6] + 56);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_100499C88;
  v12 = v0[4];
  v13 = v0[5];
  v15 = v0[2];
  v14 = v0[3];

  return sub_100178610(v15, v14, v12, v13);
}

uint64_t sub_100499C88(uint64_t a1)
{
  v4 = *(*v2 + 144);
  v5 = *v2;
  v5[19] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100499DFC, 0, 0);
  }

  else
  {
    v7 = v5[15];
    v6 = v5[16];
    v8 = v5[12];
    v9 = v5[9];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100499DFC()
{
  v1 = v0[19];
  v13 = v0[17];
  v14 = v0[16];
  v2 = v0[15];
  v3 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v13(v2, v12);

  swift_allocError();
  v6(v8, v3, v5);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10049A1F0(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v4[6] = v12;
  v4[7] = v14;
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_10049A300;

  return sub_100499768(v9, v11, v12, v14);
}

uint64_t sub_10049A300()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = v3[5];
  v9 = v3[4];
  sub_10000B90C(v3[6], v3[7]);
  sub_10000B90C(v9, v8);
  if (v2)
  {
    isa = _convertErrorToNSError(_:)();

    v11 = isa;
    v12 = 0;
  }

  else
  {
    type metadata accessor for UUID();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = isa;
    v11 = 0;
  }

  v13 = v4[3];
  (v13)[2](v13, v12, v11);

  _Block_release(v13);
  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_10049A4F4()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10049A678, 0, 0);
}

uint64_t sub_10049A678()
{
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving bio binding unbound ACL", v4, 2u);
  }

  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[20];

  v9 = *(v7 + 8);
  v0[31] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(*(v0[20] + 56) + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10049AA3C;
  v11 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100812768;
  v0[14] = v11;
  [v10 bioBindingUnboundACL:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10049AA3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10049ABE8;
  }

  else
  {
    v3 = sub_10049AB4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10049AB4C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[23];

  v7 = v0[1];

  return v7(v2, v1);
}

uint64_t sub_10049ABE8()
{
  v1 = v0[32];
  swift_willThrow();
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v15 = v0[27];
  v16 = v0[31];
  v6 = v0[24];
  v7 = v0[25];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v7 + 16))(v8, v5, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v16(v3, v15);
  (*(v7 + 8))(v5, v6);

  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[26];
  v12 = v0[23];

  v13 = v0[1];

  return v13(0, 0xF000000000000000);
}

uint64_t sub_10049AF80(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86F0;

  return sub_10049A4F4();
}

uint64_t sub_10049B028()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[27] = v8;
  v9 = *(v8 - 8);
  v1[28] = v9;
  v10 = *(v9 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10049B1AC, 0, 0);
}

uint64_t sub_10049B1AC()
{
  v1 = v0[30];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving passcode binding unbound ACL", v4, 2u);
  }

  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[20];

  v9 = *(v7 + 8);
  v0[31] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(*(v0[20] + 56) + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10049B570;
  v11 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_100812740;
  v0[14] = v11;
  [v10 passcodeBindingUnboundACL:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10049B570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_10049B680;
  }

  else
  {
    v3 = sub_1004A8578;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10049B680()
{
  v1 = v0[32];
  swift_willThrow();
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v15 = v0[27];
  v16 = v0[31];
  v6 = v0[24];
  v7 = v0[25];
  (*(v0[22] + 104))(v0[23], enum case for DIPError.Code.internalError(_:), v0[21]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v7 + 16))(v8, v5, v6);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v16(v3, v15);
  (*(v7 + 8))(v5, v6);

  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[26];
  v12 = v0[23];

  v13 = v0[1];

  return v13(0, 0xF000000000000000);
}

uint64_t sub_10049BA18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86F0;

  return sub_10049B028();
}

uint64_t sub_10049BAC0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049BC44, 0, 0);
}

uint64_t sub_10049BC44()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving bound ACL", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(v0[2] + 56);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_10049BF84;

  return sub_100177D88();
}

uint64_t sub_10049BF84(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 112);
  v7 = *v3;
  v7[15] = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10049C108, 0, 0);
  }

  else
  {
    v9 = v7[11];
    v8 = v7[12];
    v10 = v7[8];
    v11 = v7[5];

    v12 = v7[1];

    return v12(a1, a2);
  }
}

uint64_t sub_10049C108()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v14 = v0[9];
  v15 = v0[13];
  v5 = v0[6];
  v6 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  (*(v6 + 16))(v7, v4, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v15(v2, v14);
  (*(v6 + 8))(v4, v5);

  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];
  v11 = v0[5];

  v12 = v0[1];

  return v12(0, 0xF000000000000000);
}

uint64_t sub_10049C49C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049C544;

  return sub_10049BAC0();
}

uint64_t sub_10049C544(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000BD94(a1, a2);
  }

  v10 = *(v5 + 24);
  (v10)[2](v10, isa);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10049C6B8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049C83C, 0, 0);
}

uint64_t sub_10049C83C()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleting deleteBoundACL", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v9 = *(v0[2] + 64);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_10049CBB8;

  return sub_10058DFB4();
}

uint64_t sub_10049CBB8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 40);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10049CEA0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10049CF48;

  return sub_10049C6B8();
}

uint64_t sub_10049CF48()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10049D0D0()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10049D254, 0, 0);
}

uint64_t sub_10049D254()
{
  v1 = v0[12];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching bio binding details", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v0[13] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  v10 = *(v0[2] + 56);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_10049D5D4;

  return sub_100178A70();
}

uint64_t sub_10049D5D4(uint64_t a1)
{
  v4 = *(*v2 + 112);
  v5 = *v2;
  v5[15] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10049D748, 0, 0);
  }

  else
  {
    v7 = v5[11];
    v6 = v5[12];
    v8 = v5[8];
    v9 = v5[5];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_10049D748()
{
  v1 = v0[15];
  v13 = v0[13];
  v14 = v0[12];
  v2 = v0[11];
  v3 = v0[8];
  v11 = v0[10];
  v12 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v13(v2, v12);

  swift_allocError();
  v6(v8, v3, v5);
  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10049DB18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_10049D0D0();
}

uint64_t sub_10049DBC0()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_10049DD44, 0, 0);
}

uint64_t sub_10049DD44()
{
  v1 = v0[17];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting getLivenessConfig", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[18] = v9;
  v9(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v10 = v0[6];
  sub_10000BA08(v0 + 2, v0[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v0 + 2);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_10049E108;
  v12 = v0[7];

  return sub_100488518();
}