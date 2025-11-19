uint64_t sub_10022FC94()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 1728);
  v16 = *(v14 + 1720);
  v17 = sub_100005558();
  sub_1001B2DDC(v17, v18);
  v19 = sub_1001B6ACC();
  sub_100231B2C(v19, v20);
  v21 = sub_100233250();
  sub_1002319FC(v21, v15, &qword_1003B5800);
  sub_1002330B4();
  if (v23)
  {
    sub_1001B2DDC(v22, &qword_1003B5800);
  }

  else
  {
    v24 = sub_100232F54();
    v25(v24);
    sub_1001A6C04(&qword_1003B6BB0);
    sub_1001F7388();
    v26 = swift_allocObject();
    v27 = sub_100232FC0(v26, xmmword_1002C3960);
    v28(v27);
    v29 = objc_allocWithZone(type metadata accessor for BulletinAttachment());
    v26[2].n128_u64[0] = sub_100005920();
    v30 = sub_1001F761C();
    sub_100231AB8(v30, v31);
    v32 = sub_10000595C();
    v33(v32);
  }

  v34 = sub_10023320C();
  sub_1002319FC(v34, v15, &qword_1003B5800);
  sub_100233100(v15);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    sub_1002333D4(v35);
    v36 = sub_10023308C();
    v37(v36);
  }

  [sub_100004864() setGameIcon:v16];

  sub_100233200();
  sub_1001B2DDC(v38, v39);
  sub_100233200();
  sub_1001B2DDC(v40, v41);

  sub_1000046F8();
  sub_100005B0C();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10022FF74()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100230058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 1736);
  v16 = *(v14 + 1720);
  v17 = sub_100005558();
  sub_1001B2DDC(v17, v18);
  v19 = sub_1001B6ACC();
  sub_100231B2C(v19, v20);
  v21 = sub_100233250();
  sub_1002319FC(v21, v15, &qword_1003B5800);
  sub_1002330B4();
  if (v23)
  {
    sub_1001B2DDC(v22, &qword_1003B5800);
  }

  else
  {
    v24 = sub_100232F54();
    v25(v24);
    sub_1001A6C04(&qword_1003B6BB0);
    sub_1001F7388();
    v26 = swift_allocObject();
    v27 = sub_100232FC0(v26, xmmword_1002C3960);
    v28(v27);
    v29 = objc_allocWithZone(type metadata accessor for BulletinAttachment());
    v26[2].n128_u64[0] = sub_100005920();
    v30 = sub_1001F761C();
    sub_100231AB8(v30, v31);
    v32 = sub_10000595C();
    v33(v32);
  }

  v34 = sub_10023320C();
  sub_1002319FC(v34, v15, &qword_1003B5800);
  sub_100233100(v15);
  if (v23)
  {
    v16 = 0;
  }

  else
  {
    sub_1002333D4(v35);
    v36 = sub_10023308C();
    v37(v36);
  }

  [sub_100004864() setGameIcon:v16];

  sub_100233200();
  sub_1001B2DDC(v38, v39);
  sub_100233200();
  sub_1001B2DDC(v40, v41);

  sub_1000046F8();
  sub_100005B0C();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100230254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF540;

  return sub_10022A6B8();
}

uint64_t sub_100230314(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  v4 = a2[5];
  if (v4)
  {
    v5 = a2[4];
    v6 = *a2;
    v7 = a2[1];
    v8 = swift_task_alloc();
    v2[6] = v8;
    *v8 = v2;
    v8[1] = sub_1002304F0;

    return sub_10022C00C(a1, v5, v4, v6, v7);
  }

  else
  {
    v10 = a2[7];
    if (v10)
    {
      v11 = a2[6];
      v12 = *a2;
      v13 = a2[1];
      v14 = swift_task_alloc();
      v2[7] = v14;
      *v14 = v2;
      v14[1] = sub_1002305D4;

      return sub_10022CB70(a1, v12, v13, v11, v10);
    }

    else
    {
      v16 = *a2;
      v15 = a2[1];
      v2[8] = *a2;
      v2[9] = v15;
      v17 = swift_task_alloc();
      v2[10] = v17;
      *v17 = v2;
      v17[1] = sub_1002306B8;

      return sub_10022C720(v16, v15);
    }
  }
}

uint64_t sub_1002304F0()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1002305D4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

uint64_t sub_1002306B8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006074();
  *v2 = v1;
  sub_100233018(v3, v4);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 88) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100230794()
{
  sub_100005528();
  if (*(v0 + 88))
  {
    swift_task_alloc();
    sub_1000062E8();
    *(v0 + 96) = v1;
    *v1 = v2;
    v3 = sub_1002333F0(v1);

    return sub_10022CB70(v3, v4, v5, v6, v7);
  }

  else
  {
    type metadata accessor for URL();
    v9 = sub_10023314C();
    sub_1001A9674(v9, v10, 1, v11);
    sub_1000046F8();

    return v12();
  }
}

uint64_t sub_100230870()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

id sub_100230970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinHelpersBridge();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1002309E0()
{
  sub_100005528();
  sub_100223A5C(*(v0 + 568), (v0 + 216));
  memcpy((v0 + 16), (v0 + 216), 0xC8uLL);
  if (sub_1001FBC7C(v0 + 16) != 1)
  {
    v1 = *(v0 + 32);
    *(v0 + 416) = *(v0 + 16);
    *(v0 + 432) = v1;
    v2 = *(v0 + 64);
    *(v0 + 448) = *(v0 + 48);
    *(v0 + 464) = v2;
    if (*(v0 + 424))
    {
      sub_1002319FC(v0 + 416, v0 + 480, &qword_1003B6580);
      sub_1001B2DDC(v0 + 216, &qword_1003B6578);
      v3 = sub_1001FC0E0();
      *(v0 + 576) = v3;
      *v3 = v0;
      v3[1] = sub_100230B3C;
      v4 = sub_100233490(*(v0 + 568));

      return v5(v4);
    }

    sub_1001B2DDC(v0 + 216, &qword_1003B6578);
  }

  sub_1001B6A34();

  return v7();
}

uint64_t sub_100230B3C()
{
  sub_1000057FC();
  v1 = *v0;
  v2 = *v0;
  sub_100004410();
  *v3 = v2;
  v4 = *v0;
  sub_1001D14B0();
  *v5 = v4;
  v2[73] = v6;
  v2[74] = v7;

  v8 = sub_1001FC0E0();
  v2[75] = v8;
  *v8 = v4;
  v8[1] = sub_100230C7C;
  v9 = sub_100233490(v1[71]);

  return v10(v9);
}

uint64_t sub_100230C7C()
{
  sub_1000057FC();
  v1 = *v0;
  v2 = *v0;
  sub_100004410();
  *v3 = v2;
  v2[68] = v0;
  v2[69] = v4;
  v2[70] = v5;
  v6 = *v0;
  *v3 = *v0;
  v2[76] = v5;

  v7 = sub_1001FC0E0();
  v2[77] = v7;
  *v7 = v6;
  v7[1] = sub_100230DC4;
  v8 = sub_100233490(v1[71]);

  return v9(v8);
}

uint64_t sub_100230DC4()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 624) = v4;
  *(v2 + 632) = v5;

  sub_1001B2DDC(v2 + 416, &qword_1003B6580);
  v6 = sub_10000448C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100230EC8()
{
  sub_100005528();
  if (v0[76])
  {
    v1 = v0 + 76;
    v2 = v0[69];
  }

  else
  {
    v1 = v0 + 79;
    v2 = v0[78];
  }

  v3 = *v1;
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[1];

  return v6(v5, v4, v2, v3);
}

uint64_t sub_100230FD4(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002310A0;

  return static BulletinHelpersBridge.formatBulletinStrings(forPushNotification:)(v3);
}

uint64_t sub_1002310A0()
{
  sub_1001AFA50();
  v2 = v1;
  v4 = v3;
  sub_1000057F0();
  v6 = v5;
  sub_1001D14B0();
  *v7 = v6;
  v8 = *v0;
  sub_100004410();
  *v9 = v8;

  if (v4)
  {
    v10 = String._bridgeToObjectiveC()();
    if (v2)
    {
LABEL_3:
      v11 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = *(v6 + 16);
  v13 = sub_100233698();
  v14(v13);

  _Block_release(v12);

  sub_1000046F8();

  return v15();
}

id BulletinHelpersBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinHelpersBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10023127C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100231290(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002312D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100231348(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023139C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100231430()
{
  result = qword_1003B75F8;
  if (!qword_1003B75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B75F8);
  }

  return result;
}

unint64_t sub_1002314EC()
{
  result = qword_1003B7610;
  if (!qword_1003B7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7610);
  }

  return result;
}

uint64_t sub_100231540(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100231584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1002315D4()
{
  result = qword_1003B7618;
  if (!qword_1003B7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7618);
  }

  return result;
}

unint64_t sub_100231628()
{
  result = qword_1003B7630;
  if (!qword_1003B7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7630);
  }

  return result;
}

unint64_t sub_10023167C()
{
  result = qword_1003B7638;
  if (!qword_1003B7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7638);
  }

  return result;
}

unint64_t sub_1002316D0()
{
  result = qword_1003B7640;
  if (!qword_1003B7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7640);
  }

  return result;
}

unint64_t sub_100231724()
{
  result = qword_1003B7648;
  if (!qword_1003B7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7648);
  }

  return result;
}

unint64_t sub_1002317E0()
{
  result = qword_1003B7658;
  if (!qword_1003B7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7658);
  }

  return result;
}

uint64_t sub_100231834(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B7620);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002318AC()
{
  result = qword_1003B7668;
  if (!qword_1003B7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7668);
  }

  return result;
}

unint64_t sub_100231900()
{
  result = qword_1003B7670;
  if (!qword_1003B7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7670);
  }

  return result;
}

unint64_t sub_100231954()
{
  result = qword_1003B7678;
  if (!qword_1003B7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7678);
  }

  return result;
}

unint64_t sub_1002319A8()
{
  result = qword_1003B7680;
  if (!qword_1003B7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7680);
  }

  return result;
}

uint64_t sub_1002319FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1001A6C04(a3);
  sub_100005780();
  v4 = sub_1001B6ACC();
  v5(v4);
  return a2;
}

uint64_t sub_100231A58(void *a1)
{
  v1 = [a1 alias];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001B6ACC();
}

void sub_100231AB8(uint64_t a1, void *a2)
{
  type metadata accessor for BulletinAttachment();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setAttachments:isa];
}

uint64_t sub_100231B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B5800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100231B9C()
{
  sub_100005528();
  swift_task_alloc();
  sub_1000062E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_10023366C(v1);

  return sub_100230254();
}

uint64_t sub_100231C28()
{
  sub_100005528();
  swift_task_alloc();
  sub_1000062E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_10023366C(v1);

  return sub_100230314(v3, v4);
}

uint64_t sub_100231CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100231D74(uint64_t *a1)
{
  sub_1001A6C04(a1);
  sub_100005780();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v4);

  return _swift_deallocObject(v1, v5 + 16, v3 | 7);
}

uint64_t sub_100231E30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = sub_1001A6C04(a3);
  sub_1001B6A00(v5);
  v6 = sub_1001D1B80();

  return a5(v6);
}

uint64_t sub_100231EF8()
{
  v0 = type metadata accessor for URL();
  sub_1001B6A00(v0);
  v1 = sub_1001A6C04(&qword_1003B7688);
  sub_100006A0C(v1);
  v2 = sub_1001D1B80();

  return sub_10022B74C(v2, v3, v4, v5, v6);
}

uint64_t sub_100231FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  v10 = [a6 _gkImageCachePathForURL:a1 subdirectory:v8 filename:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

uint64_t sub_1002320B0()
{
  sub_1000057FC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;
  v2 = sub_100005540();

  return v3(v2);
}

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.PlayerRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100232354(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100232394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002323E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1002323F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100232434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100232494()
{
  result = qword_1003B76C0;
  if (!qword_1003B76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76C0);
  }

  return result;
}

unint64_t sub_1002324EC()
{
  result = qword_1003B76C8;
  if (!qword_1003B76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76C8);
  }

  return result;
}

unint64_t sub_100232544()
{
  result = qword_1003B76D0;
  if (!qword_1003B76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76D0);
  }

  return result;
}

unint64_t sub_10023259C()
{
  result = qword_1003B76D8;
  if (!qword_1003B76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76D8);
  }

  return result;
}

unint64_t sub_1002325F4()
{
  result = qword_1003B76E0;
  if (!qword_1003B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76E0);
  }

  return result;
}

unint64_t sub_10023264C()
{
  result = qword_1003B76E8;
  if (!qword_1003B76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76E8);
  }

  return result;
}

unint64_t sub_1002326A0()
{
  result = qword_1003B76F8;
  if (!qword_1003B76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B76F8);
  }

  return result;
}

unint64_t sub_1002326F4()
{
  result = qword_1003B7708;
  if (!qword_1003B7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7708);
  }

  return result;
}

unint64_t sub_100232748()
{
  result = qword_1003B7718;
  if (!qword_1003B7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7718);
  }

  return result;
}

unint64_t sub_10023279C()
{
  result = qword_1003B7728;
  if (!qword_1003B7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7728);
  }

  return result;
}

_BYTE *sub_100232800(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.ChallengeRelationship.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.ChallengeRelationship.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BulletinHelpers.BulletinRelationships.GameRelationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100232ABC()
{
  result = qword_1003B7750;
  if (!qword_1003B7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7750);
  }

  return result;
}

unint64_t sub_100232B14()
{
  result = qword_1003B7758;
  if (!qword_1003B7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7758);
  }

  return result;
}

unint64_t sub_100232B6C()
{
  result = qword_1003B7760;
  if (!qword_1003B7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7760);
  }

  return result;
}

unint64_t sub_100232BC4()
{
  result = qword_1003B7768;
  if (!qword_1003B7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7768);
  }

  return result;
}

unint64_t sub_100232C1C()
{
  result = qword_1003B7770;
  if (!qword_1003B7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7770);
  }

  return result;
}

unint64_t sub_100232C74()
{
  result = qword_1003B7778;
  if (!qword_1003B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7778);
  }

  return result;
}

unint64_t sub_100232CCC()
{
  result = qword_1003B7780;
  if (!qword_1003B7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7780);
  }

  return result;
}

unint64_t sub_100232D24()
{
  result = qword_1003B7788;
  if (!qword_1003B7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7788);
  }

  return result;
}

unint64_t sub_100232D7C()
{
  result = qword_1003B7790;
  if (!qword_1003B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7790);
  }

  return result;
}

unint64_t sub_100232DD4()
{
  result = qword_1003B7798;
  if (!qword_1003B7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7798);
  }

  return result;
}

unint64_t sub_100232E2C()
{
  result = qword_1003B77A0;
  if (!qword_1003B77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77A0);
  }

  return result;
}

unint64_t sub_100232E84()
{
  result = qword_1003B77A8;
  if (!qword_1003B77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77A8);
  }

  return result;
}

uint64_t sub_100233018(uint64_t result, uint64_t a2)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = a2;
  return result;
}

uint64_t sub_1002330DC()
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100233130()
{
}

