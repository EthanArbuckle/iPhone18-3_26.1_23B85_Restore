uint64_t sub_1001BAA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698C08, &unk_101390730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BAAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001BAB50()
{
  result = qword_101698C50;
  if (!qword_101698C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698C50);
  }

  return result;
}

uint64_t sub_1001BABA4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1001881A8(v2, v3, v4);
}

uint64_t sub_1001BAC4C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_1001B7190(a1, a2, v2);
}

uint64_t sub_1001BAD58()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1003A0A0C(v4, v0 + v3, v6, v7);
}

unint64_t sub_1001BAEE0()
{
  result = qword_101698CC8;
  if (!qword_101698CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CC8);
  }

  return result;
}

unint64_t sub_1001BAF88()
{
  result = qword_101698CD0;
  if (!qword_101698CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CD0);
  }

  return result;
}

unint64_t sub_1001BAFE0()
{
  result = qword_101698CF0;
  if (!qword_101698CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698CF0);
  }

  return result;
}

unint64_t sub_1001BB034()
{
  result = qword_101698D28;
  if (!qword_101698D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698D28);
  }

  return result;
}

unint64_t sub_1001BB088()
{
  result = qword_101698D48;
  if (!qword_101698D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698D48);
  }

  return result;
}

uint64_t sub_1001BB130()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A3244(v0 + v3);
}

uint64_t sub_1001BB214()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1003A659C(v0 + v3);
}

uint64_t sub_1001BB2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BB348(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1006ADD3C(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1001BB408(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10017C0E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BB570(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100174124(a1, a2, v2);
}

uint64_t sub_1001BB61C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10102AB90(v0);
}

uint64_t sub_1001BB6AC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100174088(v2, v0 + 24);
}

uint64_t sub_1001BB744()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BB784()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100173DAC(v2, v0 + 24);
}

uint64_t sub_1001BB81C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014650;

  return sub_100ECDAC8(v0);
}

uint64_t sub_1001BB8AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001BB8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10017C364(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BB9BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001BBA4C;

  return sub_100186F4C(v0);
}

uint64_t sub_1001BBA4C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1001BBB48()
{
  v2 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1003A5AF4(v4, v0 + v3);
}

