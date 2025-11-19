uint64_t sub_1004E3190(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[3];
  v18 = v1[2];
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = v1[5];
  v15 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_1004B05A0(a1, v18, v9, v12, v13, v1 + v5, v10, v11);
}

uint64_t sub_1004E336C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004D17A8(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1004E34B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E35B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100014744;

  return sub_1004D2378(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_1004E372C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = (v0 + v4);
  v10 = (v0 + v5);
  v11 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
  return sub_100805CB0(v9, v10, v7, *v8, v8[1], 62.0);
}

uint64_t sub_1004E37F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E3900()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);
  v9 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1004CAA2C(v7, v0 + v4, v0 + v5, v8, v10, v11);
}

uint64_t sub_1004E39C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_errorRetain();

    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_1004E3A44(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64) + 7;
  v8 = (v6 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v5 + v9 + 8) & ~v5;
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = (v1 + ((v10 + v7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v15;
  v16 = v15[1];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_1004CBE88(a1, v13, v14, v1 + v6, v11, v12, v1 + v10, v17);
}

uint64_t sub_1004E3BB8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v0 + v4;
  v8 = v0 + v5;
  v9 = *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
  return sub_10080B6D0(v7, v8, *v6, v6[1], 62.0);
}

uint64_t sub_1004E3C74()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v0 + v4;
  v8 = v0 + v5;
  v9 = *(v0 + 16);
  return sub_1004CDCBC(v7, v8, *v6, v6[1]);
}

uint64_t sub_1004E3D18()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1004E3E34(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a1(v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_1004E3F18()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  v9 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16);
}

uint64_t sub_1004E4000(uint64_t a1, const char *a2, const char *a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  return sub_1004D0F1C(a1, v3 + v9, v3 + ((v10 + v8 + v9) & ~v8), *(v3 + ((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + ((v10 + v8 + v9) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3);
}

uint64_t sub_1004E40E0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1004CE7A4(v4, v5, v0 + v3);
}

uint64_t sub_1004E41D4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1004C3D14(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1004E42E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 24);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_1004E43D0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v3 + v4) & ~v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1004C55D0(v6, v7, v0 + v4, v0 + v5);
}

uint64_t sub_1004E4500(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1004C1B28(a1, v8, (v1 + v4), v1 + v7, v10, v11);
}

uint64_t sub_1004E4608(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004C2028(a1, v4);
}

uint64_t sub_1004E46C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E4750()
{
  v1 = (type metadata accessor for LocationFetchConfiguration() - 8);
  v2 = (*(*v1 + 80) + 128) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0[3];

  v5 = v0[4];

  v6 = v0[5];

  v7 = v0[6];

  v8 = v0[8];

  v9 = v0[10];

  v10 = v0[14];

  v11 = v0[15];

  v12 = v0 + v1[9];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(&v12[v2], v13);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1004E4870()
{
  v1 = *(type metadata accessor for LocationFetchConfiguration() - 8);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = v0 + ((*(v1 + 80) + 128) & ~*(v1 + 80));

  return sub_1004BAC24((v0 + 16), v2, v3, v4);
}

uint64_t sub_1004E48D8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));
  v10 = *(v9 + *(v4 + 64));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1004C35C4(a1, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1004E4A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E4A7C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1004E4B04()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1004BD28C(v2, v3);
}

uint64_t sub_1004E4B68(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1004E4BC0()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v8(v4 + v1[6], v6);
  v9 = *(v4 + v1[7] + 16);

  v10 = *(v4 + v1[8] + 8);

  v11 = *(v4 + v1[9] + 8);

  v12 = *(v4 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v4 + v15, 1, v6))
  {
    v8(v4 + v15, v6);
  }

  v17 = v4 + v1[20];
  v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    if (!v16(v17 + v19, 1, v6))
    {
      v8(v17 + v19, v6);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v21);
}

uint64_t type metadata accessor for LostModeResponse()
{
  result = qword_1016A2518;
  if (!qword_1016A2518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004E4FF0()
{
  result = type metadata accessor for ServerStatusCode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004E5064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = type metadata accessor for ServerStatusCode();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_1016A2550, &qword_1013AB250);
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v31);
  v9 = &v26 - v8;
  v10 = type metadata accessor for LostModeResponse();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1004E5540();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v15 = v13;
  v16 = v28;
  v33 = 0;
  sub_100246D30();
  v17 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v16 + 32);
  v26 = v15;
  v18(v15, v6, v17);
  v32 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v29 + 8))(v9, v31);
  v23 = v26;
  v22 = v27;
  v24 = (v26 + *(v10 + 20));
  *v24 = v19;
  v24[1] = v21;
  sub_1004E5594(v23, v22);
  sub_100007BAC(a1);
  return sub_1004E55F8(v23);
}

uint64_t sub_1004E5378()
{
  if (*v0)
  {
    result = 0x4D6572756C696166;
  }

  else
  {
    result = 0x6F43737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1004E53C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D6572756C696166 && a2 == 0xEE00656761737365)
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

uint64_t sub_1004E54B0(uint64_t a1)
{
  v2 = sub_1004E5540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E54EC(uint64_t a1)
{
  v2 = sub_1004E5540();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1004E5540()
{
  result = qword_1016A2558;
  if (!qword_1016A2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2558);
  }

  return result;
}

uint64_t sub_1004E5594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E55F8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004E5668()
{
  result = qword_1016A2560;
  if (!qword_1016A2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2560);
  }

  return result;
}

unint64_t sub_1004E56C0()
{
  result = qword_1016A2568;
  if (!qword_1016A2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2568);
  }

  return result;
}

unint64_t sub_1004E5718()
{
  result = qword_1016A2570;
  if (!qword_1016A2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2570);
  }

  return result;
}

uint64_t sub_1004E576C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AE58);
  sub_1000076D4(v0, qword_10177AE58);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004E57EC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AE70);
  sub_1000076D4(v0, qword_10177AE70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004E586C()
{
  type metadata accessor for ServerInteractionControllerKeeper();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  qword_10177AE88 = v0;
  return result;
}

uint64_t sub_1004E58B4()
{
  sub_1004E5BD8();
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
LABEL_21:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
    }
  }

  if (qword_101694790 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE70);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    type metadata accessor for UUID();
    sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_1000136BC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Add new controller %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1004E5BD8()
{
  v56 = type metadata accessor for UUID();
  v59 = *(v56 - 8);
  v1 = v59[8];
  __chkstk_darwin(v56);
  v55 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v3 = *(v0 + 112);
  v4 = (v3 & 0xFFFFFFFFFFFFFF8);
  v5 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_80:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= v4[2])
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    v9 = qword_1016A2660;
    [*(v8 + qword_1016A2660) lock];
    v10 = *(v8 + qword_1016A2668);
    [*(v8 + v9) unlock];
    if (v10 == 1)
    {
      if (qword_101694790 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      v13 = sub_1000076D4(v12, qword_10177AE70);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      v16 = os_log_type_enabled(v14, v15);
      v5 = &unk_10138B000;
      v17 = &unk_10177A000;
      v54 = v13;
      if (v16)
      {
        v18 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v60 = v58;
        *v18 = 136315138;
        v19 = v59;
        v20 = v55;
        v21 = v56;
        (v59[2])(v55, v8 + qword_10177AE90, v56);
        sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        LODWORD(v53) = v15;
        v24 = v23;
        v25 = v19[1];
        v5 = (v19 + 1);
        v26 = v20;
        v13 = v54;
        v25(v26, v21);
        v27 = sub_1000136BC(v22, v24, &v60);

        *(v18 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v14, v53, "Removing controller with %s", v18, 0xCu);
        v17 = v58;
        sub_100007BAC(v58);
      }

      v29 = v57;
      v30 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        v52 = v59 + 1;
        v53 = v59 + 2;
        *&v28 = 136315138;
        v51 = v28;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v30 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_60;
            }
          }

          else if (v30 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v4 = (v3 & 0xC000000000000001);
          if ((v3 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v30 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            v31 = *(v3 + 8 * v30 + 32);
          }

          v32 = qword_1016A2660;
          [*(v31 + qword_1016A2660) lock];
          v5 = *(v31 + qword_1016A2668);
          [*(v31 + v32) unlock];
          if (v5 == 1)
          {

            v33 = Logger.logObject.getter();
            v4 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v33, v4))
            {
              v5 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v60 = v59;
              *v5 = v51;
              v34 = v55;
              v35 = v56;
              (*v53)(v55, v31 + qword_10177AE90, v56);
              sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID);
              v36 = dispatch thunk of CustomStringConvertible.description.getter();
              LODWORD(v58) = v4;
              v38 = v37;
              (*v52)(v34, v35);
              v39 = sub_1000136BC(v36, v38, &v60);

              *(v5 + 4) = v39;
              _os_log_impl(&_mh_execute_header, v33, v58, "Removing controller with %s", v5, 0xCu);
              v4 = v59;
              sub_100007BAC(v59);
              v29 = v57;
            }
          }

          else
          {

            if (v7 != v30)
            {
              if (v4)
              {
                v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_77;
                }

                v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v41)
                {
                  goto LABEL_78;
                }

                if (v30 >= v41)
                {
                  goto LABEL_79;
                }

                v40 = *(v3 + 32 + 8 * v7);
                v5 = *(v3 + 32 + 8 * v30);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v29 + 112) = v3;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_100607310(v3);
                *(v29 + 112) = v3;
              }

              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              v4 = (v3 & 0xFFFFFFFFFFFFFF8);
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              v43 = &v4[v7];
              v44 = v43[4];
              v43[4] = v5;

              *(v29 + 112) = v3;
              if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_100607310(v3);
                *(v29 + 112) = v3;
                v4 = (v3 & 0xFFFFFFFFFFFFFF8);
                if ((v30 & 0x8000000000000000) != 0)
                {
LABEL_57:
                  __break(1u);
LABEL_58:
                  v7 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_59;
                }
              }

              else if ((v30 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v30 >= v4[2])
              {
                goto LABEL_76;
              }

              v45 = &v4[v30];
              v46 = v45[4];
              v45[4] = v40;

              *(v29 + 112) = v3;
            }

            v11 = __OFADD__(v7++, 1);
            if (v11)
            {
              goto LABEL_73;
            }
          }

          v11 = __OFADD__(v30++, 1);
          if (v11)
          {
            goto LABEL_72;
          }
        }
      }

      __break(1u);
LABEL_85:
      v50 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_66;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_69;
    }
  }

  if (v5)
  {
    goto LABEL_58;
  }

  v7 = v4[2];
LABEL_59:
  v29 = v57;
LABEL_60:
  if (v3 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
    if (v47 >= v7)
    {
LABEL_62:
      sub_100A0D800(v7, v47);
      swift_endAccess();
      if (qword_101694790 == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_83;
    }
  }

  else
  {
    v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47 >= v7)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_83:
  swift_once();
LABEL_63:
  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177AE70);

  v13 = Logger.logObject.getter();
  LOBYTE(v3) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v3))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v49 = *(v29 + 112);
    if (v49 >> 62)
    {
      goto LABEL_85;
    }

    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:
    *(v17 + 4) = v50;

    _os_log_impl(&_mh_execute_header, v13, v3, "Active controllers count after cleanup is %ld", v17, 0xCu);

    return;
  }
}

uint64_t sub_1004E6494()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1004E6568()
{
  v1 = *(v0 + qword_1016A2648);

  sub_100007BAC((v0 + qword_1016A2650));
  v2 = *(v0 + qword_1016A2658);
  swift_unownedRelease();
  v3 = qword_10177AE90;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_1016A2660);
}

uint64_t sub_1004E6610()
{
  sub_10039722C();

  v0 = static OS_os_log.default.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v13 = v3;
    *v2 = 136315138;
    type metadata accessor for ServerInteractionController(0);

    v4 = String.init<A>(describing:)();
    v6 = sub_1000136BC(v4, v5, &v13);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v0, v1, "ServerInteractionController deinit (%s", v2, 0xCu);
    sub_100007BAC(v3);
  }

  v7 = FMNServerInteractionController.deinit();
  v8 = *(v7 + qword_1016A2648);

  sub_100007BAC((v7 + qword_1016A2650));
  v9 = *(v7 + qword_1016A2658);
  swift_unownedRelease();
  v10 = qword_10177AE90;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  return v7;
}

uint64_t sub_1004E67D8()
{
  v0 = *sub_1004E6610();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1004E682C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1004E68F4, 0, 0);
}

uint64_t sub_1004E68F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v3 + qword_1016A2660);
  [v5 lock];
  *(v3 + qword_1016A2668) = 0;
  [v5 unlock];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_10025EDD4(0, 0, v1, &unk_1013AB550, v8);

  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v2;
  v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  v12 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *v11 = v0;
  v11[1] = sub_1004E6AEC;
  v13 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0x71657228646E6573, 0xEE00293A74736575, sub_1004EBCF8, v9, v12);
}