uint64_t sub_100233168()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100233190(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_1002331E0()
{
}

uint64_t sub_10023326C()
{

  return swift_dynamicCast();
}

BOOL sub_1002332D4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1002332EC()
{
}

uint64_t sub_10023330C()
{

  return swift_dynamicCast();
}

uint64_t sub_100233344()
{

  return swift_dynamicCast();
}

uint64_t sub_100233364()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t sub_100233384()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1002333BC()
{

  return swift_dynamicCast();
}

void sub_1002333D4(NSURL *retstr@<X8>)
{

  URL._bridgeToObjectiveC()(retstr);
}

void sub_10023340C()
{
}

id sub_100233540()
{

  return sub_100245618(v0, v2, v1, 1);
}

uint64_t sub_100233568()
{
  v3 = *(v1 + 352);
  v4 = *(v1 + 336);

  return sub_1002319FC(v3, v4, v0);
}

uint64_t sub_1002335B4(uint64_t a1)
{

  return sub_1001B2DDC(a1, v1);
}

uint64_t sub_1002335CC()
{

  return swift_task_alloc();
}

uint64_t sub_1002335E4()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

double sub_100233608()
{

  return sub_1001AFA68(v1, v0);
}

uint64_t sub_100233624()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10023363C(uint64_t a1)
{
  *(v1 + 144) = a1;
}

__n128 sub_1002336A4()
{
  v2 = *(v1 - 144);
  *(v0 + 352) = *(v1 - 160);
  *(v0 + 368) = v2;
  result = *(v1 - 128);
  v4 = *(v1 - 112);
  *(v0 + 384) = result;
  *(v0 + 400) = v4;
  return result;
}

__n128 sub_1002336EC()
{
  v1 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v1;
  result = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 80) = result;
  *(v0 + 96) = v3;
  return result;
}

uint64_t sub_100233700()
{
  v2 = v0[26];
  v0[49] = v0[25];
  v0[50] = v2;

  return static GKLog.daemon.getter();
}

uint64_t sub_100233720()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_100233740()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_100233760()
{

  return swift_dynamicCast();
}

double sub_100233780()
{

  return sub_1001AFB10(v1, 0xE600000000000000, v2, (v0 + 592));
}

void sub_1002337A0()
{
}

uint64_t sub_1002337C0()
{
}

void GKAppMetadata.subscriptions.getter()
{
  sub_10000469C();
  v1 = type metadata accessor for Profile.Subscriptions();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = v12 - v9;
  v12[1] = _swiftEmptyArrayStorage;
  sub_100234A24(&qword_1003B5998, &type metadata accessor for Profile.Subscriptions);
  sub_1001A6C04(&qword_1003B59A0);
  sub_10020ED70(&qword_1003B59A8, &qword_1003B59A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if ([v0 supportsArcade])
  {
    static Profile.Subscriptions.arcade.getter();
    sub_1001AB988();
    v11 = *(v3 + 8);
    v11(v7, v1);
    v11(v10, v1);
  }

  sub_1000057D8();
}

void GKAppMetadata.compatiblePlatforms.getter()
{
  sub_10000469C();
  v54 = v1;
  v2 = sub_1001A6C04(&qword_1003B6DD8);
  __chkstk_darwin(v2 - 8);
  v56 = &v49 - v3;
  v4 = type metadata accessor for GameDescription.CompatiblePlatforms();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043F0();
  v52 = v8 - v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v49 - v12;
  __chkstk_darwin(v11);
  v51 = &v49 - v14;
  v15 = [v0 deviceFamilies];
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v16 + 56;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v53 = v6;
  v50 = (v6 + 32);

  v22 = 0;
  v55 = _swiftEmptyArrayStorage;
  v57 = v4;
  while (1)
  {
    v23 = v22;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v16;
    v26 = (*(v16 + 48) + ((v22 << 10) | (16 * v24)));
    v28 = *v26;
    v27 = v26[1];

    v29 = v56;
    sub_10020E794(v28, v27);
    v30 = v29;
    v31 = v29;
    v32 = v57;
    sub_1001A9674(v30, 0, 1, v57);
    v33 = *v50;
    (*v50)(v51, v31, v32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001DF534();
      v55 = v38;
    }

    v34 = *(v55 + 2);
    v35 = v34 + 1;
    v36 = v53;
    if (v34 >= *(v55 + 3) >> 1)
    {
      v49 = v34 + 1;
      sub_1001DF534();
      v36 = v53;
      v35 = v49;
      v55 = v39;
    }

    v37 = v55;
    *(v55 + 2) = v35;
    v4 = v57;
    v33(&v37[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34], v51, v57);
    v16 = v25;
  }

  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v22);
    ++v23;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  sub_100234A24(&qword_1003B59B8, &type metadata accessor for GameDescription.CompatiblePlatforms);
  dispatch thunk of SetAlgebra.init()();
  v40 = *(v55 + 2);
  if (v40)
  {
    v42 = *(v53 + 16);
    v41 = v53 + 16;
    v56 = v16;
    v57 = v42;
    v43 = &v55[(*(v53 + 80) + 32) & ~*(v53 + 80)];
    v44 = *(v53 + 72);
    v45 = v4;
    do
    {
      v46 = v41;
      v57(v13, v43, v45);
      dispatch thunk of SetAlgebra.insert(_:)();
      v47 = sub_100006054();
      v48(v47);
      v41 = v46;
      v43 += v44;
      --v40;
    }

    while (v40);
  }

  sub_1000057D8();
}

uint64_t sub_100233DF8(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B6DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void GKAppMetadata.capabilities.getter()
{
  sub_10000469C();
  v1 = v0;
  v52 = v2;
  v3 = type metadata accessor for AppMetadataGameCenterFeature();
  sub_1000043C4();
  v54 = v4;
  __chkstk_darwin(v5);
  v7 = (v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for GameDescription.Capabilities();
  sub_1000043C4();
  v53 = v9;
  __chkstk_darwin(v10);
  sub_1000043F0();
  v12 = __chkstk_darwin(v11);
  v51 = v49 - v13;
  __chkstk_darwin(v12);
  v15 = (v49 - v14);
  v55 = _swiftEmptyArrayStorage;
  sub_100234A24(&qword_1003B5980, &type metadata accessor for GameDescription.Capabilities);
  sub_1001A6C04(&qword_1003B5988);
  sub_10020ED70(&qword_1003B5990, &qword_1003B5988);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = [v0 supportsGameController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 BOOLValue];

    if (v18)
    {
      static GameDescription.Capabilities.controller.getter();
      sub_100234B34();
      v19 = sub_100004578();
      (v17)(v19);
      v20 = sub_100006054();
      (v17)(v20);
    }
  }

  v21 = sub_100234A6C(v1);
  v22 = v52;
  if (v21)
  {
    v23 = v15;
    v24 = v54;
    v50 = *(v54 + 104);
    v50(v7, enum case for AppMetadataGameCenterFeature.challenges(_:), v3);
    v25 = AppMetadataGameCenterFeature.rawValue.getter();
    v27 = v26;
    v28 = *(v24 + 8);
    v54 = v24 + 8;
    v49[1] = v28;
    v28(v7, v3);
    v15 = v23;
    sub_100234B54();
    sub_100234B80();
    if (v25)
    {
      static GameDescription.Capabilities.challengeDefinitions.getter();
      sub_100234B34();
      v29 = sub_100004578();
      v27(v29);
      v30 = sub_100006054();
      v27(v30);
    }

    v31 = sub_100234B70();
    v32(v31);
    AppMetadataGameCenterFeature.rawValue.getter();
    v33 = sub_1000048B4();
    v34(v33);
    sub_100234B54();
    sub_100234B80();
    if (v25)
    {
      static GameDescription.Capabilities.activities.getter();
      sub_100234B34();
      v35 = sub_100004578();
      v7(v35);
      v36 = sub_100006054();
      v7(v36);
    }

    v37 = sub_100234B70();
    v38(v37);
    AppMetadataGameCenterFeature.rawValue.getter();
    v39 = sub_1000048B4();
    v40(v39);
    sub_100234B54();
    sub_100234B80();
    if (v25)
    {
      static GameDescription.Capabilities.leaderboards.getter();
      sub_100234B34();
      v41 = sub_100004578();
      v7(v41);
      v42 = sub_100006054();
      v7(v42);
    }

    v43 = sub_100234B70();
    v44(v43);
    AppMetadataGameCenterFeature.rawValue.getter();
    v45 = sub_1000048B4();
    v46(v45);
    sub_100234B54();
    sub_100234B80();

    v22 = v52;
    if (v25)
    {
      static GameDescription.Capabilities.achievements.getter();
      v47 = v51;
      sub_1001AB174();
      v48 = sub_100004578();
      v15(v48);
      (v15)(v47, v8);
    }
  }

  (*(v53 + 32))(v22, v15, v8);
  sub_1000057D8();
}

uint64_t sub_1002342FC@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 templateURL];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    return Artwork.init(templateURL:metadata:)(v8, v5, a2);
  }

  else
  {
    v10 = type metadata accessor for Artwork();

    return sub_1001A9674(a2, 1, 1, v10);
  }
}

