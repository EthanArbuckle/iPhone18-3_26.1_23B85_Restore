uint64_t sub_10004F6C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F700()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004F738()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F7E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F818()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10004F994()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F9D4(uint64_t result)
{
  v1 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 120) &= ~0x2000000000000000uLL;
  *(result + 136) = v1;
  return result;
}

uint64_t sub_10004F9F4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10004FA70()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004FAA8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004FAE0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v11 = *(*(MyServiceDeviceListClientContext - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, MyServiceDeviceListClientContext);
  }
}

_BYTE *sub_10004FB8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v8 = *(*(MyServiceDeviceListClientContext - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, MyServiceDeviceListClientContext);
  }

  return result;
}

uint64_t sub_10004FC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004FCD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004FD7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v9 = *(*(MyServiceDeviceListClientContext - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, MyServiceDeviceListClientContext);
  }
}

void *sub_10004FE28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    MyServiceDeviceListClientContext = type metadata accessor for FindMyServiceDeviceListClientContext(0);
    v8 = *(*(MyServiceDeviceListClientContext - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, MyServiceDeviceListClientContext);
  }

  return result;
}

uint64_t sub_10004FECC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WildModeAssociationRecord(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_10004FF70(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for WildModeAssociationRecord(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100050120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 2);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for MACAddress();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_100050244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 2) = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MACAddress();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100050370()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000503A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiscoveredObject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100050500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DiscoveredObject(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_100050664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000506D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100050740()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100050824(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000508E0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000509A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000509E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BA8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100050A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_101073BC0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050A44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107406C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050A70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10107416C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100050AAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050B14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  if (qword_10139AAC0[*(a1 + *(v4 + 24))] != qword_10139AAC0[*(a2 + *(v4 + 24))])
  {
    return 0;
  }

  v5 = *(v4 + 20);

  return static Date.== infix(_:_:)();
}

uint64_t sub_100050BC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100050CA4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100050DA8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100050DE0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_100050EDC()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35, v2 | 7);
}

uint64_t sub_10005124C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051288()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

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

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v21, v2 | 7);
}

uint64_t sub_100051504()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v24 = (v2 + 16) & ~v2;
  v3 = v0 + v24;
  sub_100016590(*(v0 + v24), *(v0 + v24 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v24 + v4, v5);
  v7(v0 + v24 + v1[6], v5);
  v8 = *(v0 + v24 + v1[7] + 16);

  v9 = *(v0 + v24 + v1[8] + 8);

  v10 = *(v0 + v24 + v1[9] + 8);

  v11 = *(v0 + v24 + v1[10] + 8);

  v12 = v1[18];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v24 + v12, v13);
  v14 = v1[19];
  v15 = *(v6 + 48);
  if (!v15(v0 + v24 + v14, 1, v5))
  {
    v7(v3 + v14, v5);
  }

  v16 = v3 + v1[20];
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = *(v17 + 20);
    if (!v15(v16 + v18, 1, v5))
    {
      v7(v16 + v18, v5);
    }
  }

  v19 = (v25 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v19);

  v22 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

uint64_t sub_1000517A0()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 32) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35, v2 | 7);
}