uint64_t sub_1004E6AEC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004E6C34, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1004E6C34()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1004E6CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v55 = a1;
  v58 = sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
  v57 = *(v58 - 8);
  v54 = *(v57 + 64);
  __chkstk_darwin(v58);
  v56 = v52 - v6;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLComponents();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v11);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAA98(a3, v67);
  v60 = a2;
  sub_10001F280(a2 + qword_1016A2650, v66);
  if (qword_101694788 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177AE58);
  sub_10001F280(v66, &v64);
  sub_10001F280(v67, v62);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v18 = 136315394;
    v52[1] = v10;
    sub_1000035D0(&v64, v65);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v53 + 8))(v14, v11);
    sub_100007BAC(&v64);
    v22 = sub_1000136BC(v19, v21, &v61);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_1000035D0(v62, v63);
    dispatch thunk of FMNRequestContentRepresentable.headerDictionary.getter();
    v23 = Dictionary.description.getter();
    v25 = v24;

    sub_100007BAC(v62);
    v26 = sub_1000136BC(v23, v25, &v61);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "SendRequest: %s headerDictionary - %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(&v64);
    sub_100007BAC(v62);
  }

  sub_10001F280(v66, &v64);
  sub_10001F280(v67, v62);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v29 = 136315394;
    sub_1000035D0(&v64, v65);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v53 + 8))(v14, v11);
    sub_100007BAC(&v64);
    v33 = sub_1000136BC(v30, v32, &v61);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_1000035D0(v62, v63);
    v34 = dispatch thunk of FMNRequestContentRepresentable.body.getter();
    v36 = v35;
    static String.Encoding.utf8.getter();
    v37 = String.init(data:encoding:)();
    v39 = v38;
    sub_100016590(v34, v36);
    if (v39)
    {
      v40 = v37;
    }

    else
    {
      v40 = 0;
    }

    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    sub_100007BAC(v62);
    v42 = sub_1000136BC(v40, v41, &v61);

    *(v29 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v27, v28, "SendRequest: %s body - %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(&v64);
    sub_100007BAC(v62);
  }

  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v57;
  v45 = v56;
  v46 = v58;
  (*(v57 + 16))(v56, v55, v58);
  sub_10001F280(v66, &v64);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = (v54 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v44 + 32))(v50 + v47, v45, v46);
  sub_10000A748(&v64, v50 + v48);
  *(v50 + v49) = v43;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v66);
  sub_100007BAC(v67);
}

uint64_t sub_1004E7480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v121 = &v104 - v9;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v110 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLComponents();
  v117 = *(v13 - 8);
  v118 = v13;
  v14 = *(v117 + 64);
  __chkstk_darwin(v13);
  v116 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v115 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v113 = &v104 - v22;
  v23 = __chkstk_darwin(v21);
  v111 = &v104 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v104 - v26;
  __chkstk_darwin(v25);
  v29 = &v104 - v28;
  v30 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = (&v104 - v33);
  (*(v31 + 16))(&v104 - v33, a1, v30);
  v35 = (*(v31 + 88))(v34, v30);
  if (v35 == enum case for LegacyResult.success<A>(_:))
  {
    v107 = a2;
    (*(v31 + 96))(v34, v30);
    (*(v17 + 32))(v29, v34, v16);
    v36 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v36);

    v37 = v17;
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    v39 = sub_1000076D4(v38, qword_10177AE58);
    sub_10001F280(v122, v124);
    v119 = *(v17 + 16);
    v120 = v17 + 16;
    v119(v27, v29, v16);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    v42 = os_log_type_enabled(v40, v41);
    v114 = v37;
    v109 = v29;
    v108 = a4;
    v106 = v39;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v123 = v105;
      *v43 = 136315394;
      sub_1000035D0(v124, v125);
      v44 = v116;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v45 = v118;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = v44;
      v29 = v109;
      (*(v117 + 8))(v49, v45);
      sub_100007BAC(v124);
      v50 = sub_1000136BC(v46, v48, &v123);
      v51 = v114;

      *(v43 + 4) = v50;
      *(v43 + 12) = 2048;
      v52 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v112 = *(v51 + 8);
      v112(v27, v16);
      *(v43 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "SendRequest %s Received Response: status - %ld", v43, 0x16u);
      sub_100007BAC(v105);
    }

    else
    {
      v112 = *(v37 + 8);
      v112(v27, v16);

      sub_100007BAC(v124);
    }

    v60 = v111;
    sub_10001F280(v122, v124);
    v119(v60, v29, v16);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v63 = 136315394;
      sub_1000035D0(v124, v125);
      v64 = v116;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v65 = v118;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = v64;
      v29 = v109;
      (*(v117 + 8))(v69, v65);
      sub_100007BAC(v124);
      v70 = sub_1000136BC(v66, v68, &v123);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v71 = Dictionary.description.getter();
      v73 = v72;

      v112(v60, v16);
      v74 = sub_1000136BC(v71, v73, &v123);

      *(v63 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v61, v62, "SendRequest %s Received Response: header - %s", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v112(v60, v16);
      sub_100007BAC(v124);
    }

    v75 = v113;
    sub_10001F280(v122, v124);
    v119(v75, v29, v16);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = v122;
      *v78 = 136315394;
      sub_1000035D0(v124, v125);
      v79 = v116;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v80 = v118;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = v79;
      v29 = v109;
      (*(v117 + 8))(v84, v80);
      sub_100007BAC(v124);
      v85 = sub_1000136BC(v81, v83, &v123);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2080;
      v86 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v88 = v87;
      static String.Encoding.utf8.getter();
      v89 = String.init(data:encoding:)();
      v91 = v90;
      sub_100016590(v86, v88);
      if (v91)
      {
        v92 = v89;
      }

      else
      {
        v92 = 0;
      }

      if (v91)
      {
        v93 = v91;
      }

      else
      {
        v93 = 0xE000000000000000;
      }

      v94 = v75;
      v95 = v112;
      v112(v94, v16);
      v96 = sub_1000136BC(v92, v93, &v123);

      *(v78 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v76, v77, "SendRequest %s Received Response: body - %s", v78, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v97 = v75;
      v95 = v112;
      v112(v97, v16);
      sub_100007BAC(v124);
    }

    v59 = v121;
    v119(v115, v29, v16);
    sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
    CheckedContinuation.resume(returning:)();
    v95(v29, v16);
  }

  else
  {
    if (v35 != enum case for LegacyResult.failure<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v31 + 96))(v34, v30);
    v53 = *v34;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v55 = Error.localizedDescription.getter();
    v57 = v56;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_100008C00();
    *(v54 + 32) = v55;
    *(v54 + 40) = v57;
    sub_10039722C();
    v58 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v124[0] = v53;
    sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
    CheckedContinuation.resume(throwing:)();
    v59 = v121;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v99 = qword_1016A2660;
    v100 = result;
    [*(result + qword_1016A2660) lock];
    *(v100 + qword_1016A2668) = 1;
    [*(v100 + v99) unlock];
    v101 = type metadata accessor for TaskPriority();
    (*(*(v101 - 8) + 56))(v59, 1, 1, v101);
    v102 = swift_allocObject();
    swift_weakInit();
    v103 = swift_allocObject();
    v103[2] = 0;
    v103[3] = 0;
    v103[4] = v102;
    sub_10025F6E0(0, 0, v59, &unk_1013AB560, v103);
  }

  return result;
}

uint64_t sub_1004E820C(uint64_t a1, void (*a2)(void *), uint64_t a3, int a4, uint64_t a5)
{
  v41 = a5;
  v42 = a2;
  v43 = a4;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v40 = &v39 - v8;
  v9 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v39 - v16);
  v18 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v39 - v21);
  (*(v19 + 16))(&v39 - v21, a1, v18);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v10 + 32))(v13, v22, v9);
    v24 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v24);

    (*(v10 + 16))(v17, v13, v9);
    swift_storeEnumTagMultiPayload();
    v42(v17);
    sub_10000B3A8(v17, &qword_1016A2778, &qword_1013AB538);
    result = (*(v10 + 8))(v13, v9);
    if ((v43 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  v26 = v42;
  if (v23 != enum case for LegacyResult.failure<A>(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v19 + 96))(v22, v18);
  v27 = *v22;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_10039722C();
  v32 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *v17 = v27;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v26(v17);

  result = sub_10000B3A8(v17, &qword_1016A2778, &qword_1013AB538);
  if (v43)
  {
LABEL_6:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v33 = qword_1016A2660;
      v34 = result;
      [*(result + qword_1016A2660) lock];
      *(v34 + qword_1016A2668) = 1;
      [*(v34 + v33) unlock];
      v35 = type metadata accessor for TaskPriority();
      v36 = v40;
      (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v37;
      sub_10025F6E0(0, 0, v36, &unk_1013AB540, v38);
    }
  }

  return result;
}

uint64_t sub_1004E878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v98 - v9;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URLComponents();
  v111 = *(v14 - 8);
  v112 = v14;
  v15 = *(v111 + 64);
  __chkstk_darwin(v14);
  v110 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v108 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v107 = &v98 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v98 - v25;
  __chkstk_darwin(v24);
  v28 = &v98 - v27;
  v29 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v98 - v31);
  sub_1004EBBD4(a1, &v98 - v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    v37 = v36;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    sub_10039722C();
    v38 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    Future.finish(error:)();
  }

  else
  {
    (*(v18 + 32))(v28, v32, v17);
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_1000076D4(v39, qword_10177AE58);
    v100 = a3;
    sub_10001F280(a3, v116);
    v104 = *(v18 + 16);
    v105 = v18 + 16;
    v104(v26, v28, v17);
    v41 = v18;
    v106 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v44 = os_log_type_enabled(v42, v43);
    v103 = v28;
    v101 = v17;
    v99 = v10;
    v98 = a4;
    v109 = v41;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v115 = v46;
      *v45 = 136315394;
      sub_1000035D0(v116, v117);
      v47 = v110;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v48 = v112;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v47;
      v17 = v101;
      (*(v111 + 8))(v52, v48);
      sub_100007BAC(v116);
      v53 = sub_1000136BC(v49, v51, &v115);
      v28 = v103;

      *(v45 + 4) = v53;
      *(v45 + 12) = 2048;
      v54 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v113 = *(v41 + 8);
      v113(v26, v17);
      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v42, v43, "SendRequest %s Received Response: status - %ld", v45, 0x16u);
      sub_100007BAC(v46);
    }

    else
    {
      v113 = *(v41 + 8);
      v113(v26, v17);

      sub_100007BAC(v116);
    }

    v55 = v100;
    sub_10001F280(v100, v116);
    v56 = v107;
    v104(v107, v28, v17);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v59 = 136315394;
      sub_1000035D0(v116, v117);
      v60 = v110;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v61 = v112;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = v60;
      v17 = v101;
      (*(v111 + 8))(v65, v61);
      sub_100007BAC(v116);
      v66 = sub_1000136BC(v62, v64, &v115);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v67 = Dictionary.description.getter();
      v69 = v68;

      v113(v56, v17);
      v70 = v67;
      v28 = v103;
      v71 = sub_1000136BC(v70, v69, &v115);

      *(v59 + 14) = v71;
      v55 = v100;
      _os_log_impl(&_mh_execute_header, v57, v58, "SendRequest %s Received Response: header - %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v113(v56, v17);
      sub_100007BAC(v116);
    }

    v72 = v108;
    sub_10001F280(v55, v116);
    v104(v72, v28, v17);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v75 = 136315394;
      sub_1000035D0(v116, v117);
      v76 = v110;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v77 = v112;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      v81 = v76;
      v17 = v101;
      (*(v111 + 8))(v81, v77);
      sub_100007BAC(v116);
      v82 = sub_1000136BC(v78, v80, &v115);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2080;
      v83 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v85 = v84;
      static String.Encoding.utf8.getter();
      v86 = String.init(data:encoding:)();
      v88 = v87;
      sub_100016590(v83, v85);
      if (v88)
      {
        v89 = v86;
      }

      else
      {
        v89 = 0;
      }

      if (v88)
      {
        v90 = v88;
      }

      else
      {
        v90 = 0xE000000000000000;
      }

      v113(v72, v17);
      v91 = sub_1000136BC(v89, v90, &v115);
      v28 = v103;

      *(v75 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v73, v74, "SendRequest %s Received Response: body - %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v113(v72, v17);
      sub_100007BAC(v116);
    }

    Future.finish(result:)();
    v113(v28, v17);
    v10 = v99;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v93 = qword_1016A2660;
    v94 = result;
    [*(result + qword_1016A2660) lock];
    *(v94 + qword_1016A2668) = 1;
    [*(v94 + v93) unlock];
    v95 = type metadata accessor for TaskPriority();
    (*(*(v95 - 8) + 56))(v10, 1, 1, v95);
    v96 = swift_allocObject();
    swift_weakInit();
    v97 = swift_allocObject();
    v97[2] = 0;
    v97[3] = 0;
    v97[4] = v96;
    sub_10025F6E0(0, 0, v10, &unk_1013AB548, v97);
  }

  return result;
}

void sub_1004E93E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v60 = a4;
  v61 = a5;
  v62 = a2;
  v7 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v58 - v14;
  v16 = sub_1000BC4D4(&qword_1016A2760, &qword_1013AB4E8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v58 - v18;
  v20 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (&v58 - v23);
  (*(v21 + 16))(&v58 - v23, a1, v20);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 != enum case for LegacyResult.success<A>(_:))
  {
    if (v25 != enum case for LegacyResult.failure<A>(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v24, v20);
    v33 = *v24;
    v34 = _convertErrorToNSError(_:)();
    v35 = [v34 domain];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
LABEL_19:

        Future.finish(error:)();
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {

          return;
        }

        v53 = qword_1016A2660;
        v54 = Strong;
        [*(Strong + qword_1016A2660) lock];
        *(v54 + qword_1016A2668) = 1;
        [*(v54 + v53) unlock];
        v55 = type metadata accessor for TaskPriority();
        (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = 0;
        v57[3] = 0;
        v57[4] = v56;
        sub_10025F6E0(0, 0, v15, &unk_1013AB508, v57);

        goto LABEL_21;
      }
    }

    if ([v34 code] == -1001)
    {
      static os_log_type_t.error.getter();
      sub_10039722C();
      v47 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

        return;
      }

      v48 = type metadata accessor for FMNRedirectHostStore();
      (*(*(v48 - 8) + 56))(v19, 1, 1, v48);
      v49 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_10001F280(v60, v63);
      v50 = swift_allocObject();
      v50[2] = v62;
      sub_10000A748(v63, (v50 + 3));
      v51 = v59;
      v50[8] = v49;
      v50[9] = v51;

      dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)();

      sub_10000B3A8(v19, &qword_1016A2760, &qword_1013AB4E8);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  (*(v21 + 96))(v24, v20);
  (*(v8 + 32))(v11, v24, v7);
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 600) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v26 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v26);

    Future.finish(result:)();
    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v28 = qword_1016A2660;
      v29 = v27;
      [*(v27 + qword_1016A2660) lock];
      *(v29 + qword_1016A2668) = 1;
      [*(v29 + v28) unlock];
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v31;
      sub_10025F6E0(0, 0, v15, &unk_1013AB500, v32);
    }

    goto LABEL_14;
  }

  static os_log_type_t.error.getter();
  sub_10039722C();
  v42 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_14:
    (*(v8 + 8))(v11, v7);
    return;
  }

  v43 = type metadata accessor for FMNRedirectHostStore();
  (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  v44 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10001F280(v60, v63);
  v45 = swift_allocObject();
  v45[2] = v62;
  sub_10000A748(v63, (v45 + 3));
  v46 = v59;
  v45[8] = v44;
  v45[9] = v46;

  dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)();

  sub_10000B3A8(v19, &qword_1016A2760, &qword_1013AB4E8);
  (*(v8 + 8))(v11, v7);
