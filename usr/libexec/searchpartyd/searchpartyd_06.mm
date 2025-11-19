uint64_t sub_10009D208()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009D248()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D280()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = v1[9];
  v8 = type metadata accessor for MACAddress();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = *(v0 + v2 + v1[11] + 8);

  v10 = *(v0 + v2 + v1[12]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10009D3D0()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12]);

  v12 = *(v0 + v3);

  v13 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009D540()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009D588()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009D5C0()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10009D604()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D650()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D688()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D6C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009D710()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D754()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D78C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009D7D4()
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

uint64_t sub_10009D8D0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10009D93C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_10009D998()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v43 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v42 = *(*(v3 - 1) + 80);
  v41 = *(*(v3 - 1) + 64);
  v4 = *(v0 + 16);

  v44 = (v2 + 24) & ~v2;
  v5 = v0 + v44;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v44 + v6, v7);
  v10 = (v0 + v44 + v1[6]);
  type metadata accessor for StableIdentifier();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v45 = v9;
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

  v31 = (v43 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + v42 + 8) & ~v42;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v33 = *(v5 + v1[14] + 8);

  v34 = *(v5 + v1[15] + 8);

  v35 = *(v0 + v31);

  sub_100016590(*(v0 + v32), *(v0 + v32 + 8));
  v45(v0 + v32 + v3[6], v7);
  v36 = v3[7];
  v37 = type metadata accessor for MACAddress();
  (*(*(v37 - 8) + 8))(v0 + v32 + v36, v37);
  v38 = *(v0 + v32 + v3[9] + 8);

  v39 = *(v0 + v32 + v3[10]);

  return _swift_deallocObject(v0, ((v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10009DE20()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10009DF04()
{
  v19 = type metadata accessor for MACAddress();
  v1 = *(v19 - 8);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (v2 + *(*v3 + 80) + 8) & ~*(*v3 + 80);
  v17 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v16 = (v17 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v18 = (*(v6 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 8);
  v7(v0 + v15, v19);
  v8 = *(v0 + v2);

  sub_100016590(*(v0 + v4), *(v0 + v4 + 8));
  v9 = *(v6 + 8);
  v9(v0 + v4 + v3[8], v5);
  v7(v0 + v4 + v3[9], v19);
  v10 = *(v0 + v4 + v3[11] + 8);

  v11 = *(v0 + v4 + v3[12]);

  v12 = *(v0 + v17);

  v9(v0 + v16, v5);
  v13 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_10009E17C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009E248()
{
  v1 = (type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[8];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  v10 = *(v0 + v2 + v1[11] + 8);

  v11 = *(v0 + v2 + v1[12]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10009E3B8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10009EACC()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009EB0C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009EB44()
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

uint64_t sub_10009EED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009EF10()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009EFF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10009F0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009F180()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_100016590(v0[7], v0[8]);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10009F1D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009F210()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10009F260()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F29C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F2E4(uint64_t a1, uint64_t a2)
{
  result = sub_100E9056C(&qword_1016BD728, a2, type metadata accessor for PeerTrustService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009F33C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_10009F40C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10009F4D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009F508()
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

  return _swift_deallocObject(v0, v31 + 8);
}

uint64_t sub_10009F888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
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

uint64_t sub_10009F958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_10009FA18(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_10009FB24(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_10009FC2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10009FCE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000BC4D4(&qword_1016BDBB8, &unk_1013EC550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10009FDD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10009FE0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009FE44()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10009FE7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10009FED4(uint64_t a1, uint64_t a2)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v5 = *(*(RequestBeacon - 8) + 48);

  return v5(a1, a2, RequestBeacon);
}

uint64_t sub_10009FF40(uint64_t a1, uint64_t a2)
{
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v5 = *(*(RequestBeacon - 8) + 56);

  return v5(a1, a2, a2, RequestBeacon);
}

uint64_t sub_10009FFB8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A00D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A01E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A02A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000A0358()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A0390()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A03C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0460()
{
  sub_100EC032C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000A04A0()
{
  v1 = *(type metadata accessor for LocationOfInterestProvider.RemappingOperation() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    sub_100016590(*v4, *(v4 + 8));
    v5 = type metadata accessor for SafeLocation();
    v6 = v5[5];
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
    v8 = *(v4 + v5[7] + 8);

    v9 = *(v4 + v5[13]);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A05CC()
{
  v1 = (type metadata accessor for SafeLocation() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[15]);

  return _swift_deallocObject(v0, v3 + 1);
}

uint64_t sub_1000A06DC()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000A071C()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A076C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A07C4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A0880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A0938(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000A0A5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A0B8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A0C50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0C90()
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

uint64_t sub_1000A0D98()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A0DD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A0E10()
{
  v1 = *(v0 + 16);

  sub_10071E1B8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000A0E60()
{
  v1 = v0[2];

  sub_100016590(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A0EA0()
{
  sub_10071E1B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000A0EE0()
{
  v1 = (type metadata accessor for PrivacyAlertSupport.AlertInfo() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2 + 8);

  v5 = v1[7];
  v6 = type metadata accessor for MACAddress();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  v7 = v1[8];
  v8 = type metadata accessor for Device();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = *(v0 + v2 + v1[10] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A101C()
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

uint64_t sub_1000A1118()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 9);
}

uint64_t sub_1000A11F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1234(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MACAddress();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Device();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000A1358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MACAddress();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Device();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A1480(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A153C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A160C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A1648()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A1680(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A1738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1000A17F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A18B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A1988()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A19C0()
{
  v1 = *(v0 + 16);

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A1A00()
{
  v1 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v4 + 40);
}

uint64_t sub_1000A1AA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1000A1BF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000A1D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A1DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A1E10(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 248)
  {
    v4 = *(a1 + 9);
    if (v4 >= 8)
    {
      return v4 - 7;
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for BeaconIdentifier();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_1000A1FD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *(result + 9) = a2 + 7;
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for BeaconIdentifier();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000A219C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A2298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000A23A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000A2418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000A24D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1000A2594(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A2670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

id sub_1000A26B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 userHasAcknowledgedFindMy];
  *a2 = result;
  return result;
}

uint64_t sub_1000A26FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A274C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A27A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A2860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A291C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A2A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A2B08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A2BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A2C88()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A2D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A2E5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for KeyDropJoinToken(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000A2F80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for KeyDropJoinToken(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000A30A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A3160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A3230(uint64_t a1, uint64_t a2, uint64_t a3)
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000A32FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000A33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A3464(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1000A3508@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectionState];
  *a2 = result;
  return result;
}

uint64_t sub_1000A353C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A3574()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A35AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A35E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A3620()
{
  v1 = (type metadata accessor for BeaconIdentifier() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v2], v7);
  v8(&v0[v2 + v1[7]], v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A3744()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[4];

  v6 = v0 + ((v2 + 40) & ~v2);
  sub_100016590(*v6, *(v6 + 1));
  v7 = v1[5];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v6[v7], v8);
  v10(&v6[v1[6]], v8);
  v11 = *&v6[v1[7] + 16];

  v12 = *&v6[v1[8] + 8];

  v13 = *&v6[v1[9] + 8];

  v14 = *&v6[v1[10] + 8];

  v15 = v1[18];
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 8))(&v6[v15], v16);
  v17 = v1[19];
  v18 = *(v9 + 48);
  if (!v18(&v6[v17], 1, v8))
  {
    v10(&v6[v17], v8);
  }

  v19 = &v6[v1[20]];
  v20 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *(v20 + 20);
    if (!v18(&v19[v21], 1, v8))
    {
      v10(&v19[v21], v8);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 40) & ~v2) + v23);
}

uint64_t sub_1000A39D0()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v37 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

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
      v36 = (v2 + 40) & ~v2;
      v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v18 = *&v12[v17[12] + 8];

      v19 = *&v12[v17[16] + 8];

      v20 = *&v12[v17[20] + 8];

      v21 = v17[28];
LABEL_12:
      v3 = v36;
      v16 = &v12[v21 + 8];
      goto LABEL_13;
    case 3:
      v11(v12, v9);
      v36 = (v2 + 40) & ~v2;
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

  sub_100016590(*&v7[v1[12]], *&v7[v1[12] + 8]);
  sub_100016590(*&v7[v1[13]], *&v7[v1[13] + 8]);
  v33 = *&v7[v1[14] + 8];

  v34 = *&v7[v1[15] + 8];

  return _swift_deallocObject(v0, v3 + v37);
}

uint64_t sub_1000A3D4C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A3E28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A3E60()
{
  v1 = sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A3F64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A3F9C()
{
  v1 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A4088()
{
  v1 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A416C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A41AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
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

uint64_t sub_1000A4224(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000A43A4()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A43E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
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

uint64_t sub_1000A44B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1000A4574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
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
    v14 = *(a1 + a3[6] + 16);
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
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000A46F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
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
    *(a1 + a4[6] + 16) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Date();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1000A4880()
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

uint64_t sub_1000A49D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000A4A14(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000A4B38(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A4C94()
{
  v1 = type metadata accessor for OwnedBeaconRecord();
  v40 = *(*(v1 - 1) + 80);
  v38 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v37 = *(v3 + 80);
  v36 = *(v3 + 64);
  v4 = *(v0 + 16);

  v39 = (v40 + 24) & ~v40;
  v5 = v0 + v39;
  sub_100016590(*(v0 + v39), *(v0 + v39 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v39 + v6, v7);
  v10 = (v0 + v39 + v1[6]);
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
      v35 = v2;
      v15 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v16 = *(v10 + v15[12] + 8);

      v17 = *(v10 + v15[16] + 8);

      v18 = *(v10 + v15[20] + 8);

      v19 = v15[28];
LABEL_12:
      v2 = v35;
      v14 = (v10 + v19 + 8);
      goto LABEL_13;
    case 3:
      v9(v10, v7);
      v35 = v2;
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

  v31 = (v39 + v38 + v37) & ~v37;
  sub_100016590(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_100016590(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v32 = *(v5 + v1[14] + 8);

  v33 = *(v5 + v1[15] + 8);

  (*(v3 + 8))(v0 + v31, v2);

  return _swift_deallocObject(v0, v36 + v31 + 1);
}

uint64_t sub_1000A50A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A5110()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000A51FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5244()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);
  sub_100016590(*(v0 + v7), *(v0 + v7 + 8));
  sub_100016590(*(v0 + v8), *(v0 + v8 + 8));
  v11 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16);
}

uint64_t sub_1000A5388()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A53D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A5408()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8);
}

uint64_t sub_1000A5580()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A564C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A56DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  if (!(*(v2 + 48))(v0 + v6, 1, v1))
  {
    v9(v0 + v6, v1);
  }

  v10 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_1000A5924(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24) + 24) >> 60;
    if (((4 * v12) & 0xC) != 0)
    {
      return 16 - ((4 * v12) & 0xC | (v12 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A59F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v13 = a1 + *(a4 + 24);
    *(v13 + 16) = 0;
    *(v13 + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1000A5ADC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000A5B24()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_1000A5BC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A5C04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A5C70()
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

uint64_t sub_1000A5D4C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A5DE0()
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

uint64_t sub_1000A5EB8()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v25 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = v0 + v3;
  v11 = *(v6 + 8);
  v11(v0 + v3, v5);
  v12 = *(v0 + v3 + v1[5] + 8);

  v13 = *(v0 + v3 + v1[6] + 8);

  sub_100016590(*(v10 + v1[7]), *(v10 + v1[7] + 8));
  v14 = (v0 + v3 + v1[8]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100016590(*v14, v15);
  }

  v16 = (v3 + v4 + v7) & ~v7;
  v11(v10 + v1[9], v5);
  v17 = v10 + v1[13];
  v18 = type metadata accessor for MACAddress();
  (*(*(v18 - 8) + 8))(v17, v18);
  v19 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v17 + *(v19 + 20)), *(v17 + *(v19 + 20) + 8));
  v20 = v1[14];
  v21 = type metadata accessor for P256PrivateKey();
  (*(*(v21 - 8) + 8))(v10 + v20, v21);
  v22 = v1[15];
  v23 = type metadata accessor for SymmetricKey256();
  (*(*(v23 - 8) + 8))(v10 + v22, v23);
  v11(v0 + v16, v5);

  return _swift_deallocObject(v0, ((v25 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A6164()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100016590(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = (v0 + v2 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100016590(*v10, v11);
  }

  v7(v5 + v1[9], v6);
  v12 = v5 + v1[13];
  v13 = type metadata accessor for MACAddress();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v12 + *(v14 + 20)), *(v12 + *(v14 + 20) + 8));
  v15 = v1[14];
  v16 = type metadata accessor for P256PrivateKey();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = v1[15];
  v18 = type metadata accessor for SymmetricKey256();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A6398()
{
  v1 = type metadata accessor for LocalFindableAccessoryRecord();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v3;
  v10 = *(v6 + 8);
  v10(v0 + v3, v5);
  v11 = *(v0 + v3 + v1[5] + 8);

  v12 = *(v0 + v3 + v1[6] + 8);

  sub_100016590(*(v9 + v1[7]), *(v9 + v1[7] + 8));
  v13 = (v0 + v3 + v1[8]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100016590(*v13, v14);
  }

  v15 = (v3 + v4 + v7) & ~v7;
  v10(v9 + v1[9], v5);
  v16 = v9 + v1[13];
  v17 = type metadata accessor for MACAddress();
  (*(*(v17 - 8) + 8))(v16, v17);
  v18 = type metadata accessor for PeripheralConnectionMaterial(0);
  sub_100016590(*(v16 + *(v18 + 20)), *(v16 + *(v18 + 20) + 8));
  v19 = v1[14];
  v20 = type metadata accessor for P256PrivateKey();
  (*(*(v20 - 8) + 8))(v9 + v19, v20);
  v21 = v1[15];
  v22 = type metadata accessor for SymmetricKey256();
  (*(*(v22 - 8) + 8))(v9 + v21, v22);
  v10(v0 + v15, v5);

  return _swift_deallocObject(v0, ((v24 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000A663C()
{
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A6774(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000A6820(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A68C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A6988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A6A4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A6A84()
{
  v1 = type metadata accessor for OSSignpostID();
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

uint64_t sub_1000A6B78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A6BB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A6BF4()
{
  sub_100408170(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000A6C30()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A6CAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for RequestMethod();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1000A6D5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 11)
  {
    *result = 0;
    result[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  else
  {
    v7 = type metadata accessor for RequestMethod();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A6E74()
{
  v1 = (type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000A6F88()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A6FC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7098()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A7108()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A7154()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A719C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A7200()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A7278()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A72B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A72FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000A7354()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A73A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A73F4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000A743C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7490()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A74D0()
{
  v1 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A7618()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000A76E8()
{
  v1 = (type metadata accessor for LostModeRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 32);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[8], v7);
  v9 = *(v0 + v2 + v1[9] + 8);

  v10 = *(v0 + v2 + v1[10] + 8);

  v11 = *(v0 + v2 + v1[11] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A783C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A7938()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7970()
{
  v1 = (sub_1000BC4D4(&qword_10169A098, &unk_101393410) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v1[14];
  sub_1000BC4D4(&qword_10169A068, &qword_1013933F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v4 + v6);
  }

  else
  {
    type metadata accessor for PencilPairingService.PeripheralDiscovery(0);
    v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);

  return _swift_deallocObject(v0, v10 + 8);
}

uint64_t sub_1000A7AF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7B30()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A7BC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A7C28(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A7CE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A7D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A7E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A7E80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A7EC4(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_1000A7F70(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A8014()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_100016590(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A806C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A80B4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A80EC()
{
  v1 = *(v0 + 24);

  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A8134(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A8240(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A8348(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A8414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000A84D0()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  sub_100007BAC((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A85A8()
{
  v1 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8644()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A867C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A86B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A86F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000A8744()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000A8788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for FailableRecordSequence();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1000A8804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  type metadata accessor for FailableRecordSequence();
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1000A8884()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 56), *(v0 + 64));
  sub_100016590(*(v0 + 72), *(v0 + 80));
  sub_100016590(*(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 104);
}

uint64_t sub_1000A88DC()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1000A892C()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));
  sub_100016590(*(v0 + 48), *(v0 + 56));
  sub_100016590(*(v0 + 64), *(v0 + 72));
  sub_100016590(*(v0 + 80), *(v0 + 88));
  sub_100016590(*(v0 + 96), *(v0 + 104));
  sub_100016590(*(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 128);
}

uint64_t sub_1000A8994()
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

uint64_t sub_1000A8A28()
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

uint64_t sub_1000A8A90()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));
  sub_100016590(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000A8AD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1000A8B8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
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

uint64_t sub_1000A8C30()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1000A8D20()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v2 = (*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80);
  v3 = *(*(updated - 8) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2))
  {
    v5 = *(v4 + 8);
  }

  v6 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(updated + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1000A8E28()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8EEC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000A8FB0()
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

  return _swift_deallocObject(v0, v3 + v35);
}

uint64_t sub_1000A931C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000A9354()
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

uint64_t sub_1000A96E0()
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

uint64_t sub_1000A97B8()
{
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo();
  v2 = (*(*(updated - 8) + 80) + 16) & ~*(*(updated - 8) + 80);
  v3 = *(*(updated - 8) + 64);
  v4 = v0 + v2;
  if (*(v0 + v2))
  {
    v5 = *(v4 + 8);
  }

  v6 = *(updated + 20);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000A98AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  v8 = *(v0 + 24);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v6);

  v9(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v5);
}

uint64_t sub_1000A99B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1000A9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A9B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000A9C24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000A9D30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000A9E38(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000A9F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000AA064(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 237)
  {
    v4 = *a1;
    if (v4 >= 0x13)
    {
      return v4 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000AA108(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 237)
  {
    *result = a2 + 18;
  }

  else
  {
    v7 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000AA274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000AA32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Bit();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000AA3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Bit();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1000AA420(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000AA4EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000AA5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 360))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1032))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 520))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 512))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 504))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA7B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 496))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 728))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 720))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AA8D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 392))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA930@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 384))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA988@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AA9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 80))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AAA9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAAFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 432))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AABBC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1064))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AAC14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 408))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAC74@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 896))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AACCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 416))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 888))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAD90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 152))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AADF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 144))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 840))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAEB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 856))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAF10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 832))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 824))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AAFD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 880))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 872))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB090@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB0F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 88))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AB148@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1432))(v3, v4);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000AB1A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 672))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AB200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1304))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB2C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 784))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1104))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1152))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB3E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 120))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 128))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB4A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1248))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AB4F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1112))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1128))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB5B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1168))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1144))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB678@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1288))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1240))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 680))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 248))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB7F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 240))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB858@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1080))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB8B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 168))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB918@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 160))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 616))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AB9D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1368))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1360))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1352))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABAF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1376))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABB58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 232))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABBB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 264))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 224))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABC78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 800))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABCD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 792))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABD38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 96))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 288))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABDF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 272))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABE58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 256))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABEB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 176))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABF18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1008))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ABF78@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1016))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ABFD0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1296))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC028@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 200))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC080@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 208))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC0D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 688))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 984))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 976))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC1F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1000))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 992))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