void GKAppMetadata.gameGenres.getter()
{
  sub_10000469C();
  type metadata accessor for GameGenre();
  sub_1000043C4();
  v24 = v1;
  v25 = v2;
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 gkGameGenres];
  sub_100234ACC();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1001E6E2C(v6);
  if (!v7)
  {
LABEL_10:

    sub_1000057D8();
    return;
  }

  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  sub_1001B17E8(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v26;
    v19 = v25 + 32;
    v20 = v6 & 0xC000000000000001;
    v22 = v6;
    v23 = v4;
    v21 = v8;
    do
    {
      if (v20)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 genreID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = [v12 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = [v12 parentID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = v23;
      GameGenre.init(id:name:parentId:)();

      v26 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        sub_1001B17E8(v17 > 1, v18 + 1, 1);
        v10 = v26;
      }

      ++v9;
      v10[2] = v18 + 1;
      (*(v25 + 32))(v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, v16, v24);
      v6 = v22;
    }

    while (v21 != v9);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_100234740()
{
  v1 = [v0 isGameGenre];

  return v1;
}

id sub_10023479C()
{
  v1 = [v0 supportsGameCenter];

  return v1;
}

id sub_100234824()
{
  v1 = [v0 isIOSBinaryMacOSCompatible];

  return v1;
}

id sub_1002349C8()
{
  v1 = [v0 ageRating];

  return v1;
}

uint64_t sub_100234A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100234A6C(void *a1)
{
  v1 = [a1 supportedGameCenterFeatures];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100234ACC()
{
  result = qword_1003B61A8;
  if (!qword_1003B61A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B61A8);
  }

  return result;
}

void sub_100234B34()
{

  sub_1001AB174();
}

BOOL sub_100234B54()
{

  return sub_1001FCE64(v0, v1, v2);
}

uint64_t sub_100234B80()
{
}

uint64_t sub_100234B98()
{
  type metadata accessor for JSONEncoder.OutputFormatting();
  *(v0 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100234C24, 0, 0);
}

void sub_100234C24()
{
  v33 = v0;
  v1 = objc_opt_self();
  v2 = sub_100236948(v1);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = sub_1001E6E2C(v4);
  v27 = v0;
  if (!v5)
  {
LABEL_16:

    v32 = v3;

    sub_100235E18(&v32);

    v22 = v32;
    v23 = [objc_opt_self() processInfo];
    v24 = [v23 processIdentifier];

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *(v27 + 16) = v24;
    *(v27 + 24) = v22;
    sub_100236A0C();
    dispatch thunk of JSONEncoder.encode<A>(_:)();

    sub_1001F7484();

    __asm { BRAA            X3, X16 }
  }

  v6 = v5;
  v32 = _swiftEmptyArrayStorage;
  sub_1001B1880(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v3 = v32;
    v30 = v4;
    v31 = v4 & 0xC000000000000001;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    v29 = v6;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v31)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 pid];
      v12 = sub_1002369A8(v10);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v12;
      v15 = v13;
      v16 = sub_100005144(v10);
      v18 = v17;

      v32 = v3;
      v20 = v3[2];
      v19 = v3[3];
      if (v20 >= v19 >> 1)
      {
        sub_1001B1880(v19 > 1, v20 + 1, 1);
        v3 = v32;
      }

      v3[2] = v20 + 1;
      v21 = &v3[5 * v20];
      v21[4] = v11;
      v21[5] = v14;
      v21[6] = v15;
      v21[7] = v16;
      v21[8] = v18;
      ++v7;
      v4 = v30;
      if (v8 == v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100234FC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_100235068;

  return sub_100234B98();
}

uint64_t sub_100235068(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = _convertErrorToNSError(_:)();

    isa = 0;
    v12 = v10;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000072CC(a1, a2);
    v10 = 0;
    v12 = isa;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, isa, v10);

  _Block_release(v13);
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_100235200()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10020F270;

  return sub_100234FC4(v2, v3);
}

uint64_t sub_1002352AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000010030CFD0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x800000010030CFF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1002353C8(char a1)
{
  if (!a1)
  {
    return 6580592;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0xD000000000000018;
}

uint64_t sub_10023541C(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B77F8);
  sub_1000043C4();
  v5 = v4;
  sub_100006AB0();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100006454(a1, a1[3]);
  sub_100236C30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1000048D0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_1000048D0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_1000048D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10023558C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001A6C04(&qword_1003B77E8);
  sub_1000043C4();
  v7 = v6;
  sub_100006AB0();
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100006454(a1, a1[3]);
  sub_100236C30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005BE0(a1);
  }

  v25 = 0;
  sub_10000458C();
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 1;
  sub_10000458C();
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v22 = v12;
  v23 = 2;
  sub_10000458C();
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v10;
  v18 = v17;
  (*(v7 + 8))(v16, v5);
  result = sub_100005BE0(a1);
  v20 = v22;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

uint64_t sub_10023577C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100235844(char a1)
{
  if (a1)
  {
    return 0x73746E65696C63;
  }

  else
  {
    return 6580592;
  }
}

uint64_t sub_100235874(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001A6C04(&qword_1003B77C0);
  sub_1000043C4();
  v8 = v7;
  sub_100006AB0();
  __chkstk_darwin(v9);
  v11 = v13 - v10;
  sub_100006454(a1, a1[3]);
  sub_100236B88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_1000048D0();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1001A6C04(&qword_1003B77D0);
    sub_100236C84(&qword_1003B77D8, sub_100236BDC);
    sub_1000048D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100235A24(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B7800);
  sub_1000043C4();
  v5 = v4;
  sub_100006AB0();
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_100006454(a1, v9);
  sub_100236B88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[31] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1001A6C04(&qword_1003B77D0);
    v11[15] = 1;
    sub_100236C84(&qword_1003B7808, sub_100236CFC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100005BE0(a1);
  return v9;
}

uint64_t sub_100235C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002352AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100235C48(uint64_t a1)
{
  v2 = sub_100236C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100235C84(uint64_t a1)
{
  v2 = sub_100236C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100235CC0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10023558C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100235D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10023577C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100235D58(uint64_t a1)
{
  v2 = sub_100236B88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100235D94(uint64_t a1)
{
  v2 = sub_100236B88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100235DD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100235A24(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

Swift::Int sub_100235E18(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100236A88(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100235E84(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100235E84(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100236004(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100235F78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100235F78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 56);
        v13 = *(v9 + 64);
        v14 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v14;
        result = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 16) = v12;
        *(v9 + 24) = v13;
        v9 -= 40;
        *(v10 + 32) = result;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100236004(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v90 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v12 = 40 * v7;
        v15 = *v11;
        v14 = v11 + 10;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 5;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 40 * v6 - 40;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = *(v24 + v12 + 16);
                v27 = (v24 + v21);
                v28 = *v25;
                v29 = *(v25 + 24);
                v30 = *(v27 + 4);
                v31 = v27[1];
                *v25 = *v27;
                v25[1] = v31;
                *(v25 + 4) = v30;
                *v27 = v28;
                *(v27 + 2) = v26;
                *(v27 + 24) = v29;
              }

              ++v23;
              v21 -= 40;
              v12 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 40;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9);
              v36 = v34;
              v37 = v33;
              do
              {
                v38 = v37 + 40;
                if (v35 >= *v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v39 = *(v37 + 48);
                v40 = *(v37 + 56);
                v41 = *(v37 + 64);
                v42 = *(v37 + 16);
                *v38 = *v37;
                *(v37 + 56) = v42;
                v43 = *(v37 + 32);
                *v37 = v35;
                *(v37 + 8) = v39;
                *(v37 + 16) = v40;
                *(v37 + 24) = v41;
                v37 -= 40;
                *(v38 + 32) = v43;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v92 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DF478();
        v8 = v88;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        sub_1001DF478();
        v8 = v89;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v7;
      v48[1] = v92;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_56:
            if (v55)
            {
              goto LABEL_96;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_99;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_104;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v46 < 2)
          {
            goto LABEL_98;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_71:
          if (v70)
          {
            goto LABEL_101;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_103;
          }

          if (v77 < v69)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_100236660((*a3 + 40 * *v81), (*a3 + 40 * *v83), *a3 + 40 * v84, v93);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v84 < v82)
          {
            goto LABEL_91;
          }

          v85 = v8;
          v86 = v8[2];
          if (v49 > v86)
          {
            goto LABEL_92;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_93;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_85;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_94;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_95;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_97;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_100;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_105;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v92;
      a4 = v90;
      if (v92 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_100236528(&v95, *a1, a3);
LABEL_89:
}

uint64_t sub_100236528(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_100236808(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_100236660((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_100236660(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1001B1444(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 40;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 40;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 40;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    *(v7 + 4) = *(v12 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_1001B1444(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_15:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v10 - 5) < *v16)
    {
      v13 = v5 + 40 == v6;
      v6 -= 40;
      if (!v13)
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v16;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v18 = *(v10 - 40);
      v19 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v18;
      *(v5 + 16) = v19;
    }

    v10 -= 40;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

char *sub_10023681C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100236848(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001A6C04(&qword_1003B6298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_100236948(void *a1)
{
  v1 = [a1 clients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100236A9C();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002369A8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100236A0C()
{
  result = qword_1003B77B0;
  if (!qword_1003B77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77B0);
  }

  return result;
}

unint64_t sub_100236A9C()
{
  result = qword_1003B77B8;
  if (!qword_1003B77B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B77B8);
  }

  return result;
}

uint64_t sub_100236AE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100236B20(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100236B88()
{
  result = qword_1003B77C8;
  if (!qword_1003B77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77C8);
  }

  return result;
}

unint64_t sub_100236BDC()
{
  result = qword_1003B77E0;
  if (!qword_1003B77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77E0);
  }

  return result;
}

unint64_t sub_100236C30()
{
  result = qword_1003B77F0;
  if (!qword_1003B77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B77F0);
  }

  return result;
}

uint64_t sub_100236C84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B77D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100236CFC()
{
  result = qword_1003B7810;
  if (!qword_1003B7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7810);
  }

  return result;
}

_BYTE *_s11HealthCheckV6ClientV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11HealthCheckV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100236F0C()
{
  result = qword_1003B7818;
  if (!qword_1003B7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7818);
  }

  return result;
}

unint64_t sub_100236F64()
{
  result = qword_1003B7820;
  if (!qword_1003B7820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7820);
  }

  return result;
}

unint64_t sub_100236FBC()
{
  result = qword_1003B7828;
  if (!qword_1003B7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7828);
  }

  return result;
}

unint64_t sub_100237014()
{
  result = qword_1003B7830;
  if (!qword_1003B7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7830);
  }

  return result;
}

unint64_t sub_10023706C()
{
  result = qword_1003B7838;
  if (!qword_1003B7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7838);
  }

  return result;
}

unint64_t sub_1002370C4()
{
  result = qword_1003B7840;
  if (!qword_1003B7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7840);
  }

  return result;
}

uint64_t sub_100237118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100237170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44[0] = a6;
  v44[3] = a1;
  v44[4] = a4;
  v44[2] = a3;
  type metadata accessor for URL();
  sub_1000043C4();
  v45 = v9;
  v46 = v8;
  __chkstk_darwin(v8);
  sub_1000043B4();
  v12 = v11 - v10;
  type metadata accessor for Logger();
  sub_1000043C4();
  v47 = v14;
  v48 = v13;
  __chkstk_darwin(v13);
  sub_1000043F0();
  v17 = v15 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = v44 - v20;
  __chkstk_darwin(v19);
  sub_10023E898();
  v22 = type metadata accessor for NSPersistentStore.StoreType();
  sub_1000043C4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_1000043B4();
  v28 = v27 - v26;
  sub_1001A7B44(0, &qword_1003B7528);
  static NSPersistentStore.StoreType.sqlite.getter();
  v44[1] = a2;
  v30 = static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)();
  v31 = v44[0];
  (*(v24 + 8))(v28, v22);
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001AFB10(v32, v33, v30, &v51);

  if (v52)
  {
    if (swift_dynamicCast())
    {
      if (!v31 || (v49 == a5 ? (v34 = v50 == v31) : (v34 = 0), v34))
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          static GKLog.cache.getter();
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v36, v37))
          {
            *swift_slowAlloc() = 0;
            sub_100005570(&_mh_execute_header, v38, v39, "Deleting previous app metadata cache since it differs from the current schema.");
            sub_10023E780();
          }

          (*(v47 + 8))(v21, v48);
          URL.deletingLastPathComponent()();
          sub_100222140();
          return (*(v45 + 8))(v12, v46);
        }
      }
    }
  }

  else
  {
    sub_1001B2DDC(&v51, &qword_1003B5808);
  }

  static GKLog.cache.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    *swift_slowAlloc() = 0;
    sub_100005570(&_mh_execute_header, v42, v43, "Will not delete previously loaded app metadata cache");
    sub_10023E780();
  }

  return (*(v47 + 8))(v17, v48);
}

uint64_t sub_100237688()
{
  sub_1001A6C04(&qword_1003B7B48);
  result = swift_allocObject();
  *(result + 16) = 0;
  off_1003B7848 = result;
  return result;
}

uint64_t InstallMetadataCache.DeleteRequest.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1001A6C04(&qword_1003B7850);
  sub_100005780();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t InstallMetadataCache.DeleteRequest.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001A6C04(&qword_1003B7850);
  sub_100005780();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

void sub_1002377A8()
{
  sub_10023332C();
  v63 = v0;
  v3 = v2;
  v65 = v4;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger();
  sub_1000043C4();
  v58 = v6;
  v59 = v5;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v64 = v8 - v7;
  v9 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v10 = sub_100006A0C(v9);
  __chkstk_darwin(v10);
  sub_1000043B4();
  v61 = v12 - v11;
  type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v66 = v13;
  v67 = v14;
  __chkstk_darwin(v13);
  sub_1000043F0();
  v57 = v15 - v16;
  v18 = __chkstk_darwin(v17);
  v60 = &v56 - v19;
  __chkstk_darwin(v18);
  sub_10023E898();
  type metadata accessor for URL();
  sub_1000043C4();
  v68 = v20;
  v69 = v21;
  __chkstk_darwin(v20);
  sub_1000043F0();
  v56 = v22 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v56 - v26;
  __chkstk_darwin(v25);
  v29 = &v56 - v28;
  v30 = [objc_opt_self() defaultManager];
  v31 = objc_opt_self();
  v32 = String._bridgeToObjectiveC()();

  v33 = String._bridgeToObjectiveC()();
  v34 = sub_10023DBD4(v65, v3, v32, v33, v30, v31);

  if (v34)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100237E00(v30, v29);
    (*(v69 + 16))(v27, v29, v68);
    static ModelConfiguration.CloudKitDatabase.none.getter();
    v65 = v27;
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    v61 = swift_getObjectType();
    v35 = v60;
    ObjectType = *(v67 + 16);
    ObjectType(v60, v1, v66);
    v36 = v63;
    InstallMetadataCache.__allocating_init(configuration:)(v35);
    v37 = v1;
    if (v36)
    {
      v60 = v30;
      v63 = v29;
      v38 = v68;
      static GKLog.cache.getter();
      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v37;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to construct model container with error, deleting files: %@", v42, 0xCu);
        sub_1001B2DDC(v43, &unk_1003B6180);
        sub_10023E780();

        v37 = v41;
        sub_100004858();
      }

      (*(v58 + 8))(v64, v59);
      v45 = v56;
      ModelConfiguration.url.getter();
      v46 = v65;
      URL.deletingLastPathComponent()();
      v47 = v37;
      v48 = *(v69 + 8);
      v48(v45, v38);
      v49 = v60;
      sub_100222140();

      v48(v46, v38);
      v50 = v57;
      ObjectType(v57, v47, v66);
      InstallMetadataCache.__allocating_init(configuration:)(v50);

      v54 = sub_10023E864();
      v55(v54);
      v48(v63, v38);
    }

    else
    {

      v52 = sub_10023E88C();
      v53(v52);
      (*(v69 + 8))(v29, v68);
    }

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10023DC4C();
    swift_allocError();
    *v51 = 0;
    swift_willThrow();

    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  sub_1002333A4();
}

uint64_t sub_100237E00(uint64_t a1, uint64_t a2)
{
  if (qword_1003B5500 != -1)
  {
    swift_once();
  }

  v4 = *(*off_1003B7848 + 136);

  v6 = v4(v5);
  v7 = 0;
  atomic_compare_exchange_strong_explicit(v6, &v7, 1u, memory_order_relaxed, memory_order_relaxed);
  LODWORD(v4) = v7 == 0;

  if (v4 == 1)
  {
    sub_1001A7B44(0, &qword_1003B7B40);
    sub_1001A6C04(&qword_1003B6BC8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002C33A0;
    v10 = type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
    v11 = sub_10023A4A8(&unk_1003B7858);
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    v12 = [objc_allocWithZone(NSManagedObjectModel) init];
    v13 = static NSManagedObjectModel.makeManagedObjectModel(for:mergedWith:)();

    if (v13)
    {
      v14 = [v13 versionChecksum];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    sub_100237170(a1, a2, 0x4D6C6C6174736E49, 0xEF61746164617465, v15, v17);
  }

  return result;
}

uint64_t InstallMetadataCache.__allocating_init(configuration:)(uint64_t a1)
{
  type metadata accessor for ModelContainer();
  sub_1001A6C04(&qword_1003B6BC8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C33A0;
  v4 = type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
  sub_10023E700();
  v6 = sub_10023A4A8(v5);
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_100238238();
  sub_1001A6C04(&qword_1003B6C68);
  v7 = type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C33A0;
  (*(v9 + 16))(v11 + v10, a1, v7);
  ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v1)
  {
    return (*(v9 + 8))(a1, v7);
  }

  type metadata accessor for InstallMetadataCache();
  swift_allocObject();
  v13 = sub_1001B2FE0();
  v14 = InstallMetadataCache.init(modelContainer:)(v13);
  (*(v9 + 8))(a1, v7);
  return v14;
}

unint64_t sub_100238238()
{
  result = qword_1003B7860;
  if (!qword_1003B7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7860);
  }

  return result;
}

uint64_t static InstallMetadataCache.inMemoryCache()()
{
  v0 = type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000043F0();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  ModelConfiguration.init(isStoredInMemoryOnly:)();
  type metadata accessor for InstallMetadataCache();
  (*(v2 + 16))(v6, v9, v0);
  v10 = InstallMetadataCache.__allocating_init(configuration:)(v6);
  (*(v2 + 8))(v9, v0);
  return v10;
}

uint64_t sub_100238458()
{
  sub_1001A6C04(&qword_1003B6BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
  v2 = sub_10023A4A8(&unk_1003B7858);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void InstallMetadataCache.fetch(_:)()
{
  sub_10023332C();
  v31 = v0;
  v2 = v1;
  v3 = sub_1001A6C04(&qword_1003B7868);
  sub_100006A0C(v3);
  sub_100006AB0();
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1001A6C04(&qword_1003B7870);
  sub_1000043C4();
  v28 = v8;
  sub_100006AB0();
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  if (qword_1003B5508 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v12 = sub_1001A6C04(&qword_1003B7878);
    sub_1001A9674(v6, 1, 1, v12);
    type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
    sub_10023E700();
    sub_10023A4A8(v13);
    v14 = FetchDescriptor.init(predicate:sortBy:)();
    __chkstk_darwin(v14);
    sub_10023E800();
    *(v15 - 16) = v2;
    Predicate.init(_:)();
    sub_1001A9674(v6, 0, 1, v12);
    FetchDescriptor.predicate.setter();
    type metadata accessor for InstallMetadataCache();
    sub_10023E718();
    sub_10023A4A8(v16);
    sub_1001B2FE0();
    v6 = ModelActor.modelContext.getter();
    v17 = v31;
    v18 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v17)
    {
      break;
    }

    v19 = v18;
    v25 = 0;
    v26 = v11;
    v27 = v7;

    v20 = sub_1001E6E2C(v19);
    v21 = 0;
    v30 = v19 & 0xC000000000000001;
    v31 = v20;
    v29 = v19 & 0xFFFFFFFFFFFFFF8;
    v22 = _swiftEmptyDictionarySingleton;
    v2 = &v25;
    while (1)
    {
      if (v31 == v21)
      {

        (*(v28 + 8))(v26, v27);
        goto LABEL_13;
      }

      if (v30)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v29 + 16))
        {
          goto LABEL_15;
        }
      }

      if (__OFADD__(v21, 1))
      {
        break;
      }

      v7 = sub_100238890();
      v24 = v23;
      v11 = sub_10023889C();
      swift_isUniquelyReferenced_nonNull_native();
      v32 = v22;
      v6 = &v32;
      sub_1001BA124(v11, v7, v24);

      v22 = v32;
      ++v21;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    sub_10023E748();
  }

  (*(v28 + 8))(v11, v7);

LABEL_13:
  sub_1002333A4();
}

id sub_10023889C()
{
  v0 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_100238890();
  v38 = v4;
  v39 = v3;
  v5 = sub_10023AD3C();
  v36 = v6;
  v37 = v5;
  v7 = sub_10023AE1C();
  v34 = v8;
  v35 = v7;
  v9 = sub_10023AE60();
  v32 = v10;
  v33 = v9;
  v11 = sub_10023B074();
  v30 = v12;
  v31 = v11;
  sub_10023A128();
  v29 = sub_10023B220();
  v13 = sub_10023B22C();
  v14 = sub_10023B238();
  v15 = sub_10023CC0C(v14);
  v16 = sub_10023B740();
  v17 = sub_10023B258();
  if ((v17 & 1) == 0)
  {
    if ((v17 & 2) != 0)
    {
      v18 = 4;
      if ((v17 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = 0;
      if ((v17 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

  if ((v17 & 2) == 0)
  {
    v18 = 1;
    if ((v17 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = 5;
  if ((v17 & 4) != 0)
  {
LABEL_11:
    v18 |= 8uLL;
  }

LABEL_12:
  v19 = sub_10023B4E4();
  v20 = sub_10023B74C();
  v21 = sub_100239D48();
  v23 = v22;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000072CC(v21, v23);
  v25 = objc_allocWithZone(GKInstallMetadata);
  HIBYTE(v27) = v13 & 1;
  LOBYTE(v27) = v29 & 1;
  return sub_100253608(v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v2, v27, v15, v16 & 1, v18, v19, v20 & 1, isa);
}

void InstallMetadataCache.delete(_:)()
{
  sub_10023332C();
  v2 = sub_1001A6C04(&qword_1003B7868);
  sub_100006A0C(v2);
  sub_100006AB0();
  __chkstk_darwin(v3);
  v5 = v19 - v4;
  v6 = sub_1001A6C04(&qword_1003B7850);
  sub_1000043C4();
  v8 = v7;
  sub_100006AB0();
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  v12 = sub_10023E88C();
  v13(v12);
  type metadata accessor for InstallMetadataCache();
  sub_10023E718();
  sub_10023A4A8(v14);
  v19[0] = v0;
  ModelActor.modelContext.getter();
  if (qword_1003B5508 != -1)
  {
    sub_10023E748();
  }

  v15 = type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
  v19[1] = v19;
  __chkstk_darwin(v15);
  sub_10023E800();
  *(v16 - 16) = v11;
  Predicate.init(_:)();
  v17 = sub_1001A6C04(&qword_1003B7878);
  sub_1001A9674(v5, 0, 1, v17);
  sub_10023E700();
  sub_10023A4A8(v18);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  sub_1001B2DDC(v5, &qword_1003B7868);

  if (!v1)
  {
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();
  }

  (*(v8 + 8))(v11, v6);
  sub_1002333A4();
}

uint64_t sub_100238D08@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001A6C04(&qword_1003B7B50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = sub_1001A6C04(&qword_1003B7B58);
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = sub_1001A6C04(&qword_1003B7BA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_1001A6C04(&qword_1003B7850);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_10023E0EC(&unk_1003B7B60);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v3 + 8))(v5, v2);
  v21 = v9;
  a1[3] = sub_1001A6C04(&qword_1003B7BB0);
  a1[4] = sub_10023DF6C();
  sub_100005668(a1);
  v14 = v17;
  v20 = v17;
  sub_10023E0EC(&unk_1003B7BD8);
  v19 = sub_10023E0EC(&unk_1003B7B98);
  static PredicateExpressions.build_evaluate<A, B>(_:_:)();
  (*(v11 + 8))(v13, v10);
  return (*(v18 + 8))(v9, v14);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InstallMetadataCache.upsert(_:)(GameDaemonCore::InstallMetadataCache::InsertRequest a1)
{
  sub_10023332C();
  v69 = v3;
  v70 = v4;
  v62 = v2;
  v65 = v1;
  v6 = v5;
  v7 = sub_1001A6C04(&qword_1003B7868);
  sub_100006A0C(v7);
  sub_100006AB0();
  __chkstk_darwin(v8);
  v10 = v57 - v9;
  v11 = sub_1001A6C04(&qword_1003B7870);
  sub_1000043C4();
  v13 = v12;
  sub_100006AB0();
  __chkstk_darwin(v14);
  v63 = v57 - v15;
  v16 = type metadata accessor for Logger();
  sub_1000043C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000043B4();
  v22 = v21 - v20;
  static GKLog.cache.getter();

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  LODWORD(v61) = v24;
  v25 = os_log_type_enabled(v23, v24);
  v64 = v11;
  v60 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v59 = v16;
    v27 = v26;
    v58 = swift_slowAlloc();
    v67 = v58;
    *v27 = 136315138;
    sub_1001A7B44(0, &unk_1003B6D90);
    v28 = Dictionary.description.getter();
    v30 = sub_100005C3C(v28, v29, &v67);

    *(v27 + 4) = v30;
    v31 = v65;
    _os_log_impl(&_mh_execute_header, v23, v61, "Inserting install metadatas: %s", v27, 0xCu);
    sub_100005BE0(v58);
    sub_100004858();

    sub_100004858();

    (*(v18 + 8))(v22, v59);
  }

  else
  {

    (*(v18 + 8))(v22, v16);
    v31 = v65;
  }

  v68 = 0;
  v67 = v6;
  swift_bridgeObjectRetain_n();
  v32 = sub_1001E3B20(v6);
  if (qword_1003B5508 != -1)
  {
LABEL_26:
    sub_10023E748();
  }

  v33 = sub_1001A6C04(&qword_1003B7878);
  sub_1001A9674(v10, 1, 1, v33);
  v34 = type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
  sub_10023E700();
  v36 = sub_10023A4A8(v35);
  v37 = FetchDescriptor.init(predicate:sortBy:)();
  v59 = v57;
  __chkstk_darwin(v37);
  sub_10023E800();
  *(v38 - 16) = v32;
  v66 = v34;
  Predicate.init(_:)();

  sub_1001A9674(v10, 0, 1, v33);
  FetchDescriptor.predicate.setter();
  v39 = type metadata accessor for InstallMetadataCache();
  sub_10023E718();
  v41 = sub_10023A4A8(v40);
  v42 = ModelActor.modelContext.getter();
  __chkstk_darwin(v42);
  v57[-4] = &v67;
  v57[-3] = v31;
  v57[-2] = &v68;
  v43 = v62;
  dispatch thunk of ModelContext.enumerate<A>(_:batchSize:allowEscapingMutations:block:)();
  v58 = v43;
  if (v43)
  {
    v44 = sub_10023E88C();
    v45(v44);

LABEL_7:
  }

  else
  {
    v61 = v41;
    v62 = v39;
    v57[0] = v36;
    v57[1] = v34;

    v46 = v67;
    v47 = v67 + 64;
    v48 = 1 << *(v67 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v67 + 64);
    v31 = (v48 + 63) >> 6;

    for (i = 0; v50; v68 = 1)
    {
      v52 = i;
LABEL_17:
      v53 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v54 = *(*(v46 + 56) + ((v52 << 9) | (8 * v53)));
      ModelActor.modelContext.getter();
      sub_100239E58();
      dispatch thunk of ModelContext.insert<A>(_:)();
    }

    v10 = v61;
    v32 = v62;
    while (1)
    {
      v52 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v52 >= v31)
      {
        break;
      }

      v50 = *(v47 + 8 * v52);
      ++i;
      if (v50)
      {
        i = v52;
        goto LABEL_17;
      }
    }

    if (v68)
    {
      ModelActor.modelContext.getter();
      v55 = v58;
      dispatch thunk of ModelContext.save()();
      (*(v60 + 8))(v63, v64);
      if (v55)
      {

        goto LABEL_7;
      }
    }

    else
    {
      (*(v60 + 8))(v63, v64);
    }
  }

  sub_1002333A4();
  return result;
}

uint64_t sub_100239714@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1001A6C04(&qword_1003B7B50);
  sub_1000043C4();
  v6 = v5;
  sub_100006AB0();
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  sub_1001A6C04(&qword_1003B7B58);
  sub_1000043C4();
  v24 = v10;
  v25 = v11;
  sub_100006AB0();
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = sub_1001A6C04(&qword_1003B8320);
  sub_1000043C4();
  v17 = v16;
  sub_100006AB0();
  __chkstk_darwin(v18);
  v20 = &v23 - v19;
  v26 = a1;
  sub_1001A6C04(&qword_1003B8330);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_10023E0EC(&unk_1003B7B60);
  sub_10023E88C();
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v6 + 8))(v9, v4);
  a2[3] = sub_1001A6C04(&qword_1003B7B68);
  a2[4] = sub_10023DD04();
  sub_100005668(a2);
  sub_10023E0EC(&unk_1003B8340);
  sub_10023E0EC(&unk_1003B7B98);
  sub_10023E0EC(&unk_1003B7BA0);
  v21 = v24;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v25 + 8))(v14, v21);
  return (*(v17 + 8))(v20, v15);
}

void sub_100239A90(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v25[1] = a3;
  v26 = a4;
  v5 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v5 - 8);
  v7 = v25 - v6;
  v8 = sub_100239D48();
  v10 = v9;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000072CC(v8, v10);
  v11 = sub_100238890();
  v13 = v12;
  v14 = sub_1001AFCA4(v11, v12, *a2);
  if (v14)
  {
    v15 = v14;
    v27 = a2;
    v16 = [v14 bundleID];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == v11 && v19 == v13)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
LABEL_7:

        goto LABEL_11;
      }
    }

    v22 = [v15 persistentRecordID];
    v23 = _LSPersistentIdentifierCompare();

    if (v23 != 100)
    {
      sub_100239E58();
      sub_10023A128();
      sub_10023A270(v7);
      type metadata accessor for InstallMetadataCache();
      sub_10023A4A8(&unk_1003B7880);
      ModelActor.modelContext.getter();
      type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
      sub_10023A4A8(&unk_1003B7858);
      dispatch thunk of ModelContext.insert<A>(_:)();

      *v26 = 1;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_11:
  v24 = sub_10020B280(v11, v13);
}

uint64_t sub_100239D48()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10020AD64();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

void *sub_100239E58()
{
  v1 = v0;
  v2 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = [v0 bundleID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v7;
  v44 = v6;

  v8 = [v1 estimatedInstallDate];
  if (v8)
  {
    v9 = v8;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for Date();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = 1;
  }

  sub_1001A9674(v4, v11, 1, v10);
  v12 = sub_1001AC82C(v1);
  v41 = v13;
  v42 = v12;
  v14 = sub_10023DCA0(v1);
  v39 = v15;
  v40 = v14;
  v16 = [v1 name];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v18;
  v38 = v17;

  v19 = sub_1001AC838(v1);
  v35 = v20;
  v36 = v19;
  v34 = [v1 supportsGameController];
  v21 = [v1 isArcade];
  v22 = sub_10023CC20([v1 platform]);
  v23 = [v1 metadataEligibility];
  if ((v23 & 1) == 0)
  {
    if ((v23 & 4) != 0)
    {
      v24 = 2;
      if ((v23 & 8) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = 0;
      if ((v23 & 8) == 0)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

  if ((v23 & 4) == 0)
  {
    v24 = 1;
    if ((v23 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = 3;
  if ((v23 & 8) != 0)
  {
LABEL_14:
    v24 |= 4uLL;
  }

LABEL_15:
  v25 = sub_10023CCF8([v1 applicationType]);
  v26 = [v1 isHidden];
  v27 = [v1 isBeta];
  v28 = [v1 persistentRecordID];
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  type metadata accessor for InstallMetadataSchemaV1.InstallMetadata(0);
  swift_allocObject();
  return sub_10023BAB8(v44, v43, v4, v42, v41, v40, v39, v38, v37, v36, v35, v34, v21, v22, v24, v25, v26, v27, v29, v31);
}

uint64_t sub_10023A128()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10023DAC0(&unk_1003B7B20);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_10023A270(uint64_t a1)
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1001B2DDC(a1, &qword_1003B8220);
}

id InstallMetadataCache.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  sub_1001B2FE0();
  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = sub_10023A4A8(&qword_1003B6C70);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for InstallMetadataCache();
  return objc_msgSendSuper2(&v7, "init");
}

unint64_t sub_10023A4A8(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    v4(v3);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t InstallMetadataCache.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t InstallMetadataCache.__deallocating_deinit()
{
  InstallMetadataCache.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10023A584()
{
  v0 = type metadata accessor for InstallMetadataCache();
  v1 = sub_10023A4A8(&unk_1003B7880);

  return ModelActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_10023A640()
{
  sub_1001A6C04(&qword_1003B6DB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = sub_10023DB80();
  *(v0 + 32) = &type metadata for InstallMetadataSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_10023A6A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppMetadataNetworkFetcher.init(batchTask:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023A78C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10023A7BC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10023A7C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001AC94C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10023A7F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10023A824(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10023A82C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10023A860(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10023A860(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_10023A884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10023A8B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10023A8B8(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_10023A8E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10023A918(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_10023A97C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_10023A98C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_10023A99C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppMetadataNetworkFetcher.init(batchTask:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10023A9CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100237118(a1);
  *a2 = result;
  return result;
}

unint64_t sub_10023AA0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023A97C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10023AAE8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10023A98C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10023ABC4(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10023DA34(a1, &v6 - v3);
  return sub_10023A270(v4);
}

uint64_t sub_10023AC58()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10023DAC0(&unk_1003B7B18);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023AD48@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_100006454(a1, a1[3]);
  swift_getKeyPath();
  sub_1001A6C04(&qword_1003B5D10);
  sub_10023E768();
  sub_10023D970(v3);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a2 = 0;
  return result;
}

uint64_t sub_10023AE28()
{
  sub_10023E840();
  sub_10023E878();
  return sub_10023AF3C();
}

uint64_t sub_10023AE6C()
{
  swift_getKeyPath();
  sub_10023E730();
  sub_10023A4A8(v1);
  sub_10023E8CC();

  swift_getKeyPath();
  sub_1000048DC();
  sub_10023A4A8(v2);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10023AF3C()
{
  swift_getKeyPath();
  sub_10023E700();
  sub_10023A4A8(v0);
  sub_10023E7C8();
}

uint64_t sub_10023AFE4()
{
  sub_10023E81C();
  sub_10023E700();
  sub_10023A4A8(v0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023B080()
{
  swift_getKeyPath();
  sub_10023E730();
  sub_10023A4A8(v1);
  sub_10023E8CC();

  swift_getKeyPath();
  sub_1000048DC();
  sub_10023A4A8(v2);
  sub_10023D970(&unk_1003B7B10);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10023B178()
{
  sub_10023E81C();
  sub_10023E700();
  sub_10023A4A8(v0);
  sub_10023E768();
  sub_10023D970(v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023B258()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10023D7D0();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10023B368()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10023B434()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10023D77C();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023B504(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000048DC();
  sub_10023A4A8(v3);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v5;
}

uint64_t sub_10023B600()
{
  swift_getKeyPath();
  sub_10023E700();
  sub_10023A4A8(v0);
  sub_10023E79C();
}

uint64_t sub_10023B69C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_10023E700();
  sub_10023A4A8(v5);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023B758()
{
  swift_getKeyPath();
  sub_10023E730();
  sub_10023A4A8(v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_1000048DC();
  sub_10023A4A8(v1);
  PersistentModel.getValue<A>(forKey:)();

  return v3;
}

uint64_t sub_10023B838()
{
  swift_getKeyPath();
  sub_10023E700();
  sub_10023A4A8(v0);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_10023B8D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1001D09EC(*a1, v2);
  return sub_10023B914(v1, v2);
}

uint64_t sub_10023B914(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7A98);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000072CC(a1, a2);
}

uint64_t sub_10023B9FC()
{
  swift_getKeyPath();
  sub_10023A4A8(&unk_1003B7858);
  sub_10020ADD8();
  PersistentModel.setValue<A>(forKey:to:)();
}

void *sub_10023BAB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, uint64_t a19, unint64_t a20)
{
  v21 = v20;
  v36 = a7;
  v37 = a8;
  v34[1] = a5;
  v34[2] = a6;
  v34[0] = a4;
  v47 = a19;
  v48 = a20;
  v45 = a17;
  v46 = a18;
  v44 = a16;
  v43 = a15;
  v41 = a13;
  v42 = a14;
  v40 = a12;
  v38 = a10;
  v39 = a11;
  v35 = a9;
  v25 = *v20;
  v26 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v26);
  v28 = v34 - v27;
  v21[6] = sub_1001A6C04(&qword_1003B7B30);
  v29 = sub_10023A4A8(&unk_1003B7858);
  v49 = v25;
  v50 = v25;
  v51 = v29;
  v52 = v29;
  v21[7] = swift_getOpaqueTypeConformance2();
  sub_100005668(v21 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v21 + 4) = 16843009;
  ObservationRegistrar.init()();
  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  v49 = a1;
  v50 = a2;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v30 = a3;
  sub_10023DA34(a3, v28);
  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  sub_10023DAC0(&unk_1003B7B18);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1001B2DDC(v28, &qword_1003B8220);
  *(v21 + 16) = 0;
  sub_10023AD48(v21 + 3, v21 + 17);
  sub_10023AD48(v21 + 3, v21 + 18);
  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  v49 = v37;
  v50 = v35;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_10023AD48(v21 + 3, v21 + 19);
  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v40;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v41;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v42;
  sub_10023D85C();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  v49 = v43;
  sub_10023D77C();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v44;
  sub_10023D6B8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v45;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  LOBYTE(v49) = v46;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_100006454(v21 + 3, v21[6]);
  swift_getKeyPath();
  v32 = v47;
  v31 = v48;
  v49 = v47;
  v50 = v48;
  sub_10020ADD8();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1001B2DDC(v30, &qword_1003B8220);
  sub_1000072CC(v32, v31);
  return v21;
}

uint64_t sub_10023C18C(__int128 *a1)
{
  swift_beginAccess();
  sub_100005BE0(v1 + 24);
  sub_10005671C(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_10023C1E4()
{
  v21 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v21 - 8);
  v1 = v0;
  __chkstk_darwin(v21);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A6C04(&qword_1003B6BA0);
  v3 = *(v0 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002C7830;
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  sub_1001A6C04(&qword_1003B7AB0);
  type metadata accessor for Schema.Attribute.Option();
  v6 = swift_allocObject();
  v19 = xmmword_1002C33A0;
  *(v6 + 16) = xmmword_1002C33A0;
  static Schema.Attribute.Option.unique.getter();
  v7 = type metadata accessor for Schema.Attribute();
  swift_allocObject();
  v8 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v23 + 1) = v7;
  v24 = sub_10023A4A8(&unk_1003B7AB8);
  *&v22 = v8;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v25 = 0u;
  v26 = 0u;
  sub_1001A6C04(&qword_1003B7AC0);
  v9 = swift_allocObject();
  *(v9 + 16) = v19;
  sub_1001A6C04(&qword_1003B6BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002C3960;
  *(v10 + 32) = swift_getKeyPath();
  *(v9 + 32) = v10;
  v11 = sub_1001A6C04(&qword_1003B7AC8);
  swift_allocObject();
  v12 = Schema.Index.init(_:)();
  *(&v23 + 1) = v11;
  v13 = v20;
  v24 = sub_10023E0EC(&unk_1003B7AD0);
  *&v22 = v12;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DF388();
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16 >= *(v14 + 24) >> 1)
  {
    sub_1001DF388();
    v15 = v18;
  }

  *(v15 + 16) = v16 + 1;
  (*(v1 + 32))(v15 + v4 + v16 * v3, v13, v21);
  *&v22 = v5;
  sub_1001E7284(v15);
  return v22;
}

uint64_t sub_10023CA18(__int128 *a1)
{
  *(v1 + 48) = sub_1001A6C04(&qword_1003B7B30);
  sub_10023A4A8(&unk_1003B7858);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100005668((v1 + 24));
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 16843009;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_100005BE0(v1 + 24);
  sub_10005671C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_10023CB64()
{
  sub_100005BE0(v0 + 24);
  v1 = OBJC_IVAR____TtCV14GameDaemonCoreP33_F369526BAF9A0B850C0FA728FE9C91D723InstallMetadataSchemaV115InstallMetadata___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

unint64_t sub_10023CC20(unint64_t a1)
{
  if (a1 < 6)
  {
    return 0x40503020100uLL >> (8 * a1);
  }

  _StringGuts.grow(_:)(24);
  v2._object = 0x800000010030D2E0;
  v2._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v2);
  type metadata accessor for GKGamePlatform(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10023CCF8(unint64_t result)
{
  if (result >= 3)
  {
    _StringGuts.grow(_:)(32);
    v1._object = 0x800000010030D2C0;
    v1._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v1);
    type metadata accessor for GKApplicationType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int sub_10023CDBC()
{
  Hasher.init(_seed:)();
  sub_10023A4A8(&unk_1003B7AA0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_10023CE80(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10020AE7C(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001E07C4(v1 + 24, v3);
  return sub_10023CEFC;
}

void sub_10023CEFC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001E07C4(*a1, v2 + 40);
    swift_beginAccess();
    sub_100005BE0(v3 + 24);
    sub_10005671C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100005BE0(v2);
  }

  else
  {
    swift_beginAccess();
    sub_100005BE0(v3 + 24);
    sub_10005671C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_10023D0CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10023A4A8(&unk_1003B7858);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

unint64_t sub_10023D178(uint64_t a1)
{
  result = sub_10023A4A8(&unk_1003B7888);
  *(a1 + 8) = result;
  return result;
}

void sub_10023D280()
{
  sub_10023D2EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10023D2EC()
{
  if (!qword_1003B7920)
  {
    v0 = type metadata accessor for Predicate();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B7920);
    }
  }
}

uint64_t sub_10023D358()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10023D6B8()
{
  result = qword_1003B7AD8;
  if (!qword_1003B7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7AD8);
  }

  return result;
}

unint64_t sub_10023D70C()
{
  result = qword_1003B7AE0;
  if (!qword_1003B7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7AE0);
  }

  return result;
}

unint64_t sub_10023D77C()
{
  result = qword_1003B7AE8;
  if (!qword_1003B7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7AE8);
  }

  return result;
}

unint64_t sub_10023D7D0()
{
  result = qword_1003B7AF0;
  if (!qword_1003B7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7AF0);
  }

  return result;
}

unint64_t sub_10023D85C()
{
  result = qword_1003B7AF8;
  if (!qword_1003B7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7AF8);
  }

  return result;
}

unint64_t sub_10023D8B0()
{
  result = qword_1003B7B00;
  if (!qword_1003B7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B00);
  }

  return result;
}

unint64_t sub_10023D970(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B5D10);
    result = sub_10023E8AC();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10023DA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B8220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10023DAC0(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    v4 = v3;
    sub_1001A6C4C(&qword_1003B8220);
    sub_10023A4A8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10023DB80()
{
  result = qword_1003B7B28;
  if (!qword_1003B7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B28);
  }

  return result;
}

id sub_10023DBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = [a6 gameCenterCacheDatabaseURLForPlayerID:v10 language:a3 name:a4 fileManager:a5];

  return v11;
}

unint64_t sub_10023DC4C()
{
  result = qword_1003B7B38;
  if (!qword_1003B7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B38);
  }

  return result;
}

uint64_t sub_10023DCA0(void *a1)
{
  v1 = [a1 bundleShortVersion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10023DD04()
{
  result = qword_1003B7B70;
  if (!qword_1003B7B70)
  {
    sub_1001A6C4C(&qword_1003B7B68);
    sub_10023DD90();
    sub_10023DEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B70);
  }

  return result;
}

unint64_t sub_10023DD90()
{
  result = qword_1003B7B78;
  if (!qword_1003B7B78)
  {
    sub_1001A6C4C(&qword_1003B8320);
    sub_10023DE64(&unk_1003B8370);
    sub_10023DE64(&unk_1003B7B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B78);
  }

  return result;
}

unint64_t sub_10023DE64(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B8330);
    result = sub_10023E8AC();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10023DEBC()
{
  result = qword_1003B7B88;
  if (!qword_1003B7B88)
  {
    sub_1001A6C4C(&qword_1003B7B58);
    sub_10023E0EC(&unk_1003B7B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7B88);
  }

  return result;
}

unint64_t sub_10023DF6C()
{
  result = qword_1003B7BB8;
  if (!qword_1003B7BB8)
  {
    sub_1001A6C4C(&qword_1003B7BB0);
    sub_10023E000();
    sub_10023DEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BB8);
  }

  return result;
}

unint64_t sub_10023E000()
{
  result = qword_1003B7BC0;
  if (!qword_1003B7BC0)
  {
    sub_1001A6C4C(&qword_1003B7BA8);
    sub_10023E0EC(&unk_1003B7BC8);
    sub_10023E0EC(&unk_1003B7BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BC0);
  }

  return result;
}

unint64_t sub_10023E0EC(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    sub_1001A6C4C(v3);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstallMetadataCache.InstallMetadataCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstallMetadataSchemaV1.InstallMetadata.ApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstallMetadataSchemaV1.InstallMetadata.Platform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10023E3D4()
{
  result = qword_1003B7BE0;
  if (!qword_1003B7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BE0);
  }

  return result;
}

unint64_t sub_10023E42C()
{
  result = qword_1003B7BE8;
  if (!qword_1003B7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BE8);
  }

  return result;
}

unint64_t sub_10023E484()
{
  result = qword_1003B7BF0;
  if (!qword_1003B7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BF0);
  }

  return result;
}

unint64_t sub_10023E4DC()
{
  result = qword_1003B7BF8;
  if (!qword_1003B7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7BF8);
  }

  return result;
}

unint64_t sub_10023E534()
{
  result = qword_1003B7C00;
  if (!qword_1003B7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7C00);
  }

  return result;
}

unint64_t sub_10023E58C()
{
  result = qword_1003B7C08;
  if (!qword_1003B7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7C08);
  }

  return result;
}

unint64_t sub_10023E5E4()
{
  result = qword_1003B7C10;
  if (!qword_1003B7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7C10);
  }

  return result;
}

unint64_t sub_10023E638()
{
  result = qword_1003B7C18;
  if (!qword_1003B7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7C18);
  }

  return result;
}

unint64_t sub_10023E68C()
{
  result = qword_1003B7C20;
  if (!qword_1003B7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7C20);
  }

  return result;
}

uint64_t sub_10023E748()
{

  return swift_once();
}

uint64_t sub_10023E79C()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10023E7C8()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10023E81C()
{

  return swift_getKeyPath();
}

uint64_t sub_10023E840()
{
}

uint64_t sub_10023E8AC()
{

  return swift_getWitnessTable();
}

uint64_t sub_10023E8CC()
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void sub_10023E8EC()
{
  sub_10000469C();
  v2 = v0;
  v3 = type metadata accessor for Logger();
  sub_1000043C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000043F0();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  if (*(v2 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = v5;
      v31 = v3;
      v14 = *(v2 + 24);
      v15 = Strong;

      static os_log_type_t.info.getter();
      sub_100241468();
      _StringGuts.grow(_:)(38);
      sub_100241488("Starting Listener: ");
      v32 = v2;
      _print_unlocked<A, B>(_:_:)();
      v16._countAndFlagsBits = 0x6167656C6544202ELL;
      v16._object = 0xEF203A7369206574;
      String.append(_:)(v16);
      v30 = v15;
      v32 = v15;
      v33 = v14;
      sub_1001A6C04(&qword_1003B7470);
      _print_unlocked<A, B>(_:_:)();
      v18 = v34[0];
      v17 = v34[1];
      static GKLog.match.getter();
      v19 = Logger.logObject.getter();
      HIDWORD(v28) = v1;
      if (os_log_type_enabled(v19, v1))
      {
        v20 = sub_100005AE4();
        v21 = sub_100005808();
        v34[0] = v21;
        *v20 = 136315138;
        v22 = sub_100005C3C(v18, v17, v34);

        *(v20 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v19, BYTE4(v28), "Nearby - %s", v20, 0xCu);
        sub_100005BE0(v21);
        sub_1000043D8();
        sub_1000043D8();
      }

      else
      {
      }

      (*(v29 + 8))(v12, v31);
      swift_allocObject();
      swift_weakInit();

      sub_100007984(sub_1002411E0);
      NWListener.stateUpdateHandler.setter();

      swift_allocObject();
      swift_weakInit();

      sub_100007984(sub_1002411E8);
      NWListener.newConnectionHandler.setter();

      sub_1000049AC();
      v27 = static OS_dispatch_queue.main.getter();
      NWListener.start(queue:)();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = sub_100005AE4();
      v26 = sub_100005808();
      v34[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100005C3C(0xD000000000000037, 0x800000010030D3A0, v34);
      _os_log_impl(&_mh_execute_header, v24, v23, "Nearby - %s", v25, 0xCu);
      sub_100005BE0(v26);
      sub_1000043D8();
      sub_1000043D8();
    }

    (*(v5 + 8))(v9, v3);
  }

  sub_1000057D8();
}

void sub_10023ED44()
{
  sub_10000469C();
  v2 = v0;
  v3 = type metadata accessor for Logger();
  sub_1000043C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  sub_100241468();
  _StringGuts.grow(_:)(21);
  sub_100241488("Stopping listener: ");
  v17 = v0;
  _print_unlocked<A, B>(_:_:)();
  v10 = v18[0];
  v9 = v18[1];
  static GKLog.match.getter();
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v1))
  {
    v12 = sub_100005AE4();
    v18[0] = sub_100005808();
    *v12 = 136315138;
    v13 = sub_100005C3C(v10, v9, v18);

    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v11, v1, "Nearby - %s", v12, 0xCu);
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  (*(v5 + 8))(v8, v3);
  if (*(v2 + 32))
  {

    v14 = sub_1001B8378();
    sub_100007984(v14);
    sub_1001B8378();
    NWListener.stateUpdateHandler.setter();

    if (*(v2 + 32))
    {

      v15 = sub_1001B8378();
      sub_100007984(v15);
      sub_1001B8378();
      NWListener.newConnectionHandler.setter();

      if (*(v2 + 32))
      {

        NWListener.cancel()();
      }
    }
  }

  *(v2 + 32) = 0;

  sub_1000057D8();
}

void sub_10023EF90()
{
  sub_10000469C();
  v1 = type metadata accessor for Logger();
  sub_1000043C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000043F0();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = [objc_opt_self() currentDevice];
  if (v11)
  {
    v12 = sub_100004EB4(v11);
    if (!v13)
    {
      v29 = static os_log_type_t.info.getter();
      static GKLog.match.getter();
      v30 = Logger.logObject.getter();
      if (os_log_type_enabled(v30, v29))
      {
        v31 = sub_100005AE4();
        v32 = sub_100005808();
        v39[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100005C3C(0xD00000000000001DLL, 0x800000010030D400, v39);
        _os_log_impl(&_mh_execute_header, v30, v29, "Nearby - %s", v31, 0xCu);
        sub_100005BE0(v32);
        sub_1000043D8();
        sub_1000043D8();
      }

      (*(v3 + 8))(v7, v1);
      goto LABEL_17;
    }

    v14 = v12;
    v15 = v13;
    sub_1002413F0();
    v16 = sub_1001AFC04(101, 0xE100000000000000, v0[5]);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      swift_endAccess();
      sub_1002413F0();
      v20 = sub_1001AFC04(104, 0xE100000000000000, v0[5]);
      if (v21)
      {
        v22 = v21;
        v38 = v20;
        swift_endAccess();
        sub_1002413F0();
        v23 = sub_1001AFC04(28776, 0xE200000000000000, v0[5]);
        if (v24)
        {
          v25 = v24;
          v26 = v23;
          swift_endAccess();
          sub_1001A6C04(&qword_1003B63B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002C3970;
          *(inited + 32) = 0x4449656369766564;
          *(inited + 40) = 0xE800000000000000;
          *(inited + 48) = v14;
          *(inited + 56) = v15;
          *(inited + 64) = 101;
          *(inited + 72) = 0xE100000000000000;
          *(inited + 80) = v18;
          *(inited + 88) = v19;
          *(inited + 96) = 104;
          *(inited + 104) = 0xE100000000000000;
          *(inited + 112) = v38;
          *(inited + 120) = v22;
          *(inited + 128) = 28776;
          *(inited + 136) = 0xE200000000000000;
          *(inited + 144) = v26;
          *(inited + 152) = v25;
          *(inited + 160) = 0x4449726579616C70;
          *(inited + 168) = 0xE800000000000000;
          v28 = v0[9];
          *(inited + 176) = v0[8];
          *(inited + 184) = v28;

          Dictionary.init(dictionaryLiteral:)();
LABEL_17:
          sub_1000057D8();
          return;
        }

        swift_endAccess();
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }

    v33 = static os_log_type_t.info.getter();
    static GKLog.match.getter();
    v34 = Logger.logObject.getter();
    if (os_log_type_enabled(v34, v33))
    {
      v35 = sub_100005AE4();
      v36 = sub_100005808();
      v39[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100005C3C(0xD00000000000001ALL, 0x800000010030D420, v39);
      _os_log_impl(&_mh_execute_header, v34, v33, "Nearby - %s", v35, 0xCu);
      sub_100005BE0(v36);
      sub_1000043D8();
      sub_1000043D8();
    }

    (*(v3 + 8))(v10, v1);
    goto LABEL_17;
  }

  __break(1u);
}

id sub_10023F37C()
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    result = sub_100004EB4(result);
    if (v2)
    {
      v7 = result;

      v3._countAndFlagsBits = 36;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);

      v5 = *(v0 + 64);
      v4 = *(v0 + 72);

      v6._countAndFlagsBits = v5;
      v6._object = v4;
      String.append(_:)(v6);

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10023F438()
{
  sub_10000469C();
  v1 = v0;
  v106 = *v0;
  v2 = sub_1001A6C04(&qword_1003B7CE8);
  __chkstk_darwin(v2 - 8);
  v109 = v103 - v3;
  v4 = type metadata accessor for NWTXTRecord();
  sub_1000043C4();
  v110 = v5;
  __chkstk_darwin(v6);
  sub_1000043F0();
  v108 = v7 - v8;
  __chkstk_darwin(v9);
  v111 = v103 - v10;
  type metadata accessor for Logger();
  sub_1000043C4();
  v112 = v11;
  v113 = v12;
  __chkstk_darwin(v11);
  sub_1000043F0();
  v15 = (v13 - v14);
  v17 = __chkstk_darwin(v16);
  v19 = v103 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v103 - v21;
  v23 = __chkstk_darwin(v20);
  v105 = v103 - v24;
  v25 = __chkstk_darwin(v23);
  v107 = v103 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v103 - v28;
  __chkstk_darwin(v27);
  v30 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v30 - 8);
  v31 = sub_10023F37C();
  if (!v32)
  {
    v35 = static os_log_type_t.error.getter();
    static GKLog.match.getter();
    v36 = Logger.logObject.getter();
    if (os_log_type_enabled(v36, v35))
    {
      v37 = sub_100005AE4();
      v38 = sub_100005808();
      v116 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_100005C3C(0xD000000000000036, 0x800000010030D4B0, &v116);
      sub_100241410(&_mh_execute_header, v39, v35, "Nearby - %s");
      sub_100005BE0(v38);
      sub_1000043D8();
      sub_1000043D8();
    }

    sub_10024147C();
    v41 = v15;
    goto LABEL_11;
  }

  v103[3] = v31;
  v104 = v4;
  type metadata accessor for NWParameters();
  v33 = sub_1002450BC();

  static NWEndpoint.Port.any.getter();
  type metadata accessor for NWListener();
  swift_allocObject();
  v34 = NWListener.init(using:on:)();
  v103[1] = v33;
  v0[4] = v34;
  v103[2] = v34;

  v42 = objc_opt_self();
  v43 = [v42 currentDevice];
  if (v43)
  {
    v44 = sub_100004EB4(v43);
    v46 = v104;
    if (v45)
    {
      v47 = v45;
      v48 = v44;
      sub_10023EF90();
      if (v49)
      {
        NWTXTRecord.init(_:)();
        v50 = static os_log_type_t.info.getter();
        sub_10000459C();
        _StringGuts.grow(_:)(39);

        sub_1001F7304();
        v116 = 0xD000000000000025;
        v117 = v51;
        v52._countAndFlagsBits = v48;
        v52._object = v47;
        String.append(_:)(v52);

        v54 = v116;
        v53 = v117;
        static GKLog.match.getter();
        v55 = Logger.logObject.getter();
        if (os_log_type_enabled(v55, v50))
        {
          v56 = sub_100005AE4();
          v116 = sub_100005808();
          *v56 = 136315138;
          v57 = sub_100005C3C(v54, v53, &v116);

          *(v56 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v55, v50, "Nearby - %s", v56, 0xCu);
          sub_1001F7008();
          sub_1000047A4();
        }

        else
        {
        }

        v79 = v112;
        v80 = *(v113 + 8);
        v80(v29, v112);
        (*(v110 + 16))(v108, v111, v46);
        v81 = v109;
        NWListener.Service.init(name:type:domain:txtRecord:)();
        v82 = type metadata accessor for NWListener.Service();
        sub_1001A9674(v81, 0, 1, v82);
        NWListener.service.setter();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v84 = Strong;
          v85 = v1[3];
          v86 = static os_log_type_t.info.getter();
          sub_10000459C();
          _StringGuts.grow(_:)(43);
          v87._countAndFlagsBits = 0xD00000000000001BLL;
          v87._object = 0x800000010030D5F0;
          String.append(_:)(v87);
          v114 = v1;
          _print_unlocked<A, B>(_:_:)();
          v88._countAndFlagsBits = 0x6167656C6564202CLL;
          v88._object = 0xEC000000203A6574;
          String.append(_:)(v88);
          v114 = v84;
          v115 = v85;
          sub_1001A6C04(&qword_1003B7470);
          _print_unlocked<A, B>(_:_:)();
          v90 = v116;
          v89 = v117;
          v91 = v107;
          static GKLog.match.getter();
          v92 = Logger.logObject.getter();
          if (os_log_type_enabled(v92, v86))
          {
            v93 = sub_100005AE4();
            v94 = sub_100005808();
            v116 = v94;
            *v93 = 136315138;
            v95 = sub_100005C3C(v90, v89, &v116);

            *(v93 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v92, v86, "Nearby - %s", v93, 0xCu);
            sub_100005BE0(v94);
            sub_1000043D8();
            sub_1000043D8();
            sub_100241450();
          }

          else
          {
            sub_100241450();
          }

          swift_unknownObjectRelease();
          v102 = v91;
        }

        else
        {
          v96 = static os_log_type_t.error.getter();
          v97 = v105;
          static GKLog.match.getter();
          v98 = Logger.logObject.getter();
          if (os_log_type_enabled(v98, v96))
          {
            v99 = sub_100005AE4();
            v100 = sub_100005808();
            v116 = v100;
            *v99 = 136315138;
            *(v99 + 4) = sub_100005C3C(0xD000000000000030, 0x800000010030D5B0, &v116);
            sub_100241410(&_mh_execute_header, v101, v96, "Nearby - %s");
            sub_100005BE0(v100);
            sub_1000043D8();
            sub_1000043D8();
          }

          v102 = v97;
        }

        v80(v102, v79);
        (*(v110 + 8))(v111, v104);
        goto LABEL_13;
      }

      v72 = static os_log_type_t.error.getter();
      static GKLog.match.getter();
      v73 = Logger.logObject.getter();
      v74 = os_log_type_enabled(v73, v72);
      v75 = v112;
      if (v74)
      {
        v76 = sub_100005AE4();
        v77 = sub_100005808();
        v116 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_100005C3C(0xD000000000000028, 0x800000010030D550, &v116);
        sub_100241410(&_mh_execute_header, v78, v72, "Nearby - %s");
        sub_100005BE0(v77);
        sub_1000043D8();
        sub_1000043D8();
      }

      sub_100241450();

      sub_10024147C();
      v41 = v22;
      v58 = v75;
LABEL_12:
      v40(v41, v58);
LABEL_13:
      sub_1000057D8();
      return;
    }

    v59 = static os_log_type_t.error.getter();
    sub_10000459C();
    _StringGuts.grow(_:)(42);

    sub_1001F7304();
    v116 = 0xD000000000000028;
    v117 = v60;
    v61 = [v42 currentDevice];
    v62 = sub_100219A68(v61);
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v67 = v116;
    v66 = v117;
    static GKLog.match.getter();
    v68 = Logger.logObject.getter();
    if (os_log_type_enabled(v68, v59))
    {
      v69 = sub_100005AE4();
      v70 = sub_100005808();
      v116 = v70;
      *v69 = 136315138;
      v71 = sub_100005C3C(v67, v66, &v116);

      *(v69 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v68, v59, "Nearby - %s", v69, 0xCu);
      sub_100005BE0(v70);
      sub_1000043D8();
      sub_1000043D8();
      sub_100241450();
    }

    else
    {
      sub_100241450();
    }

    sub_10024147C();
    v41 = v19;
LABEL_11:
    v58 = v112;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_10023FFF8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for NWError();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1001A6C04(&qword_1003B74B8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for NWListener.State();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002401D8, 0, 0);
}

uint64_t sub_1002401D8()
{
  v69 = v0;
  v1 = v0[7];
  v2 = *(v1 + 32);
  v0[22] = v2;
  if (!v2)
  {
LABEL_28:
    sub_10024142C();

    sub_1000046F8();

    return v64();
  }

  (*(v0[20] + 16))(v0[21], v0[6], v0[19]);
  v3 = sub_100005558();
  v5 = v4(v3);
  if (v5 != enum case for NWListener.State.failed(_:))
  {
    if (v5 == enum case for NWListener.State.ready(_:))
    {
      v21 = v0[18];

      v22 = static os_log_type_t.info.getter();
      sub_100006138();
      _StringGuts.grow(_:)(20);

      sub_1001F7304();
      v67 = 0xD000000000000012;
      v68 = v23;
      NWListener.port.getter();
      v24 = sub_100219ACC(v21);
      v26 = v25;
      sub_100241388(v21);
      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);

      v28 = v68;
      static GKLog.match.getter();
      v29 = Logger.logObject.getter();
      v30 = os_log_type_enabled(v29, v22);
      v31 = v0[17];
      v33 = v0[12];
      v32 = v0[13];
      if (v30)
      {
        v65 = v0[17];
        v34 = sub_100005AE4();
        v35 = sub_100005808();
        v67 = v35;
        *v34 = 136315138;
        v36 = sub_100005C3C(0xD000000000000012, v28, &v67);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v22, "Nearby - %s", v34, 0xCu);
        sub_100005BE0(v35);
        sub_1000043D8();
        sub_1000043D8();

        (*(v32 + 8))(v65, v33);
      }

      else
      {

        (*(v32 + 8))(v31, v33);
      }
    }

    else if (v5 == enum case for NWListener.State.cancelled(_:))
    {

      v44 = static os_log_type_t.info.getter();
      static GKLog.match.getter();
      v45 = Logger.logObject.getter();
      v46 = os_log_type_enabled(v45, v44);
      v48 = v0[13];
      v47 = v0[14];
      v49 = v0[12];
      if (v46)
      {
        v66 = v0[14];
        v50 = sub_100005AE4();
        v51 = sub_100005808();
        v67 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_100005C3C(0xD000000000000025, 0x800000010030D440, &v67);
        _os_log_impl(&_mh_execute_header, v45, v44, "Nearby - %s", v50, 0xCu);
        sub_100005BE0(v51);
        sub_1000047A4();
        sub_1000043D8();

        (*(v48 + 8))(v66, v49);
      }

      else
      {

        (*(v48 + 8))(v47, v49);
      }

      *(v1 + 32) = 0;
    }

    else
    {
      (*(v0[20] + 8))(v0[21], v0[19]);
    }

    goto LABEL_28;
  }

  v6 = v0[21];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  (*(v0[20] + 96))(v6, v0[19]);
  (*(v10 + 32))(v7, v6, v9);
  *v8 = -65569;
  (*(v10 + 104))(v8, enum case for NWError.dns(_:), v9);

  LOBYTE(v6) = static NWError.== infix(_:_:)();
  v11 = *(v10 + 8);
  v0[23] = v11;
  v0[24] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = static os_log_type_t.info.getter();
  if (v6)
  {
    sub_100006138();
    _StringGuts.grow(_:)(35);
    v13 = v68;
    v0[4] = v67;
    v0[5] = v13;
    v14._object = 0x800000010030D470;
    v14._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15._countAndFlagsBits = 0x726174736572202CLL;
    v15._object = 0xEC000000676E6974;
    String.append(_:)(v15);
    static GKLog.match.getter();
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v17 = sub_100005AE4();
      v67 = sub_100005808();
      v18 = sub_1001F710C(4.8149e-34, v67);

      *(v17 + 4) = v18;
      sub_1001F70EC(&_mh_execute_header, v19, v20, "Nearby - %s");
      sub_1001F7008();
      sub_1000047A4();
    }

    else
    {
    }

    v52 = sub_100005558();
    v53(v52);
    v54 = v0[7];
    sub_10023ED44();
    sub_10023F438();
    sub_10023E8EC();
    goto LABEL_25;
  }

  sub_100006138();
  _StringGuts.grow(_:)(33);
  v37 = v68;
  v0[2] = v67;
  v0[3] = v37;
  v38._object = 0x800000010030D470;
  v38._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v38);
  _print_unlocked<A, B>(_:_:)();
  v39._countAndFlagsBits = 0x6970706F7473202CLL;
  v39._object = 0xEA0000000000676ELL;
  String.append(_:)(v39);
  static GKLog.match.getter();
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v12))
  {
    v40 = sub_100005AE4();
    v67 = sub_100005808();
    v41 = sub_1001F710C(4.8149e-34, v67);

    *(v40 + 4) = v41;
    sub_1001F70EC(&_mh_execute_header, v42, v43, "Nearby - %s");
    sub_1001F7008();
    sub_1000047A4();
  }

  else
  {
  }

  v55 = sub_100005558();
  v56(v55);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    v54 = v0[7];
    sub_10023ED44();
LABEL_25:
    sub_100006ABC();
    (v16)(v54, v12);
    goto LABEL_28;
  }

  v58 = v0[11];
  v59 = v0[8];
  v60 = v0[9];
  sub_1001B8304();
  v0[26] = swift_allocError();
  (*(v60 + 16))(v61, v58, v59);
  v62 = swift_task_alloc();
  v0[27] = v62;
  *v62 = v0;
  v62[1] = sub_100240998;

  return sub_1001F2EB8();
}

uint64_t sub_100240998()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100240ABC, 0, 0);
}

uint64_t sub_100240ABC()
{
  v3 = *(v1 + 56);
  sub_10023ED44();
  sub_100006ABC();
  v2(v3, v0);
  sub_10024142C();

  sub_1000046F8();

  return v4();
}

uint64_t sub_100240B7C(uint64_t a1)
{
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_1001A9674(v7, 1, 1, v10);
    (*(v3 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v9;
    (*(v3 + 32))(&v12[v11], &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_1001D1C0C();
  }

  return result;
}

uint64_t sub_100240D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1001AF328;

  return sub_10023FFF8(a5);
}

uint64_t sub_100240DF4(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TaskPriority();
    sub_1001A9674(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v8[5] = a1;

    sub_1001D1E74();
  }

  return result;
}

uint64_t sub_100240F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_100240F2C, 0, 0);
}

uint64_t sub_100240F2C()
{
  sub_100005528();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_10024100C;

    return sub_1001F3384();
  }

  else
  {
    **(v0 + 16) = 1;
    sub_1000046F8();

    return v4();
  }
}

uint64_t sub_10024100C()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100241114, 0, 0);
}

uint64_t sub_100241114()
{
  **(v0 + 16) = *(v0 + 40) == 0;
  sub_1000046F8();
  return v1();
}

uint64_t sub_100241148()
{
  sub_1001AF9D0(v0 + 16);

  sub_1000072CC(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_100241188()
{
  sub_100241148();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1002411F0()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001AF9F8;
  v4 = sub_1001B8360();

  return sub_100240F08(v4, v5, v6, v7, v2);
}

uint64_t sub_1002412A0()
{
  type metadata accessor for NWListener.State();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001AF328;
  v2 = sub_1001B8360();

  return sub_100240D58(v2, v3, v4, v5, v6);
}

uint64_t sub_100241388(uint64_t a1)
{
  v2 = sub_1001A6C04(&qword_1003B74B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002413F0()
{

  return swift_beginAccess();
}

void sub_100241410(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_10024142C()
{
}

uint64_t sub_100241450()
{
}

void sub_100241488(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000013;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

id sub_1002414A8(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FairPlaySessionProvider();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10024151C()
{
  sub_100005528();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  sub_1001A6C04(&qword_1003B60F0);
  v1[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[8] = v4;
  sub_1001B6A00(v4);
  v1[9] = v5;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10020D518();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10024161C()
{
  v1 = v0[6];
  v2 = *(v1 + 112);
  v0[13] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[14] = v3;
    v4 = sub_100244808();
    sub_1001A6C04(&unk_1003B6170);
    *v3 = v0;
    v3[1] = sub_1002418B4;
    v5 = v0 + 3;
  }

  else
  {
    v6 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[4];
    v23 = v0[5];
    Date.init()();
    v13 = type metadata accessor for TaskPriority();
    sub_1001A9674(v10, 1, 1, v13);
    (*(v9 + 16))(v6, v7, v11);
    v14 = sub_1002445A4();
    v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 2) = v1;
    *(v17 + 3) = v14;
    *(v17 + 4) = v12;
    *(v17 + 5) = v1;
    (*(v9 + 32))(&v17[v15], v6, v11);
    *&v17[v16] = v23;
    swift_retain_n();
    v18 = v12;
    v19 = v23;
    sub_1001D5B60();
    v2 = v20;
    v0[16] = v20;
    *(v1 + 112) = v20;

    v21 = swift_task_alloc();
    v0[17] = v21;
    v4 = sub_100244808();
    sub_1001A6C04(&unk_1003B6170);
    *v21 = v0;
    v21[1] = sub_100241A4C;
    v5 = v0 + 2;
  }

  return Task.value.getter(v5, v2, v4);
}

uint64_t sub_1002418B4()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100241BFC;
  }

  else
  {
    v6 = sub_1002419D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002419D4()
{
  sub_1000057FC();

  sub_100244BE8();

  v0 = sub_1001E3BC4();

  return v1(v0);
}

uint64_t sub_100241A4C()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 144) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100241C74;
  }

  else
  {
    v6 = sub_100241B6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100241B6C()
{
  sub_1000057FC();

  v0 = sub_100244B7C();
  v1(v0);
  sub_100244BE8();

  v2 = sub_1001E3BC4();

  return v3(v2);
}

uint64_t sub_100241BFC()
{
  sub_1000057FC();

  sub_100244BE8();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100241C74()
{
  sub_1000057FC();

  v0 = sub_100244B7C();
  v1(v0);
  sub_100244BE8();

  sub_1000046F8();

  return v2();
}

uint64_t sub_100241D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[45] = a6;
  v7[46] = a7;
  v7[43] = a4;
  v7[44] = a5;
  v7[42] = a1;
  v8 = type metadata accessor for Logger();
  v7[47] = v8;
  v7[48] = *(v8 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[52] = v9;
  *v9 = v7;
  v9[1] = sub_100241E50;

  return sub_100242E4C((v7 + 2));
}

uint64_t sub_100241E50()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  v2[53] = v0;

  if (v0)
  {
    v6 = v2[44];

    return _swift_task_switch(sub_100242C10, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v2[54] = v7;
    *v7 = v4;
    v7[1] = sub_100242000;

    return sub_1002435E0();
  }
}

uint64_t sub_100242000()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v4;
  *(v2 + 448) = v5;
  *(v2 + 456) = v0;

  if (v0)
  {
    v6 = *(v2 + 352);
    *(v2 + 136) = *(v2 + 16);
    sub_1001EB8D4(v2 + 136);
    *(v2 + 152) = *(v2 + 32);
    sub_1001EB8D4(v2 + 152);
    *(v2 + 168) = *(v2 + 48);
    sub_1001EB8D4(v2 + 168);
    v7 = sub_100242CC4;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 352);
    v7 = sub_100242194;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100242194()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = [objc_allocWithZone(GKFairPlaySAPSession) init];
  v4 = *(v0 + 24);
  *(v0 + 464) = v3;
  *(v0 + 472) = v4;
  v5 = String._bridgeToObjectiveC()();
  [v3 setSAPVersion:v5];

  *(v0 + 312) = 0;
  v6 = sub_10024484C(v2, v1, v0 + 312, v3, &selRef_exchangeData_error_);
  v7 = *(v0 + 312);
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    *(v0 + 480) = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 488) = v10;

    static GKLog.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "MESCAL:did exchange initialize cert data", v13, 2u);
    }

    v14 = *(v0 + 408);
    v15 = *(v0 + 376);
    v16 = *(v0 + 384);

    v17 = *(v16 + 8);
    *(v0 + 496) = v17;
    v17(v14, v15);
    v18 = swift_task_alloc();
    *(v0 + 504) = v18;
    *v18 = v0;
    v18[1] = sub_100242490;

    return sub_100243B5C();
  }

  else
  {
    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = v7;

    *(v0 + 184) = *(v0 + 32);
    sub_1001EB8D4(v0 + 184);
    *(v0 + 200) = *(v0 + 48);
    sub_1001EB8D4(v0 + 200);
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000072CC(v21, v20);

    *(*(v0 + 352) + 112) = 0;

    swift_willThrow();

    sub_1000046F8();

    return v23();
  }
}

uint64_t sub_100242490()
{
  v2 = *v1;
  v3 = *v1;
  sub_100004410();
  *v4 = v3;
  v5 = *v1;
  sub_1001D14B0();
  *v6 = v5;
  *(v3 + 512) = v7;
  *(v3 + 520) = v8;
  *(v3 + 528) = v0;

  v9 = *(v2 + 352);

  if (v0)
  {
    *(v3 + 216) = *(v3 + 32);
    sub_1001EB8D4(v3 + 216);
    *(v3 + 232) = *(v3 + 48);
    sub_1001EB8D4(v3 + 232);
    v10 = sub_100242D78;
  }

  else
  {
    *(v3 + 248) = *(v3 + 32);
    sub_1001EB8D4(v3 + 248);
    *(v3 + 264) = *(v3 + 48);
    sub_1001EB8D4(v3 + 264);
    v10 = sub_100242650;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100242650()
{
  v7 = *(v0 + 520);
  v8 = *(v0 + 512);
  v9 = objc_opt_self();
  *(v0 + 320) = 0;
  v10 = sub_10024484C(v8, v7, v0 + 320, v9, &selRef__gkDictionaryWithServerData_error_);
  v11 = *(v0 + 320);
  if (!v10)
  {
    sub_100244B8C();
    v55 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1000072CC(v5, v4);
    sub_1000072CC(v1, v8);

    v56 = v3;
    v57 = v2;
    goto LABEL_14;
  }

  v12 = v10;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  static GKLog.daemon.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "MESCAL:got the setup data from the server", v17, 2u);
  }

  v18 = *(v0 + 496);
  v19 = *(v0 + 400);
  v20 = *(v0 + 376);
  v21 = *(v0 + 384);

  v18(v19, v20);
  *(v0 + 280) = 0xD000000000000010;
  *(v0 + 288) = 0x800000010030D6A0;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(v13, (v0 + 104));

  sub_1001B2E34(v0 + 64);
  if (!*(v0 + 128))
  {
    sub_1001FCBA8(v0 + 104);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    sub_100244B8C();
    sub_100244550();
    v58 = sub_10020D5C8();
    sub_100244B5C(v58, v59);
    sub_1000072CC(v20, v13);
    sub_1000072CC(v18, &type metadata for Any);

    v56 = v5;
    v57 = v21;
    goto LABEL_14;
  }

  sub_10020D518();
  v22 = Data.init(base64Encoded:options:)();
  v24 = v23;

  isa = 0;
  if (v24 >> 60 != 15)
  {
    v26 = sub_1001D1B80();
    sub_1001D09EC(v26, v27);
    sub_1001D1B80();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v28 = sub_1001D1B80();
    sub_1001B9874(v28, v29);
  }

  v72 = v22;
  v30 = *(v0 + 464);
  *(v0 + 328) = 0;
  v31 = [v30 exchangeData:isa error:v0 + 328];

  v32 = *(v0 + 328);
  if (v31)
  {
    v33 = *(v0 + 368);
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000072CC(v34, v35);

    Date.timeIntervalSinceNow.getter();
    v37 = v36;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    v44 = Date._bridgeToObjectiveC()().super.isa;
    sub_1002448AC(v38, v40, v41, v43, v44, v33);

    static GKLog.daemon.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 520);
    v49 = *(v0 + 512);
    v51 = *(v0 + 480);
    v50 = *(v0 + 488);
    v53 = *(v0 + 440);
    v52 = *(v0 + 448);
    if (v47)
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      *(v54 + 4) = -v37;
      _os_log_impl(&_mh_execute_header, v45, v46, "MESCAL:did finish exchanging cert data after %f seconds", v54, 0xCu);

      sub_1000072CC(v49, v48);
      sub_1000072CC(v51, v50);
      sub_1000072CC(v53, v52);

      sub_1001B9874(v72, v24);
    }

    else
    {
      sub_1000072CC(*(v0 + 512), *(v0 + 520));
      sub_1000072CC(v51, v50);
      sub_1000072CC(v53, v52);
      sub_1001B9874(v72, v24);
    }

    v69 = *(v0 + 464);
    v70 = *(v0 + 336);
    (*(v0 + 496))(*(v0 + 392), *(v0 + 376));
    *v70 = v69;

    sub_1000046F8();
    goto LABEL_15;
  }

  v62 = v32;
  v63 = *(v0 + 520);
  v64 = *(v0 + 512);
  v65 = *(v0 + 480);
  v71 = *(v0 + 488);
  v66 = *(v0 + 464);
  v68 = *(v0 + 440);
  v67 = *(v0 + 448);
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000072CC(v68, v67);
  sub_1000072CC(v64, v63);

  sub_1001B9874(v72, v24);
  v56 = v65;
  v57 = v71;
LABEL_14:
  sub_1000072CC(v56, v57);
  sub_1000045AC();
  swift_willThrow();

  sub_1000046F8();
LABEL_15:

  return v60();
}

uint64_t sub_100242C10()
{
  sub_100005838();
  sub_1000045AC();
  swift_willThrow();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100242CC4()
{
  sub_100005838();
  sub_1000045AC();
  swift_willThrow();

  sub_1000046F8();

  return v0();
}

uint64_t sub_100242D78()
{
  sub_100005838();
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  sub_1000072CC(v0[60], v0[61]);

  sub_1000072CC(v2, v3);
  sub_1000045AC();
  swift_willThrow();

  sub_1000046F8();

  return v4();
}

uint64_t sub_100242E4C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return _swift_task_switch(sub_100242E6C, 0, 0);
}

uint64_t sub_100242E6C()
{
  sub_1000057FC();
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100242F84;
  v2 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&qword_1003B7D28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100244414;
  v0[13] = &unk_10036DFB0;
  v0[14] = v2;
  [v1 getValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100242F84()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  return _swift_task_switch(sub_100243058, 0, 0);
}

uint64_t sub_100243058()
{
  if (!*(v0 + 144))
  {
    goto LABEL_11;
  }

  strcpy((v0 + 176), "gk-sap-version");
  *(v0 + 191) = -18;
  AnyHashable.init<A>(_:)();
  sub_100244BA4();
  sub_1001B2E34(v0 + 80);
  if (!*(v0 + 168))
  {
    goto LABEL_9;
  }

  if ((sub_100006190() & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = *(v0 + 176);
  *(v0 + 176) = 0xD000000000000015;
  *(v0 + 184) = 0x800000010030D6C0;
  AnyHashable.init<A>(_:)();
  sub_100244BA4();
  sub_1001B2E34(v0 + 80);
  if (!*(v0 + 168))
  {
    goto LABEL_9;
  }

  if ((sub_100006190() & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  strcpy((v0 + 176), "gk-sap-setup");
  *(v0 + 189) = 0;
  *(v0 + 190) = -5120;
  AnyHashable.init<A>(_:)();
  sub_100244BA4();

  sub_1001B2E34(v0 + 80);
  if (*(v0 + 168))
  {
    if (sub_100006190())
    {
      v5 = *(v0 + 184);
      v4 = *(v0 + 192);
      v6 = *(v0 + 176);
      *(v0 + 80) = v1;
      *v4 = dispatch thunk of CustomStringConvertible.description.getter();
      v4[1] = v7;
      v4[2] = v3;
      v4[3] = v2;
      v4[4] = v6;
      v4[5] = v5;
      sub_1000046F8();
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:

  sub_1001FCBA8(v0 + 144);
LABEL_11:
  sub_100244550();
  sub_10020D5C8();
  *v9 = 0;
  swift_willThrow();
  sub_1000046F8();
LABEL_12:

  return v8();
}

uint64_t sub_10024333C(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_100243414;

  return sub_10024151C();
}

uint64_t sub_100243414()
{
  sub_100005838();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;
  sub_100004410();
  *v9 = v8;

  v10 = *(v5 + 40);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    sub_10020D518();
    v12();
    _Block_release(v10);
  }

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1002435E0()
{
  sub_100005528();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1001A6C04(&qword_1003B5800);
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[6] = v4;
  sub_1001B6A00(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_10020D518();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1002436D8()
{
  v1 = *(v0 + 40);
  URL.init(string:)();
  v2 = type metadata accessor for URL();
  v3 = sub_1001A969C(v1, 1, v2);
  v5 = 0;
  if (v3 != 1)
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    v7 = sub_1001D1B80();
    v8(v7);
  }

  LOWORD(v20) = 0;
  v9 = [*(v0 + 24) requestWithURL:v5 playerID:0 authToken:0 pushToken:0 client:0 gameDescriptor:0 postData:0 includeUDID:v20 includeAPNS:0 sapSession:?];

  if (v9)
  {
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 32))(v10, v11, v12);
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *v14 = v0;
    v14[1] = sub_1002438F4;
    v15 = *(v0 + 72);

    return NSURLSession.data(for:delegate:)(v15, 0);
  }

  else
  {
    sub_100244550();
    v16 = sub_10020D5C8();
    sub_100244B5C(v16, v17);

    sub_1000046F8();

    return v18();
  }
}

uint64_t sub_1002438F4()
{
  sub_100005838();
  sub_100244BD4();
  v5 = *v3;
  v6 = *v3;
  sub_100004410();
  *v7 = v6;
  *v7 = *v3;
  v6[11] = v1;

  v8 = v5[4];
  if (v1)
  {
    v9 = sub_100243ACC;
  }

  else
  {

    v6[12] = v0;
    v6[13] = v4;
    v9 = sub_100243A30;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100243A30()
{
  sub_1000057FC();
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_100243ACC()
{
  sub_1000057FC();
  (*(v0[7] + 8))(v0[9], v0[6]);

  sub_1000046F8();

  return v1();
}

uint64_t sub_100243B5C()
{
  sub_1000057FC();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[15] = v5;
  sub_1001A6C04(&qword_1003B5800);
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v1[21] = v6;
  sub_1001B6A00(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_10020D518();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100243C8C()
{
  v1 = *(v0 + 120);
  sub_1001A6C04(&qword_1003B63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C3290;
  *(inited + 32) = 0x737265762D706173;
  *(inited + 40) = 0xEB000000006E6F69;
  v3 = v1[1];
  *(inited + 48) = *v1;
  *(inited + 56) = v3;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x800000010030D6A0;

  *(inited + 80) = Data.base64EncodedString(options:)(0);
  sub_100244BC0();
  Dictionary.init(dictionaryLiteral:)();
  v4 = objc_opt_self();
  sub_100244BC0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 112) = 0;
  v6 = [v4 dataWithPropertyList:isa format:100 options:0 error:v0 + 112];

  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v0 + 200) = v9;
    *(v0 + 208) = v11;
    URL.init(string:)();
    v12 = type metadata accessor for URL();
    v14 = 0;
    if (sub_1001A969C(v8, 1, v12) != 1)
    {
      v15 = *(v0 + 160);
      URL._bridgeToObjectiveC()(v13);
      v14 = v16;
      (*(*(v12 - 8) + 8))(v15, v12);
    }

    v17 = sub_10024448C(v14, 0, 0, 0, 0, 0, v9, v11, 0, 0, *(v0 + 128));

    if (v17)
    {
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      v20 = *(v0 + 168);
      v21 = *(v0 + 176);
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v21 + 32))(v19, v18, v20);
      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      v22[1] = sub_100244038;
      v23 = *(v0 + 192);

      return NSURLSession.data(for:delegate:)(v23, 0);
    }

    sub_100244550();
    v25 = sub_10020D5C8();
    sub_100244B5C(v25, v26);
    sub_1000072CC(v9, v11);
  }

  else
  {
    v24 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000046F8();

  return v27();
}

uint64_t sub_100244038()
{
  sub_100005838();
  sub_100244BD4();
  v5 = *v3;
  v6 = *v3;
  sub_100004410();
  *v7 = v6;
  *v7 = *v3;
  v6[28] = v1;

  v8 = v5[19];
  if (v1)
  {
    v9 = sub_100244280;
  }

  else
  {

    v6[29] = v0;
    v6[30] = v4;
    v9 = sub_1002441A0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002441A0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  sub_1000072CC(v0[25], v0[26]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v6 = v0[29];
  v5 = v0[30];

  return v4(v5, v6);
}

uint64_t sub_100244280()
{
  sub_1000057FC();
  sub_1000072CC(*(v0 + 200), *(v0 + 208));
  v1 = sub_100244B7C();
  v2(v1);

  sub_1000046F8();

  return v3();
}

void sub_100244344()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100244394()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1002443C4()
{
  sub_100244394();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100244414(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  return sub_1001D1358(v3, v4);
}

id sub_10024448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, void *a11)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  LOWORD(v19) = a9;
  v17 = [a11 requestWithURL:a1 playerID:a2 authToken:a3 pushToken:a4 client:a5 gameDescriptor:a6 postData:isa includeUDID:v19 includeAPNS:a10 sapSession:?];

  return v17;
}

unint64_t sub_100244550()
{
  result = qword_1003B7D18;
  if (!qword_1003B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7D18);
  }

  return result;
}

unint64_t sub_1002445A4()
{
  result = qword_1003B7D20;
  if (!qword_1003B7D20)
  {
    type metadata accessor for FairPlaySessionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7D20);
  }

  return result;
}

uint64_t sub_1002445F8()
{
  sub_100005838();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Date();
  sub_1001B6A00(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v13 = *(v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_100244724;

  return sub_100241D04(v4, v9, v10, v11, v12, v0 + v7, v13);
}

uint64_t sub_100244724()
{
  sub_100005528();
  v1 = *v0;
  sub_100004410();
  *v2 = v1;

  sub_1000046F8();

  return v3();
}

unint64_t sub_100244808()
{
  result = qword_1003B6290;
  if (!qword_1003B6290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B6290);
  }

  return result;
}

id sub_10024484C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = [a4 *a5];

  return v9;
}

void sub_1002448AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();

  [a6 reportEvent:v8 type:v9 startTime:a5];
}

uint64_t sub_100244968()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100244724;

  return sub_10024333C(v2, v3, v5, v4);
}

_BYTE *storeEnumTagSinglePayload for FairPlaySessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100244B08()
{
  result = qword_1003B7D30;
  if (!qword_1003B7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B7D30);
  }

  return result;
}

uint64_t sub_100244B5C(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

double sub_100244BA4()
{

  return sub_1001AFA68(v1, v0);
}

uint64_t sub_100244BE8()
{
}

uint64_t ArcadeStateMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() shared];
  if (v7)
  {
    v8 = v7;
    v9 = 0x6E776F6E6B6E75;
    v10 = [v7 arcadeSubscriptionState];

    if (v10 >= 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v10;
    }

    static GKLog.daemon.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v25 = v10;
      v22 = a1;
      v23 = v1;
      v10 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v10 = 136315138;
      v14 = 0xE700000000000000;
      v15 = v13;
      v21 = v3;
      v16 = 0x6E776F6E6B6E75;
      switch(v25)
      {
        case 1:
          v16 = 0x7263736275736E75;
          v14 = 0xEC00000064656269;
          break;
        case 2:
          v14 = 0x800000010030D730;
          v16 = 0xD000000000000013;
          break;
        case 3:
          v16 = 0x6269726373627573;
          v14 = 0xEA00000000006465;
          break;
        default:
          break;
      }

      v17 = sub_100005C3C(v16, v14, v24);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Arcade subscription state = %s", v10, 0xCu);
      sub_100005BE0(v15);

      (*(v4 + 8))(v6, v21);
      a1 = v22;
      LOBYTE(v10) = v25;
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v18 = 0xE700000000000000;
    switch(v10)
    {
      case 0:
        goto LABEL_16;
      case 1:
        v9 = 0x7263736275736E75;
        v18 = 0xEC00000064656269;
        goto LABEL_16;
      case 2:
        v18 = 0x800000010030D730;
        v9 = 0xD000000000000013;
        goto LABEL_16;
      case 3:
        v9 = 0x6269726373627573;
        v18 = 0xEA00000000006465;
LABEL_16:
        v24[3] = &type metadata for String;
        v24[0] = v9;
        v24[1] = v18;
        sub_10020F3F8(a1, *(a1 + 24));
        dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();
        return sub_100005BE0(v24);
      default:
        break;
    }
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0);
}

uint64_t sub_100244FD4()
{
  v0 = type metadata accessor for MetricsFieldExclusionRequest();
  sub_10020F4B4(v0, qword_1003C0AC8);
  sub_10020F518(v0, qword_1003C0AC8);
  return MetricsFieldExclusionRequest.init(rawValue:)();
}

uint64_t sub_100245048()
{
  type metadata accessor for NWProtocolTLS.Options();
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  v0 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_peer_authentication_required(v0, 0);
  swift_unknownObjectRelease();

  return sub_100245204();
}

uint64_t sub_1002450BC()
{
  v0 = sub_100245140();
  type metadata accessor for NWProtocolTLS.Options();
  swift_allocObject();
  NWProtocolTLS.Options.init()();
  v1 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v1, v0);
  swift_unknownObjectRelease();
  v2 = sub_100245204();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100245140()
{
  v0 = String._bridgeToObjectiveC()();
  SelfSignedIdentity = _CFHTTPServerCreateSelfSignedIdentity();
  if (SelfSignedIdentity)
  {
    v2 = SelfSignedIdentity;
    v3 = sec_identity_create(SelfSignedIdentity);
    if (v3)
    {
      v4 = v3;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100245204()
{
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();

  v0 = NWParameters.__allocating_init(tls:tcp:)();

  NWParameters.includePeerToPeer.setter();
  if (qword_1003B54D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for NWProtocolFramer.Options();
  swift_allocObject();

  v1 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();

  v2 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  sub_10024539C(0, *v3);
  sub_100216914(0, 0, v1);
  v2(&v5, 0);

  return v0;
}

uint64_t sub_10024539C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_100245440()
{
  v1 = *(v0 + OBJC_IVAR___GKBulletinAttachment_identifier);

  return v1;
}

uint64_t sub_100245560@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___GKBulletinAttachment_url;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_100245618(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = &v4[OBJC_IVAR___GKBulletinAttachment_identifier];
  *v7 = a1;
  v7[1] = a2;
  v8 = OBJC_IVAR___GKBulletinAttachment_url;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v4[v8], a3, v9);
  v4[OBJC_IVAR___GKBulletinAttachment_hiddenFromDefaultExpandedView] = a4;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for BulletinAttachment();
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a3, v9);
  return v11;
}

void sub_1002457C0(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  sub_1000048F8();

  URL._bridgeToObjectiveC()(OBJC_IVAR___GKBulletinAttachment_url);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  sub_1000048F8();

  v9 = *(v2 + OBJC_IVAR___GKBulletinAttachment_hiddenFromDefaultExpandedView);
  v10 = sub_100246950();
  [a1 encodeBool:v9 forKey:v10];
}

id sub_100245928(void *a1)
{
  v2 = v1;
  v4 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for URL();
  sub_1000043C4();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  sub_1001A7B44(0, &qword_1003B7DB0);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v16 && (v17 = v16, v31 = 0, v32 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v17, (v18 = v32) != 0))
  {
    v29 = v31;
    sub_1001A7B44(0, &qword_1003B7DB8);
    v19 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v19)
    {
      v20 = v19;
      sub_1001A9674(v6, 1, 1, v7);
      sub_100246728(&qword_1003B7DC0);
      dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

      if (sub_1001A969C(v6, 1, v7) != 1)
      {
        v23 = *(v9 + 32);
        v23(v13, v6, v7);
        v23(v15, v13, v7);
        v24 = &v2[OBJC_IVAR___GKBulletinAttachment_identifier];
        *v24 = v29;
        v24[1] = v18;
        (*(v9 + 16))(&v2[OBJC_IVAR___GKBulletinAttachment_url], v15, v7);
        v25 = sub_100246950();
        v26 = [a1 decodeBoolForKey:v25];

        (*(v9 + 8))(v15, v7);
        v2[OBJC_IVAR___GKBulletinAttachment_hiddenFromDefaultExpandedView] = v26;
        v27 = type metadata accessor for BulletinAttachment();
        v30.receiver = v2;
        v30.super_class = v27;
        v21 = objc_msgSendSuper2(&v30, "init");

        return v21;
      }
    }
  }

  else
  {
  }

  type metadata accessor for BulletinAttachment();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_100245D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x800000010030D820 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100245E30(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_100245E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100245D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100245EB8(uint64_t a1)
{
  v2 = sub_1002466D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100245EF4(uint64_t a1)
{
  v2 = sub_1002466D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_100245F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BulletinAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BulletinAttachment()
{
  result = qword_1003B7D70;
  if (!qword_1003B7D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10024603C()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1002460E0(void *a1)
{
  v3 = sub_1001A6C04(&qword_1003B7D98);
  sub_1000043C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_100006454(a1, a1[3]);
  sub_1002466D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    type metadata accessor for URL();
    sub_100246728(&unk_1003B7DA0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1002462F4(void *a1)
{
  v3 = type metadata accessor for URL();
  sub_1000043C4();
  v19 = v4;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001A6C04(&qword_1003B7D80);
  sub_1000043C4();
  __chkstk_darwin(v8);
  sub_100006454(a1, a1[3]);
  sub_1002466D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005BE0(a1);
    type metadata accessor for BulletinAttachment();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v21[OBJC_IVAR___GKBulletinAttachment_identifier];
    *v11 = v9;
    v11[1] = v12;
    v18 = v11;
    v23 = 1;
    sub_100246728(&qword_1003B7D90);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 32))(&v21[OBJC_IVAR___GKBulletinAttachment_url], v7, v3);
    v23 = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v21;
    v21[OBJC_IVAR___GKBulletinAttachment_hiddenFromDefaultExpandedView] = v13 & 1;
    v15 = type metadata accessor for BulletinAttachment();
    v22.receiver = v14;
    v22.super_class = v15;
    v3 = objc_msgSendSuper2(&v22, "init");
    v16 = sub_1000045D0();
    v17(v16);
    sub_100005BE0(a1);
  }

  return v3;
}