uint64_t sub_100051B0C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v38 = (v2 + 16) & ~v2;
  v4 = v0 + v38;
  sub_100016590(*(v0 + v38), *(v0 + v38 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v38 + v5, v6);
  v9 = (v0 + v38 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v37 = v3;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v3 = v37;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v37 = v3;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v1[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v1[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v26 = (v4 + v1[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v1[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v3 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v32 = *(v4 + v1[14] + 8);

  v33 = *(v4 + v1[15] + 8);

  v34 = *(v0 + v30);

  v35 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16, v2 | 7);
}

uint64_t sub_100051EA8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051EE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100051F38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10005208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100052108(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000521B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052258(char a1, char a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return (a2 & 1) == 0;
  }
}

unint64_t sub_100052278()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1000BC4D4(&qword_10169D880, qword_10139BF48);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10000B3A8(v7, &unk_1016A0B10, &qword_10139BF40);
  }

  return sub_100907BD8(_swiftEmptyArrayStorage);
}

uint64_t sub_1000524BC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000524F4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100052534()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000525D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for PeerCommunicationIdentifier();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000526DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for PeerCommunicationIdentifier();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void *sub_1000527E4(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_10005282C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100052898(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100052918()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052984(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for OwnedBeaconRecord();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100052AFC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for OwnedBeaconRecord();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UUID();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100052C74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100052D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100052DF0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100052E9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100052F44()
{
  sub_100007BAC(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100052F8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052FC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052FFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053034()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005306C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_1000531C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_10005328C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_10005334C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053384()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000533CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053408()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053440()
{
  v1 = *(v0 + 16);

  sub_100016590(*(v0 + 24), *(v0 + 32));
  sub_10038B978(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005348C()
{
  if (*(v0 + 57) != 1)
  {
    goto LABEL_26;
  }

  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_26;
      }

LABEL_19:
      v3 = *(v0 + 16);
LABEL_25:

      goto LABEL_26;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {

        goto LABEL_26;
      }

      if (v1 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

LABEL_24:
    v6 = *(v0 + 24);
    goto LABEL_25;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

LABEL_12:
    v2 = *(v0 + 16);

    goto LABEL_26;
  }

  switch(v1)
  {
    case 8u:
      v5 = *(v0 + 16);

      goto LABEL_24;
    case 9u:
      v4 = *(v0 + 24);

      break;
    case 0xAu:
      goto LABEL_19;
  }

LABEL_26:

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_100053598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000535D0()
{
  v1 = *(v0 + 16);

  sub_10038BCE4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100053628()
{
  v1 = *(v0 + 16);

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100053670()
{
  sub_10038BCE4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000536B0()
{
  v1 = *(v0 + 56);
  if (v1 <= 4)
  {
    if (*(v0 + 56) <= 1u)
    {
      if (*(v0 + 56))
      {
        sub_100007BAC((v0 + 16));
        goto LABEL_25;
      }

LABEL_18:
      v3 = *(v0 + 16);
LABEL_24:

      goto LABEL_25;
    }

    if (v1 != 2)
    {
      if (v1 == 3)
      {

        goto LABEL_25;
      }

      if (v1 != 4)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

LABEL_23:
    v6 = *(v0 + 24);
    goto LABEL_24;
  }

  if (*(v0 + 56) <= 7u)
  {
    if (v1 != 5 && v1 != 6)
    {
      if (v1 != 7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_11:
    v2 = *(v0 + 16);

    goto LABEL_25;
  }

  switch(v1)
  {
    case 8u:
      v5 = *(v0 + 16);

      goto LABEL_23;
    case 9u:
      v4 = *(v0 + 24);

      break;
    case 0xAu:
      goto LABEL_18;
  }

LABEL_25:

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1000537AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000537F8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000538C8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000539CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100053A48()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100053A98()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100053B00()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 232), *(v0 + 240));
  sub_100016590(*(v0 + 248), *(v0 + 256));
  sub_100016590(*(v0 + 264), *(v0 + 272));

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_100053BB0()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100053C08()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100053C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100053D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100053E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 11)
  {
    v4 = *(a1 + 8) >> 60;
    v5 = ((4 * v4) & 0xC) == 0;
    v6 = ((4 * v4) & 0xC | (v4 >> 2)) ^ 0xF;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

void *sub_100053EF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100053FC4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

uint64_t sub_1000540A0()
{
  v1 = type metadata accessor for OwnerPeerTrust();
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnerSharingCircle();
  v4 = *(*(v3 - 1) + 80);
  v23 = *(*(v3 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9((v6 + v7), v8);
  v10 = (v6 + v1[7]);
  type metadata accessor for PeerCommunicationIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v17 = v10[2];

        v18 = v10[4];
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_15;
        }

        v12 = v10[1];

        v13 = v10[4];

        v14 = v10[6];
      }

      goto LABEL_14;
    }

    goto LABEL_10;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v16 = v10[1];
      goto LABEL_14;
    case 1:
      v9(v10, v8);
      break;
    case 2:
LABEL_10:
      v15 = v10[2];
LABEL_14:

      break;
  }

LABEL_15:
  v19 = (((v2 + 24) & ~v2) + v24 + v4) & ~v4;
  v20 = *(v6 + v1[8] + 8);

  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v9((v0 + v19 + v3[5]), v8);
  v9((v0 + v19 + v3[6]), v8);
  v21 = *(v0 + v19 + v3[8]);

  return _swift_deallocObject(v0, v23 + v19 + 1, v2 | v4 | 7);
}

uint64_t sub_10005433C()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[8], v7);
  v8(v0 + v3 + v1[9], v7);
  v8(v0 + v3 + v1[10], v7);
  v9 = *(v0 + v3 + v1[11]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100054494()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1000545B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_100054690()
{
  sub_100016590(v0[2], v0[3]);
  v1 = v0[6];

  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000546DC()
{
  v1 = (type metadata accessor for OwnerSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[8], v7);
  v9 = *(v0 + v3 + v1[10]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100054804()
{
  v1 = (type metadata accessor for OwnerSharingCircle() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v6 + v7, v8);
  v9(v6 + v1[8], v8);
  v10 = *(v6 + v1[10]);

  if (*(v0 + v4 + 16) >= 4uLL)
  {
  }

  return _swift_deallocObject(v0, v4 + 24, v2 | 7);
}

uint64_t sub_100054950()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100054998()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100054A74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054ABC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054AFC()
{
  v1 = (type metadata accessor for MemberSharingCircle() - 8);
  v31 = *(*v1 + 80);
  v2 = (v31 + 24) & ~v31;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for MemberPeerTrust();
  v5 = *(*(v4 - 1) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v30 = *(*(v4 - 1) + 64);
  v7 = *(v0 + 16);

  v8 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v9 = v1[7];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 8);
  v12 = v8 + v9;
  v13 = v6;
  v11(v12, v10);
  v11(v8 + v1[8], v10);
  v11(v8 + v1[9], v10);
  v11(v8 + v1[10], v10);
  v14 = *(v8 + v1[11]);

  v15 = v0 + v6;
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v11(v0 + v6 + v4[5], v10);
  v16 = (v0 + v6 + v4[7]);
  type metadata accessor for PeerCommunicationIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v19 = v30;
      v18 = v31;
      if (EnumCaseMultiPayload == 4)
      {
        v26 = v16[2];

        v27 = v16[4];
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_17;
        }

        v21 = v16[1];

        v22 = v16[4];

        v23 = v16[6];
      }

      goto LABEL_16;
    }

    v25 = v16[2];
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v24 = v16[1];
LABEL_12:

LABEL_14:
    v19 = v30;
    v18 = v31;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11(v16, v10);
    goto LABEL_14;
  }

  v19 = v30;
  v18 = v31;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_17;
  }

  v20 = v16[2];
LABEL_16:

LABEL_17:
  v28 = *(v15 + v4[8] + 8);

  sub_100016590(*(v15 + v4[9]), *(v15 + v4[9] + 8));

  return _swift_deallocObject(v0, v13 + v19, v18 | v5 | 7);
}

uint64_t sub_100054DC8()
{
  v1 = type metadata accessor for OwnerPeerTrust();
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnerSharingCircle();
  v4 = *(*(v3 - 1) + 80);
  v25 = *(*(v3 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + ((v2 + 24) & ~v2);
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9((v6 + v7), v8);
  v10 = (v6 + v1[7]);
  type metadata accessor for PeerCommunicationIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v17 = v10[2];

        v18 = v10[4];
      }

      else
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_15;
        }

        v12 = v10[1];

        v13 = v10[4];

        v14 = v10[6];
      }

      goto LABEL_14;
    }

    goto LABEL_10;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v16 = v10[1];
      goto LABEL_14;
    case 1:
      v9(v10, v8);
      break;
    case 2:
LABEL_10:
      v15 = v10[2];
LABEL_14:

      break;
  }

LABEL_15:
  v19 = v2 | v4;
  v20 = (((v2 + 24) & ~v2) + v24 + v4) & ~v4;
  v21 = *(v6 + v1[8] + 8);

  sub_100016590(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  sub_100016590(*(v0 + v20), *(v0 + v20 + 8));
  v9((v0 + v20 + v3[5]), v8);
  v9((v0 + v20 + v3[6]), v8);
  v22 = *(v0 + v20 + v3[8]);

  return _swift_deallocObject(v0, v20 + v25, v19 | 7);
}

uint64_t sub_1000550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100055160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005520C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000552FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10005540C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100055448()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v36 = (v2 + 32) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v36;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v36 = (v2 + 32) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16, v2 | 7);
}

uint64_t sub_1000557CC()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v36 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 32);

  v5 = *(v0 + 40);

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
      v35 = (v2 + 48) & ~v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v3 = v35;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v35 = (v2 + 48) & ~v2;
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

  v30 = (v6 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v32 = *(v6 + v1[14] + 8);

  v33 = *(v6 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v36, v2 | 7);
}

uint64_t sub_100055B40()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v36 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v36;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v36 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31);

  return _swift_deallocObject(v0, v31 + 9, v2 | 7);
}

uint64_t sub_100055EC0()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v42 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 3);

  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = &v0[v3];
  sub_100016590(*&v0[v3], *&v0[v3 + 8]);
  v8 = v1[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3 + v8], v9);
  v12 = &v0[v3 + v1[6]];
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

      v14 = *(v12 + 1);

      v15 = *(v12 + 3);

      v16 = (v12 + 40);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11(v12, v9);
      v41 = (v2 + 64) & ~v2;
      v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v18 = *&v12[v17[12] + 8];

      v19 = *&v12[v17[16] + 8];

      v20 = *&v12[v17[20] + 8];

      v21 = v17[28];
LABEL_12:
      v3 = v41;
      v16 = &v12[v21 + 8];
      goto LABEL_13;
    case 3:
      v11(v12, v9);
      v41 = (v2 + 64) & ~v2;
      v22 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v23 = *&v12[v22[12] + 8];

      v24 = *&v12[v22[16] + 8];

      v21 = v22[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v16 = (v12 + 8);
LABEL_13:
      v25 = *v16;

      break;
  }

LABEL_14:
  v26 = v1[7];
  if (!(*(v10 + 48))(&v7[v26], 1, v9))
  {
    v11(&v7[v26], v9);
  }

  v27 = v1[8];
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 8))(&v7[v27], v28);
  sub_100016590(*&v7[v1[9]], *&v7[v1[9] + 8]);
  v29 = &v7[v1[10]];
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = &v7[v1[11]];
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  v33 = (v42 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 39) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*&v7[v1[12]], *&v7[v1[12] + 8]);
  sub_100016590(*&v7[v1[13]], *&v7[v1[13] + 8]);
  v35 = *&v7[v1[14] + 8];

  v36 = *&v7[v1[15] + 8];

  v37 = *&v0[v33 + 8];

  v38 = *&v0[(v33 + 23) & 0xFFFFFFFFFFFFFFF8];

  v39 = *&v0[v34];

  return _swift_deallocObject(v0, v34 + 8, v2 | 7);
}

uint64_t sub_100056278()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000562C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100056334()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10005636C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v40 = *(v2 + 80);
  v3 = (v40 + 16) & ~v40;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 1) + 80);
  v41 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = v0 + ((v4 + v6 + 8) & ~v6);
  sub_100016590(*v8, *(v8 + 8));
  v9 = v5[5];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v8 + v9, v10);
  v13 = (v8 + v5[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12(v13, v10);
      v19 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v20 = *(v13 + v19[12] + 8);

      v21 = *(v13 + v19[16] + 8);

      v22 = *(v13 + v19[20] + 8);

      v23 = v19[28];
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v15 = v40;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        v16 = v13 + 1;
        goto LABEL_14;
      }

      v12(v13, v10);
      v24 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v25 = *(v13 + v24[12] + 8);

      v26 = *(v13 + v24[16] + 8);

      v23 = v24[20];
    }

    v16 = (v13 + v23 + 8);
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = v13 + 1;
LABEL_13:
    v15 = v40;
    goto LABEL_14;
  }

  v15 = v40;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v17 = v13[1];

  v18 = v13[3];

  v16 = v13 + 5;
LABEL_14:
  v27 = *v16;

LABEL_15:
  v28 = v5[7];
  if (!(*(v11 + 48))(v8 + v28, 1, v10))
  {
    v12(v8 + v28, v10);
  }

  v29 = v5[8];
  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 8))(v8 + v29, v30);
  sub_100016590(*(v8 + v5[9]), *(v8 + v5[9] + 8));
  v31 = (v8 + v5[10]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  v33 = (v8 + v5[11]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_100016590(*v33, v34);
  }

  v35 = (v41 + ((v4 + v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v8 + v5[12]), *(v8 + v5[12] + 8));
  sub_100016590(*(v8 + v5[13]), *(v8 + v5[13] + 8));
  v36 = *(v8 + v5[14] + 8);

  v37 = *(v8 + v5[15] + 8);

  v38 = *(v0 + v35);

  return _swift_deallocObject(v0, ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v15 | v6 | 7);
}

uint64_t sub_100056788()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v41 = *(v2 + 80);
  v3 = (v41 + 24) & ~v41;
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 1) + 80);
  v42 = *(*(v5 - 1) + 64);
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4 + 8);

  v9 = v0 + ((v4 + v6 + 16) & ~v6);
  sub_100016590(*v9, *(v9 + 8));
  v10 = v5[5];
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v9 + v10, v11);
  v14 = (v9 + v5[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13(v14, v11);
      v20 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v21 = *(v14 + v20[12] + 8);

      v22 = *(v14 + v20[16] + 8);

      v23 = *(v14 + v20[20] + 8);

      v24 = v20[28];
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v16 = v41;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        v17 = v14 + 1;
        goto LABEL_14;
      }

      v13(v14, v11);
      v25 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v26 = *(v14 + v25[12] + 8);

      v27 = *(v14 + v25[16] + 8);

      v24 = v25[20];
    }

    v17 = (v14 + v24 + 8);
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = v14 + 1;
LABEL_13:
    v16 = v41;
    goto LABEL_14;
  }

  v16 = v41;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v18 = v14[1];

  v19 = v14[3];

  v17 = v14 + 5;