__n128 sub_1000AC2B0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  (*(v4 + 528))(v8, v3, v4);
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  *(a2 + 96) = v8[6];
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000AC330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1160))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1384))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC3F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1392))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1216))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC4B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1224))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1120))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC570@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 936))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC5C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 920))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 960))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1192))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1184))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1176))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC7A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1200))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1208))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1328))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC8C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1320))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AC980@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 184))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AC9E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 320))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACA40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1424))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1416))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 600))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACB60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1040))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 280))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACC20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 368))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACC80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 376))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACCE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 968))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACD40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 136))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACDA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1056))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACDF8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1408))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACE50@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1336))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACEA8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACF00@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1312))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ACF58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1232))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ACFB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 296))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD010@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 704))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 592))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD0C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 712))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD120@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 696))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD178@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 544))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD1D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1280))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000AD228@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 952))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD288@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 944))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD2E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 928))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD338@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 336))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 352))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD3F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 344))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 328))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD4B8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 72))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 736))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD570@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 744))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1440))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD630@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1400))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD690@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1344))(v3, v4);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000AD6F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1264))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1256))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD7B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1136))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD810@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1096))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD868@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1088))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD8C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1072))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD920@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1048))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AD978@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 1024))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AD9D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 912))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 904))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADA98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 864))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADAF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 848))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADB58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 816))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADBB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 808))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADC18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 624))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADC78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 776))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADCD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 768))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADD38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 760))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADD98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 752))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADDF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 664))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000ADE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 656))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADEB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 648))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000ADF08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 640))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000ADF68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 632))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000ADFC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 608))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 584))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 576))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE0E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 568))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 560))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE1A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 552))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AE1F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 536))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AE250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 488))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE2B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 480))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE31C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 440))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AE374@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 424))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE3D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 312))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 304))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 216))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE4F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 192))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE554@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1000AE5AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE60C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1000AE66C()
{
  v1 = sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = *(v0 + v4);

  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1000AE7D4()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v2, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v2, v6);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9(v5 + v1[5], v6);
  v11 = *(v5 + v1[6] + 16);

  v12 = *(v5 + v1[7] + 16);

  v13 = *(v5 + v1[8] + 8);

  v14 = v1[11];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = *(v5 + v1[12] + 8);

  v17 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8);
}

