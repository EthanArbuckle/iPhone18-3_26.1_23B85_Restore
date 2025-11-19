uint64_t sub_10008331C()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000833B0()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000833E8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
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
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
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

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29 + 8);

  v34 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 10);
}

uint64_t sub_100083774()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[15]);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_100083898()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000838F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100083928()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  sub_100007BAC((v0 + 104));

  return _swift_deallocObject(v0, 144);
}

uint64_t sub_100083998()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return _swift_deallocObject(v0, 88);
}

uint64_t sub_1000839E0()
{
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_100083A30()
{
  sub_100A1B300(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100083A7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100083AB4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083C1C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

double sub_100083C60(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_100083C8C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_100083CE4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100083D2C()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[10], v1);
  }

  v2 = v0[13];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[12], v2);
  }

  return _swift_deallocObject(v0, 112);
}

uint64_t sub_100083DAC()
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
  sub_100016590(*(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 216);
}

uint64_t sub_100083E40()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  sub_100016590(v0[6], v0[7]);
  sub_100016590(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[10], v1);
  }

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100083EA8()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100083EEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100083F24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100083F64(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10008401C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000840C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_101073BE8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100084108()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008415C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100084268()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100084338()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000843C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100084400()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10008447C()
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

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_1000847E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100084830()
{
  v1 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v7 - 1) + 48))(v0 + v2, 1, v7))
  {
    goto LABEL_22;
  }

  sub_100016590(*v6, *(v6 + 8));
  v8 = v7[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v36 = *(v10 + 8);
  v36(v6 + v8, v9);
  v11 = (v6 + v7[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v36(v11, v9);
        v35 = v3;
        v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v17 = *(v11 + v16[12] + 8);

        v18 = *(v11 + v16[16] + 8);

        v19 = *(v11 + v16[20] + 8);

        v20 = v16[28];
        break;
      case 3:
        v36(v11, v9);
        v35 = v3;
        v21 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v22 = *(v11 + v21[12] + 8);

        v23 = *(v11 + v21[16] + 8);

        v20 = v21[20];
        break;
      case 4:
        goto LABEL_10;
      default:
        goto LABEL_15;
    }

    v3 = v35;
    v15 = (v11 + v20 + 8);
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_10:
    v15 = v11 + 1;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = v11[1];

    v14 = v11[3];

    v15 = v11 + 5;
LABEL_14:
    v24 = *v15;
  }

LABEL_15:
  v25 = v7[7];
  if (!(*(v10 + 48))(v6 + v25, 1, v9))
  {
    v36(v6 + v25, v9);
  }

  v26 = v7[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  sub_100016590(*(v6 + v7[9]), *(v6 + v7[9] + 8));
  v28 = (v6 + v7[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v6 + v7[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  sub_100016590(*(v6 + v7[12]), *(v6 + v7[12] + 8));
  sub_100016590(*(v6 + v7[13]), *(v6 + v7[13] + 8));
  v32 = *(v6 + v7[14] + 8);

  v33 = *(v6 + v7[15] + 8);

LABEL_22:

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100084BFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100084C34()
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

  return _swift_deallocObject(v0, v3 + v36);
}

uint64_t sub_100084FAC()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
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
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
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

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29);

  v34 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, v30 + 16);
}

uint64_t sub_10008533C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085374()
{
  v1 = *(sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for BeaconNamingRecord();
  if (!(*(*(v5 - 1) + 48))(v0 + v2, 1, v5))
  {
    sub_100016590(*v4, *(v4 + 8));
    v6 = v5[5];
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 8);
    v8(v4 + v6, v7);
    v8(v4 + v5[6], v7);
    v9 = *(v4 + v5[8] + 8);

    v10 = *(v4 + v5[9] + 8);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v11);

  v16 = *(v0 + v12 + 8);

  v17 = *(v0 + v13 + 8);

  v18 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16);
}

uint64_t sub_100085544()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v8 = *(v0 + v2 + v1[10] + 8);

  v9 = *(v0 + v2 + v1[11] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100085680()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000857DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[11];

  return _swift_deallocObject(v0, 113);
}

uint64_t sub_1000858C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100085994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FMNAccountType();
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

uint64_t sub_100085A4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085A84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100085AC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100085AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100085BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100085CA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100085CD8()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100085D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 3);
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
    v10 = type metadata accessor for Bit();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100085DD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 3) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Bit();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100085E70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100085EC0()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v19 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v15 = *(v3 + 80);
  v16 = *(v3 + 64);
  v4 = *(v0 + 16);

  v20 = v0;
  v18 = (v19 + 24) & ~v19;
  v5 = v0 + v18;
  sub_100016590(*(v0 + v18), *(v0 + v18 + 8));
  v6 = *(v3 + 8);
  v6(v0 + v18 + v1[5], v2);
  v6(v0 + v18 + v1[6], v2);
  v7 = v1[10];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v1[12];
  if (!(*(v9 + 48))(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v18 + v17 + v15) & ~v15;
  v13 = *(v5 + v1[13]);

  v6(v20 + v12, v2);

  return _swift_deallocObject(v20, v12 + v16);
}

uint64_t sub_100086100()
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

  return _swift_deallocObject(v0, 57);
}