LABEL_14:
  v28 = *v17;

LABEL_15:
  v29 = v5[7];
  if (!(*(v12 + 48))(v9 + v29, 1, v11))
  {
    v13(v9 + v29, v11);
  }

  v30 = v5[8];
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 8))(v9 + v30, v31);
  sub_100016590(*(v9 + v5[9]), *(v9 + v5[9] + 8));
  v32 = (v9 + v5[10]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100016590(*v32, v33);
  }

  v34 = (v9 + v5[11]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_100016590(*v34, v35);
  }

  v36 = (((v4 + v6 + 16) & ~v6) + v42) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v9 + v5[12]), *(v9 + v5[12] + 8));
  sub_100016590(*(v9 + v5[13]), *(v9 + v5[13] + 8));
  v37 = *(v9 + v5[14] + 8);

  v38 = *(v9 + v5[15] + 8);

  v39 = *(v0 + v36 + 16);

  return _swift_deallocObject(v0, ((v36 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v16 | v6 | 7);
}

uint64_t sub_100056BAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056BE4()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v42 = *(v2 + 80);
  v3 = (v42 + 16) & ~v42;
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v7 - 1) + 80);
  v43 = *(*(v7 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4 + 16);

  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  v44 = (v8 + v6 + 8) & ~v8;
  v12 = v0 + v44;
  sub_100016590(*v12, *(v12 + 8));
  v13 = v7[5];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v0 + v44 + v13, v14);
  v17 = (v0 + v44 + v7[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16(v17, v14);
      v23 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v24 = *(v17 + v23[12] + 8);

      v25 = *(v17 + v23[16] + 8);

      v26 = *(v17 + v23[20] + 8);

      v27 = v23[28];
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v19 = v42;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        v20 = v17 + 1;
        goto LABEL_14;
      }

      v16(v17, v14);
      v28 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v29 = *(v17 + v28[12] + 8);

      v30 = *(v17 + v28[16] + 8);

      v27 = v28[20];
    }

    v20 = (v17 + v27 + 8);
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = v17 + 1;
LABEL_13:
    v19 = v42;
    goto LABEL_14;
  }

  v19 = v42;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_15;
  }

  v21 = v17[1];

  v22 = v17[3];

  v20 = v17 + 5;
LABEL_14:
  v31 = *v20;

LABEL_15:
  v32 = v7[7];
  if (!(*(v15 + 48))(v12 + v32, 1, v14))
  {
    v16(v12 + v32, v14);
  }

  v33 = v7[8];
  v34 = type metadata accessor for Date();
  (*(*(v34 - 8) + 8))(v12 + v33, v34);
  sub_100016590(*(v12 + v7[9]), *(v12 + v7[9] + 8));
  v35 = (v12 + v7[10]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_100016590(*v35, v36);
  }

  v37 = (v12 + v7[11]);
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_100016590(*v37, v38);
  }

  sub_100016590(*(v12 + v7[12]), *(v12 + v7[12] + 8));
  sub_100016590(*(v12 + v7[13]), *(v12 + v7[13] + 8));
  v39 = *(v12 + v7[14] + 8);

  v40 = *(v12 + v7[15] + 8);

  return _swift_deallocObject(v0, ((v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v19 | v8 | 7);
}

uint64_t sub_100057010()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000570B4()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v35, v2 | 7);
}

uint64_t sub_100057420()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v36 = (v2 + 32) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v36;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v36 = (v2 + 32) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31);

  return _swift_deallocObject(v0, v31 + 9, v2 | 7);
}

uint64_t sub_1000577A0()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v38 = (v2 + 16) & ~v2;
  v4 = v0 + v38;
  sub_100016590(*(v0 + v38), *(v0 + v38 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v38 + v5, v6);
  v9 = (v0 + v38 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v37 = v3;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v3 = v37;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v37 = v3;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v1[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v1[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v26 = (v4 + v1[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v1[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v38 + v3) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v32 = *(v4 + v1[14] + 8);

  v33 = *(v4 + v1[15] + 8);

  v34 = *(v0 + v30 + 8);

  v35 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16, v2 | 7);
}

uint64_t sub_100057B2C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v40 = (v2 + 16) & ~v2;
  v4 = v0 + v40;
  sub_100016590(*(v0 + v40), *(v0 + v40 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v40 + v5, v6);
  v9 = (v0 + v40 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v39 = v3;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v3 = v39;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v39 = v3;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v1[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v1[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v26 = (v4 + v1[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v1[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v40 + v3) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v33 = *(v4 + v1[14] + 8);

  v34 = *(v4 + v1[15] + 8);

  v35 = *(v0 + v30 + 8);

  v36 = *(v0 + v31 + 8);

  v37 = *(v0 + v32);

  return _swift_deallocObject(v0, v32 + 8, v2 | 7);
}

uint64_t sub_100057ECC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057F5C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
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

  v20 = (v23 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16, v2 | 7);
}

uint64_t sub_1000581F0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  sub_100016590(*v6, *(v6 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100058350()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v8 = v1[8];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = *(v7 + v1[11] + 8);

  v13 = *(v7 + v1[12]);

  v14 = *(v0 + v5 + 8);

  v15 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v2 | 7);
}

uint64_t sub_1000584D4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005850C()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  v6 = v0[3];

  v7 = v0[5];

  v8 = v0 + v3;
  sub_100016590(*v8, *(v8 + 1));
  v9 = v1[8];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(&v8[v9], v10);
  v11 = v1[9];
  v12 = type metadata accessor for MACAddress();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = *&v8[v1[11] + 8];

  v14 = *&v8[v1[12]];

  v15 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100058678()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_22;
  }

  sub_100016590(*v5, *(v5 + 8));
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v37 = *(v9 + 8);
  v37(v5 + v7, v8);
  v10 = (v5 + v6[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v37(v10, v8);
        v36 = v4;
        v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v16 = *(v10 + v15[12] + 8);

        v17 = *(v10 + v15[16] + 8);

        v18 = *(v10 + v15[20] + 8);

        v19 = v15[28];
        break;
      case 3:
        v37(v10, v8);
        v36 = v4;
        v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v21 = *(v10 + v20[12] + 8);

        v22 = *(v10 + v20[16] + 8);

        v19 = v20[20];
        break;
      case 4:
        goto LABEL_10;
      default:
        goto LABEL_15;
    }

    v4 = v36;
    v14 = (v10 + v19 + 8);
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_10:
    v14 = v10 + 1;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v10[1];

    v13 = v10[3];

    v14 = v10 + 5;
LABEL_14:
    v23 = *v14;
  }

LABEL_15:
  v24 = v6[7];
  if (!(*(v9 + 48))(v5 + v24, 1, v8))
  {
    v37(v5 + v24, v8);
  }

  v25 = v6[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v6[9]), *(v5 + v6[9] + 8));
  v27 = (v5 + v6[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v6[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v6[12]), *(v5 + v6[12] + 8));
  sub_100016590(*(v5 + v6[13]), *(v5 + v6[13] + 8));
  v31 = *(v5 + v6[14] + 8);

  v32 = *(v5 + v6[15] + 8);

LABEL_22:
  v33 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v0 + v33);

  return _swift_deallocObject(v0, v33 + 8, v2 | 7);
}

uint64_t sub_100058A44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100058B10()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100058BD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100058C98()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v4 + 8);

  v14 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100058E08()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v35 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v31 = *(v5 + v1[14] + 8);

  v32 = *(v5 + v1[15] + 8);

  return _swift_deallocObject(v0, v35 + v3 + 1, v2 | 7);
}

uint64_t sub_1000591A8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000591E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005923C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v36 = *(*(v1 - 1) + 64);
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
      v35 = (v2 + 32) & ~v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v3 = v35;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v35 = (v2 + 32) & ~v2;
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

  v30 = (v6 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v32 = *(v6 + v1[14] + 8);

  v33 = *(v6 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v36, v2 | 7);
}

uint64_t sub_1000595B0()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v44 = *(*(v1 - 1) + 80);
  v2 = (v44 + 16) & ~v44;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for OwnedBeaconRecord();
  v45 = *(*(v4 - 1) + 64);
  v43 = *(*(v4 - 1) + 80);
  v41 = (v2 + v3 + v43) & ~v43;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v42 = *(v7 - 8);
  v8 = *(v42 + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[6], v7);
  v9 = v1[10];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v46 = *(v11 + 8);
  v46(v5 + v9, v10);
  v12 = v1[12];
  if (!(*(v11 + 48))(v5 + v12, 1, v10))
  {
    v46(v5 + v12, v10);
  }

  v13 = *(v5 + v1[13]);

  v14 = v41;
  v15 = v0 + v41;
  sub_100016590(*(v0 + v41), *(v0 + v41 + 8));
  v16 = v8;
  v8(v0 + v41 + v4[5], v7);
  v17 = (v0 + v41 + v4[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8(v17, v7);
      v23 = v41;
      v24 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v25 = *(v17 + v24[12] + 8);

      v26 = *(v17 + v24[16] + 8);

      v27 = *(v17 + v24[20] + 8);

      v28 = v24[28];
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v19 = v0;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_17;
        }

        v20 = v17 + 1;
        goto LABEL_16;
      }

      v8(v17, v7);
      v23 = v41;
      v29 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v30 = *(v17 + v29[12] + 8);

      v31 = *(v17 + v29[16] + 8);

      v28 = v29[20];
    }

    v14 = v23;
    v8 = v16;
    v20 = (v17 + v28 + 8);
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = v17 + 1;
LABEL_15:
    v19 = v0;
    goto LABEL_16;
  }

  v19 = v0;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_17;
  }

  v21 = v17[1];

  v22 = v17[3];

  v20 = v17 + 5;