uint64_t sub_1001BBC20(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_100171CB4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBD10(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_1001713BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBDFC(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_100170E04(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBED0(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_1001707D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BBFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001BBFCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016FF18(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BC110(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016F9A0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BC1E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001BC20C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016F48C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BC2F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10016F054(a1, v4, v5, v7, v6);
}

uint64_t sub_1001BC3B4(uint64_t a1)
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

  return sub_10016ECA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BC484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BC4CC(uint64_t a1)
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

  return sub_10016E618(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BC594(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016DE6C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BC6DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_10016D5E0(a1, v8, v9, v11, v1 + v6, v10, v13, v14);
}

uint64_t sub_1001BC824()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_1001BC904(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = v1[4];
  v12 = v1 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_10016CE88(a1, v8, v9, v11, v1 + v6, v10, v13, v14);
}

uint64_t sub_1001BCA4C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016C8D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BCB20(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016C314(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BCCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for MACAddress() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));
  return sub_100E70158(*(v1 + 16), (v1 + v4), *(v1 + v5 + 8), *(v1 + v5 + 16), a1);
}

uint64_t sub_1001BCDC0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10018D030();
}

uint64_t sub_1001BCE7C(uint64_t a1)
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

  return sub_10016BE2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BCF44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BCF8C(uint64_t a1)
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

  return sub_10016BB68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BD054(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016B5A4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD190(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016AF88(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD264(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10016A9C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD3A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BD3F0(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016A52C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD4C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001BD50C(uint64_t a1)
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
  v10[1] = sub_100014744;

  return sub_10016A064(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001BD5E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100169A2C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

void sub_1001BD71C(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100E6F32C(v5, (v1 + v4), v6, a1);
}

uint64_t sub_1001BD7BC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1001BD844(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_1001691D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BD980(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168C10(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDABC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168658(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDBF8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1001BDCDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_100168094(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001BDE20(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = v1[4];
  v12 = v1[5];
  v14 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1001665B0(a1, v8, v9, v11, v12, v1 + v5, v10, v14);
}

uint64_t sub_1001BDF7C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_1001BE054(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1001726F0(a1, v1);
}

uint64_t sub_1001BE0EC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t getEnumTagSinglePayload for BeaconSharingService.BeaconSharingServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BeaconSharingService.BeaconSharingServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001BE2E8()
{
  result = qword_101698E58;
  if (!qword_101698E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E58);
  }

  return result;
}

unint64_t sub_1001BE340()
{
  result = qword_101698E60;
  if (!qword_101698E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E60);
  }

  return result;
}

unint64_t sub_1001BE398()
{
  result = qword_101698E68;
  if (!qword_101698E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E68);
  }

  return result;
}

unint64_t sub_1001BE3F0()
{
  result = qword_101698E70;
  if (!qword_101698E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E70);
  }

  return result;
}

uint64_t sub_1001BE4E0(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v19 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v19, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v6, *(&v6 + 1));
    v18 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v18, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v17 = v1[3];
    v6 = v1[3];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v17, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v16 = v1[4];
    v6 = v1[4];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v16, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v15 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v15, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v14 = v1[5];
    v6 = v1[5];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v14, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v13 = v1[7];
    v6 = v1[7];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v13, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v12 = v1[6];
    v6 = v1[6];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v12, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v11 = v1[8];
    v6 = v1[8];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v11, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v10 = v1[9];
    v6 = v1[9];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[10];
    v6 = v1[10];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v6, *(&v6 + 1));
  return sub_100007BAC(v7);
}

double sub_1001BE978@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001BF4F4(a1, v11);
  if (!v2)
  {
    v5 = v19;
    a2[8] = v18;
    a2[9] = v5;
    v6 = v21;
    a2[10] = v20;
    a2[11] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v17;
    a2[6] = v16;
    a2[7] = v8;
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    result = *&v12;
    v10 = v13;
    a2[2] = v12;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_1001BE9F4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17)
{
  v128 = result;
  v141 = a5;
  v142 = a6;
  v21 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_10;
    }

    v24 = *(a5 + 16);
    v23 = *(a5 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v21)
  {
    v22 = BYTE6(a6);
    goto LABEL_10;
  }

  LODWORD(v22) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v22 = v22;
LABEL_10:
  v26 = 60 - v22;
  if (__OFSUB__(60, v22))
  {
    __break(1u);
    goto LABEL_167;
  }

  sub_100017D5C(a5, a6);
  v139 = sub_100845C88(v26);
  v140 = v28;
  sub_100776394(&v139, 0);
  v29 = v139;
  v30 = v140;
  Data.append(_:)();
  result = sub_100016590(v29, v30);
  v139 = a7;
  v140 = a8;
  v31 = a8 >> 62;
  if ((a8 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(a8);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v34 = *(a7 + 16);
  v33 = *(a7 + 24);
  v25 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v25)
  {
    __break(1u);
LABEL_18:
    LODWORD(v32) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v32 = v32;
  }

LABEL_21:
  v35 = 100 - v32;
  if (__OFSUB__(100, v32))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v122 = a4;
  sub_100017D5C(a7, a8);
  v137 = sub_100845C88(v35);
  v138 = v36;
  sub_100776394(&v137, 0);
  v38 = v137;
  v37 = v138;
  Data.append(_:)();
  result = sub_100016590(v38, v37);
  v137 = a10;
  v138 = a11;
  v39 = a11 >> 62;
  if ((a11 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(a11);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v39 != 2)
  {
    v40 = 0;
    goto LABEL_32;
  }

  v42 = *(a10 + 16);
  v41 = *(a10 + 24);
  v25 = __OFSUB__(v41, v42);
  v40 = v41 - v42;
  if (v25)
  {
    __break(1u);
LABEL_29:
    LODWORD(v40) = HIDWORD(a10) - a10;
    if (__OFSUB__(HIDWORD(a10), a10))
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v40 = v40;
  }

LABEL_32:
  v43 = 706 - v40;
  if (__OFSUB__(706, v40))
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100017D5C(a10, a11);
  v135 = sub_100845C88(v43);
  v136 = v44;
  sub_100776394(&v135, 0);
  v45 = v135;
  v46 = v136;
  Data.append(_:)();
  result = sub_100016590(v45, v46);
  v47 = v142;
  v48 = v140;
  v133 = v141;
  v134 = v139;
  if (v31 <= 1)
  {
    if (!v31)
    {
      v49 = BYTE6(a8);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v31 != 2)
  {
    v49 = 0;
    goto LABEL_43;
  }

  v51 = *(a7 + 16);
  v50 = *(a7 + 24);
  v25 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v25)
  {
    __break(1u);
LABEL_40:
    LODWORD(v49) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v49 = v49;
  }

LABEL_43:
  v135 = v49;
  v121 = v47;
  sub_100017D5C(v133, v47);
  v129 = v48;
  sub_100017D5C(v134, v48);
  sub_1000C3258();
  v52 = FixedWidthInteger.data.getter();
  v54 = v53;
  v127 = Data.trimmed.getter();
  v132 = v55;
  sub_100016590(v52, v54);
  result = v137;
  v56 = v138;
  if (v39 > 1)
  {
    if (v39 != 2 || !__OFSUB__(*(a10 + 24), *(a10 + 16)))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  else if (!v39)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

LABEL_51:
  v120 = result;
  v57 = v56;
  sub_100017D5C(result, v56);
  v58 = FixedWidthInteger.data.getter();
  v60 = v59;
  v126 = Data.trimmed.getter();
  v131 = v61;
  result = sub_100016590(v58, v60);
  v62 = a13 >> 62;
  if ((a13 >> 62) > 1)
  {
    if (v62 != 2 || !__OFSUB__(*(a12 + 24), *(a12 + 16)))
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  else if (!v62)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(HIDWORD(a12), a12))
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

LABEL_59:
  v63 = FixedWidthInteger.data.getter();
  v65 = v64;
  v125 = Data.trimmed.getter();
  v130 = v66;
  sub_100016590(a10, a11);
  sub_100016590(a7, a8);
  sub_100016590(a5, a6);
  result = sub_100016590(v63, v65);
  v67 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v68 = a3;
    if (!v67)
    {
      v69 = BYTE6(a2);
LABEL_68:
      v70 = v122;
      v71 = v129;
      goto LABEL_69;
    }

LABEL_66:
    LODWORD(v69) = HIDWORD(v128) - v128;
    if (__OFSUB__(HIDWORD(v128), v128))
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v69 = v69;
    goto LABEL_68;
  }

  v70 = v122;
  v68 = a3;
  v71 = v129;
  if (v67 != 2)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v73 = *(v128 + 16);
  v72 = *(v128 + 24);
  v25 = __OFSUB__(v72, v73);
  v69 = v72 - v73;
  if (v25)
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_69:
  if (v69 != 89)
  {
    goto LABEL_190;
  }

  v74 = v70 >> 62;
  if ((v70 >> 62) <= 1)
  {
    if (!v74)
    {
      v75 = BYTE6(v70);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  if (v74 != 2)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v77 = *(v68 + 16);
  v76 = *(v68 + 24);
  v25 = __OFSUB__(v76, v77);
  v75 = v76 - v77;
  if (v25)
  {
    __break(1u);
LABEL_77:
    LODWORD(v75) = HIDWORD(v68) - v68;
    if (__OFSUB__(HIDWORD(v68), v68))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v75 = v75;
  }

LABEL_79:
  if (v75 != 32)
  {
    goto LABEL_191;
  }

  v78 = v71 >> 62;
  if ((v71 >> 62) <= 1)
  {
    if (!v78)
    {
      v79 = BYTE6(v71);
LABEL_89:
      v81 = v120;
      v80 = v121;
      goto LABEL_90;
    }

LABEL_87:
    LODWORD(v79) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    v79 = v79;
    goto LABEL_89;
  }

  v81 = v120;
  v80 = v121;
  if (v78 != 2)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v83 = *(v134 + 16);
  v82 = *(v134 + 24);
  v25 = __OFSUB__(v82, v83);
  v79 = v82 - v83;
  if (v25)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_90:
  if (v79 != 100)
  {
    goto LABEL_192;
  }

  v84 = v132 >> 62;
  if ((v132 >> 62) <= 1)
  {
    if (!v84)
    {
      v85 = BYTE6(v132);
      goto LABEL_100;
    }

    goto LABEL_98;
  }

  if (v84 != 2)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v87 = *(v127 + 16);
  v86 = *(v127 + 24);
  v25 = __OFSUB__(v86, v87);
  v85 = v86 - v87;
  if (v25)
  {
    __break(1u);
LABEL_98:
    LODWORD(v85) = HIDWORD(v127) - v127;
    if (__OFSUB__(HIDWORD(v127), v127))
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v85 = v85;
  }

LABEL_100:
  if (v85 != 1)
  {
    goto LABEL_193;
  }

  v88 = v80 >> 62;
  if ((v80 >> 62) <= 1)
  {
    if (!v88)
    {
      v89 = BYTE6(v80);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  if (v88 != 2)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v91 = *(v133 + 16);
  v90 = *(v133 + 24);
  v25 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v25)
  {
    __break(1u);
LABEL_108:
    LODWORD(v89) = HIDWORD(v133) - v133;
    if (__OFSUB__(HIDWORD(v133), v133))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v89 = v89;
  }

LABEL_110:
  if (v89 != 60)
  {
    goto LABEL_194;
  }

  if ((v57 >> 62) <= 1)
  {
    if (v57 >> 62 == 1)
    {
      LODWORD(v92) = HIDWORD(v81) - v81;
      if (!__OFSUB__(HIDWORD(v81), v81))
      {
        v92 = v92;
        goto LABEL_117;
      }

      goto LABEL_169;
    }

LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  if (v57 >> 62 != 2)
  {
    goto LABEL_188;
  }

  v94 = *(v81 + 16);
  v93 = *(v81 + 24);
  v25 = __OFSUB__(v93, v94);
  v92 = v93 - v94;
  if (v25)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_117:
  if (v92 != 706)
  {
    goto LABEL_188;
  }

  v95 = v131 >> 62;
  if ((v131 >> 62) <= 1)
  {
    if (!v95)
    {
      v96 = BYTE6(v131);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (v95 != 2)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v98 = *(v126 + 16);
  v97 = *(v126 + 24);
  v25 = __OFSUB__(v97, v98);
  v96 = v97 - v98;
  if (v25)
  {
    __break(1u);
LABEL_125:
    LODWORD(v96) = HIDWORD(v126) - v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    v96 = v96;
  }

LABEL_127:
  if (v96 != 2)
  {
    goto LABEL_195;
  }

  if (v62 <= 1)
  {
    if (v62 == 1)
    {
      LODWORD(v99) = HIDWORD(a12) - a12;
      if (!__OFSUB__(HIDWORD(a12), a12))
      {
        v99 = v99;
        goto LABEL_134;
      }

      goto LABEL_171;
    }

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  if (v62 != 2)
  {
    goto LABEL_189;
  }

  v101 = *(a12 + 16);
  v100 = *(a12 + 24);
  v25 = __OFSUB__(v100, v101);
  v99 = v100 - v101;
  if (v25)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_134:
  if (v99 != 554)
  {
    goto LABEL_189;
  }

  v102 = v130 >> 62;
  if ((v130 >> 62) <= 1)
  {
    if (!v102)
    {
      v103 = BYTE6(v130);
      goto LABEL_144;
    }

LABEL_142:
    LODWORD(v103) = HIDWORD(v125) - v125;
    if (!__OFSUB__(HIDWORD(v125), v125))
    {
      v103 = v103;
      goto LABEL_144;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v102 != 2)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v105 = *(v125 + 16);
  v104 = *(v125 + 24);
  v25 = __OFSUB__(v104, v105);
  v103 = v104 - v105;
  if (v25)
  {
    __break(1u);
    goto LABEL_142;
  }

LABEL_144:
  if (v103 != 2)
  {
    goto LABEL_196;
  }

  v106 = a15 >> 62;
  if ((a15 >> 62) <= 1)
  {
    if (!v106)
    {
      v107 = BYTE6(a15);
      goto LABEL_154;
    }

LABEL_152:
    LODWORD(v107) = HIDWORD(a14) - a14;
    if (!__OFSUB__(HIDWORD(a14), a14))
    {
      v107 = v107;
      goto LABEL_154;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v106 != 2)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v109 = *(a14 + 16);
  v108 = *(a14 + 24);
  v25 = __OFSUB__(v108, v109);
  v107 = v108 - v109;
  if (v25)
  {
    __break(1u);
    goto LABEL_152;
  }

LABEL_154:
  if (v107 != 8)
  {
    goto LABEL_197;
  }

  v110 = a17 >> 62;
  if ((a17 >> 62) <= 1)
  {
    if (!v110)
    {
      v111 = BYTE6(a17);
      goto LABEL_164;
    }

LABEL_162:
    LODWORD(v111) = HIDWORD(a16) - a16;
    if (!__OFSUB__(HIDWORD(a16), a16))
    {
      v111 = v111;
      goto LABEL_164;
    }

    goto LABEL_181;
  }

  if (v110 != 2)
  {
    goto LABEL_198;
  }

  v113 = *(a16 + 16);
  v112 = *(a16 + 24);
  v25 = __OFSUB__(v112, v113);
  v111 = v112 - v113;
  if (v25)
  {
    __break(1u);
    goto LABEL_162;
  }

LABEL_164:
  if (v111 == 24)
  {
    v114 = v57;
    v115 = v57;
    v116 = v68;
    sub_100016590(v81, v114);
    sub_100016590(v134, v129);
    result = sub_100016590(v133, v80);
    *a9 = v128;
    *(a9 + 8) = a2;
    *(a9 + 16) = v116;
    *(a9 + 24) = v70;
    *&v117 = v133;
    *(&v117 + 1) = v80;
    *&v118 = v134;
    *(&v118 + 1) = v129;
    *(a9 + 32) = v117;
    *(a9 + 48) = v118;
    *(a9 + 64) = v127;
    *(a9 + 72) = v132;
    *(a9 + 80) = v81;
    *(a9 + 88) = v115;
    *(a9 + 96) = v126;
    *(a9 + 104) = v131;
    *(a9 + 112) = a12;
    *(a9 + 120) = a13;
    *(a9 + 128) = v125;
    *(a9 + 136) = v130;
    *(a9 + 144) = a14;
    *(a9 + 152) = a15;
    *(a9 + 160) = a16;
    *(a9 + 168) = a17;
    *(a9 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_198:
  __break(1u);
  return result;
}

uint64_t sub_1001BF2DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001BF304(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1001BF338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 192))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001BF38C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 184) = 0;
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1001BF41C(uint64_t a1)
{
  *(a1 + 8) = sub_1001BF44C();
  result = sub_1001BF4A0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001BF44C()
{
  result = qword_101698E80;
  if (!qword_101698E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E80);
  }

  return result;
}

unint64_t sub_1001BF4A0()
{
  result = qword_101698E88;
  if (!qword_101698E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E88);
  }

  return result;
}

uint64_t sub_1001BF4F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v103, v104);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v103);
    return sub_100007BAC(a1);
  }

  v100 = v6;
  v105 = v7;
  sub_10015049C(v103, v104);
  v98 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v99 = v8;
  sub_10015049C(v103, v104);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v103, v104);
  v94 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v95 = v12;
  v96 = v9;
  v97 = v11;
  sub_100017D5C(v9, v11);
  sub_1000E0A3C();
  v13 = DataProtocol.intValue.getter();
  sub_10002EA98(v13, v9, v11, &v101);
  v14 = v101;
  v15 = v102;
  sub_10015049C(v103, v104);
  v90 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v91 = v16;
  v92 = v15;
  v93 = v14;
  sub_10015049C(v103, v104);
  v88 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v19 = v18;
  sub_10015049C(v103, v104);
  v20 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v87 = v21;
  v84 = v19;
  v85 = v20;
  sub_100017D5C(v88, v19);
  v22 = DataProtocol.intValue.getter();
  sub_10002EA98(v22, v88, v19, &v101);
  v23 = v102;
  v86 = v101;
  sub_10015049C(v103, v104);
  v24 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v26 = v25;
  v82 = v23;
  v83 = v24;
  sub_10015049C(v103, v104);
  v80 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v81 = v27;
  sub_100017D5C(v83, v26);
  v28 = DataProtocol.intValue.getter();
  sub_10002EA98(v28, v83, v26, &v101);
  v29 = v102;
  v89 = v101;
  sub_10015049C(v103, v104);
  v78 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v79 = v30;
  sub_10015049C(v103, v104);
  v31 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v33 = v32;
  sub_100016590(v83, v26);
  sub_100016590(v88, v84);
  result = sub_100016590(v96, v97);
  v34 = v105 >> 62;
  if ((v105 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = BYTE6(v105);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v34 != 2)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v36 = *(v100 + 16);
  v37 = *(v100 + 24);
  v38 = __OFSUB__(v37, v36);
  v35 = v37 - v36;
  if (v38)
  {
    __break(1u);
LABEL_11:
    LODWORD(v35) = HIDWORD(v100) - v100;
    if (__OFSUB__(HIDWORD(v100), v100))
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v35 = v35;
  }

LABEL_13:
  if (v35 != 89)
  {
    goto LABEL_124;
  }

  v39 = v99 >> 62;
  if ((v99 >> 62) <= 1)
  {
    if (!v39)
    {
      v40 = BYTE6(v99);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v39 != 2)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v41 = *(v98 + 16);
  v42 = *(v98 + 24);
  v38 = __OFSUB__(v42, v41);
  v40 = v42 - v41;
  if (v38)
  {
    __break(1u);
LABEL_21:
    LODWORD(v40) = HIDWORD(v98) - v98;
    if (__OFSUB__(HIDWORD(v98), v98))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v40 = v40;
  }

LABEL_23:
  if (v40 != 32)
  {
    goto LABEL_125;
  }

  v43 = v92 >> 62;
  if ((v92 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(v92);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v43 != 2)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v46 = *(v93 + 16);
  v45 = *(v93 + 24);
  v38 = __OFSUB__(v45, v46);
  v44 = v45 - v46;
  if (v38)
  {
    __break(1u);
LABEL_31:
    LODWORD(v44) = HIDWORD(v93) - v93;
    if (__OFSUB__(HIDWORD(v93), v93))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v44 = v44;
  }

LABEL_33:
  if (v44 != 100)
  {
    goto LABEL_126;
  }

  v47 = v95 >> 62;
  if ((v95 >> 62) <= 1)
  {
    if (!v47)
    {
      v48 = BYTE6(v95);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v47 != 2)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v49 = *(v94 + 16);
  v50 = *(v94 + 24);
  v38 = __OFSUB__(v50, v49);
  v48 = v50 - v49;
  if (v38)
  {
    __break(1u);
LABEL_41:
    LODWORD(v48) = HIDWORD(v94) - v94;
    if (__OFSUB__(HIDWORD(v94), v94))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v48 = v48;
  }

LABEL_43:
  if (v48 != 1)
  {
    goto LABEL_127;
  }

  v51 = v91 >> 62;
  if ((v91 >> 62) <= 1)
  {
    if (!v51)
    {
      v52 = BYTE6(v91);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v51 != 2)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v54 = *(v90 + 16);
  v53 = *(v90 + 24);
  v38 = __OFSUB__(v53, v54);
  v52 = v53 - v54;
  if (v38)
  {
    __break(1u);
LABEL_51:
    LODWORD(v52) = HIDWORD(v90) - v90;
    if (__OFSUB__(HIDWORD(v90), v90))
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v52 = v52;
  }

LABEL_53:
  if (v52 != 60)
  {
    goto LABEL_128;
  }

  if ((v82 >> 62) <= 1)
  {
    if (v82 >> 62 == 1)
    {
      LODWORD(v55) = HIDWORD(v86) - v86;
      if (!__OFSUB__(HIDWORD(v86), v86))
      {
        v55 = v55;
        goto LABEL_60;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v82 >> 62 != 2)
  {
    goto LABEL_122;
  }

  v57 = *(v86 + 16);
  v56 = *(v86 + 24);
  v38 = __OFSUB__(v56, v57);
  v55 = v56 - v57;
  if (v38)
  {
    goto LABEL_110;
  }

LABEL_60:
  if (v55 != 706)
  {
    goto LABEL_122;
  }

  v58 = v87 >> 62;
  if ((v87 >> 62) <= 1)
  {
    if (!v58)
    {
      v59 = BYTE6(v87);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  if (v58 != 2)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v61 = *(v85 + 16);
  v60 = *(v85 + 24);
  v38 = __OFSUB__(v60, v61);
  v59 = v60 - v61;
  if (v38)
  {
    __break(1u);
LABEL_68:
    LODWORD(v59) = HIDWORD(v85) - v85;
    if (__OFSUB__(HIDWORD(v85), v85))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v59 = v59;
  }

LABEL_70:
  if (v59 != 2)
  {
    goto LABEL_129;
  }

  if ((v29 >> 62) <= 1)
  {
    if (v29 >> 62 == 1)
    {
      LODWORD(v62) = HIDWORD(v89) - v89;
      if (!__OFSUB__(HIDWORD(v89), v89))
      {
        v62 = v62;
        goto LABEL_77;
      }

      goto LABEL_111;
    }

LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v29 >> 62 != 2)
  {
    goto LABEL_123;
  }

  v64 = *(v89 + 16);
  v63 = *(v89 + 24);
  v38 = __OFSUB__(v63, v64);
  v62 = v63 - v64;
  if (v38)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_77:
  if (v62 != 554)
  {
    goto LABEL_123;
  }

  v65 = v81 >> 62;
  if ((v81 >> 62) <= 1)
  {
    if (!v65)
    {
      v66 = BYTE6(v81);
      goto LABEL_87;
    }

LABEL_85:
    LODWORD(v66) = HIDWORD(v80) - v80;
    if (!__OFSUB__(HIDWORD(v80), v80))
    {
      v66 = v66;
      goto LABEL_87;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v65 != 2)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v68 = *(v80 + 16);
  v67 = *(v80 + 24);
  v38 = __OFSUB__(v67, v68);
  v66 = v67 - v68;
  if (v38)
  {
    __break(1u);
    goto LABEL_85;
  }

LABEL_87:
  if (v66 != 2)
  {
    goto LABEL_130;
  }

  v69 = v79 >> 62;
  if ((v79 >> 62) <= 1)
  {
    if (!v69)
    {
      v70 = BYTE6(v79);
      goto LABEL_97;
    }

LABEL_95:
    LODWORD(v70) = HIDWORD(v78) - v78;
    if (!__OFSUB__(HIDWORD(v78), v78))
    {
      v70 = v70;
      goto LABEL_97;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v69 != 2)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v72 = *(v78 + 16);
  v71 = *(v78 + 24);
  v38 = __OFSUB__(v71, v72);
  v70 = v71 - v72;
  if (v38)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  if (v70 != 8)
  {
    goto LABEL_131;
  }

  v73 = v33 >> 62;
  if ((v33 >> 62) <= 1)
  {
    if (!v73)
    {
      v74 = BYTE6(v33);
      goto LABEL_107;
    }

LABEL_105:
    LODWORD(v74) = HIDWORD(v31) - v31;
    if (!__OFSUB__(HIDWORD(v31), v31))
    {
      v74 = v74;
      goto LABEL_107;
    }

    goto LABEL_121;
  }

  if (v73 != 2)
  {
    goto LABEL_132;
  }

  v76 = *(v31 + 16);
  v75 = *(v31 + 24);
  v38 = __OFSUB__(v75, v76);
  v74 = v75 - v76;
  if (v38)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  if (v74 == 24)
  {
    sub_100007BAC(v103);
    result = sub_100007BAC(a1);
    v77 = v105;
    *a2 = v100;
    *(a2 + 8) = v77;
    *(a2 + 16) = v98;
    *(a2 + 24) = v99;
    *(a2 + 32) = v90;
    *(a2 + 40) = v91;
    *(a2 + 48) = v93;
    *(a2 + 56) = v92;
    *(a2 + 64) = v94;
    *(a2 + 72) = v95;
    *(a2 + 80) = v86;
    *(a2 + 88) = v82;
    *(a2 + 96) = v85;
    *(a2 + 104) = v87;
    *(a2 + 112) = v89;
    *(a2 + 120) = v29;
    *(a2 + 128) = v80;
    *(a2 + 136) = v81;
    *(a2 + 144) = v78;
    *(a2 + 152) = v79;
    *(a2 + 160) = v31;
    *(a2 + 168) = v33;
    *(a2 + 176) = xmmword_10138BBF0;
    return result;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1001BFE58()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1001BFEC0()
{
  result = qword_101698F68;
  if (!qword_101698F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698F68);
  }

  return result;
}

uint64_t sub_1001BFF14(uint64_t a1, uint64_t *a2)
{
  v55 = a2;
  v3 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v54 = &v51 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v11 = (a1 + 40);
  *&v8 = 141558275;
  v52 = v8;
  while (1)
  {
    v15 = *(v11 - 1);
    v14 = *v11;
    sub_100017D5C(v15, *v11);
    v16 = Data.subdata(in:)();
    v18 = v17;
    v59[0] = v16;
    v59[1] = v17;
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177C418);
      sub_100017D5C(v16, v18);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      sub_100016590(v16, v18);
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v60 = v10;
        v23 = v22;
        v24 = swift_slowAlloc();
        v58 = v14;
        v59[0] = v24;
        v25 = v24;
        *v23 = v52;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        v26 = Data.hexString.getter();
        v57 = v15;
        v28 = sub_1000136BC(v26, v27, v59);

        *(v23 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid serial number %{private,mask.hash}s", v23, 0x16u);
        sub_100007BAC(v25);

        v10 = v60;

        sub_100016590(v16, v18);

        v12 = v57;
        v13 = v58;
      }

      else
      {

        sub_100016590(v16, v18);
        v12 = v15;
        v13 = v14;
      }

      result = sub_100016590(v12, v13);
      goto LABEL_5;
    }

    v57 = v15;
    v58 = v14;
    v60 = v10;
    v29 = Data.trimmed.getter();
    v31 = v30;
    v32 = type metadata accessor for MACAddress();
    v33 = v54;
    (*(*(v32 - 8) + 56))(v54, 1, 1, v32);
    sub_1000E18CC(v33, v56);
    v34 = v55;
    v35 = *v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v34;
    v59[0] = v37;
    v39 = sub_100771E30(v29, v31);
    v40 = *(v37 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (*(v37 + 24) >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v46 = v59[0];
        if ((v38 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1010052E8();
        v46 = v59[0];
        if ((v43 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_100FE68E4(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_100771E30(v29, v31);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_26;
      }

      v39 = v44;
      v46 = v59[0];
      if ((v43 & 1) == 0)
      {
LABEL_15:
        v46[(v39 >> 6) + 8] |= 1 << v39;
        v47 = (v46[6] + 16 * v39);
        *v47 = v29;
        v47[1] = v31;
        sub_1000E18CC(v56, v46[7] + *(v53 + 72) * v39);
        v48 = v46[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_25;
        }

        v46[2] = v50;
        goto LABEL_20;
      }
    }

    sub_10002311C(v56, v46[7] + *(v53 + 72) * v39, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v29, v31);
LABEL_20:
    *v55 = v46;
    sub_100016590(v16, v18);
    result = sub_100016590(v57, v58);
    v10 = v60;
LABEL_5:
    v11 += 2;
    if (!--v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001C03EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101391C00[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001C0474()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101391C00[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001C04C0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D9514(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001C0504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001DB39C();
  v5 = sub_1000C3258();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_1001C055C()
{
  v1 = type metadata accessor for StandaloneBeacon();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OwnedBeaconGroup(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DA7B4(v0, v16, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001DA9D8(v16, v4, type metadata accessor for StandaloneBeacon);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v30 = 0xD000000000000014;
    v31 = 0x800000010134B540;
    type metadata accessor for UUID();
    sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = v30;
    v20 = type metadata accessor for StandaloneBeacon;
    v21 = v4;
  }

  else
  {
    v22 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_1001DA9D8(v16, v12, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(&v16[v22], v8, type metadata accessor for OwnedBeaconRecord);
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v30 = 0xD000000000000010;
    v31 = 0x800000010134B560;
    v23 = *(v9 + 24);
    type metadata accessor for UUID();
    sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x6E6F63616562202CLL;
    v25._object = 0xEA0000000000203ALL;
    String.append(_:)(v25);
    v26 = &v8[*(v5 + 20)];
    v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v27);

    v28._countAndFlagsBits = 41;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v19 = v30;
    sub_1001DAA40(v8, type metadata accessor for OwnedBeaconRecord);
    v20 = type metadata accessor for OwnedBeaconGroup;
    v21 = v12;
  }

  sub_1001DAA40(v21, v20);
  return v19;
}

uint64_t sub_1001C0974()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_101698F70);
  v1 = sub_1000076D4(v0, qword_101698F70);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C448);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C0A54(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v3, a2);
  sub_1000076D4(v3, a2);
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t sub_1001C0AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v63 = a3;
  v66 = a1;
  v67 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000BC488();
  (*(v14 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v13);
  static DispatchQoS.unspecified.getter();
  v68 = _swiftEmptyArrayStorage;
  sub_1001DAC6C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 56) = 0;
  *(v4 + 72) = &_swiftEmptySetSingleton;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v18 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v4 + 104) = PassthroughSubject.init()();
  *(v4 + 112) = xmmword_10138BBF0;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0xF000000000000000;
  *(v4 + 176) = _swiftEmptyArrayStorage;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177C448);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "AirPodsLEPairingManager.init", v24, 2u);
  }

  v25 = v67;
  *(v5 + 24) = v66;
  *(v5 + 32) = v25;
  type metadata accessor for AccessoryPairingValidator();
  v26 = swift_allocObject();
  v27 = type metadata accessor for DeviceIdentityUtility();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();

  swift_defaultActor_initialize();
  v31 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v32 = type metadata accessor for Date();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v26 + 16) = v30;
  *(v26 + 24) = 0;
  *(v5 + 48) = v26;
  *(v5 + 200) = v63 & 1;
  v33 = v65;
  *(v5 + 208) = v64;
  UUID.init()();
  v34 = *(v5 + 48);
  v35 = *(v5 + 16);
  v36 = type metadata accessor for AccessoryPairingCoordinator();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  v39 = sub_10110ABC0(v33, v34, v35);
  v40 = v39;
  if (v39)
  {
    *(v5 + 64) = v39;

    sub_1000BC4D4(&unk_1016A6140, &unk_1013D4EB0);
    unsafeFromAsyncTask<A>(_:)();
    v41 = v68;
    if (v68)
    {

      *(v5 + 40) = v41;
      return v5;
    }

    sub_100101B58();
    swift_allocError();
    *v42 = 16;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    *(v42 + 40) = 11;
    swift_willThrow();

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Missing central manager service!", v45, 2u);
    }
  }

  else
  {
  }

  v46 = *(v5 + 24);

  v47 = *(v5 + 32);

  v48 = *(v5 + 48);

  if (v40)
  {
    v49 = *(v5 + 64);
  }

  v50 = *(v5 + 72);

  v51 = *(v5 + 80);

  v52 = *(v5 + 88);

  v53 = *(v5 + 96);

  v54 = *(v5 + 104);

  sub_100006654(*(v5 + 112), *(v5 + 120));
  v55 = *(v5 + 128);

  v56 = *(v5 + 136);

  v57 = *(v5 + 152);
  sub_1000BB27C(*(v5 + 144));
  sub_100006654(*(v5 + 160), *(v5 + 168));
  v58 = *(v5 + 176);

  v59 = *(v5 + 192);

  v60 = *(v5 + 208);

  type metadata accessor for AirPodsLEPairingManager();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1001C11BC()
{
  v1 = v0;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingManager.deinit", v5, 2u);
  }

  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  v8 = *(v1 + 48);

  v9 = *(v1 + 64);

  v10 = *(v1 + 72);

  v11 = *(v1 + 80);

  v12 = *(v1 + 88);

  v13 = *(v1 + 96);

  v14 = *(v1 + 104);

  sub_100006654(*(v1 + 112), *(v1 + 120));
  v15 = *(v1 + 128);

  v16 = *(v1 + 136);

  v17 = *(v1 + 152);
  sub_1000BB27C(*(v1 + 144));
  sub_100006654(*(v1 + 160), *(v1 + 168));
  v18 = *(v1 + 176);

  v19 = *(v1 + 192);

  v20 = *(v1 + 208);

  return v1;
}

uint64_t sub_1001C133C()
{
  sub_1001C11BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1001C1394()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = PassthroughSubject.init()();
  v7 = v0[13];
  v1[13] = v6;

  v8 = v1[2];
  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock[0])
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C448);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Existing pairing session in progress!", v12, 2u);
    }

    aBlock[0] = v6;
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
    v13 = Publisher.eraseToAnyPublisher()();
    goto LABEL_9;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001DAF8C;
  *(v14 + 24) = v1;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101612E78;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v8, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v18 = type metadata accessor for Transaction();
    __chkstk_darwin(v18);
    static Transaction.named<A>(_:with:)();
    aBlock[0] = v6;
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880);
    v13 = Publisher.eraseToAnyPublisher()();

LABEL_9:

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C1780(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    *(a1 + 184) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C1894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a4;
  v40 = a8;
  v41 = a5;
  v42 = a6;
  v53 = a3;
  v44 = a1;
  v45 = a9;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v49);
  v47 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v50);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MACAddress();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v38 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v46 = *(a2 + 16);
  v39 = a2;
  v21 = *(v16 + 16);
  v21(&v37 - v19, a7, v15);
  v21(&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v15);
  v22 = *(v16 + 80);
  v23 = (v22 + 42) & ~v22;
  v24 = v17 + 7;
  v25 = (v17 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v22 + v25 + 8) & ~v22;
  v27 = (v24 + v26) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v52;
  v30 = v53;
  *(v28 + 16) = a2;
  *(v28 + 24) = v30;
  *(v28 + 32) = v29;
  LOBYTE(v29) = v42;
  *(v28 + 40) = v41;
  *(v28 + 41) = v29;
  v31 = *(v16 + 32);
  v31(v28 + v23, v20, v15);
  *(v28 + v25) = v44;
  v31(v28 + v26, v38, v15);
  *(v28 + v27) = v45;
  aBlock[4] = sub_1001DAFD0;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101612EC8;
  v32 = _Block_copy(aBlock);

  sub_10002E98C(v53, v52);

  v33 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1001DAC6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v34 = v47;
  v35 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v51 + 8))(v34, v35);
  (*(v48 + 8))(v33, v50);
}

uint64_t sub_1001C1D18(void *a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v169 = a8;
  v171 = a7;
  v184 = a6;
  v185 = type metadata accessor for MACAddress();
  v189 = *(v185 - 8);
  v183 = *(v189 + 64);
  v13 = __chkstk_darwin(v185);
  v170 = v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v182 = v128 - v15;
  v16 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v128 - v18;
  v177 = sub_1000BC4D4(&qword_1016994E8, &qword_101391A00);
  v180 = *(v177 - 8);
  v20 = v180[8];
  __chkstk_darwin(v177);
  v22 = v128 - v21;
  v139 = sub_1000BC4D4(&qword_1016994F0, &qword_101391A08);
  v174 = *(v139 - 8);
  v23 = v174[8];
  __chkstk_darwin(v139);
  v135 = v128 - v24;
  v141 = sub_1000BC4D4(&qword_1016994F8, &qword_101391A10);
  v144 = *(v141 - 8);
  v25 = *(v144 + 64);
  __chkstk_darwin(v141);
  v136 = v128 - v26;
  v145 = sub_1000BC4D4(&qword_101699500, &qword_101391A18);
  v147 = *(v145 - 8);
  v27 = *(v147 + 64);
  __chkstk_darwin(v145);
  v137 = v128 - v28;
  v148 = sub_1000BC4D4(&qword_101699508, &qword_101391A20);
  v149 = *(v148 - 8);
  v29 = *(v149 + 64);
  __chkstk_darwin(v148);
  v138 = v128 - v30;
  v150 = sub_1000BC4D4(&qword_101699510, &qword_101391A28);
  v151 = *(v150 - 8);
  v31 = *(v151 + 64);
  __chkstk_darwin(v150);
  v140 = v128 - v32;
  v152 = sub_1000BC4D4(&qword_101699518, &qword_101391A30);
  v153 = *(v152 - 8);
  v33 = *(v153 + 64);
  __chkstk_darwin(v152);
  v143 = v128 - v34;
  v154 = sub_1000BC4D4(&qword_101699520, &qword_101391A38);
  v155 = *(v154 - 8);
  v35 = *(v155 + 64);
  __chkstk_darwin(v154);
  v146 = v128 - v36;
  v160 = sub_1000BC4D4(&qword_101699528, &qword_101391A40);
  v158 = *(v160 - 8);
  v37 = *(v158 + 64);
  __chkstk_darwin(v160);
  v142 = v128 - v38;
  v162 = sub_1000BC4D4(&qword_101699530, &qword_101391A48);
  v161 = *(v162 - 8);
  v39 = *(v161 + 64);
  __chkstk_darwin(v162);
  v159 = v128 - v40;
  v165 = sub_1000BC4D4(&qword_101699538, &qword_101391A50);
  v164 = *(v165 - 8);
  v41 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = v128 - v42;
  v168 = sub_1000BC4D4(&qword_101699540, &qword_101391A58);
  v167 = *(v168 - 8);
  v43 = *(v167 + 64);
  __chkstk_darwin(v168);
  v181 = v128 - v44;
  v45 = a1[14];
  v46 = a1[15];
  a1[14] = a2;
  a1[15] = a3;
  sub_10002E98C(a2, a3);
  sub_100006654(v45, v46);
  *(*(a1[8] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_forcePair) = a4;
  v47 = type metadata accessor for AnalyticsEvent(0);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v50 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v51 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v52 = type metadata accessor for DispatchTime();
  v53 = *(*(v52 - 8) + 56);
  v53(&v50[v51], 1, 1, v52);
  v53(&v50[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v52);
  *(v50 + 15) = 0xD00000000000002CLL;
  *(v50 + 16) = 0x800000010134D0D0;
  v54 = a1[24];
  a1[24] = v50;

  type metadata accessor for Transaction();
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  *(v55 + 24) = a5;
  v166 = v50;

  static Transaction.asyncTask(name:block:)();

  v56 = type metadata accessor for AccessoryDiscoverySession();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = sub_10062E9B4();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  v61 = v184;
  v156 = v59;
  v62 = sub_10062F30C();
  v190 = a1[2];
  v63 = v190;
  v191 = v62;
  v179 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v64 = *(v179 - 8);
  v186 = *(v64 + 56);
  v178 = v64 + 56;
  v186(v19, 1, 1, v179);
  v129 = v63;
  sub_1000BC4D4(&qword_101699548, &unk_101391A70);
  v188 = sub_1000BC488();
  v128[1] = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_1016A6240, &qword_101699548, &unk_101391A70);
  v187 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488);
  v172 = v19;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

  v65 = v189;
  v66 = *(v189 + 16);
  v67 = v182;
  v68 = v185;
  v132 = v189 + 16;
  v131 = v66;
  v66(v182, v61, v185);
  v69 = *(v65 + 80);
  v130 = ~v69;
  v70 = (v69 + 24) & ~v69;
  v71 = (v183 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = v69;
  v72 = swift_allocObject();
  *(v72 + 16) = a1;
  v73 = *(v65 + 32);
  v189 = v65 + 32;
  v133 = v73;
  v73((v72 + v70), v67, v68);
  *(v72 + v71) = v60;
  v74 = type metadata accessor for Peripheral();
  v173 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_101699550, &qword_1016994E8, &qword_101391A00);

  v157 = v60;

  v75 = v135;
  v76 = v177;
  v175 = v74;
  Publisher.compactMap<A>(_:)();

  (v180[1])(v22, v76);

  static Subscribers.Demand.unlimited.getter();
  v176 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  sub_1000041A4(&qword_101699558, &qword_1016994F0, &qword_101391A08);
  v177 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v77 = v136;
  v78 = v139;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v180 = a1;

  (v174[1])(v75, v78);
  v79 = v129;
  v191 = v129;
  v80 = v172;
  v81 = v179;
  v186(v172, 1, 1, v179);
  v174 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_101699560, &qword_1016994F8, &qword_101391A10);
  v82 = v79;
  v83 = v137;
  v84 = v141;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v80, &unk_1016B0FE0, &unk_101391980);

  (*(v144 + 8))(v77, v84);
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_101699568, &qword_101699500, &qword_101391A18);
  v85 = v138;
  v86 = v145;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v147 + 8))(v83, v86);
  v191 = v82;
  v87 = v172;
  v88 = v186;
  v186(v172, 1, 1, v81);
  sub_1000041A4(&qword_101699570, &qword_101699508, &qword_101391A20);
  v89 = v82;
  v90 = v140;
  v91 = v87;
  v92 = v148;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v91, &unk_1016B0FE0, &unk_101391980);

  v93 = v85;
  v94 = v88;
  (*(v149 + 8))(v93, v92);
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_101699578, &qword_101699510, &qword_101391A28);
  v95 = v143;
  v96 = v150;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v97 = v96;
  v98 = v91;
  v99 = v179;
  (*(v151 + 8))(v90, v97);
  v191 = v89;
  v94(v91, 1, 1, v99);
  sub_1000041A4(&qword_101699580, &qword_101699518, &qword_101391A30);
  v100 = v146;
  v101 = v152;
  v102 = v95;
  Publisher.receive<A>(on:options:)();
  v103 = v142;
  sub_10000B3A8(v98, &unk_1016B0FE0, &unk_101391980);

  (*(v153 + 8))(v102, v101);
  sub_1000041A4(&qword_101699588, &qword_101699520, &qword_101391A38);
  v104 = v154;
  Publisher.compactMap<A>(_:)();
  (*(v155 + 8))(v100, v104);
  if (qword_1016944A8 != -1)
  {
    swift_once();
  }

  v105 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v105, qword_101698FA0);
  v191 = v89;
  v186(v98, 1, 1, v99);
  sub_1000041A4(&qword_101699590, &qword_101699528, &qword_101391A40);
  v106 = v159;
  v107 = v160;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v98, &unk_1016B0FE0, &unk_101391980);

  (*(v158 + 8))(v103, v107);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_101699598, &qword_101699530, &qword_101391A48);
  v108 = v163;
  v109 = v162;
  Publisher.map<A>(_:)();
  (*(v161 + 8))(v106, v109);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016995A0, &qword_101699538, &qword_101391A50);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v110 = v165;
  Publisher.catch<A>(_:)();
  (*(v164 + 8))(v108, v110);
  v111 = swift_allocObject();
  swift_weakInit();
  v112 = v182;
  v113 = v185;
  v114 = v131;
  v131(v182, v169, v185);
  v115 = v170;
  v114(v170, v184, v113);
  v116 = (v134 + 48) & v130;
  v117 = (v183 + v134 + v116) & v130;
  v118 = swift_allocObject();
  v119 = v171;
  *(v118 + 2) = v111;
  *(v118 + 3) = v119;
  v120 = v157;
  *(v118 + 4) = v156;
  *(v118 + 5) = v120;
  v121 = &v118[v116];
  v122 = v133;
  v133(v121, v112, v113);
  v122(&v118[v117], v115, v113);
  sub_1000041A4(&qword_1016995A8, &qword_101699540, &qword_101391A58);

  v123 = v168;
  v124 = v181;
  v125 = Publisher<>.sink(receiveValue:)();

  (*(v167 + 8))(v124, v123);
  v126 = v180[17];
  v180[17] = v125;
}

uint64_t sub_1001C3380(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 40) = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1001C3424, a1, 0);
}

uint64_t sub_1001C3424()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  static DispatchTime.now()();
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v2, v1 + v4, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  return _swift_task_switch(sub_1001C351C, v1, 0);
}

uint64_t sub_1001C351C()
{
  sub_10118F4D8(*(v0 + 40), *(v0 + 56));
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001C35A0(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v62 = a4;
  v67 = a2;
  v8 = type metadata accessor for MACAddress();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  __chkstk_darwin(v8);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for UUID();
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v66);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = *a1;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C448);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61 = v17;
    v25 = a3;
    v26 = a5;
    v27 = v24;
    *v23 = 138543362;
    *(v23 + 4) = v20;
    *v24 = v20;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Discovered %{public}@", v23, 0xCu);
    sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);
    a5 = v26;
    a3 = v25;
    v17 = v61;
  }

  v29 = *(*(v67 + 40) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v30);
  *(&v60 - 2) = a3;
  *(&v60 - 1) = v31;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  v32 = a3;
  Lock.callAsFunction<A>(_:)();
  v33 = v68;
  if (!v68)
  {
    v41 = v63;
    v42 = v64;
    v43 = v65;
    (*(v64 + 16))(v63, v32, v65);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v41;
      v51 = v50;
      (*(v42 + 8))(v49, v43);
      v52 = sub_1000136BC(v48, v51, &v68);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Missing connected peripheral for %{private,mask.hash}s", v46, 0x16u);
      sub_100007BAC(v47);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

LABEL_14:
    v33 = 0;
    goto LABEL_15;
  }

  v34 = [*(v68 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = [v20 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v35) = static UUID.== infix(_:_:)();
  v36 = *(v11 + 8);
  v37 = v66;
  v36(v15, v66);
  v36(v17, v37);
  if ((v35 & 1) == 0)
  {
    v53 = v20;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = a5;
      v58 = swift_slowAlloc();
      *v56 = 138543362;
      *(v56 + 4) = v53;
      *v58 = v53;
      v59 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "Ignoring accessory %{public}@", v56, 0xCu);
      sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);
      a5 = v57;
    }

    goto LABEL_14;
  }

  sub_100A245E8(0xD000000000000015, 0x800000010134D140);
  v38 = v62;
  swift_beginAccess();
  v39 = *(v38 + 16);
  *(v38 + 16) = v20;
  v40 = v20;

LABEL_15:
  *a5 = v33;
}

uint64_t sub_1001C3C24@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 40);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v8 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v9 = sub_10131F050(v4, v8);

  *a3 = v9;
  return result;
}