LABEL_21:
}

uint64_t sub_1004E9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9)
{
  v117 = a8;
  v113 = a7;
  v122 = a4;
  v123 = a3;
  v121 = a2;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v116 = &v105 - v12;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URLComponents();
  v119 = *(v17 - 8);
  v120 = v17;
  v18 = *(v119 + 64);
  __chkstk_darwin(v17);
  v118 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v114 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v112 = &v105 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v105 - v28;
  __chkstk_darwin(v27);
  v31 = &v105 - v30;
  v32 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = (&v105 - v35);
  (*(v33 + 16))(&v105 - v35, a1, v32);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v33 + 96))(v36, v32);
    (*(v21 + 32))(v31, v36, v20);
    v38 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v38);

    v39 = v21;
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_1000076D4(v40, qword_10177AE58);
    sub_10001F280(v123, v125);
    v42 = *(v21 + 16);
    v111 = v21 + 16;
    v110 = v42;
    v42(v29, v31, v20);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    v45 = os_log_type_enabled(v43, v44);
    v115 = v39;
    v109 = v31;
    v107 = v16;
    v108 = v41;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v124 = v106;
      *v46 = 136315394;
      sub_1000035D0(v125, v126);
      v47 = v118;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v48 = v120;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v47;
      v31 = v109;
      (*(v119 + 8))(v52, v48);
      sub_100007BAC(v125);
      v53 = sub_1000136BC(v49, v51, &v124);
      v54 = v115;

      *(v46 + 4) = v53;
      *(v46 + 12) = 2048;
      v55 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v113 = *(v54 + 8);
      v113(v29, v20);
      *(v46 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "SendRequest %s Received Response: status - %ld", v46, 0x16u);
      sub_100007BAC(v106);
    }

    else
    {
      v113 = *(v39 + 8);
      v113(v29, v20);

      sub_100007BAC(v125);
    }

    v62 = v112;
    sub_10001F280(v123, v125);
    v110(v62, v31, v20);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *v65 = 136315394;
      sub_1000035D0(v125, v126);
      v66 = v118;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v67 = v120;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v71 = v66;
      v31 = v109;
      (*(v119 + 8))(v71, v67);
      sub_100007BAC(v125);
      v72 = sub_1000136BC(v68, v70, &v124);

      *(v65 + 4) = v72;
      *(v65 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v73 = Dictionary.description.getter();
      v75 = v74;

      v113(v62, v20);
      v76 = sub_1000136BC(v73, v75, &v124);

      *(v65 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v63, v64, "SendRequest %s Received Response: header - %s", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v113(v62, v20);
      sub_100007BAC(v125);
    }

    v77 = v114;
    sub_10001F280(v123, v125);
    v110(v77, v31, v20);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v124 = v123;
      *v80 = 136315394;
      sub_1000035D0(v125, v126);
      v81 = v118;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents);
      v82 = v120;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v86 = v81;
      v31 = v109;
      (*(v119 + 8))(v86, v82);
      sub_100007BAC(v125);
      v87 = sub_1000136BC(v83, v85, &v124);

      *(v80 + 4) = v87;
      *(v80 + 12) = 2080;
      v88 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v90 = v89;
      static String.Encoding.utf8.getter();
      v91 = String.init(data:encoding:)();
      v93 = v92;
      sub_100016590(v88, v90);
      if (v93)
      {
        v94 = v91;
      }

      else
      {
        v94 = 0;
      }

      if (v93)
      {
        v95 = v93;
      }

      else
      {
        v95 = 0xE000000000000000;
      }

      v96 = v113;
      v113(v77, v20);
      v97 = sub_1000136BC(v94, v95, &v124);

      *(v80 + 14) = v97;
      _os_log_impl(&_mh_execute_header, v78, v79, "SendRequest %s Received Response: body - %s", v80, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v96 = v113;
      v113(v77, v20);
      sub_100007BAC(v125);
    }

    Future.finish(result:)();
    v96(v31, v20);
  }

  else
  {
    if (v37 != enum case for LegacyResult.failure<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v33 + 96))(v36, v32);
    v56 = *v36;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v58 = Error.localizedDescription.getter();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = sub_100008C00();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    sub_10039722C();
    v61 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    Future.finish(error:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v99 = qword_1016A2660;
    v100 = result;
    [*(result + qword_1016A2660) lock];
    *(v100 + qword_1016A2668) = 1;
    [*(v100 + v99) unlock];
    v101 = type metadata accessor for TaskPriority();
    v102 = v116;
    (*(*(v101 - 8) + 56))(v116, 1, 1, v101);
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    v104[2] = 0;
    v104[3] = 0;
    v104[4] = v103;
    sub_10025F6E0(0, 0, v102, a9, v104);
  }

  return result;
}

uint64_t sub_1004EAA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v5 = sub_101073B80(v8[0]);

  if ((v5 & 1) == 0)
  {
    return sub_10001F280(a1, a2);
  }

  sub_10001F280(a1, v8);
  sub_1000035D0(v8, v9);
  dispatch thunk of FMNRequestContentRepresentable.headerDictionary.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000101357BD0, isUniquelyReferenced_nonNull_native);
  sub_10015049C(v8, v9);
  dispatch thunk of FMNRequestContentRepresentable.headerDictionary.setter();
  sub_10001F280(v8, a2);
  return sub_100007BAC(v8);
}

uint64_t sub_1004EAC24()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(Strong + qword_1016A2658);
    v0[7] = v3;
    swift_unownedRetainStrong();

    return _swift_task_switch(sub_1004EACF4, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1004EACF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1004E58B4();

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_1004EAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1004EAD84, 0, 0);
}

uint64_t sub_1004EAD84()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(Strong + qword_1016A2658);
    *(v0 + 64) = v3;
    swift_unownedRetainStrong();

    return _swift_task_switch(sub_1004EAE6C, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1004EAE6C()
{
  v1 = *(v0 + 64);
  sub_1004E5BD8();

  return _swift_task_switch(sub_1004A87F4, 0, 0);
}

uint64_t sub_1004EAFE0(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 set_sourceApplicationBundleIdentifier:v4];

  type metadata accessor for SearchPartyURLSessionFactory(0);
  v5 = method lookup function for FMNURLSessionFactory();
  return v5(a1, a2);
}

uint64_t sub_1004EB090()
{
  FMNURLSessionFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004EB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  (*(v8 + 32))(&v21 - v13);
  v15 = type metadata accessor for ServerInteractionController(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v8 + 16))(v12, v14, a4);
  v19 = sub_1004EB27C(v12, a2, v18, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v19;
}

uint64_t sub_1004EB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v35 - v11;
  v13 = type metadata accessor for SystemInfo.DeviceLockState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v35 - v19;
  v36[3] = a4;
  v36[4] = a5;
  v21 = sub_1000280DC(v36);
  (*(*(a4 - 8) + 32))(v21, a1, a4);
  v22 = qword_1016A2648;
  v23 = type metadata accessor for FMNAuthenticationProvider();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(a3 + v22) = FMNAuthenticationProvider.init()();
  v26 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v26) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v27 = qword_1016A2660;
  *(a3 + v27) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v14 + 104))(v18, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v13);
  sub_1004EBDC4(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v28 = *(v14 + 8);
  v28(v18, v13);
  v28(v20, v13);
  if (v35[2] == v35[1])
  {
    sub_10039722C();
    v29 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v30 = *(a3 + v22);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v36, a3 + qword_1016A2650);
  v31 = *(a3 + v22);
  v32 = type metadata accessor for FMNMockingPreferences();
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);

  v33 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v36);
  return v33;
}