LABEL_16:
  v32 = *v20;

LABEL_17:
  v33 = v4[7];
  if (!(*(v42 + 48))(v15 + v33, 1, v7))
  {
    v8(v15 + v33, v7);
  }

  v46(v15 + v4[8], v10);
  sub_100016590(*(v15 + v4[9]), *(v15 + v4[9] + 8));
  v34 = (v15 + v4[10]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_100016590(*v34, v35);
  }

  v36 = (v15 + v4[11]);
  v37 = v36[1];
  if (v37 >> 60 != 15)
  {
    sub_100016590(*v36, v37);
  }

  sub_100016590(*(v15 + v4[12]), *(v15 + v4[12] + 8));
  sub_100016590(*(v15 + v4[13]), *(v15 + v4[13] + 8));
  v38 = *(v15 + v4[14] + 8);

  v39 = *(v15 + v4[15] + 8);

  return _swift_deallocObject(v19, v14 + v45, v44 | v43 | 7);
}

uint64_t sub_100059A78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059AD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  v3 = *(v0 + 88);

  v4 = *(v0 + 120);

  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  sub_100016590(*(v0 + 160), *(v0 + 168));
  sub_100016590(*(v0 + 176), *(v0 + 184));
  sub_100016590(*(v0 + 192), *(v0 + 200));
  sub_100016590(*(v0 + 208), *(v0 + 216));
  sub_100016590(*(v0 + 224), *(v0 + 232));
  sub_100016590(*(v0 + 240), *(v0 + 248));
  v5 = *(v0 + 264);

  sub_100016590(*(v0 + 272), *(v0 + 280));

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_100059B90()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100059BE8()
{
  v1 = *(v0 + 24);

  sub_100408170(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100059C7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059CB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059CF8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;

    goto LABEL_23;
  }

  sub_100016590(*v5, *(v5 + 8));
  v7 = type metadata accessor for OwnedBeaconRecord();
  v8 = v7[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v42 = *(v10 + 8);
  v42(v5 + v8, v9);
  v11 = (v5 + v7[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v42(v11, v9);
        v41 = v4;
        v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v17 = *(v11 + v16[12] + 8);

        v18 = *(v11 + v16[16] + 8);

        v19 = *(v11 + v16[20] + 8);

        v20 = v16[28];
        break;
      case 3:
        v42(v11, v9);
        v41 = v4;
        v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v22 = *(v11 + v21[12] + 8);

        v23 = *(v11 + v21[16] + 8);

        v20 = v21[20];
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_16;
    }

    v4 = v41;
    v15 = (v11 + v20 + 8);
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_11:
    v15 = v11 + 1;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = v11[1];

    v14 = v11[3];

    v15 = v11 + 5;
LABEL_15:
    v24 = *v15;
  }

LABEL_16:
  v25 = v7[7];
  if (!(*(v10 + 48))(v5 + v25, 1, v9))
  {
    v42(v5 + v25, v9);
  }

  v26 = v7[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v5 + v26, v27);
  sub_100016590(*(v5 + v7[9]), *(v5 + v7[9] + 8));
  v28 = (v5 + v7[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v5 + v7[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  sub_100016590(*(v5 + v7[12]), *(v5 + v7[12] + 8));
  sub_100016590(*(v5 + v7[13]), *(v5 + v7[13] + 8));
  v32 = *(v5 + v7[14] + 8);

  v33 = *(v5 + v7[15] + 8);

LABEL_23:
  v34 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v0 + v34);

  v38 = *(v0 + v35);

  v39 = *(v0 + v36);

  return _swift_deallocObject(v0, v36 + 8, v2 | 7);
}

uint64_t sub_10005A1AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10005A318(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for UUID();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10005A480(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005A52C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005A648()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_100016590(v0[8], v0[9]);
  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);
  v4 = v0[27];
  if (v4 >> 60 != 15)
  {
    sub_100016590(v0[26], v4);
  }

  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  v5 = v0[33];

  v6 = v0[35];
  if (v6 >> 60 != 15)
  {
    sub_100016590(v0[34], v6);
  }

  return _swift_deallocObject(v0, 288, 7);
}

uint64_t sub_10005A720()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[6], v1);
  }

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[14];

  sub_100016590(v0[15], v0[16]);
  sub_100016590(v0[17], v0[18]);
  sub_100016590(v0[19], v0[20]);
  v5 = v0[23];

  v6 = v0[24];

  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  sub_100016590(v0[30], v0[31]);
  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v7 = v0[37];
  if (v7 >> 60 != 15)
  {
    sub_100016590(v0[36], v7);
  }

  v8 = v0[39];

  v9 = v0[41];
  if (v9 >> 60 != 15)
  {
    sub_100016590(v0[40], v9);
  }

  sub_100016590(v0[42], v0[43]);
  sub_100016590(v0[44], v0[45]);

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_10005A828(uint64_t a1, uint64_t a2, int *a3)
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
    v13 = type metadata accessor for BeaconProductInfoRecord();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10005A954(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = type metadata accessor for BeaconProductInfoRecord();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_10005AA80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  v5 = *(v0 + 120);

  v6 = *(v0 + 136);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 128), v6);
  }

  v7 = *(v0 + 152);

  v8 = *(v0 + 160);

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_10005AB2C()
{
  v1 = (type metadata accessor for AccessoryPairingLockAckResponse() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005AC1C()
{
  v1 = (type metadata accessor for AccessoryUnpairData() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + v1[7] + 8);

  v12 = *(v9 + v1[8] + 8);

  v13 = *(v9 + v1[9] + 8);

  v14 = *(v9 + v1[10] + 8);

  v15 = *(v9 + v1[11] + 8);

  v16 = *(v9 + v1[12] + 8);

  v17 = *(v0 + v4);

  v18 = *(v0 + v6 + 8);

  v19 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_10005ADB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005ADF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  sub_100016590(*(v0 + 112), *(v0 + 120));
  sub_100016590(*(v0 + 128), *(v0 + 136));
  v5 = *(v0 + 152);

  v6 = *(v0 + 168);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 160), v6);
  }

  v7 = *(v0 + 184);

  v8 = *(v0 + 200);

  v9 = *(v0 + 208);

  v10 = *(v0 + 232);

  v11 = *(v0 + 240);

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_10005AEB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 120);

  sub_100016590(*(v0 + 128), *(v0 + 136));
  sub_100016590(*(v0 + 144), *(v0 + 152));
  v6 = *(v0 + 168);

  v7 = *(v0 + 184);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 176), v7);
  }

  v8 = *(v0 + 200);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_10005AF58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005AF90()
{
  v1 = (type metadata accessor for AccessoryPairingLockCheckResponse() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  sub_100016590(*(v6 + 16), *(v6 + 24));
  sub_100016590(*(v6 + 32), *(v6 + 40));
  v7 = *(v0 + v3 + 56);

  v8 = v1[10];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005B0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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

    return (v10 + 1);
  }
}

uint64_t sub_10005B170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005B26C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B2A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005B398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005B458(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

BOOL sub_10005B474(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_10005B468(*v1);
}

uint64_t sub_10005B484(char a1)
{
  if (a1)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

id sub_10005B4A4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = 0;
  return v2;
}

uint64_t sub_10005B4C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B514()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v7 + 9, v3 | 7);
}

uint64_t sub_10005B614()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005B64C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_10005B730()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B784()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = *(v2 + 8);
  v10(v0 + v5, v1);
  v10(v0 + v6, v1);
  v11 = *(v0 + v7 + 8);
  if (v11 >> 60 != 15)
  {
    sub_100016590(*(v0 + v7), v11);
  }

  return _swift_deallocObject(v0, v7 + 18, v3 | 7);
}