uint64_t sub_1001C3D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 1;
  v5 = (inited + 32);
  v6 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v5);
  *a2 = v6;
  return result;
}

uint64_t sub_1001C3DA4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = *a1;
  v39[3] = &type metadata for BAServiceIdentifier;
  v39[4] = &off_10162CAF0;
  LOBYTE(v39[0]) = 1;
  v15 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v16 = *&v14[v15];
  v38 = v39;

  v17 = sub_1012BBDB4(sub_1001DB3F8, v37, v16);

  sub_100007BAC(v39);
  if (v17)
  {
    v18 = sub_10039C428(&off_1016082D8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v39[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v23 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177C448);
    v26 = v14;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = a2;
      v30 = v29;
      v31 = swift_slowAlloc();
      v35 = v10;
      v32 = v31;
      *v30 = 138412290;
      *(v30 + 4) = v26;
      *v31 = v26;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "No FindMy service for %@", v30, 0xCu);
      sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
      v10 = v35;

      a2 = v36;
    }

    v39[0] = v26;
    type metadata accessor for Peripheral();
    v34 = v26;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v8, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v23;
  return result;
}

uint64_t sub_1001C4234(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[41] = 1;
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  return Just.init(_:)();
}

uint64_t sub_1001C4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Transaction.capture()();
  sub_1000D2A70(a1, &v45, &unk_1016A6150, &unk_10139DB30);
  if ((v47 & 1) == 0)
  {
    v40 = a6;
    v22 = v45;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177C448);
    sub_100A245E8(0xD000000000000013, 0x800000010134D120);
    *&v44[8] = &type metadata for BAServiceIdentifier;
    *&v44[16] = &off_10162CAF0;
    LOBYTE(v43) = 1;
    v24 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v25 = swift_beginAccess();
    v26 = *&v22[v24];
    __chkstk_darwin(v25);
    v38 = &v43;

    v27 = sub_1012BBDB4(sub_1001DB280, v37, v26);

    sub_100007BAC(&v43);
    if (v27)
    {
      v39 = a4;
      *&v44[8] = &type metadata for BACharacteristicIdentifier.FindMy;
      *&v44[16] = &off_10162CAD0;
      LOBYTE(v43) = 0;
      v28 = swift_beginAccess();
      v29 = *(v27 + 40);
      __chkstk_darwin(v28);
      v38 = &v43;

      v30 = sub_1012BBE10(sub_1001DB2A0, v37, v29);

      sub_100007BAC(&v43);
      if (v30)
      {
        result = swift_beginAccess();
        v31 = *(a5 + 16);
        v32 = v39;
        if (!v31)
        {
          __break(1u);
          return result;
        }

        v33 = v31;
        sub_1001C4B28(v30, v22, v33, v40);

        sub_1001C86A8(v32, 0);
      }

      a4 = v39;
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "No pairing characteristic!", v36, 2u);
    }

    sub_1001C86A8(a4, 1);
  }

  v43 = v45;
  *v44 = *v46;
  *&v44[9] = *&v46[9];
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);
  sub_100101AA8(&v43, v42);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136446210;
    sub_100101B58();
    v18 = Error.localizedDescription.getter();
    v20 = v19;
    sub_100101B04(v42);
    v21 = sub_1000136BC(v18, v20, &v41);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Peripheral discovery error: %{public}s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {

    sub_100101B04(v42);
  }

  sub_1001C48F8(a6, a7);
  sub_1001C86A8(a4, 1);

  return sub_100101B04(&v43);
}

uint64_t sub_1001C47D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    *a2 = *(a1 + 184);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C48F8(unsigned int (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    sub_1001D9F10();
    v17 = swift_allocError();
    *v18 = 3;
    v19 = type metadata accessor for MACAddress();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v8, a2, v19);
    (*(v20 + 56))(v8, 0, 1, v19);
    sub_1001D8778(v17, a1, v8);
    sub_10000B3A8(v8, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001C4B28(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a2;
  v145 = a3;
  v135 = a1;
  v7 = *v5;
  v8 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v136 = &v128 - v10;
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = (&v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v5[2];
  *v20 = v21;
  v22 = v17[13];
  v140 = enum case for DispatchPredicate.onQueue(_:);
  v141 = v17 + 13;
  v139 = v22;
  v22(v20);
  v137 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = v17[1];
  v23 = v17 + 1;
  v142 = v20;
  v138 = v24;
  v24(v20, v16);
  if (v21)
  {
    v133 = v23;
    v131 = v7;
    if (qword_1016950E0 == -1)
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
  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177C448);
  v27 = *(v12 + 16);
  v132 = a4;
  v27(v15, a4, v11);
  v143 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v134 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v146 = v32;
    *v31 = 136446210;
    sub_1001DAC6C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v5;
    v36 = v35;
    (*(v12 + 8))(v15, v11);
    v37 = sub_1000136BC(v33, v36, &v146);
    v5 = v34;

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Start pairing AirPods. classicMACAddress: %{public}s", v31, 0xCu);
    sub_100007BAC(v32);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v38 = v144;
  sub_100A245E8(0, 0xE000000000000000);
  v39 = v145;
  v40 = [v145 discoveredMetadata];
  v41 = [v40 productData];

  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = sub_100314594(v42, v44);
  if (v46 >> 60 == 15)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Invalid product data!", v49, 2u);
    }

LABEL_17:

    return;
  }

  v50 = v46;
  v51 = v45;
  v52 = [v39 productInformation];
  if (!v52)
  {
    v47 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v47, v60, "Missing product info!", v61, 2u);
    }

    sub_100006654(v51, v50);
    goto LABEL_17;
  }

  v53 = v52;
  if (![v52 eligibleForPairing])
  {
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "Not eligible for pairing!";
      goto LABEL_20;
    }

LABEL_21:
    sub_100006654(v51, v50);

    return;
  }

  v54 = v5[7];
  v5[7] = v38;
  v55 = v38;

  sub_1001C9E28(&v146);
  if (v148)
  {
    sub_10000B3A8(&v146, &qword_1016993E0, &qword_101391978);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      v59 = "Failed to create pairing coordinator!";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v56, v57, v59, v58, 2u);

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v130 = v5;
  v62 = v146;
  v63 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v64 = *(v146 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v65 = *(v64 + 104);
  v66 = *(v64 + 112);
  *(v64 + 104) = v51;
  *(v64 + 112) = v50;

  v143 = v51;
  sub_10002E98C(v51, v50);
  sub_100006654(v65, v66);

  v67 = *(v62 + v63);

  v68 = v136;
  sub_101199070(v136);
  v69 = type metadata accessor for AccessoryProductInfo();
  v70 = v39;
  v71 = v53;
  v72 = *(v69 - 8);
  v73 = *(v72 + 56);
  v129 = v69;
  v73(v68, 0, 1);
  v74 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_10002311C(v68, v67 + v74, &qword_101697268, &qword_101394FE0);
  swift_endAccess();

  v144 = v62;
  v75 = *(v62 + v63);

  v76 = [v70 discoveredMetadata];
  v77 = [v76 firmwareVersion];

  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v81 = *(v75 + 96);
  *(v75 + 88) = v78;
  *(v75 + 96) = v80;

  v145 = v71;
  v82 = [v71 encryptionKeyE1];
  if (v82)
  {
    v83 = v82;
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v146 = v84;
    v147 = v86;
    sub_1000E0A3C();
    v87 = DataProtocol.isNull.getter();
    sub_100016590(v84, v86);
    if ((v87 & 1) == 0)
    {
      v88 = [v145 verificationKeyS2];
      if (v88)
      {
        v89 = v88;
        v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;

        v146 = v90;
        v147 = v92;
        v93 = DataProtocol.isNull.getter();
        sub_100016590(v90, v92);
        if ((v93 & 1) == 0)
        {
          v94 = *&v144[v63];

          v95 = sub_10024C764();
          v97 = v96;
          v98 = *(v72 + 48);
          v99 = v129;
          if (v98(v96, 1, v129))
          {
            (v95)(&v146, 0);
          }

          else
          {
            v100 = [v145 encryptionKeyE1];
            if (v100)
            {
              v101 = v100;
              v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v103 = v102;

              v104 = v136;
            }

            else
            {
              v104 = 0;
              v103 = 0xF000000000000000;
            }

            v105 = (v97 + *(v99 + 96));
            v106 = *v105;
            v107 = v105[1];
            *v105 = v104;
            v105[1] = v103;
            sub_100006654(v106, v107);
            (v95)(&v146, 0);
          }

          v108 = *&v144[v63];

          v109 = sub_10024C764();
          v111 = v110;
          if (v98(v110, 1, v99))
          {
            (v109)(&v146, 0);
          }

          else
          {
            v112 = [v145 verificationKeyS2];
            if (v112)
            {
              v113 = v112;
              v114 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v116 = v115;
            }

            else
            {
              v114 = 0;
              v116 = 0xF000000000000000;
            }

            v117 = (v111 + *(v99 + 100));
            v118 = *v117;
            v119 = v117[1];
            *v117 = v114;
            v117[1] = v116;
            sub_100006654(v118, v119);
            (v109)(&v146, 0);
          }
        }
      }
    }
  }

  v120 = v142;
  v121 = v137;
  *v142 = v137;
  v122 = v134;
  v139(v120, v140, v134);
  v123 = v121;
  LOBYTE(v121) = _dispatchPreconditionTest(_:)();
  v138(v120, v122);
  if (v121)
  {
    v124 = type metadata accessor for Transaction();
    __chkstk_darwin(v124);
    v125 = v135;
    *(&v128 - 4) = v130;
    *(&v128 - 3) = v125;
    v126 = v132;
    v127 = v131;
    *(&v128 - 2) = v132;
    *(&v128 - 1) = v127;
    static Transaction.named<A>(_:with:)();
    sub_1001D9538(v125, v126);

    sub_100006654(v143, v50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C56E0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v79 = a5;
  v85 = a4;
  v82 = a1;
  v7 = type metadata accessor for MACAddress();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  __chkstk_darwin(v7);
  v77 = v9;
  v78 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v58 - v12;
  v64 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v65 = *(v64 - 8);
  v14 = *(v65 + 64);
  __chkstk_darwin(v64);
  v59 = v58 - v15;
  v68 = sub_1000BC4D4(&qword_1016993F0, &qword_101391990);
  v66 = *(v68 - 8);
  v16 = *(v66 + 64);
  __chkstk_darwin(v68);
  v84 = v58 - v17;
  v18 = sub_1000BC4D4(&qword_1016993F8, &qword_101391998);
  v69 = *(v18 - 8);
  v70 = v18;
  v19 = *(v69 + 64);
  __chkstk_darwin(v18);
  v67 = v58 - v20;
  v21 = sub_1000BC4D4(&qword_101699400, &qword_1013919A0);
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = *(v72 + 64);
  __chkstk_darwin(v21);
  v71 = v58 - v23;
  v24 = sub_1000BC4D4(&qword_101699408, &qword_1013919A8);
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  __chkstk_darwin(v24);
  v74 = v58 - v26;
  v27 = *(a2 + 40);
  v87 = sub_101317D88(0, a3);
  v86 = *(a2 + 16);
  v28 = v86;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v30 = *(v29 - 8);
  v61 = *(v30 + 56);
  v60 = v30 + 56;
  v61(v13, 1, 1, v29);
  v63 = v28;
  sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
  v31 = sub_1000BC488();
  sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
  v32 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488);
  v33 = v59;
  v62 = v31;
  v58[1] = v32;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  v34 = swift_allocObject();
  v35 = v85;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  v83 = a2;

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
  sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0);
  sub_1000041A4(&qword_101699418, &qword_101699358, &unk_1013918D0);
  v36 = v64;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v65 + 8))(v33, v36);
  if (qword_1016944A8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v37, qword_101698FA0);
  v38 = v63;
  v87 = v63;
  v61(v13, 1, 1, v29);
  sub_1000041A4(&qword_101699420, &qword_1016993F0, &qword_101391990);
  v39 = v67;
  v40 = v68;
  v41 = v84;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v13, &unk_1016B0FE0, &unk_101391980);

  (*(v66 + 8))(v41, v40);
  sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
  sub_1000041A4(&qword_101699428, &qword_1016993F8, &qword_101391998);
  v42 = v70;
  v43 = v71;
  Publisher.map<A>(_:)();
  (*(v69 + 8))(v39, v42);
  sub_1000BC4D4(&qword_101699430, &unk_1013919B0);
  sub_1000041A4(&qword_101699438, &qword_101699400, &qword_1013919A0);
  sub_1000041A4(&qword_101699440, &qword_101699430, &unk_1013919B0);
  v44 = v73;
  v45 = v74;
  Publisher.catch<A>(_:)();
  (*(v72 + 8))(v43, v44);
  v46 = swift_allocObject();
  v47 = v83;
  swift_weakInit();
  v48 = v80;
  v49 = v78;
  v50 = v81;
  (*(v80 + 16))(v78, v79, v81);
  v51 = (*(v48 + 80) + 40) & ~*(v48 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v46;
  v53 = v85;
  *(v52 + 3) = v82;
  *(v52 + 4) = v53;
  (*(v48 + 32))(&v52[v51], v49, v50);
  sub_1000041A4(&qword_101699448, &qword_101699408, &qword_1013919A8);

  v54 = v76;
  v55 = Publisher<>.sink(receiveValue:)();

  (*(v75 + 8))(v45, v54);
  v56 = *(v47 + 88);
  *(v47 + 88) = v55;
}

uint64_t sub_1001C6120@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C448);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Getting beacon group data...", v7, 2u);
  }

  sub_1001DACD4(v13);
  v10[10] = v13[10];
  v10[11] = v13[11];
  v10[12] = v13[12];
  v11 = v14;
  v10[6] = v13[6];
  v10[7] = v13[7];
  v10[8] = v13[8];
  v10[9] = v13[9];
  v10[2] = v13[2];
  v10[3] = v13[3];
  v10[4] = v13[4];
  v10[5] = v13[5];
  v10[0] = v13[0];
  v10[1] = v13[1];
  v12 = 0;
  v8 = sub_1001CA1CC(v10, a1);
  result = sub_10000B3A8(v10, &qword_101699350, &qword_1013918C8);
  *a2 = v8;
  return result;
}

uint64_t sub_1001C629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    Transaction.capture()();
    sub_1000D2A70(a1, &v37, &qword_101699350, &qword_1013918C8);
    if (v39)
    {
      v35 = v37;
      v36[0] = v38[0];
      *(v36 + 9) = *(v38 + 9);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C448);
      sub_100101AA8(&v35, v34);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v32 = a5;
        v18 = v17;
        v19 = swift_slowAlloc();
        v33 = v19;
        *v18 = 136446210;
        v20 = sub_1013181BC();
        v22 = v21;
        sub_100101B04(v34);
        v23 = sub_1000136BC(v20, v22, &v33);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to write initial pairing data. Error %{public}s", v18, 0xCu);
        sub_100007BAC(v19);

        a5 = v32;
      }

      else
      {

        sub_100101B04(v34);
      }

      sub_1001C889C(a4);
      sub_100101B58();
      v29 = swift_allocError();
      sub_100101AA8(&v35, v30);
      v31 = type metadata accessor for MACAddress();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
      sub_1001D8778(v29, a5, v11);

      sub_10000B3A8(v11, &qword_1016A40D0, &unk_10138BE70);
      sub_100101B04(&v35);
    }

    else
    {
      sub_10000B3A8(&v37, &qword_101699350, &qword_1013918C8);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177C448);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Requested beacon group data. Waiting for AirPods to respond.", v27, 2u);
      }

      v28 = *(v13 + 88);
      *(v13 + 88) = 0;
    }
  }

  return result;
}

uint64_t sub_1001C6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = a2;
  v120 = a4;
  v114 = a1;
  v121 = type metadata accessor for MACAddress();
  v124 = *(v121 - 8);
  v5 = *(v124 + 64);
  __chkstk_darwin(v121);
  v118 = v6;
  v119 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v117 = &v83 - v9;
  v100 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v99 = *(v100 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v83 - v11;
  v103 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v102 = *(v103 - 8);
  v12 = *(v102 + 8);
  __chkstk_darwin(v103);
  v101 = &v83 - v13;
  v14 = sub_1000BC4D4(&qword_101699460, &qword_1013919C8);
  v105 = *(v14 - 8);
  v106 = v14;
  v15 = *(v105 + 64);
  __chkstk_darwin(v14);
  v104 = &v83 - v16;
  v17 = sub_1000BC4D4(&qword_101699468, &qword_1013919D0);
  v108 = *(v17 - 8);
  v109 = v17;
  v18 = *(v108 + 64);
  __chkstk_darwin(v17);
  v107 = &v83 - v19;
  v20 = sub_1000BC4D4(&qword_101699470, &qword_1013919D8);
  v110 = *(v20 - 8);
  v111 = v20;
  v21 = *(v110 + 64);
  __chkstk_darwin(v20);
  v116 = &v83 - v22;
  v23 = sub_1000BC4D4(&qword_101699478, &qword_1013919E0);
  v112 = *(v23 - 8);
  v24 = *(v112 + 64);
  __chkstk_darwin(v23);
  v26 = &v83 - v25;
  v27 = sub_1000BC4D4(&qword_101699480, &qword_1013919E8);
  v113 = *(v27 - 8);
  v28 = *(v113 + 64);
  __chkstk_darwin(v27);
  v30 = &v83 - v29;
  v31 = sub_1000BC4D4(&qword_101699488, &unk_1013919F0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v83 - v34;
  v36 = *(a3 + 16);
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v115 = a3;
  v37 = v122;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v37)
  {

    v38 = 0;
    v39 = v123;
  }

  else
  {
    v86 = v26;
    v87 = v23;
    v88 = v30;
    v85 = v27;
    v89 = 0;
    v90 = v35;
    v91 = v32;
    v92 = v31;
    v84 = v126;
    v40 = v123;
    v125 = *(v123 + 16);
    v41 = v125;
    v97 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v42 = *(v97 - 8);
    v96 = *(v42 + 56);
    v95 = v42 + 56;
    v43 = v117;
    v96(v117, 1, 1, v97);
    v122 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v93 = sub_1001DAC6C(&qword_1016AF9C0, sub_1000BC488);
    v94 = v41;
    v44 = v98;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v83 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v84 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v45 = v101;
    v46 = v100;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v99 + 8))(v44, v46);
    v47 = v94;
    v126 = v94;
    v96(v43, 1, 1, v97);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v48 = v104;
    v49 = v103;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v43, &unk_1016B0FE0, &unk_101391980);

    (*(v102 + 1))(v45, v49);
    v50 = v124;
    v51 = *(v124 + 16);
    v52 = v119;
    v53 = v121;
    v103 = v124 + 16;
    v102 = v51;
    v51(v119, v120, v121);
    v54 = *(v50 + 80);
    v100 = ~v54;
    v55 = swift_allocObject();
    *(v55 + 16) = v40;
    v56 = *(v50 + 32);
    v124 = v50 + 32;
    v101 = v56;
    (v56)(v55 + ((v54 + 24) & ~v54), v52, v53);

    v57 = sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
    sub_1000041A4(&qword_1016994B8, &qword_101699460, &qword_1013919C8);
    v58 = v106;
    v59 = v107;
    v99 = v57;
    Publisher.map<A>(_:)();

    (*(v105 + 8))(v48, v58);
    v60 = swift_allocObject();
    v61 = v115;
    *(v60 + 16) = v40;
    *(v60 + 24) = v61;
    v62 = v40;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    sub_1000041A4(&qword_1016994C0, &qword_101699468, &qword_1013919D0);
    sub_1000041A4(&qword_101699418, &qword_101699358, &unk_1013918D0);
    v63 = v109;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v108 + 8))(v59, v63);
    if (qword_1016944A0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v64, qword_101698F88);
    v65 = v94;
    v126 = v94;
    v66 = v117;
    v96(v117, 1, 1, v97);
    sub_1000041A4(&qword_1016994C8, &qword_101699470, &qword_1013919D8);
    v67 = v86;
    v68 = v111;
    v69 = v116;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v66, &unk_1016B0FE0, &unk_101391980);

    (*(v110 + 8))(v69, v68);
    sub_1000041A4(&qword_1016994D0, &qword_101699478, &qword_1013919E0);
    v70 = v88;
    v71 = v87;
    Publisher.map<A>(_:)();
    (*(v112 + 8))(v67, v71);
    sub_1000BC4D4(&qword_101699430, &unk_1013919B0);
    sub_1000041A4(&qword_1016994D8, &qword_101699480, &qword_1013919E8);
    sub_1000041A4(&qword_101699440, &qword_101699430, &unk_1013919B0);
    v72 = v90;
    v73 = v85;
    Publisher.catch<A>(_:)();
    (*(v113 + 8))(v70, v73);
    v74 = swift_allocObject();
    v39 = v62;
    swift_weakInit();
    v75 = v119;
    v76 = v121;
    v102(v119, v120, v121);
    v77 = (v54 + 40) & v100;
    v78 = swift_allocObject();
    v78[2] = v74;
    v79 = v115;
    v78[3] = v114;
    v78[4] = v79;
    (v101)(v78 + v77, v75, v76);
    sub_1000041A4(&qword_1016994E0, &qword_101699488, &unk_1013919F0);

    v80 = v92;
    v38 = Publisher<>.sink(receiveValue:)();

    (*(v91 + 8))(v72, v80);
  }

  v81 = *(v39 + 80);
  *(v39 + 80) = v38;
}