void sub_1004EB658(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_67;
  }

  v2 = sub_100771D58(0xD00000000000001FLL, 0x80000001013579B0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_67;
  }

  v4 = (*(a1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  v8 = *v4 & 0xFFFFFFFFFFFFLL;
  if (!((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : *v4 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v28 = v4[1];

    v29 = sub_1010DE4C8(v5, v6, 10);
    v31 = v30;

    if (v31)
    {
      goto LABEL_67;
    }

    v13 = v29;
LABEL_70:
    sub_100945A80(v13);
    return;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v10 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v32 = *v4;
      v33 = v4[1];
      v10 = _StringObject.sharedUTF8.getter();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_66;
          }

          v20 = (v10 + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v13, v21);
            v13 = 10 * v13 + v21;
            if (v16)
            {
              break;
            }

            ++v20;
            if (!--v19)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_74;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_66;
          }

          v14 = (v10 + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = 10 * v13 >= v15;
            v13 = 10 * v13 - v15;
            if (!v16)
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_73;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_66;
      }

      while (1)
      {
        v24 = *v10 - 48;
        if (v24 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v24);
        v13 = 10 * v13 + v24;
        if (v16)
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

  v34[0] = *v4;
  v34[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 == 45)
    {
      if (!v7)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v10 = v7 - 1;
      if (v7 != 1)
      {
        v13 = 0;
        v17 = v34 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (!is_mul_ok(v13, 0xAuLL))
          {
            break;
          }

          v16 = 10 * v13 >= v18;
          v13 = 10 * v13 - v18;
          if (!v16)
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v25 = v34;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v26);
        v13 = 10 * v13 + v26;
        if (v16)
        {
          break;
        }

        ++v25;
        if (!--v7)
        {
LABEL_64:
          LOBYTE(v10) = 0;
          goto LABEL_66;
        }
      }
    }

LABEL_65:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_66:
    v35 = v10;
    if (v10)
    {
LABEL_67:
      sub_10039722C();
      v27 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    goto LABEL_70;
  }

  if (v7)
  {
    v10 = v7 - 1;
    if (v7 != 1)
    {
      v13 = 0;
      v22 = v34 + 1;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v23);
        v13 = 10 * v13 + v23;
        if (v16)
        {
          break;
        }

        ++v22;
        if (!--v10)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_1004EB9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1004EAD64(a1, v4, v5, v6);
}

uint64_t sub_1004EBA84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1004EAD64(a1, v4, v5, v6);
}

uint64_t sub_1004EBB38()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1004EBBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EBC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1004EAC04(a1, v4, v5, v6);
}

uint64_t sub_1004EBD04(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004E7480(a1, v1 + v4, v1 + v5, v7);
}

uint64_t sub_1004EBDC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004EBE10(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v56 = type metadata accessor for UUID();
  v11 = *(v56 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v56);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = &v49 - v16;
  if (CKRecord.recordType.getter() == 0xD000000000000015 && 0x80000001013AB5E0 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      sub_1004ED400();
      swift_allocError();
      *v39 = 0;
      goto LABEL_13;
    }
  }

  v53 = v15;
  v54 = a2;
  v19 = [a1 recordID];
  v20 = [v19 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v21 = v11;
  v22 = v11[6];
  v23 = v56;
  if (v22(v10, 1, v56) == 1)
  {
    sub_1002EA198(v10);
    sub_1004ED400();
    swift_allocError();
    *v24 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v51 = v21;
  v25 = v10;
  v26 = v21[4];
  v26(v55, v25, v23);
  v27 = [a1 encryptedValues];
  v28 = String._bridgeToObjectiveC()();
  v52 = v27;
  v29 = [v27 objectForKeyedSubscript:v28];

  if (v29 && (v57 = v29, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) != 0))
  {
    UUID.init(uuidString:)();

    v30 = v56;
    if (v22(v8, 1, v56) == 1)
    {
      sub_1002EA198(v8);
      static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_101385D80;
      *(v31 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      *(v31 + 64) = sub_10013A2D8();
      *(v31 + 32) = a1;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v32 = a1;
      v33 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_1004ED400();
      swift_allocError();
      *v34 = 2;
      swift_willThrow();

      swift_unknownObjectRelease();
      v51[1](v55, v30);
    }

    else
    {
      v40 = v53;
      v26(v53, v8, v30);
      v51 = objc_autoreleasePoolPush();
      v41 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
      [a1 encodeSystemFieldsWithCoder:v41];
      [v41 finishEncoding];
      v42 = [v41 encodedData];
      v43 = v30;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v45;

      objc_autoreleasePoolPop(v51);
      swift_unknownObjectRelease();

      v46 = v54;
      v47 = v50;
      *v54 = v44;
      v46[1] = v47;
      found = type metadata accessor for NotifyWhenFoundRecord();
      v26(v46 + *(found + 20), v55, v43);
      v26(v46 + *(found + 24), v40, v43);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v35 + 64) = sub_10013A2D8();
    *(v35 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = a1;
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_1004ED400();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v51[1](v55, v56);
  }
}

uint64_t sub_1004EC514()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177AEC8);
  sub_1000076D4(v0, qword_10177AEC8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_1004EC670()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1004EC6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004ED7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004EC700(uint64_t a1)
{
  v2 = sub_1004ED454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004EC73C(uint64_t a1)
{
  v2 = sub_1004ED454();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1004EC778(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  Data.hash(into:)();
  v6 = *(a1 + 20);
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v7 = v3 + *(a1 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004EC848(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = *(a2 + 20);
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + *(a2 + 24);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1004EC8FC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = *(a2 + 20);
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = v4 + *(a2 + 24);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004EC9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 24);

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1004ECA50(id *a1)
{
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v1 = *(type metadata accessor for NotifyWhenFoundRecord() + 24);
  v2 = UUID.uuidString.getter();
  if (!v8)
  {

LABEL_9:
    UUID.uuidString.getter();
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v7 != v2 || v8 != v3)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004ECBB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A27D0, &qword_1013AB628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1004ED454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v18 = 0;
  sub_100017D5C(v16, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v16, v17);
  if (!v2)
  {
    found = type metadata accessor for NotifyWhenFoundRecord();
    v13 = *(found + 20);
    LOBYTE(v16) = 1;
    type metadata accessor for UUID();
    sub_1004ED360(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(found + 24);
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004ECDD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for UUID();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_1000BC4D4(&qword_1016A27C0, &qword_1013AB620);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  found = type metadata accessor for NotifyWhenFoundRecord();
  v17 = *(*(found - 8) + 64);
  __chkstk_darwin(found);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v38 = a1;
  sub_1000035D0(a1, v20);
  sub_1004ED454();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v38);
  }

  v32 = v8;
  v22 = v35;
  v40 = 0;
  sub_1000E307C();
  v23 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v19 = v39;
  LOBYTE(v39) = 1;
  sub_1004ED360(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = *(found + 20);
  v25 = *(v34 + 32);
  v30 = found;
  v31 = v19;
  v29 = v25;
  v25(&v19[v24], v10, v22);
  LOBYTE(v39) = 2;
  v26 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v37 + 8))(v15, v23);
  v27 = v31;
  v29(&v31[*(v30 + 24)], v26, v22);
  sub_1004ED4A8(v27, v33);
  sub_100007BAC(v38);
  return sub_1004ED50C(v27);
}

uint64_t sub_1004ED204(uint64_t a1)
{
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for URL();
  sub_1000076D4(v3, qword_10177AEC8);
  v4 = v1 + *(a1 + 24);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1004ED2DC(uint64_t a1)
{
  *(a1 + 8) = sub_1004ED360(&qword_1016A2790, type metadata accessor for NotifyWhenFoundRecord);
  result = sub_1004ED360(&qword_1016A2798, type metadata accessor for NotifyWhenFoundRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ED360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004ED3A8(uint64_t a1)
{
  result = sub_1004ED360(&unk_1016A27A0, type metadata accessor for NotifyWhenFoundRecord);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004ED400()
{
  result = qword_1016A27B0;
  if (!qword_1016A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A27B0);
  }

  return result;
}

unint64_t sub_1004ED454()
{
  result = qword_1016A27C8;
  if (!qword_1016A27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A27C8);
  }

  return result;
}

uint64_t sub_1004ED4A8(uint64_t a1, uint64_t a2)
{
  found = type metadata accessor for NotifyWhenFoundRecord();
  (*(*(found - 8) + 16))(a2, a1, found);
  return a2;
}

uint64_t sub_1004ED50C(uint64_t a1)
{
  found = type metadata accessor for NotifyWhenFoundRecord();
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

uint64_t sub_1004ED588()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1004ED650()
{
  result = qword_1016A2878;
  if (!qword_1016A2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2878);
  }

  return result;
}

unint64_t sub_1004ED6A8()
{
  result = qword_1016A2880;
  if (!qword_1016A2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2880);
  }

  return result;
}

unint64_t sub_1004ED700()
{
  result = qword_1016A2888;
  if (!qword_1016A2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2888);
  }

  return result;
}

unint64_t sub_1004ED758()
{
  result = qword_1016A2890;
  if (!qword_1016A2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2890);
  }

  return result;
}

uint64_t sub_1004ED7AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004ED8EC(uint64_t a1)
{
  v2 = sub_1004EDACC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004ED928(uint64_t a1)
{
  v2 = sub_1004EDACC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharingCircleWildAdvertisementKey.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A2898, &qword_1013AB898);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1004EDACC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_100017D5C(a2, a3);
  sub_10049CB58();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1004EDACC()
{
  result = qword_1016A28A0;
  if (!qword_1016A28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28A0);
  }

  return result;
}

void *sub_1004EDB38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004EDFFC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1004EDB8C()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x4B65746176697270;
  v4 = 0x6553646572616873;
  if (v1 != 3)
  {
    v4 = 0x64656D7265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x654B63696C627570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004EDC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004EE220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004EDC68(uint64_t a1)
{
  v2 = sub_1004EE170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004EDCA4(uint64_t a1)
{
  v2 = sub_1004EE170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharingCircleWildDiversifiedKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A28A8, &qword_1013AB8A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1004EE170();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v20 = *(v3 + 1);
    v16 = *(v3 + 1);
    v15 = 1;
    sub_10012C094(&v20, v14);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
    v19 = *(v3 + 3);
    v16 = *(v3 + 3);
    v15 = 2;
    sub_10012C038(&v19, v14);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
    v18 = *(v3 + 5);
    v16 = *(v3 + 5);
    v15 = 3;
    sub_10012BFDC(&v18, v14);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
    v16 = *(v3 + 7);
    v17 = v16;
    v15 = 4;
    sub_1004EE1C4(&v17, v14);
    sub_10049F488();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 SharingCircleWildDiversifiedKey.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004EE3E8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void *sub_1004EDFFC(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A2920, &qword_1013ABEF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_1004EDACC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1004A4634();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_1004EE170()
{
  result = qword_1016A28B0;
  if (!qword_1016A28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28B0);
  }

  return result;
}

uint64_t sub_1004EE220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1004EE3E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A2918, &qword_1013ABEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1004EE170();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v36) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v31) = 1;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v36;
  v30 = v37;
  LOBYTE(v31) = 2;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v36;
  v28 = v37;
  LOBYTE(v31) = 3;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v37;
  v26 = v36;
  v47 = 4;
  sub_10049F434();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = v45;
  v24 = v46;
  v13 = v12;
  v23 = v12;
  v14 = v29;
  *&v31 = v11;
  *(&v31 + 1) = v29;
  v15 = v30;
  v16 = v27;
  *&v32 = v30;
  *(&v32 + 1) = v27;
  v17 = v28;
  v18 = v26;
  *&v33 = v28;
  *(&v33 + 1) = v26;
  *&v34 = v13;
  *(&v34 + 1) = v45;
  v35 = v46;
  sub_1004EED74(&v31, &v36);
  sub_100007BAC(a1);
  v36 = v11;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v23;
  v43 = v25;
  v44 = v24;
  result = sub_1004EEDAC(&v36);
  v20 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v20;
  *(a2 + 64) = v35;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_1004EE80C(uint64_t a1)
{
  result = sub_1004EE834();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004EE834()
{
  result = qword_1016A28B8;
  if (!qword_1016A28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28B8);
  }

  return result;
}

unint64_t sub_1004EE888(void *a1)
{
  a1[1] = sub_1004EE8C8();
  a1[2] = sub_1004EE91C();
  a1[3] = sub_1004EE970();
  result = sub_1004EE9C4();
  a1[4] = result;
  return result;
}

unint64_t sub_1004EE8C8()
{
  result = qword_1016A28C0;
  if (!qword_1016A28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28C0);
  }

  return result;
}

unint64_t sub_1004EE91C()
{
  result = qword_1016A28C8;
  if (!qword_1016A28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28C8);
  }

  return result;
}

unint64_t sub_1004EE970()
{
  result = qword_1016A28D0;
  if (!qword_1016A28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28D0);
  }

  return result;
}

unint64_t sub_1004EE9C4()
{
  result = qword_1016A28D8;
  if (!qword_1016A28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28D8);
  }

  return result;
}

unint64_t sub_1004EEA1C()
{
  result = qword_1016A28E0;
  if (!qword_1016A28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28E0);
  }

  return result;
}

uint64_t sub_1004EEA80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1004EEAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1004EEB68()
{
  result = qword_1016A28E8;
  if (!qword_1016A28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28E8);
  }

  return result;
}

unint64_t sub_1004EEBC0()
{
  result = qword_1016A28F0;
  if (!qword_1016A28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28F0);
  }

  return result;
}

unint64_t sub_1004EEC18()
{
  result = qword_1016A28F8;
  if (!qword_1016A28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28F8);
  }

  return result;
}

unint64_t sub_1004EEC70()
{
  result = qword_1016A2900;
  if (!qword_1016A2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2900);
  }

  return result;
}

unint64_t sub_1004EECC8()
{
  result = qword_1016A2908;
  if (!qword_1016A2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2908);
  }

  return result;
}

unint64_t sub_1004EED20()
{
  result = qword_1016A2910;
  if (!qword_1016A2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2910);
  }

  return result;
}

uint64_t sub_1004EEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Destination();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v54 = a1;
  Destination.destination.getter();
  _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    Destination.destination.getter();
    _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
    if (v22)
    {

      Destination.init(stringRepresentation:)();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_1004F0B70(v9);
        if (qword_101695010 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_1000076D4(v23, qword_10177C348);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v55 = v27;
          *v26 = 136315138;
          v28 = sub_1000136BC(v20, v21, &v55);

          *(v26 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v24, v25, "Unable to convert %s to Destination!", v26, 0xCu);
          sub_100007BAC(v27);
        }

        else
        {
        }

        return (*(v11 + 16))(a3, v54, v10);
      }

      else
      {

        return (*(v11 + 32))(a3, v9, v10);
      }
    }

    else
    {
      v53 = a3;

      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177C348);
      v41 = *(v11 + 16);
      v41(v15, a2, v10);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v52 = v41;
        v45 = v44;
        v46 = swift_slowAlloc();
        v55 = v46;
        *v45 = 136315138;
        sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*(v11 + 8))(v15, v10);
        v50 = sub_1000136BC(v47, v49, &v55);

        *(v45 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unable to convert %s to MessageDestination!", v45, 0xCu);
        sub_100007BAC(v46);

        v41 = v52;
      }

      else
      {

        (*(v11 + 8))(v15, v10);
      }

      return (v41)(v53, v54, v10);
    }
  }

  else
  {
    v53 = a3;
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C348);
    v30 = *(v11 + 16);
    v30(v17, v54, v10);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v52 = v30;
      v34 = v33;
      v35 = swift_slowAlloc();
      v55 = v35;
      *v34 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v11 + 8))(v17, v10);
      v39 = sub_1000136BC(v36, v38, &v55);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to convert %s to MessageDestination!", v34, 0xCu);
      sub_100007BAC(v35);

      v30 = v52;
    }

    else
    {

      (*(v11 + 8))(v17, v10);
    }

    return (v30)(v53, v54, v10);
  }
}

uint64_t sub_1004EF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for Destination();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF598, 0, 0);
}

uint64_t sub_1004EF598()
{
  v1 = v0[10];
  v2 = v0[5];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[5] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = (v1 + 48);
  v39 = v0[10];
  v40 = (v1 + 32);
  v42 = v0[5];

  v17 = 0;
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v17;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v20 = v0[8];
    v19 = v0[9];
    v21 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v22 = *(v42 + 48) + 24 * (v21 | (v17 << 6));
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);

    Destination.init(stringRepresentation:)();
    if ((*v10)(v20, 1, v19) == 1)
    {
      v11 = sub_1004F0B70(v0[8]);
    }

    else
    {
      v25 = *v40;
      (*v40)(v0[11], v0[8], v0[9]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_100A5C1A8(0, *(v41 + 2) + 1, 1, v41);
      }

      v27 = *(v41 + 2);
      v26 = *(v41 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v31 = sub_100A5C1A8(v26 > 1, v27 + 1, 1, v41);
        v28 = v27 + 1;
        v41 = v31;
      }

      v29 = v0[11];
      v30 = v0[9];
      *(v41 + 2) = v28;
      v11 = v25(&v41[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27], v29, v30);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v11, v12, v13, v14, v15, v16);
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v17);
    ++v18;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v33 = v0[6];
  v32 = v0[7];
  v34 = v0[5];

  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v32;
  v36 = async function pointer to CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)[1];

  v37 = swift_task_alloc();
  v0[12] = v37;
  *v37 = v0;
  v37[1] = sub_1004EF878;
  v12 = v0[3];
  v13 = v0[4];
  v11 = v0[2];
  v15 = sub_1004F0BD8;
  v14 = v41;
  v16 = v35;

  return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1004EF878()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1004EFA04;
  }

  else
  {
    v3 = sub_1004EF98C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004EF98C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004EFA04()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1004EFA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v68 = a3;
  v70 = a4;
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v67 - v8;
  v71 = type metadata accessor for Destination();
  v10 = *(v71 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v71);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v69 = a1;
  Destination.destination.getter();
  v17 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v19)
  {
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C348);
    v40 = *(v10 + 16);
    v41 = v69;
    v42 = v71;
    v40(v16, v69, v71);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68 = v40;
      v47 = v46;
      v72 = v46;
      *v45 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v10 + 8))(v16, v71);
      v51 = sub_1000136BC(v48, v50, &v72);

      *(v45 + 4) = v51;
      v42 = v71;
      _os_log_impl(&_mh_execute_header, v43, v44, "Unable to convert %s to MessageDestination!", v45, 0xCu);
      sub_100007BAC(v47);
      v40 = v68;
    }

    else
    {

      (*(v10 + 8))(v16, v42);
    }

    v65 = v70;
    v66 = v41;
    return (v40)(v65, v66, v42);
  }

  v20 = v17;
  v21 = v18;
  v22 = v19;
  Destination.destination.getter();
  v23 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v25)
  {

    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_1000076D4(v52, qword_10177C348);
    v40 = *(v10 + 16);
    v42 = v71;
    v40(v14, a2, v71);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v69;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = v58;
      *v57 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination);
      v68 = v40;
      v59 = v56;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v10 + 8))(v14, v71);
      v63 = sub_1000136BC(v60, v62, &v72);
      v56 = v59;
      v40 = v68;

      *(v57 + 4) = v63;
      v42 = v71;
      _os_log_impl(&_mh_execute_header, v53, v54, "Unable to convert %s to MessageDestination!", v57, 0xCu);
      sub_100007BAC(v58);
    }

    else
    {

      (*(v10 + 8))(v14, v42);
    }

    v65 = v70;
    v66 = v56;
    return (v40)(v65, v66, v42);
  }

  (v68)(v20, v21, v22, v23, v24, v25);
  v27 = v26;
  v29 = v28;

  Destination.init(stringRepresentation:)();
  v30 = v71;
  if ((*(v10 + 48))(v9, 1, v71) == 1)
  {
    sub_1004F0B70(v9);
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C348);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v69;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v72 = v37;
      *v36 = 136315138;
      v38 = sub_1000136BC(v27, v29, &v72);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to convert %s to Destination!", v36, 0xCu);
      sub_100007BAC(v37);

      v30 = v71;
    }

    else
    {
    }

    return (*(v10 + 16))(v70, v35, v30);
  }

  else
  {

    return (*(v10 + 32))(v70, v9, v30);
  }
}

