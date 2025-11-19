uint64_t sub_1000B5BB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000B5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000B5D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000B61B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B6208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000B628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000B6354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B6400(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B64A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessagingMessageContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000B6550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessagingMessageContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B65F4()
{
  sub_100016590(v0[2], v0[3]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B6644()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B6680()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v0 + 16), *(v0 + 24));

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000B6764()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_100016590(*(v0 + 16), *(v0 + 24));

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1000B68A4()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_100016590(*(v0 + 16), *(v0 + 24));

  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16);
}

uint64_t sub_1000B69F4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000B6ACC()
{
  v1 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for ConnectUseCase();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B6BF8()
{
  v1 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 24);

  v5 = type metadata accessor for ConnectUseCase();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B6D18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B6DC8()
{
  v1 = *(type metadata accessor for OwnerCommandService.EncryptedSerialNumberOptions(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for MACAddress();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v3);

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B6EC0()
{
  v1 = *(type metadata accessor for OwnerCommandService.EncryptedSerialNumberOptions(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = type metadata accessor for MACAddress();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000B6FA0()
{
  v1 = *(type metadata accessor for OwnerCommandService.EncryptedSerialNumberOptions(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = type metadata accessor for MACAddress();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  sub_10071E1B8(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + v4 + 32));

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1000B70A4()
{
  v1 = *(type metadata accessor for OwnerCommandService.EncryptedSerialNumberOptions(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for MACAddress();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v3);

  v7 = *(v0 + v4);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B71A4()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v31 = *(*(v1 - 1) + 64);
  v34 = type metadata accessor for CBDiscovery.Config();
  v32 = *(v34 - 8);
  v4 = *(v32 + 80);
  v29 = *(v32 + 64);
  v33 = type metadata accessor for AccessoryCommand();
  v5 = *(*(v33 - 8) + 80);
  v26 = *(*(v33 - 8) + 64);
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v9 = *(v0 + v3 + v1[5] + 8);

  v10 = *(v0 + v3 + v1[6] + 8);

  sub_100016590(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v11 = (v0 + v3 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100016590(*v11, v12);
  }

  v13 = (v31 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (((v27 + v4 + 8) & ~v4) + v29 + v5) & ~v5;
  v30 = (v26 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8(v6 + v1[9], v7);
  v14 = v6 + v1[13];
  v15 = type metadata accessor for MACAddress();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v14 + *(v16 + 20)), *(v14 + *(v16 + 20) + 8));
  v17 = v1[14];
  v18 = type metadata accessor for P256PrivateKey();
  (*(*(v18 - 8) + 8))(v6 + v17, v18);
  v19 = v1[15];
  v20 = type metadata accessor for SymmetricKey256();
  (*(*(v20 - 8) + 8))(v6 + v19, v20);
  v21 = *(v0 + v13);

  v22 = *(v0 + v27);

  (*(v32 + 8))(v0 + ((v27 + v4 + 8) & ~v4), v34);
  v8(v0 + v28, v7);
  v8(v0 + v28 + *(v33 + 20), v7);
  v23 = v0 + v28 + *(v33 + 24);
  sub_10124B4F0(*v23, *(v23 + 8), *(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 40), sub_100016590);
  v24 = *(v0 + v30);

  return _swift_deallocObject(v0, ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B7594()
{
  v1 = (type metadata accessor for AccessoryCommand() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = v5 + v1[8];
  sub_10124B4F0(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), sub_100016590);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000B76D4()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000B77B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B77E8()
{
  sub_10038BCE4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000B7828()
{
  sub_10071E1B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000B7868()
{
  v1 = v0[7];
  sub_100721758(v0[2], v0[3], v0[4], v0[5], v0[6]);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000B78B4()
{
  v1 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 6), *(v0 + 7));
  sub_100016590(*(v0 + 8), *(v0 + 9));
  v5 = *(v0 + 10);

  v6 = type metadata accessor for ConnectUseCase();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(&v0[v2], 1, v6))
  {
    (*(v7 + 8))(&v0[v2], v6);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B79F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B7A30()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_100016590(*(v0 + 4), *(v0 + 5));
  sub_100016590(*(v0 + 6), *(v0 + 7));
  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);
  v9 = type metadata accessor for ConnectUseCase();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v0[v6], 1, v9))
  {
    (*(v10 + 8))(&v0[v6], v9);
  }

  return _swift_deallocObject(v0, ((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B7BF4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B7C2C()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2, v7);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100016590(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v11 = (v0 + v2 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100016590(*v11, v12);
  }

  v8(v6 + v1[9], v7);
  v13 = v6 + v1[13];
  v14 = type metadata accessor for MACAddress();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v13 + *(v15 + 20)), *(v13 + *(v15 + 20) + 8));
  v16 = v1[14];
  v17 = type metadata accessor for P256PrivateKey();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);
  v18 = v1[15];
  v19 = type metadata accessor for SymmetricKey256();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B7E74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B7EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000B7F80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MACAddress();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000B8050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B80BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000B81EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B82F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B8360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B83D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000B8490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for KeyDropInterface.KeyAlignment(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B8550()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000B8590()
{
  v1 = sub_1000BC4D4(&qword_1016CC300, &qword_10140F8C8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B8624()
{
  v1 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 40);

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B8704()
{
  v1 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B87E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000B88BC()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v7(v0 + v2 + v1[9], v6);
  v7(v0 + v2 + v1[10], v6);
  v8 = *(v0 + v2 + v1[11]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B8A14()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000B8A54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B8AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B8B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B8B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000B8C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000B8D28()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

uint64_t sub_1000B8E54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OwnedBeaconRecord();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000B8F78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OwnedBeaconRecord();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_1000B9144(unint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000B91BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000B927C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BeaconKeyManager.KeyCriteria(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B9350()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B9388()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000B93D0()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_100007BAC(v0 + 4);
  if (v0[9])
  {
    v3 = v0[10];
  }

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000B9438()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = (v0 + v3 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v13 = v11[1];

      v14 = v11[3];

      v15 = v11 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10(v11, v8);
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v22 = *(v11 + v21[12] + 8);

      v23 = *(v11 + v21[16] + 8);

      v20 = v21[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v15 = v11 + 1;
LABEL_13:
      v24 = *v15;

      break;
  }

LABEL_14:
  v25 = v1[7];
  if (!(*(v9 + 48))(v6 + v25, 1, v8))
  {
    v10(v6 + v25, v8);
  }

  v26 = v1[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v28 = (v6 + v1[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v3 + v37) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v6 + v1[11]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v33 = *(v6 + v1[14] + 8);

  v34 = *(v6 + v1[15] + 8);

  if (*(v0 + v30 + 8))
  {
    v35 = *(v0 + v30 + 16);
  }

  return _swift_deallocObject(v0, v30 + 24);
}

uint64_t sub_1000B97C8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B9800()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B983C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1000BC4D4(&unk_101696AC0, &qword_101390A60) - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v9(v0 + v6, v1);
  }

  return _swift_deallocObject(v0, ((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B99F4()
{
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000B9A44()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B9A88()
{
  v1 = *(type metadata accessor for BeaconKeyManager.FileKey(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (type metadata accessor for BeaconKeyManager.PersistenceInstruction(0) - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v2, v9);
  sub_10130E284(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));
  v10(v0 + v5 + v4[8], v9);
  v11 = *(v0 + v5 + v4[13]);

  return _swift_deallocObject(v0, v5 + v6);
}

uint64_t sub_1000B9C24()
{
  v1 = (type metadata accessor for BeaconKeyManager.PersistenceInstruction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  sub_10130E284(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = *(v0 + v2 + v1[13]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B9D34()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B9DB0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_1000B9E08()
{
  v1 = (type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000B9F68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B9FF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000BA030()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BA068()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  v10 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_1000BA1E8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v35 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v35;
  sub_100016590(*(v0 + v35), *(v0 + v35 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v35 + v4, v5);
  v8 = (v0 + v35 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v10 = v8[1];

      v11 = v8[3];

      v12 = v8 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v7(v8, v5);
      v34 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v34;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v34 = v2;
      v18 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v19 = *(v8 + v18[12] + 8);

      v20 = *(v8 + v18[16] + 8);

      v17 = v18[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v12 = v8 + 1;
LABEL_13:
      v21 = *v12;

      break;
  }

LABEL_14:
  v22 = v1[7];
  if (!(*(v6 + 48))(v3 + v22, 1, v5))
  {
    v7(v3 + v22, v5);
  }

  v23 = v1[8];
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 8))(v3 + v23, v24);
  sub_100016590(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v25 = (v3 + v1[10]);
  v26 = v25[1];
  if (v26 >> 60 != 15)
  {
    sub_100016590(*v25, v26);
  }

  v27 = (v3 + v1[11]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v2 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v30 = *(v3 + v1[14] + 8);

  v31 = *(v3 + v1[15] + 8);

  v32 = *(v0 + v29);

  return _swift_deallocObject(v0, v29 + 8);
}

uint64_t sub_1000BA560()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v25 = *(*(v1 - 1) + 80);
  v2 = (v25 + 32) & ~v25;
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v6 + v7, v8);
  v10(v6 + v1[6], v8);
  v11 = *(v6 + v1[7] + 16);

  v12 = *(v6 + v1[8] + 8);

  v13 = *(v6 + v1[9] + 8);

  v14 = *(v6 + v1[10] + 8);

  v15 = v1[18];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v6 + v15, v16);
  v17 = v1[19];
  v18 = *(v9 + 48);
  if (!v18(v6 + v17, 1, v8))
  {
    v10(v6 + v17, v8);
  }

  v19 = v3 & 0xFFFFFFFFFFFFFFF8;
  v20 = v6 + v1[20];
  v21 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *(v21 + 20);
    if (!v18(v20 + v22, 1, v8))
    {
      v10(v20 + v22, v8);
    }
  }

  if (*(v0 + v19))
  {
    v23 = *(v0 + v19 + 8);
  }

  return _swift_deallocObject(v0, v19 + 16);
}

uint64_t sub_1000BA808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t sub_1000BA890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1000BAA38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BAA7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000BABB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1000BACEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BAD24()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BAD5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BAD94()
{
  v1 = *(v0 + 16);

  sub_100016590(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000BADDC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BAE1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000BAE64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000BAE9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000BAEEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000BAF48()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = type metadata accessor for MACAddress();
  v10 = *(*(v9 - 8) + 8);
  v10(v6 + v8, v9);
  v10(v6 + v1[8], v9);
  v11 = *(v6 + v1[9] + 8);

  v12 = v1[10];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  sub_100016590(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v14 = v6 + v1[12];
  sub_100016590(*v14, *(v14 + 8));
  sub_100016590(*(v14 + 16), *(v14 + 24));
  sub_100016590(*(v14 + 32), *(v14 + 40));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v15 = *(v0 + v3);

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000BB144()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000BB27C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t DeviceIdentitySignature.signature.getter()
{
  v1 = *v0;
  sub_100017D5C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1000BB2CC(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1000BB320()
{
  v1 = *(v0 + 8);
  sub_100017D5C(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_1000BB354(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1000BB398@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

id sub_1000BB3D4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_1000BB3E0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 41) = 0;
  return v2;
}

_OWORD *sub_1000BB3F0(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1000BB408(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000BB444()
{
  v1 = *(v0 + 16);
  sub_100017D5C(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1000BB4DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_100016590(result, a2);

    return sub_100016590(a3, a4);
  }

  return result;
}

void sub_1000BB578(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000BB584(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000BB590()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

uint64_t sub_1000BBDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000BBE54(uint64_t a1)
{
  v3 = type metadata accessor for LocalizationUtility.Table();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for LocalizationUtility.Table.delegatedSharing(_:), v3);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v4 + 8))(v7, v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = (v1 + *(a1 + 20));
  v11 = *v9;
  v10 = v9[1];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;

  v12 = String.init(format:arguments:)();

  return v12;
}

uint64_t sub_1000BBFFC()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.delegatedSharing(_:), v0);
  v5 = static LocalizationUtility.localizedString(key:table:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1000BC114()
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6564496572616873;
  *(inited + 40) = 0xEF7265696669746ELL;
  v1 = UUID.uuidString.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000C19C4(inited + 32);
  return v3;
}

uint64_t variable initialization expression of CurrentLocationMonitor.queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_1000C1040(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of DeviceIdentityUtility.certExpiryDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1000BC488()
{
  result = qword_101695570;
  if (!qword_101695570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101695570);
  }

  return result;
}

uint64_t sub_1000BC4D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000BC51C()
{
  result = qword_10169BB70;
  if (!qword_10169BB70)
  {
    sub_1000BC580(&unk_101695580, &qword_101385D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169BB70);
  }

  return result;
}

uint64_t sub_1000BC580(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Coordinates(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000BC7DC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963B8, type metadata accessor for SPPairingSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BC848(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963B8, type metadata accessor for SPPairingSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BC8B4(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BC920(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696310, type metadata accessor for SPBeaconSharingError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BC98C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696310, type metadata accessor for SPBeaconSharingError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BC9F8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BCA64(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960B0, type metadata accessor for FirmwareUpdateError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BCAD0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960B0, type metadata accessor for FirmwareUpdateError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BCB3C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BCBA8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696430, type metadata accessor for SPOwnerSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BCC14(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696430, type metadata accessor for SPOwnerSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BCC80(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BCCEC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696348, type metadata accessor for UnpairError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BCD58(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696348, type metadata accessor for UnpairError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BCDC4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BCE30(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696258, type metadata accessor for UpdateBatteryLevelError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BCE9C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696258, type metadata accessor for UpdateBatteryLevelError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BCF08(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BCF74(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963F8, type metadata accessor for CommandError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BCFE0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963F8, type metadata accessor for CommandError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD04C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

_DWORD *sub_1000BD0B8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1000BD0C8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960F0, type metadata accessor for SPAccessoryDiscoverySessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD134(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960F0, type metadata accessor for SPAccessoryDiscoverySessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD1A0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BD20C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696128, type metadata accessor for TrackingAvoidanceError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD278(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696128, type metadata accessor for TrackingAvoidanceError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD2E4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BD350()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_1000BD39C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1000BD3F4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000BD45C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696380, type metadata accessor for SPCBPeripheralError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD4C8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696380, type metadata accessor for SPCBPeripheralError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD534(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BD5A0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696168, type metadata accessor for SecureLocationsError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD60C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696168, type metadata accessor for SecureLocationsError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD678(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BD6E4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696460, type metadata accessor for SPSeparationMonitoringError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD750(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696460, type metadata accessor for SPSeparationMonitoringError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD7BC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BD828(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961A0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BD894(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961A0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BD900(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_1000BD96C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000BD9B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000BD9F8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961E8, type metadata accessor for SPBTFindingSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BDA64(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961E8, type metadata accessor for SPBTFindingSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BDAD0(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BDB3C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696220, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BDBA8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696220, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BDC14(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BDC80(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696290, type metadata accessor for SPUnknownDiscoverySessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BDCEC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696290, type metadata accessor for SPUnknownDiscoverySessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BDD58(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BDDC4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962C8, type metadata accessor for SPTagSeparationError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000BDE30(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962C8, type metadata accessor for SPTagSeparationError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000BDE9C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000BDF08(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000BDF88@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BDFDC(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BE048(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BE0B4(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BE144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BE1D0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BE23C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BE2A8(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BE338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BE3B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1010DA0C0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000BE404(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BE470(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BE4DC(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BE56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BE5E8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BE654(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BE6C0(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BE750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BE7DC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BE848(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BE8B4(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BE944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BE9C0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BEA2C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BEA98(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BEB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BEBB4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BEC20(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BEC8C(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BED1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BEDA8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BEE14(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BEE80(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BEF10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BEF9C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BF008(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BF074(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BF104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BF190(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BF1FC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BF268(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BF2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BF374(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_1000BF3F0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BF45C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BF4C8(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BF558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BF5E4(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BF650(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BF6BC(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BF74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BF7D8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BF844(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BF8B0(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BF940(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BF9CC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BFA38(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BFAA4(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BFB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BFBC0(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BFC2C(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BFC98(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BFD28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BFDB4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000BFE20(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000BFE8C(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000BFF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BFFA8(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000C0014(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000C0080(void *a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000C0110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000C018C()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C01EC(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964A0, type metadata accessor for SPBeaconLocationSource);
  v3 = sub_1000C1040(&qword_1016964A8, type metadata accessor for SPBeaconLocationSource);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C02A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&unk_1016B2710, type metadata accessor for SPPairingSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C032C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016C1AA0, type metadata accessor for SPBeaconType);
  v3 = sub_1000C1040(&unk_101695B90, type metadata accessor for SPBeaconType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C03E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696340, type metadata accessor for SPBeaconSharingError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C046C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964C0, type metadata accessor for URLResourceKey);
  v3 = sub_1000C1040(&qword_1016964C8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C0528(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101695BA8, type metadata accessor for SPServiceState);
  v3 = sub_1000C1040(&qword_101695BB0, type metadata accessor for SPServiceState);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C05E4(uint64_t a1)
{
  v2 = sub_1000C1040(&unk_1016A9A50, type metadata accessor for SPDisabledReason);
  v3 = sub_1000C1040(&qword_101695BA0, type metadata accessor for SPDisabledReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C06A0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964F0, type metadata accessor for FileAttributeKey);
  v3 = sub_1000C1040(&qword_1016964F8, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C075C(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696500, type metadata accessor for SPFinderDisabledReason);
  v3 = sub_1000C1040(&qword_101696508, type metadata accessor for SPFinderDisabledReason);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C0818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016960E8, type metadata accessor for FirmwareUpdateError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C089C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696378, type metadata accessor for UnpairError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C09A4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v3 = sub_1000C1040(&qword_1016964D8, type metadata accessor for SPBeaconTaskName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C0A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696288, type metadata accessor for UpdateBatteryLevelError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696428, type metadata accessor for CommandError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696250, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696120, type metadata accessor for SPAccessoryDiscoverySessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696158, type metadata accessor for TrackingAvoidanceError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0CF4(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964E0, type metadata accessor for FileProtectionType);
  v3 = sub_1000C1040(&qword_1016964E8, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C0DB0(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_101696510, type metadata accessor for SPRepairDeviceContextType);
  v3 = sub_1000C1040(&qword_101696518, type metadata accessor for SPRepairDeviceContextType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C0E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016963B0, type metadata accessor for SPCBPeripheralError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&unk_1016B0E20, type metadata accessor for SecureLocationsError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C0F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C1040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016961D0, type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C12BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&unk_1016C2170, type metadata accessor for SPBTFindingSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C1340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016962C0, type metadata accessor for SPUnknownDiscoverySessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C13C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1040(&qword_1016962F8, type metadata accessor for SPTagSeparationError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C1448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000C1490(uint64_t a1)
{
  v2 = sub_1000C1040(&qword_1016964B0, type metadata accessor for CBConnectionEventMatchingOption);
  v3 = sub_1000C1040(&qword_1016964B8, type metadata accessor for CBConnectionEventMatchingOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000C18AC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000C18E8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_1000C193C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000C19C4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DelegatedShareStartUserNotification()
{
  result = qword_101695D40;
  if (!qword_101695D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1B68()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VersionNumber(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VersionNumber(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000C1F08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C1F2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4104) = 0u;
    *(result + 4120) = 0;
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
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4128) = v3;
  return result;
}

__n128 sub_1000C23B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000C3258()
{
  result = qword_1016960D8;
  if (!qword_1016960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016960D8);
  }

  return result;
}

__n128 sub_1000C5598(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1000C570C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177AE28);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "All delegated location publish subscriptions terminated.", v2, 2u);
  }
}

void sub_1000C5850(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  XPCSession.identifier.getter();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  swift_beginAccess();
  swift_getTupleTypeMetadata2();
  sub_1000096E8(&qword_1016967B0);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177AE28);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v18[0] = v17;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    XPCSession.identifier.getter();
    sub_1000096E8(&qword_101696930);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v2;
    v15 = v14;

    (*(v5 + 8))(v8, v4);
    v16 = sub_1000136BC(v13, v15, v18);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Removed delegated location publish subscription %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v17);
  }

  else
  {
  }
}

uint64_t sub_1000C5B84()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];
}

void *sub_1000C5BBC()
{
  v0 = sub_1010D71A8();
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t sub_1000C5BFC()
{
  sub_1000C5BBC();

  return swift_deallocClassInstance();
}

__n128 sub_1000C5C90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000C5CA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C5CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C5E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101696990, &qword_10138B250) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5FE4, 0, 0);
}

uint64_t sub_1000C5FE4()
{
  v79 = v0;
  v1 = v0[9];
  v2 = v0[2];
  v3 = *(v2 + 64);
  v64 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v63 = (63 - v5) >> 6;
  v74 = (v1 + 32);
  v76 = (v1 + 16);
  v67 = v0[9];
  v73 = (v1 + 8);
  v65 = (v0[6] + 8);
  v66 = v0[2];

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = v0[12];
      v13 = v0[13];
      v14 = v0[8];
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v9 << 6);
      (*(v67 + 16))(v12, *(v66 + 48) + *(v67 + 72) * v16, v14);
      v17 = *(*(v66 + 56) + 8 * v16);
      v18 = sub_1000BC4D4(&qword_101696998, &qword_10138B258);
      v19 = *(v18 + 48);
      (*(v67 + 32))(v13, v12, v14);
      *(v13 + v19) = v17;
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
      v20 = v17;
      v11 = v9;
LABEL_13:
      v21 = v0[14];
      sub_1000D2AD8(v0[13], v21, &qword_101696990, &qword_10138B250);
      v22 = sub_1000BC4D4(&qword_101696998, &qword_10138B258);
      if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
      {
        break;
      }

      v23 = v0[8];
      v24 = *(v0[14] + *(v22 + 48));
      (*v74)(v0[11]);
      if (qword_101694778 != -1)
      {
        swift_once();
      }

      v25 = v0[10];
      v26 = v0[11];
      v27 = v0[8];
      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177AE28);
      (*v76)(v25, v26, v27);
      v29 = v24;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[10];
      v34 = v0[11];
      v35 = v0[8];
      if (v32)
      {
        v71 = v31;
        v68 = v0[7];
        v36 = v0[5];
        log = v30;
        v37 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v37 = 141559299;
        *(v37 + 4) = 1752392040;
        *(v37 + 12) = 2081;
        sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
        v72 = v11;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v34;
        v40 = v39;
        v41 = *v73;
        (*v73)(v33, v35);
        v42 = sub_1000136BC(v38, v40, &v78);

        *(v37 + 14) = v42;
        *(v37 + 22) = 2053;
        [v29 latitude];
        *(v37 + 24) = v43;
        *(v37 + 32) = 2053;
        [v29 longitude];
        *(v37 + 34) = v44;
        *(v37 + 42) = 2049;
        [v29 horizontalAccuracy];
        *(v37 + 44) = v45;
        *(v37 + 52) = 2081;
        v46 = [v29 timestamp];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000D2E90(&qword_1016969A0, 255, &type metadata accessor for Date);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*v65)(v68, v36);
        v50 = sub_1000136BC(v47, v49, &v78);

        *(v37 + 54) = v50;
        _os_log_impl(&_mh_execute_header, log, v71, "Did publish for delegated beacon: %{private,mask.hash}s,\nLoc: lat: %{sensitive}f, lon: %{sensitive}f, horAcc: %{private}f,\nTimestamp: %{private}s.", v37, 0x3Eu);
        swift_arrayDestroy();

        result = (v41)(v70, v35);
        v8 = v72;
      }

      else
      {

        v51 = *v73;
        (*v73)(v33, v35);
        result = (v51)(v34, v35);
        v8 = v11;
      }

      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v54 = v0[12];
    v55 = v0[13];
    v56 = v0[11];
    v75 = v0[10];
    v77 = v0[7];
    v57 = v0[3];
    v58 = v0[4];
    v59 = v0[2];

    v60 = *(v57 + 48);
    type metadata accessor for WorkItemQueue.WorkItem();
    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v59;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v62 = v0[1];

    return v62();
  }

  else
  {
LABEL_5:
    if (v63 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v63;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v63)
      {
        v52 = v0[13];
        v53 = sub_1000BC4D4(&qword_101696998, &qword_10138B258);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v6 = 0;
        goto LABEL_13;
      }

      v6 = *(v64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000C674C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_1016969A8, &unk_10138B270);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6838, 0, 0);
}

uint64_t sub_1000C6838()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v4 + 32);
  *(v0 + 121) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);

  if (v8)
  {
    v41 = v3;
    v43 = v2;
    v44 = v1;
    v9 = 0;
LABEL_9:
    *(v0 + 80) = v8;
    *(v0 + 88) = v9;
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v42 = *(v0 + 56);
    v40 = *(v0 + 24);
    v13 = __clz(__rbit64(v8)) | (v9 << 6);
    v14 = *(v4 + 48);
    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v12, v14 + *(v16 + 72) * v13, v15);
    v17 = *(v4 + 56) + 40 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = v11;
    v39 = v11;
    v24 = v11 + *(v41 + 48);
    (*(v16 + 32))(v23, v12, v15);
    *v24 = v18;
    *(v24 + 8) = v19;
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    v25 = objc_allocWithZone(SPDelegatedLocationResult);
    sub_1000D2A24();
    sub_1000D2E90(&qword_1016967B0, 255, &type metadata accessor for UUID);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v27 = [v25 initWithResults:isa];
    *(v0 + 96) = v27;

    sub_1000D2A70(v39, v42, &qword_1016969A8, &unk_10138B270);
    v28 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v29 = swift_allocObject();
    *(v0 + 104) = v29;
    sub_1000D2AD8(v42, v29 + v28, &qword_1016969A8, &unk_10138B270);
    *(v29 + ((v44 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v30 = async function pointer to unsafeBlocking<A>(_:)[1];
    v31 = v27;
    v32 = swift_task_alloc();
    *(v0 + 112) = v32;
    v33 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v32 = v0;
    v32[1] = sub_1000C6C28;

    return unsafeBlocking<A>(_:)(v0 + 120, sub_1000D2B40, v29, v33);
  }

  else
  {
    v10 = 0;
    while (((63 - v7) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v8 = *(v4 + 8 * v10++ + 72);
      if (v8)
      {
        v41 = v3;
        v43 = v2;
        v44 = v1;
        goto LABEL_9;
      }
    }

    v34 = *(v0 + 64);
    v35 = *(v0 + 72);
    v36 = *(v0 + 56);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_1000C6C28()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1000C6D40, 0, 0);
}

uint64_t sub_1000C6D40()
{
  v1 = *(v0 + 64);

  v2 = sub_10000B3A8(v1, &qword_1016969A8, &unk_10138B270);
  v6 = *(v0 + 88);
  v7 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v7)
  {
    v8 = *(v0 + 16);
LABEL_7:
    *(v0 + 80) = v7;
    *(v0 + 88) = v6;
    v10 = *(v0 + 72);
    v38 = *(v0 + 56);
    v40 = *(v0 + 48);
    v41 = *(v0 + 64);
    v11 = *(v0 + 32);
    v39 = *(v0 + 40);
    v37 = *(v0 + 24);
    v12 = __clz(__rbit64(v7)) | (v6 << 6);
    v13 = *(v8 + 48);
    v14 = type metadata accessor for UUID();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v10, v13 + *(v15 + 72) * v12, v14);
    v16 = *(v8 + 56) + 40 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v41 + *(v11 + 48);
    (*(v15 + 32))();
    *v22 = v18;
    *(v22 + 8) = v17;
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
    v23 = objc_allocWithZone(SPDelegatedLocationResult);
    sub_1000D2A24();
    sub_1000D2E90(&qword_1016967B0, 255, &type metadata accessor for UUID);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v25 = [v23 initWithResults:isa];
    *(v0 + 96) = v25;

    sub_1000D2A70(v41, v38, &qword_1016969A8, &unk_10138B270);
    v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v27 = swift_allocObject();
    *(v0 + 104) = v27;
    sub_1000D2AD8(v38, v27 + v26, &qword_1016969A8, &unk_10138B270);
    *(v27 + ((v40 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v28 = async function pointer to unsafeBlocking<A>(_:)[1];
    v29 = v25;
    v30 = swift_task_alloc();
    *(v0 + 112) = v30;
    v5 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v30 = v0;
    v30[1] = sub_1000C6C28;
    v3 = sub_1000D2B40;
    v2 = v0 + 120;
    v4 = v27;

    return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
  }

  else
  {
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
      }

      if (v9 >= (((1 << *(v0 + 121)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v0 + 16);
      v7 = *(v8 + 8 * v9 + 64);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = *(v0 + 56);
    v34 = *(v0 + 16);

    v35 = *(v0 + 8);

    return v35();
  }
}

BOOL sub_1000C7128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016969A8, &unk_10138B270);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  sub_1000D2A70(a1, &v16 - v7, &qword_1016969A8, &unk_10138B270);
  v9 = &v8[*(v5 + 56)];
  v10 = *v9;
  v11 = *(v9 + 2);

  v12 = *(v9 + 3);

  XPCSession.proxy.getter();

  v13 = v17;
  if (v17)
  {
    [v17 didPublishDelegatedLocation:a2];
    swift_unknownObjectRelease();
  }

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v8, v14);
  return v13 == 0;
}

Swift::Int sub_1000C7264()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C72AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000C72F0()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);

  OS_dispatch_queue.sync<A>(execute:)();

  sub_101073404(v4);
  v2 = v1;

  qword_1016967C0 = v2;
  return result;
}

uint64_t sub_1000C73BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016969F0, &qword_10138B288) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7510, v1, 0);
}

uint64_t sub_1000C7510()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v0[12] = 0;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1000C760C;
    v5 = v0[3];
    v4 = v0[4];

    return sub_1000D13EC(v4, v1 + 32);
  }

  else
  {
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000C760C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000C771C, v2, 0);
}

uint64_t sub_1000C771C()
{
  v1 = v0[4];
  v2 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_1016969F0, &qword_10138B288);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AE28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to extract share identifier and location timestamp from the delegated payload. Cannot set last delegated publish date", v6, 2u);
    }

    v7 = v0[12] + 1;
    if (v7 == v0[11])
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = v0[4];

      v11 = v0[1];

      return v11();
    }

    else
    {
      v0[12] = v7;
      v21 = v0[2] + 40 * v7;
      v22 = swift_task_alloc();
      v0[13] = v22;
      *v22 = v0;
      v22[1] = sub_1000C760C;
      v24 = v0[3];
      v23 = v0[4];

      return sub_1000D13EC(v23, v21 + 32);
    }
  }

  else
  {
    v13 = v0[7];
    v14 = v0[5];
    v15 = v0[6];
    v16 = *(v2 + 48);
    (*(v0[9] + 32))(v0[10], v1, v0[8]);
    (*(v15 + 32))(v13, v1 + v16, v14);
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_1000C7A1C;
    v18 = v0[10];
    v19 = v0[7];
    v20 = v0[3];

    return sub_1000C7C74(v18, v19);
  }
}

uint64_t sub_1000C7A1C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000C7B2C, v2, 0);
}

uint64_t sub_1000C7B2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[12] + 1;
  if (v4 == v0[11])
  {
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[4];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[12] = v4;
    v10 = v0[2] + 40 * v4;
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1000C760C;
    v13 = v0[3];
    v12 = v0[4];

    return sub_1000D13EC(v12, v10 + 32);
  }
}

uint64_t sub_1000C7C74(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000C7D38, v2, 0);
}

uint64_t sub_1000C7D38()
{
  v1 = *(*(v0 + 40) + 144);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_1000C7D5C, v1, 0);
}

uint64_t sub_1000C7D5C()
{
  v1 = *(v0 + 72);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1000C7E3C;
  v5 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1000C7E3C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1000C7F54, v2, 0);
}

uint64_t sub_1000C7F54()
{
  v0[11] = v0[2];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1000C7FF0;
  v3 = v0[3];
  v2 = v0[4];

  return sub_1012DBF68(v3, v2);
}

uint64_t sub_1000C7FF0()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_1000C8134, v4, 0);
  }

  else
  {
    v5 = v3[11];

    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1000C8134()
{
  v28 = v0;
  v1 = v0[11];

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE28);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[13];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136315394;
    sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unable to update last delegated publish date in the local DB for share id %s, error %{public}@", v15, 0x16u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {
    v21 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000C8400()
{
  v1[10] = v0;
  v1[11] = *v0;
  v2 = type metadata accessor for UUID();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v1[14] = *(v3 + 64);
  v1[15] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1[16] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  v1[23] = v9;
  v10 = *(v9 - 8);
  v1[24] = v10;
  v11 = *(v10 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[27] = v12;
  v1[28] = *(v12 + 64);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8680, v0, 0);
}

uint64_t sub_1000C8680()
{
  *(v0 + 56) = _swiftEmptyArrayStorage;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = qword_10177B348;

  return _swift_task_switch(sub_1000C8728, 0, 0);
}

uint64_t sub_1000C8728()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_1000C87EC;
  v4 = *(v0 + 248);

  return unsafeBlocking<A>(_:)(v0 + 64, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_1000C87EC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_1000C8904, 0, 0);
}

uint64_t sub_1000C8904()
{
  v1 = v0[10];
  v0[33] = v0[8];
  return _swift_task_switch(sub_1000C8928, v1, 0);
}

uint64_t sub_1000C8928()
{
  v1 = sub_101073410(v0[33]);

  if (v1)
  {
    v3 = v0[29];
    v2 = v0[30];
    v5 = v0[25];
    v4 = v0[26];
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[17];
    v10 = v0[15];

    v11 = v0[1];

    return v11(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = v0[30];
    v14 = v0[12];
    v15 = v0[13];
    v16 = *(v0[10] + 144);
    v0[34] = v16;
    (*(v15 + 56))(v13, 1, 1, v14);

    return _swift_task_switch(sub_1000C8A8C, v16, 0);
  }
}

uint64_t sub_1000C8A8C()
{
  v1 = v0[34];
  v2 = v0[29];
  v4 = v0[27];
  v3 = v0[28];
  sub_1000D2A70(v0[30], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[35] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[36] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1000C8C08;

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_1000C8C08()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_1000C8D34, v3, 0);
}

uint64_t sub_1000C8D34()
{
  v1 = v0[10];
  sub_10000B3A8(v0[30], &qword_1016980D0, &unk_10138F3B0);
  v0[37] = v0[9];

  return _swift_task_switch(sub_1000C8DB8, v1, 0);
}

uint64_t sub_1000C8DB8()
{
  v1 = *(v0[37] + 16);
  v0[38] = v1;
  if (v1)
  {
    v2 = async function pointer to daemon.getter[1];
    v3 = swift_task_alloc();
    v0[39] = v3;
    *v3 = v0;
    v3[1] = sub_1000C8F18;

    return daemon.getter();
  }

  else
  {

    v5 = v0[29];
    v4 = v0[30];
    v7 = v0[25];
    v6 = v0[26];
    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[20];
    v11 = v0[17];
    v12 = v0[15];

    v13 = v0[1];

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000C8F18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  v12 = *v1;
  v3[40] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[41] = v6;
  v7 = type metadata accessor for Daemon();
  v3[42] = v7;
  v8 = type metadata accessor for LeaderCheckService();
  v9 = sub_1000D2E90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[43] = v9;
  v10 = sub_1000D2E90(&unk_1016969D0, 255, type metadata accessor for LeaderCheckService);
  *v6 = v12;
  v6[1] = sub_1000C910C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000C910C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  v4[44] = a1;
  v4[45] = v1;

  v7 = v4[40];
  if (v1)
  {
    v8 = v4[37];
    v9 = v4[10];

    return _swift_task_switch(sub_1000CAE4C, v9, 0);
  }

  else
  {

    v10 = swift_task_alloc();
    v4[46] = v10;
    *v10 = v6;
    v10[1] = sub_1000C92C0;

    return sub_10041CAE0();
  }
}

uint64_t sub_1000C92C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = v1;

  v7 = *(v4 + 80);
  if (v1)
  {
    v8 = sub_1000CAF24;
  }

  else
  {
    *(v4 + 536) = a1 & 1;
    v8 = sub_1000C9400;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000C9400()
{
  if (*(v0 + 536))
  {
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 384) = sub_1000076D4(v1, qword_10177AE28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "I am the leader. Will proceed to publishing delegated locations.", v4, 2u);
    }

    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    *(v0 + 392) = v6;
    *v6 = v0;
    v6[1] = sub_1000C96D4;

    return daemon.getter();
  }

  else
  {
    v7 = *(v0 + 296);

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AE28);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 352);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Will skip publishing delegated locations because I am not the leader", v13, 2u);
    }

    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 160);
    v21 = *(v0 + 136);
    v22 = *(v0 + 120);

    v23 = *(v0 + 8);

    return v23(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000C96D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v5 = *v1;
  v3[50] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[51] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_1000D2E90(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_1000C988C;
  v10 = v3[43];
  v11 = v3[42];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1000C988C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v7 = v4[50];
    v8 = v4[37];

    v4[59] = v1;
    v9 = v4[10];
    v10 = sub_1000C9EE0;
  }

  else
  {
    v10 = sub_1000C99D4;
    v9 = a1;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000C99D4()
{
  v1 = v0[52];
  v2 = v0[53];
  sub_10001B108();
  v0[54] = v3;
  v0[55] = v2;
  v4 = v0[50];
  v5 = v0[42];
  if (v2)
  {
    v6 = v0[37];

    sub_1000D2E90(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_1000C9E64;
  }

  else
  {
    sub_1000D2E90(&qword_1016969E0, 255, &type metadata accessor for Daemon);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_1000C9B04;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1000C9B04()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[10];

  return _swift_task_switch(sub_1000C9B7C, v3, 0);
}

uint64_t sub_1000C9B7C()
{
  v1 = v0[54];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[56] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_1000C9C84;

  return unsafeBlocking<A>(context:_:)(v5, 0xD00000000000001FLL, 0x800000010138B060, sub_1000D2DAC, v3, &type metadata for () + 8);
}

uint64_t sub_1000C9C84()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1000C9DB0, v3, 0);
}

uint64_t sub_1000C9DB0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v2 + 80);
  *(v0 + 528) = v4;
  *(v0 + 464) = *(v2 + 72);
  *(v0 + 480) = 0;
  v5 = *(v0 + 272);
  sub_1000D2ED8(v1 + ((v4 + 32) & ~v4), *(v0 + 208), type metadata accessor for OwnerSharingCircle);
  *(v0 + 532) = *(v3 + 24);

  return _swift_task_switch(sub_1000C9FC0, v5, 0);
}

uint64_t sub_1000C9E64()
{
  v1 = v0[52];
  v2 = v0[50];

  v0[59] = v0[55];
  v3 = v0[10];

  return _swift_task_switch(sub_1000C9EE0, v3, 0);
}

uint64_t sub_1000C9EE0()
{
  v1 = v0[44];

  v2 = v0[59];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C9FC0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(v4 + 16))(v2, *(v0 + 208) + *(v0 + 532), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 488) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *v8 = v0;
  v8[1] = sub_1000CA120;
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v6, v10);
}

uint64_t sub_1000CA120()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_1000CA24C, v3, 0);
}

uint64_t sub_1000CA24C()
{
  v56 = v0;
  v1 = *(v0 + 136);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    v2 = *(v0 + 384);
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    sub_1000D2ED8(v3, v4, type metadata accessor for OwnerSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    if (v7)
    {
      v10 = *(v0 + 184);
      v11 = *(v0 + 96);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = *(v10 + 24);
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1000D2F40(v9, type metadata accessor for OwnerSharingCircle);
      v18 = sub_1000136BC(v15, v17, &v55);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Owned beacon record not found for delegated beacon identifier %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      sub_1000D2F40(v9, type metadata accessor for OwnerSharingCircle);
    }

    v19 = v8;
LABEL_8:
    sub_1000D2F40(v19, type metadata accessor for OwnerSharingCircle);
    v22 = *(v0 + 480) + 1;
    if (v22 == *(v0 + 304))
    {
      v23 = *(v0 + 384);
      v24 = *(v0 + 296);
      v25 = *(v0 + 56);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 432);
      v30 = *(v0 + 352);
      v31 = *(v0 + 296);
      if (v28)
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = *(v25 + 16);

        *(v32 + 12) = 2048;
        v33 = *(v31 + 16);

        *(v32 + 14) = v33;

        _os_log_impl(&_mh_execute_header, v26, v27, "Got %ld payloads to publish for %ld delegated beacons.", v32, 0x16u);
      }

      else
      {
        v43 = *(v0 + 296);
        swift_bridgeObjectRelease_n();
      }

      v45 = *(v0 + 232);
      v44 = *(v0 + 240);
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);
      v49 = *(v0 + 168);
      v48 = *(v0 + 176);
      v50 = *(v0 + 160);
      v51 = *(v0 + 136);
      v52 = *(v0 + 120);

      v53 = *(v0 + 8);

      return v53(v25);
    }

    else
    {
      *(v0 + 480) = v22;
      v34 = *(v0 + 272);
      v35 = *(v0 + 184);
      sub_1000D2ED8(*(v0 + 296) + ((*(v0 + 528) + 32) & ~*(v0 + 528)) + *(v0 + 464) * v22, *(v0 + 208), type metadata accessor for OwnerSharingCircle);
      *(v0 + 532) = *(v35 + 24);

      return _swift_task_switch(sub_1000C9FC0, v34, 0);
    }
  }

  v20 = *(v0 + 208);
  sub_1000D2E28(v1, *(v0 + 176), type metadata accessor for OwnedBeaconRecord);
  type metadata accessor for DelegatedShareUseCase();
  if (sub_10059DE04(v20))
  {
    v21 = *(v0 + 208);
    sub_1000D2F40(*(v0 + 176), type metadata accessor for OwnedBeaconRecord);
    v19 = v21;
    goto LABEL_8;
  }

  v36 = *(v0 + 208);
  v37 = *(v0 + 176);
  v38 = *(v0 + 184);
  *(v0 + 40) = *(v0 + 144);
  *(v0 + 48) = sub_1000D2E90(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
  v39 = sub_1000280DC((v0 + 16));
  sub_1000D2ED8(v37, v39, type metadata accessor for OwnedBeaconRecord);
  v40 = *(v38 + 20);
  v41 = swift_task_alloc();
  *(v0 + 504) = v41;
  *v41 = v0;
  v41[1] = sub_1000CA844;
  v42 = *(v0 + 80);

  return sub_1000CE264(v0 + 16, v36 + v40);
}

uint64_t sub_1000CA844(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[63];
  v9 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = sub_1000CB1BC;
  }

  else
  {
    v7 = v3[10];
    sub_100007BAC(v3 + 2);
    v6 = sub_1000CA970;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CA970()
{
  v49 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 176);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 208);
    sub_100397E8C(v1);
    sub_1000D2F40(v2, type metadata accessor for OwnedBeaconRecord);
    v4 = v3;
  }

  else
  {
    v5 = *(v0 + 384);
    v6 = *(v0 + 168);

    sub_1000D2ED8(v2, v6, type metadata accessor for OwnedBeaconRecord);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 208);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    if (v9)
    {
      v13 = *(v0 + 144);
      v14 = *(v0 + 96);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v17 = *(v13 + 20);
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_1000D2F40(v12, type metadata accessor for OwnedBeaconRecord);
      v21 = sub_1000136BC(v18, v20, &v48);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "No observations to publish for device %{private,mask.hash}s.", v15, 0x16u);
      sub_100007BAC(v16);

      sub_1000D2F40(v11, type metadata accessor for OwnedBeaconRecord);
    }

    else
    {

      sub_1000D2F40(v12, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2F40(v11, type metadata accessor for OwnedBeaconRecord);
    }

    v4 = v10;
  }

  sub_1000D2F40(v4, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 480) + 1;
  if (v22 == *(v0 + 304))
  {
    v23 = *(v0 + 384);
    v24 = *(v0 + 296);
    v25 = *(v0 + 56);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 432);
    v30 = *(v0 + 352);
    v31 = *(v0 + 296);
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = *(v25 + 16);

      *(v32 + 12) = 2048;
      v33 = *(v31 + 16);

      *(v32 + 14) = v33;

      _os_log_impl(&_mh_execute_header, v26, v27, "Got %ld payloads to publish for %ld delegated beacons.", v32, 0x16u);
    }

    else
    {
      v36 = *(v0 + 296);
      swift_bridgeObjectRelease_n();
    }

    v38 = *(v0 + 232);
    v37 = *(v0 + 240);
    v40 = *(v0 + 200);
    v39 = *(v0 + 208);
    v42 = *(v0 + 168);
    v41 = *(v0 + 176);
    v43 = *(v0 + 160);
    v44 = *(v0 + 136);
    v45 = *(v0 + 120);

    v46 = *(v0 + 8);

    return v46(v25);
  }

  else
  {
    *(v0 + 480) = v22;
    v34 = *(v0 + 272);
    v35 = *(v0 + 184);
    sub_1000D2ED8(*(v0 + 296) + ((*(v0 + 528) + 32) & ~*(v0 + 528)) + *(v0 + 464) * v22, *(v0 + 208), type metadata accessor for OwnerSharingCircle);
    *(v0 + 532) = *(v35 + 24);

    return _swift_task_switch(sub_1000C9FC0, v34, 0);
  }
}

uint64_t sub_1000CAE4C()
{
  v1 = v0[45];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000CAF24()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[47];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "LeaderCheckService error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v0[48] = sub_1000076D4(v2, qword_10177AE28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "I am the leader. Will proceed to publishing delegated locations.", v12, 2u);
  }

  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v0[49] = v14;
  *v14 = v0;
  v14[1] = sub_1000C96D4;

  return daemon.getter();
}

uint64_t sub_1000CB1BC()
{
  v53 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 384);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  sub_100007BAC((v0 + 16));
  sub_1000D2ED8(v3, v4, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 520);
  v9 = *(v0 + 208);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  if (v7)
  {
    v12 = *(v0 + 144);
    v51 = *(v0 + 208);
    v13 = *(v0 + 96);
    v50 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v17 = *(v12 + 20);
    sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_1000D2F40(v11, type metadata accessor for OwnedBeaconRecord);
    v21 = sub_1000136BC(v18, v20, &v52);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v22;
    *v15 = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error gathering delegation payloads for owned device %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v16);

    sub_1000D2F40(v50, type metadata accessor for OwnedBeaconRecord);
    v23 = v51;
  }

  else
  {

    sub_1000D2F40(v11, type metadata accessor for OwnedBeaconRecord);
    sub_1000D2F40(v10, type metadata accessor for OwnedBeaconRecord);
    v23 = v9;
  }

  sub_1000D2F40(v23, type metadata accessor for OwnerSharingCircle);
  v24 = *(v0 + 480) + 1;
  if (v24 == *(v0 + 304))
  {
    v25 = *(v0 + 384);
    v26 = *(v0 + 296);
    v27 = *(v0 + 56);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 432);
    v32 = *(v0 + 352);
    v33 = *(v0 + 296);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = *(v27 + 16);

      *(v34 + 12) = 2048;
      v35 = *(v33 + 16);

      *(v34 + 14) = v35;

      _os_log_impl(&_mh_execute_header, v28, v29, "Got %ld payloads to publish for %ld delegated beacons.", v34, 0x16u);
    }

    else
    {
      v38 = *(v0 + 296);
      swift_bridgeObjectRelease_n();
    }

    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    v42 = *(v0 + 200);
    v41 = *(v0 + 208);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);
    v46 = *(v0 + 136);
    v47 = *(v0 + 120);

    v48 = *(v0 + 8);

    return v48(v27);
  }

  else
  {
    *(v0 + 480) = v24;
    v36 = *(v0 + 272);
    v37 = *(v0 + 184);
    sub_1000D2ED8(*(v0 + 296) + ((*(v0 + 528) + 32) & ~*(v0 + 528)) + *(v0 + 464) * v24, *(v0 + 208), type metadata accessor for OwnerSharingCircle);
    *(v0 + 532) = *(v37 + 24);

    return _swift_task_switch(sub_1000C9FC0, v36, 0);
  }
}

uint64_t sub_1000CB6D0(uint64_t a1)
{
  if (qword_101694410 != -1)
  {
    swift_once();
  }

  v2 = qword_1016967C0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074054(aBlock[0]);
  v5 = v4;

  v6 = *(a1 + 88);
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  *(v7 + 24) = a1;
  *(v7 + 32) = v5;
  *(v7 + 40) = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000D2FA0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10160E8E8;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CB8EC(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v2[37] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[40] = v6;
  v7 = *(v6 - 8);
  v2[41] = v7;
  v8 = *(v7 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000CBA2C, v1, 0);
}

uint64_t sub_1000CBA2C()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Did publish delegated locations.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = sub_1000CBB78;

  return daemon.getter();
}

uint64_t sub_1000CBB78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 360);
  v12 = *v1;
  *(v3 + 368) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 376) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_1000D2E90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000D2E90(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1000CBD5C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000CBD5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v10 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[36];
    v6 = sub_1000CCD70;
  }

  else
  {
    v7 = v3[46];
    v8 = v3[36];

    v6 = sub_1000CBE84;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CBE84()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for JSONDecoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 400) = JSONDecoder.init()();
  v5 = sub_100907BB4(_swiftEmptyArrayStorage);
  *(v0 + 264) = v5;
  v6 = *(v1 + 16);
  *(v0 + 408) = v6;
  if (!v6)
  {
    v12 = v5;
    v13 = *(v0 + 392);
    v14 = *(v0 + 400);
    v15 = *(v0 + 384);
    v16 = *(v0 + 344);
    v17 = *(v0 + 352);
    v63 = *(v0 + 336);
    v64 = *(v0 + 312);
    v65 = *(v0 + 304);
    v18 = *(*(v0 + 288) + 136);
    v19 = *(v18 + 40);
    sub_1000BC4D4(&qword_101696988, &qword_10138B238);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v20 = *(v0 + 272);
    type metadata accessor for Transaction();
    v21 = swift_allocObject();
    v21[2] = v12;
    v21[3] = v18;
    v21[4] = v20;

    static Transaction.asyncTask(name:block:)();

    v22 = *(v0 + 8);
LABEL_17:

    return v22();
  }

  v7 = *(v0 + 280);
  v8 = *(v0 + 392);
  *(v0 + 416) = SPBeaconLocationSourceUnknown;
  *(v0 + 424) = 0;
  sub_10001F280(v7 + 32, v0 + 144);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v9);
  (*(v10 + 64))(v9, v10);
  swift_getAssociatedTypeWitness();
  sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
  v11 = _arrayForceCast<A, B>(_:)();

  if (*(v11 + 16))
  {
    sub_10001F280(v11 + 32, v0 + 184);
  }

  else
  {

    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
  }

  sub_1000D2A70(v0 + 184, v0 + 224, &qword_101696978, &qword_10138B230);
  v23 = *(v0 + 248);
  v24 = *(v0 + 400);
  if (!v23)
  {
    v32 = *(v0 + 384);
    v33 = *(v0 + 264);

    sub_10000B3A8(v0 + 224, &qword_101696978, &qword_10138B230);
    sub_1000D26C4();
    swift_allocError();
    *v34 = 5;
    swift_willThrow();

    v35 = v0 + 184;
LABEL_15:
    sub_10000B3A8(v35, &qword_101696978, &qword_10138B230);
    goto LABEL_16;
  }

  v25 = *(v0 + 256);
  sub_1000035D0((v0 + 224), *(v0 + 248));
  v26 = (*(v25 + 24))(v23, v25);
  v28 = v27;
  *(v0 + 432) = v26;
  *(v0 + 440) = v27;
  sub_100007BAC((v0 + 224));
  sub_1000D27EC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v8)
  {
    v29 = *(v0 + 400);
    v30 = *(v0 + 384);
    sub_100016590(v26, v28);

    sub_10000B3A8(v0 + 184, &qword_101696978, &qword_10138B230);
    v31 = *(v0 + 264);

LABEL_16:
    sub_100007BAC((v0 + 144));
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v54 = *(v0 + 336);
    v56 = *(v0 + 304);
    v55 = *(v0 + 312);

    v22 = *(v0 + 8);
    goto LABEL_17;
  }

  v36 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v36;
  v37 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v37;
  v38 = *(v0 + 168);
  v39 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v38);
  (*(v39 + 72))(v38, v39);
  if (!v40)
  {
    v48 = *(v0 + 400);
    v49 = *(v0 + 384);
    v50 = *(v0 + 264);

    goto LABEL_14;
  }

  v41 = *(v0 + 320);
  v42 = *(v0 + 328);
  v43 = *(v0 + 312);
  UUID.init(uuidString:)();

  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v44 = *(v0 + 400);
    v45 = *(v0 + 384);
    v46 = *(v0 + 312);
    v47 = *(v0 + 264);

    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
LABEL_14:
    sub_1000D26C4();
    swift_allocError();
    *v51 = 5;
    swift_willThrow();
    sub_100016590(v26, v28);
    sub_1000D2840(v0 + 16);

    v35 = v0 + 184;
    goto LABEL_15;
  }

  v58 = *(v0 + 384);
  (*(*(v0 + 328) + 32))(*(v0 + 352), *(v0 + 312), *(v0 + 320));
  *(v0 + 448) = *(v58 + 128);

  v59 = swift_task_alloc();
  *(v0 + 456) = v59;
  *v59 = v0;
  v59[1] = sub_1000CC4CC;
  v60 = *(v0 + 344);
  v61 = *(v0 + 352);
  v62 = *(v0 + 304);

  return sub_100CFFB38(v60, v62, v0 + 16, v61);
}

uint64_t sub_1000CC4CC()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v12 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[36];
    v6 = v2[33];

    v7 = sub_1000CCE14;
    v8 = v5;
  }

  else
  {
    v9 = v2[56];
    v10 = v2[36];

    v7 = sub_1000CC614;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000CC614()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 344);
  v74 = v1;
  v75 = *(v0 + 352);
  v5 = *(v0 + 328);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);
  v77 = *(v0 + 424) + 1;
  v79 = *(v0 + 408);
  (*(v5 + 16))(v6, v4, v7);
  v10 = *(v8 + 28);
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = objc_allocWithZone(SPBeaconLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithTimestamp:isa latitude:v3 longitude:v11 horizontalAccuracy:v12 source:v13];

  sub_1001DD16C(v16, v6);
  sub_100016590(v2, v74);
  sub_1000D2840(v0 + 16);
  sub_1000D2F40(v9, type metadata accessor for DeviceEventFormat.LocationFormat);
  v17 = *(v5 + 8);
  v17(v4, v7);
  v17(v75, v7);
  sub_10000B3A8(v0 + 184, &qword_101696978, &qword_10138B230);
  sub_100007BAC((v0 + 144));
  if (v77 == v79)
  {
    v18 = *(v0 + 264);
    v19 = *(v0 + 464);
    v20 = *(v0 + 400);
    v21 = *(v0 + 384);
    v22 = *(v0 + 344);
    v23 = *(v0 + 352);
    v76 = *(v0 + 336);
    v78 = *(v0 + 312);
    v80 = *(v0 + 304);
    v24 = *(*(v0 + 288) + 136);
    v25 = *(v24 + 40);
    sub_1000BC4D4(&qword_101696988, &qword_10138B238);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v26 = *(v0 + 272);
    type metadata accessor for Transaction();
    v27 = swift_allocObject();
    v27[2] = v18;
    v27[3] = v24;
    v27[4] = v26;

    static Transaction.asyncTask(name:block:)();

    v28 = *(v0 + 8);
LABEL_17:

    return v28();
  }

  v29 = *(v0 + 464);
  v30 = *(v0 + 424);
  *(v0 + 424) = v30 + 1;
  sub_10001F280(*(v0 + 280) + 40 * v30 + 72, v0 + 144);
  v31 = *(v0 + 168);
  v32 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v31);
  (*(v32 + 64))(v31, v32);
  swift_getAssociatedTypeWitness();
  sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
  v33 = _arrayForceCast<A, B>(_:)();

  if (*(v33 + 16))
  {
    sub_10001F280(v33 + 32, v0 + 184);
  }

  else
  {

    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
  }

  sub_1000D2A70(v0 + 184, v0 + 224, &qword_101696978, &qword_10138B230);
  v34 = *(v0 + 248);
  v35 = *(v0 + 400);
  if (!v34)
  {
    v43 = *(v0 + 384);
    v44 = *(v0 + 264);

    sub_10000B3A8(v0 + 224, &qword_101696978, &qword_10138B230);
    sub_1000D26C4();
    swift_allocError();
    *v45 = 5;
    swift_willThrow();

    v46 = v0 + 184;
LABEL_15:
    sub_10000B3A8(v46, &qword_101696978, &qword_10138B230);
    goto LABEL_16;
  }

  v36 = *(v0 + 256);
  sub_1000035D0((v0 + 224), *(v0 + 248));
  v37 = (*(v36 + 24))(v34, v36);
  v39 = v38;
  *(v0 + 432) = v37;
  *(v0 + 440) = v38;
  sub_100007BAC((v0 + 224));
  sub_1000D27EC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v29)
  {
    v40 = *(v0 + 400);
    v41 = *(v0 + 384);
    sub_100016590(v37, v39);

    sub_10000B3A8(v0 + 184, &qword_101696978, &qword_10138B230);
    v42 = *(v0 + 264);

LABEL_16:
    sub_100007BAC((v0 + 144));
    v64 = *(v0 + 344);
    v63 = *(v0 + 352);
    v65 = *(v0 + 336);
    v67 = *(v0 + 304);
    v66 = *(v0 + 312);

    v28 = *(v0 + 8);
    goto LABEL_17;
  }

  v47 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v47;
  v48 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v48;
  v49 = *(v0 + 168);
  v50 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v49);
  (*(v50 + 72))(v49, v50);
  if (!v51)
  {
    v59 = *(v0 + 400);
    v60 = *(v0 + 384);
    v61 = *(v0 + 264);

    goto LABEL_14;
  }

  v52 = *(v0 + 320);
  v53 = *(v0 + 328);
  v54 = *(v0 + 312);
  UUID.init(uuidString:)();

  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
    v55 = *(v0 + 400);
    v56 = *(v0 + 384);
    v57 = *(v0 + 312);
    v58 = *(v0 + 264);

    sub_10000B3A8(v57, &qword_1016980D0, &unk_10138F3B0);
LABEL_14:
    sub_1000D26C4();
    swift_allocError();
    *v62 = 5;
    swift_willThrow();
    sub_100016590(v37, v39);
    sub_1000D2840(v0 + 16);

    v46 = v0 + 184;
    goto LABEL_15;
  }

  v69 = *(v0 + 384);
  (*(*(v0 + 328) + 32))(*(v0 + 352), *(v0 + 312), *(v0 + 320));
  *(v0 + 448) = *(v69 + 128);

  v70 = swift_task_alloc();
  *(v0 + 456) = v70;
  *v70 = v0;
  v70[1] = sub_1000CC4CC;
  v71 = *(v0 + 344);
  v72 = *(v0 + 352);
  v73 = *(v0 + 304);

  return sub_100CFFB38(v71, v73, v0 + 16, v72);
}

uint64_t sub_1000CCD70()
{
  v1 = v0[46];

  v2 = v0[49];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000CCE14()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[40];
  v5 = v0[41];
  sub_100016590(v0[54], v0[55]);
  sub_1000D2840((v0 + 2));

  (*(v5 + 8))(v3, v4);
  sub_10000B3A8((v0 + 23), &qword_101696978, &qword_10138B230);
  sub_100007BAC(v0 + 18);
  v6 = v0[58];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v11 = v0[38];
  v10 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CCF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = type metadata accessor for BeaconEstimatedLocation();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v4[16] = v13;
  v14 = *(v13 - 8);
  v4[17] = v14;
  v4[18] = *(v14 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000CD13C, v3, 0);
}

uint64_t sub_1000CD13C()
{
  v1 = *(*(v0 + 56) + 144);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_1000CD160, v1, 0);
}

uint64_t sub_1000CD160()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[5];
  v6 = *(v3 + 16);
  v0[25] = v6;
  v0[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[27] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[28] = v10;
  v11 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v10 = v0;
  v10[1] = sub_1000CD2E4;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2770, v8, v11);
}

uint64_t sub_1000CD2E4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return _swift_task_switch(sub_1000CD410, v3, 0);
}

uint64_t sub_1000CD410()
{
  v1 = v0[7];
  v0[29] = v0[2];
  return _swift_task_switch(sub_1000CD434, v1, 0);
}

uint64_t sub_1000CD434()
{
  v40 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_1012BAB18(v0[29], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[12], &unk_101696940, &unk_10138B210);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177AE28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No localEstimated Location found.", v7, 2u);
    }

    v8 = v0[22];
    v9 = v0[23];
    v11 = v0[20];
    v10 = v0[21];
    v12 = v0[19];
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[11];
    v16 = v0[8];
    (*(v0[14] + 56))(v0[4], 1, 1, v0[13]);

    v17 = v0[1];

    return v17();
  }

  else
  {
    sub_1000D2E28(v0[12], v0[15], type metadata accessor for BeaconEstimatedLocation);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[22];
    v22 = v0[16];
    v23 = v0[5];
    v24 = type metadata accessor for Logger();
    v0[30] = sub_1000076D4(v24, qword_10177AE28);
    v20(v21, v23, v22);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[22];
    v29 = v0[16];
    v30 = v0[17];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v35 = *(v30 + 8);
      v35(v28, v29);
      v36 = sub_1000136BC(v32, v34, &v39);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Got localEstimated Location from beaconStore for %{private,mask.hash}s.", v31, 0x16u);
      sub_100007BAC(v38);
    }

    else
    {

      v35 = *(v30 + 8);
      v35(v28, v29);
    }

    v0[31] = v35;
    v37 = v0[24];

    return _swift_task_switch(sub_1000CD878, v37, 0);
  }
}

uint64_t sub_1000CD878()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1000CD958;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_1000CD958()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1000CDA70, v2, 0);
}

uint64_t sub_1000CDA70()
{
  v0[33] = v0[3];
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDB10;
  v2 = v0[8];
  v3 = v0[6];

  return sub_1012DAFE0(v2, v3);
}

uint64_t sub_1000CDB10()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1000CDC3C, v3, 0);
}

uint64_t sub_1000CDC3C()
{
  v75 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[30];
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[16];
    v11 = v0[5];
    v10 = v0[6];
    sub_10000B3A8(v3, &unk_101696900, &unk_10138B1E0);
    v6(v7, v10, v9);
    v6(v8, v11, v9);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[31];
    v17 = v0[19];
    v16 = v0[20];
    v19 = v0[16];
    v18 = v0[17];
    if (v14)
    {
      log = v12;
      v20 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v20 = 141558787;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v13;
      v23 = v22;
      v15(v16, v19);
      v24 = sub_1000136BC(v21, v23, &v74);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2160;
      *(v20 + 24) = 1752392040;
      *(v20 + 32) = 2081;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v15(v17, v19);
      v28 = sub_1000136BC(v25, v27, &v74);

      *(v20 + 34) = v28;
      _os_log_impl(&_mh_execute_header, log, v69, "Last publish date not found in local cache for share: %{private,mask.hash}s\nand beacon %{private,mask.hash}s. Return the location we have.", v20, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v15(v17, v19);
      v15(v16, v19);
    }

    v34 = v0[15];
    v35 = v0[4];
  }

  else
  {
    v29 = v0[15];
    v30 = v0[13];
    (*(v2 + 32))(v0[11], v3, v1);
    v31 = *(v30 + 40);
    if ((static Date.> infix(_:_:)() & 1) == 0)
    {
      v37 = v0[30];
      v38 = v0[26];
      (v0[25])(v0[21], v0[5], v0[16]);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v73 = v0[31];
      v42 = v0[21];
      v44 = v0[16];
      v43 = v0[17];
      v45 = v0[15];
      v47 = v0[10];
      v46 = v0[11];
      v48 = v0[9];
      if (v41)
      {
        loga = v0[9];
        v49 = swift_slowAlloc();
        v68 = v40;
        v50 = swift_slowAlloc();
        v74 = v50;
        *v49 = 141558275;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2081;
        sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
        v70 = v45;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v46;
        v53 = v52;
        v73(v42, v44);
        v54 = sub_1000136BC(v51, v53, &v74);

        *(v49 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v39, v68, "Stored location older than lastPublishDate: %{private,mask.hash}s.", v49, 0x16u);
        sub_100007BAC(v50);

        (*(v47 + 8))(v67, loga);
        v55 = v70;
      }

      else
      {

        v73(v42, v44);
        (*(v47 + 8))(v46, v48);
        v55 = v45;
      }

      sub_1000D2F40(v55, type metadata accessor for BeaconEstimatedLocation);
      v36 = 1;
      goto LABEL_13;
    }

    v32 = v0[15];
    v33 = v0[4];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v34 = v32;
    v35 = v33;
  }

  sub_1000D2E28(v34, v35, type metadata accessor for BeaconEstimatedLocation);
  v36 = 0;
LABEL_13:
  v56 = v0[22];
  v57 = v0[23];
  v59 = v0[20];
  v58 = v0[21];
  v60 = v0[19];
  v61 = v0[15];
  v62 = v0[12];
  v63 = v0[11];
  v64 = v0[8];
  (*(v0[14] + 56))(v0[4], v36, 1, v0[13]);

  v65 = v0[1];

  return v65();
}

uint64_t sub_1000CE264(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for BeaconEstimatedLocation();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE3D4, v2, 0);
}

uint64_t sub_1000CE3D4()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_1000CE4B4;
  v6 = v0[33];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];

  return sub_1000CCF18(v7, v6, v9);
}

uint64_t sub_1000CE4B4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1000CE5C4, v2, 0);
}

uint64_t sub_1000CE5C4()
{
  v30 = v0;
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    sub_10000B3A8(v1, &unk_101696940, &unk_10138B210);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v2 = v0[33];
    v4 = v0[30];
    v3 = v0[31];
    v5 = v0[29];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177CE28);
    (*(v4 + 16))(v3, v2, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_1000136BC(v14, v16, &v29);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "No new location available for delegated publish for : %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v28);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    v17(v0[33], v0[29]);
    v22 = v0[32];
    v21 = v0[33];
    v23 = v0[31];
    v24 = v0[28];
    v25 = v0[25];

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }

  else
  {
    sub_1000D2E28(v1, v0[28], type metadata accessor for BeaconEstimatedLocation);
    v19 = async function pointer to daemon.getter[1];
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = sub_1000CE94C;

    return daemon.getter();
  }
}

uint64_t sub_1000CE94C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  *(v3 + 288) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 296) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_1000D2E90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000D2E90(&unk_101696950, 255, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1000CEB30;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000CEB30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = sub_1000CEE24;
  }

  else
  {
    v9 = v4[36];

    v8 = sub_1000CEC68;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000CEC68()
{
  v1 = *(v0[38] + 128);
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_1000CED0C;
  v3 = v0[28];
  v4 = v0[23];

  return sub_100CFDEA8((v0 + 9), v4, v3);
}

uint64_t sub_1000CED0C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1000CF37C;
  }

  else
  {
    v4 = *(v2 + 304);
    v5 = sub_1000CF184;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000CEE24()
{
  v33 = v0;
  v1 = v0[36];

  v2 = v0[39];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177CE28);
  (*(v5 + 16))(v4, v3, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  if (v10)
  {
    v29 = v9;
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v31 = *(v12 + 8);
    v31(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v32);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v28 = v19;
    _os_log_impl(&_mh_execute_header, v8, v29, "No delegation keys found for shared item: %{private,mask.hash}s, error %{public}@)", v14, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v30);
  }

  else
  {

    v31 = *(v12 + 8);
    v31(v11, v13);
  }

  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
  v24 = v0[28];
  v23 = v0[29];
  v25 = v0[25];
  swift_willThrow();
  sub_1000D2F40(v24, type metadata accessor for BeaconEstimatedLocation);
  v31(v20, v23);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000CF184()
{
  v1 = *(v0 + 192);
  *(v0 + 152) = &type metadata for OwnSubmitPayload;
  *(v0 + 160) = sub_1000D271C();
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  v3 = *(v0 + 88);
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 104);
  *(v2 + 64) = *(v0 + 120);

  return _swift_task_switch(sub_1000CF230, v1, 0);
}

uint64_t sub_1000CF230()
{
  v1 = *(v0 + 304);

  v2 = sub_100A5B6C0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B6C0((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  sub_1000D2F40(*(v0 + 224), type metadata accessor for BeaconEstimatedLocation);
  (*(v7 + 8))(v5, v6);
  v2[2] = v4 + 1;
  sub_10000A748((v0 + 128), &v2[5 * v4 + 4]);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_1000CF37C()
{
  v39 = v0;
  *(v0 + 168) = *(v0 + 328);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 368) == 21;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v23 = *(v0 + 328);

    v24 = swift_task_alloc();
    *(v0 + 336) = v24;
    *v24 = v0;
    v24[1] = sub_1000CF7D8;
    v25 = *(v0 + 184);

    return sub_1003AD898(v25);
  }

  else
  {
    v2 = *(v0 + 328);
    v3 = *(v0 + 304);
    v4 = *(v0 + 168);

    swift_willThrow();

    v5 = *(v0 + 328);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177CE28);
    (*(v8 + 16))(v7, v6, v9);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 256);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    if (v13)
    {
      v35 = v12;
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v37 = *(v15 + 8);
      v37(v14, v16);
      v21 = sub_1000136BC(v18, v20, &v38);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v22;
      *v34 = v22;
      _os_log_impl(&_mh_execute_header, v11, v35, "No delegation keys found for shared item: %{private,mask.hash}s, error %{public}@)", v17, 0x20u);
      sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v36);
    }

    else
    {

      v37 = *(v15 + 8);
      v37(v14, v16);
    }

    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = *(v0 + 248);
    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    v32 = *(v0 + 200);
    swift_willThrow();
    sub_1000D2F40(v31, type metadata accessor for BeaconEstimatedLocation);
    v37(v27, v30);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1000CF7D8()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1000CFAAC;
  }

  else
  {
    v4 = *(v2 + 304);
    v5 = sub_1000CF8F0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000CF8F0()
{
  v1 = *(v0[38] + 128);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_1000CF994;
  v3 = v0[28];
  v4 = v0[23];

  return sub_100CFDEA8((v0 + 2), v4, v3);
}

uint64_t sub_1000CF994()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1000D0010;
  }

  else
  {
    v4 = *(v2 + 304);
    v5 = sub_1000CFE14;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000CFAAC()
{
  v34 = v0;
  v1 = v0[38];

  v2 = v0[21];

  v3 = v0[43];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CE28);
  (*(v6 + 16))(v5, v4, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  if (v11)
  {
    v30 = v10;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v32 = *(v13 + 8);
    v32(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v33);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v9, v30, "No delegation keys found for shared item: %{private,mask.hash}s, error %{public}@)", v15, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v31);
  }

  else
  {

    v32 = *(v13 + 8);
    v32(v12, v14);
  }

  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[25];
  swift_willThrow();
  sub_1000D2F40(v25, type metadata accessor for BeaconEstimatedLocation);
  v32(v21, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000CFE14()
{
  v1 = *(v0 + 192);
  *(v0 + 152) = &type metadata for OwnSubmitPayload;
  *(v0 + 160) = sub_1000D271C();
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 48);
  *(v2 + 64) = *(v0 + 64);

  return _swift_task_switch(sub_1000CFEBC, v1, 0);
}

uint64_t sub_1000CFEBC()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 168);

  v3 = sub_100A5B6C0(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5B6C0((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  sub_1000D2F40(*(v0 + 224), type metadata accessor for BeaconEstimatedLocation);
  (*(v8 + 8))(v6, v7);
  v3[2] = v5 + 1;
  sub_10000A748((v0 + 128), &v3[5 * v5 + 4]);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_1000D0010()
{
  v34 = v0;
  v1 = v0[38];

  v2 = v0[21];

  v3 = v0[45];
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177CE28);
  (*(v6 + 16))(v5, v4, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[32];
  v14 = v0[29];
  v13 = v0[30];
  if (v11)
  {
    v30 = v10;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v32 = *(v13 + 8);
    v32(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v33);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v9, v30, "No delegation keys found for shared item: %{private,mask.hash}s, error %{public}@)", v15, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v31);
  }

  else
  {

    v32 = *(v13 + 8);
    v32(v12, v14);
  }

  v22 = v0[32];
  v21 = v0[33];
  v23 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[25];
  swift_willThrow();
  sub_1000D2F40(v25, type metadata accessor for BeaconEstimatedLocation);
  v32(v21, v24);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000D0378(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[15] = v3;
  v2[16] = *(v3 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v2[25] = *(v8 + 64);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000D052C, v1, 0);
}

uint64_t sub_1000D052C()
{
  v1 = *(*(v0 + 112) + 144);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_1000D0550, v1, 0);
}

uint64_t sub_1000D0550()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[23];
  v5 = v0[13];
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[32] = v10;
  v11 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v10 = v0;
  v10[1] = sub_1000D06D4;

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v8, v11);
}

uint64_t sub_1000D06D4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return _swift_task_switch(sub_1000D0800, v3, 0);
}

uint64_t sub_1000D0800()
{
  v36 = v0;
  if (*(v0 + 80))
  {
    v2 = *(v0 + 232);
    v1 = *(v0 + 240);
    v3 = *(v0 + 224);
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    sub_10000A748((v0 + 56), v0 + 16);
    v2(v6, v7, v4);
    (*(v5 + 56))(v6, 0, 1, v4);

    return _swift_task_switch(sub_1000D0B64, v3, 0);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 232);
    v8 = *(v0 + 240);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 104);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177AE28);
    v9(v10, v12, v11);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1000D2E90(&qword_101696930, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v19 + 8))(v17, v18);
      v25 = sub_1000136BC(v22, v24, &v35);

      *(v20 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cannot publish delegated locations for beacon %{private,mask.hash}s", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      (*(v19 + 8))(v17, v18);
    }

    sub_1000D26C4();
    swift_allocError();
    *v26 = 3;
    swift_willThrow();
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1000D0B64()
{
  v1 = v0[28];
  v2 = v0[17];
  v4 = v0[15];
  v3 = v0[16];
  sub_1000D2A70(v0[18], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[33] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[34] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_1000D0CE0;

  return unsafeBlocking<A>(context:_:)(v0 + 12, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2718, v7, v10);
}

uint64_t sub_1000D0CE0()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 224);
  v5 = *v0;

  return _swift_task_switch(sub_1000D0E0C, v3, 0);
}

uint64_t sub_1000D0E0C()
{
  v1 = v0[14];
  sub_10000B3A8(v0[18], &qword_1016980D0, &unk_10138F3B0);
  v0[35] = v0[12];

  return _swift_task_switch(sub_1000D0E90, v1, 0);
}

uint64_t sub_1000D0E90()
{
  v1 = v0[35];
  if (*(v1 + 16))
  {
    v2 = v0[21];
    v3 = v0[22];
    v4 = v0[19];
    v5 = *(v0[20] + 80);
    sub_1000D2ED8(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1000D2E28(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 20);
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = sub_1000D1118;
    v8 = v0[14];

    return sub_1000CE264((v0 + 2), v3 + v6);
  }

  else
  {
    v10 = v0[35];

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177AE28);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Delegated circle not found", v14, 2u);
    }

    sub_1000D26C4();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
    sub_100007BAC(v0 + 2);
    v17 = v0[26];
    v16 = v0[27];
    v19 = v0[21];
    v18 = v0[22];
    v21 = v0[17];
    v20 = v0[18];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1000D1118(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = v1;

  v7 = v4[14];
  if (v1)
  {
    v8 = sub_1000D1324;
  }

  else
  {
    v4[38] = a1;
    v8 = sub_1000D1254;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000D1254()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  sub_1000D2F40(v0[22], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v6 = v0[1];
  v7 = v0[38];

  return v6(v7);
}

uint64_t sub_1000D1324()
{
  sub_1000D2F40(v0[22], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);
  v1 = v0[37];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000D13EC(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = a2;
  v4 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v3[26] = v9;
  v10 = *(v9 - 8);
  v3[27] = v10;
  v11 = *(v10 + 64) + 15;
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000D1590, v2, 0);
}

uint64_t sub_1000D1590()
{
  v1 = v0[18];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 != 5)
      {
        goto LABEL_21;
      }
    }

    else if (v4 != 3)
    {

      goto LABEL_10;
    }
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
LABEL_21:
    if (qword_101694778 == -1)
    {
LABEL_22:
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177AE28);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Invalid ShareId in the payload or cannot extract location Ts. Cannot store last delegated publish date", v42, 2u);
      }

      v43 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
      v44 = 1;
      goto LABEL_25;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

LABEL_10:
  v6 = v1[3];
  v7 = v1[4];
  sub_1000035D0(v0[18], v6);
  (*(v7 + 72))(v6, v7);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v0[18];

  v10 = v1[3];
  v11 = v1[4];
  sub_1000035D0(v9, v10);
  result = (*(v11 + 72))(v10, v11);
  if (!v13)
  {
    __break(1u);
    return result;
  }

  v14 = v0[26];
  v15 = v0[27];
  v16 = v0[25];
  UUID.init(uuidString:)();

  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = v0[25];
    v18 = &qword_1016980D0;
    v19 = &unk_10138F3B0;
LABEL_20:
    sub_10000B3A8(v17, v18, v19);
    goto LABEL_21;
  }

  v20 = v0[18];
  v21 = *(v0[27] + 32);
  v21(v0[28], v0[25], v0[26]);
  v23 = v1[3];
  v22 = v1[4];
  sub_1000035D0(v20, v23);
  (*(v22 + 64))(v23, v22);
  swift_getAssociatedTypeWitness();
  sub_1000BC4D4(&qword_101696918, &qword_10138B1F8);
  v24 = _arrayForceCast<A, B>(_:)();

  v25 = *(v24 + 16);
  if (!v25)
  {
    v33 = v0[27];
    v34 = v0[28];
    v35 = v0[26];
    v36 = v0[20];
    v37 = v0[21];
    v38 = v0[19];

    (*(v33 + 8))(v34, v35);
    (*(v37 + 56))(v38, 1, 1, v36);
    goto LABEL_19;
  }

  v70 = v21;
  sub_10001F280(v24 + 32, (v0 + 7));
  if (v25 != 1)
  {
    v52 = (v0[21] + 8);
    v53 = v24 + 72;
    v54 = 1;
    v71 = v25;
    v72 = v24;
    while (v54 < *(v24 + 16))
    {
      v56 = v0[22];
      v55 = v0[23];
      v57 = v0[20];
      sub_10001F280(v53, (v0 + 12));
      v58 = v0[10];
      v59 = v0[11];
      sub_1000035D0(v0 + 7, v58);
      (*(v59 + 32))(v58, v59);
      v60 = v0[15];
      v61 = v0[16];
      sub_1000035D0(v0 + 12, v60);
      (*(v61 + 32))(v60, v61);
      v62 = static Date.< infix(_:_:)();
      v63 = *v52;
      (*v52)(v56, v57);
      v63(v55, v57);
      if (v62)
      {
        sub_100007BAC(v0 + 7);
        sub_10000A748(v0 + 6, (v0 + 7));
      }

      else
      {
        sub_100007BAC(v0 + 12);
      }

      ++v54;
      v53 += 40;
      v24 = v72;
      if (v71 == v54)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v26 = v0[20];
  v27 = v0[21];
  v28 = v0[19];

  sub_10000A748((v0 + 7), (v0 + 2));
  v29 = v0[5];
  v30 = v0[6];
  sub_1000035D0(v0 + 2, v29);
  (*(v30 + 32))(v29, v30);
  (*(v27 + 56))(v28, 0, 1, v26);
  sub_100007BAC(v0 + 2);
  v31 = (*(v27 + 48))(v28, 1, v26);
  v32 = v0[28];
  if (v31 == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_19:
    v17 = v0[19];
    v18 = &unk_101696900;
    v19 = &unk_10138B1E0;
    goto LABEL_20;
  }

  v64 = v0[26];
  v65 = v0[24];
  v66 = v0[20];
  v67 = v0[17];
  v68 = *(v0[21] + 32);
  v68(v65, v0[19], v66);
  v43 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
  v69 = *(v43 + 48);
  v70(v67, v32, v64);
  v68(v67 + v69, v65, v66);
  v44 = 0;
LABEL_25:
  v45 = v0[28];
  v47 = v0[24];
  v46 = v0[25];
  v49 = v0[22];
  v48 = v0[23];
  v50 = v0[19];
  (*(*(v43 - 8) + 56))(v0[17], v44, 1, v43);

  v51 = v0[1];

  return v51();
}

uint64_t sub_1000D1CB0()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D1D24(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1000D1DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1000D1E90(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1000D1F38(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_1000D1FE0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DelegatedBeaconPayloadPublisher();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1000D2088()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1000C8400();
}

uint64_t sub_1000D2118(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1000D2218(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000D2238, v3, 0);
}

uint64_t sub_1000D2238()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_1000D230C;
    v2 = v0[2];
    v3 = v0[3];

    return sub_1000C73BC(v2);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000D230C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v3;
  v4[1] = sub_1000D2464;
  v5 = v1[3];
  v6 = v1[2];

  return sub_1000CB8EC(v6);
}

uint64_t sub_1000D2464()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000D2558()
{
  v1 = *v0;
  type metadata accessor for DelegatedBeaconPayloadPublisher();
  sub_1000D2E90(&unk_1016B10C0, v2, type metadata accessor for DelegatedBeaconPayloadPublisher);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1000D2650@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E713D0(v4, v5, a1);
}

unint64_t sub_1000D26C4()
{
  result = qword_101696928;
  if (!qword_101696928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696928);
  }

  return result;
}

unint64_t sub_1000D271C()
{
  result = qword_101696968;
  if (!qword_101696968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696968);
  }

  return result;
}

uint64_t sub_1000D2770@<X0>(void *a1@<X8>)
{
  v3 = *(*(type metadata accessor for UUID() - 8) + 80);
  v4 = *(v1 + 16);

  return sub_100E74048(v4, a1);
}

unint64_t sub_1000D27EC()
{
  result = qword_101696980;
  if (!qword_101696980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101696980);
  }

  return result;
}

uint64_t sub_1000D2894@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 56);
}

uint64_t sub_1000D28E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1000C5E68(v2, v3, v4);
}

uint64_t sub_1000D298C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_1000C674C(v2, v3);
}

unint64_t sub_1000D2A24()
{
  result = qword_1016969B0;
  if (!qword_1016969B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016969B0);
  }

  return result;
}

uint64_t sub_1000D2A70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000D2AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BC4D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

BOOL sub_1000D2B40@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_1016969A8, &unk_10138B270) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1000C7128(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_1000D2BE8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, v3 + v2 + 1);
}

void sub_1000D2D0C(void *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
  v6 = v5[*(v3 + 64)];

  sub_100E70190(v4, v5, v6, a1);
}

uint64_t sub_1000D2DB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E71428(v4, v5, a1);
}

uint64_t sub_1000D2E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2E90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000D2ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D2F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MessagingDestination.DestinationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessagingDestination.DestinationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D3110()
{
  result = qword_1016969F8;
  if (!qword_1016969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016969F8);
  }

  return result;
}

uint64_t sub_1000D3184()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  sub_100044B3C(v0, qword_101696A00);
  v1 = sub_1000076D4(v0, qword_101696A00);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static Date.testSetNow(date:)(uint64_t a1)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v5 == 1)
  {
    if (qword_101694418 != -1)
    {
      swift_once();
    }

    v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v3 = sub_1000076D4(v2, qword_101696A00);
    swift_beginAccess();
    sub_1000D33A0(a1, v3);
    return swift_endAccess();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D33A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3480(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000D34EC()
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
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_name);
  *v10 = 0xD000000000000028;
  v10[1] = 0x800000010138B360;
  v19 = OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_serialQueue;
  v18[0] = sub_1000BC488();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = v18[1];
  *&v11[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C120);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "UnwantedTrackingUserNotificationDelegate: init", v15, 2u);
  }

  v16 = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  v20.receiver = v11;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_1000D386C()
{
  v1 = v0;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for UnwantedTrackingUserNotificationDelegate();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000D3A04()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C120);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "UnwantedTrackingUserNotificationDelegate: startup", v13, 2u);
  }

  v14 = *&v1[OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_serialQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_1000D5750;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10160EA70;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100003D24(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

void sub_1000D3D78()
{
  v1 = v0;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: setupUserNotifications", v5, 2u);
  }

  v6 = objc_allocWithZone(UNUserNotificationCenter);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithBundleIdentifier:v7];

  [v8 setDelegate:v1];
  [v8 setWantsNotificationResponsesDelivered];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v9 = sub_1000034A4();
  v10 = sub_100003518();
  v11 = v9[6];
  v12 = v9[7];
  v13 = String._bridgeToObjectiveC()();
  [v10 BOOLForKey:v13];

  v14 = type metadata accessor for Transaction();
  __chkstk_darwin(v14);
  static Transaction.named<A>(_:with:)();
  v15 = objc_allocWithZone(UNUserNotificationCenter);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithBundleIdentifier:v16];

  __chkstk_darwin(v18);
  static Transaction.named<A>(_:with:)();
}

void sub_1000D407C(uint64_t a1, void *a2, uint64_t a3)
{
  v6[5] = a1;
  v6[4] = sub_1000D572C;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000D415C;
  v6[3] = &unk_10160EA20;
  v5 = _Block_copy(v6);

  [a2 requestAuthorizationWithOptions:a3 completionHandler:v5];
  _Block_release(v5);
}

void sub_1000D415C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1000D41D4(uint64_t a1, id a2)
{
  v4 = [a2 notificationSettings];
  v5 = [v4 authorizationStatus];

  if (v5)
  {
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C120);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "UnwantedTrackingUserNotificationDelegate: No need to request deliver quietly authorization for Find My. Authorization already determined.", v9, 2u);
    }
  }

  else
  {
    v11[4] = sub_1000D5708;
    v11[5] = a1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000D415C;
    v11[3] = &unk_10160E9F8;
    v10 = _Block_copy(v11);

    [a2 requestAuthorizationWithOptions:66 completionHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000D439C(char a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C120);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 67109378;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2080;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v14);

    *(v9 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 0x12u);
    sub_100007BAC(v10);
  }

  Transaction.capture()();
}

uint64_t sub_1000D4538()
{
  v1 = (*v0 + OBJC_IVAR____TtC12searchpartyd40UnwantedTrackingUserNotificationDelegate_name);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_1000D46C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_101694ED8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C120);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v7 = String.init<A>(describing:)();
      v9 = sub_1000136BC(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: Error opening url %s", v5, 0xCu);
      sub_100007BAC(v6);
    }

    else
    {
    }
  }
}

void sub_1000D488C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000D4918(uint64_t a1)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C120);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "UnwantedTrackingUserNotificationDelegate: willPresentNotification", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 19);
}