uint64_t sub_1001C764C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 144);
  v30 = *(a1 + 160);
  v31 = v2;
  v4 = *(a1 + 176);
  v32 = *(a1 + 192);
  v5 = *(a1 + 112);
  v7 = *(a1 + 80);
  v26 = *(a1 + 96);
  v6 = v26;
  v27 = v5;
  v8 = *(a1 + 112);
  v9 = *(a1 + 144);
  v28 = *(a1 + 128);
  v10 = v28;
  v29 = v9;
  v11 = *(a1 + 48);
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v12 = v22;
  v23 = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v24 = *(a1 + 64);
  v16 = v24;
  v25 = v15;
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v18 = v21[0];
  v21[1] = v17;
  *(a2 + 160) = v30;
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 96) = v6;
  *(a2 + 112) = v8;
  *(a2 + 128) = v10;
  *(a2 + 144) = v3;
  *(a2 + 32) = v12;
  *(a2 + 48) = v14;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v33 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 208);
  *a2 = v18;
  *(a2 + 16) = v13;
  *(a2 + 216) = 0;
  return sub_1001D9B48(v21, v20);
}

uint64_t sub_1001C7704(uint64_t a1)
{
  sub_100101AA8(a1, v2);
  v2[216] = 1;
  sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
  return Just.init(_:)();
}

uint64_t sub_1001C7760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1001C77EC(a1, a4, a5);
  }

  return result;
}

void sub_1001C77EC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v111 = a3;
  v112 = a1;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v106 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v107 = &v99 - v12;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v104 = *(v13 - 8);
  v105 = v13;
  v14 = *(v104 + 64);
  __chkstk_darwin(v13);
  v103 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v110 = &v99 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v4 + 16);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v26)
  {
    v108 = v7;
    if (qword_1016950E0 == -1)
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
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177C448);
  sub_1000D2A70(v112, &v119, &qword_101699350, &qword_1013918C8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v109 = v6;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v101 = v4;
    v102 = a2;
    v33 = v32;
    *&v116[0] = v32;
    *v31 = 136315138;
    v100 = v27;
    sub_1000D2A70(&v119, &v113, &qword_101699350, &qword_1013918C8);
    sub_1000BC4D4(&qword_101699350, &qword_1013918C8);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_10000B3A8(&v119, &qword_101699350, &qword_1013918C8);
    v37 = sub_1000136BC(v34, v36, v116);

    *(v31 + 4) = v37;
    v27 = v100;
    _os_log_impl(&_mh_execute_header, v28, v29, "handlePublisherUpdate %s", v31, 0xCu);
    sub_100007BAC(v33);
    v4 = v101;
    a2 = v102;
  }

  else
  {

    sub_10000B3A8(&v119, &qword_101699350, &qword_1013918C8);
  }

  sub_1000D2A70(v112, &v119, &qword_101699350, &qword_1013918C8);
  if ((v132 & 1) == 0)
  {
    v116[10] = v128;
    v116[11] = v129;
    v116[12] = v130;
    v116[6] = v124;
    v116[7] = v125;
    v116[8] = v126;
    v116[9] = v127;
    v116[2] = v120[1];
    v116[3] = v121;
    v116[4] = v122;
    v116[5] = v123;
    v116[0] = v119;
    v116[1] = v120[0];
    v114[9] = v128;
    v114[10] = v129;
    v114[11] = v130;
    v114[5] = v124;
    v114[6] = v125;
    v114[7] = v126;
    v114[8] = v127;
    v114[1] = v120[1];
    v114[2] = v121;
    v114[3] = v122;
    v114[4] = v123;
    v117 = v131;
    v115 = v131;
    v113 = v119;
    v114[0] = v120[0];
    v49 = sub_1001DA684(&v113);
    if (v49 <= 3)
    {
      if (v49 == 1)
      {
        sub_10004CA28(&v113);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "Sent initiate pairing.", v77, 2u);
        }

        sub_1001D9FB8(v116);
        *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 0;
        return;
      }

      if (v49 != 3)
      {
        goto LABEL_37;
      }
    }

    else if (v49 != 4)
    {
      if (v49 == 6)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v27, qword_10177C418);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Requested beacon group data.", v74, 2u);

          sub_1001D9FB8(v116);
        }

        else
        {
        }

        *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 1;
        return;
      }

      if (v49 == 7)
      {
        v50 = *(v4 + 200);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        v53 = os_log_type_enabled(v51, v52);
        if (v50 == 1)
        {
          if (v53)
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v51, v52, "Sent pairing complete, skip ackRequest.", v54, 2u);
          }
        }

        else
        {
          if (v53)
          {
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&_mh_execute_header, v51, v52, "Sent pairing complete, continue with ackRequest.", v90, 2u);
          }

          sub_1001CE9D4();
        }

        v91 = *(v4 + 64);
        if (*(v91 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) == 9)
        {
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&_mh_execute_header, v92, v93, "Pairing has been completed for all serial numbers.", v94, 2u);
          }
        }

        else
        {
          *(v91 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 6;
        }

        sub_1001D8094();
        v86 = a2;
LABEL_53:
        sub_1001C889C(v86);
        sub_1001D9FB8(v116);
        return;
      }

LABEL_37:

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v118 = v81;
        *v80 = 136315138;
        v82 = sub_10110A934(*(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
        v84 = a2;
        v85 = sub_1000136BC(v82, v83, &v118);

        *(v80 + 4) = v85;
        a2 = v84;
        _os_log_impl(&_mh_execute_header, v78, v79, "Invalid pairing state %s!", v80, 0xCu);
        sub_100007BAC(v81);
      }

      v86 = a2;
      goto LABEL_53;
    }

    sub_10004CA28(&v113);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Sent finalize pairing.", v68, 2u);
    }

    sub_1001D9FB8(v116);
    *(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 4;
    return;
  }

  v113 = v119;
  v114[0] = v120[0];
  *(v114 + 9) = *(v120 + 9);
  sub_100101AA8(&v113, v116);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = a2;
    v41 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v41 = 136446466;
    v42 = sub_1013181BC();
    v44 = v43;
    sub_100101B04(v116);
    v45 = sub_1000136BC(v42, v44, &v118);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    v46 = sub_10110A934(*(*(v4 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState));
    v48 = sub_1000136BC(v46, v47, &v118);

    *(v41 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "Pairing error %{public}s). Pairing state: %{public}s)", v41, 0x16u);
    swift_arrayDestroy();

    a2 = v40;
  }

  else
  {

    sub_100101B04(v116);
  }

  v55 = v108;
  sub_100101B58();
  v56 = swift_allocError();
  sub_100101AA8(&v113, v57);
  v59 = v109;
  v58 = v110;
  (*(v55 + 56))(v110, 1, 1, v109);
  sub_1001D8778(v56, v111, v58);
  sub_10000B3A8(v58, &qword_1016A40D0, &unk_10138BE70);

  sub_1001C889C(a2);
  v60 = *(v4 + 56);
  if (v60)
  {
    v61 = *(v4 + 64);
    if (*(v61 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) >= 4u)
    {
      v62 = *(v4 + 24);
      v63 = v60;
      v64 = v106;
      sub_100A22DF0(v106);
      v65 = v107;
      sub_100AC5D4C(v64, v107);
      (*(v55 + 8))(v64, v59);
      if ((*(v104 + 48))(v65, 1, v105) == 1)
      {
        sub_100101B04(&v113);

        sub_10000B3A8(v65, &unk_1016AF8B0, &unk_1013A0700);
        return;
      }

      v87 = v103;
      sub_1001DA9D8(v65, v103, type metadata accessor for OwnedBeaconGroup);
      v88 = (*(v61 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v89 = v88[1];
      if (v89 >> 60 == 15)
      {
      }

      else
      {
        *&v116[0] = *v88;
        v95 = *&v116[0];
        *(&v116[0] + 1) = v89;
        sub_100017D5C(*&v116[0], v89);
        sub_1000E0A3C();
        if (DataProtocol.isNull.getter())
        {
        }

        else
        {
          v96 = Data.trimmed.getter();
          v98 = v97;
          sub_1001D4BA8(v96, v97, v87);

          sub_100016590(v96, v98);
        }

        sub_100006654(v95, v89);
      }

      sub_1001DAA40(v87, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Missing peripheral to clean up pending pairing!", v71, 2u);
    }
  }

  sub_100101B04(&v113);
}

void sub_1001C86A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_1016950E0 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C448);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "stopDiscovery", v15, 2u);
  }

  sub_10062EF30();
  v16 = *(v3 + 136);
  *(v3 + 136) = 0;

  if (a2)
  {
    sub_1001C889C(0);
  }
}

void sub_1001C889C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = v5[13];
  v11(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v41 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = v5[1];
  v12(v8, v4);
  if (v9)
  {
    v39 = v12;
    v40 = v11;
    if (qword_1016950E0 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = a1;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "cleanUp", v16, 2u);
    a1 = v38;
  }

  v17 = *(v2 + 80);
  *(v2 + 80) = 0;

  v18 = *(v2 + 88);
  *(v2 + 88) = 0;

  if (a1)
  {
    v19 = *(a1 + 16);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v42 = 13;
    v43 = 0u;
    v44 = 0u;
    v45 = 11;
    sub_100A5A2B8(&v42);
    sub_100101B04(&v42);
  }

  v20 = v40;
  *v8 = v41;
  v20(v8, v10, v4);
  v21 = _dispatchPreconditionTest(_:)();
  v39(v8, v4);
  if (v21)
  {
    *(v2 + 184) = 0;
    v22 = *(v2 + 160);
    v23 = *(v2 + 168);
    *(v2 + 160) = xmmword_10138BBF0;
    sub_100006654(v22, v23);
    v24 = *(v2 + 104);

    PassthroughSubject.send(_:)();

    v25 = *(v2 + 104);
    LOBYTE(v42) = 1;

    PassthroughSubject.send(completion:)();

    v26 = *(v2 + 56);
    if (!v26)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Missing peripheral to clean up!", v36, 2u);
      }

      goto LABEL_15;
    }

    v27 = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Disconnecting on cleanUp", v30, 2u);
    }

    v31 = *(v2 + 40);
    v42 = sub_10131FAE0(v27);
    sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
    sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
    Publisher.oneshot(_:)();

    if (*(v31 + OBJC_IVAR____TtC12searchpartyd14CentralManager_isSharedPairingAgent) == 1)
    {
      v33 = *(v31 + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
      __chkstk_darwin(v32);
      *(&v37 - 2) = v31;
      type metadata accessor for SharedPairingAgent();
      Lock.callAsFunction<A>(_:)();
      v34 = v42;
      sub_10104E044(v27);

LABEL_15:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001C8DD4(uint64_t a1)
{
  sub_1000D2A70(a1, &v11, &unk_1016A6150, &unk_10139DB30);
  if ((v13 & 1) == 0)
  {
    return sub_10000B3A8(&v11, &unk_1016A6150, &unk_10139DB30);
  }

  v9 = v11;
  *v10 = *v12;
  *&v10[9] = *&v12[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v1 = v9;
  v1[1] = *v10;
  *(v1 + 25) = *&v10[9];
  swift_errorRetain();
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Disconnection failure: %{public}@!", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }
}

void sub_1001C8FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v140 = a2;
  v141 = a3;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v131[-v8];
  v10 = type metadata accessor for AccessoryProductInfo();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v131[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = a1;
  v143 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v15 = *(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v16 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v15 + v16, v9, &qword_101697268, &qword_101394FE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_101697268, &qword_101394FE0);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C418);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v146 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x800000010134CFC0, &v146);
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s Missing productInfo!", v20, 0xCu);
      sub_100007BAC(v21);
    }

    *a4 = 8;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    goto LABEL_23;
  }

  sub_1001DA9D8(v9, v14, type metadata accessor for AccessoryProductInfo);
  v22 = &v14[*(v10 + 96)];
  v23 = *v22;
  v24 = v22[1];

  v25 = sub_100F4F600(v23, v24);
  v27 = v26;

  v138 = v14;
  if (v27 >> 60 == 15)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C418);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to generate E1 blob.", v31, 2u);
    }

LABEL_22:

    sub_1001DAA40(v138, type metadata accessor for AccessoryProductInfo);
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
LABEL_23:
    *(a4 + 40) = 11;
    *(a4 + 216) = 1;
    return;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v137 = type metadata accessor for Logger();
  sub_1000076D4(v137, qword_10177C418);
  sub_100017D5C(v25, v27);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  sub_100006654(v25, v27);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v25;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v146 = v36;
    *v35 = 136315138;
    sub_100017D5C(v34, v27);
    v37 = v27;
    v38 = Data.hexString.getter();
    v40 = v39;
    sub_100006654(v34, v37);
    v41 = sub_1000136BC(v38, v40, &v146);

    *(v35 + 4) = v41;
    v27 = v37;
    _os_log_impl(&_mh_execute_header, v32, v33, "E1: %s", v35, 0xCu);
    sub_100007BAC(v36);

    v25 = v34;
  }

  v42 = v142;
  v43 = (*(v142 + v143) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v44 = v43[1];
  if (v44 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v137, qword_10177C448);
    v29 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v29, v45, "Missing FindMyNetworkId to generate init pairing.", v46, 2u);
    }

    sub_100006654(v25, v27);
    goto LABEL_22;
  }

  v47 = *v43;
  if (*(v139 + 200) == 1)
  {
    sub_100017D5C(v47, v44);
    v48 = 0;
  }

  else
  {
    My = type metadata accessor for Feature.FindMy();
    *(&v147 + 1) = My;
    *&v148 = sub_1001DAC6C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v50 = sub_1000280DC(&v146);
    (*(*(My - 8) + 104))(v50, enum case for Feature.FindMy.alphaWasp(_:), My);
    sub_100017D5C(v47, v44);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&v146);
    v48 = My & 1;
  }

  v51 = v47;
  v52 = *(v42 + v143);
  v53 = *(v52 + 16);
  v54 = *(v52 + 24);
  v132 = v48;
  v166 = v48;
  sub_10002E98C(v25, v27);
  v55 = v51;
  sub_10002E98C(v51, v44);
  sub_100017D5C(v53, v54);
  sub_1000198E8();
  v56 = FixedWidthInteger.data.getter();
  v135 = v54;
  v58 = v54 >> 62;
  if ((v54 >> 62) <= 1)
  {
    if (!v58)
    {
      v59 = BYTE6(v135);
LABEL_36:
      v61 = v140;
      v60 = v141;
      goto LABEL_37;
    }

LABEL_34:
    LODWORD(v59) = HIDWORD(v53) - v53;
    if (__OFSUB__(HIDWORD(v53), v53))
    {
      __break(1u);
      goto LABEL_99;
    }

    v59 = v59;
    goto LABEL_36;
  }

  v61 = v140;
  v60 = v141;
  if (v58 != 2)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v63 = *(v53 + 16);
  v62 = *(v53 + 24);
  v64 = __OFSUB__(v62, v63);
  v59 = v62 - v63;
  if (v64)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_37:
  if (v59 != 32)
  {
    goto LABEL_105;
  }

  v65 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    if (!v65)
    {
      v66 = BYTE6(v27);
      goto LABEL_47;
    }

LABEL_45:
    LODWORD(v66) = HIDWORD(v25) - v25;
    if (!__OFSUB__(HIDWORD(v25), v25))
    {
      v66 = v66;
      goto LABEL_47;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v65 != 2)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v68 = *(v25 + 16);
  v67 = *(v25 + 24);
  v64 = __OFSUB__(v67, v68);
  v66 = v67 - v68;
  if (v64)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_47:
  if (v66 != 113)
  {
    goto LABEL_106;
  }

  v69 = v44 >> 62;
  if ((v44 >> 62) <= 1)
  {
    if (!v69)
    {
      v70 = BYTE6(v44);
      goto LABEL_57;
    }

LABEL_55:
    LODWORD(v70) = HIDWORD(v51) - v51;
    if (!__OFSUB__(HIDWORD(v51), v51))
    {
      v70 = v70;
      goto LABEL_57;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v69 != 2)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v72 = *(v51 + 16);
  v71 = *(v51 + 24);
  v64 = __OFSUB__(v71, v72);
  v70 = v71 - v72;
  if (v64)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_57:
  if (v70 != 32)
  {
    goto LABEL_107;
  }

  v73 = v57 >> 62;
  if ((v57 >> 62) <= 1)
  {
    if (!v73)
    {
      v74 = BYTE6(v57);
      goto LABEL_67;
    }

LABEL_65:
    LODWORD(v74) = HIDWORD(v56) - v56;
    if (!__OFSUB__(HIDWORD(v56), v56))
    {
      v74 = v74;
      goto LABEL_67;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v73 != 2)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v76 = *(v56 + 16);
  v75 = *(v56 + 24);
  v64 = __OFSUB__(v75, v76);
  v74 = v75 - v76;
  if (v64)
  {
    __break(1u);
    goto LABEL_65;
  }

LABEL_67:
  if (v74 != 1)
  {
    goto LABEL_108;
  }

  v77 = v60 >> 62;
  if ((v60 >> 62) <= 1)
  {
    if (!v77)
    {
      v78 = BYTE6(v60);
      goto LABEL_77;
    }

LABEL_75:
    LODWORD(v78) = HIDWORD(v61) - v61;
    if (!__OFSUB__(HIDWORD(v61), v61))
    {
      v78 = v78;
      goto LABEL_77;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v77 != 2)
  {
LABEL_109:
    __break(1u);
    return;
  }

  v80 = *(v61 + 16);
  v79 = *(v61 + 24);
  v64 = __OFSUB__(v79, v80);
  v78 = v79 - v80;
  if (v64)
  {
    __break(1u);
    goto LABEL_75;
  }

LABEL_77:
  if (v78 != 96)
  {
    goto LABEL_109;
  }

  *&v165 = v61;
  *(&v165 + 1) = v60;
  *&v134 = v56;
  *(&v134 + 1) = v57;
  if (v77 == 2)
  {
    v83 = *(v61 + 16);
    v82 = *(v61 + 24);
    v81 = v82 - v83;
    if (!__OFSUB__(v82, v83))
    {
      goto LABEL_83;
    }

    goto LABEL_104;
  }

  if (v77 == 1)
  {
    if (!__OFSUB__(HIDWORD(v61), v61))
    {
      v81 = HIDWORD(v61) - v61;
LABEL_83:
      sub_100017D5C(v61, v60);
      goto LABEL_85;
    }

    goto LABEL_103;
  }

  v81 = BYTE6(v60);
LABEL_85:
  v139 = v55;
  if (__OFSUB__(96, v81))
  {
    __break(1u);
    goto LABEL_97;
  }

  *&v146 = sub_100845C88(96 - v81);
  *(&v146 + 1) = v84;
  sub_100776394(&v146, 0);
  v85 = v146;
  Data.append(_:)();
  sub_100016590(v85, *(&v85 + 1));
  *&v160 = v53;
  *(&v160 + 1) = v135;
  *&v161 = v25;
  *(&v161 + 1) = v27;
  *&v162 = v139;
  *(&v162 + 1) = v44;
  v135 = v44;
  v163 = v165;
  v164 = v134;
  if (qword_1016950E0 != -1)
  {
LABEL_97:
    swift_once();
  }

  v86 = sub_1000076D4(v137, qword_10177C448);
  v87 = v142;

  v137 = v86;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  v90 = os_log_type_enabled(v88, v89);
  v136 = v27;
  v133 = v25;
  if (v90)
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v146 = v92;
    *v91 = 136315138;
    v93 = *(v87 + v143);
    v94 = *(v93 + 16);
    v95 = *(v93 + 24);
    sub_100017D5C(v94, v95);
    v96 = Data.hexString.getter();
    v98 = v97;
    sub_100016590(v94, v95);
    v99 = v96;
    v100 = v139;
    v101 = sub_1000136BC(v99, v98, &v146);
    v102 = v141;

    *(v91 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v88, v89, "sessionNonce: %s", v91, 0xCu);
    sub_100007BAC(v92);

    v103 = v140;
  }

  else
  {

    v100 = v139;
    v103 = v140;
    v102 = v141;
  }

  sub_100017D5C(v103, v102);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  sub_100016590(v103, v102);
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v146 = v107;
    *v106 = 136315138;
    v108 = Data.hexString.getter();
    v110 = sub_1000136BC(v108, v109, &v146);

    *(v106 + 4) = v110;
    _os_log_impl(&_mh_execute_header, v104, v105, "companionSessionNonce: %s", v106, 0xCu);
    sub_100007BAC(v107);
  }

  v111 = v136;
  v149 = v163;
  v150 = v164;
  v147 = v161;
  v148 = v162;
  v146 = v160;
  sub_1001DAAA0(&v146);
  v112 = v100;
  v113 = v100;
  v114 = v135;
  sub_10002E98C(v112, v135);
  sub_1001DAB40(&v160, v145);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  sub_100006654(v113, v114);
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v144 = v118;
    v145[0] = v113;
    *v117 = 141558531;
    *(v117 + 4) = 1752392040;
    *(v117 + 12) = 2081;
    v145[1] = v114;
    sub_100101CD0();
    v119 = RawRepresentable<>.hexString.getter();
    v121 = sub_1000136BC(v119, v120, &v144);

    *(v117 + 14) = v121;
    *(v117 + 22) = 256;
    *(v117 + 24) = v132;
    _os_log_impl(&_mh_execute_header, v115, v116, "generateInitPairingPayload request success: fmNetworkId: %{private,mask.hash}s, accountHint: %hhu.", v117, 0x19u);
    sub_100007BAC(v118);

    sub_100006654(v133, v136);
    sub_1001DAB9C(&v160);
    sub_100006654(v113, v114);
  }

  else
  {
    sub_100006654(v133, v111);
    sub_1001DAB9C(&v160);

    sub_100006654(v113, v114);
  }

  sub_1001DAA40(v138, type metadata accessor for AccessoryProductInfo);
  v122 = v157;
  v123 = v158;
  v124 = v155;
  *(a4 + 160) = v156;
  *(a4 + 176) = v122;
  *(a4 + 192) = v123;
  v125 = v153;
  v126 = v154;
  v127 = v151;
  *(a4 + 96) = v152;
  *(a4 + 112) = v125;
  *(a4 + 128) = v126;
  *(a4 + 144) = v124;
  v128 = v149;
  v129 = v150;
  *(a4 + 32) = v148;
  *(a4 + 48) = v128;
  *(a4 + 208) = v159;
  *(a4 + 64) = v129;
  *(a4 + 80) = v127;
  v130 = v147;
  *a4 = v146;
  *(a4 + 16) = v130;
  *(a4 + 216) = 0;
}