uint64_t sub_1000861FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100086234()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100086298()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000862D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086330()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100086370()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000863B8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100086400()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);
  if (v2 <= 4)
  {
    if (*(v0 + 72) <= 1u)
    {
      if (*(v0 + 72))
      {
        sub_100007BAC((v0 + 32));
        goto LABEL_25;
      }

LABEL_18:
      v4 = *(v0 + 32);
LABEL_24:

      goto LABEL_25;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {

        goto LABEL_25;
      }

      if (v2 != 4)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

LABEL_23:
    v7 = *(v0 + 40);
    goto LABEL_24;
  }

  if (*(v0 + 72) <= 7u)
  {
    if (v2 != 5 && v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_11:
    v3 = *(v0 + 32);

    goto LABEL_25;
  }

  switch(v2)
  {
    case 8u:
      v6 = *(v0 + 32);

      goto LABEL_23;
    case 9u:
      v5 = *(v0 + 40);

      break;
    case 0xAu:
      goto LABEL_18;
  }

LABEL_25:

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_100086504()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10008655C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 72);
  if (v2 <= 4)
  {
    if (*(v0 + 72) <= 1u)
    {
      if (*(v0 + 72))
      {
        sub_100007BAC((v0 + 32));
        goto LABEL_27;
      }

LABEL_20:
      v4 = *(v0 + 32);
LABEL_26:

      goto LABEL_27;
    }

    if (v2 != 2)
    {
      if (v2 == 3)
      {

        goto LABEL_27;
      }

      if (v2 != 4)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

LABEL_25:
    v7 = *(v0 + 40);
    goto LABEL_26;
  }

  if (*(v0 + 72) <= 7u)
  {
    if (v2 != 5 && v2 != 6)
    {
      if (v2 != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_13:
    v3 = *(v0 + 32);

    goto LABEL_27;
  }

  switch(v2)
  {
    case 8u:
      v6 = *(v0 + 32);

      goto LABEL_25;
    case 9u:
      v5 = *(v0 + 40);

      break;
    case 0xAu:
      goto LABEL_20;
  }

LABEL_27:

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_100086668()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000866A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000866F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086740()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100086778()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000867C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086808()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086850()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000868F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 252)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 2u)
    {
      v16 = (v12 & 0xFE) + 2147483646;
      v17 = (v16 & 0x7FFFFFFE | v12 & 1) - 1;
      if ((v16 & 0x7FFFFFFE) != 0)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for BeaconPayloadMetaDataV2();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100086A38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 252)
  {
    *(a1 + a4[10]) = a2 + 3;
  }

  else
  {
    v13 = type metadata accessor for BeaconPayloadMetaDataV2();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100086B5C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100086B94()
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

uint64_t sub_100086C78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100086CC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100086DBC()
{
  v1 = (type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v3);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100086EE8()
{
  v1 = (type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v4);

  v13 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000870D0()
{
  v1 = (type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000871F0()
{
  v1 = (type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  v11 = *(v0 + v3 + 8);

  sub_100B03D84(*(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 16));
  v12 = *(v0 + v4);

  v13 = *(v0 + v5);

  v14 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000874B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100087500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008753C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100087584()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000875BC()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v36 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = (v0 + v3 + v1[6]);
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
      v35 = (v2 + 24) & ~v2;
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
      v35 = (v2 + 24) & ~v2;
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

  v30 = (v36 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  sub_100016590(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v31 = *(v4 + v1[14] + 8);

  v32 = *(v4 + v1[15] + 8);

  v33 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 8);
}

uint64_t sub_100087940()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000879A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100087AA4()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100087ADC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_100087BC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = (v6 + *(*v5 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v9(v0 + v6 + v5[8], v1);
  v10 = v5[9];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v0 + v6 + v10, v11);
  v12 = *(v0 + v6 + v5[11] + 8);

  v13 = *(v0 + v6 + v5[12]);

  v14 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_100087D8C()
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

uint64_t sub_100087E68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100087F44()
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

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v21);
}

uint64_t sub_1000881C0()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100088298()
{
  v1 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100088384()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000883BC()
{
  v1 = (type metadata accessor for BeaconNamingRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  v8 = *(v4 + v1[10] + 8);

  v9 = *(v4 + v1[11] + 8);

  v10 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008850C()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for KeySyncMetadata() - 8);
  v16 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v5 = *(*v4 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v17 = (v16 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v18 = (*(v7 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v0 + 24);

  v9 = v0 + v2;
  sub_100016590(*v9, *(v9 + 8));
  v10 = *(v7 + 8);
  v10(v9 + v1[7], v6);
  v10(v9 + v1[8], v6);
  v11 = v1[10];
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v10(v0 + v16, v6);
  sub_100007BAC((v0 + v16 + v4[8]));
  v13(v0 + v16 + v4[9], v12);
  v10(v0 + v17, v6);
  v14 = *(v0 + v18);

  return _swift_deallocObject(v0, v18 + 8);
}

uint64_t sub_1000887A0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for OwnedBeaconRecord();
  v6 = *(*(v5 - 1) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v37 = *(*(v5 - 1) + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 32);

  v10 = *(v2 + 8);
  v10(v0 + v3, v1);
  v11 = v0 + v7;
  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  v10(v0 + v7 + v5[5], v1);
  v12 = (v0 + v7 + v5[6]);
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

      v14 = v12[1];

      v15 = v12[3];

      v16 = v12 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10(v12, v1);
      v36 = v7;
      v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v18 = *(v12 + v17[12] + 8);

      v19 = *(v12 + v17[16] + 8);

      v20 = *(v12 + v17[20] + 8);

      v21 = v17[28];
LABEL_12:
      v7 = v36;
      v16 = (v12 + v21 + 8);
      goto LABEL_13;
    case 3:
      v10(v12, v1);
      v36 = v7;
      v22 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v23 = *(v12 + v22[12] + 8);

      v24 = *(v12 + v22[16] + 8);

      v21 = v22[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v16 = v12 + 1;
LABEL_13:
      v25 = *v16;

      break;
  }

LABEL_14:
  v26 = v5[7];
  if (!(*(v2 + 48))(v11 + v26, 1, v1))
  {
    v10(v11 + v26, v1);
  }

  v27 = v5[8];
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 8))(v11 + v27, v28);
  sub_100016590(*(v11 + v5[9]), *(v11 + v5[9] + 8));
  v29 = (v11 + v5[10]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  v31 = (v11 + v5[11]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  sub_100016590(*(v11 + v5[12]), *(v11 + v5[12] + 8));
  sub_100016590(*(v11 + v5[13]), *(v11 + v5[13] + 8));
  v33 = *(v11 + v5[14] + 8);

  v34 = *(v11 + v5[15] + 8);

  return _swift_deallocObject(v0, v7 + v37);
}

uint64_t sub_100088B78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for OwnedDeviceKeyRecord() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = v0 + v6;
  sub_100016590(*(v0 + v6), *(v0 + v6 + 8));
  v9(v0 + v6 + v5[7], v1);
  v9(v0 + v6 + v5[8], v1);
  sub_100016590(*(v10 + v5[9]), *(v10 + v5[9] + 8));
  sub_100016590(*(v10 + v5[10]), *(v10 + v5[10] + 8));

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_100088D08()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100088E60()
{
  v1 = (type metadata accessor for KeySyncMetadata() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  sub_100007BAC((v0 + v2 + v1[8]));
  v6 = v1[9];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100088F8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100089064()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000890AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000890F8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v2 - 8);
  v37 = *(v3 + 80);
  v41 = *(v3 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v39 = (v40 + 40) & ~v40;
  v6 = v0 + v39;
  sub_100016590(*(v0 + v39), *(v0 + v39 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v39 + v7, v8);
  v11 = (v0 + v39 + v1[6]);
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
      v36 = v2;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v2 = v36;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v36 = v2;
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

  v32 = (v39 + v38 + v37) & ~v37;
  sub_100016590(*(v6 + v1[12]), *(v6 + v1[12] + 8));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));
  v33 = *(v6 + v1[14] + 8);

  v34 = *(v6 + v1[15] + 8);

  (*(v3 + 8))(v0 + v32, v2);

  return _swift_deallocObject(v0, v32 + v41);
}

uint64_t sub_100089510()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v39 = *(*(v2 - 1) + 80);
  v37 = *(*(v2 - 1) + 64);
  v41 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v3 = *(v41 - 8);
  v4 = *(v3 + 80);
  v40 = *(v3 + 64);
  v5 = *(v0 + 16);

  v38 = (v39 + 24) & ~v39;
  v6 = v0 + v38;
  sub_100016590(*(v1 + v38), *(v1 + v38 + 8));
  v7 = v2[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v38 + v7, v8);
  v11 = (v0 + v38 + v2[6]);
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
      v36 = v0;
      v16 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v17 = *(v11 + v16[12] + 8);

      v18 = *(v11 + v16[16] + 8);

      v19 = *(v11 + v16[20] + 8);

      v20 = v16[28];
LABEL_12:
      v1 = v36;
      v15 = (v11 + v20 + 8);
      goto LABEL_13;
    case 3:
      v10(v11, v8);
      v36 = v0;
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
  v25 = v2[7];
  if (!(*(v9 + 48))(v6 + v25, 1, v8))
  {
    v10(v6 + v25, v8);
  }

  v26 = v2[8];
  v27 = type metadata accessor for Date();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  sub_100016590(*(v6 + v2[9]), *(v6 + v2[9] + 8));
  v28 = (v6 + v2[10]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  v30 = (v6 + v2[11]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v38 + v37 + v4) & ~v4;
  sub_100016590(*(v6 + v2[12]), *(v6 + v2[12] + 8));
  sub_100016590(*(v6 + v2[13]), *(v6 + v2[13] + 8));
  v33 = *(v6 + v2[14] + 8);

  v34 = *(v6 + v2[15] + 8);

  (*(v3 + 8))(v1 + v32, v41);

  return _swift_deallocObject(v1, v32 + v40);
}

uint64_t sub_100089954()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000899DC()
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

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_100089D48()
{
  v1 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0 + *(v1 + 36);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100089E30()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = (sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v17 = *(*v8 + 64);
  v10 = *(v0 + 16);

  v11 = *(v2 + 8);
  v11(v0 + v3, v1);
  v12 = v0 + v6;
  sub_100016590(*v12, *(v12 + 8));
  v11(v12 + v5[7], v1);
  v11(v12 + v5[8], v1);
  v13 = v5[10];
  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 8);
  v15(v12 + v13, v14);
  v15(v0 + v8[11] + v9, v14);

  return _swift_deallocObject(v0, v9 + v17);
}

uint64_t sub_10008A078()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[7];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[8], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008A1D0()
{
  v1 = (type metadata accessor for KeyAlignmentRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  v9 = v1[10];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10008A348()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v18 = *(*(v1 - 1) + 64);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[6], v5);
  v7 = v1[10];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v2 + v7, v8);
  v11 = v1[12];
  if (!(*(v9 + 48))(v0 + v2 + v11, 1, v8))
  {
    v10(v3 + v11, v8);
  }

  v12 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v3 + v1[13]);

  v15 = *(v0 + v12 + 8);

  v16 = *(v0 + v13);

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_10008A530()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v20 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v17 = *(v3 + 64);
  v5 = *(v0 + 16);

  v19 = (v20 + 24) & ~v20;
  v6 = v0 + v19;
  sub_100016590(*(v0 + v19), *(v0 + v19 + 8));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v19 + v7, v8);
  v9(v0 + v19 + v1[6], v8);
  v10 = *(v3 + 8);
  v10(v0 + v19 + v1[10], v2);
  v11 = v1[12];
  if (!(*(v3 + 48))(v0 + v19 + v11, 1, v2))
  {
    v10(v6 + v11, v2);
  }

  v12 = (v19 + v18 + v4) & ~v4;
  v13 = (v17 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v6 + v1[13]);

  v10(v0 + v12, v2);
  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_10008A768()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[12];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = *(v4 + v1[13]);

  return _swift_deallocObject(v0, v2 + v15);
}

uint64_t sub_10008A930()
{
  v1 = type metadata accessor for BeaconEstimatedLocation();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[10];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[12];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = (v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[13]);

  sub_100007BAC((v0 + v13));

  return _swift_deallocObject(v0, v13 + 40);
}

uint64_t sub_10008AB0C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v30 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for MemberSharingCircle();
  v27 = *(*(v2 - 1) + 80);
  v26 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v29 = (v30 + 24) & ~v30;
  v4 = v0 + v29;
  sub_100016590(*(v0 + v29), *(v0 + v29 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v29 + v5, v6);
  v8(v0 + v29 + v1[6], v6);
  v9 = *(v0 + v29 + v1[7] + 16);

  v10 = *(v0 + v29 + v1[8] + 8);

  v11 = *(v0 + v29 + v1[9] + 8);

  v12 = *(v0 + v29 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v0 + v29 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v0 + v29 + v15, 1, v6))
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

  v20 = (v29 + v28 + v27) & ~v27;
  v21 = (v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = v0 + v20;
  sub_100016590(*(v0 + v20), *(v0 + v20 + 8));
  v8(v22 + v2[5], v6);
  v8(v22 + v2[6], v6);
  v8(v22 + v2[7], v6);
  v8(v22 + v2[8], v6);
  v23 = *(v22 + v2[9]);

  v24 = *(v0 + v21 + 8);

  return _swift_deallocObject(v0, v21 + 16);
}

uint64_t sub_10008AE8C()
{
  v1 = (type metadata accessor for SessionTokenRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  v8 = v1[8];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10008AFF0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10008B0AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008B17C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10008B1CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008B24C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008B28C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
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
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
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

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29);

  v34 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, v30 + 16);
}

uint64_t sub_10008B618()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008B694()
{
  v1 = *(sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;

    goto LABEL_23;
  }

  sub_100016590(*v4, *(v4 + 8));
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = v6[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v39 = *(v9 + 8);
  v39(v4 + v7, v8);
  v10 = (v4 + v6[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v39(v10, v8);
        v38 = v3;
        v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v16 = *(v10 + v15[12] + 8);

        v17 = *(v10 + v15[16] + 8);

        v18 = *(v10 + v15[20] + 8);

        v19 = v15[28];
        break;
      case 3:
        v39(v10, v8);
        v38 = v3;
        v20 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v21 = *(v10 + v20[12] + 8);

        v22 = *(v10 + v20[16] + 8);

        v19 = v20[20];
        break;
      case 4:
        goto LABEL_11;
      default:
        goto LABEL_16;
    }

    v3 = v38;
    v14 = (v10 + v19 + 8);
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_11:
    v14 = v10 + 1;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = v10[1];

    v13 = v10[3];

    v14 = v10 + 5;
LABEL_15:
    v23 = *v14;
  }

LABEL_16:
  v24 = v6[7];
  if (!(*(v9 + 48))(v4 + v24, 1, v8))
  {
    v39(v4 + v24, v8);
  }

  v25 = v6[8];
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 8))(v4 + v25, v26);
  sub_100016590(*(v4 + v6[9]), *(v4 + v6[9] + 8));
  v27 = (v4 + v6[10]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v29 = (v4 + v6[11]);
  v30 = v29[1];
  if (v30 >> 60 != 15)
  {
    sub_100016590(*v29, v30);
  }

  sub_100016590(*(v4 + v6[12]), *(v4 + v6[12] + 8));
  sub_100016590(*(v4 + v6[13]), *(v4 + v6[13] + 8));
  v31 = *(v4 + v6[14] + 8);

  v32 = *(v4 + v6[15] + 8);

LABEL_23:
  v33 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v0 + v33);

  v36 = *(v0 + v34 + 8);

  return _swift_deallocObject(v0, v34 + 16);
}

uint64_t sub_10008BA5C()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v36 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

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
      v35 = (v2 + 40) & ~v2;
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
      v35 = (v2 + 40) & ~v2;
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

  return _swift_deallocObject(v0, v3 + v36);
}

uint64_t sub_10008BDF4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008BFF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008C048()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C088()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C0C0()
{
  v1 = (type metadata accessor for BeaconObservation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008C1E4()
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

uint64_t sub_10008C2BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008C2F4()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 73);
}

uint64_t sub_10008C398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008C404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008C4D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008C514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008C648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008C77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 24) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10008C89C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UUID();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = a1 + *(a4 + 24);
      *(v15 + 16) = 0;
      *(v15 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10008CA88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008CB38()
{
  v1 = 0x65566769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6F43737574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_10008CBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008CCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008CE18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008CE50()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008CFB8()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);
  v11 = *(v0 + v8);

  v12 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_10008D154()
{
  v1 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10008D2BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008D384()
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

uint64_t sub_10008D458()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10008D508()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008D5F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v5 + 9);
}

uint64_t sub_10008D6E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10008D73C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10008D78C()
{
  v1 = (sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = (v4 + v1[14]);
  v7 = *v6;

  v8 = v6[2];

  v9 = v6[3];

  v10 = v6[4];

  v11 = v6[5];

  v12 = v6[7];

  v13 = v6[9];

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008D8CC()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v1[7];
  v9 = type metadata accessor for MACAddress();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v2 + v8, v9);
  v10(v0 + v2 + v1[8], v9);
  v11 = *(v0 + v2 + v1[9] + 8);

  v12 = v1[10];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v2 + v12, v13);
  sub_100016590(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  v14 = v0 + v2 + v1[12];
  sub_100016590(*v14, *(v14 + 8));
  sub_100016590(*(v14 + 16), *(v14 + 24));
  sub_100016590(*(v14 + 32), *(v14 + 40));
  sub_100016590(*(v6 + v1[13]), *(v6 + v1[13] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10008DAB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008DAF0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008DB28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008DB60()
{
  v1 = (type metadata accessor for StandaloneBeacon() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = type metadata accessor for MACAddress();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[8], v8);
  v10 = *(v5 + v1[9] + 8);

  v11 = v1[10];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  sub_100016590(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v13 = v5 + v1[12];
  sub_100016590(*v13, *(v13 + 8));
  sub_100016590(*(v13 + 16), *(v13 + 24));
  sub_100016590(*(v13 + 32), *(v13 + 40));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v14 = *(v0 + v3);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10008DD74(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10008DE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008DF88(uint64_t a1, uint64_t a2, int *a3)
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

  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10008E100(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for MACAddress();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10008E280()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008E2C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008E300()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008E340()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008E378()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008E43C()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v75 = *(*(v2 - 1) + 80);
  v73 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v74 = (v75 + 24) & ~v75;
  v4 = v0 + v74;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v74, v5);
  v8 = v2[5];
  if (!(*(v6 + 48))(v4 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = v2[7];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  v11 = *(v4 + v2[8]);

  v12 = v2[10];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v76 = *(v14 + 8);
  v76(v4 + v12, v13);
  v15 = v2[11];
  v71 = *(v14 + 48);
  if (!v71(v4 + v15, 1, v13))
  {
    v76(v4 + v15, v13);
  }

  v72 = v13;
  v16 = *(v4 + v2[12] + 16);

  v17 = v4 + v2[14];
  v18 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v7(v17, v5);
    sub_100016590(*(v17 + v18[5]), *(v17 + v18[5] + 8));
    v19 = *(v17 + v18[6] + 8);

    v20 = *(v17 + v18[7] + 8);

    v21 = v18[9];
    v22 = type metadata accessor for AirTagVersionNumber();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v24 = *(v17 + v18[16] + 8);
  }

  v25 = v4 + v2[15];
  v26 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    v70 = v1;
    v27 = v26[5];
    v28 = type metadata accessor for ServerStatusCode();
    (*(*(v28 - 8) + 8))(v25 + v27, v28);
    v29 = *(v25 + v26[9] + 8);

    v30 = *(v25 + v26[13] + 8);

    v31 = *(v25 + v26[14] + 8);

    v32 = *(v25 + v26[16] + 8);

    v33 = v26[17];
    v34 = type metadata accessor for URL();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (!v36(v25 + v33, 1, v34))
    {
      (*(v35 + 8))(v25 + v33, v34);
    }

    v37 = v26[18];
    v69 = v36;
    if (!v36(v25 + v37, 1, v34))
    {
      (*(v35 + 8))(v25 + v37, v34);
    }

    v38 = *(v25 + v26[19] + 8);

    v39 = (v25 + v26[21]);
    v40 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
    {
      v41 = *(v39 + 1);

      v42 = *(v39 + 3);

      v43 = *(v39 + 5);

      v44 = *(v39 + 9);

      v67 = v40[11];
      if (!v69(&v39[v67], 1, v34))
      {
        (*(v35 + 8))(&v39[v67], v34);
      }

      v68 = v40[12];
      if (!v69(&v39[v68], 1, v34))
      {
        (*(v35 + 8))(&v39[v68], v34);
      }

      v45 = *&v39[v40[15] + 8];

      v46 = *&v39[v40[16]];

      v47 = *&v39[v40[17] + 8];

      v48 = *&v39[v40[18]];
    }

    v49 = *(v25 + v26[23]);

    v50 = (v25 + v26[24]);
    v51 = v50[1];
    if (v51 >> 60 != 15)
    {
      sub_100016590(*v50, v51);
    }

    v52 = (v25 + v26[25]);
    v53 = v52[1];
    if (v53 >> 60 != 15)
    {
      sub_100016590(*v52, v53);
    }

    v54 = *(v35 + 8);
    v54(v25 + v26[26], v34);
    v54(v25 + v26[27], v34);
    v54(v25 + v26[28], v34);
    v54(v25 + v26[29], v34);
    v54(v25 + v26[30], v34);
    v54(v25 + v26[31], v34);
    v55 = *(v25 + v26[32] + 8);

    v56 = *(v25 + v26[33]);

    v57 = *(v25 + v26[34] + 8);

    v58 = *(v25 + v26[35]);

    v54(v25 + v26[38], v34);
    v54(v25 + v26[39], v34);
    v54(v25 + v26[40], v34);
    v54(v25 + v26[41], v34);
    v54(v25 + v26[42], v34);
    v54(v25 + v26[43], v34);
    v59 = *(v25 + v26[47] + 8);

    v60 = *(v25 + v26[48] + 8);

    v1 = v70;
  }

  v61 = *(v4 + v2[17]);

  v62 = v2[18];
  if (!v71(v4 + v62, 1, v72))
  {
    v76(v4 + v62, v72);
  }

  v63 = v2[19];
  if (!v71(v4 + v63, 1, v72))
  {
    v76(v4 + v63, v72);
  }

  v64 = (v4 + v2[20]);
  v65 = v64[1];
  if (((v65 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v64, v65);
  }

  return _swift_deallocObject(v1, v74 + v73);
}

uint64_t sub_10008ECEC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10008ED74()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v79 = *(*(v2 - 1) + 80);
  v77 = *(*(v2 - 1) + 64);
  v3 = *(v0 + 16);

  v78 = (v79 + 24) & ~v79;
  v4 = v0 + v78;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v78, v5);
  v8 = v2[5];
  if (!(*(v6 + 48))(v0 + v78 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = v2[7];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);
  v11 = *(v4 + v2[8]);

  v12 = v2[10];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v80 = *(v14 + 8);
  v80(v4 + v12, v13);
  v15 = v2[11];
  v75 = *(v14 + 48);
  if (!v75(v4 + v15, 1, v13))
  {
    v80(v4 + v15, v13);
  }

  v76 = v13;
  v16 = *(v4 + v2[12] + 16);

  v17 = v4 + v2[14];
  v18 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {
    v7(v17, v5);
    sub_100016590(*(v17 + v18[5]), *(v17 + v18[5] + 8));
    v19 = *(v17 + v18[6] + 8);

    v20 = *(v17 + v18[7] + 8);

    v21 = v18[9];
    v22 = type metadata accessor for AirTagVersionNumber();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v24 = *(v17 + v18[16] + 8);
  }

  v25 = v4 + v2[15];
  v26 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    v74 = v1;
    v27 = v26[5];
    v28 = type metadata accessor for ServerStatusCode();
    (*(*(v28 - 8) + 8))(v25 + v27, v28);
    v29 = *(v25 + v26[9] + 8);

    v30 = *(v25 + v26[13] + 8);

    v31 = *(v25 + v26[14] + 8);

    v32 = *(v25 + v26[16] + 8);

    v33 = v26[17];
    v34 = type metadata accessor for URL();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (!v36(v25 + v33, 1, v34))
    {
      (*(v35 + 8))(v25 + v33, v34);
    }

    v37 = v26[18];
    v73 = v36;
    if (!v36(v25 + v37, 1, v34))
    {
      (*(v35 + 8))(v25 + v37, v34);
    }

    v38 = *(v25 + v26[19] + 8);

    v39 = (v25 + v26[21]);
    v40 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
    {
      v41 = *(v39 + 1);

      v42 = *(v39 + 3);

      v43 = *(v39 + 5);

      v44 = *(v39 + 9);

      v71 = v40[11];
      if (!v73(&v39[v71], 1, v34))
      {
        (*(v35 + 8))(&v39[v71], v34);
      }

      v72 = v40[12];
      if (!v73(&v39[v72], 1, v34))
      {
        (*(v35 + 8))(&v39[v72], v34);
      }

      v45 = *&v39[v40[15] + 8];

      v46 = *&v39[v40[16]];

      v47 = *&v39[v40[17] + 8];

      v48 = *&v39[v40[18]];
    }

    v49 = *(v25 + v26[23]);

    v50 = (v25 + v26[24]);
    v51 = v50[1];
    v1 = v74;
    if (v51 >> 60 != 15)
    {
      sub_100016590(*v50, v51);
    }

    v52 = (v25 + v26[25]);
    v53 = v52[1];
    if (v53 >> 60 != 15)
    {
      sub_100016590(*v52, v53);
    }

    v54 = *(v35 + 8);
    v54(v25 + v26[26], v34);
    v54(v25 + v26[27], v34);
    v54(v25 + v26[28], v34);
    v54(v25 + v26[29], v34);
    v54(v25 + v26[30], v34);
    v54(v25 + v26[31], v34);
    v55 = *(v25 + v26[32] + 8);

    v56 = *(v25 + v26[33]);

    v57 = *(v25 + v26[34] + 8);

    v58 = *(v25 + v26[35]);

    v54(v25 + v26[38], v34);
    v54(v25 + v26[39], v34);
    v54(v25 + v26[40], v34);
    v54(v25 + v26[41], v34);
    v54(v25 + v26[42], v34);
    v54(v25 + v26[43], v34);
    v59 = *(v25 + v26[47] + 8);

    v60 = *(v25 + v26[48] + 8);
  }

  v61 = *(v4 + v2[17]);

  v62 = v2[18];
  if (!v75(v4 + v62, 1, v76))
  {
    v80(v4 + v62, v76);
  }

  v63 = v2[19];
  if (!v75(v4 + v63, 1, v76))
  {
    v80(v4 + v63, v76);
  }

  v64 = (v4 + v2[20]);
  v65 = v64[1];
  if (((v65 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v64, v65);
  }

  v66 = (v77 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = *(v1 + v66 + 8);

  v69 = *(v1 + v67 + 8);

  return _swift_deallocObject(v1, v67 + 16);
}

uint64_t sub_10008F698()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();
  v4 = v0[8];
  swift_unknownObjectRelease();
  v5 = v0[10];
  swift_unknownObjectRelease();
  v6 = v0[12];
  swift_unknownObjectRelease();
  v7 = v0[14];
  swift_unknownObjectRelease();
  v8 = v0[16];
  swift_unknownObjectRelease();
  v9 = v0[18];
  swift_unknownObjectRelease();
  v10 = v0[20];

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_10008F760()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10008F798()
{
  v1 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008F87C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F8B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F8F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008F92C()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008FA20()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10008FA60()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10008FAE8()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = (*(v1 + 80) + 65) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  if (*(v0 + 64))
  {
    v5 = *(v0 + 24);
  }

  else
  {
    sub_100007BAC((v0 + 24));
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10008FC48()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10008FD40()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10008FE20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100090000()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000900C4()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v6 = *(v0 + 10);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v6);
  }

  v7 = *(v0 + 12);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v7);
  }

  v8 = (v3 + 112) & ~v3;
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 13);

  (*(v2 + 8))(&v0[v8], v1);
  v11 = *&v0[v9];

  return _swift_deallocObject(v0, v9 + 8);
}

uint64_t sub_1000901EC()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = (v0 + v3 + v2[6]);
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
      v33 = v0;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v1 = v33;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v33 = v0;
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
  v23 = v2[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v2[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v26 = (v4 + v2[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v2[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  v30 = *(v4 + v2[14] + 8);

  v31 = *(v4 + v2[15] + 8);

  return _swift_deallocObject(v1, v3 + v34);
}

uint64_t sub_100090554()
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

  v34 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_1000908D8()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v87 = *(*(v1 - 1) + 80);
  v2 = (v87 + 40) & ~v87;
  v79 = *(*(v1 - 1) + 64);
  v80 = type metadata accessor for PairingConfig();
  v3 = *(*(v80 - 8) + 80);
  v86 = *(*(v80 - 8) + 64);
  v4 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v84 = *(v4 - 8);
  v85 = v4;
  v82 = *(v84 + 80);
  v83 = *(v84 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v8 = v1[5];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = (v0 + v2 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v88 = v3;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_14;
      }

      v14 = v12[1];

      v15 = v12[3];

      v16 = v12 + 5;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v11(v12, v9);
      v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v18 = *(v12 + v17[12] + 8);

      v19 = *(v12 + v17[16] + 8);

      v20 = *(v12 + v17[20] + 8);

      v21 = v17[28];
LABEL_12:
      v3 = v88;
      v16 = (v12 + v21 + 8);
      goto LABEL_13;
    case 3:
      v11(v12, v9);
      v22 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v23 = *(v12 + v22[12] + 8);

      v24 = *(v12 + v22[16] + 8);

      v21 = v22[20];
      goto LABEL_12;
    case 4:
LABEL_9:
      v16 = v12 + 1;
LABEL_13:
      v25 = *v16;

      break;
  }

LABEL_14:
  v26 = v79 + v3;
  v27 = v1[7];
  if (!(*(v10 + 48))(v7 + v27, 1, v9))
  {
    v11(v7 + v27, v9);
  }

  v28 = v1[8];
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 8))(v7 + v28, v29);
  sub_100016590(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v30 = (v7 + v1[10]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_100016590(*v30, v31);
  }

  v32 = (v2 + v26) & ~v88;
  v33 = (v7 + v1[11]);
  v34 = v33[1];
  if (v34 >> 60 != 15)
  {
    sub_100016590(*v33, v34);
  }

  sub_100016590(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  sub_100016590(*(v7 + v1[13]), *(v7 + v1[13] + 8));
  v35 = *(v7 + v1[14] + 8);

  v36 = *(v7 + v1[15] + 8);

  v37 = *(v0 + v32 + 8);

  v38 = *(v0 + v32 + 32);

  v39 = v0 + v32 + *(v80 + 28);
  v40 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v40 - 1) + 48))(v39, 1, v40))
  {
    v41 = v40[5];
    v42 = type metadata accessor for ServerStatusCode();
    (*(*(v42 - 8) + 8))(v39 + v41, v42);
    v43 = *(v39 + v40[9] + 8);

    v44 = *(v39 + v40[13] + 8);

    v45 = *(v39 + v40[14] + 8);

    v46 = *(v39 + v40[16] + 8);

    v47 = v40[17];
    v48 = type metadata accessor for URL();
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    if (!v50(v39 + v47, 1, v48))
    {
      (*(v49 + 8))(v39 + v47, v48);
    }

    v51 = v40[18];
    if (!v50(v39 + v51, 1, v48))
    {
      (*(v49 + 8))(v39 + v51, v48);
    }

    v52 = *(v39 + v40[19] + 8);

    v53 = (v39 + v40[21]);
    v54 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v54 - 1) + 48))(v53, 1, v54))
    {
      v81 = v32;
      v55 = *(v53 + 1);

      v56 = *(v53 + 3);

      v57 = *(v53 + 5);

      v58 = *(v53 + 9);

      v59 = v54[11];
      if (!v50(&v53[v59], 1, v48))
      {
        (*(v49 + 8))(&v53[v59], v48);
      }

      v60 = v54[12];
      if (!v50(&v53[v60], 1, v48))
      {
        (*(v49 + 8))(&v53[v60], v48);
      }

      v61 = *&v53[v54[15] + 8];

      v62 = *&v53[v54[16]];

      v63 = *&v53[v54[17] + 8];

      v64 = *&v53[v54[18]];

      v32 = v81;
    }

    v65 = *(v39 + v40[23]);

    v66 = (v39 + v40[24]);
    v67 = v66[1];
    if (v67 >> 60 != 15)
    {
      sub_100016590(*v66, v67);
    }

    v68 = (v39 + v40[25]);
    v69 = v68[1];
    if (v69 >> 60 != 15)
    {
      sub_100016590(*v68, v69);
    }

    v70 = *(v49 + 8);
    v70(v39 + v40[26], v48);
    v70(v39 + v40[27], v48);
    v70(v39 + v40[28], v48);
    v70(v39 + v40[29], v48);
    v70(v39 + v40[30], v48);
    v70(v39 + v40[31], v48);
    v71 = *(v39 + v40[32] + 8);

    v72 = *(v39 + v40[33]);

    v73 = *(v39 + v40[34] + 8);

    v74 = *(v39 + v40[35]);

    v70(v39 + v40[38], v48);
    v70(v39 + v40[39], v48);
    v70(v39 + v40[40], v48);
    v70(v39 + v40[41], v48);
    v70(v39 + v40[42], v48);
    v70(v39 + v40[43], v48);
    v75 = *(v39 + v40[47] + 8);

    v76 = *(v39 + v40[48] + 8);
  }

  v77 = (v32 + v86 + v82) & ~v82;
  (*(v84 + 8))(v0 + v77, v85);

  return _swift_deallocObject(v0, v77 + v83);
}

uint64_t sub_1000911E4()
{
  v1 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100091278()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v80 = *(*(v1 - 1) + 80);
  v2 = (v80 + 24) & ~v80;
  v3 = *(*(v1 - 1) + 64);
  v78 = type metadata accessor for PairingConfig();
  v82 = *(*(v78 - 8) + 80);
  v79 = *(*(v78 - 8) + 64);
  v4 = *(v0 + 16);

  v81 = v0;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v10 = (v5 + v1[6]);
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
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
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
  v29 = v81;
  if (v28 >> 60 != 15)
  {
    sub_100016590(*v27, v28);
  }

  v30 = (v2 + v3 + v82) & ~v82;
  v31 = (v5 + v1[11]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    sub_100016590(*v31, v32);
  }

  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v33 = *(v5 + v1[14] + 8);

  v34 = *(v5 + v1[15] + 8);

  v35 = *(v81 + v30 + 8);

  v36 = *(v81 + v30 + 32);

  v37 = v81 + v30 + *(v78 + 28);
  v38 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v38 - 1) + 48))(v37, 1, v38))
  {
    v39 = v38[5];
    v40 = type metadata accessor for ServerStatusCode();
    (*(*(v40 - 8) + 8))(v37 + v39, v40);
    v41 = *(v37 + v38[9] + 8);

    v42 = *(v37 + v38[13] + 8);

    v43 = *(v37 + v38[14] + 8);

    v44 = *(v37 + v38[16] + 8);

    v45 = v38[17];
    v46 = type metadata accessor for URL();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if (!v48(v37 + v45, 1, v46))
    {
      (*(v47 + 8))(v37 + v45, v46);
    }

    v49 = v38[18];
    if (!v48(v37 + v49, 1, v46))
    {
      (*(v47 + 8))(v37 + v49, v46);
    }

    v50 = *(v37 + v38[19] + 8);

    v51 = (v37 + v38[21]);
    v52 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v52 - 1) + 48))(v51, 1, v52))
    {
      v53 = *(v51 + 1);

      v54 = *(v51 + 3);

      v55 = *(v51 + 5);

      v56 = *(v51 + 9);

      v57 = v52[11];
      if (!v48(&v51[v57], 1, v46))
      {
        (*(v47 + 8))(&v51[v57], v46);
      }

      v58 = v52[12];
      if (!v48(&v51[v58], 1, v46))
      {
        (*(v47 + 8))(&v51[v58], v46);
      }

      v59 = *&v51[v52[15] + 8];

      v60 = *&v51[v52[16]];

      v61 = *&v51[v52[17] + 8];

      v62 = *&v51[v52[18]];

      v29 = v81;
    }

    v63 = *(v37 + v38[23]);

    v64 = (v37 + v38[24]);
    v65 = v64[1];
    if (v65 >> 60 != 15)
    {
      sub_100016590(*v64, v65);
    }

    v66 = (v37 + v38[25]);
    v67 = v66[1];
    if (v67 >> 60 != 15)
    {
      sub_100016590(*v66, v67);
    }

    v68 = *(v47 + 8);
    v68(v37 + v38[26], v46);
    v68(v37 + v38[27], v46);
    v68(v37 + v38[28], v46);
    v68(v37 + v38[29], v46);
    v68(v37 + v38[30], v46);
    v68(v37 + v38[31], v46);
    v69 = *(v37 + v38[32] + 8);

    v70 = *(v37 + v38[33]);

    v71 = *(v37 + v38[34] + 8);

    v72 = *(v37 + v38[35]);

    v68(v37 + v38[38], v46);
    v68(v37 + v38[39], v46);
    v68(v37 + v38[40], v46);
    v68(v37 + v38[41], v46);
    v68(v37 + v38[42], v46);
    v68(v37 + v38[43], v46);
    v73 = *(v37 + v38[47] + 8);

    v74 = *(v37 + v38[48] + 8);
  }

  v75 = (v79 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = *(v29 + v75 + 8);

  return _swift_deallocObject(v29, v75 + 16);
}