uint64_t sub_1004F019C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Destination();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = (v8 + 48);
  v31 = v8;
  v32 = (v8 + 32);

  v16 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    v17 = v16;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = *(a1 + 48) + 24 * (v18 | (v16 << 6));
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);

    Destination.init(stringRepresentation:)();
    if ((*v14)(v5, 1, v6) == 1)
    {
      result = sub_1004F0B70(v5);
    }

    else
    {
      v30 = *v32;
      v30(v33, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100A5C1A8(0, v34[2] + 1, 1, v34);
      }

      v23 = v34[2];
      v22 = v34[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v26 = sub_100A5C1A8(v22 > 1, v23 + 1, 1, v34);
        v24 = v29;
        v34 = v26;
      }

      v25 = v34;
      v34[2] = v24;
      result = (v30)(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23, v33, v6);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      sub_10112AC34(v34);

      v27 = CorrelationIdentifierMap.map(destinations:)();

      return v27;
    }

    v12 = *(a1 + 56 + 8 * v16);
    ++v17;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004F04AC()
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CorrelationIdentifierMap.map(correlationIdentifiers:)();
  if (v1)
  {
    return v0;
  }

  v8 = v7;
  v44 = v6;
  v39 = 0;
  v9 = v7 + 56;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v7 + 56);
  v13 = (v10 + 63) >> 6;
  v41 = (v3 + 8);
  v42 = v3 + 16;

  v40 = _swiftEmptyArrayStorage;
  v43 = result;
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      while (1)
      {
        v16 = v15;
LABEL_9:
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v3;
        v19 = v2;
        (*(v3 + 16))(v44, *(v8 + 48) + *(v3 + 72) * (v17 | (v16 << 6)), v2);
        v20 = Destination.destination.getter();
        v22 = v21;
        v23._countAndFlagsBits = 0x3A6F746C69616DLL;
        v23._object = 0xE700000000000000;
        if (!String.hasPrefix(_:)(v23))
        {
          break;
        }

        v38 = 0;
LABEL_22:
        (*v41)(v44, v19);
LABEL_23:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5C1F8(0, *(v40 + 2) + 1, 1, v40);
          v40 = result;
        }

        v32 = *(v40 + 2);
        v31 = *(v40 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v37 = v32 + 1;
          result = sub_100A5C1F8((v31 > 1), v32 + 1, 1, v40);
          v33 = v37;
          v40 = result;
        }

        v34 = v40;
        *(v40 + 2) = v33;
        v35 = &v34[24 * v32];
        v35[32] = v38;
        *(v35 + 5) = v20;
        *(v35 + 6) = v22;
        v3 = v18;
        v2 = v19;
        v8 = v43;
        v15 = v16;
        if (!v12)
        {
          goto LABEL_6;
        }
      }

      v24._countAndFlagsBits = 980182388;
      v24._object = 0xE400000000000000;
      if (String.hasPrefix(_:)(v24))
      {
        break;
      }

      v25._countAndFlagsBits = 0x3A6E656B6F74;
      v25._object = 0xE600000000000000;
      if (String.hasPrefix(_:)(v25) || (v26._countAndFlagsBits = 0x6B6F742D666C6573, v26._object = 0xEB000000003A6E65, String.hasPrefix(_:)(v26)))
      {
        v30 = 2;
LABEL_21:
        v38 = v30;
        goto LABEL_22;
      }

      v27._countAndFlagsBits = 0x3A656369766564;
      v27._object = 0xE700000000000000;
      if (String.hasPrefix(_:)(v27))
      {
        v30 = 3;
        goto LABEL_21;
      }

      v28._countAndFlagsBits = 0x3A6E6F6973736573;
      v28._object = 0xE800000000000000;
      v29 = String.hasPrefix(_:)(v28);
      (*v41)(v44, v19);
      if (v29)
      {
        v38 = 4;
        goto LABEL_23;
      }

      v15 = v16;
      v3 = v18;
      v2 = v19;
      v8 = v43;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v30 = 1;
    goto LABEL_21;
  }

LABEL_6:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      v0 = sub_101129FC8(v40);

      return v0;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004F0890(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Destination();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  Destination.init(stringRepresentation:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1004F0B70(v9);
    v15 = type metadata accessor for GenericError();
    sub_1004F0BE0(&qword_1016978C0, &type metadata accessor for GenericError);
    swift_allocError();
    v17 = v16;
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v23 = 0xD000000000000012;
    v24 = 0x8000000101357C90;
    v18._countAndFlagsBits = a2;
    v18._object = a3;
    String.append(_:)(v18);
    v19._object = 0x8000000101357CB0;
    v19._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v19);
    v20 = v24;
    *v17 = v23;
    v17[1] = v20;
    (*(*(v15 - 8) + 104))(v17, enum case for GenericError.error(_:), v15);
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v21 = CorrelationIdentifierMap.correlationIdentifier(for:)();
    if (!v3)
    {
      a3 = v21;
    }

    (*(v11 + 8))(v14, v10);
  }

  return a3;
}

uint64_t sub_1004F0B70(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F0BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AirPodsUnpairEndPoint()
{
  result = qword_1016A2990;
  if (!qword_1016A2990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for BeaconSharingSessionContext()
{
  result = qword_1016A2A38;
  if (!qword_1016A2A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F0CE8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004F0D54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for UUID();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for BeaconSharingSessionContext();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v15 = v39;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v15)
  {
    v28 = v7;
    v29 = v9;
    v39 = a1;
    v30 = v13;
    v31 = v10;
    v16 = v33;
    sub_10015049C(v37, v38);
    v17 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v17 == 2)
    {
      sub_10015049C(v37, v38);
      sub_1004F1C48(&qword_101698300, &type metadata accessor for UUID);
      v26 = v28;
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v23 = v30;
      (*(v32 + 32))(v30, v26, v3);
      v21 = v16;
      goto LABEL_15;
    }

    v20 = v32;
    if (v17 == 1)
    {
      sub_10015049C(v37, v38);
      sub_100157E1C();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v21 = v16;
      v24 = v35;
      v25 = v36;
      v23 = v30;
      *v30 = v34;
      *(v23 + 8) = v24;
      *(v23 + 16) = v25;
      goto LABEL_15;
    }

    if (!v17)
    {
      v21 = v16;
      sub_10015049C(v37, v38);
      sub_1004F1C48(&qword_101698300, &type metadata accessor for UUID);
      v22 = v29;
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v23 = v30;
      (*(v20 + 32))(v30, v22, v3);
LABEL_15:
      v27 = v39;
      swift_storeEnumTagMultiPayload();
      sub_100007BAC(v37);
      sub_1004F1BE4(v23, v21);
      v18 = v27;
      return sub_100007BAC(v18);
    }

    sub_1004F1B90();
    swift_allocError();
    swift_willThrow();
    sub_100007BAC(v37);
    a1 = v39;
  }

  v18 = a1;
  return sub_100007BAC(v18);
}

uint64_t sub_1004F1130(void *a1)
{
  v2 = v1;
  v28 = type metadata accessor for UUID();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for BeaconSharingSessionContext();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1004F1B2C(v2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = v14;
    v22 = v28;
    (*(v4 + 32))(v10, v21, v28);
    sub_10015049C(v32, v33);
    v23 = v34;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v23)
    {
      (*(v4 + 8))(v10, v22);
      return sub_100007BAC(v32);
    }

    sub_10015049C(v32, v33);
    sub_1004F1C48(&qword_101698330, &type metadata accessor for UUID);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v8 = v10;
LABEL_12:
    (*(v4 + 8))(v8, v22);
    return sub_100007BAC(v32);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v24 = v14;
    v22 = v28;
    (*(v4 + 32))(v8, v24, v28);
    sub_10015049C(v32, v33);
    v25 = v34;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v25)
    {
      sub_10015049C(v32, v33);
      sub_1004F1C48(&qword_101698330, &type metadata accessor for UUID);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }

    goto LABEL_12;
  }

  v17 = *v14;
  v19 = *(v14 + 1);
  v18 = *(v14 + 2);
  sub_10015049C(v32, v33);
  v20 = v34;
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v20)
  {
    v29 = v17;
    v30 = v19;
    v31 = v18;
    sub_10015049C(v32, v33);
    sub_100157F84();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100007BAC(v32);
}

uint64_t sub_1004F14E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconSharingSessionContext();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F1B2C(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      v12 = *(v9 + 1);
      v13 = *(v9 + 2);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v11);
      String.hash(into:)();
    }

    (*(v2 + 32))(v5, v9, v1);
    v15 = 2;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v15 = 0;
  }

  Hasher._combine(_:)(v15);
  sub_1004F1C48(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int sub_1004F1724()
{
  Hasher.init(_seed:)();
  sub_1004F14E8();
  return Hasher._finalize()();
}

Swift::Int sub_1004F1768()
{
  Hasher.init(_seed:)();
  sub_1004F14E8();
  return Hasher._finalize()();
}

uint64_t sub_1004F17F0(void *a1)
{
  a1[1] = sub_1004F1C48(&qword_1016A2A78, type metadata accessor for BeaconSharingSessionContext);
  a1[2] = sub_1004F1C48(&qword_1016A2A80, type metadata accessor for BeaconSharingSessionContext);
  result = sub_1004F1C48(&qword_1016A2A88, type metadata accessor for BeaconSharingSessionContext);
  a1[3] = result;
  return result;
}

unint64_t sub_1004F189C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeaconSharingSessionContext();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F1B2C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v6, v10, v2);
    v19 = 0x6E696D6F636E692ELL;
    v20 = 0xEA00000000002867;
LABEL_6:
    sub_1004F1C48(&qword_101696930, &type metadata accessor for UUID);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v15 = v19;
    (*(v3 + 8))(v6, v2);
    return v15;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v19 = 0xD000000000000015;
    v20 = 0x8000000101357CD0;
    goto LABEL_6;
  }

  v12._countAndFlagsBits = *(v10 + 1);
  v13 = *(v10 + 2);
  v19 = 0x6369766544656D2ELL;
  v20 = 0xEA00000000002865;
  v12._object = v13;
  String.append(_:)(v12);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v19;
}

uint64_t sub_1004F1B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004F1B90()
{
  result = qword_1016A2A90;
  if (!qword_1016A2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2A90);
  }

  return result;
}

uint64_t sub_1004F1BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F1C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F1C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for BeaconSharingSessionContext();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v41 - v17;
  __chkstk_darwin(v16);
  v20 = &v41 - v19;
  v21 = sub_1000BC4D4(&qword_1016A2A98, &qword_1013AC078);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v41 - v24;
  v26 = &v41 + *(v23 + 56) - v24;
  sub_1004F1B2C(a1, &v41 - v24);
  sub_1004F1B2C(a2, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1004F1B2C(v25, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v41 + 8))(v20, v42);
      goto LABEL_17;
    }

    v38 = v41;
    v37 = v42;
    (*(v41 + 32))(v10, v26, v42);
    v35 = static UUID.== infix(_:_:)();
    v39 = *(v38 + 8);
    v39(v10, v37);
    v39(v20, v37);
LABEL_20:
    sub_1004F20F0(v25);
    return v35 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1004F1B2C(v25, v15);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v41 + 8))(v15, v42);
      goto LABEL_17;
    }

    v34 = v41;
    v33 = v42;
    (*(v41 + 32))(v8, v26, v42);
    v35 = static UUID.== infix(_:_:)();
    v36 = *(v34 + 8);
    v36(v8, v33);
    v36(v15, v33);
    goto LABEL_20;
  }

  sub_1004F1B2C(v25, v18);
  v29 = *(v18 + 1);
  v28 = *(v18 + 2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v18 == *v26)
    {
      if (v29 == *(v26 + 1) && v28 == *(v26 + 2))
      {

LABEL_25:
        sub_1004F20F0(v25);
        v35 = 1;
        return v35 & 1;
      }

      v31 = *(v26 + 2);
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    sub_1004F20F0(v25);
    goto LABEL_18;
  }

LABEL_17:
  sub_1004F2088(v25);
LABEL_18:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1004F2088(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2A98, &qword_1013AC078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F20F0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconSharingSessionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004F2160()
{
  result = qword_1016A2AA0;
  if (!qword_1016A2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2AA0);
  }

  return result;
}

id sub_1004F21B4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 BOOLForKey:v4];

  v5 = [v2 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v8 = [v11 BOOLValue];

      return v8;
    }
  }

  else
  {
    sub_10000B3A8(v14, &unk_1016A0B10, &qword_10139BF40);
  }

  v10 = *(v1 + 24);
  OS_dispatch_queue.sync<A>(execute:)();
  if (LOBYTE(v14[0]) == 1)
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  return 0;
}

uint64_t sub_1004F23D4()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v18[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100003DB4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v12 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0, 1);
  *(v1 + 32) = v12;
  v13 = &v12[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  *(v13 + 1) = &off_1016242C8;
  swift_unknownObjectWeakAssign();
  v14 = qword_101694FA8;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v18[2] = 0x7365547265646E75;
  v18[3] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v19 & 1) == 0)
  {

    unsafeFromAsyncTask<A>(_:)();
  }

  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v1;
}

uint64_t sub_1004F27D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1004F28A4;

  return daemon.getter();
}

uint64_t sub_1004F28A4(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_100003DB4(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004F29FC, v5, v4);
}

uint64_t sub_1004F29FC()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1004F2A70, 0, 0);
}

uint64_t sub_1004F2A70()
{
  v1 = v0[2];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v0[7] = v3;
  v5 = swift_allocObject();
  v0[8] = v5;
  swift_weakInit();
  v6 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v10 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1004F2B94;
  v8 = v0[6];

  return v10(v2, v4, &unk_1013AC1C0, v5);
}