void sub_1001C9E28(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_100F54748();
  if (v12 >> 60 == 15)
  {
    if (qword_1016950E0 == -1)
    {
LABEL_4:
      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177C448);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to generate FindMyNetworkId.", v16, 2u);
      }

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 40) = 267;
      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v17 = v11;
  v18 = v12;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177C448);
  sub_100017D5C(v17, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  sub_100006654(v17, v18);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    sub_100017D5C(v17, v18);
    v24 = Data.hexString.getter();
    v26 = v25;
    sub_100006654(v17, v18);
    v27 = sub_1000136BC(v24, v26, &v33);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "findMyNetworkId: %s", v22, 0xCu);
    sub_100007BAC(v23);
  }

  v28 = *(v2 + 64);
  v29 = (*(v28 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v30 = *v29;
  v31 = v29[1];
  *v29 = v17;
  v29[1] = v18;

  sub_100006654(v30, v31);

  *a1 = v28;
  *(a1 + 41) = 0;
}

uint64_t sub_1001CA1CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v32, &qword_101699350, &qword_1013918C8);
  if (v35)
  {
    v36 = v32;
    v37[0] = v33[0];
    *(v37 + 9) = *(v33 + 9);
    sub_100101AA8(&v36, &v29);
    v12 = swift_allocObject();
    v13 = v30[0];
    v12[1] = v29;
    v12[2] = v13;
    *(v12 + 41) = *(v30 + 9);
    v14 = sub_1000BC4D4(&qword_101699358, &unk_1013918D0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = Future.init(_:)();
    sub_100101B04(&v36);
    return v17;
  }

  v45 = v33[9];
  v46 = v33[10];
  v47 = v33[11];
  v48 = v34;
  v41 = v33[5];
  v42 = v33[6];
  v43 = v33[7];
  v44 = v33[8];
  v37[1] = v33[1];
  v38 = v33[2];
  v39 = v33[3];
  v40 = v33[4];
  v36 = v32;
  v37[0] = v33[0];
  if (qword_1016950E0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C448);
  sub_1001D9B48(&v36, &v29);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1001D9FB8(&v36);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136446210;
    v30[9] = v45;
    v30[10] = v46;
    v30[11] = v47;
    v31 = v48;
    v30[5] = v41;
    v30[6] = v42;
    v30[7] = v43;
    v30[8] = v44;
    v30[1] = v37[1];
    v30[2] = v38;
    v30[3] = v39;
    v30[4] = v40;
    v29 = v36;
    v30[0] = v37[0];
    sub_1001D9B48(&v36, v27);
    v23 = String.init<A>(describing:)();
    v25 = sub_1000136BC(v23, v24, &v28);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sending %{public}s)", v21, 0xCu);
    sub_100007BAC(v22);
  }

  v17 = sub_1001D6CAC(&v36, a2);
  sub_1001D9FB8(&v36);
  return v17;
}

double sub_1001CA590@<D0>(uint64_t a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, unsigned __int128 *a3@<X8>)
{
  v469 = a2;
  v473 = a3;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v454 = &v447 - v7;
  v8 = type metadata accessor for StandaloneBeacon();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v449 = &v447 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v459 = &v447 - v13;
  __chkstk_darwin(v12);
  v451 = &v447 - v14;
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v455 = &v447 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult();
  v18 = *(*(v452 - 8) + 64);
  v19 = __chkstk_darwin(v452);
  v453 = &v447 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v456 = &v447 - v21;
  v457 = sub_1000BC4D4(&qword_1016993A0, &qword_101391908);
  v22 = *(*(v457 - 8) + 64);
  __chkstk_darwin(v457);
  v458 = (&v447 - v23);
  v24 = type metadata accessor for OwnedBeaconGroup(0);
  v470 = *(v24 - 8);
  v471 = v24;
  v25 = *(v470 + 64);
  v26 = __chkstk_darwin(v24);
  v450 = &v447 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v463 = &v447 - v28;
  v474 = type metadata accessor for Logger();
  v465 = *(v474 - 1);
  v29 = v465[8];
  __chkstk_darwin(v474);
  v468 = &v447 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for String.Encoding();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v466 = &v447 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MACAddress();
  v461 = *(v34 - 8);
  v462 = v34;
  v35 = *(v461 + 64);
  __chkstk_darwin(v34);
  v460 = &v447 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v467 = &v447 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v464 = &v447 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v447 - v44;
  __chkstk_darwin(v43);
  v47 = &v447 - v46;
  v48 = type metadata accessor for DispatchPredicate();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v52 = &v447 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = v3;
  v53 = *(v3 + 16);
  *v52 = v53;
  (*(v49 + 104))(v52, enum case for DispatchPredicate.onQueue(_:), v48);
  v54 = v53;
  v55 = _dispatchPreconditionTest(_:)();
  (*(v49 + 8))(v52, v48);
  if ((v55 & 1) == 0)
  {
    __break(1u);
    goto LABEL_165;
  }

  sub_1001011C0(a1, &v535);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v474, qword_10177C448);
    sub_1001011C0(a1, &v488);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *&v550 = v111;
      *v110 = 136446210;
      sub_1001011C0(&v488, v564);
      v112 = String.init<A>(describing:)();
      v114 = v113;
      sub_100007BAC(&v488);
      v115 = sub_1000136BC(v112, v114, &v550);

      *(v110 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, "Invalid command from payload %{public}s", v110, 0xCu);
      sub_100007BAC(v111);
    }

    else
    {

      sub_100007BAC(&v488);
    }

    goto LABEL_53;
  }

  v560 = v531;
  v561 = v532;
  v562 = v533;
  v556 = v527;
  v557 = v528;
  v558 = v529;
  v559 = v530;
  v552 = v523;
  v553 = v524;
  v554 = v525;
  v555 = v526;
  v550 = v521;
  v551 = v522;
  v517 = v531;
  v518 = v532;
  v519 = v533;
  v513 = v527;
  v514 = v528;
  v515 = v529;
  v516 = v530;
  v509 = v523;
  v510 = v524;
  v511 = v525;
  v512 = v526;
  v563 = v534;
  v520 = v534;
  v507 = v521;
  v508 = v522;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v56 = sub_1000076D4(v474, qword_10177C448);
  sub_1001D9B48(&v550, &v488);
  v57 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  sub_1001D9FB8(&v550);
  if (os_log_type_enabled(v57, v55))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v536 = v59;
    *v58 = 136446210;
    v497 = v560;
    v498 = v561;
    v499 = v562;
    v500 = v563;
    v493 = v556;
    v494 = v557;
    v495 = v558;
    v496 = v559;
    v489[1] = v552;
    v490 = v553;
    v491 = v554;
    v492 = v555;
    v488 = v550;
    v489[0] = v551;
    sub_1001D9B48(&v550, v564);
    v60 = String.init<A>(describing:)();
    v53 = sub_1000136BC(v60, v61, &v536);

    *(v58 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v57, v55, "Received command: %{public}s", v58, 0xCu);
    sub_100007BAC(v59);
  }

  v564[10] = v560;
  v564[11] = v561;
  v564[12] = v562;
  v565 = v563;
  v564[6] = v556;
  v564[7] = v557;
  v564[8] = v558;
  v564[9] = v559;
  v564[2] = v552;
  v564[3] = v553;
  v564[4] = v554;
  v564[5] = v555;
  v564[0] = v550;
  v564[1] = v551;
  v62 = sub_1001DA684(v564);
  if (v62 == 5)
  {
    sub_10004CA28(v564);
    v166 = Logger.logObject.getter();
    v167 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = swift_slowAlloc();
      *v168 = 0;
      _os_log_impl(&_mh_execute_header, v166, v167, "Received pairing status.", v168, 2u);
    }

    v55 = *(v472 + 64);
    v163 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState;
    *(v55 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 5;
    sub_100D5B64C(v506);
    sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
    if (swift_dynamicCast())
    {
      v503[0] = v475;
      v503[1] = v476[0];
      v504 = v476[1];
      v505 = v477;
      v56 = *(&v476[0] + 1);
      v161 = *&v476[0];
      sub_100017D5C(*&v476[0], *(&v476[0] + 1));
      v169 = sub_1008CDF88(v161, v56);
      if (v169)
      {
        v170 = v169;
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *&v488 = v174;
          *v173 = 136446210;
          v175 = sub_1008CDD10(v170);
          v177 = sub_1000136BC(v175, v176, &v488);

          *(v173 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v171, v172, "Pairing failed with status %{public}s", v173, 0xCu);
          sub_100007BAC(v174);
        }

        sub_1001DA6B0(v503);
LABEL_66:
        sub_1001D9FB8(&v550);
        v185 = 8;
        goto LABEL_54;
      }

      v53 = *(&v503[0] + 1);
      v52 = *&v503[0];
      sub_100017D5C(*&v503[0], *(&v503[0] + 1));
      v47 = 0;
      sub_100496254(v52, v53, &v488);
      goto LABEL_81;
    }

    sub_1001D9B48(&v550, &v488);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v550);
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v536 = v191;
      *v190 = 136446210;
      sub_100D5B64C(&v488);
      v196 = String.init<A>(describing:)();
      v198 = sub_1000136BC(v196, v197, &v536);

      *(v190 + 4) = v198;
      v195 = "Invalid sendPairingStatus payload %{public}s";
      goto LABEL_61;
    }

LABEL_62:

    sub_1001D9FB8(&v550);
    v186 = v473;
    v185 = 10;
    goto LABEL_55;
  }

  if (v62 != 2)
  {
    if (!v62)
    {
      v63 = sub_10004CA28(v564);
      v64 = *v63;
      v65 = *(v63 + 8);
      v66 = v56;
      v68 = *(v63 + 16);
      v67 = *(v63 + 24);
      v497 = v517;
      v498 = v518;
      v499 = v519;
      v500 = v520;
      v493 = v513;
      v494 = v514;
      v495 = v515;
      v496 = v516;
      v489[1] = v509;
      v490 = v510;
      v491 = v511;
      v492 = v512;
      v488 = v507;
      v489[0] = v508;
      v69 = sub_10004CA28(&v488);
      v71 = v69[2];
      v70 = v69[3];
      sub_100017D5C(*v69, v69[1]);
      sub_100017D5C(v71, v70);
      v448 = v66;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      sub_1001D9FB8(&v550);
      v74 = os_log_type_enabled(v72, v73);
      v474 = v64;
      v467 = v68;
      v468 = v65;
      v466 = v67;
      if (v74)
      {
        v75 = swift_slowAlloc();
        v465 = swift_slowAlloc();
        *&v503[0] = v465;
        *v75 = 136315138;
        *&v475 = v64;
        *(&v475 + 1) = v65;
        *&v476[0] = v68;
        *(&v476[0] + 1) = v67;
        v546 = v517;
        v547 = v518;
        v548 = v519;
        v549 = v520;
        v542 = v513;
        v543 = v514;
        v544 = v515;
        v545 = v516;
        v538 = v509;
        v539 = v510;
        v540 = v511;
        v541 = v512;
        v536 = v507;
        v537 = v508;
        v76 = sub_10004CA28(&v536);
        v77 = v76[2];
        v78 = v76[3];
        sub_100017D5C(*v76, v76[1]);
        sub_100017D5C(v77, v78);
        v79 = String.init<A>(describing:)();
        v81 = sub_1000136BC(v79, v80, v503);

        *(v75 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v72, v73, "Received beacon group data %s", v75, 0xCu);
        sub_100007BAC(v465);
      }

      v546 = v517;
      v547 = v518;
      v548 = v519;
      v549 = v520;
      v542 = v513;
      v543 = v514;
      v544 = v515;
      v545 = v516;
      v538 = v509;
      v539 = v510;
      v540 = v511;
      v541 = v512;
      v536 = v507;
      v537 = v508;
      v82 = sub_10004CA28(&v536);
      v83 = v82[2];
      v84 = v82[3];
      sub_100017D5C(*v82, v82[1]);
      sub_100017D5C(v83, v84);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();
      sub_1001D9FB8(&v550);
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *&v475 = v88;
        *v87 = 136315138;
        v89 = Data.hexString.getter();
        v91 = sub_1000136BC(v89, v90, &v475);

        *(v87 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v85, v86, "numberOfBeacons: %s", v87, 0xCu);
        sub_100007BAC(v88);
      }

      v484 = v517;
      v485 = v518;
      v486 = v519;
      v487 = v520;
      v480 = v513;
      v481 = v514;
      v482 = v515;
      v483 = v516;
      v476[1] = v509;
      v477 = v510;
      v478 = v511;
      v479 = v512;
      v475 = v507;
      v476[0] = v508;
      v92 = sub_10004CA28(&v475);
      v93 = v92[2];
      v94 = v92[3];
      sub_100017D5C(*v92, v92[1]);
      sub_100017D5C(v93, v94);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();
      sub_1001D9FB8(&v550);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v503[0] = v98;
        *v97 = 136315138;
        v99 = Data.hexString.getter();
        v101 = sub_1000136BC(v99, v100, v503);

        *(v97 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v95, v96, "beaconGroupData: %s", v97, 0xCu);
        sub_100007BAC(v98);
      }

      v102 = v472;
      v103 = *(v472 + 64);
      *(v103 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 2;
      v104 = *(v102 + 56);
      if (v104)
      {
        if (*(v102 + 200) == 1)
        {
          (*(v470 + 56))(v47, 1, 1, v471);
          v105 = v104;
          v106 = sub_10110D3E0(v47, 255);
          v471 = v107;
          v45 = v47;
LABEL_74:
          sub_10000B3A8(v45, &unk_1016AF8B0, &unk_1013A0700);
          v211 = sub_1000E0768();

          v212 = Logger.logObject.getter();
          v213 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            v474 = swift_slowAlloc();
            *&v503[0] = v474;
            *v214 = 136315138;
            type metadata accessor for MultipartAccessoryPairingInfo(0);
            sub_100101BAC();
            v215 = Dictionary.description.getter();
            v217 = v104;
            v218 = v106;
            v219 = v103;
            v220 = sub_1000136BC(v215, v216, v503);

            *(v214 + 4) = v220;
            v103 = v219;
            v106 = v218;
            v104 = v217;
            _os_log_impl(&_mh_execute_header, v212, v213, "beaconGroupInfo: %s", v214, 0xCu);
            sub_100007BAC(v474);
          }

          v221 = v471;
          v222 = *(v103 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
          v223 = *(v222 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
          *(v222 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v211;

          sub_1001C8FD4(v103, v106, v221, v473);

          sub_1001D9FB8(&v550);
          sub_100016590(v106, v221);
          return result;
        }

        v202 = *(v102 + 24);
        v104;
        sub_100AC5D4C(v469, v45);
        v203 = v464;
        sub_1000D2A70(v45, v464, &unk_1016AF8B0, &unk_1013A0700);
        if ((*(v470 + 48))(v203, 1, v471) == 1)
        {
          sub_10000B3A8(v203, &unk_1016AF8B0, &unk_1013A0700);
        }

        else
        {
          v204 = v460;
          v205 = v103;
          v206 = v203;
          sub_100A22DF0(v460);
          v207 = sub_10051578C(v204);
          (*(v461 + 8))(v204, v462);
          v208 = v206;
          v103 = v205;
          sub_1001DAA40(v208, type metadata accessor for OwnedBeaconGroup);
          v209 = v207;
          if ((v207 & 0x100) == 0)
          {
LABEL_73:
            v106 = sub_10110D3E0(v45, v209);
            v471 = v210;
            goto LABEL_74;
          }
        }

        v209 = 255;
        goto LABEL_73;
      }

      v199 = Logger.logObject.getter();
      v200 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 0;
        _os_log_impl(&_mh_execute_header, v199, v200, "Missing peripheral to start pairing!", v201, 2u);
      }

      goto LABEL_66;
    }

    sub_1001D9B48(&v550, &v488);
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v550);
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      *&v475 = v181;
      *v180 = 136446210;
      v497 = v560;
      v498 = v561;
      v499 = v562;
      v500 = v563;
      v493 = v556;
      v494 = v557;
      v495 = v558;
      v496 = v559;
      v489[1] = v552;
      v490 = v553;
      v491 = v554;
      v492 = v555;
      v488 = v550;
      v489[0] = v551;
      sub_1001D9B48(&v550, &v536);
      v182 = String.init<A>(describing:)();
      v184 = sub_1000136BC(v182, v183, &v475);

      *(v180 + 4) = v184;
      _os_log_impl(&_mh_execute_header, v178, v179, "Received unexpected command %{public}s", v180, 0xCu);
      sub_100007BAC(v181);
    }

    sub_1001D9FB8(&v550);
LABEL_53:
    v185 = 7;
LABEL_54:
    v186 = v473;
LABEL_55:
    *v186 = v185;
    result = 0.0;
    *(v186 + 8) = 0u;
    *(v186 + 24) = 0u;
    *(v186 + 40) = 11;