uint64_t sub_100091AFC()
{
  v1 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 2);

  sub_100016590(*(v0 + 3), *(v0 + 4));
  sub_100016590(*(v0 + 5), *(v0 + 6));
  sub_100016590(*(v0 + 7), *(v0 + 8));
  v5 = *(v0 + 10);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v0 + 9), v5);
  }

  v6 = (v2 + 112) & ~v2;
  v7 = *(v0 + 12);
  if (v7 >> 60 != 15)
  {
    sub_100016590(*(v0 + 11), v7);
  }

  v8 = *(v0 + 13);

  v9 = &v0[v6];
  v10 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v10 - 1) + 48))(&v0[v6], 1, v10))
  {
    v48 = (v2 + 112) & ~v2;
    v49 = v3;
    v11 = v10[5];
    v12 = type metadata accessor for ServerStatusCode();
    (*(*(v12 - 8) + 8))(&v9[v11], v12);
    v13 = *&v9[v10[9] + 8];

    v14 = *&v9[v10[13] + 8];

    v15 = *&v9[v10[14] + 8];

    v16 = *&v9[v10[16] + 8];

    v17 = v10[17];
    v18 = type metadata accessor for URL();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (!v20(&v9[v17], 1, v18))
    {
      (*(v19 + 8))(&v9[v17], v18);
    }

    v21 = v10[18];
    if (!v20(&v9[v21], 1, v18))
    {
      (*(v19 + 8))(&v9[v21], v18);
    }

    v22 = *&v9[v10[19] + 8];

    v23 = &v9[v10[21]];
    v24 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
    {
      v25 = *(v23 + 1);

      v26 = *(v23 + 3);

      v27 = *(v23 + 5);

      v28 = *(v23 + 9);

      v29 = v24[11];
      if (!v20(&v23[v29], 1, v18))
      {
        (*(v19 + 8))(&v23[v29], v18);
      }

      v30 = v24[12];
      if (!v20(&v23[v30], 1, v18))
      {
        (*(v19 + 8))(&v23[v30], v18);
      }

      v31 = *&v23[v24[15] + 8];

      v32 = *&v23[v24[16]];

      v33 = *&v23[v24[17] + 8];

      v34 = *&v23[v24[18]];
    }

    v35 = *&v9[v10[23]];

    v36 = &v9[v10[24]];
    v37 = v36[1];
    if (v37 >> 60 != 15)
    {
      sub_100016590(*v36, v37);
    }

    v38 = &v9[v10[25]];
    v39 = v38[1];
    if (v39 >> 60 != 15)
    {
      sub_100016590(*v38, v39);
    }

    v40 = *(v19 + 8);
    v40(&v9[v10[26]], v18);
    v40(&v9[v10[27]], v18);
    v40(&v9[v10[28]], v18);
    v40(&v9[v10[29]], v18);
    v40(&v9[v10[30]], v18);
    v40(&v9[v10[31]], v18);
    v41 = *&v9[v10[32] + 8];

    v42 = *&v9[v10[33]];

    v43 = *&v9[v10[34] + 8];

    v44 = *&v9[v10[35]];

    v40(&v9[v10[38]], v18);
    v40(&v9[v10[39]], v18);
    v40(&v9[v10[40]], v18);
    v40(&v9[v10[41]], v18);
    v40(&v9[v10[42]], v18);
    v40(&v9[v10[43]], v18);
    v45 = *&v9[v10[47] + 8];

    v46 = *&v9[v10[48] + 8];

    v6 = v48;
    v3 = v49;
  }

  return _swift_deallocObject(v0, v6 + v3);
}