uint64_t sub_10005B8A0()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005B99C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005BA88()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + 32);

  v9 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005BB6C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v46 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v45 = *(*(v3 - 1) + 80);
  v44 = *(*(v3 - 1) + 64);
  v47 = (v2 + 16) & ~v2;
  v48 = v0;
  v4 = v0 + v47;
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v47 + v5, v6);
  v9 = (v0 + v47 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v14 = v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v9 + v15[12] + 8);

      v17 = *(v9 + v15[16] + 8);

      v18 = *(v9 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v2 = v14;
      v13 = (v9 + v19 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v14 = v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v9 + v20[12] + 8);

      v22 = *(v9 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v23 = *v13;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v7 + 48))(v4 + v24, 1, v6))
  {
    v8(v4 + v24, v6);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v4 + v25, v26);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v27 = (v4 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = v8;
  v30 = (v4 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + v45 + 8) & ~v45;
  v34 = (v44 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v35 = *(v4 + v1[14] + 8);

  v36 = *(v4 + v1[15] + 8);

  v37 = *(v48 + v32);

  sub_100016590(*(v48 + v33), *(v48 + v33 + 8));
  v29(v48 + v33 + v3[6], v6);
  v38 = v3[7];
  v39 = type metadata accessor for MACAddress();
  (*(*(v39 - 8) + 8))(v48 + v33 + v38, v39);
  v40 = *(v48 + v33 + v3[9] + 8);

  v41 = *(v48 + v33 + v3[10]);

  v42 = *(v48 + v34 + 8);

  return _swift_deallocObject(v48, v34 + 16, v2 | v45 | 7);
}

uint64_t sub_10005BFF4()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 1) + 80);
  v35 = *(*(v2 - 1) + 64);
  v4 = (v3 + 16) & ~v3;
  v5 = v0 + v4;
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v4 + v6, v7);
  v10 = (v0 + v4 + v2[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = v0;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v1 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = v0;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v2[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v2[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v27 = (v5 + v2[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v2[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  sub_100016590(*(v5 + v2[13]), *(v5 + v2[13] + 8));
  v31 = *(v5 + v2[14] + 8);

  v32 = *(v5 + v2[15] + 8);

  return _swift_deallocObject(v1, v4 + v35, v3 | 7);
}

uint64_t sub_10005C360()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  sub_100016590(v0[3], v0[4]);
  v6 = v0 + v3;
  sub_100016590(*v6, *(v6 + 1));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(&v6[v7], v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = *&v6[v1[11] + 8];

  v12 = *&v6[v1[12]];

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10005C4E0()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005C5D4()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v1[7];
  v10 = type metadata accessor for MACAddress();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v11(v7 + v1[8], v10);
  v12 = *(v7 + v1[9] + 8);

  v13 = v1[10];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);
  sub_100016590(*(v7 + v1[11]), *(v7 + v1[11] + 8));
  v15 = v7 + v1[12];
  sub_100016590(*v15, *(v15 + 8));
  sub_100016590(*(v15 + 16), *(v15 + 24));
  sub_100016590(*(v15 + 32), *(v15 + 40));
  sub_100016590(*(v7 + v1[13]), *(v7 + v1[13] + 8));
  v16 = *(v0 + v4);

  v17 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10005C804()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
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
  v15 = *(v0 + v4);

  v16 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10005CA14()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005CAB0()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10005CB74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CBAC()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  v6 = v0[4];

  v7 = v0[5];

  v8 = v0 + v3;
  sub_100016590(*v8, *(v8 + 1));
  v9 = v1[8];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(&v8[v9], v10);
  v11 = v1[9];
  v12 = type metadata accessor for MACAddress();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = *&v8[v1[11] + 8];

  v14 = *&v8[v1[12]];

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10005CD18()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[11] + 8);

  v11 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005CE68()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10005D088()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D0DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D124()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005D278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_10005D344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005D400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005D4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10005D598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D5D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D614()
{
  v1 = type metadata accessor for AccessoryPairingAnalytics();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v9 = v1[5];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  sub_100016590(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = *(v5 + v1[8] + 8);

  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[12];
  v12 = type metadata accessor for MACAddress();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = *(v5 + v1[13] + 8);

  v15 = v1[14];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_10005D85C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[8], v1);
  }

  v2 = v0[11];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[10], v2);
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10005D900()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D938()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005D980()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005D9B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D9FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DA34()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005DA74()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005DB90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005DBC8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005DCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005DD94()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_10005DDDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005DEB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005DFA0()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  sub_100007BAC((v0 + v3 + 24));
  v9 = v1[10];
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = *(v0 + v3 + v1[11]);

  v12 = *(v0 + v3 + v1[12]);

  v13 = *(v0 + v3 + v1[13]);

  v14 = *(v0 + v3 + v1[14]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005E0E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100007BAC((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005E138()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005E1C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E204()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v0[v10];

  v13 = *&v0[v11 + 8];

  return _swift_deallocObject(v0, v11 + 16, v2 | 7);
}

uint64_t sub_10005E35C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E3A4()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *&v0[v10];

  v14 = *&v0[v11];

  v15 = *&v0[v12 + 8];

  return _swift_deallocObject(v0, v12 + 16, v2 | 7);
}

uint64_t sub_10005E510()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005E550()
{
  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005E598()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E5D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E610()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;
  v9 = (v5 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v12 = *(v0 + v7);

  v11(v0 + v8, v1);
  v13 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

uint64_t sub_10005E740()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E808()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E840()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v45 = *(*v1 + 80);
  v2 = (v45 + 24) & ~v45;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for OwnedBeaconRecord();
  v44 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v44) & ~v44;
  v46 = *(*(v4 - 1) + 64);
  v6 = *(v0 + 16);

  v7 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v8 = v1[8];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v7 + v8, v9);
  v12 = v1[9];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = *(v7 + v1[11] + 8);

  v15 = *(v7 + v1[12]);

  v47 = v5;
  v16 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v11(v0 + v5 + v4[5], v9);
  v17 = (v0 + v5 + v4[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v19 = v44;
      if (EnumCaseMultiPayload == 3)
      {
        v11(v17, v9);
        v28 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v29 = *(v17 + v28[12] + 8);

        v30 = *(v17 + v28[16] + 8);

        v21 = (v17 + v28[20] + 8);
        v20 = v45;
      }

      else
      {
        v20 = v45;
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_14;
        }

        v21 = v17 + 1;
      }

      goto LABEL_13;
    }

    v11(v17, v9);
    v24 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v25 = *(v17 + v24[12] + 8);

    v26 = *(v17 + v24[16] + 8);

    v27 = *(v17 + v24[20] + 8);

    v21 = (v17 + v24[28] + 8);
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = v17 + 1;
LABEL_12:
    v19 = v44;
    v20 = v45;
    goto LABEL_13;
  }

  v19 = v44;
  v20 = v45;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_14;
  }

  v22 = v17[1];

  v23 = v17[3];

  v21 = v17 + 5;
LABEL_13:
  v31 = *v21;

LABEL_14:
  v32 = v4[7];
  if (!(*(v10 + 48))(v16 + v32, 1, v9))
  {
    v11(v16 + v32, v9);
  }

  v33 = v4[8];
  v34 = type metadata accessor for Date();
  (*(*(v34 - 8) + 8))(v16 + v33, v34);
  sub_100016590(*(v16 + v4[9]), *(v16 + v4[9] + 8));
  v35 = (v16 + v4[10]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    sub_100016590(*v35, v36);
  }

  v37 = (v16 + v4[11]);
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_100016590(*v37, v38);
  }

  v39 = (v46 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v16 + v4[12]), *(v16 + v4[12] + 8));
  sub_100016590(*(v16 + v4[13]), *(v16 + v4[13] + 8));
  v40 = *(v16 + v4[14] + 8);

  v41 = *(v16 + v4[15] + 8);

  v42 = *(v0 + v39 + 8);

  return _swift_deallocObject(v0, v39 + 16, v20 | v19 | 7);
}

uint64_t sub_10005ECC0()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 1) + 80);
  v35 = *(*(v2 - 1) + 64);
  v4 = (v3 + 16) & ~v3;
  v5 = v0 + v4;
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v4 + v6, v7);
  v10 = (v0 + v4 + v2[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = v0;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v1 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = v0;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v2[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v2[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v27 = (v5 + v2[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v2[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  sub_100016590(*(v5 + v2[13]), *(v5 + v2[13] + 8));
  v31 = *(v5 + v2[14] + 8);

  v32 = *(v5 + v2[15] + 8);

  return _swift_deallocObject(v1, v4 + v35, v3 | 7);
}

uint64_t sub_10005F028()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v1[11] + 8);

  v11 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005F178()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v7 = v1[8];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[9];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11] + 8);

  v12 = *(v6 + v1[12]);

  v13 = *(v0 + v4);

  v14 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_10005F2E8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10005F40C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_10005F4DC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
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

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v21, v2 | 7);
}

uint64_t sub_10005F7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerStatusCode();
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

    return (v10 + 1);
  }
}