LABEL_56:
    *(v186 + 216) = 1;
    return result;
  }

  sub_10004CA28(v564);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "Received pairing data.", v118, 2u);
  }

  sub_100D5B64C(&v475);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (!swift_dynamicCast())
  {
    sub_1001D9B48(&v550, &v488);
    v188 = Logger.logObject.getter();
    v189 = static os_log_type_t.error.getter();
    sub_1001D9FB8(&v550);
    if (os_log_type_enabled(v188, v189))
    {
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v536 = v191;
      *v190 = 136446210;
      sub_100D5B64C(&v488);
      v192 = String.init<A>(describing:)();
      v194 = sub_1000136BC(v192, v193, &v536);

      *(v190 + 4) = v194;
      v195 = "Invalid sendPairingData payload %{public}s";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v188, v189, v195, v190, 0xCu);
      sub_100007BAC(v191);

      goto LABEL_62;
    }

    goto LABEL_62;
  }

  v546 = v497;
  v547 = v498;
  v548 = v499;
  v549 = v500;
  v542 = v493;
  v543 = v494;
  v544 = v495;
  v545 = v496;
  v538 = v489[1];
  v539 = v490;
  v540 = v491;
  v541 = v492;
  v536 = v488;
  v537 = v489[0];
  sub_1001DA8B8(&v536, &v488);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *&v488 = v122;
    *v121 = 136315138;
    v123 = Data.hexString.getter();
    v125 = sub_1000136BC(v123, v124, &v488);

    *(v121 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v119, v120, "SerialNumber: %s", v121, 0xCu);
    sub_100007BAC(v122);
  }

  sub_1001DA8B8(&v536, &v488);
  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *&v488 = v129;
    *v128 = 136315138;
    v130 = Data.hexString.getter();
    v132 = sub_1000136BC(v130, v131, &v488);

    *(v128 + 4) = v132;
    _os_log_impl(&_mh_execute_header, v126, v127, "ChipId: %s", v128, 0xCu);
    sub_100007BAC(v129);
  }

  sub_1001DA8B8(&v536, &v488);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v133, v134))
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    *&v488 = v136;
    *v135 = 136315138;
    v137 = Data.hexString.getter();
    v139 = sub_1000136BC(v137, v138, &v488);

    *(v135 + 4) = v139;
    _os_log_impl(&_mh_execute_header, v133, v134, "ECID: %s", v135, 0xCu);
    sub_100007BAC(v136);
  }

  sub_1001DA8B8(&v536, &v488);
  v140 = Logger.logObject.getter();
  v141 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v140, v141))
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v488 = v143;
    *v142 = 136315138;
    v144 = Data.hexString.getter();
    v146 = sub_1000136BC(v144, v145, &v488);

    *(v142 + 4) = v146;
    _os_log_impl(&_mh_execute_header, v140, v141, "numberOfBeacons: %s", v142, 0xCu);
    sub_100007BAC(v143);
  }

  sub_1001DA8B8(&v536, &v488);
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v488 = v150;
    *v149 = 136315138;
    v151 = Data.hexString.getter();
    v153 = sub_1000136BC(v151, v152, &v488);

    *(v149 + 4) = v153;
    _os_log_impl(&_mh_execute_header, v147, v148, "otherSerialNumber: %s", v149, 0xCu);
    sub_100007BAC(v150);
  }

  sub_1001DA8B8(&v536, &v488);
  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  sub_1001DA914(&v536);
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v488 = v157;
    *v156 = 136315138;
    v158 = Data.hexString.getter();
    v160 = sub_1000136BC(v158, v159, &v488);

    *(v156 + 4) = v160;
    _os_log_impl(&_mh_execute_header, v154, v155, "seed: %s", v156, 0xCu);
    sub_100007BAC(v157);
  }

  sub_1001DA8B8(&v536, &v488);
  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v161, v162))
  {
    sub_1001DA914(&v536);
LABEL_91:

    sub_1001DA8B8(&v536, &v488);
    v256 = Logger.logObject.getter();
    v257 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v256, v257))
    {
      sub_1001DA914(&v536);
LABEL_104:

      sub_1001DA8B8(&v536, &v488);
      v265 = Logger.logObject.getter();
      v266 = static os_log_type_t.debug.getter();
      v267 = os_log_type_enabled(v265, v266);
      v448 = v56;
      if (v267)
      {
        v268 = swift_slowAlloc();
        *v268 = 16777472;
        v268[4] = v548;
        sub_1001DA914(&v536);
        _os_log_impl(&_mh_execute_header, v265, v266, "beaconPartId: %hhu", v268, 5u);
      }

      else
      {
        sub_1001DA914(&v536);
      }

      v269 = *(v472 + 64);
      *(v269 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingState) = 3;
      v270 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
      v271 = *(v269 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
      v273 = *(&v536 + 1);
      v272 = v536;

      sub_100017D5C(v272, v273);
      sub_1004A4714(v272, v273, &v488);
      v274 = *(v271 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
      v275 = *(v271 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1 + 8);
      *(v271 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1) = v488;
      sub_100006654(v274, v275);

      v277 = *(&v540 + 1);
      v276 = v540;
      v278 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
      v279 = *v278;
      v280 = v278[1];
      *v278 = v540;
      v278[1] = v277;

      sub_100017D5C(v276, v277);
      sub_100006654(v279, v280);

      v282 = *(&v538 + 1);
      v281 = v538;
      v283 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v284 = *v283;
      v285 = v283[1];
      *v283 = v538;
      v283[1] = v282;

      sub_100017D5C(v281, v282);
      sub_100006654(v284, v285);

      v287 = *(&v541 + 1);
      v286 = v541;
      v288 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
      v289 = *v288;
      v290 = v288[1];
      *v288 = v541;
      v288[1] = v287;

      sub_100017D5C(v286, v287);
      sub_100006654(v289, v290);

      v292 = *(&v544 + 1);
      v291 = v544;
      v293 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
      v294 = *v293;
      v295 = v293[1];
      *v293 = v544;
      v293[1] = v292;

      sub_100017D5C(v291, v292);
      sub_100006654(v294, v295);

      v297 = *(&v543 + 1);
      v296 = v543;
      v298 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
      v299 = *v298;
      v300 = v298[1];
      *v298 = v543;
      v298[1] = v297;

      sub_100017D5C(v296, v297);
      sub_100006654(v299, v300);

      v302 = *(&v542 + 1);
      v301 = v542;
      v303 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
      v304 = *v303;
      v305 = v303[1];
      *v303 = v542;
      v303[1] = v302;

      sub_100017D5C(v301, v302);
      sub_100006654(v304, v305);

      v306 = *(v269 + v270);
      *(v306 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId) = v548;
      v488 = v537;
      sub_1000E0A3C();

      *(v306 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons) = DataProtocol.intValue.getter();

      v308 = *(&v546 + 1);
      v307 = v546;
      v309 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
      v310 = *v309;
      v311 = v309[1];
      *v309 = v546;
      v309[1] = v308;

      sub_100017D5C(v307, v308);
      sub_100006654(v310, v311);

      v313 = *(&v545 + 1);
      v312 = v545;
      v314 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
      v315 = *v314;
      v316 = v314[1];
      *v314 = v545;
      v314[1] = v313;

      sub_100017D5C(v312, v313);
      sub_100006654(v315, v316);

      v317 = Data.trimmed.getter();
      v319 = v318;
      static String.Encoding.utf8.getter();
      v320 = String.init(data:encoding:)();
      v322 = v321;
      sub_100016590(v317, v319);
      if (!v322)
      {
        v323 = Data.trimmed.getter();
        v325 = v324;
        v320 = Data.hexString.getter();
        v322 = v326;
        sub_100016590(v323, v325);
      }

      v327 = Logger.logObject.getter();
      v328 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v327, v328))
      {
        v329 = swift_slowAlloc();
        v330 = swift_slowAlloc();
        *&v488 = v330;
        *v329 = 136446210;
        *(v329 + 4) = sub_1000136BC(v320, v322, &v488);
        _os_log_impl(&_mh_execute_header, v327, v328, "beaconDisplayName: %{public}s", v329, 0xCu);
        sub_100007BAC(v330);
      }

      v331 = (*(v269 + v270) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryDisplayName);
      v332 = v331[1];
      *v331 = v320;
      v331[1] = v322;

      v333 = *(v269 + v270);

      sub_10024C7C4();
      v335 = v334;

      if (v335)
      {
        if (qword_101694498 != -1)
        {
          swift_once();
        }

        v336 = v474;
        v337 = sub_1000076D4(v474, qword_101698F70);
        v338 = v465;
        (v465[2])(v468, v337, v336);
        v339 = Logger.logObject.getter();
        v340 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v339, v340))
        {
          v341 = swift_slowAlloc();
          *v341 = 0;
          _os_log_impl(&_mh_execute_header, v339, v340, "S1 contains session nonce. Hardcoded pairing detected!", v341, 2u);
          v338 = v465;
        }

        (v338[1])(v468, v474);
      }

      v342 = Data.chunked(into:)();
      v343 = sub_1000F7A60(v342);
      v344 = *(v269 + v270);
      v345 = *(v344 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
      *(v344 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers) = v342;

      v346 = v467;
      if (*(v472 + 200))
      {
      }

      else
      {
        v347 = *(v472 + 24);
        sub_100AC5D4C(v469, v467);
        v348 = v471;
        if ((*(v470 + 48))(v346, 1, v471) == 1)
        {

          sub_10000B3A8(v346, &unk_1016AF8B0, &unk_1013A0700);
        }

        else
        {
          v349 = v463;
          sub_1001DA9D8(v346, v463, type metadata accessor for OwnedBeaconGroup);
          v350 = sub_1003CDA20(*(v349 + v348[10]));
          v351 = sub_1011299C8(v350);

          v352 = sub_100101618(v343, v351);

          if (!v352)
          {

            v374 = v448;
            v375 = Logger.logObject.getter();
            v376 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v375, v376))
            {
              v377 = swift_slowAlloc();
              *&v488 = swift_slowAlloc();
              *v377 = 136315394;
              v378 = v374;
              v379 = Array.description.getter();
              v381 = v380;

              v382 = v379;
              v374 = v378;
              v383 = sub_1000136BC(v382, v381, &v488);

              *(v377 + 4) = v383;
              *(v377 + 12) = 2080;
              sub_100101BAC();
              v384 = Set.description.getter();
              v386 = v385;

              v387 = sub_1000136BC(v384, v386, &v488);

              *(v377 + 14) = v387;
              _os_log_impl(&_mh_execute_header, v375, v376, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v377, 0x16u);
              swift_arrayDestroy();
            }

            else
            {
            }

            v389 = v463;
            sub_1005160CC(v374);
            sub_1001D9FB8(&v550);
            sub_1001DA914(&v536);
            sub_1001DAA40(v389, type metadata accessor for OwnedBeaconGroup);
            v185 = 14;
            goto LABEL_54;
          }

          sub_1001DAA40(v349, type metadata accessor for OwnedBeaconGroup);
        }
      }

      v353 = *(v269 + v270);

      v354 = sub_1001CE22C();
      v355 = *(v353 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
      *(v353 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v354;

      sub_1001CF6D0(v469, &v488);
      if (v501)
      {
        v475 = v488;
        v476[0] = v489[0];
        *(v476 + 9) = *(v489 + 9);
        sub_100101AA8(&v475, v503);
        v356 = Logger.logObject.getter();
        v357 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v356, v357))
        {
          v358 = swift_slowAlloc();
          v359 = swift_slowAlloc();
          v506[0] = v359;
          *v358 = 136446210;
          v360 = sub_1013181BC();
          v362 = v361;
          sub_100101B04(v503);
          v363 = sub_1000136BC(v360, v362, v506);

          *(v358 + 4) = v363;
          _os_log_impl(&_mh_execute_header, v356, v357, "Unable to generate finalizeCommand payload due to %{public}s", v358, 0xCu);
          sub_100007BAC(v359);

          sub_1001DA914(&v536);
          sub_1001D9FB8(&v550);
        }

        else
        {

          sub_1001DA914(&v536);
          sub_1001D9FB8(&v550);
          sub_100101B04(v503);
        }

        v186 = v473;
        v388 = v476[0];
        *v473 = v475;
        v186[1] = v388;
        result = *(v476 + 9);
        *(v186 + 25) = *(v476 + 9);
        goto LABEL_56;
      }

      v364 = Logger.logObject.getter();
      v365 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v364, v365))
      {
        v366 = swift_slowAlloc();
        *v366 = 0;
        _os_log_impl(&_mh_execute_header, v364, v365, "Successfully generated finalize pairing command.", v366, 2u);
      }

      sub_1001DA914(&v536);
      sub_1001D9FB8(&v550);
LABEL_129:
      v367 = v498;
      v368 = v473;
      v473[10] = v497;
      v368[11] = v367;
      v368[12] = v499;
      *(v368 + 26) = v500;
      v369 = v494;
      v368[6] = v493;
      v368[7] = v369;
      v370 = v496;
      v368[8] = v495;
      v368[9] = v370;
      v371 = v490;
      v368[2] = v489[1];
      v368[3] = v371;
      v372 = v492;
      v368[4] = v491;
      v368[5] = v372;
      result = *&v488;
      v373 = v489[0];
      *v368 = v488;
      v368[1] = v373;
      *(v368 + 216) = 0;
      return result;
    }

    v47 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v488 = v163;
    *v47 = 134218242;
    v52 = v544;
    v258 = *(&v544 + 1) >> 62;
    if ((*(&v544 + 1) >> 62) > 1)
    {
      if (v258 != 2)
      {
        v259 = 0;
        goto LABEL_103;
      }

      v261 = *(v544 + 16);
      v260 = *(v544 + 24);
      v226 = __OFSUB__(v260, v261);
      v259 = v260 - v261;
      if (!v226)
      {
        goto LABEL_103;
      }

      __break(1u);
    }

    else if (!v258)
    {
      v259 = BYTE14(v544);
LABEL_103:
      *(v47 + 4) = v259;
      sub_1001DA914(&v536);
      *(v47 + 6) = 2080;
      v262 = Data.hexString.getter();
      v264 = sub_1000136BC(v262, v263, &v488);

      *(v47 + 14) = v264;
      _os_log_impl(&_mh_execute_header, v256, v257, "BAA signature (S2) count %ld: %s", v47, 0x16u);
      sub_100007BAC(v163);

      goto LABEL_104;
    }

    LODWORD(v259) = HIDWORD(v52) - v52;
    if (!__OFSUB__(HIDWORD(v52), v52))
    {
      v259 = v259;
      goto LABEL_103;
    }

    goto LABEL_176;
  }

  v47 = swift_slowAlloc();
  v163 = swift_slowAlloc();
  *&v488 = v163;
  *v47 = 134218242;
  v52 = v543;
  v164 = *(&v543 + 1) >> 62;
  if ((*(&v543 + 1) >> 62) <= 1)
  {
    if (v164)
    {
      LODWORD(v165) = DWORD1(v543) - v543;
      if (__OFSUB__(DWORD1(v543), v543))
      {
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v165 = v165;
    }

    else
    {
      v165 = BYTE14(v543);
    }

    goto LABEL_90;
  }

  if (v164 != 2)
  {
    v165 = 0;
LABEL_90:
    *(v47 + 4) = v165;
    sub_1001DA914(&v536);
    *(v47 + 6) = 2080;
    v253 = Data.hexString.getter();
    v255 = sub_1000136BC(v253, v254, &v488);

    *(v47 + 14) = v255;
    _os_log_impl(&_mh_execute_header, v161, v162, "attestation (S1) count %ld: %s", v47, 0x16u);
    sub_100007BAC(v163);

    goto LABEL_91;
  }

  v225 = *(v543 + 16);
  v224 = *(v543 + 24);
  v226 = __OFSUB__(v224, v225);
  v165 = v224 - v225;
  if (!v226)
  {
    goto LABEL_90;
  }

  __break(1u);
LABEL_81:
  v467 = v53;
  v468 = v52;
  v465 = v163;
  v466 = v47;
  v227 = *(&v488 + 1);
  v228 = v488;
  v229 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v230 = *(v55 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  *(&v489[0] + 1) = &type metadata for CollaborativeKeyGen.v1.C3;
  *&v489[1] = sub_100101704();
  v488 = __PAIR128__(v227, v228);
  v231 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
  swift_beginAccess();

  v470 = v227;
  v471 = v228;
  sub_100017D5C(v228, v227);
  sub_10002311C(&v488, v230 + v231, &qword_101697320, &qword_10138BE90);
  swift_endAccess();

  v232 = (*(v55 + v229) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
  v233 = *v232;
  v234 = v232[1];
  *v232 = v161;
  v232[1] = v56;
  sub_100017D5C(v161, v56);

  sub_100006654(v233, v234);

  v235 = *(v55 + v229);
  v163 = *(&v504 + 1);
  v52 = v504;
  v236 = (v235 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v237 = *(v235 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
  v238 = *(v235 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  *v236 = v504;
  v236[1] = v163;

  sub_100017D5C(v52, v163);
  sub_100006654(v237, v238);

  v239 = Logger.logObject.getter();
  v240 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v239, v240))
  {
    v241 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v464 = v163;
    v243 = v242;
    *&v488 = v242;
    *v241 = 136446210;
    v244 = sub_1008CDD10(0);
    v246 = sub_1000136BC(v244, v245, &v488);

    *(v241 + 4) = v246;
    _os_log_impl(&_mh_execute_header, v239, v240, "status: %{public}s", v241, 0xCu);
    sub_100007BAC(v243);
    v163 = v464;
  }

  sub_1001DA704(v503, &v488);
  v247 = Logger.logObject.getter();
  v248 = static os_log_type_t.debug.getter();
  v249 = os_log_type_enabled(v247, v248);
  v53 = v471;
  if (!v249)
  {
    sub_1001DA6B0(v503);
    goto LABEL_145;
  }

  v47 = swift_slowAlloc();
  v250 = swift_slowAlloc();
  *&v488 = v250;
  *v47 = 134218242;
  v251 = v163 >> 62;
  if ((v163 >> 62) > 1)
  {
    if (v251 != 2)
    {
      v252 = 0;
      goto LABEL_144;
    }

    v391 = *(v52 + 2);
    v390 = *(v52 + 3);
    v226 = __OFSUB__(v390, v391);
    v252 = v390 - v391;
    if (!v226)
    {
      goto LABEL_144;
    }

    __break(1u);
LABEL_141:
    LODWORD(v252) = HIDWORD(v52) - v52;
    if (__OFSUB__(HIDWORD(v52), v52))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v252 = v252;
    goto LABEL_144;
  }

  if (v251)
  {
    goto LABEL_141;
  }

  v252 = BYTE6(v163);
LABEL_144:
  *(v47 + 4) = v252;
  sub_1001DA6B0(v503);
  *(v47 + 6) = 2080;
  v392 = Data.hexString.getter();
  v394 = sub_1000136BC(v392, v393, &v488);

  *(v47 + 14) = v394;
  _os_log_impl(&_mh_execute_header, v247, v248, "S4 count %ld: %s", v47, 0x16u);
  sub_100007BAC(v250);

LABEL_145:

  sub_1001DA704(v503, &v488);
  v395 = Logger.logObject.getter();
  v396 = static os_log_type_t.debug.getter();
  sub_1001DA6B0(v503);
  if (os_log_type_enabled(v395, v396))
  {
    v397 = swift_slowAlloc();
    v398 = swift_slowAlloc();
    *&v488 = v398;
    *v397 = 136315138;
    v399 = Data.hexString.getter();
    v401 = sub_1000136BC(v399, v400, &v488);

    *(v397 + 4) = v401;
    _os_log_impl(&_mh_execute_header, v395, v396, "C3: %s", v397, 0xCu);
    sub_100007BAC(v398);
  }

  v163 = v459;
  v52 = v470;
  v402 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();
  sub_1000D2A70(v55 + v402, &v488, &qword_101697380, &unk_10138BEF0);
  if (!*(&v489[0] + 1))
  {
    sub_10000B3A8(&v488, &qword_101697380, &unk_10138BEF0);
    goto LABEL_152;
  }

  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_152:
    v405 = Logger.logObject.getter();
    v406 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v405, v406))
    {
      v407 = swift_slowAlloc();
      *v407 = 0;
      _os_log_impl(&_mh_execute_header, v405, v406, "Unable to generate initial pairing data from owner context and C3!)", v407, 2u);
    }

    sub_100016590(v53, v52);

    goto LABEL_155;
  }

  v403 = v536;
  sub_100017D5C(v53, v52);
  v404 = CCCKGGetOpeningSize();

  v47 = v466;
  sub_1003F141C(v53, v52, v403, v404, &v488);
  if (v47)
  {

    sub_100016590(v53, v52);

    goto LABEL_152;
  }

  sub_100016590(v53, v52);
  v538 = v489[1];
  v539 = v490;
  v540 = v491;
  v537 = v489[0];
  v536 = v488;
  v408 = v458;
  sub_1001D35A4(&v536, v469, v458);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v419 = v456;
    sub_1001DA9D8(v408, v456, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    v48 = v453;
    sub_1001DA7B4(v419, v453, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v451;
      sub_1001DA9D8(v48, v451, type metadata accessor for StandaloneBeacon);
      if (qword_1016950D0 == -1)
      {
LABEL_162:
        sub_1000076D4(v474, qword_10177C418);
        sub_1001DA7B4(v53, v163, type metadata accessor for StandaloneBeacon);
        v420 = v449;
        sub_1001DA7B4(v53, v449, type metadata accessor for StandaloneBeacon);
        v421 = Logger.logObject.getter();
        v422 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v421, v422))
        {
          v423 = swift_slowAlloc();
          LODWORD(v469) = v422;
          v424 = v163;
          v425 = v423;
          v472 = swift_slowAlloc();
          *&v488 = v472;
          *v425 = 136315651;
          v426 = sub_100B9B27C();
          v427 = v420;
          v429 = v428;
          v474 = type metadata accessor for StandaloneBeacon;
          sub_1001DAA40(v424, type metadata accessor for StandaloneBeacon);
          v430 = v426;
          v52 = v470;
          v431 = sub_1000136BC(v430, v429, &v488);

          *(v425 + 4) = v431;
          *(v425 + 12) = 2160;
          *(v425 + 14) = 1752392040;
          *(v425 + 22) = 2081;
          type metadata accessor for UUID();
          sub_1001DAC6C(&qword_101696930, &type metadata accessor for UUID);
          v432 = v427;
          v433 = v421;
          v434 = dispatch thunk of CustomStringConvertible.description.getter();
          v436 = v435;
          sub_1001DAA40(v432, v474);
          v437 = sub_1000136BC(v434, v436, &v488);

          *(v425 + 24) = v437;
          _os_log_impl(&_mh_execute_header, v433, v469, "Created standalone beacon: %s. BeaconId: %{private,mask.hash}s", v425, 0x20u);
          swift_arrayDestroy();

          v438 = v451;
          v439 = v474;
        }

        else
        {

          sub_1001DAA40(v420, type metadata accessor for StandaloneBeacon);
          sub_1001DAA40(v163, type metadata accessor for StandaloneBeacon);
          v438 = v53;
          v439 = type metadata accessor for StandaloneBeacon;
        }

        sub_1001DAA40(v438, v439);
        sub_1001DAA40(v456, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
        *(v465 + v55) = 9;
        v53 = v471;
LABEL_172:
        static Data.random(bytes:)();
        sub_1001DA81C();
        BinaryDecodable.init(data:)();
        if (!v47)
        {
          sub_100016590(v53, v52);

          sub_1001DA760(&v536);
          sub_1001DA6B0(v503);
          sub_1001D9FB8(&v550);
          sub_1001DA870(&v488);
          goto LABEL_129;
        }

        sub_100016590(v53, v52);

        sub_1001DA760(&v536);
LABEL_155:
        sub_1001DA6B0(v503);
        sub_1001D9FB8(&v550);
        v185 = 10;
        goto LABEL_54;
      }

LABEL_178:
      swift_once();
      goto LABEL_162;
    }

LABEL_165:
    v440 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    v441 = v450;
    sub_1001DA9D8(v48, v450, type metadata accessor for OwnedBeaconGroup);
    sub_1001DA9D8(v48 + v440, v455, type metadata accessor for OwnedBeaconRecord);
    v442 = Logger.logObject.getter();
    v443 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v442, v443))
    {
      v444 = swift_slowAlloc();
      *v444 = 0;
      _os_log_impl(&_mh_execute_header, v442, v443, "Saved new beacon. Proceed to sending pairing complete.", v444, 2u);
      v441 = v450;
    }

    if (sub_100518118())
    {
      *(v465 + v55) = 9;
    }

    v445 = *(v472 + 32);
    v446 = v455;
    sub_100A5187C(v455);
    sub_1001DAA40(v446, type metadata accessor for OwnedBeaconRecord);
    sub_1001DAA40(v441, type metadata accessor for OwnedBeaconGroup);
    sub_1001DAA40(v456, type metadata accessor for AirPodsLEPairingManager.BeaconCreationResult);
    goto LABEL_172;
  }

  v409 = *v408;
  swift_errorRetain();
  v410 = Logger.logObject.getter();
  v411 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v410, v411))
  {
    v412 = swift_slowAlloc();
    v413 = swift_slowAlloc();
    *&v488 = v413;
    *v412 = 136446210;
    v502 = v409;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v414 = String.init<A>(describing:)();
    v416 = sub_1000136BC(v414, v415, &v488);
    v53 = v471;

    *(v412 + 4) = v416;
    _os_log_impl(&_mh_execute_header, v410, v411, "Failed to create new beacon. %{public}s", v412, 0xCu);
    sub_100007BAC(v413);
    v52 = v470;
  }

  v417 = v454;
  (*(v461 + 56))(v454, 1, 1, v462);
  sub_1001D8778(v409, v469, v417);

  sub_1001DA760(&v536);
  sub_1001D9FB8(&v550);

  sub_100016590(v53, v52);
  sub_1001DA6B0(v503);
  sub_10000B3A8(v417, &qword_1016A40D0, &unk_10138BE70);
  v418 = v473;
  *v473 = 10;
  result = 0.0;
  *(v418 + 8) = 0u;
  *(v418 + 24) = 0u;
  *(v418 + 40) = 11;
  *(v418 + 216) = 1;
  return result;
}