uint64_t sub_1004F2B94(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1004F2CD4, 0, 0);
}

uint64_t sub_1004F2CD4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_1013AC1D0, v5);

  sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004F2E24()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_1004F2EFC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004F4B98;
  *(v7 + 24) = v4;
  v9[4] = sub_1004F4BA4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004F46A4;
  v9[3] = &unk_101624510;
  v8 = _Block_copy(v9);

  [v6 fmipStateWithCompletion:v8];
  _Block_release(v8);
}

void sub_1004F3058(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [v8 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v12 = v17;
        if ([v17 BOOLValue] == (a1 & 1))
        {

          goto LABEL_13;
        }

LABEL_12:
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v13 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v14 = [v8 standardUserDefaults];
        v15 = String._bridgeToObjectiveC()();
        [v14 setBool:a1 & 1 forKey:v15];

        LOBYTE(v14) = sub_1004F21B4();
        v16 = swift_allocObject();
        *(v16 + 16) = v14 & 1;
        sub_1004F3C6C(sub_1004F4BAC, v16);

        goto LABEL_13;
      }
    }

    else
    {
      sub_10000B3A8(v20, &unk_1016A0B10, &qword_10139BF40);
    }

    v12 = 0;
    goto LABEL_12;
  }

  static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *&v20[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

LABEL_13:
  Transaction.capture()();
}

uint64_t sub_1004F33B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A2BB8, &qword_1013AC198);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v10 = *(v2 + 24);
  (*(v6 + 16))(v9, a2, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004F4A88;
  *(v13 + 24) = v12;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101624498;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F3654(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3878(a1);
  }

  return result;
}

uint64_t sub_1004F36D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100A5D268(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100A5D268(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_1004F3878(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  v8 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1004F4964;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101624420;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F3AB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v8[2] = a2;

  v5 = sub_10013D7B4(sub_1004F497C, v8, v4);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
}

BOOL sub_1004F3B3C()
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  sub_1000041A4(&qword_1016A2BB0, &qword_101697E00, &qword_10139A1B0);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1004F3BE0(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1004F3C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1004F48E4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101624358;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100003DB4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1004F3F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v61 - 8);
  v4 = *(v66 + 64);
  __chkstk_darwin(v61);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v65 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v64);
  v63 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v62 = v42 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = v12;
    v21 = result;
    swift_beginAccess();
    v22 = *(v21 + 16);

    v23 = v22;

    v24 = *(v22 + 16);
    if (v24)
    {
      v57 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v26 = *(v16 + 16);
      v25 = v16 + 16;
      v56 = v26;
      v55 = *(v25 + 64);
      v27 = (v55 + 32) & ~v55;
      v42[1] = v23;
      v28 = v23 + v27;
      v53 = (v13 + 104);
      v52 = (v13 + 8);
      v51 = *(v25 + 56);
      v50 = enum case for DispatchQoS.QoSClass.default(_:);
      v48 = v6;
      v47 = (v25 + 16);
      v54 = v27;
      v46 = v27 + v17;
      v45 = v69;
      v44 = (v66 + 8);
      v43 = (v8 + 8);
      v58 = v7;
      v49 = v25;
      do
      {
        v29 = v62;
        v30 = v64;
        v56(v62, v28, v64);
        v31 = v65;
        v32 = v59;
        (*v53)(v65, v50, v59);
        v66 = static OS_dispatch_queue.global(qos:)();
        (*v52)(v31, v32);
        v33 = *v47;
        v34 = v63;
        (*v47)(v63, v29, v30);
        v35 = swift_allocObject();
        *(v35 + 16) = v60;
        *(v35 + 24) = a3;
        v33((v35 + v54), v34, v30);
        v69[2] = sub_1004F48F0;
        v69[3] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v69[0] = sub_100006684;
        v69[1] = &unk_1016243A8;
        v36 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v67 = _swiftEmptyArrayStorage;
        sub_100003DB4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v37 = v48;
        v38 = v61;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v66;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v40 = v36;
        v41 = v58;
        _Block_release(v40);

        (*v44)(v37, v38);
        (*v43)(v11, v41);

        v28 += v51;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1004F4624(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL))
{
  if (!a2)
  {
    return a3(a1 == 1);
  }

  swift_errorRetain();
  (a3)(a2, 1);
}

void sub_1004F46A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1004F471C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1004F4788(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 16))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1004F4814()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_queue);
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = swift_allocObject();
  *(v2 + 16) = (v4 - 3) < 2;
  sub_1004F3C6C(sub_1004F48DC, v2);
}

uint64_t sub_1004F48F0()
{
  v1 = *(sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_1004F49B8()
{
  v1 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1004F4AA0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1004F4B24@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 16) + 16) != 0;
  return result;
}

void sub_1004F4B98(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1004F3058(a1, a2 & 1);
}

uint64_t sub_1004F4BB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1004F27D8(a1, v1);
}

uint64_t sub_1004F4C50(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1004F2E04(a1, v1);
}