void sub_1000D4A14(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C120);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "UnwantedTrackingUserNotificationDelegate: OpenURL", v14, 2u);
  }

  sub_1000D5660(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &unk_101696AC0, &qword_101390A60);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "UnwantedTrackingUserNotificationDelegate: Error opening settings. Invalid URL", v17, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138B360;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v19;
    *(inited + 72) = v6;
    v20 = sub_1000280DC((inited + 48));
    (*(v7 + 16))(v20, v10, v6);
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v21;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 136) = v22;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    v23 = sub_10090403C(inited);
    swift_setDeallocating();
    sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
    swift_arrayDestroy();
    v24 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    if (v24)
    {
      v25 = v24;
      v26 = String._bridgeToObjectiveC()();
      sub_1006950E0(v23);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = [objc_opt_self() optionsWithDictionary:isa];

      aBlock[4] = sub_1000D46C8;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D488C;
      aBlock[3] = &unk_10160E9D0;
      v29 = _Block_copy(aBlock);
      [v25 openApplication:v26 withOptions:v28 completion:v29];
      _Block_release(v29);

      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1000D4F44(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C120);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000136BC(a1, a2, &v22);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1000136BC(a3, a4, &v22);
    _os_log_impl(&_mh_execute_header, v16, v17, "UnwantedTrackingUserNotificationDelegate: processUTNotification for beacon %s, action %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v22 = 0xD000000000000026;
  v23 = 0x800000010134AA30;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);
  URL.init(string:)();

  if (a3 == 0xD00000000000002ELL && 0x800000010134AA60 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v22 = 0xD000000000000026;
    v23 = 0x800000010134AA90;
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.append(_:)(v20);
    URL.init(string:)();

    sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
    sub_1000D55F0(v12, v14);
  }

  sub_1000D4A14(v14);
  return sub_10000B3A8(v14, &unk_101696AC0, &qword_101390A60);
}