void *sub_1001CE22C()
{
  v25 = _swiftEmptyDictionarySingleton;
  *v24 = *(v0 + 16);
  sub_1000E0A3C();
  v1 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Number of beacons: %{public}ld", v5, 0xCu);
  }

  if (v1 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = Data.chunked(into:)();
  sub_1001BFF14(v8, &v25);

  v9 = v25;
  v10 = v25[2];
  v11 = Logger.logObject.getter();
  if (v10 == v1 - 1)
  {
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v15 = Dictionary.description.getter();
      v17 = v16;

      v18 = sub_1000136BC(v15, v17, v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "serialNumbersAndMacAddressesMap: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v9[2];
      _os_log_impl(&_mh_execute_header, v11, v19, "Unexpected number of other serial numbers: %{public}ld", v20, 0xCu);
    }

    v21 = type metadata accessor for BinaryEncodingError();
    sub_1001DAC6C(&qword_101696E20, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for BinaryEncodingError.encodingError(_:), v21);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1001CE5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a1;
  v31 = a2;
  v4 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v26 - v6);
  v27 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v8 = *(*(v27 - 8) + 64);
  v9 = __chkstk_darwin(v27);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = swift_allocBox();
  v15 = v14;
  type metadata accessor for SPPairingSessionError(0);
  v33 = 1;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001DAC6C(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v15 = v32;
  swift_storeEnumTagMultiPayload();
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = *(v3 + 48);
  v28 = v3;
  v18 = *(v3 + 200);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v16;
  v30 = v13;

  v20 = v16;
  sub_100924C68(v29, v18, sub_1001DA614, v19);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  sub_1000D2A70(v15, v7, &qword_1016993A8, &unk_101391930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v7;
    v21 = v33;
    sub_1001DAC6C(&qword_101695F60, type metadata accessor for SPPairingSessionError);
    swift_willThrowTypedImpl();
  }

  else
  {

    v22 = v26;
    sub_1001DA9D8(v7, v26, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    sub_1001DA9D8(v22, v12, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v23 = *(*(v28 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v24 = *&v12[*(v27 + 56)];

    sub_1001DAA40(v12, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    *(v23 + 32) = v24;
  }

  sub_1000D2A70(v15, v31, &qword_1016993A8, &unk_101391930);
}

void sub_1001CE960(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  sub_1001DA61C(a1, v5, &qword_1016993A8, &unk_101391930);
  dispatch_group_leave(a3);
}

void sub_1001CE9D4()
{
  v1 = v0;
  v2 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);

  sub_10002E98C(v3, v4);
  sub_100F514E8(v3, v4, v10);
  sub_100006654(v3, v4);

  memcpy(v11, v10, sizeof(v11));
  if (sub_1001010A8(v11) == 1)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C448);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to generate ack data!", v8, 2u);
    }
  }

  else
  {
    memcpy(v12, v11, sizeof(v12));
    v9 = type metadata accessor for Transaction();
    __chkstk_darwin(v9);
    static Transaction.named<A>(_:with:)();
    sub_10000B3A8(v10, &qword_1016993B8, &unk_101391960);
  }
}

uint64_t sub_1001CEBE4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v16 = a3;
  v7 = type metadata accessor for MACAddress();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = *(a2 + 48);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  (*(v8 + 32))(v13 + v12, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_100925674(v16, sub_1001DA538, v13);
}

uint64_t sub_1001CED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v72 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v5 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v69 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin(v70);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MACAddress();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  __chkstk_darwin(v10);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = sub_1000BC4D4(&qword_1016993C0, &qword_1013C82C0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v60 - v24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v62 = v5;
    v61 = a3;
    Transaction.capture()();
    sub_1000D2A70(v72, v25, &qword_1016993C0, &qword_1013C82C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *v25;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177C448);
      v30 = v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v73 = v30;
        aBlock[0] = v34;
        *v33 = 136446210;
        type metadata accessor for SPPairingSessionError(0);
        v35 = v30;
        v36 = String.init<A>(describing:)();
        v38 = sub_1000136BC(v36, v37, aBlock);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Ack register failed with error - %{public}s", v33, 0xCu);
        sub_100007BAC(v34);
      }

      v39 = v61;
      v40 = *(v27 + 16);
      v42 = v63;
      v41 = v64;
      v43 = v65;
      (*(v64 + 16))(v63, v66, v65);
      v44 = (*(v41 + 80) + 40) & ~*(v41 + 80);
      v45 = swift_allocObject();
      *(v45 + 2) = v39;
      *(v45 + 3) = v27;
      *(v45 + 4) = v30;
      (*(v41 + 32))(&v45[v44], v42, v43);
      aBlock[4] = sub_1001DA5AC;
      aBlock[5] = v45;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006684;
      aBlock[3] = &unk_101612D10;
      v46 = _Block_copy(aBlock);
      v47 = v30;

      v48 = v67;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_1001DAC6C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v49 = v69;
      v50 = v62;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);

      (*(v71 + 8))(v49, v50);
      (*(v68 + 8))(v48, v70);
    }

    else
    {
      sub_1001DA9D8(v25, v21, type metadata accessor for AirPodsLEPairingLockAckResponse);
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177C448);
      sub_1001DA7B4(v21, v19, type metadata accessor for AirPodsLEPairingLockAckResponse);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock[0] = v55;
        *v54 = 136446210;
        sub_1001DA7B4(v19, v16, type metadata accessor for AirPodsLEPairingLockAckResponse);
        v56 = String.init<A>(describing:)();
        v58 = v57;
        sub_1001DAA40(v19, type metadata accessor for AirPodsLEPairingLockAckResponse);
        v59 = sub_1000136BC(v56, v58, aBlock);

        *(v54 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v52, v53, "Ack register was success. %{public}s", v54, 0xCu);
        sub_100007BAC(v55);
      }

      else
      {

        sub_1001DAA40(v19, type metadata accessor for AirPodsLEPairingLockAckResponse);
      }

      return sub_1001DAA40(v21, type metadata accessor for AirPodsLEPairingLockAckResponse);
    }
  }

  return result;
}

uint64_t sub_1001CF5CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  Transaction.capture()();
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1001D8778(a3, a4, v9);
  return sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
}