uint64_t sub_1004F4CE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1004F4DDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004F4E90(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1004F4E0C(uint64_t a1)
{
  *(a1 + 8) = sub_1004F4E3C();
  result = sub_100392AF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004F4E3C()
{
  result = qword_1016A2BC0;
  if (!qword_1016A2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BC0);
  }

  return result;
}

uint64_t sub_1004F4E90(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v22, v23);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_26;
  }

  v2 = v5;
  v7 = v6;
  result = static MACAddress.length.getter();
  if ((result - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(4 * result, 80))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFADD__(4 * result + 80, 4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(4 * result + 84, 4))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_10015049C(v22, v23);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_1000E0A3C();
  v12 = DataProtocol.intValue.getter();
  result = static MACAddress.length.getter();
  if (__OFADD__(result, 20))
  {
    goto LABEL_32;
  }

  if (__OFADD__(result + 20, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v13 = result + 22;
  if (__OFADD__(result + 21, 1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v14 = v12 * v13;
  if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v19 < v14)
      {
        goto LABEL_24;
      }
    }

    else if (v14 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (!v15)
  {
    if (BYTE6(v11) < v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    if ((v14 & 0x8000000000000000) == 0)
    {
      Data.subdata(in:)();
      sub_100016590(v9, v11);
      sub_100007BAC(v22);
      sub_100007BAC(a1);
      return v2;
    }

    goto LABEL_36;
  }

  if (!__OFSUB__(HIDWORD(v9), v9))
  {
    if (HIDWORD(v9) - v9 < v14)
    {
LABEL_24:
      v20 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, enum case for BinaryDecodingError.decodingError(_:), v20);
      swift_willThrow();
      sub_100016590(v9, v11);
      sub_100016590(v2, v7);
LABEL_26:
      sub_100007BAC(v22);
      sub_100007BAC(a1);
      return v2;
    }

    goto LABEL_18;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1004F5158(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A2D68, &qword_1013AD1A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100501C70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v22 = *v3;
  v23 = v11;
  v21[15] = 0;
  sub_100017D5C(v22, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v22, v23);
  if (!v2)
  {
    v12 = type metadata accessor for PencilUnpairData.DeviceUnpairData();
    v13 = v12[5];
    LOBYTE(v22) = 1;
    type metadata accessor for UUID();
    sub_100501CC4(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004F53E8()
{
  v1 = 0x754E6C6169726573;
  v2 = 0x49746375646F7270;
  if (*v0 != 2)
  {
    v2 = 0x6449726F646E6576;
  }

  if (*v0)
  {
    v1 = 0x6449616E6D66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1004F546C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004FFAA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004F5494(uint64_t a1)
{
  v2 = sub_100501C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F54D0(uint64_t a1)
{
  v2 = sub_100501C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F5524(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A2D38, &qword_1013AD198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100501B14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v27 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v26 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v25 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    v24 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 64);
    v22 = 4;
    sub_100501B68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v3[9];
    v20[15] = 5;
    sub_1000BC4D4(&qword_1016A2D50, &qword_1013AD1A0);
    sub_100501BBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004F5798()
{
  v1 = *v0;
  v2 = 0x69634572656E776FLL;
  v3 = 1684628597;
  v4 = 0x6F4365766F6D6572;
  if (v1 != 4)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69684372656E776FLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1004F5868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005000E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004F5890(uint64_t a1)
{
  v2 = sub_100501B14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F58CC(uint64_t a1)
{
  v2 = sub_100501B14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F5920()
{
  result = Data.init(base64Encoded:options:)();
  qword_10177AEE0 = result;
  qword_10177AEE8 = v1;
  return result;
}

uint64_t sub_1004F5960(uint64_t a1, uint64_t a2)
{
  v3[310] = v2;
  v3[309] = a2;
  v3[308] = a1;
  v3[311] = *v2;
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[312] = swift_task_alloc();
  v5 = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint();
  v3[313] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[314] = swift_task_alloc();
  v3[315] = swift_task_alloc();

  return _swift_task_switch(sub_1004F5A68, 0, 0);
}

uint64_t sub_1004F5A68()
{
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v1 = v0[315];
  v2 = v0[314];
  v3 = v0[313];
  v4 = v0[312];
  v5 = v0[310];
  v22 = v0[309];
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = 0xD000000000000028;
  *(v6 + 40) = 0x8000000101357EC0;
  os_log(_:dso:log:_:_:)();

  v7 = enum case for FMNAccountType.w2Accessory(_:);
  v8 = type metadata accessor for FMNAccountType();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  *(v1 + *(v3 + 20)) = 0;
  v9 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = type metadata accessor for FMNMockingPreferences();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v14 = type metadata accessor for ServerInteractionController(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  sub_100501080(v1, v2, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v0[316] = sub_10061E864(v2, v13, v17);
  v18 = *(v5 + 16);

  sub_1002DDD40(v22, (v0 + 2));
  v19 = swift_task_alloc();
  v0[317] = v19;
  *v19 = v0;
  v19[1] = sub_1004F5D44;
  v20 = v0[309];

  return sub_1002DCD00(v20, v18);
}

uint64_t sub_1004F5D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2536);
  v7 = *v3;
  v4[318] = a1;
  v4[319] = a2;
  v4[320] = a3;

  return _swift_task_switch(sub_1004F5E4C, 0, 0);
}

uint64_t sub_1004F5E4C()
{
  v106 = v0;
  v1 = v0[318];
  if (v1)
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v2 = v0[309];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C0A8);
    sub_1002DDD40(v2, (v0 + 40));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[309];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v105[0] = v8;
      *v7 = 136315138;
      v9 = *(v6 + 64);
      v10 = *(v6 + 72);
      v11 = Data.hexString.getter();
      v13 = sub_1000136BC(v11, v12, v105);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Auth nonce: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v14 = v0[309];
    sub_1002DDD40(v14, (v0 + 78));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[309];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v105[0] = v19;
      *v18 = 136315138;
      v20 = *(v17 + 240);
      v21 = *(v17 + 248);
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, v105);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Session nonce: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v25 = v0[309];
    sub_1002DDD40(v25, (v0 + 116));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[309];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v105[0] = v30;
      *v29 = 136315138;
      v31 = *(v28 + 80);
      v32 = *(v28 + 88);
      v33 = Data.hexString.getter();
      v35 = sub_1000136BC(v33, v34, v105);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "serialNumber: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v36 = v0[309];
    sub_1002DDD40(v36, (v0 + 154));
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[309];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v105[0] = v41;
      *v40 = 136315138;
      v42 = *(v39 + 96);
      v43 = *(v39 + 104);
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, v105);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "altserialNumber: %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v47 = v0[309];
    sub_1002DDD40(v47, (v0 + 192));
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[309];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v105[0] = v52;
      *v51 = 136315138;
      v53 = *(v50 + 144);
      v54 = *(v50 + 152);
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, v105);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "SeedK1: %s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    v58 = v0[309];
    sub_1002DDD40(v58, (v0 + 230));
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v58);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[309];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v105[0] = v63;
      *v62 = 136315138;
      v64 = *(v61 + 192);
      v65 = *(v61 + 200);
      v66 = Data.hexString.getter();
      v68 = sub_1000136BC(v66, v67, v105);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "accessoryAttestation: %s", v62, 0xCu);
      sub_100007BAC(v63);
    }

    v69 = v0[309];
    sub_1002DDD40(v69, (v0 + 268));
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v69);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v0[309];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v105[0] = v74;
      *v73 = 136315138;
      v75 = *(v72 + 208);
      v76 = *(v72 + 216);
      v77 = Data.hexString.getter();
      v79 = sub_1000136BC(v77, v78, v105);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "accessorySignature: %s", v73, 0xCu);
      sub_100007BAC(v74);
    }

    v80 = v0[320];
    v81 = v0[319];
    v82 = v0[318];
    v83 = v0[316];
    v84 = v0[311];
    v85 = v0[310];
    v86 = v0[309];

    sub_100017D5C(v81, v80);
    v87 = sub_1004FDC2C(v1, v81, v80, 0, v83);
    v0[321] = v87;
    sub_100165328(v82, v81, v80);
    v88 = swift_task_alloc();
    v0[322] = v88;
    v88[2] = v87;
    v88[3] = v83;
    v88[4] = v85;
    v88[5] = v86;
    v88[6] = v84;
    v89 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v90 = swift_task_alloc();
    v0[323] = v90;
    v91 = type metadata accessor for PencilPairingLockCheckResponse();
    *v90 = v0;
    v90[1] = sub_1004F67CC;
    v92 = v0[308];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v92, 0, 0, 0xD000000000000028, 0x8000000101357EC0, sub_100500E5C, v88, v91);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_1000076D4(v93, qword_10177C0A8);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, " Could not create pairing lock request.", v96, 2u);
    }

    v97 = v0[316];
    v98 = v0[315];

    type metadata accessor for SPPairingSessionError(0);
    v0[307] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v99 = v0[306];
    swift_willThrow();

    sub_100501020(v98, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
    v100 = v0[315];
    v101 = v0[314];
    v102 = v0[312];

    v103 = v0[1];

    return v103();
  }
}

uint64_t sub_1004F67CC()
{
  v2 = *v1;
  v3 = *(*v1 + 2584);
  v4 = *v1;
  *(*v1 + 2592) = v0;

  v5 = *(v2 + 2576);

  if (v0)
  {
    v6 = sub_1004F69E4;
  }

  else
  {
    v6 = sub_1004F6900;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004F6900()
{
  v1 = v0[321];
  v2 = v0[320];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[316];
  v6 = v0[315];
  v7 = v0[314];
  v8 = v0[312];

  sub_100165328(v4, v3, v2);
  sub_100501020(v6, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004F69E4()
{
  v1 = v0[321];
  v2 = v0[320];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[316];
  v6 = v0[315];

  sub_100165328(v4, v3, v2);
  sub_100501020(v6, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v7 = v0[324];
  v8 = v0[315];
  v9 = v0[314];
  v10 = v0[312];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004F6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a1;
  v27 = a4;
  v30 = a2;
  v8 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v25 = *(v9 + 16);
  v25(&v22 - v11, a1, v8);
  v13 = *(v9 + 80);
  v22 = ((v13 + 24) & ~v13) + v10;
  v24 = (v13 + 24) & ~v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v23 = *(v9 + 32);
  v15 = v8;
  v23(v14 + ((v13 + 24) & ~v13), v12, v8);
  v16 = a3;

  Future.addFailure(block:)();

  v25(v12, v26, v15);
  v17 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v23(v19 + v24, v12, v15);
  *(v19 + v17) = v27;
  v20 = v28;
  memcpy((v19 + v18), v28, 0x130uLL);
  *(v19 + ((v18 + 311) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_1002DDD40(v20, &v31);
  Future.addSuccess(block:)();
}

uint64_t sub_1004F6D38()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C0A8);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = sub_1000136BC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, " Error in verify pairing request. Error - %{public}s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004F6F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v237 = a5;
  v238 = type metadata accessor for Date();
  v231 = *(v238 - 8);
  v7 = *(v231 + 64);
  v8 = __chkstk_darwin(v238);
  v235 = &v229 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v234 = &v229 - v11;
  v12 = __chkstk_darwin(v10);
  v230 = &v229 - v13;
  __chkstk_darwin(v12);
  v236 = &v229 - v14;
  v15 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v242 = &v229 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v240 = &v229 - v19;
  v244 = type metadata accessor for PencilPairingLockCheckResponse();
  v20 = *(*(v244 - 1) + 64);
  v21 = __chkstk_darwin(v244);
  v232 = &v229 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v245 = &v229 - v23;
  v24 = type metadata accessor for String.Encoding();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v243 = &v229 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v27 = *(v246 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v246);
  v31 = &v229 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v229 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v229 - v36;
  __chkstk_darwin(v35);
  v39 = &v229 - v38;
  v40 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v239 = &v229 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v241 = (&v229 - v45);
  v46 = __chkstk_darwin(v44);
  v48 = &v229 - v47;
  __chkstk_darwin(v46);
  v50 = &v229 - v49;
  v248 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v51 = v50;
  ServerStatusCode.init(rawValue:)();
  v52 = type metadata accessor for ServerStatusCode();
  v53 = *(v52 - 8);
  v54 = (*(v53 + 48))(v51, 1, v52);
  v247 = v51;
  if (v54 == 1)
  {
LABEL_2:
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177C0A8);
    v56 = v246;
    (*(v27 + 16))(v31, v248, v246);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v250[0] = v60;
      *v59 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v56;
      v64 = v63;
      (*(v27 + 8))(v31, v62);
      v65 = sub_1000136BC(v61, v64, v250);

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, " Pairing lock failed: %{public}s", v59, 0xCu);
      sub_100007BAC(v60);
    }

    else
    {

      (*(v27 + 8))(v31, v56);
    }

    goto LABEL_12;
  }

  v233 = a3;
  sub_100500FB0(v51, v48);
  v229 = *(v53 + 88);
  v66 = v229(v48, v52);
  if (v66 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    v68 = sub_1000076D4(v67, qword_10177C0A8);
    v69 = v246;
    (*(v27 + 16))(v39, v248, v246);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v245;
    if (v72)
    {
      v74 = swift_slowAlloc();
      v75 = v68;
      v76 = swift_slowAlloc();
      v250[0] = v76;
      *v74 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v69;
      v80 = v79;
      (*(v27 + 8))(v39, v78);
      v81 = sub_1000136BC(v77, v80, v250);

      *(v74 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v70, v71, "Pairing success: %{public}s", v74, 0xCu);
      sub_100007BAC(v76);
      v68 = v75;
      v73 = v245;
    }

    else
    {

      (*(v27 + 8))(v39, v69);
    }

    v95 = v244;
    v96 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v98 = v97;
    static String.Encoding.utf8.getter();
    v99 = String.init(data:encoding:)();
    v101 = v100;
    sub_100016590(v96, v98);
    if (v101)
    {

      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v250[0] = v105;
        *v104 = 136315138;
        v106 = sub_1000136BC(v99, v101, v250);

        *(v104 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v102, v103, "Response data: %s", v104, 0xCu);
        sub_100007BAC(v105);
        v95 = v244;
      }

      else
      {
      }
    }

    v118 = type metadata accessor for JSONDecoder();
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();
    v121 = JSONDecoder.init()();
    v122 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v124 = v123;
    sub_100501CC4(&qword_1016A2C08, type metadata accessor for PencilPairingLockCheckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v122, v124);
    v125 = v240;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v126 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v127 = *(v126 - 8);
    if ((*(v127 + 48))(v125, 1, v126) == 1)
    {
      sub_10000B3A8(v125, &qword_101698640, &unk_10138FFA0);
    }

    else
    {
      v138 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v139 = v125;
      v140 = v138;
      v142 = v141;
      (*(v127 + 8))(v139, v126);
      if ((v142 & 1) == 0)
      {
        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v192, v193))
        {
          v194 = swift_slowAlloc();
          *v194 = 134217984;
          *(v194 + 4) = v140;
          _os_log_impl(&_mh_execute_header, v192, v193, "Server epoch: %lld", v194, 0xCu);
        }

        goto LABEL_71;
      }
    }

    v143 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v143 + 16) && (v144 = sub_100771D58(1702125892, 0xE400000000000000), (v145 & 1) != 0))
    {
      v146 = (*(v143 + 56) + 16 * v144);
      v148 = *v146;
      v147 = v146[1];
      swift_bridgeObjectRetain_n();

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = v68;
        v153 = swift_slowAlloc();
        v250[0] = v153;
        *v151 = 136446210;
        *(v151 + 4) = sub_1000136BC(v148, v147, v250);
        _os_log_impl(&_mh_execute_header, v149, v150, "Server date: %{public}s", v151, 0xCu);
        sub_100007BAC(v153);
        v68 = v152;
        v73 = v245;
      }

      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v154 = qword_10177B6F0;
      v155 = String._bridgeToObjectiveC()();

      v156 = [v154 dateFromString:v155];

      if (v156)
      {
        v157 = v236;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v158 = v231;
        v159 = *(v231 + 16);
        v160 = v230;
        v161 = v238;
        v159(v230, v157, v238);
        v159(v234, v157, v161);
        v159(v235, v157, v161);
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v248 = swift_slowAlloc();
          v250[0] = v248;
          *v164 = 136446722;
          sub_100501CC4(&qword_1016969A0, &type metadata accessor for Date);
          LODWORD(v242) = v163;
          v165 = dispatch thunk of CustomStringConvertible.description.getter();
          v243 = v68;
          v167 = v166;
          v168 = v160;
          v169 = *(v158 + 8);
          v240 = ((v158 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v241 = v162;
          v169(v168, v238);
          v170 = sub_1000136BC(v165, v167, v250);

          *(v164 + 4) = v170;
          *(v164 + 12) = 2048;
          v171 = v234;
          v172 = Date.epoch.getter();
          v169(v171, v238);
          *(v164 + 14) = v172;
          *(v164 + 22) = 2082;
          v173 = v235;
          v249 = Date.epoch.getter();
          sub_100102194();
          v174 = FixedWidthInteger.data.getter();
          v176 = v175;
          v177 = v121;
          v178 = Data.hexString.getter();
          v180 = v179;
          v181 = v176;
          v68 = v243;
          sub_100016590(v174, v181);
          v169(v173, v238);
          v182 = v178;
          v121 = v177;
          v183 = sub_1000136BC(v182, v180, v250);

          *(v164 + 24) = v183;
          v184 = v241;
          _os_log_impl(&_mh_execute_header, v241, v242, "pairingEpoch: %{public}s [%lld/%{public}s]", v164, 0x20u);
          swift_arrayDestroy();

          v161 = v238;
        }

        else
        {
          v198 = v160;
          v169 = *(v158 + 8);
          v169(v234, v161);

          v169(v235, v161);
          v169(v198, v161);
        }

        v199 = v236;
        v140 = Date.epoch.getter();
        v169(v199, v161);
        v95 = v244;
        v73 = v245;
LABEL_71:
        *(v73 + *(v95 + 11)) = v140;
        v200 = sub_1005002F8(v237, v73);
        v248 = v201;
        v202 = Logger.logObject.getter();
        v203 = static os_log_type_t.default.getter();
        v204 = os_log_type_enabled(v202, v203);
        v246 = v121;
        if (v204)
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v243 = v68;
          v207 = v206;
          v250[0] = v206;
          *v205 = 136315138;
          swift_beginAccess();
          v208 = *(v73 + 48);
          v209 = *(v73 + 56);
          sub_100017D5C(v208, v209);
          v210 = Data.hexString.getter();
          v211 = v200;
          v213 = v212;
          sub_100016590(v208, v209);
          v214 = v210;
          v73 = v245;
          v215 = sub_1000136BC(v214, v213, v250);
          v200 = v211;

          *(v205 + 4) = v215;
          _os_log_impl(&_mh_execute_header, v202, v203, "S3: %s", v205, 0xCu);
          sub_100007BAC(v207);
        }

        v216 = v248;
        sub_100017D5C(v200, v248);
        v217 = Logger.logObject.getter();
        v218 = static os_log_type_t.debug.getter();
        sub_100016590(v200, v216);
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          v220 = swift_slowAlloc();
          v244 = v200;
          v221 = v220;
          v250[0] = v220;
          *v219 = 136315138;
          v222 = Data.hexString.getter();
          v224 = sub_1000136BC(v222, v223, v250);

          *(v219 + 4) = v224;
          _os_log_impl(&_mh_execute_header, v217, v218, "dataForSignatureVerification: %s", v219, 0xCu);
          sub_100007BAC(v221);
          v200 = v244;
        }

        swift_beginAccess();
        v225 = *(v73 + 48);
        v226 = *(v73 + 56);
        sub_100017D5C(v225, v226);
        v227 = sub_1005008D4(v200, v248, v225, v226);
        sub_100016590(v225, v226);
        static os_log_type_t.default.getter();
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v228 = swift_allocObject();
        *(v228 + 16) = xmmword_101385D80;
        *(v228 + 56) = &type metadata for Bool;
        *(v228 + 64) = &protocol witness table for Bool;
        *(v228 + 32) = v227 & 1;
        os_log(_:dso:log:_:_:)();

        sub_100501080(v73, v232, type metadata accessor for PencilPairingLockCheckResponse);
        sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
        CheckedContinuation.resume(returning:)();

        sub_100016590(v200, v248);
        goto LABEL_55;
      }

      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        *v197 = 0;
        _os_log_impl(&_mh_execute_header, v195, v196, "Unable to parse server Date!", v197, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v188 = 25;
    }

    else
    {

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&_mh_execute_header, v185, v186, "Server response is missing Date header!", v187, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v188 = 23;
    }

    v249 = v188;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v249 = v250[0];
    sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
    CheckedContinuation.resume(throwing:)();

LABEL_55:
    sub_100501020(v73, type metadata accessor for PencilPairingLockCheckResponse);
    return sub_10000B3A8(v247, &qword_101698638, &qword_1013AC450);
  }

  if (v66 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v66 == enum case for ServerStatusCode.serverConflict(_:))
    {
      if (qword_101694E98 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_1000076D4(v107, qword_10177C0A8);
      v108 = v246;
      (*(v27 + 16))(v37, v248, v246);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v250[0] = v112;
        *v111 = 136446210;
        sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = v108;
        v116 = v115;
        (*(v27 + 8))(v37, v114);
        v117 = sub_1000136BC(v113, v116, v250);

        *(v111 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v109, v110, "Linked to another Apple ID. %{public}s", v111, 0xCu);
        sub_100007BAC(v112);
      }

      else
      {

        (*(v27 + 8))(v37, v108);
      }

      type metadata accessor for SPPairingSessionError(0);
      v82 = 18;
      goto LABEL_13;
    }

    (*(v53 + 8))(v48, v52);
    goto LABEL_2;
  }

  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  v85 = sub_1000076D4(v84, qword_10177C0A8);
  v86 = v246;
  (*(v27 + 16))(v34, v248, v246);
  v245 = v85;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v243 = v89;
    v244 = swift_slowAlloc();
    v250[0] = v244;
    *v89 = 136446210;
    sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    (*(v27 + 8))(v34, v86);
    v93 = sub_1000136BC(v90, v92, v250);

    v94 = v243;
    *(v243 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v87, v88, "Pairing not allowed! %{public}s", v94, 0xCu);
    sub_100007BAC(v244);
  }

  else
  {

    (*(v27 + 8))(v34, v86);
  }

  v128 = v242;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v129 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v130 = *(v129 - 8);
  if ((*(v130 + 48))(v128, 1, v129) == 1)
  {
    sub_10000B3A8(v128, &qword_101698640, &unk_10138FFA0);
    v131 = v241;
    (*(v53 + 56))(v241, 1, 1, v52);
    sub_10000B3A8(v131, &qword_101698638, &qword_1013AC450);
  }

  else
  {
    v132 = v241;
    FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
    (*(v130 + 8))(v128, v129);
    (*(v53 + 56))(v132, 0, 1, v52);
    v133 = v239;
    sub_1000D2AD8(v132, v239, &qword_101698638, &qword_1013AC450);
    v134 = v229(v133, v52);
    if (v134 == enum case for ServerStatusCode.preconditionFailed(_:))
    {
      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&_mh_execute_header, v135, v136, "Pairing has been completed by another device!", v137, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v82 = 22;
      goto LABEL_13;
    }

    if (v134 == enum case for ServerStatusCode.locked(_:))
    {
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&_mh_execute_header, v189, v190, " ⍻ Pairing is pending from another device!", v191, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v82 = 21;
      goto LABEL_13;
    }

    (*(v53 + 8))(v133, v52);
  }