uint64_t sub_1000D5280(void *a1, uint64_t a2)
{
  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C120);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "UnwantedTrackingUserNotificationDelegate: didReceiveResponse", v7, 2u);
  }

  v8 = [a1 notification];
  v9 = [v8 request];

  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 0xD000000000000024 && 0x800000010134AA00 == v14)
  {

    goto LABEL_14;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_14:
    v23 = [a1 notification];
    v24 = [v23 request];

    v25 = [v24 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [a1 actionIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_1000D4F44(v26, v28, v30, v32);

    goto LABEL_15;
  }

  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "UnwantedTrackingUserNotificationDelegate: Unhandled notification response %@", v20, 0xCu);
    sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);
  }

LABEL_15:
  v33 = *(a2 + 16);

  return v33(a2);
}

uint64_t sub_1000D55F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D578C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A470);
  sub_1000076D4(v0, qword_10177A470);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D5810()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A488);
  v1 = sub_1000076D4(v0, qword_10177A488);
  if (qword_101694420 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A470);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000D58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_1000BC4D4(&qword_101696C40, &unk_1013B8520) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = type metadata accessor for FinderStateInfo(0);
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101696C48, &unk_10138B590) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_101696C50, &unk_1013B8560);
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101696C58, &unk_10138B5A0);
  v4[12] = v13;
  v14 = *(v13 - 8);
  v4[13] = v14;
  v15 = *(v14 + 64) + 15;
  v4[14] = swift_task_alloc();
  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v4[15] = v17;
  *v17 = v4;
  v17[1] = sub_1000D5B14;

  return daemon.getter();
}