uint64_t sub_10005F8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ServerStatusCode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005F968()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F9A8()
{
  v1 = sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007BAC((v0 + v5));
  v7 = *(v0 + v6);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_10005FA90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005FAC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FMNAccountType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10005FB74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FMNAccountType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10005FC28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005FC78()
{
  v1 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005FD5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005FD9C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005FE0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005FE58()
{
  v1 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005FF28()
{
  v1 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = (v0 + v6);
  v10 = *(v0 + v6 + 8);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*v9, v10);
  }

  v11 = v9[3];

  v12 = v9[5];

  v13 = v9[7];

  sub_100016590(v9[8], v9[9]);
  sub_100016590(v9[10], v9[11]);
  sub_100016590(v9[12], v9[13]);
  v14 = v9[16];

  sub_100016590(v9[18], v9[19]);
  sub_100016590(v9[20], v9[21]);
  sub_100016590(v9[22], v9[23]);
  sub_100016590(v9[24], v9[25]);
  sub_100016590(v9[26], v9[27]);
  v15 = v9[29];
  if (v15 >> 60 != 15)
  {
    sub_100016590(v9[28], v15);
  }

  sub_100016590(v9[30], v9[31]);
  sub_100016590(v9[32], v9[33]);
  v16 = v9[35];

  v17 = v9[37];
  if (v17 >> 60 != 15)
  {
    sub_100016590(v9[36], v17);
  }

  return _swift_deallocObject(v0, ((v6 + 311) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000600E8()
{
  v1 = v0[3];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[2], v1);
  }

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_100016590(v0[10], v0[11]);
  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  v5 = v0[18];

  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);
  sub_100016590(v0[26], v0[27]);
  sub_100016590(v0[28], v0[29]);
  v6 = v0[31];
  if (v6 >> 60 != 15)
  {
    sub_100016590(v0[30], v6);
  }

  sub_100016590(v0[32], v0[33]);
  sub_100016590(v0[34], v0[35]);
  v7 = v0[37];

  v8 = v0[39];
  if (v8 >> 60 != 15)
  {
    sub_100016590(v0[38], v8);
  }

  return _swift_deallocObject(v0, 320, 7);
}

uint64_t sub_1000601E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000602B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006041C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060454()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006048C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000604CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100060504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_10006059C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000605F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100060638()
{
  v1 = sub_1000BC4D4(&qword_1016A3440, &qword_1013ADEB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10006071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006080C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100060910(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100060A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100060BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100060C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_100060CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100060D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100060D90(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 247)
  {
    v14 = *(a1 + a3[6]);
    if (v14 <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = *(a1 + a3[6]);
    }

    v16 = v15 - 8;
    if (v14 >= 8)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = type metadata accessor for Date();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[7];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100060F20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 247)
  {
    *(a1 + a4[6]) = a2 + 8;
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000610A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100061160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNAccountType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for URLComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000612FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FMNAccountType();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for URLComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000613F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for MACAddress();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100061504(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for MACAddress();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_100061618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for MACAddress();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100061690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for MACAddress();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10006170C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100061778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100061858(uint64_t a1)
{
  result = type metadata accessor for SharedBeaconRecord(0);
  *(a1 + *(result + 52)) = 1;
  return result;
}

uint64_t sub_1000618A4()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v8(v0 + v3 + v1[6], v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v3 + v9, v10);
  v13 = v1[8];
  if (!(*(v11 + 48))(v0 + v3 + v13, 1, v10))
  {
    v12(v5 + v13, v10);
  }

  v14 = (v19 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v1[9] + 16);

  v16 = *(v5 + v1[10] + 8);

  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_100061AA8()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v3 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v3 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + v1[9] + 16);

  v16 = *(v4 + v1[10] + 8);

  v17 = *(v0 + v13);

  v18 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v2 | 7);
}

uint64_t sub_100061CA8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100061CF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061D34()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100061DDC()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v36 = *(*(v1 - 1) + 64);
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
      v35 = (v2 + 32) & ~v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v3 = v35;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v35 = (v2 + 32) & ~v2;
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

  v30 = (v6 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v32 = *(v6 + v1[14] + 8);

  v33 = *(v6 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v36, v2 | 7);
}

uint64_t sub_100062150()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v36 = (v2 + 16) & ~v2;
  v4 = v0 + v36;
  sub_100016590(*(v0 + v36), *(v0 + v36 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v36 + v5, v6);
  v9 = (v0 + v36 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v35 = v3;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v3 = v35;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v35 = v3;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v1[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v1[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v26 = (v4 + v1[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v1[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v3 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v31 = *(v4 + v1[14] + 8);

  v32 = *(v4 + v1[15] + 8);

  v33 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 8, v2 | 7);
}

uint64_t sub_1000624F8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = (v0 + v3 + v1[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v36 = (v2 + 24) & ~v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v3 = v36;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v36 = (v2 + 24) & ~v2;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v1[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v1[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v27 = (v5 + v1[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v1[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v37 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31 + 16);

  return _swift_deallocObject(v0, v31 + 24, v2 | 7);
}

uint64_t sub_10006287C()
{
  v1 = type metadata accessor for ShareInstruction();
  v45 = *(*(v1 - 8) + 80);
  v43 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v46 = v0;
  v44 = (v45 + 24) & ~v45;
  v3 = v0 + v44;
  v4 = *(v0 + v44 + 16);

  v42 = v1;
  v5 = v0 + v44 + *(v1 + 24);
  sub_100016590(*v5, *(v5 + 8));
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = (v5 + v6[6]);
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
  v25 = v6[7];
  if (!(*(v9 + 48))(v5 + v25, 1, v8))
  {
    v10(v5 + v25, v8);
  }

  v41 = v10;
  v26 = v6[8];
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(v5 + v26, v27);
  sub_100016590(*(v5 + v6[9]), *(v5 + v6[9] + 8));
  v30 = (v5 + v6[10]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v5 + v6[11]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100016590(*v32, v33);
  }

  sub_100016590(*(v5 + v6[12]), *(v5 + v6[12] + 8));
  sub_100016590(*(v5 + v6[13]), *(v5 + v6[13] + 8));
  v34 = *(v5 + v6[14] + 8);

  v35 = *(v5 + v6[15] + 8);

  v36 = *(v3 + v42[7] + 16);

  v41(v3 + v42[8], v8);
  v37 = v42[9];
  if (!(*(v28 + 48))(v3 + v37, 1, v27))
  {
    v29(v3 + v37, v27);
  }

  v38 = (v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v46 + v38 + 8);

  return _swift_deallocObject(v46, v38 + 16, v45 | 7);
}

uint64_t sub_100062CC4()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v3 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v3 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[9] + 16);

  v15 = *(v4 + v1[10] + 8);

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_100062EC8()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
  }

  else
  {
    v20 = v4;
    sub_100016590(*v6, *(v6 + 8));
    v8 = type metadata accessor for ShareRecord();
    v9 = v8[5];
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 8);
    v11(v6 + v9, v10);
    v11(v6 + v8[6], v10);
    v12 = v8[7];
    v13 = type metadata accessor for Date();
    v14 = *(v13 - 8);
    v15 = *(v14 + 8);
    v15(v6 + v12, v13);
    v16 = v8[8];
    if (!(*(v14 + 48))(v6 + v16, 1, v13))
    {
      v15(v6 + v16, v13);
    }

    v17 = *(v6 + v8[9] + 16);

    v18 = *(v6 + v8[10] + 8);

    v4 = v20;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000630DC()
{
  v1 = type metadata accessor for ShareInstruction();
  v43 = *(*(v1 - 8) + 80);
  v41 = *(*(v1 - 8) + 64);

  v2 = *(v0 + 24);

  v44 = v0;
  v42 = (v43 + 32) & ~v43;
  v3 = v0 + v42;
  v4 = *(v0 + v42 + 16);

  v40 = v1;
  v5 = v0 + v42 + *(v1 + 24);
  sub_100016590(*v5, *(v5 + 8));
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = (v5 + v6[6]);
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
  v25 = v6[7];
  if (!(*(v9 + 48))(v5 + v25, 1, v8))
  {
    v10(v5 + v25, v8);
  }

  v39 = v10;
  v26 = v6[8];
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v29(v5 + v26, v27);
  sub_100016590(*(v5 + v6[9]), *(v5 + v6[9] + 8));
  v30 = (v5 + v6[10]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v5 + v6[11]);
  v33 = v32[1];
  if (v33 >> 60 != 15)
  {
    sub_100016590(*v32, v33);
  }

  sub_100016590(*(v5 + v6[12]), *(v5 + v6[12] + 8));
  sub_100016590(*(v5 + v6[13]), *(v5 + v6[13] + 8));
  v34 = *(v5 + v6[14] + 8);

  v35 = *(v5 + v6[15] + 8);

  v36 = *(v3 + v40[7] + 16);

  v39(v3 + v40[8], v8);
  v37 = v40[9];
  if (!(*(v28 + 48))(v3 + v37, 1, v27))
  {
    v29(v3 + v37, v27);
  }

  return _swift_deallocObject(v44, v42 + v41, v43 | 7);
}

uint64_t sub_10006350C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10006355C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000635D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063608()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063648()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v36 = (v2 + 16) & ~v2;
  v4 = v0 + v36;
  sub_100016590(*(v0 + v36), *(v0 + v36 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v36 + v5, v6);
  v9 = (v0 + v36 + v1[6]);
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

      v11 = v9[1];

      v12 = v9[3];

      v13 = v9 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v8(v9, v6);
      v35 = v3;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v3 = v35;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v35 = v3;
      v19 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v20 = *(v9 + v19[12] + 8);

      v21 = *(v9 + v19[16] + 8);

      v18 = v19[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v13 = v9 + 1;
LABEL_13:
      v22 = *v13;

      break;
  }

LABEL_14:
  v23 = v1[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v1[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v26 = (v4 + v1[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v1[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v3 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v31 = *(v4 + v1[14] + 8);

  v32 = *(v4 + v1[15] + 8);

  v33 = *(v0 + v30 + 16);

  return _swift_deallocObject(v0, v30 + 24, v2 | 7);
}

uint64_t sub_1000639C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063A0C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v24 = (v2 + 16) & ~v2;
  v3 = v0 + v24;
  sub_100016590(*(v0 + v24), *(v0 + v24 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v24 + v4, v5);
  v7(v0 + v24 + v1[6], v5);
  v8 = *(v0 + v24 + v1[7] + 16);

  v9 = *(v0 + v24 + v1[8] + 8);

  v10 = *(v0 + v24 + v1[9] + 8);

  v11 = *(v0 + v24 + v1[10] + 8);

  v12 = v1[18];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v24 + v12, v13);
  v14 = v1[19];
  v15 = *(v6 + 48);
  if (!v15(v0 + v24 + v14, 1, v5))
  {
    v7(v3 + v14, v5);
  }

  v16 = v3 + v1[20];
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = *(v17 + 20);
    if (!v15(v16 + v18, 1, v5))
    {
      v7(v16 + v18, v5);
    }
  }

  v19 = (v25 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v19 + 16);

  v22 = *(v0 + v20);

  return _swift_deallocObject(v0, v20 + 8, v2 | 7);
}

uint64_t sub_100063CA8()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v22 = (v2 + 16) & ~v2;
  v3 = v0 + v22;
  sub_100016590(*(v0 + v22), *(v0 + v22 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v22 + v4, v5);
  v7(v0 + v22 + v1[6], v5);
  v8 = *(v0 + v22 + v1[7] + 16);

  v9 = *(v0 + v22 + v1[8] + 8);

  v10 = *(v0 + v22 + v1[9] + 8);

  v11 = *(v0 + v22 + v1[10] + 8);

  v12 = v1[18];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v22 + v12, v13);
  v14 = v1[19];
  v15 = *(v6 + 48);
  if (!v15(v0 + v22 + v14, 1, v5))
  {
    v7(v3 + v14, v5);
  }

  v16 = v3 + v1[20];
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = *(v17 + 20);
    if (!v15(v16 + v18, 1, v5))
    {
      v7(v16 + v18, v5);
    }
  }

  v19 = (v23 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v19 + 16);

  return _swift_deallocObject(v0, v19 + 24, v2 | 7);
}

uint64_t sub_100063F4C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v38 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 40);

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
      v37 = (v2 + 48) & ~v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v3 = v37;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v37 = (v2 + 48) & ~v2;
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

  v30 = (v6 + v1[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v38 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v33 = *(v6 + v1[14] + 8);

  v34 = *(v6 + v1[15] + 8);

  v35 = *(v0 + v32);

  return _swift_deallocObject(v0, v32 + 8, v2 | 7);
}

uint64_t sub_1000642D4()
{
  v1 = v0;
  v2 = type metadata accessor for ShareRecord();
  v50 = *(*(v2 - 1) + 80);
  v3 = (v50 + 32) & ~v50;
  v4 = (*(*(v2 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for OwnedBeaconRecord();
  v49 = *(*(v5 - 1) + 80);
  v45 = v4;
  v46 = (v4 + v49 + 24) & ~v49;
  v48 = *(*(v5 - 1) + 64);
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  v7 = v1 + v3;
  sub_100016590(*(v1 + v3), *(v1 + v3 + 8));
  v8 = v2[5];
  v9 = type metadata accessor for UUID();
  v47 = *(v9 - 8);
  v10 = *(v47 + 8);
  v10(v7 + v8, v9);
  v10(v7 + v2[6], v9);
  v11 = v2[7];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v51 = *(v13 + 8);
  v51(v7 + v11, v12);
  v14 = v2[8];
  if (!(*(v13 + 48))(v7 + v14, 1, v12))
  {
    v51(v7 + v14, v12);
  }

  v15 = *(v7 + v2[9] + 16);

  v16 = *(v7 + v2[10] + 8);

  v17 = *(v1 + v45 + 16);

  v18 = v1 + v46;
  sub_100016590(*(v1 + v46), *(v1 + v46 + 8));
  v10(v1 + v46 + v5[5], v9);
  v19 = (v1 + v46 + v5[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = v1;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_16;
      }

      v22 = v19[1];

      v23 = v19[3];

      v24 = v19 + 5;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10(v19, v9);
      v25 = v10;
      v26 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v27 = *(v19 + v26[12] + 8);

      v28 = *(v19 + v26[16] + 8);

      v29 = *(v19 + v26[20] + 8);

      v30 = v26[28];
LABEL_14:
      v10 = v25;
      v24 = (v19 + v30 + 8);
      goto LABEL_15;
    case 3:
      v10(v19, v9);
      v25 = v10;
      v31 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v32 = *(v19 + v31[12] + 8);

      v33 = *(v19 + v31[16] + 8);

      v30 = v31[20];
      goto LABEL_14;
    case 4:
LABEL_11:
      v24 = v19 + 1;
LABEL_15:
      v34 = *v24;

      break;
  }

LABEL_16:
  v35 = v5[7];
  if (!(*(v47 + 48))(v18 + v35, 1, v9))
  {
    v10(v18 + v35, v9);
  }

  v51(v18 + v5[8], v12);
  sub_100016590(*(v18 + v5[9]), *(v18 + v5[9] + 8));
  v36 = (v18 + v5[10]);
  v37 = v36[1];
  if (v37 >> 60 != 15)
  {
    sub_100016590(*v36, v37);
  }

  v38 = (v18 + v5[11]);
  v39 = v38[1];
  if (v39 >> 60 != 15)
  {
    sub_100016590(*v38, v39);
  }

  v40 = (v48 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v18 + v5[12]), *(v18 + v5[12] + 8));
  sub_100016590(*(v18 + v5[13]), *(v18 + v5[13] + 8));
  v41 = *(v18 + v5[14] + 8);

  v42 = *(v18 + v5[15] + 8);

  v43 = *(v21 + v40);

  return _swift_deallocObject(v21, v40 + 8, v50 | v49 | 7);
}

uint64_t sub_1000647C8()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000648A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006493C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006498C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000649D4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064A0C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100064A54()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v28 = *(*(v1 - 1) + 80);
  v25 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v24 = *(v3 + 80);
  v23 = *(v3 + 64);
  v29 = v0;
  v26 = (v28 + 16) & ~v28;
  v4 = v0 + v26;
  sub_100016590(*(v0 + v26), *(v0 + v26 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v26 + v5, v6);
  v8(v0 + v26 + v1[6], v6);
  v9 = *(v0 + v26 + v1[7] + 16);

  v10 = *(v0 + v26 + v1[8] + 8);

  v11 = *(v0 + v26 + v1[9] + 8);

  v12 = *(v0 + v26 + v1[10] + 8);

  v13 = *(v3 + 8);
  v27 = v2;
  v13(v0 + v26 + v1[18], v2);
  v14 = v1[19];
  v15 = *(v7 + 48);
  if (!v15(v4 + v14, 1, v6))
  {
    v8(v4 + v14, v6);
  }

  v16 = v4 + v1[20];
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = *(v17 + 20);
    if (!v15(v16 + v18, 1, v6))
    {
      v8(v16 + v18, v6);
    }
  }

  v19 = (v26 + v25 + v24) & ~v24;
  v20 = (v23 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13(v29 + v19, v27);
  v21 = *(v29 + v20);

  return _swift_deallocObject(v29, v20 + 8, v28 | v24 | 7);
}

uint64_t sub_100064D50()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v22 = v0;
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
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

  return _swift_deallocObject(v22, v3 + v21, v2 | 7);
}

uint64_t sub_100064FD4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000652C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100065384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006543C()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  sub_100016590(*(v0 + 6), *(v0 + 7));
  v6 = *(v0 + 8);

  v7 = *(v0 + 9);

  v8 = &v0[v3];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(&v0[v3], 1, v9);
  v12 = *(v10 + 8);
  if (!v11)
  {
    v12(&v0[v3], v9);
  }

  v12(&v8[v1[5]], v9);
  v13 = *&v8[v1[6] + 16];

  v14 = *&v8[v1[7] + 16];

  v15 = *&v8[v1[8] + 8];

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(&v8[v16], v17);
  v18 = *&v8[v1[12] + 8];

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000656D4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006570C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065748()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065780()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000657BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000657F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100065834()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for OwnerSharingCircle() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  sub_100016590(*(v0 + v8), *(v0 + v8 + 8));
  v12(v0 + v8 + v6[7], v1);
  v12(v0 + v8 + v6[8], v1);
  v13 = *(v0 + v8 + v6[10]);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000659B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100065AD4(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for BeaconNamingRecord();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100065BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLComponents();
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

    return (v10 + 1);
  }
}

uint64_t sub_100065CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLComponents();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100065DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065E34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

BOOL sub_100065EF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000662E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066318()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 400))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000663B0()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v6 + 8);

  sub_100007BAC((v6 + 24));
  v9 = v1[10];
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11]);

  v12 = *(v6 + v1[12]);

  v13 = *(v6 + v1[13]);

  v14 = *(v6 + v1[14]);

  sub_100007BAC((v0 + v4));
  v15 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_10006650C()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v32 = *(*v1 + 80);
  v2 = (v32 + 24) & ~v32;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for BeaconEstimatedLocation();
  v31 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v31) & ~v31;
  v29 = *(*(v4 - 1) + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v28 = *(v7 + 80);
  v27 = *(v7 + 64);

  v8 = (v0 + v2);
  v9 = *v8;

  v10 = v8[1];

  sub_100007BAC(v8 + 3);
  v11 = v1[10];
  v12 = type metadata accessor for Logger();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = *(v8 + v1[11]);

  v14 = *(v8 + v1[12]);

  v15 = *(v8 + v1[13]);

  v16 = *(v8 + v1[14]);

  v33 = v0;
  v30 = v5;
  v17 = v0 + v5;
  sub_100016590(*(v0 + v5), *(v0 + v5 + 8));
  v18 = *(v7 + 8);
  v18(v17 + v4[5], v6);
  v18(v17 + v4[6], v6);
  v19 = v4[10];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 8);
  v22(v17 + v19, v20);
  v23 = v4[12];
  if (!(*(v21 + 48))(v17 + v23, 1, v20))
  {
    v22(v17 + v23, v20);
  }

  v24 = (v30 + v29 + v28) & ~v28;
  v25 = *(v17 + v4[13]);

  v18(v33 + v24, v6);

  return _swift_deallocObject(v33, v27 + v24 + 1, v32 | v31 | v28 | 7);
}

uint64_t sub_100066844()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v38 = *(*v1 + 80);
  v2 = (v38 + 16) & ~v38;
  v29 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v36 = *(v3 - 8);
  v37 = *(v36 + 80);
  v34 = (v29 + v37 + 16) & ~v37;
  v4 = (*(v36 + 64) + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v39 = v4;
  v35 = *(v6 + 80);
  v7 = (v4 + v35 + 8) & ~v35;
  v8 = *(v6 + 64);
  v9 = type metadata accessor for RawSearchResult();
  v33 = *(*(v9 - 1) + 80);
  v41 = (v7 + v8 + v33) & ~v33;
  v32 = *(*(v9 - 1) + 64);
  v42 = type metadata accessor for Date();
  v10 = *(v42 - 8);
  v30 = *(v10 + 80);
  v31 = *(v10 + 64);
  v11 = *(v0 + v2);

  v12 = *(v0 + v2 + 8);

  sub_100007BAC((v0 + v2 + 24));
  v13 = v1[10];
  v14 = type metadata accessor for Logger();
  (*(*(v14 - 8) + 8))(v0 + v2 + v13, v14);
  v15 = *(v0 + v2 + v1[11]);

  v16 = *(v0 + v2 + v1[12]);

  v17 = *(v0 + v2 + v1[13]);

  v18 = *(v0 + v2 + v1[14]);

  v19 = *(v0 + v29 + 8);
  if ((~v19 & 0x3000000000000000) != 0)
  {
    sub_10001E524(*(v0 + v29), v19);
  }

  v20 = *(v6 + 8);
  v20(v0 + v34, v5);
  sub_100007BAC((v0 + v34 + *(v3 + 20)));
  v21 = *(v0 + v39);

  v40 = v5;
  v20(v0 + v7, v5);
  v22 = v0 + v41;
  v23 = v3;
  v24 = *(v10 + 8);
  v24(v0 + v41 + v9[5], v42);
  v25 = v9[10];
  if (!(*(v10 + 48))(v0 + v41 + v25, 1, v42))
  {
    v24(v22 + v25, v42);
  }

  v26 = v22 + v9[11];
  if (!(*(v36 + 48))(v26, 1, v23))
  {
    v20(v26, v40);
    sub_100007BAC((v26 + *(v23 + 20)));
  }

  v27 = (v41 + v32 + v30) & ~v30;
  v20(v22 + v9[12], v40);
  v24(v0 + v27, v42);

  return _swift_deallocObject(v0, v27 + v31, v38 | v37 | v35 | v33 | v30 | 7);
}

uint64_t sub_100066CE0()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 1) + 80);
  v35 = *(*(v2 - 1) + 64);
  v4 = (v3 + 16) & ~v3;
  v5 = v0 + v4;
  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v2[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v4 + v6, v7);
  v10 = (v0 + v4 + v2[6]);
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

      v12 = v10[1];

      v13 = v10[3];

      v14 = v10 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v9(v10, v7);
      v34 = v0;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v1 = v34;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v34 = v0;
      v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v21 = *(v10 + v20[12] + 8);

      v22 = *(v10 + v20[16] + 8);

      v19 = v20[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v14 = v10 + 1;
LABEL_13:
      v23 = *v14;

      break;
  }

LABEL_14:
  v24 = v2[7];
  if (!(*(v8 + 48))(v5 + v24, 1, v7))
  {
    v9(v5 + v24, v7);
  }

  v25 = v2[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  sub_100016590(*(v5 + v2[9]), *(v5 + v2[9] + 8));
  v27 = (v5 + v2[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v5 + v2[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v5 + v2[12]), *(v5 + v2[12] + 8));
  sub_100016590(*(v5 + v2[13]), *(v5 + v2[13] + 8));
  v31 = *(v5 + v2[14] + 8);

  v32 = *(v5 + v2[15] + 8);

  return _swift_deallocObject(v1, v4 + v35, v3 | 7);
}

uint64_t sub_100067048()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v5 + 8);

  sub_100007BAC((v5 + 24));
  v8 = v1[10];
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11]);

  v11 = *(v5 + v1[12]);

  v12 = *(v5 + v1[13]);

  v13 = *(v5 + v1[14]);

  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_10006718C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000671C4()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v6 + 8);

  sub_100007BAC((v6 + 24));
  v9 = v1[10];
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  v11 = *(v6 + v1[11]);

  v12 = *(v6 + v1[12]);

  v13 = *(v6 + v1[13]);

  v14 = *(v6 + v1[14]);

  v15 = *(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100067320()
{
  v1 = (type metadata accessor for LocationFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = (v0 + v3);
  v8 = *v7;

  v9 = v7[1];

  sub_100007BAC(v7 + 3);
  v10 = v1[10];
  v11 = type metadata accessor for Logger();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = *(v7 + v1[11]);

  v13 = *(v7 + v1[12]);

  v14 = *(v7 + v1[13]);

  v15 = *(v7 + v1[14]);

  v16 = *(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v2 | 7);
}

uint64_t sub_100067488()
{
  v1 = v0;
  v2 = (type metadata accessor for LocationFetcher() - 8);
  v36 = *(*v2 + 80);
  v3 = (v36 + 32) & ~v36;
  v4 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v34 = *(v5 - 8);
  v35 = *(v34 + 80);
  v6 = (v4 + v35 + 40) & ~v35;
  v7 = *(v34 + 64);
  v30 = type metadata accessor for Date();
  v8 = *(v30 - 8);
  v33 = *(v8 + 80);
  v9 = (v6 + v7 + v33) & ~v33;
  v37 = v9;
  v10 = *(v8 + 64);
  v11 = type metadata accessor for RawSearchResult();
  v31 = *(*(v11 - 1) + 80);
  v39 = (v9 + v10 + v31) & ~v31;
  v32 = *(*(v11 - 1) + 64);
  v12 = *(v1 + 16);
  swift_unknownObjectRelease();
  v13 = (v1 + v3);
  v14 = *v13;

  v15 = v13[1];

  sub_100007BAC(v13 + 3);
  v16 = v2[10];
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  v18 = *(v13 + v2[11]);

  v19 = *(v13 + v2[12]);

  v20 = *(v13 + v2[13]);

  v21 = *(v13 + v2[14]);

  sub_100007BAC((v1 + v4));
  v22 = v1 + v6;
  v23 = type metadata accessor for UUID();
  v24 = *(*(v23 - 8) + 8);
  v24(v22, v23);
  sub_100007BAC((v22 + *(v5 + 20)));
  v25 = *(v8 + 8);
  v25(v1 + v37, v30);
  v38 = v1;
  v26 = v1 + v39;
  v25(v1 + v39 + v11[5], v30);
  v27 = v11[10];
  if (!(*(v8 + 48))(v1 + v39 + v27, 1, v30))
  {
    v25(v26 + v27, v30);
  }

  v28 = v26 + v11[11];
  if (!(*(v34 + 48))(v28, 1, v5))
  {
    v24(v28, v23);
    sub_100007BAC((v28 + *(v5 + 20)));
  }

  v24(v26 + v11[12], v23);

  return _swift_deallocObject(v38, v39 + v32, v36 | v35 | v33 | v31 | 7);
}