uint64_t sub_100092090()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000920E0()
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

uint64_t sub_100092180()
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
  sub_100016590(*(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_100092218()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100092270()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000922B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000922F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100092330()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000923F4()
{
  v1 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_100092558()
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

uint64_t sub_100092624()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100092664()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];

  v2 = v0[11];

  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  v3 = v0[20];

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1000926DC()
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

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100092754()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v36 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

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
      v35 = (v2 + 40) & ~v2;
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
      v35 = (v2 + 40) & ~v2;
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

  return _swift_deallocObject(v0, ((v36 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100092AD4()
{
  sub_100016590(v0[2], v0[3]);
  sub_100016590(v0[4], v0[5]);
  v1 = v0[7];

  v2 = v0[11];

  sub_100016590(v0[12], v0[13]);
  sub_100016590(v0[14], v0[15]);
  sub_100016590(v0[16], v0[17]);
  sub_100016590(v0[18], v0[19]);
  sub_100016590(v0[20], v0[21]);
  sub_100016590(v0[22], v0[23]);
  sub_100016590(v0[24], v0[25]);

  return _swift_deallocObject(v0, 208);
}

uint64_t sub_100092B64()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100016590(v0[4], v0[5]);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100092BA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100092BF8()
{
  v1 = *(v0 + 32);
  sub_100017D5C(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_100092C2C()
{
  v1 = *(v0 + 48);
  sub_100017D5C(v1, *(v0 + 56));
  return v1;
}

uint64_t sub_100092C60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 40));
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

uint64_t sub_100092D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_100092E5C()
{
  v1 = v0[4];
  if (v1 >> 60 != 15)
  {
    sub_100016590(v0[3], v1);
  }

  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_100016590(v0[5], v2);
  }

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100092ED4()
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

  return _swift_deallocObject(v0, 288);
}

uint64_t sub_100092FAC()
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

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100093024()
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

  return _swift_deallocObject(v0, 368);
}

uint64_t sub_10009313C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10009318C()
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

uint64_t sub_10009322C()
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

  return _swift_deallocObject(v0, 192);
}

uint64_t sub_1000932B4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10009330C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009334C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100093384()
{
  v1 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL) + 9) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_100093488()
{
  v1 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100093558()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000935A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000935DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000936A0()
{
  v1 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_10009383C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009387C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000938B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100094084()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000940C4()
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

uint64_t sub_1000941E8()
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

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_100094554()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_100094590()
{
  v1 = (type metadata accessor for SharingCircleKeyManager.Instruction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[7], v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v7 = *(v0 + v2 + v1[10]);

  v8 = *(v0 + v2 + v1[13]);

  v9 = v1[14];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v0 + v2 + v9, v10);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100094724(uint64_t a1, uint64_t a2, uint64_t a3)
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

    return (v10 + 1);
  }
}

uint64_t sub_1000947E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000948A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000949C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100094AE8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100094BA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100094C54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100094D0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t sub_100094E10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 236)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0x14)
    {
      return v12 - 19;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v7 = v13;
    v8 = *(v13 - 8);
    v9 = a3[10];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v7 = v14;
    v8 = *(v14 - 8);
    v9 = a3[11];
    goto LABEL_3;
  }

  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_100094FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 236)
  {
    *(a1 + a4[9]) = a2 + 19;
    return result;
  }

  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000951EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Date();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_7;
  }

  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[12];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[13]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100095354(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v12 = type metadata accessor for Date();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[10];
    }

    else
    {
      result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[12];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000954F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10009561C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100095744()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009577C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000957BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v19 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v20 = *(v4 + 64);
  v22 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v6 = *(v22 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);
  v8 = *(v0 + 2);

  sub_100016590(*(v0 + 5), *(v0 + 6));
  v9 = *(v2 + 8);
  v9(&v0[v19], v1);
  v10 = *&v0[v3];

  if (!(*(v2 + 48))(&v0[v5], 1, v1))
  {
    v9(&v0[v5], v1);
  }

  v11 = (((v20 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v7 + v13 + 16) & ~v7;
  v15 = *&v0[v11];

  v16 = *&v0[v12];

  v17 = *&v0[v13 + 8];

  (*(v6 + 8))(&v0[v14], v22);

  return _swift_deallocObject(v0, v14 + v21);
}

uint64_t sub_100095A3C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_100095BB4()
{
  v1 = v0[2];

  sub_100016590(v0[5], v0[6]);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100095BFC()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 104) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 7);

  sub_100016590(*(v0 + 10), *(v0 + 11));
  v7 = *(v0 + 12);

  v8 = &v0[v2];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(&v0[v2], 1, v9);
  v12 = *(v10 + 8);
  if (!v11)
  {
    v12(&v0[v2], v9);
  }

  v12(&v8[v1[5]], v9);
  v13 = *&v8[v1[6] + 16];

  v14 = *&v8[v1[7] + 16];

  v15 = *&v8[v1[8] + 8];

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(&v8[v16], v17);
  v18 = *&v8[v1[12] + 8];

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100095DE0()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 152) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0[2];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 4);
  v5 = v0[10];

  v6 = v0[13];

  sub_100016590(v0[16], v0[17]);
  v7 = v0[18];

  v8 = v0 + v2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v0 + v2, 1, v9);
  v12 = *(v10 + 8);
  if (!v11)
  {
    v12(v0 + v2, v9);
  }

  v12(&v8[v1[5]], v9);
  v13 = *&v8[v1[6] + 16];

  v14 = *&v8[v1[7] + 16];

  v15 = *&v8[v1[8] + 8];

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(&v8[v16], v17);
  v18 = *&v8[v1[12] + 8];

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100095FCC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_1000960B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 4);
  v6 = v0[10];

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, v4 + 24);
}