uint64_t sub_1000D5B14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FinderStateObserver();
  v9 = sub_1000DFF1C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1000DFF1C(&unk_1016B1000, 255, type metadata accessor for FinderStateObserver);
  *v6 = v12;
  v6[1] = sub_1000D5CF8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000D5CF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;

  v7 = v4[16];
  if (v1)
  {

    return _swift_task_switch(sub_1000D5EB0, 0, 0);
  }

  else
  {

    v8 = swift_task_alloc();
    v4[19] = v8;
    *v8 = v6;
    v8[1] = sub_1000D600C;
    v9 = v4[11];

    return sub_1008488EC(v9);
  }
}

uint64_t sub_1000D5EB0()
{
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing FinderStateObserver service.", v4, 2u);
  }

  v5 = v0[14];
  v6 = v0[11];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v10 = v0[3];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000D600C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_1000D6108, 0, 0);
}

uint64_t sub_1000D6108()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1000D61E4;
  v7 = v0[14];
  v8 = v0[12];
  v9 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v9, 0, 0, v8);
}

uint64_t sub_1000D61E4()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_1000D62E0, 0, 0);
}

uint64_t sub_1000D62E0()
{
  v1 = v0[8];
  v2 = sub_1000BC4D4(&qword_101696C60, &qword_1013B8570);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v4 = v0[14];
    v5 = v0[11];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    v9 = v0[3];

    v10 = v0[1];

    return v10();
  }

  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];
  v16 = *v1;

  v17 = v1 + *(v2 + 48);
  v18 = sub_1000BC4D4(&qword_101696C68, &qword_10138B5B0);
  sub_1000DD6A4(v17 + *(v18 + 48), v12);
  sub_1000D2AD8(v17, v15, &qword_101696C40, &unk_1013B8520);
  v19 = (*(v14 + 48))(v15, 1, v13);
  v20 = v0[7];
  if (v19 == 1)
  {
    v21 = v0[3];
    sub_1000DD708(v0[7]);
    sub_10000B3A8(v21, &qword_101696C40, &unk_1013B8520);
LABEL_12:
    v25 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_1000D61E4;
    v27 = v0[14];
    v28 = v0[12];
    v29 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v29, 0, 0, v28);
  }

  v22 = v0[6];
  sub_1000DD6A4(v0[3], v22);
  if (*v22 == *v20)
  {
    v24 = v0[7];
    sub_1000DD708(v0[6]);
    sub_1000DD708(v24);
    goto LABEL_12;
  }

  v23 = v0[2];

  return _swift_task_switch(sub_1000D65A8, v23, 0);
}