LABEL_12:
  type metadata accessor for SPPairingSessionError(0);
  v82 = 1;
LABEL_13:
  v249 = v82;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v249 = v250[0];
  sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  CheckedContinuation.resume(throwing:)();
  return sub_10000B3A8(v247, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_1004F8EC4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v5 = type metadata accessor for FMNAccountType();
  v3[38] = v5;
  v6 = *(v5 - 8);
  v3[39] = v6;
  v7 = *(v6 + 64) + 15;
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint();
  v3[41] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1004F8FFC, 0, 0);
}

uint64_t sub_1004F8FFC()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[36];
  v7 = v0[37];
  v23 = v6;
  v24 = v0[35];
  v8 = enum case for FMNAccountType.w2Accessory(_:);
  v9 = *(v0[39] + 104);
  v9(v3, enum case for FMNAccountType.w2Accessory(_:), v5);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v2 = sub_1010B32C8(v3);
  v9(v2 + *(v4 + 20), v8, v5);
  v10 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = type metadata accessor for FMNMockingPreferences();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v15 = type metadata accessor for ServerInteractionController(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_100501080(v2, v1, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v0[44] = sub_10061EC7C(v1, v14, v18);
  v19 = *(v23 + 16);

  sub_100500C18(v24, (v0 + 2));
  v20 = swift_task_alloc();
  v0[45] = v20;
  *v20 = v0;
  v20[1] = sub_1004F9220;
  v21 = v0[35];

  return sub_100F49810(v21, v19);
}

uint64_t sub_1004F9220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 360);
  v7 = *v3;
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = a3;

  return _swift_task_switch(sub_1004F9324, 0, 0);
}

uint64_t sub_1004F9324()
{
  v1 = v0[46];
  if (v1)
  {
    v3 = v0[47];
    v2 = v0[48];
    v4 = v0[44];
    v5 = v0[46];

    sub_100017D5C(v3, v2);
    v6 = sub_1004FDF38(v1, v3, v2, 0, v4);
    v0[49] = v6;
    sub_100165328(v1, v3, v2);
    v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[50] = v8;
    v9 = type metadata accessor for PencilPairingLockAckResponse();
    *v8 = v0;
    v8[1] = sub_1004F961C;
    v10 = v0[34];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001ALL, 0x8000000101357EA0, sub_100500C50, v6, v9);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C0A8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, " Could not create pairing ack request", v14, 2u);
    }

    v16 = v0[43];
    v15 = v0[44];

    type metadata accessor for SPPairingSessionError(0);
    v0[33] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v17 = v0[32];
    swift_willThrow();

    sub_100501020(v16, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
    v19 = v0[42];
    v18 = v0[43];
    v20 = v0[40];
    v21 = v0[37];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1004F961C()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1004F9814;
  }

  else
  {
    v3 = sub_1004F9730;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004F9730()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[37];

  sub_100165328(v4, v3, v2);
  sub_100501020(v6, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004F9814()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[43];
  v5 = v0[44];

  sub_100165328(v4, v3, v2);
  sub_100501020(v6, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v7 = v0[51];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[40];
  v11 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004F98EC(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_1004F9ACC()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C0A8);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = sub_1000136BC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, " Ack pairing failed. %{public}s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004F9CE8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PencilPairingLockAckResponse();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  v11 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v47 - v17;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v47[4] = a2;
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_1000076D4(v19, qword_10177C0A8);
    (*(v12 + 16))(v18, a1, v11);
    v47[3] = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47[2] = a1;
      v24 = v23;
      v47[0] = swift_slowAlloc();
      v49 = v47[0];
      *v24 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v47[1] = v4;
      v26 = v8;
      v27 = v10;
      v29 = v28;
      (*(v12 + 8))(v18, v11);
      v30 = sub_1000136BC(v25, v29, &v49);
      v10 = v27;
      v8 = v26;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, " Ack pairing success: %{public}s", v24, 0xCu);
      sub_100007BAC(v47[0]);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    v40 = type metadata accessor for JSONDecoder();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100501CC4(&qword_1016A2BF0, type metadata accessor for PencilPairingLockAckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v43, v45);
    sub_100501080(v10, v8, type metadata accessor for PencilPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
    CheckedContinuation.resume(returning:)();

    return sub_100501020(v10, type metadata accessor for PencilPairingLockAckResponse);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C0A8);
    (*(v12 + 16))(v16, a1, v11);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v12 + 8))(v16, v11);
      v39 = sub_1000136BC(v36, v38, &v49);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, " Ack pairing failed. Response %{public}s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    type metadata accessor for SPPairingSessionError(0);
    v48 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v49;
    sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FA514(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1004FA534, 0, 0);
}

uint64_t sub_1004FA534()
{
  v1 = v0[14];
  v2 = *(v0[15] + 16);

  sub_100500A7C(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1004FA600;
  v4 = v0[14];

  return sub_100B74694(v4, v2);
}

uint64_t sub_1004FA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v7 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;

  return _swift_task_switch(sub_1004FA704, 0, 0);
}

uint64_t sub_1004FA704()
{
  v1 = v0[17];
  if (v1)
  {
    v3 = v0[18];
    v2 = v0[19];
    v4 = v0[14];
    v5 = swift_task_alloc();
    v0[20] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v3;
    v5[5] = v2;
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_1004FA988;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000024, 0x8000000101357E70, sub_100500AB4, v5, &type metadata for () + 8);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C0A8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not create unpair command", v11, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v0[13] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v0[12];
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1004FA988()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1004FAB0C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_1004FAAA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004FAAA4()
{
  sub_100165328(v0[17], v0[18], v0[19]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004FAB0C()
{
  v1 = v0[20];
  sub_100165328(v0[17], v0[18], v0[19]);

  v2 = v0[22];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004FAB7C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, char *, uint64_t), void (*a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  v76 = a3;
  v77 = a4;
  v8 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v13 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v75 = (&v65 - v15);
  v16 = type metadata accessor for FMNAccountType();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  __chkstk_darwin(v16);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PencilUnpairEndPoint();
  v19 = *(*(v70 - 8) + 64);
  v20 = __chkstk_darwin(v70);
  v74 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = (&v65 - v22);
  v24 = type metadata accessor for PencilUnpairData.DeviceUnpairData();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v28 = (&v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a2 + 72);
  if (*(v29 + 16))
  {
    v68 = a5;
    v69 = v8;
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v78 = v10;
    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C0A8);
    sub_100501080(v29 + v30, v28, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v80 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = *v28;
      v37 = v28[1];
      v38 = Data.description.getter();
      v66 = a1;
      v39 = v38;
      v40 = v23;
      v41 = v12;
      v42 = v9;
      v44 = v43;
      sub_100501020(v28, type metadata accessor for PencilUnpairData.DeviceUnpairData);
      v45 = sub_1000136BC(v39, v44, &v80);
      v9 = v42;
      v12 = v41;
      v23 = v40;

      *(v34 + 14) = v45;
      a1 = v66;
      _os_log_impl(&_mh_execute_header, v32, v33, "Removing pairing lock for Serial Number - %{private,mask.hash}s", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      sub_100501020(v28, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    }

    v67 = v23;
    v47 = enum case for FMNAccountType.w2Accessory(_:);
    v48 = v71;
    v49 = *(v72 + 104);
    v50 = v73;
    v49(v71, enum case for FMNAccountType.w2Accessory(_:), v73);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    *v23 = sub_1010B32C8(v48);
    v49(v23 + *(v70 + 20), v47, v50);
    v51 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = type metadata accessor for FMNMockingPreferences();
    (*(*(v54 - 8) + 56))(v75, 1, 1, v54);
    v55 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v56 = type metadata accessor for ServerInteractionController(0);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();
    v60 = v74;
    sub_100501080(v23, v74, type metadata accessor for PencilUnpairEndPoint);
    v75 = sub_100622DFC(v60, v55, v59);
    sub_1004FE244(v76, v77, v68, 0, v75);
    v77 = *(v9 + 16);
    v61 = v69;
    v77(v12, a1, v69);
    v62 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v63 = swift_allocObject();
    v76 = *(v9 + 32);
    v76(v63 + v62, v12, v61);
    Future.addFailure(block:)();

    v77(v12, a1, v61);
    v64 = swift_allocObject();
    v76(v64 + v62, v12, v61);
    Future.addSuccess(block:)();

    return sub_100501020(v67, type metadata accessor for PencilUnpairEndPoint);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    v79 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v79 = v80;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FB2FC()
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C0A8);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove pairing lock command failed. Error - %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004FB4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v37 = v5[2];
  v38 = v5 + 2;
  v37(v11, a1, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v39 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v36 = a2;
    v17 = v16;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v17 = 136446210;
    sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v12;
    v19 = a1;
    v20 = v9;
    v22 = v21;
    v23 = v5[1];
    v23(v11, v4);
    v24 = sub_1000136BC(v18, v22, &v41);
    v9 = v20;
    a1 = v19;
    v12 = v35;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "Remove pairing lock response %{public}s", v17, 0xCu);
    sub_100007BAC(v34);
  }

  else
  {

    v23 = v5[1];
    v23(v11, v4);
  }

  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v12, qword_10177C0A8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Remove pairing lock was successful.", v27, 2u);
    }

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v12, qword_10177C0A8);
    v37(v9, a1, v4);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v9;
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      v33 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v23(v31, v4);
      *(v32 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "Remove pairing lock failed. Status code - %ld", v32, 0xCu);
    }

    else
    {
      v23(v9, v4);
    }

    type metadata accessor for SPPairingSessionError(0);
    v40 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = v41;
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FBA54(void (*a1)(void *__return_ptr, uint64_t))
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  a1(v11, v4);
  v5 = v11[0];
  v6 = v11[1];
  static String.Encoding.utf8.getter();
  v7 = String.init(data:encoding:)();
  if (!v8)
  {
    v7 = Data.hexString.getter();
  }

  v9 = v7;
  sub_100016590(v5, v6);
  return v9;
}

uint64_t sub_1004FBB20(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  type metadata accessor for MultipartAccessoryPairingInfo(0);
  sub_100101BAC();
  v1 = Dictionary.description.getter();

  return v1;
}

unint64_t sub_1004FBBA0(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = v3;

  return sub_1008CDD10(v1);
}

uint64_t sub_1004FBBE8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for AccessoryProductInfo();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1(v4);
  v8 = sub_1011A0624(v7);
  sub_100501020(v6, type metadata accessor for AccessoryProductInfo);
  return v8;
}

uint64_t sub_1004FBC9C(void (*a1)(void *__return_ptr))
{
  a1(v5);
  v1 = v5[0];
  v2 = v5[1];
  v3 = Data.description.getter();
  sub_100016590(v1, v2);
  return v3;
}

uint64_t sub_1004FBD04(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v5);
  v1 = v5;
  v2 = v6;
  v3 = sub_100313D58(v5, v6);
  sub_100016590(v1, v2);
  return v3;
}

uint64_t sub_1004FBD6C(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_10098E010();
}

uint64_t sub_1004FBDB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsLEPairingLockCheckRequest;
  v14 = sub_1005015E0();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4C0, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FC0C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsLEPairingLockAckRequest;
  v14 = sub_100501634();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4C8, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FC3CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for NFCTapRequest;
  v14 = sub_1005013E8();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC490, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FC6D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AccessoryInfoRequest;
  v14 = sub_10050113C();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC460, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FC9E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for UnpairRequest;
  v14 = sub_100501238();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC478, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FCCF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PairingLockCheckRequest;
  v14 = sub_10050158C();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4B8, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FCFFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AccessoryPairingLockCheckRequest;
  v14 = sub_100501730();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4E0, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FD308(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AccessoryUnpairRequest;
  v14 = sub_1005016DC();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4D8, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FD614(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AccessoryPairingLockAckRequest;
  v14 = sub_100501688();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4D0, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FD920(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PairingLockAckRequest;
  v14 = sub_100501394();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC488, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FDC2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PencilPairingLockCheckRequest;
  v14 = sub_1005010E8();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC458, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FDF38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PencilPairingLockAckRequest;
  v14 = sub_100500DB8();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC428, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FE244(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PencilUnpairRequest;
  v14 = sub_100500B5C();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AB550, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FE550(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsSWPairingLockCheckRequest;
  v14 = sub_100501490();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4A0, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FE85C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsPairingLockCheckRequest;
  v14 = sub_100501538();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4B0, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FEB68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsUnpairRequest;
  v14 = sub_1005011E4();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC470, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FEE74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsPairingLockAckRequest;
  v14 = sub_1005014E4();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC4A8, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FF180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AirPodsSWPairingLockAckRequest;
  v14 = sub_10050143C();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC498, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FF48C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for AccountCheckRequest;
  v14 = sub_100501190();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC468, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}

uint64_t sub_1004FF798(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v27 - v12;
  v30[3] = &type metadata for PairingLockUpdateRequest;
  v14 = sub_10050128C();
  v30[0] = a1;
  v30[1] = a2;
  v30[4] = v14;
  v30[2] = a3;
  v15 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v15 lock];
  *(a5 + qword_1016A2668) = 0;
  [v15 unlock];
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  sub_10025EDD4(0, 0, v13, &unk_1013AC480, v18);

  v19 = sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = Future.init()();
  sub_1004EAA98(v30, v29);
  v23 = qword_1016A2650;
  v24 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v23, v28);
  sub_10001F280(v29, v27);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = v24;
  sub_10000A748(v28, (v25 + 4));
  sub_10000A748(v27, (v25 + 9));
  v25[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v29);

  sub_100007BAC(v30);
  return v22;
}