uint64_t sub_1000AE9AC()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v0 + v2, 1, v6);
  v9 = *(v7 + 8);
  if (!v8)
  {
    v9(v0 + v2, v6);
  }

  v9(v5 + v1[5], v6);
  v10 = *(v5 + v1[6] + 16);

  v11 = *(v5 + v1[7] + 16);

  v12 = *(v5 + v1[8] + 8);

  v13 = v1[11];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000AEB70()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000AEC34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000AEC74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000AECAC()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000AECFC()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4] >= 7uLL)
  {
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000AED50()
{
  sub_101088900(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000AEDA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000AEE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000AEF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1000AF028()
{
  v1 = type metadata accessor for BeaconProductInfoRecord();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v34 = (v2 + 49) & ~v2;
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
  v31 = *(v0 + v28);

  return _swift_deallocObject(v0, v28 + 8);
}

uint64_t sub_1000AF418()
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

uint64_t sub_1000AF814()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000AF84C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000AF88C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000AF8C4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000AF928()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000AF978()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000AF9C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000AFA54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1000AFB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_1000AFBF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000AFCC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1000AFDD8()
{
  v1 = type metadata accessor for SystemVersionNumber();
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

uint64_t sub_1000AFEC4()
{
  v1 = type metadata accessor for ContinuousClock();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000AFF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B0000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B0070()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_1000B00DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B0120()
{
  v1 = *(v0 + 24);

  sub_1001DB7B8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41);
}

uint64_t sub_1000B0164(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 242)
  {
    v4 = *a1;
    if (v4 >= 0xE)
    {
      return v4 - 13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MessagingOptions(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000B0208(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 242)
  {
    *result = a2 + 13;
  }

  else
  {
    v7 = type metadata accessor for MessagingOptions(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B02A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000B03D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000B0510()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B05E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return _swift_deallocObject(v0, v7 + v8);
}

uint64_t sub_1000B0734()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B076C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B0830(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 242)
  {
    v4 = *a1;
    if (v4 >= 0xE)
    {
      return v4 - 13;
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
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000B08D4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 242)
  {
    *result = a2 + 13;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B0978()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B09B0()
{
  v1 = type metadata accessor for FMNAccountType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B0A74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B0AAC()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B0AE4()
{

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000B0B2C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B0B78()
{
  v1 = v0[2];

  sub_100007BAC(v0 + 3);
  sub_100007BAC(v0 + 8);

  return _swift_deallocObject(v0, 105);
}

uint64_t sub_1000B0BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B0C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B0CE0()
{
  sub_10038BCE4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000B0D20()
{
  sub_10071E1B8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49);
}

uint64_t sub_1000B0D60()
{
  v1 = v0[7];
  sub_100721758(v0[2], v0[3], v0[4], v0[5], v0[6]);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1000B0DA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_1000B0E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1000B0F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B0F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNAccountType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B1050()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B10A8()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  sub_100016590(*(v0 + 4), *(v0 + 5));
  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = &v0[v2];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(&v0[v2], 1, v7);
  v10 = *(v8 + 8);
  if (!v9)
  {
    v10(&v0[v2], v7);
  }

  v10(&v6[v1[5]], v7);
  v11 = *&v6[v1[6] + 16];

  v12 = *&v6[v1[7] + 16];

  v13 = *&v6[v1[8] + 8];

  v14 = v1[11];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(&v6[v14], v15);
  v16 = *&v6[v1[12] + 8];

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1000B1420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B1470()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B14A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B14F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B1534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B156C()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 16);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v5 + 8), v6);
  }

  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  sub_10001E524(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B16D4()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 16);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v5 + 8), v6);
  }

  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[8];
  v10 = type metadata accessor for MACAddress();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  sub_10001E524(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B1844()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1000B18E0()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 16);
  if (v5 >> 60 != 15)
  {
    sub_100016590(*(v4 + 8), v5);
  }

  v6 = v1[7];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  sub_10001E524(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  sub_100016590(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v3 + v2);
}

uint64_t sub_1000B1A40()
{
  v1 = type metadata accessor for DiscoveredObject(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 16);
  if (v6 >> 60 != 15)
  {
    sub_100016590(*(v5 + 8), v6);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[8];
  v11 = type metadata accessor for MACAddress();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  sub_10001E524(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_100016590(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  v12 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1000B1BB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B1BF0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1000B1CCC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B1DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B1E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropImportedLocationFetchResponse.LocationInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B1E94()
{
  if (*v0)
  {
    result = 0x6E6F697461636F6CLL;
  }

  else
  {
    result = 0x6F43737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1000B1F30(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_1000B1FE8(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000B2094(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000B2140(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B21E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for Date();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000B2344(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = type metadata accessor for Date();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
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

uint64_t sub_1000B24A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B24E0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B2534()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B2574()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B25B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B268C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B26DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B272C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B2764()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000B27AC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B27EC()
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

uint64_t sub_1000B28DC()
{
  sub_100007BAC((v0 + 16));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000B2914()
{
  sub_100007BAC(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_1000B295C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
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
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000B2A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
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
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B2AE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[12];
      goto LABEL_5;
    }

    v17 = type metadata accessor for Date();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1000B2CB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v16 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[12];
    goto LABEL_5;
  }

  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[14];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1000B2FF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
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

  v14 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_1000B31A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1000B3358()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B3390()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v0 + v2, 1, v7);
  v10 = *(v8 + 8);
  if (!v9)
  {
    v10(v0 + v2, v7);
  }

  v10(v6 + v1[5], v7);
  v11 = *(v6 + v1[6] + 16);

  v12 = *(v6 + v1[7] + 16);

  v13 = *(v6 + v1[8] + 8);

  v14 = v1[11];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v6 + v14, v15);
  v16 = *(v6 + v1[12] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B355C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B359C()
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

uint64_t sub_1000B3678()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B36B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_1000B376C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000B3830()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v1[6], v7);
  v10 = *(v5 + v1[7] + 16);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v1[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[19];
  v17 = *(v8 + 48);
  if (!v17(v5 + v16, 1, v7))
  {
    v9(v5 + v16, v7);
  }

  v18 = v5 + v1[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    if (!v17(v18 + v20, 1, v7))
    {
      v9(v18 + v20, v7);
    }
  }

  v21 = (v24 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21);

  return _swift_deallocObject(v0, v21 + 8);
}

uint64_t sub_1000B3AD4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v26 = *(*(v1 - 1) + 80);
  v24 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v23 = *(v3 + 64);
  v5 = *(v0 + 16);

  v25 = (v26 + 32) & ~v26;
  v6 = v0 + v25;
  sub_100016590(*v6, *(v6 + 8));
  v7 = *(v3 + 8);
  v7(v0 + v25 + v1[5], v2);
  v7(v0 + v25 + v1[6], v2);
  v8 = *(v0 + v25 + v1[7] + 16);

  v9 = *(v0 + v25 + v1[8] + 8);

  v10 = *(v0 + v25 + v1[9] + 8);

  v11 = *(v0 + v25 + v1[10] + 8);

  v12 = v1[18];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v0 + v25 + v12, v13);
  v14 = v1[19];
  v15 = *(v3 + 48);
  if (!v15(v0 + v25 + v14, 1, v2))
  {
    v7(v6 + v14, v2);
  }

  v16 = v6 + v1[20];
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v18 = *(v17 + 20);
    if (!v15(v16 + v18, 1, v2))
    {
      v7(v16 + v18, v2);
    }
  }

  v19 = (v25 + v24 + v4) & ~v4;
  v20 = (v23 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7(v0 + v19, v2);
  v21 = *(v0 + v20);

  return _swift_deallocObject(v0, v20 + 8);
}

uint64_t sub_1000B3DD0()
{
  v1 = type metadata accessor for ShareRecord();
  v25 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v21 = *(v3 + 64);
  v5 = *(v0 + 16);

  v24 = (v25 + 24) & ~v25;
  v6 = v0 + v24;
  sub_100016590(*(v0 + v24), *(v0 + v24 + 8));
  v7 = *(v3 + 8);
  v7(v0 + v24 + v1[5], v2);
  v26 = v2;
  v22 = v7;
  v7(v0 + v24 + v1[6], v2);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v24 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v24 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  v13 = (v23 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v4 + 8) & ~v4;
  v15 = (v21 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v6 + v1[9] + 16);

  v17 = *(v6 + v1[10] + 8);

  v18 = *(v0 + v13);

  v22(v0 + v14, v26);
  v19 = *(v0 + v15 + 8);

  return _swift_deallocObject(v0, v15 + 16);
}

uint64_t sub_1000B404C()
{
  v1 = type metadata accessor for ShareRecord();
  v26 = *(*(v1 - 1) + 80);
  v23 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v22 = *(v3 + 64);
  v5 = *(v0 + 16);

  v24 = (v26 + 24) & ~v26;
  v6 = v0 + v24;
  sub_100016590(*(v0 + v24), *(v0 + v24 + 8));
  v7 = *(v3 + 8);
  v7(v0 + v24 + v1[5], v2);
  v27 = v2;
  v25 = v7;
  v7(v0 + v24 + v1[6], v2);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v24 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v24 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  v13 = (v23 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v4 + 8) & ~v4;
  v15 = (v22 + v4 + v14) & ~v4;
  v16 = (v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v6 + v1[9] + 16);

  v18 = *(v6 + v1[10] + 8);

  v19 = *(v0 + v13);

  v25(v0 + v14, v27);
  v25(v0 + v15, v27);
  v20 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16);
}

uint64_t sub_1000B42EC()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(*(v1 - 1) + 64);
  v21 = v0;
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);
  v8 = *(v3 + v1[7] + 16);

  v9 = *(v3 + v1[8] + 8);

  v10 = *(v3 + v1[9] + 8);

  v11 = *(v3 + v1[10] + 8);

  v12 = v1[18];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v3 + v12, v13);
  v14 = v1[19];
  v15 = *(v6 + 48);
  if (!v15(v3 + v14, 1, v5))
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

  return _swift_deallocObject(v21, v2 + v20);
}

uint64_t sub_1000B4560()
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

uint64_t sub_1000B463C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B4674()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5 + 16);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8);
}

uint64_t sub_1000B473C()
{
  v1 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = (v5 + 1);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_16;
    }

LABEL_8:
    v7 = (v5 + 2);
LABEL_15:
    v17 = *v7;

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100016590(v5[2], v5[3]);
    v8 = v5[5];
    if (v8 >> 60 != 15)
    {
      sub_100016590(v5[4], v8);
    }

    v9 = v5 + *(type metadata accessor for SecureLocationsRelayAction.SendMessage(0) + 24);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v19 = *(v11 + 8);
    v19(v9, v10);
    v12 = type metadata accessor for MessagingOptions(0);
    v13 = *&v9[v12[5]];

    v14 = v12[7];
    if (!(*(v11 + 48))(&v9[v14], 1, v10))
    {
      v19(&v9[v14], v10);
    }

    v15 = *&v9[v12[10]];

    v16 = *&v9[v12[11]];

    v7 = &v9[v12[12] + 8];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_8;
  }

LABEL_16:

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1000B4A24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B4A5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B4A9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25);
}

uint64_t sub_1000B4AD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000B4B14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B4BA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B4BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = CurrentValueSubject.value.getter();
  *a2 = v5;
  return result;
}

uint64_t sub_1000B4C20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return CurrentValueSubject.value.setter();
}

uint64_t sub_1000B4C58()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000B4C90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B4CD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B4D10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1000B4D58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B4D98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1000B4DD0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B4E28()
{
  if (*v0)
  {
    result = 0x4B6C616974696E69;
  }

  else
  {
    result = 0x6542646572616873;
  }

  *v0;
  return result;
}

uint64_t sub_1000B4E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ServerStatusCode();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[17];
      goto LABEL_3;
    }

    v14 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[21];
      goto LABEL_3;
    }

    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[26];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000B5054(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ServerStatusCode();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[17];
    goto LABEL_3;
  }

  v14 = sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[21];
    goto LABEL_3;
  }

  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[26];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000B52DC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000B5388(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000B542C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B5474()
{
  v1 = (type metadata accessor for BeaconPayloadFileManager() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v1[8];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v4 + v1[12]);

  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1000B5588()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1000B55C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000B5688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_1000B5744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B580C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000B58D0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000B59DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000B5AE4(uint64_t a1, uint64_t a2, uint64_t a3)
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