uint64_t sub_1000D65A8()
{
  *(*(v0 + 16) + 176) = 1;
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1000D6644;
  v2 = *(v0 + 16);

  return sub_10001CE74();
}

uint64_t sub_1000D6644()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_1000D6740, 0, 0);
}

uint64_t sub_1000D6740()
{
  v1 = v0[7];
  sub_1000DD708(v0[6]);
  sub_1000DD708(v1);
  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1000D61E4;
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1000D67F8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000D6964, v5, 0);
}

uint64_t sub_1000D6964()
{
  v2 = *(v0 + 104);

  v3 = *(v0 + 96);
  v4 = (*(v0 + 88) - 1) & *(v0 + 88);
  if (v4)
  {
    v5 = *(v0 + 80);
LABEL_7:
    *(v0 + 88) = v4;
    *(v0 + 96) = v3;
    v7 = __clz(__rbit64(v4)) | (v3 << 6);
    v1 = *(*(v5 + 48) + v7);
    *(v0 + 104) = *(*(v5 + 56) + 8 * v7);
    v8 = qword_101694428;

    if (v8 != -1)
    {
LABEL_37:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A488);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_33;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *(v0 + 40) = v13;
    *v12 = 136446210;
    if (v1 > 3)
    {
      if (v1 > 5)
      {
        if (v1 != 6)
        {
          if (v1 == 7)
          {
            v14 = 0xEF79627261654E6ELL;
            v15 = 0x6F696E61706D6F63;
          }

          else
          {
            v14 = 0xEF646E756F466E65;
            v15 = 0x6857796669746F6ELL;
          }

          goto LABEL_32;
        }

        v14 = 0xEF6C6C65436E4F79;
        goto LABEL_30;
      }

      if (v1 != 4)
      {
        v14 = 0xEF694669576E4F79;
LABEL_30:
        v19 = 0x747461426E6FLL;
        goto LABEL_31;
      }

      v20 = 0x6C6C65436ELL;
      goto LABEL_27;
    }

    if (v1 > 1)
    {
      if (v1 != 2)
      {
        v20 = 0x694669576ELL;
LABEL_27:
        v14 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        v15 = 0x4F7265776F506E6FLL;
        goto LABEL_32;
      }

      v14 = 0xE900000000000072;
      v15 = 0x65776F5068676968;
    }

    else
    {
      if (!v1)
      {
        v14 = 0xE800000000000000;
        v19 = 0x776F50776F6CLL;
LABEL_31:
        v15 = v19 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        goto LABEL_32;
      }

      v14 = 0xEB00000000726577;
      v15 = 0x6F506D756964656DLL;
    }

LABEL_32:
    v21 = sub_1000136BC(v15, v14, (v0 + 40));

    *(v12 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "FindMyNetworkPublishActivityService updateCriteria %{public}s.", v12, 0xCu);
    sub_100007BAC(v13);

LABEL_33:

    v22 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v25 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_1000D67F8;
    v24 = *(v0 + 72);

    return v25(v24);
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v5 = *(v0 + 80);
    if (v6 >= (((1 << *(v0 + 120)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v5 + 8 * v6 + 64);
    ++v3;
    if (v4)
    {
      v3 = v6;
      goto LABEL_7;
    }
  }

  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000D6D44()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6DFC, v0, 0);
}

uint64_t sub_1000D6DFC()
{
  if (qword_101694428 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A488);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FindMyNetworkPublishActivityService registerPublishActivities.", v4, 2u);
  }

  v5 = *(v0 + 48);

  *(v5 + 176) = 0;
  v6 = sub_100B28750();
  *(v0 + 72) = v6;
  v7 = *(v6 + 32);
  *(v0 + 120) = v7;
  v8 = -1;
  v9 = -1 << v7;
  if (-(-1 << v7) < 64)
  {
    v8 = ~(-1 << -(-1 << v7));
  }

  v10 = v8 & *(v6 + 56);
  if (v10)
  {
    v11 = 0;
LABEL_12:
    v14 = 0xD000000000000036;
    *(v0 + 80) = v10;
    *(v0 + 88) = v11;
    v15 = *(*(v6 + 48) + (__clz(__rbit64(v10)) | (v11 << 6)));
    *(v0 + 121) = v15;
    type metadata accessor for FindMyNetworkPublishDateProvider();
    v16 = swift_allocObject();
    *(v0 + 96) = v16;
    swift_defaultActor_initialize();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 != 6)
        {
          if (v15 == 7)
          {
            v17 = "com.apple.icloud.searchpartyd.activity.CompanionNearby";
          }

          else
          {
            v17 = "com.apple.icloud.searchpartyd.activity.NotifyWhenFound";
          }

          goto LABEL_32;
        }

        v23 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnCell";
LABEL_34:
        v21 = (v23 - 32);
        v14 = 0xD00000000000004BLL;
        goto LABEL_35;
      }

      if (v15 != 4)
      {
        v23 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnWiFi";
        goto LABEL_34;
      }

      v22 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnCell";
      goto LABEL_30;
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        v22 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnWiFi";
LABEL_30:
        v21 = (v22 - 32);
        v14 = 0xD000000000000049;
        goto LABEL_35;
      }

      v21 = "LoadPublish-onPowerOnWiFi";
      v14 = 0xD000000000000045;
    }

    else
    {
      if (!v15)
      {
        v14 = 0xD000000000000044;
        v17 = "com.apple.icloud.searchpartyd.activity.BeaconPayloadPublish-LowPower";
LABEL_32:
        v21 = (v17 - 32);
        goto LABEL_35;
      }

      v21 = "loadPublish-HighPower";
      v14 = 0xD000000000000047;
    }