void sub_1001CF6D0(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, unint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v223 = &v194 - v7;
  v8 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v221 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v194 - v12;
  v14 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v222 = &v194 - v16;
  v224 = sub_1000BC4D4(&qword_1016993A8, &unk_101391930);
  v17 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v225 = (&v194 - v18);
  v231 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v226 = *(v231 - 8);
  v19 = *(v226 + 64);
  v20 = __chkstk_darwin(v231);
  v234 = &v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v230 = &v194 - v22;
  v235 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v23 = *(*(v235 - 8) + 64);
  v24 = __chkstk_darwin(v235);
  v229 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v228 = &v194 - v27;
  v28 = __chkstk_darwin(v26);
  v227 = (&v194 - v29);
  v30 = __chkstk_darwin(v28);
  v232 = (&v194 - v31);
  __chkstk_darwin(v30);
  v233 = (&v194 - v32);
  v33 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  isUniquelyReferenced_nonNull_native = &v194 - v35;
  v37 = type metadata accessor for HashAlgorithm();
  v38 = *(*(v37 - 1) + 64);
  __chkstk_darwin(v37);
  v41 = &v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2[8];
  v43 = (*(v42 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v44 = v43[1];
  if (v44 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_3;
  }

  v216 = v39;
  v217 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v218 = v42;
  v219 = v8;
  v215 = v13;
  v49 = *v43;
  sub_10002E98C(*v43, v44);
  sub_100017D5C(v49, v44);
  v50 = sub_100A7491C(v49, v44);
  v220 = v44;
  v207 = a1;
  v213 = a2;
  v214 = v51;
  v212 = v2;
  v52 = v50;
  v54 = v53;
  sub_100006654(v49, v44);
  sub_100017D5C(v52, v54);
  sub_10049613C(v52, v54, v268);
  v195 = 0;
  v205 = v52;
  v206 = v54;
  v197 = v49;
  v55 = v268[0];
  v56 = v268[1];
  v57 = v218;
  v58 = *(v218 + v217);
  v268[3] = &type metadata for CollaborativeKeyGen.v1.C2;
  v268[4] = sub_1001023A0();
  v268[0] = v55;
  v268[1] = v56;
  v59 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  v202 = v55;
  v203 = v56;
  sub_100017D5C(v55, v56);
  sub_10002311C(v268, v58 + v59, &qword_101697378, &unk_101391940);
  swift_endAccess();

  v60 = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  v268[4] = &off_101645BA0;
  v268[3] = v60;
  v268[0] = v214;
  v61 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingOwnerContext;
  swift_beginAccess();

  sub_10002311C(v268, v57 + v61, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_1016950E0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v63 = sub_1000076D4(v62, qword_10177C448);
  v64 = v205;
  a2 = v206;
  sub_100017D5C(v205, v206);
  v196 = v63;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  sub_100016590(v64, a2);
  v67 = os_log_type_enabled(v65, v66);
  v68 = v219;
  if (v67)
  {
    v69 = v66;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v268[0] = v71;
    *v70 = 136315138;
    v72 = Data.hexString.getter();
    a2 = sub_1000136BC(v72, v73, v268);

    *(v70 + 4) = a2;
    v74 = v69;
    v68 = v219;
    _os_log_impl(&_mh_execute_header, v65, v74, "C2: %s", v70, 0xCu);
    sub_100007BAC(v71);
  }

  v75 = v216;
  (v216[13])(v41, enum case for HashAlgorithm.sha256(_:), v37);
  v77 = v202;
  v76 = v203;
  sub_100017D5C(v202, v203);
  v201 = Data.hash(algorithm:)();
  v198 = v78;
  sub_100016590(v77, v76);
  (v75[1])(v41, v37);
  v79 = v212[3];
  sub_100AC5D4C(v207, isUniquelyReferenced_nonNull_native);
  v80 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v80 - 8) + 48))(isUniquelyReferenced_nonNull_native, 1, v80) == 1)
  {
    sub_10000B3A8(isUniquelyReferenced_nonNull_native, &unk_1016AF8B0, &unk_1013A0700);
    v81 = *(*(v218 + v217) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v84 = *(v81 + 64);
    v83 = v81 + 64;
    v82 = v84;
    v85 = 1 << *(*(*(v218 + v217) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v87 = v86 & v82;
    v88 = (v85 + 63) >> 6;
    v204 = *(*(v218 + v217) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    swift_bridgeObjectRetain_n();
    v41 = 0;
    v37 = _swiftEmptyDictionarySingleton;
    v199 = v88;
    v200 = v83;
    while (1)
    {
      if (!v87)
      {
        while (1)
        {
          v89 = (v41 + 1);
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v89 >= v88)
          {

            goto LABEL_33;
          }

          v87 = *(v83 + 8 * v89);
          ++v41;
          if (v87)
          {
            v216 = v37;
            v41 = v89;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_55:
        swift_once();
LABEL_3:
        v45 = type metadata accessor for Logger();
        sub_1000076D4(v45, qword_10177C448);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Missing C1 from accessory!", v48, 2u);
        }

        *a2 = 0xD00000000000001ALL;
        *(a2 + 8) = 0x800000010134B370;
        *(a2 + 40) = 9;
        *(a2 + 216) = 1;
        return;
      }

      v216 = v37;
LABEL_21:
      v90 = __clz(__rbit64(v87)) | (v41 << 6);
      v91 = *(v204 + 56);
      v92 = (*(v204 + 48) + 16 * v90);
      v94 = v92[1];
      v208 = *v92;
      v93 = v208;
      v95 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
      v96 = v91 + *(*v95 + 72) * v90;
      v97 = v233;
      sub_1001DA7B4(v96, v233 + *(v235 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      *v97 = v93;
      v97[1] = v94;
      v98 = v232;
      sub_1000D2A70(v97, v232, &qword_101696E38, &qword_1013D8510);
      v99 = *v98;
      v210 = v98[1];
      v211 = v99;
      v100 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v101 = v230;
      v209 = &v230[*(v100 + 48)];
      v102 = v227;
      sub_1000D2A70(v97, v227, &qword_101696E38, &qword_1013D8510);
      v104 = *v102;
      v103 = v102[1];
      sub_100017D5C(v208, v94);
      sub_100016590(v104, v103);
      v105 = v235;
      v106 = v102 + *(v235 + 48);
      sub_1000D2A70(v106 + v95[8], v101, &qword_1016A40D0, &unk_10138BE70);
      sub_1001DAA40(v106, type metadata accessor for MultipartAccessoryPairingInfo);
      v107 = v228;
      sub_1000D2A70(v97, v228, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v107, *(v107 + 8));
      v108 = *(v105 + 48);
      LOBYTE(v106) = *(v107 + v108);
      sub_1001DAA40(v107 + v108, type metadata accessor for MultipartAccessoryPairingInfo);
      v109 = v229;
      sub_1000D2A70(v97, v229, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v109, *(v109 + 8));
      v110 = v109 + *(v105 + 48);
      LOBYTE(v95) = *(v110 + v95[9]);
      sub_1001DAA40(v110, type metadata accessor for MultipartAccessoryPairingInfo);
      v111 = v209;
      *v209 = v106;
      v112 = v210;
      v111[1] = 0;
      v111[2] = v95;
      swift_storeEnumTagMultiPayload();
      sub_1001DA9D8(v101, v234, type metadata accessor for OwnedBeaconGroup.PairingState);
      v113 = v216;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v268[0] = v113;
      v37 = v211;
      v115 = sub_100771E30(v211, v112);
      v116 = *(v113 + 16);
      v117 = (v114 & 1) == 0;
      v118 = v116 + v117;
      if (__OFADD__(v116, v117))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      a2 = v114;
      if (*(v113 + 24) >= v118)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10100586C();
        }

        isUniquelyReferenced_nonNull_native = v37;
        v37 = v268[0];
        if (a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_100FE71DC(v118, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = v37;
        v119 = sub_100771E30(v37, v112);
        if ((a2 & 1) != (v120 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v115 = v119;
        v37 = v268[0];
        if (a2)
        {
LABEL_13:
          sub_100101D24(v234, v37[7] + *(v226 + 72) * v115);
          sub_100016590(isUniquelyReferenced_nonNull_native, v112);
          sub_10000B3A8(v233, &qword_101696E38, &qword_1013D8510);
          goto LABEL_14;
        }
      }

      v37[(v115 >> 6) + 8] |= 1 << v115;
      v121 = (v37[6] + 16 * v115);
      *v121 = isUniquelyReferenced_nonNull_native;
      v121[1] = v112;
      sub_1001DA9D8(v234, v37[7] + *(v226 + 72) * v115, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10000B3A8(v233, &qword_101696E38, &qword_1013D8510);
      v122 = v37[2];
      v123 = __OFADD__(v122, 1);
      v124 = v122 + 1;
      if (v123)
      {
        goto LABEL_57;
      }

      v37[2] = v124;
LABEL_14:
      v68 = v219;
      v88 = v199;
      v83 = v200;
      v87 &= v87 - 1;
      sub_1001DAA40(v232 + *(v235 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    }
  }

  v37 = *(isUniquelyReferenced_nonNull_native + *(v80 + 40));

  sub_1001DAA40(isUniquelyReferenced_nonNull_native, type metadata accessor for OwnedBeaconGroup);
LABEL_33:
  v125 = *(v218 + v217);
  v126 = v212[14];
  v127 = v212[15];

  sub_10002E98C(v126, v127);
  v128 = v198;
  sub_100F518CC(v201, v198, v126, v127, v37, v236);

  sub_100006654(v126, v127);

  memcpy(v267, v236, sizeof(v267));
  if (sub_100101D88(v267) == 1)
  {
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "Unable to create pairing check data.", v131, 2u);
    }

    sub_100016590(v202, v203);
    sub_100006654(v197, v220);
    sub_100016590(v205, v206);
    sub_100016590(v201, v128);
    v132 = v213;
    *v213 = 0xD00000000000001ALL;
    v132[1] = 0x800000010134B3C0;
    *(v132 + 40) = 9;
    *(v132 + 216) = 1;
  }

  else
  {
    memcpy(v268, v267, 0x160uLL);
    v133 = v225;
    sub_1001CE5E0(v268, v225);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v146 = v215;
      sub_1001DA9D8(v133, v215, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      v147 = v221;
      sub_1001DA7B4(v146, v221, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      v148 = Logger.logObject.getter();
      v149 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        *&v253 = v151;
        *v150 = 136446210;
        v152 = (v147 + v68[13]);
        if (v152[1] >> 60 == 15)
        {
          v153 = 0;
          v154 = 0xE000000000000000;
        }

        else
        {
          v156 = *v152;
          v153 = Data.hexString.getter();
          v154 = v157;
        }

        sub_1001DAA40(v147, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        v158 = sub_1000136BC(v153, v154, &v253);

        *(v150 + 4) = v158;
        _os_log_impl(&_mh_execute_header, v148, v149, "Received SeedS and S3 from server. Pairing token: %{public}s", v150, 0xCu);
        sub_100007BAC(v151);

        v68 = v219;
      }

      else
      {

        sub_1001DAA40(v147, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      }

      v159 = v217;
      v160 = *(v218 + v217);
      v161 = v218;
      v162 = v68[9];
      v163 = type metadata accessor for UUID();
      v164 = *(v163 - 8);
      v165 = v215;
      v166 = &v215[v162];
      v167 = v223;
      (*(v164 + 16))(v223, v166, v163);
      (*(v164 + 56))(v167, 0, 1, v163);
      v168 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
      swift_beginAccess();

      sub_10002311C(v167, v160 + v168, &qword_1016980D0, &unk_10138F3B0);
      swift_endAccess();

      v169 = v161;
      v170 = (v165 + v68[11]);
      v171 = *v170;
      v172 = v170[1];
      v173 = (*(v161 + v159) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
      v174 = v68;
      v175 = *v173;
      v176 = v173[1];
      *v173 = v171;
      v173[1] = v172;

      sub_100017D5C(v171, v172);
      sub_100006654(v175, v176);

      v177 = (v165 + v174[12]);
      v178 = *v177;
      v179 = v177[1];
      v180 = (*(v169 + v159) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
      v181 = *v180;
      v182 = v180[1];
      *v180 = v178;
      v180[1] = v179;

      sub_100017D5C(v178, v179);
      sub_100006654(v181, v182);

      v183 = v195;
      sub_1001D176C(v165, v205, v206, v207, v237);
      if (v183)
      {

        v184 = v198;
        v185 = v213;
      }

      else
      {
        v249 = v237[10];
        v250 = v237[11];
        v251 = v237[12];
        v252 = v238;
        v245 = v237[6];
        v246 = v237[7];
        v247 = v237[8];
        v248 = v237[9];
        v241 = v237[2];
        v242 = v237[3];
        v243 = v237[4];
        v244 = v237[5];
        v239 = v237[0];
        v240 = v237[1];
        v186 = sub_1001DA45C(&v239);
        v184 = v198;
        v185 = v213;
        if (v186 != 1)
        {
          v263 = v249;
          v264 = v250;
          v265 = v251;
          v266 = v252;
          v259 = v245;
          v260 = v246;
          v261 = v247;
          v262 = v248;
          v255 = v241;
          v256 = v242;
          v257 = v243;
          v258 = v244;
          v253 = v239;
          v254 = v240;
          v187 = v198;
          sub_1001DAA40(v215, type metadata accessor for AirPodsLEPairingLockCheckResponse);

          sub_100016590(v202, v203);
          sub_100006654(v197, v220);
          sub_100016590(v205, v206);
          sub_100016590(v201, v187);
          sub_10000B3A8(v236, &qword_1016993B0, &unk_1013E1330);
          v188 = v264;
          *(v185 + 10) = v263;
          *(v185 + 11) = v188;
          *(v185 + 12) = v265;
          v185[26] = v266;
          v189 = v260;
          *(v185 + 6) = v259;
          *(v185 + 7) = v189;
          v190 = v262;
          *(v185 + 8) = v261;
          *(v185 + 9) = v190;
          v191 = v256;
          *(v185 + 2) = v255;
          *(v185 + 3) = v191;
          v192 = v258;
          *(v185 + 4) = v257;
          *(v185 + 5) = v192;
          v193 = v254;
          *v185 = v253;
          *(v185 + 1) = v193;
          *(v185 + 216) = 0;
          return;
        }
      }

      sub_100016590(v201, v184);
      sub_10000B3A8(v236, &qword_1016993B0, &unk_1013E1330);
      sub_100006654(v197, v220);

      sub_100016590(v202, v203);
      sub_100016590(v205, v206);
      sub_1001DAA40(v215, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      *v185 = 0xD000000000000019;
      v185[1] = 0x800000010134B3E0;
      *(v185 + 40) = 9;
      *(v185 + 216) = 1;
      return;
    }

    v134 = *v133;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v253 = v138;
      *v137 = 136446210;
      *&v239 = v134;
      type metadata accessor for SPPairingSessionError(0);
      v139 = v134;
      v140 = String.init<A>(describing:)();
      v142 = sub_1000136BC(v140, v141, &v253);

      *(v137 + 4) = v142;
      v128 = v198;
      _os_log_impl(&_mh_execute_header, v135, v136, "Pairing lock check failed. Error %{public}s", v137, 0xCu);
      sub_100007BAC(v138);
    }

    v143 = type metadata accessor for MACAddress();
    v144 = v222;
    (*(*(v143 - 8) + 56))(v222, 1, 1, v143);
    v145 = v134;
    sub_1001D8778(v145, v207, v144);

    sub_10000B3A8(v144, &qword_1016A40D0, &unk_10138BE70);
    *&v253 = v145;
    type metadata accessor for SPPairingSessionError(0);
    sub_1001DAC6C(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.code.getter();
    if (v239 == 18)
    {
      sub_1001D0ED0(v218, v213);

      sub_100016590(v202, v203);
      sub_100006654(v197, v220);
      sub_100016590(v205, v206);
      sub_100016590(v201, v128);
      sub_10000B3A8(v236, &qword_1016993B0, &unk_1013E1330);
    }

    else
    {

      sub_100016590(v202, v203);
      sub_100006654(v197, v220);
      sub_100016590(v205, v206);
      sub_100016590(v201, v128);
      sub_10000B3A8(v236, &qword_1016993B0, &unk_1013E1330);
      v155 = v213;
      *v213 = v145;
      *(v155 + 40) = 0;
      *(v155 + 216) = 1;
    }
  }
}

double sub_1001D0ED0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = *(v3 + 56);
  if (!v13)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C448);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Missing peripheral to handle pairing lock error!", v20, 2u);
    }

    goto LABEL_15;
  }

  v14 = (*(a1 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    v73 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v74 = a1;
    v75[0] = *v14;
    v21 = v75[0];
    v75[1] = v15;
    v72 = v13;
    sub_10002E98C(v21, v15);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v21, v15);
      goto LABEL_10;
    }

    v66 = v7;
    v68 = v15;
    v26 = Data.trimmed.getter();
    v28 = v27;
    sub_100017D5C(v26, v27);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v67 = v21;
    v29 = type metadata accessor for Logger();
    v30 = sub_1000076D4(v29, qword_10177C448);
    sub_100017D5C(v26, v28);
    v69 = v30;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    sub_100016590(v26, v28);
    v33 = os_log_type_enabled(v31, v32);
    v34 = &unk_10138B000;
    v70 = v26;
    if (v33)
    {
      LODWORD(v71) = v32;
      v35 = v26;
      v36 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v75[0] = v65;
      *v36 = 136315138;
      sub_100017D5C(v35, v28);
      static String.Encoding.utf8.getter();
      v37 = String.init(data:encoding:)();
      if (!v38)
      {
        v37 = Data.hexString.getter();
      }

      v39 = v37;
      v40 = v38;
      sub_100016590(v35, v28);
      sub_100016590(v35, v28);
      v41 = sub_1000136BC(v39, v40, v75);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v71, "Accessory serial number: %s.", v36, 0xCu);
      sub_100007BAC(v65);

      v34 = &unk_10138B000;
    }

    else
    {
      sub_100016590(v26, v28);
    }

    v71 = v28;
    v43 = v73;
    v42 = v74;
    v44 = *(*(v74 + v73) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    v47 = os_log_type_enabled(v45, v46);
    v65 = v44;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v75[0] = v63;
      *v48 = v34[107];
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v49 = Dictionary.description.getter();
      v51 = sub_1000136BC(v49, v50, v75);

      *(v48 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "beaconGroupInfo: %s", v48, 0xCu);
      sub_100007BAC(v63);

      v43 = v73;
      v42 = v74;
    }

    v52 = v72;
    v53 = *(v3 + 24);
    v54 = *&v72[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName + 8];
    v64 = v6;
    if (v54)
    {
      v55 = *&v72[OBJC_IVAR____TtC12searchpartyd10Peripheral_injectedName];
      v56 = v54;
    }

    else
    {
      v57 = [*&v72[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] name];
      if (!v57)
      {
        v55 = 0;
        v56 = 0xE000000000000000;
        v43 = v73;
        v42 = v74;
        goto LABEL_31;
      }

      v58 = v57;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v59;

      v43 = v73;
      v42 = v74;
    }

LABEL_31:
    sub_100A22DF0(v10);
    v60 = *(v42 + v43);

    v61 = v70;
    v62 = v71;
    sub_100B8AFF4(v70, v71, v55, v56, v10, v65, v60);
    (*(v66 + 8))(v10, v64);
    sub_100006654(v67, v68);
    sub_100016590(v61, v62);

    goto LABEL_16;
  }

  v16 = v13;
LABEL_10:
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C448);
  v18 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v18, v23, "Invalid serial number.", v24, 2u);
  }

LABEL_15:
LABEL_16:
  *a2 = 9;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 11;
  *(a2 + 216) = 1;
  return result;
}

void sub_1001D176C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v307 = a4;
  v327 = a2;
  v320 = a5;
  v8 = type metadata accessor for Endianness();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v309 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for String.Encoding();
  v311 = *(v319 - 8);
  v11 = *(v311 + 64);
  __chkstk_darwin(v319);
  v310 = &v305 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v306 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v308 = (&v305 - v18);
  __chkstk_darwin(v17);
  v312 = (&v305 - v19);
  v329 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v20 = *(*(v329 - 1) + 64);
  v21 = __chkstk_darwin(v329);
  v318 = (&v305 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v317 = &v305 - v24;
  v25 = __chkstk_darwin(v23);
  v316 = (&v305 - v26);
  v27 = __chkstk_darwin(v25);
  v315 = &v305 - v28;
  v29 = __chkstk_darwin(v27);
  v314 = &v305 - v30;
  v31 = __chkstk_darwin(v29);
  v313 = &v305 - v32;
  v33 = __chkstk_darwin(v31);
  v322 = &v305 - v34;
  v35 = __chkstk_darwin(v33);
  v321 = &v305 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v305 - v38;
  v40 = __chkstk_darwin(v37);
  v323 = &v305 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v305 - v43;
  __chkstk_darwin(v42);
  v46 = &v305 - v45;
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v325 = v5;
  v47 = type metadata accessor for Logger();
  v48 = sub_1000076D4(v47, qword_10177C448);
  sub_1001DA7B4(a1, v46, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v44, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v328 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v51 = os_log_type_enabled(v49, v50);
  v326 = a3;
  v374 = a1;
  if (!v51)
  {
    sub_1001DAA40(v46, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v44, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_16;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  *&v359 = v53;
  *v52 = 134218242;
  v54 = *(v46 + 8);
  v55 = *(v46 + 9);
  v56 = v55 >> 62;
  v305 = v39;
  if ((v55 >> 62) > 1)
  {
    if (v56 != 2)
    {
      v57 = 0;
      goto LABEL_15;
    }

    v59 = v54 + 16;
    v54 = *(v54 + 16);
    v58 = *(v59 + 8);
    v57 = v58 - v54;
    if (!__OFSUB__(v58, v54))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v60 = __OFSUB__(HIDWORD(v54), v54);
    v61 = HIDWORD(v54) - v54;
    if (v60)
    {
      __break(1u);
      goto LABEL_101;
    }

    v57 = v61;
    goto LABEL_15;
  }

  if (v56)
  {
    goto LABEL_12;
  }

  v57 = BYTE6(v55);
LABEL_15:
  sub_1001DAA40(v46, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v52 + 4) = v57;
  *(v52 + 12) = 2080;
  v62 = *(v44 + 8);
  v63 = *(v44 + 9);
  v64 = Data.hexString.getter();
  v66 = v65;
  sub_1001DAA40(v44, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v67 = sub_1000136BC(v64, v66, &v359);

  *(v52 + 14) = v67;
  _os_log_impl(&_mh_execute_header, v49, v50, "S3 count %ld: %s", v52, 0x16u);
  sub_100007BAC(v53);

  a3 = v326;
  a1 = v374;
  v39 = v305;
LABEL_16:
  v68 = v323;
  sub_1001DA7B4(a1, v323, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v39, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v69, v70))
  {
    sub_1001DAA40(v68, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v39, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v78 = v322;
    goto LABEL_29;
  }

  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  *&v359 = v72;
  *v71 = 134218242;
  v73 = (v68 + v329[11]);
  v74 = *v73;
  v75 = v73[1];
  v76 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    v77 = v39;
    if (v76 != 2)
    {
      v39 = 0;
      goto LABEL_28;
    }

    v80 = v74 + 16;
    v74 = *(v74 + 16);
    v79 = *(v80 + 8);
    v39 = v79 - v74;
    if (!__OFSUB__(v79, v74))
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_25:
    v60 = __OFSUB__(HIDWORD(v74), v74);
    v81 = HIDWORD(v74) - v74;
    if (!v60)
    {
      v77 = v39;
      v39 = v81;
      goto LABEL_28;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v76)
  {
    goto LABEL_25;
  }

  v77 = v39;
  v39 = BYTE6(v75);
LABEL_28:
  sub_1001DAA40(v323, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v71 + 4) = v39;
  *(v71 + 12) = 2080;
  v82 = (v77 + v329[11]);
  v83 = *v82;
  v84 = v82[1];
  v85 = Data.hexString.getter();
  v87 = v86;
  sub_1001DAA40(v77, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v88 = sub_1000136BC(v85, v87, &v359);

  *(v71 + 14) = v88;
  _os_log_impl(&_mh_execute_header, v69, v70, "baaLeaf count %ld: %s", v71, 0x16u);
  sub_100007BAC(v72);

  a1 = v374;
  v78 = v322;
  a3 = v326;
LABEL_29:
  v89 = v321;
  sub_1001DA7B4(a1, v321, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1001DA7B4(a1, v78, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  v92 = os_log_type_enabled(v90, v91);
  v93 = v327;
  if (!v92)
  {
    sub_1001DAA40(v89, type metadata accessor for AirPodsLEPairingLockCheckResponse);

    sub_1001DAA40(v78, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    goto LABEL_42;
  }

  v94 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  *&v359 = v95;
  *v94 = 134218242;
  v96 = (v89 + v329[12]);
  v97 = *v96;
  v98 = v96[1];
  v99 = v98 >> 62;
  if ((v98 >> 62) > 1)
  {
    if (v99 != 2)
    {
      v100 = 0;
      goto LABEL_41;
    }

    v102 = v97 + 16;
    v97 = *(v97 + 16);
    v101 = *(v102 + 8);
    v100 = v101 - v97;
    if (!__OFSUB__(v101, v97))
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    v60 = __OFSUB__(HIDWORD(v97), v97);
    v103 = HIDWORD(v97) - v97;
    if (!v60)
    {
      v100 = v103;
      goto LABEL_41;
    }

LABEL_102:
    __break(1u);
    return;
  }

  if (v99)
  {
    goto LABEL_38;
  }

  v100 = BYTE6(v98);
LABEL_41:
  sub_1001DAA40(v89, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  *(v94 + 4) = v100;
  *(v94 + 12) = 2080;
  v104 = v322;
  v105 = (v322 + v329[12]);
  v106 = *v105;
  v107 = v105[1];
  v108 = Data.hexString.getter();
  v110 = v109;
  sub_1001DAA40(v104, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v111 = sub_1000136BC(v108, v110, &v359);

  *(v94 + 14) = v111;
  _os_log_impl(&_mh_execute_header, v90, v91, "baaIntermediate count %ld: %s", v94, 0x16u);
  sub_100007BAC(v95);

  a3 = v326;
  v93 = v327;
  a1 = v374;
LABEL_42:
  if (*(v324 + 200) != 1)
  {
    v141 = (a1 + v329[10]);
    if (!v141[1] || (v142 = *v141, v143 = v310, static String.Encoding.utf8.getter(), v322 = String.data(using:allowLossyConversion:)(), v145 = v144, (*(v311 + 8))(v143, v319), v145 >> 60 == 15))
    {
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&_mh_execute_header, v146, v147, "Unable to decode masked apple ID", v148, 2u);
      }

      sub_1001DA2E4(&v359);
      goto LABEL_90;
    }

    v256 = v93;
    v321 = v145;
    v257 = *(v324 + 64);
    v258 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v259 = *(v257 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v260 = (v259 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if ((*(v259 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1) & 1) == 0)
    {
      v261 = (v259 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v262 = v261[1];
      if (v262 >> 60 != 15)
      {
        v263 = *v260;
        *&v345 = *v261;
        v264 = v345;
        *(&v345 + 1) = v262;
        sub_100017D5C(v345, v262);
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          v312 = Data.trimmed.getter();
          v295 = v294;
          v296 = *(v324 + 24);
          v297 = v308;
          sub_100AC5D4C(v307, v308);
          v118 = v297;
          v298 = v297;
          v299 = v306;
          sub_1000D2A70(v298, v306, &unk_1016AF8B0, &unk_1013A0700);
          v300 = type metadata accessor for OwnedBeaconGroup(0);
          if ((*(*(v300 - 8) + 48))(v299, 1, v300) == 1)
          {
            sub_10000B3A8(v299, &unk_1016AF8B0, &unk_1013A0700);
          }

          else
          {
            v301 = sub_1005183F0(v312, v295);
            sub_1001DAA40(v299, type metadata accessor for OwnedBeaconGroup);
            if ((v301 & 0x100) != 0)
            {
              v263 = v263;
            }

            else
            {
              v263 = v301;
            }

            v118 = v308;
          }

          v319 = sub_10110DFBC(v118, v263);
          v323 = v302;
          sub_100016590(v312, v295);
          sub_100006654(v264, v262);
          a1 = v374;
          v93 = v256;
          goto LABEL_44;
        }

        sub_100006654(v264, v262);
      }
    }

    v265 = Logger.logObject.getter();
    v266 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      *&v331 = v268;
      *v267 = 141558275;
      *(v267 + 4) = 1752392040;
      *(v267 + 12) = 2081;
      v269 = (*(v257 + v258) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
      v270 = v269[1];
      *&v345 = *v269;
      *(&v345 + 1) = v270;
      sub_10002E98C(v345, v270);
      sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
      v271 = String.init<A>(describing:)();
      v273 = sub_1000136BC(v271, v272, &v331);

      *(v267 + 14) = v273;
      _os_log_impl(&_mh_execute_header, v265, v266, "Invalid serial number %{private,mask.hash}s!", v267, 0x16u);
      sub_100007BAC(v268);
    }

    sub_100006654(v322, v321);

    v274 = v320;
    sub_1001DA2E4(&v359);
    goto LABEL_91;
  }

  v112 = type metadata accessor for __DataStorage();
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  swift_allocObject();
  v115 = __DataStorage.init(length:)();
  *&v345 = 0x3C00000000;
  *(&v345 + 1) = v115;
  v116 = v325;
  sub_1007765FC(&v345, 0);
  v325 = v116;
  v321 = *(&v345 + 1) | 0x4000000000000000;
  v322 = v345;
  v117 = type metadata accessor for OwnedBeaconGroup(0);
  v118 = v312;
  (*(*(v117 - 8) + 56))(v312, 1, 1, v117);
  v319 = sub_10110DFBC(v118, 255);
  v323 = v119;
LABEL_44:
  sub_10000B3A8(v118, &unk_1016AF8B0, &unk_1013A0700);
  sub_100017D5C(v93, a3);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.default.getter();
  sub_100016590(v93, a3);
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v345 = v123;
    *v122 = 136446210;
    v124 = Data.hexString.getter();
    v126 = sub_1000136BC(v124, v125, &v345);

    *(v122 + 4) = v126;
    a1 = v374;
    _os_log_impl(&_mh_execute_header, v120, v121, "sharedCommitment: %{public}s", v122, 0xCu);
    sub_100007BAC(v123);
  }

  v127 = v322;
  v128 = v313;
  sub_1001DA7B4(a1, v313, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *&v345 = v132;
    *v131 = 136446210;
    v133 = *(v128 + 48);
    v134 = *(v128 + 56);
    v135 = Data.hexString.getter();
    v136 = v128;
    v137 = v135;
    v139 = v138;
    sub_1001DAA40(v136, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v140 = sub_1000136BC(v137, v139, &v345);
    a1 = v374;

    *(v131 + 4) = v140;
    _os_log_impl(&_mh_execute_header, v129, v130, "response.serverSeed: %{public}s", v131, 0xCu);
    sub_100007BAC(v132);
  }

  else
  {

    sub_1001DAA40(v128, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v149 = v314;
  sub_1001DA7B4(a1, v314, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *&v345 = v153;
    *v152 = 136446210;
    v154 = *(v149 + 64);
    v155 = *(v149 + 72);
    v156 = Data.hexString.getter();
    v157 = v149;
    v158 = v156;
    v160 = v159;
    sub_1001DAA40(v157, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v161 = sub_1000136BC(v158, v160, &v345);

    *(v152 + 4) = v161;
    _os_log_impl(&_mh_execute_header, v150, v151, "response.serverSignature: %{public}s", v152, 0xCu);
    sub_100007BAC(v153);
  }

  else
  {

    sub_1001DAA40(v149, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v162 = v321;
  sub_100017D5C(v127, v321);
  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.default.getter();
  sub_100016590(v127, v162);
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *&v345 = v166;
    *v165 = 136446210;
    sub_100017D5C(v127, v162);
    v167 = Data.description.getter();
    v168 = v162;
    v170 = v169;
    sub_100016590(v127, v168);
    v171 = sub_1000136BC(v167, v170, &v345);

    *(v165 + 4) = v171;
    _os_log_impl(&_mh_execute_header, v163, v164, "maskedIdentifier: %{public}s", v165, 0xCu);
    sub_100007BAC(v166);
  }

  v172 = v374;
  v173 = v315;
  v174 = v316;
  sub_1001DA7B4(v374, v315, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *&v345 = v178;
    *v177 = 136446210;
    v179 = (v173 + v329[11]);
    v180 = *v179;
    v181 = v179[1];
    v182 = Data.hexString.getter();
    v183 = v173;
    v184 = v182;
    v186 = v185;
    sub_1001DAA40(v183, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v187 = sub_1000136BC(v184, v186, &v345);
    v172 = v374;

    *(v177 + 4) = v187;
    _os_log_impl(&_mh_execute_header, v175, v176, "response.baaAccLeafCert: %{public}s", v177, 0xCu);
    sub_100007BAC(v178);
  }

  else
  {

    sub_1001DAA40(v173, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  sub_1001DA7B4(v172, v174, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v188 = Logger.logObject.getter();
  v189 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *&v345 = v191;
    *v190 = 136446210;
    v192 = (v174 + v329[12]);
    v193 = *v192;
    v194 = v192[1];
    v195 = Data.hexString.getter();
    v197 = v196;
    sub_1001DAA40(v174, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v198 = sub_1000136BC(v195, v197, &v345);
    v172 = v374;

    *(v190 + 4) = v198;
    _os_log_impl(&_mh_execute_header, v188, v189, "response.baaAccIntCA1: %{public}s", v190, 0xCu);
    sub_100007BAC(v191);
  }

  else
  {

    sub_1001DAA40(v174, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v199 = v317;
  sub_1001DA7B4(v172, v317, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v316 = swift_slowAlloc();
    *&v345 = v316;
    *v202 = 136446210;
    *&v331 = *(v199 + v329[14]);
    sub_100102194();
    v203 = FixedWidthInteger.data.getter();
    v205 = v204;
    v206 = Data.hexString.getter();
    v208 = v207;
    sub_100016590(v203, v205);
    sub_1001DAA40(v199, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v209 = sub_1000136BC(v206, v208, &v345);

    *(v202 + 4) = v209;
    _os_log_impl(&_mh_execute_header, v200, v201, "response.pairingEpoch: %{public}s", v202, 0xCu);
    sub_100007BAC(v316);
  }

  else
  {

    sub_1001DAA40(v199, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v210 = v319;
  v211 = v323;
  sub_100017D5C(v319, v323);
  v212 = Logger.logObject.getter();
  v213 = static os_log_type_t.default.getter();
  sub_100016590(v210, v211);
  if (os_log_type_enabled(v212, v213))
  {
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    *&v345 = v215;
    *v214 = 136446210;
    v216 = Data.hexString.getter();
    v218 = sub_1000136BC(v216, v217, &v345);

    *(v214 + 4) = v218;
    _os_log_impl(&_mh_execute_header, v212, v213, "companionPairingEpochs: %{public}s", v214, 0xCu);
    sub_100007BAC(v215);
  }

  v219 = v318;
  sub_1001DA7B4(v374, v318, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v220 = Logger.logObject.getter();
  v221 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v220, v221))
  {
    v222 = swift_slowAlloc();
    v318 = swift_slowAlloc();
    *&v345 = v318;
    *v222 = 136446210;
    *&v331 = *(v219 + v329[14]);
    sub_100102194();
    v223 = FixedWidthInteger.data.getter();
    v225 = v224;
    v226 = Data.hexString.getter();
    v228 = v227;
    sub_100016590(v223, v225);
    sub_1001DAA40(v219, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v229 = sub_1000136BC(v226, v228, &v345);
    v210 = v319;

    *(v222 + 4) = v229;
    _os_log_impl(&_mh_execute_header, v220, v221, "pairingEpoch: %{public}s", v222, 0xCu);
    sub_100007BAC(v318);
  }

  else
  {

    sub_1001DAA40(v219, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  v230 = v323;
  sub_100017D5C(v210, v323);
  v231 = Logger.logObject.getter();
  v232 = static os_log_type_t.default.getter();
  sub_100016590(v210, v230);
  if (os_log_type_enabled(v231, v232))
  {
    v233 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *&v345 = v234;
    *v233 = 136446210;
    v235 = Data.hexString.getter();
    v237 = sub_1000136BC(v235, v236, &v345);

    *(v233 + 4) = v237;
    _os_log_impl(&_mh_execute_header, v231, v232, "companionPairingEpochs: %{public}s", v233, 0xCu);
    sub_100007BAC(v234);
  }

  v238 = v374;
  v239 = *(*(v324 + 64) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v240 = *(v239 + 112);
  if (v240 >> 60 != 15)
  {
    v241 = *(v239 + 104);
    sub_100017D5C(v241, *(v239 + 112));
    if (sub_100313A28(v241, v240) == 76)
    {
      sub_100313B54(v241, v240);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v241, v240);
      if ((BYTE4(v345) & 1) == 0 && v345 == 8233)
      {
        v243 = v238[7];
        v374 = v238[6];
        v242 = v374;
        v245 = v238[9];
        v328 = v238[8];
        v244 = v328;
        v246 = v329[12];
        v247 = (v238 + v329[11]);
        v248 = v238;
        v250 = *v247;
        v249 = v247[1];
        v251 = *(v248 + v246);
        v252 = *(v248 + v246 + 8);
        v330 = *(v248 + v329[14]);
        sub_100017D5C(v327, v326);
        sub_100017D5C(v242, v243);
        sub_100017D5C(v244, v245);
        sub_100017D5C(v250, v249);
        sub_100017D5C(v251, v252);
        sub_100102194();
        v253 = FixedWidthInteger.data.getter();
        *(&v304 + 1) = v323;
        *(&v303 + 1) = v254;
        *&v304 = v319;
        *&v303 = v253;
        v255 = v325;
        sub_1008BB678(v327, v326, v374, v243, v322, v321, v328, v245, v373, v250, v249, v251, v252, v303, v304);
        if (v255)
        {
          return;
        }

        v339 = v373[8];
        v340 = v373[9];
        v341 = v373[10];
        v342 = v373[11];
        v335 = v373[4];
        v336 = v373[5];
        v337 = v373[6];
        v338 = v373[7];
        v331 = v373[0];
        v332 = v373[1];
        v333 = v373[2];
        v334 = v373[3];
        sub_1001DA3BC(&v331);
        v355 = v341;
        v356 = v342;
        v357 = v343;
        v358 = v344;
        v351 = v337;
        v352 = v338;
        v353 = v339;
        v354 = v340;
        v347 = v333;
        v348 = v334;
        v349 = v335;
        v350 = v336;
        v345 = v331;
        v346 = v332;
        SharingCircleWildAdvertisementKey.init(key:)(&v345);
        v369 = v355;
        v370 = v356;
        v371 = v357;
        v372 = v358;
        v365 = v351;
        v366 = v352;
        v367 = v353;
        v368 = v354;
        v361 = v347;
        v362 = v348;
        v363 = v349;
        v364 = v350;
        v359 = v345;
        v360 = v346;
        goto LABEL_90;
      }
    }

    else
    {
      sub_100006654(v241, v240);
    }
  }

  v276 = v238[7];
  v374 = v238[6];
  v275 = v374;
  v278 = v238[9];
  v328 = v238[8];
  v277 = v328;
  v279 = v329[12];
  v280 = (v238 + v329[11]);
  v281 = v238;
  v283 = *v280;
  v282 = v280[1];
  v284 = *(v281 + v279);
  v285 = *(v281 + v279 + 8);
  *&v345 = *(v281 + v329[14]);
  sub_100017D5C(v327, v326);
  sub_100017D5C(v275, v276);
  sub_100017D5C(v277, v278);
  sub_100017D5C(v283, v282);
  sub_100017D5C(v284, v285);
  sub_100102194();
  v286 = FixedWidthInteger.data.getter();
  sub_1001BE9F4(v327, v326, v374, v276, v322, v321, v328, v278, &v331, v283, v282, v284, v285, v286, v287, v319, v323);
  sub_1001DA318(&v331);
  v355 = v341;
  v356 = v342;
  v357 = v343;
  v358 = v344;
  v351 = v337;
  v352 = v338;
  v353 = v339;
  v354 = v340;
  v347 = v333;
  v348 = v334;
  v349 = v335;
  v350 = v336;
  v345 = v331;
  v346 = v332;
  SharingCircleWildAdvertisementKey.init(key:)(&v345);
  v369 = v355;
  v370 = v356;
  v371 = v357;
  v372 = v358;
  v365 = v351;
  v366 = v352;
  v367 = v353;
  v368 = v354;
  v361 = v347;
  v362 = v348;
  v363 = v349;
  v364 = v350;
  v359 = v345;
  v360 = v346;
LABEL_90:
  v274 = v320;
LABEL_91:
  v288 = v370;
  *(v274 + 160) = v369;
  *(v274 + 176) = v288;
  *(v274 + 192) = v371;
  *(v274 + 208) = v372;
  v289 = v366;
  *(v274 + 96) = v365;
  *(v274 + 112) = v289;
  v290 = v368;
  *(v274 + 128) = v367;
  *(v274 + 144) = v290;
  v291 = v362;
  *(v274 + 32) = v361;
  *(v274 + 48) = v291;
  v292 = v364;
  *(v274 + 64) = v363;
  *(v274 + 80) = v292;
  v293 = v360;
  *v274 = v359;
  *(v274 + 16) = v293;
}