uint64_t sub_10009619C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000961EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 16);

  return _swift_deallocObject(v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100096294()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000962D8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 16);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100096398()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000963D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000964A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);

  v6 = *(v0 + 5);

  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100096590()
{
  v1 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v30 = v4;
  v9 = (v3 + v4 + v7) & ~v7;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v8 + v2 + ((v7 + v27 + 16) & ~v7)) & ~v2;
  v28 = *(v6 + 48);
  v12 = v28(v0 + v3, 1, v5);
  v13 = *(v6 + 8);
  if (!v12)
  {
    v13(v0 + v3, v5);
  }

  v13(v0 + v9, v5);
  v14 = *(v0 + v10 + 16);

  v15 = *(v0 + v11 + 8);

  v16 = *(v0 + v26);

  sub_100016590(*(v0 + v27), *(v0 + v27 + 8));
  v13(v0 + ((v7 + v27 + 16) & ~v7), v5);
  if (!v28(v0 + v29, 1, v5))
  {
    v13(v0 + v29, v5);
  }

  v17 = (v30 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (((((v19 + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v17 + 8);

  v22 = *(v0 + v18 + 8);

  v23 = *(v0 + v19 + 8);

  v24 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009684C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_100096884()
{
  v1 = (sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  v26 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v26) & ~v26;
  v25 = *(*(v4 - 1) + 64);
  v6 = *(v0 + 16);

  v7 = v0 + v2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = *(v7 + v1[18] + 16);

  v12 = *(v7 + v1[22] + 8);

  v13 = *(v7 + v1[26]);

  sub_100016590(*(v7 + v1[30]), *(v7 + v1[30] + 8));
  v14 = v0 + v5;
  v10(v0 + v5, v8);
  v15 = v4[12];
  if (!(*(v9 + 48))(v0 + v5 + v15, 1, v8))
  {
    v10(v14 + v15, v8);
  }

  v16 = (v25 + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v14 + v4[16] + 8);

  v19 = *(v14 + v4[20] + 8);

  v20 = *(v14 + v4[24] + 8);

  v21 = *(v14 + v4[40] + 8);

  v22 = *(v0 + v16 + 8);

  v23 = *(v0 + v17 + 8);

  return _swift_deallocObject(v0, v17 + 16);
}

uint64_t sub_100096B2C()
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

uint64_t sub_100096C28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100096C60()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100096CA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_100096D58(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100096E04(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_100096EB0(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100096F54(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_100097000(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000970A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100097194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100097290()
{
  v1 = sub_1000BC4D4(&qword_1016B3D00, &unk_1013E5DD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100097368()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000973A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000973E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000974B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100097564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100097608(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for PairingError(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000976F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PairingError(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000977F4()
{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100097834()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_100097888()
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
  sub_100016590(*(v0 + 216), *(v0 + 224));

  return _swift_deallocObject(v0, 232);
}

uint64_t sub_100097920()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100097978()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000979BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for StableIdentifier();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = type metadata accessor for Date();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[14] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100097B64(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v12 = type metadata accessor for StableIdentifier();
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[7];
      }

      else
      {
        result = type metadata accessor for Date();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[14] + 8) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[8];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_100097D90()
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

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_100098104()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  sub_100016590(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v2[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = (v0 + v3 + v2[6]);
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
      v33 = v0;
      v14 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v15 = *(v9 + v14[12] + 8);

      v16 = *(v9 + v14[16] + 8);

      v17 = *(v9 + v14[20] + 8);

      v18 = v14[28];
LABEL_12:
      v1 = v33;
      v13 = (v9 + v18 + 8);
      goto LABEL_13;
    case 3:
      v8(v9, v6);
      v33 = v0;
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
  v23 = v2[7];
  if (!(*(v7 + 48))(v4 + v23, 1, v6))
  {
    v8(v4 + v23, v6);
  }

  v24 = v2[8];
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  sub_100016590(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v26 = (v4 + v2[10]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v4 + v2[11]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_100016590(*v28, v29);
  }

  sub_100016590(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  sub_100016590(*(v4 + v2[13]), *(v4 + v2[13] + 8));
  v30 = *(v4 + v2[14] + 8);

  v31 = *(v4 + v2[15] + 8);

  return _swift_deallocObject(v1, v3 + v34);
}

uint64_t sub_100098474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100098538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009865C()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100098738()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100098844()
{
  sub_100DD95EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_1000988A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000988F0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100098928()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100098A00()
{
  v1 = type metadata accessor for BeaconProductInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v34 = (v2 + 24) & ~v2;
  v4 = v0 + v34;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v34, v5);
  v6 = *(v0 + v34 + v1[6] + 8);

  v7 = *(v0 + v34 + v1[11] + 8);

  v8 = *(v0 + v34 + v1[12] + 8);

  v9 = *(v0 + v34 + v1[14] + 8);

  v10 = v1[15];
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v34 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v14 = v1[16];
  if (!v13(v4 + v14, 1, v11))
  {
    (*(v12 + 8))(v4 + v14, v11);
  }

  v15 = *(v4 + v1[17] + 8);

  v16 = (v4 + v1[19]);
  v17 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v18 = *(v16 + 1);

    v19 = *(v16 + 3);

    v20 = *(v16 + 5);

    v21 = *(v16 + 9);

    v22 = v17[11];
    if (!v13(&v16[v22], 1, v11))
    {
      (*(v12 + 8))(&v16[v22], v11);
    }

    v23 = v17[12];
    if (!v13(&v16[v23], 1, v11))
    {
      (*(v12 + 8))(&v16[v23], v11);
    }

    v24 = *&v16[v17[15] + 8];

    v25 = *&v16[v17[16]];

    v26 = *&v16[v17[17] + 8];

    v27 = *&v16[v17[18]];
  }

  v28 = (v33 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v4 + v1[21]);

  v30 = *(v12 + 8);
  v30(v4 + v1[22], v11);
  v30(v4 + v1[23], v11);
  v30(v4 + v1[24], v11);
  v30(v4 + v1[25], v11);
  v30(v4 + v1[26], v11);
  v30(v4 + v1[27], v11);
  v31 = *(v0 + v28 + 8);

  return _swift_deallocObject(v0, v28 + 16);
}

uint64_t sub_100098DEC()
{
  v1 = type metadata accessor for BeaconProductInfoRecord();
  v35 = *(*(v1 - 1) + 80);
  v2 = (v35 + 16) & ~v35;
  v34 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + v2 + v1[6] + 8);

  v6 = *(v0 + v2 + v1[11] + 8);

  v7 = *(v0 + v2 + v1[12] + 8);

  v8 = *(v0 + v2 + v1[14] + 8);

  v9 = v1[15];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v13 = v1[16];
  if (!v12(v3 + v13, 1, v10))
  {
    (*(v11 + 8))(v3 + v13, v10);
  }

  v14 = *(v3 + v1[17] + 8);

  v15 = (v3 + v1[19]);
  v16 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
  if (!(*(*(v16 - 1) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 1);

    v18 = *(v15 + 3);

    v19 = *(v15 + 5);

    v20 = *(v15 + 9);

    v21 = v16[11];
    if (!v12(&v15[v21], 1, v10))
    {
      (*(v11 + 8))(&v15[v21], v10);
    }

    v22 = v16[12];
    if (!v12(&v15[v22], 1, v10))
    {
      (*(v11 + 8))(&v15[v22], v10);
    }

    v23 = *&v15[v16[15] + 8];

    v24 = *&v15[v16[16]];

    v25 = *&v15[v16[17] + 8];

    v26 = *&v15[v16[18]];

    v2 = (v35 + 16) & ~v35;
  }

  v27 = (v34 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v3 + v1[21]);

  v30 = *(v11 + 8);
  v30(v3 + v1[22], v10);
  v30(v3 + v1[23], v10);
  v30(v3 + v1[24], v10);
  v30(v3 + v1[25], v10);
  v30(v3 + v1[26], v10);
  v30(v3 + v1[27], v10);
  v31 = *(v0 + v27);

  v32 = *(v0 + v28 + 8);

  return _swift_deallocObject(v0, v28 + 16);
}

uint64_t sub_1000991E4()
{
  v1 = v0;
  v2 = type metadata accessor for WildModeAssociationRecord(0);
  v78 = *(*(v2 - 1) + 80);
  v76 = *(*(v2 - 1) + 64);
  v77 = (v78 + 16) & ~v78;
  v3 = v0 + v77;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v77, v4);
  v7 = v2[5];
  if (!(*(v5 + 48))(v0 + v77 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[7];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = *(v3 + v2[8]);

  v11 = v2[10];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v79 = *(v13 + 8);
  v79(v3 + v11, v12);
  v14 = v2[11];
  v74 = *(v13 + 48);
  if (!v74(v3 + v14, 1, v12))
  {
    v79(v3 + v14, v12);
  }

  v75 = v12;
  v15 = *(v3 + v2[12] + 16);

  v16 = v3 + v2[14];
  v17 = type metadata accessor for AccessoryMetadata(0);
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {
    v6(v16, v4);
    sub_100016590(*(v16 + v17[5]), *(v16 + v17[5] + 8));
    v18 = *(v16 + v17[6] + 8);

    v19 = *(v16 + v17[7] + 8);

    v20 = v17[9];
    v21 = type metadata accessor for AirTagVersionNumber();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v23 = *(v16 + v17[16] + 8);
  }

  v24 = v3 + v2[15];
  v25 = type metadata accessor for AccessoryProductInfo();
  if (!(*(*(v25 - 1) + 48))(v24, 1, v25))
  {
    v73 = v1;
    v26 = v25[5];
    v27 = type metadata accessor for ServerStatusCode();
    (*(*(v27 - 8) + 8))(v24 + v26, v27);
    v28 = *(v24 + v25[9] + 8);

    v29 = *(v24 + v25[13] + 8);

    v30 = *(v24 + v25[14] + 8);

    v31 = *(v24 + v25[16] + 8);

    v32 = v25[17];
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (!v35(v24 + v32, 1, v33))
    {
      (*(v34 + 8))(v24 + v32, v33);
    }

    v36 = v25[18];
    v72 = v35;
    if (!v35(v24 + v36, 1, v33))
    {
      (*(v34 + 8))(v24 + v36, v33);
    }

    v37 = *(v24 + v25[19] + 8);

    v38 = (v24 + v25[21]);
    v39 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    if (!(*(*(v39 - 1) + 48))(v38, 1, v39))
    {
      v40 = *(v38 + 1);

      v41 = *(v38 + 3);

      v42 = *(v38 + 5);

      v43 = *(v38 + 9);

      v70 = v39[11];
      if (!v72(&v38[v70], 1, v33))
      {
        (*(v34 + 8))(&v38[v70], v33);
      }

      v71 = v39[12];
      if (!v72(&v38[v71], 1, v33))
      {
        (*(v34 + 8))(&v38[v71], v33);
      }

      v44 = *&v38[v39[15] + 8];

      v45 = *&v38[v39[16]];

      v46 = *&v38[v39[17] + 8];

      v47 = *&v38[v39[18]];
    }

    v48 = *(v24 + v25[23]);

    v49 = (v24 + v25[24]);
    v50 = v49[1];
    v1 = v73;
    if (v50 >> 60 != 15)
    {
      sub_100016590(*v49, v50);
    }

    v51 = (v24 + v25[25]);
    v52 = v51[1];
    if (v52 >> 60 != 15)
    {
      sub_100016590(*v51, v52);
    }

    v53 = *(v34 + 8);
    v53(v24 + v25[26], v33);
    v53(v24 + v25[27], v33);
    v53(v24 + v25[28], v33);
    v53(v24 + v25[29], v33);
    v53(v24 + v25[30], v33);
    v53(v24 + v25[31], v33);
    v54 = *(v24 + v25[32] + 8);

    v55 = *(v24 + v25[33]);

    v56 = *(v24 + v25[34] + 8);

    v57 = *(v24 + v25[35]);

    v53(v24 + v25[38], v33);
    v53(v24 + v25[39], v33);
    v53(v24 + v25[40], v33);
    v53(v24 + v25[41], v33);
    v53(v24 + v25[42], v33);
    v53(v24 + v25[43], v33);
    v58 = *(v24 + v25[47] + 8);

    v59 = *(v24 + v25[48] + 8);
  }

  v60 = *(v3 + v2[17]);

  v61 = v2[18];
  if (!v74(v3 + v61, 1, v75))
  {
    v79(v3 + v61, v75);
  }

  v62 = v2[19];
  if (!v74(v3 + v62, 1, v75))
  {
    v79(v3 + v62, v75);
  }

  v63 = (v3 + v2[20]);
  v64 = v63[1];
  if (((v64 >> 60) | 4) != 0xF)
  {
    sub_100016590(*v63, v64);
  }

  v65 = (v76 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = *(v1 + v65);

  v68 = *(v1 + v66 + 8);

  return _swift_deallocObject(v1, v66 + 16);
}

uint64_t sub_100099AB0()
{
  v1 = (type metadata accessor for LocalFindablePreferences() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v15 = *(*v1 + 64);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = *(v4 + 8);
  v9(v0 + v2, v3);
  v10 = (v0 + v2 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v12 = (v2 + v15 + v5) & ~v5;
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9(v0 + v12, v3);

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_100099C40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_100099D2C()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100099DCC()
{
  v1 = type metadata accessor for DeviceEvent(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v22 = v0;
  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = v1[6];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v8 = v4 + v1[7];
  v9 = type metadata accessor for DeviceEvent.Location(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v7(v8 + *(v9 + 28), v6);
  }

  v10 = v4 + v1[8];
  v11 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = type metadata accessor for UUID();
    v13 = *(v12 - 8);
    v20 = *(v13 + 8);
    v20(v10, v12);
    v14 = *(v11 + 20);
    if (!(*(v13 + 48))(v10 + v14, 1, v12))
    {
      v20(v10 + v14, v12);
    }
  }

  v15 = v4 + v1[9];
  v16 = type metadata accessor for UUID();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  v18 = type metadata accessor for BeaconIdentifier();
  v17(v15 + *(v18 + 20), v16);
  v7(v4 + v1[10], v6);

  return _swift_deallocObject(v22, ((v2 + 24) & ~v2) + v21);
}

uint64_t sub_10009A0B4()
{
  v1 = (sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = (v0 + v2);
  v10 = *v9;

  v11 = v1[11];
  v12 = *(v5 + 8);
  v12(&v9[v11], v4);
  v12((v0 + v6), v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_10009A210()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009A248()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009A30C()
{
  v1 = type metadata accessor for AccessoryMetadataRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = (v0 + v2 + v1[5]);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    sub_100016590(*v6, v7);
  }

  v8 = (v4 + v1[6]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100016590(*v8, v9);
  }

  v10 = (v4 + v1[7]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v12 = (v4 + v1[8]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100016590(*v12, v13);
  }

  v14 = (v4 + v1[9]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v4 + v1[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100016590(*v16, v17);
  }

  v18 = (v4 + v1[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100016590(*v18, v19);
  }

  v20 = (v4 + v1[12]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100016590(*v20, v21);
  }

  v22 = (v4 + v1[13]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_100016590(*v22, v23);
  }

  v24 = (v4 + v1[14]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_100016590(*v24, v25);
  }

  v26 = (v4 + v1[15]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_100016590(*v26, v27);
  }

  v28 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v0 + v28);

  v31 = *(v0 + v29 + 8);

  return _swift_deallocObject(v0, v29 + 16);
}

uint64_t sub_10009A5AC()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10009A728()
{
  v1 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_10009A8BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009A8FC()
{
  v1 = (type metadata accessor for PairingErrorRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v5 + v1[7];
  v8 = *(v7 + 8);

  v9 = *(type metadata accessor for PairingError(0) + 24);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v0 + v3);

  v12 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009AA80()
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

  v31 = (v37 + v3 + 9) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  v34 = *(v0 + v31 + 8);

  return _swift_deallocObject(v0, v31 + 16);
}

uint64_t sub_10009AE04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009AE3C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 448))(v1, v2);
}

uint64_t sub_10009AE94()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(*(v1 - 1) + 64);
  v23 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v23;
  sub_100016590(*(v0 + v23), *(v0 + v23 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v23 + v3, v4);
  v6(v0 + v23 + v1[6], v4);
  v7 = *(v0 + v23 + v1[7] + 16);

  v8 = *(v0 + v23 + v1[8] + 8);

  v9 = *(v0 + v23 + v1[9] + 8);

  v10 = *(v0 + v23 + v1[10] + 8);

  v11 = v1[18];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v23 + v11, v12);
  v13 = v1[19];
  v14 = *(v5 + 48);
  if (!v14(v0 + v23 + v13, 1, v4))
  {
    v6(v2 + v13, v4);
  }

  v15 = v2 + v1[20];
  v16 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v16 + 20);
    if (!v14(v15 + v17, 1, v4))
    {
      v6(v15 + v17, v4);
    }
  }

  v18 = (v24 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v18 + 8);

  v21 = *(v0 + v19);

  return _swift_deallocObject(v0, v19 + 8);
}

uint64_t sub_10009B130()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
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

  v20 = (v23 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v20 + 8);

  return _swift_deallocObject(v0, v20 + 16);
}

uint64_t sub_10009B3C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009B3FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009B43C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009B474()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 64);
  v37 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v37;
  sub_100016590(*(v0 + v37), *(v0 + v37 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v37 + v4, v5);
  v8 = (v0 + v37 + v1[6]);
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
      v36 = v2;
      v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v14 = *(v8 + v13[12] + 8);

      v15 = *(v8 + v13[16] + 8);

      v16 = *(v8 + v13[20] + 8);

      v17 = v13[28];
LABEL_12:
      v2 = v36;
      v12 = (v8 + v17 + 8);
      goto LABEL_13;
    case 3:
      v7(v8, v5);
      v36 = v2;
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

  v29 = (v2 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100016590(*(v3 + v1[12]), *(v3 + v1[12] + 8));
  sub_100016590(*(v3 + v1[13]), *(v3 + v1[13] + 8));
  v31 = *(v3 + v1[14] + 8);

  v32 = *(v3 + v1[15] + 8);

  v33 = *(v0 + v29 + 8);

  v34 = *(v0 + v30);

  return _swift_deallocObject(v0, v30 + 10);
}

uint64_t sub_10009B808(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009B8CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009B98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10009BA5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
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
    return ((v12 >> 29) >> 31) & (((v12 >> 60 << 30) >> 31) - 2 * ((v12 & 0x1000000000000000) != 0) + 4);
  }
}

uint64_t sub_10009BBEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
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
    v13 = (a1 + *(a4 + 24));
    *v13 = 0;
    v13[1] = ((((-a2 & 2) != 0) - 2 * a2) & 3) << 60;
  }

  return result;
}

uint64_t sub_10009C0C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10009C180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009C240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009C278()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009C2B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009C394()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009C3DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009C4B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009C4F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009C574(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_10009C620(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10009C6C8()
{
  sub_100007BAC(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10009C710()
{
  sub_100007BAC(v0 + 2);
  sub_100007BAC(v0 + 7);
  if (v0[12])
  {
    v1 = v0[13];
  }

  return _swift_deallocObject(v0, 112);
}

uint64_t sub_10009C760(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[11];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12]);
  if (v13 >= 2)
  {
    v14 = ((v13 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v14 = -2;
  }

  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10009C890(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12]) = a2 + 2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_10009C9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10009CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10009CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F280(a1, a2);
  *(a2 + 41) = 0;
  return result;
}

uint64_t sub_10009CAEC()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 24) & ~v3;
  v6 = (v4 + v3 + v5) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v5, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + v7), v10);
  }

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_10009CC00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009CC38()
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

  return _swift_deallocObject(v0, v7 + 18);
}

uint64_t sub_10009CD54()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v19 = *(v2 + 64) + 7;
  v5 = (v19 + v4) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for AirPodsLEAccessory(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 17) & ~*(*(v6 - 8) + 80);
  v18 = *(*(v6 - 8) + 64);
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);
  if (v10 >> 60 != 15)
  {
    sub_100016590(*(v0 + v5), v10);
  }

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v0 + v7, v11);
  sub_100007BAC((v0 + v7 + *(v6 + 20)));
  v12 = (v0 + v7 + *(v6 + 28));
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_100016590(*v12, v13);
  }

  v14 = (v18 + v3 + v7) & ~v3;
  v15 = (v19 + v14) & 0xFFFFFFFFFFFFFFF8;
  v9(v0 + v14, v1);
  v16 = *(v0 + v15);

  return _swift_deallocObject(v0, v15 + 8);
}

uint64_t sub_10009CF64()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v2 + 8);
  v10(&v0[v4], v1);
  v10(&v0[v6], v1);

  return _swift_deallocObject(v0, v6 + v5);
}

uint64_t sub_10009D060()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D0B4()
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

  return _swift_deallocObject(v0, 58);
}

uint64_t sub_10009D1C0()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72);
}