LABEL_35:
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);
    type metadata accessor for XPCActivity();
    static DispatchQoS.background.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    *(v27 + 24) = v16;
    *(v27 + 32) = &off_1016129A8;
    *(v27 + 40) = v25;
    v28 = swift_allocObject();
    *(v28 + 16) = v15;
    *(v28 + 24) = v26;
    *(v28 + 32) = v25;
    v29 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

    v30 = swift_task_alloc();
    *(v0 + 104) = v30;
    *v30 = v0;
    v30[1] = sub_1000D71F0;
    v31 = *(v0 + 64);

    return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v14, v21 | 0x8000000000000000, v31, &unk_10138B638, v27, &unk_10138B648, v28);
  }

  v12 = 0;
  v13 = ((63 - v9) >> 6) - 1;
  while (v13 != v12)
  {
    v11 = v12 + 1;
    v10 = *(v6 + 8 * v12++ + 64);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v18 = *(v0 + 64);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000D71F0(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000D7308, v3, 0);
}

uint64_t sub_1000D7308()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 121);

  swift_beginAccess();
  v4 = *(v2 + 168);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 168);
  *(v0 + 40) = v6;
  *(v2 + 168) = 0x8000000000000000;
  v7 = sub_100771EA0(v3);
  v14 = *(v6 + 16);
  v15 = (v8 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v47 = v7;
    sub_101004F8C();
    v7 = v47;
    goto LABEL_8;
  }

  v3 = v8;
  if (*(v6 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

  v18 = *(v0 + 121);
  sub_100FE61C8(v17, isUniquelyReferenced_nonNull_native);
  v19 = *(v0 + 40);
  v7 = sub_100771EA0(v18);
  if ((v3 & 1) != (v8 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v21 = *(v0 + 40);
  v22 = *(v0 + 112);
  if (v3)
  {
    v23 = v21[7];
    v24 = *(v23 + 8 * v7);
    *(v23 + 8 * v7) = v22;
  }

  else
  {
    v25 = *(v0 + 121);
    v21[(v7 >> 6) + 8] |= 1 << v7;
    *(v21[6] + v7) = v25;
    *(v21[7] + 8 * v7) = v22;
    v26 = v21[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v16)
    {
      __break(1u);
      return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v7, v8, v9, v10, v11, v12, v13);
    }

    v21[2] = v27;
  }

  *(*(v0 + 48) + 168) = v21;
  v7 = swift_endAccess();
  v28 = *(v0 + 88);
  v29 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v29)
  {
    v7 = *(v0 + 72);
LABEL_18:
    v31 = 0xD000000000000036;
    *(v0 + 80) = v29;
    *(v0 + 88) = v28;
    v32 = *(*(v7 + 48) + (__clz(__rbit64(v29)) | (v28 << 6)));
    *(v0 + 121) = v32;
    type metadata accessor for FindMyNetworkPublishDateProvider();
    v33 = swift_allocObject();
    *(v0 + 96) = v33;
    swift_defaultActor_initialize();
    if (v32 <= 3)
    {
      if (v32 <= 1)
      {
        if (v32)
        {
          v37 = "loadPublish-HighPower";
          v31 = 0xD000000000000047;
          goto LABEL_41;
        }

        v31 = 0xD000000000000044;
        v34 = "com.apple.icloud.searchpartyd.activity.BeaconPayloadPublish-LowPower";
        goto LABEL_38;
      }

      if (v32 == 2)
      {
        v37 = "LoadPublish-onPowerOnWiFi";
        v31 = 0xD000000000000045;
        goto LABEL_41;
      }

      v38 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnWiFi";
    }

    else
    {
      if (v32 > 5)
      {
        if (v32 != 6)
        {
          if (v32 == 7)
          {
            v34 = "com.apple.icloud.searchpartyd.activity.CompanionNearby";
          }

          else
          {
            v34 = "com.apple.icloud.searchpartyd.activity.NotifyWhenFound";
          }

LABEL_38:
          v37 = (v34 - 32);
          goto LABEL_41;
        }

        v39 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnCell";
LABEL_40:
        v37 = (v39 - 32);
        v31 = 0xD00000000000004BLL;
LABEL_41:
        v41 = *(v0 + 56);
        v40 = *(v0 + 64);
        v42 = *(v0 + 48);
        type metadata accessor for XPCActivity();
        static DispatchQoS.background.getter();
        v43 = swift_allocObject();
        *(v43 + 16) = v32;
        *(v43 + 24) = v33;
        *(v43 + 32) = &off_1016129A8;
        *(v43 + 40) = v41;
        v44 = swift_allocObject();
        *(v44 + 16) = v32;
        *(v44 + 24) = v42;
        *(v44 + 32) = v41;
        v45 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

        v46 = swift_task_alloc();
        *(v0 + 104) = v46;
        *v46 = v0;
        v46[1] = sub_1000D71F0;
        v9 = *(v0 + 64);
        v10 = &unk_10138B638;
        v12 = &unk_10138B648;
        v8 = v37 | 0x8000000000000000;
        v7 = v31;
        v11 = v43;
        v13 = v44;

        return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(v7, v8, v9, v10, v11, v12, v13);
      }

      if (v32 != 4)
      {
        v39 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onBatteryOnWiFi";
        goto LABEL_40;
      }

      v38 = "com.apple.icloud.searchpartyd.activity.BeaconPayLoadPublish-onPowerOnCell";
    }

    v37 = (v38 - 32);
    v31 = 0xD000000000000049;
    goto LABEL_41;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    v7 = *(v0 + 72);
    if (v30 >= (((1 << *(v0 + 120)) + 63) >> 6))
    {
      break;
    }

    v29 = *(v7 + 8 * v30 + 56);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_18;
    }
  }

  v35 = *(v0 + 64);

  v36 = *(v0 + 8);

  return v36();
}